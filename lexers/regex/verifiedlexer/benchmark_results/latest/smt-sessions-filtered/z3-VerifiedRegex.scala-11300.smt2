; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!595984 () Bool)

(assert start!595984)

(declare-fun b!5816568 () Bool)

(assert (=> b!5816568 true))

(declare-fun b!5816558 () Bool)

(declare-fun e!3569918 () Bool)

(declare-fun tp_is_empty!40947 () Bool)

(declare-fun tp!1604902 () Bool)

(assert (=> b!5816558 (= e!3569918 (and tp_is_empty!40947 tp!1604902))))

(declare-fun b!5816559 () Bool)

(declare-fun res!2452870 () Bool)

(declare-fun e!3569911 () Bool)

(assert (=> b!5816559 (=> res!2452870 e!3569911)))

(declare-datatypes ((C!31964 0))(
  ( (C!31965 (val!25684 Int)) )
))
(declare-datatypes ((Regex!15847 0))(
  ( (ElementMatch!15847 (c!1030825 C!31964)) (Concat!24692 (regOne!32206 Regex!15847) (regTwo!32206 Regex!15847)) (EmptyExpr!15847) (Star!15847 (reg!16176 Regex!15847)) (EmptyLang!15847) (Union!15847 (regOne!32207 Regex!15847) (regTwo!32207 Regex!15847)) )
))
(declare-datatypes ((List!63840 0))(
  ( (Nil!63716) (Cons!63716 (h!70164 Regex!15847) (t!377195 List!63840)) )
))
(declare-datatypes ((Context!10462 0))(
  ( (Context!10463 (exprs!5731 List!63840)) )
))
(declare-datatypes ((List!63841 0))(
  ( (Nil!63717) (Cons!63717 (h!70165 Context!10462) (t!377196 List!63841)) )
))
(declare-fun zl!343 () List!63841)

(declare-fun isEmpty!35620 (List!63841) Bool)

(assert (=> b!5816559 (= res!2452870 (isEmpty!35620 (t!377196 zl!343)))))

(declare-fun b!5816560 () Bool)

(declare-fun res!2452868 () Bool)

(declare-fun e!3569916 () Bool)

(assert (=> b!5816560 (=> (not res!2452868) (not e!3569916))))

(declare-fun r!7292 () Regex!15847)

(declare-fun unfocusZipper!1589 (List!63841) Regex!15847)

(assert (=> b!5816560 (= res!2452868 (= r!7292 (unfocusZipper!1589 zl!343)))))

(declare-fun tp!1604906 () Bool)

(declare-fun setRes!39226 () Bool)

(declare-fun setNonEmpty!39226 () Bool)

(declare-fun e!3569914 () Bool)

(declare-fun setElem!39226 () Context!10462)

(declare-fun inv!82864 (Context!10462) Bool)

(assert (=> setNonEmpty!39226 (= setRes!39226 (and tp!1604906 (inv!82864 setElem!39226) e!3569914))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10462))

(declare-fun setRest!39226 () (InoxSet Context!10462))

(assert (=> setNonEmpty!39226 (= z!1189 ((_ map or) (store ((as const (Array Context!10462 Bool)) false) setElem!39226 true) setRest!39226))))

(declare-fun b!5816561 () Bool)

(declare-fun e!3569915 () Bool)

(declare-fun tp!1604901 () Bool)

(declare-fun tp!1604900 () Bool)

(assert (=> b!5816561 (= e!3569915 (and tp!1604901 tp!1604900))))

(declare-fun b!5816563 () Bool)

(declare-fun e!3569912 () Bool)

(assert (=> b!5816563 (= e!3569912 (isEmpty!35620 (t!377196 zl!343)))))

(declare-fun b!5816564 () Bool)

(declare-fun tp!1604908 () Bool)

(assert (=> b!5816564 (= e!3569914 tp!1604908)))

(declare-fun b!5816565 () Bool)

(declare-fun res!2452875 () Bool)

(declare-fun e!3569919 () Bool)

(assert (=> b!5816565 (=> res!2452875 e!3569919)))

(declare-fun lt!2301474 () List!63840)

(declare-fun lambda!318058 () Int)

(declare-fun exists!2263 (List!63840 Int) Bool)

(assert (=> b!5816565 (= res!2452875 (not (exists!2263 lt!2301474 lambda!318058)))))

(declare-fun b!5816566 () Bool)

(assert (=> b!5816566 (= e!3569915 tp_is_empty!40947)))

(declare-fun setIsEmpty!39226 () Bool)

(assert (=> setIsEmpty!39226 setRes!39226))

(declare-fun b!5816567 () Bool)

(declare-fun contains!19887 (List!63840 Regex!15847) Bool)

(declare-fun getWitness!914 (List!63840 Int) Regex!15847)

(assert (=> b!5816567 (= e!3569919 (contains!19887 lt!2301474 (getWitness!914 lt!2301474 lambda!318058)))))

(assert (=> b!5816568 (= e!3569911 e!3569919)))

(declare-fun res!2452876 () Bool)

(assert (=> b!5816568 (=> res!2452876 e!3569919)))

(declare-fun lt!2301473 () Bool)

(assert (=> b!5816568 (= res!2452876 (not lt!2301473))))

(assert (=> b!5816568 (= lt!2301473 (exists!2263 lt!2301474 lambda!318058))))

(declare-datatypes ((List!63842 0))(
  ( (Nil!63718) (Cons!63718 (h!70166 C!31964) (t!377197 List!63842)) )
))
(declare-fun s!2326 () List!63842)

(declare-datatypes ((Unit!156954 0))(
  ( (Unit!156955) )
))
(declare-fun lt!2301472 () Unit!156954)

(declare-fun matchRGenUnionSpec!288 (Regex!15847 List!63840 List!63842) Unit!156954)

(assert (=> b!5816568 (= lt!2301472 (matchRGenUnionSpec!288 r!7292 lt!2301474 s!2326))))

(declare-fun unfocusZipperList!1269 (List!63841) List!63840)

(assert (=> b!5816568 (= lt!2301474 (unfocusZipperList!1269 zl!343))))

(declare-fun b!5816569 () Bool)

(declare-fun res!2452869 () Bool)

(assert (=> b!5816569 (=> (not res!2452869) (not e!3569916))))

(declare-fun toList!9631 ((InoxSet Context!10462)) List!63841)

(assert (=> b!5816569 (= res!2452869 (= (toList!9631 z!1189) zl!343))))

(declare-fun e!3569913 () Bool)

(declare-fun b!5816570 () Bool)

(declare-fun tp!1604899 () Bool)

(declare-fun e!3569917 () Bool)

(assert (=> b!5816570 (= e!3569917 (and (inv!82864 (h!70165 zl!343)) e!3569913 tp!1604899))))

(declare-fun res!2452872 () Bool)

(assert (=> start!595984 (=> (not res!2452872) (not e!3569916))))

(declare-fun validRegex!7583 (Regex!15847) Bool)

(assert (=> start!595984 (= res!2452872 (validRegex!7583 r!7292))))

(assert (=> start!595984 e!3569916))

(assert (=> start!595984 e!3569915))

(declare-fun condSetEmpty!39226 () Bool)

(assert (=> start!595984 (= condSetEmpty!39226 (= z!1189 ((as const (Array Context!10462 Bool)) false)))))

(assert (=> start!595984 setRes!39226))

(assert (=> start!595984 e!3569917))

(assert (=> start!595984 e!3569918))

(declare-fun b!5816562 () Bool)

(assert (=> b!5816562 (= e!3569916 (not e!3569911))))

(declare-fun res!2452871 () Bool)

(assert (=> b!5816562 (=> res!2452871 e!3569911)))

