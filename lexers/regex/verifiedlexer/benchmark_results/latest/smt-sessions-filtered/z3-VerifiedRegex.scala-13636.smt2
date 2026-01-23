; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731696 () Bool)

(assert start!731696)

(declare-fun b!7577617 () Bool)

(declare-fun e!4510519 () Bool)

(declare-fun tp!2208005 () Bool)

(assert (=> b!7577617 (= e!4510519 tp!2208005)))

(declare-fun b!7577618 () Bool)

(declare-fun e!4510518 () Bool)

(declare-fun tp_is_empty!50489 () Bool)

(declare-fun tp!2208003 () Bool)

(assert (=> b!7577618 (= e!4510518 (and tp_is_empty!50489 tp!2208003))))

(declare-fun res!3035902 () Bool)

(declare-fun e!4510517 () Bool)

(assert (=> start!731696 (=> (not res!3035902) (not e!4510517))))

(declare-datatypes ((C!40460 0))(
  ( (C!40461 (val!30670 Int)) )
))
(declare-datatypes ((Regex!20067 0))(
  ( (ElementMatch!20067 (c!1397750 C!40460)) (Concat!28912 (regOne!40646 Regex!20067) (regTwo!40646 Regex!20067)) (EmptyExpr!20067) (Star!20067 (reg!20396 Regex!20067)) (EmptyLang!20067) (Union!20067 (regOne!40647 Regex!20067) (regTwo!40647 Regex!20067)) )
))
(declare-fun r!22341 () Regex!20067)

(declare-fun validRegex!10495 (Regex!20067) Bool)

(assert (=> start!731696 (= res!3035902 (validRegex!10495 r!22341))))

(assert (=> start!731696 e!4510517))

(assert (=> start!731696 e!4510519))

(assert (=> start!731696 e!4510518))

(declare-fun b!7577619 () Bool)

(declare-fun tp!2208000 () Bool)

(declare-fun tp!2208004 () Bool)

(assert (=> b!7577619 (= e!4510519 (and tp!2208000 tp!2208004))))

(declare-fun b!7577620 () Bool)

(assert (=> b!7577620 (= e!4510519 tp_is_empty!50489)))

(declare-fun b!7577621 () Bool)

(declare-datatypes ((List!72950 0))(
  ( (Nil!72826) (Cons!72826 (h!79274 C!40460) (t!387685 List!72950)) )
))
(declare-fun s!13436 () List!72950)

(declare-fun regexDepth!459 (Regex!20067) Int)

(declare-fun size!42498 (List!72950) Int)

(assert (=> b!7577621 (= e!4510517 (< (+ (regexDepth!459 r!22341) (size!42498 s!13436)) 0))))

(declare-fun b!7577622 () Bool)

(declare-fun res!3035901 () Bool)

(assert (=> b!7577622 (=> (not res!3035901) (not e!4510517))))

(declare-fun lostCause!1843 (Regex!20067) Bool)

(assert (=> b!7577622 (= res!3035901 (lostCause!1843 r!22341))))

(declare-fun b!7577623 () Bool)

(declare-fun tp!2208001 () Bool)

(declare-fun tp!2208002 () Bool)

(assert (=> b!7577623 (= e!4510519 (and tp!2208001 tp!2208002))))

(assert (= (and start!731696 res!3035902) b!7577622))

(assert (= (and b!7577622 res!3035901) b!7577621))

(get-info :version)

(assert (= (and start!731696 ((_ is ElementMatch!20067) r!22341)) b!7577620))

(assert (= (and start!731696 ((_ is Concat!28912) r!22341)) b!7577619))

(assert (= (and start!731696 ((_ is Star!20067) r!22341)) b!7577617))

(assert (= (and start!731696 ((_ is Union!20067) r!22341)) b!7577623))

(assert (= (and start!731696 ((_ is Cons!72826) s!13436)) b!7577618))

(declare-fun m!8134918 () Bool)

(assert (=> start!731696 m!8134918))

(declare-fun m!8134920 () Bool)

(assert (=> b!7577621 m!8134920))

(declare-fun m!8134922 () Bool)

(assert (=> b!7577621 m!8134922))

(declare-fun m!8134924 () Bool)

(assert (=> b!7577622 m!8134924))

(check-sat (not b!7577617) (not b!7577623) (not b!7577621) (not b!7577619) (not b!7577618) (not start!731696) tp_is_empty!50489 (not b!7577622))
(check-sat)
(get-model)

