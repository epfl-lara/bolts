; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282570 () Bool)

(assert start!282570)

(declare-fun b!2902993 () Bool)

(declare-fun e!1833000 () Bool)

(declare-fun tp_is_empty!15349 () Bool)

(declare-fun tp!931836 () Bool)

(assert (=> b!2902993 (= e!1833000 (and tp_is_empty!15349 tp!931836))))

(declare-fun b!2902994 () Bool)

(declare-fun e!1832999 () Bool)

(declare-datatypes ((C!17944 0))(
  ( (C!17945 (val!11006 Int)) )
))
(declare-datatypes ((Regex!8881 0))(
  ( (ElementMatch!8881 (c!473058 C!17944)) (Concat!14202 (regOne!18274 Regex!8881) (regTwo!18274 Regex!8881)) (EmptyExpr!8881) (Star!8881 (reg!9210 Regex!8881)) (EmptyLang!8881) (Union!8881 (regOne!18275 Regex!8881) (regTwo!18275 Regex!8881)) )
))
(declare-fun r!19097 () Regex!8881)

(declare-fun lostCause!860 (Regex!8881) Bool)

(assert (=> b!2902994 (= e!1832999 (not (lostCause!860 r!19097)))))

(declare-fun b!2902995 () Bool)

(declare-fun e!1833001 () Bool)

(assert (=> b!2902995 (= e!1833001 tp_is_empty!15349)))

(declare-fun b!2902996 () Bool)

(declare-fun tp!931837 () Bool)

(declare-fun tp!931840 () Bool)

(assert (=> b!2902996 (= e!1833001 (and tp!931837 tp!931840))))

(declare-fun b!2902997 () Bool)

(declare-fun tp!931835 () Bool)

(assert (=> b!2902997 (= e!1833001 tp!931835)))

(declare-fun b!2902998 () Bool)

(declare-fun res!1199398 () Bool)

(assert (=> b!2902998 (=> (not res!1199398) (not e!1832999))))

(declare-datatypes ((List!34682 0))(
  ( (Nil!34558) (Cons!34558 (h!39978 C!17944) (t!233725 List!34682)) )
))
(declare-fun prefix!1456 () List!34682)

(declare-fun prefixMatch!939 (Regex!8881 List!34682) Bool)

(assert (=> b!2902998 (= res!1199398 (not (prefixMatch!939 r!19097 prefix!1456)))))

(declare-fun res!1199399 () Bool)

(assert (=> start!282570 (=> (not res!1199399) (not e!1832999))))

(declare-fun validRegex!3654 (Regex!8881) Bool)

(assert (=> start!282570 (= res!1199399 (validRegex!3654 r!19097))))

(assert (=> start!282570 e!1832999))

(assert (=> start!282570 e!1833001))

(assert (=> start!282570 e!1833000))

(declare-fun e!1832998 () Bool)

(assert (=> start!282570 e!1832998))

(declare-fun b!2902999 () Bool)

(declare-fun res!1199396 () Bool)

(assert (=> b!2902999 (=> (not res!1199396) (not e!1832999))))

(get-info :version)

(assert (=> b!2902999 (= res!1199396 ((_ is Nil!34558) prefix!1456))))

(declare-fun b!2903000 () Bool)

(declare-fun tp!931841 () Bool)

(declare-fun tp!931839 () Bool)

(assert (=> b!2903000 (= e!1833001 (and tp!931841 tp!931839))))

(declare-fun b!2903001 () Bool)

(declare-fun res!1199397 () Bool)

(assert (=> b!2903001 (=> (not res!1199397) (not e!1832999))))

(declare-fun s!13418 () List!34682)

(declare-fun isPrefix!2718 (List!34682 List!34682) Bool)

(assert (=> b!2903001 (= res!1199397 (isPrefix!2718 prefix!1456 s!13418))))

(declare-fun b!2903002 () Bool)

(declare-fun tp!931838 () Bool)

(assert (=> b!2903002 (= e!1832998 (and tp_is_empty!15349 tp!931838))))

(assert (= (and start!282570 res!1199399) b!2903001))

(assert (= (and b!2903001 res!1199397) b!2902998))

(assert (= (and b!2902998 res!1199398) b!2902999))

(assert (= (and b!2902999 res!1199396) b!2902994))

(assert (= (and start!282570 ((_ is ElementMatch!8881) r!19097)) b!2902995))

(assert (= (and start!282570 ((_ is Concat!14202) r!19097)) b!2902996))

(assert (= (and start!282570 ((_ is Star!8881) r!19097)) b!2902997))

(assert (= (and start!282570 ((_ is Union!8881) r!19097)) b!2903000))

(assert (= (and start!282570 ((_ is Cons!34558) prefix!1456)) b!2902993))

(assert (= (and start!282570 ((_ is Cons!34558) s!13418)) b!2903002))

(declare-fun m!3306831 () Bool)

(assert (=> b!2902994 m!3306831))

(declare-fun m!3306833 () Bool)

(assert (=> b!2902998 m!3306833))

(declare-fun m!3306835 () Bool)

(assert (=> start!282570 m!3306835))

(declare-fun m!3306837 () Bool)

(assert (=> b!2903001 m!3306837))

(check-sat (not b!2903000) tp_is_empty!15349 (not start!282570) (not b!2902997) (not b!2903001) (not b!2902993) (not b!2903002) (not b!2902998) (not b!2902994) (not b!2902996))
(check-sat)
(get-model)

(declare-fun b!2903011 () Bool)

(declare-fun e!1833009 () Bool)

(declare-fun e!1833010 () Bool)

(assert (=> b!2903011 (= e!1833009 e!1833010)))

(declare-fun res!1199410 () Bool)

(assert (=> b!2903011 (=> (not res!1199410) (not e!1833010))))

(assert (=> b!2903011 (= res!1199410 (not ((_ is Nil!34558) s!13418)))))

(declare-fun b!2903013 () Bool)

(declare-fun tail!4641 (List!34682) List!34682)

(assert (=> b!2903013 (= e!1833010 (isPrefix!2718 (tail!4641 prefix!1456) (tail!4641 s!13418)))))

(declare-fun b!2903012 () Bool)

(declare-fun res!1199411 () Bool)

(assert (=> b!2903012 (=> (not res!1199411) (not e!1833010))))

(declare-fun head!6412 (List!34682) C!17944)

(assert (=> b!2903012 (= res!1199411 (= (head!6412 prefix!1456) (head!6412 s!13418)))))

(declare-fun d!835604 () Bool)

(declare-fun e!1833008 () Bool)

(assert (=> d!835604 e!1833008))

(declare-fun res!1199408 () Bool)

(assert (=> d!835604 (=> res!1199408 e!1833008)))

(declare-fun lt!1022359 () Bool)

(assert (=> d!835604 (= res!1199408 (not lt!1022359))))

(assert (=> d!835604 (= lt!1022359 e!1833009)))

(declare-fun res!1199409 () Bool)

(assert (=> d!835604 (=> res!1199409 e!1833009)))

(assert (=> d!835604 (= res!1199409 ((_ is Nil!34558) prefix!1456))))

(assert (=> d!835604 (= (isPrefix!2718 prefix!1456 s!13418) lt!1022359)))

(declare-fun b!2903014 () Bool)

(declare-fun size!26361 (List!34682) Int)

(assert (=> b!2903014 (= e!1833008 (>= (size!26361 s!13418) (size!26361 prefix!1456)))))

(assert (= (and d!835604 (not res!1199409)) b!2903011))

(assert (= (and b!2903011 res!1199410) b!2903012))

(assert (= (and b!2903012 res!1199411) b!2903013))

(assert (= (and d!835604 (not res!1199408)) b!2903014))

(declare-fun m!3306839 () Bool)

(assert (=> b!2903013 m!3306839))

(declare-fun m!3306841 () Bool)

(assert (=> b!2903013 m!3306841))

(assert (=> b!2903013 m!3306839))

(assert (=> b!2903013 m!3306841))

(declare-fun m!3306843 () Bool)

(assert (=> b!2903013 m!3306843))

(declare-fun m!3306845 () Bool)

(assert (=> b!2903012 m!3306845))

(declare-fun m!3306847 () Bool)

(assert (=> b!2903012 m!3306847))

(declare-fun m!3306849 () Bool)

(assert (=> b!2903014 m!3306849))

(declare-fun m!3306851 () Bool)

(assert (=> b!2903014 m!3306851))

(assert (=> b!2903001 d!835604))

(declare-fun b!2903051 () Bool)

(declare-fun e!1833043 () Bool)

(declare-fun e!1833040 () Bool)

(assert (=> b!2903051 (= e!1833043 e!1833040)))

(declare-fun res!1199432 () Bool)

(assert (=> b!2903051 (=> (not res!1199432) (not e!1833040))))

(declare-fun call!189212 () Bool)

(assert (=> b!2903051 (= res!1199432 call!189212)))

(declare-fun b!2903052 () Bool)

(declare-fun e!1833039 () Bool)

(declare-fun e!1833041 () Bool)

(assert (=> b!2903052 (= e!1833039 e!1833041)))

(declare-fun c!473067 () Bool)

(assert (=> b!2903052 (= c!473067 ((_ is Star!8881) r!19097))))

(declare-fun c!473068 () Bool)

(declare-fun call!189211 () Bool)

(declare-fun bm!189206 () Bool)

(assert (=> bm!189206 (= call!189211 (validRegex!3654 (ite c!473067 (reg!9210 r!19097) (ite c!473068 (regTwo!18275 r!19097) (regTwo!18274 r!19097)))))))

(declare-fun bm!189207 () Bool)

(assert (=> bm!189207 (= call!189212 (validRegex!3654 (ite c!473068 (regOne!18275 r!19097) (regOne!18274 r!19097))))))

(declare-fun b!2903053 () Bool)

(declare-fun e!1833045 () Bool)

(assert (=> b!2903053 (= e!1833045 call!189211)))

(declare-fun b!2903054 () Bool)

(declare-fun e!1833044 () Bool)

(assert (=> b!2903054 (= e!1833041 e!1833044)))

(assert (=> b!2903054 (= c!473068 ((_ is Union!8881) r!19097))))

(declare-fun bm!189208 () Bool)

(declare-fun call!189213 () Bool)

(assert (=> bm!189208 (= call!189213 call!189211)))

(declare-fun b!2903056 () Bool)

(declare-fun res!1199435 () Bool)

(assert (=> b!2903056 (=> res!1199435 e!1833043)))

(assert (=> b!2903056 (= res!1199435 (not ((_ is Concat!14202) r!19097)))))

(assert (=> b!2903056 (= e!1833044 e!1833043)))

(declare-fun b!2903057 () Bool)

(assert (=> b!2903057 (= e!1833040 call!189213)))

(declare-fun b!2903058 () Bool)

(declare-fun res!1199434 () Bool)

(declare-fun e!1833042 () Bool)

(assert (=> b!2903058 (=> (not res!1199434) (not e!1833042))))

(assert (=> b!2903058 (= res!1199434 call!189212)))

(assert (=> b!2903058 (= e!1833044 e!1833042)))

(declare-fun b!2903059 () Bool)

(assert (=> b!2903059 (= e!1833042 call!189213)))

(declare-fun b!2903055 () Bool)

(assert (=> b!2903055 (= e!1833041 e!1833045)))

(declare-fun res!1199433 () Bool)

