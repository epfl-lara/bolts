; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!660964 () Bool)

(assert start!660964)

(declare-fun res!2792922 () Bool)

(declare-fun e!4125526 () Bool)

(assert (=> start!660964 (=> (not res!2792922) (not e!4125526))))

(declare-datatypes ((C!33592 0))(
  ( (C!33593 (val!26498 Int)) )
))
(declare-datatypes ((Regex!16661 0))(
  ( (ElementMatch!16661 (c!1273541 C!33592)) (Concat!25506 (regOne!33834 Regex!16661) (regTwo!33834 Regex!16661)) (EmptyExpr!16661) (Star!16661 (reg!16990 Regex!16661)) (EmptyLang!16661) (Union!16661 (regOne!33835 Regex!16661) (regTwo!33835 Regex!16661)) )
))
(declare-fun r!7292 () Regex!16661)

(declare-fun validRegex!8397 (Regex!16661) Bool)

(assert (=> start!660964 (= res!2792922 (validRegex!8397 r!7292))))

(assert (=> start!660964 e!4125526))

(declare-fun e!4125523 () Bool)

(assert (=> start!660964 e!4125523))

(declare-fun condSetEmpty!47003 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!66282 0))(
  ( (Nil!66158) (Cons!66158 (h!72606 Regex!16661) (t!380025 List!66282)) )
))
(declare-datatypes ((Context!12090 0))(
  ( (Context!12091 (exprs!6545 List!66282)) )
))
(declare-fun z!1189 () (InoxSet Context!12090))

(assert (=> start!660964 (= condSetEmpty!47003 (= z!1189 ((as const (Array Context!12090 Bool)) false)))))

(declare-fun setRes!47003 () Bool)

(assert (=> start!660964 setRes!47003))

(declare-fun e!4125521 () Bool)

(assert (=> start!660964 e!4125521))

(declare-fun e!4125524 () Bool)

(assert (=> start!660964 e!4125524))

(declare-fun setIsEmpty!47003 () Bool)

(assert (=> setIsEmpty!47003 setRes!47003))

(declare-fun b!6840493 () Bool)

(declare-fun res!2792923 () Bool)

(declare-fun e!4125525 () Bool)

(assert (=> b!6840493 (=> res!2792923 e!4125525)))

(declare-datatypes ((List!66283 0))(
  ( (Nil!66159) (Cons!66159 (h!72607 Context!12090) (t!380026 List!66283)) )
))
(declare-fun zl!343 () List!66283)

(declare-datatypes ((List!66284 0))(
  ( (Nil!66160) (Cons!66160 (h!72608 C!33592) (t!380027 List!66284)) )
))
(declare-fun s!2326 () List!66284)

(get-info :version)

(assert (=> b!6840493 (= res!2792923 (or (not ((_ is Cons!66159) zl!343)) (not ((_ is Nil!66160) s!2326))))))

(declare-fun b!6840494 () Bool)

(declare-fun tp!1873122 () Bool)

(declare-fun tp!1873125 () Bool)

(assert (=> b!6840494 (= e!4125523 (and tp!1873122 tp!1873125))))

(declare-fun b!6840495 () Bool)

(declare-fun tp_is_empty!42575 () Bool)

(declare-fun tp!1873124 () Bool)

(assert (=> b!6840495 (= e!4125524 (and tp_is_empty!42575 tp!1873124))))

(declare-fun lt!2455234 () Bool)

(declare-fun e!4125528 () Bool)

(declare-fun b!6840496 () Bool)

(declare-fun matchZipper!2643 ((InoxSet Context!12090) List!66284) Bool)

(assert (=> b!6840496 (= e!4125528 (= (matchZipper!2643 z!1189 s!2326) lt!2455234))))

(declare-fun b!6840497 () Bool)

(declare-fun res!2792921 () Bool)

(assert (=> b!6840497 (=> (not res!2792921) (not e!4125526))))

(declare-fun toList!10445 ((InoxSet Context!12090)) List!66283)

(assert (=> b!6840497 (= res!2792921 (= (toList!10445 z!1189) zl!343))))

(declare-fun b!6840498 () Bool)

(declare-fun res!2792925 () Bool)

(assert (=> b!6840498 (=> (not res!2792925) (not e!4125526))))

(declare-fun unfocusZipper!2403 (List!66283) Regex!16661)

(assert (=> b!6840498 (= res!2792925 (= r!7292 (unfocusZipper!2403 zl!343)))))

(declare-fun b!6840499 () Bool)

(declare-fun e!4125527 () Bool)

(declare-fun tp!1873130 () Bool)

(assert (=> b!6840499 (= e!4125527 tp!1873130)))

(declare-fun b!6840500 () Bool)

(assert (=> b!6840500 (= e!4125525 e!4125528)))

(declare-fun res!2792926 () Bool)

(assert (=> b!6840500 (=> res!2792926 e!4125528)))

(declare-fun lt!2455236 () Bool)

(declare-fun lt!2455232 () Bool)

(assert (=> b!6840500 (= res!2792926 (not (= lt!2455236 lt!2455232)))))

(assert (=> b!6840500 (= lt!2455232 lt!2455236)))

(declare-fun nullableZipper!2352 ((InoxSet Context!12090)) Bool)

(assert (=> b!6840500 (= lt!2455236 (nullableZipper!2352 z!1189))))

(declare-fun nullable!6626 (Regex!16661) Bool)

(assert (=> b!6840500 (= lt!2455232 (nullable!6626 r!7292))))

(declare-datatypes ((Unit!160021 0))(
  ( (Unit!160022) )
))
(declare-fun lt!2455233 () Unit!160021)

(declare-fun lemmaUnfocusPreservesNullability!38 (Regex!16661 (InoxSet Context!12090)) Unit!160021)

(assert (=> b!6840500 (= lt!2455233 (lemmaUnfocusPreservesNullability!38 r!7292 z!1189))))

(declare-fun b!6840501 () Bool)

(declare-fun tp!1873129 () Bool)

(declare-fun tp!1873127 () Bool)

(assert (=> b!6840501 (= e!4125523 (and tp!1873129 tp!1873127))))

(declare-fun b!6840502 () Bool)

(declare-fun e!4125520 () Bool)

(declare-fun isEmpty!38541 (List!66283) Bool)

(assert (=> b!6840502 (= e!4125520 (isEmpty!38541 (t!380026 zl!343)))))

(declare-fun b!6840503 () Bool)

(declare-fun e!4125522 () Bool)

(declare-fun tp!1873126 () Bool)

(assert (=> b!6840503 (= e!4125522 tp!1873126)))

(declare-fun b!6840504 () Bool)

(declare-fun tp!1873131 () Bool)

(declare-fun inv!84899 (Context!12090) Bool)

(assert (=> b!6840504 (= e!4125521 (and (inv!84899 (h!72607 zl!343)) e!4125522 tp!1873131))))

(declare-fun b!6840505 () Bool)

(declare-fun tp!1873128 () Bool)

(assert (=> b!6840505 (= e!4125523 tp!1873128)))

(declare-fun b!6840506 () Bool)

(assert (=> b!6840506 (= e!4125523 tp_is_empty!42575)))

(declare-fun b!6840507 () Bool)

(assert (=> b!6840507 (= e!4125526 (not e!4125525))))

(declare-fun res!2792924 () Bool)

(assert (=> b!6840507 (=> res!2792924 e!4125525)))

(assert (=> b!6840507 (= res!2792924 e!4125520)))

(declare-fun res!2792920 () Bool)

(assert (=> b!6840507 (=> (not res!2792920) (not e!4125520))))

(assert (=> b!6840507 (= res!2792920 ((_ is Cons!66159) zl!343))))

(declare-fun matchRSpec!3762 (Regex!16661 List!66284) Bool)

(assert (=> b!6840507 (= lt!2455234 (matchRSpec!3762 r!7292 s!2326))))

(declare-fun matchR!8844 (Regex!16661 List!66284) Bool)

(assert (=> b!6840507 (= lt!2455234 (matchR!8844 r!7292 s!2326))))

(declare-fun lt!2455235 () Unit!160021)

(declare-fun mainMatchTheorem!3762 (Regex!16661 List!66284) Unit!160021)

(assert (=> b!6840507 (= lt!2455235 (mainMatchTheorem!3762 r!7292 s!2326))))

(declare-fun setNonEmpty!47003 () Bool)

(declare-fun setElem!47003 () Context!12090)

(declare-fun tp!1873123 () Bool)

(assert (=> setNonEmpty!47003 (= setRes!47003 (and tp!1873123 (inv!84899 setElem!47003) e!4125527))))

(declare-fun setRest!47003 () (InoxSet Context!12090))

(assert (=> setNonEmpty!47003 (= z!1189 ((_ map or) (store ((as const (Array Context!12090 Bool)) false) setElem!47003 true) setRest!47003))))

(assert (= (and start!660964 res!2792922) b!6840497))

(assert (= (and b!6840497 res!2792921) b!6840498))

(assert (= (and b!6840498 res!2792925) b!6840507))

(assert (= (and b!6840507 res!2792920) b!6840502))

(assert (= (and b!6840507 (not res!2792924)) b!6840493))

(assert (= (and b!6840493 (not res!2792923)) b!6840500))

(assert (= (and b!6840500 (not res!2792926)) b!6840496))

(assert (= (and start!660964 ((_ is ElementMatch!16661) r!7292)) b!6840506))

(assert (= (and start!660964 ((_ is Concat!25506) r!7292)) b!6840501))

(assert (= (and start!660964 ((_ is Star!16661) r!7292)) b!6840505))

(assert (= (and start!660964 ((_ is Union!16661) r!7292)) b!6840494))

(assert (= (and start!660964 condSetEmpty!47003) setIsEmpty!47003))

(assert (= (and start!660964 (not condSetEmpty!47003)) setNonEmpty!47003))

(assert (= setNonEmpty!47003 b!6840499))

(assert (= b!6840504 b!6840503))

(assert (= (and start!660964 ((_ is Cons!66159) zl!343)) b!6840504))

(assert (= (and start!660964 ((_ is Cons!66160) s!2326)) b!6840495))

(declare-fun m!7583694 () Bool)

(assert (=> setNonEmpty!47003 m!7583694))

(declare-fun m!7583696 () Bool)

(assert (=> b!6840496 m!7583696))

(declare-fun m!7583698 () Bool)

(assert (=> b!6840500 m!7583698))

(declare-fun m!7583700 () Bool)

(assert (=> b!6840500 m!7583700))

(declare-fun m!7583702 () Bool)

(assert (=> b!6840500 m!7583702))

(declare-fun m!7583704 () Bool)

(assert (=> b!6840504 m!7583704))

(declare-fun m!7583706 () Bool)

(assert (=> b!6840502 m!7583706))

(declare-fun m!7583708 () Bool)

(assert (=> start!660964 m!7583708))

(declare-fun m!7583710 () Bool)

(assert (=> b!6840497 m!7583710))

(declare-fun m!7583712 () Bool)

(assert (=> b!6840507 m!7583712))

(declare-fun m!7583714 () Bool)

(assert (=> b!6840507 m!7583714))

(declare-fun m!7583716 () Bool)

(assert (=> b!6840507 m!7583716))

(declare-fun m!7583718 () Bool)

(assert (=> b!6840498 m!7583718))

(check-sat (not b!6840501) (not b!6840496) (not start!660964) (not b!6840497) (not b!6840498) tp_is_empty!42575 (not b!6840503) (not b!6840502) (not setNonEmpty!47003) (not b!6840499) (not b!6840504) (not b!6840505) (not b!6840495) (not b!6840494) (not b!6840500) (not b!6840507))
(check-sat)
(get-model)

(declare-fun d!2150970 () Bool)

(assert (=> d!2150970 (= (isEmpty!38541 (t!380026 zl!343)) ((_ is Nil!66159) (t!380026 zl!343)))))

(assert (=> b!6840502 d!2150970))

(declare-fun b!6840665 () Bool)

(assert (=> b!6840665 true))

(assert (=> b!6840665 true))

(declare-fun bs!1829119 () Bool)

(declare-fun b!6840671 () Bool)

(assert (= bs!1829119 (and b!6840671 b!6840665)))

(declare-fun lambda!386760 () Int)

(declare-fun lambda!386759 () Int)

(assert (=> bs!1829119 (not (= lambda!386760 lambda!386759))))

(assert (=> b!6840671 true))

(assert (=> b!6840671 true))

(declare-fun b!6840664 () Bool)

(declare-fun e!4125622 () Bool)

(declare-fun e!4125625 () Bool)

(assert (=> b!6840664 (= e!4125622 e!4125625)))

(declare-fun res!2793003 () Bool)

(assert (=> b!6840664 (= res!2793003 (not ((_ is EmptyLang!16661) r!7292)))))

(assert (=> b!6840664 (=> (not res!2793003) (not e!4125625))))

(declare-fun e!4125621 () Bool)

(declare-fun call!622997 () Bool)

(assert (=> b!6840665 (= e!4125621 call!622997)))

(declare-fun bm!622991 () Bool)

(declare-fun c!1273585 () Bool)

(declare-fun Exists!3727 (Int) Bool)

(assert (=> bm!622991 (= call!622997 (Exists!3727 (ite c!1273585 lambda!386759 lambda!386760)))))

(declare-fun b!6840666 () Bool)

(declare-fun c!1273582 () Bool)

(assert (=> b!6840666 (= c!1273582 ((_ is Union!16661) r!7292))))

(declare-fun e!4125623 () Bool)

(declare-fun e!4125624 () Bool)

(assert (=> b!6840666 (= e!4125623 e!4125624)))

(declare-fun b!6840667 () Bool)

(declare-fun call!622996 () Bool)

(assert (=> b!6840667 (= e!4125622 call!622996)))

(declare-fun b!6840668 () Bool)

(declare-fun e!4125620 () Bool)

(assert (=> b!6840668 (= e!4125624 e!4125620)))

(declare-fun res!2793005 () Bool)

(assert (=> b!6840668 (= res!2793005 (matchRSpec!3762 (regOne!33835 r!7292) s!2326))))

(assert (=> b!6840668 (=> res!2793005 e!4125620)))

(declare-fun b!6840669 () Bool)

(assert (=> b!6840669 (= e!4125620 (matchRSpec!3762 (regTwo!33835 r!7292) s!2326))))

(declare-fun d!2150972 () Bool)

(declare-fun c!1273584 () Bool)

(assert (=> d!2150972 (= c!1273584 ((_ is EmptyExpr!16661) r!7292))))

(assert (=> d!2150972 (= (matchRSpec!3762 r!7292 s!2326) e!4125622)))

(declare-fun b!6840670 () Bool)

(assert (=> b!6840670 (= e!4125623 (= s!2326 (Cons!66160 (c!1273541 r!7292) Nil!66160)))))

(declare-fun e!4125619 () Bool)

(assert (=> b!6840671 (= e!4125619 call!622997)))

(declare-fun b!6840672 () Bool)

(declare-fun res!2793004 () Bool)

(assert (=> b!6840672 (=> res!2793004 e!4125621)))

(assert (=> b!6840672 (= res!2793004 call!622996)))

(assert (=> b!6840672 (= e!4125619 e!4125621)))

(declare-fun b!6840673 () Bool)

(declare-fun c!1273583 () Bool)

(assert (=> b!6840673 (= c!1273583 ((_ is ElementMatch!16661) r!7292))))

(assert (=> b!6840673 (= e!4125625 e!4125623)))

(declare-fun b!6840674 () Bool)

(assert (=> b!6840674 (= e!4125624 e!4125619)))

(assert (=> b!6840674 (= c!1273585 ((_ is Star!16661) r!7292))))

(declare-fun bm!622992 () Bool)

(declare-fun isEmpty!38543 (List!66284) Bool)

(assert (=> bm!622992 (= call!622996 (isEmpty!38543 s!2326))))

(assert (= (and d!2150972 c!1273584) b!6840667))

(assert (= (and d!2150972 (not c!1273584)) b!6840664))

(assert (= (and b!6840664 res!2793003) b!6840673))

(assert (= (and b!6840673 c!1273583) b!6840670))

(assert (= (and b!6840673 (not c!1273583)) b!6840666))

(assert (= (and b!6840666 c!1273582) b!6840668))

(assert (= (and b!6840666 (not c!1273582)) b!6840674))

(assert (= (and b!6840668 (not res!2793005)) b!6840669))

(assert (= (and b!6840674 c!1273585) b!6840672))

(assert (= (and b!6840674 (not c!1273585)) b!6840671))

(assert (= (and b!6840672 (not res!2793004)) b!6840665))

(assert (= (or b!6840665 b!6840671) bm!622991))

(assert (= (or b!6840667 b!6840672) bm!622992))

(declare-fun m!7583774 () Bool)

(assert (=> bm!622991 m!7583774))

(declare-fun m!7583776 () Bool)

(assert (=> b!6840668 m!7583776))

(declare-fun m!7583778 () Bool)

(assert (=> b!6840669 m!7583778))

(declare-fun m!7583780 () Bool)

(assert (=> bm!622992 m!7583780))

(assert (=> b!6840507 d!2150972))

(declare-fun bm!622995 () Bool)

(declare-fun call!623000 () Bool)

(assert (=> bm!622995 (= call!623000 (isEmpty!38543 s!2326))))

(declare-fun b!6840762 () Bool)

(declare-fun res!2793026 () Bool)

(declare-fun e!4125670 () Bool)

(assert (=> b!6840762 (=> res!2793026 e!4125670)))

(assert (=> b!6840762 (= res!2793026 (not ((_ is ElementMatch!16661) r!7292)))))

(declare-fun e!4125666 () Bool)

(assert (=> b!6840762 (= e!4125666 e!4125670)))

(declare-fun b!6840763 () Bool)

(declare-fun e!4125668 () Bool)

(declare-fun head!13703 (List!66284) C!33592)

(assert (=> b!6840763 (= e!4125668 (not (= (head!13703 s!2326) (c!1273541 r!7292))))))

(declare-fun b!6840764 () Bool)

(declare-fun res!2793023 () Bool)

(assert (=> b!6840764 (=> res!2793023 e!4125670)))

(declare-fun e!4125669 () Bool)

(assert (=> b!6840764 (= res!2793023 e!4125669)))

(declare-fun res!2793027 () Bool)

(assert (=> b!6840764 (=> (not res!2793027) (not e!4125669))))

(declare-fun lt!2455254 () Bool)

(assert (=> b!6840764 (= res!2793027 lt!2455254)))

(declare-fun b!6840765 () Bool)

(declare-fun e!4125667 () Bool)

(assert (=> b!6840765 (= e!4125667 e!4125666)))

(declare-fun c!1273593 () Bool)

(assert (=> b!6840765 (= c!1273593 ((_ is EmptyLang!16661) r!7292))))

(declare-fun d!2150998 () Bool)

(assert (=> d!2150998 e!4125667))

(declare-fun c!1273594 () Bool)

(assert (=> d!2150998 (= c!1273594 ((_ is EmptyExpr!16661) r!7292))))

(declare-fun e!4125665 () Bool)

(assert (=> d!2150998 (= lt!2455254 e!4125665)))

(declare-fun c!1273592 () Bool)

(assert (=> d!2150998 (= c!1273592 (isEmpty!38543 s!2326))))

(assert (=> d!2150998 (validRegex!8397 r!7292)))

(assert (=> d!2150998 (= (matchR!8844 r!7292 s!2326) lt!2455254)))

(declare-fun b!6840766 () Bool)

(declare-fun res!2793024 () Bool)

(assert (=> b!6840766 (=> (not res!2793024) (not e!4125669))))

(assert (=> b!6840766 (= res!2793024 (not call!623000))))

(declare-fun b!6840767 () Bool)

(declare-fun derivativeStep!5311 (Regex!16661 C!33592) Regex!16661)

(declare-fun tail!12788 (List!66284) List!66284)

(assert (=> b!6840767 (= e!4125665 (matchR!8844 (derivativeStep!5311 r!7292 (head!13703 s!2326)) (tail!12788 s!2326)))))

(declare-fun b!6840768 () Bool)

(assert (=> b!6840768 (= e!4125667 (= lt!2455254 call!623000))))

(declare-fun b!6840769 () Bool)

(declare-fun res!2793030 () Bool)

(assert (=> b!6840769 (=> res!2793030 e!4125668)))

(assert (=> b!6840769 (= res!2793030 (not (isEmpty!38543 (tail!12788 s!2326))))))

(declare-fun b!6840770 () Bool)

(assert (=> b!6840770 (= e!4125666 (not lt!2455254))))

(declare-fun b!6840771 () Bool)

(assert (=> b!6840771 (= e!4125665 (nullable!6626 r!7292))))

(declare-fun b!6840772 () Bool)

(assert (=> b!6840772 (= e!4125669 (= (head!13703 s!2326) (c!1273541 r!7292)))))

(declare-fun b!6840773 () Bool)

(declare-fun e!4125664 () Bool)

(assert (=> b!6840773 (= e!4125670 e!4125664)))

