; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!244644 () Bool)

(assert start!244644)

(declare-fun b!2507608 () Bool)

(declare-fun e!1589678 () Bool)

(declare-datatypes ((C!15036 0))(
  ( (C!15037 (val!9170 Int)) )
))
(declare-datatypes ((Regex!7439 0))(
  ( (ElementMatch!7439 (c!399327 C!15036)) (Concat!12135 (regOne!15390 Regex!7439) (regTwo!15390 Regex!7439)) (EmptyExpr!7439) (Star!7439 (reg!7768 Regex!7439)) (EmptyLang!7439) (Union!7439 (regOne!15391 Regex!7439) (regTwo!15391 Regex!7439)) )
))
(declare-fun r!27340 () Regex!7439)

(declare-fun validRegex!3065 (Regex!7439) Bool)

(assert (=> b!2507608 (= e!1589678 (validRegex!3065 (regTwo!15390 r!27340)))))

(declare-fun b!2507609 () Bool)

(declare-fun e!1589676 () Bool)

(declare-fun lt!897115 () Regex!7439)

(declare-datatypes ((List!29504 0))(
  ( (Nil!29404) (Cons!29404 (h!34824 C!15036) (t!211203 List!29504)) )
))
(declare-fun tl!4068 () List!29504)

(declare-fun matchR!3442 (Regex!7439 List!29504) Bool)

(assert (=> b!2507609 (= e!1589676 (matchR!3442 lt!897115 tl!4068))))

(declare-fun res!1060234 () Bool)

(declare-fun e!1589677 () Bool)

(assert (=> start!244644 (=> (not res!1060234) (not e!1589677))))

(assert (=> start!244644 (= res!1060234 (validRegex!3065 r!27340))))

(assert (=> start!244644 e!1589677))

(declare-fun e!1589680 () Bool)

(assert (=> start!244644 e!1589680))

(declare-fun tp_is_empty!12733 () Bool)

(assert (=> start!244644 tp_is_empty!12733))

(declare-fun e!1589679 () Bool)

(assert (=> start!244644 e!1589679))

(declare-fun b!2507610 () Bool)

(declare-fun tp!802099 () Bool)

(assert (=> b!2507610 (= e!1589680 tp!802099)))

(declare-fun b!2507611 () Bool)

(assert (=> b!2507611 (= e!1589677 (not e!1589678))))

(declare-fun res!1060232 () Bool)

(assert (=> b!2507611 (=> res!1060232 e!1589678)))

(declare-fun lt!897117 () Bool)

(assert (=> b!2507611 (= res!1060232 lt!897117)))

(assert (=> b!2507611 e!1589676))

(declare-fun res!1060229 () Bool)

(assert (=> b!2507611 (=> res!1060229 e!1589676)))

(assert (=> b!2507611 (= res!1060229 lt!897117)))

(declare-fun lt!897116 () Regex!7439)

(assert (=> b!2507611 (= lt!897117 (matchR!3442 lt!897116 tl!4068))))

(declare-datatypes ((Unit!43135 0))(
  ( (Unit!43136) )
))
(declare-fun lt!897114 () Unit!43135)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!134 (Regex!7439 Regex!7439 List!29504) Unit!43135)

(assert (=> b!2507611 (= lt!897114 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!134 lt!897116 lt!897115 tl!4068))))

(declare-fun lt!897118 () Regex!7439)

(declare-fun derivative!134 (Regex!7439 List!29504) Regex!7439)

(assert (=> b!2507611 (= (matchR!3442 lt!897118 tl!4068) (matchR!3442 (derivative!134 lt!897118 tl!4068) Nil!29404))))

(declare-fun lt!897113 () Unit!43135)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!88 (Regex!7439 List!29504) Unit!43135)

(assert (=> b!2507611 (= lt!897113 (lemmaMatchRIsSameAsWholeDerivativeAndNil!88 lt!897118 tl!4068))))

(assert (=> b!2507611 (= lt!897118 (Union!7439 lt!897116 lt!897115))))

(declare-fun c!14016 () C!15036)

(declare-fun derivativeStep!2008 (Regex!7439 C!15036) Regex!7439)

(assert (=> b!2507611 (= lt!897115 (derivativeStep!2008 (regTwo!15390 r!27340) c!14016))))

(assert (=> b!2507611 (= lt!897116 (Concat!12135 (derivativeStep!2008 (regOne!15390 r!27340) c!14016) (regTwo!15390 r!27340)))))

(declare-fun b!2507612 () Bool)

(declare-fun res!1060233 () Bool)

(assert (=> b!2507612 (=> (not res!1060233) (not e!1589677))))

(declare-fun nullable!2356 (Regex!7439) Bool)

(assert (=> b!2507612 (= res!1060233 (nullable!2356 (regOne!15390 r!27340)))))

(declare-fun b!2507613 () Bool)

(declare-fun tp!802102 () Bool)

(assert (=> b!2507613 (= e!1589679 (and tp_is_empty!12733 tp!802102))))

(declare-fun b!2507614 () Bool)

(declare-fun res!1060230 () Bool)

(assert (=> b!2507614 (=> (not res!1060230) (not e!1589677))))

(assert (=> b!2507614 (= res!1060230 (nullable!2356 (derivative!134 (derivativeStep!2008 r!27340 c!14016) tl!4068)))))

(declare-fun b!2507615 () Bool)

(declare-fun tp!802101 () Bool)

(declare-fun tp!802098 () Bool)

(assert (=> b!2507615 (= e!1589680 (and tp!802101 tp!802098))))

(declare-fun b!2507616 () Bool)

(declare-fun res!1060231 () Bool)

(assert (=> b!2507616 (=> (not res!1060231) (not e!1589677))))

(get-info :version)

(assert (=> b!2507616 (= res!1060231 (and (not ((_ is EmptyExpr!7439) r!27340)) (not ((_ is EmptyLang!7439) r!27340)) (not ((_ is ElementMatch!7439) r!27340)) (not ((_ is Union!7439) r!27340)) (not ((_ is Star!7439) r!27340))))))

(declare-fun b!2507617 () Bool)

(declare-fun tp!802100 () Bool)

(declare-fun tp!802097 () Bool)

(assert (=> b!2507617 (= e!1589680 (and tp!802100 tp!802097))))

(declare-fun b!2507618 () Bool)

(assert (=> b!2507618 (= e!1589680 tp_is_empty!12733)))

(assert (= (and start!244644 res!1060234) b!2507614))

(assert (= (and b!2507614 res!1060230) b!2507616))

(assert (= (and b!2507616 res!1060231) b!2507612))

(assert (= (and b!2507612 res!1060233) b!2507611))

(assert (= (and b!2507611 (not res!1060229)) b!2507609))

(assert (= (and b!2507611 (not res!1060232)) b!2507608))

(assert (= (and start!244644 ((_ is ElementMatch!7439) r!27340)) b!2507618))

(assert (= (and start!244644 ((_ is Concat!12135) r!27340)) b!2507617))

(assert (= (and start!244644 ((_ is Star!7439) r!27340)) b!2507610))

(assert (= (and start!244644 ((_ is Union!7439) r!27340)) b!2507615))

(assert (= (and start!244644 ((_ is Cons!29404) tl!4068)) b!2507613))

(declare-fun m!2867763 () Bool)

(assert (=> start!244644 m!2867763))

(declare-fun m!2867765 () Bool)

(assert (=> b!2507614 m!2867765))

(assert (=> b!2507614 m!2867765))

(declare-fun m!2867767 () Bool)

(assert (=> b!2507614 m!2867767))

(assert (=> b!2507614 m!2867767))

(declare-fun m!2867769 () Bool)

(assert (=> b!2507614 m!2867769))

(declare-fun m!2867771 () Bool)

(assert (=> b!2507612 m!2867771))

(declare-fun m!2867773 () Bool)

(assert (=> b!2507611 m!2867773))

(declare-fun m!2867775 () Bool)

(assert (=> b!2507611 m!2867775))

(declare-fun m!2867777 () Bool)

(assert (=> b!2507611 m!2867777))

(declare-fun m!2867779 () Bool)

(assert (=> b!2507611 m!2867779))

(declare-fun m!2867781 () Bool)

(assert (=> b!2507611 m!2867781))

(declare-fun m!2867783 () Bool)

(assert (=> b!2507611 m!2867783))

(assert (=> b!2507611 m!2867775))

(declare-fun m!2867785 () Bool)

(assert (=> b!2507611 m!2867785))

(declare-fun m!2867787 () Bool)

(assert (=> b!2507611 m!2867787))

(declare-fun m!2867789 () Bool)

(assert (=> b!2507608 m!2867789))

(declare-fun m!2867791 () Bool)

(assert (=> b!2507609 m!2867791))

(check-sat (not b!2507610) (not b!2507609) (not b!2507615) (not b!2507617) tp_is_empty!12733 (not b!2507608) (not b!2507614) (not start!244644) (not b!2507613) (not b!2507611) (not b!2507612))
(check-sat)
(get-model)

(declare-fun b!2507707 () Bool)

(declare-fun res!1060291 () Bool)

(declare-fun e!1589735 () Bool)

(assert (=> b!2507707 (=> (not res!1060291) (not e!1589735))))

(declare-fun isEmpty!16874 (List!29504) Bool)

(declare-fun tail!3997 (List!29504) List!29504)

(assert (=> b!2507707 (= res!1060291 (isEmpty!16874 (tail!3997 tl!4068)))))

(declare-fun b!2507708 () Bool)

(declare-fun res!1060292 () Bool)

(declare-fun e!1589734 () Bool)

(assert (=> b!2507708 (=> res!1060292 e!1589734)))

(assert (=> b!2507708 (= res!1060292 (not (isEmpty!16874 (tail!3997 tl!4068))))))