(assert (=> b!5816562 (= res!2452871 e!3569912)))

(declare-fun res!2452873 () Bool)

(assert (=> b!5816562 (=> (not res!2452873) (not e!3569912))))

(get-info :version)

(assert (=> b!5816562 (= res!2452873 ((_ is Cons!63717) zl!343))))

(declare-fun matchRSpec!2950 (Regex!15847 List!63842) Bool)

(assert (=> b!5816562 (= lt!2301473 (matchRSpec!2950 r!7292 s!2326))))

(declare-fun matchR!8032 (Regex!15847 List!63842) Bool)

(assert (=> b!5816562 (= lt!2301473 (matchR!8032 r!7292 s!2326))))

(declare-fun lt!2301471 () Unit!156954)

(declare-fun mainMatchTheorem!2950 (Regex!15847 List!63842) Unit!156954)

(assert (=> b!5816562 (= lt!2301471 (mainMatchTheorem!2950 r!7292 s!2326))))

(declare-fun b!5816571 () Bool)

(declare-fun res!2452874 () Bool)

(assert (=> b!5816571 (=> res!2452874 e!3569911)))

(assert (=> b!5816571 (= res!2452874 (or (not ((_ is Cons!63717) zl!343)) ((_ is Nil!63718) s!2326) (not (= zl!343 (Cons!63717 (h!70165 zl!343) (t!377196 zl!343))))))))

(declare-fun b!5816572 () Bool)

(declare-fun tp!1604905 () Bool)

(assert (=> b!5816572 (= e!3569915 tp!1604905)))

(declare-fun b!5816573 () Bool)

(declare-fun tp!1604904 () Bool)

(declare-fun tp!1604907 () Bool)

(assert (=> b!5816573 (= e!3569915 (and tp!1604904 tp!1604907))))

(declare-fun b!5816574 () Bool)

(declare-fun tp!1604903 () Bool)

(assert (=> b!5816574 (= e!3569913 tp!1604903)))

(assert (= (and start!595984 res!2452872) b!5816569))

(assert (= (and b!5816569 res!2452869) b!5816560))

(assert (= (and b!5816560 res!2452868) b!5816562))

(assert (= (and b!5816562 res!2452873) b!5816563))

(assert (= (and b!5816562 (not res!2452871)) b!5816571))

(assert (= (and b!5816571 (not res!2452874)) b!5816559))

(assert (= (and b!5816559 (not res!2452870)) b!5816568))

(assert (= (and b!5816568 (not res!2452876)) b!5816565))

(assert (= (and b!5816565 (not res!2452875)) b!5816567))

(assert (= (and start!595984 ((_ is ElementMatch!15847) r!7292)) b!5816566))

(assert (= (and start!595984 ((_ is Concat!24692) r!7292)) b!5816573))

(assert (= (and start!595984 ((_ is Star!15847) r!7292)) b!5816572))

(assert (= (and start!595984 ((_ is Union!15847) r!7292)) b!5816561))

(assert (= (and start!595984 condSetEmpty!39226) setIsEmpty!39226))

(assert (= (and start!595984 (not condSetEmpty!39226)) setNonEmpty!39226))

(assert (= setNonEmpty!39226 b!5816564))

(assert (= b!5816570 b!5816574))

(assert (= (and start!595984 ((_ is Cons!63717) zl!343)) b!5816570))

(assert (= (and start!595984 ((_ is Cons!63718) s!2326)) b!5816558))

(declare-fun m!6753716 () Bool)

(assert (=> b!5816559 m!6753716))

(declare-fun m!6753718 () Bool)

(assert (=> b!5816567 m!6753718))

(assert (=> b!5816567 m!6753718))

(declare-fun m!6753720 () Bool)

(assert (=> b!5816567 m!6753720))

(declare-fun m!6753722 () Bool)

(assert (=> start!595984 m!6753722))

(assert (=> b!5816563 m!6753716))

(declare-fun m!6753724 () Bool)

(assert (=> setNonEmpty!39226 m!6753724))

(declare-fun m!6753726 () Bool)

(assert (=> b!5816562 m!6753726))

(declare-fun m!6753728 () Bool)

(assert (=> b!5816562 m!6753728))

(declare-fun m!6753730 () Bool)

(assert (=> b!5816562 m!6753730))

(declare-fun m!6753732 () Bool)

(assert (=> b!5816570 m!6753732))

(declare-fun m!6753734 () Bool)

(assert (=> b!5816568 m!6753734))

(declare-fun m!6753736 () Bool)

(assert (=> b!5816568 m!6753736))

(declare-fun m!6753738 () Bool)

(assert (=> b!5816568 m!6753738))

(declare-fun m!6753740 () Bool)

(assert (=> b!5816569 m!6753740))

(declare-fun m!6753742 () Bool)

(assert (=> b!5816560 m!6753742))

(assert (=> b!5816565 m!6753734))

(check-sat (not b!5816563) (not b!5816572) (not b!5816573) (not b!5816574) (not b!5816558) (not b!5816560) tp_is_empty!40947 (not b!5816562) (not b!5816561) (not b!5816567) (not start!595984) (not b!5816565) (not setNonEmpty!39226) (not b!5816569) (not b!5816559) (not b!5816564) (not b!5816568) (not b!5816570))
(check-sat)
(get-model)

(declare-fun bs!1372770 () Bool)

(declare-fun d!1831107 () Bool)

(assert (= bs!1372770 (and d!1831107 b!5816568)))

(declare-fun lambda!318061 () Int)

(assert (=> bs!1372770 (not (= lambda!318061 lambda!318058))))

(declare-fun forall!14942 (List!63840 Int) Bool)

(assert (=> d!1831107 (= (inv!82864 setElem!39226) (forall!14942 (exprs!5731 setElem!39226) lambda!318061))))

(declare-fun bs!1372771 () Bool)

(assert (= bs!1372771 d!1831107))

(declare-fun m!6753750 () Bool)

(assert (=> bs!1372771 m!6753750))

(assert (=> setNonEmpty!39226 d!1831107))

(declare-fun bs!1372772 () Bool)

(declare-fun d!1831109 () Bool)

(assert (= bs!1372772 (and d!1831109 b!5816568)))

(declare-fun lambda!318062 () Int)

(assert (=> bs!1372772 (not (= lambda!318062 lambda!318058))))

(declare-fun bs!1372773 () Bool)

(assert (= bs!1372773 (and d!1831109 d!1831107)))

(assert (=> bs!1372773 (= lambda!318062 lambda!318061)))

(assert (=> d!1831109 (= (inv!82864 (h!70165 zl!343)) (forall!14942 (exprs!5731 (h!70165 zl!343)) lambda!318062))))

(declare-fun bs!1372774 () Bool)

(assert (= bs!1372774 d!1831109))

(declare-fun m!6753752 () Bool)

(assert (=> bs!1372774 m!6753752))

(assert (=> b!5816570 d!1831109))

(declare-fun d!1831111 () Bool)

(declare-fun e!3569936 () Bool)

(assert (=> d!1831111 e!3569936))

(declare-fun res!2452889 () Bool)

(assert (=> d!1831111 (=> (not res!2452889) (not e!3569936))))

(declare-fun lt!2301484 () List!63841)

(declare-fun noDuplicate!1729 (List!63841) Bool)

(assert (=> d!1831111 (= res!2452889 (noDuplicate!1729 lt!2301484))))

(declare-fun choose!44207 ((InoxSet Context!10462)) List!63841)

(assert (=> d!1831111 (= lt!2301484 (choose!44207 z!1189))))

(assert (=> d!1831111 (= (toList!9631 z!1189) lt!2301484)))

(declare-fun b!5816597 () Bool)

