; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281630 () Bool)

(assert start!281630)

(declare-fun b!2885531 () Bool)

(declare-fun e!1824809 () Bool)

(declare-fun tp!925399 () Bool)

(declare-fun tp!925396 () Bool)

(assert (=> b!2885531 (= e!1824809 (and tp!925399 tp!925396))))

(declare-fun b!2885532 () Bool)

(declare-fun tp_is_empty!15209 () Bool)

(assert (=> b!2885532 (= e!1824809 tp_is_empty!15209)))

(declare-fun b!2885533 () Bool)

(declare-fun tp!925395 () Bool)

(assert (=> b!2885533 (= e!1824809 tp!925395)))

(declare-fun b!2885534 () Bool)

(declare-fun tp!925398 () Bool)

(declare-fun tp!925397 () Bool)

(assert (=> b!2885534 (= e!1824809 (and tp!925398 tp!925397))))

(declare-fun res!1195421 () Bool)

(declare-fun e!1824808 () Bool)

(assert (=> start!281630 (=> (not res!1195421) (not e!1824808))))

(declare-datatypes ((C!17804 0))(
  ( (C!17805 (val!10936 Int)) )
))
(declare-datatypes ((Regex!8811 0))(
  ( (ElementMatch!8811 (c!468894 C!17804)) (Concat!14132 (regOne!18134 Regex!8811) (regTwo!18134 Regex!8811)) (EmptyExpr!8811) (Star!8811 (reg!9140 Regex!8811)) (EmptyLang!8811) (Union!8811 (regOne!18135 Regex!8811) (regTwo!18135 Regex!8811)) )
))
(declare-fun r!23079 () Regex!8811)

(declare-fun validRegex!3584 (Regex!8811) Bool)

(assert (=> start!281630 (= res!1195421 (validRegex!3584 r!23079))))

(assert (=> start!281630 e!1824808))

(assert (=> start!281630 e!1824809))

(declare-fun b!2885535 () Bool)

(declare-fun res!1195420 () Bool)

(assert (=> b!2885535 (=> (not res!1195420) (not e!1824808))))

(declare-datatypes ((List!34612 0))(
  ( (Nil!34488) (Cons!34488 (h!39908 C!17804) (t!233655 List!34612)) )
))
(declare-datatypes ((Option!6484 0))(
  ( (None!6483) (Some!6483 (v!34609 List!34612)) )
))
(declare-fun isDefined!5048 (Option!6484) Bool)

(declare-fun getLanguageWitness!518 (Regex!8811) Option!6484)

(assert (=> b!2885535 (= res!1195420 (isDefined!5048 (getLanguageWitness!518 r!23079)))))

(declare-fun b!2885536 () Bool)

(declare-fun regexDepth!73 (Regex!8811) Int)

(assert (=> b!2885536 (= e!1824808 (< (regexDepth!73 r!23079) 0))))

(assert (= (and start!281630 res!1195421) b!2885535))

(assert (= (and b!2885535 res!1195420) b!2885536))

(get-info :version)

(assert (= (and start!281630 ((_ is ElementMatch!8811) r!23079)) b!2885532))

(assert (= (and start!281630 ((_ is Concat!14132) r!23079)) b!2885534))

(assert (= (and start!281630 ((_ is Star!8811) r!23079)) b!2885533))

(assert (= (and start!281630 ((_ is Union!8811) r!23079)) b!2885531))

(declare-fun m!3301059 () Bool)

(assert (=> start!281630 m!3301059))

(declare-fun m!3301061 () Bool)

(assert (=> b!2885535 m!3301061))

(assert (=> b!2885535 m!3301061))

(declare-fun m!3301063 () Bool)

(assert (=> b!2885535 m!3301063))

(declare-fun m!3301065 () Bool)

(assert (=> b!2885536 m!3301065))

(check-sat (not b!2885535) (not b!2885536) (not b!2885534) tp_is_empty!15209 (not b!2885531) (not b!2885533) (not start!281630))
(check-sat)
(get-model)

(declare-fun b!2885598 () Bool)

(declare-fun e!1824856 () Int)

(assert (=> b!2885598 (= e!1824856 1)))

(declare-fun b!2885599 () Bool)

(declare-fun res!1195444 () Bool)

(declare-fun e!1824851 () Bool)

(assert (=> b!2885599 (=> (not res!1195444) (not e!1824851))))

(declare-fun lt!1020623 () Int)