(declare-fun nullable!2770 (Regex!8881) Bool)

(assert (=> b!2903055 (= res!1199433 (not (nullable!2770 (reg!9210 r!19097))))))

(assert (=> b!2903055 (=> (not res!1199433) (not e!1833045))))

(declare-fun d!835608 () Bool)

(declare-fun res!1199436 () Bool)

(assert (=> d!835608 (=> res!1199436 e!1833039)))

(assert (=> d!835608 (= res!1199436 ((_ is ElementMatch!8881) r!19097))))

(assert (=> d!835608 (= (validRegex!3654 r!19097) e!1833039)))

(assert (= (and d!835608 (not res!1199436)) b!2903052))

(assert (= (and b!2903052 c!473067) b!2903055))

(assert (= (and b!2903052 (not c!473067)) b!2903054))

(assert (= (and b!2903055 res!1199433) b!2903053))

(assert (= (and b!2903054 c!473068) b!2903058))

(assert (= (and b!2903054 (not c!473068)) b!2903056))

(assert (= (and b!2903058 res!1199434) b!2903059))

(assert (= (and b!2903056 (not res!1199435)) b!2903051))

(assert (= (and b!2903051 res!1199432) b!2903057))

(assert (= (or b!2903058 b!2903051) bm!189207))

(assert (= (or b!2903059 b!2903057) bm!189208))

(assert (= (or b!2903053 bm!189208) bm!189206))

(declare-fun m!3306853 () Bool)

(assert (=> bm!189206 m!3306853))

(declare-fun m!3306855 () Bool)

(assert (=> bm!189207 m!3306855))

(declare-fun m!3306857 () Bool)

(assert (=> b!2903055 m!3306857))

(assert (=> start!282570 d!835608))

(declare-fun d!835610 () Bool)

(declare-fun lostCauseFct!223 (Regex!8881) Bool)

(assert (=> d!835610 (= (lostCause!860 r!19097) (lostCauseFct!223 r!19097))))

(declare-fun bs!524037 () Bool)

(assert (= bs!524037 d!835610))

(declare-fun m!3306859 () Bool)

(assert (=> bs!524037 m!3306859))

(assert (=> b!2902994 d!835610))

(declare-fun d!835612 () Bool)

(declare-fun c!473071 () Bool)

(declare-fun isEmpty!18867 (List!34682) Bool)

(assert (=> d!835612 (= c!473071 (isEmpty!18867 prefix!1456))))

(declare-fun e!1833048 () Bool)

(assert (=> d!835612 (= (prefixMatch!939 r!19097 prefix!1456) e!1833048)))

(declare-fun b!2903064 () Bool)

(assert (=> b!2903064 (= e!1833048 (not (lostCause!860 r!19097)))))

(declare-fun b!2903065 () Bool)

(declare-fun derivativeStep!2387 (Regex!8881 C!17944) Regex!8881)

(assert (=> b!2903065 (= e!1833048 (prefixMatch!939 (derivativeStep!2387 r!19097 (head!6412 prefix!1456)) (tail!4641 prefix!1456)))))

(assert (= (and d!835612 c!473071) b!2903064))

(assert (= (and d!835612 (not c!473071)) b!2903065))

(declare-fun m!3306861 () Bool)

(assert (=> d!835612 m!3306861))

(assert (=> b!2903064 m!3306831))

(assert (=> b!2903065 m!3306845))

(assert (=> b!2903065 m!3306845))

(declare-fun m!3306863 () Bool)

(assert (=> b!2903065 m!3306863))

(assert (=> b!2903065 m!3306839))

(assert (=> b!2903065 m!3306863))

(assert (=> b!2903065 m!3306839))

(declare-fun m!3306865 () Bool)

(assert (=> b!2903065 m!3306865))

(assert (=> b!2902998 d!835612))

(declare-fun b!2903085 () Bool)

(declare-fun e!1833058 () Bool)

(assert (=> b!2903085 (= e!1833058 tp_is_empty!15349)))

(declare-fun b!2903086 () Bool)

(declare-fun tp!931853 () Bool)

(declare-fun tp!931855 () Bool)

(assert (=> b!2903086 (= e!1833058 (and tp!931853 tp!931855))))

(declare-fun b!2903088 () Bool)

(declare-fun tp!931852 () Bool)

(declare-fun tp!931854 () Bool)

(assert (=> b!2903088 (= e!1833058 (and tp!931852 tp!931854))))

(declare-fun b!2903087 () Bool)

(declare-fun tp!931856 () Bool)

(assert (=> b!2903087 (= e!1833058 tp!931856)))

(assert (=> b!2902996 (= tp!931837 e!1833058)))

(assert (= (and b!2902996 ((_ is ElementMatch!8881) (regOne!18274 r!19097))) b!2903085))

(assert (= (and b!2902996 ((_ is Concat!14202) (regOne!18274 r!19097))) b!2903086))

(assert (= (and b!2902996 ((_ is Star!8881) (regOne!18274 r!19097))) b!2903087))

(assert (= (and b!2902996 ((_ is Union!8881) (regOne!18274 r!19097))) b!2903088))

(declare-fun b!2903089 () Bool)

(declare-fun e!1833059 () Bool)

(assert (=> b!2903089 (= e!1833059 tp_is_empty!15349)))

(declare-fun b!2903090 () Bool)

(declare-fun tp!931858 () Bool)

(declare-fun tp!931860 () Bool)

(assert (=> b!2903090 (= e!1833059 (and tp!931858 tp!931860))))

(declare-fun b!2903092 () Bool)

(declare-fun tp!931857 () Bool)

(declare-fun tp!931859 () Bool)

(assert (=> b!2903092 (= e!1833059 (and tp!931857 tp!931859))))

(declare-fun b!2903091 () Bool)

(declare-fun tp!931861 () Bool)

(assert (=> b!2903091 (= e!1833059 tp!931861)))

(assert (=> b!2902996 (= tp!931840 e!1833059)))

(assert (= (and b!2902996 ((_ is ElementMatch!8881) (regTwo!18274 r!19097))) b!2903089))

(assert (= (and b!2902996 ((_ is Concat!14202) (regTwo!18274 r!19097))) b!2903090))

(assert (= (and b!2902996 ((_ is Star!8881) (regTwo!18274 r!19097))) b!2903091))

(assert (= (and b!2902996 ((_ is Union!8881) (regTwo!18274 r!19097))) b!2903092))

(declare-fun b!2903093 () Bool)

(declare-fun e!1833060 () Bool)

(assert (=> b!2903093 (= e!1833060 tp_is_empty!15349)))

(declare-fun b!2903094 () Bool)

(declare-fun tp!931863 () Bool)

(declare-fun tp!931865 () Bool)

(assert (=> b!2903094 (= e!1833060 (and tp!931863 tp!931865))))

(declare-fun b!2903096 () Bool)

(declare-fun tp!931862 () Bool)

(declare-fun tp!931864 () Bool)

(assert (=> b!2903096 (= e!1833060 (and tp!931862 tp!931864))))

(declare-fun b!2903095 () Bool)

(declare-fun tp!931866 () Bool)

(assert (=> b!2903095 (= e!1833060 tp!931866)))

(assert (=> b!2903000 (= tp!931841 e!1833060)))

(assert (= (and b!2903000 ((_ is ElementMatch!8881) (regOne!18275 r!19097))) b!2903093))

(assert (= (and b!2903000 ((_ is Concat!14202) (regOne!18275 r!19097))) b!2903094))

(assert (= (and b!2903000 ((_ is Star!8881) (regOne!18275 r!19097))) b!2903095))

(assert (= (and b!2903000 ((_ is Union!8881) (regOne!18275 r!19097))) b!2903096))

(declare-fun b!2903097 () Bool)

(declare-fun e!1833061 () Bool)

(assert (=> b!2903097 (= e!1833061 tp_is_empty!15349)))

(declare-fun b!2903098 () Bool)

(declare-fun tp!931868 () Bool)

(declare-fun tp!931870 () Bool)

(assert (=> b!2903098 (= e!1833061 (and tp!931868 tp!931870))))

(declare-fun b!2903100 () Bool)

(declare-fun tp!931867 () Bool)

(declare-fun tp!931869 () Bool)

(assert (=> b!2903100 (= e!1833061 (and tp!931867 tp!931869))))

(declare-fun b!2903099 () Bool)

(declare-fun tp!931871 () Bool)

(assert (=> b!2903099 (= e!1833061 tp!931871)))

(assert (=> b!2903000 (= tp!931839 e!1833061)))

(assert (= (and b!2903000 ((_ is ElementMatch!8881) (regTwo!18275 r!19097))) b!2903097))

(assert (= (and b!2903000 ((_ is Concat!14202) (regTwo!18275 r!19097))) b!2903098))

(assert (= (and b!2903000 ((_ is Star!8881) (regTwo!18275 r!19097))) b!2903099))

(assert (= (and b!2903000 ((_ is Union!8881) (regTwo!18275 r!19097))) b!2903100))

(declare-fun b!2903105 () Bool)

(declare-fun e!1833064 () Bool)

(declare-fun tp!931874 () Bool)

(assert (=> b!2903105 (= e!1833064 (and tp_is_empty!15349 tp!931874))))

(assert (=> b!2902993 (= tp!931836 e!1833064)))

(assert (= (and b!2902993 ((_ is Cons!34558) (t!233725 prefix!1456))) b!2903105))

(declare-fun b!2903106 () Bool)

(declare-fun e!1833065 () Bool)

(assert (=> b!2903106 (= e!1833065 tp_is_empty!15349)))

(declare-fun b!2903107 () Bool)

(declare-fun tp!931876 () Bool)

(declare-fun tp!931878 () Bool)

(assert (=> b!2903107 (= e!1833065 (and tp!931876 tp!931878))))

(declare-fun b!2903109 () Bool)

(declare-fun tp!931875 () Bool)

(declare-fun tp!931877 () Bool)

(assert (=> b!2903109 (= e!1833065 (and tp!931875 tp!931877))))

(declare-fun b!2903108 () Bool)

(declare-fun tp!931879 () Bool)

(assert (=> b!2903108 (= e!1833065 tp!931879)))

(assert (=> b!2902997 (= tp!931835 e!1833065)))

(assert (= (and b!2902997 ((_ is ElementMatch!8881) (reg!9210 r!19097))) b!2903106))

(assert (= (and b!2902997 ((_ is Concat!14202) (reg!9210 r!19097))) b!2903107))

(assert (= (and b!2902997 ((_ is Star!8881) (reg!9210 r!19097))) b!2903108))

(assert (= (and b!2902997 ((_ is Union!8881) (reg!9210 r!19097))) b!2903109))

(declare-fun b!2903110 () Bool)

(declare-fun e!1833066 () Bool)

(declare-fun tp!931880 () Bool)

(assert (=> b!2903110 (= e!1833066 (and tp_is_empty!15349 tp!931880))))

(assert (=> b!2903002 (= tp!931838 e!1833066)))

(assert (= (and b!2903002 ((_ is Cons!34558) (t!233725 s!13418))) b!2903110))

