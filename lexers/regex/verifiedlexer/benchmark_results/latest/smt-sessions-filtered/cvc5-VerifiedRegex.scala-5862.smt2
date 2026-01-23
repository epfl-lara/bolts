; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!287502 () Bool)

(assert start!287502)

(declare-fun b!2972734 () Bool)

(assert (=> b!2972734 true))

(assert (=> b!2972734 true))

(assert (=> b!2972734 true))

(declare-fun b!2972730 () Bool)

(declare-fun e!1870292 () Bool)

(declare-fun tp_is_empty!16111 () Bool)

(declare-fun tp!947725 () Bool)

(assert (=> b!2972730 (= e!1870292 (and tp_is_empty!16111 tp!947725))))

(declare-fun b!2972731 () Bool)

(declare-fun e!1870286 () Bool)

(declare-fun e!1870288 () Bool)

(assert (=> b!2972731 (= e!1870286 e!1870288)))

(declare-fun res!1225773 () Bool)

(assert (=> b!2972731 (=> res!1225773 e!1870288)))

(declare-datatypes ((C!18734 0))(
  ( (C!18735 (val!11403 Int)) )
))
(declare-datatypes ((Regex!9274 0))(
  ( (ElementMatch!9274 (c!487880 C!18734)) (Concat!14595 (regOne!19060 Regex!9274) (regTwo!19060 Regex!9274)) (EmptyExpr!9274) (Star!9274 (reg!9603 Regex!9274)) (EmptyLang!9274) (Union!9274 (regOne!19061 Regex!9274) (regTwo!19061 Regex!9274)) )
))
(declare-fun lt!1036454 () Regex!9274)

(declare-datatypes ((List!35139 0))(
  ( (Nil!35015) (Cons!35015 (h!40435 C!18734) (t!234204 List!35139)) )
))
(declare-fun s!11993 () List!35139)

(declare-fun matchR!4156 (Regex!9274 List!35139) Bool)

(assert (=> b!2972731 (= res!1225773 (not (matchR!4156 lt!1036454 s!11993)))))

(declare-fun lt!1036450 () Regex!9274)

(assert (=> b!2972731 (= lt!1036454 (Star!9274 lt!1036450))))

(declare-fun b!2972732 () Bool)

(declare-fun e!1870291 () Bool)

(assert (=> b!2972732 (= e!1870288 e!1870291)))

(declare-fun res!1225771 () Bool)

(assert (=> b!2972732 (=> res!1225771 e!1870291)))

(declare-fun isEmpty!19250 (List!35139) Bool)

(assert (=> b!2972732 (= res!1225771 (isEmpty!19250 s!11993))))

(declare-fun matchRSpec!1411 (Regex!9274 List!35139) Bool)

(assert (=> b!2972732 (matchRSpec!1411 lt!1036454 s!11993)))

(declare-datatypes ((Unit!48927 0))(
  ( (Unit!48928) )
))
(declare-fun lt!1036452 () Unit!48927)

(declare-fun mainMatchTheorem!1411 (Regex!9274 List!35139) Unit!48927)

(assert (=> b!2972732 (= lt!1036452 (mainMatchTheorem!1411 lt!1036454 s!11993))))

(declare-fun b!2972733 () Bool)

(declare-fun e!1870289 () Bool)

(declare-fun tp!947723 () Bool)

(declare-fun tp!947726 () Bool)

(assert (=> b!2972733 (= e!1870289 (and tp!947723 tp!947726))))

(declare-fun b!2972735 () Bool)

(declare-fun e!1870290 () Bool)

(assert (=> b!2972735 (= e!1870290 e!1870286)))

(declare-fun res!1225772 () Bool)

(assert (=> b!2972735 (=> res!1225772 e!1870286)))

(declare-fun isEmptyLang!388 (Regex!9274) Bool)

(assert (=> b!2972735 (= res!1225772 (isEmptyLang!388 lt!1036450))))

(declare-fun r!17423 () Regex!9274)

(declare-fun simplify!275 (Regex!9274) Regex!9274)

(assert (=> b!2972735 (= lt!1036450 (simplify!275 (reg!9603 r!17423)))))

(declare-fun b!2972736 () Bool)

(declare-fun tp!947724 () Bool)

(assert (=> b!2972736 (= e!1870289 tp!947724)))

(declare-fun b!2972737 () Bool)

(declare-fun e!1870287 () Bool)

(assert (=> b!2972737 (= e!1870287 (not e!1870290))))

(declare-fun res!1225775 () Bool)

(assert (=> b!2972737 (=> res!1225775 e!1870290)))

(declare-fun lt!1036451 () Bool)

(assert (=> b!2972737 (= res!1225775 (or lt!1036451 (is-Concat!14595 r!17423) (is-Union!9274 r!17423) (not (is-Star!9274 r!17423))))))

(assert (=> b!2972737 (= lt!1036451 (matchRSpec!1411 r!17423 s!11993))))

(assert (=> b!2972737 (= lt!1036451 (matchR!4156 r!17423 s!11993))))

(declare-fun lt!1036453 () Unit!48927)

(assert (=> b!2972737 (= lt!1036453 (mainMatchTheorem!1411 r!17423 s!11993))))

(declare-fun res!1225774 () Bool)

(assert (=> start!287502 (=> (not res!1225774) (not e!1870287))))

(declare-fun validRegex!4007 (Regex!9274) Bool)

(assert (=> start!287502 (= res!1225774 (validRegex!4007 r!17423))))

(assert (=> start!287502 e!1870287))

(assert (=> start!287502 e!1870289))

(assert (=> start!287502 e!1870292))

(assert (=> b!2972734 (= e!1870291 (validRegex!4007 (reg!9603 r!17423)))))

(declare-fun lambda!110589 () Int)

(declare-datatypes ((tuple2!33886 0))(
  ( (tuple2!33887 (_1!20075 List!35139) (_2!20075 List!35139)) )
))
(declare-datatypes ((Option!6675 0))(
  ( (None!6674) (Some!6674 (v!34808 tuple2!33886)) )
))
(declare-fun isDefined!5226 (Option!6675) Bool)

(declare-fun findConcatSeparation!1069 (Regex!9274 Regex!9274 List!35139 List!35139 List!35139) Option!6675)

(declare-fun Exists!1554 (Int) Bool)

(assert (=> b!2972734 (= (isDefined!5226 (findConcatSeparation!1069 lt!1036450 lt!1036454 Nil!35015 s!11993 s!11993)) (Exists!1554 lambda!110589))))

(declare-fun lt!1036449 () Unit!48927)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!847 (Regex!9274 Regex!9274 List!35139) Unit!48927)

(assert (=> b!2972734 (= lt!1036449 (lemmaFindConcatSeparationEquivalentToExists!847 lt!1036450 lt!1036454 s!11993))))

(declare-fun b!2972738 () Bool)

(declare-fun tp!947727 () Bool)

(declare-fun tp!947722 () Bool)

(assert (=> b!2972738 (= e!1870289 (and tp!947727 tp!947722))))

(declare-fun b!2972739 () Bool)

(assert (=> b!2972739 (= e!1870289 tp_is_empty!16111)))

(assert (= (and start!287502 res!1225774) b!2972737))

(assert (= (and b!2972737 (not res!1225775)) b!2972735))

(assert (= (and b!2972735 (not res!1225772)) b!2972731))

(assert (= (and b!2972731 (not res!1225773)) b!2972732))

(assert (= (and b!2972732 (not res!1225771)) b!2972734))

(assert (= (and start!287502 (is-ElementMatch!9274 r!17423)) b!2972739))

(assert (= (and start!287502 (is-Concat!14595 r!17423)) b!2972738))

(assert (= (and start!287502 (is-Star!9274 r!17423)) b!2972736))

(assert (= (and start!287502 (is-Union!9274 r!17423)) b!2972733))

(assert (= (and start!287502 (is-Cons!35015 s!11993)) b!2972730))

(declare-fun m!3338753 () Bool)

(assert (=> b!2972734 m!3338753))

(declare-fun m!3338755 () Bool)

(assert (=> b!2972734 m!3338755))

(declare-fun m!3338757 () Bool)

(assert (=> b!2972734 m!3338757))

(declare-fun m!3338759 () Bool)

(assert (=> b!2972734 m!3338759))

(declare-fun m!3338761 () Bool)

(assert (=> b!2972734 m!3338761))

(assert (=> b!2972734 m!3338755))

(declare-fun m!3338763 () Bool)

(assert (=> b!2972731 m!3338763))

(declare-fun m!3338765 () Bool)

(assert (=> b!2972735 m!3338765))

(declare-fun m!3338767 () Bool)

(assert (=> b!2972735 m!3338767))

(declare-fun m!3338769 () Bool)

(assert (=> b!2972737 m!3338769))

(declare-fun m!3338771 () Bool)

(assert (=> b!2972737 m!3338771))

(declare-fun m!3338773 () Bool)

(assert (=> b!2972737 m!3338773))

(declare-fun m!3338775 () Bool)

(assert (=> start!287502 m!3338775))

(declare-fun m!3338777 () Bool)

(assert (=> b!2972732 m!3338777))

(declare-fun m!3338779 () Bool)

(assert (=> b!2972732 m!3338779))

(declare-fun m!3338781 () Bool)

(assert (=> b!2972732 m!3338781))

(push 1)

(assert (not b!2972736))

(assert tp_is_empty!16111)

(assert (not b!2972734))

(assert (not start!287502))

(assert (not b!2972733))

(assert (not b!2972737))

(assert (not b!2972732))

(assert (not b!2972735))

(assert (not b!2972731))