(declare-fun d!2318115 () Bool)

(declare-fun lostCauseFct!495 (Regex!20067) Bool)

(assert (=> d!2318115 (= (lostCause!1843 r!22341) (lostCauseFct!495 r!22341))))

(declare-fun bs!1940917 () Bool)

(assert (= bs!1940917 d!2318115))

(declare-fun m!8134926 () Bool)

(assert (=> bs!1940917 m!8134926))

(assert (=> b!7577622 d!2318115))

(declare-fun b!7577676 () Bool)

(declare-fun e!4510559 () Bool)

(declare-fun call!694613 () Bool)

(assert (=> b!7577676 (= e!4510559 call!694613)))

(declare-fun b!7577677 () Bool)

(declare-fun e!4510560 () Bool)

(declare-fun e!4510555 () Bool)

(assert (=> b!7577677 (= e!4510560 e!4510555)))

(declare-fun res!3035922 () Bool)

(assert (=> b!7577677 (=> (not res!3035922) (not e!4510555))))

(declare-fun call!694611 () Bool)

(assert (=> b!7577677 (= res!3035922 call!694611)))

(declare-fun b!7577678 () Bool)

(declare-fun e!4510554 () Bool)

(declare-fun e!4510558 () Bool)

(assert (=> b!7577678 (= e!4510554 e!4510558)))

(declare-fun c!1397770 () Bool)

(assert (=> b!7577678 (= c!1397770 ((_ is Star!20067) r!22341))))

(declare-fun b!7577679 () Bool)

(declare-fun call!694612 () Bool)

(assert (=> b!7577679 (= e!4510555 call!694612)))

(declare-fun bm!694606 () Bool)

(declare-fun c!1397769 () Bool)

(assert (=> bm!694606 (= call!694613 (validRegex!10495 (ite c!1397770 (reg!20396 r!22341) (ite c!1397769 (regTwo!40647 r!22341) (regOne!40646 r!22341)))))))

(declare-fun b!7577680 () Bool)

(declare-fun e!4510557 () Bool)

(assert (=> b!7577680 (= e!4510557 call!694611)))

(declare-fun b!7577681 () Bool)

(declare-fun e!4510556 () Bool)

(assert (=> b!7577681 (= e!4510558 e!4510556)))

(assert (=> b!7577681 (= c!1397769 ((_ is Union!20067) r!22341))))

(declare-fun b!7577682 () Bool)

(declare-fun res!3035920 () Bool)

(assert (=> b!7577682 (=> (not res!3035920) (not e!4510557))))

(assert (=> b!7577682 (= res!3035920 call!694612)))

(assert (=> b!7577682 (= e!4510556 e!4510557)))

(declare-fun b!7577683 () Bool)

(assert (=> b!7577683 (= e!4510558 e!4510559)))

(declare-fun res!3035923 () Bool)

(declare-fun nullable!8759 (Regex!20067) Bool)

(assert (=> b!7577683 (= res!3035923 (not (nullable!8759 (reg!20396 r!22341))))))

(assert (=> b!7577683 (=> (not res!3035923) (not e!4510559))))

(declare-fun b!7577684 () Bool)

(declare-fun res!3035919 () Bool)

(assert (=> b!7577684 (=> res!3035919 e!4510560)))

(assert (=> b!7577684 (= res!3035919 (not ((_ is Concat!28912) r!22341)))))

(assert (=> b!7577684 (= e!4510556 e!4510560)))

(declare-fun bm!694607 () Bool)

(assert (=> bm!694607 (= call!694611 call!694613)))

(declare-fun d!2318117 () Bool)

(declare-fun res!3035921 () Bool)

(assert (=> d!2318117 (=> res!3035921 e!4510554)))

(assert (=> d!2318117 (= res!3035921 ((_ is ElementMatch!20067) r!22341))))

(assert (=> d!2318117 (= (validRegex!10495 r!22341) e!4510554)))

(declare-fun bm!694608 () Bool)

(assert (=> bm!694608 (= call!694612 (validRegex!10495 (ite c!1397769 (regOne!40647 r!22341) (regTwo!40646 r!22341))))))

(assert (= (and d!2318117 (not res!3035921)) b!7577678))

(assert (= (and b!7577678 c!1397770) b!7577683))

(assert (= (and b!7577678 (not c!1397770)) b!7577681))

(assert (= (and b!7577683 res!3035923) b!7577676))

(assert (= (and b!7577681 c!1397769) b!7577682))