(declare-fun content!11688 (List!63841) (InoxSet Context!10462))

(assert (=> b!5816597 (= e!3569936 (= (content!11688 lt!2301484) z!1189))))

(assert (= (and d!1831111 res!2452889) b!5816597))

(declare-fun m!6753754 () Bool)

(assert (=> d!1831111 m!6753754))

(declare-fun m!6753756 () Bool)

(assert (=> d!1831111 m!6753756))

(declare-fun m!6753758 () Bool)

(assert (=> b!5816597 m!6753758))

(assert (=> b!5816569 d!1831111))

(declare-fun bs!1372775 () Bool)

(declare-fun d!1831113 () Bool)

(assert (= bs!1372775 (and d!1831113 b!5816568)))

(declare-fun lambda!318065 () Int)

(assert (=> bs!1372775 (not (= lambda!318065 lambda!318058))))

(declare-fun bs!1372776 () Bool)

(assert (= bs!1372776 (and d!1831113 d!1831107)))

(assert (=> bs!1372776 (not (= lambda!318065 lambda!318061))))

(declare-fun bs!1372777 () Bool)

(assert (= bs!1372777 (and d!1831113 d!1831109)))

(assert (=> bs!1372777 (not (= lambda!318065 lambda!318062))))

(assert (=> d!1831113 true))

(declare-fun order!27213 () Int)

(declare-fun dynLambda!24938 (Int Int) Int)

(assert (=> d!1831113 (< (dynLambda!24938 order!27213 lambda!318058) (dynLambda!24938 order!27213 lambda!318065))))

(assert (=> d!1831113 (= (exists!2263 lt!2301474 lambda!318058) (not (forall!14942 lt!2301474 lambda!318065)))))

(declare-fun bs!1372778 () Bool)

(assert (= bs!1372778 d!1831113))

(declare-fun m!6753770 () Bool)

(assert (=> bs!1372778 m!6753770))

(assert (=> b!5816565 d!1831113))

(declare-fun d!1831117 () Bool)

(declare-fun lt!2301492 () Regex!15847)

(assert (=> d!1831117 (validRegex!7583 lt!2301492)))

(declare-fun generalisedUnion!1702 (List!63840) Regex!15847)

(assert (=> d!1831117 (= lt!2301492 (generalisedUnion!1702 (unfocusZipperList!1269 zl!343)))))

(assert (=> d!1831117 (= (unfocusZipper!1589 zl!343) lt!2301492)))

(declare-fun bs!1372780 () Bool)

(assert (= bs!1372780 d!1831117))

(declare-fun m!6753776 () Bool)

(assert (=> bs!1372780 m!6753776))

(assert (=> bs!1372780 m!6753738))

(assert (=> bs!1372780 m!6753738))

(declare-fun m!6753778 () Bool)

(assert (=> bs!1372780 m!6753778))

(assert (=> b!5816560 d!1831117))

(declare-fun d!1831121 () Bool)

(assert (=> d!1831121 (= (isEmpty!35620 (t!377196 zl!343)) ((_ is Nil!63717) (t!377196 zl!343)))))

(assert (=> b!5816559 d!1831121))

(assert (=> b!5816568 d!1831113))

(declare-fun bs!1372781 () Bool)

(declare-fun d!1831123 () Bool)

(assert (= bs!1372781 (and d!1831123 b!5816568)))

(declare-fun lambda!318070 () Int)

(assert (=> bs!1372781 (not (= lambda!318070 lambda!318058))))

(declare-fun bs!1372782 () Bool)

(assert (= bs!1372782 (and d!1831123 d!1831107)))

(assert (=> bs!1372782 (= lambda!318070 lambda!318061)))

(declare-fun bs!1372783 () Bool)

(assert (= bs!1372783 (and d!1831123 d!1831109)))

(assert (=> bs!1372783 (= lambda!318070 lambda!318062)))

(declare-fun bs!1372784 () Bool)

(assert (= bs!1372784 (and d!1831123 d!1831113)))

(assert (=> bs!1372784 (not (= lambda!318070 lambda!318065))))

(declare-fun lambda!318071 () Int)

(assert (=> bs!1372782 (not (= lambda!318071 lambda!318061))))

(assert (=> bs!1372783 (not (= lambda!318071 lambda!318062))))

(assert (=> bs!1372784 (not (= lambda!318071 lambda!318065))))

(declare-fun bs!1372785 () Bool)

(assert (= bs!1372785 d!1831123))

(assert (=> bs!1372785 (not (= lambda!318071 lambda!318070))))

(assert (=> bs!1372781 (= lambda!318071 lambda!318058)))

(assert (=> d!1831123 true))

(assert (=> d!1831123 (= (matchR!8032 r!7292 s!2326) (exists!2263 lt!2301474 lambda!318071))))

(declare-fun lt!2301495 () Unit!156954)

(declare-fun choose!44208 (Regex!15847 List!63840 List!63842) Unit!156954)

(assert (=> d!1831123 (= lt!2301495 (choose!44208 r!7292 lt!2301474 s!2326))))

(assert (=> d!1831123 (forall!14942 lt!2301474 lambda!318070)))

(assert (=> d!1831123 (= (matchRGenUnionSpec!288 r!7292 lt!2301474 s!2326) lt!2301495)))

(assert (=> bs!1372785 m!6753728))

(declare-fun m!6753780 () Bool)

(assert (=> bs!1372785 m!6753780))

(declare-fun m!6753782 () Bool)

(assert (=> bs!1372785 m!6753782))

(declare-fun m!6753784 () Bool)

(assert (=> bs!1372785 m!6753784))

(assert (=> b!5816568 d!1831123))

(declare-fun bs!1372786 () Bool)

(declare-fun d!1831125 () Bool)

(assert (= bs!1372786 (and d!1831125 d!1831123)))

(declare-fun lambda!318078 () Int)

(assert (=> bs!1372786 (not (= lambda!318078 lambda!318071))))

(declare-fun bs!1372787 () Bool)

(assert (= bs!1372787 (and d!1831125 d!1831107)))

(assert (=> bs!1372787 (= lambda!318078 lambda!318061)))

(declare-fun bs!1372788 () Bool)

(assert (= bs!1372788 (and d!1831125 d!1831109)))

(assert (=> bs!1372788 (= lambda!318078 lambda!318062)))

(declare-fun bs!1372789 () Bool)

(assert (= bs!1372789 (and d!1831125 d!1831113)))

(assert (=> bs!1372789 (not (= lambda!318078 lambda!318065))))

(assert (=> bs!1372786 (= lambda!318078 lambda!318070)))

(declare-fun bs!1372790 () Bool)

(assert (= bs!1372790 (and d!1831125 b!5816568)))

(assert (=> bs!1372790 (not (= lambda!318078 lambda!318058))))

(declare-fun lt!2301498 () List!63840)

(assert (=> d!1831125 (forall!14942 lt!2301498 lambda!318078)))

(declare-fun e!3569963 () List!63840)

(assert (=> d!1831125 (= lt!2301498 e!3569963)))

(declare-fun c!1030842 () Bool)

(assert (=> d!1831125 (= c!1030842 ((_ is Cons!63717) zl!343))))

(assert (=> d!1831125 (= (unfocusZipperList!1269 zl!343) lt!2301498)))

(declare-fun b!5816644 () Bool)

(declare-fun generalisedConcat!1453 (List!63840) Regex!15847)

(assert (=> b!5816644 (= e!3569963 (Cons!63716 (generalisedConcat!1453 (exprs!5731 (h!70165 zl!343))) (unfocusZipperList!1269 (t!377196 zl!343))))))

(declare-fun b!5816645 () Bool)

(assert (=> b!5816645 (= e!3569963 Nil!63716)))