(declare-fun call!187142 () Int)

(assert (=> b!2885599 (= res!1195444 (> lt!1020623 call!187142))))

(declare-fun e!1824855 () Bool)

(assert (=> b!2885599 (= e!1824855 e!1824851)))

(declare-fun b!2885600 () Bool)

(declare-fun e!1824860 () Bool)

(assert (=> b!2885600 (= e!1824860 (= lt!1020623 1))))

(declare-fun b!2885602 () Bool)

(declare-fun e!1824852 () Int)

(declare-fun call!187138 () Int)

(assert (=> b!2885602 (= e!1824852 (+ 1 call!187138))))

(declare-fun b!2885603 () Bool)

(declare-fun call!187141 () Int)

(assert (=> b!2885603 (= e!1824851 (> lt!1020623 call!187141))))

(declare-fun b!2885604 () Bool)

(assert (=> b!2885604 (= e!1824852 1)))

(declare-fun bm!187133 () Bool)

(declare-fun call!187144 () Int)

(declare-fun call!187143 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!187133 (= call!187138 (maxBigInt!0 call!187144 call!187143))))

(declare-fun b!2885605 () Bool)

(declare-fun e!1824859 () Int)

(assert (=> b!2885605 (= e!1824859 e!1824852)))

(declare-fun c!468919 () Bool)

(assert (=> b!2885605 (= c!468919 ((_ is Concat!14132) r!23079))))

(declare-fun b!2885606 () Bool)

(declare-fun c!468915 () Bool)

(assert (=> b!2885606 (= c!468915 ((_ is Star!8811) r!23079))))

(assert (=> b!2885606 (= e!1824855 e!1824860)))

(declare-fun b!2885607 () Bool)

(declare-fun e!1824858 () Int)

(declare-fun call!187139 () Int)

(assert (=> b!2885607 (= e!1824858 (+ 1 call!187139))))

(declare-fun b!2885608 () Bool)

(assert (=> b!2885608 (= e!1824856 e!1824858)))

(declare-fun c!468921 () Bool)

(assert (=> b!2885608 (= c!468921 ((_ is Star!8811) r!23079))))

(declare-fun c!468918 () Bool)

(declare-fun bm!187134 () Bool)

(declare-fun c!468916 () Bool)

(declare-fun call!187140 () Int)

(assert (=> bm!187134 (= call!187140 (regexDepth!73 (ite c!468918 (regTwo!18135 r!23079) (ite c!468916 (regOne!18134 r!23079) (reg!9140 r!23079)))))))

(declare-fun bm!187135 () Bool)

(declare-fun c!468917 () Bool)

(assert (=> bm!187135 (= call!187139 (regexDepth!73 (ite c!468921 (reg!9140 r!23079) (ite c!468917 (regOne!18135 r!23079) (regOne!18134 r!23079)))))))

(declare-fun b!2885601 () Bool)

(assert (=> b!2885601 (= e!1824860 (> lt!1020623 call!187142))))

(declare-fun d!833925 () Bool)

(declare-fun e!1824854 () Bool)

(assert (=> d!833925 e!1824854))

(declare-fun res!1195443 () Bool)

(assert (=> d!833925 (=> (not res!1195443) (not e!1824854))))

(assert (=> d!833925 (= res!1195443 (> lt!1020623 0))))

(assert (=> d!833925 (= lt!1020623 e!1824856)))

(declare-fun c!468920 () Bool)

(assert (=> d!833925 (= c!468920 ((_ is ElementMatch!8811) r!23079))))

(assert (=> d!833925 (= (regexDepth!73 r!23079) lt!1020623)))

(declare-fun b!2885609 () Bool)

(assert (=> b!2885609 (= e!1824859 (+ 1 call!187138))))

(declare-fun bm!187136 () Bool)

(assert (=> bm!187136 (= call!187141 (regexDepth!73 (ite c!468918 (regOne!18135 r!23079) (regTwo!18134 r!23079))))))

(declare-fun bm!187137 () Bool)

(assert (=> bm!187137 (= call!187143 (regexDepth!73 (ite c!468917 (regTwo!18135 r!23079) (regTwo!18134 r!23079))))))

(declare-fun bm!187138 () Bool)

(assert (=> bm!187138 (= call!187142 call!187140)))

(declare-fun b!2885610 () Bool)

(assert (=> b!2885610 (= c!468917 ((_ is Union!8811) r!23079))))

