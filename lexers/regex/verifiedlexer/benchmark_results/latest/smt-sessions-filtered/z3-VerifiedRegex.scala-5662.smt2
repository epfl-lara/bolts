; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282550 () Bool)

(assert start!282550)

(declare-fun b!2902760 () Bool)

(declare-fun e!1832881 () Bool)

(declare-datatypes ((C!17940 0))(
  ( (C!17941 (val!11004 Int)) )
))
(declare-datatypes ((List!34680 0))(
  ( (Nil!34556) (Cons!34556 (h!39976 C!17940) (t!233723 List!34680)) )
))
(declare-fun prefix!1456 () List!34680)

(declare-fun size!26360 (List!34680) Int)

(assert (=> b!2902760 (= e!1832881 (< (size!26360 prefix!1456) 0))))

(declare-fun b!2902761 () Bool)

(declare-fun e!1832880 () Bool)

(declare-fun tp_is_empty!15345 () Bool)

(assert (=> b!2902761 (= e!1832880 tp_is_empty!15345)))

(declare-fun b!2902762 () Bool)

(declare-fun e!1832882 () Bool)

(declare-fun tp!931719 () Bool)

(assert (=> b!2902762 (= e!1832882 (and tp_is_empty!15345 tp!931719))))

(declare-fun res!1199321 () Bool)

(assert (=> start!282550 (=> (not res!1199321) (not e!1832881))))

(declare-datatypes ((Regex!8879 0))(
  ( (ElementMatch!8879 (c!473032 C!17940)) (Concat!14200 (regOne!18270 Regex!8879) (regTwo!18270 Regex!8879)) (EmptyExpr!8879) (Star!8879 (reg!9208 Regex!8879)) (EmptyLang!8879) (Union!8879 (regOne!18271 Regex!8879) (regTwo!18271 Regex!8879)) )
))
(declare-fun r!19097 () Regex!8879)

(declare-fun validRegex!3652 (Regex!8879) Bool)

(assert (=> start!282550 (= res!1199321 (validRegex!3652 r!19097))))

(assert (=> start!282550 e!1832881))

(assert (=> start!282550 e!1832880))

(assert (=> start!282550 e!1832882))

(declare-fun e!1832883 () Bool)

(assert (=> start!282550 e!1832883))

(declare-fun b!2902763 () Bool)

(declare-fun tp!931721 () Bool)

(assert (=> b!2902763 (= e!1832880 tp!931721)))

(declare-fun b!2902764 () Bool)

(declare-fun res!1199319 () Bool)

(assert (=> b!2902764 (=> (not res!1199319) (not e!1832881))))

(declare-fun prefixMatch!937 (Regex!8879 List!34680) Bool)

(assert (=> b!2902764 (= res!1199319 (not (prefixMatch!937 r!19097 prefix!1456)))))

(declare-fun b!2902765 () Bool)

(declare-fun tp!931715 () Bool)

(declare-fun tp!931718 () Bool)

(assert (=> b!2902765 (= e!1832880 (and tp!931715 tp!931718))))

(declare-fun b!2902766 () Bool)

(declare-fun tp!931716 () Bool)

(declare-fun tp!931717 () Bool)

(assert (=> b!2902766 (= e!1832880 (and tp!931716 tp!931717))))

(declare-fun b!2902767 () Bool)

(declare-fun tp!931720 () Bool)

(assert (=> b!2902767 (= e!1832883 (and tp_is_empty!15345 tp!931720))))

(declare-fun b!2902768 () Bool)

(declare-fun res!1199320 () Bool)

(assert (=> b!2902768 (=> (not res!1199320) (not e!1832881))))

(declare-fun s!13418 () List!34680)

(declare-fun isPrefix!2716 (List!34680 List!34680) Bool)

(assert (=> b!2902768 (= res!1199320 (isPrefix!2716 prefix!1456 s!13418))))

(assert (= (and start!282550 res!1199321) b!2902768))

(assert (= (and b!2902768 res!1199320) b!2902764))