(declare-fun res!2793025 () Bool)

(assert (=> b!6840773 (=> (not res!2793025) (not e!4125664))))

(assert (=> b!6840773 (= res!2793025 (not lt!2455254))))

(declare-fun b!6840774 () Bool)

(declare-fun res!2793028 () Bool)

(assert (=> b!6840774 (=> (not res!2793028) (not e!4125669))))

(assert (=> b!6840774 (= res!2793028 (isEmpty!38543 (tail!12788 s!2326)))))

(declare-fun b!6840775 () Bool)

(assert (=> b!6840775 (= e!4125664 e!4125668)))

(declare-fun res!2793029 () Bool)

(assert (=> b!6840775 (=> res!2793029 e!4125668)))

(assert (=> b!6840775 (= res!2793029 call!623000)))

(assert (= (and d!2150998 c!1273592) b!6840771))

(assert (= (and d!2150998 (not c!1273592)) b!6840767))

(assert (= (and d!2150998 c!1273594) b!6840768))

(assert (= (and d!2150998 (not c!1273594)) b!6840765))

(assert (= (and b!6840765 c!1273593) b!6840770))

(assert (= (and b!6840765 (not c!1273593)) b!6840762))

(assert (= (and b!6840762 (not res!2793026)) b!6840764))

(assert (= (and b!6840764 res!2793027) b!6840766))

(assert (= (and b!6840766 res!2793024) b!6840774))

(assert (= (and b!6840774 res!2793028) b!6840772))

(assert (= (and b!6840764 (not res!2793023)) b!6840773))

(assert (= (and b!6840773 res!2793025) b!6840775))

(assert (= (and b!6840775 (not res!2793029)) b!6840769))

(assert (= (and b!6840769 (not res!2793030)) b!6840763))

(assert (= (or b!6840768 b!6840766 b!6840775) bm!622995))

(declare-fun m!7583784 () Bool)

(assert (=> b!6840763 m!7583784))

(assert (=> bm!622995 m!7583780))

(declare-fun m!7583786 () Bool)

(assert (=> b!6840769 m!7583786))

(assert (=> b!6840769 m!7583786))

(declare-fun m!7583788 () Bool)

(assert (=> b!6840769 m!7583788))

(assert (=> b!6840772 m!7583784))

(assert (=> d!2150998 m!7583780))

(assert (=> d!2150998 m!7583708))

(assert (=> b!6840771 m!7583700))

(assert (=> b!6840767 m!7583784))

(assert (=> b!6840767 m!7583784))

(declare-fun m!7583790 () Bool)

(assert (=> b!6840767 m!7583790))

(assert (=> b!6840767 m!7583786))

(assert (=> b!6840767 m!7583790))

(assert (=> b!6840767 m!7583786))

(declare-fun m!7583792 () Bool)

(assert (=> b!6840767 m!7583792))

(assert (=> b!6840774 m!7583786))

(assert (=> b!6840774 m!7583786))

(assert (=> b!6840774 m!7583788))

(assert (=> b!6840507 d!2150998))

(declare-fun d!2151000 () Bool)

(assert (=> d!2151000 (= (matchR!8844 r!7292 s!2326) (matchRSpec!3762 r!7292 s!2326))))

(declare-fun lt!2455257 () Unit!160021)

(declare-fun choose!51010 (Regex!16661 List!66284) Unit!160021)

(assert (=> d!2151000 (= lt!2455257 (choose!51010 r!7292 s!2326))))

(assert (=> d!2151000 (validRegex!8397 r!7292)))

(assert (=> d!2151000 (= (mainMatchTheorem!3762 r!7292 s!2326) lt!2455257)))

(declare-fun bs!1829120 () Bool)

(assert (= bs!1829120 d!2151000))

(assert (=> bs!1829120 m!7583714))

(assert (=> bs!1829120 m!7583712))

(declare-fun m!7583794 () Bool)

(assert (=> bs!1829120 m!7583794))

(assert (=> bs!1829120 m!7583708))

(assert (=> b!6840507 d!2151000))

(declare-fun d!2151002 () Bool)

(declare-fun c!1273597 () Bool)

(assert (=> d!2151002 (= c!1273597 (isEmpty!38543 s!2326))))

(declare-fun e!4125673 () Bool)

(assert (=> d!2151002 (= (matchZipper!2643 z!1189 s!2326) e!4125673)))

(declare-fun b!6840780 () Bool)

(assert (=> b!6840780 (= e!4125673 (nullableZipper!2352 z!1189))))

(declare-fun b!6840781 () Bool)

(declare-fun derivationStepZipper!2601 ((InoxSet Context!12090) C!33592) (InoxSet Context!12090))

(assert (=> b!6840781 (= e!4125673 (matchZipper!2643 (derivationStepZipper!2601 z!1189 (head!13703 s!2326)) (tail!12788 s!2326)))))

(assert (= (and d!2151002 c!1273597) b!6840780))

(assert (= (and d!2151002 (not c!1273597)) b!6840781))

(assert (=> d!2151002 m!7583780))

(assert (=> b!6840780 m!7583698))

(assert (=> b!6840781 m!7583784))

(assert (=> b!6840781 m!7583784))

(declare-fun m!7583796 () Bool)

(assert (=> b!6840781 m!7583796))

(assert (=> b!6840781 m!7583786))

(assert (=> b!6840781 m!7583796))

(assert (=> b!6840781 m!7583786))

(declare-fun m!7583798 () Bool)

(assert (=> b!6840781 m!7583798))

(assert (=> b!6840496 d!2151002))

(declare-fun d!2151004 () Bool)

(declare-fun lt!2455260 () Regex!16661)

(assert (=> d!2151004 (validRegex!8397 lt!2455260)))

(declare-fun generalisedUnion!2503 (List!66282) Regex!16661)

(declare-fun unfocusZipperList!2080 (List!66283) List!66282)

(assert (=> d!2151004 (= lt!2455260 (generalisedUnion!2503 (unfocusZipperList!2080 zl!343)))))

(assert (=> d!2151004 (= (unfocusZipper!2403 zl!343) lt!2455260)))

(declare-fun bs!1829121 () Bool)

(assert (= bs!1829121 d!2151004))

(declare-fun m!7583800 () Bool)

(assert (=> bs!1829121 m!7583800))

(declare-fun m!7583802 () Bool)

(assert (=> bs!1829121 m!7583802))

(assert (=> bs!1829121 m!7583802))

(declare-fun m!7583804 () Bool)

(assert (=> bs!1829121 m!7583804))

(assert (=> b!6840498 d!2151004))

(declare-fun d!2151006 () Bool)

(declare-fun lambda!386763 () Int)

(declare-fun forall!15838 (List!66282 Int) Bool)

(assert (=> d!2151006 (= (inv!84899 setElem!47003) (forall!15838 (exprs!6545 setElem!47003) lambda!386763))))

(declare-fun bs!1829122 () Bool)

(assert (= bs!1829122 d!2151006))

(declare-fun m!7583806 () Bool)

(assert (=> bs!1829122 m!7583806))

(assert (=> setNonEmpty!47003 d!2151006))

(declare-fun d!2151008 () Bool)

(declare-fun e!4125676 () Bool)

(assert (=> d!2151008 e!4125676))

(declare-fun res!2793033 () Bool)

(assert (=> d!2151008 (=> (not res!2793033) (not e!4125676))))

(declare-fun lt!2455263 () List!66283)

(declare-fun noDuplicate!2432 (List!66283) Bool)

(assert (=> d!2151008 (= res!2793033 (noDuplicate!2432 lt!2455263))))

(declare-fun choose!51011 ((InoxSet Context!12090)) List!66283)

(assert (=> d!2151008 (= lt!2455263 (choose!51011 z!1189))))

(assert (=> d!2151008 (= (toList!10445 z!1189) lt!2455263)))

(declare-fun b!6840784 () Bool)

(declare-fun content!12967 (List!66283) (InoxSet Context!12090))

(assert (=> b!6840784 (= e!4125676 (= (content!12967 lt!2455263) z!1189))))

(assert (= (and d!2151008 res!2793033) b!6840784))

(declare-fun m!7583808 () Bool)

(assert (=> d!2151008 m!7583808))

(declare-fun m!7583810 () Bool)

(assert (=> d!2151008 m!7583810))

(declare-fun m!7583812 () Bool)

(assert (=> b!6840784 m!7583812))

(assert (=> b!6840497 d!2151008))

(declare-fun b!6840803 () Bool)

(declare-fun res!2793044 () Bool)

(declare-fun e!4125695 () Bool)

(assert (=> b!6840803 (=> (not res!2793044) (not e!4125695))))

(declare-fun call!623007 () Bool)

(assert (=> b!6840803 (= res!2793044 call!623007)))

(declare-fun e!4125692 () Bool)

(assert (=> b!6840803 (= e!4125692 e!4125695)))

(declare-fun c!1273603 () Bool)

(declare-fun bm!623002 () Bool)

(declare-fun c!1273602 () Bool)

(declare-fun call!623008 () Bool)

(assert (=> bm!623002 (= call!623008 (validRegex!8397 (ite c!1273603 (reg!16990 r!7292) (ite c!1273602 (regTwo!33835 r!7292) (regTwo!33834 r!7292)))))))

(declare-fun bm!623003 () Bool)

(assert (=> bm!623003 (= call!623007 (validRegex!8397 (ite c!1273602 (regOne!33835 r!7292) (regOne!33834 r!7292))))))

(declare-fun b!6840804 () Bool)

(declare-fun res!2793046 () Bool)

(declare-fun e!4125693 () Bool)

(assert (=> b!6840804 (=> res!2793046 e!4125693)))

(assert (=> b!6840804 (= res!2793046 (not ((_ is Concat!25506) r!7292)))))

(assert (=> b!6840804 (= e!4125692 e!4125693)))

(declare-fun b!6840805 () Bool)

(declare-fun e!4125696 () Bool)

(declare-fun e!4125694 () Bool)

(assert (=> b!6840805 (= e!4125696 e!4125694)))

(declare-fun res!2793047 () Bool)

(assert (=> b!6840805 (= res!2793047 (not (nullable!6626 (reg!16990 r!7292))))))

(assert (=> b!6840805 (=> (not res!2793047) (not e!4125694))))

(declare-fun b!6840806 () Bool)

(declare-fun call!623009 () Bool)

(assert (=> b!6840806 (= e!4125695 call!623009)))

(declare-fun b!6840807 () Bool)

(declare-fun e!4125697 () Bool)

(assert (=> b!6840807 (= e!4125697 call!623009)))

(declare-fun bm!623004 () Bool)

(assert (=> bm!623004 (= call!623009 call!623008)))

(declare-fun d!2151010 () Bool)

(declare-fun res!2793045 () Bool)

(declare-fun e!4125691 () Bool)

(assert (=> d!2151010 (=> res!2793045 e!4125691)))

(assert (=> d!2151010 (= res!2793045 ((_ is ElementMatch!16661) r!7292))))

(assert (=> d!2151010 (= (validRegex!8397 r!7292) e!4125691)))

(declare-fun b!6840808 () Bool)

(assert (=> b!6840808 (= e!4125696 e!4125692)))

(assert (=> b!6840808 (= c!1273602 ((_ is Union!16661) r!7292))))

(declare-fun b!6840809 () Bool)

(assert (=> b!6840809 (= e!4125691 e!4125696)))

(assert (=> b!6840809 (= c!1273603 ((_ is Star!16661) r!7292))))

(declare-fun b!6840810 () Bool)

(assert (=> b!6840810 (= e!4125693 e!4125697)))

(declare-fun res!2793048 () Bool)

(assert (=> b!6840810 (=> (not res!2793048) (not e!4125697))))

(assert (=> b!6840810 (= res!2793048 call!623007)))

(declare-fun b!6840811 () Bool)

(assert (=> b!6840811 (= e!4125694 call!623008)))

(assert (= (and d!2151010 (not res!2793045)) b!6840809))

(assert (= (and b!6840809 c!1273603) b!6840805))

(assert (= (and b!6840809 (not c!1273603)) b!6840808))

(assert (= (and b!6840805 res!2793047) b!6840811))

(assert (= (and b!6840808 c!1273602) b!6840803))

(assert (= (and b!6840808 (not c!1273602)) b!6840804))

(assert (= (and b!6840803 res!2793044) b!6840806))

(assert (= (and b!6840804 (not res!2793046)) b!6840810))

(assert (= (and b!6840810 res!2793048) b!6840807))

(assert (= (or b!6840806 b!6840807) bm!623004))

(assert (= (or b!6840803 b!6840810) bm!623003))

(assert (= (or b!6840811 bm!623004) bm!623002))

(declare-fun m!7583814 () Bool)

(assert (=> bm!623002 m!7583814))

(declare-fun m!7583816 () Bool)

(assert (=> bm!623003 m!7583816))

(declare-fun m!7583818 () Bool)

(assert (=> b!6840805 m!7583818))

(assert (=> start!660964 d!2151010))

(declare-fun bs!1829123 () Bool)

(declare-fun d!2151012 () Bool)

(assert (= bs!1829123 (and d!2151012 d!2151006)))

(declare-fun lambda!386764 () Int)

(assert (=> bs!1829123 (= lambda!386764 lambda!386763)))

(assert (=> d!2151012 (= (inv!84899 (h!72607 zl!343)) (forall!15838 (exprs!6545 (h!72607 zl!343)) lambda!386764))))

(declare-fun bs!1829124 () Bool)

(assert (= bs!1829124 d!2151012))

(declare-fun m!7583820 () Bool)

(assert (=> bs!1829124 m!7583820))

(assert (=> b!6840504 d!2151012))

(declare-fun d!2151014 () Bool)

(declare-fun lambda!386767 () Int)

(declare-fun exists!2759 ((InoxSet Context!12090) Int) Bool)

(assert (=> d!2151014 (= (nullableZipper!2352 z!1189) (exists!2759 z!1189 lambda!386767))))

(declare-fun bs!1829125 () Bool)

(assert (= bs!1829125 d!2151014))

(declare-fun m!7583822 () Bool)

(assert (=> bs!1829125 m!7583822))

(assert (=> b!6840500 d!2151014))

(declare-fun d!2151016 () Bool)

(declare-fun nullableFct!2518 (Regex!16661) Bool)

(assert (=> d!2151016 (= (nullable!6626 r!7292) (nullableFct!2518 r!7292))))

(declare-fun bs!1829126 () Bool)

(assert (= bs!1829126 d!2151016))

(declare-fun m!7583824 () Bool)

(assert (=> bs!1829126 m!7583824))

(assert (=> b!6840500 d!2151016))

(declare-fun d!2151018 () Bool)

(assert (=> d!2151018 (= (nullable!6626 r!7292) (nullableZipper!2352 z!1189))))

(declare-fun lt!2455266 () Unit!160021)

(declare-fun choose!51012 (Regex!16661 (InoxSet Context!12090)) Unit!160021)

(assert (=> d!2151018 (= lt!2455266 (choose!51012 r!7292 z!1189))))

(assert (=> d!2151018 (validRegex!8397 r!7292)))

(assert (=> d!2151018 (= (lemmaUnfocusPreservesNullability!38 r!7292 z!1189) lt!2455266)))

(declare-fun bs!1829127 () Bool)

(assert (= bs!1829127 d!2151018))

(assert (=> bs!1829127 m!7583700))

(assert (=> bs!1829127 m!7583698))

(declare-fun m!7583826 () Bool)

(assert (=> bs!1829127 m!7583826))

(assert (=> bs!1829127 m!7583708))

(assert (=> b!6840500 d!2151018))

(declare-fun b!6840824 () Bool)

(declare-fun e!4125700 () Bool)

(declare-fun tp!1873203 () Bool)

(assert (=> b!6840824 (= e!4125700 tp!1873203)))

(assert (=> b!6840501 (= tp!1873129 e!4125700)))

(declare-fun b!6840825 () Bool)

(declare-fun tp!1873200 () Bool)

(declare-fun tp!1873202 () Bool)

(assert (=> b!6840825 (= e!4125700 (and tp!1873200 tp!1873202))))

(declare-fun b!6840823 () Bool)

(declare-fun tp!1873204 () Bool)

(declare-fun tp!1873201 () Bool)

(assert (=> b!6840823 (= e!4125700 (and tp!1873204 tp!1873201))))

(declare-fun b!6840822 () Bool)

(assert (=> b!6840822 (= e!4125700 tp_is_empty!42575)))

(assert (= (and b!6840501 ((_ is ElementMatch!16661) (regOne!33834 r!7292))) b!6840822))

(assert (= (and b!6840501 ((_ is Concat!25506) (regOne!33834 r!7292))) b!6840823))

(assert (= (and b!6840501 ((_ is Star!16661) (regOne!33834 r!7292))) b!6840824))

(assert (= (and b!6840501 ((_ is Union!16661) (regOne!33834 r!7292))) b!6840825))

(declare-fun b!6840828 () Bool)

(declare-fun e!4125701 () Bool)

(declare-fun tp!1873208 () Bool)

(assert (=> b!6840828 (= e!4125701 tp!1873208)))

(assert (=> b!6840501 (= tp!1873127 e!4125701)))

(declare-fun b!6840829 () Bool)

(declare-fun tp!1873205 () Bool)

(declare-fun tp!1873207 () Bool)

(assert (=> b!6840829 (= e!4125701 (and tp!1873205 tp!1873207))))

(declare-fun b!6840827 () Bool)

(declare-fun tp!1873209 () Bool)

(declare-fun tp!1873206 () Bool)

(assert (=> b!6840827 (= e!4125701 (and tp!1873209 tp!1873206))))

(declare-fun b!6840826 () Bool)

(assert (=> b!6840826 (= e!4125701 tp_is_empty!42575)))

(assert (= (and b!6840501 ((_ is ElementMatch!16661) (regTwo!33834 r!7292))) b!6840826))

(assert (= (and b!6840501 ((_ is Concat!25506) (regTwo!33834 r!7292))) b!6840827))

(assert (= (and b!6840501 ((_ is Star!16661) (regTwo!33834 r!7292))) b!6840828))

(assert (= (and b!6840501 ((_ is Union!16661) (regTwo!33834 r!7292))) b!6840829))

(declare-fun b!6840834 () Bool)

(declare-fun e!4125704 () Bool)

(declare-fun tp!1873214 () Bool)

(declare-fun tp!1873215 () Bool)

(assert (=> b!6840834 (= e!4125704 (and tp!1873214 tp!1873215))))

(assert (=> b!6840503 (= tp!1873126 e!4125704)))

(assert (= (and b!6840503 ((_ is Cons!66158) (exprs!6545 (h!72607 zl!343)))) b!6840834))

(declare-fun condSetEmpty!47009 () Bool)

(assert (=> setNonEmpty!47003 (= condSetEmpty!47009 (= setRest!47003 ((as const (Array Context!12090 Bool)) false)))))

(declare-fun setRes!47009 () Bool)

(assert (=> setNonEmpty!47003 (= tp!1873123 setRes!47009)))

(declare-fun setIsEmpty!47009 () Bool)

(assert (=> setIsEmpty!47009 setRes!47009))

(declare-fun setNonEmpty!47009 () Bool)

(declare-fun tp!1873220 () Bool)

(declare-fun setElem!47009 () Context!12090)

(declare-fun e!4125707 () Bool)

(assert (=> setNonEmpty!47009 (= setRes!47009 (and tp!1873220 (inv!84899 setElem!47009) e!4125707))))

(declare-fun setRest!47009 () (InoxSet Context!12090))

(assert (=> setNonEmpty!47009 (= setRest!47003 ((_ map or) (store ((as const (Array Context!12090 Bool)) false) setElem!47009 true) setRest!47009))))

(declare-fun b!6840839 () Bool)

(declare-fun tp!1873221 () Bool)

(assert (=> b!6840839 (= e!4125707 tp!1873221)))

(assert (= (and setNonEmpty!47003 condSetEmpty!47009) setIsEmpty!47009))

(assert (= (and setNonEmpty!47003 (not condSetEmpty!47009)) setNonEmpty!47009))

(assert (= setNonEmpty!47009 b!6840839))

(declare-fun m!7583828 () Bool)

(assert (=> setNonEmpty!47009 m!7583828))

(declare-fun b!6840842 () Bool)

(declare-fun e!4125708 () Bool)

(declare-fun tp!1873225 () Bool)

(assert (=> b!6840842 (= e!4125708 tp!1873225)))

(assert (=> b!6840494 (= tp!1873122 e!4125708)))

(declare-fun b!6840843 () Bool)

(declare-fun tp!1873222 () Bool)

(declare-fun tp!1873224 () Bool)

(assert (=> b!6840843 (= e!4125708 (and tp!1873222 tp!1873224))))

(declare-fun b!6840841 () Bool)

(declare-fun tp!1873226 () Bool)

(declare-fun tp!1873223 () Bool)

(assert (=> b!6840841 (= e!4125708 (and tp!1873226 tp!1873223))))

(declare-fun b!6840840 () Bool)