(assert (= (and d!1831125 c!1030842) b!5816644))

(assert (= (and d!1831125 (not c!1030842)) b!5816645))

(declare-fun m!6753786 () Bool)

(assert (=> d!1831125 m!6753786))

(declare-fun m!6753788 () Bool)

(assert (=> b!5816644 m!6753788))

(declare-fun m!6753790 () Bool)

(assert (=> b!5816644 m!6753790))

(assert (=> b!5816568 d!1831125))

(declare-fun d!1831127 () Bool)

(declare-fun lt!2301501 () Bool)

(declare-fun content!11689 (List!63840) (InoxSet Regex!15847))

(assert (=> d!1831127 (= lt!2301501 (select (content!11689 lt!2301474) (getWitness!914 lt!2301474 lambda!318058)))))

(declare-fun e!3569968 () Bool)

(assert (=> d!1831127 (= lt!2301501 e!3569968)))

(declare-fun res!2452915 () Bool)

(assert (=> d!1831127 (=> (not res!2452915) (not e!3569968))))

(assert (=> d!1831127 (= res!2452915 ((_ is Cons!63716) lt!2301474))))

(assert (=> d!1831127 (= (contains!19887 lt!2301474 (getWitness!914 lt!2301474 lambda!318058)) lt!2301501)))

(declare-fun b!5816650 () Bool)

(declare-fun e!3569969 () Bool)

(assert (=> b!5816650 (= e!3569968 e!3569969)))

(declare-fun res!2452914 () Bool)

(assert (=> b!5816650 (=> res!2452914 e!3569969)))

(assert (=> b!5816650 (= res!2452914 (= (h!70164 lt!2301474) (getWitness!914 lt!2301474 lambda!318058)))))

(declare-fun b!5816651 () Bool)

(assert (=> b!5816651 (= e!3569969 (contains!19887 (t!377195 lt!2301474) (getWitness!914 lt!2301474 lambda!318058)))))

(assert (= (and d!1831127 res!2452915) b!5816650))

(assert (= (and b!5816650 (not res!2452914)) b!5816651))

(declare-fun m!6753792 () Bool)

(assert (=> d!1831127 m!6753792))

(assert (=> d!1831127 m!6753718))

(declare-fun m!6753794 () Bool)

(assert (=> d!1831127 m!6753794))

(assert (=> b!5816651 m!6753718))

(declare-fun m!6753796 () Bool)

(assert (=> b!5816651 m!6753796))

(assert (=> b!5816567 d!1831127))

(declare-fun b!5816679 () Bool)

(declare-fun e!3569987 () Bool)

(declare-fun dynLambda!24939 (Int Regex!15847) Bool)

(assert (=> b!5816679 (= e!3569987 (dynLambda!24939 lambda!318058 (h!70164 lt!2301474)))))

(declare-fun b!5816680 () Bool)

(declare-fun lt!2301506 () Unit!156954)

(declare-fun Unit!156957 () Unit!156954)

(assert (=> b!5816680 (= lt!2301506 Unit!156957)))

(assert (=> b!5816680 false))

(declare-fun e!3569985 () Regex!15847)

(declare-fun head!12282 (List!63840) Regex!15847)

(assert (=> b!5816680 (= e!3569985 (head!12282 lt!2301474))))

(declare-fun d!1831129 () Bool)

(declare-fun e!3569986 () Bool)

(assert (=> d!1831129 e!3569986))

(declare-fun res!2452923 () Bool)

(assert (=> d!1831129 (=> (not res!2452923) (not e!3569986))))

(declare-fun lt!2301507 () Regex!15847)

(assert (=> d!1831129 (= res!2452923 (dynLambda!24939 lambda!318058 lt!2301507))))

(declare-fun e!3569988 () Regex!15847)

(assert (=> d!1831129 (= lt!2301507 e!3569988)))

(declare-fun c!1030852 () Bool)

(assert (=> d!1831129 (= c!1030852 e!3569987)))

(declare-fun res!2452924 () Bool)

(assert (=> d!1831129 (=> (not res!2452924) (not e!3569987))))

(assert (=> d!1831129 (= res!2452924 ((_ is Cons!63716) lt!2301474))))

(assert (=> d!1831129 (exists!2263 lt!2301474 lambda!318058)))

(assert (=> d!1831129 (= (getWitness!914 lt!2301474 lambda!318058) lt!2301507)))

(declare-fun b!5816681 () Bool)

(assert (=> b!5816681 (= e!3569985 (getWitness!914 (t!377195 lt!2301474) lambda!318058))))

(declare-fun b!5816682 () Bool)

(assert (=> b!5816682 (= e!3569988 (h!70164 lt!2301474))))

(declare-fun b!5816683 () Bool)

(assert (=> b!5816683 (= e!3569988 e!3569985)))

(declare-fun c!1030851 () Bool)

(assert (=> b!5816683 (= c!1030851 ((_ is Cons!63716) lt!2301474))))

(declare-fun b!5816684 () Bool)

(assert (=> b!5816684 (= e!3569986 (contains!19887 lt!2301474 lt!2301507))))

(assert (= (and d!1831129 res!2452924) b!5816679))

(assert (= (and d!1831129 c!1030852) b!5816682))

(assert (= (and d!1831129 (not c!1030852)) b!5816683))

(assert (= (and b!5816683 c!1030851) b!5816681))

(assert (= (and b!5816683 (not c!1030851)) b!5816680))

(assert (= (and d!1831129 res!2452923) b!5816684))

(declare-fun b_lambda!219241 () Bool)

(assert (=> (not b_lambda!219241) (not b!5816679)))

(declare-fun b_lambda!219243 () Bool)

(assert (=> (not b_lambda!219243) (not d!1831129)))

(declare-fun m!6753806 () Bool)

(assert (=> b!5816681 m!6753806))

(declare-fun m!6753808 () Bool)

(assert (=> d!1831129 m!6753808))

(assert (=> d!1831129 m!6753734))

(declare-fun m!6753810 () Bool)

(assert (=> b!5816680 m!6753810))

(declare-fun m!6753812 () Bool)

(assert (=> b!5816684 m!6753812))

(declare-fun m!6753814 () Bool)

(assert (=> b!5816679 m!6753814))

(assert (=> b!5816567 d!1831129))

(declare-fun b!5816731 () Bool)

(declare-fun e!3570023 () Bool)

(declare-fun e!3570021 () Bool)

(assert (=> b!5816731 (= e!3570023 e!3570021)))

(declare-fun res!2452952 () Bool)

(declare-fun nullable!5863 (Regex!15847) Bool)

(assert (=> b!5816731 (= res!2452952 (not (nullable!5863 (reg!16176 r!7292))))))

(assert (=> b!5816731 (=> (not res!2452952) (not e!3570021))))

(declare-fun b!5816732 () Bool)

(declare-fun e!3570022 () Bool)

(declare-fun e!3570019 () Bool)

(assert (=> b!5816732 (= e!3570022 e!3570019)))

(declare-fun res!2452954 () Bool)

(assert (=> b!5816732 (=> (not res!2452954) (not e!3570019))))

(declare-fun call!454277 () Bool)

(assert (=> b!5816732 (= res!2452954 call!454277)))

(declare-fun b!5816733 () Bool)

(declare-fun call!454275 () Bool)

(assert (=> b!5816733 (= e!3570021 call!454275)))

(declare-fun d!1831133 () Bool)

(declare-fun res!2452953 () Bool)

(declare-fun e!3570020 () Bool)

(assert (=> d!1831133 (=> res!2452953 e!3570020)))

(assert (=> d!1831133 (= res!2452953 ((_ is ElementMatch!15847) r!7292))))