(assert (= (and b!7577681 (not c!1397769)) b!7577684))

(assert (= (and b!7577682 res!3035920) b!7577680))

(assert (= (and b!7577684 (not res!3035919)) b!7577677))

(assert (= (and b!7577677 res!3035922) b!7577679))

(assert (= (or b!7577680 b!7577677) bm!694607))

(assert (= (or b!7577682 b!7577679) bm!694608))

(assert (= (or b!7577676 bm!694607) bm!694606))

(declare-fun m!8134928 () Bool)

(assert (=> bm!694606 m!8134928))

(declare-fun m!8134930 () Bool)

(assert (=> b!7577683 m!8134930))

(declare-fun m!8134932 () Bool)

(assert (=> bm!694608 m!8134932))

(assert (=> start!731696 d!2318117))

(declare-fun b!7577760 () Bool)

(declare-fun e!4510611 () Int)

(assert (=> b!7577760 (= e!4510611 1)))

(declare-fun b!7577761 () Bool)

(declare-fun e!4510615 () Bool)

(declare-fun e!4510609 () Bool)

(assert (=> b!7577761 (= e!4510615 e!4510609)))

(declare-fun res!3035943 () Bool)

(declare-fun lt!2652401 () Int)

(declare-fun call!694645 () Int)

(assert (=> b!7577761 (= res!3035943 (> lt!2652401 call!694645))))

(assert (=> b!7577761 (=> (not res!3035943) (not e!4510609))))

(declare-fun bm!694636 () Bool)

(declare-fun call!694647 () Int)

(declare-fun call!694644 () Int)

(assert (=> bm!694636 (= call!694647 call!694644)))

(declare-fun call!694643 () Int)

(declare-fun c!1397805 () Bool)

(declare-fun c!1397799 () Bool)

(declare-fun bm!694637 () Bool)

(assert (=> bm!694637 (= call!694643 (regexDepth!459 (ite c!1397805 (regTwo!40647 r!22341) (ite c!1397799 (regOne!40646 r!22341) (reg!20396 r!22341)))))))

(declare-fun b!7577762 () Bool)

(declare-fun e!4510617 () Int)

(assert (=> b!7577762 (= e!4510617 (+ 1 call!694644))))

(declare-fun b!7577763 () Bool)

(declare-fun e!4510610 () Bool)

(declare-fun call!694641 () Int)

(assert (=> b!7577763 (= e!4510610 (> lt!2652401 call!694641))))

(declare-fun b!7577764 () Bool)

(assert (=> b!7577764 (= e!4510610 (= lt!2652401 1))))

(declare-fun bm!694638 () Bool)

(assert (=> bm!694638 (= call!694645 (regexDepth!459 (ite c!1397805 (regOne!40647 r!22341) (regTwo!40646 r!22341))))))

(declare-fun b!7577765 () Bool)

(declare-fun res!3035944 () Bool)

(declare-fun e!4510616 () Bool)

(assert (=> b!7577765 (=> (not res!3035944) (not e!4510616))))

(assert (=> b!7577765 (= res!3035944 (> lt!2652401 call!694641))))

(declare-fun e!4510612 () Bool)

(assert (=> b!7577765 (= e!4510612 e!4510616)))

(declare-fun b!7577766 () Bool)

(assert (=> b!7577766 (= e!4510609 (> lt!2652401 call!694643))))

(declare-fun b!7577767 () Bool)

(declare-fun e!4510608 () Int)

(declare-fun call!694642 () Int)

(assert (=> b!7577767 (= e!4510608 (+ 1 call!694642))))

(declare-fun bm!694639 () Bool)

(declare-fun call!694646 () Int)

(declare-fun c!1397803 () Bool)

(assert (=> bm!694639 (= call!694646 (regexDepth!459 (ite c!1397803 (regOne!40647 r!22341) (regTwo!40646 r!22341))))))

(declare-fun b!7577768 () Bool)

(declare-fun c!1397804 () Bool)

(assert (=> b!7577768 (= c!1397804 ((_ is Star!20067) r!22341))))

(assert (=> b!7577768 (= e!4510612 e!4510610)))

(declare-fun b!7577769 () Bool)

(assert (=> b!7577769 (= c!1397803 ((_ is Union!20067) r!22341))))

(assert (=> b!7577769 (= e!4510617 e!4510608)))

(declare-fun d!2318119 () Bool)

(declare-fun e!4510613 () Bool)

(assert (=> d!2318119 e!4510613))

(declare-fun res!3035945 () Bool)