(assert (=> b!6840840 (= e!4125708 tp_is_empty!42575)))

(assert (= (and b!6840494 ((_ is ElementMatch!16661) (regOne!33835 r!7292))) b!6840840))

(assert (= (and b!6840494 ((_ is Concat!25506) (regOne!33835 r!7292))) b!6840841))

(assert (= (and b!6840494 ((_ is Star!16661) (regOne!33835 r!7292))) b!6840842))

(assert (= (and b!6840494 ((_ is Union!16661) (regOne!33835 r!7292))) b!6840843))

(declare-fun b!6840846 () Bool)

(declare-fun e!4125709 () Bool)

(declare-fun tp!1873230 () Bool)

(assert (=> b!6840846 (= e!4125709 tp!1873230)))

(assert (=> b!6840494 (= tp!1873125 e!4125709)))

(declare-fun b!6840847 () Bool)

(declare-fun tp!1873227 () Bool)

(declare-fun tp!1873229 () Bool)

(assert (=> b!6840847 (= e!4125709 (and tp!1873227 tp!1873229))))

(declare-fun b!6840845 () Bool)

(declare-fun tp!1873231 () Bool)

(declare-fun tp!1873228 () Bool)

(assert (=> b!6840845 (= e!4125709 (and tp!1873231 tp!1873228))))

(declare-fun b!6840844 () Bool)

(assert (=> b!6840844 (= e!4125709 tp_is_empty!42575)))

(assert (= (and b!6840494 ((_ is ElementMatch!16661) (regTwo!33835 r!7292))) b!6840844))

(assert (= (and b!6840494 ((_ is Concat!25506) (regTwo!33835 r!7292))) b!6840845))

(assert (= (and b!6840494 ((_ is Star!16661) (regTwo!33835 r!7292))) b!6840846))

(assert (= (and b!6840494 ((_ is Union!16661) (regTwo!33835 r!7292))) b!6840847))

(declare-fun b!6840848 () Bool)

(declare-fun e!4125710 () Bool)

(declare-fun tp!1873232 () Bool)

(declare-fun tp!1873233 () Bool)

(assert (=> b!6840848 (= e!4125710 (and tp!1873232 tp!1873233))))

(assert (=> b!6840499 (= tp!1873130 e!4125710)))

(assert (= (and b!6840499 ((_ is Cons!66158) (exprs!6545 setElem!47003))) b!6840848))

(declare-fun b!6840856 () Bool)

(declare-fun e!4125716 () Bool)

(declare-fun tp!1873238 () Bool)

(assert (=> b!6840856 (= e!4125716 tp!1873238)))

(declare-fun e!4125715 () Bool)

(declare-fun tp!1873239 () Bool)

(declare-fun b!6840855 () Bool)

(assert (=> b!6840855 (= e!4125715 (and (inv!84899 (h!72607 (t!380026 zl!343))) e!4125716 tp!1873239))))

(assert (=> b!6840504 (= tp!1873131 e!4125715)))

(assert (= b!6840855 b!6840856))

(assert (= (and b!6840504 ((_ is Cons!66159) (t!380026 zl!343))) b!6840855))

(declare-fun m!7583830 () Bool)

(assert (=> b!6840855 m!7583830))

(declare-fun b!6840861 () Bool)

(declare-fun e!4125719 () Bool)

(declare-fun tp!1873242 () Bool)

(assert (=> b!6840861 (= e!4125719 (and tp_is_empty!42575 tp!1873242))))

(assert (=> b!6840495 (= tp!1873124 e!4125719)))

(assert (= (and b!6840495 ((_ is Cons!66160) (t!380027 s!2326))) b!6840861))

(declare-fun b!6840864 () Bool)

(declare-fun e!4125720 () Bool)

(declare-fun tp!1873246 () Bool)

(assert (=> b!6840864 (= e!4125720 tp!1873246)))

(assert (=> b!6840505 (= tp!1873128 e!4125720)))

(declare-fun b!6840865 () Bool)

(declare-fun tp!1873243 () Bool)

(declare-fun tp!1873245 () Bool)

(assert (=> b!6840865 (= e!4125720 (and tp!1873243 tp!1873245))))

(declare-fun b!6840863 () Bool)

(declare-fun tp!1873247 () Bool)

(declare-fun tp!1873244 () Bool)

(assert (=> b!6840863 (= e!4125720 (and tp!1873247 tp!1873244))))

(declare-fun b!6840862 () Bool)

(assert (=> b!6840862 (= e!4125720 tp_is_empty!42575)))

(assert (= (and b!6840505 ((_ is ElementMatch!16661) (reg!16990 r!7292))) b!6840862))

(assert (= (and b!6840505 ((_ is Concat!25506) (reg!16990 r!7292))) b!6840863))

(assert (= (and b!6840505 ((_ is Star!16661) (reg!16990 r!7292))) b!6840864))

(assert (= (and b!6840505 ((_ is Union!16661) (reg!16990 r!7292))) b!6840865))

(check-sat (not b!6840763) (not d!2150998) (not b!6840669) (not bm!623002) (not b!6840846) (not d!2151018) (not b!6840834) (not b!6840772) (not d!2151014) (not b!6840865) (not b!6840827) (not b!6840825) (not b!6840784) (not b!6840845) (not d!2151006) (not d!2151012) (not d!2151016) (not b!6840847) (not bm!622991) (not b!6840841) (not bm!622995) (not b!6840769) (not b!6840823) (not b!6840781) (not b!6840842) (not b!6840855) (not b!6840774) (not b!6840864) (not b!6840829) (not b!6840843) (not bm!623003) (not b!6840839) (not b!6840805) (not d!2151000) (not d!2151008) (not b!6840828) (not b!6840861) (not b!6840780) (not setNonEmpty!47009) (not d!2151002) (not b!6840767) (not bm!622992) (not b!6840848) (not b!6840856) (not b!6840824) tp_is_empty!42575 (not b!6840771) (not d!2151004) (not b!6840863) (not b!6840668))
(check-sat)
(get-model)

(declare-fun d!2151052 () Bool)

(declare-fun choose!51014 (Int) Bool)

(assert (=> d!2151052 (= (Exists!3727 (ite c!1273585 lambda!386759 lambda!386760)) (choose!51014 (ite c!1273585 lambda!386759 lambda!386760)))))

(declare-fun bs!1829152 () Bool)

(assert (= bs!1829152 d!2151052))

(declare-fun m!7583912 () Bool)

(assert (=> bs!1829152 m!7583912))

(assert (=> bm!622991 d!2151052))

(declare-fun d!2151054 () Bool)

(assert (=> d!2151054 (= (isEmpty!38543 s!2326) ((_ is Nil!66160) s!2326))))

(assert (=> d!2151002 d!2151054))

(declare-fun d!2151056 () Bool)

(declare-fun res!2793083 () Bool)

(declare-fun e!4125799 () Bool)

(assert (=> d!2151056 (=> res!2793083 e!4125799)))

(assert (=> d!2151056 (= res!2793083 ((_ is Nil!66158) (exprs!6545 setElem!47003)))))

(assert (=> d!2151056 (= (forall!15838 (exprs!6545 setElem!47003) lambda!386763) e!4125799)))

(declare-fun b!6840996 () Bool)

(declare-fun e!4125800 () Bool)

(assert (=> b!6840996 (= e!4125799 e!4125800)))

(declare-fun res!2793084 () Bool)

(assert (=> b!6840996 (=> (not res!2793084) (not e!4125800))))

(declare-fun dynLambda!26429 (Int Regex!16661) Bool)

(assert (=> b!6840996 (= res!2793084 (dynLambda!26429 lambda!386763 (h!72606 (exprs!6545 setElem!47003))))))

(declare-fun b!6840997 () Bool)

(assert (=> b!6840997 (= e!4125800 (forall!15838 (t!380025 (exprs!6545 setElem!47003)) lambda!386763))))

(assert (= (and d!2151056 (not res!2793083)) b!6840996))

(assert (= (and b!6840996 res!2793084) b!6840997))

(declare-fun b_lambda!258011 () Bool)

(assert (=> (not b_lambda!258011) (not b!6840996)))

(declare-fun m!7583920 () Bool)

(assert (=> b!6840996 m!7583920))

(declare-fun m!7583922 () Bool)

(assert (=> b!6840997 m!7583922))

(assert (=> d!2151006 d!2151056))

(assert (=> d!2151018 d!2151016))

(assert (=> d!2151018 d!2151014))

(declare-fun d!2151062 () Bool)

(assert (=> d!2151062 (= (nullable!6626 r!7292) (nullableZipper!2352 z!1189))))

(assert (=> d!2151062 true))

(declare-fun _$51!209 () Unit!160021)

(assert (=> d!2151062 (= (choose!51012 r!7292 z!1189) _$51!209)))

(declare-fun bs!1829157 () Bool)

(assert (= bs!1829157 d!2151062))

(assert (=> bs!1829157 m!7583700))

(assert (=> bs!1829157 m!7583698))

(assert (=> d!2151018 d!2151062))

(assert (=> d!2151018 d!2151010))

(declare-fun d!2151068 () Bool)

(declare-fun res!2793119 () Bool)

(declare-fun e!4125842 () Bool)

(assert (=> d!2151068 (=> res!2793119 e!4125842)))

(assert (=> d!2151068 (= res!2793119 ((_ is Nil!66159) lt!2455263))))

(assert (=> d!2151068 (= (noDuplicate!2432 lt!2455263) e!4125842)))

(declare-fun b!6841044 () Bool)

(declare-fun e!4125843 () Bool)

(assert (=> b!6841044 (= e!4125842 e!4125843)))

(declare-fun res!2793120 () Bool)

(assert (=> b!6841044 (=> (not res!2793120) (not e!4125843))))

(declare-fun contains!20312 (List!66283 Context!12090) Bool)

(assert (=> b!6841044 (= res!2793120 (not (contains!20312 (t!380026 lt!2455263) (h!72607 lt!2455263))))))

(declare-fun b!6841045 () Bool)

(assert (=> b!6841045 (= e!4125843 (noDuplicate!2432 (t!380026 lt!2455263)))))

(assert (= (and d!2151068 (not res!2793119)) b!6841044))

(assert (= (and b!6841044 res!2793120) b!6841045))

(declare-fun m!7583938 () Bool)

(assert (=> b!6841044 m!7583938))

(declare-fun m!7583940 () Bool)

(assert (=> b!6841045 m!7583940))

(assert (=> d!2151008 d!2151068))

(declare-fun d!2151072 () Bool)

(declare-fun e!4125860 () Bool)

(assert (=> d!2151072 e!4125860))

(declare-fun res!2793134 () Bool)

(assert (=> d!2151072 (=> (not res!2793134) (not e!4125860))))

(declare-fun res!2793133 () List!66283)

(assert (=> d!2151072 (= res!2793134 (noDuplicate!2432 res!2793133))))

(declare-fun e!4125862 () Bool)

(assert (=> d!2151072 e!4125862))

(assert (=> d!2151072 (= (choose!51011 z!1189) res!2793133)))

(declare-fun b!6841064 () Bool)

(declare-fun e!4125861 () Bool)

(declare-fun tp!1873258 () Bool)

(assert (=> b!6841064 (= e!4125861 tp!1873258)))

(declare-fun tp!1873259 () Bool)

(declare-fun b!6841063 () Bool)

(assert (=> b!6841063 (= e!4125862 (and (inv!84899 (h!72607 res!2793133)) e!4125861 tp!1873259))))

(declare-fun b!6841065 () Bool)

(assert (=> b!6841065 (= e!4125860 (= (content!12967 res!2793133) z!1189))))

(assert (= b!6841063 b!6841064))

(assert (= (and d!2151072 ((_ is Cons!66159) res!2793133)) b!6841063))

(assert (= (and d!2151072 res!2793134) b!6841065))

(declare-fun m!7583958 () Bool)

(assert (=> d!2151072 m!7583958))

(declare-fun m!7583960 () Bool)

(assert (=> b!6841063 m!7583960))

(declare-fun m!7583962 () Bool)

(assert (=> b!6841065 m!7583962))

(assert (=> d!2151008 d!2151072))

(declare-fun d!2151082 () Bool)

(declare-fun lt!2455282 () Bool)

(declare-fun exists!2761 (List!66283 Int) Bool)

(assert (=> d!2151082 (= lt!2455282 (exists!2761 (toList!10445 z!1189) lambda!386767))))

(declare-fun choose!51015 ((InoxSet Context!12090) Int) Bool)

(assert (=> d!2151082 (= lt!2455282 (choose!51015 z!1189 lambda!386767))))

(assert (=> d!2151082 (= (exists!2759 z!1189 lambda!386767) lt!2455282)))

(declare-fun bs!1829158 () Bool)

(assert (= bs!1829158 d!2151082))

(assert (=> bs!1829158 m!7583710))

(assert (=> bs!1829158 m!7583710))

(declare-fun m!7583966 () Bool)

(assert (=> bs!1829158 m!7583966))

(declare-fun m!7583968 () Bool)

(assert (=> bs!1829158 m!7583968))

(assert (=> d!2151014 d!2151082))

(declare-fun d!2151086 () Bool)

(assert (=> d!2151086 (= (head!13703 s!2326) (h!72608 s!2326))))

(assert (=> b!6840772 d!2151086))

(declare-fun d!2151088 () Bool)

(assert (=> d!2151088 (= (nullable!6626 (reg!16990 r!7292)) (nullableFct!2518 (reg!16990 r!7292)))))

(declare-fun bs!1829165 () Bool)

(assert (= bs!1829165 d!2151088))

(declare-fun m!7583970 () Bool)

(assert (=> bs!1829165 m!7583970))

(assert (=> b!6840805 d!2151088))

(declare-fun d!2151090 () Bool)

(assert (=> d!2151090 (= (isEmpty!38543 (tail!12788 s!2326)) ((_ is Nil!66160) (tail!12788 s!2326)))))

(assert (=> b!6840774 d!2151090))

(declare-fun d!2151092 () Bool)

(assert (=> d!2151092 (= (tail!12788 s!2326) (t!380027 s!2326))))

(assert (=> b!6840774 d!2151092))

(declare-fun d!2151096 () Bool)

(declare-fun c!1273662 () Bool)

(assert (=> d!2151096 (= c!1273662 (isEmpty!38543 (tail!12788 s!2326)))))

(declare-fun e!4125865 () Bool)

(assert (=> d!2151096 (= (matchZipper!2643 (derivationStepZipper!2601 z!1189 (head!13703 s!2326)) (tail!12788 s!2326)) e!4125865)))

(declare-fun b!6841070 () Bool)

(assert (=> b!6841070 (= e!4125865 (nullableZipper!2352 (derivationStepZipper!2601 z!1189 (head!13703 s!2326))))))

(declare-fun b!6841071 () Bool)

(assert (=> b!6841071 (= e!4125865 (matchZipper!2643 (derivationStepZipper!2601 (derivationStepZipper!2601 z!1189 (head!13703 s!2326)) (head!13703 (tail!12788 s!2326))) (tail!12788 (tail!12788 s!2326))))))

(assert (= (and d!2151096 c!1273662) b!6841070))

(assert (= (and d!2151096 (not c!1273662)) b!6841071))

(assert (=> d!2151096 m!7583786))

(assert (=> d!2151096 m!7583788))

(assert (=> b!6841070 m!7583796))

(declare-fun m!7583978 () Bool)

(assert (=> b!6841070 m!7583978))

(assert (=> b!6841071 m!7583786))

(declare-fun m!7583980 () Bool)

(assert (=> b!6841071 m!7583980))

(assert (=> b!6841071 m!7583796))

(assert (=> b!6841071 m!7583980))

(declare-fun m!7583982 () Bool)

(assert (=> b!6841071 m!7583982))

(assert (=> b!6841071 m!7583786))

(declare-fun m!7583984 () Bool)

(assert (=> b!6841071 m!7583984))

(assert (=> b!6841071 m!7583982))

(assert (=> b!6841071 m!7583984))

(declare-fun m!7583986 () Bool)

(assert (=> b!6841071 m!7583986))

(assert (=> b!6840781 d!2151096))

(declare-fun d!2151100 () Bool)

(assert (=> d!2151100 true))

(declare-fun lambda!386785 () Int)

(declare-fun flatMap!2135 ((InoxSet Context!12090) Int) (InoxSet Context!12090))

(assert (=> d!2151100 (= (derivationStepZipper!2601 z!1189 (head!13703 s!2326)) (flatMap!2135 z!1189 lambda!386785))))

(declare-fun bs!1829168 () Bool)

(assert (= bs!1829168 d!2151100))

(declare-fun m!7583988 () Bool)

(assert (=> bs!1829168 m!7583988))

(assert (=> b!6840781 d!2151100))

(assert (=> b!6840781 d!2151086))

(assert (=> b!6840781 d!2151092))

(assert (=> b!6840780 d!2151014))

(declare-fun b!6841082 () Bool)

(declare-fun res!2793137 () Bool)

(declare-fun e!4125872 () Bool)

(assert (=> b!6841082 (=> (not res!2793137) (not e!4125872))))

(declare-fun call!623042 () Bool)

(assert (=> b!6841082 (= res!2793137 call!623042)))

(declare-fun e!4125869 () Bool)

(assert (=> b!6841082 (= e!4125869 e!4125872)))

(declare-fun call!623043 () Bool)

(declare-fun c!1273665 () Bool)

(declare-fun bm!623037 () Bool)

(declare-fun c!1273666 () Bool)

(assert (=> bm!623037 (= call!623043 (validRegex!8397 (ite c!1273666 (reg!16990 (ite c!1273602 (regOne!33835 r!7292) (regOne!33834 r!7292))) (ite c!1273665 (regTwo!33835 (ite c!1273602 (regOne!33835 r!7292) (regOne!33834 r!7292))) (regTwo!33834 (ite c!1273602 (regOne!33835 r!7292) (regOne!33834 r!7292)))))))))

(declare-fun bm!623038 () Bool)

(assert (=> bm!623038 (= call!623042 (validRegex!8397 (ite c!1273665 (regOne!33835 (ite c!1273602 (regOne!33835 r!7292) (regOne!33834 r!7292))) (regOne!33834 (ite c!1273602 (regOne!33835 r!7292) (regOne!33834 r!7292))))))))

(declare-fun b!6841083 () Bool)

(declare-fun res!2793139 () Bool)

(declare-fun e!4125870 () Bool)

(assert (=> b!6841083 (=> res!2793139 e!4125870)))

(assert (=> b!6841083 (= res!2793139 (not ((_ is Concat!25506) (ite c!1273602 (regOne!33835 r!7292) (regOne!33834 r!7292)))))))

(assert (=> b!6841083 (= e!4125869 e!4125870)))

(declare-fun b!6841084 () Bool)

(declare-fun e!4125873 () Bool)

(declare-fun e!4125871 () Bool)

(assert (=> b!6841084 (= e!4125873 e!4125871)))

(declare-fun res!2793140 () Bool)

(assert (=> b!6841084 (= res!2793140 (not (nullable!6626 (reg!16990 (ite c!1273602 (regOne!33835 r!7292) (regOne!33834 r!7292))))))))

(assert (=> b!6841084 (=> (not res!2793140) (not e!4125871))))

(declare-fun b!6841085 () Bool)

(declare-fun call!623044 () Bool)

(assert (=> b!6841085 (= e!4125872 call!623044)))

(declare-fun b!6841086 () Bool)

(declare-fun e!4125874 () Bool)

(assert (=> b!6841086 (= e!4125874 call!623044)))

(declare-fun bm!623039 () Bool)

(assert (=> bm!623039 (= call!623044 call!623043)))

(declare-fun d!2151102 () Bool)

(declare-fun res!2793138 () Bool)

(declare-fun e!4125868 () Bool)

(assert (=> d!2151102 (=> res!2793138 e!4125868)))

(assert (=> d!2151102 (= res!2793138 ((_ is ElementMatch!16661) (ite c!1273602 (regOne!33835 r!7292) (regOne!33834 r!7292))))))

(assert (=> d!2151102 (= (validRegex!8397 (ite c!1273602 (regOne!33835 r!7292) (regOne!33834 r!7292))) e!4125868)))

(declare-fun b!6841087 () Bool)

(assert (=> b!6841087 (= e!4125873 e!4125869)))

(assert (=> b!6841087 (= c!1273665 ((_ is Union!16661) (ite c!1273602 (regOne!33835 r!7292) (regOne!33834 r!7292))))))

(declare-fun b!6841088 () Bool)

(assert (=> b!6841088 (= e!4125868 e!4125873)))

(assert (=> b!6841088 (= c!1273666 ((_ is Star!16661) (ite c!1273602 (regOne!33835 r!7292) (regOne!33834 r!7292))))))

(declare-fun b!6841089 () Bool)

(assert (=> b!6841089 (= e!4125870 e!4125874)))

(declare-fun res!2793141 () Bool)

(assert (=> b!6841089 (=> (not res!2793141) (not e!4125874))))

