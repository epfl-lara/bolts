; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!696508 () Bool)

(assert start!696508)

(declare-fun b!7143743 () Bool)

(declare-fun e!4293094 () Bool)

(declare-fun tp!1970488 () Bool)

(assert (=> b!7143743 (= e!4293094 tp!1970488)))

(declare-fun b!7143744 () Bool)

(declare-fun tp_is_empty!46011 () Bool)

(assert (=> b!7143744 (= e!4293094 tp_is_empty!46011)))

(declare-fun b!7143745 () Bool)

(declare-fun e!4293092 () Bool)

(declare-datatypes ((C!36648 0))(
  ( (C!36649 (val!28272 Int)) )
))
(declare-datatypes ((Regex!18187 0))(
  ( (ElementMatch!18187 (c!1332226 C!36648)) (Concat!27032 (regOne!36886 Regex!18187) (regTwo!36886 Regex!18187)) (EmptyExpr!18187) (Star!18187 (reg!18516 Regex!18187)) (EmptyLang!18187) (Union!18187 (regOne!36887 Regex!18187) (regTwo!36887 Regex!18187)) )
))
(declare-fun r!11483 () Regex!18187)

(declare-fun regexDepth!400 (Regex!18187) Int)

(assert (=> b!7143745 (= e!4293092 (< (regexDepth!400 r!11483) 0))))

(declare-fun b!7143746 () Bool)

(declare-fun tp!1970484 () Bool)

(declare-fun tp!1970487 () Bool)

(assert (=> b!7143746 (= e!4293094 (and tp!1970484 tp!1970487))))

(declare-fun res!2914725 () Bool)

(assert (=> start!696508 (=> (not res!2914725) (not e!4293092))))

(declare-fun validRegex!9354 (Regex!18187) Bool)

(assert (=> start!696508 (= res!2914725 (validRegex!9354 r!11483))))

(assert (=> start!696508 e!4293092))

(assert (=> start!696508 e!4293094))

(declare-fun condSetEmpty!52651 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!69452 0))(
  ( (Nil!69328) (Cons!69328 (h!75776 Regex!18187) (t!383469 List!69452)) )
))
(declare-datatypes ((Context!14362 0))(
  ( (Context!14363 (exprs!7681 List!69452)) )
))
(declare-fun z!3189 () (InoxSet Context!14362))

(assert (=> start!696508 (= condSetEmpty!52651 (= z!3189 ((as const (Array Context!14362 Bool)) false)))))

(declare-fun setRes!52651 () Bool)

(assert (=> start!696508 setRes!52651))

(declare-fun setElem!52651 () Context!14362)

(declare-fun setNonEmpty!52651 () Bool)

(declare-fun e!4293093 () Bool)

(declare-fun tp!1970486 () Bool)

(declare-fun inv!88531 (Context!14362) Bool)

(assert (=> setNonEmpty!52651 (= setRes!52651 (and tp!1970486 (inv!88531 setElem!52651) e!4293093))))

(declare-fun setRest!52651 () (InoxSet Context!14362))

(assert (=> setNonEmpty!52651 (= z!3189 ((_ map or) (store ((as const (Array Context!14362 Bool)) false) setElem!52651 true) setRest!52651))))

(declare-fun b!7143747 () Bool)

(declare-fun tp!1970483 () Bool)

(declare-fun tp!1970485 () Bool)

(assert (=> b!7143747 (= e!4293094 (and tp!1970483 tp!1970485))))

(declare-fun setIsEmpty!52651 () Bool)

(assert (=> setIsEmpty!52651 setRes!52651))

(declare-fun b!7143748 () Bool)

(declare-fun tp!1970489 () Bool)

(assert (=> b!7143748 (= e!4293093 tp!1970489)))

(declare-fun b!7143749 () Bool)

(declare-fun res!2914724 () Bool)

(assert (=> b!7143749 (=> (not res!2914724) (not e!4293092))))