(check-sat (not b!2903096) (not d!835612) (not b!2903098) tp_is_empty!15349 (not b!2903086) (not b!2903087) (not b!2903092) (not d!835610) (not b!2903109) (not bm!189207) (not b!2903110) (not b!2903107) (not b!2903012) (not b!2903064) (not b!2903055) (not b!2903105) (not b!2903108) (not bm!189206) (not b!2903088) (not b!2903065) (not b!2903091) (not b!2903099) (not b!2903090) (not b!2903095) (not b!2903100) (not b!2903094) (not b!2903014) (not b!2903013))
(check-sat)
(get-model)

(declare-fun d!835620 () Bool)

(declare-fun c!473077 () Bool)

(assert (=> d!835620 (= c!473077 (isEmpty!18867 (tail!4641 prefix!1456)))))

(declare-fun e!1833090 () Bool)

(assert (=> d!835620 (= (prefixMatch!939 (derivativeStep!2387 r!19097 (head!6412 prefix!1456)) (tail!4641 prefix!1456)) e!1833090)))

(declare-fun b!2903165 () Bool)

(assert (=> b!2903165 (= e!1833090 (not (lostCause!860 (derivativeStep!2387 r!19097 (head!6412 prefix!1456)))))))

(declare-fun b!2903166 () Bool)

(assert (=> b!2903166 (= e!1833090 (prefixMatch!939 (derivativeStep!2387 (derivativeStep!2387 r!19097 (head!6412 prefix!1456)) (head!6412 (tail!4641 prefix!1456))) (tail!4641 (tail!4641 prefix!1456))))))

(assert (= (and d!835620 c!473077) b!2903165))

(assert (= (and d!835620 (not c!473077)) b!2903166))

(assert (=> d!835620 m!3306839))

(declare-fun m!3306895 () Bool)

(assert (=> d!835620 m!3306895))

(assert (=> b!2903165 m!3306863))

(declare-fun m!3306897 () Bool)

(assert (=> b!2903165 m!3306897))

(assert (=> b!2903166 m!3306839))

(declare-fun m!3306899 () Bool)

(assert (=> b!2903166 m!3306899))

(assert (=> b!2903166 m!3306863))

(assert (=> b!2903166 m!3306899))

(declare-fun m!3306901 () Bool)

(assert (=> b!2903166 m!3306901))

(assert (=> b!2903166 m!3306839))

(declare-fun m!3306903 () Bool)

(assert (=> b!2903166 m!3306903))

(assert (=> b!2903166 m!3306901))

(assert (=> b!2903166 m!3306903))

(declare-fun m!3306905 () Bool)

(assert (=> b!2903166 m!3306905))

(assert (=> b!2903065 d!835620))

(declare-fun call!189227 () Regex!8881)

(declare-fun c!473090 () Bool)

(declare-fun bm!189220 () Bool)

(declare-fun c!473089 () Bool)

(assert (=> bm!189220 (= call!189227 (derivativeStep!2387 (ite c!473090 (regTwo!18275 r!19097) (ite c!473089 (reg!9210 r!19097) (regOne!18274 r!19097))) (head!6412 prefix!1456)))))

(declare-fun call!189225 () Regex!8881)

(declare-fun b!2903187 () Bool)

(declare-fun call!189228 () Regex!8881)

(declare-fun e!1833105 () Regex!8881)

(assert (=> b!2903187 (= e!1833105 (Union!8881 (Concat!14202 call!189228 (regTwo!18274 r!19097)) call!189225))))

(declare-fun d!835622 () Bool)

(declare-fun lt!1022365 () Regex!8881)

(assert (=> d!835622 (validRegex!3654 lt!1022365)))

(declare-fun e!1833102 () Regex!8881)

(assert (=> d!835622 (= lt!1022365 e!1833102)))

(declare-fun c!473088 () Bool)

(assert (=> d!835622 (= c!473088 (or ((_ is EmptyExpr!8881) r!19097) ((_ is EmptyLang!8881) r!19097)))))

(assert (=> d!835622 (validRegex!3654 r!19097)))

(assert (=> d!835622 (= (derivativeStep!2387 r!19097 (head!6412 prefix!1456)) lt!1022365)))

(declare-fun bm!189221 () Bool)

(declare-fun call!189226 () Regex!8881)

(assert (=> bm!189221 (= call!189228 call!189226)))

(declare-fun b!2903188 () Bool)

(declare-fun e!1833103 () Regex!8881)

(assert (=> b!2903188 (= e!1833103 (ite (= (head!6412 prefix!1456) (c!473058 r!19097)) EmptyExpr!8881 EmptyLang!8881))))

(declare-fun bm!189222 () Bool)

(assert (=> bm!189222 (= call!189226 call!189227)))

(declare-fun b!2903189 () Bool)

(declare-fun e!1833101 () Regex!8881)

(declare-fun e!1833104 () Regex!8881)

(assert (=> b!2903189 (= e!1833101 e!1833104)))

(assert (=> b!2903189 (= c!473089 ((_ is Star!8881) r!19097))))

(declare-fun b!2903190 () Bool)

(assert (=> b!2903190 (= e!1833104 (Concat!14202 call!189226 r!19097))))

(declare-fun b!2903191 () Bool)

(assert (=> b!2903191 (= e!1833102 e!1833103)))

(declare-fun c!473091 () Bool)

(assert (=> b!2903191 (= c!473091 ((_ is ElementMatch!8881) r!19097))))

(declare-fun bm!189223 () Bool)

(assert (=> bm!189223 (= call!189225 (derivativeStep!2387 (ite c!473090 (regOne!18275 r!19097) (regTwo!18274 r!19097)) (head!6412 prefix!1456)))))

(declare-fun b!2903192 () Bool)

(assert (=> b!2903192 (= e!1833101 (Union!8881 call!189225 call!189227))))

(declare-fun b!2903193 () Bool)

(assert (=> b!2903193 (= e!1833105 (Union!8881 (Concat!14202 call!189228 (regTwo!18274 r!19097)) EmptyLang!8881))))

(declare-fun b!2903194 () Bool)

(declare-fun c!473092 () Bool)

(assert (=> b!2903194 (= c!473092 (nullable!2770 (regOne!18274 r!19097)))))

(assert (=> b!2903194 (= e!1833104 e!1833105)))

(declare-fun b!2903195 () Bool)

(assert (=> b!2903195 (= e!1833102 EmptyLang!8881)))

(declare-fun b!2903196 () Bool)

(assert (=> b!2903196 (= c!473090 ((_ is Union!8881) r!19097))))

(assert (=> b!2903196 (= e!1833103 e!1833101)))

(assert (= (and d!835622 c!473088) b!2903195))

(assert (= (and d!835622 (not c!473088)) b!2903191))

(assert (= (and b!2903191 c!473091) b!2903188))

(assert (= (and b!2903191 (not c!473091)) b!2903196))

(assert (= (and b!2903196 c!473090) b!2903192))

(assert (= (and b!2903196 (not c!473090)) b!2903189))

(assert (= (and b!2903189 c!473089) b!2903190))

(assert (= (and b!2903189 (not c!473089)) b!2903194))

(assert (= (and b!2903194 c!473092) b!2903187))

(assert (= (and b!2903194 (not c!473092)) b!2903193))

(assert (= (or b!2903187 b!2903193) bm!189221))

(assert (= (or b!2903190 bm!189221) bm!189222))

(assert (= (or b!2903192 b!2903187) bm!189223))

(assert (= (or b!2903192 bm!189222) bm!189220))

(assert (=> bm!189220 m!3306845))

(declare-fun m!3306907 () Bool)

(assert (=> bm!189220 m!3306907))

(declare-fun m!3306909 () Bool)

(assert (=> d!835622 m!3306909))

(assert (=> d!835622 m!3306835))

(assert (=> bm!189223 m!3306845))

(declare-fun m!3306911 () Bool)

(assert (=> bm!189223 m!3306911))

(declare-fun m!3306913 () Bool)

(assert (=> b!2903194 m!3306913))

(assert (=> b!2903065 d!835622))

(declare-fun d!835624 () Bool)

(assert (=> d!835624 (= (head!6412 prefix!1456) (h!39978 prefix!1456))))

(assert (=> b!2903065 d!835624))

(declare-fun d!835626 () Bool)

(assert (=> d!835626 (= (tail!4641 prefix!1456) (t!233725 prefix!1456))))

(assert (=> b!2903065 d!835626))

(declare-fun d!835628 () Bool)

(assert (=> d!835628 (= (isEmpty!18867 prefix!1456) ((_ is Nil!34558) prefix!1456))))

(assert (=> d!835612 d!835628))

(assert (=> b!2903064 d!835610))

(declare-fun b!2903211 () Bool)

(declare-fun e!1833121 () Bool)

(declare-fun call!189234 () Bool)

(assert (=> b!2903211 (= e!1833121 call!189234)))

(declare-fun b!2903212 () Bool)

(declare-fun e!1833122 () Bool)

(declare-fun e!1833123 () Bool)

(assert (=> b!2903212 (= e!1833122 e!1833123)))

(declare-fun res!1199464 () Bool)

(assert (=> b!2903212 (=> res!1199464 e!1833123)))

(assert (=> b!2903212 (= res!1199464 ((_ is EmptyLang!8881) r!19097))))

(declare-fun bm!189228 () Bool)

(declare-fun c!473095 () Bool)

(assert (=> bm!189228 (= call!189234 (lostCause!860 (ite c!473095 (regTwo!18275 r!19097) (regOne!18274 r!19097))))))

(declare-fun bm!189229 () Bool)

(declare-fun call!189233 () Bool)

(assert (=> bm!189229 (= call!189233 (lostCause!860 (ite c!473095 (regOne!18275 r!19097) (regTwo!18274 r!19097))))))

(declare-fun b!2903213 () Bool)

(declare-fun e!1833119 () Bool)

(assert (=> b!2903213 (= e!1833123 e!1833119)))

(declare-fun res!1199467 () Bool)

(assert (=> b!2903213 (=> (not res!1199467) (not e!1833119))))

(assert (=> b!2903213 (= res!1199467 (and (not ((_ is ElementMatch!8881) r!19097)) (not ((_ is Star!8881) r!19097))))))

(declare-fun d!835630 () Bool)

(declare-fun lt!1022368 () Bool)

(declare-datatypes ((Option!6539 0))(
  ( (None!6538) (Some!6538 (v!34664 List!34682)) )
))
(declare-fun isEmpty!18869 (Option!6539) Bool)

(declare-fun getLanguageWitness!573 (Regex!8881) Option!6539)

(assert (=> d!835630 (= lt!1022368 (isEmpty!18869 (getLanguageWitness!573 r!19097)))))

(assert (=> d!835630 (= lt!1022368 e!1833122)))

(declare-fun res!1199468 () Bool)

(assert (=> d!835630 (=> (not res!1199468) (not e!1833122))))

(assert (=> d!835630 (= res!1199468 (not ((_ is EmptyExpr!8881) r!19097)))))

(assert (=> d!835630 (= (lostCauseFct!223 r!19097) lt!1022368)))

(declare-fun b!2903214 () Bool)

(declare-fun e!1833120 () Bool)

(assert (=> b!2903214 (= e!1833119 e!1833120)))

(assert (=> b!2903214 (= c!473095 ((_ is Union!8881) r!19097))))

(declare-fun b!2903215 () Bool)

(declare-fun e!1833118 () Bool)

(assert (=> b!2903215 (= e!1833118 call!189233)))

(declare-fun b!2903216 () Bool)

(assert (=> b!2903216 (= e!1833120 e!1833118)))

(declare-fun res!1199465 () Bool)