(assert (=> b!6841089 (= res!2793141 call!623042)))

(declare-fun b!6841090 () Bool)

(assert (=> b!6841090 (= e!4125871 call!623043)))

(assert (= (and d!2151102 (not res!2793138)) b!6841088))

(assert (= (and b!6841088 c!1273666) b!6841084))

(assert (= (and b!6841088 (not c!1273666)) b!6841087))

(assert (= (and b!6841084 res!2793140) b!6841090))

(assert (= (and b!6841087 c!1273665) b!6841082))

(assert (= (and b!6841087 (not c!1273665)) b!6841083))

(assert (= (and b!6841082 res!2793137) b!6841085))

(assert (= (and b!6841083 (not res!2793139)) b!6841089))

(assert (= (and b!6841089 res!2793141) b!6841086))

(assert (= (or b!6841085 b!6841086) bm!623039))

(assert (= (or b!6841082 b!6841089) bm!623038))

(assert (= (or b!6841090 bm!623039) bm!623037))

(declare-fun m!7583992 () Bool)

(assert (=> bm!623037 m!7583992))

(declare-fun m!7583994 () Bool)

(assert (=> bm!623038 m!7583994))

(declare-fun m!7583996 () Bool)

(assert (=> b!6841084 m!7583996))

(assert (=> bm!623003 d!2151102))

(assert (=> d!2150998 d!2151054))

(assert (=> d!2150998 d!2151010))

(assert (=> b!6840771 d!2151016))

(declare-fun bm!623040 () Bool)

(declare-fun call!623045 () Bool)

(assert (=> bm!623040 (= call!623045 (isEmpty!38543 (tail!12788 s!2326)))))

(declare-fun b!6841108 () Bool)

(declare-fun res!2793145 () Bool)

(declare-fun e!4125889 () Bool)

(assert (=> b!6841108 (=> res!2793145 e!4125889)))

(assert (=> b!6841108 (= res!2793145 (not ((_ is ElementMatch!16661) (derivativeStep!5311 r!7292 (head!13703 s!2326)))))))

(declare-fun e!4125885 () Bool)

(assert (=> b!6841108 (= e!4125885 e!4125889)))

(declare-fun b!6841109 () Bool)

(declare-fun e!4125887 () Bool)

(assert (=> b!6841109 (= e!4125887 (not (= (head!13703 (tail!12788 s!2326)) (c!1273541 (derivativeStep!5311 r!7292 (head!13703 s!2326))))))))

(declare-fun b!6841110 () Bool)

(declare-fun res!2793142 () Bool)

(assert (=> b!6841110 (=> res!2793142 e!4125889)))

(declare-fun e!4125888 () Bool)

(assert (=> b!6841110 (= res!2793142 e!4125888)))

(declare-fun res!2793146 () Bool)

(assert (=> b!6841110 (=> (not res!2793146) (not e!4125888))))

(declare-fun lt!2455283 () Bool)

(assert (=> b!6841110 (= res!2793146 lt!2455283)))

(declare-fun b!6841111 () Bool)

(declare-fun e!4125886 () Bool)

(assert (=> b!6841111 (= e!4125886 e!4125885)))

(declare-fun c!1273668 () Bool)

(assert (=> b!6841111 (= c!1273668 ((_ is EmptyLang!16661) (derivativeStep!5311 r!7292 (head!13703 s!2326))))))

(declare-fun d!2151104 () Bool)

(assert (=> d!2151104 e!4125886))

(declare-fun c!1273669 () Bool)

(assert (=> d!2151104 (= c!1273669 ((_ is EmptyExpr!16661) (derivativeStep!5311 r!7292 (head!13703 s!2326))))))

(declare-fun e!4125884 () Bool)

(assert (=> d!2151104 (= lt!2455283 e!4125884)))

(declare-fun c!1273667 () Bool)

(assert (=> d!2151104 (= c!1273667 (isEmpty!38543 (tail!12788 s!2326)))))

(assert (=> d!2151104 (validRegex!8397 (derivativeStep!5311 r!7292 (head!13703 s!2326)))))

(assert (=> d!2151104 (= (matchR!8844 (derivativeStep!5311 r!7292 (head!13703 s!2326)) (tail!12788 s!2326)) lt!2455283)))

(declare-fun b!6841112 () Bool)

(declare-fun res!2793143 () Bool)

(assert (=> b!6841112 (=> (not res!2793143) (not e!4125888))))

(assert (=> b!6841112 (= res!2793143 (not call!623045))))

(declare-fun b!6841113 () Bool)

(assert (=> b!6841113 (= e!4125884 (matchR!8844 (derivativeStep!5311 (derivativeStep!5311 r!7292 (head!13703 s!2326)) (head!13703 (tail!12788 s!2326))) (tail!12788 (tail!12788 s!2326))))))

(declare-fun b!6841114 () Bool)

(assert (=> b!6841114 (= e!4125886 (= lt!2455283 call!623045))))

(declare-fun b!6841115 () Bool)

(declare-fun res!2793149 () Bool)

(assert (=> b!6841115 (=> res!2793149 e!4125887)))

(assert (=> b!6841115 (= res!2793149 (not (isEmpty!38543 (tail!12788 (tail!12788 s!2326)))))))

(declare-fun b!6841116 () Bool)

(assert (=> b!6841116 (= e!4125885 (not lt!2455283))))

(declare-fun b!6841117 () Bool)

(assert (=> b!6841117 (= e!4125884 (nullable!6626 (derivativeStep!5311 r!7292 (head!13703 s!2326))))))

(declare-fun b!6841118 () Bool)

(assert (=> b!6841118 (= e!4125888 (= (head!13703 (tail!12788 s!2326)) (c!1273541 (derivativeStep!5311 r!7292 (head!13703 s!2326)))))))

(declare-fun b!6841119 () Bool)

(declare-fun e!4125883 () Bool)

(assert (=> b!6841119 (= e!4125889 e!4125883)))

(declare-fun res!2793144 () Bool)

(assert (=> b!6841119 (=> (not res!2793144) (not e!4125883))))

(assert (=> b!6841119 (= res!2793144 (not lt!2455283))))

(declare-fun b!6841120 () Bool)

(declare-fun res!2793147 () Bool)

(assert (=> b!6841120 (=> (not res!2793147) (not e!4125888))))

(assert (=> b!6841120 (= res!2793147 (isEmpty!38543 (tail!12788 (tail!12788 s!2326))))))

(declare-fun b!6841121 () Bool)

(assert (=> b!6841121 (= e!4125883 e!4125887)))

(declare-fun res!2793148 () Bool)

(assert (=> b!6841121 (=> res!2793148 e!4125887)))

(assert (=> b!6841121 (= res!2793148 call!623045)))

(assert (= (and d!2151104 c!1273667) b!6841117))

(assert (= (and d!2151104 (not c!1273667)) b!6841113))

(assert (= (and d!2151104 c!1273669) b!6841114))

(assert (= (and d!2151104 (not c!1273669)) b!6841111))

(assert (= (and b!6841111 c!1273668) b!6841116))

(assert (= (and b!6841111 (not c!1273668)) b!6841108))

(assert (= (and b!6841108 (not res!2793145)) b!6841110))

(assert (= (and b!6841110 res!2793146) b!6841112))

(assert (= (and b!6841112 res!2793143) b!6841120))

(assert (= (and b!6841120 res!2793147) b!6841118))

(assert (= (and b!6841110 (not res!2793142)) b!6841119))

(assert (= (and b!6841119 res!2793144) b!6841121))

(assert (= (and b!6841121 (not res!2793148)) b!6841115))

(assert (= (and b!6841115 (not res!2793149)) b!6841109))

(assert (= (or b!6841114 b!6841112 b!6841121) bm!623040))

(assert (=> b!6841109 m!7583786))

(assert (=> b!6841109 m!7583980))

(assert (=> bm!623040 m!7583786))

(assert (=> bm!623040 m!7583788))

(assert (=> b!6841115 m!7583786))

(assert (=> b!6841115 m!7583984))

(assert (=> b!6841115 m!7583984))

(declare-fun m!7583998 () Bool)

(assert (=> b!6841115 m!7583998))

(assert (=> b!6841118 m!7583786))

(assert (=> b!6841118 m!7583980))

(assert (=> d!2151104 m!7583786))

(assert (=> d!2151104 m!7583788))

(assert (=> d!2151104 m!7583790))

(declare-fun m!7584000 () Bool)

(assert (=> d!2151104 m!7584000))

(assert (=> b!6841117 m!7583790))

(declare-fun m!7584002 () Bool)

(assert (=> b!6841117 m!7584002))

(assert (=> b!6841113 m!7583786))

(assert (=> b!6841113 m!7583980))

(assert (=> b!6841113 m!7583790))

(assert (=> b!6841113 m!7583980))

(declare-fun m!7584004 () Bool)

(assert (=> b!6841113 m!7584004))

(assert (=> b!6841113 m!7583786))

(assert (=> b!6841113 m!7583984))

(assert (=> b!6841113 m!7584004))

(assert (=> b!6841113 m!7583984))

(declare-fun m!7584006 () Bool)

(assert (=> b!6841113 m!7584006))

(assert (=> b!6841120 m!7583786))

(assert (=> b!6841120 m!7583984))

(assert (=> b!6841120 m!7583984))

(assert (=> b!6841120 m!7583998))

(assert (=> b!6840767 d!2151104))

(declare-fun b!6841233 () Bool)

(declare-fun e!4125929 () Regex!16661)

(declare-fun call!623056 () Regex!16661)

(declare-fun call!623057 () Regex!16661)

(assert (=> b!6841233 (= e!4125929 (Union!16661 call!623056 call!623057))))

(declare-fun b!6841234 () Bool)

(declare-fun e!4125926 () Regex!16661)

(assert (=> b!6841234 (= e!4125926 EmptyLang!16661)))

(declare-fun b!6841235 () Bool)

(declare-fun e!4125928 () Regex!16661)

(assert (=> b!6841235 (= e!4125929 e!4125928)))

(declare-fun c!1273681 () Bool)

(assert (=> b!6841235 (= c!1273681 ((_ is Star!16661) r!7292))))

(declare-fun b!6841236 () Bool)

(declare-fun c!1273683 () Bool)

(assert (=> b!6841236 (= c!1273683 ((_ is Union!16661) r!7292))))

(declare-fun e!4125925 () Regex!16661)

(assert (=> b!6841236 (= e!4125925 e!4125929)))

(declare-fun b!6841237 () Bool)

(assert (=> b!6841237 (= e!4125926 e!4125925)))

(declare-fun c!1273680 () Bool)

(assert (=> b!6841237 (= c!1273680 ((_ is ElementMatch!16661) r!7292))))

(declare-fun b!6841238 () Bool)

(declare-fun call!623055 () Regex!16661)

(assert (=> b!6841238 (= e!4125928 (Concat!25506 call!623055 r!7292))))

(declare-fun b!6841239 () Bool)

(declare-fun c!1273682 () Bool)

(assert (=> b!6841239 (= c!1273682 (nullable!6626 (regOne!33834 r!7292)))))

(declare-fun e!4125927 () Regex!16661)

(assert (=> b!6841239 (= e!4125928 e!4125927)))

(declare-fun b!6841240 () Bool)

(assert (=> b!6841240 (= e!4125925 (ite (= (head!13703 s!2326) (c!1273541 r!7292)) EmptyExpr!16661 EmptyLang!16661))))

(declare-fun d!2151106 () Bool)

(declare-fun lt!2455286 () Regex!16661)

(assert (=> d!2151106 (validRegex!8397 lt!2455286)))

(assert (=> d!2151106 (= lt!2455286 e!4125926)))

(declare-fun c!1273684 () Bool)

(assert (=> d!2151106 (= c!1273684 (or ((_ is EmptyExpr!16661) r!7292) ((_ is EmptyLang!16661) r!7292)))))

(assert (=> d!2151106 (validRegex!8397 r!7292)))

(assert (=> d!2151106 (= (derivativeStep!5311 r!7292 (head!13703 s!2326)) lt!2455286)))

(declare-fun bm!623049 () Bool)

(assert (=> bm!623049 (= call!623056 (derivativeStep!5311 (ite c!1273683 (regOne!33835 r!7292) (regOne!33834 r!7292)) (head!13703 s!2326)))))

(declare-fun bm!623050 () Bool)

(assert (=> bm!623050 (= call!623057 (derivativeStep!5311 (ite c!1273683 (regTwo!33835 r!7292) (ite c!1273681 (reg!16990 r!7292) (ite c!1273682 (regTwo!33834 r!7292) (regOne!33834 r!7292)))) (head!13703 s!2326)))))

(declare-fun bm!623051 () Bool)

(declare-fun call!623054 () Regex!16661)

(assert (=> bm!623051 (= call!623054 call!623055)))

(declare-fun b!6841241 () Bool)

(assert (=> b!6841241 (= e!4125927 (Union!16661 (Concat!25506 call!623056 (regTwo!33834 r!7292)) call!623054))))

(declare-fun bm!623052 () Bool)

(assert (=> bm!623052 (= call!623055 call!623057)))

(declare-fun b!6841242 () Bool)

(assert (=> b!6841242 (= e!4125927 (Union!16661 (Concat!25506 call!623054 (regTwo!33834 r!7292)) EmptyLang!16661))))

(assert (= (and d!2151106 c!1273684) b!6841234))

(assert (= (and d!2151106 (not c!1273684)) b!6841237))

(assert (= (and b!6841237 c!1273680) b!6841240))

(assert (= (and b!6841237 (not c!1273680)) b!6841236))

(assert (= (and b!6841236 c!1273683) b!6841233))

(assert (= (and b!6841236 (not c!1273683)) b!6841235))

(assert (= (and b!6841235 c!1273681) b!6841238))

(assert (= (and b!6841235 (not c!1273681)) b!6841239))

(assert (= (and b!6841239 c!1273682) b!6841241))

(assert (= (and b!6841239 (not c!1273682)) b!6841242))

(assert (= (or b!6841241 b!6841242) bm!623051))

(assert (= (or b!6841238 bm!623051) bm!623052))

(assert (= (or b!6841233 bm!623052) bm!623050))

(assert (= (or b!6841233 b!6841241) bm!623049))

(declare-fun m!7584014 () Bool)

(assert (=> b!6841239 m!7584014))

(declare-fun m!7584016 () Bool)

(assert (=> d!2151106 m!7584016))

(assert (=> d!2151106 m!7583708))

(assert (=> bm!623049 m!7583784))

(declare-fun m!7584018 () Bool)

(assert (=> bm!623049 m!7584018))

(assert (=> bm!623050 m!7583784))

(declare-fun m!7584020 () Bool)

(assert (=> bm!623050 m!7584020))

(assert (=> b!6840767 d!2151106))

(assert (=> b!6840767 d!2151086))

(assert (=> b!6840767 d!2151092))

(declare-fun bs!1829171 () Bool)

(declare-fun d!2151112 () Bool)

(assert (= bs!1829171 (and d!2151112 d!2151006)))

(declare-fun lambda!386786 () Int)

(assert (=> bs!1829171 (= lambda!386786 lambda!386763)))

(declare-fun bs!1829172 () Bool)

(assert (= bs!1829172 (and d!2151112 d!2151012)))

(assert (=> bs!1829172 (= lambda!386786 lambda!386764)))

(assert (=> d!2151112 (= (inv!84899 (h!72607 (t!380026 zl!343))) (forall!15838 (exprs!6545 (h!72607 (t!380026 zl!343))) lambda!386786))))

(declare-fun bs!1829173 () Bool)

(assert (= bs!1829173 d!2151112))

(declare-fun m!7584022 () Bool)

(assert (=> bs!1829173 m!7584022))

(assert (=> b!6840855 d!2151112))

(assert (=> b!6840769 d!2151090))

(assert (=> b!6840769 d!2151092))

(declare-fun b!6841243 () Bool)

(declare-fun res!2793150 () Bool)

(declare-fun e!4125934 () Bool)

(assert (=> b!6841243 (=> (not res!2793150) (not e!4125934))))

(declare-fun call!623058 () Bool)

(assert (=> b!6841243 (= res!2793150 call!623058)))

(declare-fun e!4125931 () Bool)

(assert (=> b!6841243 (= e!4125931 e!4125934)))

(declare-fun bm!623053 () Bool)

(declare-fun c!1273686 () Bool)

(declare-fun c!1273685 () Bool)

(declare-fun call!623059 () Bool)

(assert (=> bm!623053 (= call!623059 (validRegex!8397 (ite c!1273686 (reg!16990 (ite c!1273603 (reg!16990 r!7292) (ite c!1273602 (regTwo!33835 r!7292) (regTwo!33834 r!7292)))) (ite c!1273685 (regTwo!33835 (ite c!1273603 (reg!16990 r!7292) (ite c!1273602 (regTwo!33835 r!7292) (regTwo!33834 r!7292)))) (regTwo!33834 (ite c!1273603 (reg!16990 r!7292) (ite c!1273602 (regTwo!33835 r!7292) (regTwo!33834 r!7292))))))))))

(declare-fun bm!623054 () Bool)

(assert (=> bm!623054 (= call!623058 (validRegex!8397 (ite c!1273685 (regOne!33835 (ite c!1273603 (reg!16990 r!7292) (ite c!1273602 (regTwo!33835 r!7292) (regTwo!33834 r!7292)))) (regOne!33834 (ite c!1273603 (reg!16990 r!7292) (ite c!1273602 (regTwo!33835 r!7292) (regTwo!33834 r!7292)))))))))

(declare-fun b!6841244 () Bool)

(declare-fun res!2793152 () Bool)

(declare-fun e!4125932 () Bool)

(assert (=> b!6841244 (=> res!2793152 e!4125932)))

(assert (=> b!6841244 (= res!2793152 (not ((_ is Concat!25506) (ite c!1273603 (reg!16990 r!7292) (ite c!1273602 (regTwo!33835 r!7292) (regTwo!33834 r!7292))))))))

(assert (=> b!6841244 (= e!4125931 e!4125932)))

(declare-fun b!6841245 () Bool)

(declare-fun e!4125935 () Bool)

(declare-fun e!4125933 () Bool)

(assert (=> b!6841245 (= e!4125935 e!4125933)))

(declare-fun res!2793153 () Bool)

(assert (=> b!6841245 (= res!2793153 (not (nullable!6626 (reg!16990 (ite c!1273603 (reg!16990 r!7292) (ite c!1273602 (regTwo!33835 r!7292) (regTwo!33834 r!7292)))))))))

(assert (=> b!6841245 (=> (not res!2793153) (not e!4125933))))

(declare-fun b!6841246 () Bool)

(declare-fun call!623060 () Bool)

(assert (=> b!6841246 (= e!4125934 call!623060)))

(declare-fun b!6841247 () Bool)

(declare-fun e!4125936 () Bool)

(assert (=> b!6841247 (= e!4125936 call!623060)))

(declare-fun bm!623055 () Bool)

(assert (=> bm!623055 (= call!623060 call!623059)))

(declare-fun d!2151114 () Bool)

(declare-fun res!2793151 () Bool)

(declare-fun e!4125930 () Bool)

(assert (=> d!2151114 (=> res!2793151 e!4125930)))

(assert (=> d!2151114 (= res!2793151 ((_ is ElementMatch!16661) (ite c!1273603 (reg!16990 r!7292) (ite c!1273602 (regTwo!33835 r!7292) (regTwo!33834 r!7292)))))))

(assert (=> d!2151114 (= (validRegex!8397 (ite c!1273603 (reg!16990 r!7292) (ite c!1273602 (regTwo!33835 r!7292) (regTwo!33834 r!7292)))) e!4125930)))

(declare-fun b!6841248 () Bool)

(assert (=> b!6841248 (= e!4125935 e!4125931)))

(assert (=> b!6841248 (= c!1273685 ((_ is Union!16661) (ite c!1273603 (reg!16990 r!7292) (ite c!1273602 (regTwo!33835 r!7292) (regTwo!33834 r!7292)))))))

(declare-fun b!6841249 () Bool)

(assert (=> b!6841249 (= e!4125930 e!4125935)))

(assert (=> b!6841249 (= c!1273686 ((_ is Star!16661) (ite c!1273603 (reg!16990 r!7292) (ite c!1273602 (regTwo!33835 r!7292) (regTwo!33834 r!7292)))))))

(declare-fun b!6841250 () Bool)

(assert (=> b!6841250 (= e!4125932 e!4125936)))

(declare-fun res!2793154 () Bool)

(assert (=> b!6841250 (=> (not res!2793154) (not e!4125936))))

(assert (=> b!6841250 (= res!2793154 call!623058)))

(declare-fun b!6841251 () Bool)

(assert (=> b!6841251 (= e!4125933 call!623059)))

(assert (= (and d!2151114 (not res!2793151)) b!6841249))

(assert (= (and b!6841249 c!1273686) b!6841245))

(assert (= (and b!6841249 (not c!1273686)) b!6841248))

(assert (= (and b!6841245 res!2793153) b!6841251))