(declare-datatypes ((List!69453 0))(
  ( (Nil!69329) (Cons!69329 (h!75777 Context!14362) (t!383470 List!69453)) )
))
(declare-fun unfocusZipper!2535 (List!69453) Regex!18187)

(declare-fun toList!11218 ((InoxSet Context!14362)) List!69453)

(assert (=> b!7143749 (= res!2914724 (= r!11483 (unfocusZipper!2535 (toList!11218 z!3189))))))

(assert (= (and start!696508 res!2914725) b!7143749))

(assert (= (and b!7143749 res!2914724) b!7143745))

(get-info :version)

(assert (= (and start!696508 ((_ is ElementMatch!18187) r!11483)) b!7143744))

(assert (= (and start!696508 ((_ is Concat!27032) r!11483)) b!7143746))

(assert (= (and start!696508 ((_ is Star!18187) r!11483)) b!7143743))

(assert (= (and start!696508 ((_ is Union!18187) r!11483)) b!7143747))

(assert (= (and start!696508 condSetEmpty!52651) setIsEmpty!52651))

(assert (= (and start!696508 (not condSetEmpty!52651)) setNonEmpty!52651))

(assert (= setNonEmpty!52651 b!7143748))

(declare-fun m!7857796 () Bool)

(assert (=> b!7143745 m!7857796))

(declare-fun m!7857798 () Bool)

(assert (=> start!696508 m!7857798))

(declare-fun m!7857800 () Bool)

(assert (=> setNonEmpty!52651 m!7857800))

(declare-fun m!7857802 () Bool)

(assert (=> b!7143749 m!7857802))

(assert (=> b!7143749 m!7857802))

(declare-fun m!7857804 () Bool)

(assert (=> b!7143749 m!7857804))

(check-sat tp_is_empty!46011 (not b!7143749) (not b!7143748) (not b!7143747) (not b!7143745) (not setNonEmpty!52651) (not b!7143743) (not b!7143746) (not start!696508))
(check-sat)
(get-model)

(declare-fun d!2227828 () Bool)

(declare-fun lambda!435329 () Int)

(declare-fun forall!17024 (List!69452 Int) Bool)

(assert (=> d!2227828 (= (inv!88531 setElem!52651) (forall!17024 (exprs!7681 setElem!52651) lambda!435329))))

(declare-fun bs!1888887 () Bool)

(assert (= bs!1888887 d!2227828))

(declare-fun m!7857806 () Bool)

(assert (=> bs!1888887 m!7857806))

(assert (=> setNonEmpty!52651 d!2227828))

(declare-fun d!2227832 () Bool)

(declare-fun lt!2568241 () Regex!18187)

(assert (=> d!2227832 (validRegex!9354 lt!2568241)))

(declare-fun generalisedUnion!2691 (List!69452) Regex!18187)

(declare-fun unfocusZipperList!2227 (List!69453) List!69452)

(assert (=> d!2227832 (= lt!2568241 (generalisedUnion!2691 (unfocusZipperList!2227 (toList!11218 z!3189))))))

(assert (=> d!2227832 (= (unfocusZipper!2535 (toList!11218 z!3189)) lt!2568241)))

(declare-fun bs!1888888 () Bool)

(assert (= bs!1888888 d!2227832))

(declare-fun m!7857808 () Bool)

(assert (=> bs!1888888 m!7857808))

(assert (=> bs!1888888 m!7857802))

(declare-fun m!7857810 () Bool)

(assert (=> bs!1888888 m!7857810))

(assert (=> bs!1888888 m!7857810))

(declare-fun m!7857812 () Bool)

(assert (=> bs!1888888 m!7857812))

(assert (=> b!7143749 d!2227832))

(declare-fun d!2227834 () Bool)

(declare-fun e!4293097 () Bool)

(assert (=> d!2227834 e!4293097))

(declare-fun res!2914728 () Bool)

(assert (=> d!2227834 (=> (not res!2914728) (not e!4293097))))

