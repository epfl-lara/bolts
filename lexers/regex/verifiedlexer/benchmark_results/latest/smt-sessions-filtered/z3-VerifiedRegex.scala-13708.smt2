; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733304 () Bool)

(assert start!733304)

(declare-fun b!7608793 () Bool)

(declare-fun res!3046459 () Bool)

(declare-fun e!4525578 () Bool)

(assert (=> b!7608793 (=> (not res!3046459) (not e!4525578))))

(declare-datatypes ((C!40748 0))(
  ( (C!40749 (val!30814 Int)) )
))
(declare-datatypes ((Regex!20211 0))(
  ( (ElementMatch!20211 (c!1403074 C!40748)) (Concat!29056 (regOne!40934 Regex!20211) (regTwo!40934 Regex!20211)) (EmptyExpr!20211) (Star!20211 (reg!20540 Regex!20211)) (EmptyLang!20211) (Union!20211 (regOne!40935 Regex!20211) (regTwo!40935 Regex!20211)) )
))
(declare-fun r!19218 () Regex!20211)

(declare-fun validRegex!10633 (Regex!20211) Bool)

(assert (=> b!7608793 (= res!3046459 (validRegex!10633 (regOne!40935 r!19218)))))

(declare-fun b!7608794 () Bool)

(declare-fun res!3046458 () Bool)

(assert (=> b!7608794 (=> (not res!3046458) (not e!4525578))))

(declare-fun nullable!8832 (Regex!20211) Bool)

(assert (=> b!7608794 (= res!3046458 (nullable!8832 r!19218))))

(declare-fun b!7608795 () Bool)

(declare-fun e!4525579 () Bool)

(declare-fun tp!2219768 () Bool)

(declare-fun tp!2219766 () Bool)

(assert (=> b!7608795 (= e!4525579 (and tp!2219768 tp!2219766))))

(declare-fun b!7608796 () Bool)

(declare-fun res!3046460 () Bool)

(assert (=> b!7608796 (=> (not res!3046460) (not e!4525578))))

(assert (=> b!7608796 (= res!3046460 (nullable!8832 (regOne!40935 r!19218)))))

(declare-fun b!7608797 () Bool)

(declare-fun tp_is_empty!50777 () Bool)

(assert (=> b!7608797 (= e!4525579 tp_is_empty!50777)))

(declare-fun b!7608798 () Bool)

(declare-fun lostCause!1895 (Regex!20211) Bool)

(assert (=> b!7608798 (= e!4525578 (not (not (lostCause!1895 r!19218))))))

(assert (=> b!7608798 (not (lostCause!1895 (regOne!40935 r!19218)))))

(declare-datatypes ((Unit!167266 0))(
  ( (Unit!167267) )
))
(declare-fun lt!2654960 () Unit!167266)

(declare-fun lemmaNullableThenNotLostCause!106 (Regex!20211) Unit!167266)

(assert (=> b!7608798 (= lt!2654960 (lemmaNullableThenNotLostCause!106 (regOne!40935 r!19218)))))

(declare-fun b!7608799 () Bool)

(declare-fun tp!2219765 () Bool)

(assert (=> b!7608799 (= e!4525579 tp!2219765)))

(declare-fun b!7608800 () Bool)

(declare-fun tp!2219769 () Bool)

(declare-fun tp!2219767 () Bool)

(assert (=> b!7608800 (= e!4525579 (and tp!2219769 tp!2219767))))

(declare-fun b!7608801 () Bool)

(declare-fun res!3046457 () Bool)

(assert (=> b!7608801 (=> (not res!3046457) (not e!4525578))))

(get-info :version)

(assert (=> b!7608801 (= res!3046457 (and (not ((_ is ElementMatch!20211) r!19218)) (not ((_ is Star!20211) r!19218)) ((_ is Union!20211) r!19218)))))

(declare-fun res!3046456 () Bool)

(assert (=> start!733304 (=> (not res!3046456) (not e!4525578))))

(assert (=> start!733304 (= res!3046456 (validRegex!10633 r!19218))))

(assert (=> start!733304 e!4525578))

(assert (=> start!733304 e!4525579))

(assert (= (and start!733304 res!3046456) b!7608794))

(assert (= (and b!7608794 res!3046458) b!7608801))

(assert (= (and b!7608801 res!3046457) b!7608796))

(assert (= (and b!7608796 res!3046460) b!7608793))

(assert (= (and b!7608793 res!3046459) b!7608798))

(assert (= (and start!733304 ((_ is ElementMatch!20211) r!19218)) b!7608797))

(assert (= (and start!733304 ((_ is Concat!29056) r!19218)) b!7608800))

(assert (= (and start!733304 ((_ is Star!20211) r!19218)) b!7608799))

(assert (= (and start!733304 ((_ is Union!20211) r!19218)) b!7608795))

(declare-fun m!8147500 () Bool)

(assert (=> b!7608796 m!8147500))

(declare-fun m!8147502 () Bool)

(assert (=> start!733304 m!8147502))

(declare-fun m!8147504 () Bool)

(assert (=> b!7608794 m!8147504))

(declare-fun m!8147506 () Bool)

(assert (=> b!7608798 m!8147506))

(declare-fun m!8147508 () Bool)

(assert (=> b!7608798 m!8147508))

(declare-fun m!8147510 () Bool)

(assert (=> b!7608798 m!8147510))

(declare-fun m!8147512 () Bool)

(assert (=> b!7608793 m!8147512))

(check-sat (not b!7608798) (not b!7608793) (not b!7608795) (not b!7608794) (not b!7608796) (not b!7608799) (not start!733304) tp_is_empty!50777 (not b!7608800))
(check-sat)
(get-model)

(declare-fun call!698689 () Bool)

(declare-fun c!1403083 () Bool)

(declare-fun c!1403084 () Bool)

(declare-fun bm!698684 () Bool)

(assert (=> bm!698684 (= call!698689 (validRegex!10633 (ite c!1403084 (reg!20540 r!19218) (ite c!1403083 (regOne!40935 r!19218) (regOne!40934 r!19218)))))))

(declare-fun bm!698685 () Bool)

(declare-fun call!698690 () Bool)

(assert (=> bm!698685 (= call!698690 (validRegex!10633 (ite c!1403083 (regTwo!40935 r!19218) (regTwo!40934 r!19218))))))

(declare-fun b!7608838 () Bool)

(declare-fun e!4525612 () Bool)

(declare-fun e!4525614 () Bool)

(assert (=> b!7608838 (= e!4525612 e!4525614)))

(assert (=> b!7608838 (= c!1403084 ((_ is Star!20211) r!19218))))

(declare-fun b!7608839 () Bool)

(declare-fun e!4525610 () Bool)

(declare-fun e!4525609 () Bool)

(assert (=> b!7608839 (= e!4525610 e!4525609)))

(declare-fun res!3046484 () Bool)

(assert (=> b!7608839 (=> (not res!3046484) (not e!4525609))))

(declare-fun call!698691 () Bool)

(assert (=> b!7608839 (= res!3046484 call!698691)))

(declare-fun bm!698686 () Bool)

(assert (=> bm!698686 (= call!698691 call!698689)))

(declare-fun d!2322041 () Bool)

(declare-fun res!3046481 () Bool)

(assert (=> d!2322041 (=> res!3046481 e!4525612)))

(assert (=> d!2322041 (= res!3046481 ((_ is ElementMatch!20211) r!19218))))

(assert (=> d!2322041 (= (validRegex!10633 r!19218) e!4525612)))

(declare-fun b!7608840 () Bool)

(declare-fun res!3046485 () Bool)

(assert (=> b!7608840 (=> res!3046485 e!4525610)))

(assert (=> b!7608840 (= res!3046485 (not ((_ is Concat!29056) r!19218)))))

(declare-fun e!4525613 () Bool)

(assert (=> b!7608840 (= e!4525613 e!4525610)))

(declare-fun b!7608841 () Bool)

(declare-fun res!3046482 () Bool)

(declare-fun e!4525608 () Bool)

(assert (=> b!7608841 (=> (not res!3046482) (not e!4525608))))

(assert (=> b!7608841 (= res!3046482 call!698691)))

(assert (=> b!7608841 (= e!4525613 e!4525608)))

(declare-fun b!7608842 () Bool)

(assert (=> b!7608842 (= e!4525614 e!4525613)))

(assert (=> b!7608842 (= c!1403083 ((_ is Union!20211) r!19218))))

(declare-fun b!7608843 () Bool)

(declare-fun e!4525611 () Bool)

(assert (=> b!7608843 (= e!4525614 e!4525611)))

(declare-fun res!3046483 () Bool)

(assert (=> b!7608843 (= res!3046483 (not (nullable!8832 (reg!20540 r!19218))))))

(assert (=> b!7608843 (=> (not res!3046483) (not e!4525611))))

(declare-fun b!7608844 () Bool)

(assert (=> b!7608844 (= e!4525609 call!698690)))

(declare-fun b!7608845 () Bool)

(assert (=> b!7608845 (= e!4525611 call!698689)))

(declare-fun b!7608846 () Bool)

(assert (=> b!7608846 (= e!4525608 call!698690)))

(assert (= (and d!2322041 (not res!3046481)) b!7608838))

(assert (= (and b!7608838 c!1403084) b!7608843))

(assert (= (and b!7608838 (not c!1403084)) b!7608842))

(assert (= (and b!7608843 res!3046483) b!7608845))

(assert (= (and b!7608842 c!1403083) b!7608841))

(assert (= (and b!7608842 (not c!1403083)) b!7608840))

(assert (= (and b!7608841 res!3046482) b!7608846))

(assert (= (and b!7608840 (not res!3046485)) b!7608839))

(assert (= (and b!7608839 res!3046484) b!7608844))

(assert (= (or b!7608841 b!7608839) bm!698686))

(assert (= (or b!7608846 b!7608844) bm!698685))

(assert (= (or b!7608845 bm!698686) bm!698684))

(declare-fun m!8147514 () Bool)

(assert (=> bm!698684 m!8147514))

(declare-fun m!8147516 () Bool)

(assert (=> bm!698685 m!8147516))

(declare-fun m!8147518 () Bool)

(assert (=> b!7608843 m!8147518))

(assert (=> start!733304 d!2322041))

(declare-fun d!2322045 () Bool)

(declare-fun nullableFct!3515 (Regex!20211) Bool)

(assert (=> d!2322045 (= (nullable!8832 (regOne!40935 r!19218)) (nullableFct!3515 (regOne!40935 r!19218)))))

(declare-fun bs!1942799 () Bool)

(assert (= bs!1942799 d!2322045))

(declare-fun m!8147520 () Bool)

(assert (=> bs!1942799 m!8147520))

(assert (=> b!7608796 d!2322045))

(declare-fun d!2322047 () Bool)

(assert (=> d!2322047 (= (nullable!8832 r!19218) (nullableFct!3515 r!19218))))

(declare-fun bs!1942800 () Bool)

(assert (= bs!1942800 d!2322047))

(declare-fun m!8147522 () Bool)

(assert (=> bs!1942800 m!8147522))

(assert (=> b!7608794 d!2322047))

(declare-fun bm!698687 () Bool)

(declare-fun call!698692 () Bool)

(declare-fun c!1403085 () Bool)

(declare-fun c!1403086 () Bool)

(assert (=> bm!698687 (= call!698692 (validRegex!10633 (ite c!1403086 (reg!20540 (regOne!40935 r!19218)) (ite c!1403085 (regOne!40935 (regOne!40935 r!19218)) (regOne!40934 (regOne!40935 r!19218))))))))

(declare-fun bm!698688 () Bool)

(declare-fun call!698693 () Bool)

(assert (=> bm!698688 (= call!698693 (validRegex!10633 (ite c!1403085 (regTwo!40935 (regOne!40935 r!19218)) (regTwo!40934 (regOne!40935 r!19218)))))))

(declare-fun b!7608847 () Bool)

(declare-fun e!4525619 () Bool)

(declare-fun e!4525621 () Bool)

(assert (=> b!7608847 (= e!4525619 e!4525621)))

(assert (=> b!7608847 (= c!1403086 ((_ is Star!20211) (regOne!40935 r!19218)))))

(declare-fun b!7608848 () Bool)

(declare-fun e!4525617 () Bool)

(declare-fun e!4525616 () Bool)

(assert (=> b!7608848 (= e!4525617 e!4525616)))

(declare-fun res!3046489 () Bool)

(assert (=> b!7608848 (=> (not res!3046489) (not e!4525616))))

(declare-fun call!698694 () Bool)

(assert (=> b!7608848 (= res!3046489 call!698694)))

(declare-fun bm!698689 () Bool)

(assert (=> bm!698689 (= call!698694 call!698692)))

(declare-fun d!2322049 () Bool)

(declare-fun res!3046486 () Bool)

(assert (=> d!2322049 (=> res!3046486 e!4525619)))

(assert (=> d!2322049 (= res!3046486 ((_ is ElementMatch!20211) (regOne!40935 r!19218)))))

(assert (=> d!2322049 (= (validRegex!10633 (regOne!40935 r!19218)) e!4525619)))

(declare-fun b!7608849 () Bool)