(assert (=> b!2903216 (= res!1199465 call!189234)))

(assert (=> b!2903216 (=> res!1199465 e!1833118)))

(declare-fun b!2903217 () Bool)

(assert (=> b!2903217 (= e!1833120 e!1833121)))

(declare-fun res!1199466 () Bool)

(assert (=> b!2903217 (= res!1199466 call!189233)))

(assert (=> b!2903217 (=> (not res!1199466) (not e!1833121))))

(assert (= (and d!835630 res!1199468) b!2903212))

(assert (= (and b!2903212 (not res!1199464)) b!2903213))

(assert (= (and b!2903213 res!1199467) b!2903214))

(assert (= (and b!2903214 c!473095) b!2903217))

(assert (= (and b!2903214 (not c!473095)) b!2903216))

(assert (= (and b!2903217 res!1199466) b!2903211))

(assert (= (and b!2903216 (not res!1199465)) b!2903215))

(assert (= (or b!2903211 b!2903216) bm!189228))

(assert (= (or b!2903217 b!2903215) bm!189229))

(declare-fun m!3306915 () Bool)

(assert (=> bm!189228 m!3306915))

(declare-fun m!3306917 () Bool)

(assert (=> bm!189229 m!3306917))

(declare-fun m!3306919 () Bool)

(assert (=> d!835630 m!3306919))

(assert (=> d!835630 m!3306919))

(declare-fun m!3306921 () Bool)

(assert (=> d!835630 m!3306921))

(assert (=> d!835610 d!835630))

(declare-fun b!2903218 () Bool)

(declare-fun e!1833128 () Bool)

(declare-fun e!1833125 () Bool)

(assert (=> b!2903218 (= e!1833128 e!1833125)))

(declare-fun res!1199469 () Bool)

(assert (=> b!2903218 (=> (not res!1199469) (not e!1833125))))

(declare-fun call!189236 () Bool)

(assert (=> b!2903218 (= res!1199469 call!189236)))

(declare-fun b!2903219 () Bool)

(declare-fun e!1833124 () Bool)

(declare-fun e!1833126 () Bool)

(assert (=> b!2903219 (= e!1833124 e!1833126)))

(declare-fun c!473096 () Bool)

(assert (=> b!2903219 (= c!473096 ((_ is Star!8881) (ite c!473068 (regOne!18275 r!19097) (regOne!18274 r!19097))))))

(declare-fun call!189235 () Bool)

(declare-fun bm!189230 () Bool)

(declare-fun c!473097 () Bool)

(assert (=> bm!189230 (= call!189235 (validRegex!3654 (ite c!473096 (reg!9210 (ite c!473068 (regOne!18275 r!19097) (regOne!18274 r!19097))) (ite c!473097 (regTwo!18275 (ite c!473068 (regOne!18275 r!19097) (regOne!18274 r!19097))) (regTwo!18274 (ite c!473068 (regOne!18275 r!19097) (regOne!18274 r!19097)))))))))

(declare-fun bm!189231 () Bool)

(assert (=> bm!189231 (= call!189236 (validRegex!3654 (ite c!473097 (regOne!18275 (ite c!473068 (regOne!18275 r!19097) (regOne!18274 r!19097))) (regOne!18274 (ite c!473068 (regOne!18275 r!19097) (regOne!18274 r!19097))))))))

(declare-fun b!2903220 () Bool)

(declare-fun e!1833130 () Bool)

(assert (=> b!2903220 (= e!1833130 call!189235)))

(declare-fun b!2903221 () Bool)

(declare-fun e!1833129 () Bool)

(assert (=> b!2903221 (= e!1833126 e!1833129)))

(assert (=> b!2903221 (= c!473097 ((_ is Union!8881) (ite c!473068 (regOne!18275 r!19097) (regOne!18274 r!19097))))))

(declare-fun bm!189232 () Bool)

(declare-fun call!189237 () Bool)

(assert (=> bm!189232 (= call!189237 call!189235)))

(declare-fun b!2903223 () Bool)

(declare-fun res!1199472 () Bool)

(assert (=> b!2903223 (=> res!1199472 e!1833128)))

(assert (=> b!2903223 (= res!1199472 (not ((_ is Concat!14202) (ite c!473068 (regOne!18275 r!19097) (regOne!18274 r!19097)))))))

(assert (=> b!2903223 (= e!1833129 e!1833128)))

(declare-fun b!2903224 () Bool)

(assert (=> b!2903224 (= e!1833125 call!189237)))

(declare-fun b!2903225 () Bool)

(declare-fun res!1199471 () Bool)

(declare-fun e!1833127 () Bool)

(assert (=> b!2903225 (=> (not res!1199471) (not e!1833127))))

(assert (=> b!2903225 (= res!1199471 call!189236)))

(assert (=> b!2903225 (= e!1833129 e!1833127)))

(declare-fun b!2903226 () Bool)

(assert (=> b!2903226 (= e!1833127 call!189237)))

(declare-fun b!2903222 () Bool)

(assert (=> b!2903222 (= e!1833126 e!1833130)))

(declare-fun res!1199470 () Bool)

(assert (=> b!2903222 (= res!1199470 (not (nullable!2770 (reg!9210 (ite c!473068 (regOne!18275 r!19097) (regOne!18274 r!19097))))))))

(assert (=> b!2903222 (=> (not res!1199470) (not e!1833130))))

(declare-fun d!835632 () Bool)

(declare-fun res!1199473 () Bool)

(assert (=> d!835632 (=> res!1199473 e!1833124)))

(assert (=> d!835632 (= res!1199473 ((_ is ElementMatch!8881) (ite c!473068 (regOne!18275 r!19097) (regOne!18274 r!19097))))))

(assert (=> d!835632 (= (validRegex!3654 (ite c!473068 (regOne!18275 r!19097) (regOne!18274 r!19097))) e!1833124)))

(assert (= (and d!835632 (not res!1199473)) b!2903219))

(assert (= (and b!2903219 c!473096) b!2903222))

(assert (= (and b!2903219 (not c!473096)) b!2903221))

(assert (= (and b!2903222 res!1199470) b!2903220))

(assert (= (and b!2903221 c!473097) b!2903225))

(assert (= (and b!2903221 (not c!473097)) b!2903223))

(assert (= (and b!2903225 res!1199471) b!2903226))

(assert (= (and b!2903223 (not res!1199472)) b!2903218))

(assert (= (and b!2903218 res!1199469) b!2903224))

(assert (= (or b!2903225 b!2903218) bm!189231))

(assert (= (or b!2903226 b!2903224) bm!189232))

(assert (= (or b!2903220 bm!189232) bm!189230))

(declare-fun m!3306923 () Bool)

(assert (=> bm!189230 m!3306923))

(declare-fun m!3306925 () Bool)

(assert (=> bm!189231 m!3306925))

(declare-fun m!3306927 () Bool)

(assert (=> b!2903222 m!3306927))

(assert (=> bm!189207 d!835632))

(declare-fun b!2903227 () Bool)

(declare-fun e!1833132 () Bool)

(declare-fun e!1833133 () Bool)

(assert (=> b!2903227 (= e!1833132 e!1833133)))

(declare-fun res!1199476 () Bool)

(assert (=> b!2903227 (=> (not res!1199476) (not e!1833133))))

(assert (=> b!2903227 (= res!1199476 (not ((_ is Nil!34558) (tail!4641 s!13418))))))

(declare-fun b!2903229 () Bool)

(assert (=> b!2903229 (= e!1833133 (isPrefix!2718 (tail!4641 (tail!4641 prefix!1456)) (tail!4641 (tail!4641 s!13418))))))

(declare-fun b!2903228 () Bool)

(declare-fun res!1199477 () Bool)

(assert (=> b!2903228 (=> (not res!1199477) (not e!1833133))))

(assert (=> b!2903228 (= res!1199477 (= (head!6412 (tail!4641 prefix!1456)) (head!6412 (tail!4641 s!13418))))))

(declare-fun d!835634 () Bool)

(declare-fun e!1833131 () Bool)

(assert (=> d!835634 e!1833131))

(declare-fun res!1199474 () Bool)

(assert (=> d!835634 (=> res!1199474 e!1833131)))

(declare-fun lt!1022369 () Bool)

(assert (=> d!835634 (= res!1199474 (not lt!1022369))))

(assert (=> d!835634 (= lt!1022369 e!1833132)))

(declare-fun res!1199475 () Bool)

(assert (=> d!835634 (=> res!1199475 e!1833132)))

(assert (=> d!835634 (= res!1199475 ((_ is Nil!34558) (tail!4641 prefix!1456)))))

(assert (=> d!835634 (= (isPrefix!2718 (tail!4641 prefix!1456) (tail!4641 s!13418)) lt!1022369)))

(declare-fun b!2903230 () Bool)

(assert (=> b!2903230 (= e!1833131 (>= (size!26361 (tail!4641 s!13418)) (size!26361 (tail!4641 prefix!1456))))))

(assert (= (and d!835634 (not res!1199475)) b!2903227))

(assert (= (and b!2903227 res!1199476) b!2903228))

(assert (= (and b!2903228 res!1199477) b!2903229))

(assert (= (and d!835634 (not res!1199474)) b!2903230))

(assert (=> b!2903229 m!3306839))

(assert (=> b!2903229 m!3306903))

(assert (=> b!2903229 m!3306841))

(declare-fun m!3306929 () Bool)

(assert (=> b!2903229 m!3306929))

(assert (=> b!2903229 m!3306903))

(assert (=> b!2903229 m!3306929))

(declare-fun m!3306931 () Bool)

(assert (=> b!2903229 m!3306931))

(assert (=> b!2903228 m!3306839))

(assert (=> b!2903228 m!3306899))

(assert (=> b!2903228 m!3306841))

(declare-fun m!3306933 () Bool)

(assert (=> b!2903228 m!3306933))

(assert (=> b!2903230 m!3306841))

(declare-fun m!3306935 () Bool)

(assert (=> b!2903230 m!3306935))

(assert (=> b!2903230 m!3306839))

(declare-fun m!3306937 () Bool)

(assert (=> b!2903230 m!3306937))

(assert (=> b!2903013 d!835634))

(assert (=> b!2903013 d!835626))

(declare-fun d!835636 () Bool)

(assert (=> d!835636 (= (tail!4641 s!13418) (t!233725 s!13418))))

(assert (=> b!2903013 d!835636))

(declare-fun d!835638 () Bool)

(declare-fun lt!1022372 () Int)

(assert (=> d!835638 (>= lt!1022372 0)))

(declare-fun e!1833136 () Int)

(assert (=> d!835638 (= lt!1022372 e!1833136)))

(declare-fun c!473100 () Bool)

(assert (=> d!835638 (= c!473100 ((_ is Nil!34558) s!13418))))

(assert (=> d!835638 (= (size!26361 s!13418) lt!1022372)))

(declare-fun b!2903235 () Bool)

(assert (=> b!2903235 (= e!1833136 0)))

(declare-fun b!2903236 () Bool)

(assert (=> b!2903236 (= e!1833136 (+ 1 (size!26361 (t!233725 s!13418))))))

(assert (= (and d!835638 c!473100) b!2903235))

(assert (= (and d!835638 (not c!473100)) b!2903236))

(declare-fun m!3306939 () Bool)

(assert (=> b!2903236 m!3306939))

(assert (=> b!2903014 d!835638))