(assert (not b!2972730))

(assert (not b!2972738))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2972800 () Bool)

(declare-fun res!1225805 () Bool)

(declare-fun e!1870332 () Bool)

(assert (=> b!2972800 (=> (not res!1225805) (not e!1870332))))

(declare-fun call!198051 () Bool)

(assert (=> b!2972800 (= res!1225805 call!198051)))

(declare-fun e!1870333 () Bool)

(assert (=> b!2972800 (= e!1870333 e!1870332)))

(declare-fun bm!198046 () Bool)

(declare-fun call!198052 () Bool)

(assert (=> bm!198046 (= call!198051 call!198052)))

(declare-fun b!2972801 () Bool)

(declare-fun e!1870335 () Bool)

(declare-fun e!1870336 () Bool)

(assert (=> b!2972801 (= e!1870335 e!1870336)))

(declare-fun res!1225807 () Bool)

(declare-fun nullable!2969 (Regex!9274) Bool)

(assert (=> b!2972801 (= res!1225807 (not (nullable!2969 (reg!9603 r!17423))))))

(assert (=> b!2972801 (=> (not res!1225807) (not e!1870336))))

(declare-fun d!842785 () Bool)

(declare-fun res!1225806 () Bool)

(declare-fun e!1870331 () Bool)

(assert (=> d!842785 (=> res!1225806 e!1870331)))

(assert (=> d!842785 (= res!1225806 (is-ElementMatch!9274 r!17423))))

(assert (=> d!842785 (= (validRegex!4007 r!17423) e!1870331)))

(declare-fun b!2972802 () Bool)

(assert (=> b!2972802 (= e!1870336 call!198052)))

(declare-fun b!2972803 () Bool)

(declare-fun res!1225809 () Bool)

(declare-fun e!1870334 () Bool)

(assert (=> b!2972803 (=> res!1225809 e!1870334)))

(assert (=> b!2972803 (= res!1225809 (not (is-Concat!14595 r!17423)))))

(assert (=> b!2972803 (= e!1870333 e!1870334)))

(declare-fun b!2972804 () Bool)

(declare-fun call!198053 () Bool)

(assert (=> b!2972804 (= e!1870332 call!198053)))

(declare-fun bm!198047 () Bool)

(declare-fun c!487887 () Bool)

(declare-fun c!487886 () Bool)

(assert (=> bm!198047 (= call!198052 (validRegex!4007 (ite c!487887 (reg!9603 r!17423) (ite c!487886 (regOne!19061 r!17423) (regTwo!19060 r!17423)))))))

(declare-fun b!2972805 () Bool)

(assert (=> b!2972805 (= e!1870331 e!1870335)))

(assert (=> b!2972805 (= c!487887 (is-Star!9274 r!17423))))

(declare-fun b!2972806 () Bool)

(assert (=> b!2972806 (= e!1870335 e!1870333)))

(assert (=> b!2972806 (= c!487886 (is-Union!9274 r!17423))))

(declare-fun bm!198048 () Bool)

(assert (=> bm!198048 (= call!198053 (validRegex!4007 (ite c!487886 (regTwo!19061 r!17423) (regOne!19060 r!17423))))))

(declare-fun b!2972807 () Bool)

(declare-fun e!1870330 () Bool)

(assert (=> b!2972807 (= e!1870334 e!1870330)))

(declare-fun res!1225808 () Bool)

(assert (=> b!2972807 (=> (not res!1225808) (not e!1870330))))

(assert (=> b!2972807 (= res!1225808 call!198053)))

(declare-fun b!2972808 () Bool)

(assert (=> b!2972808 (= e!1870330 call!198051)))

(assert (= (and d!842785 (not res!1225806)) b!2972805))

(assert (= (and b!2972805 c!487887) b!2972801))

(assert (= (and b!2972805 (not c!487887)) b!2972806))

(assert (= (and b!2972801 res!1225807) b!2972802))

(assert (= (and b!2972806 c!487886) b!2972800))

(assert (= (and b!2972806 (not c!487886)) b!2972803))

(assert (= (and b!2972800 res!1225805) b!2972804))

(assert (= (and b!2972803 (not res!1225809)) b!2972807))

(assert (= (and b!2972807 res!1225808) b!2972808))

(assert (= (or b!2972800 b!2972808) bm!198046))

(assert (= (or b!2972804 b!2972807) bm!198048))

(assert (= (or b!2972802 bm!198046) bm!198047))

(declare-fun m!3338813 () Bool)

(assert (=> b!2972801 m!3338813))

(declare-fun m!3338815 () Bool)

(assert (=> bm!198047 m!3338815))

(declare-fun m!3338817 () Bool)

(assert (=> bm!198048 m!3338817))

(assert (=> start!287502 d!842785))

(declare-fun b!2972859 () Bool)

(declare-fun e!1870367 () Bool)

(assert (=> b!2972859 (= e!1870367 (nullable!2969 lt!1036454))))

(declare-fun b!2972860 () Bool)

(declare-fun e!1870366 () Bool)

(declare-fun lt!1036477 () Bool)

(assert (=> b!2972860 (= e!1870366 (not lt!1036477))))

(declare-fun b!2972861 () Bool)

(declare-fun e!1870362 () Bool)

(declare-fun e!1870365 () Bool)

(assert (=> b!2972861 (= e!1870362 e!1870365)))

(declare-fun res!1225843 () Bool)

(assert (=> b!2972861 (=> (not res!1225843) (not e!1870365))))

(assert (=> b!2972861 (= res!1225843 (not lt!1036477))))

(declare-fun b!2972862 () Bool)

(declare-fun derivativeStep!2570 (Regex!9274 C!18734) Regex!9274)

(declare-fun head!6629 (List!35139) C!18734)

(declare-fun tail!4855 (List!35139) List!35139)

(assert (=> b!2972862 (= e!1870367 (matchR!4156 (derivativeStep!2570 lt!1036454 (head!6629 s!11993)) (tail!4855 s!11993)))))

(declare-fun b!2972863 () Bool)

(declare-fun e!1870361 () Bool)

(assert (=> b!2972863 (= e!1870361 e!1870366)))

(declare-fun c!487901 () Bool)

(assert (=> b!2972863 (= c!487901 (is-EmptyLang!9274 lt!1036454))))

(declare-fun b!2972864 () Bool)

(declare-fun e!1870363 () Bool)

(assert (=> b!2972864 (= e!1870365 e!1870363)))

(declare-fun res!1225838 () Bool)

(assert (=> b!2972864 (=> res!1225838 e!1870363)))

(declare-fun call!198056 () Bool)

(assert (=> b!2972864 (= res!1225838 call!198056)))

(declare-fun b!2972865 () Bool)

(assert (=> b!2972865 (= e!1870361 (= lt!1036477 call!198056))))

(declare-fun b!2972866 () Bool)

(assert (=> b!2972866 (= e!1870363 (not (= (head!6629 s!11993) (c!487880 lt!1036454))))))

(declare-fun b!2972867 () Bool)

(declare-fun res!1225837 () Bool)

(declare-fun e!1870364 () Bool)

(assert (=> b!2972867 (=> (not res!1225837) (not e!1870364))))

(assert (=> b!2972867 (= res!1225837 (isEmpty!19250 (tail!4855 s!11993)))))

(declare-fun b!2972868 () Bool)

(declare-fun res!1225841 () Bool)

(assert (=> b!2972868 (=> res!1225841 e!1870362)))

(assert (=> b!2972868 (= res!1225841 e!1870364)))

(declare-fun res!1225842 () Bool)

(assert (=> b!2972868 (=> (not res!1225842) (not e!1870364))))

(assert (=> b!2972868 (= res!1225842 lt!1036477)))

(declare-fun bm!198051 () Bool)

(assert (=> bm!198051 (= call!198056 (isEmpty!19250 s!11993))))

(declare-fun b!2972869 () Bool)

(assert (=> b!2972869 (= e!1870364 (= (head!6629 s!11993) (c!487880 lt!1036454)))))

(declare-fun b!2972870 () Bool)

(declare-fun res!1225839 () Bool)

(assert (=> b!2972870 (=> res!1225839 e!1870363)))

(assert (=> b!2972870 (= res!1225839 (not (isEmpty!19250 (tail!4855 s!11993))))))

(declare-fun b!2972871 () Bool)

(declare-fun res!1225836 () Bool)

(assert (=> b!2972871 (=> res!1225836 e!1870362)))

(assert (=> b!2972871 (= res!1225836 (not (is-ElementMatch!9274 lt!1036454)))))

(assert (=> b!2972871 (= e!1870366 e!1870362)))

(declare-fun d!842789 () Bool)

(assert (=> d!842789 e!1870361))

(declare-fun c!487900 () Bool)

(assert (=> d!842789 (= c!487900 (is-EmptyExpr!9274 lt!1036454))))

(assert (=> d!842789 (= lt!1036477 e!1870367)))

(declare-fun c!487902 () Bool)

(assert (=> d!842789 (= c!487902 (isEmpty!19250 s!11993))))

(assert (=> d!842789 (validRegex!4007 lt!1036454)))

(assert (=> d!842789 (= (matchR!4156 lt!1036454 s!11993) lt!1036477)))

(declare-fun b!2972872 () Bool)

(declare-fun res!1225840 () Bool)

(assert (=> b!2972872 (=> (not res!1225840) (not e!1870364))))

(assert (=> b!2972872 (= res!1225840 (not call!198056))))

(assert (= (and d!842789 c!487902) b!2972859))

(assert (= (and d!842789 (not c!487902)) b!2972862))

(assert (= (and d!842789 c!487900) b!2972865))