(declare-fun lt!2568244 () List!69453)

(declare-fun noDuplicate!2840 (List!69453) Bool)

(assert (=> d!2227834 (= res!2914728 (noDuplicate!2840 lt!2568244))))

(declare-fun choose!55281 ((InoxSet Context!14362)) List!69453)

(assert (=> d!2227834 (= lt!2568244 (choose!55281 z!3189))))

(assert (=> d!2227834 (= (toList!11218 z!3189) lt!2568244)))

(declare-fun b!7143752 () Bool)

(declare-fun content!14220 (List!69453) (InoxSet Context!14362))

(assert (=> b!7143752 (= e!4293097 (= (content!14220 lt!2568244) z!3189))))

(assert (= (and d!2227834 res!2914728) b!7143752))

(declare-fun m!7857814 () Bool)

(assert (=> d!2227834 m!7857814))

(declare-fun m!7857816 () Bool)

(assert (=> d!2227834 m!7857816))

(declare-fun m!7857818 () Bool)

(assert (=> b!7143752 m!7857818))

(assert (=> b!7143749 d!2227834))

(declare-fun d!2227836 () Bool)

(declare-fun e!4293123 () Bool)

(assert (=> d!2227836 e!4293123))

(declare-fun res!2914736 () Bool)

(assert (=> d!2227836 (=> (not res!2914736) (not e!4293123))))

(declare-fun lt!2568247 () Int)

(assert (=> d!2227836 (= res!2914736 (> lt!2568247 0))))

(declare-fun e!4293125 () Int)

(assert (=> d!2227836 (= lt!2568247 e!4293125)))

(declare-fun c!1332246 () Bool)

(assert (=> d!2227836 (= c!1332246 ((_ is ElementMatch!18187) r!11483))))

(assert (=> d!2227836 (= (regexDepth!400 r!11483) lt!2568247)))

(declare-fun c!1332245 () Bool)

(declare-fun call!651318 () Int)

(declare-fun bm!651308 () Bool)

(declare-fun c!1332241 () Bool)

(assert (=> bm!651308 (= call!651318 (regexDepth!400 (ite c!1332245 (reg!18516 r!11483) (ite c!1332241 (regTwo!36887 r!11483) (regTwo!36886 r!11483)))))))

(declare-fun b!7143787 () Bool)

(declare-fun e!4293118 () Bool)

(declare-fun e!4293127 () Bool)

(assert (=> b!7143787 (= e!4293118 e!4293127)))

(declare-fun c!1332244 () Bool)

(assert (=> b!7143787 (= c!1332244 ((_ is Concat!27032) r!11483))))

(declare-fun b!7143788 () Bool)

(declare-fun e!4293124 () Bool)

(declare-fun call!651319 () Int)

(assert (=> b!7143788 (= e!4293124 (> lt!2568247 call!651319))))

(declare-fun b!7143789 () Bool)

(declare-fun e!4293126 () Bool)

(declare-fun call!651315 () Int)

(assert (=> b!7143789 (= e!4293126 (> lt!2568247 call!651315))))

(declare-fun b!7143790 () Bool)

(assert (=> b!7143790 (= e!4293123 e!4293118)))

(declare-fun c!1332242 () Bool)

(assert (=> b!7143790 (= c!1332242 ((_ is Union!18187) r!11483))))

(declare-fun bm!651309 () Bool)

(declare-fun call!651317 () Int)

(assert (=> bm!651309 (= call!651317 (regexDepth!400 (ite c!1332241 (regOne!36887 r!11483) (regOne!36886 r!11483))))))

(declare-fun b!7143791 () Bool)

(declare-fun e!4293120 () Int)

(declare-fun call!651316 () Int)

(assert (=> b!7143791 (= e!4293120 (+ 1 call!651316))))

(declare-fun b!7143792 () Bool)

(declare-fun e!4293122 () Int)

(assert (=> b!7143792 (= e!4293122 (+ 1 call!651316))))