(declare-fun d!835640 () Bool)

(declare-fun lt!1022373 () Int)

(assert (=> d!835640 (>= lt!1022373 0)))

(declare-fun e!1833137 () Int)

(assert (=> d!835640 (= lt!1022373 e!1833137)))

(declare-fun c!473101 () Bool)

(assert (=> d!835640 (= c!473101 ((_ is Nil!34558) prefix!1456))))

(assert (=> d!835640 (= (size!26361 prefix!1456) lt!1022373)))

(declare-fun b!2903237 () Bool)

(assert (=> b!2903237 (= e!1833137 0)))

(declare-fun b!2903238 () Bool)

(assert (=> b!2903238 (= e!1833137 (+ 1 (size!26361 (t!233725 prefix!1456))))))

(assert (= (and d!835640 c!473101) b!2903237))

(assert (= (and d!835640 (not c!473101)) b!2903238))

(declare-fun m!3306941 () Bool)

(assert (=> b!2903238 m!3306941))

(assert (=> b!2903014 d!835640))

(assert (=> b!2903012 d!835624))

(declare-fun d!835642 () Bool)

(assert (=> d!835642 (= (head!6412 s!13418) (h!39978 s!13418))))

(assert (=> b!2903012 d!835642))

(declare-fun d!835644 () Bool)

(declare-fun nullableFct!845 (Regex!8881) Bool)

(assert (=> d!835644 (= (nullable!2770 (reg!9210 r!19097)) (nullableFct!845 (reg!9210 r!19097)))))

(declare-fun bs!524039 () Bool)

(assert (= bs!524039 d!835644))

(declare-fun m!3306943 () Bool)

(assert (=> bs!524039 m!3306943))

(assert (=> b!2903055 d!835644))

(declare-fun b!2903239 () Bool)

(declare-fun e!1833142 () Bool)

(declare-fun e!1833139 () Bool)

(assert (=> b!2903239 (= e!1833142 e!1833139)))

(declare-fun res!1199478 () Bool)

(assert (=> b!2903239 (=> (not res!1199478) (not e!1833139))))

(declare-fun call!189239 () Bool)

(assert (=> b!2903239 (= res!1199478 call!189239)))

(declare-fun b!2903240 () Bool)

(declare-fun e!1833138 () Bool)

(declare-fun e!1833140 () Bool)

(assert (=> b!2903240 (= e!1833138 e!1833140)))

(declare-fun c!473102 () Bool)

(assert (=> b!2903240 (= c!473102 ((_ is Star!8881) (ite c!473067 (reg!9210 r!19097) (ite c!473068 (regTwo!18275 r!19097) (regTwo!18274 r!19097)))))))

(declare-fun c!473103 () Bool)

(declare-fun call!189238 () Bool)

(declare-fun bm!189233 () Bool)

(assert (=> bm!189233 (= call!189238 (validRegex!3654 (ite c!473102 (reg!9210 (ite c!473067 (reg!9210 r!19097) (ite c!473068 (regTwo!18275 r!19097) (regTwo!18274 r!19097)))) (ite c!473103 (regTwo!18275 (ite c!473067 (reg!9210 r!19097) (ite c!473068 (regTwo!18275 r!19097) (regTwo!18274 r!19097)))) (regTwo!18274 (ite c!473067 (reg!9210 r!19097) (ite c!473068 (regTwo!18275 r!19097) (regTwo!18274 r!19097))))))))))

(declare-fun bm!189234 () Bool)

(assert (=> bm!189234 (= call!189239 (validRegex!3654 (ite c!473103 (regOne!18275 (ite c!473067 (reg!9210 r!19097) (ite c!473068 (regTwo!18275 r!19097) (regTwo!18274 r!19097)))) (regOne!18274 (ite c!473067 (reg!9210 r!19097) (ite c!473068 (regTwo!18275 r!19097) (regTwo!18274 r!19097)))))))))

(declare-fun b!2903241 () Bool)

(declare-fun e!1833144 () Bool)

(assert (=> b!2903241 (= e!1833144 call!189238)))

(declare-fun b!2903242 () Bool)

(declare-fun e!1833143 () Bool)

(assert (=> b!2903242 (= e!1833140 e!1833143)))

(assert (=> b!2903242 (= c!473103 ((_ is Union!8881) (ite c!473067 (reg!9210 r!19097) (ite c!473068 (regTwo!18275 r!19097) (regTwo!18274 r!19097)))))))

(declare-fun bm!189235 () Bool)

(declare-fun call!189240 () Bool)

(assert (=> bm!189235 (= call!189240 call!189238)))

(declare-fun b!2903244 () Bool)

(declare-fun res!1199481 () Bool)

(assert (=> b!2903244 (=> res!1199481 e!1833142)))

(assert (=> b!2903244 (= res!1199481 (not ((_ is Concat!14202) (ite c!473067 (reg!9210 r!19097) (ite c!473068 (regTwo!18275 r!19097) (regTwo!18274 r!19097))))))))

(assert (=> b!2903244 (= e!1833143 e!1833142)))

(declare-fun b!2903245 () Bool)

(assert (=> b!2903245 (= e!1833139 call!189240)))

(declare-fun b!2903246 () Bool)

(declare-fun res!1199480 () Bool)

(declare-fun e!1833141 () Bool)

(assert (=> b!2903246 (=> (not res!1199480) (not e!1833141))))

(assert (=> b!2903246 (= res!1199480 call!189239)))

(assert (=> b!2903246 (= e!1833143 e!1833141)))

(declare-fun b!2903247 () Bool)

(assert (=> b!2903247 (= e!1833141 call!189240)))

(declare-fun b!2903243 () Bool)

(assert (=> b!2903243 (= e!1833140 e!1833144)))

(declare-fun res!1199479 () Bool)

(assert (=> b!2903243 (= res!1199479 (not (nullable!2770 (reg!9210 (ite c!473067 (reg!9210 r!19097) (ite c!473068 (regTwo!18275 r!19097) (regTwo!18274 r!19097)))))))))

(assert (=> b!2903243 (=> (not res!1199479) (not e!1833144))))

(declare-fun d!835646 () Bool)

(declare-fun res!1199482 () Bool)

(assert (=> d!835646 (=> res!1199482 e!1833138)))

(assert (=> d!835646 (= res!1199482 ((_ is ElementMatch!8881) (ite c!473067 (reg!9210 r!19097) (ite c!473068 (regTwo!18275 r!19097) (regTwo!18274 r!19097)))))))

(assert (=> d!835646 (= (validRegex!3654 (ite c!473067 (reg!9210 r!19097) (ite c!473068 (regTwo!18275 r!19097) (regTwo!18274 r!19097)))) e!1833138)))

(assert (= (and d!835646 (not res!1199482)) b!2903240))

(assert (= (and b!2903240 c!473102) b!2903243))

(assert (= (and b!2903240 (not c!473102)) b!2903242))

(assert (= (and b!2903243 res!1199479) b!2903241))

(assert (= (and b!2903242 c!473103) b!2903246))

(assert (= (and b!2903242 (not c!473103)) b!2903244))

(assert (= (and b!2903246 res!1199480) b!2903247))

(assert (= (and b!2903244 (not res!1199481)) b!2903239))

(assert (= (and b!2903239 res!1199478) b!2903245))

(assert (= (or b!2903246 b!2903239) bm!189234))

(assert (= (or b!2903247 b!2903245) bm!189235))

(assert (= (or b!2903241 bm!189235) bm!189233))

(declare-fun m!3306945 () Bool)

(assert (=> bm!189233 m!3306945))

(declare-fun m!3306947 () Bool)

(assert (=> bm!189234 m!3306947))

(declare-fun m!3306949 () Bool)

(assert (=> b!2903243 m!3306949))

(assert (=> bm!189206 d!835646))

(declare-fun b!2903248 () Bool)

(declare-fun e!1833145 () Bool)

(assert (=> b!2903248 (= e!1833145 tp_is_empty!15349)))

(declare-fun b!2903249 () Bool)

(declare-fun tp!931921 () Bool)

(declare-fun tp!931923 () Bool)

(assert (=> b!2903249 (= e!1833145 (and tp!931921 tp!931923))))

(declare-fun b!2903251 () Bool)

(declare-fun tp!931920 () Bool)

(declare-fun tp!931922 () Bool)

(assert (=> b!2903251 (= e!1833145 (and tp!931920 tp!931922))))

(declare-fun b!2903250 () Bool)

(declare-fun tp!931924 () Bool)

(assert (=> b!2903250 (= e!1833145 tp!931924)))

(assert (=> b!2903098 (= tp!931868 e!1833145)))

(assert (= (and b!2903098 ((_ is ElementMatch!8881) (regOne!18274 (regTwo!18275 r!19097)))) b!2903248))

(assert (= (and b!2903098 ((_ is Concat!14202) (regOne!18274 (regTwo!18275 r!19097)))) b!2903249))

(assert (= (and b!2903098 ((_ is Star!8881) (regOne!18274 (regTwo!18275 r!19097)))) b!2903250))

(assert (= (and b!2903098 ((_ is Union!8881) (regOne!18274 (regTwo!18275 r!19097)))) b!2903251))

(declare-fun b!2903252 () Bool)

(declare-fun e!1833146 () Bool)

(assert (=> b!2903252 (= e!1833146 tp_is_empty!15349)))

(declare-fun b!2903253 () Bool)

(declare-fun tp!931926 () Bool)

(declare-fun tp!931928 () Bool)

(assert (=> b!2903253 (= e!1833146 (and tp!931926 tp!931928))))

(declare-fun b!2903255 () Bool)

(declare-fun tp!931925 () Bool)

(declare-fun tp!931927 () Bool)

(assert (=> b!2903255 (= e!1833146 (and tp!931925 tp!931927))))

(declare-fun b!2903254 () Bool)

(declare-fun tp!931929 () Bool)

(assert (=> b!2903254 (= e!1833146 tp!931929)))

(assert (=> b!2903098 (= tp!931870 e!1833146)))

(assert (= (and b!2903098 ((_ is ElementMatch!8881) (regTwo!18274 (regTwo!18275 r!19097)))) b!2903252))

(assert (= (and b!2903098 ((_ is Concat!14202) (regTwo!18274 (regTwo!18275 r!19097)))) b!2903253))

(assert (= (and b!2903098 ((_ is Star!8881) (regTwo!18274 (regTwo!18275 r!19097)))) b!2903254))

(assert (= (and b!2903098 ((_ is Union!8881) (regTwo!18274 (regTwo!18275 r!19097)))) b!2903255))

(declare-fun b!2903256 () Bool)

(declare-fun e!1833147 () Bool)

(assert (=> b!2903256 (= e!1833147 tp_is_empty!15349)))

(declare-fun b!2903257 () Bool)

(declare-fun tp!931931 () Bool)

(declare-fun tp!931933 () Bool)

(assert (=> b!2903257 (= e!1833147 (and tp!931931 tp!931933))))

(declare-fun b!2903259 () Bool)

(declare-fun tp!931930 () Bool)

(declare-fun tp!931932 () Bool)

(assert (=> b!2903259 (= e!1833147 (and tp!931930 tp!931932))))

(declare-fun b!2903258 () Bool)

(declare-fun tp!931934 () Bool)

(assert (=> b!2903258 (= e!1833147 tp!931934)))

