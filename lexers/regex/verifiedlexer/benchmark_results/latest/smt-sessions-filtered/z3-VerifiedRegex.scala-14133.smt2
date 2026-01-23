; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742862 () Bool)

(assert start!742862)

(declare-fun res!3119678 () Bool)

(declare-fun e!4637516 () Bool)

(assert (=> start!742862 (=> (not res!3119678) (not e!4637516))))

(declare-datatypes ((C!42404 0))(
  ( (C!42405 (val!31664 Int)) )
))
(declare-datatypes ((Regex!21039 0))(
  ( (ElementMatch!21039 (c!1441849 C!42404)) (Concat!29884 (regOne!42590 Regex!21039) (regTwo!42590 Regex!21039)) (EmptyExpr!21039) (Star!21039 (reg!21368 Regex!21039)) (EmptyLang!21039) (Union!21039 (regOne!42591 Regex!21039) (regTwo!42591 Regex!21039)) )
))
(declare-fun r!27161 () Regex!21039)

(declare-datatypes ((List!73898 0))(
  ( (Nil!73774) (Cons!73774 (h!80222 C!42404) (t!388633 List!73898)) )
))
(declare-fun s!15118 () List!73898)

(get-info :version)

(assert (=> start!742862 (= res!3119678 (and (= r!27161 EmptyLang!21039) ((_ is Cons!73774) s!15118)))))

(assert (=> start!742862 e!4637516))

(declare-fun e!4637517 () Bool)

(assert (=> start!742862 e!4637517))

(declare-fun e!4637515 () Bool)

(assert (=> start!742862 e!4637515))

(declare-fun b!7843683 () Bool)

(declare-fun tp!2321762 () Bool)

(assert (=> b!7843683 (= e!4637517 tp!2321762)))

(declare-fun b!7843684 () Bool)

(declare-fun tp!2321766 () Bool)

(declare-fun tp!2321764 () Bool)

(assert (=> b!7843684 (= e!4637517 (and tp!2321766 tp!2321764))))

(declare-fun b!7843685 () Bool)

(declare-fun tp_is_empty!52477 () Bool)

(assert (=> b!7843685 (= e!4637517 tp_is_empty!52477)))

(declare-fun b!7843686 () Bool)

(declare-fun derivativeStep!6280 (Regex!21039 C!42404) Regex!21039)

(assert (=> b!7843686 (= e!4637516 (not (= (derivativeStep!6280 r!27161 (h!80222 s!15118)) EmptyLang!21039)))))

(declare-fun b!7843687 () Bool)

(declare-fun tp!2321763 () Bool)

(declare-fun tp!2321761 () Bool)

(assert (=> b!7843687 (= e!4637517 (and tp!2321763 tp!2321761))))

(declare-fun b!7843688 () Bool)

(declare-fun tp!2321765 () Bool)

(assert (=> b!7843688 (= e!4637515 (and tp_is_empty!52477 tp!2321765))))

(assert (= (and start!742862 res!3119678) b!7843686))

(assert (= (and start!742862 ((_ is ElementMatch!21039) r!27161)) b!7843685))

(assert (= (and start!742862 ((_ is Concat!29884) r!27161)) b!7843687))

(assert (= (and start!742862 ((_ is Star!21039) r!27161)) b!7843683))

(assert (= (and start!742862 ((_ is Union!21039) r!27161)) b!7843684))

(assert (= (and start!742862 ((_ is Cons!73774) s!15118)) b!7843688))

(declare-fun m!8255150 () Bool)

(assert (=> b!7843686 m!8255150))

(check-sat (not b!7843683) (not b!7843684) (not b!7843686) (not b!7843688) (not b!7843687) tp_is_empty!52477)
(check-sat)
(get-model)

(declare-fun d!2352664 () Bool)

(declare-fun lt!2678915 () Regex!21039)

(declare-fun validRegex!11448 (Regex!21039) Bool)

(assert (=> d!2352664 (validRegex!11448 lt!2678915)))

(declare-fun e!4637546 () Regex!21039)

(assert (=> d!2352664 (= lt!2678915 e!4637546)))

(declare-fun c!1441875 () Bool)

(assert (=> d!2352664 (= c!1441875 (or ((_ is EmptyExpr!21039) r!27161) ((_ is EmptyLang!21039) r!27161)))))

