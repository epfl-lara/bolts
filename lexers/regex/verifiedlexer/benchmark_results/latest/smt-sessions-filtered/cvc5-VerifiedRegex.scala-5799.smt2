; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!286110 () Bool)

(assert start!286110)

(declare-fun b!2949668 () Bool)

(assert (=> b!2949668 true))

(assert (=> b!2949668 true))

(assert (=> b!2949668 true))

(declare-fun b!2949656 () Bool)

(declare-fun e!1857879 () Bool)

(declare-fun e!1857878 () Bool)

(assert (=> b!2949656 (= e!1857879 (not e!1857878))))

(declare-fun res!1217084 () Bool)

(assert (=> b!2949656 (=> res!1217084 e!1857878)))

(declare-fun lt!1031786 () Bool)

(declare-datatypes ((C!18482 0))(
  ( (C!18483 (val!11277 Int)) )
))
(declare-datatypes ((Regex!9148 0))(
  ( (ElementMatch!9148 (c!482780 C!18482)) (Concat!14469 (regOne!18808 Regex!9148) (regTwo!18808 Regex!9148)) (EmptyExpr!9148) (Star!9148 (reg!9477 Regex!9148)) (EmptyLang!9148) (Union!9148 (regOne!18809 Regex!9148) (regTwo!18809 Regex!9148)) )
))
(declare-fun r!17423 () Regex!9148)

(assert (=> b!2949656 (= res!1217084 (or lt!1031786 (not (is-Concat!14469 r!17423))))))

(declare-datatypes ((List!35013 0))(
  ( (Nil!34889) (Cons!34889 (h!40309 C!18482) (t!234078 List!35013)) )
))
(declare-fun s!11993 () List!35013)

(declare-fun matchRSpec!1285 (Regex!9148 List!35013) Bool)

(assert (=> b!2949656 (= lt!1031786 (matchRSpec!1285 r!17423 s!11993))))

(declare-fun matchR!4030 (Regex!9148 List!35013) Bool)

(assert (=> b!2949656 (= lt!1031786 (matchR!4030 r!17423 s!11993))))

(declare-datatypes ((Unit!48675 0))(
  ( (Unit!48676) )
))
(declare-fun lt!1031787 () Unit!48675)

(declare-fun mainMatchTheorem!1285 (Regex!9148 List!35013) Unit!48675)

(assert (=> b!2949656 (= lt!1031787 (mainMatchTheorem!1285 r!17423 s!11993))))

(declare-fun b!2949657 () Bool)

(declare-fun res!1217085 () Bool)

(declare-fun e!1857883 () Bool)

(assert (=> b!2949657 (=> res!1217085 e!1857883)))

(declare-fun lt!1031789 () Regex!9148)

(declare-fun isEmptyExpr!351 (Regex!9148) Bool)

(assert (=> b!2949657 (= res!1217085 (isEmptyExpr!351 lt!1031789))))

(declare-fun b!2949658 () Bool)

(declare-fun res!1217086 () Bool)

(assert (=> b!2949658 (=> res!1217086 e!1857883)))

(declare-fun lt!1031792 () Regex!9148)

(declare-fun isEmptyLang!270 (Regex!9148) Bool)

(assert (=> b!2949658 (= res!1217086 (isEmptyLang!270 lt!1031792))))

(declare-fun b!2949659 () Bool)

(assert (=> b!2949659 (= e!1857878 e!1857883)))

(declare-fun res!1217080 () Bool)

(assert (=> b!2949659 (=> res!1217080 e!1857883)))

(assert (=> b!2949659 (= res!1217080 (isEmptyLang!270 lt!1031789))))

(declare-fun simplify!153 (Regex!9148) Regex!9148)

(assert (=> b!2949659 (= lt!1031792 (simplify!153 (regTwo!18808 r!17423)))))

(assert (=> b!2949659 (= lt!1031789 (simplify!153 (regOne!18808 r!17423)))))

(declare-fun b!2949660 () Bool)

(declare-fun e!1857880 () Bool)

(assert (=> b!2949660 (= e!1857883 e!1857880)))

(declare-fun res!1217083 () Bool)

(assert (=> b!2949660 (=> res!1217083 e!1857880)))

(declare-fun lt!1031791 () Regex!9148)

(assert (=> b!2949660 (= res!1217083 (not (matchR!4030 lt!1031791 s!11993)))))

(assert (=> b!2949660 (= lt!1031791 (Concat!14469 lt!1031789 lt!1031792))))

(declare-fun b!2949661 () Bool)

(declare-fun res!1217079 () Bool)

(assert (=> b!2949661 (=> res!1217079 e!1857878)))

(declare-fun isEmpty!19150 (List!35013) Bool)

(assert (=> b!2949661 (= res!1217079 (isEmpty!19150 s!11993))))

(declare-fun b!2949662 () Bool)

(declare-fun e!1857881 () Bool)

(declare-fun tp_is_empty!15859 () Bool)

(assert (=> b!2949662 (= e!1857881 tp_is_empty!15859)))

(declare-fun b!2949663 () Bool)

(declare-fun tp!943027 () Bool)

(declare-fun tp!943024 () Bool)

(assert (=> b!2949663 (= e!1857881 (and tp!943027 tp!943024))))

(declare-fun b!2949664 () Bool)

(declare-fun tp!943023 () Bool)

(declare-fun tp!943026 () Bool)

(assert (=> b!2949664 (= e!1857881 (and tp!943023 tp!943026))))

(declare-fun b!2949665 () Bool)

(declare-fun e!1857882 () Bool)

(declare-fun tp!943022 () Bool)

(assert (=> b!2949665 (= e!1857882 (and tp_is_empty!15859 tp!943022))))

(declare-fun b!2949666 () Bool)

(declare-fun res!1217081 () Bool)

(assert (=> b!2949666 (=> res!1217081 e!1857883)))

(assert (=> b!2949666 (= res!1217081 (isEmptyExpr!351 lt!1031792))))

(declare-fun b!2949667 () Bool)

(declare-fun tp!943025 () Bool)

(assert (=> b!2949667 (= e!1857881 tp!943025)))

(declare-fun validRegex!3881 (Regex!9148) Bool)

(assert (=> b!2949668 (= e!1857880 (validRegex!3881 (regOne!18808 r!17423)))))

(declare-fun lambda!109699 () Int)

(declare-datatypes ((tuple2!33814 0))(
  ( (tuple2!33815 (_1!20039 List!35013) (_2!20039 List!35013)) )
))
(declare-datatypes ((Option!6639 0))(
  ( (None!6638) (Some!6638 (v!34772 tuple2!33814)) )
))
(declare-fun isDefined!5190 (Option!6639) Bool)

(declare-fun findConcatSeparation!1033 (Regex!9148 Regex!9148 List!35013 List!35013 List!35013) Option!6639)

(declare-fun Exists!1480 (Int) Bool)

(assert (=> b!2949668 (= (isDefined!5190 (findConcatSeparation!1033 lt!1031789 lt!1031792 Nil!34889 s!11993 s!11993)) (Exists!1480 lambda!109699))))

(declare-fun lt!1031790 () Unit!48675)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!811 (Regex!9148 Regex!9148 List!35013) Unit!48675)

(assert (=> b!2949668 (= lt!1031790 (lemmaFindConcatSeparationEquivalentToExists!811 lt!1031789 lt!1031792 s!11993))))

(assert (=> b!2949668 (matchRSpec!1285 lt!1031791 s!11993)))

(declare-fun lt!1031788 () Unit!48675)

(assert (=> b!2949668 (= lt!1031788 (mainMatchTheorem!1285 lt!1031791 s!11993))))

(declare-fun res!1217082 () Bool)

(assert (=> start!286110 (=> (not res!1217082) (not e!1857879))))

(assert (=> start!286110 (= res!1217082 (validRegex!3881 r!17423))))

(assert (=> start!286110 e!1857879))

(assert (=> start!286110 e!1857881))

(assert (=> start!286110 e!1857882))

(assert (= (and start!286110 res!1217082) b!2949656))

(assert (= (and b!2949656 (not res!1217084)) b!2949661))

(assert (= (and b!2949661 (not res!1217079)) b!2949659))

(assert (= (and b!2949659 (not res!1217080)) b!2949658))

(assert (= (and b!2949658 (not res!1217086)) b!2949657))

(assert (= (and b!2949657 (not res!1217085)) b!2949666))

(assert (= (and b!2949666 (not res!1217081)) b!2949660))

(assert (= (and b!2949660 (not res!1217083)) b!2949668))

(assert (= (and start!286110 (is-ElementMatch!9148 r!17423)) b!2949662))

(assert (= (and start!286110 (is-Concat!14469 r!17423)) b!2949664))

(assert (= (and start!286110 (is-Star!9148 r!17423)) b!2949667))

(assert (= (and start!286110 (is-Union!9148 r!17423)) b!2949663))

(assert (= (and start!286110 (is-Cons!34889 s!11993)) b!2949665))

(declare-fun m!3329089 () Bool)

(assert (=> b!2949661 m!3329089))

(declare-fun m!3329091 () Bool)

(assert (=> b!2949656 m!3329091))

(declare-fun m!3329093 () Bool)

(assert (=> b!2949656 m!3329093))

(declare-fun m!3329095 () Bool)

(assert (=> b!2949656 m!3329095))

(declare-fun m!3329097 () Bool)

(assert (=> b!2949660 m!3329097))

(declare-fun m!3329099 () Bool)

(assert (=> b!2949658 m!3329099))

(declare-fun m!3329101 () Bool)

(assert (=> b!2949668 m!3329101))

(declare-fun m!3329103 () Bool)

(assert (=> b!2949668 m!3329103))

(declare-fun m!3329105 () Bool)

(assert (=> b!2949668 m!3329105))

(declare-fun m!3329107 () Bool)

(assert (=> b!2949668 m!3329107))

(declare-fun m!3329109 () Bool)

(assert (=> b!2949668 m!3329109))

(assert (=> b!2949668 m!3329103))

(declare-fun m!3329111 () Bool)

(assert (=> b!2949668 m!3329111))

(declare-fun m!3329113 () Bool)

(assert (=> b!2949668 m!3329113))

(declare-fun m!3329115 () Bool)

(assert (=> start!286110 m!3329115))

(declare-fun m!3329117 () Bool)

(assert (=> b!2949657 m!3329117))

(declare-fun m!3329119 () Bool)

(assert (=> b!2949659 m!3329119))

(declare-fun m!3329121 () Bool)

(assert (=> b!2949659 m!3329121))

(declare-fun m!3329123 () Bool)

(assert (=> b!2949659 m!3329123))

(declare-fun m!3329125 () Bool)

(assert (=> b!2949666 m!3329125))

(push 1)

(assert (not b!2949659))

(assert (not b!2949658))

(assert (not b!2949667))

(assert (not b!2949661))

(assert (not b!2949664))

(assert (not b!2949663))

(assert (not b!2949660))

(assert (not b!2949665))

(assert (not b!2949656))

(assert (not b!2949666))

(assert tp_is_empty!15859)

(assert (not b!2949657))

(assert (not start!286110))

(assert (not b!2949668))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!525643 () Bool)

(declare-fun b!2949754 () Bool)

(assert (= bs!525643 (and b!2949754 b!2949668)))

(declare-fun lambda!109707 () Int)