(assert (=> d!1831133 (= (validRegex!7583 r!7292) e!3570020)))

(declare-fun b!5816734 () Bool)

(assert (=> b!5816734 (= e!3570020 e!3570023)))

(declare-fun c!1030864 () Bool)

(assert (=> b!5816734 (= c!1030864 ((_ is Star!15847) r!7292))))

(declare-fun b!5816735 () Bool)

(declare-fun e!3570017 () Bool)

(assert (=> b!5816735 (= e!3570023 e!3570017)))

(declare-fun c!1030863 () Bool)

(assert (=> b!5816735 (= c!1030863 ((_ is Union!15847) r!7292))))

(declare-fun b!5816736 () Bool)

(declare-fun e!3570018 () Bool)

(declare-fun call!454276 () Bool)

(assert (=> b!5816736 (= e!3570018 call!454276)))

(declare-fun bm!454270 () Bool)

(assert (=> bm!454270 (= call!454276 call!454275)))

(declare-fun bm!454271 () Bool)

(assert (=> bm!454271 (= call!454275 (validRegex!7583 (ite c!1030864 (reg!16176 r!7292) (ite c!1030863 (regTwo!32207 r!7292) (regTwo!32206 r!7292)))))))

(declare-fun b!5816737 () Bool)

(declare-fun res!2452955 () Bool)

(assert (=> b!5816737 (=> res!2452955 e!3570022)))

(assert (=> b!5816737 (= res!2452955 (not ((_ is Concat!24692) r!7292)))))

(assert (=> b!5816737 (= e!3570017 e!3570022)))

(declare-fun b!5816738 () Bool)

(declare-fun res!2452951 () Bool)

(assert (=> b!5816738 (=> (not res!2452951) (not e!3570018))))

(assert (=> b!5816738 (= res!2452951 call!454277)))

(assert (=> b!5816738 (= e!3570017 e!3570018)))

(declare-fun bm!454272 () Bool)

(assert (=> bm!454272 (= call!454277 (validRegex!7583 (ite c!1030863 (regOne!32207 r!7292) (regOne!32206 r!7292))))))

(declare-fun b!5816739 () Bool)

(assert (=> b!5816739 (= e!3570019 call!454276)))

(assert (= (and d!1831133 (not res!2452953)) b!5816734))

(assert (= (and b!5816734 c!1030864) b!5816731))

(assert (= (and b!5816734 (not c!1030864)) b!5816735))

(assert (= (and b!5816731 res!2452952) b!5816733))

(assert (= (and b!5816735 c!1030863) b!5816738))

(assert (= (and b!5816735 (not c!1030863)) b!5816737))

(assert (= (and b!5816738 res!2452951) b!5816736))

(assert (= (and b!5816737 (not res!2452955)) b!5816732))

(assert (= (and b!5816732 res!2452954) b!5816739))

(assert (= (or b!5816736 b!5816739) bm!454270))

(assert (= (or b!5816738 b!5816732) bm!454272))

(assert (= (or b!5816733 bm!454270) bm!454271))

(declare-fun m!6753816 () Bool)

(assert (=> b!5816731 m!6753816))

(declare-fun m!6753818 () Bool)

(assert (=> bm!454271 m!6753818))

(declare-fun m!6753820 () Bool)

(assert (=> bm!454272 m!6753820))

(assert (=> start!595984 d!1831133))

(assert (=> b!5816563 d!1831121))

(declare-fun b!5816792 () Bool)

(assert (=> b!5816792 true))

(assert (=> b!5816792 true))

(declare-fun bs!1372801 () Bool)

(declare-fun b!5816800 () Bool)

(assert (= bs!1372801 (and b!5816800 b!5816792)))

(declare-fun lambda!318097 () Int)

(declare-fun lambda!318095 () Int)

(assert (=> bs!1372801 (not (= lambda!318097 lambda!318095))))

(assert (=> b!5816800 true))

(assert (=> b!5816800 true))

(declare-fun b!5816791 () Bool)

(declare-fun c!1030877 () Bool)

(assert (=> b!5816791 (= c!1030877 ((_ is Union!15847) r!7292))))

(declare-fun e!3570056 () Bool)

(declare-fun e!3570052 () Bool)

(assert (=> b!5816791 (= e!3570056 e!3570052)))

(declare-fun e!3570054 () Bool)

(declare-fun call!454283 () Bool)

(assert (=> b!5816792 (= e!3570054 call!454283)))

(declare-fun b!5816793 () Bool)

(declare-fun e!3570057 () Bool)

(assert (=> b!5816793 (= e!3570052 e!3570057)))

(declare-fun c!1030878 () Bool)

(assert (=> b!5816793 (= c!1030878 ((_ is Star!15847) r!7292))))

(declare-fun b!5816794 () Bool)

(declare-fun e!3570055 () Bool)

(declare-fun call!454284 () Bool)

(assert (=> b!5816794 (= e!3570055 call!454284)))

(declare-fun bm!454278 () Bool)

(declare-fun Exists!2939 (Int) Bool)

(assert (=> bm!454278 (= call!454283 (Exists!2939 (ite c!1030878 lambda!318095 lambda!318097)))))

(declare-fun b!5816795 () Bool)

(assert (=> b!5816795 (= e!3570056 (= s!2326 (Cons!63718 (c!1030825 r!7292) Nil!63718)))))

(declare-fun bm!454279 () Bool)

(declare-fun isEmpty!35622 (List!63842) Bool)

(assert (=> bm!454279 (= call!454284 (isEmpty!35622 s!2326))))

(declare-fun d!1831135 () Bool)

(declare-fun c!1030876 () Bool)

(assert (=> d!1831135 (= c!1030876 ((_ is EmptyExpr!15847) r!7292))))

(assert (=> d!1831135 (= (matchRSpec!2950 r!7292 s!2326) e!3570055)))

(declare-fun b!5816796 () Bool)

(declare-fun c!1030879 () Bool)

(assert (=> b!5816796 (= c!1030879 ((_ is ElementMatch!15847) r!7292))))

(declare-fun e!3570053 () Bool)

(assert (=> b!5816796 (= e!3570053 e!3570056)))

(declare-fun b!5816797 () Bool)

(assert (=> b!5816797 (= e!3570055 e!3570053)))

(declare-fun res!2452984 () Bool)

(assert (=> b!5816797 (= res!2452984 (not ((_ is EmptyLang!15847) r!7292)))))

(assert (=> b!5816797 (=> (not res!2452984) (not e!3570053))))

(declare-fun b!5816798 () Bool)

(declare-fun e!3570058 () Bool)

(assert (=> b!5816798 (= e!3570052 e!3570058)))

(declare-fun res!2452983 () Bool)

(assert (=> b!5816798 (= res!2452983 (matchRSpec!2950 (regOne!32207 r!7292) s!2326))))

(assert (=> b!5816798 (=> res!2452983 e!3570058)))

(declare-fun b!5816799 () Bool)

(declare-fun res!2452985 () Bool)

(assert (=> b!5816799 (=> res!2452985 e!3570054)))

(assert (=> b!5816799 (= res!2452985 call!454284)))

(assert (=> b!5816799 (= e!3570057 e!3570054)))

(assert (=> b!5816800 (= e!3570057 call!454283)))

(declare-fun b!5816801 () Bool)

(assert (=> b!5816801 (= e!3570058 (matchRSpec!2950 (regTwo!32207 r!7292) s!2326))))

(assert (= (and d!1831135 c!1030876) b!5816794))

(assert (= (and d!1831135 (not c!1030876)) b!5816797))

(assert (= (and b!5816797 res!2452984) b!5816796))

(assert (= (and b!5816796 c!1030879) b!5816795))

(assert (= (and b!5816796 (not c!1030879)) b!5816791))