(assert (=> d!2352664 (validRegex!11448 r!27161)))

(assert (=> d!2352664 (= (derivativeStep!6280 r!27161 (h!80222 s!15118)) lt!2678915)))

(declare-fun b!7843749 () Bool)

(declare-fun e!4637547 () Regex!21039)

(declare-fun call!726835 () Regex!21039)

(assert (=> b!7843749 (= e!4637547 (Union!21039 (Concat!29884 call!726835 (regTwo!42590 r!27161)) EmptyLang!21039))))

(declare-fun b!7843750 () Bool)

(declare-fun c!1441876 () Bool)

(assert (=> b!7843750 (= c!1441876 ((_ is Union!21039) r!27161))))

(declare-fun e!4637548 () Regex!21039)

(declare-fun e!4637545 () Regex!21039)

(assert (=> b!7843750 (= e!4637548 e!4637545)))

(declare-fun b!7843751 () Bool)

(assert (=> b!7843751 (= e!4637546 e!4637548)))

(declare-fun c!1441878 () Bool)

(assert (=> b!7843751 (= c!1441878 ((_ is ElementMatch!21039) r!27161))))

(declare-fun b!7843752 () Bool)

(declare-fun call!726836 () Regex!21039)

(assert (=> b!7843752 (= e!4637547 (Union!21039 (Concat!29884 call!726835 (regTwo!42590 r!27161)) call!726836))))

(declare-fun b!7843753 () Bool)

(declare-fun e!4637549 () Regex!21039)

(declare-fun call!726834 () Regex!21039)

(assert (=> b!7843753 (= e!4637549 (Concat!29884 call!726834 r!27161))))

(declare-fun b!7843754 () Bool)

(assert (=> b!7843754 (= e!4637545 e!4637549)))

(declare-fun c!1441877 () Bool)

(assert (=> b!7843754 (= c!1441877 ((_ is Star!21039) r!27161))))

(declare-fun bm!726828 () Bool)

(declare-fun call!726833 () Regex!21039)

(assert (=> bm!726828 (= call!726834 call!726833)))

(declare-fun b!7843755 () Bool)

(declare-fun c!1441879 () Bool)

(declare-fun nullable!9325 (Regex!21039) Bool)

(assert (=> b!7843755 (= c!1441879 (nullable!9325 (regOne!42590 r!27161)))))

(assert (=> b!7843755 (= e!4637549 e!4637547)))

(declare-fun bm!726829 () Bool)

(assert (=> bm!726829 (= call!726835 call!726834)))

(declare-fun bm!726830 () Bool)

(assert (=> bm!726830 (= call!726836 (derivativeStep!6280 (ite c!1441876 (regTwo!42591 r!27161) (regTwo!42590 r!27161)) (h!80222 s!15118)))))

(declare-fun b!7843756 () Bool)

(assert (=> b!7843756 (= e!4637545 (Union!21039 call!726833 call!726836))))

(declare-fun b!7843757 () Bool)

(assert (=> b!7843757 (= e!4637548 (ite (= (h!80222 s!15118) (c!1441849 r!27161)) EmptyExpr!21039 EmptyLang!21039))))

(declare-fun bm!726831 () Bool)

(assert (=> bm!726831 (= call!726833 (derivativeStep!6280 (ite c!1441876 (regOne!42591 r!27161) (ite c!1441877 (reg!21368 r!27161) (regOne!42590 r!27161))) (h!80222 s!15118)))))

(declare-fun b!7843758 () Bool)

(assert (=> b!7843758 (= e!4637546 EmptyLang!21039)))

(assert (= (and d!2352664 c!1441875) b!7843758))

(assert (= (and d!2352664 (not c!1441875)) b!7843751))

(assert (= (and b!7843751 c!1441878) b!7843757))

(assert (= (and b!7843751 (not c!1441878)) b!7843750))

(assert (= (and b!7843750 c!1441876) b!7843756))

(assert (= (and b!7843750 (not c!1441876)) b!7843754))

(assert (= (and b!7843754 c!1441877) b!7843753))

(assert (= (and b!7843754 (not c!1441877)) b!7843755))

(assert (= (and b!7843755 c!1441879) b!7843752))