(declare-fun b!2507709 () Bool)

(declare-fun e!1589730 () Bool)

(declare-fun lt!897124 () Bool)

(declare-fun call!155319 () Bool)

(assert (=> b!2507709 (= e!1589730 (= lt!897124 call!155319))))

(declare-fun b!2507710 () Bool)

(declare-fun head!5720 (List!29504) C!15036)

(assert (=> b!2507710 (= e!1589734 (not (= (head!5720 tl!4068) (c!399327 lt!897115))))))

(declare-fun b!2507711 () Bool)

(declare-fun e!1589736 () Bool)

(assert (=> b!2507711 (= e!1589736 (not lt!897124))))

(declare-fun b!2507712 () Bool)

(declare-fun e!1589731 () Bool)

(declare-fun e!1589732 () Bool)

(assert (=> b!2507712 (= e!1589731 e!1589732)))

(declare-fun res!1060285 () Bool)

(assert (=> b!2507712 (=> (not res!1060285) (not e!1589732))))

(assert (=> b!2507712 (= res!1060285 (not lt!897124))))

(declare-fun b!2507713 () Bool)

(assert (=> b!2507713 (= e!1589730 e!1589736)))

(declare-fun c!399349 () Bool)

(assert (=> b!2507713 (= c!399349 ((_ is EmptyLang!7439) lt!897115))))

(declare-fun b!2507714 () Bool)

(declare-fun res!1060287 () Bool)

(assert (=> b!2507714 (=> res!1060287 e!1589731)))

(assert (=> b!2507714 (= res!1060287 (not ((_ is ElementMatch!7439) lt!897115)))))

(assert (=> b!2507714 (= e!1589736 e!1589731)))

(declare-fun b!2507715 () Bool)

(declare-fun res!1060289 () Bool)

(assert (=> b!2507715 (=> (not res!1060289) (not e!1589735))))

(assert (=> b!2507715 (= res!1060289 (not call!155319))))

(declare-fun b!2507716 () Bool)

(declare-fun res!1060288 () Bool)

(assert (=> b!2507716 (=> res!1060288 e!1589731)))

(assert (=> b!2507716 (= res!1060288 e!1589735)))

(declare-fun res!1060290 () Bool)

(assert (=> b!2507716 (=> (not res!1060290) (not e!1589735))))

(assert (=> b!2507716 (= res!1060290 lt!897124)))

(declare-fun d!716271 () Bool)

(assert (=> d!716271 e!1589730))

(declare-fun c!399347 () Bool)

(assert (=> d!716271 (= c!399347 ((_ is EmptyExpr!7439) lt!897115))))

(declare-fun e!1589733 () Bool)

(assert (=> d!716271 (= lt!897124 e!1589733)))

(declare-fun c!399348 () Bool)

(assert (=> d!716271 (= c!399348 (isEmpty!16874 tl!4068))))

(assert (=> d!716271 (validRegex!3065 lt!897115)))

(assert (=> d!716271 (= (matchR!3442 lt!897115 tl!4068) lt!897124)))

(declare-fun b!2507717 () Bool)

(assert (=> b!2507717 (= e!1589735 (= (head!5720 tl!4068) (c!399327 lt!897115)))))

(declare-fun bm!155312 () Bool)

(assert (=> bm!155312 (= call!155319 (isEmpty!16874 tl!4068))))

(declare-fun b!2507718 () Bool)

(assert (=> b!2507718 (= e!1589733 (nullable!2356 lt!897115))))

(declare-fun b!2507719 () Bool)

(assert (=> b!2507719 (= e!1589733 (matchR!3442 (derivativeStep!2008 lt!897115 (head!5720 tl!4068)) (tail!3997 tl!4068)))))

(declare-fun b!2507720 () Bool)

(assert (=> b!2507720 (= e!1589732 e!1589734)))

(declare-fun res!1060286 () Bool)

(assert (=> b!2507720 (=> res!1060286 e!1589734)))

(assert (=> b!2507720 (= res!1060286 call!155319)))

(assert (= (and d!716271 c!399348) b!2507718))

(assert (= (and d!716271 (not c!399348)) b!2507719))

(assert (= (and d!716271 c!399347) b!2507709))

(assert (= (and d!716271 (not c!399347)) b!2507713))

(assert (= (and b!2507713 c!399349) b!2507711))

(assert (= (and b!2507713 (not c!399349)) b!2507714))

(assert (= (and b!2507714 (not res!1060287)) b!2507716))

(assert (= (and b!2507716 res!1060290) b!2507715))

(assert (= (and b!2507715 res!1060289) b!2507707))

(assert (= (and b!2507707 res!1060291) b!2507717))

(assert (= (and b!2507716 (not res!1060288)) b!2507712))

(assert (= (and b!2507712 res!1060285) b!2507720))

(assert (= (and b!2507720 (not res!1060286)) b!2507708))

(assert (= (and b!2507708 (not res!1060292)) b!2507710))

(assert (= (or b!2507709 b!2507720 b!2507715) bm!155312))

(declare-fun m!2867809 () Bool)

(assert (=> b!2507717 m!2867809))

(assert (=> b!2507710 m!2867809))

(declare-fun m!2867811 () Bool)

(assert (=> bm!155312 m!2867811))

(declare-fun m!2867813 () Bool)

(assert (=> b!2507707 m!2867813))

(assert (=> b!2507707 m!2867813))

(declare-fun m!2867815 () Bool)

(assert (=> b!2507707 m!2867815))

(assert (=> b!2507719 m!2867809))

(assert (=> b!2507719 m!2867809))

(declare-fun m!2867817 () Bool)

(assert (=> b!2507719 m!2867817))

(assert (=> b!2507719 m!2867813))

(assert (=> b!2507719 m!2867817))

(assert (=> b!2507719 m!2867813))

(declare-fun m!2867819 () Bool)

(assert (=> b!2507719 m!2867819))

(assert (=> d!716271 m!2867811))

(declare-fun m!2867821 () Bool)

(assert (=> d!716271 m!2867821))

(assert (=> b!2507708 m!2867813))

(assert (=> b!2507708 m!2867813))

(assert (=> b!2507708 m!2867815))

(declare-fun m!2867823 () Bool)

(assert (=> b!2507718 m!2867823))

(assert (=> b!2507609 d!716271))

(declare-fun d!716275 () Bool)

(declare-fun nullableFct!616 (Regex!7439) Bool)