(assert (=> d!2318119 (=> (not res!3035945) (not e!4510613))))

(assert (=> d!2318119 (= res!3035945 (> lt!2652401 0))))

(declare-fun e!4510614 () Int)

(assert (=> d!2318119 (= lt!2652401 e!4510614)))

(declare-fun c!1397800 () Bool)

(assert (=> d!2318119 (= c!1397800 ((_ is ElementMatch!20067) r!22341))))

(assert (=> d!2318119 (= (regexDepth!459 r!22341) lt!2652401)))

(declare-fun bm!694640 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!694640 (= call!694642 (maxBigInt!0 (ite c!1397803 call!694646 call!694647) (ite c!1397803 call!694647 call!694646)))))

(declare-fun b!7577770 () Bool)

(assert (=> b!7577770 (= e!4510611 (+ 1 call!694642))))

(declare-fun b!7577771 () Bool)

(assert (=> b!7577771 (= e!4510614 1)))

(declare-fun b!7577772 () Bool)

(assert (=> b!7577772 (= e!4510613 e!4510615)))

(assert (=> b!7577772 (= c!1397805 ((_ is Union!20067) r!22341))))

(declare-fun b!7577773 () Bool)

(assert (=> b!7577773 (= e!4510616 (> lt!2652401 call!694645))))

(declare-fun b!7577774 () Bool)

(assert (=> b!7577774 (= e!4510615 e!4510612)))

(assert (=> b!7577774 (= c!1397799 ((_ is Concat!28912) r!22341))))

(declare-fun bm!694641 () Bool)

(declare-fun c!1397802 () Bool)

(assert (=> bm!694641 (= call!694644 (regexDepth!459 (ite c!1397802 (reg!20396 r!22341) (ite c!1397803 (regTwo!40647 r!22341) (regOne!40646 r!22341)))))))

(declare-fun bm!694642 () Bool)

(assert (=> bm!694642 (= call!694641 call!694643)))

(declare-fun b!7577775 () Bool)

(assert (=> b!7577775 (= e!4510614 e!4510617)))

(assert (=> b!7577775 (= c!1397802 ((_ is Star!20067) r!22341))))

(declare-fun b!7577776 () Bool)

(assert (=> b!7577776 (= e!4510608 e!4510611)))

(declare-fun c!1397801 () Bool)

(assert (=> b!7577776 (= c!1397801 ((_ is Concat!28912) r!22341))))

(assert (= (and d!2318119 c!1397800) b!7577771))

(assert (= (and d!2318119 (not c!1397800)) b!7577775))

(assert (= (and b!7577775 c!1397802) b!7577762))

(assert (= (and b!7577775 (not c!1397802)) b!7577769))

(assert (= (and b!7577769 c!1397803) b!7577767))

(assert (= (and b!7577769 (not c!1397803)) b!7577776))

(assert (= (and b!7577776 c!1397801) b!7577770))

(assert (= (and b!7577776 (not c!1397801)) b!7577760))

(assert (= (or b!7577767 b!7577770) bm!694639))

(assert (= (or b!7577767 b!7577770) bm!694636))

(assert (= (or b!7577767 b!7577770) bm!694640))

(assert (= (or b!7577762 bm!694636) bm!694641))

(assert (= (and d!2318119 res!3035945) b!7577772))

(assert (= (and b!7577772 c!1397805) b!7577761))

(assert (= (and b!7577772 (not c!1397805)) b!7577774))

(assert (= (and b!7577761 res!3035943) b!7577766))

(assert (= (and b!7577774 c!1397799) b!7577765))

(assert (= (and b!7577774 (not c!1397799)) b!7577768))

(assert (= (and b!7577765 res!3035944) b!7577773))

(assert (= (and b!7577768 c!1397804) b!7577763))

(assert (= (and b!7577768 (not c!1397804)) b!7577764))

(assert (= (or b!7577765 b!7577763) bm!694642))

(assert (= (or b!7577766 bm!694642) bm!694637))

(assert (= (or b!7577761 b!7577773) bm!694638))

(declare-fun m!8134952 () Bool)

(assert (=> bm!694637 m!8134952))

(declare-fun m!8134954 () Bool)

(assert (=> bm!694638 m!8134954))

(declare-fun m!8134956 () Bool)

(assert (=> bm!694641 m!8134956))

(declare-fun m!8134958 () Bool)

(assert (=> bm!694640 m!8134958))

(declare-fun m!8134960 () Bool)