(assert (= (and b!7843755 (not c!1441879)) b!7843749))

(assert (= (or b!7843752 b!7843749) bm!726829))

(assert (= (or b!7843753 bm!726829) bm!726828))

(assert (= (or b!7843756 b!7843752) bm!726830))

(assert (= (or b!7843756 bm!726828) bm!726831))

(declare-fun m!8255162 () Bool)

(assert (=> d!2352664 m!8255162))

(declare-fun m!8255164 () Bool)

(assert (=> d!2352664 m!8255164))

(declare-fun m!8255166 () Bool)

(assert (=> b!7843755 m!8255166))

(declare-fun m!8255168 () Bool)

(assert (=> bm!726830 m!8255168))

(declare-fun m!8255170 () Bool)

(assert (=> bm!726831 m!8255170))

(assert (=> b!7843686 d!2352664))

(declare-fun b!7843793 () Bool)

(declare-fun e!4637559 () Bool)

(assert (=> b!7843793 (= e!4637559 tp_is_empty!52477)))

(declare-fun b!7843795 () Bool)

(declare-fun tp!2321814 () Bool)

(assert (=> b!7843795 (= e!4637559 tp!2321814)))

(declare-fun b!7843796 () Bool)

(declare-fun tp!2321818 () Bool)

(declare-fun tp!2321816 () Bool)

(assert (=> b!7843796 (= e!4637559 (and tp!2321818 tp!2321816))))

(assert (=> b!7843687 (= tp!2321763 e!4637559)))

(declare-fun b!7843794 () Bool)

(declare-fun tp!2321817 () Bool)

(declare-fun tp!2321815 () Bool)

(assert (=> b!7843794 (= e!4637559 (and tp!2321817 tp!2321815))))

(assert (= (and b!7843687 ((_ is ElementMatch!21039) (regOne!42590 r!27161))) b!7843793))

(assert (= (and b!7843687 ((_ is Concat!29884) (regOne!42590 r!27161))) b!7843794))

(assert (= (and b!7843687 ((_ is Star!21039) (regOne!42590 r!27161))) b!7843795))

(assert (= (and b!7843687 ((_ is Union!21039) (regOne!42590 r!27161))) b!7843796))

(declare-fun b!7843798 () Bool)

(declare-fun e!4637561 () Bool)

(assert (=> b!7843798 (= e!4637561 tp_is_empty!52477)))

(declare-fun b!7843800 () Bool)

(declare-fun tp!2321820 () Bool)

(assert (=> b!7843800 (= e!4637561 tp!2321820)))

(declare-fun b!7843801 () Bool)

(declare-fun tp!2321824 () Bool)

(declare-fun tp!2321822 () Bool)

(assert (=> b!7843801 (= e!4637561 (and tp!2321824 tp!2321822))))

(assert (=> b!7843687 (= tp!2321761 e!4637561)))

(declare-fun b!7843799 () Bool)

(declare-fun tp!2321823 () Bool)

(declare-fun tp!2321821 () Bool)

(assert (=> b!7843799 (= e!4637561 (and tp!2321823 tp!2321821))))

(assert (= (and b!7843687 ((_ is ElementMatch!21039) (regTwo!42590 r!27161))) b!7843798))

(assert (= (and b!7843687 ((_ is Concat!29884) (regTwo!42590 r!27161))) b!7843799))

(assert (= (and b!7843687 ((_ is Star!21039) (regTwo!42590 r!27161))) b!7843800))

(assert (= (and b!7843687 ((_ is Union!21039) (regTwo!42590 r!27161))) b!7843801))

(declare-fun b!7843806 () Bool)

(declare-fun e!4637564 () Bool)

(declare-fun tp!2321827 () Bool)

(assert (=> b!7843806 (= e!4637564 (and tp_is_empty!52477 tp!2321827))))

(assert (=> b!7843688 (= tp!2321765 e!4637564)))

(assert (= (and b!7843688 ((_ is Cons!73774) (t!388633 s!15118))) b!7843806))

(declare-fun b!7843807 () Bool)

(declare-fun e!4637565 () Bool)

(assert (=> b!7843807 (= e!4637565 tp_is_empty!52477)))

(declare-fun b!7843809 () Bool)

(declare-fun tp!2321828 () Bool)