(assert (=> b!2903096 (= tp!931862 e!1833147)))

(assert (= (and b!2903096 ((_ is ElementMatch!8881) (regOne!18275 (regOne!18275 r!19097)))) b!2903256))

(assert (= (and b!2903096 ((_ is Concat!14202) (regOne!18275 (regOne!18275 r!19097)))) b!2903257))

(assert (= (and b!2903096 ((_ is Star!8881) (regOne!18275 (regOne!18275 r!19097)))) b!2903258))

(assert (= (and b!2903096 ((_ is Union!8881) (regOne!18275 (regOne!18275 r!19097)))) b!2903259))

(declare-fun b!2903260 () Bool)

(declare-fun e!1833148 () Bool)

(assert (=> b!2903260 (= e!1833148 tp_is_empty!15349)))

(declare-fun b!2903261 () Bool)

(declare-fun tp!931936 () Bool)

(declare-fun tp!931938 () Bool)

(assert (=> b!2903261 (= e!1833148 (and tp!931936 tp!931938))))

(declare-fun b!2903263 () Bool)

(declare-fun tp!931935 () Bool)

(declare-fun tp!931937 () Bool)

(assert (=> b!2903263 (= e!1833148 (and tp!931935 tp!931937))))

(declare-fun b!2903262 () Bool)

(declare-fun tp!931939 () Bool)

(assert (=> b!2903262 (= e!1833148 tp!931939)))

(assert (=> b!2903096 (= tp!931864 e!1833148)))

(assert (= (and b!2903096 ((_ is ElementMatch!8881) (regTwo!18275 (regOne!18275 r!19097)))) b!2903260))

(assert (= (and b!2903096 ((_ is Concat!14202) (regTwo!18275 (regOne!18275 r!19097)))) b!2903261))

(assert (= (and b!2903096 ((_ is Star!8881) (regTwo!18275 (regOne!18275 r!19097)))) b!2903262))

(assert (= (and b!2903096 ((_ is Union!8881) (regTwo!18275 (regOne!18275 r!19097)))) b!2903263))

(declare-fun b!2903264 () Bool)

(declare-fun e!1833149 () Bool)

(assert (=> b!2903264 (= e!1833149 tp_is_empty!15349)))

(declare-fun b!2903265 () Bool)

(declare-fun tp!931941 () Bool)

(declare-fun tp!931943 () Bool)

(assert (=> b!2903265 (= e!1833149 (and tp!931941 tp!931943))))

(declare-fun b!2903267 () Bool)

(declare-fun tp!931940 () Bool)

(declare-fun tp!931942 () Bool)

(assert (=> b!2903267 (= e!1833149 (and tp!931940 tp!931942))))

(declare-fun b!2903266 () Bool)

(declare-fun tp!931944 () Bool)

(assert (=> b!2903266 (= e!1833149 tp!931944)))

(assert (=> b!2903099 (= tp!931871 e!1833149)))

(assert (= (and b!2903099 ((_ is ElementMatch!8881) (reg!9210 (regTwo!18275 r!19097)))) b!2903264))

(assert (= (and b!2903099 ((_ is Concat!14202) (reg!9210 (regTwo!18275 r!19097)))) b!2903265))

(assert (= (and b!2903099 ((_ is Star!8881) (reg!9210 (regTwo!18275 r!19097)))) b!2903266))

(assert (= (and b!2903099 ((_ is Union!8881) (reg!9210 (regTwo!18275 r!19097)))) b!2903267))

(declare-fun b!2903268 () Bool)

(declare-fun e!1833150 () Bool)

(assert (=> b!2903268 (= e!1833150 tp_is_empty!15349)))

(declare-fun b!2903269 () Bool)

(declare-fun tp!931946 () Bool)

(declare-fun tp!931948 () Bool)

(assert (=> b!2903269 (= e!1833150 (and tp!931946 tp!931948))))

(declare-fun b!2903271 () Bool)

(declare-fun tp!931945 () Bool)

(declare-fun tp!931947 () Bool)

(assert (=> b!2903271 (= e!1833150 (and tp!931945 tp!931947))))

(declare-fun b!2903270 () Bool)

(declare-fun tp!931949 () Bool)

(assert (=> b!2903270 (= e!1833150 tp!931949)))

(assert (=> b!2903100 (= tp!931867 e!1833150)))

(assert (= (and b!2903100 ((_ is ElementMatch!8881) (regOne!18275 (regTwo!18275 r!19097)))) b!2903268))

(assert (= (and b!2903100 ((_ is Concat!14202) (regOne!18275 (regTwo!18275 r!19097)))) b!2903269))

(assert (= (and b!2903100 ((_ is Star!8881) (regOne!18275 (regTwo!18275 r!19097)))) b!2903270))

(assert (= (and b!2903100 ((_ is Union!8881) (regOne!18275 (regTwo!18275 r!19097)))) b!2903271))

(declare-fun b!2903272 () Bool)

(declare-fun e!1833151 () Bool)

(assert (=> b!2903272 (= e!1833151 tp_is_empty!15349)))

(declare-fun b!2903273 () Bool)

(declare-fun tp!931951 () Bool)

(declare-fun tp!931953 () Bool)

(assert (=> b!2903273 (= e!1833151 (and tp!931951 tp!931953))))

(declare-fun b!2903275 () Bool)

(declare-fun tp!931950 () Bool)

(declare-fun tp!931952 () Bool)

(assert (=> b!2903275 (= e!1833151 (and tp!931950 tp!931952))))

(declare-fun b!2903274 () Bool)

(declare-fun tp!931954 () Bool)

(assert (=> b!2903274 (= e!1833151 tp!931954)))

(assert (=> b!2903100 (= tp!931869 e!1833151)))

(assert (= (and b!2903100 ((_ is ElementMatch!8881) (regTwo!18275 (regTwo!18275 r!19097)))) b!2903272))

(assert (= (and b!2903100 ((_ is Concat!14202) (regTwo!18275 (regTwo!18275 r!19097)))) b!2903273))

(assert (= (and b!2903100 ((_ is Star!8881) (regTwo!18275 (regTwo!18275 r!19097)))) b!2903274))

(assert (= (and b!2903100 ((_ is Union!8881) (regTwo!18275 (regTwo!18275 r!19097)))) b!2903275))

(declare-fun b!2903276 () Bool)

(declare-fun e!1833152 () Bool)

(assert (=> b!2903276 (= e!1833152 tp_is_empty!15349)))

(declare-fun b!2903277 () Bool)

(declare-fun tp!931956 () Bool)

(declare-fun tp!931958 () Bool)

(assert (=> b!2903277 (= e!1833152 (and tp!931956 tp!931958))))

(declare-fun b!2903279 () Bool)

(declare-fun tp!931955 () Bool)

(declare-fun tp!931957 () Bool)

(assert (=> b!2903279 (= e!1833152 (and tp!931955 tp!931957))))

(declare-fun b!2903278 () Bool)

(declare-fun tp!931959 () Bool)

(assert (=> b!2903278 (= e!1833152 tp!931959)))

(assert (=> b!2903091 (= tp!931861 e!1833152)))

(assert (= (and b!2903091 ((_ is ElementMatch!8881) (reg!9210 (regTwo!18274 r!19097)))) b!2903276))

(assert (= (and b!2903091 ((_ is Concat!14202) (reg!9210 (regTwo!18274 r!19097)))) b!2903277))

(assert (= (and b!2903091 ((_ is Star!8881) (reg!9210 (regTwo!18274 r!19097)))) b!2903278))

(assert (= (and b!2903091 ((_ is Union!8881) (reg!9210 (regTwo!18274 r!19097)))) b!2903279))

(declare-fun b!2903280 () Bool)

(declare-fun e!1833153 () Bool)

(assert (=> b!2903280 (= e!1833153 tp_is_empty!15349)))

(declare-fun b!2903281 () Bool)

(declare-fun tp!931961 () Bool)

(declare-fun tp!931963 () Bool)

(assert (=> b!2903281 (= e!1833153 (and tp!931961 tp!931963))))

(declare-fun b!2903283 () Bool)

(declare-fun tp!931960 () Bool)

(declare-fun tp!931962 () Bool)

(assert (=> b!2903283 (= e!1833153 (and tp!931960 tp!931962))))

(declare-fun b!2903282 () Bool)

(declare-fun tp!931964 () Bool)

(assert (=> b!2903282 (= e!1833153 tp!931964)))

(assert (=> b!2903109 (= tp!931875 e!1833153)))

(assert (= (and b!2903109 ((_ is ElementMatch!8881) (regOne!18275 (reg!9210 r!19097)))) b!2903280))

(assert (= (and b!2903109 ((_ is Concat!14202) (regOne!18275 (reg!9210 r!19097)))) b!2903281))

(assert (= (and b!2903109 ((_ is Star!8881) (regOne!18275 (reg!9210 r!19097)))) b!2903282))

(assert (= (and b!2903109 ((_ is Union!8881) (regOne!18275 (reg!9210 r!19097)))) b!2903283))

(declare-fun b!2903284 () Bool)

(declare-fun e!1833154 () Bool)

(assert (=> b!2903284 (= e!1833154 tp_is_empty!15349)))

(declare-fun b!2903285 () Bool)

(declare-fun tp!931966 () Bool)

(declare-fun tp!931968 () Bool)

(assert (=> b!2903285 (= e!1833154 (and tp!931966 tp!931968))))

(declare-fun b!2903287 () Bool)

(declare-fun tp!931965 () Bool)

(declare-fun tp!931967 () Bool)

(assert (=> b!2903287 (= e!1833154 (and tp!931965 tp!931967))))

(declare-fun b!2903286 () Bool)

(declare-fun tp!931969 () Bool)

(assert (=> b!2903286 (= e!1833154 tp!931969)))

(assert (=> b!2903109 (= tp!931877 e!1833154)))

(assert (= (and b!2903109 ((_ is ElementMatch!8881) (regTwo!18275 (reg!9210 r!19097)))) b!2903284))

(assert (= (and b!2903109 ((_ is Concat!14202) (regTwo!18275 (reg!9210 r!19097)))) b!2903285))

(assert (= (and b!2903109 ((_ is Star!8881) (regTwo!18275 (reg!9210 r!19097)))) b!2903286))

(assert (= (and b!2903109 ((_ is Union!8881) (regTwo!18275 (reg!9210 r!19097)))) b!2903287))

(declare-fun b!2903288 () Bool)

(declare-fun e!1833155 () Bool)

(assert (=> b!2903288 (= e!1833155 tp_is_empty!15349)))

(declare-fun b!2903289 () Bool)

(declare-fun tp!931971 () Bool)

(declare-fun tp!931973 () Bool)

(assert (=> b!2903289 (= e!1833155 (and tp!931971 tp!931973))))

(declare-fun b!2903291 () Bool)

(declare-fun tp!931970 () Bool)

(declare-fun tp!931972 () Bool)

(assert (=> b!2903291 (= e!1833155 (and tp!931970 tp!931972))))

(declare-fun b!2903290 () Bool)

(declare-fun tp!931974 () Bool)

(assert (=> b!2903290 (= e!1833155 tp!931974)))

(assert (=> b!2903087 (= tp!931856 e!1833155)))

(assert (= (and b!2903087 ((_ is ElementMatch!8881) (reg!9210 (regOne!18274 r!19097)))) b!2903288))