(assert (= (and b!2902764 res!1199319) b!2902760))

(get-info :version)

(assert (= (and start!282550 ((_ is ElementMatch!8879) r!19097)) b!2902761))

(assert (= (and start!282550 ((_ is Concat!14200) r!19097)) b!2902765))

(assert (= (and start!282550 ((_ is Star!8879) r!19097)) b!2902763))

(assert (= (and start!282550 ((_ is Union!8879) r!19097)) b!2902766))

(assert (= (and start!282550 ((_ is Cons!34556) prefix!1456)) b!2902762))

(assert (= (and start!282550 ((_ is Cons!34556) s!13418)) b!2902767))

(declare-fun m!3306759 () Bool)

(assert (=> b!2902760 m!3306759))

(declare-fun m!3306761 () Bool)

(assert (=> start!282550 m!3306761))

(declare-fun m!3306763 () Bool)

(assert (=> b!2902764 m!3306763))

(declare-fun m!3306765 () Bool)

(assert (=> b!2902768 m!3306765))

(check-sat tp_is_empty!15345 (not b!2902764) (not b!2902763) (not b!2902767) (not b!2902760) (not b!2902766) (not b!2902762) (not b!2902768) (not start!282550) (not b!2902765))
(check-sat)
(get-model)

(declare-fun b!2902807 () Bool)

(declare-fun e!1832913 () Bool)

(assert (=> b!2902807 (= e!1832913 (>= (size!26360 s!13418) (size!26360 prefix!1456)))))

(declare-fun b!2902804 () Bool)

(declare-fun e!1832912 () Bool)

(declare-fun e!1832911 () Bool)

(assert (=> b!2902804 (= e!1832912 e!1832911)))

(declare-fun res!1199346 () Bool)

(assert (=> b!2902804 (=> (not res!1199346) (not e!1832911))))

(assert (=> b!2902804 (= res!1199346 (not ((_ is Nil!34556) s!13418)))))

(declare-fun b!2902805 () Bool)

(declare-fun res!1199348 () Bool)

(assert (=> b!2902805 (=> (not res!1199348) (not e!1832911))))

(declare-fun head!6410 (List!34680) C!17940)

(assert (=> b!2902805 (= res!1199348 (= (head!6410 prefix!1456) (head!6410 s!13418)))))

(declare-fun d!835589 () Bool)

(assert (=> d!835589 e!1832913))

(declare-fun res!1199347 () Bool)

(assert (=> d!835589 (=> res!1199347 e!1832913)))

(declare-fun lt!1022347 () Bool)

(assert (=> d!835589 (= res!1199347 (not lt!1022347))))

(assert (=> d!835589 (= lt!1022347 e!1832912)))

(declare-fun res!1199345 () Bool)

(assert (=> d!835589 (=> res!1199345 e!1832912)))

(assert (=> d!835589 (= res!1199345 ((_ is Nil!34556) prefix!1456))))

(assert (=> d!835589 (= (isPrefix!2716 prefix!1456 s!13418) lt!1022347)))

(declare-fun b!2902806 () Bool)

(declare-fun tail!4640 (List!34680) List!34680)

(assert (=> b!2902806 (= e!1832911 (isPrefix!2716 (tail!4640 prefix!1456) (tail!4640 s!13418)))))

(assert (= (and d!835589 (not res!1199345)) b!2902804))

(assert (= (and b!2902804 res!1199346) b!2902805))

(assert (= (and b!2902805 res!1199348) b!2902806))

(assert (= (and d!835589 (not res!1199347)) b!2902807))

(declare-fun m!3306773 () Bool)

(assert (=> b!2902807 m!3306773))

(assert (=> b!2902807 m!3306759))

(declare-fun m!3306775 () Bool)

(assert (=> b!2902805 m!3306775))

(declare-fun m!3306777 () Bool)

(assert (=> b!2902805 m!3306777))

(declare-fun m!3306779 () Bool)

(assert (=> b!2902806 m!3306779))