(assert (=> bs!525643 (not (= lambda!109707 lambda!109699))))

(assert (=> b!2949754 true))

(assert (=> b!2949754 true))

(declare-fun bs!525644 () Bool)

(declare-fun b!2949760 () Bool)

(assert (= bs!525644 (and b!2949760 b!2949668)))

(declare-fun lambda!109708 () Int)

(assert (=> bs!525644 (not (= lambda!109708 lambda!109699))))

(declare-fun bs!525645 () Bool)

(assert (= bs!525645 (and b!2949760 b!2949754)))

(assert (=> bs!525645 (not (= lambda!109708 lambda!109707))))

(assert (=> b!2949760 true))

(assert (=> b!2949760 true))

(declare-fun b!2949752 () Bool)

(declare-fun e!1857927 () Bool)

(assert (=> b!2949752 (= e!1857927 (= s!11993 (Cons!34889 (c!482780 r!17423) Nil!34889)))))

(declare-fun bm!194876 () Bool)

(declare-fun c!482791 () Bool)

(declare-fun call!194881 () Bool)

(assert (=> bm!194876 (= call!194881 (Exists!1480 (ite c!482791 lambda!109707 lambda!109708)))))

(declare-fun b!2949753 () Bool)

(declare-fun e!1857924 () Bool)

(declare-fun e!1857925 () Bool)

(assert (=> b!2949753 (= e!1857924 e!1857925)))

(declare-fun res!1217131 () Bool)

(assert (=> b!2949753 (= res!1217131 (matchRSpec!1285 (regOne!18809 r!17423) s!11993))))

(assert (=> b!2949753 (=> res!1217131 e!1857925)))

(declare-fun e!1857928 () Bool)

(assert (=> b!2949754 (= e!1857928 call!194881)))

(declare-fun b!2949755 () Bool)

(declare-fun e!1857923 () Bool)

(declare-fun call!194882 () Bool)

(assert (=> b!2949755 (= e!1857923 call!194882)))

(declare-fun b!2949756 () Bool)

(assert (=> b!2949756 (= e!1857925 (matchRSpec!1285 (regTwo!18809 r!17423) s!11993))))

(declare-fun b!2949757 () Bool)

(declare-fun e!1857926 () Bool)

(assert (=> b!2949757 (= e!1857924 e!1857926)))

(assert (=> b!2949757 (= c!482791 (is-Star!9148 r!17423))))

(declare-fun b!2949758 () Bool)

(declare-fun e!1857922 () Bool)

(assert (=> b!2949758 (= e!1857923 e!1857922)))

(declare-fun res!1217133 () Bool)

(assert (=> b!2949758 (= res!1217133 (not (is-EmptyLang!9148 r!17423)))))

(assert (=> b!2949758 (=> (not res!1217133) (not e!1857922))))

(declare-fun b!2949759 () Bool)

(declare-fun c!482793 () Bool)

(assert (=> b!2949759 (= c!482793 (is-ElementMatch!9148 r!17423))))

(assert (=> b!2949759 (= e!1857922 e!1857927)))

(declare-fun d!840884 () Bool)

(declare-fun c!482792 () Bool)

(assert (=> d!840884 (= c!482792 (is-EmptyExpr!9148 r!17423))))

(assert (=> d!840884 (= (matchRSpec!1285 r!17423 s!11993) e!1857923)))

(assert (=> b!2949760 (= e!1857926 call!194881)))

(declare-fun b!2949761 () Bool)

(declare-fun c!482790 () Bool)

(assert (=> b!2949761 (= c!482790 (is-Union!9148 r!17423))))

(assert (=> b!2949761 (= e!1857927 e!1857924)))

(declare-fun bm!194877 () Bool)

(assert (=> bm!194877 (= call!194882 (isEmpty!19150 s!11993))))

(declare-fun b!2949762 () Bool)

(declare-fun res!1217132 () Bool)

(assert (=> b!2949762 (=> res!1217132 e!1857928)))

(assert (=> b!2949762 (= res!1217132 call!194882)))

(assert (=> b!2949762 (= e!1857926 e!1857928)))

(assert (= (and d!840884 c!482792) b!2949755))

(assert (= (and d!840884 (not c!482792)) b!2949758))

(assert (= (and b!2949758 res!1217133) b!2949759))

(assert (= (and b!2949759 c!482793) b!2949752))

(assert (= (and b!2949759 (not c!482793)) b!2949761))

(assert (= (and b!2949761 c!482790) b!2949753))

(assert (= (and b!2949761 (not c!482790)) b!2949757))

(assert (= (and b!2949753 (not res!1217131)) b!2949756))

(assert (= (and b!2949757 c!482791) b!2949762))

(assert (= (and b!2949757 (not c!482791)) b!2949760))

(assert (= (and b!2949762 (not res!1217132)) b!2949754))

(assert (= (or b!2949754 b!2949760) bm!194876))

(assert (= (or b!2949755 b!2949762) bm!194877))

(declare-fun m!3329165 () Bool)

(assert (=> bm!194876 m!3329165))

(declare-fun m!3329167 () Bool)

(assert (=> b!2949753 m!3329167))

(declare-fun m!3329169 () Bool)

(assert (=> b!2949756 m!3329169))

(assert (=> bm!194877 m!3329089))

(assert (=> b!2949656 d!840884))

(declare-fun b!2949809 () Bool)

(declare-fun e!1857958 () Bool)

(declare-fun lt!1031816 () Bool)

(declare-fun call!194891 () Bool)

(assert (=> b!2949809 (= e!1857958 (= lt!1031816 call!194891))))

(declare-fun b!2949810 () Bool)

(declare-fun res!1217167 () Bool)

(declare-fun e!1857957 () Bool)

(assert (=> b!2949810 (=> res!1217167 e!1857957)))

(declare-fun e!1857961 () Bool)

(assert (=> b!2949810 (= res!1217167 e!1857961)))

(declare-fun res!1217166 () Bool)

(assert (=> b!2949810 (=> (not res!1217166) (not e!1857961))))

(assert (=> b!2949810 (= res!1217166 lt!1031816)))

(declare-fun b!2949811 () Bool)

(declare-fun res!1217162 () Bool)

(assert (=> b!2949811 (=> (not res!1217162) (not e!1857961))))

(assert (=> b!2949811 (= res!1217162 (not call!194891))))

(declare-fun b!2949813 () Bool)

(declare-fun e!1857962 () Bool)

(declare-fun derivativeStep!2509 (Regex!9148 C!18482) Regex!9148)

(declare-fun head!6568 (List!35013) C!18482)

(declare-fun tail!4794 (List!35013) List!35013)

(assert (=> b!2949813 (= e!1857962 (matchR!4030 (derivativeStep!2509 r!17423 (head!6568 s!11993)) (tail!4794 s!11993)))))

(declare-fun b!2949814 () Bool)

(declare-fun e!1857963 () Bool)

(declare-fun e!1857959 () Bool)

(assert (=> b!2949814 (= e!1857963 e!1857959)))

(declare-fun res!1217161 () Bool)

(assert (=> b!2949814 (=> res!1217161 e!1857959)))

(assert (=> b!2949814 (= res!1217161 call!194891)))

(declare-fun b!2949815 () Bool)

(assert (=> b!2949815 (= e!1857957 e!1857963)))

(declare-fun res!1217160 () Bool)

(assert (=> b!2949815 (=> (not res!1217160) (not e!1857963))))

(assert (=> b!2949815 (= res!1217160 (not lt!1031816))))

(declare-fun b!2949816 () Bool)

(declare-fun e!1857960 () Bool)

(assert (=> b!2949816 (= e!1857958 e!1857960)))

(declare-fun c!482805 () Bool)

(assert (=> b!2949816 (= c!482805 (is-EmptyLang!9148 r!17423))))

(declare-fun b!2949817 () Bool)

(declare-fun res!1217164 () Bool)

(assert (=> b!2949817 (=> res!1217164 e!1857959)))

(assert (=> b!2949817 (= res!1217164 (not (isEmpty!19150 (tail!4794 s!11993))))))

(declare-fun b!2949818 () Bool)

(assert (=> b!2949818 (= e!1857961 (= (head!6568 s!11993) (c!482780 r!17423)))))

(declare-fun b!2949819 () Bool)

(declare-fun nullable!2906 (Regex!9148) Bool)

(assert (=> b!2949819 (= e!1857962 (nullable!2906 r!17423))))

(declare-fun b!2949812 () Bool)

(declare-fun res!1217163 () Bool)

(assert (=> b!2949812 (=> (not res!1217163) (not e!1857961))))

(assert (=> b!2949812 (= res!1217163 (isEmpty!19150 (tail!4794 s!11993)))))

(declare-fun d!840888 () Bool)

(assert (=> d!840888 e!1857958))

(declare-fun c!482804 () Bool)

(assert (=> d!840888 (= c!482804 (is-EmptyExpr!9148 r!17423))))

(assert (=> d!840888 (= lt!1031816 e!1857962)))

(declare-fun c!482806 () Bool)

(assert (=> d!840888 (= c!482806 (isEmpty!19150 s!11993))))

(assert (=> d!840888 (validRegex!3881 r!17423)))

(assert (=> d!840888 (= (matchR!4030 r!17423 s!11993) lt!1031816)))

(declare-fun b!2949820 () Bool)

(assert (=> b!2949820 (= e!1857960 (not lt!1031816))))

(declare-fun b!2949821 () Bool)

(declare-fun res!1217165 () Bool)

(assert (=> b!2949821 (=> res!1217165 e!1857957)))

(assert (=> b!2949821 (= res!1217165 (not (is-ElementMatch!9148 r!17423)))))

(assert (=> b!2949821 (= e!1857960 e!1857957)))

(declare-fun b!2949822 () Bool)

(assert (=> b!2949822 (= e!1857959 (not (= (head!6568 s!11993) (c!482780 r!17423))))))

(declare-fun bm!194886 () Bool)

(assert (=> bm!194886 (= call!194891 (isEmpty!19150 s!11993))))

(assert (= (and d!840888 c!482806) b!2949819))

(assert (= (and d!840888 (not c!482806)) b!2949813))

(assert (= (and d!840888 c!482804) b!2949809))

(assert (= (and d!840888 (not c!482804)) b!2949816))

(assert (= (and b!2949816 c!482805) b!2949820))

(assert (= (and b!2949816 (not c!482805)) b!2949821))

(assert (= (and b!2949821 (not res!1217165)) b!2949810))

(assert (= (and b!2949810 res!1217166) b!2949811))

(assert (= (and b!2949811 res!1217162) b!2949812))

(assert (= (and b!2949812 res!1217163) b!2949818))

(assert (= (and b!2949810 (not res!1217167)) b!2949815))

(assert (= (and b!2949815 res!1217160) b!2949814))

(assert (= (and b!2949814 (not res!1217161)) b!2949817))

(assert (= (and b!2949817 (not res!1217164)) b!2949822))

(assert (= (or b!2949809 b!2949811 b!2949814) bm!194886))

(declare-fun m!3329171 () Bool)

(assert (=> b!2949812 m!3329171))

(assert (=> b!2949812 m!3329171))

(declare-fun m!3329173 () Bool)

(assert (=> b!2949812 m!3329173))

(assert (=> d!840888 m!3329089))

(assert (=> d!840888 m!3329115))

(declare-fun m!3329175 () Bool)