(assert (=> b!2885610 (= e!1824858 e!1824859)))

(declare-fun b!2885611 () Bool)

(declare-fun e!1824853 () Bool)

(assert (=> b!2885611 (= e!1824853 e!1824855)))

(assert (=> b!2885611 (= c!468916 ((_ is Concat!14132) r!23079))))

(declare-fun bm!187139 () Bool)

(assert (=> bm!187139 (= call!187144 call!187139)))

(declare-fun b!2885612 () Bool)

(assert (=> b!2885612 (= e!1824854 e!1824853)))

(assert (=> b!2885612 (= c!468918 ((_ is Union!8811) r!23079))))

(declare-fun b!2885613 () Bool)

(declare-fun e!1824857 () Bool)

(assert (=> b!2885613 (= e!1824853 e!1824857)))

(declare-fun res!1195445 () Bool)

(assert (=> b!2885613 (= res!1195445 (> lt!1020623 call!187141))))

(assert (=> b!2885613 (=> (not res!1195445) (not e!1824857))))

(declare-fun b!2885616 () Bool)

(assert (=> b!2885616 (= e!1824857 (> lt!1020623 call!187140))))

(assert (= (and d!833925 c!468920) b!2885598))

(assert (= (and d!833925 (not c!468920)) b!2885608))

(assert (= (and b!2885608 c!468921) b!2885607))

(assert (= (and b!2885608 (not c!468921)) b!2885610))

(assert (= (and b!2885610 c!468917) b!2885609))

(assert (= (and b!2885610 (not c!468917)) b!2885605))

(assert (= (and b!2885605 c!468919) b!2885602))

(assert (= (and b!2885605 (not c!468919)) b!2885604))

(assert (= (or b!2885609 b!2885602) bm!187139))

(assert (= (or b!2885609 b!2885602) bm!187137))

(assert (= (or b!2885609 b!2885602) bm!187133))

(assert (= (or b!2885607 bm!187139) bm!187135))

(assert (= (and d!833925 res!1195443) b!2885612))

(assert (= (and b!2885612 c!468918) b!2885613))

(assert (= (and b!2885612 (not c!468918)) b!2885611))

(assert (= (and b!2885613 res!1195445) b!2885616))

(assert (= (and b!2885611 c!468916) b!2885599))

(assert (= (and b!2885611 (not c!468916)) b!2885606))

(assert (= (and b!2885599 res!1195444) b!2885603))

(assert (= (and b!2885606 c!468915) b!2885601))

(assert (= (and b!2885606 (not c!468915)) b!2885600))

(assert (= (or b!2885599 b!2885601) bm!187138))

(assert (= (or b!2885616 bm!187138) bm!187134))

(assert (= (or b!2885613 b!2885603) bm!187136))

(declare-fun m!3301073 () Bool)

(assert (=> bm!187136 m!3301073))

(declare-fun m!3301075 () Bool)

(assert (=> bm!187134 m!3301075))

(declare-fun m!3301077 () Bool)

(assert (=> bm!187137 m!3301077))

(declare-fun m!3301079 () Bool)

(assert (=> bm!187135 m!3301079))

(declare-fun m!3301081 () Bool)

(assert (=> bm!187133 m!3301081))

(assert (=> b!2885536 d!833925))

(declare-fun b!2885667 () Bool)

(declare-fun e!1824901 () Bool)

(declare-fun e!1824897 () Bool)

(assert (=> b!2885667 (= e!1824901 e!1824897)))

(declare-fun res!1195464 () Bool)

(declare-fun nullable!2712 (Regex!8811) Bool)

(assert (=> b!2885667 (= res!1195464 (not (nullable!2712 (reg!9140 r!23079))))))

(assert (=> b!2885667 (=> (not res!1195464) (not e!1824897))))

(declare-fun d!833931 () Bool)

(declare-fun res!1195466 () Bool)

(declare-fun e!1824896 () Bool)

(assert (=> d!833931 (=> res!1195466 e!1824896)))

(assert (=> d!833931 (= res!1195466 ((_ is ElementMatch!8811) r!23079))))

(assert (=> d!833931 (= (validRegex!3584 r!23079) e!1824896)))

(declare-fun b!2885668 () Bool)

(declare-fun res!1195465 () Bool)

(declare-fun e!1824898 () Bool)

(assert (=> b!2885668 (=> (not res!1195465) (not e!1824898))))