(assert (= (and b!2903087 ((_ is Concat!14202) (reg!9210 (regOne!18274 r!19097)))) b!2903289))

(assert (= (and b!2903087 ((_ is Star!8881) (reg!9210 (regOne!18274 r!19097)))) b!2903290))

(assert (= (and b!2903087 ((_ is Union!8881) (reg!9210 (regOne!18274 r!19097)))) b!2903291))

(declare-fun b!2903292 () Bool)

(declare-fun e!1833156 () Bool)

(assert (=> b!2903292 (= e!1833156 tp_is_empty!15349)))

(declare-fun b!2903293 () Bool)

(declare-fun tp!931976 () Bool)

(declare-fun tp!931978 () Bool)

(assert (=> b!2903293 (= e!1833156 (and tp!931976 tp!931978))))

(declare-fun b!2903295 () Bool)

(declare-fun tp!931975 () Bool)

(declare-fun tp!931977 () Bool)

(assert (=> b!2903295 (= e!1833156 (and tp!931975 tp!931977))))

(declare-fun b!2903294 () Bool)

(declare-fun tp!931979 () Bool)

(assert (=> b!2903294 (= e!1833156 tp!931979)))

(assert (=> b!2903092 (= tp!931857 e!1833156)))

(assert (= (and b!2903092 ((_ is ElementMatch!8881) (regOne!18275 (regTwo!18274 r!19097)))) b!2903292))

(assert (= (and b!2903092 ((_ is Concat!14202) (regOne!18275 (regTwo!18274 r!19097)))) b!2903293))

(assert (= (and b!2903092 ((_ is Star!8881) (regOne!18275 (regTwo!18274 r!19097)))) b!2903294))

(assert (= (and b!2903092 ((_ is Union!8881) (regOne!18275 (regTwo!18274 r!19097)))) b!2903295))

(declare-fun b!2903296 () Bool)

(declare-fun e!1833157 () Bool)

(assert (=> b!2903296 (= e!1833157 tp_is_empty!15349)))

(declare-fun b!2903297 () Bool)

(declare-fun tp!931981 () Bool)

(declare-fun tp!931983 () Bool)

(assert (=> b!2903297 (= e!1833157 (and tp!931981 tp!931983))))

(declare-fun b!2903299 () Bool)

(declare-fun tp!931980 () Bool)

(declare-fun tp!931982 () Bool)

(assert (=> b!2903299 (= e!1833157 (and tp!931980 tp!931982))))

(declare-fun b!2903298 () Bool)

(declare-fun tp!931984 () Bool)

(assert (=> b!2903298 (= e!1833157 tp!931984)))

(assert (=> b!2903092 (= tp!931859 e!1833157)))

(assert (= (and b!2903092 ((_ is ElementMatch!8881) (regTwo!18275 (regTwo!18274 r!19097)))) b!2903296))

(assert (= (and b!2903092 ((_ is Concat!14202) (regTwo!18275 (regTwo!18274 r!19097)))) b!2903297))

(assert (= (and b!2903092 ((_ is Star!8881) (regTwo!18275 (regTwo!18274 r!19097)))) b!2903298))

(assert (= (and b!2903092 ((_ is Union!8881) (regTwo!18275 (regTwo!18274 r!19097)))) b!2903299))

(declare-fun b!2903300 () Bool)

(declare-fun e!1833158 () Bool)

(assert (=> b!2903300 (= e!1833158 tp_is_empty!15349)))

(declare-fun b!2903301 () Bool)

(declare-fun tp!931986 () Bool)

(declare-fun tp!931988 () Bool)

(assert (=> b!2903301 (= e!1833158 (and tp!931986 tp!931988))))

(declare-fun b!2903303 () Bool)

(declare-fun tp!931985 () Bool)

(declare-fun tp!931987 () Bool)

(assert (=> b!2903303 (= e!1833158 (and tp!931985 tp!931987))))

(declare-fun b!2903302 () Bool)

(declare-fun tp!931989 () Bool)

(assert (=> b!2903302 (= e!1833158 tp!931989)))

(assert (=> b!2903107 (= tp!931876 e!1833158)))

(assert (= (and b!2903107 ((_ is ElementMatch!8881) (regOne!18274 (reg!9210 r!19097)))) b!2903300))

(assert (= (and b!2903107 ((_ is Concat!14202) (regOne!18274 (reg!9210 r!19097)))) b!2903301))

(assert (= (and b!2903107 ((_ is Star!8881) (regOne!18274 (reg!9210 r!19097)))) b!2903302))

(assert (= (and b!2903107 ((_ is Union!8881) (regOne!18274 (reg!9210 r!19097)))) b!2903303))

(declare-fun b!2903304 () Bool)

(declare-fun e!1833159 () Bool)

(assert (=> b!2903304 (= e!1833159 tp_is_empty!15349)))

(declare-fun b!2903305 () Bool)

(declare-fun tp!931991 () Bool)

(declare-fun tp!931993 () Bool)

(assert (=> b!2903305 (= e!1833159 (and tp!931991 tp!931993))))

(declare-fun b!2903307 () Bool)

(declare-fun tp!931990 () Bool)

(declare-fun tp!931992 () Bool)

(assert (=> b!2903307 (= e!1833159 (and tp!931990 tp!931992))))

(declare-fun b!2903306 () Bool)

(declare-fun tp!931994 () Bool)

(assert (=> b!2903306 (= e!1833159 tp!931994)))

(assert (=> b!2903107 (= tp!931878 e!1833159)))

(assert (= (and b!2903107 ((_ is ElementMatch!8881) (regTwo!18274 (reg!9210 r!19097)))) b!2903304))

(assert (= (and b!2903107 ((_ is Concat!14202) (regTwo!18274 (reg!9210 r!19097)))) b!2903305))

(assert (= (and b!2903107 ((_ is Star!8881) (regTwo!18274 (reg!9210 r!19097)))) b!2903306))

(assert (= (and b!2903107 ((_ is Union!8881) (regTwo!18274 (reg!9210 r!19097)))) b!2903307))

(declare-fun b!2903308 () Bool)

(declare-fun e!1833160 () Bool)

(assert (=> b!2903308 (= e!1833160 tp_is_empty!15349)))

(declare-fun b!2903309 () Bool)

(declare-fun tp!931996 () Bool)

(declare-fun tp!931998 () Bool)

(assert (=> b!2903309 (= e!1833160 (and tp!931996 tp!931998))))

(declare-fun b!2903311 () Bool)

(declare-fun tp!931995 () Bool)

(declare-fun tp!931997 () Bool)

(assert (=> b!2903311 (= e!1833160 (and tp!931995 tp!931997))))

(declare-fun b!2903310 () Bool)

(declare-fun tp!931999 () Bool)

(assert (=> b!2903310 (= e!1833160 tp!931999)))

(assert (=> b!2903090 (= tp!931858 e!1833160)))

(assert (= (and b!2903090 ((_ is ElementMatch!8881) (regOne!18274 (regTwo!18274 r!19097)))) b!2903308))

(assert (= (and b!2903090 ((_ is Concat!14202) (regOne!18274 (regTwo!18274 r!19097)))) b!2903309))

(assert (= (and b!2903090 ((_ is Star!8881) (regOne!18274 (regTwo!18274 r!19097)))) b!2903310))

(assert (= (and b!2903090 ((_ is Union!8881) (regOne!18274 (regTwo!18274 r!19097)))) b!2903311))

(declare-fun b!2903312 () Bool)

(declare-fun e!1833161 () Bool)

(assert (=> b!2903312 (= e!1833161 tp_is_empty!15349)))

(declare-fun b!2903313 () Bool)

(declare-fun tp!932001 () Bool)

(declare-fun tp!932003 () Bool)

(assert (=> b!2903313 (= e!1833161 (and tp!932001 tp!932003))))

(declare-fun b!2903315 () Bool)

(declare-fun tp!932000 () Bool)

(declare-fun tp!932002 () Bool)

(assert (=> b!2903315 (= e!1833161 (and tp!932000 tp!932002))))

(declare-fun b!2903314 () Bool)

(declare-fun tp!932004 () Bool)

(assert (=> b!2903314 (= e!1833161 tp!932004)))

(assert (=> b!2903090 (= tp!931860 e!1833161)))

(assert (= (and b!2903090 ((_ is ElementMatch!8881) (regTwo!18274 (regTwo!18274 r!19097)))) b!2903312))

(assert (= (and b!2903090 ((_ is Concat!14202) (regTwo!18274 (regTwo!18274 r!19097)))) b!2903313))

(assert (= (and b!2903090 ((_ is Star!8881) (regTwo!18274 (regTwo!18274 r!19097)))) b!2903314))

(assert (= (and b!2903090 ((_ is Union!8881) (regTwo!18274 (regTwo!18274 r!19097)))) b!2903315))

(declare-fun b!2903316 () Bool)

(declare-fun e!1833162 () Bool)

(assert (=> b!2903316 (= e!1833162 tp_is_empty!15349)))

(declare-fun b!2903317 () Bool)

(declare-fun tp!932006 () Bool)

(declare-fun tp!932008 () Bool)

(assert (=> b!2903317 (= e!1833162 (and tp!932006 tp!932008))))

(declare-fun b!2903319 () Bool)

(declare-fun tp!932005 () Bool)

(declare-fun tp!932007 () Bool)

(assert (=> b!2903319 (= e!1833162 (and tp!932005 tp!932007))))

(declare-fun b!2903318 () Bool)

(declare-fun tp!932009 () Bool)

(assert (=> b!2903318 (= e!1833162 tp!932009)))

(assert (=> b!2903108 (= tp!931879 e!1833162)))

(assert (= (and b!2903108 ((_ is ElementMatch!8881) (reg!9210 (reg!9210 r!19097)))) b!2903316))

(assert (= (and b!2903108 ((_ is Concat!14202) (reg!9210 (reg!9210 r!19097)))) b!2903317))

(assert (= (and b!2903108 ((_ is Star!8881) (reg!9210 (reg!9210 r!19097)))) b!2903318))

(assert (= (and b!2903108 ((_ is Union!8881) (reg!9210 (reg!9210 r!19097)))) b!2903319))

(declare-fun b!2903320 () Bool)

(declare-fun e!1833163 () Bool)

(assert (=> b!2903320 (= e!1833163 tp_is_empty!15349)))

(declare-fun b!2903321 () Bool)

(declare-fun tp!932011 () Bool)

(declare-fun tp!932013 () Bool)

(assert (=> b!2903321 (= e!1833163 (and tp!932011 tp!932013))))

(declare-fun b!2903323 () Bool)

(declare-fun tp!932010 () Bool)

(declare-fun tp!932012 () Bool)

(assert (=> b!2903323 (= e!1833163 (and tp!932010 tp!932012))))

(declare-fun b!2903322 () Bool)

(declare-fun tp!932014 () Bool)

(assert (=> b!2903322 (= e!1833163 tp!932014)))

(assert (=> b!2903086 (= tp!931853 e!1833163)))

(assert (= (and b!2903086 ((_ is ElementMatch!8881) (regOne!18274 (regOne!18274 r!19097)))) b!2903320))

(assert (= (and b!2903086 ((_ is Concat!14202) (regOne!18274 (regOne!18274 r!19097)))) b!2903321))

(assert (= (and b!2903086 ((_ is Star!8881) (regOne!18274 (regOne!18274 r!19097)))) b!2903322))