(declare-fun m!3306781 () Bool)

(assert (=> b!2902806 m!3306781))

(assert (=> b!2902806 m!3306779))

(assert (=> b!2902806 m!3306781))

(declare-fun m!3306783 () Bool)

(assert (=> b!2902806 m!3306783))

(assert (=> b!2902768 d!835589))

(declare-fun b!2902838 () Bool)

(declare-fun e!1832936 () Bool)

(declare-fun call!189197 () Bool)

(assert (=> b!2902838 (= e!1832936 call!189197)))

(declare-fun b!2902839 () Bool)

(declare-fun e!1832934 () Bool)

(declare-fun call!189198 () Bool)

(assert (=> b!2902839 (= e!1832934 call!189198)))

(declare-fun bm!189191 () Bool)

(declare-fun c!473050 () Bool)

(assert (=> bm!189191 (= call!189197 (validRegex!3652 (ite c!473050 (regTwo!18271 r!19097) (regTwo!18270 r!19097))))))

(declare-fun d!835593 () Bool)

(declare-fun res!1199362 () Bool)

(declare-fun e!1832940 () Bool)

(assert (=> d!835593 (=> res!1199362 e!1832940)))

(assert (=> d!835593 (= res!1199362 ((_ is ElementMatch!8879) r!19097))))

(assert (=> d!835593 (= (validRegex!3652 r!19097) e!1832940)))

(declare-fun b!2902840 () Bool)

(declare-fun e!1832937 () Bool)

(declare-fun e!1832935 () Bool)

(assert (=> b!2902840 (= e!1832937 e!1832935)))

(assert (=> b!2902840 (= c!473050 ((_ is Union!8879) r!19097))))

(declare-fun b!2902841 () Bool)

(declare-fun res!1199359 () Bool)

(declare-fun e!1832938 () Bool)

(assert (=> b!2902841 (=> res!1199359 e!1832938)))

(assert (=> b!2902841 (= res!1199359 (not ((_ is Concat!14200) r!19097)))))

(assert (=> b!2902841 (= e!1832935 e!1832938)))

(declare-fun c!473049 () Bool)

(declare-fun bm!189192 () Bool)

(assert (=> bm!189192 (= call!189198 (validRegex!3652 (ite c!473049 (reg!9208 r!19097) (ite c!473050 (regOne!18271 r!19097) (regOne!18270 r!19097)))))))

(declare-fun bm!189193 () Bool)

(declare-fun call!189196 () Bool)

(assert (=> bm!189193 (= call!189196 call!189198)))

(declare-fun b!2902842 () Bool)

(assert (=> b!2902842 (= e!1832940 e!1832937)))

(assert (=> b!2902842 (= c!473049 ((_ is Star!8879) r!19097))))

(declare-fun b!2902843 () Bool)

(assert (=> b!2902843 (= e!1832937 e!1832934)))

(declare-fun res!1199363 () Bool)

(declare-fun nullable!2769 (Regex!8879) Bool)

(assert (=> b!2902843 (= res!1199363 (not (nullable!2769 (reg!9208 r!19097))))))

(assert (=> b!2902843 (=> (not res!1199363) (not e!1832934))))

(declare-fun b!2902844 () Bool)

(assert (=> b!2902844 (= e!1832938 e!1832936)))

(declare-fun res!1199360 () Bool)

(assert (=> b!2902844 (=> (not res!1199360) (not e!1832936))))

(assert (=> b!2902844 (= res!1199360 call!189196)))

(declare-fun b!2902845 () Bool)

(declare-fun e!1832939 () Bool)

(assert (=> b!2902845 (= e!1832939 call!189197)))

(declare-fun b!2902846 () Bool)

(declare-fun res!1199361 () Bool)

(assert (=> b!2902846 (=> (not res!1199361) (not e!1832939))))

(assert (=> b!2902846 (= res!1199361 call!189196)))

(assert (=> b!2902846 (= e!1832935 e!1832939)))