(assert (= (and b!6841248 c!1273685) b!6841243))

(assert (= (and b!6841248 (not c!1273685)) b!6841244))

(assert (= (and b!6841243 res!2793150) b!6841246))

(assert (= (and b!6841244 (not res!2793152)) b!6841250))

(assert (= (and b!6841250 res!2793154) b!6841247))

(assert (= (or b!6841246 b!6841247) bm!623055))

(assert (= (or b!6841243 b!6841250) bm!623054))

(assert (= (or b!6841251 bm!623055) bm!623053))

(declare-fun m!7584024 () Bool)

(assert (=> bm!623053 m!7584024))

(declare-fun m!7584026 () Bool)

(assert (=> bm!623054 m!7584026))

(declare-fun m!7584028 () Bool)

(assert (=> b!6841245 m!7584028))

(assert (=> bm!623002 d!2151114))

(declare-fun b!6841266 () Bool)

(declare-fun e!4125953 () Bool)

(declare-fun e!4125950 () Bool)

(assert (=> b!6841266 (= e!4125953 e!4125950)))

(declare-fun res!2793169 () Bool)

(assert (=> b!6841266 (=> (not res!2793169) (not e!4125950))))

(assert (=> b!6841266 (= res!2793169 (and (not ((_ is EmptyLang!16661) r!7292)) (not ((_ is ElementMatch!16661) r!7292))))))

(declare-fun b!6841267 () Bool)

(declare-fun e!4125949 () Bool)

(declare-fun call!623065 () Bool)

(assert (=> b!6841267 (= e!4125949 call!623065)))

(declare-fun b!6841268 () Bool)

(declare-fun e!4125952 () Bool)

(assert (=> b!6841268 (= e!4125952 call!623065)))

(declare-fun b!6841269 () Bool)

(declare-fun e!4125951 () Bool)

(declare-fun e!4125954 () Bool)

(assert (=> b!6841269 (= e!4125951 e!4125954)))

(declare-fun c!1273689 () Bool)

(assert (=> b!6841269 (= c!1273689 ((_ is Union!16661) r!7292))))

(declare-fun b!6841270 () Bool)

(assert (=> b!6841270 (= e!4125954 e!4125949)))

(declare-fun res!2793168 () Bool)

(declare-fun call!623066 () Bool)

(assert (=> b!6841270 (= res!2793168 call!623066)))

(assert (=> b!6841270 (=> (not res!2793168) (not e!4125949))))

(declare-fun b!6841271 () Bool)

(assert (=> b!6841271 (= e!4125950 e!4125951)))

(declare-fun res!2793165 () Bool)

(assert (=> b!6841271 (=> res!2793165 e!4125951)))

(assert (=> b!6841271 (= res!2793165 ((_ is Star!16661) r!7292))))

(declare-fun bm!623060 () Bool)

(assert (=> bm!623060 (= call!623066 (nullable!6626 (ite c!1273689 (regOne!33835 r!7292) (regOne!33834 r!7292))))))

(declare-fun d!2151116 () Bool)

(declare-fun res!2793167 () Bool)

(assert (=> d!2151116 (=> res!2793167 e!4125953)))

(assert (=> d!2151116 (= res!2793167 ((_ is EmptyExpr!16661) r!7292))))

(assert (=> d!2151116 (= (nullableFct!2518 r!7292) e!4125953)))

(declare-fun bm!623061 () Bool)

(assert (=> bm!623061 (= call!623065 (nullable!6626 (ite c!1273689 (regTwo!33835 r!7292) (regTwo!33834 r!7292))))))

(declare-fun b!6841272 () Bool)

(assert (=> b!6841272 (= e!4125954 e!4125952)))

(declare-fun res!2793166 () Bool)

(assert (=> b!6841272 (= res!2793166 call!623066)))

(assert (=> b!6841272 (=> res!2793166 e!4125952)))

(assert (= (and d!2151116 (not res!2793167)) b!6841266))

(assert (= (and b!6841266 res!2793169) b!6841271))

(assert (= (and b!6841271 (not res!2793165)) b!6841269))

(assert (= (and b!6841269 c!1273689) b!6841272))

(assert (= (and b!6841269 (not c!1273689)) b!6841270))

(assert (= (and b!6841272 (not res!2793166)) b!6841268))

(assert (= (and b!6841270 res!2793168) b!6841267))

(assert (= (or b!6841268 b!6841267) bm!623061))

(assert (= (or b!6841272 b!6841270) bm!623060))

(declare-fun m!7584030 () Bool)

(assert (=> bm!623060 m!7584030))

(declare-fun m!7584032 () Bool)

(assert (=> bm!623061 m!7584032))

(assert (=> d!2151016 d!2151116))

(assert (=> bm!622992 d!2151054))

(declare-fun d!2151118 () Bool)

(declare-fun c!1273692 () Bool)

(assert (=> d!2151118 (= c!1273692 ((_ is Nil!66159) lt!2455263))))

(declare-fun e!4125957 () (InoxSet Context!12090))

(assert (=> d!2151118 (= (content!12967 lt!2455263) e!4125957)))

(declare-fun b!6841277 () Bool)

(assert (=> b!6841277 (= e!4125957 ((as const (Array Context!12090 Bool)) false))))

(declare-fun b!6841278 () Bool)

(assert (=> b!6841278 (= e!4125957 ((_ map or) (store ((as const (Array Context!12090 Bool)) false) (h!72607 lt!2455263) true) (content!12967 (t!380026 lt!2455263))))))

(assert (= (and d!2151118 c!1273692) b!6841277))

(assert (= (and d!2151118 (not c!1273692)) b!6841278))

(declare-fun m!7584034 () Bool)

(assert (=> b!6841278 m!7584034))

(declare-fun m!7584036 () Bool)

(assert (=> b!6841278 m!7584036))

(assert (=> b!6840784 d!2151118))

(assert (=> d!2151000 d!2150998))

(assert (=> d!2151000 d!2150972))

(declare-fun d!2151120 () Bool)

(assert (=> d!2151120 (= (matchR!8844 r!7292 s!2326) (matchRSpec!3762 r!7292 s!2326))))

(assert (=> d!2151120 true))

(declare-fun _$88!5690 () Unit!160021)

(assert (=> d!2151120 (= (choose!51010 r!7292 s!2326) _$88!5690)))

(declare-fun bs!1829174 () Bool)

(assert (= bs!1829174 d!2151120))

(assert (=> bs!1829174 m!7583714))

(assert (=> bs!1829174 m!7583712))

(assert (=> d!2151000 d!2151120))

(assert (=> d!2151000 d!2151010))

(declare-fun d!2151122 () Bool)

(declare-fun res!2793170 () Bool)

(declare-fun e!4125958 () Bool)

(assert (=> d!2151122 (=> res!2793170 e!4125958)))

(assert (=> d!2151122 (= res!2793170 ((_ is Nil!66158) (exprs!6545 (h!72607 zl!343))))))

(assert (=> d!2151122 (= (forall!15838 (exprs!6545 (h!72607 zl!343)) lambda!386764) e!4125958)))

(declare-fun b!6841279 () Bool)

(declare-fun e!4125959 () Bool)

(assert (=> b!6841279 (= e!4125958 e!4125959)))

(declare-fun res!2793171 () Bool)

(assert (=> b!6841279 (=> (not res!2793171) (not e!4125959))))

(assert (=> b!6841279 (= res!2793171 (dynLambda!26429 lambda!386764 (h!72606 (exprs!6545 (h!72607 zl!343)))))))

(declare-fun b!6841280 () Bool)

(assert (=> b!6841280 (= e!4125959 (forall!15838 (t!380025 (exprs!6545 (h!72607 zl!343))) lambda!386764))))

(assert (= (and d!2151122 (not res!2793170)) b!6841279))

(assert (= (and b!6841279 res!2793171) b!6841280))

(declare-fun b_lambda!258021 () Bool)

(assert (=> (not b_lambda!258021) (not b!6841279)))

(declare-fun m!7584038 () Bool)

(assert (=> b!6841279 m!7584038))

(declare-fun m!7584040 () Bool)

(assert (=> b!6841280 m!7584040))

(assert (=> d!2151012 d!2151122))

(assert (=> b!6840763 d!2151086))

(declare-fun bs!1829175 () Bool)

(declare-fun d!2151124 () Bool)

(assert (= bs!1829175 (and d!2151124 d!2151006)))

(declare-fun lambda!386787 () Int)

(assert (=> bs!1829175 (= lambda!386787 lambda!386763)))

(declare-fun bs!1829176 () Bool)

(assert (= bs!1829176 (and d!2151124 d!2151012)))

(assert (=> bs!1829176 (= lambda!386787 lambda!386764)))

(declare-fun bs!1829177 () Bool)

(assert (= bs!1829177 (and d!2151124 d!2151112)))

(assert (=> bs!1829177 (= lambda!386787 lambda!386786)))

(assert (=> d!2151124 (= (inv!84899 setElem!47009) (forall!15838 (exprs!6545 setElem!47009) lambda!386787))))

(declare-fun bs!1829178 () Bool)

(assert (= bs!1829178 d!2151124))

(declare-fun m!7584042 () Bool)

(assert (=> bs!1829178 m!7584042))

(assert (=> setNonEmpty!47009 d!2151124))

(declare-fun b!6841281 () Bool)

(declare-fun res!2793172 () Bool)

(declare-fun e!4125964 () Bool)

(assert (=> b!6841281 (=> (not res!2793172) (not e!4125964))))

(declare-fun call!623067 () Bool)

(assert (=> b!6841281 (= res!2793172 call!623067)))

(declare-fun e!4125961 () Bool)

(assert (=> b!6841281 (= e!4125961 e!4125964)))

(declare-fun c!1273694 () Bool)

(declare-fun call!623068 () Bool)

(declare-fun bm!623062 () Bool)

(declare-fun c!1273693 () Bool)

(assert (=> bm!623062 (= call!623068 (validRegex!8397 (ite c!1273694 (reg!16990 lt!2455260) (ite c!1273693 (regTwo!33835 lt!2455260) (regTwo!33834 lt!2455260)))))))

(declare-fun bm!623063 () Bool)

(assert (=> bm!623063 (= call!623067 (validRegex!8397 (ite c!1273693 (regOne!33835 lt!2455260) (regOne!33834 lt!2455260))))))

(declare-fun b!6841282 () Bool)

(declare-fun res!2793174 () Bool)

(declare-fun e!4125962 () Bool)

(assert (=> b!6841282 (=> res!2793174 e!4125962)))

(assert (=> b!6841282 (= res!2793174 (not ((_ is Concat!25506) lt!2455260)))))

(assert (=> b!6841282 (= e!4125961 e!4125962)))

(declare-fun b!6841283 () Bool)

(declare-fun e!4125965 () Bool)

(declare-fun e!4125963 () Bool)

(assert (=> b!6841283 (= e!4125965 e!4125963)))

(declare-fun res!2793175 () Bool)

(assert (=> b!6841283 (= res!2793175 (not (nullable!6626 (reg!16990 lt!2455260))))))

(assert (=> b!6841283 (=> (not res!2793175) (not e!4125963))))

(declare-fun b!6841284 () Bool)

(declare-fun call!623069 () Bool)

(assert (=> b!6841284 (= e!4125964 call!623069)))

(declare-fun b!6841285 () Bool)

(declare-fun e!4125966 () Bool)

(assert (=> b!6841285 (= e!4125966 call!623069)))

(declare-fun bm!623064 () Bool)

(assert (=> bm!623064 (= call!623069 call!623068)))

(declare-fun d!2151126 () Bool)

(declare-fun res!2793173 () Bool)

(declare-fun e!4125960 () Bool)

(assert (=> d!2151126 (=> res!2793173 e!4125960)))

(assert (=> d!2151126 (= res!2793173 ((_ is ElementMatch!16661) lt!2455260))))

(assert (=> d!2151126 (= (validRegex!8397 lt!2455260) e!4125960)))

(declare-fun b!6841286 () Bool)

(assert (=> b!6841286 (= e!4125965 e!4125961)))

(assert (=> b!6841286 (= c!1273693 ((_ is Union!16661) lt!2455260))))

(declare-fun b!6841287 () Bool)

(assert (=> b!6841287 (= e!4125960 e!4125965)))

(assert (=> b!6841287 (= c!1273694 ((_ is Star!16661) lt!2455260))))

(declare-fun b!6841288 () Bool)

(assert (=> b!6841288 (= e!4125962 e!4125966)))

(declare-fun res!2793176 () Bool)

(assert (=> b!6841288 (=> (not res!2793176) (not e!4125966))))

(assert (=> b!6841288 (= res!2793176 call!623067)))

(declare-fun b!6841289 () Bool)

(assert (=> b!6841289 (= e!4125963 call!623068)))

(assert (= (and d!2151126 (not res!2793173)) b!6841287))

(assert (= (and b!6841287 c!1273694) b!6841283))

(assert (= (and b!6841287 (not c!1273694)) b!6841286))

(assert (= (and b!6841283 res!2793175) b!6841289))

(assert (= (and b!6841286 c!1273693) b!6841281))

(assert (= (and b!6841286 (not c!1273693)) b!6841282))

(assert (= (and b!6841281 res!2793172) b!6841284))

(assert (= (and b!6841282 (not res!2793174)) b!6841288))

(assert (= (and b!6841288 res!2793176) b!6841285))

(assert (= (or b!6841284 b!6841285) bm!623064))

(assert (= (or b!6841281 b!6841288) bm!623063))

(assert (= (or b!6841289 bm!623064) bm!623062))

(declare-fun m!7584044 () Bool)

(assert (=> bm!623062 m!7584044))

(declare-fun m!7584046 () Bool)

(assert (=> bm!623063 m!7584046))

(declare-fun m!7584048 () Bool)

(assert (=> b!6841283 m!7584048))

(assert (=> d!2151004 d!2151126))

(declare-fun bs!1829179 () Bool)

(declare-fun d!2151128 () Bool)

(assert (= bs!1829179 (and d!2151128 d!2151006)))

(declare-fun lambda!386790 () Int)

(assert (=> bs!1829179 (= lambda!386790 lambda!386763)))

(declare-fun bs!1829180 () Bool)

(assert (= bs!1829180 (and d!2151128 d!2151012)))

(assert (=> bs!1829180 (= lambda!386790 lambda!386764)))

(declare-fun bs!1829181 () Bool)

(assert (= bs!1829181 (and d!2151128 d!2151112)))

(assert (=> bs!1829181 (= lambda!386790 lambda!386786)))

(declare-fun bs!1829182 () Bool)

(assert (= bs!1829182 (and d!2151128 d!2151124)))

(assert (=> bs!1829182 (= lambda!386790 lambda!386787)))

(declare-fun b!6841310 () Bool)

(declare-fun e!4125981 () Regex!16661)

(assert (=> b!6841310 (= e!4125981 EmptyLang!16661)))

(declare-fun b!6841311 () Bool)

(assert (=> b!6841311 (= e!4125981 (Union!16661 (h!72606 (unfocusZipperList!2080 zl!343)) (generalisedUnion!2503 (t!380025 (unfocusZipperList!2080 zl!343)))))))

(declare-fun b!6841312 () Bool)

(declare-fun e!4125982 () Bool)

(declare-fun lt!2455289 () Regex!16661)

(declare-fun isEmptyLang!2011 (Regex!16661) Bool)

(assert (=> b!6841312 (= e!4125982 (isEmptyLang!2011 lt!2455289))))

(declare-fun b!6841313 () Bool)

(declare-fun e!4125983 () Bool)

(declare-fun isEmpty!38545 (List!66282) Bool)

(assert (=> b!6841313 (= e!4125983 (isEmpty!38545 (t!380025 (unfocusZipperList!2080 zl!343))))))

(declare-fun b!6841314 () Bool)

(declare-fun e!4125984 () Bool)

(assert (=> b!6841314 (= e!4125984 e!4125982)))

(declare-fun c!1273705 () Bool)

(assert (=> b!6841314 (= c!1273705 (isEmpty!38545 (unfocusZipperList!2080 zl!343)))))

(declare-fun b!6841315 () Bool)

(declare-fun e!4125979 () Bool)

(declare-fun isUnion!1441 (Regex!16661) Bool)

(assert (=> b!6841315 (= e!4125979 (isUnion!1441 lt!2455289))))

(declare-fun b!6841316 () Bool)

(declare-fun head!13705 (List!66282) Regex!16661)

(assert (=> b!6841316 (= e!4125979 (= lt!2455289 (head!13705 (unfocusZipperList!2080 zl!343))))))

(declare-fun b!6841317 () Bool)

(declare-fun e!4125980 () Regex!16661)

(assert (=> b!6841317 (= e!4125980 e!4125981)))

(declare-fun c!1273704 () Bool)

(assert (=> b!6841317 (= c!1273704 ((_ is Cons!66158) (unfocusZipperList!2080 zl!343)))))

(assert (=> d!2151128 e!4125984))

(declare-fun res!2793181 () Bool)

(assert (=> d!2151128 (=> (not res!2793181) (not e!4125984))))

(assert (=> d!2151128 (= res!2793181 (validRegex!8397 lt!2455289))))

(assert (=> d!2151128 (= lt!2455289 e!4125980)))

(declare-fun c!1273703 () Bool)

(assert (=> d!2151128 (= c!1273703 e!4125983)))

(declare-fun res!2793182 () Bool)

(assert (=> d!2151128 (=> (not res!2793182) (not e!4125983))))

(assert (=> d!2151128 (= res!2793182 ((_ is Cons!66158) (unfocusZipperList!2080 zl!343)))))

(assert (=> d!2151128 (forall!15838 (unfocusZipperList!2080 zl!343) lambda!386790)))

(assert (=> d!2151128 (= (generalisedUnion!2503 (unfocusZipperList!2080 zl!343)) lt!2455289)))

(declare-fun b!6841318 () Bool)

(assert (=> b!6841318 (= e!4125982 e!4125979)))

(declare-fun c!1273706 () Bool)

(declare-fun tail!12790 (List!66282) List!66282)

(assert (=> b!6841318 (= c!1273706 (isEmpty!38545 (tail!12790 (unfocusZipperList!2080 zl!343))))))

(declare-fun b!6841319 () Bool)

(assert (=> b!6841319 (= e!4125980 (h!72606 (unfocusZipperList!2080 zl!343)))))

(assert (= (and d!2151128 res!2793182) b!6841313))

(assert (= (and d!2151128 c!1273703) b!6841319))

(assert (= (and d!2151128 (not c!1273703)) b!6841317))

(assert (= (and b!6841317 c!1273704) b!6841311))

(assert (= (and b!6841317 (not c!1273704)) b!6841310))

(assert (= (and d!2151128 res!2793181) b!6841314))

(assert (= (and b!6841314 c!1273705) b!6841312))

(assert (= (and b!6841314 (not c!1273705)) b!6841318))

(assert (= (and b!6841318 c!1273706) b!6841316))

(assert (= (and b!6841318 (not c!1273706)) b!6841315))

(declare-fun m!7584050 () Bool)

(assert (=> b!6841312 m!7584050))

(declare-fun m!7584052 () Bool)

(assert (=> b!6841313 m!7584052))

(declare-fun m!7584054 () Bool)

(assert (=> b!6841311 m!7584054))

(assert (=> b!6841318 m!7583802))

(declare-fun m!7584056 () Bool)

(assert (=> b!6841318 m!7584056))

(assert (=> b!6841318 m!7584056))

(declare-fun m!7584058 () Bool)

(assert (=> b!6841318 m!7584058))

(assert (=> b!6841314 m!7583802))

(declare-fun m!7584060 () Bool)

(assert (=> b!6841314 m!7584060))

(declare-fun m!7584062 () Bool)

(assert (=> b!6841315 m!7584062))

(assert (=> b!6841316 m!7583802))

(declare-fun m!7584064 () Bool)

(assert (=> b!6841316 m!7584064))

(declare-fun m!7584066 () Bool)

(assert (=> d!2151128 m!7584066))

(assert (=> d!2151128 m!7583802))

(declare-fun m!7584068 () Bool)

(assert (=> d!2151128 m!7584068))

(assert (=> d!2151004 d!2151128))

(declare-fun bs!1829183 () Bool)

(declare-fun d!2151130 () Bool)

(assert (= bs!1829183 (and d!2151130 d!2151112)))

(declare-fun lambda!386793 () Int)

(assert (=> bs!1829183 (= lambda!386793 lambda!386786)))

(declare-fun bs!1829184 () Bool)

(assert (= bs!1829184 (and d!2151130 d!2151012)))

(assert (=> bs!1829184 (= lambda!386793 lambda!386764)))

(declare-fun bs!1829185 () Bool)

(assert (= bs!1829185 (and d!2151130 d!2151128)))

(assert (=> bs!1829185 (= lambda!386793 lambda!386790)))

(declare-fun bs!1829186 () Bool)

(assert (= bs!1829186 (and d!2151130 d!2151124)))