(assert (=> b!7843809 (= e!4637565 tp!2321828)))

(declare-fun b!7843810 () Bool)

(declare-fun tp!2321832 () Bool)

(declare-fun tp!2321830 () Bool)

(assert (=> b!7843810 (= e!4637565 (and tp!2321832 tp!2321830))))

(assert (=> b!7843683 (= tp!2321762 e!4637565)))

(declare-fun b!7843808 () Bool)

(declare-fun tp!2321831 () Bool)

(declare-fun tp!2321829 () Bool)

(assert (=> b!7843808 (= e!4637565 (and tp!2321831 tp!2321829))))

(assert (= (and b!7843683 ((_ is ElementMatch!21039) (reg!21368 r!27161))) b!7843807))

(assert (= (and b!7843683 ((_ is Concat!29884) (reg!21368 r!27161))) b!7843808))

(assert (= (and b!7843683 ((_ is Star!21039) (reg!21368 r!27161))) b!7843809))

(assert (= (and b!7843683 ((_ is Union!21039) (reg!21368 r!27161))) b!7843810))

(declare-fun b!7843811 () Bool)

(declare-fun e!4637566 () Bool)

(assert (=> b!7843811 (= e!4637566 tp_is_empty!52477)))

(declare-fun b!7843813 () Bool)

(declare-fun tp!2321833 () Bool)

(assert (=> b!7843813 (= e!4637566 tp!2321833)))

(declare-fun b!7843814 () Bool)

(declare-fun tp!2321837 () Bool)

(declare-fun tp!2321835 () Bool)

(assert (=> b!7843814 (= e!4637566 (and tp!2321837 tp!2321835))))

(assert (=> b!7843684 (= tp!2321766 e!4637566)))

(declare-fun b!7843812 () Bool)

(declare-fun tp!2321836 () Bool)

(declare-fun tp!2321834 () Bool)

(assert (=> b!7843812 (= e!4637566 (and tp!2321836 tp!2321834))))

(assert (= (and b!7843684 ((_ is ElementMatch!21039) (regOne!42591 r!27161))) b!7843811))

(assert (= (and b!7843684 ((_ is Concat!29884) (regOne!42591 r!27161))) b!7843812))

(assert (= (and b!7843684 ((_ is Star!21039) (regOne!42591 r!27161))) b!7843813))

(assert (= (and b!7843684 ((_ is Union!21039) (regOne!42591 r!27161))) b!7843814))

(declare-fun b!7843815 () Bool)

(declare-fun e!4637567 () Bool)

(assert (=> b!7843815 (= e!4637567 tp_is_empty!52477)))

(declare-fun b!7843817 () Bool)

(declare-fun tp!2321838 () Bool)

(assert (=> b!7843817 (= e!4637567 tp!2321838)))

(declare-fun b!7843818 () Bool)

(declare-fun tp!2321842 () Bool)

(declare-fun tp!2321840 () Bool)

(assert (=> b!7843818 (= e!4637567 (and tp!2321842 tp!2321840))))

(assert (=> b!7843684 (= tp!2321764 e!4637567)))

(declare-fun b!7843816 () Bool)

(declare-fun tp!2321841 () Bool)

(declare-fun tp!2321839 () Bool)

(assert (=> b!7843816 (= e!4637567 (and tp!2321841 tp!2321839))))

(assert (= (and b!7843684 ((_ is ElementMatch!21039) (regTwo!42591 r!27161))) b!7843815))

(assert (= (and b!7843684 ((_ is Concat!29884) (regTwo!42591 r!27161))) b!7843816))

(assert (= (and b!7843684 ((_ is Star!21039) (regTwo!42591 r!27161))) b!7843817))

(assert (= (and b!7843684 ((_ is Union!21039) (regTwo!42591 r!27161))) b!7843818))

(check-sat (not bm!726831) (not b!7843809) (not b!7843818) (not d!2352664) (not b!7843799) (not b!7843816) (not b!7843800) (not b!7843817) tp_is_empty!52477 (not b!7843810) (not b!7843795) (not b!7843801) (not b!7843794) (not b!7843808) (not b!7843755) (not b!7843814) (not b!7843812) (not b!7843796) (not b!7843806) (not b!7843813) (not bm!726830))
(check-sat)