(declare-fun res!3046490 () Bool)

(assert (=> b!7608849 (=> res!3046490 e!4525617)))

(assert (=> b!7608849 (= res!3046490 (not ((_ is Concat!29056) (regOne!40935 r!19218))))))

(declare-fun e!4525620 () Bool)

(assert (=> b!7608849 (= e!4525620 e!4525617)))

(declare-fun b!7608850 () Bool)

(declare-fun res!3046487 () Bool)

(declare-fun e!4525615 () Bool)

(assert (=> b!7608850 (=> (not res!3046487) (not e!4525615))))

(assert (=> b!7608850 (= res!3046487 call!698694)))

(assert (=> b!7608850 (= e!4525620 e!4525615)))

(declare-fun b!7608851 () Bool)

(assert (=> b!7608851 (= e!4525621 e!4525620)))

(assert (=> b!7608851 (= c!1403085 ((_ is Union!20211) (regOne!40935 r!19218)))))

(declare-fun b!7608852 () Bool)

(declare-fun e!4525618 () Bool)

(assert (=> b!7608852 (= e!4525621 e!4525618)))

(declare-fun res!3046488 () Bool)

(assert (=> b!7608852 (= res!3046488 (not (nullable!8832 (reg!20540 (regOne!40935 r!19218)))))))

(assert (=> b!7608852 (=> (not res!3046488) (not e!4525618))))

(declare-fun b!7608853 () Bool)

(assert (=> b!7608853 (= e!4525616 call!698693)))

(declare-fun b!7608854 () Bool)

(assert (=> b!7608854 (= e!4525618 call!698692)))

(declare-fun b!7608855 () Bool)

(assert (=> b!7608855 (= e!4525615 call!698693)))

(assert (= (and d!2322049 (not res!3046486)) b!7608847))

(assert (= (and b!7608847 c!1403086) b!7608852))

(assert (= (and b!7608847 (not c!1403086)) b!7608851))

(assert (= (and b!7608852 res!3046488) b!7608854))

(assert (= (and b!7608851 c!1403085) b!7608850))

(assert (= (and b!7608851 (not c!1403085)) b!7608849))

(assert (= (and b!7608850 res!3046487) b!7608855))

(assert (= (and b!7608849 (not res!3046490)) b!7608848))

(assert (= (and b!7608848 res!3046489) b!7608853))

(assert (= (or b!7608850 b!7608848) bm!698689))

(assert (= (or b!7608855 b!7608853) bm!698688))

(assert (= (or b!7608854 bm!698689) bm!698687))

(declare-fun m!8147524 () Bool)

(assert (=> bm!698687 m!8147524))

(declare-fun m!8147526 () Bool)

(assert (=> bm!698688 m!8147526))

(declare-fun m!8147528 () Bool)

(assert (=> b!7608852 m!8147528))

(assert (=> b!7608793 d!2322049))

(declare-fun d!2322051 () Bool)

(declare-fun lostCauseFct!542 (Regex!20211) Bool)

(assert (=> d!2322051 (= (lostCause!1895 r!19218) (lostCauseFct!542 r!19218))))

(declare-fun bs!1942803 () Bool)

(assert (= bs!1942803 d!2322051))

(declare-fun m!8147540 () Bool)

(assert (=> bs!1942803 m!8147540))

(assert (=> b!7608798 d!2322051))

(declare-fun d!2322059 () Bool)

(assert (=> d!2322059 (= (lostCause!1895 (regOne!40935 r!19218)) (lostCauseFct!542 (regOne!40935 r!19218)))))

(declare-fun bs!1942804 () Bool)

(assert (= bs!1942804 d!2322059))

(declare-fun m!8147542 () Bool)

(assert (=> bs!1942804 m!8147542))

(assert (=> b!7608798 d!2322059))

(declare-fun d!2322061 () Bool)

(assert (=> d!2322061 (not (lostCause!1895 (regOne!40935 r!19218)))))

(declare-fun lt!2654963 () Unit!167266)

(declare-fun choose!58739 (Regex!20211) Unit!167266)

(assert (=> d!2322061 (= lt!2654963 (choose!58739 (regOne!40935 r!19218)))))

(assert (=> d!2322061 (validRegex!10633 (regOne!40935 r!19218))))

(assert (=> d!2322061 (= (lemmaNullableThenNotLostCause!106 (regOne!40935 r!19218)) lt!2654963)))

(declare-fun bs!1942807 () Bool)

(assert (= bs!1942807 d!2322061))

(assert (=> bs!1942807 m!8147508))

(declare-fun m!8147548 () Bool)

(assert (=> bs!1942807 m!8147548))

(assert (=> bs!1942807 m!8147512))

(assert (=> b!7608798 d!2322061))

(declare-fun b!7608884 () Bool)

(declare-fun e!4525638 () Bool)

(assert (=> b!7608884 (= e!4525638 tp_is_empty!50777)))

(declare-fun b!7608887 () Bool)

(declare-fun tp!2219780 () Bool)

(declare-fun tp!2219783 () Bool)

(assert (=> b!7608887 (= e!4525638 (and tp!2219780 tp!2219783))))

(declare-fun b!7608885 () Bool)

(declare-fun tp!2219784 () Bool)

(declare-fun tp!2219782 () Bool)

(assert (=> b!7608885 (= e!4525638 (and tp!2219784 tp!2219782))))

(assert (=> b!7608795 (= tp!2219768 e!4525638)))

(declare-fun b!7608886 () Bool)

(declare-fun tp!2219781 () Bool)

(assert (=> b!7608886 (= e!4525638 tp!2219781)))

(assert (= (and b!7608795 ((_ is ElementMatch!20211) (regOne!40935 r!19218))) b!7608884))

(assert (= (and b!7608795 ((_ is Concat!29056) (regOne!40935 r!19218))) b!7608885))

(assert (= (and b!7608795 ((_ is Star!20211) (regOne!40935 r!19218))) b!7608886))

(assert (= (and b!7608795 ((_ is Union!20211) (regOne!40935 r!19218))) b!7608887))

(declare-fun b!7608888 () Bool)

(declare-fun e!4525639 () Bool)

(assert (=> b!7608888 (= e!4525639 tp_is_empty!50777)))

(declare-fun b!7608891 () Bool)

(declare-fun tp!2219785 () Bool)

(declare-fun tp!2219788 () Bool)

(assert (=> b!7608891 (= e!4525639 (and tp!2219785 tp!2219788))))

(declare-fun b!7608889 () Bool)

(declare-fun tp!2219789 () Bool)

(declare-fun tp!2219787 () Bool)

(assert (=> b!7608889 (= e!4525639 (and tp!2219789 tp!2219787))))

(assert (=> b!7608795 (= tp!2219766 e!4525639)))

(declare-fun b!7608890 () Bool)

(declare-fun tp!2219786 () Bool)

(assert (=> b!7608890 (= e!4525639 tp!2219786)))

(assert (= (and b!7608795 ((_ is ElementMatch!20211) (regTwo!40935 r!19218))) b!7608888))

(assert (= (and b!7608795 ((_ is Concat!29056) (regTwo!40935 r!19218))) b!7608889))

(assert (= (and b!7608795 ((_ is Star!20211) (regTwo!40935 r!19218))) b!7608890))

(assert (= (and b!7608795 ((_ is Union!20211) (regTwo!40935 r!19218))) b!7608891))

(declare-fun b!7608896 () Bool)

(declare-fun e!4525642 () Bool)

(assert (=> b!7608896 (= e!4525642 tp_is_empty!50777)))

(declare-fun b!7608899 () Bool)

(declare-fun tp!2219790 () Bool)

(declare-fun tp!2219793 () Bool)

(assert (=> b!7608899 (= e!4525642 (and tp!2219790 tp!2219793))))

(declare-fun b!7608897 () Bool)

(declare-fun tp!2219794 () Bool)

(declare-fun tp!2219792 () Bool)

(assert (=> b!7608897 (= e!4525642 (and tp!2219794 tp!2219792))))

(assert (=> b!7608800 (= tp!2219769 e!4525642)))

(declare-fun b!7608898 () Bool)

(declare-fun tp!2219791 () Bool)

(assert (=> b!7608898 (= e!4525642 tp!2219791)))

(assert (= (and b!7608800 ((_ is ElementMatch!20211) (regOne!40934 r!19218))) b!7608896))

(assert (= (and b!7608800 ((_ is Concat!29056) (regOne!40934 r!19218))) b!7608897))

(assert (= (and b!7608800 ((_ is Star!20211) (regOne!40934 r!19218))) b!7608898))

(assert (= (and b!7608800 ((_ is Union!20211) (regOne!40934 r!19218))) b!7608899))

(declare-fun b!7608904 () Bool)

(declare-fun e!4525643 () Bool)

(assert (=> b!7608904 (= e!4525643 tp_is_empty!50777)))

(declare-fun b!7608907 () Bool)

(declare-fun tp!2219799 () Bool)

(declare-fun tp!2219802 () Bool)

(assert (=> b!7608907 (= e!4525643 (and tp!2219799 tp!2219802))))

(declare-fun b!7608905 () Bool)

(declare-fun tp!2219803 () Bool)

(declare-fun tp!2219801 () Bool)

(assert (=> b!7608905 (= e!4525643 (and tp!2219803 tp!2219801))))

(assert (=> b!7608800 (= tp!2219767 e!4525643)))

(declare-fun b!7608906 () Bool)

(declare-fun tp!2219800 () Bool)

(assert (=> b!7608906 (= e!4525643 tp!2219800)))

(assert (= (and b!7608800 ((_ is ElementMatch!20211) (regTwo!40934 r!19218))) b!7608904))

(assert (= (and b!7608800 ((_ is Concat!29056) (regTwo!40934 r!19218))) b!7608905))

(assert (= (and b!7608800 ((_ is Star!20211) (regTwo!40934 r!19218))) b!7608906))

(assert (= (and b!7608800 ((_ is Union!20211) (regTwo!40934 r!19218))) b!7608907))

(declare-fun b!7608910 () Bool)

(declare-fun e!4525644 () Bool)

(assert (=> b!7608910 (= e!4525644 tp_is_empty!50777)))

(declare-fun b!7608913 () Bool)

(declare-fun tp!2219810 () Bool)

(declare-fun tp!2219813 () Bool)

(assert (=> b!7608913 (= e!4525644 (and tp!2219810 tp!2219813))))

(declare-fun b!7608911 () Bool)

(declare-fun tp!2219814 () Bool)

(declare-fun tp!2219812 () Bool)

(assert (=> b!7608911 (= e!4525644 (and tp!2219814 tp!2219812))))

(assert (=> b!7608799 (= tp!2219765 e!4525644)))

(declare-fun b!7608912 () Bool)

(declare-fun tp!2219811 () Bool)

(assert (=> b!7608912 (= e!4525644 tp!2219811)))

(assert (= (and b!7608799 ((_ is ElementMatch!20211) (reg!20540 r!19218))) b!7608910))

(assert (= (and b!7608799 ((_ is Concat!29056) (reg!20540 r!19218))) b!7608911))

(assert (= (and b!7608799 ((_ is Star!20211) (reg!20540 r!19218))) b!7608912))

(assert (= (and b!7608799 ((_ is Union!20211) (reg!20540 r!19218))) b!7608913))

(check-sat (not b!7608843) (not b!7608886) (not b!7608905) (not b!7608891) (not b!7608889) (not b!7608852) (not b!7608913) (not d!2322059) (not d!2322047) (not bm!698687) (not b!7608912) (not b!7608907) (not d!2322045) (not b!7608885) (not bm!698684) (not b!7608898) (not d!2322061) (not b!7608906) tp_is_empty!50777 (not b!7608911) (not b!7608897) (not bm!698688) (not d!2322051) (not bm!698685) (not b!7608890) (not b!7608899) (not b!7608887))
(check-sat)
(get-model)

(declare-fun d!2322069 () Bool)

(assert (=> d!2322069 (= (nullable!8832 (reg!20540 r!19218)) (nullableFct!3515 (reg!20540 r!19218)))))

(declare-fun bs!1942809 () Bool)

(assert (= bs!1942809 d!2322069))

(declare-fun m!8147558 () Bool)

(assert (=> bs!1942809 m!8147558))

(assert (=> b!7608843 d!2322069))

(declare-fun b!7608948 () Bool)

(declare-fun e!4525667 () Bool)

(declare-fun call!698706 () Bool)

(assert (=> b!7608948 (= e!4525667 call!698706)))

(declare-fun b!7608949 () Bool)

(declare-fun e!4525666 () Bool)

(assert (=> b!7608949 (= e!4525666 e!4525667)))

(declare-fun res!3046511 () Bool)

(declare-fun call!698705 () Bool)

(assert (=> b!7608949 (= res!3046511 call!698705)))

(assert (=> b!7608949 (=> res!3046511 e!4525667)))

(declare-fun bm!698700 () Bool)

(declare-fun c!1403093 () Bool)

(assert (=> bm!698700 (= call!698705 (nullable!8832 (ite c!1403093 (regOne!40935 (regOne!40935 r!19218)) (regTwo!40934 (regOne!40935 r!19218)))))))