(declare-fun call!187166 () Bool)

(assert (=> b!2885668 (= res!1195465 call!187166)))

(declare-fun e!1824900 () Bool)

(assert (=> b!2885668 (= e!1824900 e!1824898)))

(declare-fun c!468940 () Bool)

(declare-fun bm!187160 () Bool)

(declare-fun call!187167 () Bool)

(declare-fun c!468941 () Bool)

(assert (=> bm!187160 (= call!187167 (validRegex!3584 (ite c!468941 (reg!9140 r!23079) (ite c!468940 (regTwo!18135 r!23079) (regTwo!18134 r!23079)))))))

(declare-fun b!2885669 () Bool)

(declare-fun e!1824899 () Bool)

(declare-fun call!187165 () Bool)

(assert (=> b!2885669 (= e!1824899 call!187165)))

(declare-fun b!2885670 () Bool)

(assert (=> b!2885670 (= e!1824897 call!187167)))

(declare-fun b!2885671 () Bool)

(assert (=> b!2885671 (= e!1824898 call!187165)))

(declare-fun bm!187161 () Bool)

(assert (=> bm!187161 (= call!187165 call!187167)))

(declare-fun b!2885672 () Bool)

(declare-fun e!1824895 () Bool)

(assert (=> b!2885672 (= e!1824895 e!1824899)))

(declare-fun res!1195462 () Bool)

(assert (=> b!2885672 (=> (not res!1195462) (not e!1824899))))

(assert (=> b!2885672 (= res!1195462 call!187166)))

(declare-fun bm!187162 () Bool)

(assert (=> bm!187162 (= call!187166 (validRegex!3584 (ite c!468940 (regOne!18135 r!23079) (regOne!18134 r!23079))))))

(declare-fun b!2885673 () Bool)

(assert (=> b!2885673 (= e!1824901 e!1824900)))

(assert (=> b!2885673 (= c!468940 ((_ is Union!8811) r!23079))))

(declare-fun b!2885674 () Bool)

(assert (=> b!2885674 (= e!1824896 e!1824901)))

(assert (=> b!2885674 (= c!468941 ((_ is Star!8811) r!23079))))

(declare-fun b!2885675 () Bool)

(declare-fun res!1195463 () Bool)

(assert (=> b!2885675 (=> res!1195463 e!1824895)))

(assert (=> b!2885675 (= res!1195463 (not ((_ is Concat!14132) r!23079)))))

(assert (=> b!2885675 (= e!1824900 e!1824895)))

(assert (= (and d!833931 (not res!1195466)) b!2885674))

(assert (= (and b!2885674 c!468941) b!2885667))

(assert (= (and b!2885674 (not c!468941)) b!2885673))

(assert (= (and b!2885667 res!1195464) b!2885670))

(assert (= (and b!2885673 c!468940) b!2885668))

(assert (= (and b!2885673 (not c!468940)) b!2885675))

(assert (= (and b!2885668 res!1195465) b!2885671))

(assert (= (and b!2885675 (not res!1195463)) b!2885672))

(assert (= (and b!2885672 res!1195462) b!2885669))

(assert (= (or b!2885671 b!2885669) bm!187161))

(assert (= (or b!2885668 b!2885672) bm!187162))

(assert (= (or b!2885670 bm!187161) bm!187160))

(declare-fun m!3301083 () Bool)

(assert (=> b!2885667 m!3301083))

(declare-fun m!3301085 () Bool)

(assert (=> bm!187160 m!3301085))

(declare-fun m!3301087 () Bool)

(assert (=> bm!187162 m!3301087))

(assert (=> start!281630 d!833931))

(declare-fun d!833933 () Bool)

(declare-fun isEmpty!18778 (Option!6484) Bool)

(assert (=> d!833933 (= (isDefined!5048 (getLanguageWitness!518 r!23079)) (not (isEmpty!18778 (getLanguageWitness!518 r!23079))))))

(declare-fun bs!523819 () Bool)

(assert (= bs!523819 d!833933))

(assert (=> bs!523819 m!3301061))

(declare-fun m!3301089 () Bool)

(assert (=> bs!523819 m!3301089))

(assert (=> b!2885535 d!833933))

(declare-fun b!2885757 () Bool)

(declare-fun c!468983 () Bool)

(declare-fun lt!1020640 () Option!6484)

(assert (=> b!2885757 (= c!468983 ((_ is Some!6483) lt!1020640))))