(assert (= (and b!5816791 c!1030877) b!5816798))

(assert (= (and b!5816791 (not c!1030877)) b!5816793))

(assert (= (and b!5816798 (not res!2452983)) b!5816801))

(assert (= (and b!5816793 c!1030878) b!5816799))

(assert (= (and b!5816793 (not c!1030878)) b!5816800))

(assert (= (and b!5816799 (not res!2452985)) b!5816792))

(assert (= (or b!5816792 b!5816800) bm!454278))

(assert (= (or b!5816794 b!5816799) bm!454279))

(declare-fun m!6753846 () Bool)

(assert (=> bm!454278 m!6753846))

(declare-fun m!6753848 () Bool)

(assert (=> bm!454279 m!6753848))

(declare-fun m!6753852 () Bool)

(assert (=> b!5816798 m!6753852))

(declare-fun m!6753856 () Bool)

(assert (=> b!5816801 m!6753856))

(assert (=> b!5816562 d!1831135))

(declare-fun bm!454289 () Bool)

(declare-fun call!454294 () Bool)

(assert (=> bm!454289 (= call!454294 (isEmpty!35622 s!2326))))

(declare-fun b!5816864 () Bool)

(declare-fun e!3570103 () Bool)

(declare-fun derivativeStep!4604 (Regex!15847 C!31964) Regex!15847)

(declare-fun head!12283 (List!63842) C!31964)

(declare-fun tail!11376 (List!63842) List!63842)

(assert (=> b!5816864 (= e!3570103 (matchR!8032 (derivativeStep!4604 r!7292 (head!12283 s!2326)) (tail!11376 s!2326)))))

(declare-fun b!5816868 () Bool)

(declare-fun e!3570097 () Bool)

(assert (=> b!5816868 (= e!3570097 (= (head!12283 s!2326) (c!1030825 r!7292)))))

(declare-fun b!5816870 () Bool)

(declare-fun e!3570105 () Bool)

(assert (=> b!5816870 (= e!3570105 (not (= (head!12283 s!2326) (c!1030825 r!7292))))))

(declare-fun b!5816871 () Bool)

(declare-fun res!2453026 () Bool)

(assert (=> b!5816871 (=> (not res!2453026) (not e!3570097))))

(assert (=> b!5816871 (= res!2453026 (isEmpty!35622 (tail!11376 s!2326)))))

(declare-fun b!5816866 () Bool)

(declare-fun e!3570099 () Bool)

(assert (=> b!5816866 (= e!3570099 e!3570105)))

(declare-fun res!2453017 () Bool)

(assert (=> b!5816866 (=> res!2453017 e!3570105)))

(assert (=> b!5816866 (= res!2453017 call!454294)))

(declare-fun d!1831149 () Bool)

(declare-fun e!3570101 () Bool)

(assert (=> d!1831149 e!3570101))

(declare-fun c!1030894 () Bool)

(assert (=> d!1831149 (= c!1030894 ((_ is EmptyExpr!15847) r!7292))))

(declare-fun lt!2301525 () Bool)

(assert (=> d!1831149 (= lt!2301525 e!3570103)))

(declare-fun c!1030893 () Bool)

(assert (=> d!1831149 (= c!1030893 (isEmpty!35622 s!2326))))

(assert (=> d!1831149 (validRegex!7583 r!7292)))

(assert (=> d!1831149 (= (matchR!8032 r!7292 s!2326) lt!2301525)))

(declare-fun b!5816873 () Bool)

(declare-fun res!2453015 () Bool)

(assert (=> b!5816873 (=> (not res!2453015) (not e!3570097))))

(assert (=> b!5816873 (= res!2453015 (not call!454294))))

(declare-fun b!5816875 () Bool)

(declare-fun res!2453019 () Bool)

(assert (=> b!5816875 (=> res!2453019 e!3570105)))

(assert (=> b!5816875 (= res!2453019 (not (isEmpty!35622 (tail!11376 s!2326))))))

(declare-fun b!5816876 () Bool)

(declare-fun e!3570092 () Bool)

(assert (=> b!5816876 (= e!3570092 (not lt!2301525))))

(declare-fun b!5816877 () Bool)

(assert (=> b!5816877 (= e!3570101 e!3570092)))

(declare-fun c!1030896 () Bool)

(assert (=> b!5816877 (= c!1030896 ((_ is EmptyLang!15847) r!7292))))

(declare-fun b!5816878 () Bool)

(assert (=> b!5816878 (= e!3570103 (nullable!5863 r!7292))))

(declare-fun b!5816879 () Bool)

(declare-fun res!2453024 () Bool)

(declare-fun e!3570095 () Bool)

(assert (=> b!5816879 (=> res!2453024 e!3570095)))

(assert (=> b!5816879 (= res!2453024 (not ((_ is ElementMatch!15847) r!7292)))))

(assert (=> b!5816879 (= e!3570092 e!3570095)))

(declare-fun b!5816880 () Bool)

(assert (=> b!5816880 (= e!3570101 (= lt!2301525 call!454294))))

(declare-fun b!5816881 () Bool)

(declare-fun res!2453025 () Bool)

(assert (=> b!5816881 (=> res!2453025 e!3570095)))

(assert (=> b!5816881 (= res!2453025 e!3570097)))

(declare-fun res!2453021 () Bool)

(assert (=> b!5816881 (=> (not res!2453021) (not e!3570097))))

(assert (=> b!5816881 (= res!2453021 lt!2301525)))

(declare-fun b!5816882 () Bool)

(assert (=> b!5816882 (= e!3570095 e!3570099)))

(declare-fun res!2453023 () Bool)

(assert (=> b!5816882 (=> (not res!2453023) (not e!3570099))))

(assert (=> b!5816882 (= res!2453023 (not lt!2301525))))

(assert (= (and d!1831149 c!1030893) b!5816878))

(assert (= (and d!1831149 (not c!1030893)) b!5816864))

(assert (= (and d!1831149 c!1030894) b!5816880))

(assert (= (and d!1831149 (not c!1030894)) b!5816877))

(assert (= (and b!5816877 c!1030896) b!5816876))

(assert (= (and b!5816877 (not c!1030896)) b!5816879))

(assert (= (and b!5816879 (not res!2453024)) b!5816881))

(assert (= (and b!5816881 res!2453021) b!5816873))

(assert (= (and b!5816873 res!2453015) b!5816871))

(assert (= (and b!5816871 res!2453026) b!5816868))

(assert (= (and b!5816881 (not res!2453025)) b!5816882))

(assert (= (and b!5816882 res!2453023) b!5816866))

(assert (= (and b!5816866 (not res!2453017)) b!5816875))

(assert (= (and b!5816875 (not res!2453019)) b!5816870))

(assert (= (or b!5816880 b!5816866 b!5816873) bm!454289))

(declare-fun m!6753874 () Bool)

(assert (=> b!5816875 m!6753874))

(assert (=> b!5816875 m!6753874))

(declare-fun m!6753876 () Bool)

(assert (=> b!5816875 m!6753876))

(assert (=> d!1831149 m!6753848))

(assert (=> d!1831149 m!6753722))

(declare-fun m!6753878 () Bool)

(assert (=> b!5816870 m!6753878))

(assert (=> bm!454289 m!6753848))

(assert (=> b!5816868 m!6753878))

(declare-fun m!6753880 () Bool)

(assert (=> b!5816878 m!6753880))

(assert (=> b!5816871 m!6753874))

(assert (=> b!5816871 m!6753874))

(assert (=> b!5816871 m!6753876))

(assert (=> b!5816864 m!6753878))

(assert (=> b!5816864 m!6753878))

(declare-fun m!6753882 () Bool)