(declare-fun b!7143793 () Bool)

(assert (=> b!7143793 (= e!4293124 (= lt!2568247 1))))

(declare-fun b!7143794 () Bool)

(declare-fun res!2914735 () Bool)

(declare-fun e!4293119 () Bool)

(assert (=> b!7143794 (=> (not res!2914735) (not e!4293119))))

(assert (=> b!7143794 (= res!2914735 (> lt!2568247 call!651319))))

(assert (=> b!7143794 (= e!4293127 e!4293119)))

(declare-fun b!7143795 () Bool)

(assert (=> b!7143795 (= e!4293125 1)))

(declare-fun bm!651310 () Bool)

(declare-fun call!651313 () Int)

(assert (=> bm!651310 (= call!651313 call!651318)))

(declare-fun bm!651311 () Bool)

(declare-fun call!651314 () Int)

(assert (=> bm!651311 (= call!651319 call!651314)))

(declare-fun b!7143796 () Bool)

(assert (=> b!7143796 (= c!1332241 ((_ is Union!18187) r!11483))))

(declare-fun e!4293121 () Int)

(assert (=> b!7143796 (= e!4293121 e!4293120)))

(declare-fun b!7143797 () Bool)

(declare-fun c!1332243 () Bool)

(assert (=> b!7143797 (= c!1332243 ((_ is Star!18187) r!11483))))

(assert (=> b!7143797 (= e!4293127 e!4293124)))

(declare-fun bm!651312 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!651312 (= call!651316 (maxBigInt!0 call!651317 call!651313))))

(declare-fun b!7143798 () Bool)

(assert (=> b!7143798 (= e!4293118 e!4293126)))

(declare-fun res!2914737 () Bool)

(assert (=> b!7143798 (= res!2914737 (> lt!2568247 call!651314))))

(assert (=> b!7143798 (=> (not res!2914737) (not e!4293126))))

(declare-fun b!7143799 () Bool)

(assert (=> b!7143799 (= e!4293120 e!4293122)))

(declare-fun c!1332247 () Bool)

(assert (=> b!7143799 (= c!1332247 ((_ is Concat!27032) r!11483))))

(declare-fun b!7143800 () Bool)

(assert (=> b!7143800 (= e!4293122 1)))

(declare-fun bm!651313 () Bool)

(assert (=> bm!651313 (= call!651314 (regexDepth!400 (ite c!1332242 (regOne!36887 r!11483) (ite c!1332244 (regOne!36886 r!11483) (reg!18516 r!11483)))))))

(declare-fun b!7143801 () Bool)

(assert (=> b!7143801 (= e!4293125 e!4293121)))

(assert (=> b!7143801 (= c!1332245 ((_ is Star!18187) r!11483))))

(declare-fun bm!651314 () Bool)

(assert (=> bm!651314 (= call!651315 (regexDepth!400 (ite c!1332242 (regTwo!36887 r!11483) (regTwo!36886 r!11483))))))

(declare-fun b!7143802 () Bool)

(assert (=> b!7143802 (= e!4293121 (+ 1 call!651318))))

(declare-fun b!7143803 () Bool)

(assert (=> b!7143803 (= e!4293119 (> lt!2568247 call!651315))))

(assert (= (and d!2227836 c!1332246) b!7143795))

(assert (= (and d!2227836 (not c!1332246)) b!7143801))

(assert (= (and b!7143801 c!1332245) b!7143802))

(assert (= (and b!7143801 (not c!1332245)) b!7143796))

(assert (= (and b!7143796 c!1332241) b!7143791))

(assert (= (and b!7143796 (not c!1332241)) b!7143799))

(assert (= (and b!7143799 c!1332247) b!7143792))

(assert (= (and b!7143799 (not c!1332247)) b!7143800))

(assert (= (or b!7143791 b!7143792) bm!651309))

(assert (= (or b!7143791 b!7143792) bm!651310))

(assert (= (or b!7143791 b!7143792) bm!651312))