(assert (=> b!2949822 m!3329175))

(assert (=> b!2949813 m!3329175))

(assert (=> b!2949813 m!3329175))

(declare-fun m!3329177 () Bool)

(assert (=> b!2949813 m!3329177))

(assert (=> b!2949813 m!3329171))

(assert (=> b!2949813 m!3329177))

(assert (=> b!2949813 m!3329171))

(declare-fun m!3329179 () Bool)

(assert (=> b!2949813 m!3329179))

(assert (=> b!2949817 m!3329171))

(assert (=> b!2949817 m!3329171))

(assert (=> b!2949817 m!3329173))

(declare-fun m!3329181 () Bool)

(assert (=> b!2949819 m!3329181))

(assert (=> bm!194886 m!3329089))

(assert (=> b!2949818 m!3329175))

(assert (=> b!2949656 d!840888))

(declare-fun d!840890 () Bool)

(assert (=> d!840890 (= (matchR!4030 r!17423 s!11993) (matchRSpec!1285 r!17423 s!11993))))

(declare-fun lt!1031819 () Unit!48675)

(declare-fun choose!17424 (Regex!9148 List!35013) Unit!48675)

(assert (=> d!840890 (= lt!1031819 (choose!17424 r!17423 s!11993))))

(assert (=> d!840890 (validRegex!3881 r!17423)))

(assert (=> d!840890 (= (mainMatchTheorem!1285 r!17423 s!11993) lt!1031819)))

(declare-fun bs!525646 () Bool)

(assert (= bs!525646 d!840890))

(assert (=> bs!525646 m!3329093))

(assert (=> bs!525646 m!3329091))

(declare-fun m!3329183 () Bool)

(assert (=> bs!525646 m!3329183))

(assert (=> bs!525646 m!3329115))

(assert (=> b!2949656 d!840890))

(declare-fun d!840892 () Bool)

(assert (=> d!840892 (= (isEmpty!19150 s!11993) (is-Nil!34889 s!11993))))

(assert (=> b!2949661 d!840892))

(declare-fun d!840894 () Bool)

(assert (=> d!840894 (= (isEmptyExpr!351 lt!1031792) (is-EmptyExpr!9148 lt!1031792))))

(assert (=> b!2949666 d!840894))

(declare-fun b!2949850 () Bool)

(declare-fun res!1217183 () Bool)

(declare-fun e!1857982 () Bool)

(assert (=> b!2949850 (=> (not res!1217183) (not e!1857982))))

(declare-fun lt!1031826 () Option!6639)

(declare-fun get!10693 (Option!6639) tuple2!33814)

(assert (=> b!2949850 (= res!1217183 (matchR!4030 lt!1031792 (_2!20039 (get!10693 lt!1031826))))))

(declare-fun b!2949851 () Bool)

(declare-fun res!1217187 () Bool)

(assert (=> b!2949851 (=> (not res!1217187) (not e!1857982))))

(assert (=> b!2949851 (= res!1217187 (matchR!4030 lt!1031789 (_1!20039 (get!10693 lt!1031826))))))

(declare-fun b!2949852 () Bool)

(declare-fun e!1857984 () Option!6639)

(declare-fun e!1857983 () Option!6639)

(assert (=> b!2949852 (= e!1857984 e!1857983)))

(declare-fun c!482814 () Bool)

(assert (=> b!2949852 (= c!482814 (is-Nil!34889 s!11993))))

(declare-fun b!2949853 () Bool)

(assert (=> b!2949853 (= e!1857984 (Some!6638 (tuple2!33815 Nil!34889 s!11993)))))

(declare-fun b!2949854 () Bool)

(assert (=> b!2949854 (= e!1857983 None!6638)))

(declare-fun b!2949855 () Bool)

(declare-fun ++!8318 (List!35013 List!35013) List!35013)

(assert (=> b!2949855 (= e!1857982 (= (++!8318 (_1!20039 (get!10693 lt!1031826)) (_2!20039 (get!10693 lt!1031826))) s!11993))))

(declare-fun b!2949856 () Bool)

(declare-fun lt!1031827 () Unit!48675)

(declare-fun lt!1031828 () Unit!48675)

(assert (=> b!2949856 (= lt!1031827 lt!1031828)))