(assert (=> bs!1829186 (= lambda!386793 lambda!386787)))

(declare-fun bs!1829187 () Bool)

(assert (= bs!1829187 (and d!2151130 d!2151006)))

(assert (=> bs!1829187 (= lambda!386793 lambda!386763)))

(declare-fun lt!2455292 () List!66282)

(assert (=> d!2151130 (forall!15838 lt!2455292 lambda!386793)))

(declare-fun e!4125987 () List!66282)

(assert (=> d!2151130 (= lt!2455292 e!4125987)))

(declare-fun c!1273709 () Bool)

(assert (=> d!2151130 (= c!1273709 ((_ is Cons!66159) zl!343))))

(assert (=> d!2151130 (= (unfocusZipperList!2080 zl!343) lt!2455292)))

(declare-fun b!6841324 () Bool)

(declare-fun generalisedConcat!2256 (List!66282) Regex!16661)

(assert (=> b!6841324 (= e!4125987 (Cons!66158 (generalisedConcat!2256 (exprs!6545 (h!72607 zl!343))) (unfocusZipperList!2080 (t!380026 zl!343))))))

(declare-fun b!6841325 () Bool)

(assert (=> b!6841325 (= e!4125987 Nil!66158)))

(assert (= (and d!2151130 c!1273709) b!6841324))

(assert (= (and d!2151130 (not c!1273709)) b!6841325))

(declare-fun m!7584070 () Bool)

(assert (=> d!2151130 m!7584070))

(declare-fun m!7584072 () Bool)

(assert (=> b!6841324 m!7584072))

(declare-fun m!7584074 () Bool)

(assert (=> b!6841324 m!7584074))

(assert (=> d!2151004 d!2151130))

(declare-fun bs!1829188 () Bool)

(declare-fun b!6841327 () Bool)

(assert (= bs!1829188 (and b!6841327 b!6840665)))

(declare-fun lambda!386794 () Int)

(assert (=> bs!1829188 (= (and (= (reg!16990 (regOne!33835 r!7292)) (reg!16990 r!7292)) (= (regOne!33835 r!7292) r!7292)) (= lambda!386794 lambda!386759))))

(declare-fun bs!1829189 () Bool)

(assert (= bs!1829189 (and b!6841327 b!6840671)))

(assert (=> bs!1829189 (not (= lambda!386794 lambda!386760))))

(assert (=> b!6841327 true))

(assert (=> b!6841327 true))

(declare-fun bs!1829190 () Bool)

(declare-fun b!6841333 () Bool)

(assert (= bs!1829190 (and b!6841333 b!6840665)))

(declare-fun lambda!386795 () Int)

(assert (=> bs!1829190 (not (= lambda!386795 lambda!386759))))

(declare-fun bs!1829191 () Bool)

(assert (= bs!1829191 (and b!6841333 b!6840671)))

(assert (=> bs!1829191 (= (and (= (regOne!33834 (regOne!33835 r!7292)) (regOne!33834 r!7292)) (= (regTwo!33834 (regOne!33835 r!7292)) (regTwo!33834 r!7292))) (= lambda!386795 lambda!386760))))

(declare-fun bs!1829192 () Bool)

(assert (= bs!1829192 (and b!6841333 b!6841327)))

(assert (=> bs!1829192 (not (= lambda!386795 lambda!386794))))

(assert (=> b!6841333 true))

(assert (=> b!6841333 true))

(declare-fun b!6841326 () Bool)

(declare-fun e!4125991 () Bool)

(declare-fun e!4125994 () Bool)

(assert (=> b!6841326 (= e!4125991 e!4125994)))

(declare-fun res!2793183 () Bool)

(assert (=> b!6841326 (= res!2793183 (not ((_ is EmptyLang!16661) (regOne!33835 r!7292))))))

(assert (=> b!6841326 (=> (not res!2793183) (not e!4125994))))

(declare-fun e!4125990 () Bool)

(declare-fun call!623071 () Bool)

(assert (=> b!6841327 (= e!4125990 call!623071)))

(declare-fun c!1273713 () Bool)

(declare-fun bm!623065 () Bool)

(assert (=> bm!623065 (= call!623071 (Exists!3727 (ite c!1273713 lambda!386794 lambda!386795)))))

(declare-fun b!6841328 () Bool)

(declare-fun c!1273710 () Bool)

(assert (=> b!6841328 (= c!1273710 ((_ is Union!16661) (regOne!33835 r!7292)))))

(declare-fun e!4125992 () Bool)

(declare-fun e!4125993 () Bool)

(assert (=> b!6841328 (= e!4125992 e!4125993)))

(declare-fun b!6841329 () Bool)

(declare-fun call!623070 () Bool)

(assert (=> b!6841329 (= e!4125991 call!623070)))

(declare-fun b!6841330 () Bool)

(declare-fun e!4125989 () Bool)

(assert (=> b!6841330 (= e!4125993 e!4125989)))

(declare-fun res!2793185 () Bool)

(assert (=> b!6841330 (= res!2793185 (matchRSpec!3762 (regOne!33835 (regOne!33835 r!7292)) s!2326))))

(assert (=> b!6841330 (=> res!2793185 e!4125989)))

(declare-fun b!6841331 () Bool)

(assert (=> b!6841331 (= e!4125989 (matchRSpec!3762 (regTwo!33835 (regOne!33835 r!7292)) s!2326))))

(declare-fun d!2151132 () Bool)

(declare-fun c!1273712 () Bool)

(assert (=> d!2151132 (= c!1273712 ((_ is EmptyExpr!16661) (regOne!33835 r!7292)))))

(assert (=> d!2151132 (= (matchRSpec!3762 (regOne!33835 r!7292) s!2326) e!4125991)))

(declare-fun b!6841332 () Bool)

(assert (=> b!6841332 (= e!4125992 (= s!2326 (Cons!66160 (c!1273541 (regOne!33835 r!7292)) Nil!66160)))))

(declare-fun e!4125988 () Bool)

(assert (=> b!6841333 (= e!4125988 call!623071)))

(declare-fun b!6841334 () Bool)

(declare-fun res!2793184 () Bool)

(assert (=> b!6841334 (=> res!2793184 e!4125990)))

(assert (=> b!6841334 (= res!2793184 call!623070)))

(assert (=> b!6841334 (= e!4125988 e!4125990)))

(declare-fun b!6841335 () Bool)

(declare-fun c!1273711 () Bool)

(assert (=> b!6841335 (= c!1273711 ((_ is ElementMatch!16661) (regOne!33835 r!7292)))))

(assert (=> b!6841335 (= e!4125994 e!4125992)))

(declare-fun b!6841336 () Bool)

(assert (=> b!6841336 (= e!4125993 e!4125988)))

(assert (=> b!6841336 (= c!1273713 ((_ is Star!16661) (regOne!33835 r!7292)))))

(declare-fun bm!623066 () Bool)

(assert (=> bm!623066 (= call!623070 (isEmpty!38543 s!2326))))

(assert (= (and d!2151132 c!1273712) b!6841329))

(assert (= (and d!2151132 (not c!1273712)) b!6841326))

(assert (= (and b!6841326 res!2793183) b!6841335))

(assert (= (and b!6841335 c!1273711) b!6841332))

(assert (= (and b!6841335 (not c!1273711)) b!6841328))

(assert (= (and b!6841328 c!1273710) b!6841330))

(assert (= (and b!6841328 (not c!1273710)) b!6841336))

(assert (= (and b!6841330 (not res!2793185)) b!6841331))

(assert (= (and b!6841336 c!1273713) b!6841334))

(assert (= (and b!6841336 (not c!1273713)) b!6841333))

(assert (= (and b!6841334 (not res!2793184)) b!6841327))

(assert (= (or b!6841327 b!6841333) bm!623065))

(assert (= (or b!6841329 b!6841334) bm!623066))

(declare-fun m!7584076 () Bool)

(assert (=> bm!623065 m!7584076))

(declare-fun m!7584078 () Bool)

(assert (=> b!6841330 m!7584078))

(declare-fun m!7584080 () Bool)

(assert (=> b!6841331 m!7584080))

(assert (=> bm!623066 m!7583780))

(assert (=> b!6840668 d!2151132))

(assert (=> bm!622995 d!2151054))

(declare-fun bs!1829193 () Bool)

(declare-fun b!6841338 () Bool)

(assert (= bs!1829193 (and b!6841338 b!6840665)))

(declare-fun lambda!386796 () Int)

(assert (=> bs!1829193 (= (and (= (reg!16990 (regTwo!33835 r!7292)) (reg!16990 r!7292)) (= (regTwo!33835 r!7292) r!7292)) (= lambda!386796 lambda!386759))))

(declare-fun bs!1829194 () Bool)

(assert (= bs!1829194 (and b!6841338 b!6840671)))

(assert (=> bs!1829194 (not (= lambda!386796 lambda!386760))))

(declare-fun bs!1829195 () Bool)

(assert (= bs!1829195 (and b!6841338 b!6841327)))

(assert (=> bs!1829195 (= (and (= (reg!16990 (regTwo!33835 r!7292)) (reg!16990 (regOne!33835 r!7292))) (= (regTwo!33835 r!7292) (regOne!33835 r!7292))) (= lambda!386796 lambda!386794))))

(declare-fun bs!1829196 () Bool)

(assert (= bs!1829196 (and b!6841338 b!6841333)))

(assert (=> bs!1829196 (not (= lambda!386796 lambda!386795))))

(assert (=> b!6841338 true))

(assert (=> b!6841338 true))

(declare-fun bs!1829197 () Bool)

(declare-fun b!6841344 () Bool)

(assert (= bs!1829197 (and b!6841344 b!6841333)))

(declare-fun lambda!386797 () Int)

(assert (=> bs!1829197 (= (and (= (regOne!33834 (regTwo!33835 r!7292)) (regOne!33834 (regOne!33835 r!7292))) (= (regTwo!33834 (regTwo!33835 r!7292)) (regTwo!33834 (regOne!33835 r!7292)))) (= lambda!386797 lambda!386795))))

(declare-fun bs!1829198 () Bool)

(assert (= bs!1829198 (and b!6841344 b!6840665)))

(assert (=> bs!1829198 (not (= lambda!386797 lambda!386759))))

(declare-fun bs!1829199 () Bool)

(assert (= bs!1829199 (and b!6841344 b!6841338)))

(assert (=> bs!1829199 (not (= lambda!386797 lambda!386796))))

(declare-fun bs!1829200 () Bool)

(assert (= bs!1829200 (and b!6841344 b!6840671)))

(assert (=> bs!1829200 (= (and (= (regOne!33834 (regTwo!33835 r!7292)) (regOne!33834 r!7292)) (= (regTwo!33834 (regTwo!33835 r!7292)) (regTwo!33834 r!7292))) (= lambda!386797 lambda!386760))))

(declare-fun bs!1829201 () Bool)

(assert (= bs!1829201 (and b!6841344 b!6841327)))

(assert (=> bs!1829201 (not (= lambda!386797 lambda!386794))))

(assert (=> b!6841344 true))

(assert (=> b!6841344 true))

(declare-fun b!6841337 () Bool)

(declare-fun e!4125998 () Bool)

(declare-fun e!4126001 () Bool)

(assert (=> b!6841337 (= e!4125998 e!4126001)))

(declare-fun res!2793186 () Bool)

(assert (=> b!6841337 (= res!2793186 (not ((_ is EmptyLang!16661) (regTwo!33835 r!7292))))))

(assert (=> b!6841337 (=> (not res!2793186) (not e!4126001))))

(declare-fun e!4125997 () Bool)

(declare-fun call!623073 () Bool)

(assert (=> b!6841338 (= e!4125997 call!623073)))

(declare-fun bm!623067 () Bool)

(declare-fun c!1273717 () Bool)

(assert (=> bm!623067 (= call!623073 (Exists!3727 (ite c!1273717 lambda!386796 lambda!386797)))))

(declare-fun b!6841339 () Bool)

(declare-fun c!1273714 () Bool)

(assert (=> b!6841339 (= c!1273714 ((_ is Union!16661) (regTwo!33835 r!7292)))))

(declare-fun e!4125999 () Bool)

(declare-fun e!4126000 () Bool)

(assert (=> b!6841339 (= e!4125999 e!4126000)))

(declare-fun b!6841340 () Bool)

(declare-fun call!623072 () Bool)

(assert (=> b!6841340 (= e!4125998 call!623072)))

(declare-fun b!6841341 () Bool)

(declare-fun e!4125996 () Bool)

(assert (=> b!6841341 (= e!4126000 e!4125996)))

(declare-fun res!2793188 () Bool)

(assert (=> b!6841341 (= res!2793188 (matchRSpec!3762 (regOne!33835 (regTwo!33835 r!7292)) s!2326))))

(assert (=> b!6841341 (=> res!2793188 e!4125996)))

(declare-fun b!6841342 () Bool)

(assert (=> b!6841342 (= e!4125996 (matchRSpec!3762 (regTwo!33835 (regTwo!33835 r!7292)) s!2326))))

(declare-fun d!2151134 () Bool)

(declare-fun c!1273716 () Bool)

(assert (=> d!2151134 (= c!1273716 ((_ is EmptyExpr!16661) (regTwo!33835 r!7292)))))

(assert (=> d!2151134 (= (matchRSpec!3762 (regTwo!33835 r!7292) s!2326) e!4125998)))

(declare-fun b!6841343 () Bool)

(assert (=> b!6841343 (= e!4125999 (= s!2326 (Cons!66160 (c!1273541 (regTwo!33835 r!7292)) Nil!66160)))))

(declare-fun e!4125995 () Bool)

(assert (=> b!6841344 (= e!4125995 call!623073)))

(declare-fun b!6841345 () Bool)

(declare-fun res!2793187 () Bool)

(assert (=> b!6841345 (=> res!2793187 e!4125997)))

(assert (=> b!6841345 (= res!2793187 call!623072)))

(assert (=> b!6841345 (= e!4125995 e!4125997)))

(declare-fun b!6841346 () Bool)

(declare-fun c!1273715 () Bool)

(assert (=> b!6841346 (= c!1273715 ((_ is ElementMatch!16661) (regTwo!33835 r!7292)))))

(assert (=> b!6841346 (= e!4126001 e!4125999)))

(declare-fun b!6841347 () Bool)

(assert (=> b!6841347 (= e!4126000 e!4125995)))

(assert (=> b!6841347 (= c!1273717 ((_ is Star!16661) (regTwo!33835 r!7292)))))

(declare-fun bm!623068 () Bool)

(assert (=> bm!623068 (= call!623072 (isEmpty!38543 s!2326))))

(assert (= (and d!2151134 c!1273716) b!6841340))

(assert (= (and d!2151134 (not c!1273716)) b!6841337))

(assert (= (and b!6841337 res!2793186) b!6841346))

(assert (= (and b!6841346 c!1273715) b!6841343))

(assert (= (and b!6841346 (not c!1273715)) b!6841339))

(assert (= (and b!6841339 c!1273714) b!6841341))

(assert (= (and b!6841339 (not c!1273714)) b!6841347))

(assert (= (and b!6841341 (not res!2793188)) b!6841342))

(assert (= (and b!6841347 c!1273717) b!6841345))

(assert (= (and b!6841347 (not c!1273717)) b!6841344))

(assert (= (and b!6841345 (not res!2793187)) b!6841338))

(assert (= (or b!6841338 b!6841344) bm!623067))

(assert (= (or b!6841340 b!6841345) bm!623068))

(declare-fun m!7584082 () Bool)

(assert (=> bm!623067 m!7584082))

(declare-fun m!7584084 () Bool)

(assert (=> b!6841341 m!7584084))

(declare-fun m!7584086 () Bool)

(assert (=> b!6841342 m!7584086))

(assert (=> bm!623068 m!7583780))

(assert (=> b!6840669 d!2151134))

(declare-fun b!6841350 () Bool)

(declare-fun e!4126002 () Bool)

(declare-fun tp!1873411 () Bool)

(assert (=> b!6841350 (= e!4126002 tp!1873411)))

(assert (=> b!6840824 (= tp!1873203 e!4126002)))

(declare-fun b!6841351 () Bool)

(declare-fun tp!1873408 () Bool)

(declare-fun tp!1873410 () Bool)

(assert (=> b!6841351 (= e!4126002 (and tp!1873408 tp!1873410))))

(declare-fun b!6841349 () Bool)

(declare-fun tp!1873412 () Bool)

(declare-fun tp!1873409 () Bool)

(assert (=> b!6841349 (= e!4126002 (and tp!1873412 tp!1873409))))

(declare-fun b!6841348 () Bool)

(assert (=> b!6841348 (= e!4126002 tp_is_empty!42575)))

(assert (= (and b!6840824 ((_ is ElementMatch!16661) (reg!16990 (regOne!33834 r!7292)))) b!6841348))

(assert (= (and b!6840824 ((_ is Concat!25506) (reg!16990 (regOne!33834 r!7292)))) b!6841349))

(assert (= (and b!6840824 ((_ is Star!16661) (reg!16990 (regOne!33834 r!7292)))) b!6841350))

(assert (= (and b!6840824 ((_ is Union!16661) (reg!16990 (regOne!33834 r!7292)))) b!6841351))

(declare-fun b!6841354 () Bool)

(declare-fun e!4126003 () Bool)

(declare-fun tp!1873416 () Bool)

(assert (=> b!6841354 (= e!4126003 tp!1873416)))

(assert (=> b!6840823 (= tp!1873204 e!4126003)))

(declare-fun b!6841355 () Bool)

(declare-fun tp!1873413 () Bool)

(declare-fun tp!1873415 () Bool)

(assert (=> b!6841355 (= e!4126003 (and tp!1873413 tp!1873415))))

(declare-fun b!6841353 () Bool)

(declare-fun tp!1873417 () Bool)

(declare-fun tp!1873414 () Bool)

(assert (=> b!6841353 (= e!4126003 (and tp!1873417 tp!1873414))))

(declare-fun b!6841352 () Bool)

(assert (=> b!6841352 (= e!4126003 tp_is_empty!42575)))

(assert (= (and b!6840823 ((_ is ElementMatch!16661) (regOne!33834 (regOne!33834 r!7292)))) b!6841352))

(assert (= (and b!6840823 ((_ is Concat!25506) (regOne!33834 (regOne!33834 r!7292)))) b!6841353))

(assert (= (and b!6840823 ((_ is Star!16661) (regOne!33834 (regOne!33834 r!7292)))) b!6841354))

(assert (= (and b!6840823 ((_ is Union!16661) (regOne!33834 (regOne!33834 r!7292)))) b!6841355))

(declare-fun b!6841358 () Bool)

(declare-fun e!4126004 () Bool)

(declare-fun tp!1873421 () Bool)

(assert (=> b!6841358 (= e!4126004 tp!1873421)))

(assert (=> b!6840823 (= tp!1873201 e!4126004)))

(declare-fun b!6841359 () Bool)

(declare-fun tp!1873418 () Bool)

(declare-fun tp!1873420 () Bool)

(assert (=> b!6841359 (= e!4126004 (and tp!1873418 tp!1873420))))

(declare-fun b!6841357 () Bool)

(declare-fun tp!1873422 () Bool)

(declare-fun tp!1873419 () Bool)

(assert (=> b!6841357 (= e!4126004 (and tp!1873422 tp!1873419))))

(declare-fun b!6841356 () Bool)

(assert (=> b!6841356 (= e!4126004 tp_is_empty!42575)))

(assert (= (and b!6840823 ((_ is ElementMatch!16661) (regTwo!33834 (regOne!33834 r!7292)))) b!6841356))

(assert (= (and b!6840823 ((_ is Concat!25506) (regTwo!33834 (regOne!33834 r!7292)))) b!6841357))

(assert (= (and b!6840823 ((_ is Star!16661) (regTwo!33834 (regOne!33834 r!7292)))) b!6841358))

(assert (= (and b!6840823 ((_ is Union!16661) (regTwo!33834 (regOne!33834 r!7292)))) b!6841359))

(declare-fun b!6841362 () Bool)

(declare-fun e!4126005 () Bool)

(declare-fun tp!1873426 () Bool)

(assert (=> b!6841362 (= e!4126005 tp!1873426)))

(assert (=> b!6840865 (= tp!1873243 e!4126005)))

(declare-fun b!6841363 () Bool)

(declare-fun tp!1873423 () Bool)

(declare-fun tp!1873425 () Bool)

(assert (=> b!6841363 (= e!4126005 (and tp!1873423 tp!1873425))))

(declare-fun b!6841361 () Bool)

(declare-fun tp!1873427 () Bool)

(declare-fun tp!1873424 () Bool)

(assert (=> b!6841361 (= e!4126005 (and tp!1873427 tp!1873424))))

(declare-fun b!6841360 () Bool)

(assert (=> b!6841360 (= e!4126005 tp_is_empty!42575)))

(assert (= (and b!6840865 ((_ is ElementMatch!16661) (regOne!33835 (reg!16990 r!7292)))) b!6841360))