(declare-fun b!7608950 () Bool)

(declare-fun e!4525663 () Bool)

(declare-fun e!4525665 () Bool)

(assert (=> b!7608950 (= e!4525663 e!4525665)))

(declare-fun res!3046514 () Bool)

(assert (=> b!7608950 (=> res!3046514 e!4525665)))

(assert (=> b!7608950 (= res!3046514 ((_ is Star!20211) (regOne!40935 r!19218)))))

(declare-fun b!7608951 () Bool)

(assert (=> b!7608951 (= e!4525665 e!4525666)))

(assert (=> b!7608951 (= c!1403093 ((_ is Union!20211) (regOne!40935 r!19218)))))

(declare-fun d!2322071 () Bool)

(declare-fun res!3046515 () Bool)

(declare-fun e!4525662 () Bool)

(assert (=> d!2322071 (=> res!3046515 e!4525662)))

(assert (=> d!2322071 (= res!3046515 ((_ is EmptyExpr!20211) (regOne!40935 r!19218)))))

(assert (=> d!2322071 (= (nullableFct!3515 (regOne!40935 r!19218)) e!4525662)))

(declare-fun b!7608952 () Bool)

(assert (=> b!7608952 (= e!4525662 e!4525663)))

(declare-fun res!3046513 () Bool)

(assert (=> b!7608952 (=> (not res!3046513) (not e!4525663))))

(assert (=> b!7608952 (= res!3046513 (and (not ((_ is EmptyLang!20211) (regOne!40935 r!19218))) (not ((_ is ElementMatch!20211) (regOne!40935 r!19218)))))))

(declare-fun b!7608953 () Bool)

(declare-fun e!4525664 () Bool)

(assert (=> b!7608953 (= e!4525664 call!698705)))

(declare-fun bm!698701 () Bool)

(assert (=> bm!698701 (= call!698706 (nullable!8832 (ite c!1403093 (regTwo!40935 (regOne!40935 r!19218)) (regOne!40934 (regOne!40935 r!19218)))))))

(declare-fun b!7608954 () Bool)

(assert (=> b!7608954 (= e!4525666 e!4525664)))

(declare-fun res!3046512 () Bool)

(assert (=> b!7608954 (= res!3046512 call!698706)))

(assert (=> b!7608954 (=> (not res!3046512) (not e!4525664))))

(assert (= (and d!2322071 (not res!3046515)) b!7608952))

(assert (= (and b!7608952 res!3046513) b!7608950))

(assert (= (and b!7608950 (not res!3046514)) b!7608951))

(assert (= (and b!7608951 c!1403093) b!7608949))

(assert (= (and b!7608951 (not c!1403093)) b!7608954))

(assert (= (and b!7608949 (not res!3046511)) b!7608948))

(assert (= (and b!7608954 res!3046512) b!7608953))

(assert (= (or b!7608948 b!7608954) bm!698701))

(assert (= (or b!7608949 b!7608953) bm!698700))

(declare-fun m!8147560 () Bool)

(assert (=> bm!698700 m!8147560))

(declare-fun m!8147562 () Bool)

(assert (=> bm!698701 m!8147562))

(assert (=> d!2322045 d!2322071))

(declare-fun c!1403095 () Bool)

(declare-fun bm!698702 () Bool)

(declare-fun call!698707 () Bool)

(declare-fun c!1403094 () Bool)

(assert (=> bm!698702 (= call!698707 (validRegex!10633 (ite c!1403095 (reg!20540 (ite c!1403085 (regTwo!40935 (regOne!40935 r!19218)) (regTwo!40934 (regOne!40935 r!19218)))) (ite c!1403094 (regOne!40935 (ite c!1403085 (regTwo!40935 (regOne!40935 r!19218)) (regTwo!40934 (regOne!40935 r!19218)))) (regOne!40934 (ite c!1403085 (regTwo!40935 (regOne!40935 r!19218)) (regTwo!40934 (regOne!40935 r!19218))))))))))

(declare-fun bm!698703 () Bool)

(declare-fun call!698708 () Bool)

(assert (=> bm!698703 (= call!698708 (validRegex!10633 (ite c!1403094 (regTwo!40935 (ite c!1403085 (regTwo!40935 (regOne!40935 r!19218)) (regTwo!40934 (regOne!40935 r!19218)))) (regTwo!40934 (ite c!1403085 (regTwo!40935 (regOne!40935 r!19218)) (regTwo!40934 (regOne!40935 r!19218)))))))))

(declare-fun b!7608955 () Bool)

(declare-fun e!4525672 () Bool)

(declare-fun e!4525674 () Bool)

(assert (=> b!7608955 (= e!4525672 e!4525674)))

(assert (=> b!7608955 (= c!1403095 ((_ is Star!20211) (ite c!1403085 (regTwo!40935 (regOne!40935 r!19218)) (regTwo!40934 (regOne!40935 r!19218)))))))

(declare-fun b!7608956 () Bool)

(declare-fun e!4525670 () Bool)

(declare-fun e!4525669 () Bool)

(assert (=> b!7608956 (= e!4525670 e!4525669)))

(declare-fun res!3046519 () Bool)

(assert (=> b!7608956 (=> (not res!3046519) (not e!4525669))))

(declare-fun call!698709 () Bool)

(assert (=> b!7608956 (= res!3046519 call!698709)))

(declare-fun bm!698704 () Bool)

(assert (=> bm!698704 (= call!698709 call!698707)))

(declare-fun d!2322073 () Bool)

(declare-fun res!3046516 () Bool)

(assert (=> d!2322073 (=> res!3046516 e!4525672)))

(assert (=> d!2322073 (= res!3046516 ((_ is ElementMatch!20211) (ite c!1403085 (regTwo!40935 (regOne!40935 r!19218)) (regTwo!40934 (regOne!40935 r!19218)))))))

(assert (=> d!2322073 (= (validRegex!10633 (ite c!1403085 (regTwo!40935 (regOne!40935 r!19218)) (regTwo!40934 (regOne!40935 r!19218)))) e!4525672)))

(declare-fun b!7608957 () Bool)

(declare-fun res!3046520 () Bool)

(assert (=> b!7608957 (=> res!3046520 e!4525670)))

(assert (=> b!7608957 (= res!3046520 (not ((_ is Concat!29056) (ite c!1403085 (regTwo!40935 (regOne!40935 r!19218)) (regTwo!40934 (regOne!40935 r!19218))))))))

(declare-fun e!4525673 () Bool)

(assert (=> b!7608957 (= e!4525673 e!4525670)))

(declare-fun b!7608958 () Bool)

(declare-fun res!3046517 () Bool)

(declare-fun e!4525668 () Bool)

(assert (=> b!7608958 (=> (not res!3046517) (not e!4525668))))

(assert (=> b!7608958 (= res!3046517 call!698709)))

(assert (=> b!7608958 (= e!4525673 e!4525668)))

(declare-fun b!7608959 () Bool)

(assert (=> b!7608959 (= e!4525674 e!4525673)))

(assert (=> b!7608959 (= c!1403094 ((_ is Union!20211) (ite c!1403085 (regTwo!40935 (regOne!40935 r!19218)) (regTwo!40934 (regOne!40935 r!19218)))))))

(declare-fun b!7608960 () Bool)

(declare-fun e!4525671 () Bool)

(assert (=> b!7608960 (= e!4525674 e!4525671)))

(declare-fun res!3046518 () Bool)

(assert (=> b!7608960 (= res!3046518 (not (nullable!8832 (reg!20540 (ite c!1403085 (regTwo!40935 (regOne!40935 r!19218)) (regTwo!40934 (regOne!40935 r!19218)))))))))

(assert (=> b!7608960 (=> (not res!3046518) (not e!4525671))))

(declare-fun b!7608961 () Bool)

(assert (=> b!7608961 (= e!4525669 call!698708)))

(declare-fun b!7608962 () Bool)

(assert (=> b!7608962 (= e!4525671 call!698707)))

(declare-fun b!7608963 () Bool)

(assert (=> b!7608963 (= e!4525668 call!698708)))

(assert (= (and d!2322073 (not res!3046516)) b!7608955))

(assert (= (and b!7608955 c!1403095) b!7608960))

(assert (= (and b!7608955 (not c!1403095)) b!7608959))

(assert (= (and b!7608960 res!3046518) b!7608962))

(assert (= (and b!7608959 c!1403094) b!7608958))

(assert (= (and b!7608959 (not c!1403094)) b!7608957))

(assert (= (and b!7608958 res!3046517) b!7608963))

(assert (= (and b!7608957 (not res!3046520)) b!7608956))

(assert (= (and b!7608956 res!3046519) b!7608961))

(assert (= (or b!7608958 b!7608956) bm!698704))

(assert (= (or b!7608963 b!7608961) bm!698703))

(assert (= (or b!7608962 bm!698704) bm!698702))

(declare-fun m!8147564 () Bool)

(assert (=> bm!698702 m!8147564))

(declare-fun m!8147566 () Bool)

(assert (=> bm!698703 m!8147566))

(declare-fun m!8147568 () Bool)

(assert (=> b!7608960 m!8147568))

(assert (=> bm!698688 d!2322073))

(declare-fun c!1403097 () Bool)

(declare-fun bm!698705 () Bool)

(declare-fun c!1403096 () Bool)

(declare-fun call!698710 () Bool)

(assert (=> bm!698705 (= call!698710 (validRegex!10633 (ite c!1403097 (reg!20540 (ite c!1403086 (reg!20540 (regOne!40935 r!19218)) (ite c!1403085 (regOne!40935 (regOne!40935 r!19218)) (regOne!40934 (regOne!40935 r!19218))))) (ite c!1403096 (regOne!40935 (ite c!1403086 (reg!20540 (regOne!40935 r!19218)) (ite c!1403085 (regOne!40935 (regOne!40935 r!19218)) (regOne!40934 (regOne!40935 r!19218))))) (regOne!40934 (ite c!1403086 (reg!20540 (regOne!40935 r!19218)) (ite c!1403085 (regOne!40935 (regOne!40935 r!19218)) (regOne!40934 (regOne!40935 r!19218)))))))))))

(declare-fun bm!698706 () Bool)

(declare-fun call!698711 () Bool)

(assert (=> bm!698706 (= call!698711 (validRegex!10633 (ite c!1403096 (regTwo!40935 (ite c!1403086 (reg!20540 (regOne!40935 r!19218)) (ite c!1403085 (regOne!40935 (regOne!40935 r!19218)) (regOne!40934 (regOne!40935 r!19218))))) (regTwo!40934 (ite c!1403086 (reg!20540 (regOne!40935 r!19218)) (ite c!1403085 (regOne!40935 (regOne!40935 r!19218)) (regOne!40934 (regOne!40935 r!19218))))))))))

(declare-fun b!7608964 () Bool)

(declare-fun e!4525679 () Bool)

(declare-fun e!4525681 () Bool)

(assert (=> b!7608964 (= e!4525679 e!4525681)))

(assert (=> b!7608964 (= c!1403097 ((_ is Star!20211) (ite c!1403086 (reg!20540 (regOne!40935 r!19218)) (ite c!1403085 (regOne!40935 (regOne!40935 r!19218)) (regOne!40934 (regOne!40935 r!19218))))))))

(declare-fun b!7608965 () Bool)

(declare-fun e!4525677 () Bool)

(declare-fun e!4525676 () Bool)

(assert (=> b!7608965 (= e!4525677 e!4525676)))

(declare-fun res!3046524 () Bool)

(assert (=> b!7608965 (=> (not res!3046524) (not e!4525676))))

(declare-fun call!698712 () Bool)

(assert (=> b!7608965 (= res!3046524 call!698712)))

(declare-fun bm!698707 () Bool)

(assert (=> bm!698707 (= call!698712 call!698710)))

(declare-fun d!2322075 () Bool)

(declare-fun res!3046521 () Bool)

(assert (=> d!2322075 (=> res!3046521 e!4525679)))

(assert (=> d!2322075 (= res!3046521 ((_ is ElementMatch!20211) (ite c!1403086 (reg!20540 (regOne!40935 r!19218)) (ite c!1403085 (regOne!40935 (regOne!40935 r!19218)) (regOne!40934 (regOne!40935 r!19218))))))))

(assert (=> d!2322075 (= (validRegex!10633 (ite c!1403086 (reg!20540 (regOne!40935 r!19218)) (ite c!1403085 (regOne!40935 (regOne!40935 r!19218)) (regOne!40934 (regOne!40935 r!19218))))) e!4525679)))

(declare-fun b!7608966 () Bool)

(declare-fun res!3046525 () Bool)

(assert (=> b!7608966 (=> res!3046525 e!4525677)))

(assert (=> b!7608966 (= res!3046525 (not ((_ is Concat!29056) (ite c!1403086 (reg!20540 (regOne!40935 r!19218)) (ite c!1403085 (regOne!40935 (regOne!40935 r!19218)) (regOne!40934 (regOne!40935 r!19218)))))))))

(declare-fun e!4525680 () Bool)

(assert (=> b!7608966 (= e!4525680 e!4525677)))

(declare-fun b!7608967 () Bool)

(declare-fun res!3046522 () Bool)