(declare-fun call!187184 () Option!6484)

(assert (=> b!2885757 (= lt!1020640 call!187184)))

(declare-fun e!1824944 () Option!6484)

(declare-fun e!1824949 () Option!6484)

(assert (=> b!2885757 (= e!1824944 e!1824949)))

(declare-fun b!2885758 () Bool)

(declare-fun e!1824946 () Option!6484)

(declare-fun e!1824947 () Option!6484)

(assert (=> b!2885758 (= e!1824946 e!1824947)))

(declare-fun lt!1020641 () Option!6484)

(assert (=> b!2885758 (= lt!1020641 call!187184)))

(declare-fun c!468982 () Bool)

(assert (=> b!2885758 (= c!468982 ((_ is Some!6483) lt!1020641))))

(declare-fun b!2885759 () Bool)

(assert (=> b!2885759 (= e!1824947 lt!1020641)))

(declare-fun d!833935 () Bool)

(declare-fun c!468984 () Bool)

(assert (=> d!833935 (= c!468984 ((_ is EmptyExpr!8811) r!23079))))

(declare-fun e!1824951 () Option!6484)

(assert (=> d!833935 (= (getLanguageWitness!518 r!23079) e!1824951)))

(declare-fun b!2885760 () Bool)

(declare-fun c!468986 () Bool)

(assert (=> b!2885760 (= c!468986 ((_ is Union!8811) r!23079))))

(declare-fun e!1824945 () Option!6484)

(assert (=> b!2885760 (= e!1824945 e!1824946)))

(declare-fun b!2885761 () Bool)

(assert (=> b!2885761 (= e!1824949 None!6483)))

(declare-fun b!2885762 () Bool)

(declare-fun e!1824950 () Option!6484)

(assert (=> b!2885762 (= e!1824950 e!1824945)))

(declare-fun c!468988 () Bool)

(assert (=> b!2885762 (= c!468988 ((_ is Star!8811) r!23079))))

(declare-fun b!2885763 () Bool)

(assert (=> b!2885763 (= e!1824944 None!6483)))

(declare-fun b!2885764 () Bool)

(declare-fun lt!1020639 () Option!6484)

(declare-fun ++!8210 (List!34612 List!34612) List!34612)

(assert (=> b!2885764 (= e!1824949 (Some!6483 (++!8210 (v!34609 lt!1020639) (v!34609 lt!1020640))))))

(declare-fun b!2885765 () Bool)

(declare-fun e!1824948 () Option!6484)

(assert (=> b!2885765 (= e!1824948 None!6483)))

(declare-fun b!2885766 () Bool)

(assert (=> b!2885766 (= e!1824946 e!1824944)))

(declare-fun call!187183 () Option!6484)

(assert (=> b!2885766 (= lt!1020639 call!187183)))

(declare-fun c!468987 () Bool)

(assert (=> b!2885766 (= c!468987 ((_ is Some!6483) lt!1020639))))

(declare-fun b!2885767 () Bool)

(assert (=> b!2885767 (= e!1824950 (Some!6483 (Cons!34488 (c!468894 r!23079) Nil!34488)))))

(declare-fun b!2885768 () Bool)

(assert (=> b!2885768 (= e!1824947 call!187183)))

(declare-fun b!2885769 () Bool)

(assert (=> b!2885769 (= e!1824951 e!1824948)))

(declare-fun c!468981 () Bool)

(assert (=> b!2885769 (= c!468981 ((_ is EmptyLang!8811) r!23079))))

(declare-fun bm!187178 () Bool)

(assert (=> bm!187178 (= call!187184 (getLanguageWitness!518 (ite c!468986 (regOne!18135 r!23079) (regTwo!18134 r!23079))))))

(declare-fun b!2885770 () Bool)

(assert (=> b!2885770 (= e!1824945 (Some!6483 Nil!34488))))

(declare-fun b!2885771 () Bool)

(assert (=> b!2885771 (= e!1824951 (Some!6483 Nil!34488))))

(declare-fun bm!187179 () Bool)

(assert (=> bm!187179 (= call!187183 (getLanguageWitness!518 (ite c!468986 (regTwo!18135 r!23079) (regOne!18134 r!23079))))))

(declare-fun b!2885772 () Bool)

(declare-fun c!468985 () Bool)

(assert (=> b!2885772 (= c!468985 ((_ is ElementMatch!8811) r!23079))))