(assert (= (and b!6840865 ((_ is Concat!25506) (regOne!33835 (reg!16990 r!7292)))) b!6841361))

(assert (= (and b!6840865 ((_ is Star!16661) (regOne!33835 (reg!16990 r!7292)))) b!6841362))

(assert (= (and b!6840865 ((_ is Union!16661) (regOne!33835 (reg!16990 r!7292)))) b!6841363))

(declare-fun b!6841366 () Bool)

(declare-fun e!4126006 () Bool)

(declare-fun tp!1873431 () Bool)

(assert (=> b!6841366 (= e!4126006 tp!1873431)))

(assert (=> b!6840865 (= tp!1873245 e!4126006)))

(declare-fun b!6841367 () Bool)

(declare-fun tp!1873428 () Bool)

(declare-fun tp!1873430 () Bool)

(assert (=> b!6841367 (= e!4126006 (and tp!1873428 tp!1873430))))

(declare-fun b!6841365 () Bool)

(declare-fun tp!1873432 () Bool)

(declare-fun tp!1873429 () Bool)

(assert (=> b!6841365 (= e!4126006 (and tp!1873432 tp!1873429))))

(declare-fun b!6841364 () Bool)

(assert (=> b!6841364 (= e!4126006 tp_is_empty!42575)))

(assert (= (and b!6840865 ((_ is ElementMatch!16661) (regTwo!33835 (reg!16990 r!7292)))) b!6841364))

(assert (= (and b!6840865 ((_ is Concat!25506) (regTwo!33835 (reg!16990 r!7292)))) b!6841365))

(assert (= (and b!6840865 ((_ is Star!16661) (regTwo!33835 (reg!16990 r!7292)))) b!6841366))

(assert (= (and b!6840865 ((_ is Union!16661) (regTwo!33835 (reg!16990 r!7292)))) b!6841367))

(declare-fun b!6841370 () Bool)

(declare-fun e!4126007 () Bool)

(declare-fun tp!1873436 () Bool)

(assert (=> b!6841370 (= e!4126007 tp!1873436)))

(assert (=> b!6840843 (= tp!1873222 e!4126007)))

(declare-fun b!6841371 () Bool)

(declare-fun tp!1873433 () Bool)

(declare-fun tp!1873435 () Bool)

(assert (=> b!6841371 (= e!4126007 (and tp!1873433 tp!1873435))))

(declare-fun b!6841369 () Bool)

(declare-fun tp!1873437 () Bool)

(declare-fun tp!1873434 () Bool)

(assert (=> b!6841369 (= e!4126007 (and tp!1873437 tp!1873434))))

(declare-fun b!6841368 () Bool)

(assert (=> b!6841368 (= e!4126007 tp_is_empty!42575)))

(assert (= (and b!6840843 ((_ is ElementMatch!16661) (regOne!33835 (regOne!33835 r!7292)))) b!6841368))

(assert (= (and b!6840843 ((_ is Concat!25506) (regOne!33835 (regOne!33835 r!7292)))) b!6841369))

(assert (= (and b!6840843 ((_ is Star!16661) (regOne!33835 (regOne!33835 r!7292)))) b!6841370))

(assert (= (and b!6840843 ((_ is Union!16661) (regOne!33835 (regOne!33835 r!7292)))) b!6841371))

(declare-fun b!6841374 () Bool)

(declare-fun e!4126008 () Bool)

(declare-fun tp!1873441 () Bool)

(assert (=> b!6841374 (= e!4126008 tp!1873441)))

(assert (=> b!6840843 (= tp!1873224 e!4126008)))

(declare-fun b!6841375 () Bool)

(declare-fun tp!1873438 () Bool)

(declare-fun tp!1873440 () Bool)

(assert (=> b!6841375 (= e!4126008 (and tp!1873438 tp!1873440))))

(declare-fun b!6841373 () Bool)

(declare-fun tp!1873442 () Bool)

(declare-fun tp!1873439 () Bool)

(assert (=> b!6841373 (= e!4126008 (and tp!1873442 tp!1873439))))

(declare-fun b!6841372 () Bool)

(assert (=> b!6841372 (= e!4126008 tp_is_empty!42575)))

(assert (= (and b!6840843 ((_ is ElementMatch!16661) (regTwo!33835 (regOne!33835 r!7292)))) b!6841372))

(assert (= (and b!6840843 ((_ is Concat!25506) (regTwo!33835 (regOne!33835 r!7292)))) b!6841373))

(assert (= (and b!6840843 ((_ is Star!16661) (regTwo!33835 (regOne!33835 r!7292)))) b!6841374))

(assert (= (and b!6840843 ((_ is Union!16661) (regTwo!33835 (regOne!33835 r!7292)))) b!6841375))

(declare-fun b!6841378 () Bool)

(declare-fun e!4126009 () Bool)

(declare-fun tp!1873446 () Bool)

(assert (=> b!6841378 (= e!4126009 tp!1873446)))

(assert (=> b!6840864 (= tp!1873246 e!4126009)))

(declare-fun b!6841379 () Bool)

(declare-fun tp!1873443 () Bool)

(declare-fun tp!1873445 () Bool)

(assert (=> b!6841379 (= e!4126009 (and tp!1873443 tp!1873445))))

(declare-fun b!6841377 () Bool)

(declare-fun tp!1873447 () Bool)

(declare-fun tp!1873444 () Bool)

(assert (=> b!6841377 (= e!4126009 (and tp!1873447 tp!1873444))))

(declare-fun b!6841376 () Bool)

(assert (=> b!6841376 (= e!4126009 tp_is_empty!42575)))

(assert (= (and b!6840864 ((_ is ElementMatch!16661) (reg!16990 (reg!16990 r!7292)))) b!6841376))

(assert (= (and b!6840864 ((_ is Concat!25506) (reg!16990 (reg!16990 r!7292)))) b!6841377))

(assert (= (and b!6840864 ((_ is Star!16661) (reg!16990 (reg!16990 r!7292)))) b!6841378))

(assert (= (and b!6840864 ((_ is Union!16661) (reg!16990 (reg!16990 r!7292)))) b!6841379))

(declare-fun b!6841382 () Bool)

(declare-fun e!4126010 () Bool)

(declare-fun tp!1873451 () Bool)

(assert (=> b!6841382 (= e!4126010 tp!1873451)))

(assert (=> b!6840863 (= tp!1873247 e!4126010)))

(declare-fun b!6841383 () Bool)

(declare-fun tp!1873448 () Bool)

(declare-fun tp!1873450 () Bool)

(assert (=> b!6841383 (= e!4126010 (and tp!1873448 tp!1873450))))

(declare-fun b!6841381 () Bool)

(declare-fun tp!1873452 () Bool)

(declare-fun tp!1873449 () Bool)

(assert (=> b!6841381 (= e!4126010 (and tp!1873452 tp!1873449))))

(declare-fun b!6841380 () Bool)

(assert (=> b!6841380 (= e!4126010 tp_is_empty!42575)))

(assert (= (and b!6840863 ((_ is ElementMatch!16661) (regOne!33834 (reg!16990 r!7292)))) b!6841380))

(assert (= (and b!6840863 ((_ is Concat!25506) (regOne!33834 (reg!16990 r!7292)))) b!6841381))

(assert (= (and b!6840863 ((_ is Star!16661) (regOne!33834 (reg!16990 r!7292)))) b!6841382))

(assert (= (and b!6840863 ((_ is Union!16661) (regOne!33834 (reg!16990 r!7292)))) b!6841383))

(declare-fun b!6841386 () Bool)

(declare-fun e!4126011 () Bool)

(declare-fun tp!1873456 () Bool)

(assert (=> b!6841386 (= e!4126011 tp!1873456)))

(assert (=> b!6840863 (= tp!1873244 e!4126011)))

(declare-fun b!6841387 () Bool)

(declare-fun tp!1873453 () Bool)

(declare-fun tp!1873455 () Bool)

(assert (=> b!6841387 (= e!4126011 (and tp!1873453 tp!1873455))))

(declare-fun b!6841385 () Bool)

(declare-fun tp!1873457 () Bool)

(declare-fun tp!1873454 () Bool)

(assert (=> b!6841385 (= e!4126011 (and tp!1873457 tp!1873454))))

(declare-fun b!6841384 () Bool)

(assert (=> b!6841384 (= e!4126011 tp_is_empty!42575)))

(assert (= (and b!6840863 ((_ is ElementMatch!16661) (regTwo!33834 (reg!16990 r!7292)))) b!6841384))

(assert (= (and b!6840863 ((_ is Concat!25506) (regTwo!33834 (reg!16990 r!7292)))) b!6841385))

(assert (= (and b!6840863 ((_ is Star!16661) (regTwo!33834 (reg!16990 r!7292)))) b!6841386))

(assert (= (and b!6840863 ((_ is Union!16661) (regTwo!33834 (reg!16990 r!7292)))) b!6841387))

(declare-fun b!6841390 () Bool)

(declare-fun e!4126012 () Bool)

(declare-fun tp!1873461 () Bool)

(assert (=> b!6841390 (= e!4126012 tp!1873461)))

(assert (=> b!6840841 (= tp!1873226 e!4126012)))

(declare-fun b!6841391 () Bool)

(declare-fun tp!1873458 () Bool)

(declare-fun tp!1873460 () Bool)

(assert (=> b!6841391 (= e!4126012 (and tp!1873458 tp!1873460))))

(declare-fun b!6841389 () Bool)

(declare-fun tp!1873462 () Bool)

(declare-fun tp!1873459 () Bool)

(assert (=> b!6841389 (= e!4126012 (and tp!1873462 tp!1873459))))

(declare-fun b!6841388 () Bool)

(assert (=> b!6841388 (= e!4126012 tp_is_empty!42575)))

(assert (= (and b!6840841 ((_ is ElementMatch!16661) (regOne!33834 (regOne!33835 r!7292)))) b!6841388))

(assert (= (and b!6840841 ((_ is Concat!25506) (regOne!33834 (regOne!33835 r!7292)))) b!6841389))

(assert (= (and b!6840841 ((_ is Star!16661) (regOne!33834 (regOne!33835 r!7292)))) b!6841390))

(assert (= (and b!6840841 ((_ is Union!16661) (regOne!33834 (regOne!33835 r!7292)))) b!6841391))

(declare-fun b!6841394 () Bool)

(declare-fun e!4126013 () Bool)

(declare-fun tp!1873466 () Bool)

(assert (=> b!6841394 (= e!4126013 tp!1873466)))

(assert (=> b!6840841 (= tp!1873223 e!4126013)))

(declare-fun b!6841395 () Bool)

(declare-fun tp!1873463 () Bool)

(declare-fun tp!1873465 () Bool)

(assert (=> b!6841395 (= e!4126013 (and tp!1873463 tp!1873465))))

(declare-fun b!6841393 () Bool)

(declare-fun tp!1873467 () Bool)

(declare-fun tp!1873464 () Bool)

(assert (=> b!6841393 (= e!4126013 (and tp!1873467 tp!1873464))))

(declare-fun b!6841392 () Bool)

(assert (=> b!6841392 (= e!4126013 tp_is_empty!42575)))

(assert (= (and b!6840841 ((_ is ElementMatch!16661) (regTwo!33834 (regOne!33835 r!7292)))) b!6841392))

(assert (= (and b!6840841 ((_ is Concat!25506) (regTwo!33834 (regOne!33835 r!7292)))) b!6841393))

(assert (= (and b!6840841 ((_ is Star!16661) (regTwo!33834 (regOne!33835 r!7292)))) b!6841394))

(assert (= (and b!6840841 ((_ is Union!16661) (regTwo!33834 (regOne!33835 r!7292)))) b!6841395))

(declare-fun b!6841398 () Bool)

(declare-fun e!4126014 () Bool)

(declare-fun tp!1873471 () Bool)

(assert (=> b!6841398 (= e!4126014 tp!1873471)))

(assert (=> b!6840829 (= tp!1873205 e!4126014)))

(declare-fun b!6841399 () Bool)

(declare-fun tp!1873468 () Bool)

(declare-fun tp!1873470 () Bool)

(assert (=> b!6841399 (= e!4126014 (and tp!1873468 tp!1873470))))

(declare-fun b!6841397 () Bool)

(declare-fun tp!1873472 () Bool)

(declare-fun tp!1873469 () Bool)

(assert (=> b!6841397 (= e!4126014 (and tp!1873472 tp!1873469))))

(declare-fun b!6841396 () Bool)

(assert (=> b!6841396 (= e!4126014 tp_is_empty!42575)))

(assert (= (and b!6840829 ((_ is ElementMatch!16661) (regOne!33835 (regTwo!33834 r!7292)))) b!6841396))

(assert (= (and b!6840829 ((_ is Concat!25506) (regOne!33835 (regTwo!33834 r!7292)))) b!6841397))

(assert (= (and b!6840829 ((_ is Star!16661) (regOne!33835 (regTwo!33834 r!7292)))) b!6841398))

(assert (= (and b!6840829 ((_ is Union!16661) (regOne!33835 (regTwo!33834 r!7292)))) b!6841399))

(declare-fun b!6841402 () Bool)

(declare-fun e!4126015 () Bool)

(declare-fun tp!1873476 () Bool)

(assert (=> b!6841402 (= e!4126015 tp!1873476)))

(assert (=> b!6840829 (= tp!1873207 e!4126015)))

(declare-fun b!6841403 () Bool)

(declare-fun tp!1873473 () Bool)

(declare-fun tp!1873475 () Bool)

(assert (=> b!6841403 (= e!4126015 (and tp!1873473 tp!1873475))))

(declare-fun b!6841401 () Bool)

(declare-fun tp!1873477 () Bool)

(declare-fun tp!1873474 () Bool)

(assert (=> b!6841401 (= e!4126015 (and tp!1873477 tp!1873474))))

(declare-fun b!6841400 () Bool)

(assert (=> b!6841400 (= e!4126015 tp_is_empty!42575)))

(assert (= (and b!6840829 ((_ is ElementMatch!16661) (regTwo!33835 (regTwo!33834 r!7292)))) b!6841400))

(assert (= (and b!6840829 ((_ is Concat!25506) (regTwo!33835 (regTwo!33834 r!7292)))) b!6841401))

(assert (= (and b!6840829 ((_ is Star!16661) (regTwo!33835 (regTwo!33834 r!7292)))) b!6841402))

(assert (= (and b!6840829 ((_ is Union!16661) (regTwo!33835 (regTwo!33834 r!7292)))) b!6841403))

(declare-fun b!6841404 () Bool)

(declare-fun e!4126016 () Bool)

(declare-fun tp!1873478 () Bool)

(declare-fun tp!1873479 () Bool)

(assert (=> b!6841404 (= e!4126016 (and tp!1873478 tp!1873479))))

(assert (=> b!6840856 (= tp!1873238 e!4126016)))

(assert (= (and b!6840856 ((_ is Cons!66158) (exprs!6545 (h!72607 (t!380026 zl!343))))) b!6841404))

(declare-fun b!6841407 () Bool)

(declare-fun e!4126017 () Bool)

(declare-fun tp!1873483 () Bool)

(assert (=> b!6841407 (= e!4126017 tp!1873483)))

(assert (=> b!6840842 (= tp!1873225 e!4126017)))

(declare-fun b!6841408 () Bool)

(declare-fun tp!1873480 () Bool)

(declare-fun tp!1873482 () Bool)

(assert (=> b!6841408 (= e!4126017 (and tp!1873480 tp!1873482))))

(declare-fun b!6841406 () Bool)

(declare-fun tp!1873484 () Bool)

(declare-fun tp!1873481 () Bool)

(assert (=> b!6841406 (= e!4126017 (and tp!1873484 tp!1873481))))

(declare-fun b!6841405 () Bool)

(assert (=> b!6841405 (= e!4126017 tp_is_empty!42575)))

(assert (= (and b!6840842 ((_ is ElementMatch!16661) (reg!16990 (regOne!33835 r!7292)))) b!6841405))

(assert (= (and b!6840842 ((_ is Concat!25506) (reg!16990 (regOne!33835 r!7292)))) b!6841406))

(assert (= (and b!6840842 ((_ is Star!16661) (reg!16990 (regOne!33835 r!7292)))) b!6841407))

(assert (= (and b!6840842 ((_ is Union!16661) (reg!16990 (regOne!33835 r!7292)))) b!6841408))

(declare-fun b!6841411 () Bool)

(declare-fun e!4126018 () Bool)

(declare-fun tp!1873488 () Bool)

(assert (=> b!6841411 (= e!4126018 tp!1873488)))

(assert (=> b!6840827 (= tp!1873209 e!4126018)))

(declare-fun b!6841412 () Bool)

(declare-fun tp!1873485 () Bool)

(declare-fun tp!1873487 () Bool)

(assert (=> b!6841412 (= e!4126018 (and tp!1873485 tp!1873487))))

(declare-fun b!6841410 () Bool)

(declare-fun tp!1873489 () Bool)

(declare-fun tp!1873486 () Bool)

(assert (=> b!6841410 (= e!4126018 (and tp!1873489 tp!1873486))))

(declare-fun b!6841409 () Bool)

(assert (=> b!6841409 (= e!4126018 tp_is_empty!42575)))

(assert (= (and b!6840827 ((_ is ElementMatch!16661) (regOne!33834 (regTwo!33834 r!7292)))) b!6841409))

(assert (= (and b!6840827 ((_ is Concat!25506) (regOne!33834 (regTwo!33834 r!7292)))) b!6841410))

(assert (= (and b!6840827 ((_ is Star!16661) (regOne!33834 (regTwo!33834 r!7292)))) b!6841411))

(assert (= (and b!6840827 ((_ is Union!16661) (regOne!33834 (regTwo!33834 r!7292)))) b!6841412))

(declare-fun b!6841415 () Bool)

(declare-fun e!4126019 () Bool)

(declare-fun tp!1873493 () Bool)

(assert (=> b!6841415 (= e!4126019 tp!1873493)))

(assert (=> b!6840827 (= tp!1873206 e!4126019)))

(declare-fun b!6841416 () Bool)

(declare-fun tp!1873490 () Bool)

(declare-fun tp!1873492 () Bool)

(assert (=> b!6841416 (= e!4126019 (and tp!1873490 tp!1873492))))

(declare-fun b!6841414 () Bool)

(declare-fun tp!1873494 () Bool)

(declare-fun tp!1873491 () Bool)

(assert (=> b!6841414 (= e!4126019 (and tp!1873494 tp!1873491))))

(declare-fun b!6841413 () Bool)

(assert (=> b!6841413 (= e!4126019 tp_is_empty!42575)))

(assert (= (and b!6840827 ((_ is ElementMatch!16661) (regTwo!33834 (regTwo!33834 r!7292)))) b!6841413))

(assert (= (and b!6840827 ((_ is Concat!25506) (regTwo!33834 (regTwo!33834 r!7292)))) b!6841414))

(assert (= (and b!6840827 ((_ is Star!16661) (regTwo!33834 (regTwo!33834 r!7292)))) b!6841415))

(assert (= (and b!6840827 ((_ is Union!16661) (regTwo!33834 (regTwo!33834 r!7292)))) b!6841416))

(declare-fun b!6841419 () Bool)

(declare-fun e!4126020 () Bool)

(declare-fun tp!1873498 () Bool)

(assert (=> b!6841419 (= e!4126020 tp!1873498)))

(assert (=> b!6840834 (= tp!1873214 e!4126020)))

(declare-fun b!6841420 () Bool)

(declare-fun tp!1873495 () Bool)

(declare-fun tp!1873497 () Bool)

(assert (=> b!6841420 (= e!4126020 (and tp!1873495 tp!1873497))))

(declare-fun b!6841418 () Bool)

(declare-fun tp!1873499 () Bool)

(declare-fun tp!1873496 () Bool)

(assert (=> b!6841418 (= e!4126020 (and tp!1873499 tp!1873496))))

(declare-fun b!6841417 () Bool)

(assert (=> b!6841417 (= e!4126020 tp_is_empty!42575)))

(assert (= (and b!6840834 ((_ is ElementMatch!16661) (h!72606 (exprs!6545 (h!72607 zl!343))))) b!6841417))

(assert (= (and b!6840834 ((_ is Concat!25506) (h!72606 (exprs!6545 (h!72607 zl!343))))) b!6841418))

(assert (= (and b!6840834 ((_ is Star!16661) (h!72606 (exprs!6545 (h!72607 zl!343))))) b!6841419))

(assert (= (and b!6840834 ((_ is Union!16661) (h!72606 (exprs!6545 (h!72607 zl!343))))) b!6841420))

(declare-fun b!6841421 () Bool)

(declare-fun e!4126021 () Bool)

(declare-fun tp!1873500 () Bool)

(declare-fun tp!1873501 () Bool)

(assert (=> b!6841421 (= e!4126021 (and tp!1873500 tp!1873501))))

(assert (=> b!6840834 (= tp!1873215 e!4126021)))