(assert (= (and d!835593 (not res!1199362)) b!2902842))

(assert (= (and b!2902842 c!473049) b!2902843))

(assert (= (and b!2902842 (not c!473049)) b!2902840))

(assert (= (and b!2902843 res!1199363) b!2902839))

(assert (= (and b!2902840 c!473050) b!2902846))

(assert (= (and b!2902840 (not c!473050)) b!2902841))

(assert (= (and b!2902846 res!1199361) b!2902845))

(assert (= (and b!2902841 (not res!1199359)) b!2902844))

(assert (= (and b!2902844 res!1199360) b!2902838))

(assert (= (or b!2902846 b!2902844) bm!189193))

(assert (= (or b!2902845 b!2902838) bm!189191))

(assert (= (or b!2902839 bm!189193) bm!189192))

(declare-fun m!3306799 () Bool)

(assert (=> bm!189191 m!3306799))

(declare-fun m!3306801 () Bool)

(assert (=> bm!189192 m!3306801))

(declare-fun m!3306803 () Bool)

(assert (=> b!2902843 m!3306803))

(assert (=> start!282550 d!835593))

(declare-fun d!835599 () Bool)

(declare-fun lt!1022356 () Int)

(assert (=> d!835599 (>= lt!1022356 0)))

(declare-fun e!1832954 () Int)

(assert (=> d!835599 (= lt!1022356 e!1832954)))

(declare-fun c!473053 () Bool)

(assert (=> d!835599 (= c!473053 ((_ is Nil!34556) prefix!1456))))

(assert (=> d!835599 (= (size!26360 prefix!1456) lt!1022356)))

(declare-fun b!2902873 () Bool)

(assert (=> b!2902873 (= e!1832954 0)))

(declare-fun b!2902874 () Bool)

(assert (=> b!2902874 (= e!1832954 (+ 1 (size!26360 (t!233723 prefix!1456))))))

(assert (= (and d!835599 c!473053) b!2902873))

(assert (= (and d!835599 (not c!473053)) b!2902874))

(declare-fun m!3306813 () Bool)

(assert (=> b!2902874 m!3306813))

(assert (=> b!2902760 d!835599))

(declare-fun d!835601 () Bool)

(declare-fun c!473056 () Bool)

(declare-fun isEmpty!18866 (List!34680) Bool)

(assert (=> d!835601 (= c!473056 (isEmpty!18866 prefix!1456))))

(declare-fun e!1832966 () Bool)

(assert (=> d!835601 (= (prefixMatch!937 r!19097 prefix!1456) e!1832966)))

(declare-fun b!2902905 () Bool)

(declare-fun lostCause!858 (Regex!8879) Bool)

(assert (=> b!2902905 (= e!1832966 (not (lostCause!858 r!19097)))))

(declare-fun b!2902906 () Bool)

(declare-fun derivativeStep!2386 (Regex!8879 C!17940) Regex!8879)

(assert (=> b!2902906 (= e!1832966 (prefixMatch!937 (derivativeStep!2386 r!19097 (head!6410 prefix!1456)) (tail!4640 prefix!1456)))))

(assert (= (and d!835601 c!473056) b!2902905))

(assert (= (and d!835601 (not c!473056)) b!2902906))

(declare-fun m!3306815 () Bool)

(assert (=> d!835601 m!3306815))

(declare-fun m!3306817 () Bool)

(assert (=> b!2902905 m!3306817))

(assert (=> b!2902906 m!3306775))

(assert (=> b!2902906 m!3306775))

(declare-fun m!3306819 () Bool)

(assert (=> b!2902906 m!3306819))

(assert (=> b!2902906 m!3306779))

(assert (=> b!2902906 m!3306819))

(assert (=> b!2902906 m!3306779))

(declare-fun m!3306821 () Bool)

(assert (=> b!2902906 m!3306821))

(assert (=> b!2902764 d!835601))

(declare-fun b!2902919 () Bool)

(declare-fun e!1832969 () Bool)

(declare-fun tp!931772 () Bool)