(assert (= (and b!2903086 ((_ is Union!8881) (regOne!18274 (regOne!18274 r!19097)))) b!2903323))

(declare-fun b!2903324 () Bool)

(declare-fun e!1833164 () Bool)

(assert (=> b!2903324 (= e!1833164 tp_is_empty!15349)))

(declare-fun b!2903325 () Bool)

(declare-fun tp!932016 () Bool)

(declare-fun tp!932018 () Bool)

(assert (=> b!2903325 (= e!1833164 (and tp!932016 tp!932018))))

(declare-fun b!2903327 () Bool)

(declare-fun tp!932015 () Bool)

(declare-fun tp!932017 () Bool)

(assert (=> b!2903327 (= e!1833164 (and tp!932015 tp!932017))))

(declare-fun b!2903326 () Bool)

(declare-fun tp!932019 () Bool)

(assert (=> b!2903326 (= e!1833164 tp!932019)))

(assert (=> b!2903086 (= tp!931855 e!1833164)))

(assert (= (and b!2903086 ((_ is ElementMatch!8881) (regTwo!18274 (regOne!18274 r!19097)))) b!2903324))

(assert (= (and b!2903086 ((_ is Concat!14202) (regTwo!18274 (regOne!18274 r!19097)))) b!2903325))

(assert (= (and b!2903086 ((_ is Star!8881) (regTwo!18274 (regOne!18274 r!19097)))) b!2903326))

(assert (= (and b!2903086 ((_ is Union!8881) (regTwo!18274 (regOne!18274 r!19097)))) b!2903327))

(declare-fun b!2903328 () Bool)

(declare-fun e!1833165 () Bool)

(assert (=> b!2903328 (= e!1833165 tp_is_empty!15349)))

(declare-fun b!2903329 () Bool)

(declare-fun tp!932021 () Bool)

(declare-fun tp!932023 () Bool)

(assert (=> b!2903329 (= e!1833165 (and tp!932021 tp!932023))))

(declare-fun b!2903331 () Bool)

(declare-fun tp!932020 () Bool)

(declare-fun tp!932022 () Bool)

(assert (=> b!2903331 (= e!1833165 (and tp!932020 tp!932022))))

(declare-fun b!2903330 () Bool)

(declare-fun tp!932024 () Bool)

(assert (=> b!2903330 (= e!1833165 tp!932024)))

(assert (=> b!2903095 (= tp!931866 e!1833165)))

(assert (= (and b!2903095 ((_ is ElementMatch!8881) (reg!9210 (regOne!18275 r!19097)))) b!2903328))

(assert (= (and b!2903095 ((_ is Concat!14202) (reg!9210 (regOne!18275 r!19097)))) b!2903329))

(assert (= (and b!2903095 ((_ is Star!8881) (reg!9210 (regOne!18275 r!19097)))) b!2903330))

(assert (= (and b!2903095 ((_ is Union!8881) (reg!9210 (regOne!18275 r!19097)))) b!2903331))

(declare-fun b!2903332 () Bool)

(declare-fun e!1833166 () Bool)

(declare-fun tp!932025 () Bool)

(assert (=> b!2903332 (= e!1833166 (and tp_is_empty!15349 tp!932025))))

(assert (=> b!2903110 (= tp!931880 e!1833166)))

(assert (= (and b!2903110 ((_ is Cons!34558) (t!233725 (t!233725 s!13418)))) b!2903332))

(declare-fun b!2903333 () Bool)

(declare-fun e!1833167 () Bool)

(declare-fun tp!932026 () Bool)

(assert (=> b!2903333 (= e!1833167 (and tp_is_empty!15349 tp!932026))))

(assert (=> b!2903105 (= tp!931874 e!1833167)))

(assert (= (and b!2903105 ((_ is Cons!34558) (t!233725 (t!233725 prefix!1456)))) b!2903333))

(declare-fun b!2903334 () Bool)

(declare-fun e!1833168 () Bool)

(assert (=> b!2903334 (= e!1833168 tp_is_empty!15349)))

(declare-fun b!2903335 () Bool)

(declare-fun tp!932028 () Bool)

(declare-fun tp!932030 () Bool)

(assert (=> b!2903335 (= e!1833168 (and tp!932028 tp!932030))))

(declare-fun b!2903337 () Bool)

(declare-fun tp!932027 () Bool)

(declare-fun tp!932029 () Bool)

(assert (=> b!2903337 (= e!1833168 (and tp!932027 tp!932029))))

(declare-fun b!2903336 () Bool)

(declare-fun tp!932031 () Bool)

(assert (=> b!2903336 (= e!1833168 tp!932031)))

(assert (=> b!2903088 (= tp!931852 e!1833168)))

(assert (= (and b!2903088 ((_ is ElementMatch!8881) (regOne!18275 (regOne!18274 r!19097)))) b!2903334))

(assert (= (and b!2903088 ((_ is Concat!14202) (regOne!18275 (regOne!18274 r!19097)))) b!2903335))

(assert (= (and b!2903088 ((_ is Star!8881) (regOne!18275 (regOne!18274 r!19097)))) b!2903336))

(assert (= (and b!2903088 ((_ is Union!8881) (regOne!18275 (regOne!18274 r!19097)))) b!2903337))

(declare-fun b!2903338 () Bool)

(declare-fun e!1833169 () Bool)

(assert (=> b!2903338 (= e!1833169 tp_is_empty!15349)))

(declare-fun b!2903339 () Bool)

(declare-fun tp!932033 () Bool)

(declare-fun tp!932035 () Bool)

(assert (=> b!2903339 (= e!1833169 (and tp!932033 tp!932035))))

(declare-fun b!2903341 () Bool)

(declare-fun tp!932032 () Bool)

(declare-fun tp!932034 () Bool)

(assert (=> b!2903341 (= e!1833169 (and tp!932032 tp!932034))))

(declare-fun b!2903340 () Bool)

(declare-fun tp!932036 () Bool)

(assert (=> b!2903340 (= e!1833169 tp!932036)))

(assert (=> b!2903088 (= tp!931854 e!1833169)))

(assert (= (and b!2903088 ((_ is ElementMatch!8881) (regTwo!18275 (regOne!18274 r!19097)))) b!2903338))

(assert (= (and b!2903088 ((_ is Concat!14202) (regTwo!18275 (regOne!18274 r!19097)))) b!2903339))

(assert (= (and b!2903088 ((_ is Star!8881) (regTwo!18275 (regOne!18274 r!19097)))) b!2903340))

(assert (= (and b!2903088 ((_ is Union!8881) (regTwo!18275 (regOne!18274 r!19097)))) b!2903341))

(declare-fun b!2903342 () Bool)

(declare-fun e!1833170 () Bool)

(assert (=> b!2903342 (= e!1833170 tp_is_empty!15349)))

(declare-fun b!2903343 () Bool)

(declare-fun tp!932038 () Bool)

(declare-fun tp!932040 () Bool)

(assert (=> b!2903343 (= e!1833170 (and tp!932038 tp!932040))))

(declare-fun b!2903345 () Bool)

(declare-fun tp!932037 () Bool)

(declare-fun tp!932039 () Bool)

(assert (=> b!2903345 (= e!1833170 (and tp!932037 tp!932039))))

(declare-fun b!2903344 () Bool)

(declare-fun tp!932041 () Bool)

(assert (=> b!2903344 (= e!1833170 tp!932041)))

(assert (=> b!2903094 (= tp!931863 e!1833170)))

(assert (= (and b!2903094 ((_ is ElementMatch!8881) (regOne!18274 (regOne!18275 r!19097)))) b!2903342))

(assert (= (and b!2903094 ((_ is Concat!14202) (regOne!18274 (regOne!18275 r!19097)))) b!2903343))

(assert (= (and b!2903094 ((_ is Star!8881) (regOne!18274 (regOne!18275 r!19097)))) b!2903344))

(assert (= (and b!2903094 ((_ is Union!8881) (regOne!18274 (regOne!18275 r!19097)))) b!2903345))

(declare-fun b!2903346 () Bool)

(declare-fun e!1833171 () Bool)

(assert (=> b!2903346 (= e!1833171 tp_is_empty!15349)))

(declare-fun b!2903347 () Bool)

(declare-fun tp!932043 () Bool)

(declare-fun tp!932045 () Bool)

(assert (=> b!2903347 (= e!1833171 (and tp!932043 tp!932045))))

(declare-fun b!2903349 () Bool)

(declare-fun tp!932042 () Bool)

(declare-fun tp!932044 () Bool)

(assert (=> b!2903349 (= e!1833171 (and tp!932042 tp!932044))))

(declare-fun b!2903348 () Bool)

(declare-fun tp!932046 () Bool)

(assert (=> b!2903348 (= e!1833171 tp!932046)))

(assert (=> b!2903094 (= tp!931865 e!1833171)))

(assert (= (and b!2903094 ((_ is ElementMatch!8881) (regTwo!18274 (regOne!18275 r!19097)))) b!2903346))

(assert (= (and b!2903094 ((_ is Concat!14202) (regTwo!18274 (regOne!18275 r!19097)))) b!2903347))

(assert (= (and b!2903094 ((_ is Star!8881) (regTwo!18274 (regOne!18275 r!19097)))) b!2903348))

(assert (= (and b!2903094 ((_ is Union!8881) (regTwo!18274 (regOne!18275 r!19097)))) b!2903349))

(check-sat (not b!2903249) (not b!2903286) (not b!2903251) (not b!2903294) (not b!2903255) (not b!2903257) (not b!2903317) (not b!2903345) (not b!2903222) (not b!2903314) (not b!2903263) (not b!2903302) (not b!2903322) (not d!835620) (not b!2903336) (not b!2903330) (not b!2903194) (not b!2903265) (not bm!189233) (not b!2903349) (not b!2903339) (not b!2903341) tp_is_empty!15349 (not b!2903299) (not b!2903275) (not b!2903333) (not b!2903273) (not b!2903262) (not bm!189229) (not b!2903166) (not b!2903295) (not b!2903305) (not b!2903236) (not b!2903309) (not b!2903261) (not b!2903340) (not b!2903310) (not b!2903253) (not b!2903287) (not b!2903279) (not b!2903313) (not bm!189234) (not b!2903293) (not bm!189223) (not b!2903344) (not b!2903269) (not b!2903290) (not b!2903327) (not b!2903315) (not d!835630) (not b!2903282) (not b!2903331) (not b!2903266) (not b!2903285) (not b!2903335) (not b!2903277) (not b!2903303) (not b!2903329) (not d!835622) (not b!2903238) (not b!2903283) (not b!2903348) (not b!2903278) (not b!2903228) (not b!2903258) (not b!2903254) (not b!2903270) (not b!2903230) (not bm!189220) (not bm!189230) (not b!2903259) (not b!2903323) (not b!2903307) (not b!2903271) (not b!2903306) (not b!2903311) (not b!2903298) (not b!2903321) (not b!2903332) (not b!2903267) (not d!835644) (not b!2903297) (not b!2903243) (not b!2903319) (not b!2903343) (not b!2903318) (not b!2903250) (not b!2903289) (not b!2903326) (not b!2903291) (not bm!189231) (not b!2903281) (not b!2903337) (not b!2903274) (not bm!189228) (not b!2903229) (not b!2903325) (not b!2903347) (not b!2903301) (not b!2903165))
(check-sat)