(assert (= (and d!842789 (not c!487900)) b!2972863))

(assert (= (and b!2972863 c!487901) b!2972860))

(assert (= (and b!2972863 (not c!487901)) b!2972871))

(assert (= (and b!2972871 (not res!1225836)) b!2972868))

(assert (= (and b!2972868 res!1225842) b!2972872))

(assert (= (and b!2972872 res!1225840) b!2972867))

(assert (= (and b!2972867 res!1225837) b!2972869))

(assert (= (and b!2972868 (not res!1225841)) b!2972861))

(assert (= (and b!2972861 res!1225843) b!2972864))

(assert (= (and b!2972864 (not res!1225838)) b!2972870))

(assert (= (and b!2972870 (not res!1225839)) b!2972866))

(assert (= (or b!2972865 b!2972864 b!2972872) bm!198051))

(assert (=> d!842789 m!3338777))

(declare-fun m!3338819 () Bool)

(assert (=> d!842789 m!3338819))

(declare-fun m!3338821 () Bool)

(assert (=> b!2972870 m!3338821))

(assert (=> b!2972870 m!3338821))

(declare-fun m!3338823 () Bool)

(assert (=> b!2972870 m!3338823))

(declare-fun m!3338825 () Bool)

(assert (=> b!2972862 m!3338825))

(assert (=> b!2972862 m!3338825))

(declare-fun m!3338827 () Bool)

(assert (=> b!2972862 m!3338827))

(assert (=> b!2972862 m!3338821))

(assert (=> b!2972862 m!3338827))

(assert (=> b!2972862 m!3338821))

(declare-fun m!3338829 () Bool)

(assert (=> b!2972862 m!3338829))

(assert (=> bm!198051 m!3338777))

(assert (=> b!2972869 m!3338825))

(assert (=> b!2972866 m!3338825))

(declare-fun m!3338831 () Bool)

(assert (=> b!2972859 m!3338831))

(assert (=> b!2972867 m!3338821))

(assert (=> b!2972867 m!3338821))

(assert (=> b!2972867 m!3338823))

(assert (=> b!2972731 d!842789))

(declare-fun d!842791 () Bool)

(assert (=> d!842791 (= (isEmpty!19250 s!11993) (is-Nil!35015 s!11993))))

(assert (=> b!2972732 d!842791))

(declare-fun bs!526528 () Bool)

(declare-fun b!2972933 () Bool)

(assert (= bs!526528 (and b!2972933 b!2972734)))

(declare-fun lambda!110597 () Int)

(assert (=> bs!526528 (not (= lambda!110597 lambda!110589))))

(assert (=> b!2972933 true))

(assert (=> b!2972933 true))

(declare-fun bs!526529 () Bool)

(declare-fun b!2972932 () Bool)

(assert (= bs!526529 (and b!2972932 b!2972734)))

(declare-fun lambda!110598 () Int)

(assert (=> bs!526529 (not (= lambda!110598 lambda!110589))))

(declare-fun bs!526530 () Bool)

(assert (= bs!526530 (and b!2972932 b!2972933)))

(assert (=> bs!526530 (not (= lambda!110598 lambda!110597))))

(assert (=> b!2972932 true))

(assert (=> b!2972932 true))

(declare-fun c!487915 () Bool)

(declare-fun call!198065 () Bool)

(declare-fun bm!198059 () Bool)

(assert (=> bm!198059 (= call!198065 (Exists!1554 (ite c!487915 lambda!110597 lambda!110598)))))

(declare-fun b!2972925 () Bool)

(declare-fun e!1870403 () Bool)

(declare-fun e!1870400 () Bool)

(assert (=> b!2972925 (= e!1870403 e!1870400)))

(assert (=> b!2972925 (= c!487915 (is-Star!9274 lt!1036454))))

(declare-fun b!2972926 () Bool)

(declare-fun c!487914 () Bool)

(assert (=> b!2972926 (= c!487914 (is-ElementMatch!9274 lt!1036454))))

(declare-fun e!1870397 () Bool)

(declare-fun e!1870399 () Bool)

(assert (=> b!2972926 (= e!1870397 e!1870399)))

(declare-fun bm!198060 () Bool)

(declare-fun call!198064 () Bool)

(assert (=> bm!198060 (= call!198064 (isEmpty!19250 s!11993))))

(declare-fun b!2972928 () Bool)

(declare-fun e!1870401 () Bool)

(assert (=> b!2972928 (= e!1870403 e!1870401)))

(declare-fun res!1225876 () Bool)

(assert (=> b!2972928 (= res!1225876 (matchRSpec!1411 (regOne!19061 lt!1036454) s!11993))))

(assert (=> b!2972928 (=> res!1225876 e!1870401)))

(declare-fun b!2972929 () Bool)

(declare-fun c!487917 () Bool)

(assert (=> b!2972929 (= c!487917 (is-Union!9274 lt!1036454))))

(assert (=> b!2972929 (= e!1870399 e!1870403)))

(declare-fun b!2972930 () Bool)

(assert (=> b!2972930 (= e!1870401 (matchRSpec!1411 (regTwo!19061 lt!1036454) s!11993))))

(declare-fun b!2972931 () Bool)

(declare-fun e!1870402 () Bool)

(assert (=> b!2972931 (= e!1870402 call!198064)))

(assert (=> b!2972932 (= e!1870400 call!198065)))

(declare-fun e!1870398 () Bool)

(assert (=> b!2972933 (= e!1870398 call!198065)))

(declare-fun d!842793 () Bool)

(declare-fun c!487916 () Bool)

(assert (=> d!842793 (= c!487916 (is-EmptyExpr!9274 lt!1036454))))

(assert (=> d!842793 (= (matchRSpec!1411 lt!1036454 s!11993) e!1870402)))

(declare-fun b!2972927 () Bool)

(assert (=> b!2972927 (= e!1870402 e!1870397)))

(declare-fun res!1225875 () Bool)

(assert (=> b!2972927 (= res!1225875 (not (is-EmptyLang!9274 lt!1036454)))))

(assert (=> b!2972927 (=> (not res!1225875) (not e!1870397))))

(declare-fun b!2972934 () Bool)

(assert (=> b!2972934 (= e!1870399 (= s!11993 (Cons!35015 (c!487880 lt!1036454) Nil!35015)))))

(declare-fun b!2972935 () Bool)

(declare-fun res!1225874 () Bool)

(assert (=> b!2972935 (=> res!1225874 e!1870398)))

(assert (=> b!2972935 (= res!1225874 call!198064)))

(assert (=> b!2972935 (= e!1870400 e!1870398)))

(assert (= (and d!842793 c!487916) b!2972931))

(assert (= (and d!842793 (not c!487916)) b!2972927))

(assert (= (and b!2972927 res!1225875) b!2972926))

(assert (= (and b!2972926 c!487914) b!2972934))

(assert (= (and b!2972926 (not c!487914)) b!2972929))

(assert (= (and b!2972929 c!487917) b!2972928))

(assert (= (and b!2972929 (not c!487917)) b!2972925))

(assert (= (and b!2972928 (not res!1225876)) b!2972930))

(assert (= (and b!2972925 c!487915) b!2972935))

(assert (= (and b!2972925 (not c!487915)) b!2972932))

(assert (= (and b!2972935 (not res!1225874)) b!2972933))

(assert (= (or b!2972933 b!2972932) bm!198059))

(assert (= (or b!2972931 b!2972935) bm!198060))

(declare-fun m!3338847 () Bool)

(assert (=> bm!198059 m!3338847))

(assert (=> bm!198060 m!3338777))

(declare-fun m!3338849 () Bool)

(assert (=> b!2972928 m!3338849))

(declare-fun m!3338851 () Bool)

(assert (=> b!2972930 m!3338851))

(assert (=> b!2972732 d!842793))

(declare-fun d!842797 () Bool)

(assert (=> d!842797 (= (matchR!4156 lt!1036454 s!11993) (matchRSpec!1411 lt!1036454 s!11993))))

(declare-fun lt!1036481 () Unit!48927)

(declare-fun choose!17572 (Regex!9274 List!35139) Unit!48927)

(assert (=> d!842797 (= lt!1036481 (choose!17572 lt!1036454 s!11993))))

(assert (=> d!842797 (validRegex!4007 lt!1036454)))

(assert (=> d!842797 (= (mainMatchTheorem!1411 lt!1036454 s!11993) lt!1036481)))

(declare-fun bs!526531 () Bool)

(assert (= bs!526531 d!842797))

(assert (=> bs!526531 m!3338763))

(assert (=> bs!526531 m!3338779))

(declare-fun m!3338853 () Bool)

(assert (=> bs!526531 m!3338853))

(assert (=> bs!526531 m!3338819))

(assert (=> b!2972732 d!842797))

(declare-fun bs!526532 () Bool)

(declare-fun b!2972944 () Bool)

(assert (= bs!526532 (and b!2972944 b!2972734)))

(declare-fun lambda!110599 () Int)

(assert (=> bs!526532 (not (= lambda!110599 lambda!110589))))

(declare-fun bs!526533 () Bool)

(assert (= bs!526533 (and b!2972944 b!2972933)))

(assert (=> bs!526533 (= (and (= (reg!9603 r!17423) (reg!9603 lt!1036454)) (= r!17423 lt!1036454)) (= lambda!110599 lambda!110597))))

(declare-fun bs!526534 () Bool)

(assert (= bs!526534 (and b!2972944 b!2972932)))

(assert (=> bs!526534 (not (= lambda!110599 lambda!110598))))

(assert (=> b!2972944 true))

(assert (=> b!2972944 true))