(assert (= (or b!7143802 bm!651310) bm!651308))

(assert (= (and d!2227836 res!2914736) b!7143790))

(assert (= (and b!7143790 c!1332242) b!7143798))

(assert (= (and b!7143790 (not c!1332242)) b!7143787))

(assert (= (and b!7143798 res!2914737) b!7143789))

(assert (= (and b!7143787 c!1332244) b!7143794))

(assert (= (and b!7143787 (not c!1332244)) b!7143797))

(assert (= (and b!7143794 res!2914735) b!7143803))

(assert (= (and b!7143797 c!1332243) b!7143788))

(assert (= (and b!7143797 (not c!1332243)) b!7143793))

(assert (= (or b!7143794 b!7143788) bm!651311))

(assert (= (or b!7143798 bm!651311) bm!651313))

(assert (= (or b!7143789 b!7143803) bm!651314))

(declare-fun m!7857822 () Bool)

(assert (=> bm!651313 m!7857822))

(declare-fun m!7857824 () Bool)

(assert (=> bm!651312 m!7857824))

(declare-fun m!7857826 () Bool)

(assert (=> bm!651314 m!7857826))

(declare-fun m!7857828 () Bool)

(assert (=> bm!651308 m!7857828))

(declare-fun m!7857830 () Bool)

(assert (=> bm!651309 m!7857830))

(assert (=> b!7143745 d!2227836))

(declare-fun b!7143856 () Bool)

(declare-fun e!4293162 () Bool)

(declare-fun e!4293163 () Bool)

(assert (=> b!7143856 (= e!4293162 e!4293163)))

(declare-fun c!1332267 () Bool)

(assert (=> b!7143856 (= c!1332267 ((_ is Union!18187) r!11483))))

(declare-fun d!2227840 () Bool)

(declare-fun res!2914756 () Bool)

(declare-fun e!4293167 () Bool)

(assert (=> d!2227840 (=> res!2914756 e!4293167)))

(assert (=> d!2227840 (= res!2914756 ((_ is ElementMatch!18187) r!11483))))

(assert (=> d!2227840 (= (validRegex!9354 r!11483) e!4293167)))

(declare-fun b!7143857 () Bool)

(declare-fun res!2914754 () Bool)

(declare-fun e!4293168 () Bool)

(assert (=> b!7143857 (=> (not res!2914754) (not e!4293168))))

(declare-fun call!651341 () Bool)

(assert (=> b!7143857 (= res!2914754 call!651341)))

(assert (=> b!7143857 (= e!4293163 e!4293168)))

(declare-fun b!7143858 () Bool)

(declare-fun e!4293164 () Bool)

(assert (=> b!7143858 (= e!4293162 e!4293164)))

(declare-fun res!2914755 () Bool)

(declare-fun nullable!7705 (Regex!18187) Bool)

(assert (=> b!7143858 (= res!2914755 (not (nullable!7705 (reg!18516 r!11483))))))

(assert (=> b!7143858 (=> (not res!2914755) (not e!4293164))))

(declare-fun bm!651335 () Bool)

(declare-fun call!651340 () Bool)

(assert (=> bm!651335 (= call!651340 (validRegex!9354 (ite c!1332267 (regTwo!36887 r!11483) (regTwo!36886 r!11483))))))

(declare-fun b!7143859 () Bool)

(assert (=> b!7143859 (= e!4293168 call!651340)))

(declare-fun b!7143860 () Bool)

(declare-fun call!651342 () Bool)

(assert (=> b!7143860 (= e!4293164 call!651342)))

(declare-fun bm!651336 () Bool)

(assert (=> bm!651336 (= call!651341 call!651342)))

(declare-fun bm!651337 () Bool)

(declare-fun c!1332266 () Bool)

(assert (=> bm!651337 (= call!651342 (validRegex!9354 (ite c!1332266 (reg!18516 r!11483) (ite c!1332267 (regOne!36887 r!11483) (regOne!36886 r!11483)))))))