(assert (= (and b!6840834 ((_ is Cons!66158) (t!380025 (exprs!6545 (h!72607 zl!343))))) b!6841421))

(declare-fun b!6841423 () Bool)

(declare-fun e!4126023 () Bool)

(declare-fun tp!1873502 () Bool)

(assert (=> b!6841423 (= e!4126023 tp!1873502)))

(declare-fun tp!1873503 () Bool)

(declare-fun e!4126022 () Bool)

(declare-fun b!6841422 () Bool)

(assert (=> b!6841422 (= e!4126022 (and (inv!84899 (h!72607 (t!380026 (t!380026 zl!343)))) e!4126023 tp!1873503))))

(assert (=> b!6840855 (= tp!1873239 e!4126022)))

(assert (= b!6841422 b!6841423))

(assert (= (and b!6840855 ((_ is Cons!66159) (t!380026 (t!380026 zl!343)))) b!6841422))

(declare-fun m!7584088 () Bool)

(assert (=> b!6841422 m!7584088))

(declare-fun b!6841426 () Bool)

(declare-fun e!4126024 () Bool)

(declare-fun tp!1873507 () Bool)

(assert (=> b!6841426 (= e!4126024 tp!1873507)))

(assert (=> b!6840828 (= tp!1873208 e!4126024)))

(declare-fun b!6841427 () Bool)

(declare-fun tp!1873504 () Bool)

(declare-fun tp!1873506 () Bool)

(assert (=> b!6841427 (= e!4126024 (and tp!1873504 tp!1873506))))

(declare-fun b!6841425 () Bool)

(declare-fun tp!1873508 () Bool)

(declare-fun tp!1873505 () Bool)

(assert (=> b!6841425 (= e!4126024 (and tp!1873508 tp!1873505))))

(declare-fun b!6841424 () Bool)

(assert (=> b!6841424 (= e!4126024 tp_is_empty!42575)))

(assert (= (and b!6840828 ((_ is ElementMatch!16661) (reg!16990 (regTwo!33834 r!7292)))) b!6841424))

(assert (= (and b!6840828 ((_ is Concat!25506) (reg!16990 (regTwo!33834 r!7292)))) b!6841425))

(assert (= (and b!6840828 ((_ is Star!16661) (reg!16990 (regTwo!33834 r!7292)))) b!6841426))

(assert (= (and b!6840828 ((_ is Union!16661) (reg!16990 (regTwo!33834 r!7292)))) b!6841427))

(declare-fun b!6841430 () Bool)

(declare-fun e!4126025 () Bool)

(declare-fun tp!1873512 () Bool)

(assert (=> b!6841430 (= e!4126025 tp!1873512)))

(assert (=> b!6840848 (= tp!1873232 e!4126025)))

(declare-fun b!6841431 () Bool)

(declare-fun tp!1873509 () Bool)

(declare-fun tp!1873511 () Bool)

(assert (=> b!6841431 (= e!4126025 (and tp!1873509 tp!1873511))))

(declare-fun b!6841429 () Bool)

(declare-fun tp!1873513 () Bool)

(declare-fun tp!1873510 () Bool)

(assert (=> b!6841429 (= e!4126025 (and tp!1873513 tp!1873510))))

(declare-fun b!6841428 () Bool)

(assert (=> b!6841428 (= e!4126025 tp_is_empty!42575)))

(assert (= (and b!6840848 ((_ is ElementMatch!16661) (h!72606 (exprs!6545 setElem!47003)))) b!6841428))

(assert (= (and b!6840848 ((_ is Concat!25506) (h!72606 (exprs!6545 setElem!47003)))) b!6841429))

(assert (= (and b!6840848 ((_ is Star!16661) (h!72606 (exprs!6545 setElem!47003)))) b!6841430))

(assert (= (and b!6840848 ((_ is Union!16661) (h!72606 (exprs!6545 setElem!47003)))) b!6841431))

(declare-fun b!6841432 () Bool)

(declare-fun e!4126026 () Bool)

(declare-fun tp!1873514 () Bool)

(declare-fun tp!1873515 () Bool)

(assert (=> b!6841432 (= e!4126026 (and tp!1873514 tp!1873515))))

(assert (=> b!6840848 (= tp!1873233 e!4126026)))

(assert (= (and b!6840848 ((_ is Cons!66158) (t!380025 (exprs!6545 setElem!47003)))) b!6841432))

(declare-fun b!6841433 () Bool)

(declare-fun e!4126027 () Bool)

(declare-fun tp!1873516 () Bool)

(assert (=> b!6841433 (= e!4126027 (and tp_is_empty!42575 tp!1873516))))

(assert (=> b!6840861 (= tp!1873242 e!4126027)))

(assert (= (and b!6840861 ((_ is Cons!66160) (t!380027 (t!380027 s!2326)))) b!6841433))

(declare-fun b!6841436 () Bool)

(declare-fun e!4126028 () Bool)

(declare-fun tp!1873520 () Bool)

(assert (=> b!6841436 (= e!4126028 tp!1873520)))

(assert (=> b!6840825 (= tp!1873200 e!4126028)))

(declare-fun b!6841437 () Bool)

(declare-fun tp!1873517 () Bool)

(declare-fun tp!1873519 () Bool)

(assert (=> b!6841437 (= e!4126028 (and tp!1873517 tp!1873519))))

(declare-fun b!6841435 () Bool)

(declare-fun tp!1873521 () Bool)

(declare-fun tp!1873518 () Bool)

(assert (=> b!6841435 (= e!4126028 (and tp!1873521 tp!1873518))))

(declare-fun b!6841434 () Bool)

(assert (=> b!6841434 (= e!4126028 tp_is_empty!42575)))

(assert (= (and b!6840825 ((_ is ElementMatch!16661) (regOne!33835 (regOne!33834 r!7292)))) b!6841434))

(assert (= (and b!6840825 ((_ is Concat!25506) (regOne!33835 (regOne!33834 r!7292)))) b!6841435))

(assert (= (and b!6840825 ((_ is Star!16661) (regOne!33835 (regOne!33834 r!7292)))) b!6841436))

(assert (= (and b!6840825 ((_ is Union!16661) (regOne!33835 (regOne!33834 r!7292)))) b!6841437))

(declare-fun b!6841440 () Bool)

(declare-fun e!4126029 () Bool)

(declare-fun tp!1873525 () Bool)

(assert (=> b!6841440 (= e!4126029 tp!1873525)))

(assert (=> b!6840825 (= tp!1873202 e!4126029)))

(declare-fun b!6841441 () Bool)

(declare-fun tp!1873522 () Bool)

(declare-fun tp!1873524 () Bool)

(assert (=> b!6841441 (= e!4126029 (and tp!1873522 tp!1873524))))

(declare-fun b!6841439 () Bool)

(declare-fun tp!1873526 () Bool)

(declare-fun tp!1873523 () Bool)

(assert (=> b!6841439 (= e!4126029 (and tp!1873526 tp!1873523))))

(declare-fun b!6841438 () Bool)

(assert (=> b!6841438 (= e!4126029 tp_is_empty!42575)))

(assert (= (and b!6840825 ((_ is ElementMatch!16661) (regTwo!33835 (regOne!33834 r!7292)))) b!6841438))

(assert (= (and b!6840825 ((_ is Concat!25506) (regTwo!33835 (regOne!33834 r!7292)))) b!6841439))

(assert (= (and b!6840825 ((_ is Star!16661) (regTwo!33835 (regOne!33834 r!7292)))) b!6841440))

(assert (= (and b!6840825 ((_ is Union!16661) (regTwo!33835 (regOne!33834 r!7292)))) b!6841441))

(declare-fun condSetEmpty!47011 () Bool)

(assert (=> setNonEmpty!47009 (= condSetEmpty!47011 (= setRest!47009 ((as const (Array Context!12090 Bool)) false)))))

(declare-fun setRes!47011 () Bool)

(assert (=> setNonEmpty!47009 (= tp!1873220 setRes!47011)))

(declare-fun setIsEmpty!47011 () Bool)

(assert (=> setIsEmpty!47011 setRes!47011))

(declare-fun setElem!47011 () Context!12090)

(declare-fun setNonEmpty!47011 () Bool)

(declare-fun e!4126030 () Bool)

(declare-fun tp!1873527 () Bool)

(assert (=> setNonEmpty!47011 (= setRes!47011 (and tp!1873527 (inv!84899 setElem!47011) e!4126030))))

(declare-fun setRest!47011 () (InoxSet Context!12090))

(assert (=> setNonEmpty!47011 (= setRest!47009 ((_ map or) (store ((as const (Array Context!12090 Bool)) false) setElem!47011 true) setRest!47011))))

(declare-fun b!6841442 () Bool)

(declare-fun tp!1873528 () Bool)

(assert (=> b!6841442 (= e!4126030 tp!1873528)))

(assert (= (and setNonEmpty!47009 condSetEmpty!47011) setIsEmpty!47011))

(assert (= (and setNonEmpty!47009 (not condSetEmpty!47011)) setNonEmpty!47011))

(assert (= setNonEmpty!47011 b!6841442))

(declare-fun m!7584090 () Bool)

(assert (=> setNonEmpty!47011 m!7584090))

(declare-fun b!6841445 () Bool)

(declare-fun e!4126031 () Bool)

(declare-fun tp!1873532 () Bool)

(assert (=> b!6841445 (= e!4126031 tp!1873532)))

(assert (=> b!6840845 (= tp!1873231 e!4126031)))

(declare-fun b!6841446 () Bool)

(declare-fun tp!1873529 () Bool)

(declare-fun tp!1873531 () Bool)

(assert (=> b!6841446 (= e!4126031 (and tp!1873529 tp!1873531))))

(declare-fun b!6841444 () Bool)

(declare-fun tp!1873533 () Bool)

(declare-fun tp!1873530 () Bool)

(assert (=> b!6841444 (= e!4126031 (and tp!1873533 tp!1873530))))

(declare-fun b!6841443 () Bool)

(assert (=> b!6841443 (= e!4126031 tp_is_empty!42575)))

(assert (= (and b!6840845 ((_ is ElementMatch!16661) (regOne!33834 (regTwo!33835 r!7292)))) b!6841443))

(assert (= (and b!6840845 ((_ is Concat!25506) (regOne!33834 (regTwo!33835 r!7292)))) b!6841444))

(assert (= (and b!6840845 ((_ is Star!16661) (regOne!33834 (regTwo!33835 r!7292)))) b!6841445))

(assert (= (and b!6840845 ((_ is Union!16661) (regOne!33834 (regTwo!33835 r!7292)))) b!6841446))

(declare-fun b!6841449 () Bool)

(declare-fun e!4126032 () Bool)

(declare-fun tp!1873537 () Bool)

(assert (=> b!6841449 (= e!4126032 tp!1873537)))

(assert (=> b!6840845 (= tp!1873228 e!4126032)))

(declare-fun b!6841450 () Bool)

(declare-fun tp!1873534 () Bool)

(declare-fun tp!1873536 () Bool)

(assert (=> b!6841450 (= e!4126032 (and tp!1873534 tp!1873536))))

(declare-fun b!6841448 () Bool)

(declare-fun tp!1873538 () Bool)

(declare-fun tp!1873535 () Bool)

(assert (=> b!6841448 (= e!4126032 (and tp!1873538 tp!1873535))))

(declare-fun b!6841447 () Bool)

(assert (=> b!6841447 (= e!4126032 tp_is_empty!42575)))

(assert (= (and b!6840845 ((_ is ElementMatch!16661) (regTwo!33834 (regTwo!33835 r!7292)))) b!6841447))

(assert (= (and b!6840845 ((_ is Concat!25506) (regTwo!33834 (regTwo!33835 r!7292)))) b!6841448))

(assert (= (and b!6840845 ((_ is Star!16661) (regTwo!33834 (regTwo!33835 r!7292)))) b!6841449))

(assert (= (and b!6840845 ((_ is Union!16661) (regTwo!33834 (regTwo!33835 r!7292)))) b!6841450))

(declare-fun b!6841453 () Bool)

(declare-fun e!4126033 () Bool)

(declare-fun tp!1873542 () Bool)

(assert (=> b!6841453 (= e!4126033 tp!1873542)))

(assert (=> b!6840847 (= tp!1873227 e!4126033)))

(declare-fun b!6841454 () Bool)

(declare-fun tp!1873539 () Bool)

(declare-fun tp!1873541 () Bool)

(assert (=> b!6841454 (= e!4126033 (and tp!1873539 tp!1873541))))

(declare-fun b!6841452 () Bool)

(declare-fun tp!1873543 () Bool)

(declare-fun tp!1873540 () Bool)

(assert (=> b!6841452 (= e!4126033 (and tp!1873543 tp!1873540))))

(declare-fun b!6841451 () Bool)

(assert (=> b!6841451 (= e!4126033 tp_is_empty!42575)))

(assert (= (and b!6840847 ((_ is ElementMatch!16661) (regOne!33835 (regTwo!33835 r!7292)))) b!6841451))

(assert (= (and b!6840847 ((_ is Concat!25506) (regOne!33835 (regTwo!33835 r!7292)))) b!6841452))

(assert (= (and b!6840847 ((_ is Star!16661) (regOne!33835 (regTwo!33835 r!7292)))) b!6841453))

(assert (= (and b!6840847 ((_ is Union!16661) (regOne!33835 (regTwo!33835 r!7292)))) b!6841454))

(declare-fun b!6841457 () Bool)

(declare-fun e!4126034 () Bool)

(declare-fun tp!1873547 () Bool)

(assert (=> b!6841457 (= e!4126034 tp!1873547)))

(assert (=> b!6840847 (= tp!1873229 e!4126034)))

(declare-fun b!6841458 () Bool)

(declare-fun tp!1873544 () Bool)

(declare-fun tp!1873546 () Bool)

(assert (=> b!6841458 (= e!4126034 (and tp!1873544 tp!1873546))))

(declare-fun b!6841456 () Bool)

(declare-fun tp!1873548 () Bool)

(declare-fun tp!1873545 () Bool)

(assert (=> b!6841456 (= e!4126034 (and tp!1873548 tp!1873545))))

(declare-fun b!6841455 () Bool)

(assert (=> b!6841455 (= e!4126034 tp_is_empty!42575)))

(assert (= (and b!6840847 ((_ is ElementMatch!16661) (regTwo!33835 (regTwo!33835 r!7292)))) b!6841455))

(assert (= (and b!6840847 ((_ is Concat!25506) (regTwo!33835 (regTwo!33835 r!7292)))) b!6841456))

(assert (= (and b!6840847 ((_ is Star!16661) (regTwo!33835 (regTwo!33835 r!7292)))) b!6841457))

(assert (= (and b!6840847 ((_ is Union!16661) (regTwo!33835 (regTwo!33835 r!7292)))) b!6841458))

(declare-fun b!6841461 () Bool)

(declare-fun e!4126035 () Bool)

(declare-fun tp!1873552 () Bool)

(assert (=> b!6841461 (= e!4126035 tp!1873552)))

(assert (=> b!6840846 (= tp!1873230 e!4126035)))

(declare-fun b!6841462 () Bool)

(declare-fun tp!1873549 () Bool)

(declare-fun tp!1873551 () Bool)

(assert (=> b!6841462 (= e!4126035 (and tp!1873549 tp!1873551))))

(declare-fun b!6841460 () Bool)

(declare-fun tp!1873553 () Bool)

(declare-fun tp!1873550 () Bool)

(assert (=> b!6841460 (= e!4126035 (and tp!1873553 tp!1873550))))

(declare-fun b!6841459 () Bool)

(assert (=> b!6841459 (= e!4126035 tp_is_empty!42575)))

(assert (= (and b!6840846 ((_ is ElementMatch!16661) (reg!16990 (regTwo!33835 r!7292)))) b!6841459))

(assert (= (and b!6840846 ((_ is Concat!25506) (reg!16990 (regTwo!33835 r!7292)))) b!6841460))

(assert (= (and b!6840846 ((_ is Star!16661) (reg!16990 (regTwo!33835 r!7292)))) b!6841461))

(assert (= (and b!6840846 ((_ is Union!16661) (reg!16990 (regTwo!33835 r!7292)))) b!6841462))

(declare-fun b!6841463 () Bool)

(declare-fun e!4126036 () Bool)

(declare-fun tp!1873554 () Bool)

(declare-fun tp!1873555 () Bool)

(assert (=> b!6841463 (= e!4126036 (and tp!1873554 tp!1873555))))

(assert (=> b!6840839 (= tp!1873221 e!4126036)))

(assert (= (and b!6840839 ((_ is Cons!66158) (exprs!6545 setElem!47009))) b!6841463))

(declare-fun b_lambda!258023 () Bool)

(assert (= b_lambda!258021 (or d!2151012 b_lambda!258023)))

(declare-fun bs!1829202 () Bool)

(declare-fun d!2151136 () Bool)

(assert (= bs!1829202 (and d!2151136 d!2151012)))

(assert (=> bs!1829202 (= (dynLambda!26429 lambda!386764 (h!72606 (exprs!6545 (h!72607 zl!343)))) (validRegex!8397 (h!72606 (exprs!6545 (h!72607 zl!343)))))))

(declare-fun m!7584092 () Bool)

(assert (=> bs!1829202 m!7584092))

(assert (=> b!6841279 d!2151136))

(declare-fun b_lambda!258025 () Bool)

(assert (= b_lambda!258011 (or d!2151006 b_lambda!258025)))

(declare-fun bs!1829203 () Bool)

(declare-fun d!2151138 () Bool)

(assert (= bs!1829203 (and d!2151138 d!2151006)))

(assert (=> bs!1829203 (= (dynLambda!26429 lambda!386763 (h!72606 (exprs!6545 setElem!47003))) (validRegex!8397 (h!72606 (exprs!6545 setElem!47003))))))

(declare-fun m!7584094 () Bool)

(assert (=> bs!1829203 m!7584094))

(assert (=> b!6840996 d!2151138))

(check-sat (not b!6841373) (not b!6841366) (not b!6841324) (not b!6841398) (not bm!623050) (not b!6841375) (not d!2151100) (not d!2151128) (not b!6841353) (not d!2151088) (not b!6841390) (not b!6841359) (not b!6841395) (not b!6841462) (not b!6841423) (not bm!623063) (not b!6840997) (not b!6841355) (not b!6841391) (not d!2151096) (not b!6841311) (not b!6841399) (not b!6841457) (not b!6841412) (not b!6841330) (not b!6841440) (not b!6841386) (not b!6841118) (not d!2151072) (not b!6841433) (not b!6841416) (not bs!1829203) (not b!6841064) (not b!6841448) (not b!6841379) (not b!6841432) (not b!6841426) (not b!6841280) (not b!6841439) (not d!2151052) (not b!6841446) (not b!6841394) (not b!6841445) (not b!6841358) (not b!6841044) (not d!2151082) (not b!6841349) (not b!6841429) (not b!6841456) (not setNonEmpty!47011) (not b!6841449) (not d!2151130) (not b!6841063) (not bm!623067) (not b!6841460) (not b!6841408) (not b!6841120) (not b!6841387) (not b!6841454) (not b!6841117) (not d!2151106) (not b!6841381) (not b!6841316) (not b!6841350) (not b!6841406) (not b!6841385) (not b!6841245) (not bm!623068) (not b!6841115) (not b!6841421) (not b!6841430) (not bm!623038) (not b!6841427) (not b!6841065) (not b!6841370) (not b!6841278) (not d!2151062) (not b!6841341) (not b!6841365) (not b!6841382) (not b!6841357) (not b!6841403) (not b!6841397) (not bm!623049) (not b!6841071) (not b!6841383) (not b!6841452) (not b!6841361) (not b!6841393) (not b!6841410) (not b!6841374) (not b!6841318) (not b_lambda!258023) (not bm!623060) (not d!2151120) (not b!6841313) (not d!2151104) (not b!6841312) (not b!6841415) (not b!6841420) (not bm!623053) (not b!6841463) (not b!6841414) (not b!6841450) (not b!6841371) (not d!2151112) (not bs!1829202) (not b!6841419) (not b!6841363) (not b!6841377) (not b!6841315) (not b!6841045) (not b!6841378) (not b!6841425) (not b!6841422) (not bm!623061) (not b!6841362) (not b!6841418) (not b!6841239) (not b!6841431) (not b!6841453) (not b!6841084) (not b!6841342) (not b!6841367) (not b!6841441) (not bm!623037) (not b!6841437) (not b!6841369) (not b!6841411) (not b!6841444) (not b!6841354) (not b!6841109) (not b!6841331) (not bm!623054) (not b!6841458) (not b_lambda!258025) (not b!6841314) (not bm!623066) (not bm!623065) (not b!6841351) (not b!6841389) (not b!6841401) tp_is_empty!42575 (not b!6841113) (not b!6841407) (not b!6841435) (not d!2151124) (not b!6841436) (not bm!623062) (not b!6841461) (not bm!623040) (not b!6841404) (not b!6841070) (not b!6841442) (not b!6841402) (not b!6841283))
(check-sat)