(assert (=> b!2885772 (= e!1824948 e!1824950)))

(assert (= (and d!833935 c!468984) b!2885771))

(assert (= (and d!833935 (not c!468984)) b!2885769))

(assert (= (and b!2885769 c!468981) b!2885765))

(assert (= (and b!2885769 (not c!468981)) b!2885772))

(assert (= (and b!2885772 c!468985) b!2885767))

(assert (= (and b!2885772 (not c!468985)) b!2885762))

(assert (= (and b!2885762 c!468988) b!2885770))

(assert (= (and b!2885762 (not c!468988)) b!2885760))

(assert (= (and b!2885760 c!468986) b!2885758))

(assert (= (and b!2885760 (not c!468986)) b!2885766))

(assert (= (and b!2885758 c!468982) b!2885759))

(assert (= (and b!2885758 (not c!468982)) b!2885768))

(assert (= (and b!2885766 c!468987) b!2885757))

(assert (= (and b!2885766 (not c!468987)) b!2885763))

(assert (= (and b!2885757 c!468983) b!2885764))

(assert (= (and b!2885757 (not c!468983)) b!2885761))

(assert (= (or b!2885768 b!2885766) bm!187179))

(assert (= (or b!2885758 b!2885757) bm!187178))

(declare-fun m!3301103 () Bool)

(assert (=> b!2885764 m!3301103))

(declare-fun m!3301105 () Bool)

(assert (=> bm!187178 m!3301105))

(declare-fun m!3301107 () Bool)

(assert (=> bm!187179 m!3301107))

(assert (=> b!2885535 d!833935))

(declare-fun b!2885785 () Bool)

(declare-fun e!1824954 () Bool)

(declare-fun tp!925410 () Bool)

(assert (=> b!2885785 (= e!1824954 tp!925410)))

(declare-fun b!2885784 () Bool)

(declare-fun tp!925413 () Bool)

(declare-fun tp!925414 () Bool)

(assert (=> b!2885784 (= e!1824954 (and tp!925413 tp!925414))))

(assert (=> b!2885531 (= tp!925399 e!1824954)))

(declare-fun b!2885783 () Bool)

(assert (=> b!2885783 (= e!1824954 tp_is_empty!15209)))

(declare-fun b!2885786 () Bool)

(declare-fun tp!925411 () Bool)

(declare-fun tp!925412 () Bool)

(assert (=> b!2885786 (= e!1824954 (and tp!925411 tp!925412))))

(assert (= (and b!2885531 ((_ is ElementMatch!8811) (regOne!18135 r!23079))) b!2885783))

(assert (= (and b!2885531 ((_ is Concat!14132) (regOne!18135 r!23079))) b!2885784))

(assert (= (and b!2885531 ((_ is Star!8811) (regOne!18135 r!23079))) b!2885785))

(assert (= (and b!2885531 ((_ is Union!8811) (regOne!18135 r!23079))) b!2885786))

(declare-fun b!2885789 () Bool)

(declare-fun e!1824955 () Bool)

(declare-fun tp!925415 () Bool)

(assert (=> b!2885789 (= e!1824955 tp!925415)))

(declare-fun b!2885788 () Bool)

(declare-fun tp!925418 () Bool)

(declare-fun tp!925419 () Bool)

(assert (=> b!2885788 (= e!1824955 (and tp!925418 tp!925419))))

(assert (=> b!2885531 (= tp!925396 e!1824955)))

(declare-fun b!2885787 () Bool)

(assert (=> b!2885787 (= e!1824955 tp_is_empty!15209)))

(declare-fun b!2885790 () Bool)

(declare-fun tp!925416 () Bool)

(declare-fun tp!925417 () Bool)

(assert (=> b!2885790 (= e!1824955 (and tp!925416 tp!925417))))

(assert (= (and b!2885531 ((_ is ElementMatch!8811) (regTwo!18135 r!23079))) b!2885787))

(assert (= (and b!2885531 ((_ is Concat!14132) (regTwo!18135 r!23079))) b!2885788))

(assert (= (and b!2885531 ((_ is Star!8811) (regTwo!18135 r!23079))) b!2885789))

(assert (= (and b!2885531 ((_ is Union!8811) (regTwo!18135 r!23079))) b!2885790))

(declare-fun b!2885793 () Bool)

(declare-fun e!1824956 () Bool)

(declare-fun tp!925420 () Bool)

(assert (=> b!2885793 (= e!1824956 tp!925420)))