(declare-fun b!7143861 () Bool)

(declare-fun e!4293165 () Bool)

(assert (=> b!7143861 (= e!4293165 call!651340)))

(declare-fun b!7143862 () Bool)

(declare-fun res!2914757 () Bool)

(declare-fun e!4293166 () Bool)

(assert (=> b!7143862 (=> res!2914757 e!4293166)))

(assert (=> b!7143862 (= res!2914757 (not ((_ is Concat!27032) r!11483)))))

(assert (=> b!7143862 (= e!4293163 e!4293166)))

(declare-fun b!7143863 () Bool)

(assert (=> b!7143863 (= e!4293167 e!4293162)))

(assert (=> b!7143863 (= c!1332266 ((_ is Star!18187) r!11483))))

(declare-fun b!7143864 () Bool)

(assert (=> b!7143864 (= e!4293166 e!4293165)))

(declare-fun res!2914758 () Bool)

(assert (=> b!7143864 (=> (not res!2914758) (not e!4293165))))

(assert (=> b!7143864 (= res!2914758 call!651341)))

(assert (= (and d!2227840 (not res!2914756)) b!7143863))

(assert (= (and b!7143863 c!1332266) b!7143858))

(assert (= (and b!7143863 (not c!1332266)) b!7143856))

(assert (= (and b!7143858 res!2914755) b!7143860))

(assert (= (and b!7143856 c!1332267) b!7143857))

(assert (= (and b!7143856 (not c!1332267)) b!7143862))

(assert (= (and b!7143857 res!2914754) b!7143859))

(assert (= (and b!7143862 (not res!2914757)) b!7143864))

(assert (= (and b!7143864 res!2914758) b!7143861))

(assert (= (or b!7143859 b!7143861) bm!651335))

(assert (= (or b!7143857 b!7143864) bm!651336))

(assert (= (or b!7143860 bm!651336) bm!651337))

(declare-fun m!7857832 () Bool)

(assert (=> b!7143858 m!7857832))

(declare-fun m!7857834 () Bool)

(assert (=> bm!651335 m!7857834))

(declare-fun m!7857836 () Bool)

(assert (=> bm!651337 m!7857836))

(assert (=> start!696508 d!2227840))

(declare-fun b!7143877 () Bool)

(declare-fun e!4293171 () Bool)

(declare-fun tp!1970500 () Bool)

(assert (=> b!7143877 (= e!4293171 tp!1970500)))

(declare-fun b!7143878 () Bool)

(declare-fun tp!1970501 () Bool)

(declare-fun tp!1970504 () Bool)

(assert (=> b!7143878 (= e!4293171 (and tp!1970501 tp!1970504))))

(declare-fun b!7143875 () Bool)

(assert (=> b!7143875 (= e!4293171 tp_is_empty!46011)))

(assert (=> b!7143747 (= tp!1970483 e!4293171)))

(declare-fun b!7143876 () Bool)

(declare-fun tp!1970503 () Bool)

(declare-fun tp!1970502 () Bool)

(assert (=> b!7143876 (= e!4293171 (and tp!1970503 tp!1970502))))

(assert (= (and b!7143747 ((_ is ElementMatch!18187) (regOne!36887 r!11483))) b!7143875))

(assert (= (and b!7143747 ((_ is Concat!27032) (regOne!36887 r!11483))) b!7143876))

(assert (= (and b!7143747 ((_ is Star!18187) (regOne!36887 r!11483))) b!7143877))

(assert (= (and b!7143747 ((_ is Union!18187) (regOne!36887 r!11483))) b!7143878))

(declare-fun b!7143881 () Bool)

(declare-fun e!4293172 () Bool)

(declare-fun tp!1970505 () Bool)

(assert (=> b!7143881 (= e!4293172 tp!1970505)))

(declare-fun b!7143882 () Bool)

(declare-fun tp!1970506 () Bool)