(assert (=> b!5816864 m!6753882))

(assert (=> b!5816864 m!6753874))

(assert (=> b!5816864 m!6753882))

(assert (=> b!5816864 m!6753874))

(declare-fun m!6753884 () Bool)

(assert (=> b!5816864 m!6753884))

(assert (=> b!5816562 d!1831149))

(declare-fun d!1831157 () Bool)

(assert (=> d!1831157 (= (matchR!8032 r!7292 s!2326) (matchRSpec!2950 r!7292 s!2326))))

(declare-fun lt!2301528 () Unit!156954)

(declare-fun choose!44212 (Regex!15847 List!63842) Unit!156954)

(assert (=> d!1831157 (= lt!2301528 (choose!44212 r!7292 s!2326))))

(assert (=> d!1831157 (validRegex!7583 r!7292)))

(assert (=> d!1831157 (= (mainMatchTheorem!2950 r!7292 s!2326) lt!2301528)))

(declare-fun bs!1372813 () Bool)

(assert (= bs!1372813 d!1831157))

(assert (=> bs!1372813 m!6753728))

(assert (=> bs!1372813 m!6753726))

(declare-fun m!6753888 () Bool)

(assert (=> bs!1372813 m!6753888))

(assert (=> bs!1372813 m!6753722))

(assert (=> b!5816562 d!1831157))

(declare-fun b!5816949 () Bool)

(declare-fun e!3570132 () Bool)

(declare-fun tp!1604978 () Bool)

(declare-fun tp!1604981 () Bool)

(assert (=> b!5816949 (= e!3570132 (and tp!1604978 tp!1604981))))

(declare-fun b!5816951 () Bool)

(declare-fun tp!1604980 () Bool)

(declare-fun tp!1604977 () Bool)

(assert (=> b!5816951 (= e!3570132 (and tp!1604980 tp!1604977))))

(assert (=> b!5816561 (= tp!1604901 e!3570132)))

(declare-fun b!5816950 () Bool)

(declare-fun tp!1604979 () Bool)

(assert (=> b!5816950 (= e!3570132 tp!1604979)))

(declare-fun b!5816948 () Bool)

(assert (=> b!5816948 (= e!3570132 tp_is_empty!40947)))

(assert (= (and b!5816561 ((_ is ElementMatch!15847) (regOne!32207 r!7292))) b!5816948))

(assert (= (and b!5816561 ((_ is Concat!24692) (regOne!32207 r!7292))) b!5816949))

(assert (= (and b!5816561 ((_ is Star!15847) (regOne!32207 r!7292))) b!5816950))

(assert (= (and b!5816561 ((_ is Union!15847) (regOne!32207 r!7292))) b!5816951))

(declare-fun b!5816954 () Bool)

(declare-fun e!3570134 () Bool)

(declare-fun tp!1604983 () Bool)

(declare-fun tp!1604986 () Bool)

(assert (=> b!5816954 (= e!3570134 (and tp!1604983 tp!1604986))))

(declare-fun b!5816956 () Bool)

(declare-fun tp!1604985 () Bool)

(declare-fun tp!1604982 () Bool)

(assert (=> b!5816956 (= e!3570134 (and tp!1604985 tp!1604982))))

(assert (=> b!5816561 (= tp!1604900 e!3570134)))

(declare-fun b!5816955 () Bool)

(declare-fun tp!1604984 () Bool)

(assert (=> b!5816955 (= e!3570134 tp!1604984)))

(declare-fun b!5816953 () Bool)

(assert (=> b!5816953 (= e!3570134 tp_is_empty!40947)))

(assert (= (and b!5816561 ((_ is ElementMatch!15847) (regTwo!32207 r!7292))) b!5816953))

(assert (= (and b!5816561 ((_ is Concat!24692) (regTwo!32207 r!7292))) b!5816954))

(assert (= (and b!5816561 ((_ is Star!15847) (regTwo!32207 r!7292))) b!5816955))

(assert (= (and b!5816561 ((_ is Union!15847) (regTwo!32207 r!7292))) b!5816956))

(declare-fun condSetEmpty!39232 () Bool)

(assert (=> setNonEmpty!39226 (= condSetEmpty!39232 (= setRest!39226 ((as const (Array Context!10462 Bool)) false)))))

(declare-fun setRes!39232 () Bool)

(assert (=> setNonEmpty!39226 (= tp!1604906 setRes!39232)))

(declare-fun setIsEmpty!39232 () Bool)

(assert (=> setIsEmpty!39232 setRes!39232))

(declare-fun setNonEmpty!39232 () Bool)

(declare-fun e!3570137 () Bool)

(declare-fun setElem!39232 () Context!10462)

(declare-fun tp!1604991 () Bool)

(assert (=> setNonEmpty!39232 (= setRes!39232 (and tp!1604991 (inv!82864 setElem!39232) e!3570137))))

(declare-fun setRest!39232 () (InoxSet Context!10462))

(assert (=> setNonEmpty!39232 (= setRest!39226 ((_ map or) (store ((as const (Array Context!10462 Bool)) false) setElem!39232 true) setRest!39232))))

(declare-fun b!5816961 () Bool)

(declare-fun tp!1604992 () Bool)

(assert (=> b!5816961 (= e!3570137 tp!1604992)))

(assert (= (and setNonEmpty!39226 condSetEmpty!39232) setIsEmpty!39232))

(assert (= (and setNonEmpty!39226 (not condSetEmpty!39232)) setNonEmpty!39232))

(assert (= setNonEmpty!39232 b!5816961))

(declare-fun m!6753900 () Bool)

(assert (=> setNonEmpty!39232 m!6753900))

(declare-fun b!5816969 () Bool)

(declare-fun e!3570143 () Bool)

(declare-fun tp!1604997 () Bool)

(assert (=> b!5816969 (= e!3570143 tp!1604997)))

(declare-fun e!3570142 () Bool)

(declare-fun tp!1604998 () Bool)

(declare-fun b!5816968 () Bool)

(assert (=> b!5816968 (= e!3570142 (and (inv!82864 (h!70165 (t!377196 zl!343))) e!3570143 tp!1604998))))

(assert (=> b!5816570 (= tp!1604899 e!3570142)))

(assert (= b!5816968 b!5816969))

(assert (= (and b!5816570 ((_ is Cons!63717) (t!377196 zl!343))) b!5816968))

(declare-fun m!6753902 () Bool)

(assert (=> b!5816968 m!6753902))

(declare-fun b!5816974 () Bool)

(declare-fun e!3570146 () Bool)

(declare-fun tp!1605003 () Bool)

(declare-fun tp!1605004 () Bool)

(assert (=> b!5816974 (= e!3570146 (and tp!1605003 tp!1605004))))

(assert (=> b!5816564 (= tp!1604908 e!3570146)))

(assert (= (and b!5816564 ((_ is Cons!63716) (exprs!5731 setElem!39226))) b!5816974))

(declare-fun b!5816975 () Bool)

(declare-fun e!3570147 () Bool)

(declare-fun tp!1605005 () Bool)

(declare-fun tp!1605006 () Bool)

(assert (=> b!5816975 (= e!3570147 (and tp!1605005 tp!1605006))))

(assert (=> b!5816574 (= tp!1604903 e!3570147)))

(assert (= (and b!5816574 ((_ is Cons!63716) (exprs!5731 (h!70165 zl!343)))) b!5816975))

(declare-fun b!5816977 () Bool)

(declare-fun e!3570148 () Bool)

(declare-fun tp!1605008 () Bool)

(declare-fun tp!1605011 () Bool)

(assert (=> b!5816977 (= e!3570148 (and tp!1605008 tp!1605011))))

(declare-fun b!5816979 () Bool)