(declare-fun b!2885792 () Bool)

(declare-fun tp!925423 () Bool)

(declare-fun tp!925424 () Bool)

(assert (=> b!2885792 (= e!1824956 (and tp!925423 tp!925424))))

(assert (=> b!2885534 (= tp!925398 e!1824956)))

(declare-fun b!2885791 () Bool)

(assert (=> b!2885791 (= e!1824956 tp_is_empty!15209)))

(declare-fun b!2885794 () Bool)

(declare-fun tp!925421 () Bool)

(declare-fun tp!925422 () Bool)

(assert (=> b!2885794 (= e!1824956 (and tp!925421 tp!925422))))

(assert (= (and b!2885534 ((_ is ElementMatch!8811) (regOne!18134 r!23079))) b!2885791))

(assert (= (and b!2885534 ((_ is Concat!14132) (regOne!18134 r!23079))) b!2885792))

(assert (= (and b!2885534 ((_ is Star!8811) (regOne!18134 r!23079))) b!2885793))

(assert (= (and b!2885534 ((_ is Union!8811) (regOne!18134 r!23079))) b!2885794))

(declare-fun b!2885797 () Bool)

(declare-fun e!1824957 () Bool)

(declare-fun tp!925425 () Bool)

(assert (=> b!2885797 (= e!1824957 tp!925425)))

(declare-fun b!2885796 () Bool)

(declare-fun tp!925428 () Bool)

(declare-fun tp!925429 () Bool)

(assert (=> b!2885796 (= e!1824957 (and tp!925428 tp!925429))))

(assert (=> b!2885534 (= tp!925397 e!1824957)))

(declare-fun b!2885795 () Bool)

(assert (=> b!2885795 (= e!1824957 tp_is_empty!15209)))

(declare-fun b!2885798 () Bool)

(declare-fun tp!925426 () Bool)

(declare-fun tp!925427 () Bool)

(assert (=> b!2885798 (= e!1824957 (and tp!925426 tp!925427))))

(assert (= (and b!2885534 ((_ is ElementMatch!8811) (regTwo!18134 r!23079))) b!2885795))

(assert (= (and b!2885534 ((_ is Concat!14132) (regTwo!18134 r!23079))) b!2885796))

(assert (= (and b!2885534 ((_ is Star!8811) (regTwo!18134 r!23079))) b!2885797))

(assert (= (and b!2885534 ((_ is Union!8811) (regTwo!18134 r!23079))) b!2885798))

(declare-fun b!2885801 () Bool)

(declare-fun e!1824958 () Bool)

(declare-fun tp!925430 () Bool)

(assert (=> b!2885801 (= e!1824958 tp!925430)))

(declare-fun b!2885800 () Bool)

(declare-fun tp!925433 () Bool)

(declare-fun tp!925434 () Bool)

(assert (=> b!2885800 (= e!1824958 (and tp!925433 tp!925434))))

(assert (=> b!2885533 (= tp!925395 e!1824958)))

(declare-fun b!2885799 () Bool)

(assert (=> b!2885799 (= e!1824958 tp_is_empty!15209)))

(declare-fun b!2885802 () Bool)

(declare-fun tp!925431 () Bool)

(declare-fun tp!925432 () Bool)

(assert (=> b!2885802 (= e!1824958 (and tp!925431 tp!925432))))

(assert (= (and b!2885533 ((_ is ElementMatch!8811) (reg!9140 r!23079))) b!2885799))

(assert (= (and b!2885533 ((_ is Concat!14132) (reg!9140 r!23079))) b!2885800))

(assert (= (and b!2885533 ((_ is Star!8811) (reg!9140 r!23079))) b!2885801))

(assert (= (and b!2885533 ((_ is Union!8811) (reg!9140 r!23079))) b!2885802))

(check-sat (not bm!187160) (not b!2885764) (not b!2885801) (not b!2885796) (not bm!187179) (not b!2885786) (not bm!187136) (not d!833933) (not b!2885667) (not b!2885797) (not b!2885798) (not b!2885790) (not bm!187134) (not bm!187178) (not bm!187135) (not b!2885792) (not b!2885794) (not b!2885788) (not b!2885793) (not bm!187137) (not b!2885802) tp_is_empty!15209 (not b!2885784) (not b!2885789) (not b!2885785) (not bm!187162) (not bm!187133) (not b!2885800))
(check-sat)