(declare-fun tp!1970509 () Bool)

(assert (=> b!7143882 (= e!4293172 (and tp!1970506 tp!1970509))))

(declare-fun b!7143879 () Bool)

(assert (=> b!7143879 (= e!4293172 tp_is_empty!46011)))

(assert (=> b!7143747 (= tp!1970485 e!4293172)))

(declare-fun b!7143880 () Bool)

(declare-fun tp!1970508 () Bool)

(declare-fun tp!1970507 () Bool)

(assert (=> b!7143880 (= e!4293172 (and tp!1970508 tp!1970507))))

(assert (= (and b!7143747 ((_ is ElementMatch!18187) (regTwo!36887 r!11483))) b!7143879))

(assert (= (and b!7143747 ((_ is Concat!27032) (regTwo!36887 r!11483))) b!7143880))

(assert (= (and b!7143747 ((_ is Star!18187) (regTwo!36887 r!11483))) b!7143881))

(assert (= (and b!7143747 ((_ is Union!18187) (regTwo!36887 r!11483))) b!7143882))

(declare-fun condSetEmpty!52654 () Bool)

(assert (=> setNonEmpty!52651 (= condSetEmpty!52654 (= setRest!52651 ((as const (Array Context!14362 Bool)) false)))))

(declare-fun setRes!52654 () Bool)

(assert (=> setNonEmpty!52651 (= tp!1970486 setRes!52654)))

(declare-fun setIsEmpty!52654 () Bool)

(assert (=> setIsEmpty!52654 setRes!52654))

(declare-fun setNonEmpty!52654 () Bool)

(declare-fun tp!1970515 () Bool)

(declare-fun e!4293185 () Bool)

(declare-fun setElem!52654 () Context!14362)

(assert (=> setNonEmpty!52654 (= setRes!52654 (and tp!1970515 (inv!88531 setElem!52654) e!4293185))))

(declare-fun setRest!52654 () (InoxSet Context!14362))

(assert (=> setNonEmpty!52654 (= setRest!52651 ((_ map or) (store ((as const (Array Context!14362 Bool)) false) setElem!52654 true) setRest!52654))))

(declare-fun b!7143904 () Bool)

(declare-fun tp!1970514 () Bool)

(assert (=> b!7143904 (= e!4293185 tp!1970514)))

(assert (= (and setNonEmpty!52651 condSetEmpty!52654) setIsEmpty!52654))

(assert (= (and setNonEmpty!52651 (not condSetEmpty!52654)) setNonEmpty!52654))

(assert (= setNonEmpty!52654 b!7143904))

(declare-fun m!7857838 () Bool)

(assert (=> setNonEmpty!52654 m!7857838))

(declare-fun b!7143907 () Bool)

(declare-fun e!4293186 () Bool)

(declare-fun tp!1970516 () Bool)

(assert (=> b!7143907 (= e!4293186 tp!1970516)))

(declare-fun b!7143908 () Bool)

(declare-fun tp!1970517 () Bool)

(declare-fun tp!1970520 () Bool)

(assert (=> b!7143908 (= e!4293186 (and tp!1970517 tp!1970520))))

(declare-fun b!7143905 () Bool)

(assert (=> b!7143905 (= e!4293186 tp_is_empty!46011)))

(assert (=> b!7143746 (= tp!1970484 e!4293186)))

(declare-fun b!7143906 () Bool)

(declare-fun tp!1970519 () Bool)

(declare-fun tp!1970518 () Bool)

(assert (=> b!7143906 (= e!4293186 (and tp!1970519 tp!1970518))))

(assert (= (and b!7143746 ((_ is ElementMatch!18187) (regOne!36886 r!11483))) b!7143905))

(assert (= (and b!7143746 ((_ is Concat!27032) (regOne!36886 r!11483))) b!7143906))

(assert (= (and b!7143746 ((_ is Star!18187) (regOne!36886 r!11483))) b!7143907))