(assert (=> bm!694639 m!8134960))

(assert (=> b!7577621 d!2318119))

(declare-fun d!2318127 () Bool)

(declare-fun lt!2652404 () Int)

(assert (=> d!2318127 (>= lt!2652404 0)))

(declare-fun e!4510629 () Int)

(assert (=> d!2318127 (= lt!2652404 e!4510629)))

(declare-fun c!1397810 () Bool)

(assert (=> d!2318127 (= c!1397810 ((_ is Nil!72826) s!13436))))

(assert (=> d!2318127 (= (size!42498 s!13436) lt!2652404)))

(declare-fun b!7577800 () Bool)

(assert (=> b!7577800 (= e!4510629 0)))

(declare-fun b!7577801 () Bool)

(assert (=> b!7577801 (= e!4510629 (+ 1 (size!42498 (t!387685 s!13436))))))

(assert (= (and d!2318127 c!1397810) b!7577800))

(assert (= (and d!2318127 (not c!1397810)) b!7577801))

(declare-fun m!8134964 () Bool)

(assert (=> b!7577801 m!8134964))

(assert (=> b!7577621 d!2318127))

(declare-fun b!7577839 () Bool)

(declare-fun e!4510639 () Bool)

(declare-fun tp!2208054 () Bool)

(declare-fun tp!2208053 () Bool)

(assert (=> b!7577839 (= e!4510639 (and tp!2208054 tp!2208053))))

(assert (=> b!7577617 (= tp!2208005 e!4510639)))

(declare-fun b!7577836 () Bool)

(assert (=> b!7577836 (= e!4510639 tp_is_empty!50489)))

(declare-fun b!7577838 () Bool)

(declare-fun tp!2208055 () Bool)

(assert (=> b!7577838 (= e!4510639 tp!2208055)))

(declare-fun b!7577837 () Bool)

(declare-fun tp!2208057 () Bool)

(declare-fun tp!2208056 () Bool)

(assert (=> b!7577837 (= e!4510639 (and tp!2208057 tp!2208056))))

(assert (= (and b!7577617 ((_ is ElementMatch!20067) (reg!20396 r!22341))) b!7577836))

(assert (= (and b!7577617 ((_ is Concat!28912) (reg!20396 r!22341))) b!7577837))

(assert (= (and b!7577617 ((_ is Star!20067) (reg!20396 r!22341))) b!7577838))

(assert (= (and b!7577617 ((_ is Union!20067) (reg!20396 r!22341))) b!7577839))

(declare-fun b!7577844 () Bool)

(declare-fun e!4510641 () Bool)

(declare-fun tp!2208060 () Bool)

(declare-fun tp!2208059 () Bool)

(assert (=> b!7577844 (= e!4510641 (and tp!2208060 tp!2208059))))

(assert (=> b!7577623 (= tp!2208001 e!4510641)))

(declare-fun b!7577841 () Bool)

(assert (=> b!7577841 (= e!4510641 tp_is_empty!50489)))

(declare-fun b!7577843 () Bool)

(declare-fun tp!2208061 () Bool)

(assert (=> b!7577843 (= e!4510641 tp!2208061)))

(declare-fun b!7577842 () Bool)

(declare-fun tp!2208063 () Bool)

(declare-fun tp!2208062 () Bool)

(assert (=> b!7577842 (= e!4510641 (and tp!2208063 tp!2208062))))

(assert (= (and b!7577623 ((_ is ElementMatch!20067) (regOne!40647 r!22341))) b!7577841))

(assert (= (and b!7577623 ((_ is Concat!28912) (regOne!40647 r!22341))) b!7577842))

(assert (= (and b!7577623 ((_ is Star!20067) (regOne!40647 r!22341))) b!7577843))

(assert (= (and b!7577623 ((_ is Union!20067) (regOne!40647 r!22341))) b!7577844))

(declare-fun b!7577848 () Bool)

(declare-fun e!4510642 () Bool)

(declare-fun tp!2208065 () Bool)

(declare-fun tp!2208064 () Bool)

(assert (=> b!7577848 (= e!4510642 (and tp!2208065 tp!2208064))))

(assert (=> b!7577623 (= tp!2208002 e!4510642)))

(declare-fun b!7577845 () Bool)

(assert (=> b!7577845 (= e!4510642 tp_is_empty!50489)))

(declare-fun b!7577847 () Bool)

(declare-fun tp!2208066 () Bool)

(assert (=> b!7577847 (= e!4510642 tp!2208066)))