(assert (=> b!2949856 (= (++!8318 (++!8318 Nil!34889 (Cons!34889 (h!40309 s!11993) Nil!34889)) (t!234078 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!941 (List!35013 C!18482 List!35013 List!35013) Unit!48675)

(assert (=> b!2949856 (= lt!1031828 (lemmaMoveElementToOtherListKeepsConcatEq!941 Nil!34889 (h!40309 s!11993) (t!234078 s!11993) s!11993))))

(assert (=> b!2949856 (= e!1857983 (findConcatSeparation!1033 lt!1031789 lt!1031792 (++!8318 Nil!34889 (Cons!34889 (h!40309 s!11993) Nil!34889)) (t!234078 s!11993) s!11993))))

(declare-fun b!2949857 () Bool)

(declare-fun e!1857981 () Bool)

(assert (=> b!2949857 (= e!1857981 (not (isDefined!5190 lt!1031826)))))

(declare-fun b!2949858 () Bool)

(declare-fun e!1857985 () Bool)

(assert (=> b!2949858 (= e!1857985 (matchR!4030 lt!1031792 s!11993))))

(declare-fun d!840898 () Bool)

(assert (=> d!840898 e!1857981))

(declare-fun res!1217185 () Bool)

(assert (=> d!840898 (=> res!1217185 e!1857981)))

(assert (=> d!840898 (= res!1217185 e!1857982)))

(declare-fun res!1217184 () Bool)

(assert (=> d!840898 (=> (not res!1217184) (not e!1857982))))

(assert (=> d!840898 (= res!1217184 (isDefined!5190 lt!1031826))))

(assert (=> d!840898 (= lt!1031826 e!1857984)))

(declare-fun c!482813 () Bool)

(assert (=> d!840898 (= c!482813 e!1857985)))

(declare-fun res!1217186 () Bool)

(assert (=> d!840898 (=> (not res!1217186) (not e!1857985))))

(assert (=> d!840898 (= res!1217186 (matchR!4030 lt!1031789 Nil!34889))))

(assert (=> d!840898 (validRegex!3881 lt!1031789)))

(assert (=> d!840898 (= (findConcatSeparation!1033 lt!1031789 lt!1031792 Nil!34889 s!11993 s!11993) lt!1031826)))

(assert (= (and d!840898 res!1217186) b!2949858))

(assert (= (and d!840898 c!482813) b!2949853))

(assert (= (and d!840898 (not c!482813)) b!2949852))

(assert (= (and b!2949852 c!482814) b!2949854))

(assert (= (and b!2949852 (not c!482814)) b!2949856))

(assert (= (and d!840898 res!1217184) b!2949851))

(assert (= (and b!2949851 res!1217187) b!2949850))

(assert (= (and b!2949850 res!1217183) b!2949855))

(assert (= (and d!840898 (not res!1217185)) b!2949857))

(declare-fun m!3329191 () Bool)

(assert (=> b!2949855 m!3329191))

(declare-fun m!3329193 () Bool)

(assert (=> b!2949855 m!3329193))

(declare-fun m!3329195 () Bool)

(assert (=> b!2949857 m!3329195))

(assert (=> b!2949851 m!3329191))

(declare-fun m!3329197 () Bool)

(assert (=> b!2949851 m!3329197))

(assert (=> b!2949850 m!3329191))

(declare-fun m!3329199 () Bool)

(assert (=> b!2949850 m!3329199))

(assert (=> d!840898 m!3329195))

(declare-fun m!3329201 () Bool)

(assert (=> d!840898 m!3329201))

(declare-fun m!3329203 () Bool)

(assert (=> d!840898 m!3329203))

(declare-fun m!3329205 () Bool)

(assert (=> b!2949856 m!3329205))

(assert (=> b!2949856 m!3329205))

(declare-fun m!3329207 () Bool)

(assert (=> b!2949856 m!3329207))

(declare-fun m!3329209 () Bool)

(assert (=> b!2949856 m!3329209))

(assert (=> b!2949856 m!3329205))

(declare-fun m!3329211 () Bool)

(assert (=> b!2949856 m!3329211))

(declare-fun m!3329213 () Bool)

(assert (=> b!2949858 m!3329213))

(assert (=> b!2949668 d!840898))

(declare-fun d!840902 () Bool)

(assert (=> d!840902 (= (matchR!4030 lt!1031791 s!11993) (matchRSpec!1285 lt!1031791 s!11993))))

(declare-fun lt!1031829 () Unit!48675)

(assert (=> d!840902 (= lt!1031829 (choose!17424 lt!1031791 s!11993))))

(assert (=> d!840902 (validRegex!3881 lt!1031791)))

(assert (=> d!840902 (= (mainMatchTheorem!1285 lt!1031791 s!11993) lt!1031829)))

(declare-fun bs!525647 () Bool)

(assert (= bs!525647 d!840902))

(assert (=> bs!525647 m!3329097))

(assert (=> bs!525647 m!3329101))

(declare-fun m!3329215 () Bool)

(assert (=> bs!525647 m!3329215))

(declare-fun m!3329217 () Bool)

(assert (=> bs!525647 m!3329217))

(assert (=> b!2949668 d!840902))

(declare-fun d!840904 () Bool)

(declare-fun isEmpty!19152 (Option!6639) Bool)

(assert (=> d!840904 (= (isDefined!5190 (findConcatSeparation!1033 lt!1031789 lt!1031792 Nil!34889 s!11993 s!11993)) (not (isEmpty!19152 (findConcatSeparation!1033 lt!1031789 lt!1031792 Nil!34889 s!11993 s!11993))))))

(declare-fun bs!525648 () Bool)

(assert (= bs!525648 d!840904))

(assert (=> bs!525648 m!3329103))

(declare-fun m!3329219 () Bool)

(assert (=> bs!525648 m!3329219))

(assert (=> b!2949668 d!840904))

(declare-fun bs!525649 () Bool)

(declare-fun b!2949861 () Bool)

(assert (= bs!525649 (and b!2949861 b!2949668)))

(declare-fun lambda!109709 () Int)

(assert (=> bs!525649 (not (= lambda!109709 lambda!109699))))

(declare-fun bs!525650 () Bool)

(assert (= bs!525650 (and b!2949861 b!2949754)))

(assert (=> bs!525650 (= (and (= (reg!9477 lt!1031791) (reg!9477 r!17423)) (= lt!1031791 r!17423)) (= lambda!109709 lambda!109707))))

(declare-fun bs!525651 () Bool)

(assert (= bs!525651 (and b!2949861 b!2949760)))

(assert (=> bs!525651 (not (= lambda!109709 lambda!109708))))

(assert (=> b!2949861 true))

(assert (=> b!2949861 true))

(declare-fun bs!525652 () Bool)

(declare-fun b!2949867 () Bool)

(assert (= bs!525652 (and b!2949867 b!2949668)))

(declare-fun lambda!109710 () Int)

(assert (=> bs!525652 (not (= lambda!109710 lambda!109699))))

(declare-fun bs!525653 () Bool)

(assert (= bs!525653 (and b!2949867 b!2949754)))

(assert (=> bs!525653 (not (= lambda!109710 lambda!109707))))

(declare-fun bs!525654 () Bool)

(assert (= bs!525654 (and b!2949867 b!2949760)))

(assert (=> bs!525654 (= (and (= (regOne!18808 lt!1031791) (regOne!18808 r!17423)) (= (regTwo!18808 lt!1031791) (regTwo!18808 r!17423))) (= lambda!109710 lambda!109708))))

(declare-fun bs!525655 () Bool)

(assert (= bs!525655 (and b!2949867 b!2949861)))

(assert (=> bs!525655 (not (= lambda!109710 lambda!109709))))

(assert (=> b!2949867 true))

(assert (=> b!2949867 true))

(declare-fun b!2949859 () Bool)

(declare-fun e!1857991 () Bool)

(assert (=> b!2949859 (= e!1857991 (= s!11993 (Cons!34889 (c!482780 lt!1031791) Nil!34889)))))

(declare-fun bm!194890 () Bool)

(declare-fun c!482816 () Bool)

(declare-fun call!194895 () Bool)

(assert (=> bm!194890 (= call!194895 (Exists!1480 (ite c!482816 lambda!109709 lambda!109710)))))

(declare-fun b!2949860 () Bool)

(declare-fun e!1857988 () Bool)

(declare-fun e!1857989 () Bool)

(assert (=> b!2949860 (= e!1857988 e!1857989)))

(declare-fun res!1217188 () Bool)

(assert (=> b!2949860 (= res!1217188 (matchRSpec!1285 (regOne!18809 lt!1031791) s!11993))))

(assert (=> b!2949860 (=> res!1217188 e!1857989)))

(declare-fun e!1857992 () Bool)

(assert (=> b!2949861 (= e!1857992 call!194895)))

(declare-fun b!2949862 () Bool)

(declare-fun e!1857987 () Bool)

(declare-fun call!194896 () Bool)

(assert (=> b!2949862 (= e!1857987 call!194896)))

(declare-fun b!2949863 () Bool)

(assert (=> b!2949863 (= e!1857989 (matchRSpec!1285 (regTwo!18809 lt!1031791) s!11993))))

(declare-fun b!2949864 () Bool)

(declare-fun e!1857990 () Bool)

(assert (=> b!2949864 (= e!1857988 e!1857990)))

(assert (=> b!2949864 (= c!482816 (is-Star!9148 lt!1031791))))

(declare-fun b!2949865 () Bool)

(declare-fun e!1857986 () Bool)

(assert (=> b!2949865 (= e!1857987 e!1857986)))

(declare-fun res!1217190 () Bool)

(assert (=> b!2949865 (= res!1217190 (not (is-EmptyLang!9148 lt!1031791)))))

(assert (=> b!2949865 (=> (not res!1217190) (not e!1857986))))

(declare-fun b!2949866 () Bool)

(declare-fun c!482818 () Bool)

(assert (=> b!2949866 (= c!482818 (is-ElementMatch!9148 lt!1031791))))

(assert (=> b!2949866 (= e!1857986 e!1857991)))

(declare-fun d!840906 () Bool)

(declare-fun c!482817 () Bool)

(assert (=> d!840906 (= c!482817 (is-EmptyExpr!9148 lt!1031791))))

(assert (=> d!840906 (= (matchRSpec!1285 lt!1031791 s!11993) e!1857987)))

(assert (=> b!2949867 (= e!1857990 call!194895)))

(declare-fun b!2949868 () Bool)

(declare-fun c!482815 () Bool)

(assert (=> b!2949868 (= c!482815 (is-Union!9148 lt!1031791))))

(assert (=> b!2949868 (= e!1857991 e!1857988)))

(declare-fun bm!194891 () Bool)

(assert (=> bm!194891 (= call!194896 (isEmpty!19150 s!11993))))

(declare-fun b!2949869 () Bool)

(declare-fun res!1217189 () Bool)

(assert (=> b!2949869 (=> res!1217189 e!1857992)))

(assert (=> b!2949869 (= res!1217189 call!194896)))

(assert (=> b!2949869 (= e!1857990 e!1857992)))

(assert (= (and d!840906 c!482817) b!2949862))

(assert (= (and d!840906 (not c!482817)) b!2949865))

(assert (= (and b!2949865 res!1217190) b!2949866))

(assert (= (and b!2949866 c!482818) b!2949859))

(assert (= (and b!2949866 (not c!482818)) b!2949868))

(assert (= (and b!2949868 c!482815) b!2949860))

(assert (= (and b!2949868 (not c!482815)) b!2949864))

(assert (= (and b!2949860 (not res!1217188)) b!2949863))

(assert (= (and b!2949864 c!482816) b!2949869))

(assert (= (and b!2949864 (not c!482816)) b!2949867))

(assert (= (and b!2949869 (not res!1217189)) b!2949861))

(assert (= (or b!2949861 b!2949867) bm!194890))

(assert (= (or b!2949862 b!2949869) bm!194891))

(declare-fun m!3329221 () Bool)

(assert (=> bm!194890 m!3329221))

(declare-fun m!3329223 () Bool)

(assert (=> b!2949860 m!3329223))

(declare-fun m!3329225 () Bool)

(assert (=> b!2949863 m!3329225))

(assert (=> bm!194891 m!3329089))

(assert (=> b!2949668 d!840906))

(declare-fun bs!525656 () Bool)

(declare-fun d!840908 () Bool)

(assert (= bs!525656 (and d!840908 b!2949754)))

(declare-fun lambda!109713 () Int)

(assert (=> bs!525656 (not (= lambda!109713 lambda!109707))))

(declare-fun bs!525657 () Bool)

(assert (= bs!525657 (and d!840908 b!2949668)))

(assert (=> bs!525657 (= lambda!109713 lambda!109699)))

(declare-fun bs!525658 () Bool)

(assert (= bs!525658 (and d!840908 b!2949861)))

(assert (=> bs!525658 (not (= lambda!109713 lambda!109709))))

(declare-fun bs!525659 () Bool)

(assert (= bs!525659 (and d!840908 b!2949867)))

(assert (=> bs!525659 (not (= lambda!109713 lambda!109710))))

(declare-fun bs!525660 () Bool)

(assert (= bs!525660 (and d!840908 b!2949760)))

(assert (=> bs!525660 (not (= lambda!109713 lambda!109708))))

(assert (=> d!840908 true))

(assert (=> d!840908 true))

(assert (=> d!840908 true))

(assert (=> d!840908 (= (isDefined!5190 (findConcatSeparation!1033 lt!1031789 lt!1031792 Nil!34889 s!11993 s!11993)) (Exists!1480 lambda!109713))))

(declare-fun lt!1031844 () Unit!48675)

(declare-fun choose!17425 (Regex!9148 Regex!9148 List!35013) Unit!48675)

(assert (=> d!840908 (= lt!1031844 (choose!17425 lt!1031789 lt!1031792 s!11993))))

(assert (=> d!840908 (validRegex!3881 lt!1031789)))

(assert (=> d!840908 (= (lemmaFindConcatSeparationEquivalentToExists!811 lt!1031789 lt!1031792 s!11993) lt!1031844)))

(declare-fun bs!525661 () Bool)

(assert (= bs!525661 d!840908))

(declare-fun m!3329227 () Bool)

(assert (=> bs!525661 m!3329227))

(assert (=> bs!525661 m!3329103))

(assert (=> bs!525661 m!3329105))

(assert (=> bs!525661 m!3329103))

(assert (=> bs!525661 m!3329203))

(declare-fun m!3329229 () Bool)

(assert (=> bs!525661 m!3329229))

(assert (=> b!2949668 d!840908))

(declare-fun d!840910 () Bool)

(declare-fun choose!17426 (Int) Bool)

(assert (=> d!840910 (= (Exists!1480 lambda!109699) (choose!17426 lambda!109699))))

(declare-fun bs!525662 () Bool)

(assert (= bs!525662 d!840910))

(declare-fun m!3329231 () Bool)

(assert (=> bs!525662 m!3329231))

(assert (=> b!2949668 d!840910))

(declare-fun b!2949940 () Bool)

(declare-fun e!1858039 () Bool)

(declare-fun call!194919 () Bool)

(assert (=> b!2949940 (= e!1858039 call!194919)))

(declare-fun b!2949941 () Bool)

(declare-fun e!1858038 () Bool)

(declare-fun call!194917 () Bool)

(assert (=> b!2949941 (= e!1858038 call!194917)))

(declare-fun bm!194912 () Bool)

(declare-fun c!482845 () Bool)

(assert (=> bm!194912 (= call!194919 (validRegex!3881 (ite c!482845 (regTwo!18809 (regOne!18808 r!17423)) (regOne!18808 (regOne!18808 r!17423)))))))

(declare-fun b!2949942 () Bool)

(declare-fun e!1858036 () Bool)

(declare-fun call!194918 () Bool)

(assert (=> b!2949942 (= e!1858036 call!194918)))

(declare-fun bm!194913 () Bool)

(assert (=> bm!194913 (= call!194918 call!194917)))

(declare-fun b!2949943 () Bool)

(declare-fun e!1858035 () Bool)

(declare-fun e!1858041 () Bool)

(assert (=> b!2949943 (= e!1858035 e!1858041)))

(declare-fun c!482846 () Bool)

(assert (=> b!2949943 (= c!482846 (is-Star!9148 (regOne!18808 r!17423)))))

(declare-fun b!2949944 () Bool)

(assert (=> b!2949944 (= e!1858041 e!1858038)))

(declare-fun res!1217209 () Bool)

(assert (=> b!2949944 (= res!1217209 (not (nullable!2906 (reg!9477 (regOne!18808 r!17423)))))))

(assert (=> b!2949944 (=> (not res!1217209) (not e!1858038))))

(declare-fun d!840912 () Bool)

(declare-fun res!1217210 () Bool)

(assert (=> d!840912 (=> res!1217210 e!1858035)))

(assert (=> d!840912 (= res!1217210 (is-ElementMatch!9148 (regOne!18808 r!17423)))))

(assert (=> d!840912 (= (validRegex!3881 (regOne!18808 r!17423)) e!1858035)))

(declare-fun b!2949945 () Bool)

(declare-fun e!1858040 () Bool)

(assert (=> b!2949945 (= e!1858040 e!1858036)))

(declare-fun res!1217212 () Bool)

(assert (=> b!2949945 (=> (not res!1217212) (not e!1858036))))

(assert (=> b!2949945 (= res!1217212 call!194919)))

(declare-fun b!2949946 () Bool)

(declare-fun res!1217211 () Bool)

(assert (=> b!2949946 (=> res!1217211 e!1858040)))

(assert (=> b!2949946 (= res!1217211 (not (is-Concat!14469 (regOne!18808 r!17423))))))

(declare-fun e!1858037 () Bool)

(assert (=> b!2949946 (= e!1858037 e!1858040)))

(declare-fun bm!194914 () Bool)

(assert (=> bm!194914 (= call!194917 (validRegex!3881 (ite c!482846 (reg!9477 (regOne!18808 r!17423)) (ite c!482845 (regOne!18809 (regOne!18808 r!17423)) (regTwo!18808 (regOne!18808 r!17423))))))))

(declare-fun b!2949947 () Bool)

(declare-fun res!1217213 () Bool)

(assert (=> b!2949947 (=> (not res!1217213) (not e!1858039))))

(assert (=> b!2949947 (= res!1217213 call!194918)))

(assert (=> b!2949947 (= e!1858037 e!1858039)))

(declare-fun b!2949948 () Bool)

(assert (=> b!2949948 (= e!1858041 e!1858037)))

(assert (=> b!2949948 (= c!482845 (is-Union!9148 (regOne!18808 r!17423)))))

(assert (= (and d!840912 (not res!1217210)) b!2949943))

(assert (= (and b!2949943 c!482846) b!2949944))

(assert (= (and b!2949943 (not c!482846)) b!2949948))

(assert (= (and b!2949944 res!1217209) b!2949941))

(assert (= (and b!2949948 c!482845) b!2949947))

(assert (= (and b!2949948 (not c!482845)) b!2949946))

(assert (= (and b!2949947 res!1217213) b!2949940))

(assert (= (and b!2949946 (not res!1217211)) b!2949945))

(assert (= (and b!2949945 res!1217212) b!2949942))

(assert (= (or b!2949947 b!2949942) bm!194913))

(assert (= (or b!2949940 b!2949945) bm!194912))

(assert (= (or b!2949941 bm!194913) bm!194914))

(declare-fun m!3329233 () Bool)

(assert (=> bm!194912 m!3329233))

(declare-fun m!3329235 () Bool)

(assert (=> b!2949944 m!3329235))

(declare-fun m!3329237 () Bool)

(assert (=> bm!194914 m!3329237))

(assert (=> b!2949668 d!840912))

(declare-fun d!840914 () Bool)

(assert (=> d!840914 (= (isEmptyExpr!351 lt!1031789) (is-EmptyExpr!9148 lt!1031789))))

(assert (=> b!2949657 d!840914))

(declare-fun b!2949949 () Bool)

(declare-fun e!1858046 () Bool)

(declare-fun call!194922 () Bool)

(assert (=> b!2949949 (= e!1858046 call!194922)))

(declare-fun b!2949950 () Bool)

(declare-fun e!1858045 () Bool)

(declare-fun call!194920 () Bool)

(assert (=> b!2949950 (= e!1858045 call!194920)))

(declare-fun bm!194915 () Bool)

(declare-fun c!482847 () Bool)

(assert (=> bm!194915 (= call!194922 (validRegex!3881 (ite c!482847 (regTwo!18809 r!17423) (regOne!18808 r!17423))))))

(declare-fun b!2949951 () Bool)

(declare-fun e!1858043 () Bool)

(declare-fun call!194921 () Bool)

(assert (=> b!2949951 (= e!1858043 call!194921)))

(declare-fun bm!194916 () Bool)

(assert (=> bm!194916 (= call!194921 call!194920)))

(declare-fun b!2949952 () Bool)

(declare-fun e!1858042 () Bool)

(declare-fun e!1858048 () Bool)

(assert (=> b!2949952 (= e!1858042 e!1858048)))

(declare-fun c!482848 () Bool)

(assert (=> b!2949952 (= c!482848 (is-Star!9148 r!17423))))

(declare-fun b!2949953 () Bool)

(assert (=> b!2949953 (= e!1858048 e!1858045)))

(declare-fun res!1217214 () Bool)

(assert (=> b!2949953 (= res!1217214 (not (nullable!2906 (reg!9477 r!17423))))))

(assert (=> b!2949953 (=> (not res!1217214) (not e!1858045))))

(declare-fun d!840916 () Bool)

(declare-fun res!1217215 () Bool)

(assert (=> d!840916 (=> res!1217215 e!1858042)))

(assert (=> d!840916 (= res!1217215 (is-ElementMatch!9148 r!17423))))

(assert (=> d!840916 (= (validRegex!3881 r!17423) e!1858042)))

(declare-fun b!2949954 () Bool)

(declare-fun e!1858047 () Bool)

(assert (=> b!2949954 (= e!1858047 e!1858043)))

(declare-fun res!1217217 () Bool)

(assert (=> b!2949954 (=> (not res!1217217) (not e!1858043))))

(assert (=> b!2949954 (= res!1217217 call!194922)))

(declare-fun b!2949955 () Bool)

(declare-fun res!1217216 () Bool)

(assert (=> b!2949955 (=> res!1217216 e!1858047)))

(assert (=> b!2949955 (= res!1217216 (not (is-Concat!14469 r!17423)))))

(declare-fun e!1858044 () Bool)

(assert (=> b!2949955 (= e!1858044 e!1858047)))

(declare-fun bm!194917 () Bool)

(assert (=> bm!194917 (= call!194920 (validRegex!3881 (ite c!482848 (reg!9477 r!17423) (ite c!482847 (regOne!18809 r!17423) (regTwo!18808 r!17423)))))))

(declare-fun b!2949956 () Bool)

(declare-fun res!1217218 () Bool)

(assert (=> b!2949956 (=> (not res!1217218) (not e!1858046))))

(assert (=> b!2949956 (= res!1217218 call!194921)))

(assert (=> b!2949956 (= e!1858044 e!1858046)))

(declare-fun b!2949957 () Bool)

(assert (=> b!2949957 (= e!1858048 e!1858044)))

(assert (=> b!2949957 (= c!482847 (is-Union!9148 r!17423))))

(assert (= (and d!840916 (not res!1217215)) b!2949952))

(assert (= (and b!2949952 c!482848) b!2949953))

(assert (= (and b!2949952 (not c!482848)) b!2949957))

(assert (= (and b!2949953 res!1217214) b!2949950))

(assert (= (and b!2949957 c!482847) b!2949956))

(assert (= (and b!2949957 (not c!482847)) b!2949955))

(assert (= (and b!2949956 res!1217218) b!2949949))

(assert (= (and b!2949955 (not res!1217216)) b!2949954))

(assert (= (and b!2949954 res!1217217) b!2949951))

(assert (= (or b!2949956 b!2949951) bm!194916))

(assert (= (or b!2949949 b!2949954) bm!194915))

(assert (= (or b!2949950 bm!194916) bm!194917))

(declare-fun m!3329239 () Bool)

(assert (=> bm!194915 m!3329239))

(declare-fun m!3329241 () Bool)

(assert (=> b!2949953 m!3329241))

(declare-fun m!3329243 () Bool)

(assert (=> bm!194917 m!3329243))

(assert (=> start!286110 d!840916))

(declare-fun d!840918 () Bool)

(assert (=> d!840918 (= (isEmptyLang!270 lt!1031792) (is-EmptyLang!9148 lt!1031792))))

(assert (=> b!2949658 d!840918))

(declare-fun b!2949958 () Bool)

(declare-fun e!1858050 () Bool)

(declare-fun lt!1031845 () Bool)

(declare-fun call!194923 () Bool)

(assert (=> b!2949958 (= e!1858050 (= lt!1031845 call!194923))))

(declare-fun b!2949959 () Bool)

(declare-fun res!1217226 () Bool)

(declare-fun e!1858049 () Bool)

(assert (=> b!2949959 (=> res!1217226 e!1858049)))

(declare-fun e!1858053 () Bool)

(assert (=> b!2949959 (= res!1217226 e!1858053)))

(declare-fun res!1217225 () Bool)

(assert (=> b!2949959 (=> (not res!1217225) (not e!1858053))))

(assert (=> b!2949959 (= res!1217225 lt!1031845)))

(declare-fun b!2949960 () Bool)

(declare-fun res!1217221 () Bool)

(assert (=> b!2949960 (=> (not res!1217221) (not e!1858053))))

(assert (=> b!2949960 (= res!1217221 (not call!194923))))

(declare-fun b!2949962 () Bool)

(declare-fun e!1858054 () Bool)

(assert (=> b!2949962 (= e!1858054 (matchR!4030 (derivativeStep!2509 lt!1031791 (head!6568 s!11993)) (tail!4794 s!11993)))))

(declare-fun b!2949963 () Bool)

(declare-fun e!1858055 () Bool)

(declare-fun e!1858051 () Bool)

(assert (=> b!2949963 (= e!1858055 e!1858051)))

(declare-fun res!1217220 () Bool)

(assert (=> b!2949963 (=> res!1217220 e!1858051)))

(assert (=> b!2949963 (= res!1217220 call!194923)))

(declare-fun b!2949964 () Bool)

(assert (=> b!2949964 (= e!1858049 e!1858055)))

(declare-fun res!1217219 () Bool)

(assert (=> b!2949964 (=> (not res!1217219) (not e!1858055))))

(assert (=> b!2949964 (= res!1217219 (not lt!1031845))))

(declare-fun b!2949965 () Bool)

(declare-fun e!1858052 () Bool)

(assert (=> b!2949965 (= e!1858050 e!1858052)))

(declare-fun c!482850 () Bool)

(assert (=> b!2949965 (= c!482850 (is-EmptyLang!9148 lt!1031791))))

(declare-fun b!2949966 () Bool)

(declare-fun res!1217223 () Bool)

(assert (=> b!2949966 (=> res!1217223 e!1858051)))

(assert (=> b!2949966 (= res!1217223 (not (isEmpty!19150 (tail!4794 s!11993))))))

(declare-fun b!2949967 () Bool)

(assert (=> b!2949967 (= e!1858053 (= (head!6568 s!11993) (c!482780 lt!1031791)))))

(declare-fun b!2949968 () Bool)

(assert (=> b!2949968 (= e!1858054 (nullable!2906 lt!1031791))))

(declare-fun b!2949961 () Bool)

(declare-fun res!1217222 () Bool)

(assert (=> b!2949961 (=> (not res!1217222) (not e!1858053))))

(assert (=> b!2949961 (= res!1217222 (isEmpty!19150 (tail!4794 s!11993)))))

(declare-fun d!840920 () Bool)

(assert (=> d!840920 e!1858050))

(declare-fun c!482849 () Bool)

(assert (=> d!840920 (= c!482849 (is-EmptyExpr!9148 lt!1031791))))

(assert (=> d!840920 (= lt!1031845 e!1858054)))

(declare-fun c!482851 () Bool)

(assert (=> d!840920 (= c!482851 (isEmpty!19150 s!11993))))

(assert (=> d!840920 (validRegex!3881 lt!1031791)))

(assert (=> d!840920 (= (matchR!4030 lt!1031791 s!11993) lt!1031845)))

(declare-fun b!2949969 () Bool)

(assert (=> b!2949969 (= e!1858052 (not lt!1031845))))

(declare-fun b!2949970 () Bool)

(declare-fun res!1217224 () Bool)

(assert (=> b!2949970 (=> res!1217224 e!1858049)))

(assert (=> b!2949970 (= res!1217224 (not (is-ElementMatch!9148 lt!1031791)))))

(assert (=> b!2949970 (= e!1858052 e!1858049)))

(declare-fun b!2949971 () Bool)

(assert (=> b!2949971 (= e!1858051 (not (= (head!6568 s!11993) (c!482780 lt!1031791))))))

(declare-fun bm!194918 () Bool)

(assert (=> bm!194918 (= call!194923 (isEmpty!19150 s!11993))))

(assert (= (and d!840920 c!482851) b!2949968))

(assert (= (and d!840920 (not c!482851)) b!2949962))

(assert (= (and d!840920 c!482849) b!2949958))

(assert (= (and d!840920 (not c!482849)) b!2949965))

(assert (= (and b!2949965 c!482850) b!2949969))

(assert (= (and b!2949965 (not c!482850)) b!2949970))

(assert (= (and b!2949970 (not res!1217224)) b!2949959))

(assert (= (and b!2949959 res!1217225) b!2949960))

(assert (= (and b!2949960 res!1217221) b!2949961))

(assert (= (and b!2949961 res!1217222) b!2949967))

(assert (= (and b!2949959 (not res!1217226)) b!2949964))

(assert (= (and b!2949964 res!1217219) b!2949963))

(assert (= (and b!2949963 (not res!1217220)) b!2949966))

(assert (= (and b!2949966 (not res!1217223)) b!2949971))

(assert (= (or b!2949958 b!2949960 b!2949963) bm!194918))

(assert (=> b!2949961 m!3329171))

(assert (=> b!2949961 m!3329171))

(assert (=> b!2949961 m!3329173))

(assert (=> d!840920 m!3329089))

(assert (=> d!840920 m!3329217))

(assert (=> b!2949971 m!3329175))

(assert (=> b!2949962 m!3329175))

(assert (=> b!2949962 m!3329175))

(declare-fun m!3329245 () Bool)

(assert (=> b!2949962 m!3329245))

(assert (=> b!2949962 m!3329171))

(assert (=> b!2949962 m!3329245))

(assert (=> b!2949962 m!3329171))

(declare-fun m!3329247 () Bool)

(assert (=> b!2949962 m!3329247))

(assert (=> b!2949966 m!3329171))

(assert (=> b!2949966 m!3329171))

(assert (=> b!2949966 m!3329173))

(declare-fun m!3329249 () Bool)

(assert (=> b!2949968 m!3329249))

(assert (=> bm!194918 m!3329089))

(assert (=> b!2949967 m!3329175))

(assert (=> b!2949660 d!840920))

(declare-fun d!840922 () Bool)

(assert (=> d!840922 (= (isEmptyLang!270 lt!1031789) (is-EmptyLang!9148 lt!1031789))))

(assert (=> b!2949659 d!840922))

(declare-fun bm!194947 () Bool)

(declare-fun call!194954 () Regex!9148)

(declare-fun call!194956 () Regex!9148)

(assert (=> bm!194947 (= call!194954 call!194956)))

(declare-fun b!2950075 () Bool)

(declare-fun e!1858122 () Regex!9148)

(declare-fun e!1858120 () Regex!9148)

(assert (=> b!2950075 (= e!1858122 e!1858120)))

(declare-fun lt!1031870 () Regex!9148)

(assert (=> b!2950075 (= lt!1031870 call!194954)))

(declare-fun lt!1031874 () Regex!9148)

(declare-fun call!194952 () Regex!9148)

(assert (=> b!2950075 (= lt!1031874 call!194952)))

(declare-fun res!1217243 () Bool)

(declare-fun call!194957 () Bool)

(assert (=> b!2950075 (= res!1217243 call!194957)))

(declare-fun e!1858115 () Bool)

(assert (=> b!2950075 (=> res!1217243 e!1858115)))

(declare-fun c!482898 () Bool)

(assert (=> b!2950075 (= c!482898 e!1858115)))

(declare-fun b!2950076 () Bool)

(declare-fun e!1858125 () Regex!9148)

(assert (=> b!2950076 (= e!1858125 EmptyExpr!9148)))

(declare-fun b!2950077 () Bool)

(declare-fun c!482899 () Bool)

(declare-fun call!194953 () Bool)

(assert (=> b!2950077 (= c!482899 call!194953)))

(declare-fun e!1858114 () Regex!9148)

(assert (=> b!2950077 (= e!1858120 e!1858114)))

(declare-fun b!2950078 () Bool)

(declare-fun e!1858126 () Regex!9148)

(declare-fun lt!1031873 () Regex!9148)

(assert (=> b!2950078 (= e!1858126 (Star!9148 lt!1031873))))

(declare-fun b!2950079 () Bool)

(declare-fun e!1858119 () Bool)

(declare-fun lt!1031871 () Regex!9148)

(assert (=> b!2950079 (= e!1858119 (= (nullable!2906 lt!1031871) (nullable!2906 (regTwo!18808 r!17423))))))

(declare-fun b!2950080 () Bool)

(declare-fun c!482906 () Bool)

(assert (=> b!2950080 (= c!482906 (is-Union!9148 (regTwo!18808 r!17423)))))

(declare-fun e!1858121 () Regex!9148)

(assert (=> b!2950080 (= e!1858121 e!1858122)))

(declare-fun b!2950081 () Bool)

(declare-fun call!194955 () Bool)

(assert (=> b!2950081 (= e!1858115 call!194955)))

(declare-fun b!2950082 () Bool)

(declare-fun c!482901 () Bool)

(assert (=> b!2950082 (= c!482901 (is-EmptyExpr!9148 (regTwo!18808 r!17423)))))

(declare-fun e!1858118 () Regex!9148)

(assert (=> b!2950082 (= e!1858118 e!1858125)))

(declare-fun c!482903 () Bool)

(declare-fun bm!194948 () Bool)

(declare-fun call!194958 () Bool)

(declare-fun lt!1031872 () Regex!9148)

(assert (=> bm!194948 (= call!194958 (isEmptyLang!270 (ite c!482903 lt!1031873 (ite c!482906 lt!1031872 lt!1031874))))))

(declare-fun bm!194949 () Bool)

(declare-fun lt!1031875 () Regex!9148)

(assert (=> bm!194949 (= call!194957 (isEmptyLang!270 (ite c!482906 lt!1031875 lt!1031870)))))

(declare-fun b!2950083 () Bool)

(declare-fun e!1858127 () Regex!9148)

(assert (=> b!2950083 (= e!1858127 e!1858118)))

(declare-fun c!482896 () Bool)

(assert (=> b!2950083 (= c!482896 (is-ElementMatch!9148 (regTwo!18808 r!17423)))))

(declare-fun b!2950084 () Bool)

(declare-fun e!1858116 () Regex!9148)

(assert (=> b!2950084 (= e!1858116 (Union!9148 lt!1031875 lt!1031872))))

(declare-fun b!2950085 () Bool)

(declare-fun e!1858117 () Bool)

(assert (=> b!2950085 (= e!1858117 call!194953)))

(declare-fun bm!194950 () Bool)

(assert (=> bm!194950 (= call!194956 (simplify!153 (ite c!482903 (reg!9477 (regTwo!18808 r!17423)) (ite c!482906 (regTwo!18809 (regTwo!18808 r!17423)) (regOne!18808 (regTwo!18808 r!17423))))))))

(declare-fun b!2950086 () Bool)

(assert (=> b!2950086 (= e!1858127 EmptyLang!9148)))

(declare-fun b!2950087 () Bool)

(assert (=> b!2950087 (= e!1858114 lt!1031874)))

(declare-fun b!2950074 () Bool)

(declare-fun e!1858124 () Regex!9148)

(assert (=> b!2950074 (= e!1858124 lt!1031870)))

(declare-fun d!840924 () Bool)

(assert (=> d!840924 e!1858119))

(declare-fun res!1217241 () Bool)

(assert (=> d!840924 (=> (not res!1217241) (not e!1858119))))

(assert (=> d!840924 (= res!1217241 (validRegex!3881 lt!1031871))))

(assert (=> d!840924 (= lt!1031871 e!1858127)))

(declare-fun c!482897 () Bool)

(assert (=> d!840924 (= c!482897 (is-EmptyLang!9148 (regTwo!18808 r!17423)))))

(assert (=> d!840924 (validRegex!3881 (regTwo!18808 r!17423))))

(assert (=> d!840924 (= (simplify!153 (regTwo!18808 r!17423)) lt!1031871)))

(declare-fun b!2950088 () Bool)

(declare-fun e!1858123 () Regex!9148)

(assert (=> b!2950088 (= e!1858122 e!1858123)))

(assert (=> b!2950088 (= lt!1031875 call!194952)))

(assert (=> b!2950088 (= lt!1031872 call!194954)))

(declare-fun c!482900 () Bool)

(assert (=> b!2950088 (= c!482900 call!194957)))

(declare-fun b!2950089 () Bool)

(assert (=> b!2950089 (= e!1858116 lt!1031875)))

(declare-fun b!2950090 () Bool)

(assert (=> b!2950090 (= e!1858114 e!1858124)))

(declare-fun c!482902 () Bool)

(assert (=> b!2950090 (= c!482902 (isEmptyExpr!351 lt!1031874))))

(declare-fun b!2950091 () Bool)

(assert (=> b!2950091 (= e!1858118 (regTwo!18808 r!17423))))

(declare-fun bm!194951 () Bool)

(assert (=> bm!194951 (= call!194955 call!194958)))

(declare-fun b!2950092 () Bool)

(assert (=> b!2950092 (= e!1858125 e!1858121)))

(assert (=> b!2950092 (= c!482903 (is-Star!9148 (regTwo!18808 r!17423)))))

(declare-fun b!2950093 () Bool)

(assert (=> b!2950093 (= e!1858120 EmptyLang!9148)))

(declare-fun bm!194952 () Bool)

(assert (=> bm!194952 (= call!194952 (simplify!153 (ite c!482906 (regOne!18809 (regTwo!18808 r!17423)) (regTwo!18808 (regTwo!18808 r!17423)))))))

(declare-fun b!2950094 () Bool)

(declare-fun c!482904 () Bool)

(assert (=> b!2950094 (= c!482904 call!194955)))

(assert (=> b!2950094 (= e!1858123 e!1858116)))

(declare-fun bm!194953 () Bool)

(assert (=> bm!194953 (= call!194953 (isEmptyExpr!351 (ite c!482903 lt!1031873 lt!1031870)))))

(declare-fun b!2950095 () Bool)

(assert (=> b!2950095 (= e!1858126 EmptyExpr!9148)))

(declare-fun b!2950096 () Bool)

(declare-fun c!482905 () Bool)

(assert (=> b!2950096 (= c!482905 e!1858117)))

(declare-fun res!1217242 () Bool)

(assert (=> b!2950096 (=> res!1217242 e!1858117)))

(assert (=> b!2950096 (= res!1217242 call!194958)))

(assert (=> b!2950096 (= lt!1031873 call!194956)))

(assert (=> b!2950096 (= e!1858121 e!1858126)))

(declare-fun b!2950097 () Bool)

(assert (=> b!2950097 (= e!1858124 (Concat!14469 lt!1031870 lt!1031874))))

(declare-fun b!2950098 () Bool)

(assert (=> b!2950098 (= e!1858123 lt!1031872)))

(assert (= (and d!840924 c!482897) b!2950086))

(assert (= (and d!840924 (not c!482897)) b!2950083))

(assert (= (and b!2950083 c!482896) b!2950091))

(assert (= (and b!2950083 (not c!482896)) b!2950082))

(assert (= (and b!2950082 c!482901) b!2950076))

(assert (= (and b!2950082 (not c!482901)) b!2950092))

(assert (= (and b!2950092 c!482903) b!2950096))

(assert (= (and b!2950092 (not c!482903)) b!2950080))

(assert (= (and b!2950096 (not res!1217242)) b!2950085))

(assert (= (and b!2950096 c!482905) b!2950095))

(assert (= (and b!2950096 (not c!482905)) b!2950078))

(assert (= (and b!2950080 c!482906) b!2950088))

(assert (= (and b!2950080 (not c!482906)) b!2950075))

(assert (= (and b!2950088 c!482900) b!2950098))

(assert (= (and b!2950088 (not c!482900)) b!2950094))

(assert (= (and b!2950094 c!482904) b!2950089))

(assert (= (and b!2950094 (not c!482904)) b!2950084))

(assert (= (and b!2950075 (not res!1217243)) b!2950081))

(assert (= (and b!2950075 c!482898) b!2950093))

(assert (= (and b!2950075 (not c!482898)) b!2950077))

(assert (= (and b!2950077 c!482899) b!2950087))

(assert (= (and b!2950077 (not c!482899)) b!2950090))

(assert (= (and b!2950090 c!482902) b!2950074))

(assert (= (and b!2950090 (not c!482902)) b!2950097))

(assert (= (or b!2950088 b!2950075) bm!194952))

(assert (= (or b!2950088 b!2950075) bm!194947))

(assert (= (or b!2950094 b!2950081) bm!194951))

(assert (= (or b!2950088 b!2950075) bm!194949))

(assert (= (or b!2950085 b!2950077) bm!194953))

(assert (= (or b!2950096 bm!194947) bm!194950))

(assert (= (or b!2950096 bm!194951) bm!194948))

(assert (= (and d!840924 res!1217241) b!2950079))

(declare-fun m!3329285 () Bool)

(assert (=> b!2950090 m!3329285))

(declare-fun m!3329289 () Bool)

(assert (=> bm!194950 m!3329289))

(declare-fun m!3329291 () Bool)

(assert (=> bm!194953 m!3329291))

(declare-fun m!3329293 () Bool)

(assert (=> bm!194952 m!3329293))

(declare-fun m!3329297 () Bool)

(assert (=> b!2950079 m!3329297))

(declare-fun m!3329299 () Bool)

(assert (=> b!2950079 m!3329299))

(declare-fun m!3329301 () Bool)

(assert (=> d!840924 m!3329301))

(declare-fun m!3329303 () Bool)

(assert (=> d!840924 m!3329303))

(declare-fun m!3329305 () Bool)

(assert (=> bm!194948 m!3329305))

(declare-fun m!3329307 () Bool)

(assert (=> bm!194949 m!3329307))

(assert (=> b!2949659 d!840924))

(declare-fun bm!194954 () Bool)

(declare-fun call!194961 () Regex!9148)

(declare-fun call!194963 () Regex!9148)

(assert (=> bm!194954 (= call!194961 call!194963)))

(declare-fun b!2950100 () Bool)

(declare-fun e!1858136 () Regex!9148)

(declare-fun e!1858134 () Regex!9148)

(assert (=> b!2950100 (= e!1858136 e!1858134)))

(declare-fun lt!1031876 () Regex!9148)

(assert (=> b!2950100 (= lt!1031876 call!194961)))

(declare-fun lt!1031880 () Regex!9148)

(declare-fun call!194959 () Regex!9148)

(assert (=> b!2950100 (= lt!1031880 call!194959)))

(declare-fun res!1217246 () Bool)

(declare-fun call!194964 () Bool)

(assert (=> b!2950100 (= res!1217246 call!194964)))

(declare-fun e!1858129 () Bool)

(assert (=> b!2950100 (=> res!1217246 e!1858129)))

(declare-fun c!482909 () Bool)

(assert (=> b!2950100 (= c!482909 e!1858129)))

(declare-fun b!2950101 () Bool)

(declare-fun e!1858139 () Regex!9148)

(assert (=> b!2950101 (= e!1858139 EmptyExpr!9148)))

(declare-fun b!2950102 () Bool)

(declare-fun c!482910 () Bool)

(declare-fun call!194960 () Bool)

(assert (=> b!2950102 (= c!482910 call!194960)))

(declare-fun e!1858128 () Regex!9148)

(assert (=> b!2950102 (= e!1858134 e!1858128)))

(declare-fun b!2950103 () Bool)

(declare-fun e!1858140 () Regex!9148)

(declare-fun lt!1031879 () Regex!9148)

(assert (=> b!2950103 (= e!1858140 (Star!9148 lt!1031879))))

(declare-fun b!2950104 () Bool)

(declare-fun e!1858133 () Bool)

(declare-fun lt!1031877 () Regex!9148)

(assert (=> b!2950104 (= e!1858133 (= (nullable!2906 lt!1031877) (nullable!2906 (regOne!18808 r!17423))))))

(declare-fun b!2950105 () Bool)

(declare-fun c!482917 () Bool)

(assert (=> b!2950105 (= c!482917 (is-Union!9148 (regOne!18808 r!17423)))))

(declare-fun e!1858135 () Regex!9148)

(assert (=> b!2950105 (= e!1858135 e!1858136)))

(declare-fun b!2950106 () Bool)

(declare-fun call!194962 () Bool)

(assert (=> b!2950106 (= e!1858129 call!194962)))

(declare-fun b!2950107 () Bool)

(declare-fun c!482912 () Bool)

(assert (=> b!2950107 (= c!482912 (is-EmptyExpr!9148 (regOne!18808 r!17423)))))

(declare-fun e!1858132 () Regex!9148)

(assert (=> b!2950107 (= e!1858132 e!1858139)))

(declare-fun bm!194955 () Bool)

(declare-fun call!194965 () Bool)

(declare-fun c!482914 () Bool)

(declare-fun lt!1031878 () Regex!9148)

(assert (=> bm!194955 (= call!194965 (isEmptyLang!270 (ite c!482914 lt!1031879 (ite c!482917 lt!1031878 lt!1031880))))))

(declare-fun lt!1031881 () Regex!9148)

(declare-fun bm!194956 () Bool)

(assert (=> bm!194956 (= call!194964 (isEmptyLang!270 (ite c!482917 lt!1031881 lt!1031876)))))

(declare-fun b!2950108 () Bool)

(declare-fun e!1858141 () Regex!9148)

(assert (=> b!2950108 (= e!1858141 e!1858132)))

(declare-fun c!482907 () Bool)

(assert (=> b!2950108 (= c!482907 (is-ElementMatch!9148 (regOne!18808 r!17423)))))

(declare-fun b!2950109 () Bool)

(declare-fun e!1858130 () Regex!9148)

(assert (=> b!2950109 (= e!1858130 (Union!9148 lt!1031881 lt!1031878))))

(declare-fun b!2950110 () Bool)

(declare-fun e!1858131 () Bool)

(assert (=> b!2950110 (= e!1858131 call!194960)))

(declare-fun bm!194957 () Bool)

(assert (=> bm!194957 (= call!194963 (simplify!153 (ite c!482914 (reg!9477 (regOne!18808 r!17423)) (ite c!482917 (regTwo!18809 (regOne!18808 r!17423)) (regOne!18808 (regOne!18808 r!17423))))))))

(declare-fun b!2950111 () Bool)

(assert (=> b!2950111 (= e!1858141 EmptyLang!9148)))

(declare-fun b!2950112 () Bool)

(assert (=> b!2950112 (= e!1858128 lt!1031880)))

(declare-fun b!2950099 () Bool)

(declare-fun e!1858138 () Regex!9148)

(assert (=> b!2950099 (= e!1858138 lt!1031876)))

(declare-fun d!840930 () Bool)

(assert (=> d!840930 e!1858133))

(declare-fun res!1217244 () Bool)

(assert (=> d!840930 (=> (not res!1217244) (not e!1858133))))

(assert (=> d!840930 (= res!1217244 (validRegex!3881 lt!1031877))))

(assert (=> d!840930 (= lt!1031877 e!1858141)))

(declare-fun c!482908 () Bool)

(assert (=> d!840930 (= c!482908 (is-EmptyLang!9148 (regOne!18808 r!17423)))))

(assert (=> d!840930 (validRegex!3881 (regOne!18808 r!17423))))

(assert (=> d!840930 (= (simplify!153 (regOne!18808 r!17423)) lt!1031877)))

(declare-fun b!2950113 () Bool)

(declare-fun e!1858137 () Regex!9148)

(assert (=> b!2950113 (= e!1858136 e!1858137)))

(assert (=> b!2950113 (= lt!1031881 call!194959)))

(assert (=> b!2950113 (= lt!1031878 call!194961)))

(declare-fun c!482911 () Bool)

(assert (=> b!2950113 (= c!482911 call!194964)))

(declare-fun b!2950114 () Bool)

(assert (=> b!2950114 (= e!1858130 lt!1031881)))

(declare-fun b!2950115 () Bool)

(assert (=> b!2950115 (= e!1858128 e!1858138)))

(declare-fun c!482913 () Bool)

(assert (=> b!2950115 (= c!482913 (isEmptyExpr!351 lt!1031880))))

(declare-fun b!2950116 () Bool)

(assert (=> b!2950116 (= e!1858132 (regOne!18808 r!17423))))

(declare-fun bm!194958 () Bool)

(assert (=> bm!194958 (= call!194962 call!194965)))

(declare-fun b!2950117 () Bool)

(assert (=> b!2950117 (= e!1858139 e!1858135)))

(assert (=> b!2950117 (= c!482914 (is-Star!9148 (regOne!18808 r!17423)))))

(declare-fun b!2950118 () Bool)

(assert (=> b!2950118 (= e!1858134 EmptyLang!9148)))

(declare-fun bm!194959 () Bool)

(assert (=> bm!194959 (= call!194959 (simplify!153 (ite c!482917 (regOne!18809 (regOne!18808 r!17423)) (regTwo!18808 (regOne!18808 r!17423)))))))

(declare-fun b!2950119 () Bool)

(declare-fun c!482915 () Bool)

(assert (=> b!2950119 (= c!482915 call!194962)))

(assert (=> b!2950119 (= e!1858137 e!1858130)))

(declare-fun bm!194960 () Bool)

(assert (=> bm!194960 (= call!194960 (isEmptyExpr!351 (ite c!482914 lt!1031879 lt!1031876)))))

(declare-fun b!2950120 () Bool)

(assert (=> b!2950120 (= e!1858140 EmptyExpr!9148)))

(declare-fun b!2950121 () Bool)

(declare-fun c!482916 () Bool)

(assert (=> b!2950121 (= c!482916 e!1858131)))

(declare-fun res!1217245 () Bool)

(assert (=> b!2950121 (=> res!1217245 e!1858131)))

(assert (=> b!2950121 (= res!1217245 call!194965)))

(assert (=> b!2950121 (= lt!1031879 call!194963)))

(assert (=> b!2950121 (= e!1858135 e!1858140)))

(declare-fun b!2950122 () Bool)

(assert (=> b!2950122 (= e!1858138 (Concat!14469 lt!1031876 lt!1031880))))

(declare-fun b!2950123 () Bool)

(assert (=> b!2950123 (= e!1858137 lt!1031878)))

(assert (= (and d!840930 c!482908) b!2950111))

(assert (= (and d!840930 (not c!482908)) b!2950108))

(assert (= (and b!2950108 c!482907) b!2950116))

(assert (= (and b!2950108 (not c!482907)) b!2950107))

(assert (= (and b!2950107 c!482912) b!2950101))

(assert (= (and b!2950107 (not c!482912)) b!2950117))

(assert (= (and b!2950117 c!482914) b!2950121))

(assert (= (and b!2950117 (not c!482914)) b!2950105))

(assert (= (and b!2950121 (not res!1217245)) b!2950110))

(assert (= (and b!2950121 c!482916) b!2950120))

(assert (= (and b!2950121 (not c!482916)) b!2950103))

(assert (= (and b!2950105 c!482917) b!2950113))

(assert (= (and b!2950105 (not c!482917)) b!2950100))

(assert (= (and b!2950113 c!482911) b!2950123))

(assert (= (and b!2950113 (not c!482911)) b!2950119))

(assert (= (and b!2950119 c!482915) b!2950114))

(assert (= (and b!2950119 (not c!482915)) b!2950109))

(assert (= (and b!2950100 (not res!1217246)) b!2950106))

(assert (= (and b!2950100 c!482909) b!2950118))

(assert (= (and b!2950100 (not c!482909)) b!2950102))

(assert (= (and b!2950102 c!482910) b!2950112))

(assert (= (and b!2950102 (not c!482910)) b!2950115))

(assert (= (and b!2950115 c!482913) b!2950099))

(assert (= (and b!2950115 (not c!482913)) b!2950122))

(assert (= (or b!2950113 b!2950100) bm!194959))

(assert (= (or b!2950113 b!2950100) bm!194954))

(assert (= (or b!2950119 b!2950106) bm!194958))

(assert (= (or b!2950113 b!2950100) bm!194956))

(assert (= (or b!2950110 b!2950102) bm!194960))

(assert (= (or b!2950121 bm!194954) bm!194957))

(assert (= (or b!2950121 bm!194958) bm!194955))

(assert (= (and d!840930 res!1217244) b!2950104))

(declare-fun m!3329309 () Bool)

(assert (=> b!2950115 m!3329309))

(declare-fun m!3329311 () Bool)

(assert (=> bm!194957 m!3329311))

(declare-fun m!3329313 () Bool)

(assert (=> bm!194960 m!3329313))

(declare-fun m!3329315 () Bool)

(assert (=> bm!194959 m!3329315))

(declare-fun m!3329317 () Bool)

(assert (=> b!2950104 m!3329317))

(declare-fun m!3329319 () Bool)

(assert (=> b!2950104 m!3329319))

(declare-fun m!3329321 () Bool)

(assert (=> d!840930 m!3329321))

(assert (=> d!840930 m!3329107))

(declare-fun m!3329323 () Bool)

(assert (=> bm!194955 m!3329323))

(declare-fun m!3329325 () Bool)

(assert (=> bm!194956 m!3329325))

(assert (=> b!2949659 d!840930))

(declare-fun b!2950134 () Bool)

(declare-fun e!1858144 () Bool)

(assert (=> b!2950134 (= e!1858144 tp_is_empty!15859)))

(declare-fun b!2950136 () Bool)

(declare-fun tp!943056 () Bool)

(assert (=> b!2950136 (= e!1858144 tp!943056)))

(declare-fun b!2950135 () Bool)

(declare-fun tp!943057 () Bool)

(declare-fun tp!943058 () Bool)

(assert (=> b!2950135 (= e!1858144 (and tp!943057 tp!943058))))

(declare-fun b!2950137 () Bool)

(declare-fun tp!943060 () Bool)

(declare-fun tp!943059 () Bool)

(assert (=> b!2950137 (= e!1858144 (and tp!943060 tp!943059))))

(assert (=> b!2949667 (= tp!943025 e!1858144)))

(assert (= (and b!2949667 (is-ElementMatch!9148 (reg!9477 r!17423))) b!2950134))

(assert (= (and b!2949667 (is-Concat!14469 (reg!9477 r!17423))) b!2950135))

(assert (= (and b!2949667 (is-Star!9148 (reg!9477 r!17423))) b!2950136))

(assert (= (and b!2949667 (is-Union!9148 (reg!9477 r!17423))) b!2950137))

(declare-fun b!2950138 () Bool)

(declare-fun e!1858145 () Bool)

(assert (=> b!2950138 (= e!1858145 tp_is_empty!15859)))

(declare-fun b!2950140 () Bool)

(declare-fun tp!943061 () Bool)

(assert (=> b!2950140 (= e!1858145 tp!943061)))

(declare-fun b!2950139 () Bool)

(declare-fun tp!943062 () Bool)

(declare-fun tp!943063 () Bool)

(assert (=> b!2950139 (= e!1858145 (and tp!943062 tp!943063))))

(declare-fun b!2950141 () Bool)

(declare-fun tp!943065 () Bool)

(declare-fun tp!943064 () Bool)

(assert (=> b!2950141 (= e!1858145 (and tp!943065 tp!943064))))

(assert (=> b!2949664 (= tp!943023 e!1858145)))

(assert (= (and b!2949664 (is-ElementMatch!9148 (regOne!18808 r!17423))) b!2950138))

(assert (= (and b!2949664 (is-Concat!14469 (regOne!18808 r!17423))) b!2950139))

(assert (= (and b!2949664 (is-Star!9148 (regOne!18808 r!17423))) b!2950140))

(assert (= (and b!2949664 (is-Union!9148 (regOne!18808 r!17423))) b!2950141))

(declare-fun b!2950142 () Bool)

(declare-fun e!1858146 () Bool)

(assert (=> b!2950142 (= e!1858146 tp_is_empty!15859)))

(declare-fun b!2950144 () Bool)

(declare-fun tp!943066 () Bool)

(assert (=> b!2950144 (= e!1858146 tp!943066)))

(declare-fun b!2950143 () Bool)

(declare-fun tp!943067 () Bool)

(declare-fun tp!943068 () Bool)

(assert (=> b!2950143 (= e!1858146 (and tp!943067 tp!943068))))

(declare-fun b!2950145 () Bool)

(declare-fun tp!943070 () Bool)

(declare-fun tp!943069 () Bool)

(assert (=> b!2950145 (= e!1858146 (and tp!943070 tp!943069))))

(assert (=> b!2949664 (= tp!943026 e!1858146)))

(assert (= (and b!2949664 (is-ElementMatch!9148 (regTwo!18808 r!17423))) b!2950142))

(assert (= (and b!2949664 (is-Concat!14469 (regTwo!18808 r!17423))) b!2950143))

(assert (= (and b!2949664 (is-Star!9148 (regTwo!18808 r!17423))) b!2950144))

(assert (= (and b!2949664 (is-Union!9148 (regTwo!18808 r!17423))) b!2950145))

(declare-fun b!2950146 () Bool)

(declare-fun e!1858147 () Bool)

(assert (=> b!2950146 (= e!1858147 tp_is_empty!15859)))

(declare-fun b!2950148 () Bool)

(declare-fun tp!943071 () Bool)

(assert (=> b!2950148 (= e!1858147 tp!943071)))

(declare-fun b!2950147 () Bool)

(declare-fun tp!943072 () Bool)

(declare-fun tp!943073 () Bool)

(assert (=> b!2950147 (= e!1858147 (and tp!943072 tp!943073))))

(declare-fun b!2950149 () Bool)

(declare-fun tp!943075 () Bool)

(declare-fun tp!943074 () Bool)

(assert (=> b!2950149 (= e!1858147 (and tp!943075 tp!943074))))

(assert (=> b!2949663 (= tp!943027 e!1858147)))

(assert (= (and b!2949663 (is-ElementMatch!9148 (regOne!18809 r!17423))) b!2950146))

(assert (= (and b!2949663 (is-Concat!14469 (regOne!18809 r!17423))) b!2950147))

(assert (= (and b!2949663 (is-Star!9148 (regOne!18809 r!17423))) b!2950148))

(assert (= (and b!2949663 (is-Union!9148 (regOne!18809 r!17423))) b!2950149))

(declare-fun b!2950150 () Bool)

(declare-fun e!1858148 () Bool)

(assert (=> b!2950150 (= e!1858148 tp_is_empty!15859)))

(declare-fun b!2950152 () Bool)

(declare-fun tp!943076 () Bool)

(assert (=> b!2950152 (= e!1858148 tp!943076)))

(declare-fun b!2950151 () Bool)

(declare-fun tp!943077 () Bool)

(declare-fun tp!943078 () Bool)

(assert (=> b!2950151 (= e!1858148 (and tp!943077 tp!943078))))

(declare-fun b!2950153 () Bool)

(declare-fun tp!943080 () Bool)

(declare-fun tp!943079 () Bool)

(assert (=> b!2950153 (= e!1858148 (and tp!943080 tp!943079))))

(assert (=> b!2949663 (= tp!943024 e!1858148)))

(assert (= (and b!2949663 (is-ElementMatch!9148 (regTwo!18809 r!17423))) b!2950150))

(assert (= (and b!2949663 (is-Concat!14469 (regTwo!18809 r!17423))) b!2950151))

(assert (= (and b!2949663 (is-Star!9148 (regTwo!18809 r!17423))) b!2950152))

(assert (= (and b!2949663 (is-Union!9148 (regTwo!18809 r!17423))) b!2950153))

(declare-fun b!2950158 () Bool)

(declare-fun e!1858151 () Bool)

(declare-fun tp!943083 () Bool)

(assert (=> b!2950158 (= e!1858151 (and tp_is_empty!15859 tp!943083))))

(assert (=> b!2949665 (= tp!943022 e!1858151)))

(assert (= (and b!2949665 (is-Cons!34889 (t!234078 s!11993))) b!2950158))

(push 1)

(assert (not bm!194915))

(assert (not b!2950147))

(assert (not bm!194949))

(assert (not d!840920))

(assert (not bm!194877))

(assert (not b!2950149))

(assert (not bm!194956))

(assert (not b!2949944))

(assert (not b!2950152))

(assert (not d!840908))

(assert (not b!2949822))

(assert (not b!2950135))

(assert (not b!2950104))

(assert (not bm!194914))

(assert (not d!840930))

(assert (not d!840910))

(assert (not d!840888))

(assert (not b!2949967))

(assert (not b!2949961))

(assert (not bm!194891))

(assert (not b!2950141))

(assert (not b!2950137))

(assert (not b!2949855))

(assert (not b!2949850))

(assert (not b!2950079))

(assert (not d!840890))

(assert (not bm!194912))

(assert (not b!2950090))

(assert (not d!840904))

(assert (not bm!194918))

(assert (not b!2950158))

(assert (not bm!194957))

(assert (not b!2949818))

(assert (not b!2949971))

(assert (not b!2949966))

(assert (not bm!194959))

(assert (not b!2950153))

(assert (not b!2949851))

(assert (not d!840898))

(assert (not bm!194955))

(assert (not bm!194960))

(assert (not b!2950115))

(assert (not bm!194917))

(assert (not bm!194953))

(assert (not b!2949856))

(assert (not b!2949813))

(assert (not b!2949812))

(assert (not bm!194952))

(assert (not b!2950144))

(assert (not bm!194886))

(assert (not b!2949968))

(assert (not b!2950148))

(assert (not d!840924))

(assert (not b!2949819))

(assert (not b!2949753))

(assert (not bm!194948))

(assert (not b!2949863))

(assert tp_is_empty!15859)

(assert (not b!2949860))

(assert (not b!2949858))

(assert (not b!2950140))

(assert (not b!2950139))

(assert (not b!2949857))

(assert (not b!2949962))

(assert (not bm!194876))

(assert (not b!2949756))

(assert (not b!2950151))

(assert (not b!2950145))

(assert (not bm!194890))

(assert (not b!2949953))

(assert (not b!2949817))

(assert (not b!2950136))

(assert (not b!2950143))

(assert (not d!840902))

(assert (not bm!194950))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