(assert (= (and b!7143746 ((_ is Union!18187) (regOne!36886 r!11483))) b!7143908))

(declare-fun b!7143911 () Bool)

(declare-fun e!4293187 () Bool)

(declare-fun tp!1970521 () Bool)

(assert (=> b!7143911 (= e!4293187 tp!1970521)))

(declare-fun b!7143912 () Bool)

(declare-fun tp!1970522 () Bool)

(declare-fun tp!1970525 () Bool)

(assert (=> b!7143912 (= e!4293187 (and tp!1970522 tp!1970525))))

(declare-fun b!7143909 () Bool)

(assert (=> b!7143909 (= e!4293187 tp_is_empty!46011)))

(assert (=> b!7143746 (= tp!1970487 e!4293187)))

(declare-fun b!7143910 () Bool)

(declare-fun tp!1970524 () Bool)

(declare-fun tp!1970523 () Bool)

(assert (=> b!7143910 (= e!4293187 (and tp!1970524 tp!1970523))))

(assert (= (and b!7143746 ((_ is ElementMatch!18187) (regTwo!36886 r!11483))) b!7143909))

(assert (= (and b!7143746 ((_ is Concat!27032) (regTwo!36886 r!11483))) b!7143910))

(assert (= (and b!7143746 ((_ is Star!18187) (regTwo!36886 r!11483))) b!7143911))

(assert (= (and b!7143746 ((_ is Union!18187) (regTwo!36886 r!11483))) b!7143912))

(declare-fun b!7143917 () Bool)

(declare-fun e!4293190 () Bool)

(declare-fun tp!1970530 () Bool)

(declare-fun tp!1970531 () Bool)

(assert (=> b!7143917 (= e!4293190 (and tp!1970530 tp!1970531))))

(assert (=> b!7143748 (= tp!1970489 e!4293190)))

(assert (= (and b!7143748 ((_ is Cons!69328) (exprs!7681 setElem!52651))) b!7143917))

(declare-fun b!7143920 () Bool)

(declare-fun e!4293191 () Bool)

(declare-fun tp!1970532 () Bool)

(assert (=> b!7143920 (= e!4293191 tp!1970532)))

(declare-fun b!7143921 () Bool)

(declare-fun tp!1970533 () Bool)

(declare-fun tp!1970536 () Bool)

(assert (=> b!7143921 (= e!4293191 (and tp!1970533 tp!1970536))))

(declare-fun b!7143918 () Bool)

(assert (=> b!7143918 (= e!4293191 tp_is_empty!46011)))

(assert (=> b!7143743 (= tp!1970488 e!4293191)))

(declare-fun b!7143919 () Bool)

(declare-fun tp!1970535 () Bool)

(declare-fun tp!1970534 () Bool)

(assert (=> b!7143919 (= e!4293191 (and tp!1970535 tp!1970534))))

(assert (= (and b!7143743 ((_ is ElementMatch!18187) (reg!18516 r!11483))) b!7143918))

(assert (= (and b!7143743 ((_ is Concat!27032) (reg!18516 r!11483))) b!7143919))

(assert (= (and b!7143743 ((_ is Star!18187) (reg!18516 r!11483))) b!7143920))

(assert (= (and b!7143743 ((_ is Union!18187) (reg!18516 r!11483))) b!7143921))

(check-sat (not b!7143876) (not b!7143920) (not b!7143907) (not b!7143880) (not bm!651314) (not bm!651309) (not b!7143908) (not b!7143912) (not b!7143877) (not b!7143878) (not b!7143906) (not bm!651312) (not b!7143858) (not b!7143921) (not b!7143752) (not b!7143917) (not bm!651335) (not d!2227828) (not bm!651337) tp_is_empty!46011 (not b!7143919) (not d!2227834) (not bm!651313) (not b!7143904) (not b!7143882) (not b!7143911) (not d!2227832) (not bm!651308) (not setNonEmpty!52654) (not b!7143881) (not b!7143910))
(check-sat)
