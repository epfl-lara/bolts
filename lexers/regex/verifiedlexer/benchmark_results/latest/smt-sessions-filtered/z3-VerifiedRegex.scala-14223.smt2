; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744646 () Bool)

(assert start!744646)

(declare-fun b!7894630 () Bool)

(declare-fun e!4659976 () Bool)

(declare-fun tp!2350856 () Bool)

(declare-fun tp!2350852 () Bool)

(assert (=> b!7894630 (= e!4659976 (and tp!2350856 tp!2350852))))

(declare-fun res!3132174 () Bool)

(declare-fun e!4659977 () Bool)

(assert (=> start!744646 (=> (not res!3132174) (not e!4659977))))

(declare-datatypes ((C!42764 0))(
  ( (C!42765 (val!31844 Int)) )
))
(declare-datatypes ((Regex!21219 0))(
  ( (ElementMatch!21219 (c!1449211 C!42764)) (Concat!30064 (regOne!42950 Regex!21219) (regTwo!42950 Regex!21219)) (EmptyExpr!21219) (Star!21219 (reg!21548 Regex!21219)) (EmptyLang!21219) (Union!21219 (regOne!42951 Regex!21219) (regTwo!42951 Regex!21219)) )
))
(declare-fun r!4885 () Regex!21219)

(declare-fun validRegex!11629 (Regex!21219) Bool)

(assert (=> start!744646 (= res!3132174 (validRegex!11629 r!4885))))

(assert (=> start!744646 e!4659977))

(assert (=> start!744646 e!4659976))

(declare-fun b!7894631 () Bool)

(declare-fun tp!2350854 () Bool)

(declare-fun tp!2350855 () Bool)

(assert (=> b!7894631 (= e!4659976 (and tp!2350854 tp!2350855))))

(declare-fun b!7894632 () Bool)

(declare-fun tp!2350853 () Bool)

(assert (=> b!7894632 (= e!4659976 tp!2350853)))

(declare-fun b!7894633 () Bool)

(declare-fun tp_is_empty!52837 () Bool)

(assert (=> b!7894633 (= e!4659976 tp_is_empty!52837)))

(declare-fun b!7894634 () Bool)

(declare-datatypes ((List!74077 0))(
  ( (Nil!73953) (Cons!73953 (h!80401 Regex!21219) (t!388812 List!74077)) )
))
(declare-datatypes ((Context!17070 0))(
  ( (Context!17071 (exprs!9035 List!74077)) )
))
(declare-datatypes ((List!74078 0))(
  ( (Nil!73954) (Cons!73954 (h!80402 Context!17070) (t!388813 List!74078)) )
))
(declare-fun unfocusZipper!2631 (List!74078) Regex!21219)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun toList!11864 ((InoxSet Context!17070)) List!74078)

(assert (=> b!7894634 (= e!4659977 (not (= (unfocusZipper!2631 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))) r!4885)))))

(assert (= (and start!744646 res!3132174) b!7894634))

(get-info :version)

(assert (= (and start!744646 ((_ is ElementMatch!21219) r!4885)) b!7894633))

(assert (= (and start!744646 ((_ is Concat!30064) r!4885)) b!7894630))

(assert (= (and start!744646 ((_ is Star!21219) r!4885)) b!7894632))

(assert (= (and start!744646 ((_ is Union!21219) r!4885)) b!7894631))

(declare-fun m!8271584 () Bool)

(assert (=> start!744646 m!8271584))

(declare-fun m!8271586 () Bool)

(assert (=> b!7894634 m!8271586))

(assert (=> b!7894634 m!8271586))

(declare-fun m!8271588 () Bool)

(assert (=> b!7894634 m!8271588))

(assert (=> b!7894634 m!8271588))

(declare-fun m!8271590 () Bool)

(assert (=> b!7894634 m!8271590))

(check-sat (not b!7894631) (not b!7894630) tp_is_empty!52837 (not b!7894632) (not start!744646) (not b!7894634))
(check-sat)
(get-model)

(declare-fun b!7894656 () Bool)

(declare-fun e!4659997 () Bool)

(declare-fun call!732850 () Bool)

(assert (=> b!7894656 (= e!4659997 call!732850)))

(declare-fun b!7894657 () Bool)

(declare-fun e!4659998 () Bool)

(declare-fun e!4659995 () Bool)

(assert (=> b!7894657 (= e!4659998 e!4659995)))

(declare-fun c!1449216 () Bool)

(assert (=> b!7894657 (= c!1449216 ((_ is Star!21219) r!4885))))

(declare-fun b!7894658 () Bool)

(declare-fun e!4659999 () Bool)

(declare-fun call!732849 () Bool)

(assert (=> b!7894658 (= e!4659999 call!732849)))

(declare-fun bm!732844 () Bool)

(declare-fun c!1449217 () Bool)

(assert (=> bm!732844 (= call!732850 (validRegex!11629 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))))))

(declare-fun b!7894659 () Bool)

(declare-fun res!3132192 () Bool)

(declare-fun e!4659996 () Bool)

(assert (=> b!7894659 (=> res!3132192 e!4659996)))

(assert (=> b!7894659 (= res!3132192 (not ((_ is Concat!30064) r!4885)))))

(declare-fun e!4660001 () Bool)

(assert (=> b!7894659 (= e!4660001 e!4659996)))

(declare-fun b!7894660 () Bool)

(declare-fun e!4660000 () Bool)

(assert (=> b!7894660 (= e!4660000 call!732849)))

(declare-fun b!7894661 () Bool)

(assert (=> b!7894661 (= e!4659996 e!4659999)))

(declare-fun res!3132189 () Bool)

(assert (=> b!7894661 (=> (not res!3132189) (not e!4659999))))

(declare-fun call!732851 () Bool)

(assert (=> b!7894661 (= res!3132189 call!732851)))

(declare-fun b!7894662 () Bool)

(declare-fun res!3132190 () Bool)

(assert (=> b!7894662 (=> (not res!3132190) (not e!4660000))))

(assert (=> b!7894662 (= res!3132190 call!732851)))

(assert (=> b!7894662 (= e!4660001 e!4660000)))

(declare-fun bm!732845 () Bool)

(assert (=> bm!732845 (= call!732851 (validRegex!11629 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))))))

(declare-fun b!7894663 () Bool)

(assert (=> b!7894663 (= e!4659995 e!4659997)))

(declare-fun res!3132191 () Bool)

(declare-fun nullable!9473 (Regex!21219) Bool)

(assert (=> b!7894663 (= res!3132191 (not (nullable!9473 (reg!21548 r!4885))))))

(assert (=> b!7894663 (=> (not res!3132191) (not e!4659997))))

(declare-fun b!7894664 () Bool)

(assert (=> b!7894664 (= e!4659995 e!4660001)))

(assert (=> b!7894664 (= c!1449217 ((_ is Union!21219) r!4885))))

(declare-fun d!2357268 () Bool)

(declare-fun res!3132188 () Bool)

(assert (=> d!2357268 (=> res!3132188 e!4659998)))

(assert (=> d!2357268 (= res!3132188 ((_ is ElementMatch!21219) r!4885))))

(assert (=> d!2357268 (= (validRegex!11629 r!4885) e!4659998)))

(declare-fun bm!732846 () Bool)

(assert (=> bm!732846 (= call!732849 call!732850)))

(assert (= (and d!2357268 (not res!3132188)) b!7894657))

(assert (= (and b!7894657 c!1449216) b!7894663))

(assert (= (and b!7894657 (not c!1449216)) b!7894664))

(assert (= (and b!7894663 res!3132191) b!7894656))

(assert (= (and b!7894664 c!1449217) b!7894662))

(assert (= (and b!7894664 (not c!1449217)) b!7894659))

(assert (= (and b!7894662 res!3132190) b!7894660))

(assert (= (and b!7894659 (not res!3132192)) b!7894661))

(assert (= (and b!7894661 res!3132189) b!7894658))

(assert (= (or b!7894660 b!7894658) bm!732846))

(assert (= (or b!7894662 b!7894661) bm!732845))

(assert (= (or b!7894656 bm!732846) bm!732844))

(declare-fun m!8271604 () Bool)

(assert (=> bm!732844 m!8271604))

(declare-fun m!8271606 () Bool)

(assert (=> bm!732845 m!8271606))

(declare-fun m!8271608 () Bool)

(assert (=> b!7894663 m!8271608))

(assert (=> start!744646 d!2357268))

(declare-fun d!2357276 () Bool)

(declare-fun lt!2681656 () Regex!21219)

(assert (=> d!2357276 (validRegex!11629 lt!2681656)))

(declare-fun generalisedUnion!2784 (List!74077) Regex!21219)

(declare-fun unfocusZipperList!2340 (List!74078) List!74077)

(assert (=> d!2357276 (= lt!2681656 (generalisedUnion!2784 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))))

(assert (=> d!2357276 (= (unfocusZipper!2631 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))) lt!2681656)))

(declare-fun bs!1967700 () Bool)

(assert (= bs!1967700 d!2357276))

(declare-fun m!8271610 () Bool)

(assert (=> bs!1967700 m!8271610))

(assert (=> bs!1967700 m!8271588))

(declare-fun m!8271612 () Bool)

(assert (=> bs!1967700 m!8271612))

(assert (=> bs!1967700 m!8271612))

(declare-fun m!8271614 () Bool)

(assert (=> bs!1967700 m!8271614))

(assert (=> b!7894634 d!2357276))

(declare-fun d!2357278 () Bool)

(declare-fun e!4660025 () Bool)

(assert (=> d!2357278 e!4660025))

(declare-fun res!3132210 () Bool)

(assert (=> d!2357278 (=> (not res!3132210) (not e!4660025))))

(declare-fun lt!2681659 () List!74078)

(declare-fun noDuplicate!3164 (List!74078) Bool)

(assert (=> d!2357278 (= res!3132210 (noDuplicate!3164 lt!2681659))))

(declare-fun choose!59701 ((InoxSet Context!17070)) List!74078)

(assert (=> d!2357278 (= lt!2681659 (choose!59701 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))

(assert (=> d!2357278 (= (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)) lt!2681659)))

(declare-fun b!7894694 () Bool)

(declare-fun content!15701 (List!74078) (InoxSet Context!17070))

(assert (=> b!7894694 (= e!4660025 (= (content!15701 lt!2681659) (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))

(assert (= (and d!2357278 res!3132210) b!7894694))

(declare-fun m!8271616 () Bool)

(assert (=> d!2357278 m!8271616))

(assert (=> d!2357278 m!8271586))

(declare-fun m!8271618 () Bool)

(assert (=> d!2357278 m!8271618))

(declare-fun m!8271620 () Bool)

(assert (=> b!7894694 m!8271620))

(assert (=> b!7894634 d!2357278))

(declare-fun e!4660030 () Bool)

(assert (=> b!7894631 (= tp!2350854 e!4660030)))

(declare-fun b!7894715 () Bool)

(assert (=> b!7894715 (= e!4660030 tp_is_empty!52837)))

(declare-fun b!7894718 () Bool)

(declare-fun tp!2350878 () Bool)

(declare-fun tp!2350877 () Bool)

(assert (=> b!7894718 (= e!4660030 (and tp!2350878 tp!2350877))))

(declare-fun b!7894717 () Bool)

(declare-fun tp!2350880 () Bool)

(assert (=> b!7894717 (= e!4660030 tp!2350880)))

(declare-fun b!7894716 () Bool)

(declare-fun tp!2350881 () Bool)

(declare-fun tp!2350879 () Bool)

(assert (=> b!7894716 (= e!4660030 (and tp!2350881 tp!2350879))))

(assert (= (and b!7894631 ((_ is ElementMatch!21219) (regOne!42951 r!4885))) b!7894715))

(assert (= (and b!7894631 ((_ is Concat!30064) (regOne!42951 r!4885))) b!7894716))

(assert (= (and b!7894631 ((_ is Star!21219) (regOne!42951 r!4885))) b!7894717))

(assert (= (and b!7894631 ((_ is Union!21219) (regOne!42951 r!4885))) b!7894718))

(declare-fun e!4660031 () Bool)

(assert (=> b!7894631 (= tp!2350855 e!4660031)))

(declare-fun b!7894719 () Bool)

(assert (=> b!7894719 (= e!4660031 tp_is_empty!52837)))

(declare-fun b!7894722 () Bool)

(declare-fun tp!2350883 () Bool)

(declare-fun tp!2350882 () Bool)

(assert (=> b!7894722 (= e!4660031 (and tp!2350883 tp!2350882))))

(declare-fun b!7894721 () Bool)

(declare-fun tp!2350885 () Bool)

(assert (=> b!7894721 (= e!4660031 tp!2350885)))

(declare-fun b!7894720 () Bool)

(declare-fun tp!2350886 () Bool)

(declare-fun tp!2350884 () Bool)

(assert (=> b!7894720 (= e!4660031 (and tp!2350886 tp!2350884))))

(assert (= (and b!7894631 ((_ is ElementMatch!21219) (regTwo!42951 r!4885))) b!7894719))

(assert (= (and b!7894631 ((_ is Concat!30064) (regTwo!42951 r!4885))) b!7894720))

(assert (= (and b!7894631 ((_ is Star!21219) (regTwo!42951 r!4885))) b!7894721))

(assert (= (and b!7894631 ((_ is Union!21219) (regTwo!42951 r!4885))) b!7894722))

(declare-fun e!4660033 () Bool)

(assert (=> b!7894630 (= tp!2350856 e!4660033)))

(declare-fun b!7894727 () Bool)

(assert (=> b!7894727 (= e!4660033 tp_is_empty!52837)))

(declare-fun b!7894730 () Bool)

(declare-fun tp!2350893 () Bool)

(declare-fun tp!2350892 () Bool)

(assert (=> b!7894730 (= e!4660033 (and tp!2350893 tp!2350892))))

(declare-fun b!7894729 () Bool)

(declare-fun tp!2350895 () Bool)

(assert (=> b!7894729 (= e!4660033 tp!2350895)))

(declare-fun b!7894728 () Bool)

(declare-fun tp!2350896 () Bool)

(declare-fun tp!2350894 () Bool)

(assert (=> b!7894728 (= e!4660033 (and tp!2350896 tp!2350894))))

(assert (= (and b!7894630 ((_ is ElementMatch!21219) (regOne!42950 r!4885))) b!7894727))

(assert (= (and b!7894630 ((_ is Concat!30064) (regOne!42950 r!4885))) b!7894728))

(assert (= (and b!7894630 ((_ is Star!21219) (regOne!42950 r!4885))) b!7894729))

(assert (= (and b!7894630 ((_ is Union!21219) (regOne!42950 r!4885))) b!7894730))

(declare-fun e!4660035 () Bool)

(assert (=> b!7894630 (= tp!2350852 e!4660035)))

(declare-fun b!7894735 () Bool)

(assert (=> b!7894735 (= e!4660035 tp_is_empty!52837)))

(declare-fun b!7894738 () Bool)

(declare-fun tp!2350903 () Bool)

(declare-fun tp!2350902 () Bool)

(assert (=> b!7894738 (= e!4660035 (and tp!2350903 tp!2350902))))

(declare-fun b!7894737 () Bool)

(declare-fun tp!2350905 () Bool)

(assert (=> b!7894737 (= e!4660035 tp!2350905)))

(declare-fun b!7894736 () Bool)

(declare-fun tp!2350906 () Bool)

(declare-fun tp!2350904 () Bool)

(assert (=> b!7894736 (= e!4660035 (and tp!2350906 tp!2350904))))

(assert (= (and b!7894630 ((_ is ElementMatch!21219) (regTwo!42950 r!4885))) b!7894735))

(assert (= (and b!7894630 ((_ is Concat!30064) (regTwo!42950 r!4885))) b!7894736))

(assert (= (and b!7894630 ((_ is Star!21219) (regTwo!42950 r!4885))) b!7894737))

(assert (= (and b!7894630 ((_ is Union!21219) (regTwo!42950 r!4885))) b!7894738))

(declare-fun e!4660037 () Bool)

(assert (=> b!7894632 (= tp!2350853 e!4660037)))

(declare-fun b!7894743 () Bool)

(assert (=> b!7894743 (= e!4660037 tp_is_empty!52837)))

(declare-fun b!7894746 () Bool)

(declare-fun tp!2350913 () Bool)

(declare-fun tp!2350912 () Bool)

(assert (=> b!7894746 (= e!4660037 (and tp!2350913 tp!2350912))))

(declare-fun b!7894745 () Bool)

(declare-fun tp!2350915 () Bool)

(assert (=> b!7894745 (= e!4660037 tp!2350915)))

(declare-fun b!7894744 () Bool)

(declare-fun tp!2350916 () Bool)

(declare-fun tp!2350914 () Bool)

(assert (=> b!7894744 (= e!4660037 (and tp!2350916 tp!2350914))))

(assert (= (and b!7894632 ((_ is ElementMatch!21219) (reg!21548 r!4885))) b!7894743))

(assert (= (and b!7894632 ((_ is Concat!30064) (reg!21548 r!4885))) b!7894744))

(assert (= (and b!7894632 ((_ is Star!21219) (reg!21548 r!4885))) b!7894745))

(assert (= (and b!7894632 ((_ is Union!21219) (reg!21548 r!4885))) b!7894746))

(check-sat (not b!7894721) (not b!7894718) (not b!7894738) (not b!7894728) (not b!7894745) (not b!7894694) (not b!7894736) (not b!7894730) (not b!7894717) (not b!7894716) (not b!7894663) (not bm!732845) (not b!7894720) (not d!2357278) (not b!7894722) (not bm!732844) (not b!7894737) (not b!7894729) (not b!7894744) (not b!7894746) tp_is_empty!52837 (not d!2357276))
(check-sat)
(get-model)

(declare-fun d!2357280 () Bool)

(declare-fun c!1449226 () Bool)

(assert (=> d!2357280 (= c!1449226 ((_ is Nil!73954) lt!2681659))))

(declare-fun e!4660042 () (InoxSet Context!17070))

(assert (=> d!2357280 (= (content!15701 lt!2681659) e!4660042)))

(declare-fun b!7894759 () Bool)

(assert (=> b!7894759 (= e!4660042 ((as const (Array Context!17070 Bool)) false))))

(declare-fun b!7894760 () Bool)

(assert (=> b!7894760 (= e!4660042 ((_ map or) (store ((as const (Array Context!17070 Bool)) false) (h!80402 lt!2681659) true) (content!15701 (t!388813 lt!2681659))))))

(assert (= (and d!2357280 c!1449226) b!7894759))

(assert (= (and d!2357280 (not c!1449226)) b!7894760))

(declare-fun m!8271628 () Bool)

(assert (=> b!7894760 m!8271628))

(declare-fun m!8271630 () Bool)

(assert (=> b!7894760 m!8271630))

(assert (=> b!7894694 d!2357280))

(declare-fun d!2357282 () Bool)

(declare-fun nullableFct!3743 (Regex!21219) Bool)

(assert (=> d!2357282 (= (nullable!9473 (reg!21548 r!4885)) (nullableFct!3743 (reg!21548 r!4885)))))

(declare-fun bs!1967701 () Bool)

(assert (= bs!1967701 d!2357282))

(declare-fun m!8271632 () Bool)

(assert (=> bs!1967701 m!8271632))

(assert (=> b!7894663 d!2357282))

(declare-fun d!2357284 () Bool)

(declare-fun res!3132215 () Bool)

(declare-fun e!4660047 () Bool)

(assert (=> d!2357284 (=> res!3132215 e!4660047)))

(assert (=> d!2357284 (= res!3132215 ((_ is Nil!73954) lt!2681659))))

(assert (=> d!2357284 (= (noDuplicate!3164 lt!2681659) e!4660047)))

(declare-fun b!7894765 () Bool)

(declare-fun e!4660048 () Bool)

(assert (=> b!7894765 (= e!4660047 e!4660048)))

(declare-fun res!3132216 () Bool)

(assert (=> b!7894765 (=> (not res!3132216) (not e!4660048))))

(declare-fun contains!20881 (List!74078 Context!17070) Bool)

(assert (=> b!7894765 (= res!3132216 (not (contains!20881 (t!388813 lt!2681659) (h!80402 lt!2681659))))))

(declare-fun b!7894766 () Bool)

(assert (=> b!7894766 (= e!4660048 (noDuplicate!3164 (t!388813 lt!2681659)))))

(assert (= (and d!2357284 (not res!3132215)) b!7894765))

(assert (= (and b!7894765 res!3132216) b!7894766))

(declare-fun m!8271634 () Bool)

(assert (=> b!7894765 m!8271634))

(declare-fun m!8271636 () Bool)

(assert (=> b!7894766 m!8271636))

(assert (=> d!2357278 d!2357284))

(declare-fun d!2357286 () Bool)

(declare-fun e!4660056 () Bool)

(assert (=> d!2357286 e!4660056))

(declare-fun res!3132222 () Bool)

(assert (=> d!2357286 (=> (not res!3132222) (not e!4660056))))

(declare-fun res!3132221 () List!74078)

(assert (=> d!2357286 (= res!3132222 (noDuplicate!3164 res!3132221))))

(declare-fun e!4660057 () Bool)

(assert (=> d!2357286 e!4660057))

(assert (=> d!2357286 (= (choose!59701 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)) res!3132221)))

(declare-fun b!7894774 () Bool)

(declare-fun e!4660055 () Bool)

(declare-fun tp!2350931 () Bool)

(assert (=> b!7894774 (= e!4660055 tp!2350931)))

(declare-fun tp!2350932 () Bool)

(declare-fun b!7894773 () Bool)

(declare-fun inv!94936 (Context!17070) Bool)

(assert (=> b!7894773 (= e!4660057 (and (inv!94936 (h!80402 res!3132221)) e!4660055 tp!2350932))))

(declare-fun b!7894775 () Bool)

(assert (=> b!7894775 (= e!4660056 (= (content!15701 res!3132221) (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))

(assert (= b!7894773 b!7894774))

(assert (= (and d!2357286 ((_ is Cons!73954) res!3132221)) b!7894773))

(assert (= (and d!2357286 res!3132222) b!7894775))

(declare-fun m!8271638 () Bool)

(assert (=> d!2357286 m!8271638))

(declare-fun m!8271640 () Bool)

(assert (=> b!7894773 m!8271640))

(declare-fun m!8271642 () Bool)

(assert (=> b!7894775 m!8271642))

(assert (=> d!2357278 d!2357286))

(declare-fun b!7894776 () Bool)

(declare-fun e!4660060 () Bool)

(declare-fun call!732862 () Bool)

(assert (=> b!7894776 (= e!4660060 call!732862)))

(declare-fun b!7894777 () Bool)

(declare-fun e!4660061 () Bool)

(declare-fun e!4660058 () Bool)

(assert (=> b!7894777 (= e!4660061 e!4660058)))

(declare-fun c!1449227 () Bool)

(assert (=> b!7894777 (= c!1449227 ((_ is Star!21219) (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))))))

(declare-fun b!7894778 () Bool)

(declare-fun e!4660062 () Bool)

(declare-fun call!732861 () Bool)

(assert (=> b!7894778 (= e!4660062 call!732861)))

(declare-fun bm!732856 () Bool)

(declare-fun c!1449228 () Bool)

(assert (=> bm!732856 (= call!732862 (validRegex!11629 (ite c!1449227 (reg!21548 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (ite c!1449228 (regTwo!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regTwo!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885)))))))))

(declare-fun b!7894779 () Bool)

(declare-fun res!3132227 () Bool)

(declare-fun e!4660059 () Bool)

(assert (=> b!7894779 (=> res!3132227 e!4660059)))

(assert (=> b!7894779 (= res!3132227 (not ((_ is Concat!30064) (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885)))))))

(declare-fun e!4660064 () Bool)

(assert (=> b!7894779 (= e!4660064 e!4660059)))

(declare-fun b!7894780 () Bool)

(declare-fun e!4660063 () Bool)

(assert (=> b!7894780 (= e!4660063 call!732861)))

(declare-fun b!7894781 () Bool)

(assert (=> b!7894781 (= e!4660059 e!4660062)))

(declare-fun res!3132224 () Bool)

(assert (=> b!7894781 (=> (not res!3132224) (not e!4660062))))

(declare-fun call!732863 () Bool)

(assert (=> b!7894781 (= res!3132224 call!732863)))

(declare-fun b!7894782 () Bool)

(declare-fun res!3132225 () Bool)

(assert (=> b!7894782 (=> (not res!3132225) (not e!4660063))))

(assert (=> b!7894782 (= res!3132225 call!732863)))

(assert (=> b!7894782 (= e!4660064 e!4660063)))

(declare-fun bm!732857 () Bool)

(assert (=> bm!732857 (= call!732863 (validRegex!11629 (ite c!1449228 (regOne!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regOne!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))))))))

(declare-fun b!7894783 () Bool)

(assert (=> b!7894783 (= e!4660058 e!4660060)))

(declare-fun res!3132226 () Bool)

(assert (=> b!7894783 (= res!3132226 (not (nullable!9473 (reg!21548 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))))))))

(assert (=> b!7894783 (=> (not res!3132226) (not e!4660060))))

(declare-fun b!7894784 () Bool)

(assert (=> b!7894784 (= e!4660058 e!4660064)))

(assert (=> b!7894784 (= c!1449228 ((_ is Union!21219) (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))))))

(declare-fun d!2357288 () Bool)

(declare-fun res!3132223 () Bool)

(assert (=> d!2357288 (=> res!3132223 e!4660061)))

(assert (=> d!2357288 (= res!3132223 ((_ is ElementMatch!21219) (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))))))

(assert (=> d!2357288 (= (validRegex!11629 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) e!4660061)))

(declare-fun bm!732858 () Bool)

(assert (=> bm!732858 (= call!732861 call!732862)))

(assert (= (and d!2357288 (not res!3132223)) b!7894777))

(assert (= (and b!7894777 c!1449227) b!7894783))

(assert (= (and b!7894777 (not c!1449227)) b!7894784))

(assert (= (and b!7894783 res!3132226) b!7894776))

(assert (= (and b!7894784 c!1449228) b!7894782))

(assert (= (and b!7894784 (not c!1449228)) b!7894779))

(assert (= (and b!7894782 res!3132225) b!7894780))

(assert (= (and b!7894779 (not res!3132227)) b!7894781))

(assert (= (and b!7894781 res!3132224) b!7894778))

(assert (= (or b!7894780 b!7894778) bm!732858))

(assert (= (or b!7894782 b!7894781) bm!732857))

(assert (= (or b!7894776 bm!732858) bm!732856))

(declare-fun m!8271644 () Bool)

(assert (=> bm!732856 m!8271644))

(declare-fun m!8271646 () Bool)

(assert (=> bm!732857 m!8271646))

(declare-fun m!8271648 () Bool)

(assert (=> b!7894783 m!8271648))

(assert (=> bm!732845 d!2357288))

(declare-fun b!7894785 () Bool)

(declare-fun e!4660067 () Bool)

(declare-fun call!732865 () Bool)

(assert (=> b!7894785 (= e!4660067 call!732865)))

(declare-fun b!7894786 () Bool)

(declare-fun e!4660068 () Bool)

(declare-fun e!4660065 () Bool)

(assert (=> b!7894786 (= e!4660068 e!4660065)))

(declare-fun c!1449229 () Bool)

(assert (=> b!7894786 (= c!1449229 ((_ is Star!21219) lt!2681656))))

(declare-fun b!7894787 () Bool)

(declare-fun e!4660069 () Bool)

(declare-fun call!732864 () Bool)

(assert (=> b!7894787 (= e!4660069 call!732864)))

(declare-fun c!1449230 () Bool)

(declare-fun bm!732859 () Bool)

(assert (=> bm!732859 (= call!732865 (validRegex!11629 (ite c!1449229 (reg!21548 lt!2681656) (ite c!1449230 (regTwo!42951 lt!2681656) (regTwo!42950 lt!2681656)))))))

(declare-fun b!7894788 () Bool)

(declare-fun res!3132232 () Bool)

(declare-fun e!4660066 () Bool)

(assert (=> b!7894788 (=> res!3132232 e!4660066)))

(assert (=> b!7894788 (= res!3132232 (not ((_ is Concat!30064) lt!2681656)))))

(declare-fun e!4660071 () Bool)

(assert (=> b!7894788 (= e!4660071 e!4660066)))

(declare-fun b!7894789 () Bool)

(declare-fun e!4660070 () Bool)

(assert (=> b!7894789 (= e!4660070 call!732864)))

(declare-fun b!7894790 () Bool)

(assert (=> b!7894790 (= e!4660066 e!4660069)))

(declare-fun res!3132229 () Bool)

(assert (=> b!7894790 (=> (not res!3132229) (not e!4660069))))

(declare-fun call!732866 () Bool)

(assert (=> b!7894790 (= res!3132229 call!732866)))

(declare-fun b!7894791 () Bool)

(declare-fun res!3132230 () Bool)

(assert (=> b!7894791 (=> (not res!3132230) (not e!4660070))))

(assert (=> b!7894791 (= res!3132230 call!732866)))

(assert (=> b!7894791 (= e!4660071 e!4660070)))

(declare-fun bm!732860 () Bool)

(assert (=> bm!732860 (= call!732866 (validRegex!11629 (ite c!1449230 (regOne!42951 lt!2681656) (regOne!42950 lt!2681656))))))

(declare-fun b!7894792 () Bool)

(assert (=> b!7894792 (= e!4660065 e!4660067)))

(declare-fun res!3132231 () Bool)

(assert (=> b!7894792 (= res!3132231 (not (nullable!9473 (reg!21548 lt!2681656))))))

(assert (=> b!7894792 (=> (not res!3132231) (not e!4660067))))

(declare-fun b!7894793 () Bool)

(assert (=> b!7894793 (= e!4660065 e!4660071)))

(assert (=> b!7894793 (= c!1449230 ((_ is Union!21219) lt!2681656))))

(declare-fun d!2357290 () Bool)

(declare-fun res!3132228 () Bool)

(assert (=> d!2357290 (=> res!3132228 e!4660068)))

(assert (=> d!2357290 (= res!3132228 ((_ is ElementMatch!21219) lt!2681656))))

(assert (=> d!2357290 (= (validRegex!11629 lt!2681656) e!4660068)))

(declare-fun bm!732861 () Bool)

(assert (=> bm!732861 (= call!732864 call!732865)))

(assert (= (and d!2357290 (not res!3132228)) b!7894786))

(assert (= (and b!7894786 c!1449229) b!7894792))

(assert (= (and b!7894786 (not c!1449229)) b!7894793))

(assert (= (and b!7894792 res!3132231) b!7894785))

(assert (= (and b!7894793 c!1449230) b!7894791))

(assert (= (and b!7894793 (not c!1449230)) b!7894788))

(assert (= (and b!7894791 res!3132230) b!7894789))

(assert (= (and b!7894788 (not res!3132232)) b!7894790))

(assert (= (and b!7894790 res!3132229) b!7894787))

(assert (= (or b!7894789 b!7894787) bm!732861))

(assert (= (or b!7894791 b!7894790) bm!732860))

(assert (= (or b!7894785 bm!732861) bm!732859))

(declare-fun m!8271650 () Bool)

(assert (=> bm!732859 m!8271650))

(declare-fun m!8271652 () Bool)

(assert (=> bm!732860 m!8271652))

(declare-fun m!8271654 () Bool)

(assert (=> b!7894792 m!8271654))

(assert (=> d!2357276 d!2357290))

(declare-fun b!7894847 () Bool)

(declare-fun e!4660113 () Bool)

(declare-fun lt!2681662 () Regex!21219)

(declare-fun isUnion!1587 (Regex!21219) Bool)

(assert (=> b!7894847 (= e!4660113 (isUnion!1587 lt!2681662))))

(declare-fun d!2357292 () Bool)

(declare-fun e!4660111 () Bool)

(assert (=> d!2357292 e!4660111))

(declare-fun res!3132253 () Bool)

(assert (=> d!2357292 (=> (not res!3132253) (not e!4660111))))

(assert (=> d!2357292 (= res!3132253 (validRegex!11629 lt!2681662))))

(declare-fun e!4660109 () Regex!21219)

(assert (=> d!2357292 (= lt!2681662 e!4660109)))

(declare-fun c!1449251 () Bool)

(declare-fun e!4660108 () Bool)

(assert (=> d!2357292 (= c!1449251 e!4660108)))

(declare-fun res!3132252 () Bool)

(assert (=> d!2357292 (=> (not res!3132252) (not e!4660108))))

(assert (=> d!2357292 (= res!3132252 ((_ is Cons!73953) (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))))

(declare-fun lambda!472218 () Int)

(declare-fun forall!18419 (List!74077 Int) Bool)

(assert (=> d!2357292 (forall!18419 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))) lambda!472218)))

(assert (=> d!2357292 (= (generalisedUnion!2784 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))) lt!2681662)))

(declare-fun b!7894848 () Bool)

(declare-fun e!4660110 () Regex!21219)

(assert (=> b!7894848 (= e!4660110 EmptyLang!21219)))

(declare-fun b!7894849 () Bool)

(declare-fun e!4660112 () Bool)

(assert (=> b!7894849 (= e!4660111 e!4660112)))

(declare-fun c!1449248 () Bool)

(declare-fun isEmpty!42432 (List!74077) Bool)

(assert (=> b!7894849 (= c!1449248 (isEmpty!42432 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))))

(declare-fun b!7894850 () Bool)

(assert (=> b!7894850 (= e!4660110 (Union!21219 (h!80401 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))) (generalisedUnion!2784 (t!388812 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))))))

(declare-fun b!7894851 () Bool)

(assert (=> b!7894851 (= e!4660108 (isEmpty!42432 (t!388812 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))))))

(declare-fun b!7894852 () Bool)

(declare-fun isEmptyLang!2159 (Regex!21219) Bool)

(assert (=> b!7894852 (= e!4660112 (isEmptyLang!2159 lt!2681662))))

(declare-fun b!7894853 () Bool)

(assert (=> b!7894853 (= e!4660109 (h!80401 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))))

(declare-fun b!7894854 () Bool)

(declare-fun head!16128 (List!74077) Regex!21219)

(assert (=> b!7894854 (= e!4660113 (= lt!2681662 (head!16128 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))))))

(declare-fun b!7894855 () Bool)

(assert (=> b!7894855 (= e!4660109 e!4660110)))

(declare-fun c!1449250 () Bool)

(assert (=> b!7894855 (= c!1449250 ((_ is Cons!73953) (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))))

(declare-fun b!7894856 () Bool)

(assert (=> b!7894856 (= e!4660112 e!4660113)))

(declare-fun c!1449249 () Bool)

(declare-fun tail!15671 (List!74077) List!74077)

(assert (=> b!7894856 (= c!1449249 (isEmpty!42432 (tail!15671 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))))))

(assert (= (and d!2357292 res!3132252) b!7894851))

(assert (= (and d!2357292 c!1449251) b!7894853))

(assert (= (and d!2357292 (not c!1449251)) b!7894855))

(assert (= (and b!7894855 c!1449250) b!7894850))

(assert (= (and b!7894855 (not c!1449250)) b!7894848))

(assert (= (and d!2357292 res!3132253) b!7894849))

(assert (= (and b!7894849 c!1449248) b!7894852))

(assert (= (and b!7894849 (not c!1449248)) b!7894856))

(assert (= (and b!7894856 c!1449249) b!7894854))

(assert (= (and b!7894856 (not c!1449249)) b!7894847))

(declare-fun m!8271680 () Bool)

(assert (=> b!7894851 m!8271680))

(declare-fun m!8271682 () Bool)

(assert (=> b!7894852 m!8271682))

(assert (=> b!7894856 m!8271612))

(declare-fun m!8271684 () Bool)

(assert (=> b!7894856 m!8271684))

(assert (=> b!7894856 m!8271684))

(declare-fun m!8271686 () Bool)

(assert (=> b!7894856 m!8271686))

(declare-fun m!8271688 () Bool)

(assert (=> b!7894850 m!8271688))

(declare-fun m!8271690 () Bool)

(assert (=> d!2357292 m!8271690))

(assert (=> d!2357292 m!8271612))

(declare-fun m!8271692 () Bool)

(assert (=> d!2357292 m!8271692))

(assert (=> b!7894854 m!8271612))

(declare-fun m!8271694 () Bool)

(assert (=> b!7894854 m!8271694))

(declare-fun m!8271696 () Bool)

(assert (=> b!7894847 m!8271696))

(assert (=> b!7894849 m!8271612))

(declare-fun m!8271698 () Bool)

(assert (=> b!7894849 m!8271698))

(assert (=> d!2357276 d!2357292))

(declare-fun bs!1967703 () Bool)

(declare-fun d!2357306 () Bool)

(assert (= bs!1967703 (and d!2357306 d!2357292)))

(declare-fun lambda!472223 () Int)

(assert (=> bs!1967703 (= lambda!472223 lambda!472218)))

(declare-fun lt!2681667 () List!74077)

(assert (=> d!2357306 (forall!18419 lt!2681667 lambda!472223)))

(declare-fun e!4660128 () List!74077)

(assert (=> d!2357306 (= lt!2681667 e!4660128)))

(declare-fun c!1449262 () Bool)

(assert (=> d!2357306 (= c!1449262 ((_ is Cons!73954) (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))))

(assert (=> d!2357306 (= (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))) lt!2681667)))

(declare-fun b!7894881 () Bool)

(declare-fun generalisedConcat!2469 (List!74077) Regex!21219)

(assert (=> b!7894881 (= e!4660128 (Cons!73953 (generalisedConcat!2469 (exprs!9035 (h!80402 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))) (unfocusZipperList!2340 (t!388813 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))))))

(declare-fun b!7894882 () Bool)

(assert (=> b!7894882 (= e!4660128 Nil!73953)))

(assert (= (and d!2357306 c!1449262) b!7894881))

(assert (= (and d!2357306 (not c!1449262)) b!7894882))

(declare-fun m!8271700 () Bool)

(assert (=> d!2357306 m!8271700))

(declare-fun m!8271702 () Bool)

(assert (=> b!7894881 m!8271702))

(declare-fun m!8271704 () Bool)

(assert (=> b!7894881 m!8271704))

(assert (=> d!2357276 d!2357306))

(declare-fun b!7894883 () Bool)

(declare-fun e!4660131 () Bool)

(declare-fun call!732877 () Bool)

(assert (=> b!7894883 (= e!4660131 call!732877)))

(declare-fun b!7894884 () Bool)

(declare-fun e!4660132 () Bool)

(declare-fun e!4660129 () Bool)

(assert (=> b!7894884 (= e!4660132 e!4660129)))

(declare-fun c!1449263 () Bool)

(assert (=> b!7894884 (= c!1449263 ((_ is Star!21219) (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))))))

(declare-fun b!7894885 () Bool)

(declare-fun e!4660133 () Bool)

(declare-fun call!732876 () Bool)

(assert (=> b!7894885 (= e!4660133 call!732876)))

(declare-fun c!1449264 () Bool)

(declare-fun bm!732871 () Bool)

(assert (=> bm!732871 (= call!732877 (validRegex!11629 (ite c!1449263 (reg!21548 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (ite c!1449264 (regTwo!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regTwo!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885))))))))))

(declare-fun b!7894886 () Bool)

(declare-fun res!3132262 () Bool)

(declare-fun e!4660130 () Bool)

(assert (=> b!7894886 (=> res!3132262 e!4660130)))

(assert (=> b!7894886 (= res!3132262 (not ((_ is Concat!30064) (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885))))))))

(declare-fun e!4660135 () Bool)

(assert (=> b!7894886 (= e!4660135 e!4660130)))

(declare-fun b!7894887 () Bool)

(declare-fun e!4660134 () Bool)

(assert (=> b!7894887 (= e!4660134 call!732876)))

(declare-fun b!7894888 () Bool)

(assert (=> b!7894888 (= e!4660130 e!4660133)))

(declare-fun res!3132259 () Bool)

(assert (=> b!7894888 (=> (not res!3132259) (not e!4660133))))

(declare-fun call!732878 () Bool)

(assert (=> b!7894888 (= res!3132259 call!732878)))

(declare-fun b!7894889 () Bool)

(declare-fun res!3132260 () Bool)

(assert (=> b!7894889 (=> (not res!3132260) (not e!4660134))))

(assert (=> b!7894889 (= res!3132260 call!732878)))

(assert (=> b!7894889 (= e!4660135 e!4660134)))

(declare-fun bm!732872 () Bool)

(assert (=> bm!732872 (= call!732878 (validRegex!11629 (ite c!1449264 (regOne!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regOne!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))))))))

(declare-fun b!7894890 () Bool)

(assert (=> b!7894890 (= e!4660129 e!4660131)))

(declare-fun res!3132261 () Bool)

(assert (=> b!7894890 (= res!3132261 (not (nullable!9473 (reg!21548 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))))))))

(assert (=> b!7894890 (=> (not res!3132261) (not e!4660131))))

(declare-fun b!7894891 () Bool)

(assert (=> b!7894891 (= e!4660129 e!4660135)))

(assert (=> b!7894891 (= c!1449264 ((_ is Union!21219) (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))))))

(declare-fun d!2357308 () Bool)

(declare-fun res!3132258 () Bool)

(assert (=> d!2357308 (=> res!3132258 e!4660132)))

(assert (=> d!2357308 (= res!3132258 ((_ is ElementMatch!21219) (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))))))

(assert (=> d!2357308 (= (validRegex!11629 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) e!4660132)))

(declare-fun bm!732873 () Bool)

(assert (=> bm!732873 (= call!732876 call!732877)))

(assert (= (and d!2357308 (not res!3132258)) b!7894884))

(assert (= (and b!7894884 c!1449263) b!7894890))

(assert (= (and b!7894884 (not c!1449263)) b!7894891))

(assert (= (and b!7894890 res!3132261) b!7894883))

(assert (= (and b!7894891 c!1449264) b!7894889))

(assert (= (and b!7894891 (not c!1449264)) b!7894886))

(assert (= (and b!7894889 res!3132260) b!7894887))

(assert (= (and b!7894886 (not res!3132262)) b!7894888))

(assert (= (and b!7894888 res!3132259) b!7894885))

(assert (= (or b!7894887 b!7894885) bm!732873))

(assert (= (or b!7894889 b!7894888) bm!732872))

(assert (= (or b!7894883 bm!732873) bm!732871))

(declare-fun m!8271706 () Bool)

(assert (=> bm!732871 m!8271706))

(declare-fun m!8271708 () Bool)

(assert (=> bm!732872 m!8271708))

(declare-fun m!8271710 () Bool)

(assert (=> b!7894890 m!8271710))

(assert (=> bm!732844 d!2357308))

(declare-fun e!4660136 () Bool)

(assert (=> b!7894718 (= tp!2350878 e!4660136)))

(declare-fun b!7894892 () Bool)

(assert (=> b!7894892 (= e!4660136 tp_is_empty!52837)))

(declare-fun b!7894895 () Bool)

(declare-fun tp!2350934 () Bool)

(declare-fun tp!2350933 () Bool)

(assert (=> b!7894895 (= e!4660136 (and tp!2350934 tp!2350933))))

(declare-fun b!7894894 () Bool)

(declare-fun tp!2350936 () Bool)

(assert (=> b!7894894 (= e!4660136 tp!2350936)))

(declare-fun b!7894893 () Bool)

(declare-fun tp!2350937 () Bool)

(declare-fun tp!2350935 () Bool)

(assert (=> b!7894893 (= e!4660136 (and tp!2350937 tp!2350935))))

(assert (= (and b!7894718 ((_ is ElementMatch!21219) (regOne!42951 (regOne!42951 r!4885)))) b!7894892))

(assert (= (and b!7894718 ((_ is Concat!30064) (regOne!42951 (regOne!42951 r!4885)))) b!7894893))

(assert (= (and b!7894718 ((_ is Star!21219) (regOne!42951 (regOne!42951 r!4885)))) b!7894894))

(assert (= (and b!7894718 ((_ is Union!21219) (regOne!42951 (regOne!42951 r!4885)))) b!7894895))

(declare-fun e!4660137 () Bool)

(assert (=> b!7894718 (= tp!2350877 e!4660137)))

(declare-fun b!7894896 () Bool)

(assert (=> b!7894896 (= e!4660137 tp_is_empty!52837)))

(declare-fun b!7894899 () Bool)

(declare-fun tp!2350939 () Bool)

(declare-fun tp!2350938 () Bool)

(assert (=> b!7894899 (= e!4660137 (and tp!2350939 tp!2350938))))

(declare-fun b!7894898 () Bool)

(declare-fun tp!2350941 () Bool)

(assert (=> b!7894898 (= e!4660137 tp!2350941)))

(declare-fun b!7894897 () Bool)

(declare-fun tp!2350942 () Bool)

(declare-fun tp!2350940 () Bool)

(assert (=> b!7894897 (= e!4660137 (and tp!2350942 tp!2350940))))

(assert (= (and b!7894718 ((_ is ElementMatch!21219) (regTwo!42951 (regOne!42951 r!4885)))) b!7894896))

(assert (= (and b!7894718 ((_ is Concat!30064) (regTwo!42951 (regOne!42951 r!4885)))) b!7894897))

(assert (= (and b!7894718 ((_ is Star!21219) (regTwo!42951 (regOne!42951 r!4885)))) b!7894898))

(assert (= (and b!7894718 ((_ is Union!21219) (regTwo!42951 (regOne!42951 r!4885)))) b!7894899))

(declare-fun e!4660138 () Bool)

(assert (=> b!7894721 (= tp!2350885 e!4660138)))

(declare-fun b!7894900 () Bool)

(assert (=> b!7894900 (= e!4660138 tp_is_empty!52837)))

(declare-fun b!7894903 () Bool)

(declare-fun tp!2350944 () Bool)

(declare-fun tp!2350943 () Bool)

(assert (=> b!7894903 (= e!4660138 (and tp!2350944 tp!2350943))))

(declare-fun b!7894902 () Bool)

(declare-fun tp!2350946 () Bool)

(assert (=> b!7894902 (= e!4660138 tp!2350946)))

(declare-fun b!7894901 () Bool)

(declare-fun tp!2350947 () Bool)

(declare-fun tp!2350945 () Bool)

(assert (=> b!7894901 (= e!4660138 (and tp!2350947 tp!2350945))))

(assert (= (and b!7894721 ((_ is ElementMatch!21219) (reg!21548 (regTwo!42951 r!4885)))) b!7894900))

(assert (= (and b!7894721 ((_ is Concat!30064) (reg!21548 (regTwo!42951 r!4885)))) b!7894901))

(assert (= (and b!7894721 ((_ is Star!21219) (reg!21548 (regTwo!42951 r!4885)))) b!7894902))

(assert (= (and b!7894721 ((_ is Union!21219) (reg!21548 (regTwo!42951 r!4885)))) b!7894903))

(declare-fun e!4660145 () Bool)

(assert (=> b!7894717 (= tp!2350880 e!4660145)))

(declare-fun b!7894914 () Bool)

(assert (=> b!7894914 (= e!4660145 tp_is_empty!52837)))

(declare-fun b!7894917 () Bool)

(declare-fun tp!2350949 () Bool)

(declare-fun tp!2350948 () Bool)

(assert (=> b!7894917 (= e!4660145 (and tp!2350949 tp!2350948))))

(declare-fun b!7894916 () Bool)

(declare-fun tp!2350951 () Bool)

(assert (=> b!7894916 (= e!4660145 tp!2350951)))

(declare-fun b!7894915 () Bool)

(declare-fun tp!2350952 () Bool)

(declare-fun tp!2350950 () Bool)

(assert (=> b!7894915 (= e!4660145 (and tp!2350952 tp!2350950))))

(assert (= (and b!7894717 ((_ is ElementMatch!21219) (reg!21548 (regOne!42951 r!4885)))) b!7894914))

(assert (= (and b!7894717 ((_ is Concat!30064) (reg!21548 (regOne!42951 r!4885)))) b!7894915))

(assert (= (and b!7894717 ((_ is Star!21219) (reg!21548 (regOne!42951 r!4885)))) b!7894916))

(assert (= (and b!7894717 ((_ is Union!21219) (reg!21548 (regOne!42951 r!4885)))) b!7894917))

(declare-fun e!4660146 () Bool)

(assert (=> b!7894722 (= tp!2350883 e!4660146)))

(declare-fun b!7894918 () Bool)

(assert (=> b!7894918 (= e!4660146 tp_is_empty!52837)))

(declare-fun b!7894921 () Bool)

(declare-fun tp!2350954 () Bool)

(declare-fun tp!2350953 () Bool)

(assert (=> b!7894921 (= e!4660146 (and tp!2350954 tp!2350953))))

(declare-fun b!7894920 () Bool)

(declare-fun tp!2350956 () Bool)

(assert (=> b!7894920 (= e!4660146 tp!2350956)))

(declare-fun b!7894919 () Bool)

(declare-fun tp!2350957 () Bool)

(declare-fun tp!2350955 () Bool)

(assert (=> b!7894919 (= e!4660146 (and tp!2350957 tp!2350955))))

(assert (= (and b!7894722 ((_ is ElementMatch!21219) (regOne!42951 (regTwo!42951 r!4885)))) b!7894918))

(assert (= (and b!7894722 ((_ is Concat!30064) (regOne!42951 (regTwo!42951 r!4885)))) b!7894919))

(assert (= (and b!7894722 ((_ is Star!21219) (regOne!42951 (regTwo!42951 r!4885)))) b!7894920))

(assert (= (and b!7894722 ((_ is Union!21219) (regOne!42951 (regTwo!42951 r!4885)))) b!7894921))

(declare-fun e!4660147 () Bool)

(assert (=> b!7894722 (= tp!2350882 e!4660147)))

(declare-fun b!7894922 () Bool)

(assert (=> b!7894922 (= e!4660147 tp_is_empty!52837)))

(declare-fun b!7894925 () Bool)

(declare-fun tp!2350959 () Bool)

(declare-fun tp!2350958 () Bool)

(assert (=> b!7894925 (= e!4660147 (and tp!2350959 tp!2350958))))

(declare-fun b!7894924 () Bool)

(declare-fun tp!2350961 () Bool)

(assert (=> b!7894924 (= e!4660147 tp!2350961)))

(declare-fun b!7894923 () Bool)

(declare-fun tp!2350962 () Bool)

(declare-fun tp!2350960 () Bool)

(assert (=> b!7894923 (= e!4660147 (and tp!2350962 tp!2350960))))

(assert (= (and b!7894722 ((_ is ElementMatch!21219) (regTwo!42951 (regTwo!42951 r!4885)))) b!7894922))

(assert (= (and b!7894722 ((_ is Concat!30064) (regTwo!42951 (regTwo!42951 r!4885)))) b!7894923))

(assert (= (and b!7894722 ((_ is Star!21219) (regTwo!42951 (regTwo!42951 r!4885)))) b!7894924))

(assert (= (and b!7894722 ((_ is Union!21219) (regTwo!42951 (regTwo!42951 r!4885)))) b!7894925))

(declare-fun e!4660148 () Bool)

(assert (=> b!7894729 (= tp!2350895 e!4660148)))

(declare-fun b!7894926 () Bool)

(assert (=> b!7894926 (= e!4660148 tp_is_empty!52837)))

(declare-fun b!7894929 () Bool)

(declare-fun tp!2350964 () Bool)

(declare-fun tp!2350963 () Bool)

(assert (=> b!7894929 (= e!4660148 (and tp!2350964 tp!2350963))))

(declare-fun b!7894928 () Bool)

(declare-fun tp!2350966 () Bool)

(assert (=> b!7894928 (= e!4660148 tp!2350966)))

(declare-fun b!7894927 () Bool)

(declare-fun tp!2350967 () Bool)

(declare-fun tp!2350965 () Bool)

(assert (=> b!7894927 (= e!4660148 (and tp!2350967 tp!2350965))))

(assert (= (and b!7894729 ((_ is ElementMatch!21219) (reg!21548 (regOne!42950 r!4885)))) b!7894926))

(assert (= (and b!7894729 ((_ is Concat!30064) (reg!21548 (regOne!42950 r!4885)))) b!7894927))

(assert (= (and b!7894729 ((_ is Star!21219) (reg!21548 (regOne!42950 r!4885)))) b!7894928))

(assert (= (and b!7894729 ((_ is Union!21219) (reg!21548 (regOne!42950 r!4885)))) b!7894929))

(declare-fun e!4660149 () Bool)

(assert (=> b!7894720 (= tp!2350886 e!4660149)))

(declare-fun b!7894930 () Bool)

(assert (=> b!7894930 (= e!4660149 tp_is_empty!52837)))

(declare-fun b!7894933 () Bool)

(declare-fun tp!2350969 () Bool)

(declare-fun tp!2350968 () Bool)

(assert (=> b!7894933 (= e!4660149 (and tp!2350969 tp!2350968))))

(declare-fun b!7894932 () Bool)

(declare-fun tp!2350971 () Bool)

(assert (=> b!7894932 (= e!4660149 tp!2350971)))

(declare-fun b!7894931 () Bool)

(declare-fun tp!2350972 () Bool)

(declare-fun tp!2350970 () Bool)

(assert (=> b!7894931 (= e!4660149 (and tp!2350972 tp!2350970))))

(assert (= (and b!7894720 ((_ is ElementMatch!21219) (regOne!42950 (regTwo!42951 r!4885)))) b!7894930))

(assert (= (and b!7894720 ((_ is Concat!30064) (regOne!42950 (regTwo!42951 r!4885)))) b!7894931))

(assert (= (and b!7894720 ((_ is Star!21219) (regOne!42950 (regTwo!42951 r!4885)))) b!7894932))

(assert (= (and b!7894720 ((_ is Union!21219) (regOne!42950 (regTwo!42951 r!4885)))) b!7894933))

(declare-fun e!4660150 () Bool)

(assert (=> b!7894720 (= tp!2350884 e!4660150)))

(declare-fun b!7894934 () Bool)

(assert (=> b!7894934 (= e!4660150 tp_is_empty!52837)))

(declare-fun b!7894937 () Bool)

(declare-fun tp!2350974 () Bool)

(declare-fun tp!2350973 () Bool)

(assert (=> b!7894937 (= e!4660150 (and tp!2350974 tp!2350973))))

(declare-fun b!7894936 () Bool)

(declare-fun tp!2350976 () Bool)

(assert (=> b!7894936 (= e!4660150 tp!2350976)))

(declare-fun b!7894935 () Bool)

(declare-fun tp!2350977 () Bool)

(declare-fun tp!2350975 () Bool)

(assert (=> b!7894935 (= e!4660150 (and tp!2350977 tp!2350975))))

(assert (= (and b!7894720 ((_ is ElementMatch!21219) (regTwo!42950 (regTwo!42951 r!4885)))) b!7894934))

(assert (= (and b!7894720 ((_ is Concat!30064) (regTwo!42950 (regTwo!42951 r!4885)))) b!7894935))

(assert (= (and b!7894720 ((_ is Star!21219) (regTwo!42950 (regTwo!42951 r!4885)))) b!7894936))

(assert (= (and b!7894720 ((_ is Union!21219) (regTwo!42950 (regTwo!42951 r!4885)))) b!7894937))

(declare-fun e!4660151 () Bool)

(assert (=> b!7894716 (= tp!2350881 e!4660151)))

(declare-fun b!7894938 () Bool)

(assert (=> b!7894938 (= e!4660151 tp_is_empty!52837)))

(declare-fun b!7894941 () Bool)

(declare-fun tp!2350979 () Bool)

(declare-fun tp!2350978 () Bool)

(assert (=> b!7894941 (= e!4660151 (and tp!2350979 tp!2350978))))

(declare-fun b!7894940 () Bool)

(declare-fun tp!2350981 () Bool)

(assert (=> b!7894940 (= e!4660151 tp!2350981)))

(declare-fun b!7894939 () Bool)

(declare-fun tp!2350982 () Bool)

(declare-fun tp!2350980 () Bool)

(assert (=> b!7894939 (= e!4660151 (and tp!2350982 tp!2350980))))

(assert (= (and b!7894716 ((_ is ElementMatch!21219) (regOne!42950 (regOne!42951 r!4885)))) b!7894938))

(assert (= (and b!7894716 ((_ is Concat!30064) (regOne!42950 (regOne!42951 r!4885)))) b!7894939))

(assert (= (and b!7894716 ((_ is Star!21219) (regOne!42950 (regOne!42951 r!4885)))) b!7894940))

(assert (= (and b!7894716 ((_ is Union!21219) (regOne!42950 (regOne!42951 r!4885)))) b!7894941))

(declare-fun e!4660152 () Bool)

(assert (=> b!7894716 (= tp!2350879 e!4660152)))

(declare-fun b!7894942 () Bool)

(assert (=> b!7894942 (= e!4660152 tp_is_empty!52837)))

(declare-fun b!7894945 () Bool)

(declare-fun tp!2350984 () Bool)

(declare-fun tp!2350983 () Bool)

(assert (=> b!7894945 (= e!4660152 (and tp!2350984 tp!2350983))))

(declare-fun b!7894944 () Bool)

(declare-fun tp!2350986 () Bool)

(assert (=> b!7894944 (= e!4660152 tp!2350986)))

(declare-fun b!7894943 () Bool)

(declare-fun tp!2350987 () Bool)

(declare-fun tp!2350985 () Bool)

(assert (=> b!7894943 (= e!4660152 (and tp!2350987 tp!2350985))))

(assert (= (and b!7894716 ((_ is ElementMatch!21219) (regTwo!42950 (regOne!42951 r!4885)))) b!7894942))

(assert (= (and b!7894716 ((_ is Concat!30064) (regTwo!42950 (regOne!42951 r!4885)))) b!7894943))

(assert (= (and b!7894716 ((_ is Star!21219) (regTwo!42950 (regOne!42951 r!4885)))) b!7894944))

(assert (= (and b!7894716 ((_ is Union!21219) (regTwo!42950 (regOne!42951 r!4885)))) b!7894945))

(declare-fun e!4660153 () Bool)

(assert (=> b!7894730 (= tp!2350893 e!4660153)))

(declare-fun b!7894946 () Bool)

(assert (=> b!7894946 (= e!4660153 tp_is_empty!52837)))

(declare-fun b!7894949 () Bool)

(declare-fun tp!2350989 () Bool)

(declare-fun tp!2350988 () Bool)

(assert (=> b!7894949 (= e!4660153 (and tp!2350989 tp!2350988))))

(declare-fun b!7894948 () Bool)

(declare-fun tp!2350991 () Bool)

(assert (=> b!7894948 (= e!4660153 tp!2350991)))

(declare-fun b!7894947 () Bool)

(declare-fun tp!2350992 () Bool)

(declare-fun tp!2350990 () Bool)

(assert (=> b!7894947 (= e!4660153 (and tp!2350992 tp!2350990))))

(assert (= (and b!7894730 ((_ is ElementMatch!21219) (regOne!42951 (regOne!42950 r!4885)))) b!7894946))

(assert (= (and b!7894730 ((_ is Concat!30064) (regOne!42951 (regOne!42950 r!4885)))) b!7894947))

(assert (= (and b!7894730 ((_ is Star!21219) (regOne!42951 (regOne!42950 r!4885)))) b!7894948))

(assert (= (and b!7894730 ((_ is Union!21219) (regOne!42951 (regOne!42950 r!4885)))) b!7894949))

(declare-fun e!4660154 () Bool)

(assert (=> b!7894730 (= tp!2350892 e!4660154)))

(declare-fun b!7894950 () Bool)

(assert (=> b!7894950 (= e!4660154 tp_is_empty!52837)))

(declare-fun b!7894953 () Bool)

(declare-fun tp!2350994 () Bool)

(declare-fun tp!2350993 () Bool)

(assert (=> b!7894953 (= e!4660154 (and tp!2350994 tp!2350993))))

(declare-fun b!7894952 () Bool)

(declare-fun tp!2350996 () Bool)

(assert (=> b!7894952 (= e!4660154 tp!2350996)))

(declare-fun b!7894951 () Bool)

(declare-fun tp!2350997 () Bool)

(declare-fun tp!2350995 () Bool)

(assert (=> b!7894951 (= e!4660154 (and tp!2350997 tp!2350995))))

(assert (= (and b!7894730 ((_ is ElementMatch!21219) (regTwo!42951 (regOne!42950 r!4885)))) b!7894950))

(assert (= (and b!7894730 ((_ is Concat!30064) (regTwo!42951 (regOne!42950 r!4885)))) b!7894951))

(assert (= (and b!7894730 ((_ is Star!21219) (regTwo!42951 (regOne!42950 r!4885)))) b!7894952))

(assert (= (and b!7894730 ((_ is Union!21219) (regTwo!42951 (regOne!42950 r!4885)))) b!7894953))

(declare-fun e!4660155 () Bool)

(assert (=> b!7894737 (= tp!2350905 e!4660155)))

(declare-fun b!7894954 () Bool)

(assert (=> b!7894954 (= e!4660155 tp_is_empty!52837)))

(declare-fun b!7894957 () Bool)

(declare-fun tp!2350999 () Bool)

(declare-fun tp!2350998 () Bool)

(assert (=> b!7894957 (= e!4660155 (and tp!2350999 tp!2350998))))

(declare-fun b!7894956 () Bool)

(declare-fun tp!2351001 () Bool)

(assert (=> b!7894956 (= e!4660155 tp!2351001)))

(declare-fun b!7894955 () Bool)

(declare-fun tp!2351002 () Bool)

(declare-fun tp!2351000 () Bool)

(assert (=> b!7894955 (= e!4660155 (and tp!2351002 tp!2351000))))

(assert (= (and b!7894737 ((_ is ElementMatch!21219) (reg!21548 (regTwo!42950 r!4885)))) b!7894954))

(assert (= (and b!7894737 ((_ is Concat!30064) (reg!21548 (regTwo!42950 r!4885)))) b!7894955))

(assert (= (and b!7894737 ((_ is Star!21219) (reg!21548 (regTwo!42950 r!4885)))) b!7894956))

(assert (= (and b!7894737 ((_ is Union!21219) (reg!21548 (regTwo!42950 r!4885)))) b!7894957))

(declare-fun e!4660156 () Bool)

(assert (=> b!7894728 (= tp!2350896 e!4660156)))

(declare-fun b!7894958 () Bool)

(assert (=> b!7894958 (= e!4660156 tp_is_empty!52837)))

(declare-fun b!7894961 () Bool)

(declare-fun tp!2351004 () Bool)

(declare-fun tp!2351003 () Bool)

(assert (=> b!7894961 (= e!4660156 (and tp!2351004 tp!2351003))))

(declare-fun b!7894960 () Bool)

(declare-fun tp!2351006 () Bool)

(assert (=> b!7894960 (= e!4660156 tp!2351006)))

(declare-fun b!7894959 () Bool)

(declare-fun tp!2351007 () Bool)

(declare-fun tp!2351005 () Bool)

(assert (=> b!7894959 (= e!4660156 (and tp!2351007 tp!2351005))))

(assert (= (and b!7894728 ((_ is ElementMatch!21219) (regOne!42950 (regOne!42950 r!4885)))) b!7894958))

(assert (= (and b!7894728 ((_ is Concat!30064) (regOne!42950 (regOne!42950 r!4885)))) b!7894959))

(assert (= (and b!7894728 ((_ is Star!21219) (regOne!42950 (regOne!42950 r!4885)))) b!7894960))

(assert (= (and b!7894728 ((_ is Union!21219) (regOne!42950 (regOne!42950 r!4885)))) b!7894961))

(declare-fun e!4660157 () Bool)

(assert (=> b!7894728 (= tp!2350894 e!4660157)))

(declare-fun b!7894962 () Bool)

(assert (=> b!7894962 (= e!4660157 tp_is_empty!52837)))

(declare-fun b!7894965 () Bool)

(declare-fun tp!2351009 () Bool)

(declare-fun tp!2351008 () Bool)

(assert (=> b!7894965 (= e!4660157 (and tp!2351009 tp!2351008))))

(declare-fun b!7894964 () Bool)

(declare-fun tp!2351011 () Bool)

(assert (=> b!7894964 (= e!4660157 tp!2351011)))

(declare-fun b!7894963 () Bool)

(declare-fun tp!2351012 () Bool)

(declare-fun tp!2351010 () Bool)

(assert (=> b!7894963 (= e!4660157 (and tp!2351012 tp!2351010))))

(assert (= (and b!7894728 ((_ is ElementMatch!21219) (regTwo!42950 (regOne!42950 r!4885)))) b!7894962))

(assert (= (and b!7894728 ((_ is Concat!30064) (regTwo!42950 (regOne!42950 r!4885)))) b!7894963))

(assert (= (and b!7894728 ((_ is Star!21219) (regTwo!42950 (regOne!42950 r!4885)))) b!7894964))

(assert (= (and b!7894728 ((_ is Union!21219) (regTwo!42950 (regOne!42950 r!4885)))) b!7894965))

(declare-fun e!4660158 () Bool)

(assert (=> b!7894738 (= tp!2350903 e!4660158)))

(declare-fun b!7894966 () Bool)

(assert (=> b!7894966 (= e!4660158 tp_is_empty!52837)))

(declare-fun b!7894969 () Bool)

(declare-fun tp!2351014 () Bool)

(declare-fun tp!2351013 () Bool)

(assert (=> b!7894969 (= e!4660158 (and tp!2351014 tp!2351013))))

(declare-fun b!7894968 () Bool)

(declare-fun tp!2351016 () Bool)

(assert (=> b!7894968 (= e!4660158 tp!2351016)))

(declare-fun b!7894967 () Bool)

(declare-fun tp!2351017 () Bool)

(declare-fun tp!2351015 () Bool)

(assert (=> b!7894967 (= e!4660158 (and tp!2351017 tp!2351015))))

(assert (= (and b!7894738 ((_ is ElementMatch!21219) (regOne!42951 (regTwo!42950 r!4885)))) b!7894966))

(assert (= (and b!7894738 ((_ is Concat!30064) (regOne!42951 (regTwo!42950 r!4885)))) b!7894967))

(assert (= (and b!7894738 ((_ is Star!21219) (regOne!42951 (regTwo!42950 r!4885)))) b!7894968))

(assert (= (and b!7894738 ((_ is Union!21219) (regOne!42951 (regTwo!42950 r!4885)))) b!7894969))

(declare-fun e!4660159 () Bool)

(assert (=> b!7894738 (= tp!2350902 e!4660159)))

(declare-fun b!7894970 () Bool)

(assert (=> b!7894970 (= e!4660159 tp_is_empty!52837)))

(declare-fun b!7894973 () Bool)

(declare-fun tp!2351019 () Bool)

(declare-fun tp!2351018 () Bool)

(assert (=> b!7894973 (= e!4660159 (and tp!2351019 tp!2351018))))

(declare-fun b!7894972 () Bool)

(declare-fun tp!2351021 () Bool)

(assert (=> b!7894972 (= e!4660159 tp!2351021)))

(declare-fun b!7894971 () Bool)

(declare-fun tp!2351022 () Bool)

(declare-fun tp!2351020 () Bool)

(assert (=> b!7894971 (= e!4660159 (and tp!2351022 tp!2351020))))

(assert (= (and b!7894738 ((_ is ElementMatch!21219) (regTwo!42951 (regTwo!42950 r!4885)))) b!7894970))

(assert (= (and b!7894738 ((_ is Concat!30064) (regTwo!42951 (regTwo!42950 r!4885)))) b!7894971))

(assert (= (and b!7894738 ((_ is Star!21219) (regTwo!42951 (regTwo!42950 r!4885)))) b!7894972))

(assert (= (and b!7894738 ((_ is Union!21219) (regTwo!42951 (regTwo!42950 r!4885)))) b!7894973))

(declare-fun e!4660160 () Bool)

(assert (=> b!7894745 (= tp!2350915 e!4660160)))

(declare-fun b!7894974 () Bool)

(assert (=> b!7894974 (= e!4660160 tp_is_empty!52837)))

(declare-fun b!7894977 () Bool)

(declare-fun tp!2351024 () Bool)

(declare-fun tp!2351023 () Bool)

(assert (=> b!7894977 (= e!4660160 (and tp!2351024 tp!2351023))))

(declare-fun b!7894976 () Bool)

(declare-fun tp!2351026 () Bool)

(assert (=> b!7894976 (= e!4660160 tp!2351026)))

(declare-fun b!7894975 () Bool)

(declare-fun tp!2351027 () Bool)

(declare-fun tp!2351025 () Bool)

(assert (=> b!7894975 (= e!4660160 (and tp!2351027 tp!2351025))))

(assert (= (and b!7894745 ((_ is ElementMatch!21219) (reg!21548 (reg!21548 r!4885)))) b!7894974))

(assert (= (and b!7894745 ((_ is Concat!30064) (reg!21548 (reg!21548 r!4885)))) b!7894975))

(assert (= (and b!7894745 ((_ is Star!21219) (reg!21548 (reg!21548 r!4885)))) b!7894976))

(assert (= (and b!7894745 ((_ is Union!21219) (reg!21548 (reg!21548 r!4885)))) b!7894977))

(declare-fun e!4660161 () Bool)

(assert (=> b!7894736 (= tp!2350906 e!4660161)))

(declare-fun b!7894978 () Bool)

(assert (=> b!7894978 (= e!4660161 tp_is_empty!52837)))

(declare-fun b!7894981 () Bool)

(declare-fun tp!2351029 () Bool)

(declare-fun tp!2351028 () Bool)

(assert (=> b!7894981 (= e!4660161 (and tp!2351029 tp!2351028))))

(declare-fun b!7894980 () Bool)

(declare-fun tp!2351031 () Bool)

(assert (=> b!7894980 (= e!4660161 tp!2351031)))

(declare-fun b!7894979 () Bool)

(declare-fun tp!2351032 () Bool)

(declare-fun tp!2351030 () Bool)

(assert (=> b!7894979 (= e!4660161 (and tp!2351032 tp!2351030))))

(assert (= (and b!7894736 ((_ is ElementMatch!21219) (regOne!42950 (regTwo!42950 r!4885)))) b!7894978))

(assert (= (and b!7894736 ((_ is Concat!30064) (regOne!42950 (regTwo!42950 r!4885)))) b!7894979))

(assert (= (and b!7894736 ((_ is Star!21219) (regOne!42950 (regTwo!42950 r!4885)))) b!7894980))

(assert (= (and b!7894736 ((_ is Union!21219) (regOne!42950 (regTwo!42950 r!4885)))) b!7894981))

(declare-fun e!4660162 () Bool)

(assert (=> b!7894736 (= tp!2350904 e!4660162)))

(declare-fun b!7894982 () Bool)

(assert (=> b!7894982 (= e!4660162 tp_is_empty!52837)))

(declare-fun b!7894985 () Bool)

(declare-fun tp!2351034 () Bool)

(declare-fun tp!2351033 () Bool)

(assert (=> b!7894985 (= e!4660162 (and tp!2351034 tp!2351033))))

(declare-fun b!7894984 () Bool)

(declare-fun tp!2351036 () Bool)

(assert (=> b!7894984 (= e!4660162 tp!2351036)))

(declare-fun b!7894983 () Bool)

(declare-fun tp!2351037 () Bool)

(declare-fun tp!2351035 () Bool)

(assert (=> b!7894983 (= e!4660162 (and tp!2351037 tp!2351035))))

(assert (= (and b!7894736 ((_ is ElementMatch!21219) (regTwo!42950 (regTwo!42950 r!4885)))) b!7894982))

(assert (= (and b!7894736 ((_ is Concat!30064) (regTwo!42950 (regTwo!42950 r!4885)))) b!7894983))

(assert (= (and b!7894736 ((_ is Star!21219) (regTwo!42950 (regTwo!42950 r!4885)))) b!7894984))

(assert (= (and b!7894736 ((_ is Union!21219) (regTwo!42950 (regTwo!42950 r!4885)))) b!7894985))

(declare-fun e!4660163 () Bool)

(assert (=> b!7894746 (= tp!2350913 e!4660163)))

(declare-fun b!7894986 () Bool)

(assert (=> b!7894986 (= e!4660163 tp_is_empty!52837)))

(declare-fun b!7894989 () Bool)

(declare-fun tp!2351039 () Bool)

(declare-fun tp!2351038 () Bool)

(assert (=> b!7894989 (= e!4660163 (and tp!2351039 tp!2351038))))

(declare-fun b!7894988 () Bool)

(declare-fun tp!2351041 () Bool)

(assert (=> b!7894988 (= e!4660163 tp!2351041)))

(declare-fun b!7894987 () Bool)

(declare-fun tp!2351042 () Bool)

(declare-fun tp!2351040 () Bool)

(assert (=> b!7894987 (= e!4660163 (and tp!2351042 tp!2351040))))

(assert (= (and b!7894746 ((_ is ElementMatch!21219) (regOne!42951 (reg!21548 r!4885)))) b!7894986))

(assert (= (and b!7894746 ((_ is Concat!30064) (regOne!42951 (reg!21548 r!4885)))) b!7894987))

(assert (= (and b!7894746 ((_ is Star!21219) (regOne!42951 (reg!21548 r!4885)))) b!7894988))

(assert (= (and b!7894746 ((_ is Union!21219) (regOne!42951 (reg!21548 r!4885)))) b!7894989))

(declare-fun e!4660164 () Bool)

(assert (=> b!7894746 (= tp!2350912 e!4660164)))

(declare-fun b!7894990 () Bool)

(assert (=> b!7894990 (= e!4660164 tp_is_empty!52837)))

(declare-fun b!7894993 () Bool)

(declare-fun tp!2351044 () Bool)

(declare-fun tp!2351043 () Bool)

(assert (=> b!7894993 (= e!4660164 (and tp!2351044 tp!2351043))))

(declare-fun b!7894992 () Bool)

(declare-fun tp!2351046 () Bool)

(assert (=> b!7894992 (= e!4660164 tp!2351046)))

(declare-fun b!7894991 () Bool)

(declare-fun tp!2351047 () Bool)

(declare-fun tp!2351045 () Bool)

(assert (=> b!7894991 (= e!4660164 (and tp!2351047 tp!2351045))))

(assert (= (and b!7894746 ((_ is ElementMatch!21219) (regTwo!42951 (reg!21548 r!4885)))) b!7894990))

(assert (= (and b!7894746 ((_ is Concat!30064) (regTwo!42951 (reg!21548 r!4885)))) b!7894991))

(assert (= (and b!7894746 ((_ is Star!21219) (regTwo!42951 (reg!21548 r!4885)))) b!7894992))

(assert (= (and b!7894746 ((_ is Union!21219) (regTwo!42951 (reg!21548 r!4885)))) b!7894993))

(declare-fun e!4660165 () Bool)

(assert (=> b!7894744 (= tp!2350916 e!4660165)))

(declare-fun b!7894994 () Bool)

(assert (=> b!7894994 (= e!4660165 tp_is_empty!52837)))

(declare-fun b!7894997 () Bool)

(declare-fun tp!2351049 () Bool)

(declare-fun tp!2351048 () Bool)

(assert (=> b!7894997 (= e!4660165 (and tp!2351049 tp!2351048))))

(declare-fun b!7894996 () Bool)

(declare-fun tp!2351051 () Bool)

(assert (=> b!7894996 (= e!4660165 tp!2351051)))

(declare-fun b!7894995 () Bool)

(declare-fun tp!2351052 () Bool)

(declare-fun tp!2351050 () Bool)

(assert (=> b!7894995 (= e!4660165 (and tp!2351052 tp!2351050))))

(assert (= (and b!7894744 ((_ is ElementMatch!21219) (regOne!42950 (reg!21548 r!4885)))) b!7894994))

(assert (= (and b!7894744 ((_ is Concat!30064) (regOne!42950 (reg!21548 r!4885)))) b!7894995))

(assert (= (and b!7894744 ((_ is Star!21219) (regOne!42950 (reg!21548 r!4885)))) b!7894996))

(assert (= (and b!7894744 ((_ is Union!21219) (regOne!42950 (reg!21548 r!4885)))) b!7894997))

(declare-fun e!4660166 () Bool)

(assert (=> b!7894744 (= tp!2350914 e!4660166)))

(declare-fun b!7894998 () Bool)

(assert (=> b!7894998 (= e!4660166 tp_is_empty!52837)))

(declare-fun b!7895001 () Bool)

(declare-fun tp!2351054 () Bool)

(declare-fun tp!2351053 () Bool)

(assert (=> b!7895001 (= e!4660166 (and tp!2351054 tp!2351053))))

(declare-fun b!7895000 () Bool)

(declare-fun tp!2351056 () Bool)

(assert (=> b!7895000 (= e!4660166 tp!2351056)))

(declare-fun b!7894999 () Bool)

(declare-fun tp!2351057 () Bool)

(declare-fun tp!2351055 () Bool)

(assert (=> b!7894999 (= e!4660166 (and tp!2351057 tp!2351055))))

(assert (= (and b!7894744 ((_ is ElementMatch!21219) (regTwo!42950 (reg!21548 r!4885)))) b!7894998))

(assert (= (and b!7894744 ((_ is Concat!30064) (regTwo!42950 (reg!21548 r!4885)))) b!7894999))

(assert (= (and b!7894744 ((_ is Star!21219) (regTwo!42950 (reg!21548 r!4885)))) b!7895000))

(assert (= (and b!7894744 ((_ is Union!21219) (regTwo!42950 (reg!21548 r!4885)))) b!7895001))

(check-sat (not d!2357286) (not b!7894944) (not b!7894967) (not b!7894854) (not b!7894928) (not b!7894989) (not bm!732860) (not b!7894775) (not b!7894976) (not b!7894935) (not b!7894952) (not b!7894941) (not b!7894963) (not b!7894973) (not b!7894901) (not b!7894997) (not b!7894969) (not b!7894933) (not b!7894940) (not b!7895000) (not b!7894929) (not b!7894971) (not b!7894977) (not b!7894792) (not b!7894899) (not b!7894961) (not b!7894948) (not b!7894936) (not b!7894924) (not b!7894951) (not b!7894919) (not b!7894955) (not b!7894903) (not b!7894968) (not b!7894992) (not b!7894987) (not b!7894927) (not b!7894996) (not b!7894881) (not b!7894953) (not b!7894949) (not b!7894985) (not b!7894943) (not b!7894972) (not b!7894981) (not b!7894921) (not b!7894898) (not b!7894849) (not b!7894991) (not b!7894917) (not b!7894760) (not d!2357292) (not b!7894920) (not b!7894956) (not b!7894925) (not d!2357282) (not b!7894850) (not bm!732871) (not b!7894847) (not bm!732872) (not b!7894980) (not b!7894999) (not b!7894983) (not b!7894932) (not b!7894937) (not b!7894852) (not d!2357306) (not b!7894902) (not b!7894984) (not b!7894916) (not b!7894947) (not b!7894897) tp_is_empty!52837 (not b!7894945) (not b!7894965) (not b!7894765) (not b!7894995) (not b!7894988) (not b!7894923) (not b!7894766) (not b!7894975) (not bm!732859) (not b!7894783) (not b!7894895) (not b!7894960) (not b!7894915) (not b!7894893) (not b!7894959) (not b!7894964) (not b!7894851) (not b!7894773) (not bm!732856) (not b!7894856) (not b!7894939) (not b!7894931) (not bm!732857) (not b!7894890) (not b!7895001) (not b!7894774) (not b!7894957) (not b!7894894) (not b!7894993) (not b!7894979))
(check-sat)
(get-model)

(declare-fun b!7895123 () Bool)

(declare-fun e!4660212 () Bool)

(declare-fun call!732880 () Bool)

(assert (=> b!7895123 (= e!4660212 call!732880)))

(declare-fun b!7895124 () Bool)

(declare-fun e!4660213 () Bool)

(declare-fun e!4660210 () Bool)

(assert (=> b!7895124 (= e!4660213 e!4660210)))

(declare-fun c!1449272 () Bool)

(assert (=> b!7895124 (= c!1449272 ((_ is Star!21219) (ite c!1449263 (reg!21548 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (ite c!1449264 (regTwo!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regTwo!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885))))))))))

(declare-fun b!7895125 () Bool)

(declare-fun e!4660214 () Bool)

(declare-fun call!732879 () Bool)

(assert (=> b!7895125 (= e!4660214 call!732879)))

(declare-fun c!1449273 () Bool)

(declare-fun bm!732874 () Bool)

(assert (=> bm!732874 (= call!732880 (validRegex!11629 (ite c!1449272 (reg!21548 (ite c!1449263 (reg!21548 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (ite c!1449264 (regTwo!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regTwo!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885))))))) (ite c!1449273 (regTwo!42951 (ite c!1449263 (reg!21548 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (ite c!1449264 (regTwo!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regTwo!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885))))))) (regTwo!42950 (ite c!1449263 (reg!21548 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (ite c!1449264 (regTwo!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regTwo!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))))))))))))

(declare-fun b!7895126 () Bool)

(declare-fun res!3132281 () Bool)

(declare-fun e!4660211 () Bool)

(assert (=> b!7895126 (=> res!3132281 e!4660211)))

(assert (=> b!7895126 (= res!3132281 (not ((_ is Concat!30064) (ite c!1449263 (reg!21548 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (ite c!1449264 (regTwo!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regTwo!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))))))))))

(declare-fun e!4660216 () Bool)

(assert (=> b!7895126 (= e!4660216 e!4660211)))

(declare-fun b!7895127 () Bool)

(declare-fun e!4660215 () Bool)

(assert (=> b!7895127 (= e!4660215 call!732879)))

(declare-fun b!7895128 () Bool)

(assert (=> b!7895128 (= e!4660211 e!4660214)))

(declare-fun res!3132278 () Bool)

(assert (=> b!7895128 (=> (not res!3132278) (not e!4660214))))

(declare-fun call!732881 () Bool)

(assert (=> b!7895128 (= res!3132278 call!732881)))

(declare-fun b!7895129 () Bool)

(declare-fun res!3132279 () Bool)

(assert (=> b!7895129 (=> (not res!3132279) (not e!4660215))))

(assert (=> b!7895129 (= res!3132279 call!732881)))

(assert (=> b!7895129 (= e!4660216 e!4660215)))

(declare-fun bm!732875 () Bool)

(assert (=> bm!732875 (= call!732881 (validRegex!11629 (ite c!1449273 (regOne!42951 (ite c!1449263 (reg!21548 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (ite c!1449264 (regTwo!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regTwo!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885))))))) (regOne!42950 (ite c!1449263 (reg!21548 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (ite c!1449264 (regTwo!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regTwo!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885))))))))))))

(declare-fun b!7895130 () Bool)

(assert (=> b!7895130 (= e!4660210 e!4660212)))

(declare-fun res!3132280 () Bool)

(assert (=> b!7895130 (= res!3132280 (not (nullable!9473 (reg!21548 (ite c!1449263 (reg!21548 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (ite c!1449264 (regTwo!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regTwo!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885))))))))))))

(assert (=> b!7895130 (=> (not res!3132280) (not e!4660212))))

(declare-fun b!7895131 () Bool)

(assert (=> b!7895131 (= e!4660210 e!4660216)))

(assert (=> b!7895131 (= c!1449273 ((_ is Union!21219) (ite c!1449263 (reg!21548 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (ite c!1449264 (regTwo!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regTwo!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885))))))))))

(declare-fun d!2357316 () Bool)

(declare-fun res!3132277 () Bool)

(assert (=> d!2357316 (=> res!3132277 e!4660213)))

(assert (=> d!2357316 (= res!3132277 ((_ is ElementMatch!21219) (ite c!1449263 (reg!21548 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (ite c!1449264 (regTwo!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regTwo!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885))))))))))

(assert (=> d!2357316 (= (validRegex!11629 (ite c!1449263 (reg!21548 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (ite c!1449264 (regTwo!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regTwo!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885))))))) e!4660213)))

(declare-fun bm!732876 () Bool)

(assert (=> bm!732876 (= call!732879 call!732880)))

(assert (= (and d!2357316 (not res!3132277)) b!7895124))

(assert (= (and b!7895124 c!1449272) b!7895130))

(assert (= (and b!7895124 (not c!1449272)) b!7895131))

(assert (= (and b!7895130 res!3132280) b!7895123))

(assert (= (and b!7895131 c!1449273) b!7895129))

(assert (= (and b!7895131 (not c!1449273)) b!7895126))

(assert (= (and b!7895129 res!3132279) b!7895127))

(assert (= (and b!7895126 (not res!3132281)) b!7895128))

(assert (= (and b!7895128 res!3132278) b!7895125))

(assert (= (or b!7895127 b!7895125) bm!732876))

(assert (= (or b!7895129 b!7895128) bm!732875))

(assert (= (or b!7895123 bm!732876) bm!732874))

(declare-fun m!8271748 () Bool)

(assert (=> bm!732874 m!8271748))

(declare-fun m!8271750 () Bool)

(assert (=> bm!732875 m!8271750))

(declare-fun m!8271752 () Bool)

(assert (=> b!7895130 m!8271752))

(assert (=> bm!732871 d!2357316))

(declare-fun d!2357318 () Bool)

(declare-fun c!1449274 () Bool)

(assert (=> d!2357318 (= c!1449274 ((_ is Nil!73954) (t!388813 lt!2681659)))))

(declare-fun e!4660217 () (InoxSet Context!17070))

(assert (=> d!2357318 (= (content!15701 (t!388813 lt!2681659)) e!4660217)))

(declare-fun b!7895132 () Bool)

(assert (=> b!7895132 (= e!4660217 ((as const (Array Context!17070 Bool)) false))))

(declare-fun b!7895133 () Bool)

(assert (=> b!7895133 (= e!4660217 ((_ map or) (store ((as const (Array Context!17070 Bool)) false) (h!80402 (t!388813 lt!2681659)) true) (content!15701 (t!388813 (t!388813 lt!2681659)))))))

(assert (= (and d!2357318 c!1449274) b!7895132))

(assert (= (and d!2357318 (not c!1449274)) b!7895133))

(declare-fun m!8271754 () Bool)

(assert (=> b!7895133 m!8271754))

(declare-fun m!8271756 () Bool)

(assert (=> b!7895133 m!8271756))

(assert (=> b!7894760 d!2357318))

(declare-fun d!2357320 () Bool)

(declare-fun res!3132282 () Bool)

(declare-fun e!4660218 () Bool)

(assert (=> d!2357320 (=> res!3132282 e!4660218)))

(assert (=> d!2357320 (= res!3132282 ((_ is Nil!73954) res!3132221))))

(assert (=> d!2357320 (= (noDuplicate!3164 res!3132221) e!4660218)))

(declare-fun b!7895134 () Bool)

(declare-fun e!4660219 () Bool)

(assert (=> b!7895134 (= e!4660218 e!4660219)))

(declare-fun res!3132283 () Bool)

(assert (=> b!7895134 (=> (not res!3132283) (not e!4660219))))

(assert (=> b!7895134 (= res!3132283 (not (contains!20881 (t!388813 res!3132221) (h!80402 res!3132221))))))

(declare-fun b!7895135 () Bool)

(assert (=> b!7895135 (= e!4660219 (noDuplicate!3164 (t!388813 res!3132221)))))

(assert (= (and d!2357320 (not res!3132282)) b!7895134))

(assert (= (and b!7895134 res!3132283) b!7895135))

(declare-fun m!8271758 () Bool)

(assert (=> b!7895134 m!8271758))

(declare-fun m!8271760 () Bool)

(assert (=> b!7895135 m!8271760))

(assert (=> d!2357286 d!2357320))

(declare-fun d!2357322 () Bool)

(assert (=> d!2357322 (= (isEmpty!42432 (tail!15671 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))) ((_ is Nil!73953) (tail!15671 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))))))

(assert (=> b!7894856 d!2357322))

(declare-fun d!2357324 () Bool)

(assert (=> d!2357324 (= (tail!15671 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))) (t!388812 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))))

(assert (=> b!7894856 d!2357324))

(declare-fun d!2357326 () Bool)

(assert (=> d!2357326 (= (nullable!9473 (reg!21548 lt!2681656)) (nullableFct!3743 (reg!21548 lt!2681656)))))

(declare-fun bs!1967705 () Bool)

(assert (= bs!1967705 d!2357326))

(declare-fun m!8271762 () Bool)

(assert (=> bs!1967705 m!8271762))

(assert (=> b!7894792 d!2357326))

(declare-fun d!2357328 () Bool)

(assert (=> d!2357328 (= (head!16128 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))) (h!80401 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))))

(assert (=> b!7894854 d!2357328))

(declare-fun b!7895136 () Bool)

(declare-fun e!4660222 () Bool)

(declare-fun call!732883 () Bool)

(assert (=> b!7895136 (= e!4660222 call!732883)))

(declare-fun b!7895137 () Bool)

(declare-fun e!4660223 () Bool)

(declare-fun e!4660220 () Bool)

(assert (=> b!7895137 (= e!4660223 e!4660220)))

(declare-fun c!1449275 () Bool)

(assert (=> b!7895137 (= c!1449275 ((_ is Star!21219) (ite c!1449230 (regOne!42951 lt!2681656) (regOne!42950 lt!2681656))))))

(declare-fun b!7895138 () Bool)

(declare-fun e!4660224 () Bool)

(declare-fun call!732882 () Bool)

(assert (=> b!7895138 (= e!4660224 call!732882)))

(declare-fun bm!732877 () Bool)

(declare-fun c!1449276 () Bool)

(assert (=> bm!732877 (= call!732883 (validRegex!11629 (ite c!1449275 (reg!21548 (ite c!1449230 (regOne!42951 lt!2681656) (regOne!42950 lt!2681656))) (ite c!1449276 (regTwo!42951 (ite c!1449230 (regOne!42951 lt!2681656) (regOne!42950 lt!2681656))) (regTwo!42950 (ite c!1449230 (regOne!42951 lt!2681656) (regOne!42950 lt!2681656)))))))))

(declare-fun b!7895139 () Bool)

(declare-fun res!3132288 () Bool)

(declare-fun e!4660221 () Bool)

(assert (=> b!7895139 (=> res!3132288 e!4660221)))

(assert (=> b!7895139 (= res!3132288 (not ((_ is Concat!30064) (ite c!1449230 (regOne!42951 lt!2681656) (regOne!42950 lt!2681656)))))))

(declare-fun e!4660226 () Bool)

(assert (=> b!7895139 (= e!4660226 e!4660221)))

(declare-fun b!7895140 () Bool)

(declare-fun e!4660225 () Bool)

(assert (=> b!7895140 (= e!4660225 call!732882)))

(declare-fun b!7895141 () Bool)

(assert (=> b!7895141 (= e!4660221 e!4660224)))

(declare-fun res!3132285 () Bool)

(assert (=> b!7895141 (=> (not res!3132285) (not e!4660224))))

(declare-fun call!732884 () Bool)

(assert (=> b!7895141 (= res!3132285 call!732884)))

(declare-fun b!7895142 () Bool)

(declare-fun res!3132286 () Bool)

(assert (=> b!7895142 (=> (not res!3132286) (not e!4660225))))

(assert (=> b!7895142 (= res!3132286 call!732884)))

(assert (=> b!7895142 (= e!4660226 e!4660225)))

(declare-fun bm!732878 () Bool)

(assert (=> bm!732878 (= call!732884 (validRegex!11629 (ite c!1449276 (regOne!42951 (ite c!1449230 (regOne!42951 lt!2681656) (regOne!42950 lt!2681656))) (regOne!42950 (ite c!1449230 (regOne!42951 lt!2681656) (regOne!42950 lt!2681656))))))))

(declare-fun b!7895143 () Bool)

(assert (=> b!7895143 (= e!4660220 e!4660222)))

(declare-fun res!3132287 () Bool)

(assert (=> b!7895143 (= res!3132287 (not (nullable!9473 (reg!21548 (ite c!1449230 (regOne!42951 lt!2681656) (regOne!42950 lt!2681656))))))))

(assert (=> b!7895143 (=> (not res!3132287) (not e!4660222))))

(declare-fun b!7895144 () Bool)

(assert (=> b!7895144 (= e!4660220 e!4660226)))

(assert (=> b!7895144 (= c!1449276 ((_ is Union!21219) (ite c!1449230 (regOne!42951 lt!2681656) (regOne!42950 lt!2681656))))))

(declare-fun d!2357330 () Bool)

(declare-fun res!3132284 () Bool)

(assert (=> d!2357330 (=> res!3132284 e!4660223)))

(assert (=> d!2357330 (= res!3132284 ((_ is ElementMatch!21219) (ite c!1449230 (regOne!42951 lt!2681656) (regOne!42950 lt!2681656))))))

(assert (=> d!2357330 (= (validRegex!11629 (ite c!1449230 (regOne!42951 lt!2681656) (regOne!42950 lt!2681656))) e!4660223)))

(declare-fun bm!732879 () Bool)

(assert (=> bm!732879 (= call!732882 call!732883)))

(assert (= (and d!2357330 (not res!3132284)) b!7895137))

(assert (= (and b!7895137 c!1449275) b!7895143))

(assert (= (and b!7895137 (not c!1449275)) b!7895144))

(assert (= (and b!7895143 res!3132287) b!7895136))

(assert (= (and b!7895144 c!1449276) b!7895142))

(assert (= (and b!7895144 (not c!1449276)) b!7895139))

(assert (= (and b!7895142 res!3132286) b!7895140))

(assert (= (and b!7895139 (not res!3132288)) b!7895141))

(assert (= (and b!7895141 res!3132285) b!7895138))

(assert (= (or b!7895140 b!7895138) bm!732879))

(assert (= (or b!7895142 b!7895141) bm!732878))

(assert (= (or b!7895136 bm!732879) bm!732877))

(declare-fun m!8271764 () Bool)

(assert (=> bm!732877 m!8271764))

(declare-fun m!8271766 () Bool)

(assert (=> bm!732878 m!8271766))

(declare-fun m!8271768 () Bool)

(assert (=> b!7895143 m!8271768))

(assert (=> bm!732860 d!2357330))

(declare-fun b!7895145 () Bool)

(declare-fun e!4660229 () Bool)

(declare-fun call!732886 () Bool)

(assert (=> b!7895145 (= e!4660229 call!732886)))

(declare-fun b!7895146 () Bool)

(declare-fun e!4660230 () Bool)

(declare-fun e!4660227 () Bool)

(assert (=> b!7895146 (= e!4660230 e!4660227)))

(declare-fun c!1449277 () Bool)

(assert (=> b!7895146 (= c!1449277 ((_ is Star!21219) (ite c!1449227 (reg!21548 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (ite c!1449228 (regTwo!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regTwo!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885)))))))))

(declare-fun b!7895147 () Bool)

(declare-fun e!4660231 () Bool)

(declare-fun call!732885 () Bool)

(assert (=> b!7895147 (= e!4660231 call!732885)))

(declare-fun bm!732880 () Bool)

(declare-fun c!1449278 () Bool)

(assert (=> bm!732880 (= call!732886 (validRegex!11629 (ite c!1449277 (reg!21548 (ite c!1449227 (reg!21548 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (ite c!1449228 (regTwo!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regTwo!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885)))))) (ite c!1449278 (regTwo!42951 (ite c!1449227 (reg!21548 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (ite c!1449228 (regTwo!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regTwo!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885)))))) (regTwo!42950 (ite c!1449227 (reg!21548 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (ite c!1449228 (regTwo!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regTwo!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))))))))))))

(declare-fun b!7895148 () Bool)

(declare-fun res!3132293 () Bool)

(declare-fun e!4660228 () Bool)

(assert (=> b!7895148 (=> res!3132293 e!4660228)))

(assert (=> b!7895148 (= res!3132293 (not ((_ is Concat!30064) (ite c!1449227 (reg!21548 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (ite c!1449228 (regTwo!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regTwo!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))))))))))

(declare-fun e!4660233 () Bool)

(assert (=> b!7895148 (= e!4660233 e!4660228)))

(declare-fun b!7895149 () Bool)

(declare-fun e!4660232 () Bool)

(assert (=> b!7895149 (= e!4660232 call!732885)))

(declare-fun b!7895150 () Bool)

(assert (=> b!7895150 (= e!4660228 e!4660231)))

(declare-fun res!3132290 () Bool)

(assert (=> b!7895150 (=> (not res!3132290) (not e!4660231))))

(declare-fun call!732887 () Bool)

(assert (=> b!7895150 (= res!3132290 call!732887)))

(declare-fun b!7895151 () Bool)

(declare-fun res!3132291 () Bool)

(assert (=> b!7895151 (=> (not res!3132291) (not e!4660232))))

(assert (=> b!7895151 (= res!3132291 call!732887)))

(assert (=> b!7895151 (= e!4660233 e!4660232)))

(declare-fun bm!732881 () Bool)

(assert (=> bm!732881 (= call!732887 (validRegex!11629 (ite c!1449278 (regOne!42951 (ite c!1449227 (reg!21548 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (ite c!1449228 (regTwo!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regTwo!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885)))))) (regOne!42950 (ite c!1449227 (reg!21548 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (ite c!1449228 (regTwo!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regTwo!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885)))))))))))

(declare-fun b!7895152 () Bool)

(assert (=> b!7895152 (= e!4660227 e!4660229)))

(declare-fun res!3132292 () Bool)

(assert (=> b!7895152 (= res!3132292 (not (nullable!9473 (reg!21548 (ite c!1449227 (reg!21548 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (ite c!1449228 (regTwo!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regTwo!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885)))))))))))

(assert (=> b!7895152 (=> (not res!3132292) (not e!4660229))))

(declare-fun b!7895153 () Bool)

(assert (=> b!7895153 (= e!4660227 e!4660233)))

(assert (=> b!7895153 (= c!1449278 ((_ is Union!21219) (ite c!1449227 (reg!21548 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (ite c!1449228 (regTwo!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regTwo!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885)))))))))

(declare-fun d!2357332 () Bool)

(declare-fun res!3132289 () Bool)

(assert (=> d!2357332 (=> res!3132289 e!4660230)))

(assert (=> d!2357332 (= res!3132289 ((_ is ElementMatch!21219) (ite c!1449227 (reg!21548 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (ite c!1449228 (regTwo!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regTwo!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885)))))))))

(assert (=> d!2357332 (= (validRegex!11629 (ite c!1449227 (reg!21548 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (ite c!1449228 (regTwo!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regTwo!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885)))))) e!4660230)))

(declare-fun bm!732882 () Bool)

(assert (=> bm!732882 (= call!732885 call!732886)))

(assert (= (and d!2357332 (not res!3132289)) b!7895146))

(assert (= (and b!7895146 c!1449277) b!7895152))

(assert (= (and b!7895146 (not c!1449277)) b!7895153))

(assert (= (and b!7895152 res!3132292) b!7895145))

(assert (= (and b!7895153 c!1449278) b!7895151))

(assert (= (and b!7895153 (not c!1449278)) b!7895148))

(assert (= (and b!7895151 res!3132291) b!7895149))

(assert (= (and b!7895148 (not res!3132293)) b!7895150))

(assert (= (and b!7895150 res!3132290) b!7895147))

(assert (= (or b!7895149 b!7895147) bm!732882))

(assert (= (or b!7895151 b!7895150) bm!732881))

(assert (= (or b!7895145 bm!732882) bm!732880))

(declare-fun m!8271770 () Bool)

(assert (=> bm!732880 m!8271770))

(declare-fun m!8271772 () Bool)

(assert (=> bm!732881 m!8271772))

(declare-fun m!8271774 () Bool)

(assert (=> b!7895152 m!8271774))

(assert (=> bm!732856 d!2357332))

(declare-fun d!2357334 () Bool)

(assert (=> d!2357334 (= (isEmpty!42432 (t!388812 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))) ((_ is Nil!73953) (t!388812 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))))))

(assert (=> b!7894851 d!2357334))

(declare-fun d!2357336 () Bool)

(assert (=> d!2357336 (= (isEmptyLang!2159 lt!2681662) ((_ is EmptyLang!21219) lt!2681662))))

(assert (=> b!7894852 d!2357336))

(declare-fun bs!1967706 () Bool)

(declare-fun d!2357338 () Bool)

(assert (= bs!1967706 (and d!2357338 d!2357292)))

(declare-fun lambda!472228 () Int)

(assert (=> bs!1967706 (= lambda!472228 lambda!472218)))

(declare-fun bs!1967707 () Bool)

(assert (= bs!1967707 (and d!2357338 d!2357306)))

(assert (=> bs!1967707 (= lambda!472228 lambda!472223)))

(declare-fun b!7895154 () Bool)

(declare-fun e!4660239 () Bool)

(declare-fun lt!2681672 () Regex!21219)

(assert (=> b!7895154 (= e!4660239 (isUnion!1587 lt!2681672))))

(declare-fun e!4660237 () Bool)

(assert (=> d!2357338 e!4660237))

(declare-fun res!3132295 () Bool)

(assert (=> d!2357338 (=> (not res!3132295) (not e!4660237))))

(assert (=> d!2357338 (= res!3132295 (validRegex!11629 lt!2681672))))

(declare-fun e!4660235 () Regex!21219)

(assert (=> d!2357338 (= lt!2681672 e!4660235)))

(declare-fun c!1449282 () Bool)

(declare-fun e!4660234 () Bool)

(assert (=> d!2357338 (= c!1449282 e!4660234)))

(declare-fun res!3132294 () Bool)

(assert (=> d!2357338 (=> (not res!3132294) (not e!4660234))))

(assert (=> d!2357338 (= res!3132294 ((_ is Cons!73953) (t!388812 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))))))

(assert (=> d!2357338 (forall!18419 (t!388812 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))) lambda!472228)))

(assert (=> d!2357338 (= (generalisedUnion!2784 (t!388812 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))) lt!2681672)))

(declare-fun b!7895155 () Bool)

(declare-fun e!4660236 () Regex!21219)

(assert (=> b!7895155 (= e!4660236 EmptyLang!21219)))

(declare-fun b!7895156 () Bool)

(declare-fun e!4660238 () Bool)

(assert (=> b!7895156 (= e!4660237 e!4660238)))

(declare-fun c!1449279 () Bool)

(assert (=> b!7895156 (= c!1449279 (isEmpty!42432 (t!388812 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))))))

(declare-fun b!7895157 () Bool)

(assert (=> b!7895157 (= e!4660236 (Union!21219 (h!80401 (t!388812 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))) (generalisedUnion!2784 (t!388812 (t!388812 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))))))))

(declare-fun b!7895158 () Bool)

(assert (=> b!7895158 (= e!4660234 (isEmpty!42432 (t!388812 (t!388812 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))))))

(declare-fun b!7895159 () Bool)

(assert (=> b!7895159 (= e!4660238 (isEmptyLang!2159 lt!2681672))))

(declare-fun b!7895160 () Bool)

(assert (=> b!7895160 (= e!4660235 (h!80401 (t!388812 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))))))

(declare-fun b!7895161 () Bool)

(assert (=> b!7895161 (= e!4660239 (= lt!2681672 (head!16128 (t!388812 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))))))

(declare-fun b!7895162 () Bool)

(assert (=> b!7895162 (= e!4660235 e!4660236)))

(declare-fun c!1449281 () Bool)

(assert (=> b!7895162 (= c!1449281 ((_ is Cons!73953) (t!388812 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))))))

(declare-fun b!7895163 () Bool)

(assert (=> b!7895163 (= e!4660238 e!4660239)))

(declare-fun c!1449280 () Bool)

(assert (=> b!7895163 (= c!1449280 (isEmpty!42432 (tail!15671 (t!388812 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))))))

(assert (= (and d!2357338 res!3132294) b!7895158))

(assert (= (and d!2357338 c!1449282) b!7895160))

(assert (= (and d!2357338 (not c!1449282)) b!7895162))

(assert (= (and b!7895162 c!1449281) b!7895157))

(assert (= (and b!7895162 (not c!1449281)) b!7895155))

(assert (= (and d!2357338 res!3132295) b!7895156))

(assert (= (and b!7895156 c!1449279) b!7895159))

(assert (= (and b!7895156 (not c!1449279)) b!7895163))

(assert (= (and b!7895163 c!1449280) b!7895161))

(assert (= (and b!7895163 (not c!1449280)) b!7895154))

(declare-fun m!8271776 () Bool)

(assert (=> b!7895158 m!8271776))

(declare-fun m!8271778 () Bool)

(assert (=> b!7895159 m!8271778))

(declare-fun m!8271780 () Bool)

(assert (=> b!7895163 m!8271780))

(assert (=> b!7895163 m!8271780))

(declare-fun m!8271782 () Bool)

(assert (=> b!7895163 m!8271782))

(declare-fun m!8271784 () Bool)

(assert (=> b!7895157 m!8271784))

(declare-fun m!8271786 () Bool)

(assert (=> d!2357338 m!8271786))

(declare-fun m!8271788 () Bool)

(assert (=> d!2357338 m!8271788))

(declare-fun m!8271790 () Bool)

(assert (=> b!7895161 m!8271790))

(declare-fun m!8271792 () Bool)

(assert (=> b!7895154 m!8271792))

(assert (=> b!7895156 m!8271680))

(assert (=> b!7894850 d!2357338))

(declare-fun d!2357340 () Bool)

(declare-fun lt!2681675 () Bool)

(assert (=> d!2357340 (= lt!2681675 (select (content!15701 (t!388813 lt!2681659)) (h!80402 lt!2681659)))))

(declare-fun e!4660245 () Bool)

(assert (=> d!2357340 (= lt!2681675 e!4660245)))

(declare-fun res!3132301 () Bool)

(assert (=> d!2357340 (=> (not res!3132301) (not e!4660245))))

(assert (=> d!2357340 (= res!3132301 ((_ is Cons!73954) (t!388813 lt!2681659)))))

(assert (=> d!2357340 (= (contains!20881 (t!388813 lt!2681659) (h!80402 lt!2681659)) lt!2681675)))

(declare-fun b!7895168 () Bool)

(declare-fun e!4660244 () Bool)

(assert (=> b!7895168 (= e!4660245 e!4660244)))

(declare-fun res!3132300 () Bool)

(assert (=> b!7895168 (=> res!3132300 e!4660244)))

(assert (=> b!7895168 (= res!3132300 (= (h!80402 (t!388813 lt!2681659)) (h!80402 lt!2681659)))))

(declare-fun b!7895169 () Bool)

(assert (=> b!7895169 (= e!4660244 (contains!20881 (t!388813 (t!388813 lt!2681659)) (h!80402 lt!2681659)))))

(assert (= (and d!2357340 res!3132301) b!7895168))

(assert (= (and b!7895168 (not res!3132300)) b!7895169))

(assert (=> d!2357340 m!8271630))

(declare-fun m!8271794 () Bool)

(assert (=> d!2357340 m!8271794))

(declare-fun m!8271796 () Bool)

(assert (=> b!7895169 m!8271796))

(assert (=> b!7894765 d!2357340))

(declare-fun d!2357342 () Bool)

(assert (=> d!2357342 (= (isEmpty!42432 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))) ((_ is Nil!73953) (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))))

(assert (=> b!7894849 d!2357342))

(declare-fun d!2357344 () Bool)

(declare-fun res!3132302 () Bool)

(declare-fun e!4660246 () Bool)

(assert (=> d!2357344 (=> res!3132302 e!4660246)))

(assert (=> d!2357344 (= res!3132302 ((_ is Nil!73954) (t!388813 lt!2681659)))))

(assert (=> d!2357344 (= (noDuplicate!3164 (t!388813 lt!2681659)) e!4660246)))

(declare-fun b!7895170 () Bool)

(declare-fun e!4660247 () Bool)

(assert (=> b!7895170 (= e!4660246 e!4660247)))

(declare-fun res!3132303 () Bool)

(assert (=> b!7895170 (=> (not res!3132303) (not e!4660247))))

(assert (=> b!7895170 (= res!3132303 (not (contains!20881 (t!388813 (t!388813 lt!2681659)) (h!80402 (t!388813 lt!2681659)))))))

(declare-fun b!7895171 () Bool)

(assert (=> b!7895171 (= e!4660247 (noDuplicate!3164 (t!388813 (t!388813 lt!2681659))))))

(assert (= (and d!2357344 (not res!3132302)) b!7895170))

(assert (= (and b!7895170 res!3132303) b!7895171))

(declare-fun m!8271798 () Bool)

(assert (=> b!7895170 m!8271798))

(declare-fun m!8271800 () Bool)

(assert (=> b!7895171 m!8271800))

(assert (=> b!7894766 d!2357344))

(declare-fun d!2357346 () Bool)

(assert (=> d!2357346 (= (isUnion!1587 lt!2681662) ((_ is Union!21219) lt!2681662))))

(assert (=> b!7894847 d!2357346))

(declare-fun b!7895172 () Bool)

(declare-fun e!4660250 () Bool)

(declare-fun call!732889 () Bool)

(assert (=> b!7895172 (= e!4660250 call!732889)))

(declare-fun b!7895173 () Bool)

(declare-fun e!4660251 () Bool)

(declare-fun e!4660248 () Bool)

(assert (=> b!7895173 (= e!4660251 e!4660248)))

(declare-fun c!1449283 () Bool)

(assert (=> b!7895173 (= c!1449283 ((_ is Star!21219) (ite c!1449229 (reg!21548 lt!2681656) (ite c!1449230 (regTwo!42951 lt!2681656) (regTwo!42950 lt!2681656)))))))

(declare-fun b!7895174 () Bool)

(declare-fun e!4660252 () Bool)

(declare-fun call!732888 () Bool)

(assert (=> b!7895174 (= e!4660252 call!732888)))

(declare-fun c!1449284 () Bool)

(declare-fun bm!732883 () Bool)

(assert (=> bm!732883 (= call!732889 (validRegex!11629 (ite c!1449283 (reg!21548 (ite c!1449229 (reg!21548 lt!2681656) (ite c!1449230 (regTwo!42951 lt!2681656) (regTwo!42950 lt!2681656)))) (ite c!1449284 (regTwo!42951 (ite c!1449229 (reg!21548 lt!2681656) (ite c!1449230 (regTwo!42951 lt!2681656) (regTwo!42950 lt!2681656)))) (regTwo!42950 (ite c!1449229 (reg!21548 lt!2681656) (ite c!1449230 (regTwo!42951 lt!2681656) (regTwo!42950 lt!2681656))))))))))

(declare-fun b!7895175 () Bool)

(declare-fun res!3132308 () Bool)

(declare-fun e!4660249 () Bool)

(assert (=> b!7895175 (=> res!3132308 e!4660249)))

(assert (=> b!7895175 (= res!3132308 (not ((_ is Concat!30064) (ite c!1449229 (reg!21548 lt!2681656) (ite c!1449230 (regTwo!42951 lt!2681656) (regTwo!42950 lt!2681656))))))))

(declare-fun e!4660254 () Bool)

(assert (=> b!7895175 (= e!4660254 e!4660249)))

(declare-fun b!7895176 () Bool)

(declare-fun e!4660253 () Bool)

(assert (=> b!7895176 (= e!4660253 call!732888)))

(declare-fun b!7895177 () Bool)

(assert (=> b!7895177 (= e!4660249 e!4660252)))

(declare-fun res!3132305 () Bool)

(assert (=> b!7895177 (=> (not res!3132305) (not e!4660252))))

(declare-fun call!732890 () Bool)

(assert (=> b!7895177 (= res!3132305 call!732890)))

(declare-fun b!7895178 () Bool)

(declare-fun res!3132306 () Bool)

(assert (=> b!7895178 (=> (not res!3132306) (not e!4660253))))

(assert (=> b!7895178 (= res!3132306 call!732890)))

(assert (=> b!7895178 (= e!4660254 e!4660253)))

(declare-fun bm!732884 () Bool)

(assert (=> bm!732884 (= call!732890 (validRegex!11629 (ite c!1449284 (regOne!42951 (ite c!1449229 (reg!21548 lt!2681656) (ite c!1449230 (regTwo!42951 lt!2681656) (regTwo!42950 lt!2681656)))) (regOne!42950 (ite c!1449229 (reg!21548 lt!2681656) (ite c!1449230 (regTwo!42951 lt!2681656) (regTwo!42950 lt!2681656)))))))))

(declare-fun b!7895179 () Bool)

(assert (=> b!7895179 (= e!4660248 e!4660250)))

(declare-fun res!3132307 () Bool)

(assert (=> b!7895179 (= res!3132307 (not (nullable!9473 (reg!21548 (ite c!1449229 (reg!21548 lt!2681656) (ite c!1449230 (regTwo!42951 lt!2681656) (regTwo!42950 lt!2681656)))))))))

(assert (=> b!7895179 (=> (not res!3132307) (not e!4660250))))

(declare-fun b!7895180 () Bool)

(assert (=> b!7895180 (= e!4660248 e!4660254)))

(assert (=> b!7895180 (= c!1449284 ((_ is Union!21219) (ite c!1449229 (reg!21548 lt!2681656) (ite c!1449230 (regTwo!42951 lt!2681656) (regTwo!42950 lt!2681656)))))))

(declare-fun d!2357348 () Bool)

(declare-fun res!3132304 () Bool)

(assert (=> d!2357348 (=> res!3132304 e!4660251)))

(assert (=> d!2357348 (= res!3132304 ((_ is ElementMatch!21219) (ite c!1449229 (reg!21548 lt!2681656) (ite c!1449230 (regTwo!42951 lt!2681656) (regTwo!42950 lt!2681656)))))))

(assert (=> d!2357348 (= (validRegex!11629 (ite c!1449229 (reg!21548 lt!2681656) (ite c!1449230 (regTwo!42951 lt!2681656) (regTwo!42950 lt!2681656)))) e!4660251)))

(declare-fun bm!732885 () Bool)

(assert (=> bm!732885 (= call!732888 call!732889)))

(assert (= (and d!2357348 (not res!3132304)) b!7895173))

(assert (= (and b!7895173 c!1449283) b!7895179))

(assert (= (and b!7895173 (not c!1449283)) b!7895180))

(assert (= (and b!7895179 res!3132307) b!7895172))

(assert (= (and b!7895180 c!1449284) b!7895178))

(assert (= (and b!7895180 (not c!1449284)) b!7895175))

(assert (= (and b!7895178 res!3132306) b!7895176))

(assert (= (and b!7895175 (not res!3132308)) b!7895177))

(assert (= (and b!7895177 res!3132305) b!7895174))

(assert (= (or b!7895176 b!7895174) bm!732885))

(assert (= (or b!7895178 b!7895177) bm!732884))

(assert (= (or b!7895172 bm!732885) bm!732883))

(declare-fun m!8271802 () Bool)

(assert (=> bm!732883 m!8271802))

(declare-fun m!8271804 () Bool)

(assert (=> bm!732884 m!8271804))

(declare-fun m!8271806 () Bool)

(assert (=> b!7895179 m!8271806))

(assert (=> bm!732859 d!2357348))

(declare-fun d!2357350 () Bool)

(declare-fun c!1449285 () Bool)

(assert (=> d!2357350 (= c!1449285 ((_ is Nil!73954) res!3132221))))

(declare-fun e!4660255 () (InoxSet Context!17070))

(assert (=> d!2357350 (= (content!15701 res!3132221) e!4660255)))

(declare-fun b!7895181 () Bool)

(assert (=> b!7895181 (= e!4660255 ((as const (Array Context!17070 Bool)) false))))

(declare-fun b!7895182 () Bool)

(assert (=> b!7895182 (= e!4660255 ((_ map or) (store ((as const (Array Context!17070 Bool)) false) (h!80402 res!3132221) true) (content!15701 (t!388813 res!3132221))))))

(assert (= (and d!2357350 c!1449285) b!7895181))

(assert (= (and d!2357350 (not c!1449285)) b!7895182))

(declare-fun m!8271808 () Bool)

(assert (=> b!7895182 m!8271808))

(declare-fun m!8271810 () Bool)

(assert (=> b!7895182 m!8271810))

(assert (=> b!7894775 d!2357350))

(declare-fun bs!1967708 () Bool)

(declare-fun d!2357352 () Bool)

(assert (= bs!1967708 (and d!2357352 d!2357292)))

(declare-fun lambda!472231 () Int)

(assert (=> bs!1967708 (= lambda!472231 lambda!472218)))

(declare-fun bs!1967709 () Bool)

(assert (= bs!1967709 (and d!2357352 d!2357306)))

(assert (=> bs!1967709 (= lambda!472231 lambda!472223)))

(declare-fun bs!1967710 () Bool)

(assert (= bs!1967710 (and d!2357352 d!2357338)))

(assert (=> bs!1967710 (= lambda!472231 lambda!472228)))

(declare-fun b!7895204 () Bool)

(declare-fun e!4660269 () Regex!21219)

(assert (=> b!7895204 (= e!4660269 (Concat!30064 (h!80401 (exprs!9035 (h!80402 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))) (generalisedConcat!2469 (t!388812 (exprs!9035 (h!80402 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))))))))

(declare-fun b!7895205 () Bool)

(declare-fun e!4660270 () Bool)

(declare-fun lt!2681678 () Regex!21219)

(declare-fun isConcat!1621 (Regex!21219) Bool)

(assert (=> b!7895205 (= e!4660270 (isConcat!1621 lt!2681678))))

(declare-fun b!7895206 () Bool)

(declare-fun e!4660273 () Regex!21219)

(assert (=> b!7895206 (= e!4660273 (h!80401 (exprs!9035 (h!80402 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))))))

(declare-fun b!7895207 () Bool)

(declare-fun e!4660268 () Bool)

(declare-fun e!4660271 () Bool)

(assert (=> b!7895207 (= e!4660268 e!4660271)))

(declare-fun c!1449297 () Bool)

(assert (=> b!7895207 (= c!1449297 (isEmpty!42432 (exprs!9035 (h!80402 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))))))

(declare-fun b!7895208 () Bool)

(assert (=> b!7895208 (= e!4660273 e!4660269)))

(declare-fun c!1449294 () Bool)

(assert (=> b!7895208 (= c!1449294 ((_ is Cons!73953) (exprs!9035 (h!80402 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))))))

(declare-fun b!7895209 () Bool)

(declare-fun e!4660272 () Bool)

(assert (=> b!7895209 (= e!4660272 (isEmpty!42432 (t!388812 (exprs!9035 (h!80402 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))))))

(declare-fun b!7895210 () Bool)

(assert (=> b!7895210 (= e!4660271 e!4660270)))

(declare-fun c!1449295 () Bool)

(assert (=> b!7895210 (= c!1449295 (isEmpty!42432 (tail!15671 (exprs!9035 (h!80402 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))))))

(declare-fun b!7895203 () Bool)

(assert (=> b!7895203 (= e!4660269 EmptyExpr!21219)))

(assert (=> d!2357352 e!4660268))

(declare-fun res!3132313 () Bool)

(assert (=> d!2357352 (=> (not res!3132313) (not e!4660268))))

(assert (=> d!2357352 (= res!3132313 (validRegex!11629 lt!2681678))))

(assert (=> d!2357352 (= lt!2681678 e!4660273)))

(declare-fun c!1449296 () Bool)

(assert (=> d!2357352 (= c!1449296 e!4660272)))

(declare-fun res!3132314 () Bool)

(assert (=> d!2357352 (=> (not res!3132314) (not e!4660272))))

(assert (=> d!2357352 (= res!3132314 ((_ is Cons!73953) (exprs!9035 (h!80402 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))))))

(assert (=> d!2357352 (forall!18419 (exprs!9035 (h!80402 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))) lambda!472231)))

(assert (=> d!2357352 (= (generalisedConcat!2469 (exprs!9035 (h!80402 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))) lt!2681678)))

(declare-fun b!7895211 () Bool)

(declare-fun isEmptyExpr!2099 (Regex!21219) Bool)

(assert (=> b!7895211 (= e!4660271 (isEmptyExpr!2099 lt!2681678))))

(declare-fun b!7895212 () Bool)

(assert (=> b!7895212 (= e!4660270 (= lt!2681678 (head!16128 (exprs!9035 (h!80402 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))))))

(assert (= (and d!2357352 res!3132314) b!7895209))

(assert (= (and d!2357352 c!1449296) b!7895206))

(assert (= (and d!2357352 (not c!1449296)) b!7895208))

(assert (= (and b!7895208 c!1449294) b!7895204))

(assert (= (and b!7895208 (not c!1449294)) b!7895203))

(assert (= (and d!2357352 res!3132313) b!7895207))

(assert (= (and b!7895207 c!1449297) b!7895211))

(assert (= (and b!7895207 (not c!1449297)) b!7895210))

(assert (= (and b!7895210 c!1449295) b!7895212))

(assert (= (and b!7895210 (not c!1449295)) b!7895205))

(declare-fun m!8271812 () Bool)

(assert (=> b!7895212 m!8271812))

(declare-fun m!8271814 () Bool)

(assert (=> b!7895210 m!8271814))

(assert (=> b!7895210 m!8271814))

(declare-fun m!8271816 () Bool)

(assert (=> b!7895210 m!8271816))

(declare-fun m!8271818 () Bool)

(assert (=> b!7895204 m!8271818))

(declare-fun m!8271820 () Bool)

(assert (=> d!2357352 m!8271820))

(declare-fun m!8271822 () Bool)

(assert (=> d!2357352 m!8271822))

(declare-fun m!8271824 () Bool)

(assert (=> b!7895209 m!8271824))

(declare-fun m!8271826 () Bool)

(assert (=> b!7895211 m!8271826))

(declare-fun m!8271828 () Bool)

(assert (=> b!7895205 m!8271828))

(declare-fun m!8271830 () Bool)

(assert (=> b!7895207 m!8271830))

(assert (=> b!7894881 d!2357352))

(declare-fun bs!1967711 () Bool)

(declare-fun d!2357354 () Bool)

(assert (= bs!1967711 (and d!2357354 d!2357292)))

(declare-fun lambda!472232 () Int)

(assert (=> bs!1967711 (= lambda!472232 lambda!472218)))

(declare-fun bs!1967712 () Bool)

(assert (= bs!1967712 (and d!2357354 d!2357306)))

(assert (=> bs!1967712 (= lambda!472232 lambda!472223)))

(declare-fun bs!1967713 () Bool)

(assert (= bs!1967713 (and d!2357354 d!2357338)))

(assert (=> bs!1967713 (= lambda!472232 lambda!472228)))

(declare-fun bs!1967714 () Bool)

(assert (= bs!1967714 (and d!2357354 d!2357352)))

(assert (=> bs!1967714 (= lambda!472232 lambda!472231)))

(declare-fun lt!2681679 () List!74077)

(assert (=> d!2357354 (forall!18419 lt!2681679 lambda!472232)))

(declare-fun e!4660274 () List!74077)

(assert (=> d!2357354 (= lt!2681679 e!4660274)))

(declare-fun c!1449298 () Bool)

(assert (=> d!2357354 (= c!1449298 ((_ is Cons!73954) (t!388813 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))))

(assert (=> d!2357354 (= (unfocusZipperList!2340 (t!388813 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))) lt!2681679)))

(declare-fun b!7895213 () Bool)

(assert (=> b!7895213 (= e!4660274 (Cons!73953 (generalisedConcat!2469 (exprs!9035 (h!80402 (t!388813 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))) (unfocusZipperList!2340 (t!388813 (t!388813 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))))))

(declare-fun b!7895214 () Bool)

(assert (=> b!7895214 (= e!4660274 Nil!73953)))

(assert (= (and d!2357354 c!1449298) b!7895213))

(assert (= (and d!2357354 (not c!1449298)) b!7895214))

(declare-fun m!8271832 () Bool)

(assert (=> d!2357354 m!8271832))

(declare-fun m!8271834 () Bool)

(assert (=> b!7895213 m!8271834))

(declare-fun m!8271836 () Bool)

(assert (=> b!7895213 m!8271836))

(assert (=> b!7894881 d!2357354))

(declare-fun bs!1967715 () Bool)

(declare-fun d!2357356 () Bool)

(assert (= bs!1967715 (and d!2357356 d!2357292)))

(declare-fun lambda!472235 () Int)

(assert (=> bs!1967715 (= lambda!472235 lambda!472218)))

(declare-fun bs!1967716 () Bool)

(assert (= bs!1967716 (and d!2357356 d!2357352)))

(assert (=> bs!1967716 (= lambda!472235 lambda!472231)))

(declare-fun bs!1967717 () Bool)

(assert (= bs!1967717 (and d!2357356 d!2357354)))

(assert (=> bs!1967717 (= lambda!472235 lambda!472232)))

(declare-fun bs!1967718 () Bool)

(assert (= bs!1967718 (and d!2357356 d!2357338)))

(assert (=> bs!1967718 (= lambda!472235 lambda!472228)))

(declare-fun bs!1967719 () Bool)

(assert (= bs!1967719 (and d!2357356 d!2357306)))

(assert (=> bs!1967719 (= lambda!472235 lambda!472223)))

(assert (=> d!2357356 (= (inv!94936 (h!80402 res!3132221)) (forall!18419 (exprs!9035 (h!80402 res!3132221)) lambda!472235))))

(declare-fun bs!1967720 () Bool)

(assert (= bs!1967720 d!2357356))

(declare-fun m!8271838 () Bool)

(assert (=> bs!1967720 m!8271838))

(assert (=> b!7894773 d!2357356))

(declare-fun b!7895229 () Bool)

(declare-fun e!4660290 () Bool)

(declare-fun call!732895 () Bool)

(assert (=> b!7895229 (= e!4660290 call!732895)))

(declare-fun b!7895230 () Bool)

(declare-fun e!4660291 () Bool)

(assert (=> b!7895230 (= e!4660291 e!4660290)))

(declare-fun res!3132328 () Bool)

(declare-fun call!732896 () Bool)

(assert (=> b!7895230 (= res!3132328 call!732896)))

(assert (=> b!7895230 (=> res!3132328 e!4660290)))

(declare-fun b!7895231 () Bool)

(declare-fun e!4660288 () Bool)

(assert (=> b!7895231 (= e!4660288 e!4660291)))

(declare-fun c!1449301 () Bool)

(assert (=> b!7895231 (= c!1449301 ((_ is Union!21219) (reg!21548 r!4885)))))

(declare-fun d!2357358 () Bool)

(declare-fun res!3132329 () Bool)

(declare-fun e!4660287 () Bool)

(assert (=> d!2357358 (=> res!3132329 e!4660287)))

(assert (=> d!2357358 (= res!3132329 ((_ is EmptyExpr!21219) (reg!21548 r!4885)))))

(assert (=> d!2357358 (= (nullableFct!3743 (reg!21548 r!4885)) e!4660287)))

(declare-fun b!7895232 () Bool)

(declare-fun e!4660292 () Bool)

(assert (=> b!7895232 (= e!4660292 e!4660288)))

(declare-fun res!3132325 () Bool)

(assert (=> b!7895232 (=> res!3132325 e!4660288)))

(assert (=> b!7895232 (= res!3132325 ((_ is Star!21219) (reg!21548 r!4885)))))

(declare-fun bm!732890 () Bool)

(assert (=> bm!732890 (= call!732896 (nullable!9473 (ite c!1449301 (regOne!42951 (reg!21548 r!4885)) (regOne!42950 (reg!21548 r!4885)))))))

(declare-fun b!7895233 () Bool)

(declare-fun e!4660289 () Bool)

(assert (=> b!7895233 (= e!4660289 call!732895)))

(declare-fun b!7895234 () Bool)

(assert (=> b!7895234 (= e!4660291 e!4660289)))

(declare-fun res!3132327 () Bool)

(assert (=> b!7895234 (= res!3132327 call!732896)))

(assert (=> b!7895234 (=> (not res!3132327) (not e!4660289))))

(declare-fun bm!732891 () Bool)

(assert (=> bm!732891 (= call!732895 (nullable!9473 (ite c!1449301 (regTwo!42951 (reg!21548 r!4885)) (regTwo!42950 (reg!21548 r!4885)))))))

(declare-fun b!7895235 () Bool)

(assert (=> b!7895235 (= e!4660287 e!4660292)))

(declare-fun res!3132326 () Bool)

(assert (=> b!7895235 (=> (not res!3132326) (not e!4660292))))

(assert (=> b!7895235 (= res!3132326 (and (not ((_ is EmptyLang!21219) (reg!21548 r!4885))) (not ((_ is ElementMatch!21219) (reg!21548 r!4885)))))))

(assert (= (and d!2357358 (not res!3132329)) b!7895235))

(assert (= (and b!7895235 res!3132326) b!7895232))

(assert (= (and b!7895232 (not res!3132325)) b!7895231))

(assert (= (and b!7895231 c!1449301) b!7895230))

(assert (= (and b!7895231 (not c!1449301)) b!7895234))

(assert (= (and b!7895230 (not res!3132328)) b!7895229))

(assert (= (and b!7895234 res!3132327) b!7895233))

(assert (= (or b!7895229 b!7895233) bm!732891))

(assert (= (or b!7895230 b!7895234) bm!732890))

(declare-fun m!8271840 () Bool)

(assert (=> bm!732890 m!8271840))

(declare-fun m!8271842 () Bool)

(assert (=> bm!732891 m!8271842))

(assert (=> d!2357282 d!2357358))

(declare-fun b!7895236 () Bool)

(declare-fun e!4660295 () Bool)

(declare-fun call!732898 () Bool)

(assert (=> b!7895236 (= e!4660295 call!732898)))

(declare-fun b!7895237 () Bool)

(declare-fun e!4660296 () Bool)

(declare-fun e!4660293 () Bool)

(assert (=> b!7895237 (= e!4660296 e!4660293)))

(declare-fun c!1449302 () Bool)

(assert (=> b!7895237 (= c!1449302 ((_ is Star!21219) lt!2681662))))

(declare-fun b!7895238 () Bool)

(declare-fun e!4660297 () Bool)

(declare-fun call!732897 () Bool)

(assert (=> b!7895238 (= e!4660297 call!732897)))

(declare-fun c!1449303 () Bool)

(declare-fun bm!732892 () Bool)

(assert (=> bm!732892 (= call!732898 (validRegex!11629 (ite c!1449302 (reg!21548 lt!2681662) (ite c!1449303 (regTwo!42951 lt!2681662) (regTwo!42950 lt!2681662)))))))

(declare-fun b!7895239 () Bool)

(declare-fun res!3132334 () Bool)

(declare-fun e!4660294 () Bool)

(assert (=> b!7895239 (=> res!3132334 e!4660294)))

(assert (=> b!7895239 (= res!3132334 (not ((_ is Concat!30064) lt!2681662)))))

(declare-fun e!4660299 () Bool)

(assert (=> b!7895239 (= e!4660299 e!4660294)))

(declare-fun b!7895240 () Bool)

(declare-fun e!4660298 () Bool)

(assert (=> b!7895240 (= e!4660298 call!732897)))

(declare-fun b!7895241 () Bool)

(assert (=> b!7895241 (= e!4660294 e!4660297)))

(declare-fun res!3132331 () Bool)

(assert (=> b!7895241 (=> (not res!3132331) (not e!4660297))))

(declare-fun call!732899 () Bool)

(assert (=> b!7895241 (= res!3132331 call!732899)))

(declare-fun b!7895242 () Bool)

(declare-fun res!3132332 () Bool)

(assert (=> b!7895242 (=> (not res!3132332) (not e!4660298))))

(assert (=> b!7895242 (= res!3132332 call!732899)))

(assert (=> b!7895242 (= e!4660299 e!4660298)))

(declare-fun bm!732893 () Bool)

(assert (=> bm!732893 (= call!732899 (validRegex!11629 (ite c!1449303 (regOne!42951 lt!2681662) (regOne!42950 lt!2681662))))))

(declare-fun b!7895243 () Bool)

(assert (=> b!7895243 (= e!4660293 e!4660295)))

(declare-fun res!3132333 () Bool)

(assert (=> b!7895243 (= res!3132333 (not (nullable!9473 (reg!21548 lt!2681662))))))

(assert (=> b!7895243 (=> (not res!3132333) (not e!4660295))))

(declare-fun b!7895244 () Bool)

(assert (=> b!7895244 (= e!4660293 e!4660299)))

(assert (=> b!7895244 (= c!1449303 ((_ is Union!21219) lt!2681662))))

(declare-fun d!2357360 () Bool)

(declare-fun res!3132330 () Bool)

(assert (=> d!2357360 (=> res!3132330 e!4660296)))

(assert (=> d!2357360 (= res!3132330 ((_ is ElementMatch!21219) lt!2681662))))

(assert (=> d!2357360 (= (validRegex!11629 lt!2681662) e!4660296)))

(declare-fun bm!732894 () Bool)

(assert (=> bm!732894 (= call!732897 call!732898)))

(assert (= (and d!2357360 (not res!3132330)) b!7895237))

(assert (= (and b!7895237 c!1449302) b!7895243))

(assert (= (and b!7895237 (not c!1449302)) b!7895244))

(assert (= (and b!7895243 res!3132333) b!7895236))

(assert (= (and b!7895244 c!1449303) b!7895242))

(assert (= (and b!7895244 (not c!1449303)) b!7895239))

(assert (= (and b!7895242 res!3132332) b!7895240))

(assert (= (and b!7895239 (not res!3132334)) b!7895241))

(assert (= (and b!7895241 res!3132331) b!7895238))

(assert (= (or b!7895240 b!7895238) bm!732894))

(assert (= (or b!7895242 b!7895241) bm!732893))

(assert (= (or b!7895236 bm!732894) bm!732892))

(declare-fun m!8271844 () Bool)

(assert (=> bm!732892 m!8271844))

(declare-fun m!8271846 () Bool)

(assert (=> bm!732893 m!8271846))

(declare-fun m!8271848 () Bool)

(assert (=> b!7895243 m!8271848))

(assert (=> d!2357292 d!2357360))

(declare-fun d!2357362 () Bool)

(declare-fun res!3132339 () Bool)

(declare-fun e!4660304 () Bool)

(assert (=> d!2357362 (=> res!3132339 e!4660304)))

(assert (=> d!2357362 (= res!3132339 ((_ is Nil!73953) (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))))))

(assert (=> d!2357362 (= (forall!18419 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))) lambda!472218) e!4660304)))

(declare-fun b!7895249 () Bool)

(declare-fun e!4660305 () Bool)

(assert (=> b!7895249 (= e!4660304 e!4660305)))

(declare-fun res!3132340 () Bool)

(assert (=> b!7895249 (=> (not res!3132340) (not e!4660305))))

(declare-fun dynLambda!30003 (Int Regex!21219) Bool)

(assert (=> b!7895249 (= res!3132340 (dynLambda!30003 lambda!472218 (h!80401 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))))))

(declare-fun b!7895250 () Bool)

(assert (=> b!7895250 (= e!4660305 (forall!18419 (t!388812 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true)))) lambda!472218))))

(assert (= (and d!2357362 (not res!3132339)) b!7895249))

(assert (= (and b!7895249 res!3132340) b!7895250))

(declare-fun b_lambda!289507 () Bool)

(assert (=> (not b_lambda!289507) (not b!7895249)))

(declare-fun m!8271850 () Bool)

(assert (=> b!7895249 m!8271850))

(declare-fun m!8271852 () Bool)

(assert (=> b!7895250 m!8271852))

(assert (=> d!2357292 d!2357362))

(declare-fun b!7895251 () Bool)

(declare-fun e!4660308 () Bool)

(declare-fun call!732901 () Bool)

(assert (=> b!7895251 (= e!4660308 call!732901)))

(declare-fun b!7895252 () Bool)

(declare-fun e!4660309 () Bool)

(declare-fun e!4660306 () Bool)

(assert (=> b!7895252 (= e!4660309 e!4660306)))

(declare-fun c!1449304 () Bool)

(assert (=> b!7895252 (= c!1449304 ((_ is Star!21219) (ite c!1449264 (regOne!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regOne!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))))))))

(declare-fun b!7895253 () Bool)

(declare-fun e!4660310 () Bool)

(declare-fun call!732900 () Bool)

(assert (=> b!7895253 (= e!4660310 call!732900)))

(declare-fun c!1449305 () Bool)

(declare-fun bm!732895 () Bool)

(assert (=> bm!732895 (= call!732901 (validRegex!11629 (ite c!1449304 (reg!21548 (ite c!1449264 (regOne!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regOne!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))))) (ite c!1449305 (regTwo!42951 (ite c!1449264 (regOne!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regOne!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))))) (regTwo!42950 (ite c!1449264 (regOne!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regOne!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885))))))))))))

(declare-fun b!7895254 () Bool)

(declare-fun res!3132345 () Bool)

(declare-fun e!4660307 () Bool)

(assert (=> b!7895254 (=> res!3132345 e!4660307)))

(assert (=> b!7895254 (= res!3132345 (not ((_ is Concat!30064) (ite c!1449264 (regOne!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regOne!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885))))))))))

(declare-fun e!4660312 () Bool)

(assert (=> b!7895254 (= e!4660312 e!4660307)))

(declare-fun b!7895255 () Bool)

(declare-fun e!4660311 () Bool)

(assert (=> b!7895255 (= e!4660311 call!732900)))

(declare-fun b!7895256 () Bool)

(assert (=> b!7895256 (= e!4660307 e!4660310)))

(declare-fun res!3132342 () Bool)

(assert (=> b!7895256 (=> (not res!3132342) (not e!4660310))))

(declare-fun call!732902 () Bool)

(assert (=> b!7895256 (= res!3132342 call!732902)))

(declare-fun b!7895257 () Bool)

(declare-fun res!3132343 () Bool)

(assert (=> b!7895257 (=> (not res!3132343) (not e!4660311))))

(assert (=> b!7895257 (= res!3132343 call!732902)))

(assert (=> b!7895257 (= e!4660312 e!4660311)))

(declare-fun bm!732896 () Bool)

(assert (=> bm!732896 (= call!732902 (validRegex!11629 (ite c!1449305 (regOne!42951 (ite c!1449264 (regOne!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regOne!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))))) (regOne!42950 (ite c!1449264 (regOne!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regOne!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))))))))))

(declare-fun b!7895258 () Bool)

(assert (=> b!7895258 (= e!4660306 e!4660308)))

(declare-fun res!3132344 () Bool)

(assert (=> b!7895258 (= res!3132344 (not (nullable!9473 (reg!21548 (ite c!1449264 (regOne!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regOne!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))))))))))

(assert (=> b!7895258 (=> (not res!3132344) (not e!4660308))))

(declare-fun b!7895259 () Bool)

(assert (=> b!7895259 (= e!4660306 e!4660312)))

(assert (=> b!7895259 (= c!1449305 ((_ is Union!21219) (ite c!1449264 (regOne!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regOne!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))))))))

(declare-fun d!2357364 () Bool)

(declare-fun res!3132341 () Bool)

(assert (=> d!2357364 (=> res!3132341 e!4660309)))

(assert (=> d!2357364 (= res!3132341 ((_ is ElementMatch!21219) (ite c!1449264 (regOne!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regOne!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))))))))

(assert (=> d!2357364 (= (validRegex!11629 (ite c!1449264 (regOne!42951 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))) (regOne!42950 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885)))))) e!4660309)))

(declare-fun bm!732897 () Bool)

(assert (=> bm!732897 (= call!732900 call!732901)))

(assert (= (and d!2357364 (not res!3132341)) b!7895252))

(assert (= (and b!7895252 c!1449304) b!7895258))

(assert (= (and b!7895252 (not c!1449304)) b!7895259))

(assert (= (and b!7895258 res!3132344) b!7895251))

(assert (= (and b!7895259 c!1449305) b!7895257))

(assert (= (and b!7895259 (not c!1449305)) b!7895254))

(assert (= (and b!7895257 res!3132343) b!7895255))

(assert (= (and b!7895254 (not res!3132345)) b!7895256))

(assert (= (and b!7895256 res!3132342) b!7895253))

(assert (= (or b!7895255 b!7895253) bm!732897))

(assert (= (or b!7895257 b!7895256) bm!732896))

(assert (= (or b!7895251 bm!732897) bm!732895))

(declare-fun m!8271854 () Bool)

(assert (=> bm!732895 m!8271854))

(declare-fun m!8271856 () Bool)

(assert (=> bm!732896 m!8271856))

(declare-fun m!8271858 () Bool)

(assert (=> b!7895258 m!8271858))

(assert (=> bm!732872 d!2357364))

(declare-fun d!2357366 () Bool)

(assert (=> d!2357366 (= (nullable!9473 (reg!21548 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885))))) (nullableFct!3743 (reg!21548 (ite c!1449216 (reg!21548 r!4885) (ite c!1449217 (regTwo!42951 r!4885) (regTwo!42950 r!4885))))))))

(declare-fun bs!1967721 () Bool)

(assert (= bs!1967721 d!2357366))

(declare-fun m!8271860 () Bool)

(assert (=> bs!1967721 m!8271860))

(assert (=> b!7894890 d!2357366))

(declare-fun d!2357368 () Bool)

(assert (=> d!2357368 (= (nullable!9473 (reg!21548 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885)))) (nullableFct!3743 (reg!21548 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885)))))))

(declare-fun bs!1967722 () Bool)

(assert (= bs!1967722 d!2357368))

(declare-fun m!8271862 () Bool)

(assert (=> bs!1967722 m!8271862))

(assert (=> b!7894783 d!2357368))

(declare-fun d!2357370 () Bool)

(declare-fun res!3132346 () Bool)

(declare-fun e!4660313 () Bool)

(assert (=> d!2357370 (=> res!3132346 e!4660313)))

(assert (=> d!2357370 (= res!3132346 ((_ is Nil!73953) lt!2681667))))

(assert (=> d!2357370 (= (forall!18419 lt!2681667 lambda!472223) e!4660313)))

(declare-fun b!7895260 () Bool)

(declare-fun e!4660314 () Bool)

(assert (=> b!7895260 (= e!4660313 e!4660314)))

(declare-fun res!3132347 () Bool)

(assert (=> b!7895260 (=> (not res!3132347) (not e!4660314))))

(assert (=> b!7895260 (= res!3132347 (dynLambda!30003 lambda!472223 (h!80401 lt!2681667)))))

(declare-fun b!7895261 () Bool)

(assert (=> b!7895261 (= e!4660314 (forall!18419 (t!388812 lt!2681667) lambda!472223))))

(assert (= (and d!2357370 (not res!3132346)) b!7895260))

(assert (= (and b!7895260 res!3132347) b!7895261))

(declare-fun b_lambda!289509 () Bool)

(assert (=> (not b_lambda!289509) (not b!7895260)))

(declare-fun m!8271864 () Bool)

(assert (=> b!7895260 m!8271864))

(declare-fun m!8271866 () Bool)

(assert (=> b!7895261 m!8271866))

(assert (=> d!2357306 d!2357370))

(declare-fun b!7895262 () Bool)

(declare-fun e!4660317 () Bool)

(declare-fun call!732904 () Bool)

(assert (=> b!7895262 (= e!4660317 call!732904)))

(declare-fun b!7895263 () Bool)

(declare-fun e!4660318 () Bool)

(declare-fun e!4660315 () Bool)

(assert (=> b!7895263 (= e!4660318 e!4660315)))

(declare-fun c!1449306 () Bool)

(assert (=> b!7895263 (= c!1449306 ((_ is Star!21219) (ite c!1449228 (regOne!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regOne!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))))))))

(declare-fun b!7895264 () Bool)

(declare-fun e!4660319 () Bool)

(declare-fun call!732903 () Bool)

(assert (=> b!7895264 (= e!4660319 call!732903)))

(declare-fun bm!732898 () Bool)

(declare-fun c!1449307 () Bool)

(assert (=> bm!732898 (= call!732904 (validRegex!11629 (ite c!1449306 (reg!21548 (ite c!1449228 (regOne!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regOne!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))))) (ite c!1449307 (regTwo!42951 (ite c!1449228 (regOne!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regOne!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))))) (regTwo!42950 (ite c!1449228 (regOne!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regOne!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885)))))))))))

(declare-fun b!7895265 () Bool)

(declare-fun res!3132352 () Bool)

(declare-fun e!4660316 () Bool)

(assert (=> b!7895265 (=> res!3132352 e!4660316)))

(assert (=> b!7895265 (= res!3132352 (not ((_ is Concat!30064) (ite c!1449228 (regOne!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regOne!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885)))))))))

(declare-fun e!4660321 () Bool)

(assert (=> b!7895265 (= e!4660321 e!4660316)))

(declare-fun b!7895266 () Bool)

(declare-fun e!4660320 () Bool)

(assert (=> b!7895266 (= e!4660320 call!732903)))

(declare-fun b!7895267 () Bool)

(assert (=> b!7895267 (= e!4660316 e!4660319)))

(declare-fun res!3132349 () Bool)

(assert (=> b!7895267 (=> (not res!3132349) (not e!4660319))))

(declare-fun call!732905 () Bool)

(assert (=> b!7895267 (= res!3132349 call!732905)))

(declare-fun b!7895268 () Bool)

(declare-fun res!3132350 () Bool)

(assert (=> b!7895268 (=> (not res!3132350) (not e!4660320))))

(assert (=> b!7895268 (= res!3132350 call!732905)))

(assert (=> b!7895268 (= e!4660321 e!4660320)))

(declare-fun bm!732899 () Bool)

(assert (=> bm!732899 (= call!732905 (validRegex!11629 (ite c!1449307 (regOne!42951 (ite c!1449228 (regOne!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regOne!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))))) (regOne!42950 (ite c!1449228 (regOne!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regOne!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))))))))))

(declare-fun b!7895269 () Bool)

(assert (=> b!7895269 (= e!4660315 e!4660317)))

(declare-fun res!3132351 () Bool)

(assert (=> b!7895269 (= res!3132351 (not (nullable!9473 (reg!21548 (ite c!1449228 (regOne!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regOne!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))))))))))

(assert (=> b!7895269 (=> (not res!3132351) (not e!4660317))))

(declare-fun b!7895270 () Bool)

(assert (=> b!7895270 (= e!4660315 e!4660321)))

(assert (=> b!7895270 (= c!1449307 ((_ is Union!21219) (ite c!1449228 (regOne!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regOne!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))))))))

(declare-fun d!2357372 () Bool)

(declare-fun res!3132348 () Bool)

(assert (=> d!2357372 (=> res!3132348 e!4660318)))

(assert (=> d!2357372 (= res!3132348 ((_ is ElementMatch!21219) (ite c!1449228 (regOne!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regOne!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))))))))

(assert (=> d!2357372 (= (validRegex!11629 (ite c!1449228 (regOne!42951 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))) (regOne!42950 (ite c!1449217 (regOne!42951 r!4885) (regOne!42950 r!4885))))) e!4660318)))

(declare-fun bm!732900 () Bool)

(assert (=> bm!732900 (= call!732903 call!732904)))

(assert (= (and d!2357372 (not res!3132348)) b!7895263))

(assert (= (and b!7895263 c!1449306) b!7895269))

(assert (= (and b!7895263 (not c!1449306)) b!7895270))

(assert (= (and b!7895269 res!3132351) b!7895262))

(assert (= (and b!7895270 c!1449307) b!7895268))

(assert (= (and b!7895270 (not c!1449307)) b!7895265))

(assert (= (and b!7895268 res!3132350) b!7895266))

(assert (= (and b!7895265 (not res!3132352)) b!7895267))

(assert (= (and b!7895267 res!3132349) b!7895264))

(assert (= (or b!7895266 b!7895264) bm!732900))

(assert (= (or b!7895268 b!7895267) bm!732899))

(assert (= (or b!7895262 bm!732900) bm!732898))

(declare-fun m!8271868 () Bool)

(assert (=> bm!732898 m!8271868))

(declare-fun m!8271870 () Bool)

(assert (=> bm!732899 m!8271870))

(declare-fun m!8271872 () Bool)

(assert (=> b!7895269 m!8271872))

(assert (=> bm!732857 d!2357372))

(declare-fun e!4660322 () Bool)

(assert (=> b!7894937 (= tp!2350974 e!4660322)))

(declare-fun b!7895271 () Bool)

(assert (=> b!7895271 (= e!4660322 tp_is_empty!52837)))

(declare-fun b!7895274 () Bool)

(declare-fun tp!2351190 () Bool)

(declare-fun tp!2351189 () Bool)

(assert (=> b!7895274 (= e!4660322 (and tp!2351190 tp!2351189))))

(declare-fun b!7895273 () Bool)

(declare-fun tp!2351192 () Bool)

(assert (=> b!7895273 (= e!4660322 tp!2351192)))

(declare-fun b!7895272 () Bool)

(declare-fun tp!2351193 () Bool)

(declare-fun tp!2351191 () Bool)

(assert (=> b!7895272 (= e!4660322 (and tp!2351193 tp!2351191))))

(assert (= (and b!7894937 ((_ is ElementMatch!21219) (regOne!42951 (regTwo!42950 (regTwo!42951 r!4885))))) b!7895271))

(assert (= (and b!7894937 ((_ is Concat!30064) (regOne!42951 (regTwo!42950 (regTwo!42951 r!4885))))) b!7895272))

(assert (= (and b!7894937 ((_ is Star!21219) (regOne!42951 (regTwo!42950 (regTwo!42951 r!4885))))) b!7895273))

(assert (= (and b!7894937 ((_ is Union!21219) (regOne!42951 (regTwo!42950 (regTwo!42951 r!4885))))) b!7895274))

(declare-fun e!4660323 () Bool)

(assert (=> b!7894937 (= tp!2350973 e!4660323)))

(declare-fun b!7895275 () Bool)

(assert (=> b!7895275 (= e!4660323 tp_is_empty!52837)))

(declare-fun b!7895278 () Bool)

(declare-fun tp!2351195 () Bool)

(declare-fun tp!2351194 () Bool)

(assert (=> b!7895278 (= e!4660323 (and tp!2351195 tp!2351194))))

(declare-fun b!7895277 () Bool)

(declare-fun tp!2351197 () Bool)

(assert (=> b!7895277 (= e!4660323 tp!2351197)))

(declare-fun b!7895276 () Bool)

(declare-fun tp!2351198 () Bool)

(declare-fun tp!2351196 () Bool)

(assert (=> b!7895276 (= e!4660323 (and tp!2351198 tp!2351196))))

(assert (= (and b!7894937 ((_ is ElementMatch!21219) (regTwo!42951 (regTwo!42950 (regTwo!42951 r!4885))))) b!7895275))

(assert (= (and b!7894937 ((_ is Concat!30064) (regTwo!42951 (regTwo!42950 (regTwo!42951 r!4885))))) b!7895276))

(assert (= (and b!7894937 ((_ is Star!21219) (regTwo!42951 (regTwo!42950 (regTwo!42951 r!4885))))) b!7895277))

(assert (= (and b!7894937 ((_ is Union!21219) (regTwo!42951 (regTwo!42950 (regTwo!42951 r!4885))))) b!7895278))

(declare-fun e!4660324 () Bool)

(assert (=> b!7894901 (= tp!2350947 e!4660324)))

(declare-fun b!7895279 () Bool)

(assert (=> b!7895279 (= e!4660324 tp_is_empty!52837)))

(declare-fun b!7895282 () Bool)

(declare-fun tp!2351200 () Bool)

(declare-fun tp!2351199 () Bool)

(assert (=> b!7895282 (= e!4660324 (and tp!2351200 tp!2351199))))

(declare-fun b!7895281 () Bool)

(declare-fun tp!2351202 () Bool)

(assert (=> b!7895281 (= e!4660324 tp!2351202)))

(declare-fun b!7895280 () Bool)

(declare-fun tp!2351203 () Bool)

(declare-fun tp!2351201 () Bool)

(assert (=> b!7895280 (= e!4660324 (and tp!2351203 tp!2351201))))

(assert (= (and b!7894901 ((_ is ElementMatch!21219) (regOne!42950 (reg!21548 (regTwo!42951 r!4885))))) b!7895279))

(assert (= (and b!7894901 ((_ is Concat!30064) (regOne!42950 (reg!21548 (regTwo!42951 r!4885))))) b!7895280))

(assert (= (and b!7894901 ((_ is Star!21219) (regOne!42950 (reg!21548 (regTwo!42951 r!4885))))) b!7895281))

(assert (= (and b!7894901 ((_ is Union!21219) (regOne!42950 (reg!21548 (regTwo!42951 r!4885))))) b!7895282))

(declare-fun e!4660325 () Bool)

(assert (=> b!7894901 (= tp!2350945 e!4660325)))

(declare-fun b!7895283 () Bool)

(assert (=> b!7895283 (= e!4660325 tp_is_empty!52837)))

(declare-fun b!7895286 () Bool)

(declare-fun tp!2351205 () Bool)

(declare-fun tp!2351204 () Bool)

(assert (=> b!7895286 (= e!4660325 (and tp!2351205 tp!2351204))))

(declare-fun b!7895285 () Bool)

(declare-fun tp!2351207 () Bool)

(assert (=> b!7895285 (= e!4660325 tp!2351207)))

(declare-fun b!7895284 () Bool)

(declare-fun tp!2351208 () Bool)

(declare-fun tp!2351206 () Bool)

(assert (=> b!7895284 (= e!4660325 (and tp!2351208 tp!2351206))))

(assert (= (and b!7894901 ((_ is ElementMatch!21219) (regTwo!42950 (reg!21548 (regTwo!42951 r!4885))))) b!7895283))

(assert (= (and b!7894901 ((_ is Concat!30064) (regTwo!42950 (reg!21548 (regTwo!42951 r!4885))))) b!7895284))

(assert (= (and b!7894901 ((_ is Star!21219) (regTwo!42950 (reg!21548 (regTwo!42951 r!4885))))) b!7895285))

(assert (= (and b!7894901 ((_ is Union!21219) (regTwo!42950 (reg!21548 (regTwo!42951 r!4885))))) b!7895286))

(declare-fun e!4660326 () Bool)

(assert (=> b!7894995 (= tp!2351052 e!4660326)))

(declare-fun b!7895287 () Bool)

(assert (=> b!7895287 (= e!4660326 tp_is_empty!52837)))

(declare-fun b!7895290 () Bool)

(declare-fun tp!2351210 () Bool)

(declare-fun tp!2351209 () Bool)

(assert (=> b!7895290 (= e!4660326 (and tp!2351210 tp!2351209))))

(declare-fun b!7895289 () Bool)

(declare-fun tp!2351212 () Bool)

(assert (=> b!7895289 (= e!4660326 tp!2351212)))

(declare-fun b!7895288 () Bool)

(declare-fun tp!2351213 () Bool)

(declare-fun tp!2351211 () Bool)

(assert (=> b!7895288 (= e!4660326 (and tp!2351213 tp!2351211))))

(assert (= (and b!7894995 ((_ is ElementMatch!21219) (regOne!42950 (regOne!42950 (reg!21548 r!4885))))) b!7895287))

(assert (= (and b!7894995 ((_ is Concat!30064) (regOne!42950 (regOne!42950 (reg!21548 r!4885))))) b!7895288))

(assert (= (and b!7894995 ((_ is Star!21219) (regOne!42950 (regOne!42950 (reg!21548 r!4885))))) b!7895289))

(assert (= (and b!7894995 ((_ is Union!21219) (regOne!42950 (regOne!42950 (reg!21548 r!4885))))) b!7895290))

(declare-fun e!4660327 () Bool)

(assert (=> b!7894995 (= tp!2351050 e!4660327)))

(declare-fun b!7895291 () Bool)

(assert (=> b!7895291 (= e!4660327 tp_is_empty!52837)))

(declare-fun b!7895294 () Bool)

(declare-fun tp!2351215 () Bool)

(declare-fun tp!2351214 () Bool)

(assert (=> b!7895294 (= e!4660327 (and tp!2351215 tp!2351214))))

(declare-fun b!7895293 () Bool)

(declare-fun tp!2351217 () Bool)

(assert (=> b!7895293 (= e!4660327 tp!2351217)))

(declare-fun b!7895292 () Bool)

(declare-fun tp!2351218 () Bool)

(declare-fun tp!2351216 () Bool)

(assert (=> b!7895292 (= e!4660327 (and tp!2351218 tp!2351216))))

(assert (= (and b!7894995 ((_ is ElementMatch!21219) (regTwo!42950 (regOne!42950 (reg!21548 r!4885))))) b!7895291))

(assert (= (and b!7894995 ((_ is Concat!30064) (regTwo!42950 (regOne!42950 (reg!21548 r!4885))))) b!7895292))

(assert (= (and b!7894995 ((_ is Star!21219) (regTwo!42950 (regOne!42950 (reg!21548 r!4885))))) b!7895293))

(assert (= (and b!7894995 ((_ is Union!21219) (regTwo!42950 (regOne!42950 (reg!21548 r!4885))))) b!7895294))

(declare-fun e!4660328 () Bool)

(assert (=> b!7894903 (= tp!2350944 e!4660328)))

(declare-fun b!7895295 () Bool)

(assert (=> b!7895295 (= e!4660328 tp_is_empty!52837)))

(declare-fun b!7895298 () Bool)

(declare-fun tp!2351220 () Bool)

(declare-fun tp!2351219 () Bool)

(assert (=> b!7895298 (= e!4660328 (and tp!2351220 tp!2351219))))

(declare-fun b!7895297 () Bool)

(declare-fun tp!2351222 () Bool)

(assert (=> b!7895297 (= e!4660328 tp!2351222)))

(declare-fun b!7895296 () Bool)

(declare-fun tp!2351223 () Bool)

(declare-fun tp!2351221 () Bool)

(assert (=> b!7895296 (= e!4660328 (and tp!2351223 tp!2351221))))

(assert (= (and b!7894903 ((_ is ElementMatch!21219) (regOne!42951 (reg!21548 (regTwo!42951 r!4885))))) b!7895295))

(assert (= (and b!7894903 ((_ is Concat!30064) (regOne!42951 (reg!21548 (regTwo!42951 r!4885))))) b!7895296))

(assert (= (and b!7894903 ((_ is Star!21219) (regOne!42951 (reg!21548 (regTwo!42951 r!4885))))) b!7895297))

(assert (= (and b!7894903 ((_ is Union!21219) (regOne!42951 (reg!21548 (regTwo!42951 r!4885))))) b!7895298))

(declare-fun e!4660329 () Bool)

(assert (=> b!7894903 (= tp!2350943 e!4660329)))

(declare-fun b!7895299 () Bool)

(assert (=> b!7895299 (= e!4660329 tp_is_empty!52837)))

(declare-fun b!7895302 () Bool)

(declare-fun tp!2351225 () Bool)

(declare-fun tp!2351224 () Bool)

(assert (=> b!7895302 (= e!4660329 (and tp!2351225 tp!2351224))))

(declare-fun b!7895301 () Bool)

(declare-fun tp!2351227 () Bool)

(assert (=> b!7895301 (= e!4660329 tp!2351227)))

(declare-fun b!7895300 () Bool)

(declare-fun tp!2351228 () Bool)

(declare-fun tp!2351226 () Bool)

(assert (=> b!7895300 (= e!4660329 (and tp!2351228 tp!2351226))))

(assert (= (and b!7894903 ((_ is ElementMatch!21219) (regTwo!42951 (reg!21548 (regTwo!42951 r!4885))))) b!7895299))

(assert (= (and b!7894903 ((_ is Concat!30064) (regTwo!42951 (reg!21548 (regTwo!42951 r!4885))))) b!7895300))

(assert (= (and b!7894903 ((_ is Star!21219) (regTwo!42951 (reg!21548 (regTwo!42951 r!4885))))) b!7895301))

(assert (= (and b!7894903 ((_ is Union!21219) (regTwo!42951 (reg!21548 (regTwo!42951 r!4885))))) b!7895302))

(declare-fun e!4660330 () Bool)

(assert (=> b!7894997 (= tp!2351049 e!4660330)))

(declare-fun b!7895303 () Bool)

(assert (=> b!7895303 (= e!4660330 tp_is_empty!52837)))

(declare-fun b!7895306 () Bool)

(declare-fun tp!2351230 () Bool)

(declare-fun tp!2351229 () Bool)

(assert (=> b!7895306 (= e!4660330 (and tp!2351230 tp!2351229))))

(declare-fun b!7895305 () Bool)

(declare-fun tp!2351232 () Bool)

(assert (=> b!7895305 (= e!4660330 tp!2351232)))

(declare-fun b!7895304 () Bool)

(declare-fun tp!2351233 () Bool)

(declare-fun tp!2351231 () Bool)

(assert (=> b!7895304 (= e!4660330 (and tp!2351233 tp!2351231))))

(assert (= (and b!7894997 ((_ is ElementMatch!21219) (regOne!42951 (regOne!42950 (reg!21548 r!4885))))) b!7895303))

(assert (= (and b!7894997 ((_ is Concat!30064) (regOne!42951 (regOne!42950 (reg!21548 r!4885))))) b!7895304))

(assert (= (and b!7894997 ((_ is Star!21219) (regOne!42951 (regOne!42950 (reg!21548 r!4885))))) b!7895305))

(assert (= (and b!7894997 ((_ is Union!21219) (regOne!42951 (regOne!42950 (reg!21548 r!4885))))) b!7895306))

(declare-fun e!4660331 () Bool)

(assert (=> b!7894997 (= tp!2351048 e!4660331)))

(declare-fun b!7895307 () Bool)

(assert (=> b!7895307 (= e!4660331 tp_is_empty!52837)))

(declare-fun b!7895310 () Bool)

(declare-fun tp!2351235 () Bool)

(declare-fun tp!2351234 () Bool)

(assert (=> b!7895310 (= e!4660331 (and tp!2351235 tp!2351234))))

(declare-fun b!7895309 () Bool)

(declare-fun tp!2351237 () Bool)

(assert (=> b!7895309 (= e!4660331 tp!2351237)))

(declare-fun b!7895308 () Bool)

(declare-fun tp!2351238 () Bool)

(declare-fun tp!2351236 () Bool)

(assert (=> b!7895308 (= e!4660331 (and tp!2351238 tp!2351236))))

(assert (= (and b!7894997 ((_ is ElementMatch!21219) (regTwo!42951 (regOne!42950 (reg!21548 r!4885))))) b!7895307))

(assert (= (and b!7894997 ((_ is Concat!30064) (regTwo!42951 (regOne!42950 (reg!21548 r!4885))))) b!7895308))

(assert (= (and b!7894997 ((_ is Star!21219) (regTwo!42951 (regOne!42950 (reg!21548 r!4885))))) b!7895309))

(assert (= (and b!7894997 ((_ is Union!21219) (regTwo!42951 (regOne!42950 (reg!21548 r!4885))))) b!7895310))

(declare-fun e!4660332 () Bool)

(assert (=> b!7894947 (= tp!2350992 e!4660332)))

(declare-fun b!7895311 () Bool)

(assert (=> b!7895311 (= e!4660332 tp_is_empty!52837)))

(declare-fun b!7895314 () Bool)

(declare-fun tp!2351240 () Bool)

(declare-fun tp!2351239 () Bool)

(assert (=> b!7895314 (= e!4660332 (and tp!2351240 tp!2351239))))

(declare-fun b!7895313 () Bool)

(declare-fun tp!2351242 () Bool)

(assert (=> b!7895313 (= e!4660332 tp!2351242)))

(declare-fun b!7895312 () Bool)

(declare-fun tp!2351243 () Bool)

(declare-fun tp!2351241 () Bool)

(assert (=> b!7895312 (= e!4660332 (and tp!2351243 tp!2351241))))

(assert (= (and b!7894947 ((_ is ElementMatch!21219) (regOne!42950 (regOne!42951 (regOne!42950 r!4885))))) b!7895311))

(assert (= (and b!7894947 ((_ is Concat!30064) (regOne!42950 (regOne!42951 (regOne!42950 r!4885))))) b!7895312))

(assert (= (and b!7894947 ((_ is Star!21219) (regOne!42950 (regOne!42951 (regOne!42950 r!4885))))) b!7895313))

(assert (= (and b!7894947 ((_ is Union!21219) (regOne!42950 (regOne!42951 (regOne!42950 r!4885))))) b!7895314))

(declare-fun e!4660333 () Bool)

(assert (=> b!7894947 (= tp!2350990 e!4660333)))

(declare-fun b!7895315 () Bool)

(assert (=> b!7895315 (= e!4660333 tp_is_empty!52837)))

(declare-fun b!7895318 () Bool)

(declare-fun tp!2351245 () Bool)

(declare-fun tp!2351244 () Bool)

(assert (=> b!7895318 (= e!4660333 (and tp!2351245 tp!2351244))))

(declare-fun b!7895317 () Bool)

(declare-fun tp!2351247 () Bool)

(assert (=> b!7895317 (= e!4660333 tp!2351247)))

(declare-fun b!7895316 () Bool)

(declare-fun tp!2351248 () Bool)

(declare-fun tp!2351246 () Bool)

(assert (=> b!7895316 (= e!4660333 (and tp!2351248 tp!2351246))))

(assert (= (and b!7894947 ((_ is ElementMatch!21219) (regTwo!42950 (regOne!42951 (regOne!42950 r!4885))))) b!7895315))

(assert (= (and b!7894947 ((_ is Concat!30064) (regTwo!42950 (regOne!42951 (regOne!42950 r!4885))))) b!7895316))

(assert (= (and b!7894947 ((_ is Star!21219) (regTwo!42950 (regOne!42951 (regOne!42950 r!4885))))) b!7895317))

(assert (= (and b!7894947 ((_ is Union!21219) (regTwo!42950 (regOne!42951 (regOne!42950 r!4885))))) b!7895318))

(declare-fun e!4660334 () Bool)

(assert (=> b!7894920 (= tp!2350956 e!4660334)))

(declare-fun b!7895319 () Bool)

(assert (=> b!7895319 (= e!4660334 tp_is_empty!52837)))

(declare-fun b!7895322 () Bool)

(declare-fun tp!2351250 () Bool)

(declare-fun tp!2351249 () Bool)

(assert (=> b!7895322 (= e!4660334 (and tp!2351250 tp!2351249))))

(declare-fun b!7895321 () Bool)

(declare-fun tp!2351252 () Bool)

(assert (=> b!7895321 (= e!4660334 tp!2351252)))

(declare-fun b!7895320 () Bool)

(declare-fun tp!2351253 () Bool)

(declare-fun tp!2351251 () Bool)

(assert (=> b!7895320 (= e!4660334 (and tp!2351253 tp!2351251))))

(assert (= (and b!7894920 ((_ is ElementMatch!21219) (reg!21548 (regOne!42951 (regTwo!42951 r!4885))))) b!7895319))

(assert (= (and b!7894920 ((_ is Concat!30064) (reg!21548 (regOne!42951 (regTwo!42951 r!4885))))) b!7895320))

(assert (= (and b!7894920 ((_ is Star!21219) (reg!21548 (regOne!42951 (regTwo!42951 r!4885))))) b!7895321))

(assert (= (and b!7894920 ((_ is Union!21219) (reg!21548 (regOne!42951 (regTwo!42951 r!4885))))) b!7895322))

(declare-fun e!4660335 () Bool)

(assert (=> b!7894928 (= tp!2350966 e!4660335)))

(declare-fun b!7895323 () Bool)

(assert (=> b!7895323 (= e!4660335 tp_is_empty!52837)))

(declare-fun b!7895326 () Bool)

(declare-fun tp!2351255 () Bool)

(declare-fun tp!2351254 () Bool)

(assert (=> b!7895326 (= e!4660335 (and tp!2351255 tp!2351254))))

(declare-fun b!7895325 () Bool)

(declare-fun tp!2351257 () Bool)

(assert (=> b!7895325 (= e!4660335 tp!2351257)))

(declare-fun b!7895324 () Bool)

(declare-fun tp!2351258 () Bool)

(declare-fun tp!2351256 () Bool)

(assert (=> b!7895324 (= e!4660335 (and tp!2351258 tp!2351256))))

(assert (= (and b!7894928 ((_ is ElementMatch!21219) (reg!21548 (reg!21548 (regOne!42950 r!4885))))) b!7895323))

(assert (= (and b!7894928 ((_ is Concat!30064) (reg!21548 (reg!21548 (regOne!42950 r!4885))))) b!7895324))

(assert (= (and b!7894928 ((_ is Star!21219) (reg!21548 (reg!21548 (regOne!42950 r!4885))))) b!7895325))

(assert (= (and b!7894928 ((_ is Union!21219) (reg!21548 (reg!21548 (regOne!42950 r!4885))))) b!7895326))

(declare-fun e!4660336 () Bool)

(assert (=> b!7894952 (= tp!2350996 e!4660336)))

(declare-fun b!7895327 () Bool)

(assert (=> b!7895327 (= e!4660336 tp_is_empty!52837)))

(declare-fun b!7895330 () Bool)

(declare-fun tp!2351260 () Bool)

(declare-fun tp!2351259 () Bool)

(assert (=> b!7895330 (= e!4660336 (and tp!2351260 tp!2351259))))

(declare-fun b!7895329 () Bool)

(declare-fun tp!2351262 () Bool)

(assert (=> b!7895329 (= e!4660336 tp!2351262)))

(declare-fun b!7895328 () Bool)

(declare-fun tp!2351263 () Bool)

(declare-fun tp!2351261 () Bool)

(assert (=> b!7895328 (= e!4660336 (and tp!2351263 tp!2351261))))

(assert (= (and b!7894952 ((_ is ElementMatch!21219) (reg!21548 (regTwo!42951 (regOne!42950 r!4885))))) b!7895327))

(assert (= (and b!7894952 ((_ is Concat!30064) (reg!21548 (regTwo!42951 (regOne!42950 r!4885))))) b!7895328))

(assert (= (and b!7894952 ((_ is Star!21219) (reg!21548 (regTwo!42951 (regOne!42950 r!4885))))) b!7895329))

(assert (= (and b!7894952 ((_ is Union!21219) (reg!21548 (regTwo!42951 (regOne!42950 r!4885))))) b!7895330))

(declare-fun e!4660337 () Bool)

(assert (=> b!7894961 (= tp!2351004 e!4660337)))

(declare-fun b!7895331 () Bool)

(assert (=> b!7895331 (= e!4660337 tp_is_empty!52837)))

(declare-fun b!7895334 () Bool)

(declare-fun tp!2351265 () Bool)

(declare-fun tp!2351264 () Bool)

(assert (=> b!7895334 (= e!4660337 (and tp!2351265 tp!2351264))))

(declare-fun b!7895333 () Bool)

(declare-fun tp!2351267 () Bool)

(assert (=> b!7895333 (= e!4660337 tp!2351267)))

(declare-fun b!7895332 () Bool)

(declare-fun tp!2351268 () Bool)

(declare-fun tp!2351266 () Bool)

(assert (=> b!7895332 (= e!4660337 (and tp!2351268 tp!2351266))))

(assert (= (and b!7894961 ((_ is ElementMatch!21219) (regOne!42951 (regOne!42950 (regOne!42950 r!4885))))) b!7895331))

(assert (= (and b!7894961 ((_ is Concat!30064) (regOne!42951 (regOne!42950 (regOne!42950 r!4885))))) b!7895332))

(assert (= (and b!7894961 ((_ is Star!21219) (regOne!42951 (regOne!42950 (regOne!42950 r!4885))))) b!7895333))

(assert (= (and b!7894961 ((_ is Union!21219) (regOne!42951 (regOne!42950 (regOne!42950 r!4885))))) b!7895334))

(declare-fun e!4660338 () Bool)

(assert (=> b!7894961 (= tp!2351003 e!4660338)))

(declare-fun b!7895335 () Bool)

(assert (=> b!7895335 (= e!4660338 tp_is_empty!52837)))

(declare-fun b!7895338 () Bool)

(declare-fun tp!2351270 () Bool)

(declare-fun tp!2351269 () Bool)

(assert (=> b!7895338 (= e!4660338 (and tp!2351270 tp!2351269))))

(declare-fun b!7895337 () Bool)

(declare-fun tp!2351272 () Bool)

(assert (=> b!7895337 (= e!4660338 tp!2351272)))

(declare-fun b!7895336 () Bool)

(declare-fun tp!2351273 () Bool)

(declare-fun tp!2351271 () Bool)

(assert (=> b!7895336 (= e!4660338 (and tp!2351273 tp!2351271))))

(assert (= (and b!7894961 ((_ is ElementMatch!21219) (regTwo!42951 (regOne!42950 (regOne!42950 r!4885))))) b!7895335))

(assert (= (and b!7894961 ((_ is Concat!30064) (regTwo!42951 (regOne!42950 (regOne!42950 r!4885))))) b!7895336))

(assert (= (and b!7894961 ((_ is Star!21219) (regTwo!42951 (regOne!42950 (regOne!42950 r!4885))))) b!7895337))

(assert (= (and b!7894961 ((_ is Union!21219) (regTwo!42951 (regOne!42950 (regOne!42950 r!4885))))) b!7895338))

(declare-fun e!4660339 () Bool)

(assert (=> b!7894935 (= tp!2350977 e!4660339)))

(declare-fun b!7895339 () Bool)

(assert (=> b!7895339 (= e!4660339 tp_is_empty!52837)))

(declare-fun b!7895342 () Bool)

(declare-fun tp!2351275 () Bool)

(declare-fun tp!2351274 () Bool)

(assert (=> b!7895342 (= e!4660339 (and tp!2351275 tp!2351274))))

(declare-fun b!7895341 () Bool)

(declare-fun tp!2351277 () Bool)

(assert (=> b!7895341 (= e!4660339 tp!2351277)))

(declare-fun b!7895340 () Bool)

(declare-fun tp!2351278 () Bool)

(declare-fun tp!2351276 () Bool)

(assert (=> b!7895340 (= e!4660339 (and tp!2351278 tp!2351276))))

(assert (= (and b!7894935 ((_ is ElementMatch!21219) (regOne!42950 (regTwo!42950 (regTwo!42951 r!4885))))) b!7895339))

(assert (= (and b!7894935 ((_ is Concat!30064) (regOne!42950 (regTwo!42950 (regTwo!42951 r!4885))))) b!7895340))

(assert (= (and b!7894935 ((_ is Star!21219) (regOne!42950 (regTwo!42950 (regTwo!42951 r!4885))))) b!7895341))

(assert (= (and b!7894935 ((_ is Union!21219) (regOne!42950 (regTwo!42950 (regTwo!42951 r!4885))))) b!7895342))

(declare-fun e!4660340 () Bool)

(assert (=> b!7894935 (= tp!2350975 e!4660340)))

(declare-fun b!7895343 () Bool)

(assert (=> b!7895343 (= e!4660340 tp_is_empty!52837)))

(declare-fun b!7895346 () Bool)

(declare-fun tp!2351280 () Bool)

(declare-fun tp!2351279 () Bool)

(assert (=> b!7895346 (= e!4660340 (and tp!2351280 tp!2351279))))

(declare-fun b!7895345 () Bool)

(declare-fun tp!2351282 () Bool)

(assert (=> b!7895345 (= e!4660340 tp!2351282)))

(declare-fun b!7895344 () Bool)

(declare-fun tp!2351283 () Bool)

(declare-fun tp!2351281 () Bool)

(assert (=> b!7895344 (= e!4660340 (and tp!2351283 tp!2351281))))

(assert (= (and b!7894935 ((_ is ElementMatch!21219) (regTwo!42950 (regTwo!42950 (regTwo!42951 r!4885))))) b!7895343))

(assert (= (and b!7894935 ((_ is Concat!30064) (regTwo!42950 (regTwo!42950 (regTwo!42951 r!4885))))) b!7895344))

(assert (= (and b!7894935 ((_ is Star!21219) (regTwo!42950 (regTwo!42950 (regTwo!42951 r!4885))))) b!7895345))

(assert (= (and b!7894935 ((_ is Union!21219) (regTwo!42950 (regTwo!42950 (regTwo!42951 r!4885))))) b!7895346))

(declare-fun e!4660341 () Bool)

(assert (=> b!7894959 (= tp!2351007 e!4660341)))

(declare-fun b!7895347 () Bool)

(assert (=> b!7895347 (= e!4660341 tp_is_empty!52837)))

(declare-fun b!7895350 () Bool)

(declare-fun tp!2351285 () Bool)

(declare-fun tp!2351284 () Bool)

(assert (=> b!7895350 (= e!4660341 (and tp!2351285 tp!2351284))))

(declare-fun b!7895349 () Bool)

(declare-fun tp!2351287 () Bool)

(assert (=> b!7895349 (= e!4660341 tp!2351287)))

(declare-fun b!7895348 () Bool)

(declare-fun tp!2351288 () Bool)

(declare-fun tp!2351286 () Bool)

(assert (=> b!7895348 (= e!4660341 (and tp!2351288 tp!2351286))))

(assert (= (and b!7894959 ((_ is ElementMatch!21219) (regOne!42950 (regOne!42950 (regOne!42950 r!4885))))) b!7895347))

(assert (= (and b!7894959 ((_ is Concat!30064) (regOne!42950 (regOne!42950 (regOne!42950 r!4885))))) b!7895348))

(assert (= (and b!7894959 ((_ is Star!21219) (regOne!42950 (regOne!42950 (regOne!42950 r!4885))))) b!7895349))

(assert (= (and b!7894959 ((_ is Union!21219) (regOne!42950 (regOne!42950 (regOne!42950 r!4885))))) b!7895350))

(declare-fun e!4660342 () Bool)

(assert (=> b!7894959 (= tp!2351005 e!4660342)))

(declare-fun b!7895351 () Bool)

(assert (=> b!7895351 (= e!4660342 tp_is_empty!52837)))

(declare-fun b!7895354 () Bool)

(declare-fun tp!2351290 () Bool)

(declare-fun tp!2351289 () Bool)

(assert (=> b!7895354 (= e!4660342 (and tp!2351290 tp!2351289))))

(declare-fun b!7895353 () Bool)

(declare-fun tp!2351292 () Bool)

(assert (=> b!7895353 (= e!4660342 tp!2351292)))

(declare-fun b!7895352 () Bool)

(declare-fun tp!2351293 () Bool)

(declare-fun tp!2351291 () Bool)

(assert (=> b!7895352 (= e!4660342 (and tp!2351293 tp!2351291))))

(assert (= (and b!7894959 ((_ is ElementMatch!21219) (regTwo!42950 (regOne!42950 (regOne!42950 r!4885))))) b!7895351))

(assert (= (and b!7894959 ((_ is Concat!30064) (regTwo!42950 (regOne!42950 (regOne!42950 r!4885))))) b!7895352))

(assert (= (and b!7894959 ((_ is Star!21219) (regTwo!42950 (regOne!42950 (regOne!42950 r!4885))))) b!7895353))

(assert (= (and b!7894959 ((_ is Union!21219) (regTwo!42950 (regOne!42950 (regOne!42950 r!4885))))) b!7895354))

(declare-fun e!4660343 () Bool)

(assert (=> b!7894968 (= tp!2351016 e!4660343)))

(declare-fun b!7895355 () Bool)

(assert (=> b!7895355 (= e!4660343 tp_is_empty!52837)))

(declare-fun b!7895358 () Bool)

(declare-fun tp!2351295 () Bool)

(declare-fun tp!2351294 () Bool)

(assert (=> b!7895358 (= e!4660343 (and tp!2351295 tp!2351294))))

(declare-fun b!7895357 () Bool)

(declare-fun tp!2351297 () Bool)

(assert (=> b!7895357 (= e!4660343 tp!2351297)))

(declare-fun b!7895356 () Bool)

(declare-fun tp!2351298 () Bool)

(declare-fun tp!2351296 () Bool)

(assert (=> b!7895356 (= e!4660343 (and tp!2351298 tp!2351296))))

(assert (= (and b!7894968 ((_ is ElementMatch!21219) (reg!21548 (regOne!42951 (regTwo!42950 r!4885))))) b!7895355))

(assert (= (and b!7894968 ((_ is Concat!30064) (reg!21548 (regOne!42951 (regTwo!42950 r!4885))))) b!7895356))

(assert (= (and b!7894968 ((_ is Star!21219) (reg!21548 (regOne!42951 (regTwo!42950 r!4885))))) b!7895357))

(assert (= (and b!7894968 ((_ is Union!21219) (reg!21548 (regOne!42951 (regTwo!42950 r!4885))))) b!7895358))

(declare-fun e!4660344 () Bool)

(assert (=> b!7894977 (= tp!2351024 e!4660344)))

(declare-fun b!7895359 () Bool)

(assert (=> b!7895359 (= e!4660344 tp_is_empty!52837)))

(declare-fun b!7895362 () Bool)

(declare-fun tp!2351300 () Bool)

(declare-fun tp!2351299 () Bool)

(assert (=> b!7895362 (= e!4660344 (and tp!2351300 tp!2351299))))

(declare-fun b!7895361 () Bool)

(declare-fun tp!2351302 () Bool)

(assert (=> b!7895361 (= e!4660344 tp!2351302)))

(declare-fun b!7895360 () Bool)

(declare-fun tp!2351303 () Bool)

(declare-fun tp!2351301 () Bool)

(assert (=> b!7895360 (= e!4660344 (and tp!2351303 tp!2351301))))

(assert (= (and b!7894977 ((_ is ElementMatch!21219) (regOne!42951 (reg!21548 (reg!21548 r!4885))))) b!7895359))

(assert (= (and b!7894977 ((_ is Concat!30064) (regOne!42951 (reg!21548 (reg!21548 r!4885))))) b!7895360))

(assert (= (and b!7894977 ((_ is Star!21219) (regOne!42951 (reg!21548 (reg!21548 r!4885))))) b!7895361))

(assert (= (and b!7894977 ((_ is Union!21219) (regOne!42951 (reg!21548 (reg!21548 r!4885))))) b!7895362))

(declare-fun e!4660345 () Bool)

(assert (=> b!7894977 (= tp!2351023 e!4660345)))

(declare-fun b!7895363 () Bool)

(assert (=> b!7895363 (= e!4660345 tp_is_empty!52837)))

(declare-fun b!7895366 () Bool)

(declare-fun tp!2351305 () Bool)

(declare-fun tp!2351304 () Bool)

(assert (=> b!7895366 (= e!4660345 (and tp!2351305 tp!2351304))))

(declare-fun b!7895365 () Bool)

(declare-fun tp!2351307 () Bool)

(assert (=> b!7895365 (= e!4660345 tp!2351307)))

(declare-fun b!7895364 () Bool)

(declare-fun tp!2351308 () Bool)

(declare-fun tp!2351306 () Bool)

(assert (=> b!7895364 (= e!4660345 (and tp!2351308 tp!2351306))))

(assert (= (and b!7894977 ((_ is ElementMatch!21219) (regTwo!42951 (reg!21548 (reg!21548 r!4885))))) b!7895363))

(assert (= (and b!7894977 ((_ is Concat!30064) (regTwo!42951 (reg!21548 (reg!21548 r!4885))))) b!7895364))

(assert (= (and b!7894977 ((_ is Star!21219) (regTwo!42951 (reg!21548 (reg!21548 r!4885))))) b!7895365))

(assert (= (and b!7894977 ((_ is Union!21219) (regTwo!42951 (reg!21548 (reg!21548 r!4885))))) b!7895366))

(declare-fun e!4660346 () Bool)

(assert (=> b!7894975 (= tp!2351027 e!4660346)))

(declare-fun b!7895367 () Bool)

(assert (=> b!7895367 (= e!4660346 tp_is_empty!52837)))

(declare-fun b!7895370 () Bool)

(declare-fun tp!2351310 () Bool)

(declare-fun tp!2351309 () Bool)

(assert (=> b!7895370 (= e!4660346 (and tp!2351310 tp!2351309))))

(declare-fun b!7895369 () Bool)

(declare-fun tp!2351312 () Bool)

(assert (=> b!7895369 (= e!4660346 tp!2351312)))

(declare-fun b!7895368 () Bool)

(declare-fun tp!2351313 () Bool)

(declare-fun tp!2351311 () Bool)

(assert (=> b!7895368 (= e!4660346 (and tp!2351313 tp!2351311))))

(assert (= (and b!7894975 ((_ is ElementMatch!21219) (regOne!42950 (reg!21548 (reg!21548 r!4885))))) b!7895367))

(assert (= (and b!7894975 ((_ is Concat!30064) (regOne!42950 (reg!21548 (reg!21548 r!4885))))) b!7895368))

(assert (= (and b!7894975 ((_ is Star!21219) (regOne!42950 (reg!21548 (reg!21548 r!4885))))) b!7895369))

(assert (= (and b!7894975 ((_ is Union!21219) (regOne!42950 (reg!21548 (reg!21548 r!4885))))) b!7895370))

(declare-fun e!4660347 () Bool)

(assert (=> b!7894975 (= tp!2351025 e!4660347)))

(declare-fun b!7895371 () Bool)

(assert (=> b!7895371 (= e!4660347 tp_is_empty!52837)))

(declare-fun b!7895374 () Bool)

(declare-fun tp!2351315 () Bool)

(declare-fun tp!2351314 () Bool)

(assert (=> b!7895374 (= e!4660347 (and tp!2351315 tp!2351314))))

(declare-fun b!7895373 () Bool)

(declare-fun tp!2351317 () Bool)

(assert (=> b!7895373 (= e!4660347 tp!2351317)))

(declare-fun b!7895372 () Bool)

(declare-fun tp!2351318 () Bool)

(declare-fun tp!2351316 () Bool)

(assert (=> b!7895372 (= e!4660347 (and tp!2351318 tp!2351316))))

(assert (= (and b!7894975 ((_ is ElementMatch!21219) (regTwo!42950 (reg!21548 (reg!21548 r!4885))))) b!7895371))

(assert (= (and b!7894975 ((_ is Concat!30064) (regTwo!42950 (reg!21548 (reg!21548 r!4885))))) b!7895372))

(assert (= (and b!7894975 ((_ is Star!21219) (regTwo!42950 (reg!21548 (reg!21548 r!4885))))) b!7895373))

(assert (= (and b!7894975 ((_ is Union!21219) (regTwo!42950 (reg!21548 (reg!21548 r!4885))))) b!7895374))

(declare-fun e!4660348 () Bool)

(assert (=> b!7894984 (= tp!2351036 e!4660348)))

(declare-fun b!7895375 () Bool)

(assert (=> b!7895375 (= e!4660348 tp_is_empty!52837)))

(declare-fun b!7895378 () Bool)

(declare-fun tp!2351320 () Bool)

(declare-fun tp!2351319 () Bool)

(assert (=> b!7895378 (= e!4660348 (and tp!2351320 tp!2351319))))

(declare-fun b!7895377 () Bool)

(declare-fun tp!2351322 () Bool)

(assert (=> b!7895377 (= e!4660348 tp!2351322)))

(declare-fun b!7895376 () Bool)

(declare-fun tp!2351323 () Bool)

(declare-fun tp!2351321 () Bool)

(assert (=> b!7895376 (= e!4660348 (and tp!2351323 tp!2351321))))

(assert (= (and b!7894984 ((_ is ElementMatch!21219) (reg!21548 (regTwo!42950 (regTwo!42950 r!4885))))) b!7895375))

(assert (= (and b!7894984 ((_ is Concat!30064) (reg!21548 (regTwo!42950 (regTwo!42950 r!4885))))) b!7895376))

(assert (= (and b!7894984 ((_ is Star!21219) (reg!21548 (regTwo!42950 (regTwo!42950 r!4885))))) b!7895377))

(assert (= (and b!7894984 ((_ is Union!21219) (reg!21548 (regTwo!42950 (regTwo!42950 r!4885))))) b!7895378))

(declare-fun e!4660349 () Bool)

(assert (=> b!7894899 (= tp!2350939 e!4660349)))

(declare-fun b!7895379 () Bool)

(assert (=> b!7895379 (= e!4660349 tp_is_empty!52837)))

(declare-fun b!7895382 () Bool)

(declare-fun tp!2351325 () Bool)

(declare-fun tp!2351324 () Bool)

(assert (=> b!7895382 (= e!4660349 (and tp!2351325 tp!2351324))))

(declare-fun b!7895381 () Bool)

(declare-fun tp!2351327 () Bool)

(assert (=> b!7895381 (= e!4660349 tp!2351327)))

(declare-fun b!7895380 () Bool)

(declare-fun tp!2351328 () Bool)

(declare-fun tp!2351326 () Bool)

(assert (=> b!7895380 (= e!4660349 (and tp!2351328 tp!2351326))))

(assert (= (and b!7894899 ((_ is ElementMatch!21219) (regOne!42951 (regTwo!42951 (regOne!42951 r!4885))))) b!7895379))

(assert (= (and b!7894899 ((_ is Concat!30064) (regOne!42951 (regTwo!42951 (regOne!42951 r!4885))))) b!7895380))

(assert (= (and b!7894899 ((_ is Star!21219) (regOne!42951 (regTwo!42951 (regOne!42951 r!4885))))) b!7895381))

(assert (= (and b!7894899 ((_ is Union!21219) (regOne!42951 (regTwo!42951 (regOne!42951 r!4885))))) b!7895382))

(declare-fun e!4660350 () Bool)

(assert (=> b!7894899 (= tp!2350938 e!4660350)))

(declare-fun b!7895383 () Bool)

(assert (=> b!7895383 (= e!4660350 tp_is_empty!52837)))

(declare-fun b!7895386 () Bool)

(declare-fun tp!2351330 () Bool)

(declare-fun tp!2351329 () Bool)

(assert (=> b!7895386 (= e!4660350 (and tp!2351330 tp!2351329))))

(declare-fun b!7895385 () Bool)

(declare-fun tp!2351332 () Bool)

(assert (=> b!7895385 (= e!4660350 tp!2351332)))

(declare-fun b!7895384 () Bool)

(declare-fun tp!2351333 () Bool)

(declare-fun tp!2351331 () Bool)

(assert (=> b!7895384 (= e!4660350 (and tp!2351333 tp!2351331))))

(assert (= (and b!7894899 ((_ is ElementMatch!21219) (regTwo!42951 (regTwo!42951 (regOne!42951 r!4885))))) b!7895383))

(assert (= (and b!7894899 ((_ is Concat!30064) (regTwo!42951 (regTwo!42951 (regOne!42951 r!4885))))) b!7895384))

(assert (= (and b!7894899 ((_ is Star!21219) (regTwo!42951 (regTwo!42951 (regOne!42951 r!4885))))) b!7895385))

(assert (= (and b!7894899 ((_ is Union!21219) (regTwo!42951 (regTwo!42951 (regOne!42951 r!4885))))) b!7895386))

(declare-fun e!4660351 () Bool)

(assert (=> b!7894993 (= tp!2351044 e!4660351)))

(declare-fun b!7895387 () Bool)

(assert (=> b!7895387 (= e!4660351 tp_is_empty!52837)))

(declare-fun b!7895390 () Bool)

(declare-fun tp!2351335 () Bool)

(declare-fun tp!2351334 () Bool)

(assert (=> b!7895390 (= e!4660351 (and tp!2351335 tp!2351334))))

(declare-fun b!7895389 () Bool)

(declare-fun tp!2351337 () Bool)

(assert (=> b!7895389 (= e!4660351 tp!2351337)))

(declare-fun b!7895388 () Bool)

(declare-fun tp!2351338 () Bool)

(declare-fun tp!2351336 () Bool)

(assert (=> b!7895388 (= e!4660351 (and tp!2351338 tp!2351336))))

(assert (= (and b!7894993 ((_ is ElementMatch!21219) (regOne!42951 (regTwo!42951 (reg!21548 r!4885))))) b!7895387))

(assert (= (and b!7894993 ((_ is Concat!30064) (regOne!42951 (regTwo!42951 (reg!21548 r!4885))))) b!7895388))

(assert (= (and b!7894993 ((_ is Star!21219) (regOne!42951 (regTwo!42951 (reg!21548 r!4885))))) b!7895389))

(assert (= (and b!7894993 ((_ is Union!21219) (regOne!42951 (regTwo!42951 (reg!21548 r!4885))))) b!7895390))

(declare-fun e!4660352 () Bool)

(assert (=> b!7894993 (= tp!2351043 e!4660352)))

(declare-fun b!7895391 () Bool)

(assert (=> b!7895391 (= e!4660352 tp_is_empty!52837)))

(declare-fun b!7895394 () Bool)

(declare-fun tp!2351340 () Bool)

(declare-fun tp!2351339 () Bool)

(assert (=> b!7895394 (= e!4660352 (and tp!2351340 tp!2351339))))

(declare-fun b!7895393 () Bool)

(declare-fun tp!2351342 () Bool)

(assert (=> b!7895393 (= e!4660352 tp!2351342)))

(declare-fun b!7895392 () Bool)

(declare-fun tp!2351343 () Bool)

(declare-fun tp!2351341 () Bool)

(assert (=> b!7895392 (= e!4660352 (and tp!2351343 tp!2351341))))

(assert (= (and b!7894993 ((_ is ElementMatch!21219) (regTwo!42951 (regTwo!42951 (reg!21548 r!4885))))) b!7895391))

(assert (= (and b!7894993 ((_ is Concat!30064) (regTwo!42951 (regTwo!42951 (reg!21548 r!4885))))) b!7895392))

(assert (= (and b!7894993 ((_ is Star!21219) (regTwo!42951 (regTwo!42951 (reg!21548 r!4885))))) b!7895393))

(assert (= (and b!7894993 ((_ is Union!21219) (regTwo!42951 (regTwo!42951 (reg!21548 r!4885))))) b!7895394))

(declare-fun e!4660353 () Bool)

(assert (=> b!7894923 (= tp!2350962 e!4660353)))

(declare-fun b!7895395 () Bool)

(assert (=> b!7895395 (= e!4660353 tp_is_empty!52837)))

(declare-fun b!7895398 () Bool)

(declare-fun tp!2351345 () Bool)

(declare-fun tp!2351344 () Bool)

(assert (=> b!7895398 (= e!4660353 (and tp!2351345 tp!2351344))))

(declare-fun b!7895397 () Bool)

(declare-fun tp!2351347 () Bool)

(assert (=> b!7895397 (= e!4660353 tp!2351347)))

(declare-fun b!7895396 () Bool)

(declare-fun tp!2351348 () Bool)

(declare-fun tp!2351346 () Bool)

(assert (=> b!7895396 (= e!4660353 (and tp!2351348 tp!2351346))))

(assert (= (and b!7894923 ((_ is ElementMatch!21219) (regOne!42950 (regTwo!42951 (regTwo!42951 r!4885))))) b!7895395))

(assert (= (and b!7894923 ((_ is Concat!30064) (regOne!42950 (regTwo!42951 (regTwo!42951 r!4885))))) b!7895396))

(assert (= (and b!7894923 ((_ is Star!21219) (regOne!42950 (regTwo!42951 (regTwo!42951 r!4885))))) b!7895397))

(assert (= (and b!7894923 ((_ is Union!21219) (regOne!42950 (regTwo!42951 (regTwo!42951 r!4885))))) b!7895398))

(declare-fun e!4660354 () Bool)

(assert (=> b!7894923 (= tp!2350960 e!4660354)))

(declare-fun b!7895399 () Bool)

(assert (=> b!7895399 (= e!4660354 tp_is_empty!52837)))

(declare-fun b!7895402 () Bool)

(declare-fun tp!2351350 () Bool)

(declare-fun tp!2351349 () Bool)

(assert (=> b!7895402 (= e!4660354 (and tp!2351350 tp!2351349))))

(declare-fun b!7895401 () Bool)

(declare-fun tp!2351352 () Bool)

(assert (=> b!7895401 (= e!4660354 tp!2351352)))

(declare-fun b!7895400 () Bool)

(declare-fun tp!2351353 () Bool)

(declare-fun tp!2351351 () Bool)

(assert (=> b!7895400 (= e!4660354 (and tp!2351353 tp!2351351))))

(assert (= (and b!7894923 ((_ is ElementMatch!21219) (regTwo!42950 (regTwo!42951 (regTwo!42951 r!4885))))) b!7895399))

(assert (= (and b!7894923 ((_ is Concat!30064) (regTwo!42950 (regTwo!42951 (regTwo!42951 r!4885))))) b!7895400))

(assert (= (and b!7894923 ((_ is Star!21219) (regTwo!42950 (regTwo!42951 (regTwo!42951 r!4885))))) b!7895401))

(assert (= (and b!7894923 ((_ is Union!21219) (regTwo!42950 (regTwo!42951 (regTwo!42951 r!4885))))) b!7895402))

(declare-fun e!4660355 () Bool)

(assert (=> b!7894932 (= tp!2350971 e!4660355)))

(declare-fun b!7895403 () Bool)

(assert (=> b!7895403 (= e!4660355 tp_is_empty!52837)))

(declare-fun b!7895406 () Bool)

(declare-fun tp!2351355 () Bool)

(declare-fun tp!2351354 () Bool)

(assert (=> b!7895406 (= e!4660355 (and tp!2351355 tp!2351354))))

(declare-fun b!7895405 () Bool)

(declare-fun tp!2351357 () Bool)

(assert (=> b!7895405 (= e!4660355 tp!2351357)))

(declare-fun b!7895404 () Bool)

(declare-fun tp!2351358 () Bool)

(declare-fun tp!2351356 () Bool)

(assert (=> b!7895404 (= e!4660355 (and tp!2351358 tp!2351356))))

(assert (= (and b!7894932 ((_ is ElementMatch!21219) (reg!21548 (regOne!42950 (regTwo!42951 r!4885))))) b!7895403))

(assert (= (and b!7894932 ((_ is Concat!30064) (reg!21548 (regOne!42950 (regTwo!42951 r!4885))))) b!7895404))

(assert (= (and b!7894932 ((_ is Star!21219) (reg!21548 (regOne!42950 (regTwo!42951 r!4885))))) b!7895405))

(assert (= (and b!7894932 ((_ is Union!21219) (reg!21548 (regOne!42950 (regTwo!42951 r!4885))))) b!7895406))

(declare-fun e!4660356 () Bool)

(assert (=> b!7894939 (= tp!2350982 e!4660356)))

(declare-fun b!7895407 () Bool)

(assert (=> b!7895407 (= e!4660356 tp_is_empty!52837)))

(declare-fun b!7895410 () Bool)

(declare-fun tp!2351360 () Bool)

(declare-fun tp!2351359 () Bool)

(assert (=> b!7895410 (= e!4660356 (and tp!2351360 tp!2351359))))

(declare-fun b!7895409 () Bool)

(declare-fun tp!2351362 () Bool)

(assert (=> b!7895409 (= e!4660356 tp!2351362)))

(declare-fun b!7895408 () Bool)

(declare-fun tp!2351363 () Bool)

(declare-fun tp!2351361 () Bool)

(assert (=> b!7895408 (= e!4660356 (and tp!2351363 tp!2351361))))

(assert (= (and b!7894939 ((_ is ElementMatch!21219) (regOne!42950 (regOne!42950 (regOne!42951 r!4885))))) b!7895407))

(assert (= (and b!7894939 ((_ is Concat!30064) (regOne!42950 (regOne!42950 (regOne!42951 r!4885))))) b!7895408))

(assert (= (and b!7894939 ((_ is Star!21219) (regOne!42950 (regOne!42950 (regOne!42951 r!4885))))) b!7895409))

(assert (= (and b!7894939 ((_ is Union!21219) (regOne!42950 (regOne!42950 (regOne!42951 r!4885))))) b!7895410))

(declare-fun e!4660357 () Bool)

(assert (=> b!7894939 (= tp!2350980 e!4660357)))

(declare-fun b!7895411 () Bool)

(assert (=> b!7895411 (= e!4660357 tp_is_empty!52837)))

(declare-fun b!7895414 () Bool)

(declare-fun tp!2351365 () Bool)

(declare-fun tp!2351364 () Bool)

(assert (=> b!7895414 (= e!4660357 (and tp!2351365 tp!2351364))))

(declare-fun b!7895413 () Bool)

(declare-fun tp!2351367 () Bool)

(assert (=> b!7895413 (= e!4660357 tp!2351367)))

(declare-fun b!7895412 () Bool)

(declare-fun tp!2351368 () Bool)

(declare-fun tp!2351366 () Bool)

(assert (=> b!7895412 (= e!4660357 (and tp!2351368 tp!2351366))))

(assert (= (and b!7894939 ((_ is ElementMatch!21219) (regTwo!42950 (regOne!42950 (regOne!42951 r!4885))))) b!7895411))

(assert (= (and b!7894939 ((_ is Concat!30064) (regTwo!42950 (regOne!42950 (regOne!42951 r!4885))))) b!7895412))

(assert (= (and b!7894939 ((_ is Star!21219) (regTwo!42950 (regOne!42950 (regOne!42951 r!4885))))) b!7895413))

(assert (= (and b!7894939 ((_ is Union!21219) (regTwo!42950 (regOne!42950 (regOne!42951 r!4885))))) b!7895414))

(declare-fun e!4660358 () Bool)

(assert (=> b!7894941 (= tp!2350979 e!4660358)))

(declare-fun b!7895415 () Bool)

(assert (=> b!7895415 (= e!4660358 tp_is_empty!52837)))

(declare-fun b!7895418 () Bool)

(declare-fun tp!2351370 () Bool)

(declare-fun tp!2351369 () Bool)

(assert (=> b!7895418 (= e!4660358 (and tp!2351370 tp!2351369))))

(declare-fun b!7895417 () Bool)

(declare-fun tp!2351372 () Bool)

(assert (=> b!7895417 (= e!4660358 tp!2351372)))

(declare-fun b!7895416 () Bool)

(declare-fun tp!2351373 () Bool)

(declare-fun tp!2351371 () Bool)

(assert (=> b!7895416 (= e!4660358 (and tp!2351373 tp!2351371))))

(assert (= (and b!7894941 ((_ is ElementMatch!21219) (regOne!42951 (regOne!42950 (regOne!42951 r!4885))))) b!7895415))

(assert (= (and b!7894941 ((_ is Concat!30064) (regOne!42951 (regOne!42950 (regOne!42951 r!4885))))) b!7895416))

(assert (= (and b!7894941 ((_ is Star!21219) (regOne!42951 (regOne!42950 (regOne!42951 r!4885))))) b!7895417))

(assert (= (and b!7894941 ((_ is Union!21219) (regOne!42951 (regOne!42950 (regOne!42951 r!4885))))) b!7895418))

(declare-fun e!4660359 () Bool)

(assert (=> b!7894941 (= tp!2350978 e!4660359)))

(declare-fun b!7895419 () Bool)

(assert (=> b!7895419 (= e!4660359 tp_is_empty!52837)))

(declare-fun b!7895422 () Bool)

(declare-fun tp!2351375 () Bool)

(declare-fun tp!2351374 () Bool)

(assert (=> b!7895422 (= e!4660359 (and tp!2351375 tp!2351374))))

(declare-fun b!7895421 () Bool)

(declare-fun tp!2351377 () Bool)

(assert (=> b!7895421 (= e!4660359 tp!2351377)))

(declare-fun b!7895420 () Bool)

(declare-fun tp!2351378 () Bool)

(declare-fun tp!2351376 () Bool)

(assert (=> b!7895420 (= e!4660359 (and tp!2351378 tp!2351376))))

(assert (= (and b!7894941 ((_ is ElementMatch!21219) (regTwo!42951 (regOne!42950 (regOne!42951 r!4885))))) b!7895419))

(assert (= (and b!7894941 ((_ is Concat!30064) (regTwo!42951 (regOne!42950 (regOne!42951 r!4885))))) b!7895420))

(assert (= (and b!7894941 ((_ is Star!21219) (regTwo!42951 (regOne!42950 (regOne!42951 r!4885))))) b!7895421))

(assert (= (and b!7894941 ((_ is Union!21219) (regTwo!42951 (regOne!42950 (regOne!42951 r!4885))))) b!7895422))

(declare-fun e!4660360 () Bool)

(assert (=> b!7894983 (= tp!2351037 e!4660360)))

(declare-fun b!7895423 () Bool)

(assert (=> b!7895423 (= e!4660360 tp_is_empty!52837)))

(declare-fun b!7895426 () Bool)

(declare-fun tp!2351380 () Bool)

(declare-fun tp!2351379 () Bool)

(assert (=> b!7895426 (= e!4660360 (and tp!2351380 tp!2351379))))

(declare-fun b!7895425 () Bool)

(declare-fun tp!2351382 () Bool)

(assert (=> b!7895425 (= e!4660360 tp!2351382)))

(declare-fun b!7895424 () Bool)

(declare-fun tp!2351383 () Bool)

(declare-fun tp!2351381 () Bool)

(assert (=> b!7895424 (= e!4660360 (and tp!2351383 tp!2351381))))

(assert (= (and b!7894983 ((_ is ElementMatch!21219) (regOne!42950 (regTwo!42950 (regTwo!42950 r!4885))))) b!7895423))

(assert (= (and b!7894983 ((_ is Concat!30064) (regOne!42950 (regTwo!42950 (regTwo!42950 r!4885))))) b!7895424))

(assert (= (and b!7894983 ((_ is Star!21219) (regOne!42950 (regTwo!42950 (regTwo!42950 r!4885))))) b!7895425))

(assert (= (and b!7894983 ((_ is Union!21219) (regOne!42950 (regTwo!42950 (regTwo!42950 r!4885))))) b!7895426))

(declare-fun e!4660361 () Bool)

(assert (=> b!7894983 (= tp!2351035 e!4660361)))

(declare-fun b!7895427 () Bool)

(assert (=> b!7895427 (= e!4660361 tp_is_empty!52837)))

(declare-fun b!7895430 () Bool)

(declare-fun tp!2351385 () Bool)

(declare-fun tp!2351384 () Bool)

(assert (=> b!7895430 (= e!4660361 (and tp!2351385 tp!2351384))))

(declare-fun b!7895429 () Bool)

(declare-fun tp!2351387 () Bool)

(assert (=> b!7895429 (= e!4660361 tp!2351387)))

(declare-fun b!7895428 () Bool)

(declare-fun tp!2351388 () Bool)

(declare-fun tp!2351386 () Bool)

(assert (=> b!7895428 (= e!4660361 (and tp!2351388 tp!2351386))))

(assert (= (and b!7894983 ((_ is ElementMatch!21219) (regTwo!42950 (regTwo!42950 (regTwo!42950 r!4885))))) b!7895427))

(assert (= (and b!7894983 ((_ is Concat!30064) (regTwo!42950 (regTwo!42950 (regTwo!42950 r!4885))))) b!7895428))

(assert (= (and b!7894983 ((_ is Star!21219) (regTwo!42950 (regTwo!42950 (regTwo!42950 r!4885))))) b!7895429))

(assert (= (and b!7894983 ((_ is Union!21219) (regTwo!42950 (regTwo!42950 (regTwo!42950 r!4885))))) b!7895430))

(declare-fun e!4660362 () Bool)

(assert (=> b!7894898 (= tp!2350941 e!4660362)))

(declare-fun b!7895431 () Bool)

(assert (=> b!7895431 (= e!4660362 tp_is_empty!52837)))

(declare-fun b!7895434 () Bool)

(declare-fun tp!2351390 () Bool)

(declare-fun tp!2351389 () Bool)

(assert (=> b!7895434 (= e!4660362 (and tp!2351390 tp!2351389))))

(declare-fun b!7895433 () Bool)

(declare-fun tp!2351392 () Bool)

(assert (=> b!7895433 (= e!4660362 tp!2351392)))

(declare-fun b!7895432 () Bool)

(declare-fun tp!2351393 () Bool)

(declare-fun tp!2351391 () Bool)

(assert (=> b!7895432 (= e!4660362 (and tp!2351393 tp!2351391))))

(assert (= (and b!7894898 ((_ is ElementMatch!21219) (reg!21548 (regTwo!42951 (regOne!42951 r!4885))))) b!7895431))

(assert (= (and b!7894898 ((_ is Concat!30064) (reg!21548 (regTwo!42951 (regOne!42951 r!4885))))) b!7895432))

(assert (= (and b!7894898 ((_ is Star!21219) (reg!21548 (regTwo!42951 (regOne!42951 r!4885))))) b!7895433))

(assert (= (and b!7894898 ((_ is Union!21219) (reg!21548 (regTwo!42951 (regOne!42951 r!4885))))) b!7895434))

(declare-fun e!4660363 () Bool)

(assert (=> b!7894992 (= tp!2351046 e!4660363)))

(declare-fun b!7895435 () Bool)

(assert (=> b!7895435 (= e!4660363 tp_is_empty!52837)))

(declare-fun b!7895438 () Bool)

(declare-fun tp!2351395 () Bool)

(declare-fun tp!2351394 () Bool)

(assert (=> b!7895438 (= e!4660363 (and tp!2351395 tp!2351394))))

(declare-fun b!7895437 () Bool)

(declare-fun tp!2351397 () Bool)

(assert (=> b!7895437 (= e!4660363 tp!2351397)))

(declare-fun b!7895436 () Bool)

(declare-fun tp!2351398 () Bool)

(declare-fun tp!2351396 () Bool)

(assert (=> b!7895436 (= e!4660363 (and tp!2351398 tp!2351396))))

(assert (= (and b!7894992 ((_ is ElementMatch!21219) (reg!21548 (regTwo!42951 (reg!21548 r!4885))))) b!7895435))

(assert (= (and b!7894992 ((_ is Concat!30064) (reg!21548 (regTwo!42951 (reg!21548 r!4885))))) b!7895436))

(assert (= (and b!7894992 ((_ is Star!21219) (reg!21548 (regTwo!42951 (reg!21548 r!4885))))) b!7895437))

(assert (= (and b!7894992 ((_ is Union!21219) (reg!21548 (regTwo!42951 (reg!21548 r!4885))))) b!7895438))

(declare-fun e!4660364 () Bool)

(assert (=> b!7895001 (= tp!2351054 e!4660364)))

(declare-fun b!7895439 () Bool)

(assert (=> b!7895439 (= e!4660364 tp_is_empty!52837)))

(declare-fun b!7895442 () Bool)

(declare-fun tp!2351400 () Bool)

(declare-fun tp!2351399 () Bool)

(assert (=> b!7895442 (= e!4660364 (and tp!2351400 tp!2351399))))

(declare-fun b!7895441 () Bool)

(declare-fun tp!2351402 () Bool)

(assert (=> b!7895441 (= e!4660364 tp!2351402)))

(declare-fun b!7895440 () Bool)

(declare-fun tp!2351403 () Bool)

(declare-fun tp!2351401 () Bool)

(assert (=> b!7895440 (= e!4660364 (and tp!2351403 tp!2351401))))

(assert (= (and b!7895001 ((_ is ElementMatch!21219) (regOne!42951 (regTwo!42950 (reg!21548 r!4885))))) b!7895439))

(assert (= (and b!7895001 ((_ is Concat!30064) (regOne!42951 (regTwo!42950 (reg!21548 r!4885))))) b!7895440))

(assert (= (and b!7895001 ((_ is Star!21219) (regOne!42951 (regTwo!42950 (reg!21548 r!4885))))) b!7895441))

(assert (= (and b!7895001 ((_ is Union!21219) (regOne!42951 (regTwo!42950 (reg!21548 r!4885))))) b!7895442))

(declare-fun e!4660365 () Bool)

(assert (=> b!7895001 (= tp!2351053 e!4660365)))

(declare-fun b!7895443 () Bool)

(assert (=> b!7895443 (= e!4660365 tp_is_empty!52837)))

(declare-fun b!7895446 () Bool)

(declare-fun tp!2351405 () Bool)

(declare-fun tp!2351404 () Bool)

(assert (=> b!7895446 (= e!4660365 (and tp!2351405 tp!2351404))))

(declare-fun b!7895445 () Bool)

(declare-fun tp!2351407 () Bool)

(assert (=> b!7895445 (= e!4660365 tp!2351407)))

(declare-fun b!7895444 () Bool)

(declare-fun tp!2351408 () Bool)

(declare-fun tp!2351406 () Bool)

(assert (=> b!7895444 (= e!4660365 (and tp!2351408 tp!2351406))))

(assert (= (and b!7895001 ((_ is ElementMatch!21219) (regTwo!42951 (regTwo!42950 (reg!21548 r!4885))))) b!7895443))

(assert (= (and b!7895001 ((_ is Concat!30064) (regTwo!42951 (regTwo!42950 (reg!21548 r!4885))))) b!7895444))

(assert (= (and b!7895001 ((_ is Star!21219) (regTwo!42951 (regTwo!42950 (reg!21548 r!4885))))) b!7895445))

(assert (= (and b!7895001 ((_ is Union!21219) (regTwo!42951 (regTwo!42950 (reg!21548 r!4885))))) b!7895446))

(declare-fun e!4660366 () Bool)

(assert (=> b!7894915 (= tp!2350952 e!4660366)))

(declare-fun b!7895447 () Bool)

(assert (=> b!7895447 (= e!4660366 tp_is_empty!52837)))

(declare-fun b!7895450 () Bool)

(declare-fun tp!2351410 () Bool)

(declare-fun tp!2351409 () Bool)

(assert (=> b!7895450 (= e!4660366 (and tp!2351410 tp!2351409))))

(declare-fun b!7895449 () Bool)

(declare-fun tp!2351412 () Bool)

(assert (=> b!7895449 (= e!4660366 tp!2351412)))

(declare-fun b!7895448 () Bool)

(declare-fun tp!2351413 () Bool)

(declare-fun tp!2351411 () Bool)

(assert (=> b!7895448 (= e!4660366 (and tp!2351413 tp!2351411))))

(assert (= (and b!7894915 ((_ is ElementMatch!21219) (regOne!42950 (reg!21548 (regOne!42951 r!4885))))) b!7895447))

(assert (= (and b!7894915 ((_ is Concat!30064) (regOne!42950 (reg!21548 (regOne!42951 r!4885))))) b!7895448))

(assert (= (and b!7894915 ((_ is Star!21219) (regOne!42950 (reg!21548 (regOne!42951 r!4885))))) b!7895449))

(assert (= (and b!7894915 ((_ is Union!21219) (regOne!42950 (reg!21548 (regOne!42951 r!4885))))) b!7895450))

(declare-fun e!4660367 () Bool)

(assert (=> b!7894915 (= tp!2350950 e!4660367)))

(declare-fun b!7895451 () Bool)

(assert (=> b!7895451 (= e!4660367 tp_is_empty!52837)))

(declare-fun b!7895454 () Bool)

(declare-fun tp!2351415 () Bool)

(declare-fun tp!2351414 () Bool)

(assert (=> b!7895454 (= e!4660367 (and tp!2351415 tp!2351414))))

(declare-fun b!7895453 () Bool)

(declare-fun tp!2351417 () Bool)

(assert (=> b!7895453 (= e!4660367 tp!2351417)))

(declare-fun b!7895452 () Bool)

(declare-fun tp!2351418 () Bool)

(declare-fun tp!2351416 () Bool)

(assert (=> b!7895452 (= e!4660367 (and tp!2351418 tp!2351416))))

(assert (= (and b!7894915 ((_ is ElementMatch!21219) (regTwo!42950 (reg!21548 (regOne!42951 r!4885))))) b!7895451))

(assert (= (and b!7894915 ((_ is Concat!30064) (regTwo!42950 (reg!21548 (regOne!42951 r!4885))))) b!7895452))

(assert (= (and b!7894915 ((_ is Star!21219) (regTwo!42950 (reg!21548 (regOne!42951 r!4885))))) b!7895453))

(assert (= (and b!7894915 ((_ is Union!21219) (regTwo!42950 (reg!21548 (regOne!42951 r!4885))))) b!7895454))

(declare-fun b!7895462 () Bool)

(declare-fun e!4660373 () Bool)

(declare-fun tp!2351423 () Bool)

(assert (=> b!7895462 (= e!4660373 tp!2351423)))

(declare-fun e!4660372 () Bool)

(declare-fun tp!2351424 () Bool)

(declare-fun b!7895461 () Bool)

(assert (=> b!7895461 (= e!4660372 (and (inv!94936 (h!80402 (t!388813 res!3132221))) e!4660373 tp!2351424))))

(assert (=> b!7894773 (= tp!2350932 e!4660372)))

(assert (= b!7895461 b!7895462))

(assert (= (and b!7894773 ((_ is Cons!73954) (t!388813 res!3132221))) b!7895461))

(declare-fun m!8271874 () Bool)

(assert (=> b!7895461 m!8271874))

(declare-fun e!4660374 () Bool)

(assert (=> b!7894956 (= tp!2351001 e!4660374)))

(declare-fun b!7895463 () Bool)

(assert (=> b!7895463 (= e!4660374 tp_is_empty!52837)))

(declare-fun b!7895466 () Bool)

(declare-fun tp!2351426 () Bool)

(declare-fun tp!2351425 () Bool)

(assert (=> b!7895466 (= e!4660374 (and tp!2351426 tp!2351425))))

(declare-fun b!7895465 () Bool)

(declare-fun tp!2351428 () Bool)

(assert (=> b!7895465 (= e!4660374 tp!2351428)))

(declare-fun b!7895464 () Bool)

(declare-fun tp!2351429 () Bool)

(declare-fun tp!2351427 () Bool)

(assert (=> b!7895464 (= e!4660374 (and tp!2351429 tp!2351427))))

(assert (= (and b!7894956 ((_ is ElementMatch!21219) (reg!21548 (reg!21548 (regTwo!42950 r!4885))))) b!7895463))

(assert (= (and b!7894956 ((_ is Concat!30064) (reg!21548 (reg!21548 (regTwo!42950 r!4885))))) b!7895464))

(assert (= (and b!7894956 ((_ is Star!21219) (reg!21548 (reg!21548 (regTwo!42950 r!4885))))) b!7895465))

(assert (= (and b!7894956 ((_ is Union!21219) (reg!21548 (reg!21548 (regTwo!42950 r!4885))))) b!7895466))

(declare-fun e!4660375 () Bool)

(assert (=> b!7894999 (= tp!2351057 e!4660375)))

(declare-fun b!7895467 () Bool)

(assert (=> b!7895467 (= e!4660375 tp_is_empty!52837)))

(declare-fun b!7895470 () Bool)

(declare-fun tp!2351431 () Bool)

(declare-fun tp!2351430 () Bool)

(assert (=> b!7895470 (= e!4660375 (and tp!2351431 tp!2351430))))

(declare-fun b!7895469 () Bool)

(declare-fun tp!2351433 () Bool)

(assert (=> b!7895469 (= e!4660375 tp!2351433)))

(declare-fun b!7895468 () Bool)

(declare-fun tp!2351434 () Bool)

(declare-fun tp!2351432 () Bool)

(assert (=> b!7895468 (= e!4660375 (and tp!2351434 tp!2351432))))

(assert (= (and b!7894999 ((_ is ElementMatch!21219) (regOne!42950 (regTwo!42950 (reg!21548 r!4885))))) b!7895467))

(assert (= (and b!7894999 ((_ is Concat!30064) (regOne!42950 (regTwo!42950 (reg!21548 r!4885))))) b!7895468))

(assert (= (and b!7894999 ((_ is Star!21219) (regOne!42950 (regTwo!42950 (reg!21548 r!4885))))) b!7895469))

(assert (= (and b!7894999 ((_ is Union!21219) (regOne!42950 (regTwo!42950 (reg!21548 r!4885))))) b!7895470))

(declare-fun e!4660376 () Bool)

(assert (=> b!7894999 (= tp!2351055 e!4660376)))

(declare-fun b!7895471 () Bool)

(assert (=> b!7895471 (= e!4660376 tp_is_empty!52837)))

(declare-fun b!7895474 () Bool)

(declare-fun tp!2351436 () Bool)

(declare-fun tp!2351435 () Bool)

(assert (=> b!7895474 (= e!4660376 (and tp!2351436 tp!2351435))))

(declare-fun b!7895473 () Bool)

(declare-fun tp!2351438 () Bool)

(assert (=> b!7895473 (= e!4660376 tp!2351438)))

(declare-fun b!7895472 () Bool)

(declare-fun tp!2351439 () Bool)

(declare-fun tp!2351437 () Bool)

(assert (=> b!7895472 (= e!4660376 (and tp!2351439 tp!2351437))))

(assert (= (and b!7894999 ((_ is ElementMatch!21219) (regTwo!42950 (regTwo!42950 (reg!21548 r!4885))))) b!7895471))

(assert (= (and b!7894999 ((_ is Concat!30064) (regTwo!42950 (regTwo!42950 (reg!21548 r!4885))))) b!7895472))

(assert (= (and b!7894999 ((_ is Star!21219) (regTwo!42950 (regTwo!42950 (reg!21548 r!4885))))) b!7895473))

(assert (= (and b!7894999 ((_ is Union!21219) (regTwo!42950 (regTwo!42950 (reg!21548 r!4885))))) b!7895474))

(declare-fun e!4660377 () Bool)

(assert (=> b!7894963 (= tp!2351012 e!4660377)))

(declare-fun b!7895475 () Bool)

(assert (=> b!7895475 (= e!4660377 tp_is_empty!52837)))

(declare-fun b!7895478 () Bool)

(declare-fun tp!2351441 () Bool)

(declare-fun tp!2351440 () Bool)

(assert (=> b!7895478 (= e!4660377 (and tp!2351441 tp!2351440))))

(declare-fun b!7895477 () Bool)

(declare-fun tp!2351443 () Bool)

(assert (=> b!7895477 (= e!4660377 tp!2351443)))

(declare-fun b!7895476 () Bool)

(declare-fun tp!2351444 () Bool)

(declare-fun tp!2351442 () Bool)

(assert (=> b!7895476 (= e!4660377 (and tp!2351444 tp!2351442))))

(assert (= (and b!7894963 ((_ is ElementMatch!21219) (regOne!42950 (regTwo!42950 (regOne!42950 r!4885))))) b!7895475))

(assert (= (and b!7894963 ((_ is Concat!30064) (regOne!42950 (regTwo!42950 (regOne!42950 r!4885))))) b!7895476))

(assert (= (and b!7894963 ((_ is Star!21219) (regOne!42950 (regTwo!42950 (regOne!42950 r!4885))))) b!7895477))

(assert (= (and b!7894963 ((_ is Union!21219) (regOne!42950 (regTwo!42950 (regOne!42950 r!4885))))) b!7895478))

(declare-fun e!4660378 () Bool)

(assert (=> b!7894963 (= tp!2351010 e!4660378)))

(declare-fun b!7895479 () Bool)

(assert (=> b!7895479 (= e!4660378 tp_is_empty!52837)))

(declare-fun b!7895482 () Bool)

(declare-fun tp!2351446 () Bool)

(declare-fun tp!2351445 () Bool)

(assert (=> b!7895482 (= e!4660378 (and tp!2351446 tp!2351445))))

(declare-fun b!7895481 () Bool)

(declare-fun tp!2351448 () Bool)

(assert (=> b!7895481 (= e!4660378 tp!2351448)))

(declare-fun b!7895480 () Bool)

(declare-fun tp!2351449 () Bool)

(declare-fun tp!2351447 () Bool)

(assert (=> b!7895480 (= e!4660378 (and tp!2351449 tp!2351447))))

(assert (= (and b!7894963 ((_ is ElementMatch!21219) (regTwo!42950 (regTwo!42950 (regOne!42950 r!4885))))) b!7895479))

(assert (= (and b!7894963 ((_ is Concat!30064) (regTwo!42950 (regTwo!42950 (regOne!42950 r!4885))))) b!7895480))

(assert (= (and b!7894963 ((_ is Star!21219) (regTwo!42950 (regTwo!42950 (regOne!42950 r!4885))))) b!7895481))

(assert (= (and b!7894963 ((_ is Union!21219) (regTwo!42950 (regTwo!42950 (regOne!42950 r!4885))))) b!7895482))

(declare-fun e!4660379 () Bool)

(assert (=> b!7894972 (= tp!2351021 e!4660379)))

(declare-fun b!7895483 () Bool)

(assert (=> b!7895483 (= e!4660379 tp_is_empty!52837)))

(declare-fun b!7895486 () Bool)

(declare-fun tp!2351451 () Bool)

(declare-fun tp!2351450 () Bool)

(assert (=> b!7895486 (= e!4660379 (and tp!2351451 tp!2351450))))

(declare-fun b!7895485 () Bool)

(declare-fun tp!2351453 () Bool)

(assert (=> b!7895485 (= e!4660379 tp!2351453)))

(declare-fun b!7895484 () Bool)

(declare-fun tp!2351454 () Bool)

(declare-fun tp!2351452 () Bool)

(assert (=> b!7895484 (= e!4660379 (and tp!2351454 tp!2351452))))

(assert (= (and b!7894972 ((_ is ElementMatch!21219) (reg!21548 (regTwo!42951 (regTwo!42950 r!4885))))) b!7895483))

(assert (= (and b!7894972 ((_ is Concat!30064) (reg!21548 (regTwo!42951 (regTwo!42950 r!4885))))) b!7895484))

(assert (= (and b!7894972 ((_ is Star!21219) (reg!21548 (regTwo!42951 (regTwo!42950 r!4885))))) b!7895485))

(assert (= (and b!7894972 ((_ is Union!21219) (reg!21548 (regTwo!42951 (regTwo!42950 r!4885))))) b!7895486))

(declare-fun e!4660380 () Bool)

(assert (=> b!7894965 (= tp!2351009 e!4660380)))

(declare-fun b!7895487 () Bool)

(assert (=> b!7895487 (= e!4660380 tp_is_empty!52837)))

(declare-fun b!7895490 () Bool)

(declare-fun tp!2351456 () Bool)

(declare-fun tp!2351455 () Bool)

(assert (=> b!7895490 (= e!4660380 (and tp!2351456 tp!2351455))))

(declare-fun b!7895489 () Bool)

(declare-fun tp!2351458 () Bool)

(assert (=> b!7895489 (= e!4660380 tp!2351458)))

(declare-fun b!7895488 () Bool)

(declare-fun tp!2351459 () Bool)

(declare-fun tp!2351457 () Bool)

(assert (=> b!7895488 (= e!4660380 (and tp!2351459 tp!2351457))))

(assert (= (and b!7894965 ((_ is ElementMatch!21219) (regOne!42951 (regTwo!42950 (regOne!42950 r!4885))))) b!7895487))

(assert (= (and b!7894965 ((_ is Concat!30064) (regOne!42951 (regTwo!42950 (regOne!42950 r!4885))))) b!7895488))

(assert (= (and b!7894965 ((_ is Star!21219) (regOne!42951 (regTwo!42950 (regOne!42950 r!4885))))) b!7895489))

(assert (= (and b!7894965 ((_ is Union!21219) (regOne!42951 (regTwo!42950 (regOne!42950 r!4885))))) b!7895490))

(declare-fun e!4660381 () Bool)

(assert (=> b!7894965 (= tp!2351008 e!4660381)))

(declare-fun b!7895491 () Bool)

(assert (=> b!7895491 (= e!4660381 tp_is_empty!52837)))

(declare-fun b!7895494 () Bool)

(declare-fun tp!2351461 () Bool)

(declare-fun tp!2351460 () Bool)

(assert (=> b!7895494 (= e!4660381 (and tp!2351461 tp!2351460))))

(declare-fun b!7895493 () Bool)

(declare-fun tp!2351463 () Bool)

(assert (=> b!7895493 (= e!4660381 tp!2351463)))

(declare-fun b!7895492 () Bool)

(declare-fun tp!2351464 () Bool)

(declare-fun tp!2351462 () Bool)

(assert (=> b!7895492 (= e!4660381 (and tp!2351464 tp!2351462))))

(assert (= (and b!7894965 ((_ is ElementMatch!21219) (regTwo!42951 (regTwo!42950 (regOne!42950 r!4885))))) b!7895491))

(assert (= (and b!7894965 ((_ is Concat!30064) (regTwo!42951 (regTwo!42950 (regOne!42950 r!4885))))) b!7895492))

(assert (= (and b!7894965 ((_ is Star!21219) (regTwo!42951 (regTwo!42950 (regOne!42950 r!4885))))) b!7895493))

(assert (= (and b!7894965 ((_ is Union!21219) (regTwo!42951 (regTwo!42950 (regOne!42950 r!4885))))) b!7895494))

(declare-fun e!4660382 () Bool)

(assert (=> b!7894944 (= tp!2350986 e!4660382)))

(declare-fun b!7895495 () Bool)

(assert (=> b!7895495 (= e!4660382 tp_is_empty!52837)))

(declare-fun b!7895498 () Bool)

(declare-fun tp!2351466 () Bool)

(declare-fun tp!2351465 () Bool)

(assert (=> b!7895498 (= e!4660382 (and tp!2351466 tp!2351465))))

(declare-fun b!7895497 () Bool)

(declare-fun tp!2351468 () Bool)

(assert (=> b!7895497 (= e!4660382 tp!2351468)))

(declare-fun b!7895496 () Bool)

(declare-fun tp!2351469 () Bool)

(declare-fun tp!2351467 () Bool)

(assert (=> b!7895496 (= e!4660382 (and tp!2351469 tp!2351467))))

(assert (= (and b!7894944 ((_ is ElementMatch!21219) (reg!21548 (regTwo!42950 (regOne!42951 r!4885))))) b!7895495))

(assert (= (and b!7894944 ((_ is Concat!30064) (reg!21548 (regTwo!42950 (regOne!42951 r!4885))))) b!7895496))

(assert (= (and b!7894944 ((_ is Star!21219) (reg!21548 (regTwo!42950 (regOne!42951 r!4885))))) b!7895497))

(assert (= (and b!7894944 ((_ is Union!21219) (reg!21548 (regTwo!42950 (regOne!42951 r!4885))))) b!7895498))

(declare-fun e!4660383 () Bool)

(assert (=> b!7894979 (= tp!2351032 e!4660383)))

(declare-fun b!7895499 () Bool)

(assert (=> b!7895499 (= e!4660383 tp_is_empty!52837)))

(declare-fun b!7895502 () Bool)

(declare-fun tp!2351471 () Bool)

(declare-fun tp!2351470 () Bool)

(assert (=> b!7895502 (= e!4660383 (and tp!2351471 tp!2351470))))

(declare-fun b!7895501 () Bool)

(declare-fun tp!2351473 () Bool)

(assert (=> b!7895501 (= e!4660383 tp!2351473)))

(declare-fun b!7895500 () Bool)

(declare-fun tp!2351474 () Bool)

(declare-fun tp!2351472 () Bool)

(assert (=> b!7895500 (= e!4660383 (and tp!2351474 tp!2351472))))

(assert (= (and b!7894979 ((_ is ElementMatch!21219) (regOne!42950 (regOne!42950 (regTwo!42950 r!4885))))) b!7895499))

(assert (= (and b!7894979 ((_ is Concat!30064) (regOne!42950 (regOne!42950 (regTwo!42950 r!4885))))) b!7895500))

(assert (= (and b!7894979 ((_ is Star!21219) (regOne!42950 (regOne!42950 (regTwo!42950 r!4885))))) b!7895501))

(assert (= (and b!7894979 ((_ is Union!21219) (regOne!42950 (regOne!42950 (regTwo!42950 r!4885))))) b!7895502))

(declare-fun e!4660384 () Bool)

(assert (=> b!7894979 (= tp!2351030 e!4660384)))

(declare-fun b!7895503 () Bool)

(assert (=> b!7895503 (= e!4660384 tp_is_empty!52837)))

(declare-fun b!7895506 () Bool)

(declare-fun tp!2351476 () Bool)

(declare-fun tp!2351475 () Bool)

(assert (=> b!7895506 (= e!4660384 (and tp!2351476 tp!2351475))))

(declare-fun b!7895505 () Bool)

(declare-fun tp!2351478 () Bool)

(assert (=> b!7895505 (= e!4660384 tp!2351478)))

(declare-fun b!7895504 () Bool)

(declare-fun tp!2351479 () Bool)

(declare-fun tp!2351477 () Bool)

(assert (=> b!7895504 (= e!4660384 (and tp!2351479 tp!2351477))))

(assert (= (and b!7894979 ((_ is ElementMatch!21219) (regTwo!42950 (regOne!42950 (regTwo!42950 r!4885))))) b!7895503))

(assert (= (and b!7894979 ((_ is Concat!30064) (regTwo!42950 (regOne!42950 (regTwo!42950 r!4885))))) b!7895504))

(assert (= (and b!7894979 ((_ is Star!21219) (regTwo!42950 (regOne!42950 (regTwo!42950 r!4885))))) b!7895505))

(assert (= (and b!7894979 ((_ is Union!21219) (regTwo!42950 (regOne!42950 (regTwo!42950 r!4885))))) b!7895506))

(declare-fun e!4660385 () Bool)

(assert (=> b!7894894 (= tp!2350936 e!4660385)))

(declare-fun b!7895507 () Bool)

(assert (=> b!7895507 (= e!4660385 tp_is_empty!52837)))

(declare-fun b!7895510 () Bool)

(declare-fun tp!2351481 () Bool)

(declare-fun tp!2351480 () Bool)

(assert (=> b!7895510 (= e!4660385 (and tp!2351481 tp!2351480))))

(declare-fun b!7895509 () Bool)

(declare-fun tp!2351483 () Bool)

(assert (=> b!7895509 (= e!4660385 tp!2351483)))

(declare-fun b!7895508 () Bool)

(declare-fun tp!2351484 () Bool)

(declare-fun tp!2351482 () Bool)

(assert (=> b!7895508 (= e!4660385 (and tp!2351484 tp!2351482))))

(assert (= (and b!7894894 ((_ is ElementMatch!21219) (reg!21548 (regOne!42951 (regOne!42951 r!4885))))) b!7895507))

(assert (= (and b!7894894 ((_ is Concat!30064) (reg!21548 (regOne!42951 (regOne!42951 r!4885))))) b!7895508))

(assert (= (and b!7894894 ((_ is Star!21219) (reg!21548 (regOne!42951 (regOne!42951 r!4885))))) b!7895509))

(assert (= (and b!7894894 ((_ is Union!21219) (reg!21548 (regOne!42951 (regOne!42951 r!4885))))) b!7895510))

(declare-fun e!4660386 () Bool)

(assert (=> b!7894988 (= tp!2351041 e!4660386)))

(declare-fun b!7895511 () Bool)

(assert (=> b!7895511 (= e!4660386 tp_is_empty!52837)))

(declare-fun b!7895514 () Bool)

(declare-fun tp!2351486 () Bool)

(declare-fun tp!2351485 () Bool)

(assert (=> b!7895514 (= e!4660386 (and tp!2351486 tp!2351485))))

(declare-fun b!7895513 () Bool)

(declare-fun tp!2351488 () Bool)

(assert (=> b!7895513 (= e!4660386 tp!2351488)))

(declare-fun b!7895512 () Bool)

(declare-fun tp!2351489 () Bool)

(declare-fun tp!2351487 () Bool)

(assert (=> b!7895512 (= e!4660386 (and tp!2351489 tp!2351487))))

(assert (= (and b!7894988 ((_ is ElementMatch!21219) (reg!21548 (regOne!42951 (reg!21548 r!4885))))) b!7895511))

(assert (= (and b!7894988 ((_ is Concat!30064) (reg!21548 (regOne!42951 (reg!21548 r!4885))))) b!7895512))

(assert (= (and b!7894988 ((_ is Star!21219) (reg!21548 (regOne!42951 (reg!21548 r!4885))))) b!7895513))

(assert (= (and b!7894988 ((_ is Union!21219) (reg!21548 (regOne!42951 (reg!21548 r!4885))))) b!7895514))

(declare-fun e!4660387 () Bool)

(assert (=> b!7894981 (= tp!2351029 e!4660387)))

(declare-fun b!7895515 () Bool)

(assert (=> b!7895515 (= e!4660387 tp_is_empty!52837)))

(declare-fun b!7895518 () Bool)

(declare-fun tp!2351491 () Bool)

(declare-fun tp!2351490 () Bool)

(assert (=> b!7895518 (= e!4660387 (and tp!2351491 tp!2351490))))

(declare-fun b!7895517 () Bool)

(declare-fun tp!2351493 () Bool)

(assert (=> b!7895517 (= e!4660387 tp!2351493)))

(declare-fun b!7895516 () Bool)

(declare-fun tp!2351494 () Bool)

(declare-fun tp!2351492 () Bool)

(assert (=> b!7895516 (= e!4660387 (and tp!2351494 tp!2351492))))

(assert (= (and b!7894981 ((_ is ElementMatch!21219) (regOne!42951 (regOne!42950 (regTwo!42950 r!4885))))) b!7895515))

(assert (= (and b!7894981 ((_ is Concat!30064) (regOne!42951 (regOne!42950 (regTwo!42950 r!4885))))) b!7895516))

(assert (= (and b!7894981 ((_ is Star!21219) (regOne!42951 (regOne!42950 (regTwo!42950 r!4885))))) b!7895517))

(assert (= (and b!7894981 ((_ is Union!21219) (regOne!42951 (regOne!42950 (regTwo!42950 r!4885))))) b!7895518))

(declare-fun e!4660388 () Bool)

(assert (=> b!7894981 (= tp!2351028 e!4660388)))

(declare-fun b!7895519 () Bool)

(assert (=> b!7895519 (= e!4660388 tp_is_empty!52837)))

(declare-fun b!7895522 () Bool)

(declare-fun tp!2351496 () Bool)

(declare-fun tp!2351495 () Bool)

(assert (=> b!7895522 (= e!4660388 (and tp!2351496 tp!2351495))))

(declare-fun b!7895521 () Bool)

(declare-fun tp!2351498 () Bool)

(assert (=> b!7895521 (= e!4660388 tp!2351498)))

(declare-fun b!7895520 () Bool)

(declare-fun tp!2351499 () Bool)

(declare-fun tp!2351497 () Bool)

(assert (=> b!7895520 (= e!4660388 (and tp!2351499 tp!2351497))))

(assert (= (and b!7894981 ((_ is ElementMatch!21219) (regTwo!42951 (regOne!42950 (regTwo!42950 r!4885))))) b!7895519))

(assert (= (and b!7894981 ((_ is Concat!30064) (regTwo!42951 (regOne!42950 (regTwo!42950 r!4885))))) b!7895520))

(assert (= (and b!7894981 ((_ is Star!21219) (regTwo!42951 (regOne!42950 (regTwo!42950 r!4885))))) b!7895521))

(assert (= (and b!7894981 ((_ is Union!21219) (regTwo!42951 (regOne!42950 (regTwo!42950 r!4885))))) b!7895522))

(declare-fun e!4660389 () Bool)

(assert (=> b!7894949 (= tp!2350989 e!4660389)))

(declare-fun b!7895523 () Bool)

(assert (=> b!7895523 (= e!4660389 tp_is_empty!52837)))

(declare-fun b!7895526 () Bool)

(declare-fun tp!2351501 () Bool)

(declare-fun tp!2351500 () Bool)

(assert (=> b!7895526 (= e!4660389 (and tp!2351501 tp!2351500))))

(declare-fun b!7895525 () Bool)

(declare-fun tp!2351503 () Bool)

(assert (=> b!7895525 (= e!4660389 tp!2351503)))

(declare-fun b!7895524 () Bool)

(declare-fun tp!2351504 () Bool)

(declare-fun tp!2351502 () Bool)

(assert (=> b!7895524 (= e!4660389 (and tp!2351504 tp!2351502))))

(assert (= (and b!7894949 ((_ is ElementMatch!21219) (regOne!42951 (regOne!42951 (regOne!42950 r!4885))))) b!7895523))

(assert (= (and b!7894949 ((_ is Concat!30064) (regOne!42951 (regOne!42951 (regOne!42950 r!4885))))) b!7895524))

(assert (= (and b!7894949 ((_ is Star!21219) (regOne!42951 (regOne!42951 (regOne!42950 r!4885))))) b!7895525))

(assert (= (and b!7894949 ((_ is Union!21219) (regOne!42951 (regOne!42951 (regOne!42950 r!4885))))) b!7895526))

(declare-fun e!4660390 () Bool)

(assert (=> b!7894949 (= tp!2350988 e!4660390)))

(declare-fun b!7895527 () Bool)

(assert (=> b!7895527 (= e!4660390 tp_is_empty!52837)))

(declare-fun b!7895530 () Bool)

(declare-fun tp!2351506 () Bool)

(declare-fun tp!2351505 () Bool)

(assert (=> b!7895530 (= e!4660390 (and tp!2351506 tp!2351505))))

(declare-fun b!7895529 () Bool)

(declare-fun tp!2351508 () Bool)

(assert (=> b!7895529 (= e!4660390 tp!2351508)))

(declare-fun b!7895528 () Bool)

(declare-fun tp!2351509 () Bool)

(declare-fun tp!2351507 () Bool)

(assert (=> b!7895528 (= e!4660390 (and tp!2351509 tp!2351507))))

(assert (= (and b!7894949 ((_ is ElementMatch!21219) (regTwo!42951 (regOne!42951 (regOne!42950 r!4885))))) b!7895527))

(assert (= (and b!7894949 ((_ is Concat!30064) (regTwo!42951 (regOne!42951 (regOne!42950 r!4885))))) b!7895528))

(assert (= (and b!7894949 ((_ is Star!21219) (regTwo!42951 (regOne!42951 (regOne!42950 r!4885))))) b!7895529))

(assert (= (and b!7894949 ((_ is Union!21219) (regTwo!42951 (regOne!42951 (regOne!42950 r!4885))))) b!7895530))

(declare-fun e!4660391 () Bool)

(assert (=> b!7894919 (= tp!2350957 e!4660391)))

(declare-fun b!7895531 () Bool)

(assert (=> b!7895531 (= e!4660391 tp_is_empty!52837)))

(declare-fun b!7895534 () Bool)

(declare-fun tp!2351511 () Bool)

(declare-fun tp!2351510 () Bool)

(assert (=> b!7895534 (= e!4660391 (and tp!2351511 tp!2351510))))

(declare-fun b!7895533 () Bool)

(declare-fun tp!2351513 () Bool)

(assert (=> b!7895533 (= e!4660391 tp!2351513)))

(declare-fun b!7895532 () Bool)

(declare-fun tp!2351514 () Bool)

(declare-fun tp!2351512 () Bool)

(assert (=> b!7895532 (= e!4660391 (and tp!2351514 tp!2351512))))

(assert (= (and b!7894919 ((_ is ElementMatch!21219) (regOne!42950 (regOne!42951 (regTwo!42951 r!4885))))) b!7895531))

(assert (= (and b!7894919 ((_ is Concat!30064) (regOne!42950 (regOne!42951 (regTwo!42951 r!4885))))) b!7895532))

(assert (= (and b!7894919 ((_ is Star!21219) (regOne!42950 (regOne!42951 (regTwo!42951 r!4885))))) b!7895533))

(assert (= (and b!7894919 ((_ is Union!21219) (regOne!42950 (regOne!42951 (regTwo!42951 r!4885))))) b!7895534))

(declare-fun e!4660392 () Bool)

(assert (=> b!7894919 (= tp!2350955 e!4660392)))

(declare-fun b!7895535 () Bool)

(assert (=> b!7895535 (= e!4660392 tp_is_empty!52837)))

(declare-fun b!7895538 () Bool)

(declare-fun tp!2351516 () Bool)

(declare-fun tp!2351515 () Bool)

(assert (=> b!7895538 (= e!4660392 (and tp!2351516 tp!2351515))))

(declare-fun b!7895537 () Bool)

(declare-fun tp!2351518 () Bool)

(assert (=> b!7895537 (= e!4660392 tp!2351518)))

(declare-fun b!7895536 () Bool)

(declare-fun tp!2351519 () Bool)

(declare-fun tp!2351517 () Bool)

(assert (=> b!7895536 (= e!4660392 (and tp!2351519 tp!2351517))))

(assert (= (and b!7894919 ((_ is ElementMatch!21219) (regTwo!42950 (regOne!42951 (regTwo!42951 r!4885))))) b!7895535))

(assert (= (and b!7894919 ((_ is Concat!30064) (regTwo!42950 (regOne!42951 (regTwo!42951 r!4885))))) b!7895536))

(assert (= (and b!7894919 ((_ is Star!21219) (regTwo!42950 (regOne!42951 (regTwo!42951 r!4885))))) b!7895537))

(assert (= (and b!7894919 ((_ is Union!21219) (regTwo!42950 (regOne!42951 (regTwo!42951 r!4885))))) b!7895538))

(declare-fun e!4660393 () Bool)

(assert (=> b!7894927 (= tp!2350967 e!4660393)))

(declare-fun b!7895539 () Bool)

(assert (=> b!7895539 (= e!4660393 tp_is_empty!52837)))

(declare-fun b!7895542 () Bool)

(declare-fun tp!2351521 () Bool)

(declare-fun tp!2351520 () Bool)

(assert (=> b!7895542 (= e!4660393 (and tp!2351521 tp!2351520))))

(declare-fun b!7895541 () Bool)

(declare-fun tp!2351523 () Bool)

(assert (=> b!7895541 (= e!4660393 tp!2351523)))

(declare-fun b!7895540 () Bool)

(declare-fun tp!2351524 () Bool)

(declare-fun tp!2351522 () Bool)

(assert (=> b!7895540 (= e!4660393 (and tp!2351524 tp!2351522))))

(assert (= (and b!7894927 ((_ is ElementMatch!21219) (regOne!42950 (reg!21548 (regOne!42950 r!4885))))) b!7895539))

(assert (= (and b!7894927 ((_ is Concat!30064) (regOne!42950 (reg!21548 (regOne!42950 r!4885))))) b!7895540))

(assert (= (and b!7894927 ((_ is Star!21219) (regOne!42950 (reg!21548 (regOne!42950 r!4885))))) b!7895541))

(assert (= (and b!7894927 ((_ is Union!21219) (regOne!42950 (reg!21548 (regOne!42950 r!4885))))) b!7895542))

(declare-fun e!4660394 () Bool)

(assert (=> b!7894927 (= tp!2350965 e!4660394)))

(declare-fun b!7895543 () Bool)

(assert (=> b!7895543 (= e!4660394 tp_is_empty!52837)))

(declare-fun b!7895546 () Bool)

(declare-fun tp!2351526 () Bool)

(declare-fun tp!2351525 () Bool)

(assert (=> b!7895546 (= e!4660394 (and tp!2351526 tp!2351525))))

(declare-fun b!7895545 () Bool)

(declare-fun tp!2351528 () Bool)

(assert (=> b!7895545 (= e!4660394 tp!2351528)))

(declare-fun b!7895544 () Bool)

(declare-fun tp!2351529 () Bool)

(declare-fun tp!2351527 () Bool)

(assert (=> b!7895544 (= e!4660394 (and tp!2351529 tp!2351527))))

(assert (= (and b!7894927 ((_ is ElementMatch!21219) (regTwo!42950 (reg!21548 (regOne!42950 r!4885))))) b!7895543))

(assert (= (and b!7894927 ((_ is Concat!30064) (regTwo!42950 (reg!21548 (regOne!42950 r!4885))))) b!7895544))

(assert (= (and b!7894927 ((_ is Star!21219) (regTwo!42950 (reg!21548 (regOne!42950 r!4885))))) b!7895545))

(assert (= (and b!7894927 ((_ is Union!21219) (regTwo!42950 (reg!21548 (regOne!42950 r!4885))))) b!7895546))

(declare-fun e!4660395 () Bool)

(assert (=> b!7894936 (= tp!2350976 e!4660395)))

(declare-fun b!7895547 () Bool)

(assert (=> b!7895547 (= e!4660395 tp_is_empty!52837)))

(declare-fun b!7895550 () Bool)

(declare-fun tp!2351531 () Bool)

(declare-fun tp!2351530 () Bool)

(assert (=> b!7895550 (= e!4660395 (and tp!2351531 tp!2351530))))

(declare-fun b!7895549 () Bool)

(declare-fun tp!2351533 () Bool)

(assert (=> b!7895549 (= e!4660395 tp!2351533)))

(declare-fun b!7895548 () Bool)

(declare-fun tp!2351534 () Bool)

(declare-fun tp!2351532 () Bool)

(assert (=> b!7895548 (= e!4660395 (and tp!2351534 tp!2351532))))

(assert (= (and b!7894936 ((_ is ElementMatch!21219) (reg!21548 (regTwo!42950 (regTwo!42951 r!4885))))) b!7895547))

(assert (= (and b!7894936 ((_ is Concat!30064) (reg!21548 (regTwo!42950 (regTwo!42951 r!4885))))) b!7895548))

(assert (= (and b!7894936 ((_ is Star!21219) (reg!21548 (regTwo!42950 (regTwo!42951 r!4885))))) b!7895549))

(assert (= (and b!7894936 ((_ is Union!21219) (reg!21548 (regTwo!42950 (regTwo!42951 r!4885))))) b!7895550))

(declare-fun e!4660396 () Bool)

(assert (=> b!7894929 (= tp!2350964 e!4660396)))

(declare-fun b!7895551 () Bool)

(assert (=> b!7895551 (= e!4660396 tp_is_empty!52837)))

(declare-fun b!7895554 () Bool)

(declare-fun tp!2351536 () Bool)

(declare-fun tp!2351535 () Bool)

(assert (=> b!7895554 (= e!4660396 (and tp!2351536 tp!2351535))))

(declare-fun b!7895553 () Bool)

(declare-fun tp!2351538 () Bool)

(assert (=> b!7895553 (= e!4660396 tp!2351538)))

(declare-fun b!7895552 () Bool)

(declare-fun tp!2351539 () Bool)

(declare-fun tp!2351537 () Bool)

(assert (=> b!7895552 (= e!4660396 (and tp!2351539 tp!2351537))))

(assert (= (and b!7894929 ((_ is ElementMatch!21219) (regOne!42951 (reg!21548 (regOne!42950 r!4885))))) b!7895551))

(assert (= (and b!7894929 ((_ is Concat!30064) (regOne!42951 (reg!21548 (regOne!42950 r!4885))))) b!7895552))

(assert (= (and b!7894929 ((_ is Star!21219) (regOne!42951 (reg!21548 (regOne!42950 r!4885))))) b!7895553))

(assert (= (and b!7894929 ((_ is Union!21219) (regOne!42951 (reg!21548 (regOne!42950 r!4885))))) b!7895554))

(declare-fun e!4660397 () Bool)

(assert (=> b!7894929 (= tp!2350963 e!4660397)))

(declare-fun b!7895555 () Bool)

(assert (=> b!7895555 (= e!4660397 tp_is_empty!52837)))

(declare-fun b!7895558 () Bool)

(declare-fun tp!2351541 () Bool)

(declare-fun tp!2351540 () Bool)

(assert (=> b!7895558 (= e!4660397 (and tp!2351541 tp!2351540))))

(declare-fun b!7895557 () Bool)

(declare-fun tp!2351543 () Bool)

(assert (=> b!7895557 (= e!4660397 tp!2351543)))

(declare-fun b!7895556 () Bool)

(declare-fun tp!2351544 () Bool)

(declare-fun tp!2351542 () Bool)

(assert (=> b!7895556 (= e!4660397 (and tp!2351544 tp!2351542))))

(assert (= (and b!7894929 ((_ is ElementMatch!21219) (regTwo!42951 (reg!21548 (regOne!42950 r!4885))))) b!7895555))

(assert (= (and b!7894929 ((_ is Concat!30064) (regTwo!42951 (reg!21548 (regOne!42950 r!4885))))) b!7895556))

(assert (= (and b!7894929 ((_ is Star!21219) (regTwo!42951 (reg!21548 (regOne!42950 r!4885))))) b!7895557))

(assert (= (and b!7894929 ((_ is Union!21219) (regTwo!42951 (reg!21548 (regOne!42950 r!4885))))) b!7895558))

(declare-fun e!4660398 () Bool)

(assert (=> b!7894893 (= tp!2350937 e!4660398)))

(declare-fun b!7895559 () Bool)

(assert (=> b!7895559 (= e!4660398 tp_is_empty!52837)))

(declare-fun b!7895562 () Bool)

(declare-fun tp!2351546 () Bool)

(declare-fun tp!2351545 () Bool)

(assert (=> b!7895562 (= e!4660398 (and tp!2351546 tp!2351545))))

(declare-fun b!7895561 () Bool)

(declare-fun tp!2351548 () Bool)

(assert (=> b!7895561 (= e!4660398 tp!2351548)))

(declare-fun b!7895560 () Bool)

(declare-fun tp!2351549 () Bool)

(declare-fun tp!2351547 () Bool)

(assert (=> b!7895560 (= e!4660398 (and tp!2351549 tp!2351547))))

(assert (= (and b!7894893 ((_ is ElementMatch!21219) (regOne!42950 (regOne!42951 (regOne!42951 r!4885))))) b!7895559))

(assert (= (and b!7894893 ((_ is Concat!30064) (regOne!42950 (regOne!42951 (regOne!42951 r!4885))))) b!7895560))

(assert (= (and b!7894893 ((_ is Star!21219) (regOne!42950 (regOne!42951 (regOne!42951 r!4885))))) b!7895561))

(assert (= (and b!7894893 ((_ is Union!21219) (regOne!42950 (regOne!42951 (regOne!42951 r!4885))))) b!7895562))

(declare-fun e!4660399 () Bool)

(assert (=> b!7894893 (= tp!2350935 e!4660399)))

(declare-fun b!7895563 () Bool)

(assert (=> b!7895563 (= e!4660399 tp_is_empty!52837)))

(declare-fun b!7895566 () Bool)

(declare-fun tp!2351551 () Bool)

(declare-fun tp!2351550 () Bool)

(assert (=> b!7895566 (= e!4660399 (and tp!2351551 tp!2351550))))

(declare-fun b!7895565 () Bool)

(declare-fun tp!2351553 () Bool)

(assert (=> b!7895565 (= e!4660399 tp!2351553)))

(declare-fun b!7895564 () Bool)

(declare-fun tp!2351554 () Bool)

(declare-fun tp!2351552 () Bool)

(assert (=> b!7895564 (= e!4660399 (and tp!2351554 tp!2351552))))

(assert (= (and b!7894893 ((_ is ElementMatch!21219) (regTwo!42950 (regOne!42951 (regOne!42951 r!4885))))) b!7895563))

(assert (= (and b!7894893 ((_ is Concat!30064) (regTwo!42950 (regOne!42951 (regOne!42951 r!4885))))) b!7895564))

(assert (= (and b!7894893 ((_ is Star!21219) (regTwo!42950 (regOne!42951 (regOne!42951 r!4885))))) b!7895565))

(assert (= (and b!7894893 ((_ is Union!21219) (regTwo!42950 (regOne!42951 (regOne!42951 r!4885))))) b!7895566))

(declare-fun e!4660400 () Bool)

(assert (=> b!7894987 (= tp!2351042 e!4660400)))

(declare-fun b!7895567 () Bool)

(assert (=> b!7895567 (= e!4660400 tp_is_empty!52837)))

(declare-fun b!7895570 () Bool)

(declare-fun tp!2351556 () Bool)

(declare-fun tp!2351555 () Bool)

(assert (=> b!7895570 (= e!4660400 (and tp!2351556 tp!2351555))))

(declare-fun b!7895569 () Bool)

(declare-fun tp!2351558 () Bool)

(assert (=> b!7895569 (= e!4660400 tp!2351558)))

(declare-fun b!7895568 () Bool)

(declare-fun tp!2351559 () Bool)

(declare-fun tp!2351557 () Bool)

(assert (=> b!7895568 (= e!4660400 (and tp!2351559 tp!2351557))))

(assert (= (and b!7894987 ((_ is ElementMatch!21219) (regOne!42950 (regOne!42951 (reg!21548 r!4885))))) b!7895567))

(assert (= (and b!7894987 ((_ is Concat!30064) (regOne!42950 (regOne!42951 (reg!21548 r!4885))))) b!7895568))

(assert (= (and b!7894987 ((_ is Star!21219) (regOne!42950 (regOne!42951 (reg!21548 r!4885))))) b!7895569))

(assert (= (and b!7894987 ((_ is Union!21219) (regOne!42950 (regOne!42951 (reg!21548 r!4885))))) b!7895570))

(declare-fun e!4660401 () Bool)

(assert (=> b!7894987 (= tp!2351040 e!4660401)))

(declare-fun b!7895571 () Bool)

(assert (=> b!7895571 (= e!4660401 tp_is_empty!52837)))

(declare-fun b!7895574 () Bool)

(declare-fun tp!2351561 () Bool)

(declare-fun tp!2351560 () Bool)

(assert (=> b!7895574 (= e!4660401 (and tp!2351561 tp!2351560))))

(declare-fun b!7895573 () Bool)

(declare-fun tp!2351563 () Bool)

(assert (=> b!7895573 (= e!4660401 tp!2351563)))

(declare-fun b!7895572 () Bool)

(declare-fun tp!2351564 () Bool)

(declare-fun tp!2351562 () Bool)

(assert (=> b!7895572 (= e!4660401 (and tp!2351564 tp!2351562))))

(assert (= (and b!7894987 ((_ is ElementMatch!21219) (regTwo!42950 (regOne!42951 (reg!21548 r!4885))))) b!7895571))

(assert (= (and b!7894987 ((_ is Concat!30064) (regTwo!42950 (regOne!42951 (reg!21548 r!4885))))) b!7895572))

(assert (= (and b!7894987 ((_ is Star!21219) (regTwo!42950 (regOne!42951 (reg!21548 r!4885))))) b!7895573))

(assert (= (and b!7894987 ((_ is Union!21219) (regTwo!42950 (regOne!42951 (reg!21548 r!4885))))) b!7895574))

(declare-fun e!4660402 () Bool)

(assert (=> b!7894902 (= tp!2350946 e!4660402)))

(declare-fun b!7895575 () Bool)

(assert (=> b!7895575 (= e!4660402 tp_is_empty!52837)))

(declare-fun b!7895578 () Bool)

(declare-fun tp!2351566 () Bool)

(declare-fun tp!2351565 () Bool)

(assert (=> b!7895578 (= e!4660402 (and tp!2351566 tp!2351565))))

(declare-fun b!7895577 () Bool)

(declare-fun tp!2351568 () Bool)

(assert (=> b!7895577 (= e!4660402 tp!2351568)))

(declare-fun b!7895576 () Bool)

(declare-fun tp!2351569 () Bool)

(declare-fun tp!2351567 () Bool)

(assert (=> b!7895576 (= e!4660402 (and tp!2351569 tp!2351567))))

(assert (= (and b!7894902 ((_ is ElementMatch!21219) (reg!21548 (reg!21548 (regTwo!42951 r!4885))))) b!7895575))

(assert (= (and b!7894902 ((_ is Concat!30064) (reg!21548 (reg!21548 (regTwo!42951 r!4885))))) b!7895576))

(assert (= (and b!7894902 ((_ is Star!21219) (reg!21548 (reg!21548 (regTwo!42951 r!4885))))) b!7895577))

(assert (= (and b!7894902 ((_ is Union!21219) (reg!21548 (reg!21548 (regTwo!42951 r!4885))))) b!7895578))

(declare-fun e!4660403 () Bool)

(assert (=> b!7894996 (= tp!2351051 e!4660403)))

(declare-fun b!7895579 () Bool)

(assert (=> b!7895579 (= e!4660403 tp_is_empty!52837)))

(declare-fun b!7895582 () Bool)

(declare-fun tp!2351571 () Bool)

(declare-fun tp!2351570 () Bool)

(assert (=> b!7895582 (= e!4660403 (and tp!2351571 tp!2351570))))

(declare-fun b!7895581 () Bool)

(declare-fun tp!2351573 () Bool)

(assert (=> b!7895581 (= e!4660403 tp!2351573)))

(declare-fun b!7895580 () Bool)

(declare-fun tp!2351574 () Bool)

(declare-fun tp!2351572 () Bool)

(assert (=> b!7895580 (= e!4660403 (and tp!2351574 tp!2351572))))

(assert (= (and b!7894996 ((_ is ElementMatch!21219) (reg!21548 (regOne!42950 (reg!21548 r!4885))))) b!7895579))

(assert (= (and b!7894996 ((_ is Concat!30064) (reg!21548 (regOne!42950 (reg!21548 r!4885))))) b!7895580))

(assert (= (and b!7894996 ((_ is Star!21219) (reg!21548 (regOne!42950 (reg!21548 r!4885))))) b!7895581))

(assert (= (and b!7894996 ((_ is Union!21219) (reg!21548 (regOne!42950 (reg!21548 r!4885))))) b!7895582))

(declare-fun e!4660404 () Bool)

(assert (=> b!7894953 (= tp!2350994 e!4660404)))

(declare-fun b!7895583 () Bool)

(assert (=> b!7895583 (= e!4660404 tp_is_empty!52837)))

(declare-fun b!7895586 () Bool)

(declare-fun tp!2351576 () Bool)

(declare-fun tp!2351575 () Bool)

(assert (=> b!7895586 (= e!4660404 (and tp!2351576 tp!2351575))))

(declare-fun b!7895585 () Bool)

(declare-fun tp!2351578 () Bool)

(assert (=> b!7895585 (= e!4660404 tp!2351578)))

(declare-fun b!7895584 () Bool)

(declare-fun tp!2351579 () Bool)

(declare-fun tp!2351577 () Bool)

(assert (=> b!7895584 (= e!4660404 (and tp!2351579 tp!2351577))))

(assert (= (and b!7894953 ((_ is ElementMatch!21219) (regOne!42951 (regTwo!42951 (regOne!42950 r!4885))))) b!7895583))

(assert (= (and b!7894953 ((_ is Concat!30064) (regOne!42951 (regTwo!42951 (regOne!42950 r!4885))))) b!7895584))

(assert (= (and b!7894953 ((_ is Star!21219) (regOne!42951 (regTwo!42951 (regOne!42950 r!4885))))) b!7895585))

(assert (= (and b!7894953 ((_ is Union!21219) (regOne!42951 (regTwo!42951 (regOne!42950 r!4885))))) b!7895586))

(declare-fun e!4660405 () Bool)

(assert (=> b!7894953 (= tp!2350993 e!4660405)))

(declare-fun b!7895587 () Bool)

(assert (=> b!7895587 (= e!4660405 tp_is_empty!52837)))

(declare-fun b!7895590 () Bool)

(declare-fun tp!2351581 () Bool)

(declare-fun tp!2351580 () Bool)

(assert (=> b!7895590 (= e!4660405 (and tp!2351581 tp!2351580))))

(declare-fun b!7895589 () Bool)

(declare-fun tp!2351583 () Bool)

(assert (=> b!7895589 (= e!4660405 tp!2351583)))

(declare-fun b!7895588 () Bool)

(declare-fun tp!2351584 () Bool)

(declare-fun tp!2351582 () Bool)

(assert (=> b!7895588 (= e!4660405 (and tp!2351584 tp!2351582))))

(assert (= (and b!7894953 ((_ is ElementMatch!21219) (regTwo!42951 (regTwo!42951 (regOne!42950 r!4885))))) b!7895587))

(assert (= (and b!7894953 ((_ is Concat!30064) (regTwo!42951 (regTwo!42951 (regOne!42950 r!4885))))) b!7895588))

(assert (= (and b!7894953 ((_ is Star!21219) (regTwo!42951 (regTwo!42951 (regOne!42950 r!4885))))) b!7895589))

(assert (= (and b!7894953 ((_ is Union!21219) (regTwo!42951 (regTwo!42951 (regOne!42950 r!4885))))) b!7895590))

(declare-fun e!4660406 () Bool)

(assert (=> b!7894951 (= tp!2350997 e!4660406)))

(declare-fun b!7895591 () Bool)

(assert (=> b!7895591 (= e!4660406 tp_is_empty!52837)))

(declare-fun b!7895594 () Bool)

(declare-fun tp!2351586 () Bool)

(declare-fun tp!2351585 () Bool)

(assert (=> b!7895594 (= e!4660406 (and tp!2351586 tp!2351585))))

(declare-fun b!7895593 () Bool)

(declare-fun tp!2351588 () Bool)

(assert (=> b!7895593 (= e!4660406 tp!2351588)))

(declare-fun b!7895592 () Bool)

(declare-fun tp!2351589 () Bool)

(declare-fun tp!2351587 () Bool)

(assert (=> b!7895592 (= e!4660406 (and tp!2351589 tp!2351587))))

(assert (= (and b!7894951 ((_ is ElementMatch!21219) (regOne!42950 (regTwo!42951 (regOne!42950 r!4885))))) b!7895591))

(assert (= (and b!7894951 ((_ is Concat!30064) (regOne!42950 (regTwo!42951 (regOne!42950 r!4885))))) b!7895592))

(assert (= (and b!7894951 ((_ is Star!21219) (regOne!42950 (regTwo!42951 (regOne!42950 r!4885))))) b!7895593))

(assert (= (and b!7894951 ((_ is Union!21219) (regOne!42950 (regTwo!42951 (regOne!42950 r!4885))))) b!7895594))

(declare-fun e!4660407 () Bool)

(assert (=> b!7894951 (= tp!2350995 e!4660407)))

(declare-fun b!7895595 () Bool)

(assert (=> b!7895595 (= e!4660407 tp_is_empty!52837)))

(declare-fun b!7895598 () Bool)

(declare-fun tp!2351591 () Bool)

(declare-fun tp!2351590 () Bool)

(assert (=> b!7895598 (= e!4660407 (and tp!2351591 tp!2351590))))

(declare-fun b!7895597 () Bool)

(declare-fun tp!2351593 () Bool)

(assert (=> b!7895597 (= e!4660407 tp!2351593)))

(declare-fun b!7895596 () Bool)

(declare-fun tp!2351594 () Bool)

(declare-fun tp!2351592 () Bool)

(assert (=> b!7895596 (= e!4660407 (and tp!2351594 tp!2351592))))

(assert (= (and b!7894951 ((_ is ElementMatch!21219) (regTwo!42950 (regTwo!42951 (regOne!42950 r!4885))))) b!7895595))

(assert (= (and b!7894951 ((_ is Concat!30064) (regTwo!42950 (regTwo!42951 (regOne!42950 r!4885))))) b!7895596))

(assert (= (and b!7894951 ((_ is Star!21219) (regTwo!42950 (regTwo!42951 (regOne!42950 r!4885))))) b!7895597))

(assert (= (and b!7894951 ((_ is Union!21219) (regTwo!42950 (regTwo!42951 (regOne!42950 r!4885))))) b!7895598))

(declare-fun e!4660408 () Bool)

(assert (=> b!7894960 (= tp!2351006 e!4660408)))

(declare-fun b!7895599 () Bool)

(assert (=> b!7895599 (= e!4660408 tp_is_empty!52837)))

(declare-fun b!7895602 () Bool)

(declare-fun tp!2351596 () Bool)

(declare-fun tp!2351595 () Bool)

(assert (=> b!7895602 (= e!4660408 (and tp!2351596 tp!2351595))))

(declare-fun b!7895601 () Bool)

(declare-fun tp!2351598 () Bool)

(assert (=> b!7895601 (= e!4660408 tp!2351598)))

(declare-fun b!7895600 () Bool)

(declare-fun tp!2351599 () Bool)

(declare-fun tp!2351597 () Bool)

(assert (=> b!7895600 (= e!4660408 (and tp!2351599 tp!2351597))))

(assert (= (and b!7894960 ((_ is ElementMatch!21219) (reg!21548 (regOne!42950 (regOne!42950 r!4885))))) b!7895599))

(assert (= (and b!7894960 ((_ is Concat!30064) (reg!21548 (regOne!42950 (regOne!42950 r!4885))))) b!7895600))

(assert (= (and b!7894960 ((_ is Star!21219) (reg!21548 (regOne!42950 (regOne!42950 r!4885))))) b!7895601))

(assert (= (and b!7894960 ((_ is Union!21219) (reg!21548 (regOne!42950 (regOne!42950 r!4885))))) b!7895602))

(declare-fun e!4660409 () Bool)

(assert (=> b!7894969 (= tp!2351014 e!4660409)))

(declare-fun b!7895603 () Bool)

(assert (=> b!7895603 (= e!4660409 tp_is_empty!52837)))

(declare-fun b!7895606 () Bool)

(declare-fun tp!2351601 () Bool)

(declare-fun tp!2351600 () Bool)

(assert (=> b!7895606 (= e!4660409 (and tp!2351601 tp!2351600))))

(declare-fun b!7895605 () Bool)

(declare-fun tp!2351603 () Bool)

(assert (=> b!7895605 (= e!4660409 tp!2351603)))

(declare-fun b!7895604 () Bool)

(declare-fun tp!2351604 () Bool)

(declare-fun tp!2351602 () Bool)

(assert (=> b!7895604 (= e!4660409 (and tp!2351604 tp!2351602))))

(assert (= (and b!7894969 ((_ is ElementMatch!21219) (regOne!42951 (regOne!42951 (regTwo!42950 r!4885))))) b!7895603))

(assert (= (and b!7894969 ((_ is Concat!30064) (regOne!42951 (regOne!42951 (regTwo!42950 r!4885))))) b!7895604))

(assert (= (and b!7894969 ((_ is Star!21219) (regOne!42951 (regOne!42951 (regTwo!42950 r!4885))))) b!7895605))

(assert (= (and b!7894969 ((_ is Union!21219) (regOne!42951 (regOne!42951 (regTwo!42950 r!4885))))) b!7895606))

(declare-fun e!4660410 () Bool)

(assert (=> b!7894969 (= tp!2351013 e!4660410)))

(declare-fun b!7895607 () Bool)

(assert (=> b!7895607 (= e!4660410 tp_is_empty!52837)))

(declare-fun b!7895610 () Bool)

(declare-fun tp!2351606 () Bool)

(declare-fun tp!2351605 () Bool)

(assert (=> b!7895610 (= e!4660410 (and tp!2351606 tp!2351605))))

(declare-fun b!7895609 () Bool)

(declare-fun tp!2351608 () Bool)

(assert (=> b!7895609 (= e!4660410 tp!2351608)))

(declare-fun b!7895608 () Bool)

(declare-fun tp!2351609 () Bool)

(declare-fun tp!2351607 () Bool)

(assert (=> b!7895608 (= e!4660410 (and tp!2351609 tp!2351607))))

(assert (= (and b!7894969 ((_ is ElementMatch!21219) (regTwo!42951 (regOne!42951 (regTwo!42950 r!4885))))) b!7895607))

(assert (= (and b!7894969 ((_ is Concat!30064) (regTwo!42951 (regOne!42951 (regTwo!42950 r!4885))))) b!7895608))

(assert (= (and b!7894969 ((_ is Star!21219) (regTwo!42951 (regOne!42951 (regTwo!42950 r!4885))))) b!7895609))

(assert (= (and b!7894969 ((_ is Union!21219) (regTwo!42951 (regOne!42951 (regTwo!42950 r!4885))))) b!7895610))

(declare-fun e!4660411 () Bool)

(assert (=> b!7894917 (= tp!2350949 e!4660411)))

(declare-fun b!7895611 () Bool)

(assert (=> b!7895611 (= e!4660411 tp_is_empty!52837)))

(declare-fun b!7895614 () Bool)

(declare-fun tp!2351611 () Bool)

(declare-fun tp!2351610 () Bool)

(assert (=> b!7895614 (= e!4660411 (and tp!2351611 tp!2351610))))

(declare-fun b!7895613 () Bool)

(declare-fun tp!2351613 () Bool)

(assert (=> b!7895613 (= e!4660411 tp!2351613)))

(declare-fun b!7895612 () Bool)

(declare-fun tp!2351614 () Bool)

(declare-fun tp!2351612 () Bool)

(assert (=> b!7895612 (= e!4660411 (and tp!2351614 tp!2351612))))

(assert (= (and b!7894917 ((_ is ElementMatch!21219) (regOne!42951 (reg!21548 (regOne!42951 r!4885))))) b!7895611))

(assert (= (and b!7894917 ((_ is Concat!30064) (regOne!42951 (reg!21548 (regOne!42951 r!4885))))) b!7895612))

(assert (= (and b!7894917 ((_ is Star!21219) (regOne!42951 (reg!21548 (regOne!42951 r!4885))))) b!7895613))

(assert (= (and b!7894917 ((_ is Union!21219) (regOne!42951 (reg!21548 (regOne!42951 r!4885))))) b!7895614))

(declare-fun e!4660412 () Bool)

(assert (=> b!7894917 (= tp!2350948 e!4660412)))

(declare-fun b!7895615 () Bool)

(assert (=> b!7895615 (= e!4660412 tp_is_empty!52837)))

(declare-fun b!7895618 () Bool)

(declare-fun tp!2351616 () Bool)

(declare-fun tp!2351615 () Bool)

(assert (=> b!7895618 (= e!4660412 (and tp!2351616 tp!2351615))))

(declare-fun b!7895617 () Bool)

(declare-fun tp!2351618 () Bool)

(assert (=> b!7895617 (= e!4660412 tp!2351618)))

(declare-fun b!7895616 () Bool)

(declare-fun tp!2351619 () Bool)

(declare-fun tp!2351617 () Bool)

(assert (=> b!7895616 (= e!4660412 (and tp!2351619 tp!2351617))))

(assert (= (and b!7894917 ((_ is ElementMatch!21219) (regTwo!42951 (reg!21548 (regOne!42951 r!4885))))) b!7895615))

(assert (= (and b!7894917 ((_ is Concat!30064) (regTwo!42951 (reg!21548 (regOne!42951 r!4885))))) b!7895616))

(assert (= (and b!7894917 ((_ is Star!21219) (regTwo!42951 (reg!21548 (regOne!42951 r!4885))))) b!7895617))

(assert (= (and b!7894917 ((_ is Union!21219) (regTwo!42951 (reg!21548 (regOne!42951 r!4885))))) b!7895618))

(declare-fun e!4660413 () Bool)

(assert (=> b!7894925 (= tp!2350959 e!4660413)))

(declare-fun b!7895619 () Bool)

(assert (=> b!7895619 (= e!4660413 tp_is_empty!52837)))

(declare-fun b!7895622 () Bool)

(declare-fun tp!2351621 () Bool)

(declare-fun tp!2351620 () Bool)

(assert (=> b!7895622 (= e!4660413 (and tp!2351621 tp!2351620))))

(declare-fun b!7895621 () Bool)

(declare-fun tp!2351623 () Bool)

(assert (=> b!7895621 (= e!4660413 tp!2351623)))

(declare-fun b!7895620 () Bool)

(declare-fun tp!2351624 () Bool)

(declare-fun tp!2351622 () Bool)

(assert (=> b!7895620 (= e!4660413 (and tp!2351624 tp!2351622))))

(assert (= (and b!7894925 ((_ is ElementMatch!21219) (regOne!42951 (regTwo!42951 (regTwo!42951 r!4885))))) b!7895619))

(assert (= (and b!7894925 ((_ is Concat!30064) (regOne!42951 (regTwo!42951 (regTwo!42951 r!4885))))) b!7895620))

(assert (= (and b!7894925 ((_ is Star!21219) (regOne!42951 (regTwo!42951 (regTwo!42951 r!4885))))) b!7895621))

(assert (= (and b!7894925 ((_ is Union!21219) (regOne!42951 (regTwo!42951 (regTwo!42951 r!4885))))) b!7895622))

(declare-fun e!4660414 () Bool)

(assert (=> b!7894925 (= tp!2350958 e!4660414)))

(declare-fun b!7895623 () Bool)

(assert (=> b!7895623 (= e!4660414 tp_is_empty!52837)))

(declare-fun b!7895626 () Bool)

(declare-fun tp!2351626 () Bool)

(declare-fun tp!2351625 () Bool)

(assert (=> b!7895626 (= e!4660414 (and tp!2351626 tp!2351625))))

(declare-fun b!7895625 () Bool)

(declare-fun tp!2351628 () Bool)

(assert (=> b!7895625 (= e!4660414 tp!2351628)))

(declare-fun b!7895624 () Bool)

(declare-fun tp!2351629 () Bool)

(declare-fun tp!2351627 () Bool)

(assert (=> b!7895624 (= e!4660414 (and tp!2351629 tp!2351627))))

(assert (= (and b!7894925 ((_ is ElementMatch!21219) (regTwo!42951 (regTwo!42951 (regTwo!42951 r!4885))))) b!7895623))

(assert (= (and b!7894925 ((_ is Concat!30064) (regTwo!42951 (regTwo!42951 (regTwo!42951 r!4885))))) b!7895624))

(assert (= (and b!7894925 ((_ is Star!21219) (regTwo!42951 (regTwo!42951 (regTwo!42951 r!4885))))) b!7895625))

(assert (= (and b!7894925 ((_ is Union!21219) (regTwo!42951 (regTwo!42951 (regTwo!42951 r!4885))))) b!7895626))

(declare-fun e!4660415 () Bool)

(assert (=> b!7894967 (= tp!2351017 e!4660415)))

(declare-fun b!7895627 () Bool)

(assert (=> b!7895627 (= e!4660415 tp_is_empty!52837)))

(declare-fun b!7895630 () Bool)

(declare-fun tp!2351631 () Bool)

(declare-fun tp!2351630 () Bool)

(assert (=> b!7895630 (= e!4660415 (and tp!2351631 tp!2351630))))

(declare-fun b!7895629 () Bool)

(declare-fun tp!2351633 () Bool)

(assert (=> b!7895629 (= e!4660415 tp!2351633)))

(declare-fun b!7895628 () Bool)

(declare-fun tp!2351634 () Bool)

(declare-fun tp!2351632 () Bool)

(assert (=> b!7895628 (= e!4660415 (and tp!2351634 tp!2351632))))

(assert (= (and b!7894967 ((_ is ElementMatch!21219) (regOne!42950 (regOne!42951 (regTwo!42950 r!4885))))) b!7895627))

(assert (= (and b!7894967 ((_ is Concat!30064) (regOne!42950 (regOne!42951 (regTwo!42950 r!4885))))) b!7895628))

(assert (= (and b!7894967 ((_ is Star!21219) (regOne!42950 (regOne!42951 (regTwo!42950 r!4885))))) b!7895629))

(assert (= (and b!7894967 ((_ is Union!21219) (regOne!42950 (regOne!42951 (regTwo!42950 r!4885))))) b!7895630))

(declare-fun e!4660416 () Bool)

(assert (=> b!7894967 (= tp!2351015 e!4660416)))

(declare-fun b!7895631 () Bool)

(assert (=> b!7895631 (= e!4660416 tp_is_empty!52837)))

(declare-fun b!7895634 () Bool)

(declare-fun tp!2351636 () Bool)

(declare-fun tp!2351635 () Bool)

(assert (=> b!7895634 (= e!4660416 (and tp!2351636 tp!2351635))))

(declare-fun b!7895633 () Bool)

(declare-fun tp!2351638 () Bool)

(assert (=> b!7895633 (= e!4660416 tp!2351638)))

(declare-fun b!7895632 () Bool)

(declare-fun tp!2351639 () Bool)

(declare-fun tp!2351637 () Bool)

(assert (=> b!7895632 (= e!4660416 (and tp!2351639 tp!2351637))))

(assert (= (and b!7894967 ((_ is ElementMatch!21219) (regTwo!42950 (regOne!42951 (regTwo!42950 r!4885))))) b!7895631))

(assert (= (and b!7894967 ((_ is Concat!30064) (regTwo!42950 (regOne!42951 (regTwo!42950 r!4885))))) b!7895632))

(assert (= (and b!7894967 ((_ is Star!21219) (regTwo!42950 (regOne!42951 (regTwo!42950 r!4885))))) b!7895633))

(assert (= (and b!7894967 ((_ is Union!21219) (regTwo!42950 (regOne!42951 (regTwo!42950 r!4885))))) b!7895634))

(declare-fun e!4660417 () Bool)

(assert (=> b!7894976 (= tp!2351026 e!4660417)))

(declare-fun b!7895635 () Bool)

(assert (=> b!7895635 (= e!4660417 tp_is_empty!52837)))

(declare-fun b!7895638 () Bool)

(declare-fun tp!2351641 () Bool)

(declare-fun tp!2351640 () Bool)

(assert (=> b!7895638 (= e!4660417 (and tp!2351641 tp!2351640))))

(declare-fun b!7895637 () Bool)

(declare-fun tp!2351643 () Bool)

(assert (=> b!7895637 (= e!4660417 tp!2351643)))

(declare-fun b!7895636 () Bool)

(declare-fun tp!2351644 () Bool)

(declare-fun tp!2351642 () Bool)

(assert (=> b!7895636 (= e!4660417 (and tp!2351644 tp!2351642))))

(assert (= (and b!7894976 ((_ is ElementMatch!21219) (reg!21548 (reg!21548 (reg!21548 r!4885))))) b!7895635))

(assert (= (and b!7894976 ((_ is Concat!30064) (reg!21548 (reg!21548 (reg!21548 r!4885))))) b!7895636))

(assert (= (and b!7894976 ((_ is Star!21219) (reg!21548 (reg!21548 (reg!21548 r!4885))))) b!7895637))

(assert (= (and b!7894976 ((_ is Union!21219) (reg!21548 (reg!21548 (reg!21548 r!4885))))) b!7895638))

(declare-fun e!4660418 () Bool)

(assert (=> b!7894985 (= tp!2351034 e!4660418)))

(declare-fun b!7895639 () Bool)

(assert (=> b!7895639 (= e!4660418 tp_is_empty!52837)))

(declare-fun b!7895642 () Bool)

(declare-fun tp!2351646 () Bool)

(declare-fun tp!2351645 () Bool)

(assert (=> b!7895642 (= e!4660418 (and tp!2351646 tp!2351645))))

(declare-fun b!7895641 () Bool)

(declare-fun tp!2351648 () Bool)

(assert (=> b!7895641 (= e!4660418 tp!2351648)))

(declare-fun b!7895640 () Bool)

(declare-fun tp!2351649 () Bool)

(declare-fun tp!2351647 () Bool)

(assert (=> b!7895640 (= e!4660418 (and tp!2351649 tp!2351647))))

(assert (= (and b!7894985 ((_ is ElementMatch!21219) (regOne!42951 (regTwo!42950 (regTwo!42950 r!4885))))) b!7895639))

(assert (= (and b!7894985 ((_ is Concat!30064) (regOne!42951 (regTwo!42950 (regTwo!42950 r!4885))))) b!7895640))

(assert (= (and b!7894985 ((_ is Star!21219) (regOne!42951 (regTwo!42950 (regTwo!42950 r!4885))))) b!7895641))

(assert (= (and b!7894985 ((_ is Union!21219) (regOne!42951 (regTwo!42950 (regTwo!42950 r!4885))))) b!7895642))

(declare-fun e!4660419 () Bool)

(assert (=> b!7894985 (= tp!2351033 e!4660419)))

(declare-fun b!7895643 () Bool)

(assert (=> b!7895643 (= e!4660419 tp_is_empty!52837)))

(declare-fun b!7895646 () Bool)

(declare-fun tp!2351651 () Bool)

(declare-fun tp!2351650 () Bool)

(assert (=> b!7895646 (= e!4660419 (and tp!2351651 tp!2351650))))

(declare-fun b!7895645 () Bool)

(declare-fun tp!2351653 () Bool)

(assert (=> b!7895645 (= e!4660419 tp!2351653)))

(declare-fun b!7895644 () Bool)

(declare-fun tp!2351654 () Bool)

(declare-fun tp!2351652 () Bool)

(assert (=> b!7895644 (= e!4660419 (and tp!2351654 tp!2351652))))

(assert (= (and b!7894985 ((_ is ElementMatch!21219) (regTwo!42951 (regTwo!42950 (regTwo!42950 r!4885))))) b!7895643))

(assert (= (and b!7894985 ((_ is Concat!30064) (regTwo!42951 (regTwo!42950 (regTwo!42950 r!4885))))) b!7895644))

(assert (= (and b!7894985 ((_ is Star!21219) (regTwo!42951 (regTwo!42950 (regTwo!42950 r!4885))))) b!7895645))

(assert (= (and b!7894985 ((_ is Union!21219) (regTwo!42951 (regTwo!42950 (regTwo!42950 r!4885))))) b!7895646))

(declare-fun e!4660420 () Bool)

(assert (=> b!7894897 (= tp!2350942 e!4660420)))

(declare-fun b!7895647 () Bool)

(assert (=> b!7895647 (= e!4660420 tp_is_empty!52837)))

(declare-fun b!7895650 () Bool)

(declare-fun tp!2351656 () Bool)

(declare-fun tp!2351655 () Bool)

(assert (=> b!7895650 (= e!4660420 (and tp!2351656 tp!2351655))))

(declare-fun b!7895649 () Bool)

(declare-fun tp!2351658 () Bool)

(assert (=> b!7895649 (= e!4660420 tp!2351658)))

(declare-fun b!7895648 () Bool)

(declare-fun tp!2351659 () Bool)

(declare-fun tp!2351657 () Bool)

(assert (=> b!7895648 (= e!4660420 (and tp!2351659 tp!2351657))))

(assert (= (and b!7894897 ((_ is ElementMatch!21219) (regOne!42950 (regTwo!42951 (regOne!42951 r!4885))))) b!7895647))

(assert (= (and b!7894897 ((_ is Concat!30064) (regOne!42950 (regTwo!42951 (regOne!42951 r!4885))))) b!7895648))

(assert (= (and b!7894897 ((_ is Star!21219) (regOne!42950 (regTwo!42951 (regOne!42951 r!4885))))) b!7895649))

(assert (= (and b!7894897 ((_ is Union!21219) (regOne!42950 (regTwo!42951 (regOne!42951 r!4885))))) b!7895650))

(declare-fun e!4660421 () Bool)

(assert (=> b!7894897 (= tp!2350940 e!4660421)))

(declare-fun b!7895651 () Bool)

(assert (=> b!7895651 (= e!4660421 tp_is_empty!52837)))

(declare-fun b!7895654 () Bool)

(declare-fun tp!2351661 () Bool)

(declare-fun tp!2351660 () Bool)

(assert (=> b!7895654 (= e!4660421 (and tp!2351661 tp!2351660))))

(declare-fun b!7895653 () Bool)

(declare-fun tp!2351663 () Bool)

(assert (=> b!7895653 (= e!4660421 tp!2351663)))

(declare-fun b!7895652 () Bool)

(declare-fun tp!2351664 () Bool)

(declare-fun tp!2351662 () Bool)

(assert (=> b!7895652 (= e!4660421 (and tp!2351664 tp!2351662))))

(assert (= (and b!7894897 ((_ is ElementMatch!21219) (regTwo!42950 (regTwo!42951 (regOne!42951 r!4885))))) b!7895651))

(assert (= (and b!7894897 ((_ is Concat!30064) (regTwo!42950 (regTwo!42951 (regOne!42951 r!4885))))) b!7895652))

(assert (= (and b!7894897 ((_ is Star!21219) (regTwo!42950 (regTwo!42951 (regOne!42951 r!4885))))) b!7895653))

(assert (= (and b!7894897 ((_ is Union!21219) (regTwo!42950 (regTwo!42951 (regOne!42951 r!4885))))) b!7895654))

(declare-fun e!4660422 () Bool)

(assert (=> b!7894991 (= tp!2351047 e!4660422)))

(declare-fun b!7895655 () Bool)

(assert (=> b!7895655 (= e!4660422 tp_is_empty!52837)))

(declare-fun b!7895658 () Bool)

(declare-fun tp!2351666 () Bool)

(declare-fun tp!2351665 () Bool)

(assert (=> b!7895658 (= e!4660422 (and tp!2351666 tp!2351665))))

(declare-fun b!7895657 () Bool)

(declare-fun tp!2351668 () Bool)

(assert (=> b!7895657 (= e!4660422 tp!2351668)))

(declare-fun b!7895656 () Bool)

(declare-fun tp!2351669 () Bool)

(declare-fun tp!2351667 () Bool)

(assert (=> b!7895656 (= e!4660422 (and tp!2351669 tp!2351667))))

(assert (= (and b!7894991 ((_ is ElementMatch!21219) (regOne!42950 (regTwo!42951 (reg!21548 r!4885))))) b!7895655))

(assert (= (and b!7894991 ((_ is Concat!30064) (regOne!42950 (regTwo!42951 (reg!21548 r!4885))))) b!7895656))

(assert (= (and b!7894991 ((_ is Star!21219) (regOne!42950 (regTwo!42951 (reg!21548 r!4885))))) b!7895657))

(assert (= (and b!7894991 ((_ is Union!21219) (regOne!42950 (regTwo!42951 (reg!21548 r!4885))))) b!7895658))

(declare-fun e!4660423 () Bool)

(assert (=> b!7894991 (= tp!2351045 e!4660423)))

(declare-fun b!7895659 () Bool)

(assert (=> b!7895659 (= e!4660423 tp_is_empty!52837)))

(declare-fun b!7895662 () Bool)

(declare-fun tp!2351671 () Bool)

(declare-fun tp!2351670 () Bool)

(assert (=> b!7895662 (= e!4660423 (and tp!2351671 tp!2351670))))

(declare-fun b!7895661 () Bool)

(declare-fun tp!2351673 () Bool)

(assert (=> b!7895661 (= e!4660423 tp!2351673)))

(declare-fun b!7895660 () Bool)

(declare-fun tp!2351674 () Bool)

(declare-fun tp!2351672 () Bool)

(assert (=> b!7895660 (= e!4660423 (and tp!2351674 tp!2351672))))

(assert (= (and b!7894991 ((_ is ElementMatch!21219) (regTwo!42950 (regTwo!42951 (reg!21548 r!4885))))) b!7895659))

(assert (= (and b!7894991 ((_ is Concat!30064) (regTwo!42950 (regTwo!42951 (reg!21548 r!4885))))) b!7895660))

(assert (= (and b!7894991 ((_ is Star!21219) (regTwo!42950 (regTwo!42951 (reg!21548 r!4885))))) b!7895661))

(assert (= (and b!7894991 ((_ is Union!21219) (regTwo!42950 (regTwo!42951 (reg!21548 r!4885))))) b!7895662))

(declare-fun e!4660424 () Bool)

(assert (=> b!7895000 (= tp!2351056 e!4660424)))

(declare-fun b!7895663 () Bool)

(assert (=> b!7895663 (= e!4660424 tp_is_empty!52837)))

(declare-fun b!7895666 () Bool)

(declare-fun tp!2351676 () Bool)

(declare-fun tp!2351675 () Bool)

(assert (=> b!7895666 (= e!4660424 (and tp!2351676 tp!2351675))))

(declare-fun b!7895665 () Bool)

(declare-fun tp!2351678 () Bool)

(assert (=> b!7895665 (= e!4660424 tp!2351678)))

(declare-fun b!7895664 () Bool)

(declare-fun tp!2351679 () Bool)

(declare-fun tp!2351677 () Bool)

(assert (=> b!7895664 (= e!4660424 (and tp!2351679 tp!2351677))))

(assert (= (and b!7895000 ((_ is ElementMatch!21219) (reg!21548 (regTwo!42950 (reg!21548 r!4885))))) b!7895663))

(assert (= (and b!7895000 ((_ is Concat!30064) (reg!21548 (regTwo!42950 (reg!21548 r!4885))))) b!7895664))

(assert (= (and b!7895000 ((_ is Star!21219) (reg!21548 (regTwo!42950 (reg!21548 r!4885))))) b!7895665))

(assert (= (and b!7895000 ((_ is Union!21219) (reg!21548 (regTwo!42950 (reg!21548 r!4885))))) b!7895666))

(declare-fun e!4660425 () Bool)

(assert (=> b!7894916 (= tp!2350951 e!4660425)))

(declare-fun b!7895667 () Bool)

(assert (=> b!7895667 (= e!4660425 tp_is_empty!52837)))

(declare-fun b!7895670 () Bool)

(declare-fun tp!2351681 () Bool)

(declare-fun tp!2351680 () Bool)

(assert (=> b!7895670 (= e!4660425 (and tp!2351681 tp!2351680))))

(declare-fun b!7895669 () Bool)

(declare-fun tp!2351683 () Bool)

(assert (=> b!7895669 (= e!4660425 tp!2351683)))

(declare-fun b!7895668 () Bool)

(declare-fun tp!2351684 () Bool)

(declare-fun tp!2351682 () Bool)

(assert (=> b!7895668 (= e!4660425 (and tp!2351684 tp!2351682))))

(assert (= (and b!7894916 ((_ is ElementMatch!21219) (reg!21548 (reg!21548 (regOne!42951 r!4885))))) b!7895667))

(assert (= (and b!7894916 ((_ is Concat!30064) (reg!21548 (reg!21548 (regOne!42951 r!4885))))) b!7895668))

(assert (= (and b!7894916 ((_ is Star!21219) (reg!21548 (reg!21548 (regOne!42951 r!4885))))) b!7895669))

(assert (= (and b!7894916 ((_ is Union!21219) (reg!21548 (reg!21548 (regOne!42951 r!4885))))) b!7895670))

(declare-fun b!7895675 () Bool)

(declare-fun e!4660428 () Bool)

(declare-fun tp!2351689 () Bool)

(declare-fun tp!2351690 () Bool)

(assert (=> b!7895675 (= e!4660428 (and tp!2351689 tp!2351690))))

(assert (=> b!7894774 (= tp!2350931 e!4660428)))

(assert (= (and b!7894774 ((_ is Cons!73953) (exprs!9035 (h!80402 res!3132221)))) b!7895675))

(declare-fun e!4660429 () Bool)

(assert (=> b!7894924 (= tp!2350961 e!4660429)))

(declare-fun b!7895676 () Bool)

(assert (=> b!7895676 (= e!4660429 tp_is_empty!52837)))

(declare-fun b!7895679 () Bool)

(declare-fun tp!2351692 () Bool)

(declare-fun tp!2351691 () Bool)

(assert (=> b!7895679 (= e!4660429 (and tp!2351692 tp!2351691))))

(declare-fun b!7895678 () Bool)

(declare-fun tp!2351694 () Bool)

(assert (=> b!7895678 (= e!4660429 tp!2351694)))

(declare-fun b!7895677 () Bool)

(declare-fun tp!2351695 () Bool)

(declare-fun tp!2351693 () Bool)

(assert (=> b!7895677 (= e!4660429 (and tp!2351695 tp!2351693))))

(assert (= (and b!7894924 ((_ is ElementMatch!21219) (reg!21548 (regTwo!42951 (regTwo!42951 r!4885))))) b!7895676))

(assert (= (and b!7894924 ((_ is Concat!30064) (reg!21548 (regTwo!42951 (regTwo!42951 r!4885))))) b!7895677))

(assert (= (and b!7894924 ((_ is Star!21219) (reg!21548 (regTwo!42951 (regTwo!42951 r!4885))))) b!7895678))

(assert (= (and b!7894924 ((_ is Union!21219) (reg!21548 (regTwo!42951 (regTwo!42951 r!4885))))) b!7895679))

(declare-fun e!4660430 () Bool)

(assert (=> b!7894933 (= tp!2350969 e!4660430)))

(declare-fun b!7895680 () Bool)

(assert (=> b!7895680 (= e!4660430 tp_is_empty!52837)))

(declare-fun b!7895683 () Bool)

(declare-fun tp!2351697 () Bool)

(declare-fun tp!2351696 () Bool)

(assert (=> b!7895683 (= e!4660430 (and tp!2351697 tp!2351696))))

(declare-fun b!7895682 () Bool)

(declare-fun tp!2351699 () Bool)

(assert (=> b!7895682 (= e!4660430 tp!2351699)))

(declare-fun b!7895681 () Bool)

(declare-fun tp!2351700 () Bool)

(declare-fun tp!2351698 () Bool)

(assert (=> b!7895681 (= e!4660430 (and tp!2351700 tp!2351698))))

(assert (= (and b!7894933 ((_ is ElementMatch!21219) (regOne!42951 (regOne!42950 (regTwo!42951 r!4885))))) b!7895680))

(assert (= (and b!7894933 ((_ is Concat!30064) (regOne!42951 (regOne!42950 (regTwo!42951 r!4885))))) b!7895681))

(assert (= (and b!7894933 ((_ is Star!21219) (regOne!42951 (regOne!42950 (regTwo!42951 r!4885))))) b!7895682))

(assert (= (and b!7894933 ((_ is Union!21219) (regOne!42951 (regOne!42950 (regTwo!42951 r!4885))))) b!7895683))

(declare-fun e!4660431 () Bool)

(assert (=> b!7894933 (= tp!2350968 e!4660431)))

(declare-fun b!7895684 () Bool)

(assert (=> b!7895684 (= e!4660431 tp_is_empty!52837)))

(declare-fun b!7895687 () Bool)

(declare-fun tp!2351702 () Bool)

(declare-fun tp!2351701 () Bool)

(assert (=> b!7895687 (= e!4660431 (and tp!2351702 tp!2351701))))

(declare-fun b!7895686 () Bool)

(declare-fun tp!2351704 () Bool)

(assert (=> b!7895686 (= e!4660431 tp!2351704)))

(declare-fun b!7895685 () Bool)

(declare-fun tp!2351705 () Bool)

(declare-fun tp!2351703 () Bool)

(assert (=> b!7895685 (= e!4660431 (and tp!2351705 tp!2351703))))

(assert (= (and b!7894933 ((_ is ElementMatch!21219) (regTwo!42951 (regOne!42950 (regTwo!42951 r!4885))))) b!7895684))

(assert (= (and b!7894933 ((_ is Concat!30064) (regTwo!42951 (regOne!42950 (regTwo!42951 r!4885))))) b!7895685))

(assert (= (and b!7894933 ((_ is Star!21219) (regTwo!42951 (regOne!42950 (regTwo!42951 r!4885))))) b!7895686))

(assert (= (and b!7894933 ((_ is Union!21219) (regTwo!42951 (regOne!42950 (regTwo!42951 r!4885))))) b!7895687))

(declare-fun e!4660432 () Bool)

(assert (=> b!7894940 (= tp!2350981 e!4660432)))

(declare-fun b!7895688 () Bool)

(assert (=> b!7895688 (= e!4660432 tp_is_empty!52837)))

(declare-fun b!7895691 () Bool)

(declare-fun tp!2351707 () Bool)

(declare-fun tp!2351706 () Bool)

(assert (=> b!7895691 (= e!4660432 (and tp!2351707 tp!2351706))))

(declare-fun b!7895690 () Bool)

(declare-fun tp!2351709 () Bool)

(assert (=> b!7895690 (= e!4660432 tp!2351709)))

(declare-fun b!7895689 () Bool)

(declare-fun tp!2351710 () Bool)

(declare-fun tp!2351708 () Bool)

(assert (=> b!7895689 (= e!4660432 (and tp!2351710 tp!2351708))))

(assert (= (and b!7894940 ((_ is ElementMatch!21219) (reg!21548 (regOne!42950 (regOne!42951 r!4885))))) b!7895688))

(assert (= (and b!7894940 ((_ is Concat!30064) (reg!21548 (regOne!42950 (regOne!42951 r!4885))))) b!7895689))

(assert (= (and b!7894940 ((_ is Star!21219) (reg!21548 (regOne!42950 (regOne!42951 r!4885))))) b!7895690))

(assert (= (and b!7894940 ((_ is Union!21219) (reg!21548 (regOne!42950 (regOne!42951 r!4885))))) b!7895691))

(declare-fun e!4660433 () Bool)

(assert (=> b!7894957 (= tp!2350999 e!4660433)))

(declare-fun b!7895692 () Bool)

(assert (=> b!7895692 (= e!4660433 tp_is_empty!52837)))

(declare-fun b!7895695 () Bool)

(declare-fun tp!2351712 () Bool)

(declare-fun tp!2351711 () Bool)

(assert (=> b!7895695 (= e!4660433 (and tp!2351712 tp!2351711))))

(declare-fun b!7895694 () Bool)

(declare-fun tp!2351714 () Bool)

(assert (=> b!7895694 (= e!4660433 tp!2351714)))

(declare-fun b!7895693 () Bool)

(declare-fun tp!2351715 () Bool)

(declare-fun tp!2351713 () Bool)

(assert (=> b!7895693 (= e!4660433 (and tp!2351715 tp!2351713))))

(assert (= (and b!7894957 ((_ is ElementMatch!21219) (regOne!42951 (reg!21548 (regTwo!42950 r!4885))))) b!7895692))

(assert (= (and b!7894957 ((_ is Concat!30064) (regOne!42951 (reg!21548 (regTwo!42950 r!4885))))) b!7895693))

(assert (= (and b!7894957 ((_ is Star!21219) (regOne!42951 (reg!21548 (regTwo!42950 r!4885))))) b!7895694))

(assert (= (and b!7894957 ((_ is Union!21219) (regOne!42951 (reg!21548 (regTwo!42950 r!4885))))) b!7895695))

(declare-fun e!4660434 () Bool)

(assert (=> b!7894957 (= tp!2350998 e!4660434)))

(declare-fun b!7895696 () Bool)

(assert (=> b!7895696 (= e!4660434 tp_is_empty!52837)))

(declare-fun b!7895699 () Bool)

(declare-fun tp!2351717 () Bool)

(declare-fun tp!2351716 () Bool)

(assert (=> b!7895699 (= e!4660434 (and tp!2351717 tp!2351716))))

(declare-fun b!7895698 () Bool)

(declare-fun tp!2351719 () Bool)

(assert (=> b!7895698 (= e!4660434 tp!2351719)))

(declare-fun b!7895697 () Bool)

(declare-fun tp!2351720 () Bool)

(declare-fun tp!2351718 () Bool)

(assert (=> b!7895697 (= e!4660434 (and tp!2351720 tp!2351718))))

(assert (= (and b!7894957 ((_ is ElementMatch!21219) (regTwo!42951 (reg!21548 (regTwo!42950 r!4885))))) b!7895696))

(assert (= (and b!7894957 ((_ is Concat!30064) (regTwo!42951 (reg!21548 (regTwo!42950 r!4885))))) b!7895697))

(assert (= (and b!7894957 ((_ is Star!21219) (regTwo!42951 (reg!21548 (regTwo!42950 r!4885))))) b!7895698))

(assert (= (and b!7894957 ((_ is Union!21219) (regTwo!42951 (reg!21548 (regTwo!42950 r!4885))))) b!7895699))

(declare-fun e!4660435 () Bool)

(assert (=> b!7894931 (= tp!2350972 e!4660435)))

(declare-fun b!7895700 () Bool)

(assert (=> b!7895700 (= e!4660435 tp_is_empty!52837)))

(declare-fun b!7895703 () Bool)

(declare-fun tp!2351722 () Bool)

(declare-fun tp!2351721 () Bool)

(assert (=> b!7895703 (= e!4660435 (and tp!2351722 tp!2351721))))

(declare-fun b!7895702 () Bool)

(declare-fun tp!2351724 () Bool)

(assert (=> b!7895702 (= e!4660435 tp!2351724)))

(declare-fun b!7895701 () Bool)

(declare-fun tp!2351725 () Bool)

(declare-fun tp!2351723 () Bool)

(assert (=> b!7895701 (= e!4660435 (and tp!2351725 tp!2351723))))

(assert (= (and b!7894931 ((_ is ElementMatch!21219) (regOne!42950 (regOne!42950 (regTwo!42951 r!4885))))) b!7895700))

(assert (= (and b!7894931 ((_ is Concat!30064) (regOne!42950 (regOne!42950 (regTwo!42951 r!4885))))) b!7895701))

(assert (= (and b!7894931 ((_ is Star!21219) (regOne!42950 (regOne!42950 (regTwo!42951 r!4885))))) b!7895702))

(assert (= (and b!7894931 ((_ is Union!21219) (regOne!42950 (regOne!42950 (regTwo!42951 r!4885))))) b!7895703))

(declare-fun e!4660436 () Bool)

(assert (=> b!7894931 (= tp!2350970 e!4660436)))

(declare-fun b!7895704 () Bool)

(assert (=> b!7895704 (= e!4660436 tp_is_empty!52837)))

(declare-fun b!7895707 () Bool)

(declare-fun tp!2351727 () Bool)

(declare-fun tp!2351726 () Bool)

(assert (=> b!7895707 (= e!4660436 (and tp!2351727 tp!2351726))))

(declare-fun b!7895706 () Bool)

(declare-fun tp!2351729 () Bool)

(assert (=> b!7895706 (= e!4660436 tp!2351729)))

(declare-fun b!7895705 () Bool)

(declare-fun tp!2351730 () Bool)

(declare-fun tp!2351728 () Bool)

(assert (=> b!7895705 (= e!4660436 (and tp!2351730 tp!2351728))))

(assert (= (and b!7894931 ((_ is ElementMatch!21219) (regTwo!42950 (regOne!42950 (regTwo!42951 r!4885))))) b!7895704))

(assert (= (and b!7894931 ((_ is Concat!30064) (regTwo!42950 (regOne!42950 (regTwo!42951 r!4885))))) b!7895705))

(assert (= (and b!7894931 ((_ is Star!21219) (regTwo!42950 (regOne!42950 (regTwo!42951 r!4885))))) b!7895706))

(assert (= (and b!7894931 ((_ is Union!21219) (regTwo!42950 (regOne!42950 (regTwo!42951 r!4885))))) b!7895707))

(declare-fun e!4660437 () Bool)

(assert (=> b!7894973 (= tp!2351019 e!4660437)))

(declare-fun b!7895708 () Bool)

(assert (=> b!7895708 (= e!4660437 tp_is_empty!52837)))

(declare-fun b!7895711 () Bool)

(declare-fun tp!2351732 () Bool)

(declare-fun tp!2351731 () Bool)

(assert (=> b!7895711 (= e!4660437 (and tp!2351732 tp!2351731))))

(declare-fun b!7895710 () Bool)

(declare-fun tp!2351734 () Bool)

(assert (=> b!7895710 (= e!4660437 tp!2351734)))

(declare-fun b!7895709 () Bool)

(declare-fun tp!2351735 () Bool)

(declare-fun tp!2351733 () Bool)

(assert (=> b!7895709 (= e!4660437 (and tp!2351735 tp!2351733))))

(assert (= (and b!7894973 ((_ is ElementMatch!21219) (regOne!42951 (regTwo!42951 (regTwo!42950 r!4885))))) b!7895708))

(assert (= (and b!7894973 ((_ is Concat!30064) (regOne!42951 (regTwo!42951 (regTwo!42950 r!4885))))) b!7895709))

(assert (= (and b!7894973 ((_ is Star!21219) (regOne!42951 (regTwo!42951 (regTwo!42950 r!4885))))) b!7895710))

(assert (= (and b!7894973 ((_ is Union!21219) (regOne!42951 (regTwo!42951 (regTwo!42950 r!4885))))) b!7895711))

(declare-fun e!4660438 () Bool)

(assert (=> b!7894973 (= tp!2351018 e!4660438)))

(declare-fun b!7895712 () Bool)

(assert (=> b!7895712 (= e!4660438 tp_is_empty!52837)))

(declare-fun b!7895715 () Bool)

(declare-fun tp!2351737 () Bool)

(declare-fun tp!2351736 () Bool)

(assert (=> b!7895715 (= e!4660438 (and tp!2351737 tp!2351736))))

(declare-fun b!7895714 () Bool)

(declare-fun tp!2351739 () Bool)

(assert (=> b!7895714 (= e!4660438 tp!2351739)))

(declare-fun b!7895713 () Bool)

(declare-fun tp!2351740 () Bool)

(declare-fun tp!2351738 () Bool)

(assert (=> b!7895713 (= e!4660438 (and tp!2351740 tp!2351738))))

(assert (= (and b!7894973 ((_ is ElementMatch!21219) (regTwo!42951 (regTwo!42951 (regTwo!42950 r!4885))))) b!7895712))

(assert (= (and b!7894973 ((_ is Concat!30064) (regTwo!42951 (regTwo!42951 (regTwo!42950 r!4885))))) b!7895713))

(assert (= (and b!7894973 ((_ is Star!21219) (regTwo!42951 (regTwo!42951 (regTwo!42950 r!4885))))) b!7895714))

(assert (= (and b!7894973 ((_ is Union!21219) (regTwo!42951 (regTwo!42951 (regTwo!42950 r!4885))))) b!7895715))

(declare-fun e!4660439 () Bool)

(assert (=> b!7894943 (= tp!2350987 e!4660439)))

(declare-fun b!7895716 () Bool)

(assert (=> b!7895716 (= e!4660439 tp_is_empty!52837)))

(declare-fun b!7895719 () Bool)

(declare-fun tp!2351742 () Bool)

(declare-fun tp!2351741 () Bool)

(assert (=> b!7895719 (= e!4660439 (and tp!2351742 tp!2351741))))

(declare-fun b!7895718 () Bool)

(declare-fun tp!2351744 () Bool)

(assert (=> b!7895718 (= e!4660439 tp!2351744)))

(declare-fun b!7895717 () Bool)

(declare-fun tp!2351745 () Bool)

(declare-fun tp!2351743 () Bool)

(assert (=> b!7895717 (= e!4660439 (and tp!2351745 tp!2351743))))

(assert (= (and b!7894943 ((_ is ElementMatch!21219) (regOne!42950 (regTwo!42950 (regOne!42951 r!4885))))) b!7895716))

(assert (= (and b!7894943 ((_ is Concat!30064) (regOne!42950 (regTwo!42950 (regOne!42951 r!4885))))) b!7895717))

(assert (= (and b!7894943 ((_ is Star!21219) (regOne!42950 (regTwo!42950 (regOne!42951 r!4885))))) b!7895718))

(assert (= (and b!7894943 ((_ is Union!21219) (regOne!42950 (regTwo!42950 (regOne!42951 r!4885))))) b!7895719))

(declare-fun e!4660440 () Bool)

(assert (=> b!7894943 (= tp!2350985 e!4660440)))

(declare-fun b!7895720 () Bool)

(assert (=> b!7895720 (= e!4660440 tp_is_empty!52837)))

(declare-fun b!7895723 () Bool)

(declare-fun tp!2351747 () Bool)

(declare-fun tp!2351746 () Bool)

(assert (=> b!7895723 (= e!4660440 (and tp!2351747 tp!2351746))))

(declare-fun b!7895722 () Bool)

(declare-fun tp!2351749 () Bool)

(assert (=> b!7895722 (= e!4660440 tp!2351749)))

(declare-fun b!7895721 () Bool)

(declare-fun tp!2351750 () Bool)

(declare-fun tp!2351748 () Bool)

(assert (=> b!7895721 (= e!4660440 (and tp!2351750 tp!2351748))))

(assert (= (and b!7894943 ((_ is ElementMatch!21219) (regTwo!42950 (regTwo!42950 (regOne!42951 r!4885))))) b!7895720))

(assert (= (and b!7894943 ((_ is Concat!30064) (regTwo!42950 (regTwo!42950 (regOne!42951 r!4885))))) b!7895721))

(assert (= (and b!7894943 ((_ is Star!21219) (regTwo!42950 (regTwo!42950 (regOne!42951 r!4885))))) b!7895722))

(assert (= (and b!7894943 ((_ is Union!21219) (regTwo!42950 (regTwo!42950 (regOne!42951 r!4885))))) b!7895723))

(declare-fun e!4660441 () Bool)

(assert (=> b!7894945 (= tp!2350984 e!4660441)))

(declare-fun b!7895724 () Bool)

(assert (=> b!7895724 (= e!4660441 tp_is_empty!52837)))

(declare-fun b!7895727 () Bool)

(declare-fun tp!2351752 () Bool)

(declare-fun tp!2351751 () Bool)

(assert (=> b!7895727 (= e!4660441 (and tp!2351752 tp!2351751))))

(declare-fun b!7895726 () Bool)

(declare-fun tp!2351754 () Bool)

(assert (=> b!7895726 (= e!4660441 tp!2351754)))

(declare-fun b!7895725 () Bool)

(declare-fun tp!2351755 () Bool)

(declare-fun tp!2351753 () Bool)

(assert (=> b!7895725 (= e!4660441 (and tp!2351755 tp!2351753))))

(assert (= (and b!7894945 ((_ is ElementMatch!21219) (regOne!42951 (regTwo!42950 (regOne!42951 r!4885))))) b!7895724))

(assert (= (and b!7894945 ((_ is Concat!30064) (regOne!42951 (regTwo!42950 (regOne!42951 r!4885))))) b!7895725))

(assert (= (and b!7894945 ((_ is Star!21219) (regOne!42951 (regTwo!42950 (regOne!42951 r!4885))))) b!7895726))

(assert (= (and b!7894945 ((_ is Union!21219) (regOne!42951 (regTwo!42950 (regOne!42951 r!4885))))) b!7895727))

(declare-fun e!4660442 () Bool)

(assert (=> b!7894945 (= tp!2350983 e!4660442)))

(declare-fun b!7895728 () Bool)

(assert (=> b!7895728 (= e!4660442 tp_is_empty!52837)))

(declare-fun b!7895731 () Bool)

(declare-fun tp!2351757 () Bool)

(declare-fun tp!2351756 () Bool)

(assert (=> b!7895731 (= e!4660442 (and tp!2351757 tp!2351756))))

(declare-fun b!7895730 () Bool)

(declare-fun tp!2351759 () Bool)

(assert (=> b!7895730 (= e!4660442 tp!2351759)))

(declare-fun b!7895729 () Bool)

(declare-fun tp!2351760 () Bool)

(declare-fun tp!2351758 () Bool)

(assert (=> b!7895729 (= e!4660442 (and tp!2351760 tp!2351758))))

(assert (= (and b!7894945 ((_ is ElementMatch!21219) (regTwo!42951 (regTwo!42950 (regOne!42951 r!4885))))) b!7895728))

(assert (= (and b!7894945 ((_ is Concat!30064) (regTwo!42951 (regTwo!42950 (regOne!42951 r!4885))))) b!7895729))

(assert (= (and b!7894945 ((_ is Star!21219) (regTwo!42951 (regTwo!42950 (regOne!42951 r!4885))))) b!7895730))

(assert (= (and b!7894945 ((_ is Union!21219) (regTwo!42951 (regTwo!42950 (regOne!42951 r!4885))))) b!7895731))

(declare-fun e!4660443 () Bool)

(assert (=> b!7894955 (= tp!2351002 e!4660443)))

(declare-fun b!7895732 () Bool)

(assert (=> b!7895732 (= e!4660443 tp_is_empty!52837)))

(declare-fun b!7895735 () Bool)

(declare-fun tp!2351762 () Bool)

(declare-fun tp!2351761 () Bool)

(assert (=> b!7895735 (= e!4660443 (and tp!2351762 tp!2351761))))

(declare-fun b!7895734 () Bool)

(declare-fun tp!2351764 () Bool)

(assert (=> b!7895734 (= e!4660443 tp!2351764)))

(declare-fun b!7895733 () Bool)

(declare-fun tp!2351765 () Bool)

(declare-fun tp!2351763 () Bool)

(assert (=> b!7895733 (= e!4660443 (and tp!2351765 tp!2351763))))

(assert (= (and b!7894955 ((_ is ElementMatch!21219) (regOne!42950 (reg!21548 (regTwo!42950 r!4885))))) b!7895732))

(assert (= (and b!7894955 ((_ is Concat!30064) (regOne!42950 (reg!21548 (regTwo!42950 r!4885))))) b!7895733))

(assert (= (and b!7894955 ((_ is Star!21219) (regOne!42950 (reg!21548 (regTwo!42950 r!4885))))) b!7895734))

(assert (= (and b!7894955 ((_ is Union!21219) (regOne!42950 (reg!21548 (regTwo!42950 r!4885))))) b!7895735))

(declare-fun e!4660444 () Bool)

(assert (=> b!7894955 (= tp!2351000 e!4660444)))

(declare-fun b!7895736 () Bool)

(assert (=> b!7895736 (= e!4660444 tp_is_empty!52837)))

(declare-fun b!7895739 () Bool)

(declare-fun tp!2351767 () Bool)

(declare-fun tp!2351766 () Bool)

(assert (=> b!7895739 (= e!4660444 (and tp!2351767 tp!2351766))))

(declare-fun b!7895738 () Bool)

(declare-fun tp!2351769 () Bool)

(assert (=> b!7895738 (= e!4660444 tp!2351769)))

(declare-fun b!7895737 () Bool)

(declare-fun tp!2351770 () Bool)

(declare-fun tp!2351768 () Bool)

(assert (=> b!7895737 (= e!4660444 (and tp!2351770 tp!2351768))))

(assert (= (and b!7894955 ((_ is ElementMatch!21219) (regTwo!42950 (reg!21548 (regTwo!42950 r!4885))))) b!7895736))

(assert (= (and b!7894955 ((_ is Concat!30064) (regTwo!42950 (reg!21548 (regTwo!42950 r!4885))))) b!7895737))

(assert (= (and b!7894955 ((_ is Star!21219) (regTwo!42950 (reg!21548 (regTwo!42950 r!4885))))) b!7895738))

(assert (= (and b!7894955 ((_ is Union!21219) (regTwo!42950 (reg!21548 (regTwo!42950 r!4885))))) b!7895739))

(declare-fun e!4660445 () Bool)

(assert (=> b!7894964 (= tp!2351011 e!4660445)))

(declare-fun b!7895740 () Bool)

(assert (=> b!7895740 (= e!4660445 tp_is_empty!52837)))

(declare-fun b!7895743 () Bool)

(declare-fun tp!2351772 () Bool)

(declare-fun tp!2351771 () Bool)

(assert (=> b!7895743 (= e!4660445 (and tp!2351772 tp!2351771))))

(declare-fun b!7895742 () Bool)

(declare-fun tp!2351774 () Bool)

(assert (=> b!7895742 (= e!4660445 tp!2351774)))

(declare-fun b!7895741 () Bool)

(declare-fun tp!2351775 () Bool)

(declare-fun tp!2351773 () Bool)

(assert (=> b!7895741 (= e!4660445 (and tp!2351775 tp!2351773))))

(assert (= (and b!7894964 ((_ is ElementMatch!21219) (reg!21548 (regTwo!42950 (regOne!42950 r!4885))))) b!7895740))

(assert (= (and b!7894964 ((_ is Concat!30064) (reg!21548 (regTwo!42950 (regOne!42950 r!4885))))) b!7895741))

(assert (= (and b!7894964 ((_ is Star!21219) (reg!21548 (regTwo!42950 (regOne!42950 r!4885))))) b!7895742))

(assert (= (and b!7894964 ((_ is Union!21219) (reg!21548 (regTwo!42950 (regOne!42950 r!4885))))) b!7895743))

(declare-fun e!4660446 () Bool)

(assert (=> b!7894895 (= tp!2350934 e!4660446)))

(declare-fun b!7895744 () Bool)

(assert (=> b!7895744 (= e!4660446 tp_is_empty!52837)))

(declare-fun b!7895747 () Bool)

(declare-fun tp!2351777 () Bool)

(declare-fun tp!2351776 () Bool)

(assert (=> b!7895747 (= e!4660446 (and tp!2351777 tp!2351776))))

(declare-fun b!7895746 () Bool)

(declare-fun tp!2351779 () Bool)

(assert (=> b!7895746 (= e!4660446 tp!2351779)))

(declare-fun b!7895745 () Bool)

(declare-fun tp!2351780 () Bool)

(declare-fun tp!2351778 () Bool)

(assert (=> b!7895745 (= e!4660446 (and tp!2351780 tp!2351778))))

(assert (= (and b!7894895 ((_ is ElementMatch!21219) (regOne!42951 (regOne!42951 (regOne!42951 r!4885))))) b!7895744))

(assert (= (and b!7894895 ((_ is Concat!30064) (regOne!42951 (regOne!42951 (regOne!42951 r!4885))))) b!7895745))

(assert (= (and b!7894895 ((_ is Star!21219) (regOne!42951 (regOne!42951 (regOne!42951 r!4885))))) b!7895746))

(assert (= (and b!7894895 ((_ is Union!21219) (regOne!42951 (regOne!42951 (regOne!42951 r!4885))))) b!7895747))

(declare-fun e!4660447 () Bool)

(assert (=> b!7894895 (= tp!2350933 e!4660447)))

(declare-fun b!7895748 () Bool)

(assert (=> b!7895748 (= e!4660447 tp_is_empty!52837)))

(declare-fun b!7895751 () Bool)

(declare-fun tp!2351782 () Bool)

(declare-fun tp!2351781 () Bool)

(assert (=> b!7895751 (= e!4660447 (and tp!2351782 tp!2351781))))

(declare-fun b!7895750 () Bool)

(declare-fun tp!2351784 () Bool)

(assert (=> b!7895750 (= e!4660447 tp!2351784)))

(declare-fun b!7895749 () Bool)

(declare-fun tp!2351785 () Bool)

(declare-fun tp!2351783 () Bool)

(assert (=> b!7895749 (= e!4660447 (and tp!2351785 tp!2351783))))

(assert (= (and b!7894895 ((_ is ElementMatch!21219) (regTwo!42951 (regOne!42951 (regOne!42951 r!4885))))) b!7895748))

(assert (= (and b!7894895 ((_ is Concat!30064) (regTwo!42951 (regOne!42951 (regOne!42951 r!4885))))) b!7895749))

(assert (= (and b!7894895 ((_ is Star!21219) (regTwo!42951 (regOne!42951 (regOne!42951 r!4885))))) b!7895750))

(assert (= (and b!7894895 ((_ is Union!21219) (regTwo!42951 (regOne!42951 (regOne!42951 r!4885))))) b!7895751))

(declare-fun e!4660448 () Bool)

(assert (=> b!7894989 (= tp!2351039 e!4660448)))

(declare-fun b!7895752 () Bool)

(assert (=> b!7895752 (= e!4660448 tp_is_empty!52837)))

(declare-fun b!7895755 () Bool)

(declare-fun tp!2351787 () Bool)

(declare-fun tp!2351786 () Bool)

(assert (=> b!7895755 (= e!4660448 (and tp!2351787 tp!2351786))))

(declare-fun b!7895754 () Bool)

(declare-fun tp!2351789 () Bool)

(assert (=> b!7895754 (= e!4660448 tp!2351789)))

(declare-fun b!7895753 () Bool)

(declare-fun tp!2351790 () Bool)

(declare-fun tp!2351788 () Bool)

(assert (=> b!7895753 (= e!4660448 (and tp!2351790 tp!2351788))))

(assert (= (and b!7894989 ((_ is ElementMatch!21219) (regOne!42951 (regOne!42951 (reg!21548 r!4885))))) b!7895752))

(assert (= (and b!7894989 ((_ is Concat!30064) (regOne!42951 (regOne!42951 (reg!21548 r!4885))))) b!7895753))

(assert (= (and b!7894989 ((_ is Star!21219) (regOne!42951 (regOne!42951 (reg!21548 r!4885))))) b!7895754))

(assert (= (and b!7894989 ((_ is Union!21219) (regOne!42951 (regOne!42951 (reg!21548 r!4885))))) b!7895755))

(declare-fun e!4660449 () Bool)

(assert (=> b!7894989 (= tp!2351038 e!4660449)))

(declare-fun b!7895756 () Bool)

(assert (=> b!7895756 (= e!4660449 tp_is_empty!52837)))

(declare-fun b!7895759 () Bool)

(declare-fun tp!2351792 () Bool)

(declare-fun tp!2351791 () Bool)

(assert (=> b!7895759 (= e!4660449 (and tp!2351792 tp!2351791))))

(declare-fun b!7895758 () Bool)

(declare-fun tp!2351794 () Bool)

(assert (=> b!7895758 (= e!4660449 tp!2351794)))

(declare-fun b!7895757 () Bool)

(declare-fun tp!2351795 () Bool)

(declare-fun tp!2351793 () Bool)

(assert (=> b!7895757 (= e!4660449 (and tp!2351795 tp!2351793))))

(assert (= (and b!7894989 ((_ is ElementMatch!21219) (regTwo!42951 (regOne!42951 (reg!21548 r!4885))))) b!7895756))

(assert (= (and b!7894989 ((_ is Concat!30064) (regTwo!42951 (regOne!42951 (reg!21548 r!4885))))) b!7895757))

(assert (= (and b!7894989 ((_ is Star!21219) (regTwo!42951 (regOne!42951 (reg!21548 r!4885))))) b!7895758))

(assert (= (and b!7894989 ((_ is Union!21219) (regTwo!42951 (regOne!42951 (reg!21548 r!4885))))) b!7895759))

(declare-fun e!4660450 () Bool)

(assert (=> b!7894948 (= tp!2350991 e!4660450)))

(declare-fun b!7895760 () Bool)

(assert (=> b!7895760 (= e!4660450 tp_is_empty!52837)))

(declare-fun b!7895763 () Bool)

(declare-fun tp!2351797 () Bool)

(declare-fun tp!2351796 () Bool)

(assert (=> b!7895763 (= e!4660450 (and tp!2351797 tp!2351796))))

(declare-fun b!7895762 () Bool)

(declare-fun tp!2351799 () Bool)

(assert (=> b!7895762 (= e!4660450 tp!2351799)))

(declare-fun b!7895761 () Bool)

(declare-fun tp!2351800 () Bool)

(declare-fun tp!2351798 () Bool)

(assert (=> b!7895761 (= e!4660450 (and tp!2351800 tp!2351798))))

(assert (= (and b!7894948 ((_ is ElementMatch!21219) (reg!21548 (regOne!42951 (regOne!42950 r!4885))))) b!7895760))

(assert (= (and b!7894948 ((_ is Concat!30064) (reg!21548 (regOne!42951 (regOne!42950 r!4885))))) b!7895761))

(assert (= (and b!7894948 ((_ is Star!21219) (reg!21548 (regOne!42951 (regOne!42950 r!4885))))) b!7895762))

(assert (= (and b!7894948 ((_ is Union!21219) (reg!21548 (regOne!42951 (regOne!42950 r!4885))))) b!7895763))

(declare-fun e!4660451 () Bool)

(assert (=> b!7894921 (= tp!2350954 e!4660451)))

(declare-fun b!7895764 () Bool)

(assert (=> b!7895764 (= e!4660451 tp_is_empty!52837)))

(declare-fun b!7895767 () Bool)

(declare-fun tp!2351802 () Bool)

(declare-fun tp!2351801 () Bool)

(assert (=> b!7895767 (= e!4660451 (and tp!2351802 tp!2351801))))

(declare-fun b!7895766 () Bool)

(declare-fun tp!2351804 () Bool)

(assert (=> b!7895766 (= e!4660451 tp!2351804)))

(declare-fun b!7895765 () Bool)

(declare-fun tp!2351805 () Bool)

(declare-fun tp!2351803 () Bool)

(assert (=> b!7895765 (= e!4660451 (and tp!2351805 tp!2351803))))

(assert (= (and b!7894921 ((_ is ElementMatch!21219) (regOne!42951 (regOne!42951 (regTwo!42951 r!4885))))) b!7895764))

(assert (= (and b!7894921 ((_ is Concat!30064) (regOne!42951 (regOne!42951 (regTwo!42951 r!4885))))) b!7895765))

(assert (= (and b!7894921 ((_ is Star!21219) (regOne!42951 (regOne!42951 (regTwo!42951 r!4885))))) b!7895766))

(assert (= (and b!7894921 ((_ is Union!21219) (regOne!42951 (regOne!42951 (regTwo!42951 r!4885))))) b!7895767))

(declare-fun e!4660452 () Bool)

(assert (=> b!7894921 (= tp!2350953 e!4660452)))

(declare-fun b!7895768 () Bool)

(assert (=> b!7895768 (= e!4660452 tp_is_empty!52837)))

(declare-fun b!7895771 () Bool)

(declare-fun tp!2351807 () Bool)

(declare-fun tp!2351806 () Bool)

(assert (=> b!7895771 (= e!4660452 (and tp!2351807 tp!2351806))))

(declare-fun b!7895770 () Bool)

(declare-fun tp!2351809 () Bool)

(assert (=> b!7895770 (= e!4660452 tp!2351809)))

(declare-fun b!7895769 () Bool)

(declare-fun tp!2351810 () Bool)

(declare-fun tp!2351808 () Bool)

(assert (=> b!7895769 (= e!4660452 (and tp!2351810 tp!2351808))))

(assert (= (and b!7894921 ((_ is ElementMatch!21219) (regTwo!42951 (regOne!42951 (regTwo!42951 r!4885))))) b!7895768))

(assert (= (and b!7894921 ((_ is Concat!30064) (regTwo!42951 (regOne!42951 (regTwo!42951 r!4885))))) b!7895769))

(assert (= (and b!7894921 ((_ is Star!21219) (regTwo!42951 (regOne!42951 (regTwo!42951 r!4885))))) b!7895770))

(assert (= (and b!7894921 ((_ is Union!21219) (regTwo!42951 (regOne!42951 (regTwo!42951 r!4885))))) b!7895771))

(declare-fun e!4660453 () Bool)

(assert (=> b!7894971 (= tp!2351022 e!4660453)))

(declare-fun b!7895772 () Bool)

(assert (=> b!7895772 (= e!4660453 tp_is_empty!52837)))

(declare-fun b!7895775 () Bool)

(declare-fun tp!2351812 () Bool)

(declare-fun tp!2351811 () Bool)

(assert (=> b!7895775 (= e!4660453 (and tp!2351812 tp!2351811))))

(declare-fun b!7895774 () Bool)

(declare-fun tp!2351814 () Bool)

(assert (=> b!7895774 (= e!4660453 tp!2351814)))

(declare-fun b!7895773 () Bool)

(declare-fun tp!2351815 () Bool)

(declare-fun tp!2351813 () Bool)

(assert (=> b!7895773 (= e!4660453 (and tp!2351815 tp!2351813))))

(assert (= (and b!7894971 ((_ is ElementMatch!21219) (regOne!42950 (regTwo!42951 (regTwo!42950 r!4885))))) b!7895772))

(assert (= (and b!7894971 ((_ is Concat!30064) (regOne!42950 (regTwo!42951 (regTwo!42950 r!4885))))) b!7895773))

(assert (= (and b!7894971 ((_ is Star!21219) (regOne!42950 (regTwo!42951 (regTwo!42950 r!4885))))) b!7895774))

(assert (= (and b!7894971 ((_ is Union!21219) (regOne!42950 (regTwo!42951 (regTwo!42950 r!4885))))) b!7895775))

(declare-fun e!4660454 () Bool)

(assert (=> b!7894971 (= tp!2351020 e!4660454)))

(declare-fun b!7895776 () Bool)

(assert (=> b!7895776 (= e!4660454 tp_is_empty!52837)))

(declare-fun b!7895779 () Bool)

(declare-fun tp!2351817 () Bool)

(declare-fun tp!2351816 () Bool)

(assert (=> b!7895779 (= e!4660454 (and tp!2351817 tp!2351816))))

(declare-fun b!7895778 () Bool)

(declare-fun tp!2351819 () Bool)

(assert (=> b!7895778 (= e!4660454 tp!2351819)))

(declare-fun b!7895777 () Bool)

(declare-fun tp!2351820 () Bool)

(declare-fun tp!2351818 () Bool)

(assert (=> b!7895777 (= e!4660454 (and tp!2351820 tp!2351818))))

(assert (= (and b!7894971 ((_ is ElementMatch!21219) (regTwo!42950 (regTwo!42951 (regTwo!42950 r!4885))))) b!7895776))

(assert (= (and b!7894971 ((_ is Concat!30064) (regTwo!42950 (regTwo!42951 (regTwo!42950 r!4885))))) b!7895777))

(assert (= (and b!7894971 ((_ is Star!21219) (regTwo!42950 (regTwo!42951 (regTwo!42950 r!4885))))) b!7895778))

(assert (= (and b!7894971 ((_ is Union!21219) (regTwo!42950 (regTwo!42951 (regTwo!42950 r!4885))))) b!7895779))

(declare-fun e!4660455 () Bool)

(assert (=> b!7894980 (= tp!2351031 e!4660455)))

(declare-fun b!7895780 () Bool)

(assert (=> b!7895780 (= e!4660455 tp_is_empty!52837)))

(declare-fun b!7895783 () Bool)

(declare-fun tp!2351822 () Bool)

(declare-fun tp!2351821 () Bool)

(assert (=> b!7895783 (= e!4660455 (and tp!2351822 tp!2351821))))

(declare-fun b!7895782 () Bool)

(declare-fun tp!2351824 () Bool)

(assert (=> b!7895782 (= e!4660455 tp!2351824)))

(declare-fun b!7895781 () Bool)

(declare-fun tp!2351825 () Bool)

(declare-fun tp!2351823 () Bool)

(assert (=> b!7895781 (= e!4660455 (and tp!2351825 tp!2351823))))

(assert (= (and b!7894980 ((_ is ElementMatch!21219) (reg!21548 (regOne!42950 (regTwo!42950 r!4885))))) b!7895780))

(assert (= (and b!7894980 ((_ is Concat!30064) (reg!21548 (regOne!42950 (regTwo!42950 r!4885))))) b!7895781))

(assert (= (and b!7894980 ((_ is Star!21219) (reg!21548 (regOne!42950 (regTwo!42950 r!4885))))) b!7895782))

(assert (= (and b!7894980 ((_ is Union!21219) (reg!21548 (regOne!42950 (regTwo!42950 r!4885))))) b!7895783))

(declare-fun b_lambda!289511 () Bool)

(assert (= b_lambda!289509 (or d!2357306 b_lambda!289511)))

(declare-fun bs!1967723 () Bool)

(declare-fun d!2357374 () Bool)

(assert (= bs!1967723 (and d!2357374 d!2357306)))

(assert (=> bs!1967723 (= (dynLambda!30003 lambda!472223 (h!80401 lt!2681667)) (validRegex!11629 (h!80401 lt!2681667)))))

(declare-fun m!8271876 () Bool)

(assert (=> bs!1967723 m!8271876))

(assert (=> b!7895260 d!2357374))

(declare-fun b_lambda!289513 () Bool)

(assert (= b_lambda!289507 (or d!2357292 b_lambda!289513)))

(declare-fun bs!1967724 () Bool)

(declare-fun d!2357376 () Bool)

(assert (= bs!1967724 (and d!2357376 d!2357292)))

(assert (=> bs!1967724 (= (dynLambda!30003 lambda!472218 (h!80401 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))) (validRegex!11629 (h!80401 (unfocusZipperList!2340 (toList!11864 (store ((as const (Array Context!17070 Bool)) false) (Context!17071 (Cons!73953 r!4885 Nil!73953)) true))))))))

(declare-fun m!8271878 () Bool)

(assert (=> bs!1967724 m!8271878))

(assert (=> b!7895249 d!2357376))

(check-sat (not b!7895608) (not b!7895660) (not b!7895751) (not b!7895462) (not b!7895769) (not b!7895568) (not b!7895687) (not b!7895492) (not b!7895329) (not b!7895476) (not b!7895497) (not b!7895502) (not b!7895308) (not b!7895510) (not b!7895731) (not b!7895584) (not b!7895641) (not b!7895690) (not b!7895328) (not b!7895573) (not b!7895665) (not b!7895566) (not b!7895472) (not b!7895400) (not b!7895738) (not bm!732875) (not b!7895593) (not bm!732896) (not b!7895433) (not b!7895765) (not b!7895508) (not b!7895441) (not b!7895755) (not b!7895273) (not b!7895408) (not b!7895721) (not b!7895759) (not b!7895576) (not b!7895580) (not b!7895666) (not b!7895770) (not b!7895154) (not b!7895285) (not b!7895693) (not b!7895486) (not b!7895397) (not b!7895284) (not bm!732893) (not b!7895621) (not b!7895711) (not b!7895461) (not b!7895410) (not b!7895679) (not b!7895317) (not b!7895469) (not b!7895747) (not b!7895730) (not d!2357326) (not b!7895294) (not b!7895496) (not b!7895779) (not b!7895326) (not b!7895277) (not b!7895678) (not b!7895774) (not b!7895353) (not b!7895212) (not bm!732878) (not b!7895352) (not b!7895182) (not b!7895340) (not b!7895618) (not b!7895205) (not b!7895758) (not b!7895324) (not b!7895393) (not b!7895305) (not b!7895369) (not b!7895722) (not b!7895321) (not b!7895384) (not b!7895364) (not b!7895316) (not b!7895485) (not b!7895156) (not b!7895727) (not b!7895750) (not b!7895498) (not b!7895534) (not b!7895525) (not b!7895569) (not b!7895473) (not b!7895404) (not b!7895386) (not b!7895250) (not b!7895414) (not b!7895689) (not b!7895402) (not b!7895506) (not b!7895466) (not b!7895757) (not b!7895642) (not b!7895698) (not b!7895773) (not b!7895468) (not b!7895530) (not b!7895702) (not bm!732890) (not b!7895781) (not b!7895737) (not bm!732881) (not b!7895480) (not b!7895767) (not b!7895533) (not b!7895169) (not b!7895354) (not b!7895269) (not bm!732895) (not b!7895691) (not bm!732898) (not b!7895366) (not b!7895745) (not b!7895306) (not b!7895529) (not b!7895753) (not b!7895771) (not b!7895296) (not b!7895532) (not b!7895453) (not b!7895345) (not b!7895372) (not b!7895388) (not b!7895392) (not b!7895382) (not b!7895638) (not b!7895725) (not b!7895657) (not b!7895505) (not b!7895420) (not b!7895516) (not b!7895346) (not b!7895553) (not b!7895629) (not b!7895405) (not b!7895526) (not b!7895370) (not b!7895358) (not b!7895494) (not b!7895484) (not b!7895207) (not b!7895630) (not b!7895626) (not b!7895538) (not b!7895348) (not b!7895332) (not b!7895560) (not b!7895634) (not b!7895310) (not b!7895548) (not b!7895376) (not b!7895582) (not b!7895739) (not b!7895640) (not b!7895701) (not b!7895610) (not b!7895713) (not b!7895385) (not b!7895213) (not b!7895276) (not b!7895588) (not b!7895412) (not b!7895381) (not b!7895652) (not b!7895699) (not b!7895357) (not b!7895783) (not b!7895288) (not d!2357338) (not b!7895589) (not b!7895761) (not b!7895574) (not b!7895697) (not b!7895714) (not b_lambda!289511) (not b!7895280) (not b!7895782) (not b!7895290) (not b!7895417) (not b!7895390) (not b!7895677) (not b!7895334) (not b!7895609) (not b!7895682) (not b!7895601) (not b!7895179) (not b!7895545) (not b!7895695) (not b!7895636) (not b!7895749) (not b!7895501) (not b!7895416) (not b!7895204) (not b!7895670) (not b!7895428) (not b!7895464) (not bm!732884) (not bm!732880) (not b!7895401) (not b!7895542) (not b!7895444) (not b!7895286) (not bs!1967724) (not b!7895723) (not b!7895474) (not bm!732891) (not b!7895261) (not b!7895633) (not b!7895653) (not b!7895512) (not b!7895302) (not b!7895449) (not d!2357340) (not b!7895628) (not b!7895465) (not b!7895389) (not b!7895637) (not b!7895436) (not b!7895318) (not b!7895552) (not b!7895726) (not b!7895777) (not b!7895504) (not b!7895409) (not bm!732883) (not b!7895314) (not b!7895703) (not b!7895592) (not b!7895477) (not b!7895437) (not b!7895521) (not b!7895157) (not b!7895733) (not b!7895478) (not b!7895594) (not b!7895470) (not b!7895163) (not b!7895514) (not b!7895536) (not b!7895426) (not b!7895133) (not b!7895706) (not b!7895520) (not b!7895766) (not b!7895272) (not b!7895243) (not d!2357356) (not d!2357366) (not b!7895281) (not b!7895549) (not b!7895735) (not b!7895524) (not b!7895170) (not b!7895648) (not b!7895301) (not b!7895450) (not b!7895620) (not b!7895707) (not b!7895454) (not b!7895350) (not b!7895341) (not b!7895161) (not b!7895300) (not b!7895661) (not b!7895614) (not b!7895429) (not b!7895754) (not b!7895597) (not b!7895717) (not b!7895686) (not b!7895322) (not b!7895424) (not b!7895362) (not b!7895336) (not b!7895438) (not b!7895596) (not bm!732892) (not b!7895612) (not b!7895550) (not b!7895158) (not b!7895585) (not b!7895581) (not b!7895333) (not b!7895557) (not b!7895349) (not b!7895554) (not b!7895656) (not b!7895598) (not b!7895297) (not b!7895654) (not b!7895763) (not b!7895337) (not b!7895746) (not b!7895778) (not b!7895544) (not b!7895664) (not b!7895762) (not b!7895171) (not bm!732877) (not b!7895570) (not b!7895561) (not b!7895422) (not b!7895298) (not b!7895278) (not b!7895394) (not b!7895742) (not b!7895304) (not b!7895617) (not b!7895577) (not b!7895649) (not b!7895650) (not b!7895313) (not b!7895616) (not b!7895513) (not b!7895522) (not b!7895556) (not b!7895143) (not b!7895330) (not b!7895537) (not b!7895325) tp_is_empty!52837 (not b!7895590) (not b!7895418) (not b!7895600) (not b!7895130) (not d!2357352) (not b!7895528) (not b!7895572) (not b!7895578) (not b!7895604) (not b!7895685) (not b!7895564) (not b!7895482) (not b!7895681) (not d!2357368) (not b!7895396) (not b!7895490) (not b!7895360) (not b_lambda!289513) (not b!7895662) (not b!7895565) (not b!7895446) (not b!7895518) (not b!7895289) (not b!7895344) (not b!7895622) (not b!7895421) (not bm!732874) (not b!7895258) (not b!7895645) (not b!7895342) (not b!7895282) (not b!7895442) (not d!2357354) (not b!7895159) (not b!7895361) (not b!7895209) (not b!7895152) (not b!7895694) (not b!7895605) (not b!7895292) (not b!7895448) (not b!7895644) (not b!7895500) (not b!7895320) (not b!7895488) (not b!7895683) (not b!7895368) (not b!7895624) (not b!7895719) (not b!7895509) (not b!7895374) (not b!7895211) (not b!7895434) (not b!7895729) (not b!7895365) (not b!7895489) (not b!7895710) (not b!7895718) (not b!7895709) (not b!7895558) (not b!7895602) (not b!7895134) (not b!7895274) (not bm!732899) (not b!7895646) (not b!7895481) (not b!7895715) (not b!7895606) (not b!7895380) (not b!7895293) (not b!7895430) (not b!7895398) (not b!7895373) (not b!7895625) (not b!7895541) (not b!7895775) (not b!7895546) (not b!7895440) (not b!7895613) (not b!7895734) (not b!7895562) (not b!7895452) (not b!7895540) (not b!7895586) (not b!7895668) (not b!7895741) (not b!7895658) (not b!7895743) (not b!7895309) (not b!7895675) (not b!7895493) (not b!7895432) (not b!7895377) (not bs!1967723) (not b!7895312) (not b!7895517) (not b!7895413) (not b!7895406) (not b!7895356) (not b!7895210) (not b!7895632) (not b!7895378) (not b!7895669) (not b!7895705) (not b!7895135) (not b!7895445) (not b!7895425) (not b!7895338))
(check-sat)