(declare-fun bs!526535 () Bool)

(declare-fun b!2972943 () Bool)

(assert (= bs!526535 (and b!2972943 b!2972734)))

(declare-fun lambda!110600 () Int)

(assert (=> bs!526535 (not (= lambda!110600 lambda!110589))))

(declare-fun bs!526536 () Bool)

(assert (= bs!526536 (and b!2972943 b!2972933)))

(assert (=> bs!526536 (not (= lambda!110600 lambda!110597))))

(declare-fun bs!526537 () Bool)

(assert (= bs!526537 (and b!2972943 b!2972932)))

(assert (=> bs!526537 (= (and (= (regOne!19060 r!17423) (regOne!19060 lt!1036454)) (= (regTwo!19060 r!17423) (regTwo!19060 lt!1036454))) (= lambda!110600 lambda!110598))))

(declare-fun bs!526538 () Bool)

(assert (= bs!526538 (and b!2972943 b!2972944)))

(assert (=> bs!526538 (not (= lambda!110600 lambda!110599))))

(assert (=> b!2972943 true))

(assert (=> b!2972943 true))

(declare-fun call!198067 () Bool)

(declare-fun bm!198061 () Bool)

(declare-fun c!487919 () Bool)

(assert (=> bm!198061 (= call!198067 (Exists!1554 (ite c!487919 lambda!110599 lambda!110600)))))

(declare-fun b!2972936 () Bool)

(declare-fun e!1870410 () Bool)

(declare-fun e!1870407 () Bool)

(assert (=> b!2972936 (= e!1870410 e!1870407)))

(assert (=> b!2972936 (= c!487919 (is-Star!9274 r!17423))))

(declare-fun b!2972937 () Bool)

(declare-fun c!487918 () Bool)

(assert (=> b!2972937 (= c!487918 (is-ElementMatch!9274 r!17423))))

(declare-fun e!1870404 () Bool)

(declare-fun e!1870406 () Bool)

(assert (=> b!2972937 (= e!1870404 e!1870406)))

(declare-fun bm!198062 () Bool)

(declare-fun call!198066 () Bool)

(assert (=> bm!198062 (= call!198066 (isEmpty!19250 s!11993))))

(declare-fun b!2972939 () Bool)

(declare-fun e!1870408 () Bool)

(assert (=> b!2972939 (= e!1870410 e!1870408)))

(declare-fun res!1225879 () Bool)

(assert (=> b!2972939 (= res!1225879 (matchRSpec!1411 (regOne!19061 r!17423) s!11993))))

(assert (=> b!2972939 (=> res!1225879 e!1870408)))

(declare-fun b!2972940 () Bool)

(declare-fun c!487921 () Bool)

(assert (=> b!2972940 (= c!487921 (is-Union!9274 r!17423))))

(assert (=> b!2972940 (= e!1870406 e!1870410)))

(declare-fun b!2972941 () Bool)

(assert (=> b!2972941 (= e!1870408 (matchRSpec!1411 (regTwo!19061 r!17423) s!11993))))

(declare-fun b!2972942 () Bool)

(declare-fun e!1870409 () Bool)

(assert (=> b!2972942 (= e!1870409 call!198066)))

(assert (=> b!2972943 (= e!1870407 call!198067)))

(declare-fun e!1870405 () Bool)

(assert (=> b!2972944 (= e!1870405 call!198067)))

(declare-fun d!842799 () Bool)

(declare-fun c!487920 () Bool)

(assert (=> d!842799 (= c!487920 (is-EmptyExpr!9274 r!17423))))

(assert (=> d!842799 (= (matchRSpec!1411 r!17423 s!11993) e!1870409)))

(declare-fun b!2972938 () Bool)

(assert (=> b!2972938 (= e!1870409 e!1870404)))

(declare-fun res!1225878 () Bool)

(assert (=> b!2972938 (= res!1225878 (not (is-EmptyLang!9274 r!17423)))))

(assert (=> b!2972938 (=> (not res!1225878) (not e!1870404))))

(declare-fun b!2972945 () Bool)

(assert (=> b!2972945 (= e!1870406 (= s!11993 (Cons!35015 (c!487880 r!17423) Nil!35015)))))

(declare-fun b!2972946 () Bool)

(declare-fun res!1225877 () Bool)

(assert (=> b!2972946 (=> res!1225877 e!1870405)))

(assert (=> b!2972946 (= res!1225877 call!198066)))

(assert (=> b!2972946 (= e!1870407 e!1870405)))

(assert (= (and d!842799 c!487920) b!2972942))

(assert (= (and d!842799 (not c!487920)) b!2972938))

(assert (= (and b!2972938 res!1225878) b!2972937))

(assert (= (and b!2972937 c!487918) b!2972945))

(assert (= (and b!2972937 (not c!487918)) b!2972940))

(assert (= (and b!2972940 c!487921) b!2972939))

(assert (= (and b!2972940 (not c!487921)) b!2972936))

(assert (= (and b!2972939 (not res!1225879)) b!2972941))

(assert (= (and b!2972936 c!487919) b!2972946))

(assert (= (and b!2972936 (not c!487919)) b!2972943))

(assert (= (and b!2972946 (not res!1225877)) b!2972944))

(assert (= (or b!2972944 b!2972943) bm!198061))

(assert (= (or b!2972942 b!2972946) bm!198062))

(declare-fun m!3338855 () Bool)

(assert (=> bm!198061 m!3338855))

(assert (=> bm!198062 m!3338777))

(declare-fun m!3338857 () Bool)

(assert (=> b!2972939 m!3338857))

(declare-fun m!3338859 () Bool)

(assert (=> b!2972941 m!3338859))

(assert (=> b!2972737 d!842799))

(declare-fun b!2972947 () Bool)

(declare-fun e!1870417 () Bool)

(assert (=> b!2972947 (= e!1870417 (nullable!2969 r!17423))))

(declare-fun b!2972948 () Bool)

(declare-fun e!1870416 () Bool)

(declare-fun lt!1036482 () Bool)

(assert (=> b!2972948 (= e!1870416 (not lt!1036482))))

(declare-fun b!2972949 () Bool)

(declare-fun e!1870412 () Bool)

(declare-fun e!1870415 () Bool)

(assert (=> b!2972949 (= e!1870412 e!1870415)))

(declare-fun res!1225887 () Bool)

(assert (=> b!2972949 (=> (not res!1225887) (not e!1870415))))

(assert (=> b!2972949 (= res!1225887 (not lt!1036482))))

(declare-fun b!2972950 () Bool)

(assert (=> b!2972950 (= e!1870417 (matchR!4156 (derivativeStep!2570 r!17423 (head!6629 s!11993)) (tail!4855 s!11993)))))

(declare-fun b!2972951 () Bool)

(declare-fun e!1870411 () Bool)

(assert (=> b!2972951 (= e!1870411 e!1870416)))

(declare-fun c!487923 () Bool)

(assert (=> b!2972951 (= c!487923 (is-EmptyLang!9274 r!17423))))

(declare-fun b!2972952 () Bool)

(declare-fun e!1870413 () Bool)

(assert (=> b!2972952 (= e!1870415 e!1870413)))

(declare-fun res!1225882 () Bool)

(assert (=> b!2972952 (=> res!1225882 e!1870413)))

(declare-fun call!198068 () Bool)

(assert (=> b!2972952 (= res!1225882 call!198068)))

(declare-fun b!2972953 () Bool)

(assert (=> b!2972953 (= e!1870411 (= lt!1036482 call!198068))))

(declare-fun b!2972954 () Bool)

(assert (=> b!2972954 (= e!1870413 (not (= (head!6629 s!11993) (c!487880 r!17423))))))

(declare-fun b!2972955 () Bool)

(declare-fun res!1225881 () Bool)

(declare-fun e!1870414 () Bool)

(assert (=> b!2972955 (=> (not res!1225881) (not e!1870414))))

(assert (=> b!2972955 (= res!1225881 (isEmpty!19250 (tail!4855 s!11993)))))

(declare-fun b!2972956 () Bool)

(declare-fun res!1225885 () Bool)

(assert (=> b!2972956 (=> res!1225885 e!1870412)))

(assert (=> b!2972956 (= res!1225885 e!1870414)))

(declare-fun res!1225886 () Bool)

(assert (=> b!2972956 (=> (not res!1225886) (not e!1870414))))

(assert (=> b!2972956 (= res!1225886 lt!1036482)))

(declare-fun bm!198063 () Bool)

(assert (=> bm!198063 (= call!198068 (isEmpty!19250 s!11993))))

(declare-fun b!2972957 () Bool)

(assert (=> b!2972957 (= e!1870414 (= (head!6629 s!11993) (c!487880 r!17423)))))

(declare-fun b!2972958 () Bool)

(declare-fun res!1225883 () Bool)

(assert (=> b!2972958 (=> res!1225883 e!1870413)))

(assert (=> b!2972958 (= res!1225883 (not (isEmpty!19250 (tail!4855 s!11993))))))

(declare-fun b!2972959 () Bool)

(declare-fun res!1225880 () Bool)

(assert (=> b!2972959 (=> res!1225880 e!1870412)))

(assert (=> b!2972959 (= res!1225880 (not (is-ElementMatch!9274 r!17423)))))

(assert (=> b!2972959 (= e!1870416 e!1870412)))

(declare-fun d!842801 () Bool)

(assert (=> d!842801 e!1870411))

(declare-fun c!487922 () Bool)

(assert (=> d!842801 (= c!487922 (is-EmptyExpr!9274 r!17423))))

(assert (=> d!842801 (= lt!1036482 e!1870417)))