(declare-fun b!7577846 () Bool)

(declare-fun tp!2208068 () Bool)

(declare-fun tp!2208067 () Bool)

(assert (=> b!7577846 (= e!4510642 (and tp!2208068 tp!2208067))))

(assert (= (and b!7577623 ((_ is ElementMatch!20067) (regTwo!40647 r!22341))) b!7577845))

(assert (= (and b!7577623 ((_ is Concat!28912) (regTwo!40647 r!22341))) b!7577846))

(assert (= (and b!7577623 ((_ is Star!20067) (regTwo!40647 r!22341))) b!7577847))

(assert (= (and b!7577623 ((_ is Union!20067) (regTwo!40647 r!22341))) b!7577848))

(declare-fun b!7577853 () Bool)

(declare-fun e!4510645 () Bool)

(declare-fun tp!2208071 () Bool)

(assert (=> b!7577853 (= e!4510645 (and tp_is_empty!50489 tp!2208071))))

(assert (=> b!7577618 (= tp!2208003 e!4510645)))

(assert (= (and b!7577618 ((_ is Cons!72826) (t!387685 s!13436))) b!7577853))

(declare-fun b!7577857 () Bool)

(declare-fun e!4510646 () Bool)

(declare-fun tp!2208073 () Bool)

(declare-fun tp!2208072 () Bool)

(assert (=> b!7577857 (= e!4510646 (and tp!2208073 tp!2208072))))

(assert (=> b!7577619 (= tp!2208000 e!4510646)))

(declare-fun b!7577854 () Bool)

(assert (=> b!7577854 (= e!4510646 tp_is_empty!50489)))

(declare-fun b!7577856 () Bool)

(declare-fun tp!2208074 () Bool)

(assert (=> b!7577856 (= e!4510646 tp!2208074)))

(declare-fun b!7577855 () Bool)

(declare-fun tp!2208076 () Bool)

(declare-fun tp!2208075 () Bool)

(assert (=> b!7577855 (= e!4510646 (and tp!2208076 tp!2208075))))

(assert (= (and b!7577619 ((_ is ElementMatch!20067) (regOne!40646 r!22341))) b!7577854))

(assert (= (and b!7577619 ((_ is Concat!28912) (regOne!40646 r!22341))) b!7577855))

(assert (= (and b!7577619 ((_ is Star!20067) (regOne!40646 r!22341))) b!7577856))

(assert (= (and b!7577619 ((_ is Union!20067) (regOne!40646 r!22341))) b!7577857))

(declare-fun b!7577861 () Bool)

(declare-fun e!4510647 () Bool)

(declare-fun tp!2208078 () Bool)

(declare-fun tp!2208077 () Bool)

(assert (=> b!7577861 (= e!4510647 (and tp!2208078 tp!2208077))))

(assert (=> b!7577619 (= tp!2208004 e!4510647)))

(declare-fun b!7577858 () Bool)

(assert (=> b!7577858 (= e!4510647 tp_is_empty!50489)))

(declare-fun b!7577860 () Bool)

(declare-fun tp!2208079 () Bool)

(assert (=> b!7577860 (= e!4510647 tp!2208079)))

(declare-fun b!7577859 () Bool)

(declare-fun tp!2208081 () Bool)

(declare-fun tp!2208080 () Bool)

(assert (=> b!7577859 (= e!4510647 (and tp!2208081 tp!2208080))))

(assert (= (and b!7577619 ((_ is ElementMatch!20067) (regTwo!40646 r!22341))) b!7577858))

(assert (= (and b!7577619 ((_ is Concat!28912) (regTwo!40646 r!22341))) b!7577859))

(assert (= (and b!7577619 ((_ is Star!20067) (regTwo!40646 r!22341))) b!7577860))

(assert (= (and b!7577619 ((_ is Union!20067) (regTwo!40646 r!22341))) b!7577861))

(check-sat (not bm!694608) (not bm!694641) (not b!7577846) (not d!2318115) (not b!7577853) (not b!7577683) (not bm!694640) (not bm!694606) (not bm!694637) (not b!7577857) (not b!7577847) (not b!7577837) (not b!7577859) (not b!7577856) (not b!7577861) (not b!7577844) (not bm!694638) (not b!7577843) (not bm!694639) (not b!7577838) tp_is_empty!50489 (not b!7577855) (not b!7577801) (not b!7577848) (not b!7577839) (not b!7577860) (not b!7577842))
(check-sat)