(declare-fun e!4525675 () Bool)

(assert (=> b!7608967 (=> (not res!3046522) (not e!4525675))))

(assert (=> b!7608967 (= res!3046522 call!698712)))

(assert (=> b!7608967 (= e!4525680 e!4525675)))

(declare-fun b!7608968 () Bool)

(assert (=> b!7608968 (= e!4525681 e!4525680)))

(assert (=> b!7608968 (= c!1403096 ((_ is Union!20211) (ite c!1403086 (reg!20540 (regOne!40935 r!19218)) (ite c!1403085 (regOne!40935 (regOne!40935 r!19218)) (regOne!40934 (regOne!40935 r!19218))))))))

(declare-fun b!7608969 () Bool)

(declare-fun e!4525678 () Bool)

(assert (=> b!7608969 (= e!4525681 e!4525678)))

(declare-fun res!3046523 () Bool)

(assert (=> b!7608969 (= res!3046523 (not (nullable!8832 (reg!20540 (ite c!1403086 (reg!20540 (regOne!40935 r!19218)) (ite c!1403085 (regOne!40935 (regOne!40935 r!19218)) (regOne!40934 (regOne!40935 r!19218))))))))))

(assert (=> b!7608969 (=> (not res!3046523) (not e!4525678))))

(declare-fun b!7608970 () Bool)

(assert (=> b!7608970 (= e!4525676 call!698711)))

(declare-fun b!7608971 () Bool)

(assert (=> b!7608971 (= e!4525678 call!698710)))

(declare-fun b!7608972 () Bool)

(assert (=> b!7608972 (= e!4525675 call!698711)))

(assert (= (and d!2322075 (not res!3046521)) b!7608964))

(assert (= (and b!7608964 c!1403097) b!7608969))

(assert (= (and b!7608964 (not c!1403097)) b!7608968))

(assert (= (and b!7608969 res!3046523) b!7608971))

(assert (= (and b!7608968 c!1403096) b!7608967))

(assert (= (and b!7608968 (not c!1403096)) b!7608966))

(assert (= (and b!7608967 res!3046522) b!7608972))

(assert (= (and b!7608966 (not res!3046525)) b!7608965))

(assert (= (and b!7608965 res!3046524) b!7608970))

(assert (= (or b!7608967 b!7608965) bm!698707))

(assert (= (or b!7608972 b!7608970) bm!698706))

(assert (= (or b!7608971 bm!698707) bm!698705))

(declare-fun m!8147570 () Bool)

(assert (=> bm!698705 m!8147570))

(declare-fun m!8147572 () Bool)

(assert (=> bm!698706 m!8147572))

(declare-fun m!8147574 () Bool)

(assert (=> b!7608969 m!8147574))

(assert (=> bm!698687 d!2322075))

(declare-fun b!7608973 () Bool)

(declare-fun e!4525687 () Bool)

(declare-fun call!698714 () Bool)

(assert (=> b!7608973 (= e!4525687 call!698714)))

(declare-fun b!7608974 () Bool)

(declare-fun e!4525686 () Bool)

(assert (=> b!7608974 (= e!4525686 e!4525687)))

(declare-fun res!3046526 () Bool)

(declare-fun call!698713 () Bool)

(assert (=> b!7608974 (= res!3046526 call!698713)))

(assert (=> b!7608974 (=> res!3046526 e!4525687)))

(declare-fun bm!698708 () Bool)

(declare-fun c!1403098 () Bool)

(assert (=> bm!698708 (= call!698713 (nullable!8832 (ite c!1403098 (regOne!40935 r!19218) (regTwo!40934 r!19218))))))

(declare-fun b!7608975 () Bool)

(declare-fun e!4525683 () Bool)

(declare-fun e!4525685 () Bool)

(assert (=> b!7608975 (= e!4525683 e!4525685)))

(declare-fun res!3046529 () Bool)

(assert (=> b!7608975 (=> res!3046529 e!4525685)))

(assert (=> b!7608975 (= res!3046529 ((_ is Star!20211) r!19218))))

(declare-fun b!7608976 () Bool)

(assert (=> b!7608976 (= e!4525685 e!4525686)))

(assert (=> b!7608976 (= c!1403098 ((_ is Union!20211) r!19218))))

(declare-fun d!2322077 () Bool)

(declare-fun res!3046530 () Bool)

(declare-fun e!4525682 () Bool)

(assert (=> d!2322077 (=> res!3046530 e!4525682)))

(assert (=> d!2322077 (= res!3046530 ((_ is EmptyExpr!20211) r!19218))))

(assert (=> d!2322077 (= (nullableFct!3515 r!19218) e!4525682)))

(declare-fun b!7608977 () Bool)

(assert (=> b!7608977 (= e!4525682 e!4525683)))

(declare-fun res!3046528 () Bool)

(assert (=> b!7608977 (=> (not res!3046528) (not e!4525683))))

(assert (=> b!7608977 (= res!3046528 (and (not ((_ is EmptyLang!20211) r!19218)) (not ((_ is ElementMatch!20211) r!19218))))))

(declare-fun b!7608978 () Bool)

(declare-fun e!4525684 () Bool)

(assert (=> b!7608978 (= e!4525684 call!698713)))

(declare-fun bm!698709 () Bool)

(assert (=> bm!698709 (= call!698714 (nullable!8832 (ite c!1403098 (regTwo!40935 r!19218) (regOne!40934 r!19218))))))

(declare-fun b!7608979 () Bool)

(assert (=> b!7608979 (= e!4525686 e!4525684)))

(declare-fun res!3046527 () Bool)

(assert (=> b!7608979 (= res!3046527 call!698714)))

(assert (=> b!7608979 (=> (not res!3046527) (not e!4525684))))

(assert (= (and d!2322077 (not res!3046530)) b!7608977))

(assert (= (and b!7608977 res!3046528) b!7608975))

(assert (= (and b!7608975 (not res!3046529)) b!7608976))

(assert (= (and b!7608976 c!1403098) b!7608974))

(assert (= (and b!7608976 (not c!1403098)) b!7608979))

(assert (= (and b!7608974 (not res!3046526)) b!7608973))

(assert (= (and b!7608979 res!3046527) b!7608978))

(assert (= (or b!7608973 b!7608979) bm!698709))

(assert (= (or b!7608974 b!7608978) bm!698708))

(declare-fun m!8147576 () Bool)

(assert (=> bm!698708 m!8147576))

(declare-fun m!8147578 () Bool)

(assert (=> bm!698709 m!8147578))

(assert (=> d!2322047 d!2322077))

(assert (=> d!2322061 d!2322059))

(declare-fun d!2322079 () Bool)

(assert (=> d!2322079 (not (lostCause!1895 (regOne!40935 r!19218)))))

(assert (=> d!2322079 true))

(declare-fun _$98!303 () Unit!167266)

(assert (=> d!2322079 (= (choose!58739 (regOne!40935 r!19218)) _$98!303)))

(declare-fun bs!1942810 () Bool)

(assert (= bs!1942810 d!2322079))

(assert (=> bs!1942810 m!8147508))

(assert (=> d!2322061 d!2322079))

(assert (=> d!2322061 d!2322049))

(declare-fun b!7608994 () Bool)

(declare-fun e!4525704 () Bool)

(declare-fun e!4525705 () Bool)

(assert (=> b!7608994 (= e!4525704 e!4525705)))

(declare-fun res!3046544 () Bool)

(assert (=> b!7608994 (=> (not res!3046544) (not e!4525705))))

(assert (=> b!7608994 (= res!3046544 (and (not ((_ is ElementMatch!20211) r!19218)) (not ((_ is Star!20211) r!19218))))))

(declare-fun b!7608995 () Bool)

(declare-fun e!4525700 () Bool)

(declare-fun call!698719 () Bool)

(assert (=> b!7608995 (= e!4525700 call!698719)))

(declare-fun bm!698714 () Bool)

(declare-fun call!698720 () Bool)

(declare-fun c!1403101 () Bool)

(assert (=> bm!698714 (= call!698720 (lostCause!1895 (ite c!1403101 (regOne!40935 r!19218) (regOne!40934 r!19218))))))

(declare-fun bm!698715 () Bool)

(assert (=> bm!698715 (= call!698719 (lostCause!1895 (ite c!1403101 (regTwo!40935 r!19218) (regTwo!40934 r!19218))))))

(declare-fun b!7608996 () Bool)

(declare-fun e!4525702 () Bool)

(assert (=> b!7608996 (= e!4525702 e!4525700)))

(declare-fun res!3046543 () Bool)

(assert (=> b!7608996 (= res!3046543 call!698720)))

(assert (=> b!7608996 (=> res!3046543 e!4525700)))

(declare-fun b!7608997 () Bool)

(declare-fun e!4525701 () Bool)

(assert (=> b!7608997 (= e!4525702 e!4525701)))

(declare-fun res!3046542 () Bool)

(assert (=> b!7608997 (= res!3046542 call!698720)))

(assert (=> b!7608997 (=> (not res!3046542) (not e!4525701))))

(declare-fun b!7608998 () Bool)

(assert (=> b!7608998 (= e!4525705 e!4525702)))

(assert (=> b!7608998 (= c!1403101 ((_ is Union!20211) r!19218))))

(declare-fun b!7608999 () Bool)

(declare-fun e!4525703 () Bool)

(assert (=> b!7608999 (= e!4525703 e!4525704)))

(declare-fun res!3046545 () Bool)

(assert (=> b!7608999 (=> res!3046545 e!4525704)))

(assert (=> b!7608999 (= res!3046545 ((_ is EmptyLang!20211) r!19218))))

(declare-fun b!7609000 () Bool)

(assert (=> b!7609000 (= e!4525701 call!698719)))

(declare-fun d!2322081 () Bool)

(declare-fun lt!2654969 () Bool)

(declare-datatypes ((List!73079 0))(
  ( (Nil!72955) (Cons!72955 (h!79403 C!40748) (t!387814 List!73079)) )
))
(declare-datatypes ((Option!17327 0))(
  ( (None!17326) (Some!17326 (v!54461 List!73079)) )
))
(declare-fun isEmpty!41584 (Option!17327) Bool)

(declare-fun getLanguageWitness!1132 (Regex!20211) Option!17327)

(assert (=> d!2322081 (= lt!2654969 (isEmpty!41584 (getLanguageWitness!1132 r!19218)))))

(assert (=> d!2322081 (= lt!2654969 e!4525703)))

(declare-fun res!3046541 () Bool)

(assert (=> d!2322081 (=> (not res!3046541) (not e!4525703))))

(assert (=> d!2322081 (= res!3046541 (not ((_ is EmptyExpr!20211) r!19218)))))

(assert (=> d!2322081 (= (lostCauseFct!542 r!19218) lt!2654969)))

(assert (= (and d!2322081 res!3046541) b!7608999))

(assert (= (and b!7608999 (not res!3046545)) b!7608994))

(assert (= (and b!7608994 res!3046544) b!7608998))

(assert (= (and b!7608998 c!1403101) b!7608997))

(assert (= (and b!7608998 (not c!1403101)) b!7608996))

(assert (= (and b!7608997 res!3046542) b!7609000))

(assert (= (and b!7608996 (not res!3046543)) b!7608995))

(assert (= (or b!7608997 b!7608996) bm!698714))

(assert (= (or b!7609000 b!7608995) bm!698715))

(declare-fun m!8147580 () Bool)

(assert (=> bm!698714 m!8147580))

(declare-fun m!8147582 () Bool)

(assert (=> bm!698715 m!8147582))

(declare-fun m!8147584 () Bool)

(assert (=> d!2322081 m!8147584))

(assert (=> d!2322081 m!8147584))

(declare-fun m!8147586 () Bool)

(assert (=> d!2322081 m!8147586))

(assert (=> d!2322051 d!2322081))

(declare-fun c!1403102 () Bool)

(declare-fun c!1403103 () Bool)

(declare-fun bm!698716 () Bool)

(declare-fun call!698721 () Bool)

(assert (=> bm!698716 (= call!698721 (validRegex!10633 (ite c!1403103 (reg!20540 (ite c!1403083 (regTwo!40935 r!19218) (regTwo!40934 r!19218))) (ite c!1403102 (regOne!40935 (ite c!1403083 (regTwo!40935 r!19218) (regTwo!40934 r!19218))) (regOne!40934 (ite c!1403083 (regTwo!40935 r!19218) (regTwo!40934 r!19218)))))))))

(declare-fun bm!698717 () Bool)

(declare-fun call!698722 () Bool)

(assert (=> bm!698717 (= call!698722 (validRegex!10633 (ite c!1403102 (regTwo!40935 (ite c!1403083 (regTwo!40935 r!19218) (regTwo!40934 r!19218))) (regTwo!40934 (ite c!1403083 (regTwo!40935 r!19218) (regTwo!40934 r!19218))))))))

(declare-fun b!7609001 () Bool)

(declare-fun e!4525710 () Bool)

(declare-fun e!4525712 () Bool)

(assert (=> b!7609001 (= e!4525710 e!4525712)))

(assert (=> b!7609001 (= c!1403103 ((_ is Star!20211) (ite c!1403083 (regTwo!40935 r!19218) (regTwo!40934 r!19218))))))