(declare-fun tp!1605010 () Bool)

(declare-fun tp!1605007 () Bool)

(assert (=> b!5816979 (= e!3570148 (and tp!1605010 tp!1605007))))

(assert (=> b!5816573 (= tp!1604904 e!3570148)))

(declare-fun b!5816978 () Bool)

(declare-fun tp!1605009 () Bool)

(assert (=> b!5816978 (= e!3570148 tp!1605009)))

(declare-fun b!5816976 () Bool)

(assert (=> b!5816976 (= e!3570148 tp_is_empty!40947)))

(assert (= (and b!5816573 ((_ is ElementMatch!15847) (regOne!32206 r!7292))) b!5816976))

(assert (= (and b!5816573 ((_ is Concat!24692) (regOne!32206 r!7292))) b!5816977))

(assert (= (and b!5816573 ((_ is Star!15847) (regOne!32206 r!7292))) b!5816978))

(assert (= (and b!5816573 ((_ is Union!15847) (regOne!32206 r!7292))) b!5816979))

(declare-fun b!5816981 () Bool)

(declare-fun e!3570149 () Bool)

(declare-fun tp!1605013 () Bool)

(declare-fun tp!1605016 () Bool)

(assert (=> b!5816981 (= e!3570149 (and tp!1605013 tp!1605016))))

(declare-fun b!5816983 () Bool)

(declare-fun tp!1605015 () Bool)

(declare-fun tp!1605012 () Bool)

(assert (=> b!5816983 (= e!3570149 (and tp!1605015 tp!1605012))))

(assert (=> b!5816573 (= tp!1604907 e!3570149)))

(declare-fun b!5816982 () Bool)

(declare-fun tp!1605014 () Bool)

(assert (=> b!5816982 (= e!3570149 tp!1605014)))

(declare-fun b!5816980 () Bool)

(assert (=> b!5816980 (= e!3570149 tp_is_empty!40947)))

(assert (= (and b!5816573 ((_ is ElementMatch!15847) (regTwo!32206 r!7292))) b!5816980))

(assert (= (and b!5816573 ((_ is Concat!24692) (regTwo!32206 r!7292))) b!5816981))

(assert (= (and b!5816573 ((_ is Star!15847) (regTwo!32206 r!7292))) b!5816982))

(assert (= (and b!5816573 ((_ is Union!15847) (regTwo!32206 r!7292))) b!5816983))

(declare-fun b!5816985 () Bool)

(declare-fun e!3570150 () Bool)

(declare-fun tp!1605018 () Bool)

(declare-fun tp!1605021 () Bool)

(assert (=> b!5816985 (= e!3570150 (and tp!1605018 tp!1605021))))

(declare-fun b!5816987 () Bool)

(declare-fun tp!1605020 () Bool)

(declare-fun tp!1605017 () Bool)

(assert (=> b!5816987 (= e!3570150 (and tp!1605020 tp!1605017))))

(assert (=> b!5816572 (= tp!1604905 e!3570150)))

(declare-fun b!5816986 () Bool)

(declare-fun tp!1605019 () Bool)

(assert (=> b!5816986 (= e!3570150 tp!1605019)))

(declare-fun b!5816984 () Bool)

(assert (=> b!5816984 (= e!3570150 tp_is_empty!40947)))

(assert (= (and b!5816572 ((_ is ElementMatch!15847) (reg!16176 r!7292))) b!5816984))

(assert (= (and b!5816572 ((_ is Concat!24692) (reg!16176 r!7292))) b!5816985))

(assert (= (and b!5816572 ((_ is Star!15847) (reg!16176 r!7292))) b!5816986))

(assert (= (and b!5816572 ((_ is Union!15847) (reg!16176 r!7292))) b!5816987))

(declare-fun b!5816992 () Bool)

(declare-fun e!3570153 () Bool)

(declare-fun tp!1605024 () Bool)

(assert (=> b!5816992 (= e!3570153 (and tp_is_empty!40947 tp!1605024))))

(assert (=> b!5816558 (= tp!1604902 e!3570153)))

(assert (= (and b!5816558 ((_ is Cons!63718) (t!377197 s!2326))) b!5816992))

(declare-fun b_lambda!219249 () Bool)

(assert (= b_lambda!219243 (or b!5816568 b_lambda!219249)))

(declare-fun bs!1372816 () Bool)

(declare-fun d!1831163 () Bool)

(assert (= bs!1372816 (and d!1831163 b!5816568)))

(declare-fun res!2453029 () Bool)

(declare-fun e!3570154 () Bool)

(assert (=> bs!1372816 (=> (not res!2453029) (not e!3570154))))

(assert (=> bs!1372816 (= res!2453029 (validRegex!7583 lt!2301507))))

(assert (=> bs!1372816 (= (dynLambda!24939 lambda!318058 lt!2301507) e!3570154)))

(declare-fun b!5816993 () Bool)

(assert (=> b!5816993 (= e!3570154 (matchR!8032 lt!2301507 s!2326))))

(assert (= (and bs!1372816 res!2453029) b!5816993))

(declare-fun m!6753904 () Bool)

(assert (=> bs!1372816 m!6753904))

(declare-fun m!6753906 () Bool)

(assert (=> b!5816993 m!6753906))

(assert (=> d!1831129 d!1831163))

(declare-fun b_lambda!219251 () Bool)

(assert (= b_lambda!219241 (or b!5816568 b_lambda!219251)))

(declare-fun bs!1372817 () Bool)

(declare-fun d!1831165 () Bool)

(assert (= bs!1372817 (and d!1831165 b!5816568)))

(declare-fun res!2453030 () Bool)

(declare-fun e!3570155 () Bool)

(assert (=> bs!1372817 (=> (not res!2453030) (not e!3570155))))

(assert (=> bs!1372817 (= res!2453030 (validRegex!7583 (h!70164 lt!2301474)))))

(assert (=> bs!1372817 (= (dynLambda!24939 lambda!318058 (h!70164 lt!2301474)) e!3570155)))

(declare-fun b!5816994 () Bool)

(assert (=> b!5816994 (= e!3570155 (matchR!8032 (h!70164 lt!2301474) s!2326))))

(assert (= (and bs!1372817 res!2453030) b!5816994))

(declare-fun m!6753908 () Bool)

(assert (=> bs!1372817 m!6753908))

(declare-fun m!6753910 () Bool)

(assert (=> b!5816994 m!6753910))

(assert (=> b!5816679 d!1831165))

(check-sat (not d!1831109) (not b!5816968) (not setNonEmpty!39232) (not b!5816981) (not b!5816961) (not b!5816644) (not d!1831113) (not b!5816974) (not bs!1372816) (not b!5816868) (not bm!454279) (not d!1831117) (not d!1831111) (not b!5816801) (not b!5816993) (not b!5816985) (not b!5816597) (not b!5816956) (not b!5816731) (not d!1831149) (not bs!1372817) (not b_lambda!219249) (not b!5816870) (not b!5816977) (not b!5816979) (not d!1831123) (not b!5816994) (not b!5816878) (not b!5816969) (not bm!454272) (not b!5816951) (not b!5816949) (not b!5816987) (not b!5816954) tp_is_empty!40947 (not d!1831127) (not b!5816680) (not b!5816950) (not b_lambda!219251) (not b!5816955) (not b!5816975) (not b!5816875) (not d!1831157) (not b!5816798) (not bm!454278) (not d!1831129) (not b!5816978) (not b!5816864) (not b!5816871) (not b!5816992) (not b!5816684) (not bm!454271) (not b!5816681) (not b!5816986) (not bm!454289) (not b!5816983) (not d!1831107) (not b!5816982) (not b!5816651) (not d!1831125))
(check-sat)