(declare-fun c!487924 () Bool)

(assert (=> d!842801 (= c!487924 (isEmpty!19250 s!11993))))

(assert (=> d!842801 (validRegex!4007 r!17423)))

(assert (=> d!842801 (= (matchR!4156 r!17423 s!11993) lt!1036482)))

(declare-fun b!2972960 () Bool)

(declare-fun res!1225884 () Bool)

(assert (=> b!2972960 (=> (not res!1225884) (not e!1870414))))

(assert (=> b!2972960 (= res!1225884 (not call!198068))))

(assert (= (and d!842801 c!487924) b!2972947))

(assert (= (and d!842801 (not c!487924)) b!2972950))

(assert (= (and d!842801 c!487922) b!2972953))

(assert (= (and d!842801 (not c!487922)) b!2972951))

(assert (= (and b!2972951 c!487923) b!2972948))

(assert (= (and b!2972951 (not c!487923)) b!2972959))

(assert (= (and b!2972959 (not res!1225880)) b!2972956))

(assert (= (and b!2972956 res!1225886) b!2972960))

(assert (= (and b!2972960 res!1225884) b!2972955))

(assert (= (and b!2972955 res!1225881) b!2972957))

(assert (= (and b!2972956 (not res!1225885)) b!2972949))

(assert (= (and b!2972949 res!1225887) b!2972952))

(assert (= (and b!2972952 (not res!1225882)) b!2972958))

(assert (= (and b!2972958 (not res!1225883)) b!2972954))

(assert (= (or b!2972953 b!2972952 b!2972960) bm!198063))

(assert (=> d!842801 m!3338777))

(assert (=> d!842801 m!3338775))

(assert (=> b!2972958 m!3338821))

(assert (=> b!2972958 m!3338821))

(assert (=> b!2972958 m!3338823))

(assert (=> b!2972950 m!3338825))

(assert (=> b!2972950 m!3338825))

(declare-fun m!3338861 () Bool)

(assert (=> b!2972950 m!3338861))

(assert (=> b!2972950 m!3338821))

(assert (=> b!2972950 m!3338861))

(assert (=> b!2972950 m!3338821))

(declare-fun m!3338863 () Bool)

(assert (=> b!2972950 m!3338863))

(assert (=> bm!198063 m!3338777))

(assert (=> b!2972957 m!3338825))

(assert (=> b!2972954 m!3338825))

(declare-fun m!3338865 () Bool)

(assert (=> b!2972947 m!3338865))

(assert (=> b!2972955 m!3338821))

(assert (=> b!2972955 m!3338821))

(assert (=> b!2972955 m!3338823))

(assert (=> b!2972737 d!842801))

(declare-fun d!842803 () Bool)

(assert (=> d!842803 (= (matchR!4156 r!17423 s!11993) (matchRSpec!1411 r!17423 s!11993))))

(declare-fun lt!1036483 () Unit!48927)

(assert (=> d!842803 (= lt!1036483 (choose!17572 r!17423 s!11993))))

(assert (=> d!842803 (validRegex!4007 r!17423)))

(assert (=> d!842803 (= (mainMatchTheorem!1411 r!17423 s!11993) lt!1036483)))

(declare-fun bs!526539 () Bool)

(assert (= bs!526539 d!842803))

(assert (=> bs!526539 m!3338771))

(assert (=> bs!526539 m!3338769))

(declare-fun m!3338867 () Bool)

(assert (=> bs!526539 m!3338867))

(assert (=> bs!526539 m!3338775))

(assert (=> b!2972737 d!842803))

(declare-fun b!2972997 () Bool)

(declare-fun e!1870441 () Option!6675)

(declare-fun e!1870442 () Option!6675)

(assert (=> b!2972997 (= e!1870441 e!1870442)))

(declare-fun c!487933 () Bool)

(assert (=> b!2972997 (= c!487933 (is-Nil!35015 s!11993))))

(declare-fun b!2972998 () Bool)

(declare-fun lt!1036496 () Unit!48927)

(declare-fun lt!1036498 () Unit!48927)

(assert (=> b!2972998 (= lt!1036496 lt!1036498)))

(declare-fun ++!8345 (List!35139 List!35139) List!35139)