(declare-fun b!7609002 () Bool)

(declare-fun e!4525708 () Bool)

(declare-fun e!4525707 () Bool)

(assert (=> b!7609002 (= e!4525708 e!4525707)))

(declare-fun res!3046549 () Bool)

(assert (=> b!7609002 (=> (not res!3046549) (not e!4525707))))

(declare-fun call!698723 () Bool)

(assert (=> b!7609002 (= res!3046549 call!698723)))

(declare-fun bm!698718 () Bool)

(assert (=> bm!698718 (= call!698723 call!698721)))

(declare-fun d!2322083 () Bool)

(declare-fun res!3046546 () Bool)

(assert (=> d!2322083 (=> res!3046546 e!4525710)))

(assert (=> d!2322083 (= res!3046546 ((_ is ElementMatch!20211) (ite c!1403083 (regTwo!40935 r!19218) (regTwo!40934 r!19218))))))

(assert (=> d!2322083 (= (validRegex!10633 (ite c!1403083 (regTwo!40935 r!19218) (regTwo!40934 r!19218))) e!4525710)))

(declare-fun b!7609003 () Bool)

(declare-fun res!3046550 () Bool)

(assert (=> b!7609003 (=> res!3046550 e!4525708)))

(assert (=> b!7609003 (= res!3046550 (not ((_ is Concat!29056) (ite c!1403083 (regTwo!40935 r!19218) (regTwo!40934 r!19218)))))))

(declare-fun e!4525711 () Bool)

(assert (=> b!7609003 (= e!4525711 e!4525708)))

(declare-fun b!7609004 () Bool)

(declare-fun res!3046547 () Bool)

(declare-fun e!4525706 () Bool)

(assert (=> b!7609004 (=> (not res!3046547) (not e!4525706))))

(assert (=> b!7609004 (= res!3046547 call!698723)))

(assert (=> b!7609004 (= e!4525711 e!4525706)))

(declare-fun b!7609005 () Bool)

(assert (=> b!7609005 (= e!4525712 e!4525711)))

(assert (=> b!7609005 (= c!1403102 ((_ is Union!20211) (ite c!1403083 (regTwo!40935 r!19218) (regTwo!40934 r!19218))))))

(declare-fun b!7609006 () Bool)

(declare-fun e!4525709 () Bool)

(assert (=> b!7609006 (= e!4525712 e!4525709)))

(declare-fun res!3046548 () Bool)

(assert (=> b!7609006 (= res!3046548 (not (nullable!8832 (reg!20540 (ite c!1403083 (regTwo!40935 r!19218) (regTwo!40934 r!19218))))))))

(assert (=> b!7609006 (=> (not res!3046548) (not e!4525709))))

(declare-fun b!7609007 () Bool)

(assert (=> b!7609007 (= e!4525707 call!698722)))

(declare-fun b!7609008 () Bool)

(assert (=> b!7609008 (= e!4525709 call!698721)))

(declare-fun b!7609009 () Bool)

(assert (=> b!7609009 (= e!4525706 call!698722)))

(assert (= (and d!2322083 (not res!3046546)) b!7609001))

(assert (= (and b!7609001 c!1403103) b!7609006))

(assert (= (and b!7609001 (not c!1403103)) b!7609005))

(assert (= (and b!7609006 res!3046548) b!7609008))

(assert (= (and b!7609005 c!1403102) b!7609004))

(assert (= (and b!7609005 (not c!1403102)) b!7609003))

(assert (= (and b!7609004 res!3046547) b!7609009))

(assert (= (and b!7609003 (not res!3046550)) b!7609002))

(assert (= (and b!7609002 res!3046549) b!7609007))

(assert (= (or b!7609004 b!7609002) bm!698718))

(assert (= (or b!7609009 b!7609007) bm!698717))

(assert (= (or b!7609008 bm!698718) bm!698716))

(declare-fun m!8147588 () Bool)

(assert (=> bm!698716 m!8147588))

(declare-fun m!8147590 () Bool)

(assert (=> bm!698717 m!8147590))

(declare-fun m!8147592 () Bool)

(assert (=> b!7609006 m!8147592))

(assert (=> bm!698685 d!2322083))

(declare-fun call!698724 () Bool)

(declare-fun c!1403104 () Bool)

(declare-fun c!1403105 () Bool)

(declare-fun bm!698719 () Bool)

(assert (=> bm!698719 (= call!698724 (validRegex!10633 (ite c!1403105 (reg!20540 (ite c!1403084 (reg!20540 r!19218) (ite c!1403083 (regOne!40935 r!19218) (regOne!40934 r!19218)))) (ite c!1403104 (regOne!40935 (ite c!1403084 (reg!20540 r!19218) (ite c!1403083 (regOne!40935 r!19218) (regOne!40934 r!19218)))) (regOne!40934 (ite c!1403084 (reg!20540 r!19218) (ite c!1403083 (regOne!40935 r!19218) (regOne!40934 r!19218))))))))))

(declare-fun bm!698720 () Bool)

(declare-fun call!698725 () Bool)

(assert (=> bm!698720 (= call!698725 (validRegex!10633 (ite c!1403104 (regTwo!40935 (ite c!1403084 (reg!20540 r!19218) (ite c!1403083 (regOne!40935 r!19218) (regOne!40934 r!19218)))) (regTwo!40934 (ite c!1403084 (reg!20540 r!19218) (ite c!1403083 (regOne!40935 r!19218) (regOne!40934 r!19218)))))))))

(declare-fun b!7609010 () Bool)

(declare-fun e!4525717 () Bool)

(declare-fun e!4525719 () Bool)

(assert (=> b!7609010 (= e!4525717 e!4525719)))

(assert (=> b!7609010 (= c!1403105 ((_ is Star!20211) (ite c!1403084 (reg!20540 r!19218) (ite c!1403083 (regOne!40935 r!19218) (regOne!40934 r!19218)))))))

(declare-fun b!7609011 () Bool)

(declare-fun e!4525715 () Bool)

(declare-fun e!4525714 () Bool)

(assert (=> b!7609011 (= e!4525715 e!4525714)))

(declare-fun res!3046554 () Bool)

(assert (=> b!7609011 (=> (not res!3046554) (not e!4525714))))

(declare-fun call!698726 () Bool)

(assert (=> b!7609011 (= res!3046554 call!698726)))

(declare-fun bm!698721 () Bool)

(assert (=> bm!698721 (= call!698726 call!698724)))

(declare-fun d!2322085 () Bool)

(declare-fun res!3046551 () Bool)

(assert (=> d!2322085 (=> res!3046551 e!4525717)))

(assert (=> d!2322085 (= res!3046551 ((_ is ElementMatch!20211) (ite c!1403084 (reg!20540 r!19218) (ite c!1403083 (regOne!40935 r!19218) (regOne!40934 r!19218)))))))

(assert (=> d!2322085 (= (validRegex!10633 (ite c!1403084 (reg!20540 r!19218) (ite c!1403083 (regOne!40935 r!19218) (regOne!40934 r!19218)))) e!4525717)))

(declare-fun b!7609012 () Bool)

(declare-fun res!3046555 () Bool)

(assert (=> b!7609012 (=> res!3046555 e!4525715)))

(assert (=> b!7609012 (= res!3046555 (not ((_ is Concat!29056) (ite c!1403084 (reg!20540 r!19218) (ite c!1403083 (regOne!40935 r!19218) (regOne!40934 r!19218))))))))

(declare-fun e!4525718 () Bool)

(assert (=> b!7609012 (= e!4525718 e!4525715)))

(declare-fun b!7609013 () Bool)

(declare-fun res!3046552 () Bool)

(declare-fun e!4525713 () Bool)

(assert (=> b!7609013 (=> (not res!3046552) (not e!4525713))))

(assert (=> b!7609013 (= res!3046552 call!698726)))

(assert (=> b!7609013 (= e!4525718 e!4525713)))

(declare-fun b!7609014 () Bool)

(assert (=> b!7609014 (= e!4525719 e!4525718)))

(assert (=> b!7609014 (= c!1403104 ((_ is Union!20211) (ite c!1403084 (reg!20540 r!19218) (ite c!1403083 (regOne!40935 r!19218) (regOne!40934 r!19218)))))))

(declare-fun b!7609015 () Bool)

(declare-fun e!4525716 () Bool)

(assert (=> b!7609015 (= e!4525719 e!4525716)))

(declare-fun res!3046553 () Bool)

(assert (=> b!7609015 (= res!3046553 (not (nullable!8832 (reg!20540 (ite c!1403084 (reg!20540 r!19218) (ite c!1403083 (regOne!40935 r!19218) (regOne!40934 r!19218)))))))))

(assert (=> b!7609015 (=> (not res!3046553) (not e!4525716))))

(declare-fun b!7609016 () Bool)

(assert (=> b!7609016 (= e!4525714 call!698725)))

(declare-fun b!7609017 () Bool)

(assert (=> b!7609017 (= e!4525716 call!698724)))

(declare-fun b!7609018 () Bool)

(assert (=> b!7609018 (= e!4525713 call!698725)))

(assert (= (and d!2322085 (not res!3046551)) b!7609010))

(assert (= (and b!7609010 c!1403105) b!7609015))

(assert (= (and b!7609010 (not c!1403105)) b!7609014))

(assert (= (and b!7609015 res!3046553) b!7609017))

(assert (= (and b!7609014 c!1403104) b!7609013))

(assert (= (and b!7609014 (not c!1403104)) b!7609012))

(assert (= (and b!7609013 res!3046552) b!7609018))

(assert (= (and b!7609012 (not res!3046555)) b!7609011))

(assert (= (and b!7609011 res!3046554) b!7609016))

(assert (= (or b!7609013 b!7609011) bm!698721))

(assert (= (or b!7609018 b!7609016) bm!698720))

(assert (= (or b!7609017 bm!698721) bm!698719))

(declare-fun m!8147594 () Bool)

(assert (=> bm!698719 m!8147594))

(declare-fun m!8147596 () Bool)

(assert (=> bm!698720 m!8147596))

(declare-fun m!8147598 () Bool)

(assert (=> b!7609015 m!8147598))

(assert (=> bm!698684 d!2322085))

(declare-fun d!2322087 () Bool)

(assert (=> d!2322087 (= (nullable!8832 (reg!20540 (regOne!40935 r!19218))) (nullableFct!3515 (reg!20540 (regOne!40935 r!19218))))))

(declare-fun bs!1942811 () Bool)

(assert (= bs!1942811 d!2322087))

(declare-fun m!8147600 () Bool)

(assert (=> bs!1942811 m!8147600))

(assert (=> b!7608852 d!2322087))

(declare-fun b!7609019 () Bool)

(declare-fun e!4525724 () Bool)

(declare-fun e!4525725 () Bool)

(assert (=> b!7609019 (= e!4525724 e!4525725)))

(declare-fun res!3046559 () Bool)

(assert (=> b!7609019 (=> (not res!3046559) (not e!4525725))))

(assert (=> b!7609019 (= res!3046559 (and (not ((_ is ElementMatch!20211) (regOne!40935 r!19218))) (not ((_ is Star!20211) (regOne!40935 r!19218)))))))

(declare-fun b!7609020 () Bool)

(declare-fun e!4525720 () Bool)

(declare-fun call!698727 () Bool)

(assert (=> b!7609020 (= e!4525720 call!698727)))

(declare-fun bm!698722 () Bool)

(declare-fun call!698728 () Bool)

(declare-fun c!1403106 () Bool)

(assert (=> bm!698722 (= call!698728 (lostCause!1895 (ite c!1403106 (regOne!40935 (regOne!40935 r!19218)) (regOne!40934 (regOne!40935 r!19218)))))))

(declare-fun bm!698723 () Bool)

(assert (=> bm!698723 (= call!698727 (lostCause!1895 (ite c!1403106 (regTwo!40935 (regOne!40935 r!19218)) (regTwo!40934 (regOne!40935 r!19218)))))))

(declare-fun b!7609021 () Bool)

(declare-fun e!4525722 () Bool)

(assert (=> b!7609021 (= e!4525722 e!4525720)))

(declare-fun res!3046558 () Bool)

(assert (=> b!7609021 (= res!3046558 call!698728)))

(assert (=> b!7609021 (=> res!3046558 e!4525720)))

(declare-fun b!7609022 () Bool)

(declare-fun e!4525721 () Bool)

(assert (=> b!7609022 (= e!4525722 e!4525721)))

(declare-fun res!3046557 () Bool)

(assert (=> b!7609022 (= res!3046557 call!698728)))

(assert (=> b!7609022 (=> (not res!3046557) (not e!4525721))))

(declare-fun b!7609023 () Bool)

(assert (=> b!7609023 (= e!4525725 e!4525722)))

(assert (=> b!7609023 (= c!1403106 ((_ is Union!20211) (regOne!40935 r!19218)))))

(declare-fun b!7609024 () Bool)

(declare-fun e!4525723 () Bool)

(assert (=> b!7609024 (= e!4525723 e!4525724)))

(declare-fun res!3046560 () Bool)