(assert (=> b!2902919 (= e!1832969 tp!931772)))

(declare-fun b!2902917 () Bool)

(assert (=> b!2902917 (= e!1832969 tp_is_empty!15345)))

(declare-fun b!2902920 () Bool)

(declare-fun tp!931773 () Bool)

(declare-fun tp!931771 () Bool)

(assert (=> b!2902920 (= e!1832969 (and tp!931773 tp!931771))))

(assert (=> b!2902763 (= tp!931721 e!1832969)))

(declare-fun b!2902918 () Bool)

(declare-fun tp!931774 () Bool)

(declare-fun tp!931775 () Bool)

(assert (=> b!2902918 (= e!1832969 (and tp!931774 tp!931775))))

(assert (= (and b!2902763 ((_ is ElementMatch!8879) (reg!9208 r!19097))) b!2902917))

(assert (= (and b!2902763 ((_ is Concat!14200) (reg!9208 r!19097))) b!2902918))

(assert (= (and b!2902763 ((_ is Star!8879) (reg!9208 r!19097))) b!2902919))

(assert (= (and b!2902763 ((_ is Union!8879) (reg!9208 r!19097))) b!2902920))

(declare-fun b!2902925 () Bool)

(declare-fun e!1832972 () Bool)

(declare-fun tp!931778 () Bool)

(assert (=> b!2902925 (= e!1832972 (and tp_is_empty!15345 tp!931778))))

(assert (=> b!2902767 (= tp!931720 e!1832972)))

(assert (= (and b!2902767 ((_ is Cons!34556) (t!233723 s!13418))) b!2902925))

(declare-fun b!2902926 () Bool)

(declare-fun e!1832973 () Bool)

(declare-fun tp!931779 () Bool)

(assert (=> b!2902926 (= e!1832973 (and tp_is_empty!15345 tp!931779))))

(assert (=> b!2902762 (= tp!931719 e!1832973)))

(assert (= (and b!2902762 ((_ is Cons!34556) (t!233723 prefix!1456))) b!2902926))

(declare-fun b!2902929 () Bool)

(declare-fun e!1832974 () Bool)

(declare-fun tp!931781 () Bool)

(assert (=> b!2902929 (= e!1832974 tp!931781)))

(declare-fun b!2902927 () Bool)

(assert (=> b!2902927 (= e!1832974 tp_is_empty!15345)))

(declare-fun b!2902930 () Bool)

(declare-fun tp!931782 () Bool)

(declare-fun tp!931780 () Bool)

(assert (=> b!2902930 (= e!1832974 (and tp!931782 tp!931780))))

(assert (=> b!2902766 (= tp!931716 e!1832974)))

(declare-fun b!2902928 () Bool)

(declare-fun tp!931783 () Bool)

(declare-fun tp!931784 () Bool)

(assert (=> b!2902928 (= e!1832974 (and tp!931783 tp!931784))))

(assert (= (and b!2902766 ((_ is ElementMatch!8879) (regOne!18271 r!19097))) b!2902927))

(assert (= (and b!2902766 ((_ is Concat!14200) (regOne!18271 r!19097))) b!2902928))

(assert (= (and b!2902766 ((_ is Star!8879) (regOne!18271 r!19097))) b!2902929))

(assert (= (and b!2902766 ((_ is Union!8879) (regOne!18271 r!19097))) b!2902930))

(declare-fun b!2902933 () Bool)

(declare-fun e!1832975 () Bool)

(declare-fun tp!931786 () Bool)

(assert (=> b!2902933 (= e!1832975 tp!931786)))

(declare-fun b!2902931 () Bool)

(assert (=> b!2902931 (= e!1832975 tp_is_empty!15345)))

(declare-fun b!2902934 () Bool)

(declare-fun tp!931787 () Bool)

(declare-fun tp!931785 () Bool)

(assert (=> b!2902934 (= e!1832975 (and tp!931787 tp!931785))))

(assert (=> b!2902766 (= tp!931717 e!1832975)))