(assert (=> b!2972998 (= (++!8345 (++!8345 Nil!35015 (Cons!35015 (h!40435 s!11993) Nil!35015)) (t!234204 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!964 (List!35139 C!18734 List!35139 List!35139) Unit!48927)

(assert (=> b!2972998 (= lt!1036498 (lemmaMoveElementToOtherListKeepsConcatEq!964 Nil!35015 (h!40435 s!11993) (t!234204 s!11993) s!11993))))

(assert (=> b!2972998 (= e!1870442 (findConcatSeparation!1069 lt!1036450 lt!1036454 (++!8345 Nil!35015 (Cons!35015 (h!40435 s!11993) Nil!35015)) (t!234204 s!11993) s!11993))))

(declare-fun b!2972999 () Bool)

(assert (=> b!2972999 (= e!1870441 (Some!6674 (tuple2!33887 Nil!35015 s!11993)))))

(declare-fun b!2973000 () Bool)

(declare-fun e!1870439 () Bool)

(assert (=> b!2973000 (= e!1870439 (matchR!4156 lt!1036454 s!11993))))

(declare-fun b!2973001 () Bool)

(declare-fun e!1870440 () Bool)

(declare-fun lt!1036497 () Option!6675)

(declare-fun get!10785 (Option!6675) tuple2!33886)

(assert (=> b!2973001 (= e!1870440 (= (++!8345 (_1!20075 (get!10785 lt!1036497)) (_2!20075 (get!10785 lt!1036497))) s!11993))))

(declare-fun d!842805 () Bool)

(declare-fun e!1870438 () Bool)

(assert (=> d!842805 e!1870438))

(declare-fun res!1225912 () Bool)

(assert (=> d!842805 (=> res!1225912 e!1870438)))

(assert (=> d!842805 (= res!1225912 e!1870440)))

(declare-fun res!1225908 () Bool)

(assert (=> d!842805 (=> (not res!1225908) (not e!1870440))))

(assert (=> d!842805 (= res!1225908 (isDefined!5226 lt!1036497))))

(assert (=> d!842805 (= lt!1036497 e!1870441)))

(declare-fun c!487934 () Bool)

(assert (=> d!842805 (= c!487934 e!1870439)))

(declare-fun res!1225910 () Bool)

(assert (=> d!842805 (=> (not res!1225910) (not e!1870439))))

(assert (=> d!842805 (= res!1225910 (matchR!4156 lt!1036450 Nil!35015))))

(assert (=> d!842805 (validRegex!4007 lt!1036450)))

(assert (=> d!842805 (= (findConcatSeparation!1069 lt!1036450 lt!1036454 Nil!35015 s!11993 s!11993) lt!1036497)))

(declare-fun b!2973002 () Bool)

(declare-fun res!1225911 () Bool)

(assert (=> b!2973002 (=> (not res!1225911) (not e!1870440))))

(assert (=> b!2973002 (= res!1225911 (matchR!4156 lt!1036450 (_1!20075 (get!10785 lt!1036497))))))

(declare-fun b!2973003 () Bool)

(assert (=> b!2973003 (= e!1870438 (not (isDefined!5226 lt!1036497)))))

(declare-fun b!2973004 () Bool)

(assert (=> b!2973004 (= e!1870442 None!6674)))

(declare-fun b!2973005 () Bool)

(declare-fun res!1225909 () Bool)

(assert (=> b!2973005 (=> (not res!1225909) (not e!1870440))))

(assert (=> b!2973005 (= res!1225909 (matchR!4156 lt!1036454 (_2!20075 (get!10785 lt!1036497))))))

(assert (= (and d!842805 res!1225910) b!2973000))

(assert (= (and d!842805 c!487934) b!2972999))

(assert (= (and d!842805 (not c!487934)) b!2972997))

(assert (= (and b!2972997 c!487933) b!2973004))

(assert (= (and b!2972997 (not c!487933)) b!2972998))

(assert (= (and d!842805 res!1225908) b!2973002))

(assert (= (and b!2973002 res!1225911) b!2973005))

(assert (= (and b!2973005 res!1225909) b!2973001))

(assert (= (and d!842805 (not res!1225912)) b!2973003))

(declare-fun m!3338869 () Bool)

(assert (=> b!2973002 m!3338869))

(declare-fun m!3338871 () Bool)

(assert (=> b!2973002 m!3338871))

(declare-fun m!3338873 () Bool)

(assert (=> d!842805 m!3338873))

(declare-fun m!3338875 () Bool)

(assert (=> d!842805 m!3338875))

(declare-fun m!3338877 () Bool)

(assert (=> d!842805 m!3338877))

(assert (=> b!2973000 m!3338763))

(assert (=> b!2973005 m!3338869))

(declare-fun m!3338879 () Bool)

(assert (=> b!2973005 m!3338879))

(declare-fun m!3338881 () Bool)

(assert (=> b!2972998 m!3338881))

(assert (=> b!2972998 m!3338881))

(declare-fun m!3338883 () Bool)

(assert (=> b!2972998 m!3338883))

(declare-fun m!3338885 () Bool)

(assert (=> b!2972998 m!3338885))

(assert (=> b!2972998 m!3338881))

(declare-fun m!3338887 () Bool)

(assert (=> b!2972998 m!3338887))

(assert (=> b!2973001 m!3338869))

(declare-fun m!3338889 () Bool)

(assert (=> b!2973001 m!3338889))

(assert (=> b!2973003 m!3338873))

(assert (=> b!2972734 d!842805))

(declare-fun b!2973006 () Bool)

(declare-fun res!1225913 () Bool)

(declare-fun e!1870445 () Bool)

(assert (=> b!2973006 (=> (not res!1225913) (not e!1870445))))

(declare-fun call!198069 () Bool)

(assert (=> b!2973006 (= res!1225913 call!198069)))

(declare-fun e!1870446 () Bool)

(assert (=> b!2973006 (= e!1870446 e!1870445)))

(declare-fun bm!198064 () Bool)

(declare-fun call!198070 () Bool)

(assert (=> bm!198064 (= call!198069 call!198070)))

(declare-fun b!2973007 () Bool)

(declare-fun e!1870448 () Bool)

(declare-fun e!1870449 () Bool)

(assert (=> b!2973007 (= e!1870448 e!1870449)))

(declare-fun res!1225915 () Bool)

(assert (=> b!2973007 (= res!1225915 (not (nullable!2969 (reg!9603 (reg!9603 r!17423)))))))

(assert (=> b!2973007 (=> (not res!1225915) (not e!1870449))))

(declare-fun d!842807 () Bool)

(declare-fun res!1225914 () Bool)

(declare-fun e!1870444 () Bool)

(assert (=> d!842807 (=> res!1225914 e!1870444)))

(assert (=> d!842807 (= res!1225914 (is-ElementMatch!9274 (reg!9603 r!17423)))))

(assert (=> d!842807 (= (validRegex!4007 (reg!9603 r!17423)) e!1870444)))

(declare-fun b!2973008 () Bool)

(assert (=> b!2973008 (= e!1870449 call!198070)))

(declare-fun b!2973009 () Bool)

(declare-fun res!1225917 () Bool)

(declare-fun e!1870447 () Bool)

(assert (=> b!2973009 (=> res!1225917 e!1870447)))

(assert (=> b!2973009 (= res!1225917 (not (is-Concat!14595 (reg!9603 r!17423))))))

(assert (=> b!2973009 (= e!1870446 e!1870447)))

(declare-fun b!2973010 () Bool)

(declare-fun call!198071 () Bool)

(assert (=> b!2973010 (= e!1870445 call!198071)))

(declare-fun c!487935 () Bool)

(declare-fun c!487936 () Bool)

(declare-fun bm!198065 () Bool)

(assert (=> bm!198065 (= call!198070 (validRegex!4007 (ite c!487936 (reg!9603 (reg!9603 r!17423)) (ite c!487935 (regOne!19061 (reg!9603 r!17423)) (regTwo!19060 (reg!9603 r!17423))))))))

(declare-fun b!2973011 () Bool)

(assert (=> b!2973011 (= e!1870444 e!1870448)))

(assert (=> b!2973011 (= c!487936 (is-Star!9274 (reg!9603 r!17423)))))

(declare-fun b!2973012 () Bool)

(assert (=> b!2973012 (= e!1870448 e!1870446)))

(assert (=> b!2973012 (= c!487935 (is-Union!9274 (reg!9603 r!17423)))))

(declare-fun bm!198066 () Bool)

(assert (=> bm!198066 (= call!198071 (validRegex!4007 (ite c!487935 (regTwo!19061 (reg!9603 r!17423)) (regOne!19060 (reg!9603 r!17423)))))))

(declare-fun b!2973013 () Bool)

(declare-fun e!1870443 () Bool)

(assert (=> b!2973013 (= e!1870447 e!1870443)))

(declare-fun res!1225916 () Bool)

(assert (=> b!2973013 (=> (not res!1225916) (not e!1870443))))

(assert (=> b!2973013 (= res!1225916 call!198071)))

(declare-fun b!2973014 () Bool)

(assert (=> b!2973014 (= e!1870443 call!198069)))

(assert (= (and d!842807 (not res!1225914)) b!2973011))

(assert (= (and b!2973011 c!487936) b!2973007))

(assert (= (and b!2973011 (not c!487936)) b!2973012))

(assert (= (and b!2973007 res!1225915) b!2973008))

(assert (= (and b!2973012 c!487935) b!2973006))

(assert (= (and b!2973012 (not c!487935)) b!2973009))

(assert (= (and b!2973006 res!1225913) b!2973010))

(assert (= (and b!2973009 (not res!1225917)) b!2973013))

(assert (= (and b!2973013 res!1225916) b!2973014))

(assert (= (or b!2973006 b!2973014) bm!198064))

(assert (= (or b!2973010 b!2973013) bm!198066))

(assert (= (or b!2973008 bm!198064) bm!198065))

(declare-fun m!3338891 () Bool)

(assert (=> b!2973007 m!3338891))

(declare-fun m!3338893 () Bool)

(assert (=> bm!198065 m!3338893))

(declare-fun m!3338895 () Bool)

(assert (=> bm!198066 m!3338895))

(assert (=> b!2972734 d!842807))

(declare-fun d!842809 () Bool)

(declare-fun choose!17573 (Int) Bool)

(assert (=> d!842809 (= (Exists!1554 lambda!110589) (choose!17573 lambda!110589))))

(declare-fun bs!526540 () Bool)

(assert (= bs!526540 d!842809))

(declare-fun m!3338897 () Bool)

(assert (=> bs!526540 m!3338897))

(assert (=> b!2972734 d!842809))

(declare-fun d!842811 () Bool)

(declare-fun isEmpty!19252 (Option!6675) Bool)

(assert (=> d!842811 (= (isDefined!5226 (findConcatSeparation!1069 lt!1036450 lt!1036454 Nil!35015 s!11993 s!11993)) (not (isEmpty!19252 (findConcatSeparation!1069 lt!1036450 lt!1036454 Nil!35015 s!11993 s!11993))))))

(declare-fun bs!526541 () Bool)

(assert (= bs!526541 d!842811))

(assert (=> bs!526541 m!3338755))

(declare-fun m!3338899 () Bool)

(assert (=> bs!526541 m!3338899))

(assert (=> b!2972734 d!842811))

(declare-fun bs!526542 () Bool)

(declare-fun d!842813 () Bool)

(assert (= bs!526542 (and d!842813 b!2972944)))

(declare-fun lambda!110603 () Int)

(assert (=> bs!526542 (not (= lambda!110603 lambda!110599))))

(declare-fun bs!526543 () Bool)

(assert (= bs!526543 (and d!842813 b!2972943)))

(assert (=> bs!526543 (not (= lambda!110603 lambda!110600))))

(declare-fun bs!526544 () Bool)

(assert (= bs!526544 (and d!842813 b!2972734)))

(assert (=> bs!526544 (= lambda!110603 lambda!110589)))

(declare-fun bs!526545 () Bool)

(assert (= bs!526545 (and d!842813 b!2972933)))

(assert (=> bs!526545 (not (= lambda!110603 lambda!110597))))

(declare-fun bs!526546 () Bool)

(assert (= bs!526546 (and d!842813 b!2972932)))

(assert (=> bs!526546 (not (= lambda!110603 lambda!110598))))

(assert (=> d!842813 true))

(assert (=> d!842813 true))

(assert (=> d!842813 true))

(assert (=> d!842813 (= (isDefined!5226 (findConcatSeparation!1069 lt!1036450 lt!1036454 Nil!35015 s!11993 s!11993)) (Exists!1554 lambda!110603))))

(declare-fun lt!1036504 () Unit!48927)

(declare-fun choose!17574 (Regex!9274 Regex!9274 List!35139) Unit!48927)

(assert (=> d!842813 (= lt!1036504 (choose!17574 lt!1036450 lt!1036454 s!11993))))

(assert (=> d!842813 (validRegex!4007 lt!1036450)))

(assert (=> d!842813 (= (lemmaFindConcatSeparationEquivalentToExists!847 lt!1036450 lt!1036454 s!11993) lt!1036504)))

(declare-fun bs!526547 () Bool)

(assert (= bs!526547 d!842813))

(assert (=> bs!526547 m!3338877))

(declare-fun m!3338923 () Bool)

(assert (=> bs!526547 m!3338923))

(assert (=> bs!526547 m!3338755))

(assert (=> bs!526547 m!3338755))

(assert (=> bs!526547 m!3338757))

(declare-fun m!3338925 () Bool)

(assert (=> bs!526547 m!3338925))

(assert (=> b!2972734 d!842813))

(declare-fun d!842817 () Bool)

(assert (=> d!842817 (= (isEmptyLang!388 lt!1036450) (is-EmptyLang!9274 lt!1036450))))

(assert (=> b!2972735 d!842817))

(declare-fun call!198095 () Bool)

(declare-fun bm!198090 () Bool)

(declare-fun c!487973 () Bool)

(declare-fun lt!1036522 () Regex!9274)

(declare-fun lt!1036519 () Regex!9274)

(assert (=> bm!198090 (= call!198095 (isEmptyLang!388 (ite c!487973 lt!1036519 lt!1036522)))))

(declare-fun b!2973105 () Bool)

(declare-fun e!1870512 () Regex!9274)

(assert (=> b!2973105 (= e!1870512 lt!1036519)))

(declare-fun d!842821 () Bool)

(declare-fun e!1870507 () Bool)

(assert (=> d!842821 e!1870507))

(declare-fun res!1225950 () Bool)

(assert (=> d!842821 (=> (not res!1225950) (not e!1870507))))

(declare-fun lt!1036521 () Regex!9274)

(assert (=> d!842821 (= res!1225950 (validRegex!4007 lt!1036521))))

(declare-fun e!1870506 () Regex!9274)

(assert (=> d!842821 (= lt!1036521 e!1870506)))

(declare-fun c!487974 () Bool)

(assert (=> d!842821 (= c!487974 (is-EmptyLang!9274 (reg!9603 r!17423)))))

(assert (=> d!842821 (validRegex!4007 (reg!9603 r!17423))))

(assert (=> d!842821 (= (simplify!275 (reg!9603 r!17423)) lt!1036521)))

(declare-fun bm!198091 () Bool)

(declare-fun call!198096 () Regex!9274)

(declare-fun call!198100 () Regex!9274)

(assert (=> bm!198091 (= call!198096 call!198100)))

(declare-fun b!2973106 () Bool)

(declare-fun e!1870515 () Regex!9274)

(declare-fun e!1870514 () Regex!9274)

(assert (=> b!2973106 (= e!1870515 e!1870514)))

(declare-fun lt!1036517 () Regex!9274)

(assert (=> b!2973106 (= lt!1036517 call!198096)))

(declare-fun call!198097 () Regex!9274)

(assert (=> b!2973106 (= lt!1036522 call!198097)))

(declare-fun res!1225948 () Bool)

(declare-fun call!198099 () Bool)

(assert (=> b!2973106 (= res!1225948 call!198099)))

(declare-fun e!1870509 () Bool)

(assert (=> b!2973106 (=> res!1225948 e!1870509)))

(declare-fun c!487968 () Bool)

(assert (=> b!2973106 (= c!487968 e!1870509)))

(declare-fun b!2973107 () Bool)

(declare-fun e!1870508 () Regex!9274)

(assert (=> b!2973107 (= e!1870508 (reg!9603 r!17423))))

(declare-fun b!2973108 () Bool)

(declare-fun e!1870517 () Regex!9274)

(declare-fun e!1870519 () Regex!9274)

(assert (=> b!2973108 (= e!1870517 e!1870519)))

(declare-fun c!487967 () Bool)

(assert (=> b!2973108 (= c!487967 (is-Star!9274 (reg!9603 r!17423)))))

(declare-fun b!2973109 () Bool)

(assert (=> b!2973109 (= c!487973 (is-Union!9274 (reg!9603 r!17423)))))

(assert (=> b!2973109 (= e!1870519 e!1870515)))

(declare-fun b!2973110 () Bool)

(assert (=> b!2973110 (= e!1870506 e!1870508)))

(declare-fun c!487976 () Bool)

(assert (=> b!2973110 (= c!487976 (is-ElementMatch!9274 (reg!9603 r!17423)))))

(declare-fun b!2973111 () Bool)

(declare-fun e!1870513 () Regex!9274)

(declare-fun e!1870518 () Regex!9274)

(assert (=> b!2973111 (= e!1870513 e!1870518)))

(declare-fun c!487969 () Bool)

(declare-fun call!198101 () Bool)

(assert (=> b!2973111 (= c!487969 call!198101)))

(declare-fun b!2973112 () Bool)

(declare-fun c!487972 () Bool)

(assert (=> b!2973112 (= c!487972 call!198099)))

(declare-fun e!1870511 () Regex!9274)

(assert (=> b!2973112 (= e!1870511 e!1870512)))

(declare-fun b!2973113 () Bool)

(assert (=> b!2973113 (= e!1870507 (= (nullable!2969 lt!1036521) (nullable!2969 (reg!9603 r!17423))))))

(declare-fun b!2973114 () Bool)

(assert (=> b!2973114 (= e!1870509 call!198095)))

(declare-fun b!2973115 () Bool)

(assert (=> b!2973115 (= e!1870514 EmptyLang!9274)))

(declare-fun b!2973116 () Bool)

(declare-fun e!1870510 () Bool)

(assert (=> b!2973116 (= e!1870510 call!198101)))

(declare-fun lt!1036520 () Regex!9274)

(declare-fun call!198098 () Bool)

(declare-fun bm!198092 () Bool)

(declare-fun lt!1036518 () Regex!9274)

(assert (=> bm!198092 (= call!198098 (isEmptyLang!388 (ite c!487967 lt!1036520 (ite c!487973 lt!1036518 lt!1036517))))))

(declare-fun bm!198093 () Bool)

(assert (=> bm!198093 (= call!198099 call!198098)))

(declare-fun b!2973117 () Bool)

(assert (=> b!2973117 (= e!1870515 e!1870511)))

(assert (=> b!2973117 (= lt!1036519 call!198097)))

(assert (=> b!2973117 (= lt!1036518 call!198096)))

(declare-fun c!487977 () Bool)

(assert (=> b!2973117 (= c!487977 call!198095)))

(declare-fun b!2973118 () Bool)

(declare-fun c!487971 () Bool)

(declare-fun isEmptyExpr!425 (Regex!9274) Bool)

(assert (=> b!2973118 (= c!487971 (isEmptyExpr!425 lt!1036517))))

(assert (=> b!2973118 (= e!1870514 e!1870513)))

(declare-fun b!2973119 () Bool)

(declare-fun e!1870516 () Regex!9274)

(assert (=> b!2973119 (= e!1870516 EmptyExpr!9274)))

(declare-fun bm!198094 () Bool)

(assert (=> bm!198094 (= call!198101 (isEmptyExpr!425 (ite c!487967 lt!1036520 lt!1036522)))))

(declare-fun b!2973120 () Bool)

(assert (=> b!2973120 (= e!1870518 lt!1036517)))

(declare-fun b!2973121 () Bool)

(assert (=> b!2973121 (= e!1870518 (Concat!14595 lt!1036517 lt!1036522))))

(declare-fun b!2973122 () Bool)

(assert (=> b!2973122 (= e!1870516 (Star!9274 lt!1036520))))

(declare-fun bm!198095 () Bool)

(assert (=> bm!198095 (= call!198100 (simplify!275 (ite c!487967 (reg!9603 (reg!9603 r!17423)) (ite c!487973 (regTwo!19061 (reg!9603 r!17423)) (regOne!19060 (reg!9603 r!17423))))))))

(declare-fun b!2973123 () Bool)

(declare-fun c!487970 () Bool)

(assert (=> b!2973123 (= c!487970 e!1870510)))

(declare-fun res!1225949 () Bool)

(assert (=> b!2973123 (=> res!1225949 e!1870510)))

(assert (=> b!2973123 (= res!1225949 call!198098)))

(assert (=> b!2973123 (= lt!1036520 call!198100)))

(assert (=> b!2973123 (= e!1870519 e!1870516)))

(declare-fun b!2973124 () Bool)

(assert (=> b!2973124 (= e!1870517 EmptyExpr!9274)))

(declare-fun b!2973125 () Bool)

(assert (=> b!2973125 (= e!1870512 (Union!9274 lt!1036519 lt!1036518))))

(declare-fun b!2973126 () Bool)

(assert (=> b!2973126 (= e!1870511 lt!1036518)))

(declare-fun bm!198096 () Bool)

(assert (=> bm!198096 (= call!198097 (simplify!275 (ite c!487973 (regOne!19061 (reg!9603 r!17423)) (regTwo!19060 (reg!9603 r!17423)))))))

(declare-fun b!2973127 () Bool)

(assert (=> b!2973127 (= e!1870513 lt!1036522)))

(declare-fun b!2973128 () Bool)

(assert (=> b!2973128 (= e!1870506 EmptyLang!9274)))

(declare-fun b!2973129 () Bool)

(declare-fun c!487975 () Bool)

(assert (=> b!2973129 (= c!487975 (is-EmptyExpr!9274 (reg!9603 r!17423)))))

(assert (=> b!2973129 (= e!1870508 e!1870517)))

(assert (= (and d!842821 c!487974) b!2973128))

(assert (= (and d!842821 (not c!487974)) b!2973110))

(assert (= (and b!2973110 c!487976) b!2973107))

(assert (= (and b!2973110 (not c!487976)) b!2973129))

(assert (= (and b!2973129 c!487975) b!2973124))

(assert (= (and b!2973129 (not c!487975)) b!2973108))

(assert (= (and b!2973108 c!487967) b!2973123))

(assert (= (and b!2973108 (not c!487967)) b!2973109))

(assert (= (and b!2973123 (not res!1225949)) b!2973116))

(assert (= (and b!2973123 c!487970) b!2973119))

(assert (= (and b!2973123 (not c!487970)) b!2973122))

(assert (= (and b!2973109 c!487973) b!2973117))

(assert (= (and b!2973109 (not c!487973)) b!2973106))

(assert (= (and b!2973117 c!487977) b!2973126))

(assert (= (and b!2973117 (not c!487977)) b!2973112))

(assert (= (and b!2973112 c!487972) b!2973105))

(assert (= (and b!2973112 (not c!487972)) b!2973125))

(assert (= (and b!2973106 (not res!1225948)) b!2973114))

(assert (= (and b!2973106 c!487968) b!2973115))

(assert (= (and b!2973106 (not c!487968)) b!2973118))

(assert (= (and b!2973118 c!487971) b!2973127))

(assert (= (and b!2973118 (not c!487971)) b!2973111))

(assert (= (and b!2973111 c!487969) b!2973120))

(assert (= (and b!2973111 (not c!487969)) b!2973121))

(assert (= (or b!2973117 b!2973106) bm!198096))

(assert (= (or b!2973117 b!2973106) bm!198091))

(assert (= (or b!2973112 b!2973106) bm!198093))

(assert (= (or b!2973117 b!2973114) bm!198090))

(assert (= (or b!2973116 b!2973111) bm!198094))

(assert (= (or b!2973123 bm!198091) bm!198095))

(assert (= (or b!2973123 bm!198093) bm!198092))

(assert (= (and d!842821 res!1225950) b!2973113))

(declare-fun m!3338937 () Bool)

(assert (=> b!2973113 m!3338937))

(assert (=> b!2973113 m!3338813))

(declare-fun m!3338939 () Bool)

(assert (=> bm!198092 m!3338939))

(declare-fun m!3338941 () Bool)

(assert (=> b!2973118 m!3338941))

(declare-fun m!3338943 () Bool)

(assert (=> d!842821 m!3338943))

(assert (=> d!842821 m!3338753))

(declare-fun m!3338945 () Bool)

(assert (=> bm!198096 m!3338945))

(declare-fun m!3338947 () Bool)

(assert (=> bm!198090 m!3338947))

(declare-fun m!3338949 () Bool)

(assert (=> bm!198095 m!3338949))

(declare-fun m!3338951 () Bool)

(assert (=> bm!198094 m!3338951))

(assert (=> b!2972735 d!842821))

(declare-fun e!1870522 () Bool)

(assert (=> b!2972736 (= tp!947724 e!1870522)))

(declare-fun b!2973141 () Bool)

(declare-fun tp!947759 () Bool)

(declare-fun tp!947757 () Bool)

(assert (=> b!2973141 (= e!1870522 (and tp!947759 tp!947757))))

(declare-fun b!2973143 () Bool)

(declare-fun tp!947756 () Bool)

(declare-fun tp!947758 () Bool)

(assert (=> b!2973143 (= e!1870522 (and tp!947756 tp!947758))))

(declare-fun b!2973140 () Bool)

(assert (=> b!2973140 (= e!1870522 tp_is_empty!16111)))

(declare-fun b!2973142 () Bool)

(declare-fun tp!947760 () Bool)

(assert (=> b!2973142 (= e!1870522 tp!947760)))

(assert (= (and b!2972736 (is-ElementMatch!9274 (reg!9603 r!17423))) b!2973140))

(assert (= (and b!2972736 (is-Concat!14595 (reg!9603 r!17423))) b!2973141))

(assert (= (and b!2972736 (is-Star!9274 (reg!9603 r!17423))) b!2973142))

(assert (= (and b!2972736 (is-Union!9274 (reg!9603 r!17423))) b!2973143))

(declare-fun e!1870523 () Bool)

(assert (=> b!2972738 (= tp!947727 e!1870523)))

(declare-fun b!2973145 () Bool)

(declare-fun tp!947764 () Bool)

(declare-fun tp!947762 () Bool)

(assert (=> b!2973145 (= e!1870523 (and tp!947764 tp!947762))))

(declare-fun b!2973147 () Bool)

(declare-fun tp!947761 () Bool)

(declare-fun tp!947763 () Bool)

(assert (=> b!2973147 (= e!1870523 (and tp!947761 tp!947763))))

(declare-fun b!2973144 () Bool)

(assert (=> b!2973144 (= e!1870523 tp_is_empty!16111)))

(declare-fun b!2973146 () Bool)

(declare-fun tp!947765 () Bool)

(assert (=> b!2973146 (= e!1870523 tp!947765)))

(assert (= (and b!2972738 (is-ElementMatch!9274 (regOne!19060 r!17423))) b!2973144))

(assert (= (and b!2972738 (is-Concat!14595 (regOne!19060 r!17423))) b!2973145))

(assert (= (and b!2972738 (is-Star!9274 (regOne!19060 r!17423))) b!2973146))

(assert (= (and b!2972738 (is-Union!9274 (regOne!19060 r!17423))) b!2973147))

(declare-fun e!1870524 () Bool)

(assert (=> b!2972738 (= tp!947722 e!1870524)))

(declare-fun b!2973149 () Bool)

(declare-fun tp!947769 () Bool)

(declare-fun tp!947767 () Bool)

(assert (=> b!2973149 (= e!1870524 (and tp!947769 tp!947767))))

(declare-fun b!2973151 () Bool)

(declare-fun tp!947766 () Bool)

(declare-fun tp!947768 () Bool)

(assert (=> b!2973151 (= e!1870524 (and tp!947766 tp!947768))))

(declare-fun b!2973148 () Bool)

(assert (=> b!2973148 (= e!1870524 tp_is_empty!16111)))

(declare-fun b!2973150 () Bool)

(declare-fun tp!947770 () Bool)

(assert (=> b!2973150 (= e!1870524 tp!947770)))

(assert (= (and b!2972738 (is-ElementMatch!9274 (regTwo!19060 r!17423))) b!2973148))

(assert (= (and b!2972738 (is-Concat!14595 (regTwo!19060 r!17423))) b!2973149))

(assert (= (and b!2972738 (is-Star!9274 (regTwo!19060 r!17423))) b!2973150))

(assert (= (and b!2972738 (is-Union!9274 (regTwo!19060 r!17423))) b!2973151))

(declare-fun e!1870525 () Bool)

(assert (=> b!2972733 (= tp!947723 e!1870525)))

(declare-fun b!2973153 () Bool)

(declare-fun tp!947774 () Bool)

(declare-fun tp!947772 () Bool)

(assert (=> b!2973153 (= e!1870525 (and tp!947774 tp!947772))))

(declare-fun b!2973155 () Bool)

(declare-fun tp!947771 () Bool)

(declare-fun tp!947773 () Bool)

(assert (=> b!2973155 (= e!1870525 (and tp!947771 tp!947773))))

(declare-fun b!2973152 () Bool)

(assert (=> b!2973152 (= e!1870525 tp_is_empty!16111)))

(declare-fun b!2973154 () Bool)

(declare-fun tp!947775 () Bool)

(assert (=> b!2973154 (= e!1870525 tp!947775)))

(assert (= (and b!2972733 (is-ElementMatch!9274 (regOne!19061 r!17423))) b!2973152))

(assert (= (and b!2972733 (is-Concat!14595 (regOne!19061 r!17423))) b!2973153))

(assert (= (and b!2972733 (is-Star!9274 (regOne!19061 r!17423))) b!2973154))

(assert (= (and b!2972733 (is-Union!9274 (regOne!19061 r!17423))) b!2973155))

(declare-fun e!1870526 () Bool)

(assert (=> b!2972733 (= tp!947726 e!1870526)))

(declare-fun b!2973157 () Bool)

(declare-fun tp!947779 () Bool)

(declare-fun tp!947777 () Bool)

(assert (=> b!2973157 (= e!1870526 (and tp!947779 tp!947777))))

(declare-fun b!2973159 () Bool)

(declare-fun tp!947776 () Bool)

(declare-fun tp!947778 () Bool)

(assert (=> b!2973159 (= e!1870526 (and tp!947776 tp!947778))))

(declare-fun b!2973156 () Bool)

(assert (=> b!2973156 (= e!1870526 tp_is_empty!16111)))

(declare-fun b!2973158 () Bool)

(declare-fun tp!947780 () Bool)

(assert (=> b!2973158 (= e!1870526 tp!947780)))

(assert (= (and b!2972733 (is-ElementMatch!9274 (regTwo!19061 r!17423))) b!2973156))

(assert (= (and b!2972733 (is-Concat!14595 (regTwo!19061 r!17423))) b!2973157))

(assert (= (and b!2972733 (is-Star!9274 (regTwo!19061 r!17423))) b!2973158))

(assert (= (and b!2972733 (is-Union!9274 (regTwo!19061 r!17423))) b!2973159))

(declare-fun b!2973164 () Bool)

(declare-fun e!1870529 () Bool)

(declare-fun tp!947783 () Bool)

(assert (=> b!2973164 (= e!1870529 (and tp_is_empty!16111 tp!947783))))

(assert (=> b!2972730 (= tp!947725 e!1870529)))

(assert (= (and b!2972730 (is-Cons!35015 (t!234204 s!11993))) b!2973164))

(push 1)

(assert (not bm!198060))

(assert (not b!2972957))

(assert tp_is_empty!16111)

(assert (not b!2972930))

(assert (not d!842813))

(assert (not b!2973150))

(assert (not bm!198095))

(assert (not bm!198096))

(assert (not b!2973007))

(assert (not b!2972950))

(assert (not b!2972801))

(assert (not d!842797))

(assert (not b!2972958))

(assert (not b!2973151))

(assert (not bm!198059))

(assert (not b!2972955))

(assert (not b!2973000))

(assert (not b!2973001))

(assert (not bm!198092))

(assert (not bm!198047))

(assert (not b!2972867))

(assert (not d!842801))

(assert (not b!2972866))

(assert (not b!2972862))

(assert (not bm!198094))

(assert (not b!2973158))

(assert (not b!2972939))

(assert (not bm!198063))

(assert (not b!2972859))

(assert (not b!2973154))

(assert (not b!2972947))

(assert (not bm!198066))

(assert (not b!2973164))

(assert (not d!842789))

(assert (not b!2973002))

(assert (not b!2973159))

(assert (not d!842821))

(assert (not b!2973142))

(assert (not d!842809))

(assert (not b!2973153))

(assert (not b!2973149))

(assert (not b!2972941))

(assert (not d!842811))

(assert (not bm!198065))

(assert (not bm!198051))

(assert (not bm!198062))

(assert (not b!2972869))

(assert (not b!2972928))

(assert (not b!2973113))

(assert (not b!2972870))

(assert (not b!2973141))

(assert (not bm!198048))

(assert (not b!2973005))

(assert (not b!2973145))

(assert (not b!2973155))

(assert (not b!2972954))

(assert (not b!2973146))

(assert (not bm!198061))

(assert (not b!2973157))

(assert (not bm!198090))

(assert (not b!2973147))

(assert (not b!2973003))

(assert (not b!2973143))

(assert (not d!842805))

(assert (not d!842803))

(assert (not b!2973118))

(assert (not b!2972998))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