(assert (=> b!7609024 (=> res!3046560 e!4525724)))

(assert (=> b!7609024 (= res!3046560 ((_ is EmptyLang!20211) (regOne!40935 r!19218)))))

(declare-fun b!7609025 () Bool)

(assert (=> b!7609025 (= e!4525721 call!698727)))

(declare-fun d!2322089 () Bool)

(declare-fun lt!2654970 () Bool)

(assert (=> d!2322089 (= lt!2654970 (isEmpty!41584 (getLanguageWitness!1132 (regOne!40935 r!19218))))))

(assert (=> d!2322089 (= lt!2654970 e!4525723)))

(declare-fun res!3046556 () Bool)

(assert (=> d!2322089 (=> (not res!3046556) (not e!4525723))))

(assert (=> d!2322089 (= res!3046556 (not ((_ is EmptyExpr!20211) (regOne!40935 r!19218))))))

(assert (=> d!2322089 (= (lostCauseFct!542 (regOne!40935 r!19218)) lt!2654970)))

(assert (= (and d!2322089 res!3046556) b!7609024))

(assert (= (and b!7609024 (not res!3046560)) b!7609019))

(assert (= (and b!7609019 res!3046559) b!7609023))

(assert (= (and b!7609023 c!1403106) b!7609022))

(assert (= (and b!7609023 (not c!1403106)) b!7609021))

(assert (= (and b!7609022 res!3046557) b!7609025))

(assert (= (and b!7609021 (not res!3046558)) b!7609020))

(assert (= (or b!7609022 b!7609021) bm!698722))

(assert (= (or b!7609025 b!7609020) bm!698723))

(declare-fun m!8147602 () Bool)

(assert (=> bm!698722 m!8147602))

(declare-fun m!8147604 () Bool)

(assert (=> bm!698723 m!8147604))

(declare-fun m!8147606 () Bool)

(assert (=> d!2322089 m!8147606))

(assert (=> d!2322089 m!8147606))

(declare-fun m!8147608 () Bool)

(assert (=> d!2322089 m!8147608))

(assert (=> d!2322059 d!2322089))

(declare-fun b!7609026 () Bool)

(declare-fun e!4525726 () Bool)

(assert (=> b!7609026 (= e!4525726 tp_is_empty!50777)))

(declare-fun b!7609029 () Bool)

(declare-fun tp!2219840 () Bool)

(declare-fun tp!2219843 () Bool)

(assert (=> b!7609029 (= e!4525726 (and tp!2219840 tp!2219843))))

(declare-fun b!7609027 () Bool)

(declare-fun tp!2219844 () Bool)

(declare-fun tp!2219842 () Bool)

(assert (=> b!7609027 (= e!4525726 (and tp!2219844 tp!2219842))))

(assert (=> b!7608897 (= tp!2219794 e!4525726)))

(declare-fun b!7609028 () Bool)

(declare-fun tp!2219841 () Bool)

(assert (=> b!7609028 (= e!4525726 tp!2219841)))

(assert (= (and b!7608897 ((_ is ElementMatch!20211) (regOne!40934 (regOne!40934 r!19218)))) b!7609026))

(assert (= (and b!7608897 ((_ is Concat!29056) (regOne!40934 (regOne!40934 r!19218)))) b!7609027))

(assert (= (and b!7608897 ((_ is Star!20211) (regOne!40934 (regOne!40934 r!19218)))) b!7609028))

(assert (= (and b!7608897 ((_ is Union!20211) (regOne!40934 (regOne!40934 r!19218)))) b!7609029))

(declare-fun b!7609030 () Bool)

(declare-fun e!4525727 () Bool)

(assert (=> b!7609030 (= e!4525727 tp_is_empty!50777)))

(declare-fun b!7609033 () Bool)

(declare-fun tp!2219845 () Bool)

(declare-fun tp!2219848 () Bool)

(assert (=> b!7609033 (= e!4525727 (and tp!2219845 tp!2219848))))

(declare-fun b!7609031 () Bool)

(declare-fun tp!2219849 () Bool)

(declare-fun tp!2219847 () Bool)

(assert (=> b!7609031 (= e!4525727 (and tp!2219849 tp!2219847))))

(assert (=> b!7608897 (= tp!2219792 e!4525727)))

(declare-fun b!7609032 () Bool)

(declare-fun tp!2219846 () Bool)

(assert (=> b!7609032 (= e!4525727 tp!2219846)))

(assert (= (and b!7608897 ((_ is ElementMatch!20211) (regTwo!40934 (regOne!40934 r!19218)))) b!7609030))

(assert (= (and b!7608897 ((_ is Concat!29056) (regTwo!40934 (regOne!40934 r!19218)))) b!7609031))

(assert (= (and b!7608897 ((_ is Star!20211) (regTwo!40934 (regOne!40934 r!19218)))) b!7609032))

(assert (= (and b!7608897 ((_ is Union!20211) (regTwo!40934 (regOne!40934 r!19218)))) b!7609033))

(declare-fun b!7609034 () Bool)

(declare-fun e!4525728 () Bool)

(assert (=> b!7609034 (= e!4525728 tp_is_empty!50777)))

(declare-fun b!7609037 () Bool)

(declare-fun tp!2219850 () Bool)

(declare-fun tp!2219853 () Bool)

(assert (=> b!7609037 (= e!4525728 (and tp!2219850 tp!2219853))))

(declare-fun b!7609035 () Bool)

(declare-fun tp!2219854 () Bool)

(declare-fun tp!2219852 () Bool)

(assert (=> b!7609035 (= e!4525728 (and tp!2219854 tp!2219852))))

(assert (=> b!7608907 (= tp!2219799 e!4525728)))

(declare-fun b!7609036 () Bool)

(declare-fun tp!2219851 () Bool)

(assert (=> b!7609036 (= e!4525728 tp!2219851)))

(assert (= (and b!7608907 ((_ is ElementMatch!20211) (regOne!40935 (regTwo!40934 r!19218)))) b!7609034))

(assert (= (and b!7608907 ((_ is Concat!29056) (regOne!40935 (regTwo!40934 r!19218)))) b!7609035))

(assert (= (and b!7608907 ((_ is Star!20211) (regOne!40935 (regTwo!40934 r!19218)))) b!7609036))

(assert (= (and b!7608907 ((_ is Union!20211) (regOne!40935 (regTwo!40934 r!19218)))) b!7609037))

(declare-fun b!7609038 () Bool)

(declare-fun e!4525729 () Bool)

(assert (=> b!7609038 (= e!4525729 tp_is_empty!50777)))

(declare-fun b!7609041 () Bool)

(declare-fun tp!2219855 () Bool)

(declare-fun tp!2219858 () Bool)

(assert (=> b!7609041 (= e!4525729 (and tp!2219855 tp!2219858))))

(declare-fun b!7609039 () Bool)

(declare-fun tp!2219859 () Bool)

(declare-fun tp!2219857 () Bool)

(assert (=> b!7609039 (= e!4525729 (and tp!2219859 tp!2219857))))

(assert (=> b!7608907 (= tp!2219802 e!4525729)))

(declare-fun b!7609040 () Bool)

(declare-fun tp!2219856 () Bool)

(assert (=> b!7609040 (= e!4525729 tp!2219856)))

(assert (= (and b!7608907 ((_ is ElementMatch!20211) (regTwo!40935 (regTwo!40934 r!19218)))) b!7609038))

(assert (= (and b!7608907 ((_ is Concat!29056) (regTwo!40935 (regTwo!40934 r!19218)))) b!7609039))

(assert (= (and b!7608907 ((_ is Star!20211) (regTwo!40935 (regTwo!40934 r!19218)))) b!7609040))

(assert (= (and b!7608907 ((_ is Union!20211) (regTwo!40935 (regTwo!40934 r!19218)))) b!7609041))

(declare-fun b!7609042 () Bool)

(declare-fun e!4525730 () Bool)

(assert (=> b!7609042 (= e!4525730 tp_is_empty!50777)))

(declare-fun b!7609045 () Bool)

(declare-fun tp!2219860 () Bool)

(declare-fun tp!2219863 () Bool)

(assert (=> b!7609045 (= e!4525730 (and tp!2219860 tp!2219863))))

(declare-fun b!7609043 () Bool)

(declare-fun tp!2219864 () Bool)

(declare-fun tp!2219862 () Bool)

(assert (=> b!7609043 (= e!4525730 (and tp!2219864 tp!2219862))))

(assert (=> b!7608887 (= tp!2219780 e!4525730)))

(declare-fun b!7609044 () Bool)

(declare-fun tp!2219861 () Bool)

(assert (=> b!7609044 (= e!4525730 tp!2219861)))

(assert (= (and b!7608887 ((_ is ElementMatch!20211) (regOne!40935 (regOne!40935 r!19218)))) b!7609042))

(assert (= (and b!7608887 ((_ is Concat!29056) (regOne!40935 (regOne!40935 r!19218)))) b!7609043))

(assert (= (and b!7608887 ((_ is Star!20211) (regOne!40935 (regOne!40935 r!19218)))) b!7609044))

(assert (= (and b!7608887 ((_ is Union!20211) (regOne!40935 (regOne!40935 r!19218)))) b!7609045))

(declare-fun b!7609046 () Bool)

(declare-fun e!4525731 () Bool)

(assert (=> b!7609046 (= e!4525731 tp_is_empty!50777)))

(declare-fun b!7609049 () Bool)

(declare-fun tp!2219865 () Bool)

(declare-fun tp!2219868 () Bool)

(assert (=> b!7609049 (= e!4525731 (and tp!2219865 tp!2219868))))

(declare-fun b!7609047 () Bool)

(declare-fun tp!2219869 () Bool)

(declare-fun tp!2219867 () Bool)

(assert (=> b!7609047 (= e!4525731 (and tp!2219869 tp!2219867))))

(assert (=> b!7608887 (= tp!2219783 e!4525731)))

(declare-fun b!7609048 () Bool)

(declare-fun tp!2219866 () Bool)

(assert (=> b!7609048 (= e!4525731 tp!2219866)))

(assert (= (and b!7608887 ((_ is ElementMatch!20211) (regTwo!40935 (regOne!40935 r!19218)))) b!7609046))

(assert (= (and b!7608887 ((_ is Concat!29056) (regTwo!40935 (regOne!40935 r!19218)))) b!7609047))

(assert (= (and b!7608887 ((_ is Star!20211) (regTwo!40935 (regOne!40935 r!19218)))) b!7609048))

(assert (= (and b!7608887 ((_ is Union!20211) (regTwo!40935 (regOne!40935 r!19218)))) b!7609049))

(declare-fun b!7609050 () Bool)

(declare-fun e!4525732 () Bool)

(assert (=> b!7609050 (= e!4525732 tp_is_empty!50777)))

(declare-fun b!7609053 () Bool)

(declare-fun tp!2219870 () Bool)

(declare-fun tp!2219873 () Bool)

(assert (=> b!7609053 (= e!4525732 (and tp!2219870 tp!2219873))))

(declare-fun b!7609051 () Bool)

(declare-fun tp!2219874 () Bool)

(declare-fun tp!2219872 () Bool)

(assert (=> b!7609051 (= e!4525732 (and tp!2219874 tp!2219872))))

(assert (=> b!7608891 (= tp!2219785 e!4525732)))

(declare-fun b!7609052 () Bool)

(declare-fun tp!2219871 () Bool)

(assert (=> b!7609052 (= e!4525732 tp!2219871)))

(assert (= (and b!7608891 ((_ is ElementMatch!20211) (regOne!40935 (regTwo!40935 r!19218)))) b!7609050))

(assert (= (and b!7608891 ((_ is Concat!29056) (regOne!40935 (regTwo!40935 r!19218)))) b!7609051))

(assert (= (and b!7608891 ((_ is Star!20211) (regOne!40935 (regTwo!40935 r!19218)))) b!7609052))

(assert (= (and b!7608891 ((_ is Union!20211) (regOne!40935 (regTwo!40935 r!19218)))) b!7609053))

(declare-fun b!7609054 () Bool)

(declare-fun e!4525733 () Bool)

(assert (=> b!7609054 (= e!4525733 tp_is_empty!50777)))

(declare-fun b!7609057 () Bool)

(declare-fun tp!2219875 () Bool)

(declare-fun tp!2219878 () Bool)

(assert (=> b!7609057 (= e!4525733 (and tp!2219875 tp!2219878))))

(declare-fun b!7609055 () Bool)

(declare-fun tp!2219879 () Bool)

(declare-fun tp!2219877 () Bool)

(assert (=> b!7609055 (= e!4525733 (and tp!2219879 tp!2219877))))

(assert (=> b!7608891 (= tp!2219788 e!4525733)))

(declare-fun b!7609056 () Bool)

(declare-fun tp!2219876 () Bool)

(assert (=> b!7609056 (= e!4525733 tp!2219876)))

(assert (= (and b!7608891 ((_ is ElementMatch!20211) (regTwo!40935 (regTwo!40935 r!19218)))) b!7609054))

(assert (= (and b!7608891 ((_ is Concat!29056) (regTwo!40935 (regTwo!40935 r!19218)))) b!7609055))