(assert (=> d!716275 (= (nullable!2356 (derivative!134 (derivativeStep!2008 r!27340 c!14016) tl!4068)) (nullableFct!616 (derivative!134 (derivativeStep!2008 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468700 () Bool)

(assert (= bs!468700 d!716275))

(assert (=> bs!468700 m!2867767))

(declare-fun m!2867825 () Bool)

(assert (=> bs!468700 m!2867825))

(assert (=> b!2507614 d!716275))

(declare-fun d!716277 () Bool)

(declare-fun lt!897127 () Regex!7439)

(assert (=> d!716277 (validRegex!3065 lt!897127)))

(declare-fun e!1589746 () Regex!7439)

(assert (=> d!716277 (= lt!897127 e!1589746)))

(declare-fun c!399354 () Bool)

(assert (=> d!716277 (= c!399354 ((_ is Cons!29404) tl!4068))))

(assert (=> d!716277 (validRegex!3065 (derivativeStep!2008 r!27340 c!14016))))

(assert (=> d!716277 (= (derivative!134 (derivativeStep!2008 r!27340 c!14016) tl!4068) lt!897127)))

(declare-fun b!2507734 () Bool)

(assert (=> b!2507734 (= e!1589746 (derivative!134 (derivativeStep!2008 (derivativeStep!2008 r!27340 c!14016) (h!34824 tl!4068)) (t!211203 tl!4068)))))

(declare-fun b!2507735 () Bool)

(assert (=> b!2507735 (= e!1589746 (derivativeStep!2008 r!27340 c!14016))))

(assert (= (and d!716277 c!399354) b!2507734))

(assert (= (and d!716277 (not c!399354)) b!2507735))

(declare-fun m!2867837 () Bool)

(assert (=> d!716277 m!2867837))

(assert (=> d!716277 m!2867765))

(declare-fun m!2867839 () Bool)

(assert (=> d!716277 m!2867839))

(assert (=> b!2507734 m!2867765))

(declare-fun m!2867841 () Bool)

(assert (=> b!2507734 m!2867841))

(assert (=> b!2507734 m!2867841))

(declare-fun m!2867843 () Bool)

(assert (=> b!2507734 m!2867843))

(assert (=> b!2507614 d!716277))

(declare-fun b!2507792 () Bool)

(declare-fun e!1589777 () Regex!7439)

(assert (=> b!2507792 (= e!1589777 EmptyLang!7439)))

(declare-fun c!399383 () Bool)

(declare-fun bm!155342 () Bool)

(declare-fun c!399385 () Bool)

(declare-fun call!155350 () Regex!7439)

(assert (=> bm!155342 (= call!155350 (derivativeStep!2008 (ite c!399385 (regTwo!15391 r!27340) (ite c!399383 (reg!7768 r!27340) (regOne!15390 r!27340))) c!14016))))

(declare-fun bm!155343 () Bool)

(declare-fun call!155349 () Regex!7439)

(assert (=> bm!155343 (= call!155349 call!155350)))

(declare-fun b!2507793 () Bool)

(declare-fun e!1589779 () Regex!7439)

(assert (=> b!2507793 (= e!1589779 (ite (= c!14016 (c!399327 r!27340)) EmptyExpr!7439 EmptyLang!7439))))

(declare-fun b!2507794 () Bool)

(declare-fun e!1589778 () Regex!7439)

(declare-fun call!155347 () Regex!7439)

(assert (=> b!2507794 (= e!1589778 (Union!7439 call!155347 call!155350))))

(declare-fun b!2507795 () Bool)

(declare-fun e!1589775 () Regex!7439)

(assert (=> b!2507795 (= e!1589775 (Concat!12135 call!155349 r!27340))))

(declare-fun b!2507796 () Bool)

(declare-fun c!399386 () Bool)

(assert (=> b!2507796 (= c!399386 (nullable!2356 (regOne!15390 r!27340)))))

(declare-fun e!1589776 () Regex!7439)

(assert (=> b!2507796 (= e!1589775 e!1589776)))

(declare-fun b!2507798 () Bool)

(declare-fun call!155348 () Regex!7439)

(assert (=> b!2507798 (= e!1589776 (Union!7439 (Concat!12135 call!155348 (regTwo!15390 r!27340)) call!155347))))

(declare-fun bm!155344 () Bool)

(assert (=> bm!155344 (= call!155347 (derivativeStep!2008 (ite c!399385 (regOne!15391 r!27340) (regTwo!15390 r!27340)) c!14016))))

(declare-fun b!2507799 () Bool)

(assert (=> b!2507799 (= e!1589778 e!1589775)))

(assert (=> b!2507799 (= c!399383 ((_ is Star!7439) r!27340))))

(declare-fun bm!155345 () Bool)

(assert (=> bm!155345 (= call!155348 call!155349)))

(declare-fun b!2507800 () Bool)

(assert (=> b!2507800 (= c!399385 ((_ is Union!7439) r!27340))))

(assert (=> b!2507800 (= e!1589779 e!1589778)))

(declare-fun b!2507801 () Bool)

(assert (=> b!2507801 (= e!1589777 e!1589779)))

(declare-fun c!399384 () Bool)

(assert (=> b!2507801 (= c!399384 ((_ is ElementMatch!7439) r!27340))))

(declare-fun b!2507797 () Bool)

(assert (=> b!2507797 (= e!1589776 (Union!7439 (Concat!12135 call!155348 (regTwo!15390 r!27340)) EmptyLang!7439))))

(declare-fun d!716285 () Bool)

(declare-fun lt!897136 () Regex!7439)

(assert (=> d!716285 (validRegex!3065 lt!897136)))

(assert (=> d!716285 (= lt!897136 e!1589777)))

(declare-fun c!399387 () Bool)

(assert (=> d!716285 (= c!399387 (or ((_ is EmptyExpr!7439) r!27340) ((_ is EmptyLang!7439) r!27340)))))

(assert (=> d!716285 (validRegex!3065 r!27340)))

(assert (=> d!716285 (= (derivativeStep!2008 r!27340 c!14016) lt!897136)))

(assert (= (and d!716285 c!399387) b!2507792))

(assert (= (and d!716285 (not c!399387)) b!2507801))

(assert (= (and b!2507801 c!399384) b!2507793))

(assert (= (and b!2507801 (not c!399384)) b!2507800))

(assert (= (and b!2507800 c!399385) b!2507794))

(assert (= (and b!2507800 (not c!399385)) b!2507799))

(assert (= (and b!2507799 c!399383) b!2507795))

(assert (= (and b!2507799 (not c!399383)) b!2507796))

(assert (= (and b!2507796 c!399386) b!2507798))

(assert (= (and b!2507796 (not c!399386)) b!2507797))

(assert (= (or b!2507798 b!2507797) bm!155345))

(assert (= (or b!2507795 bm!155345) bm!155343))

(assert (= (or b!2507794 bm!155343) bm!155342))

(assert (= (or b!2507794 b!2507798) bm!155344))

(declare-fun m!2867859 () Bool)

(assert (=> bm!155342 m!2867859))

(assert (=> b!2507796 m!2867771))

(declare-fun m!2867861 () Bool)

(assert (=> bm!155344 m!2867861))

(declare-fun m!2867863 () Bool)

(assert (=> d!716285 m!2867863))

(assert (=> d!716285 m!2867763))

(assert (=> b!2507614 d!716285))

(declare-fun b!2507854 () Bool)

(declare-fun e!1589814 () Bool)

(declare-fun e!1589815 () Bool)

(assert (=> b!2507854 (= e!1589814 e!1589815)))

(declare-fun res!1060336 () Bool)

(assert (=> b!2507854 (=> (not res!1060336) (not e!1589815))))

(declare-fun call!155360 () Bool)

(assert (=> b!2507854 (= res!1060336 call!155360)))

(declare-fun b!2507855 () Bool)

(declare-fun res!1060335 () Bool)

(assert (=> b!2507855 (=> res!1060335 e!1589814)))

(assert (=> b!2507855 (= res!1060335 (not ((_ is Concat!12135) (regTwo!15390 r!27340))))))

(declare-fun e!1589818 () Bool)

(assert (=> b!2507855 (= e!1589818 e!1589814)))

(declare-fun b!2507856 () Bool)

(declare-fun call!155361 () Bool)

(assert (=> b!2507856 (= e!1589815 call!155361)))

(declare-fun bm!155354 () Bool)

(declare-fun c!399398 () Bool)

(assert (=> bm!155354 (= call!155360 (validRegex!3065 (ite c!399398 (regTwo!15391 (regTwo!15390 r!27340)) (regOne!15390 (regTwo!15390 r!27340)))))))

(declare-fun b!2507857 () Bool)

(declare-fun e!1589816 () Bool)

(declare-fun e!1589822 () Bool)

(assert (=> b!2507857 (= e!1589816 e!1589822)))

(declare-fun c!399399 () Bool)

(assert (=> b!2507857 (= c!399399 ((_ is Star!7439) (regTwo!15390 r!27340)))))

(declare-fun b!2507858 () Bool)

(declare-fun e!1589819 () Bool)

(assert (=> b!2507858 (= e!1589819 call!155360)))

(declare-fun b!2507859 () Bool)

(assert (=> b!2507859 (= e!1589822 e!1589818)))

(assert (=> b!2507859 (= c!399398 ((_ is Union!7439) (regTwo!15390 r!27340)))))

(declare-fun b!2507860 () Bool)

(declare-fun res!1060330 () Bool)

(assert (=> b!2507860 (=> (not res!1060330) (not e!1589819))))

(assert (=> b!2507860 (= res!1060330 call!155361)))

(assert (=> b!2507860 (= e!1589818 e!1589819)))

(declare-fun bm!155355 () Bool)

(declare-fun call!155359 () Bool)

(assert (=> bm!155355 (= call!155361 call!155359)))

(declare-fun bm!155356 () Bool)

(assert (=> bm!155356 (= call!155359 (validRegex!3065 (ite c!399399 (reg!7768 (regTwo!15390 r!27340)) (ite c!399398 (regOne!15391 (regTwo!15390 r!27340)) (regTwo!15390 (regTwo!15390 r!27340))))))))

(declare-fun b!2507862 () Bool)

(declare-fun e!1589820 () Bool)

(assert (=> b!2507862 (= e!1589820 call!155359)))

(declare-fun d!716291 () Bool)

(declare-fun res!1060331 () Bool)

(assert (=> d!716291 (=> res!1060331 e!1589816)))

(assert (=> d!716291 (= res!1060331 ((_ is ElementMatch!7439) (regTwo!15390 r!27340)))))

(assert (=> d!716291 (= (validRegex!3065 (regTwo!15390 r!27340)) e!1589816)))

(declare-fun b!2507861 () Bool)

(assert (=> b!2507861 (= e!1589822 e!1589820)))

(declare-fun res!1060332 () Bool)

(assert (=> b!2507861 (= res!1060332 (not (nullable!2356 (reg!7768 (regTwo!15390 r!27340)))))))

(assert (=> b!2507861 (=> (not res!1060332) (not e!1589820))))

(assert (= (and d!716291 (not res!1060331)) b!2507857))

(assert (= (and b!2507857 c!399399) b!2507861))

(assert (= (and b!2507857 (not c!399399)) b!2507859))

(assert (= (and b!2507861 res!1060332) b!2507862))

(assert (= (and b!2507859 c!399398) b!2507860))

(assert (= (and b!2507859 (not c!399398)) b!2507855))

(assert (= (and b!2507860 res!1060330) b!2507858))

(assert (= (and b!2507855 (not res!1060335)) b!2507854))

(assert (= (and b!2507854 res!1060336) b!2507856))

(assert (= (or b!2507860 b!2507856) bm!155355))

(assert (= (or b!2507858 b!2507854) bm!155354))

(assert (= (or b!2507862 bm!155355) bm!155356))

(declare-fun m!2867895 () Bool)

(assert (=> bm!155354 m!2867895))

(declare-fun m!2867899 () Bool)

(assert (=> bm!155356 m!2867899))

(declare-fun m!2867903 () Bool)

(assert (=> b!2507861 m!2867903))

(assert (=> b!2507608 d!716291))

(declare-fun b!2507877 () Bool)

(declare-fun e!1589828 () Bool)

(declare-fun e!1589829 () Bool)

(assert (=> b!2507877 (= e!1589828 e!1589829)))

(declare-fun res!1060347 () Bool)

(assert (=> b!2507877 (=> (not res!1060347) (not e!1589829))))

(declare-fun call!155364 () Bool)

(assert (=> b!2507877 (= res!1060347 call!155364)))

(declare-fun b!2507878 () Bool)

(declare-fun res!1060346 () Bool)

(assert (=> b!2507878 (=> res!1060346 e!1589828)))

(assert (=> b!2507878 (= res!1060346 (not ((_ is Concat!12135) r!27340)))))

(declare-fun e!1589831 () Bool)

(assert (=> b!2507878 (= e!1589831 e!1589828)))

(declare-fun b!2507879 () Bool)

(declare-fun call!155365 () Bool)

(assert (=> b!2507879 (= e!1589829 call!155365)))

(declare-fun bm!155358 () Bool)

(declare-fun c!399403 () Bool)

(assert (=> bm!155358 (= call!155364 (validRegex!3065 (ite c!399403 (regTwo!15391 r!27340) (regOne!15390 r!27340))))))

(declare-fun b!2507880 () Bool)

(declare-fun e!1589830 () Bool)

(declare-fun e!1589834 () Bool)

(assert (=> b!2507880 (= e!1589830 e!1589834)))

(declare-fun c!399404 () Bool)

(assert (=> b!2507880 (= c!399404 ((_ is Star!7439) r!27340))))

(declare-fun b!2507881 () Bool)

(declare-fun e!1589832 () Bool)

(assert (=> b!2507881 (= e!1589832 call!155364)))

(declare-fun b!2507882 () Bool)

(assert (=> b!2507882 (= e!1589834 e!1589831)))

(assert (=> b!2507882 (= c!399403 ((_ is Union!7439) r!27340))))

(declare-fun b!2507883 () Bool)

(declare-fun res!1060343 () Bool)

(assert (=> b!2507883 (=> (not res!1060343) (not e!1589832))))

(assert (=> b!2507883 (= res!1060343 call!155365)))

(assert (=> b!2507883 (= e!1589831 e!1589832)))

(declare-fun bm!155359 () Bool)

(declare-fun call!155363 () Bool)

(assert (=> bm!155359 (= call!155365 call!155363)))

(declare-fun bm!155360 () Bool)

(assert (=> bm!155360 (= call!155363 (validRegex!3065 (ite c!399404 (reg!7768 r!27340) (ite c!399403 (regOne!15391 r!27340) (regTwo!15390 r!27340)))))))

(declare-fun b!2507885 () Bool)

(declare-fun e!1589833 () Bool)

(assert (=> b!2507885 (= e!1589833 call!155363)))

(declare-fun d!716301 () Bool)

(declare-fun res!1060344 () Bool)

(assert (=> d!716301 (=> res!1060344 e!1589830)))

(assert (=> d!716301 (= res!1060344 ((_ is ElementMatch!7439) r!27340))))

(assert (=> d!716301 (= (validRegex!3065 r!27340) e!1589830)))

(declare-fun b!2507884 () Bool)

(assert (=> b!2507884 (= e!1589834 e!1589833)))

(declare-fun res!1060345 () Bool)

(assert (=> b!2507884 (= res!1060345 (not (nullable!2356 (reg!7768 r!27340))))))

(assert (=> b!2507884 (=> (not res!1060345) (not e!1589833))))

(assert (= (and d!716301 (not res!1060344)) b!2507880))

(assert (= (and b!2507880 c!399404) b!2507884))

(assert (= (and b!2507880 (not c!399404)) b!2507882))

(assert (= (and b!2507884 res!1060345) b!2507885))

(assert (= (and b!2507882 c!399403) b!2507883))

(assert (= (and b!2507882 (not c!399403)) b!2507878))

(assert (= (and b!2507883 res!1060343) b!2507881))

(assert (= (and b!2507878 (not res!1060346)) b!2507877))

(assert (= (and b!2507877 res!1060347) b!2507879))

(assert (= (or b!2507883 b!2507879) bm!155359))

(assert (= (or b!2507881 b!2507877) bm!155358))

(assert (= (or b!2507885 bm!155359) bm!155360))

(declare-fun m!2867913 () Bool)

(assert (=> bm!155358 m!2867913))

(declare-fun m!2867915 () Bool)

(assert (=> bm!155360 m!2867915))

(declare-fun m!2867917 () Bool)

(assert (=> b!2507884 m!2867917))

(assert (=> start!244644 d!716301))

(declare-fun d!716307 () Bool)

(assert (=> d!716307 (= (matchR!3442 lt!897118 tl!4068) (matchR!3442 (derivative!134 lt!897118 tl!4068) Nil!29404))))

(declare-fun lt!897151 () Unit!43135)

(declare-fun choose!14829 (Regex!7439 List!29504) Unit!43135)

(assert (=> d!716307 (= lt!897151 (choose!14829 lt!897118 tl!4068))))

(assert (=> d!716307 (validRegex!3065 lt!897118)))

(assert (=> d!716307 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!88 lt!897118 tl!4068) lt!897151)))

(declare-fun bs!468704 () Bool)

(assert (= bs!468704 d!716307))

(assert (=> bs!468704 m!2867775))

(assert (=> bs!468704 m!2867777))

(declare-fun m!2867943 () Bool)

(assert (=> bs!468704 m!2867943))

(assert (=> bs!468704 m!2867775))

(assert (=> bs!468704 m!2867785))

(declare-fun m!2867945 () Bool)

(assert (=> bs!468704 m!2867945))

(assert (=> b!2507611 d!716307))

(declare-fun b!2507952 () Bool)

(declare-fun res!1060359 () Bool)

(declare-fun e!1589868 () Bool)

(assert (=> b!2507952 (=> (not res!1060359) (not e!1589868))))

(assert (=> b!2507952 (= res!1060359 (isEmpty!16874 (tail!3997 Nil!29404)))))

(declare-fun b!2507953 () Bool)

(declare-fun res!1060360 () Bool)

(declare-fun e!1589867 () Bool)

(assert (=> b!2507953 (=> res!1060360 e!1589867)))

(assert (=> b!2507953 (= res!1060360 (not (isEmpty!16874 (tail!3997 Nil!29404))))))

(declare-fun b!2507954 () Bool)

(declare-fun e!1589863 () Bool)

(declare-fun lt!897152 () Bool)

(declare-fun call!155377 () Bool)

(assert (=> b!2507954 (= e!1589863 (= lt!897152 call!155377))))

(declare-fun b!2507955 () Bool)

(assert (=> b!2507955 (= e!1589867 (not (= (head!5720 Nil!29404) (c!399327 (derivative!134 lt!897118 tl!4068)))))))

(declare-fun b!2507956 () Bool)

(declare-fun e!1589869 () Bool)

(assert (=> b!2507956 (= e!1589869 (not lt!897152))))

(declare-fun b!2507957 () Bool)

(declare-fun e!1589864 () Bool)

(declare-fun e!1589865 () Bool)

(assert (=> b!2507957 (= e!1589864 e!1589865)))

(declare-fun res!1060353 () Bool)

(assert (=> b!2507957 (=> (not res!1060353) (not e!1589865))))

(assert (=> b!2507957 (= res!1060353 (not lt!897152))))

(declare-fun b!2507958 () Bool)

(assert (=> b!2507958 (= e!1589863 e!1589869)))

(declare-fun c!399420 () Bool)

(assert (=> b!2507958 (= c!399420 ((_ is EmptyLang!7439) (derivative!134 lt!897118 tl!4068)))))

(declare-fun b!2507959 () Bool)

(declare-fun res!1060355 () Bool)

(assert (=> b!2507959 (=> res!1060355 e!1589864)))

(assert (=> b!2507959 (= res!1060355 (not ((_ is ElementMatch!7439) (derivative!134 lt!897118 tl!4068))))))

(assert (=> b!2507959 (= e!1589869 e!1589864)))

(declare-fun b!2507960 () Bool)

(declare-fun res!1060357 () Bool)

(assert (=> b!2507960 (=> (not res!1060357) (not e!1589868))))

(assert (=> b!2507960 (= res!1060357 (not call!155377))))

(declare-fun b!2507961 () Bool)

(declare-fun res!1060356 () Bool)

(assert (=> b!2507961 (=> res!1060356 e!1589864)))

(assert (=> b!2507961 (= res!1060356 e!1589868)))

(declare-fun res!1060358 () Bool)

(assert (=> b!2507961 (=> (not res!1060358) (not e!1589868))))

(assert (=> b!2507961 (= res!1060358 lt!897152)))

(declare-fun d!716313 () Bool)

(assert (=> d!716313 e!1589863))

(declare-fun c!399418 () Bool)

(assert (=> d!716313 (= c!399418 ((_ is EmptyExpr!7439) (derivative!134 lt!897118 tl!4068)))))

(declare-fun e!1589866 () Bool)

(assert (=> d!716313 (= lt!897152 e!1589866)))

(declare-fun c!399419 () Bool)

(assert (=> d!716313 (= c!399419 (isEmpty!16874 Nil!29404))))

(assert (=> d!716313 (validRegex!3065 (derivative!134 lt!897118 tl!4068))))

(assert (=> d!716313 (= (matchR!3442 (derivative!134 lt!897118 tl!4068) Nil!29404) lt!897152)))

(declare-fun b!2507962 () Bool)

(assert (=> b!2507962 (= e!1589868 (= (head!5720 Nil!29404) (c!399327 (derivative!134 lt!897118 tl!4068))))))

(declare-fun bm!155372 () Bool)

(assert (=> bm!155372 (= call!155377 (isEmpty!16874 Nil!29404))))

(declare-fun b!2507963 () Bool)

(assert (=> b!2507963 (= e!1589866 (nullable!2356 (derivative!134 lt!897118 tl!4068)))))

(declare-fun b!2507964 () Bool)

(assert (=> b!2507964 (= e!1589866 (matchR!3442 (derivativeStep!2008 (derivative!134 lt!897118 tl!4068) (head!5720 Nil!29404)) (tail!3997 Nil!29404)))))

(declare-fun b!2507965 () Bool)

(assert (=> b!2507965 (= e!1589865 e!1589867)))

(declare-fun res!1060354 () Bool)

(assert (=> b!2507965 (=> res!1060354 e!1589867)))

(assert (=> b!2507965 (= res!1060354 call!155377)))

(assert (= (and d!716313 c!399419) b!2507963))

(assert (= (and d!716313 (not c!399419)) b!2507964))

(assert (= (and d!716313 c!399418) b!2507954))

(assert (= (and d!716313 (not c!399418)) b!2507958))

(assert (= (and b!2507958 c!399420) b!2507956))

(assert (= (and b!2507958 (not c!399420)) b!2507959))

(assert (= (and b!2507959 (not res!1060355)) b!2507961))

(assert (= (and b!2507961 res!1060358) b!2507960))

(assert (= (and b!2507960 res!1060357) b!2507952))

(assert (= (and b!2507952 res!1060359) b!2507962))

(assert (= (and b!2507961 (not res!1060356)) b!2507957))

(assert (= (and b!2507957 res!1060353) b!2507965))

(assert (= (and b!2507965 (not res!1060354)) b!2507953))

(assert (= (and b!2507953 (not res!1060360)) b!2507955))

(assert (= (or b!2507954 b!2507965 b!2507960) bm!155372))

(declare-fun m!2867947 () Bool)

(assert (=> b!2507962 m!2867947))

(assert (=> b!2507955 m!2867947))

(declare-fun m!2867949 () Bool)

(assert (=> bm!155372 m!2867949))

(declare-fun m!2867951 () Bool)

(assert (=> b!2507952 m!2867951))

(assert (=> b!2507952 m!2867951))

(declare-fun m!2867953 () Bool)

(assert (=> b!2507952 m!2867953))

(assert (=> b!2507964 m!2867947))

(assert (=> b!2507964 m!2867775))

(assert (=> b!2507964 m!2867947))

(declare-fun m!2867955 () Bool)

(assert (=> b!2507964 m!2867955))

(assert (=> b!2507964 m!2867951))

(assert (=> b!2507964 m!2867955))

(assert (=> b!2507964 m!2867951))

(declare-fun m!2867957 () Bool)

(assert (=> b!2507964 m!2867957))

(assert (=> d!716313 m!2867949))

(assert (=> d!716313 m!2867775))

(declare-fun m!2867959 () Bool)

(assert (=> d!716313 m!2867959))

(assert (=> b!2507953 m!2867951))

(assert (=> b!2507953 m!2867951))

(assert (=> b!2507953 m!2867953))

(assert (=> b!2507963 m!2867775))

(declare-fun m!2867961 () Bool)

(assert (=> b!2507963 m!2867961))

(assert (=> b!2507611 d!716313))

(declare-fun d!716315 () Bool)

(declare-fun e!1589875 () Bool)

(assert (=> d!716315 e!1589875))

(declare-fun res!1060365 () Bool)

(assert (=> d!716315 (=> res!1060365 e!1589875)))

(assert (=> d!716315 (= res!1060365 (matchR!3442 lt!897116 tl!4068))))

(declare-fun lt!897155 () Unit!43135)

(declare-fun choose!14830 (Regex!7439 Regex!7439 List!29504) Unit!43135)

(assert (=> d!716315 (= lt!897155 (choose!14830 lt!897116 lt!897115 tl!4068))))

(declare-fun e!1589874 () Bool)

(assert (=> d!716315 e!1589874))

(declare-fun res!1060366 () Bool)

(assert (=> d!716315 (=> (not res!1060366) (not e!1589874))))

(assert (=> d!716315 (= res!1060366 (validRegex!3065 lt!897116))))

(assert (=> d!716315 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!134 lt!897116 lt!897115 tl!4068) lt!897155)))

(declare-fun b!2507970 () Bool)

(assert (=> b!2507970 (= e!1589874 (validRegex!3065 lt!897115))))

(declare-fun b!2507971 () Bool)

(assert (=> b!2507971 (= e!1589875 (matchR!3442 lt!897115 tl!4068))))

(assert (= (and d!716315 res!1060366) b!2507970))

(assert (= (and d!716315 (not res!1060365)) b!2507971))

(assert (=> d!716315 m!2867781))

(declare-fun m!2867963 () Bool)

(assert (=> d!716315 m!2867963))

(declare-fun m!2867965 () Bool)

(assert (=> d!716315 m!2867965))

(assert (=> b!2507970 m!2867821))

(assert (=> b!2507971 m!2867791))

(assert (=> b!2507611 d!716315))

(declare-fun d!716317 () Bool)

(declare-fun lt!897156 () Regex!7439)

(assert (=> d!716317 (validRegex!3065 lt!897156)))

(declare-fun e!1589876 () Regex!7439)

(assert (=> d!716317 (= lt!897156 e!1589876)))

(declare-fun c!399421 () Bool)

(assert (=> d!716317 (= c!399421 ((_ is Cons!29404) tl!4068))))

(assert (=> d!716317 (validRegex!3065 lt!897118)))

(assert (=> d!716317 (= (derivative!134 lt!897118 tl!4068) lt!897156)))

(declare-fun b!2507972 () Bool)

(assert (=> b!2507972 (= e!1589876 (derivative!134 (derivativeStep!2008 lt!897118 (h!34824 tl!4068)) (t!211203 tl!4068)))))

(declare-fun b!2507973 () Bool)

(assert (=> b!2507973 (= e!1589876 lt!897118)))

(assert (= (and d!716317 c!399421) b!2507972))

(assert (= (and d!716317 (not c!399421)) b!2507973))

(declare-fun m!2867967 () Bool)

(assert (=> d!716317 m!2867967))

(assert (=> d!716317 m!2867943))

(declare-fun m!2867969 () Bool)

(assert (=> b!2507972 m!2867969))

(assert (=> b!2507972 m!2867969))

(declare-fun m!2867971 () Bool)

(assert (=> b!2507972 m!2867971))

(assert (=> b!2507611 d!716317))

(declare-fun b!2507974 () Bool)

(declare-fun res!1060373 () Bool)

(declare-fun e!1589882 () Bool)

(assert (=> b!2507974 (=> (not res!1060373) (not e!1589882))))

(assert (=> b!2507974 (= res!1060373 (isEmpty!16874 (tail!3997 tl!4068)))))

(declare-fun b!2507975 () Bool)

(declare-fun res!1060374 () Bool)

(declare-fun e!1589881 () Bool)

(assert (=> b!2507975 (=> res!1060374 e!1589881)))

(assert (=> b!2507975 (= res!1060374 (not (isEmpty!16874 (tail!3997 tl!4068))))))

(declare-fun b!2507976 () Bool)

(declare-fun e!1589877 () Bool)

(declare-fun lt!897157 () Bool)

(declare-fun call!155378 () Bool)

(assert (=> b!2507976 (= e!1589877 (= lt!897157 call!155378))))

(declare-fun b!2507977 () Bool)

(assert (=> b!2507977 (= e!1589881 (not (= (head!5720 tl!4068) (c!399327 lt!897116))))))

(declare-fun b!2507978 () Bool)

(declare-fun e!1589883 () Bool)

(assert (=> b!2507978 (= e!1589883 (not lt!897157))))

(declare-fun b!2507979 () Bool)

(declare-fun e!1589878 () Bool)

(declare-fun e!1589879 () Bool)

(assert (=> b!2507979 (= e!1589878 e!1589879)))

(declare-fun res!1060367 () Bool)

(assert (=> b!2507979 (=> (not res!1060367) (not e!1589879))))

(assert (=> b!2507979 (= res!1060367 (not lt!897157))))

(declare-fun b!2507980 () Bool)

(assert (=> b!2507980 (= e!1589877 e!1589883)))

(declare-fun c!399424 () Bool)

(assert (=> b!2507980 (= c!399424 ((_ is EmptyLang!7439) lt!897116))))

(declare-fun b!2507981 () Bool)

(declare-fun res!1060369 () Bool)

(assert (=> b!2507981 (=> res!1060369 e!1589878)))

(assert (=> b!2507981 (= res!1060369 (not ((_ is ElementMatch!7439) lt!897116)))))

(assert (=> b!2507981 (= e!1589883 e!1589878)))

(declare-fun b!2507982 () Bool)

(declare-fun res!1060371 () Bool)

(assert (=> b!2507982 (=> (not res!1060371) (not e!1589882))))

(assert (=> b!2507982 (= res!1060371 (not call!155378))))

(declare-fun b!2507983 () Bool)

(declare-fun res!1060370 () Bool)

(assert (=> b!2507983 (=> res!1060370 e!1589878)))

(assert (=> b!2507983 (= res!1060370 e!1589882)))

(declare-fun res!1060372 () Bool)

(assert (=> b!2507983 (=> (not res!1060372) (not e!1589882))))

(assert (=> b!2507983 (= res!1060372 lt!897157)))

(declare-fun d!716319 () Bool)

(assert (=> d!716319 e!1589877))

(declare-fun c!399422 () Bool)

(assert (=> d!716319 (= c!399422 ((_ is EmptyExpr!7439) lt!897116))))

(declare-fun e!1589880 () Bool)

(assert (=> d!716319 (= lt!897157 e!1589880)))

(declare-fun c!399423 () Bool)

(assert (=> d!716319 (= c!399423 (isEmpty!16874 tl!4068))))

(assert (=> d!716319 (validRegex!3065 lt!897116)))

(assert (=> d!716319 (= (matchR!3442 lt!897116 tl!4068) lt!897157)))

(declare-fun b!2507984 () Bool)

(assert (=> b!2507984 (= e!1589882 (= (head!5720 tl!4068) (c!399327 lt!897116)))))

(declare-fun bm!155373 () Bool)

(assert (=> bm!155373 (= call!155378 (isEmpty!16874 tl!4068))))

(declare-fun b!2507985 () Bool)

(assert (=> b!2507985 (= e!1589880 (nullable!2356 lt!897116))))

(declare-fun b!2507986 () Bool)

(assert (=> b!2507986 (= e!1589880 (matchR!3442 (derivativeStep!2008 lt!897116 (head!5720 tl!4068)) (tail!3997 tl!4068)))))

(declare-fun b!2507987 () Bool)

(assert (=> b!2507987 (= e!1589879 e!1589881)))

(declare-fun res!1060368 () Bool)

(assert (=> b!2507987 (=> res!1060368 e!1589881)))

(assert (=> b!2507987 (= res!1060368 call!155378)))

(assert (= (and d!716319 c!399423) b!2507985))

(assert (= (and d!716319 (not c!399423)) b!2507986))

(assert (= (and d!716319 c!399422) b!2507976))

(assert (= (and d!716319 (not c!399422)) b!2507980))

(assert (= (and b!2507980 c!399424) b!2507978))

(assert (= (and b!2507980 (not c!399424)) b!2507981))

(assert (= (and b!2507981 (not res!1060369)) b!2507983))

(assert (= (and b!2507983 res!1060372) b!2507982))

(assert (= (and b!2507982 res!1060371) b!2507974))

(assert (= (and b!2507974 res!1060373) b!2507984))

(assert (= (and b!2507983 (not res!1060370)) b!2507979))

(assert (= (and b!2507979 res!1060367) b!2507987))

(assert (= (and b!2507987 (not res!1060368)) b!2507975))

(assert (= (and b!2507975 (not res!1060374)) b!2507977))

(assert (= (or b!2507976 b!2507987 b!2507982) bm!155373))

(assert (=> b!2507984 m!2867809))

(assert (=> b!2507977 m!2867809))

(assert (=> bm!155373 m!2867811))

(assert (=> b!2507974 m!2867813))

(assert (=> b!2507974 m!2867813))

(assert (=> b!2507974 m!2867815))

(assert (=> b!2507986 m!2867809))

(assert (=> b!2507986 m!2867809))

(declare-fun m!2867973 () Bool)

(assert (=> b!2507986 m!2867973))

(assert (=> b!2507986 m!2867813))

(assert (=> b!2507986 m!2867973))

(assert (=> b!2507986 m!2867813))

(declare-fun m!2867975 () Bool)

(assert (=> b!2507986 m!2867975))

(assert (=> d!716319 m!2867811))

(assert (=> d!716319 m!2867965))

(assert (=> b!2507975 m!2867813))

(assert (=> b!2507975 m!2867813))

(assert (=> b!2507975 m!2867815))

(declare-fun m!2867977 () Bool)

(assert (=> b!2507985 m!2867977))

(assert (=> b!2507611 d!716319))

(declare-fun b!2507988 () Bool)

(declare-fun res!1060381 () Bool)

(declare-fun e!1589889 () Bool)

(assert (=> b!2507988 (=> (not res!1060381) (not e!1589889))))

(assert (=> b!2507988 (= res!1060381 (isEmpty!16874 (tail!3997 tl!4068)))))

(declare-fun b!2507989 () Bool)

(declare-fun res!1060382 () Bool)

(declare-fun e!1589888 () Bool)

(assert (=> b!2507989 (=> res!1060382 e!1589888)))

(assert (=> b!2507989 (= res!1060382 (not (isEmpty!16874 (tail!3997 tl!4068))))))

(declare-fun b!2507990 () Bool)

(declare-fun e!1589884 () Bool)

(declare-fun lt!897158 () Bool)

(declare-fun call!155379 () Bool)

(assert (=> b!2507990 (= e!1589884 (= lt!897158 call!155379))))

(declare-fun b!2507991 () Bool)

(assert (=> b!2507991 (= e!1589888 (not (= (head!5720 tl!4068) (c!399327 lt!897118))))))

(declare-fun b!2507992 () Bool)

(declare-fun e!1589890 () Bool)

(assert (=> b!2507992 (= e!1589890 (not lt!897158))))

(declare-fun b!2507993 () Bool)

(declare-fun e!1589885 () Bool)

(declare-fun e!1589886 () Bool)

(assert (=> b!2507993 (= e!1589885 e!1589886)))

(declare-fun res!1060375 () Bool)

(assert (=> b!2507993 (=> (not res!1060375) (not e!1589886))))

(assert (=> b!2507993 (= res!1060375 (not lt!897158))))

(declare-fun b!2507994 () Bool)

(assert (=> b!2507994 (= e!1589884 e!1589890)))

(declare-fun c!399427 () Bool)

(assert (=> b!2507994 (= c!399427 ((_ is EmptyLang!7439) lt!897118))))

(declare-fun b!2507995 () Bool)

(declare-fun res!1060377 () Bool)

(assert (=> b!2507995 (=> res!1060377 e!1589885)))

(assert (=> b!2507995 (= res!1060377 (not ((_ is ElementMatch!7439) lt!897118)))))

(assert (=> b!2507995 (= e!1589890 e!1589885)))

(declare-fun b!2507996 () Bool)

(declare-fun res!1060379 () Bool)

(assert (=> b!2507996 (=> (not res!1060379) (not e!1589889))))

(assert (=> b!2507996 (= res!1060379 (not call!155379))))

(declare-fun b!2507997 () Bool)

(declare-fun res!1060378 () Bool)

(assert (=> b!2507997 (=> res!1060378 e!1589885)))

(assert (=> b!2507997 (= res!1060378 e!1589889)))

(declare-fun res!1060380 () Bool)

(assert (=> b!2507997 (=> (not res!1060380) (not e!1589889))))

(assert (=> b!2507997 (= res!1060380 lt!897158)))

(declare-fun d!716321 () Bool)

(assert (=> d!716321 e!1589884))

(declare-fun c!399425 () Bool)

(assert (=> d!716321 (= c!399425 ((_ is EmptyExpr!7439) lt!897118))))

(declare-fun e!1589887 () Bool)

(assert (=> d!716321 (= lt!897158 e!1589887)))

(declare-fun c!399426 () Bool)

(assert (=> d!716321 (= c!399426 (isEmpty!16874 tl!4068))))

(assert (=> d!716321 (validRegex!3065 lt!897118)))

(assert (=> d!716321 (= (matchR!3442 lt!897118 tl!4068) lt!897158)))

(declare-fun b!2507998 () Bool)

(assert (=> b!2507998 (= e!1589889 (= (head!5720 tl!4068) (c!399327 lt!897118)))))

(declare-fun bm!155374 () Bool)

(assert (=> bm!155374 (= call!155379 (isEmpty!16874 tl!4068))))

(declare-fun b!2507999 () Bool)

(assert (=> b!2507999 (= e!1589887 (nullable!2356 lt!897118))))

(declare-fun b!2508000 () Bool)

(assert (=> b!2508000 (= e!1589887 (matchR!3442 (derivativeStep!2008 lt!897118 (head!5720 tl!4068)) (tail!3997 tl!4068)))))

(declare-fun b!2508001 () Bool)

(assert (=> b!2508001 (= e!1589886 e!1589888)))

(declare-fun res!1060376 () Bool)

(assert (=> b!2508001 (=> res!1060376 e!1589888)))

(assert (=> b!2508001 (= res!1060376 call!155379)))

(assert (= (and d!716321 c!399426) b!2507999))

(assert (= (and d!716321 (not c!399426)) b!2508000))

(assert (= (and d!716321 c!399425) b!2507990))

(assert (= (and d!716321 (not c!399425)) b!2507994))

(assert (= (and b!2507994 c!399427) b!2507992))

(assert (= (and b!2507994 (not c!399427)) b!2507995))

(assert (= (and b!2507995 (not res!1060377)) b!2507997))

(assert (= (and b!2507997 res!1060380) b!2507996))

(assert (= (and b!2507996 res!1060379) b!2507988))

(assert (= (and b!2507988 res!1060381) b!2507998))

(assert (= (and b!2507997 (not res!1060378)) b!2507993))

(assert (= (and b!2507993 res!1060375) b!2508001))

(assert (= (and b!2508001 (not res!1060376)) b!2507989))

(assert (= (and b!2507989 (not res!1060382)) b!2507991))

(assert (= (or b!2507990 b!2508001 b!2507996) bm!155374))

(assert (=> b!2507998 m!2867809))

(assert (=> b!2507991 m!2867809))

(assert (=> bm!155374 m!2867811))

(assert (=> b!2507988 m!2867813))

(assert (=> b!2507988 m!2867813))

(assert (=> b!2507988 m!2867815))

(assert (=> b!2508000 m!2867809))

(assert (=> b!2508000 m!2867809))

(declare-fun m!2867979 () Bool)

(assert (=> b!2508000 m!2867979))

(assert (=> b!2508000 m!2867813))

(assert (=> b!2508000 m!2867979))

(assert (=> b!2508000 m!2867813))

(declare-fun m!2867981 () Bool)

(assert (=> b!2508000 m!2867981))

(assert (=> d!716321 m!2867811))

(assert (=> d!716321 m!2867943))

(assert (=> b!2507989 m!2867813))

(assert (=> b!2507989 m!2867813))

(assert (=> b!2507989 m!2867815))

(declare-fun m!2867983 () Bool)

(assert (=> b!2507999 m!2867983))

(assert (=> b!2507611 d!716321))

(declare-fun b!2508002 () Bool)

(declare-fun e!1589893 () Regex!7439)

(assert (=> b!2508002 (= e!1589893 EmptyLang!7439)))

(declare-fun c!399430 () Bool)

(declare-fun bm!155375 () Bool)

(declare-fun call!155383 () Regex!7439)

(declare-fun c!399428 () Bool)

(assert (=> bm!155375 (= call!155383 (derivativeStep!2008 (ite c!399430 (regTwo!15391 (regTwo!15390 r!27340)) (ite c!399428 (reg!7768 (regTwo!15390 r!27340)) (regOne!15390 (regTwo!15390 r!27340)))) c!14016))))

(declare-fun bm!155376 () Bool)

(declare-fun call!155382 () Regex!7439)

(assert (=> bm!155376 (= call!155382 call!155383)))

(declare-fun b!2508003 () Bool)

(declare-fun e!1589895 () Regex!7439)

(assert (=> b!2508003 (= e!1589895 (ite (= c!14016 (c!399327 (regTwo!15390 r!27340))) EmptyExpr!7439 EmptyLang!7439))))

(declare-fun b!2508004 () Bool)

(declare-fun e!1589894 () Regex!7439)

(declare-fun call!155380 () Regex!7439)

(assert (=> b!2508004 (= e!1589894 (Union!7439 call!155380 call!155383))))

(declare-fun b!2508005 () Bool)

(declare-fun e!1589891 () Regex!7439)

(assert (=> b!2508005 (= e!1589891 (Concat!12135 call!155382 (regTwo!15390 r!27340)))))

(declare-fun b!2508006 () Bool)

(declare-fun c!399431 () Bool)

(assert (=> b!2508006 (= c!399431 (nullable!2356 (regOne!15390 (regTwo!15390 r!27340))))))

(declare-fun e!1589892 () Regex!7439)

(assert (=> b!2508006 (= e!1589891 e!1589892)))

(declare-fun call!155381 () Regex!7439)

(declare-fun b!2508008 () Bool)

(assert (=> b!2508008 (= e!1589892 (Union!7439 (Concat!12135 call!155381 (regTwo!15390 (regTwo!15390 r!27340))) call!155380))))

(declare-fun bm!155377 () Bool)

(assert (=> bm!155377 (= call!155380 (derivativeStep!2008 (ite c!399430 (regOne!15391 (regTwo!15390 r!27340)) (regTwo!15390 (regTwo!15390 r!27340))) c!14016))))

(declare-fun b!2508009 () Bool)

(assert (=> b!2508009 (= e!1589894 e!1589891)))

(assert (=> b!2508009 (= c!399428 ((_ is Star!7439) (regTwo!15390 r!27340)))))

(declare-fun bm!155378 () Bool)

(assert (=> bm!155378 (= call!155381 call!155382)))

(declare-fun b!2508010 () Bool)

(assert (=> b!2508010 (= c!399430 ((_ is Union!7439) (regTwo!15390 r!27340)))))

(assert (=> b!2508010 (= e!1589895 e!1589894)))

(declare-fun b!2508011 () Bool)

(assert (=> b!2508011 (= e!1589893 e!1589895)))

(declare-fun c!399429 () Bool)

(assert (=> b!2508011 (= c!399429 ((_ is ElementMatch!7439) (regTwo!15390 r!27340)))))

(declare-fun b!2508007 () Bool)

(assert (=> b!2508007 (= e!1589892 (Union!7439 (Concat!12135 call!155381 (regTwo!15390 (regTwo!15390 r!27340))) EmptyLang!7439))))

(declare-fun d!716323 () Bool)

(declare-fun lt!897159 () Regex!7439)

(assert (=> d!716323 (validRegex!3065 lt!897159)))

(assert (=> d!716323 (= lt!897159 e!1589893)))

(declare-fun c!399432 () Bool)

(assert (=> d!716323 (= c!399432 (or ((_ is EmptyExpr!7439) (regTwo!15390 r!27340)) ((_ is EmptyLang!7439) (regTwo!15390 r!27340))))))

(assert (=> d!716323 (validRegex!3065 (regTwo!15390 r!27340))))

(assert (=> d!716323 (= (derivativeStep!2008 (regTwo!15390 r!27340) c!14016) lt!897159)))

(assert (= (and d!716323 c!399432) b!2508002))

(assert (= (and d!716323 (not c!399432)) b!2508011))

(assert (= (and b!2508011 c!399429) b!2508003))

(assert (= (and b!2508011 (not c!399429)) b!2508010))

(assert (= (and b!2508010 c!399430) b!2508004))

(assert (= (and b!2508010 (not c!399430)) b!2508009))

(assert (= (and b!2508009 c!399428) b!2508005))

(assert (= (and b!2508009 (not c!399428)) b!2508006))

(assert (= (and b!2508006 c!399431) b!2508008))

(assert (= (and b!2508006 (not c!399431)) b!2508007))

(assert (= (or b!2508008 b!2508007) bm!155378))

(assert (= (or b!2508005 bm!155378) bm!155376))

(assert (= (or b!2508004 bm!155376) bm!155375))

(assert (= (or b!2508004 b!2508008) bm!155377))

(declare-fun m!2867985 () Bool)

(assert (=> bm!155375 m!2867985))

(declare-fun m!2867987 () Bool)

(assert (=> b!2508006 m!2867987))

(declare-fun m!2867989 () Bool)

(assert (=> bm!155377 m!2867989))

(declare-fun m!2867991 () Bool)

(assert (=> d!716323 m!2867991))

(assert (=> d!716323 m!2867789))

(assert (=> b!2507611 d!716323))

(declare-fun b!2508012 () Bool)

(declare-fun e!1589898 () Regex!7439)

(assert (=> b!2508012 (= e!1589898 EmptyLang!7439)))

(declare-fun c!399435 () Bool)

(declare-fun call!155387 () Regex!7439)

(declare-fun c!399433 () Bool)

(declare-fun bm!155379 () Bool)

(assert (=> bm!155379 (= call!155387 (derivativeStep!2008 (ite c!399435 (regTwo!15391 (regOne!15390 r!27340)) (ite c!399433 (reg!7768 (regOne!15390 r!27340)) (regOne!15390 (regOne!15390 r!27340)))) c!14016))))

(declare-fun bm!155380 () Bool)

(declare-fun call!155386 () Regex!7439)

(assert (=> bm!155380 (= call!155386 call!155387)))

(declare-fun b!2508013 () Bool)

(declare-fun e!1589900 () Regex!7439)

(assert (=> b!2508013 (= e!1589900 (ite (= c!14016 (c!399327 (regOne!15390 r!27340))) EmptyExpr!7439 EmptyLang!7439))))

(declare-fun b!2508014 () Bool)

(declare-fun e!1589899 () Regex!7439)

(declare-fun call!155384 () Regex!7439)

(assert (=> b!2508014 (= e!1589899 (Union!7439 call!155384 call!155387))))

(declare-fun b!2508015 () Bool)

(declare-fun e!1589896 () Regex!7439)

(assert (=> b!2508015 (= e!1589896 (Concat!12135 call!155386 (regOne!15390 r!27340)))))

(declare-fun b!2508016 () Bool)

(declare-fun c!399436 () Bool)

(assert (=> b!2508016 (= c!399436 (nullable!2356 (regOne!15390 (regOne!15390 r!27340))))))

(declare-fun e!1589897 () Regex!7439)

(assert (=> b!2508016 (= e!1589896 e!1589897)))

(declare-fun b!2508018 () Bool)

(declare-fun call!155385 () Regex!7439)

(assert (=> b!2508018 (= e!1589897 (Union!7439 (Concat!12135 call!155385 (regTwo!15390 (regOne!15390 r!27340))) call!155384))))

(declare-fun bm!155381 () Bool)

(assert (=> bm!155381 (= call!155384 (derivativeStep!2008 (ite c!399435 (regOne!15391 (regOne!15390 r!27340)) (regTwo!15390 (regOne!15390 r!27340))) c!14016))))

(declare-fun b!2508019 () Bool)

(assert (=> b!2508019 (= e!1589899 e!1589896)))

(assert (=> b!2508019 (= c!399433 ((_ is Star!7439) (regOne!15390 r!27340)))))

(declare-fun bm!155382 () Bool)

(assert (=> bm!155382 (= call!155385 call!155386)))

(declare-fun b!2508020 () Bool)

(assert (=> b!2508020 (= c!399435 ((_ is Union!7439) (regOne!15390 r!27340)))))

(assert (=> b!2508020 (= e!1589900 e!1589899)))

(declare-fun b!2508021 () Bool)

(assert (=> b!2508021 (= e!1589898 e!1589900)))

(declare-fun c!399434 () Bool)

(assert (=> b!2508021 (= c!399434 ((_ is ElementMatch!7439) (regOne!15390 r!27340)))))

(declare-fun b!2508017 () Bool)

(assert (=> b!2508017 (= e!1589897 (Union!7439 (Concat!12135 call!155385 (regTwo!15390 (regOne!15390 r!27340))) EmptyLang!7439))))

(declare-fun d!716325 () Bool)

(declare-fun lt!897160 () Regex!7439)

(assert (=> d!716325 (validRegex!3065 lt!897160)))

(assert (=> d!716325 (= lt!897160 e!1589898)))

(declare-fun c!399437 () Bool)

(assert (=> d!716325 (= c!399437 (or ((_ is EmptyExpr!7439) (regOne!15390 r!27340)) ((_ is EmptyLang!7439) (regOne!15390 r!27340))))))

(assert (=> d!716325 (validRegex!3065 (regOne!15390 r!27340))))

(assert (=> d!716325 (= (derivativeStep!2008 (regOne!15390 r!27340) c!14016) lt!897160)))

(assert (= (and d!716325 c!399437) b!2508012))

(assert (= (and d!716325 (not c!399437)) b!2508021))

(assert (= (and b!2508021 c!399434) b!2508013))

(assert (= (and b!2508021 (not c!399434)) b!2508020))

(assert (= (and b!2508020 c!399435) b!2508014))

(assert (= (and b!2508020 (not c!399435)) b!2508019))

(assert (= (and b!2508019 c!399433) b!2508015))

(assert (= (and b!2508019 (not c!399433)) b!2508016))

(assert (= (and b!2508016 c!399436) b!2508018))

(assert (= (and b!2508016 (not c!399436)) b!2508017))

(assert (= (or b!2508018 b!2508017) bm!155382))

(assert (= (or b!2508015 bm!155382) bm!155380))

(assert (= (or b!2508014 bm!155380) bm!155379))

(assert (= (or b!2508014 b!2508018) bm!155381))

(declare-fun m!2867993 () Bool)

(assert (=> bm!155379 m!2867993))

(declare-fun m!2867995 () Bool)

(assert (=> b!2508016 m!2867995))

(declare-fun m!2867997 () Bool)

(assert (=> bm!155381 m!2867997))

(declare-fun m!2867999 () Bool)

(assert (=> d!716325 m!2867999))

(declare-fun m!2868001 () Bool)

(assert (=> d!716325 m!2868001))

(assert (=> b!2507611 d!716325))

(declare-fun d!716327 () Bool)

(assert (=> d!716327 (= (nullable!2356 (regOne!15390 r!27340)) (nullableFct!616 (regOne!15390 r!27340)))))

(declare-fun bs!468705 () Bool)

(assert (= bs!468705 d!716327))

(declare-fun m!2868003 () Bool)

(assert (=> bs!468705 m!2868003))

(assert (=> b!2507612 d!716327))

(declare-fun b!2508032 () Bool)

(declare-fun e!1589903 () Bool)

(assert (=> b!2508032 (= e!1589903 tp_is_empty!12733)))

(assert (=> b!2507610 (= tp!802099 e!1589903)))

(declare-fun b!2508035 () Bool)

(declare-fun tp!802153 () Bool)

(declare-fun tp!802151 () Bool)

(assert (=> b!2508035 (= e!1589903 (and tp!802153 tp!802151))))

(declare-fun b!2508033 () Bool)

(declare-fun tp!802154 () Bool)

(declare-fun tp!802155 () Bool)

(assert (=> b!2508033 (= e!1589903 (and tp!802154 tp!802155))))

(declare-fun b!2508034 () Bool)

(declare-fun tp!802152 () Bool)

(assert (=> b!2508034 (= e!1589903 tp!802152)))

(assert (= (and b!2507610 ((_ is ElementMatch!7439) (reg!7768 r!27340))) b!2508032))

(assert (= (and b!2507610 ((_ is Concat!12135) (reg!7768 r!27340))) b!2508033))

(assert (= (and b!2507610 ((_ is Star!7439) (reg!7768 r!27340))) b!2508034))

(assert (= (and b!2507610 ((_ is Union!7439) (reg!7768 r!27340))) b!2508035))

(declare-fun b!2508036 () Bool)

(declare-fun e!1589904 () Bool)

(assert (=> b!2508036 (= e!1589904 tp_is_empty!12733)))

(assert (=> b!2507615 (= tp!802101 e!1589904)))

(declare-fun b!2508039 () Bool)

(declare-fun tp!802158 () Bool)

(declare-fun tp!802156 () Bool)

(assert (=> b!2508039 (= e!1589904 (and tp!802158 tp!802156))))

(declare-fun b!2508037 () Bool)

(declare-fun tp!802159 () Bool)

(declare-fun tp!802160 () Bool)

(assert (=> b!2508037 (= e!1589904 (and tp!802159 tp!802160))))

(declare-fun b!2508038 () Bool)

(declare-fun tp!802157 () Bool)

(assert (=> b!2508038 (= e!1589904 tp!802157)))

(assert (= (and b!2507615 ((_ is ElementMatch!7439) (regOne!15391 r!27340))) b!2508036))

(assert (= (and b!2507615 ((_ is Concat!12135) (regOne!15391 r!27340))) b!2508037))

(assert (= (and b!2507615 ((_ is Star!7439) (regOne!15391 r!27340))) b!2508038))

(assert (= (and b!2507615 ((_ is Union!7439) (regOne!15391 r!27340))) b!2508039))

(declare-fun b!2508040 () Bool)

(declare-fun e!1589905 () Bool)

(assert (=> b!2508040 (= e!1589905 tp_is_empty!12733)))

(assert (=> b!2507615 (= tp!802098 e!1589905)))

(declare-fun b!2508043 () Bool)

(declare-fun tp!802163 () Bool)

(declare-fun tp!802161 () Bool)

(assert (=> b!2508043 (= e!1589905 (and tp!802163 tp!802161))))

(declare-fun b!2508041 () Bool)

(declare-fun tp!802164 () Bool)

(declare-fun tp!802165 () Bool)

(assert (=> b!2508041 (= e!1589905 (and tp!802164 tp!802165))))

(declare-fun b!2508042 () Bool)

(declare-fun tp!802162 () Bool)

(assert (=> b!2508042 (= e!1589905 tp!802162)))

(assert (= (and b!2507615 ((_ is ElementMatch!7439) (regTwo!15391 r!27340))) b!2508040))

(assert (= (and b!2507615 ((_ is Concat!12135) (regTwo!15391 r!27340))) b!2508041))

(assert (= (and b!2507615 ((_ is Star!7439) (regTwo!15391 r!27340))) b!2508042))

(assert (= (and b!2507615 ((_ is Union!7439) (regTwo!15391 r!27340))) b!2508043))

(declare-fun b!2508044 () Bool)

(declare-fun e!1589906 () Bool)

(assert (=> b!2508044 (= e!1589906 tp_is_empty!12733)))

(assert (=> b!2507617 (= tp!802100 e!1589906)))

(declare-fun b!2508047 () Bool)

(declare-fun tp!802168 () Bool)

(declare-fun tp!802166 () Bool)

(assert (=> b!2508047 (= e!1589906 (and tp!802168 tp!802166))))

(declare-fun b!2508045 () Bool)

(declare-fun tp!802169 () Bool)

(declare-fun tp!802170 () Bool)

(assert (=> b!2508045 (= e!1589906 (and tp!802169 tp!802170))))

(declare-fun b!2508046 () Bool)

(declare-fun tp!802167 () Bool)

(assert (=> b!2508046 (= e!1589906 tp!802167)))

(assert (= (and b!2507617 ((_ is ElementMatch!7439) (regOne!15390 r!27340))) b!2508044))

(assert (= (and b!2507617 ((_ is Concat!12135) (regOne!15390 r!27340))) b!2508045))

(assert (= (and b!2507617 ((_ is Star!7439) (regOne!15390 r!27340))) b!2508046))

(assert (= (and b!2507617 ((_ is Union!7439) (regOne!15390 r!27340))) b!2508047))

(declare-fun b!2508048 () Bool)

(declare-fun e!1589907 () Bool)

(assert (=> b!2508048 (= e!1589907 tp_is_empty!12733)))

(assert (=> b!2507617 (= tp!802097 e!1589907)))

(declare-fun b!2508051 () Bool)

(declare-fun tp!802173 () Bool)

(declare-fun tp!802171 () Bool)

(assert (=> b!2508051 (= e!1589907 (and tp!802173 tp!802171))))

(declare-fun b!2508049 () Bool)

(declare-fun tp!802174 () Bool)

(declare-fun tp!802175 () Bool)

(assert (=> b!2508049 (= e!1589907 (and tp!802174 tp!802175))))

(declare-fun b!2508050 () Bool)

(declare-fun tp!802172 () Bool)

(assert (=> b!2508050 (= e!1589907 tp!802172)))

(assert (= (and b!2507617 ((_ is ElementMatch!7439) (regTwo!15390 r!27340))) b!2508048))

(assert (= (and b!2507617 ((_ is Concat!12135) (regTwo!15390 r!27340))) b!2508049))

(assert (= (and b!2507617 ((_ is Star!7439) (regTwo!15390 r!27340))) b!2508050))

(assert (= (and b!2507617 ((_ is Union!7439) (regTwo!15390 r!27340))) b!2508051))

(declare-fun b!2508056 () Bool)

(declare-fun e!1589910 () Bool)

(declare-fun tp!802178 () Bool)

(assert (=> b!2508056 (= e!1589910 (and tp_is_empty!12733 tp!802178))))

(assert (=> b!2507613 (= tp!802102 e!1589910)))

(assert (= (and b!2507613 ((_ is Cons!29404) (t!211203 tl!4068))) b!2508056))

(check-sat (not b!2507717) (not b!2507970) (not b!2508016) (not b!2508037) (not b!2507986) (not b!2507964) (not bm!155377) (not b!2508041) (not b!2507985) (not d!716315) (not b!2507718) (not b!2507796) (not bm!155358) (not bm!155381) (not bm!155379) (not bm!155312) (not d!716313) (not b!2507984) (not d!716319) (not b!2507734) (not b!2508051) (not b!2507974) (not d!716277) tp_is_empty!12733 (not bm!155373) (not bm!155375) (not b!2508046) (not b!2507953) (not b!2508050) (not b!2508033) (not b!2508049) (not b!2507998) (not b!2508047) (not bm!155374) (not b!2507708) (not b!2507989) (not d!716323) (not b!2508034) (not bm!155356) (not d!716317) (not b!2508043) (not b!2507861) (not b!2507971) (not b!2508035) (not bm!155344) (not bm!155372) (not d!716285) (not b!2508006) (not b!2507975) (not b!2507955) (not b!2507991) (not b!2507988) (not b!2507719) (not b!2508042) (not b!2508038) (not b!2507963) (not bm!155360) (not d!716321) (not b!2508039) (not d!716325) (not b!2507972) (not d!716327) (not d!716271) (not b!2507952) (not b!2507884) (not b!2508056) (not bm!155354) (not d!716307) (not b!2507710) (not b!2507962) (not b!2508000) (not b!2507999) (not bm!155342) (not b!2507707) (not b!2507977) (not d!716275) (not b!2508045))
(check-sat)