(declare-fun b!2902932 () Bool)

(declare-fun tp!931788 () Bool)

(declare-fun tp!931789 () Bool)

(assert (=> b!2902932 (= e!1832975 (and tp!931788 tp!931789))))

(assert (= (and b!2902766 ((_ is ElementMatch!8879) (regTwo!18271 r!19097))) b!2902931))

(assert (= (and b!2902766 ((_ is Concat!14200) (regTwo!18271 r!19097))) b!2902932))

(assert (= (and b!2902766 ((_ is Star!8879) (regTwo!18271 r!19097))) b!2902933))

(assert (= (and b!2902766 ((_ is Union!8879) (regTwo!18271 r!19097))) b!2902934))

(declare-fun b!2902937 () Bool)

(declare-fun e!1832976 () Bool)

(declare-fun tp!931791 () Bool)

(assert (=> b!2902937 (= e!1832976 tp!931791)))

(declare-fun b!2902935 () Bool)

(assert (=> b!2902935 (= e!1832976 tp_is_empty!15345)))

(declare-fun b!2902938 () Bool)

(declare-fun tp!931792 () Bool)

(declare-fun tp!931790 () Bool)

(assert (=> b!2902938 (= e!1832976 (and tp!931792 tp!931790))))

(assert (=> b!2902765 (= tp!931715 e!1832976)))

(declare-fun b!2902936 () Bool)

(declare-fun tp!931793 () Bool)

(declare-fun tp!931794 () Bool)

(assert (=> b!2902936 (= e!1832976 (and tp!931793 tp!931794))))

(assert (= (and b!2902765 ((_ is ElementMatch!8879) (regOne!18270 r!19097))) b!2902935))

(assert (= (and b!2902765 ((_ is Concat!14200) (regOne!18270 r!19097))) b!2902936))

(assert (= (and b!2902765 ((_ is Star!8879) (regOne!18270 r!19097))) b!2902937))

(assert (= (and b!2902765 ((_ is Union!8879) (regOne!18270 r!19097))) b!2902938))

(declare-fun b!2902941 () Bool)

(declare-fun e!1832977 () Bool)

(declare-fun tp!931796 () Bool)

(assert (=> b!2902941 (= e!1832977 tp!931796)))

(declare-fun b!2902939 () Bool)

(assert (=> b!2902939 (= e!1832977 tp_is_empty!15345)))

(declare-fun b!2902942 () Bool)

(declare-fun tp!931797 () Bool)

(declare-fun tp!931795 () Bool)

(assert (=> b!2902942 (= e!1832977 (and tp!931797 tp!931795))))

(assert (=> b!2902765 (= tp!931718 e!1832977)))

(declare-fun b!2902940 () Bool)

(declare-fun tp!931798 () Bool)

(declare-fun tp!931799 () Bool)

(assert (=> b!2902940 (= e!1832977 (and tp!931798 tp!931799))))

(assert (= (and b!2902765 ((_ is ElementMatch!8879) (regTwo!18270 r!19097))) b!2902939))

(assert (= (and b!2902765 ((_ is Concat!14200) (regTwo!18270 r!19097))) b!2902940))

(assert (= (and b!2902765 ((_ is Star!8879) (regTwo!18270 r!19097))) b!2902941))

(assert (= (and b!2902765 ((_ is Union!8879) (regTwo!18270 r!19097))) b!2902942))

(check-sat (not b!2902874) (not b!2902925) (not bm!189191) (not b!2902928) (not b!2902806) (not b!2902906) (not d!835601) (not b!2902934) (not b!2902930) (not b!2902942) (not b!2902905) (not b!2902938) tp_is_empty!15345 (not b!2902807) (not b!2902926) (not b!2902941) (not b!2902932) (not b!2902933) (not b!2902843) (not b!2902919) (not b!2902918) (not b!2902936) (not b!2902937) (not b!2902940) (not bm!189192) (not b!2902805) (not b!2902929) (not b!2902920))
(check-sat)