(assert (= (and b!7608891 ((_ is Star!20211) (regTwo!40935 (regTwo!40935 r!19218)))) b!7609056))

(assert (= (and b!7608891 ((_ is Union!20211) (regTwo!40935 (regTwo!40935 r!19218)))) b!7609057))

(declare-fun b!7609058 () Bool)

(declare-fun e!4525734 () Bool)

(assert (=> b!7609058 (= e!4525734 tp_is_empty!50777)))

(declare-fun b!7609061 () Bool)

(declare-fun tp!2219880 () Bool)

(declare-fun tp!2219883 () Bool)

(assert (=> b!7609061 (= e!4525734 (and tp!2219880 tp!2219883))))

(declare-fun b!7609059 () Bool)

(declare-fun tp!2219884 () Bool)

(declare-fun tp!2219882 () Bool)

(assert (=> b!7609059 (= e!4525734 (and tp!2219884 tp!2219882))))

(assert (=> b!7608906 (= tp!2219800 e!4525734)))

(declare-fun b!7609060 () Bool)

(declare-fun tp!2219881 () Bool)

(assert (=> b!7609060 (= e!4525734 tp!2219881)))

(assert (= (and b!7608906 ((_ is ElementMatch!20211) (reg!20540 (regTwo!40934 r!19218)))) b!7609058))

(assert (= (and b!7608906 ((_ is Concat!29056) (reg!20540 (regTwo!40934 r!19218)))) b!7609059))

(assert (= (and b!7608906 ((_ is Star!20211) (reg!20540 (regTwo!40934 r!19218)))) b!7609060))

(assert (= (and b!7608906 ((_ is Union!20211) (reg!20540 (regTwo!40934 r!19218)))) b!7609061))

(declare-fun b!7609062 () Bool)

(declare-fun e!4525735 () Bool)

(assert (=> b!7609062 (= e!4525735 tp_is_empty!50777)))

(declare-fun b!7609065 () Bool)

(declare-fun tp!2219885 () Bool)

(declare-fun tp!2219888 () Bool)

(assert (=> b!7609065 (= e!4525735 (and tp!2219885 tp!2219888))))

(declare-fun b!7609063 () Bool)

(declare-fun tp!2219889 () Bool)

(declare-fun tp!2219887 () Bool)

(assert (=> b!7609063 (= e!4525735 (and tp!2219889 tp!2219887))))

(assert (=> b!7608905 (= tp!2219803 e!4525735)))

(declare-fun b!7609064 () Bool)

(declare-fun tp!2219886 () Bool)

(assert (=> b!7609064 (= e!4525735 tp!2219886)))

(assert (= (and b!7608905 ((_ is ElementMatch!20211) (regOne!40934 (regTwo!40934 r!19218)))) b!7609062))

(assert (= (and b!7608905 ((_ is Concat!29056) (regOne!40934 (regTwo!40934 r!19218)))) b!7609063))

(assert (= (and b!7608905 ((_ is Star!20211) (regOne!40934 (regTwo!40934 r!19218)))) b!7609064))

(assert (= (and b!7608905 ((_ is Union!20211) (regOne!40934 (regTwo!40934 r!19218)))) b!7609065))

(declare-fun b!7609066 () Bool)

(declare-fun e!4525736 () Bool)

(assert (=> b!7609066 (= e!4525736 tp_is_empty!50777)))

(declare-fun b!7609069 () Bool)

(declare-fun tp!2219890 () Bool)

(declare-fun tp!2219893 () Bool)

(assert (=> b!7609069 (= e!4525736 (and tp!2219890 tp!2219893))))

(declare-fun b!7609067 () Bool)

(declare-fun tp!2219894 () Bool)

(declare-fun tp!2219892 () Bool)

(assert (=> b!7609067 (= e!4525736 (and tp!2219894 tp!2219892))))

(assert (=> b!7608905 (= tp!2219801 e!4525736)))

(declare-fun b!7609068 () Bool)

(declare-fun tp!2219891 () Bool)

(assert (=> b!7609068 (= e!4525736 tp!2219891)))

(assert (= (and b!7608905 ((_ is ElementMatch!20211) (regTwo!40934 (regTwo!40934 r!19218)))) b!7609066))

(assert (= (and b!7608905 ((_ is Concat!29056) (regTwo!40934 (regTwo!40934 r!19218)))) b!7609067))

(assert (= (and b!7608905 ((_ is Star!20211) (regTwo!40934 (regTwo!40934 r!19218)))) b!7609068))

(assert (= (and b!7608905 ((_ is Union!20211) (regTwo!40934 (regTwo!40934 r!19218)))) b!7609069))

(declare-fun b!7609070 () Bool)

(declare-fun e!4525737 () Bool)

(assert (=> b!7609070 (= e!4525737 tp_is_empty!50777)))

(declare-fun b!7609073 () Bool)

(declare-fun tp!2219895 () Bool)

(declare-fun tp!2219898 () Bool)

(assert (=> b!7609073 (= e!4525737 (and tp!2219895 tp!2219898))))

(declare-fun b!7609071 () Bool)

(declare-fun tp!2219899 () Bool)

(declare-fun tp!2219897 () Bool)

(assert (=> b!7609071 (= e!4525737 (and tp!2219899 tp!2219897))))

(assert (=> b!7608886 (= tp!2219781 e!4525737)))

(declare-fun b!7609072 () Bool)

(declare-fun tp!2219896 () Bool)

(assert (=> b!7609072 (= e!4525737 tp!2219896)))

(assert (= (and b!7608886 ((_ is ElementMatch!20211) (reg!20540 (regOne!40935 r!19218)))) b!7609070))

(assert (= (and b!7608886 ((_ is Concat!29056) (reg!20540 (regOne!40935 r!19218)))) b!7609071))

(assert (= (and b!7608886 ((_ is Star!20211) (reg!20540 (regOne!40935 r!19218)))) b!7609072))

(assert (= (and b!7608886 ((_ is Union!20211) (reg!20540 (regOne!40935 r!19218)))) b!7609073))

(declare-fun b!7609074 () Bool)

(declare-fun e!4525738 () Bool)

(assert (=> b!7609074 (= e!4525738 tp_is_empty!50777)))

(declare-fun b!7609077 () Bool)

(declare-fun tp!2219900 () Bool)

(declare-fun tp!2219903 () Bool)

(assert (=> b!7609077 (= e!4525738 (and tp!2219900 tp!2219903))))

(declare-fun b!7609075 () Bool)

(declare-fun tp!2219904 () Bool)

(declare-fun tp!2219902 () Bool)

(assert (=> b!7609075 (= e!4525738 (and tp!2219904 tp!2219902))))

(assert (=> b!7608885 (= tp!2219784 e!4525738)))

(declare-fun b!7609076 () Bool)

(declare-fun tp!2219901 () Bool)

(assert (=> b!7609076 (= e!4525738 tp!2219901)))

(assert (= (and b!7608885 ((_ is ElementMatch!20211) (regOne!40934 (regOne!40935 r!19218)))) b!7609074))

(assert (= (and b!7608885 ((_ is Concat!29056) (regOne!40934 (regOne!40935 r!19218)))) b!7609075))

(assert (= (and b!7608885 ((_ is Star!20211) (regOne!40934 (regOne!40935 r!19218)))) b!7609076))

(assert (= (and b!7608885 ((_ is Union!20211) (regOne!40934 (regOne!40935 r!19218)))) b!7609077))

(declare-fun b!7609078 () Bool)

(declare-fun e!4525739 () Bool)

(assert (=> b!7609078 (= e!4525739 tp_is_empty!50777)))

(declare-fun b!7609081 () Bool)

(declare-fun tp!2219905 () Bool)

(declare-fun tp!2219908 () Bool)

(assert (=> b!7609081 (= e!4525739 (and tp!2219905 tp!2219908))))

(declare-fun b!7609079 () Bool)

(declare-fun tp!2219909 () Bool)

(declare-fun tp!2219907 () Bool)

(assert (=> b!7609079 (= e!4525739 (and tp!2219909 tp!2219907))))

(assert (=> b!7608885 (= tp!2219782 e!4525739)))

(declare-fun b!7609080 () Bool)

(declare-fun tp!2219906 () Bool)

(assert (=> b!7609080 (= e!4525739 tp!2219906)))

(assert (= (and b!7608885 ((_ is ElementMatch!20211) (regTwo!40934 (regOne!40935 r!19218)))) b!7609078))

(assert (= (and b!7608885 ((_ is Concat!29056) (regTwo!40934 (regOne!40935 r!19218)))) b!7609079))

(assert (= (and b!7608885 ((_ is Star!20211) (regTwo!40934 (regOne!40935 r!19218)))) b!7609080))

(assert (= (and b!7608885 ((_ is Union!20211) (regTwo!40934 (regOne!40935 r!19218)))) b!7609081))

(declare-fun b!7609082 () Bool)

(declare-fun e!4525740 () Bool)

(assert (=> b!7609082 (= e!4525740 tp_is_empty!50777)))

(declare-fun b!7609085 () Bool)

(declare-fun tp!2219910 () Bool)

(declare-fun tp!2219913 () Bool)

(assert (=> b!7609085 (= e!4525740 (and tp!2219910 tp!2219913))))

(declare-fun b!7609083 () Bool)

(declare-fun tp!2219914 () Bool)

(declare-fun tp!2219912 () Bool)

(assert (=> b!7609083 (= e!4525740 (and tp!2219914 tp!2219912))))

(assert (=> b!7608890 (= tp!2219786 e!4525740)))

(declare-fun b!7609084 () Bool)

(declare-fun tp!2219911 () Bool)

(assert (=> b!7609084 (= e!4525740 tp!2219911)))

(assert (= (and b!7608890 ((_ is ElementMatch!20211) (reg!20540 (regTwo!40935 r!19218)))) b!7609082))

(assert (= (and b!7608890 ((_ is Concat!29056) (reg!20540 (regTwo!40935 r!19218)))) b!7609083))

(assert (= (and b!7608890 ((_ is Star!20211) (reg!20540 (regTwo!40935 r!19218)))) b!7609084))

(assert (= (and b!7608890 ((_ is Union!20211) (reg!20540 (regTwo!40935 r!19218)))) b!7609085))

(declare-fun b!7609086 () Bool)

(declare-fun e!4525741 () Bool)

(assert (=> b!7609086 (= e!4525741 tp_is_empty!50777)))

(declare-fun b!7609089 () Bool)

(declare-fun tp!2219915 () Bool)

(declare-fun tp!2219918 () Bool)

(assert (=> b!7609089 (= e!4525741 (and tp!2219915 tp!2219918))))

(declare-fun b!7609087 () Bool)

(declare-fun tp!2219919 () Bool)

(declare-fun tp!2219917 () Bool)

(assert (=> b!7609087 (= e!4525741 (and tp!2219919 tp!2219917))))

(assert (=> b!7608889 (= tp!2219789 e!4525741)))

(declare-fun b!7609088 () Bool)

(declare-fun tp!2219916 () Bool)

(assert (=> b!7609088 (= e!4525741 tp!2219916)))

(assert (= (and b!7608889 ((_ is ElementMatch!20211) (regOne!40934 (regTwo!40935 r!19218)))) b!7609086))

(assert (= (and b!7608889 ((_ is Concat!29056) (regOne!40934 (regTwo!40935 r!19218)))) b!7609087))

(assert (= (and b!7608889 ((_ is Star!20211) (regOne!40934 (regTwo!40935 r!19218)))) b!7609088))

(assert (= (and b!7608889 ((_ is Union!20211) (regOne!40934 (regTwo!40935 r!19218)))) b!7609089))

(declare-fun b!7609090 () Bool)

(declare-fun e!4525742 () Bool)

(assert (=> b!7609090 (= e!4525742 tp_is_empty!50777)))

(declare-fun b!7609093 () Bool)

(declare-fun tp!2219920 () Bool)

(declare-fun tp!2219923 () Bool)

(assert (=> b!7609093 (= e!4525742 (and tp!2219920 tp!2219923))))

(declare-fun b!7609091 () Bool)

(declare-fun tp!2219924 () Bool)

(declare-fun tp!2219922 () Bool)

(assert (=> b!7609091 (= e!4525742 (and tp!2219924 tp!2219922))))

(assert (=> b!7608889 (= tp!2219787 e!4525742)))

(declare-fun b!7609092 () Bool)

(declare-fun tp!2219921 () Bool)

(assert (=> b!7609092 (= e!4525742 tp!2219921)))

(assert (= (and b!7608889 ((_ is ElementMatch!20211) (regTwo!40934 (regTwo!40935 r!19218)))) b!7609090))

(assert (= (and b!7608889 ((_ is Concat!29056) (regTwo!40934 (regTwo!40935 r!19218)))) b!7609091))

(assert (= (and b!7608889 ((_ is Star!20211) (regTwo!40934 (regTwo!40935 r!19218)))) b!7609092))

(assert (= (and b!7608889 ((_ is Union!20211) (regTwo!40934 (regTwo!40935 r!19218)))) b!7609093))

(declare-fun b!7609094 () Bool)

(declare-fun e!4525743 () Bool)

(assert (=> b!7609094 (= e!4525743 tp_is_empty!50777)))

(declare-fun b!7609097 () Bool)

(declare-fun tp!2219925 () Bool)

(declare-fun tp!2219928 () Bool)

(assert (=> b!7609097 (= e!4525743 (and tp!2219925 tp!2219928))))

(declare-fun b!7609095 () Bool)

(declare-fun tp!2219929 () Bool)

(declare-fun tp!2219927 () Bool)

(assert (=> b!7609095 (= e!4525743 (and tp!2219929 tp!2219927))))

(assert (=> b!7608913 (= tp!2219810 e!4525743)))

(declare-fun b!7609096 () Bool)

(declare-fun tp!2219926 () Bool)

(assert (=> b!7609096 (= e!4525743 tp!2219926)))

(assert (= (and b!7608913 ((_ is ElementMatch!20211) (regOne!40935 (reg!20540 r!19218)))) b!7609094))

(assert (= (and b!7608913 ((_ is Concat!29056) (regOne!40935 (reg!20540 r!19218)))) b!7609095))

(assert (= (and b!7608913 ((_ is Star!20211) (regOne!40935 (reg!20540 r!19218)))) b!7609096))

(assert (= (and b!7608913 ((_ is Union!20211) (regOne!40935 (reg!20540 r!19218)))) b!7609097))

(declare-fun b!7609098 () Bool)

(declare-fun e!4525744 () Bool)

(assert (=> b!7609098 (= e!4525744 tp_is_empty!50777)))

(declare-fun b!7609101 () Bool)

(declare-fun tp!2219930 () Bool)

(declare-fun tp!2219933 () Bool)

(assert (=> b!7609101 (= e!4525744 (and tp!2219930 tp!2219933))))

(declare-fun b!7609099 () Bool)

(declare-fun tp!2219934 () Bool)

(declare-fun tp!2219932 () Bool)

(assert (=> b!7609099 (= e!4525744 (and tp!2219934 tp!2219932))))

(assert (=> b!7608913 (= tp!2219813 e!4525744)))

(declare-fun b!7609100 () Bool)

(declare-fun tp!2219931 () Bool)

(assert (=> b!7609100 (= e!4525744 tp!2219931)))

(assert (= (and b!7608913 ((_ is ElementMatch!20211) (regTwo!40935 (reg!20540 r!19218)))) b!7609098))

(assert (= (and b!7608913 ((_ is Concat!29056) (regTwo!40935 (reg!20540 r!19218)))) b!7609099))

(assert (= (and b!7608913 ((_ is Star!20211) (regTwo!40935 (reg!20540 r!19218)))) b!7609100))

(assert (= (and b!7608913 ((_ is Union!20211) (regTwo!40935 (reg!20540 r!19218)))) b!7609101))

(declare-fun b!7609102 () Bool)

(declare-fun e!4525745 () Bool)

(assert (=> b!7609102 (= e!4525745 tp_is_empty!50777)))

(declare-fun b!7609105 () Bool)

(declare-fun tp!2219935 () Bool)

(declare-fun tp!2219938 () Bool)

(assert (=> b!7609105 (= e!4525745 (and tp!2219935 tp!2219938))))

(declare-fun b!7609103 () Bool)

(declare-fun tp!2219939 () Bool)

(declare-fun tp!2219937 () Bool)

(assert (=> b!7609103 (= e!4525745 (and tp!2219939 tp!2219937))))

(assert (=> b!7608912 (= tp!2219811 e!4525745)))

(declare-fun b!7609104 () Bool)

(declare-fun tp!2219936 () Bool)

(assert (=> b!7609104 (= e!4525745 tp!2219936)))

(assert (= (and b!7608912 ((_ is ElementMatch!20211) (reg!20540 (reg!20540 r!19218)))) b!7609102))

(assert (= (and b!7608912 ((_ is Concat!29056) (reg!20540 (reg!20540 r!19218)))) b!7609103))

(assert (= (and b!7608912 ((_ is Star!20211) (reg!20540 (reg!20540 r!19218)))) b!7609104))

(assert (= (and b!7608912 ((_ is Union!20211) (reg!20540 (reg!20540 r!19218)))) b!7609105))

(declare-fun b!7609106 () Bool)

(declare-fun e!4525746 () Bool)

(assert (=> b!7609106 (= e!4525746 tp_is_empty!50777)))

(declare-fun b!7609109 () Bool)

(declare-fun tp!2219940 () Bool)

(declare-fun tp!2219943 () Bool)

(assert (=> b!7609109 (= e!4525746 (and tp!2219940 tp!2219943))))

(declare-fun b!7609107 () Bool)

(declare-fun tp!2219944 () Bool)

(declare-fun tp!2219942 () Bool)

(assert (=> b!7609107 (= e!4525746 (and tp!2219944 tp!2219942))))

(assert (=> b!7608911 (= tp!2219814 e!4525746)))

(declare-fun b!7609108 () Bool)

(declare-fun tp!2219941 () Bool)

(assert (=> b!7609108 (= e!4525746 tp!2219941)))

(assert (= (and b!7608911 ((_ is ElementMatch!20211) (regOne!40934 (reg!20540 r!19218)))) b!7609106))

(assert (= (and b!7608911 ((_ is Concat!29056) (regOne!40934 (reg!20540 r!19218)))) b!7609107))

(assert (= (and b!7608911 ((_ is Star!20211) (regOne!40934 (reg!20540 r!19218)))) b!7609108))

(assert (= (and b!7608911 ((_ is Union!20211) (regOne!40934 (reg!20540 r!19218)))) b!7609109))

(declare-fun b!7609110 () Bool)

(declare-fun e!4525747 () Bool)

(assert (=> b!7609110 (= e!4525747 tp_is_empty!50777)))

(declare-fun b!7609113 () Bool)

(declare-fun tp!2219945 () Bool)

(declare-fun tp!2219948 () Bool)

(assert (=> b!7609113 (= e!4525747 (and tp!2219945 tp!2219948))))

(declare-fun b!7609111 () Bool)

(declare-fun tp!2219949 () Bool)

(declare-fun tp!2219947 () Bool)

(assert (=> b!7609111 (= e!4525747 (and tp!2219949 tp!2219947))))

(assert (=> b!7608911 (= tp!2219812 e!4525747)))

(declare-fun b!7609112 () Bool)

(declare-fun tp!2219946 () Bool)

(assert (=> b!7609112 (= e!4525747 tp!2219946)))

(assert (= (and b!7608911 ((_ is ElementMatch!20211) (regTwo!40934 (reg!20540 r!19218)))) b!7609110))

(assert (= (and b!7608911 ((_ is Concat!29056) (regTwo!40934 (reg!20540 r!19218)))) b!7609111))

(assert (= (and b!7608911 ((_ is Star!20211) (regTwo!40934 (reg!20540 r!19218)))) b!7609112))

(assert (= (and b!7608911 ((_ is Union!20211) (regTwo!40934 (reg!20540 r!19218)))) b!7609113))

(declare-fun b!7609114 () Bool)

(declare-fun e!4525748 () Bool)

(assert (=> b!7609114 (= e!4525748 tp_is_empty!50777)))

(declare-fun b!7609117 () Bool)

(declare-fun tp!2219950 () Bool)

(declare-fun tp!2219953 () Bool)

(assert (=> b!7609117 (= e!4525748 (and tp!2219950 tp!2219953))))

(declare-fun b!7609115 () Bool)

(declare-fun tp!2219954 () Bool)

(declare-fun tp!2219952 () Bool)

(assert (=> b!7609115 (= e!4525748 (and tp!2219954 tp!2219952))))

(assert (=> b!7608899 (= tp!2219790 e!4525748)))

(declare-fun b!7609116 () Bool)

(declare-fun tp!2219951 () Bool)

(assert (=> b!7609116 (= e!4525748 tp!2219951)))

(assert (= (and b!7608899 ((_ is ElementMatch!20211) (regOne!40935 (regOne!40934 r!19218)))) b!7609114))

(assert (= (and b!7608899 ((_ is Concat!29056) (regOne!40935 (regOne!40934 r!19218)))) b!7609115))

(assert (= (and b!7608899 ((_ is Star!20211) (regOne!40935 (regOne!40934 r!19218)))) b!7609116))

(assert (= (and b!7608899 ((_ is Union!20211) (regOne!40935 (regOne!40934 r!19218)))) b!7609117))

(declare-fun b!7609118 () Bool)

(declare-fun e!4525749 () Bool)

(assert (=> b!7609118 (= e!4525749 tp_is_empty!50777)))

(declare-fun b!7609121 () Bool)

(declare-fun tp!2219955 () Bool)

(declare-fun tp!2219958 () Bool)

(assert (=> b!7609121 (= e!4525749 (and tp!2219955 tp!2219958))))

(declare-fun b!7609119 () Bool)

(declare-fun tp!2219959 () Bool)

(declare-fun tp!2219957 () Bool)

(assert (=> b!7609119 (= e!4525749 (and tp!2219959 tp!2219957))))

(assert (=> b!7608899 (= tp!2219793 e!4525749)))

(declare-fun b!7609120 () Bool)

(declare-fun tp!2219956 () Bool)

(assert (=> b!7609120 (= e!4525749 tp!2219956)))

(assert (= (and b!7608899 ((_ is ElementMatch!20211) (regTwo!40935 (regOne!40934 r!19218)))) b!7609118))

(assert (= (and b!7608899 ((_ is Concat!29056) (regTwo!40935 (regOne!40934 r!19218)))) b!7609119))

(assert (= (and b!7608899 ((_ is Star!20211) (regTwo!40935 (regOne!40934 r!19218)))) b!7609120))

(assert (= (and b!7608899 ((_ is Union!20211) (regTwo!40935 (regOne!40934 r!19218)))) b!7609121))

(declare-fun b!7609122 () Bool)

(declare-fun e!4525750 () Bool)

(assert (=> b!7609122 (= e!4525750 tp_is_empty!50777)))

(declare-fun b!7609125 () Bool)

(declare-fun tp!2219960 () Bool)

(declare-fun tp!2219963 () Bool)

(assert (=> b!7609125 (= e!4525750 (and tp!2219960 tp!2219963))))

(declare-fun b!7609123 () Bool)

(declare-fun tp!2219964 () Bool)

(declare-fun tp!2219962 () Bool)

(assert (=> b!7609123 (= e!4525750 (and tp!2219964 tp!2219962))))

(assert (=> b!7608898 (= tp!2219791 e!4525750)))

(declare-fun b!7609124 () Bool)

(declare-fun tp!2219961 () Bool)

(assert (=> b!7609124 (= e!4525750 tp!2219961)))

(assert (= (and b!7608898 ((_ is ElementMatch!20211) (reg!20540 (regOne!40934 r!19218)))) b!7609122))

(assert (= (and b!7608898 ((_ is Concat!29056) (reg!20540 (regOne!40934 r!19218)))) b!7609123))

(assert (= (and b!7608898 ((_ is Star!20211) (reg!20540 (regOne!40934 r!19218)))) b!7609124))

(assert (= (and b!7608898 ((_ is Union!20211) (reg!20540 (regOne!40934 r!19218)))) b!7609125))

(check-sat (not b!7608969) (not d!2322069) (not bm!698708) (not b!7609104) (not b!7609101) (not b!7609108) (not b!7609085) (not b!7609071) (not bm!698700) (not b!7609057) (not b!7609081) (not b!7609076) (not b!7609045) (not b!7609099) (not b!7609027) (not d!2322089) (not b!7609092) (not b!7609044) (not b!7609053) (not b!7609031) (not b!7609037) (not b!7609065) (not b!7609075) (not b!7609121) (not bm!698709) (not b!7609041) (not bm!698722) (not b!7609091) (not bm!698716) (not b!7609088) (not b!7609107) (not b!7609113) (not b!7609061) (not b!7609105) (not b!7609032) (not b!7609084) (not b!7609068) (not b!7609119) (not b!7609096) (not b!7609093) (not b!7609049) (not b!7609028) (not b!7608960) (not bm!698706) (not b!7609117) (not b!7609052) (not b!7609112) (not bm!698703) (not b!7609064) (not b!7609077) (not b!7609056) (not b!7609124) (not b!7609039) (not b!7609040) (not b!7609015) (not b!7609116) tp_is_empty!50777 (not b!7609067) (not b!7609029) (not b!7609047) (not b!7609111) (not bm!698723) (not b!7609033) (not b!7609125) (not d!2322079) (not b!7609083) (not b!7609072) (not bm!698715) (not b!7609055) (not d!2322081) (not b!7609087) (not b!7609048) (not b!7609060) (not b!7609120) (not b!7609097) (not bm!698701) (not d!2322087) (not b!7609059) (not bm!698702) (not b!7609035) (not b!7609103) (not b!7609069) (not b!7609006) (not b!7609109) (not b!7609100) (not bm!698719) (not bm!698720) (not b!7609051) (not b!7609073) (not b!7609063) (not b!7609079) (not b!7609089) (not bm!698705) (not bm!698717) (not b!7609095) (not b!7609080) (not b!7609115) (not b!7609123) (not b!7609036) (not bm!698714) (not b!7609043))
(check-sat)
