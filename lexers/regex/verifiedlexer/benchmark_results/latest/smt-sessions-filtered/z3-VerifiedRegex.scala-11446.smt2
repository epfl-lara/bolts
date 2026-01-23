; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!618046 () Bool)

(assert start!618046)

(declare-fun b!6198233 () Bool)

(assert (=> b!6198233 true))

(assert (=> b!6198233 true))

(declare-fun lambda!338630 () Int)

(declare-fun lambda!338629 () Int)

(assert (=> b!6198233 (not (= lambda!338630 lambda!338629))))

(assert (=> b!6198233 true))

(assert (=> b!6198233 true))

(declare-fun b!6198226 () Bool)

(assert (=> b!6198226 true))

(declare-fun b!6198211 () Bool)

(declare-fun res!2563908 () Bool)

(declare-fun e!3774562 () Bool)

(assert (=> b!6198211 (=> res!2563908 e!3774562)))

(declare-datatypes ((C!32548 0))(
  ( (C!32549 (val!25976 Int)) )
))
(declare-datatypes ((Regex!16139 0))(
  ( (ElementMatch!16139 (c!1118778 C!32548)) (Concat!24984 (regOne!32790 Regex!16139) (regTwo!32790 Regex!16139)) (EmptyExpr!16139) (Star!16139 (reg!16468 Regex!16139)) (EmptyLang!16139) (Union!16139 (regOne!32791 Regex!16139) (regTwo!32791 Regex!16139)) )
))
(declare-fun r!7292 () Regex!16139)

(declare-fun nullable!6132 (Regex!16139) Bool)

(assert (=> b!6198211 (= res!2563908 (not (nullable!6132 (regOne!32790 (regOne!32790 r!7292)))))))

(declare-fun b!6198212 () Bool)

(declare-fun res!2563906 () Bool)

(declare-fun e!3774553 () Bool)

(assert (=> b!6198212 (=> res!2563906 e!3774553)))

(declare-datatypes ((List!64716 0))(
  ( (Nil!64592) (Cons!64592 (h!71040 Regex!16139) (t!378230 List!64716)) )
))
(declare-datatypes ((Context!11046 0))(
  ( (Context!11047 (exprs!6023 List!64716)) )
))
(declare-datatypes ((List!64717 0))(
  ( (Nil!64593) (Cons!64593 (h!71041 Context!11046) (t!378231 List!64717)) )
))
(declare-fun zl!343 () List!64717)

(declare-fun isEmpty!36582 (List!64716) Bool)

(assert (=> b!6198212 (= res!2563906 (isEmpty!36582 (t!378230 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun b!6198213 () Bool)

(declare-fun e!3774557 () Bool)

(declare-fun tp!1728804 () Bool)

(assert (=> b!6198213 (= e!3774557 tp!1728804)))

(declare-fun b!6198214 () Bool)

(declare-fun res!2563900 () Bool)

(declare-fun e!3774558 () Bool)

(assert (=> b!6198214 (=> res!2563900 e!3774558)))

(declare-fun generalisedUnion!1983 (List!64716) Regex!16139)

(declare-fun unfocusZipperList!1560 (List!64717) List!64716)

(assert (=> b!6198214 (= res!2563900 (not (= r!7292 (generalisedUnion!1983 (unfocusZipperList!1560 zl!343)))))))

(declare-fun b!6198215 () Bool)

(declare-fun e!3774563 () Bool)

(declare-fun tp!1728807 () Bool)

(assert (=> b!6198215 (= e!3774563 tp!1728807)))

(declare-fun b!6198216 () Bool)

(declare-datatypes ((Unit!157887 0))(
  ( (Unit!157888) )
))
(declare-fun e!3774559 () Unit!157887)

(declare-fun Unit!157889 () Unit!157887)

(assert (=> b!6198216 (= e!3774559 Unit!157889)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2342667 () (InoxSet Context!11046))

(declare-datatypes ((List!64718 0))(
  ( (Nil!64594) (Cons!64594 (h!71042 C!32548) (t!378232 List!64718)) )
))
(declare-fun s!2326 () List!64718)

(declare-fun lt!2342662 () Unit!157887)

(declare-fun lt!2342665 () (InoxSet Context!11046))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!970 ((InoxSet Context!11046) (InoxSet Context!11046) List!64718) Unit!157887)

(assert (=> b!6198216 (= lt!2342662 (lemmaZipperConcatMatchesSameAsBothZippers!970 lt!2342665 lt!2342667 (t!378232 s!2326)))))

(declare-fun res!2563904 () Bool)

(declare-fun matchZipper!2151 ((InoxSet Context!11046) List!64718) Bool)

(assert (=> b!6198216 (= res!2563904 (matchZipper!2151 lt!2342665 (t!378232 s!2326)))))

(declare-fun e!3774561 () Bool)

(assert (=> b!6198216 (=> res!2563904 e!3774561)))

(assert (=> b!6198216 (= (matchZipper!2151 ((_ map or) lt!2342665 lt!2342667) (t!378232 s!2326)) e!3774561)))

(declare-fun b!6198217 () Bool)

(declare-fun e!3774560 () Bool)

(declare-fun tp_is_empty!41531 () Bool)

(declare-fun tp!1728803 () Bool)

(assert (=> b!6198217 (= e!3774560 (and tp_is_empty!41531 tp!1728803))))

(declare-fun b!6198218 () Bool)

(assert (=> b!6198218 (= e!3774561 (matchZipper!2151 lt!2342667 (t!378232 s!2326)))))

(declare-fun b!6198219 () Bool)

(declare-fun res!2563910 () Bool)

(declare-fun e!3774556 () Bool)

(assert (=> b!6198219 (=> (not res!2563910) (not e!3774556))))

(declare-fun unfocusZipper!1881 (List!64717) Regex!16139)

(assert (=> b!6198219 (= res!2563910 (= r!7292 (unfocusZipper!1881 zl!343)))))

(declare-fun b!6198220 () Bool)

(declare-fun res!2563903 () Bool)

(assert (=> b!6198220 (=> res!2563903 e!3774558)))

(declare-fun isEmpty!36583 (List!64717) Bool)

(assert (=> b!6198220 (= res!2563903 (not (isEmpty!36583 (t!378231 zl!343))))))

(declare-fun b!6198221 () Bool)

(declare-fun e!3774554 () Bool)

(declare-fun tp!1728802 () Bool)

(assert (=> b!6198221 (= e!3774554 tp!1728802)))

(declare-fun b!6198222 () Bool)

(declare-fun inv!83594 (Context!11046) Bool)

(assert (=> b!6198222 (= e!3774562 (inv!83594 (Context!11047 (Cons!64592 (regTwo!32790 (regOne!32790 r!7292)) (t!378230 (exprs!6023 (h!71041 zl!343)))))))))

(declare-fun b!6198223 () Bool)

(declare-fun res!2563899 () Bool)

(assert (=> b!6198223 (=> (not res!2563899) (not e!3774556))))

(declare-fun z!1189 () (InoxSet Context!11046))

(declare-fun toList!9923 ((InoxSet Context!11046)) List!64717)

(assert (=> b!6198223 (= res!2563899 (= (toList!9923 z!1189) zl!343))))

(declare-fun setElem!42064 () Context!11046)

(declare-fun setRes!42064 () Bool)

(declare-fun setNonEmpty!42064 () Bool)

(declare-fun tp!1728808 () Bool)

(assert (=> setNonEmpty!42064 (= setRes!42064 (and tp!1728808 (inv!83594 setElem!42064) e!3774557))))

(declare-fun setRest!42064 () (InoxSet Context!11046))

(assert (=> setNonEmpty!42064 (= z!1189 ((_ map or) (store ((as const (Array Context!11046 Bool)) false) setElem!42064 true) setRest!42064))))

(declare-fun b!6198224 () Bool)

(assert (=> b!6198224 (= e!3774556 (not e!3774558))))

(declare-fun res!2563905 () Bool)

(assert (=> b!6198224 (=> res!2563905 e!3774558)))

(get-info :version)

(assert (=> b!6198224 (= res!2563905 (not ((_ is Cons!64593) zl!343)))))

(declare-fun lt!2342669 () Bool)

(declare-fun matchRSpec!3240 (Regex!16139 List!64718) Bool)

(assert (=> b!6198224 (= lt!2342669 (matchRSpec!3240 r!7292 s!2326))))

(declare-fun matchR!8322 (Regex!16139 List!64718) Bool)

(assert (=> b!6198224 (= lt!2342669 (matchR!8322 r!7292 s!2326))))

(declare-fun lt!2342666 () Unit!157887)

(declare-fun mainMatchTheorem!3240 (Regex!16139 List!64718) Unit!157887)

(assert (=> b!6198224 (= lt!2342666 (mainMatchTheorem!3240 r!7292 s!2326))))

(declare-fun b!6198225 () Bool)

(declare-fun res!2563911 () Bool)

(assert (=> b!6198225 (=> res!2563911 e!3774558)))

(declare-fun generalisedConcat!1736 (List!64716) Regex!16139)

(assert (=> b!6198225 (= res!2563911 (not (= r!7292 (generalisedConcat!1736 (exprs!6023 (h!71041 zl!343))))))))

(assert (=> b!6198226 (= e!3774553 e!3774562)))

(declare-fun res!2563902 () Bool)

(assert (=> b!6198226 (=> res!2563902 e!3774562)))

(assert (=> b!6198226 (= res!2563902 (or (and ((_ is ElementMatch!16139) (regOne!32790 r!7292)) (= (c!1118778 (regOne!32790 r!7292)) (h!71042 s!2326))) ((_ is Union!16139) (regOne!32790 r!7292)) (not ((_ is Concat!24984) (regOne!32790 r!7292)))))))

(declare-fun lt!2342659 () Unit!157887)

(assert (=> b!6198226 (= lt!2342659 e!3774559)))

(declare-fun c!1118777 () Bool)

(assert (=> b!6198226 (= c!1118777 (nullable!6132 (h!71040 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun lambda!338631 () Int)

(declare-fun flatMap!1644 ((InoxSet Context!11046) Int) (InoxSet Context!11046))

(declare-fun derivationStepZipperUp!1313 (Context!11046 C!32548) (InoxSet Context!11046))

(assert (=> b!6198226 (= (flatMap!1644 z!1189 lambda!338631) (derivationStepZipperUp!1313 (h!71041 zl!343) (h!71042 s!2326)))))

(declare-fun lt!2342661 () Unit!157887)

(declare-fun lemmaFlatMapOnSingletonSet!1170 ((InoxSet Context!11046) Context!11046 Int) Unit!157887)

(assert (=> b!6198226 (= lt!2342661 (lemmaFlatMapOnSingletonSet!1170 z!1189 (h!71041 zl!343) lambda!338631))))

(declare-fun lt!2342664 () Context!11046)

(assert (=> b!6198226 (= lt!2342667 (derivationStepZipperUp!1313 lt!2342664 (h!71042 s!2326)))))

(declare-fun derivationStepZipperDown!1387 (Regex!16139 Context!11046 C!32548) (InoxSet Context!11046))

(assert (=> b!6198226 (= lt!2342665 (derivationStepZipperDown!1387 (h!71040 (exprs!6023 (h!71041 zl!343))) lt!2342664 (h!71042 s!2326)))))

(assert (=> b!6198226 (= lt!2342664 (Context!11047 (t!378230 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun lt!2342668 () (InoxSet Context!11046))

(assert (=> b!6198226 (= lt!2342668 (derivationStepZipperUp!1313 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343))))) (h!71042 s!2326)))))

(declare-fun setIsEmpty!42064 () Bool)

(assert (=> setIsEmpty!42064 setRes!42064))

(declare-fun res!2563907 () Bool)

(assert (=> start!618046 (=> (not res!2563907) (not e!3774556))))

(declare-fun validRegex!7875 (Regex!16139) Bool)

(assert (=> start!618046 (= res!2563907 (validRegex!7875 r!7292))))

(assert (=> start!618046 e!3774556))

(assert (=> start!618046 e!3774554))

(declare-fun condSetEmpty!42064 () Bool)

(assert (=> start!618046 (= condSetEmpty!42064 (= z!1189 ((as const (Array Context!11046 Bool)) false)))))

(assert (=> start!618046 setRes!42064))

(declare-fun e!3774555 () Bool)

(assert (=> start!618046 e!3774555))

(assert (=> start!618046 e!3774560))

(declare-fun b!6198227 () Bool)

(declare-fun res!2563898 () Bool)

(assert (=> b!6198227 (=> res!2563898 e!3774558)))

(assert (=> b!6198227 (= res!2563898 (not ((_ is Cons!64592) (exprs!6023 (h!71041 zl!343)))))))

(declare-fun b!6198228 () Bool)

(assert (=> b!6198228 (= e!3774554 tp_is_empty!41531)))

(declare-fun b!6198229 () Bool)

(declare-fun tp!1728809 () Bool)

(declare-fun tp!1728810 () Bool)

(assert (=> b!6198229 (= e!3774554 (and tp!1728809 tp!1728810))))

(declare-fun b!6198230 () Bool)

(declare-fun Unit!157890 () Unit!157887)

(assert (=> b!6198230 (= e!3774559 Unit!157890)))

(declare-fun tp!1728805 () Bool)

(declare-fun b!6198231 () Bool)

(assert (=> b!6198231 (= e!3774555 (and (inv!83594 (h!71041 zl!343)) e!3774563 tp!1728805))))

(declare-fun b!6198232 () Bool)

(declare-fun tp!1728806 () Bool)

(declare-fun tp!1728801 () Bool)

(assert (=> b!6198232 (= e!3774554 (and tp!1728806 tp!1728801))))

(assert (=> b!6198233 (= e!3774558 e!3774553)))

(declare-fun res!2563901 () Bool)

(assert (=> b!6198233 (=> res!2563901 e!3774553)))

(declare-fun lt!2342663 () Bool)

(assert (=> b!6198233 (= res!2563901 (or (not (= lt!2342669 lt!2342663)) ((_ is Nil!64594) s!2326)))))

(declare-fun Exists!3209 (Int) Bool)

(assert (=> b!6198233 (= (Exists!3209 lambda!338629) (Exists!3209 lambda!338630))))

(declare-fun lt!2342660 () Unit!157887)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1746 (Regex!16139 Regex!16139 List!64718) Unit!157887)

(assert (=> b!6198233 (= lt!2342660 (lemmaExistCutMatchRandMatchRSpecEquivalent!1746 (regOne!32790 r!7292) (regTwo!32790 r!7292) s!2326))))

(assert (=> b!6198233 (= lt!2342663 (Exists!3209 lambda!338629))))

(declare-datatypes ((tuple2!66236 0))(
  ( (tuple2!66237 (_1!36421 List!64718) (_2!36421 List!64718)) )
))
(declare-datatypes ((Option!16030 0))(
  ( (None!16029) (Some!16029 (v!52172 tuple2!66236)) )
))
(declare-fun isDefined!12733 (Option!16030) Bool)

(declare-fun findConcatSeparation!2444 (Regex!16139 Regex!16139 List!64718 List!64718 List!64718) Option!16030)

(assert (=> b!6198233 (= lt!2342663 (isDefined!12733 (findConcatSeparation!2444 (regOne!32790 r!7292) (regTwo!32790 r!7292) Nil!64594 s!2326 s!2326)))))

(declare-fun lt!2342670 () Unit!157887)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2208 (Regex!16139 Regex!16139 List!64718) Unit!157887)

(assert (=> b!6198233 (= lt!2342670 (lemmaFindConcatSeparationEquivalentToExists!2208 (regOne!32790 r!7292) (regTwo!32790 r!7292) s!2326))))

(declare-fun b!6198234 () Bool)

(declare-fun res!2563909 () Bool)

(assert (=> b!6198234 (=> res!2563909 e!3774558)))

(assert (=> b!6198234 (= res!2563909 (or ((_ is EmptyExpr!16139) r!7292) ((_ is EmptyLang!16139) r!7292) ((_ is ElementMatch!16139) r!7292) ((_ is Union!16139) r!7292) (not ((_ is Concat!24984) r!7292))))))

(assert (= (and start!618046 res!2563907) b!6198223))

(assert (= (and b!6198223 res!2563899) b!6198219))

(assert (= (and b!6198219 res!2563910) b!6198224))

(assert (= (and b!6198224 (not res!2563905)) b!6198220))

(assert (= (and b!6198220 (not res!2563903)) b!6198225))

(assert (= (and b!6198225 (not res!2563911)) b!6198227))

(assert (= (and b!6198227 (not res!2563898)) b!6198214))

(assert (= (and b!6198214 (not res!2563900)) b!6198234))

(assert (= (and b!6198234 (not res!2563909)) b!6198233))

(assert (= (and b!6198233 (not res!2563901)) b!6198212))

(assert (= (and b!6198212 (not res!2563906)) b!6198226))

(assert (= (and b!6198226 c!1118777) b!6198216))

(assert (= (and b!6198226 (not c!1118777)) b!6198230))

(assert (= (and b!6198216 (not res!2563904)) b!6198218))

(assert (= (and b!6198226 (not res!2563902)) b!6198211))

(assert (= (and b!6198211 (not res!2563908)) b!6198222))

(assert (= (and start!618046 ((_ is ElementMatch!16139) r!7292)) b!6198228))

(assert (= (and start!618046 ((_ is Concat!24984) r!7292)) b!6198229))

(assert (= (and start!618046 ((_ is Star!16139) r!7292)) b!6198221))

(assert (= (and start!618046 ((_ is Union!16139) r!7292)) b!6198232))

(assert (= (and start!618046 condSetEmpty!42064) setIsEmpty!42064))

(assert (= (and start!618046 (not condSetEmpty!42064)) setNonEmpty!42064))

(assert (= setNonEmpty!42064 b!6198213))

(assert (= b!6198231 b!6198215))

(assert (= (and start!618046 ((_ is Cons!64593) zl!343)) b!6198231))

(assert (= (and start!618046 ((_ is Cons!64594) s!2326)) b!6198217))

(declare-fun m!7031586 () Bool)

(assert (=> b!6198218 m!7031586))

(declare-fun m!7031588 () Bool)

(assert (=> b!6198211 m!7031588))

(declare-fun m!7031590 () Bool)

(assert (=> b!6198225 m!7031590))

(declare-fun m!7031592 () Bool)

(assert (=> b!6198224 m!7031592))

(declare-fun m!7031594 () Bool)

(assert (=> b!6198224 m!7031594))

(declare-fun m!7031596 () Bool)

(assert (=> b!6198224 m!7031596))

(declare-fun m!7031598 () Bool)

(assert (=> b!6198231 m!7031598))

(declare-fun m!7031600 () Bool)

(assert (=> b!6198226 m!7031600))

(declare-fun m!7031602 () Bool)

(assert (=> b!6198226 m!7031602))

(declare-fun m!7031604 () Bool)

(assert (=> b!6198226 m!7031604))

(declare-fun m!7031606 () Bool)

(assert (=> b!6198226 m!7031606))

(declare-fun m!7031608 () Bool)

(assert (=> b!6198226 m!7031608))

(declare-fun m!7031610 () Bool)

(assert (=> b!6198226 m!7031610))

(declare-fun m!7031612 () Bool)

(assert (=> b!6198226 m!7031612))

(declare-fun m!7031614 () Bool)

(assert (=> start!618046 m!7031614))

(declare-fun m!7031616 () Bool)

(assert (=> b!6198222 m!7031616))

(declare-fun m!7031618 () Bool)

(assert (=> b!6198212 m!7031618))

(declare-fun m!7031620 () Bool)

(assert (=> b!6198219 m!7031620))

(declare-fun m!7031622 () Bool)

(assert (=> b!6198216 m!7031622))

(declare-fun m!7031624 () Bool)

(assert (=> b!6198216 m!7031624))

(declare-fun m!7031626 () Bool)

(assert (=> b!6198216 m!7031626))

(declare-fun m!7031628 () Bool)

(assert (=> b!6198223 m!7031628))

(declare-fun m!7031630 () Bool)

(assert (=> b!6198220 m!7031630))

(declare-fun m!7031632 () Bool)

(assert (=> b!6198233 m!7031632))

(declare-fun m!7031634 () Bool)

(assert (=> b!6198233 m!7031634))

(declare-fun m!7031636 () Bool)

(assert (=> b!6198233 m!7031636))

(declare-fun m!7031638 () Bool)

(assert (=> b!6198233 m!7031638))

(assert (=> b!6198233 m!7031632))

(declare-fun m!7031640 () Bool)

(assert (=> b!6198233 m!7031640))

(assert (=> b!6198233 m!7031638))

(declare-fun m!7031642 () Bool)

(assert (=> b!6198233 m!7031642))

(declare-fun m!7031644 () Bool)

(assert (=> setNonEmpty!42064 m!7031644))

(declare-fun m!7031646 () Bool)

(assert (=> b!6198214 m!7031646))

(assert (=> b!6198214 m!7031646))

(declare-fun m!7031648 () Bool)

(assert (=> b!6198214 m!7031648))

(check-sat (not b!6198215) (not b!6198214) (not b!6198224) (not b!6198213) (not b!6198217) (not b!6198223) (not b!6198229) (not b!6198222) (not start!618046) tp_is_empty!41531 (not b!6198211) (not b!6198233) (not b!6198219) (not b!6198216) (not setNonEmpty!42064) (not b!6198226) (not b!6198218) (not b!6198232) (not b!6198221) (not b!6198212) (not b!6198225) (not b!6198220) (not b!6198231))
(check-sat)
(get-model)

(declare-fun d!1943113 () Bool)

(declare-fun lt!2342675 () Regex!16139)

(assert (=> d!1943113 (validRegex!7875 lt!2342675)))

(assert (=> d!1943113 (= lt!2342675 (generalisedUnion!1983 (unfocusZipperList!1560 zl!343)))))

(assert (=> d!1943113 (= (unfocusZipper!1881 zl!343) lt!2342675)))

(declare-fun bs!1538048 () Bool)

(assert (= bs!1538048 d!1943113))

(declare-fun m!7031650 () Bool)

(assert (=> bs!1538048 m!7031650))

(assert (=> bs!1538048 m!7031646))

(assert (=> bs!1538048 m!7031646))

(assert (=> bs!1538048 m!7031648))

(assert (=> b!6198219 d!1943113))

(declare-fun d!1943115 () Bool)

(declare-fun nullableFct!2087 (Regex!16139) Bool)

(assert (=> d!1943115 (= (nullable!6132 (regOne!32790 (regOne!32790 r!7292))) (nullableFct!2087 (regOne!32790 (regOne!32790 r!7292))))))

(declare-fun bs!1538049 () Bool)

(assert (= bs!1538049 d!1943115))

(declare-fun m!7031652 () Bool)

(assert (=> bs!1538049 m!7031652))

(assert (=> b!6198211 d!1943115))

(declare-fun d!1943117 () Bool)

(assert (=> d!1943117 (= (isEmpty!36583 (t!378231 zl!343)) ((_ is Nil!64593) (t!378231 zl!343)))))

(assert (=> b!6198220 d!1943117))

(declare-fun b!6198281 () Bool)

(declare-fun e!3774589 () (InoxSet Context!11046))

(declare-fun call!518617 () (InoxSet Context!11046))

(assert (=> b!6198281 (= e!3774589 call!518617)))

(declare-fun b!6198282 () Bool)

(assert (=> b!6198282 (= e!3774589 ((as const (Array Context!11046 Bool)) false))))

(declare-fun b!6198283 () Bool)

(declare-fun e!3774590 () (InoxSet Context!11046))

(assert (=> b!6198283 (= e!3774590 ((_ map or) call!518617 (derivationStepZipperUp!1313 (Context!11047 (t!378230 (exprs!6023 lt!2342664))) (h!71042 s!2326))))))

(declare-fun bm!518612 () Bool)

(assert (=> bm!518612 (= call!518617 (derivationStepZipperDown!1387 (h!71040 (exprs!6023 lt!2342664)) (Context!11047 (t!378230 (exprs!6023 lt!2342664))) (h!71042 s!2326)))))

(declare-fun d!1943119 () Bool)

(declare-fun c!1118795 () Bool)

(declare-fun e!3774588 () Bool)

(assert (=> d!1943119 (= c!1118795 e!3774588)))

(declare-fun res!2563920 () Bool)

(assert (=> d!1943119 (=> (not res!2563920) (not e!3774588))))

(assert (=> d!1943119 (= res!2563920 ((_ is Cons!64592) (exprs!6023 lt!2342664)))))

(assert (=> d!1943119 (= (derivationStepZipperUp!1313 lt!2342664 (h!71042 s!2326)) e!3774590)))

(declare-fun b!6198284 () Bool)

(assert (=> b!6198284 (= e!3774590 e!3774589)))

(declare-fun c!1118796 () Bool)

(assert (=> b!6198284 (= c!1118796 ((_ is Cons!64592) (exprs!6023 lt!2342664)))))

(declare-fun b!6198285 () Bool)

(assert (=> b!6198285 (= e!3774588 (nullable!6132 (h!71040 (exprs!6023 lt!2342664))))))

(assert (= (and d!1943119 res!2563920) b!6198285))

(assert (= (and d!1943119 c!1118795) b!6198283))

(assert (= (and d!1943119 (not c!1118795)) b!6198284))

(assert (= (and b!6198284 c!1118796) b!6198281))

(assert (= (and b!6198284 (not c!1118796)) b!6198282))

(assert (= (or b!6198283 b!6198281) bm!518612))

(declare-fun m!7031674 () Bool)

(assert (=> b!6198283 m!7031674))

(declare-fun m!7031676 () Bool)

(assert (=> bm!518612 m!7031676))

(declare-fun m!7031678 () Bool)

(assert (=> b!6198285 m!7031678))

(assert (=> b!6198226 d!1943119))

(declare-fun d!1943125 () Bool)

(assert (=> d!1943125 (= (nullable!6132 (h!71040 (exprs!6023 (h!71041 zl!343)))) (nullableFct!2087 (h!71040 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun bs!1538051 () Bool)

(assert (= bs!1538051 d!1943125))

(declare-fun m!7031680 () Bool)

(assert (=> bs!1538051 m!7031680))

(assert (=> b!6198226 d!1943125))

(declare-fun b!6198292 () Bool)

(declare-fun e!3774596 () (InoxSet Context!11046))

(declare-fun call!518618 () (InoxSet Context!11046))

(assert (=> b!6198292 (= e!3774596 call!518618)))

(declare-fun b!6198293 () Bool)

(assert (=> b!6198293 (= e!3774596 ((as const (Array Context!11046 Bool)) false))))

(declare-fun e!3774597 () (InoxSet Context!11046))

(declare-fun b!6198294 () Bool)

(assert (=> b!6198294 (= e!3774597 ((_ map or) call!518618 (derivationStepZipperUp!1313 (Context!11047 (t!378230 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))) (h!71042 s!2326))))))

(declare-fun bm!518613 () Bool)

(assert (=> bm!518613 (= call!518618 (derivationStepZipperDown!1387 (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343))))))) (Context!11047 (t!378230 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))) (h!71042 s!2326)))))

(declare-fun d!1943127 () Bool)

(declare-fun c!1118799 () Bool)

(declare-fun e!3774595 () Bool)

(assert (=> d!1943127 (= c!1118799 e!3774595)))

(declare-fun res!2563923 () Bool)

(assert (=> d!1943127 (=> (not res!2563923) (not e!3774595))))

(assert (=> d!1943127 (= res!2563923 ((_ is Cons!64592) (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343))))))))))

(assert (=> d!1943127 (= (derivationStepZipperUp!1313 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343))))) (h!71042 s!2326)) e!3774597)))

(declare-fun b!6198295 () Bool)

(assert (=> b!6198295 (= e!3774597 e!3774596)))

(declare-fun c!1118800 () Bool)

(assert (=> b!6198295 (= c!1118800 ((_ is Cons!64592) (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343))))))))))

(declare-fun b!6198296 () Bool)

(assert (=> b!6198296 (= e!3774595 (nullable!6132 (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))))))

(assert (= (and d!1943127 res!2563923) b!6198296))

(assert (= (and d!1943127 c!1118799) b!6198294))

(assert (= (and d!1943127 (not c!1118799)) b!6198295))

(assert (= (and b!6198295 c!1118800) b!6198292))

(assert (= (and b!6198295 (not c!1118800)) b!6198293))

(assert (= (or b!6198294 b!6198292) bm!518613))

(declare-fun m!7031682 () Bool)

(assert (=> b!6198294 m!7031682))

(declare-fun m!7031684 () Bool)

(assert (=> bm!518613 m!7031684))

(declare-fun m!7031686 () Bool)

(assert (=> b!6198296 m!7031686))

(assert (=> b!6198226 d!1943127))

(declare-fun d!1943129 () Bool)

(declare-fun dynLambda!25470 (Int Context!11046) (InoxSet Context!11046))

(assert (=> d!1943129 (= (flatMap!1644 z!1189 lambda!338631) (dynLambda!25470 lambda!338631 (h!71041 zl!343)))))

(declare-fun lt!2342679 () Unit!157887)

(declare-fun choose!46058 ((InoxSet Context!11046) Context!11046 Int) Unit!157887)

(assert (=> d!1943129 (= lt!2342679 (choose!46058 z!1189 (h!71041 zl!343) lambda!338631))))

(assert (=> d!1943129 (= z!1189 (store ((as const (Array Context!11046 Bool)) false) (h!71041 zl!343) true))))

(assert (=> d!1943129 (= (lemmaFlatMapOnSingletonSet!1170 z!1189 (h!71041 zl!343) lambda!338631) lt!2342679)))

(declare-fun b_lambda!235765 () Bool)

(assert (=> (not b_lambda!235765) (not d!1943129)))

(declare-fun bs!1538052 () Bool)

(assert (= bs!1538052 d!1943129))

(assert (=> bs!1538052 m!7031612))

(declare-fun m!7031688 () Bool)

(assert (=> bs!1538052 m!7031688))

(declare-fun m!7031690 () Bool)

(assert (=> bs!1538052 m!7031690))

(declare-fun m!7031692 () Bool)

(assert (=> bs!1538052 m!7031692))

(assert (=> b!6198226 d!1943129))

(declare-fun b!6198309 () Bool)

(declare-fun e!3774609 () (InoxSet Context!11046))

(declare-fun call!518625 () (InoxSet Context!11046))

(assert (=> b!6198309 (= e!3774609 call!518625)))

(declare-fun b!6198310 () Bool)

(assert (=> b!6198310 (= e!3774609 ((as const (Array Context!11046 Bool)) false))))

(declare-fun e!3774610 () (InoxSet Context!11046))

(declare-fun b!6198311 () Bool)

(assert (=> b!6198311 (= e!3774610 ((_ map or) call!518625 (derivationStepZipperUp!1313 (Context!11047 (t!378230 (exprs!6023 (h!71041 zl!343)))) (h!71042 s!2326))))))

(declare-fun bm!518620 () Bool)

(assert (=> bm!518620 (= call!518625 (derivationStepZipperDown!1387 (h!71040 (exprs!6023 (h!71041 zl!343))) (Context!11047 (t!378230 (exprs!6023 (h!71041 zl!343)))) (h!71042 s!2326)))))

(declare-fun d!1943131 () Bool)

(declare-fun c!1118803 () Bool)

(declare-fun e!3774608 () Bool)

(assert (=> d!1943131 (= c!1118803 e!3774608)))

(declare-fun res!2563932 () Bool)

(assert (=> d!1943131 (=> (not res!2563932) (not e!3774608))))

(assert (=> d!1943131 (= res!2563932 ((_ is Cons!64592) (exprs!6023 (h!71041 zl!343))))))

(assert (=> d!1943131 (= (derivationStepZipperUp!1313 (h!71041 zl!343) (h!71042 s!2326)) e!3774610)))

(declare-fun b!6198312 () Bool)

(assert (=> b!6198312 (= e!3774610 e!3774609)))

(declare-fun c!1118804 () Bool)

(assert (=> b!6198312 (= c!1118804 ((_ is Cons!64592) (exprs!6023 (h!71041 zl!343))))))

(declare-fun b!6198313 () Bool)

(assert (=> b!6198313 (= e!3774608 (nullable!6132 (h!71040 (exprs!6023 (h!71041 zl!343)))))))

(assert (= (and d!1943131 res!2563932) b!6198313))

(assert (= (and d!1943131 c!1118803) b!6198311))

(assert (= (and d!1943131 (not c!1118803)) b!6198312))

(assert (= (and b!6198312 c!1118804) b!6198309))

(assert (= (and b!6198312 (not c!1118804)) b!6198310))

(assert (= (or b!6198311 b!6198309) bm!518620))

(declare-fun m!7031694 () Bool)

(assert (=> b!6198311 m!7031694))

(declare-fun m!7031696 () Bool)

(assert (=> bm!518620 m!7031696))

(assert (=> b!6198313 m!7031606))

(assert (=> b!6198226 d!1943131))

(declare-fun d!1943133 () Bool)

(declare-fun choose!46059 ((InoxSet Context!11046) Int) (InoxSet Context!11046))

(assert (=> d!1943133 (= (flatMap!1644 z!1189 lambda!338631) (choose!46059 z!1189 lambda!338631))))

(declare-fun bs!1538053 () Bool)

(assert (= bs!1538053 d!1943133))

(declare-fun m!7031700 () Bool)

(assert (=> bs!1538053 m!7031700))

(assert (=> b!6198226 d!1943133))

(declare-fun b!6198377 () Bool)

(declare-fun e!3774653 () (InoxSet Context!11046))

(declare-fun call!518642 () (InoxSet Context!11046))

(assert (=> b!6198377 (= e!3774653 call!518642)))

(declare-fun bm!518636 () Bool)

(declare-fun call!518643 () (InoxSet Context!11046))

(assert (=> bm!518636 (= call!518642 call!518643)))

(declare-fun b!6198378 () Bool)

(declare-fun c!1118829 () Bool)

(assert (=> b!6198378 (= c!1118829 ((_ is Star!16139) (h!71040 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun e!3774650 () (InoxSet Context!11046))

(assert (=> b!6198378 (= e!3774650 e!3774653)))

(declare-fun call!518644 () (InoxSet Context!11046))

(declare-fun bm!518637 () Bool)

(declare-fun c!1118828 () Bool)

(declare-fun call!518645 () List!64716)

(assert (=> bm!518637 (= call!518644 (derivationStepZipperDown!1387 (ite c!1118828 (regTwo!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343))))) (ite c!1118828 lt!2342664 (Context!11047 call!518645)) (h!71042 s!2326)))))

(declare-fun c!1118827 () Bool)

(declare-fun call!518641 () (InoxSet Context!11046))

(declare-fun c!1118826 () Bool)

(declare-fun bm!518638 () Bool)

(declare-fun call!518646 () List!64716)

(assert (=> bm!518638 (= call!518641 (derivationStepZipperDown!1387 (ite c!1118828 (regOne!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118826 (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118827 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (reg!16468 (h!71040 (exprs!6023 (h!71041 zl!343))))))) (ite (or c!1118828 c!1118826) lt!2342664 (Context!11047 call!518646)) (h!71042 s!2326)))))

(declare-fun bm!518639 () Bool)

(assert (=> bm!518639 (= call!518643 call!518641)))

(declare-fun b!6198380 () Bool)

(declare-fun e!3774649 () Bool)

(assert (=> b!6198380 (= c!1118826 e!3774649)))

(declare-fun res!2563956 () Bool)

(assert (=> b!6198380 (=> (not res!2563956) (not e!3774649))))

(assert (=> b!6198380 (= res!2563956 ((_ is Concat!24984) (h!71040 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun e!3774652 () (InoxSet Context!11046))

(declare-fun e!3774648 () (InoxSet Context!11046))

(assert (=> b!6198380 (= e!3774652 e!3774648)))

(declare-fun b!6198381 () Bool)

(declare-fun e!3774651 () (InoxSet Context!11046))

(assert (=> b!6198381 (= e!3774651 e!3774652)))

(assert (=> b!6198381 (= c!1118828 ((_ is Union!16139) (h!71040 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun b!6198382 () Bool)

(assert (=> b!6198382 (= e!3774651 (store ((as const (Array Context!11046 Bool)) false) lt!2342664 true))))

(declare-fun b!6198383 () Bool)

(assert (=> b!6198383 (= e!3774649 (nullable!6132 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343))))))))

(declare-fun b!6198384 () Bool)

(assert (=> b!6198384 (= e!3774648 ((_ map or) call!518644 call!518643))))

(declare-fun b!6198385 () Bool)

(assert (=> b!6198385 (= e!3774650 call!518642)))

(declare-fun b!6198386 () Bool)

(assert (=> b!6198386 (= e!3774648 e!3774650)))

(assert (=> b!6198386 (= c!1118827 ((_ is Concat!24984) (h!71040 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun bm!518640 () Bool)

(declare-fun $colon$colon!2007 (List!64716 Regex!16139) List!64716)

(assert (=> bm!518640 (= call!518645 ($colon$colon!2007 (exprs!6023 lt!2342664) (ite (or c!1118826 c!1118827) (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (h!71040 (exprs!6023 (h!71041 zl!343))))))))

(declare-fun b!6198387 () Bool)

(assert (=> b!6198387 (= e!3774653 ((as const (Array Context!11046 Bool)) false))))

(declare-fun bm!518641 () Bool)

(assert (=> bm!518641 (= call!518646 call!518645)))

(declare-fun d!1943135 () Bool)

(declare-fun c!1118825 () Bool)

(assert (=> d!1943135 (= c!1118825 (and ((_ is ElementMatch!16139) (h!71040 (exprs!6023 (h!71041 zl!343)))) (= (c!1118778 (h!71040 (exprs!6023 (h!71041 zl!343)))) (h!71042 s!2326))))))

(assert (=> d!1943135 (= (derivationStepZipperDown!1387 (h!71040 (exprs!6023 (h!71041 zl!343))) lt!2342664 (h!71042 s!2326)) e!3774651)))

(declare-fun b!6198379 () Bool)

(assert (=> b!6198379 (= e!3774652 ((_ map or) call!518641 call!518644))))

(assert (= (and d!1943135 c!1118825) b!6198382))

(assert (= (and d!1943135 (not c!1118825)) b!6198381))

(assert (= (and b!6198381 c!1118828) b!6198379))

(assert (= (and b!6198381 (not c!1118828)) b!6198380))

(assert (= (and b!6198380 res!2563956) b!6198383))

(assert (= (and b!6198380 c!1118826) b!6198384))

(assert (= (and b!6198380 (not c!1118826)) b!6198386))

(assert (= (and b!6198386 c!1118827) b!6198385))

(assert (= (and b!6198386 (not c!1118827)) b!6198378))

(assert (= (and b!6198378 c!1118829) b!6198377))

(assert (= (and b!6198378 (not c!1118829)) b!6198387))

(assert (= (or b!6198385 b!6198377) bm!518641))

(assert (= (or b!6198385 b!6198377) bm!518636))

(assert (= (or b!6198384 bm!518641) bm!518640))

(assert (= (or b!6198384 bm!518636) bm!518639))

(assert (= (or b!6198379 b!6198384) bm!518637))

(assert (= (or b!6198379 bm!518639) bm!518638))

(declare-fun m!7031706 () Bool)

(assert (=> bm!518640 m!7031706))

(declare-fun m!7031708 () Bool)

(assert (=> b!6198383 m!7031708))

(declare-fun m!7031710 () Bool)

(assert (=> bm!518638 m!7031710))

(declare-fun m!7031712 () Bool)

(assert (=> bm!518637 m!7031712))

(declare-fun m!7031714 () Bool)

(assert (=> b!6198382 m!7031714))

(assert (=> b!6198226 d!1943135))

(declare-fun d!1943139 () Bool)

(declare-fun e!3774663 () Bool)

(assert (=> d!1943139 (= (matchZipper!2151 ((_ map or) lt!2342665 lt!2342667) (t!378232 s!2326)) e!3774663)))

(declare-fun res!2563962 () Bool)

(assert (=> d!1943139 (=> res!2563962 e!3774663)))

(assert (=> d!1943139 (= res!2563962 (matchZipper!2151 lt!2342665 (t!378232 s!2326)))))

(declare-fun lt!2342682 () Unit!157887)

(declare-fun choose!46060 ((InoxSet Context!11046) (InoxSet Context!11046) List!64718) Unit!157887)

(assert (=> d!1943139 (= lt!2342682 (choose!46060 lt!2342665 lt!2342667 (t!378232 s!2326)))))

(assert (=> d!1943139 (= (lemmaZipperConcatMatchesSameAsBothZippers!970 lt!2342665 lt!2342667 (t!378232 s!2326)) lt!2342682)))

(declare-fun b!6198401 () Bool)

(assert (=> b!6198401 (= e!3774663 (matchZipper!2151 lt!2342667 (t!378232 s!2326)))))

(assert (= (and d!1943139 (not res!2563962)) b!6198401))

(assert (=> d!1943139 m!7031626))

(assert (=> d!1943139 m!7031624))

(declare-fun m!7031716 () Bool)

(assert (=> d!1943139 m!7031716))

(assert (=> b!6198401 m!7031586))

(assert (=> b!6198216 d!1943139))

(declare-fun d!1943141 () Bool)

(declare-fun c!1118836 () Bool)

(declare-fun isEmpty!36585 (List!64718) Bool)

(assert (=> d!1943141 (= c!1118836 (isEmpty!36585 (t!378232 s!2326)))))

(declare-fun e!3774666 () Bool)

(assert (=> d!1943141 (= (matchZipper!2151 lt!2342665 (t!378232 s!2326)) e!3774666)))

(declare-fun b!6198406 () Bool)

(declare-fun nullableZipper!1912 ((InoxSet Context!11046)) Bool)

(assert (=> b!6198406 (= e!3774666 (nullableZipper!1912 lt!2342665))))

(declare-fun b!6198407 () Bool)

(declare-fun derivationStepZipper!2104 ((InoxSet Context!11046) C!32548) (InoxSet Context!11046))

(declare-fun head!12786 (List!64718) C!32548)

(declare-fun tail!11871 (List!64718) List!64718)

(assert (=> b!6198407 (= e!3774666 (matchZipper!2151 (derivationStepZipper!2104 lt!2342665 (head!12786 (t!378232 s!2326))) (tail!11871 (t!378232 s!2326))))))

(assert (= (and d!1943141 c!1118836) b!6198406))

(assert (= (and d!1943141 (not c!1118836)) b!6198407))

(declare-fun m!7031726 () Bool)

(assert (=> d!1943141 m!7031726))

(declare-fun m!7031728 () Bool)

(assert (=> b!6198406 m!7031728))

(declare-fun m!7031730 () Bool)

(assert (=> b!6198407 m!7031730))

(assert (=> b!6198407 m!7031730))

(declare-fun m!7031732 () Bool)

(assert (=> b!6198407 m!7031732))

(declare-fun m!7031734 () Bool)

(assert (=> b!6198407 m!7031734))

(assert (=> b!6198407 m!7031732))

(assert (=> b!6198407 m!7031734))

(declare-fun m!7031736 () Bool)

(assert (=> b!6198407 m!7031736))

(assert (=> b!6198216 d!1943141))

(declare-fun d!1943145 () Bool)

(declare-fun c!1118837 () Bool)

(assert (=> d!1943145 (= c!1118837 (isEmpty!36585 (t!378232 s!2326)))))

(declare-fun e!3774667 () Bool)

(assert (=> d!1943145 (= (matchZipper!2151 ((_ map or) lt!2342665 lt!2342667) (t!378232 s!2326)) e!3774667)))

(declare-fun b!6198408 () Bool)

(assert (=> b!6198408 (= e!3774667 (nullableZipper!1912 ((_ map or) lt!2342665 lt!2342667)))))

(declare-fun b!6198409 () Bool)

(assert (=> b!6198409 (= e!3774667 (matchZipper!2151 (derivationStepZipper!2104 ((_ map or) lt!2342665 lt!2342667) (head!12786 (t!378232 s!2326))) (tail!11871 (t!378232 s!2326))))))

(assert (= (and d!1943145 c!1118837) b!6198408))

(assert (= (and d!1943145 (not c!1118837)) b!6198409))

(assert (=> d!1943145 m!7031726))

(declare-fun m!7031738 () Bool)

(assert (=> b!6198408 m!7031738))

(assert (=> b!6198409 m!7031730))

(assert (=> b!6198409 m!7031730))

(declare-fun m!7031740 () Bool)

(assert (=> b!6198409 m!7031740))

(assert (=> b!6198409 m!7031734))

(assert (=> b!6198409 m!7031740))

(assert (=> b!6198409 m!7031734))

(declare-fun m!7031742 () Bool)

(assert (=> b!6198409 m!7031742))

(assert (=> b!6198216 d!1943145))

(declare-fun d!1943147 () Bool)

(declare-fun c!1118838 () Bool)

(assert (=> d!1943147 (= c!1118838 (isEmpty!36585 (t!378232 s!2326)))))

(declare-fun e!3774668 () Bool)

(assert (=> d!1943147 (= (matchZipper!2151 lt!2342667 (t!378232 s!2326)) e!3774668)))

(declare-fun b!6198410 () Bool)

(assert (=> b!6198410 (= e!3774668 (nullableZipper!1912 lt!2342667))))

(declare-fun b!6198411 () Bool)

(assert (=> b!6198411 (= e!3774668 (matchZipper!2151 (derivationStepZipper!2104 lt!2342667 (head!12786 (t!378232 s!2326))) (tail!11871 (t!378232 s!2326))))))

(assert (= (and d!1943147 c!1118838) b!6198410))

(assert (= (and d!1943147 (not c!1118838)) b!6198411))

(assert (=> d!1943147 m!7031726))

(declare-fun m!7031744 () Bool)

(assert (=> b!6198410 m!7031744))

(assert (=> b!6198411 m!7031730))

(assert (=> b!6198411 m!7031730))

(declare-fun m!7031746 () Bool)

(assert (=> b!6198411 m!7031746))

(assert (=> b!6198411 m!7031734))

(assert (=> b!6198411 m!7031746))

(assert (=> b!6198411 m!7031734))

(declare-fun m!7031748 () Bool)

(assert (=> b!6198411 m!7031748))

(assert (=> b!6198218 d!1943147))

(declare-fun bs!1538060 () Bool)

(declare-fun b!6198496 () Bool)

(assert (= bs!1538060 (and b!6198496 b!6198233)))

(declare-fun lambda!338645 () Int)

(assert (=> bs!1538060 (not (= lambda!338645 lambda!338629))))

(assert (=> bs!1538060 (not (= lambda!338645 lambda!338630))))

(assert (=> b!6198496 true))

(assert (=> b!6198496 true))

(declare-fun bs!1538061 () Bool)

(declare-fun b!6198488 () Bool)

(assert (= bs!1538061 (and b!6198488 b!6198233)))

(declare-fun lambda!338646 () Int)

(assert (=> bs!1538061 (not (= lambda!338646 lambda!338629))))

(assert (=> bs!1538061 (= lambda!338646 lambda!338630)))

(declare-fun bs!1538062 () Bool)

(assert (= bs!1538062 (and b!6198488 b!6198496)))

(assert (=> bs!1538062 (not (= lambda!338646 lambda!338645))))

(assert (=> b!6198488 true))

(assert (=> b!6198488 true))

(declare-fun b!6198486 () Bool)

(declare-fun e!3774713 () Bool)

(assert (=> b!6198486 (= e!3774713 (= s!2326 (Cons!64594 (c!1118778 r!7292) Nil!64594)))))

(declare-fun c!1118858 () Bool)

(declare-fun bm!518655 () Bool)

(declare-fun call!518660 () Bool)

(assert (=> bm!518655 (= call!518660 (Exists!3209 (ite c!1118858 lambda!338645 lambda!338646)))))

(declare-fun b!6198487 () Bool)

(declare-fun e!3774712 () Bool)

(declare-fun e!3774711 () Bool)

(assert (=> b!6198487 (= e!3774712 e!3774711)))

(declare-fun res!2564003 () Bool)

(assert (=> b!6198487 (= res!2564003 (not ((_ is EmptyLang!16139) r!7292)))))

(assert (=> b!6198487 (=> (not res!2564003) (not e!3774711))))

(declare-fun b!6198489 () Bool)

(declare-fun e!3774708 () Bool)

(declare-fun e!3774714 () Bool)

(assert (=> b!6198489 (= e!3774708 e!3774714)))

(declare-fun res!2564004 () Bool)

(assert (=> b!6198489 (= res!2564004 (matchRSpec!3240 (regOne!32791 r!7292) s!2326))))

(assert (=> b!6198489 (=> res!2564004 e!3774714)))

(declare-fun b!6198490 () Bool)

(declare-fun c!1118859 () Bool)

(assert (=> b!6198490 (= c!1118859 ((_ is Union!16139) r!7292))))

(assert (=> b!6198490 (= e!3774713 e!3774708)))

(declare-fun b!6198491 () Bool)

(assert (=> b!6198491 (= e!3774714 (matchRSpec!3240 (regTwo!32791 r!7292) s!2326))))

(declare-fun b!6198492 () Bool)

(declare-fun e!3774710 () Bool)

(assert (=> b!6198492 (= e!3774708 e!3774710)))

(assert (=> b!6198492 (= c!1118858 ((_ is Star!16139) r!7292))))

(declare-fun b!6198493 () Bool)

(declare-fun call!518661 () Bool)

(assert (=> b!6198493 (= e!3774712 call!518661)))

(declare-fun bm!518656 () Bool)

(assert (=> bm!518656 (= call!518661 (isEmpty!36585 s!2326))))

(declare-fun b!6198494 () Bool)

(declare-fun c!1118856 () Bool)

(assert (=> b!6198494 (= c!1118856 ((_ is ElementMatch!16139) r!7292))))

(assert (=> b!6198494 (= e!3774711 e!3774713)))

(assert (=> b!6198488 (= e!3774710 call!518660)))

(declare-fun d!1943149 () Bool)

(declare-fun c!1118857 () Bool)

(assert (=> d!1943149 (= c!1118857 ((_ is EmptyExpr!16139) r!7292))))

(assert (=> d!1943149 (= (matchRSpec!3240 r!7292 s!2326) e!3774712)))

(declare-fun b!6198495 () Bool)

(declare-fun res!2564005 () Bool)

(declare-fun e!3774709 () Bool)

(assert (=> b!6198495 (=> res!2564005 e!3774709)))

(assert (=> b!6198495 (= res!2564005 call!518661)))

(assert (=> b!6198495 (= e!3774710 e!3774709)))

(assert (=> b!6198496 (= e!3774709 call!518660)))

(assert (= (and d!1943149 c!1118857) b!6198493))

(assert (= (and d!1943149 (not c!1118857)) b!6198487))

(assert (= (and b!6198487 res!2564003) b!6198494))

(assert (= (and b!6198494 c!1118856) b!6198486))

(assert (= (and b!6198494 (not c!1118856)) b!6198490))

(assert (= (and b!6198490 c!1118859) b!6198489))

(assert (= (and b!6198490 (not c!1118859)) b!6198492))

(assert (= (and b!6198489 (not res!2564004)) b!6198491))

(assert (= (and b!6198492 c!1118858) b!6198495))

(assert (= (and b!6198492 (not c!1118858)) b!6198488))

(assert (= (and b!6198495 (not res!2564005)) b!6198496))

(assert (= (or b!6198496 b!6198488) bm!518655))

(assert (= (or b!6198493 b!6198495) bm!518656))

(declare-fun m!7031772 () Bool)

(assert (=> bm!518655 m!7031772))

(declare-fun m!7031774 () Bool)

(assert (=> b!6198489 m!7031774))

(declare-fun m!7031776 () Bool)

(assert (=> b!6198491 m!7031776))

(declare-fun m!7031778 () Bool)

(assert (=> bm!518656 m!7031778))

(assert (=> b!6198224 d!1943149))

(declare-fun b!6198562 () Bool)

(declare-fun res!2564027 () Bool)

(declare-fun e!3774756 () Bool)

(assert (=> b!6198562 (=> res!2564027 e!3774756)))

(assert (=> b!6198562 (= res!2564027 (not ((_ is ElementMatch!16139) r!7292)))))

(declare-fun e!3774753 () Bool)

(assert (=> b!6198562 (= e!3774753 e!3774756)))

(declare-fun b!6198563 () Bool)

(declare-fun e!3774751 () Bool)

(declare-fun derivativeStep!4852 (Regex!16139 C!32548) Regex!16139)

(assert (=> b!6198563 (= e!3774751 (matchR!8322 (derivativeStep!4852 r!7292 (head!12786 s!2326)) (tail!11871 s!2326)))))

(declare-fun b!6198564 () Bool)

(declare-fun res!2564030 () Bool)

(declare-fun e!3774754 () Bool)

(assert (=> b!6198564 (=> (not res!2564030) (not e!3774754))))

(assert (=> b!6198564 (= res!2564030 (isEmpty!36585 (tail!11871 s!2326)))))

(declare-fun b!6198565 () Bool)

(declare-fun e!3774755 () Bool)

(assert (=> b!6198565 (= e!3774756 e!3774755)))

(declare-fun res!2564028 () Bool)

(assert (=> b!6198565 (=> (not res!2564028) (not e!3774755))))

(declare-fun lt!2342694 () Bool)

(assert (=> b!6198565 (= res!2564028 (not lt!2342694))))

(declare-fun b!6198566 () Bool)

(declare-fun e!3774750 () Bool)

(assert (=> b!6198566 (= e!3774750 e!3774753)))

(declare-fun c!1118884 () Bool)

(assert (=> b!6198566 (= c!1118884 ((_ is EmptyLang!16139) r!7292))))

(declare-fun b!6198567 () Bool)

(assert (=> b!6198567 (= e!3774754 (= (head!12786 s!2326) (c!1118778 r!7292)))))

(declare-fun b!6198568 () Bool)

(declare-fun call!518679 () Bool)

(assert (=> b!6198568 (= e!3774750 (= lt!2342694 call!518679))))

(declare-fun b!6198569 () Bool)

(assert (=> b!6198569 (= e!3774753 (not lt!2342694))))

(declare-fun bm!518674 () Bool)

(assert (=> bm!518674 (= call!518679 (isEmpty!36585 s!2326))))

(declare-fun b!6198570 () Bool)

(declare-fun res!2564033 () Bool)

(declare-fun e!3774752 () Bool)

(assert (=> b!6198570 (=> res!2564033 e!3774752)))

(assert (=> b!6198570 (= res!2564033 (not (isEmpty!36585 (tail!11871 s!2326))))))

(declare-fun b!6198571 () Bool)

(assert (=> b!6198571 (= e!3774751 (nullable!6132 r!7292))))

(declare-fun b!6198572 () Bool)

(assert (=> b!6198572 (= e!3774752 (not (= (head!12786 s!2326) (c!1118778 r!7292))))))

(declare-fun b!6198573 () Bool)

(declare-fun res!2564029 () Bool)

(assert (=> b!6198573 (=> (not res!2564029) (not e!3774754))))

(assert (=> b!6198573 (= res!2564029 (not call!518679))))

(declare-fun b!6198574 () Bool)

(declare-fun res!2564032 () Bool)

(assert (=> b!6198574 (=> res!2564032 e!3774756)))

(assert (=> b!6198574 (= res!2564032 e!3774754)))

(declare-fun res!2564034 () Bool)

(assert (=> b!6198574 (=> (not res!2564034) (not e!3774754))))

(assert (=> b!6198574 (= res!2564034 lt!2342694)))

(declare-fun b!6198575 () Bool)

(assert (=> b!6198575 (= e!3774755 e!3774752)))

(declare-fun res!2564031 () Bool)

(assert (=> b!6198575 (=> res!2564031 e!3774752)))

(assert (=> b!6198575 (= res!2564031 call!518679)))

(declare-fun d!1943159 () Bool)

(assert (=> d!1943159 e!3774750))

(declare-fun c!1118882 () Bool)

(assert (=> d!1943159 (= c!1118882 ((_ is EmptyExpr!16139) r!7292))))

(assert (=> d!1943159 (= lt!2342694 e!3774751)))

(declare-fun c!1118883 () Bool)

(assert (=> d!1943159 (= c!1118883 (isEmpty!36585 s!2326))))

(assert (=> d!1943159 (validRegex!7875 r!7292)))

(assert (=> d!1943159 (= (matchR!8322 r!7292 s!2326) lt!2342694)))

(assert (= (and d!1943159 c!1118883) b!6198571))

(assert (= (and d!1943159 (not c!1118883)) b!6198563))

(assert (= (and d!1943159 c!1118882) b!6198568))

(assert (= (and d!1943159 (not c!1118882)) b!6198566))

(assert (= (and b!6198566 c!1118884) b!6198569))

(assert (= (and b!6198566 (not c!1118884)) b!6198562))

(assert (= (and b!6198562 (not res!2564027)) b!6198574))

(assert (= (and b!6198574 res!2564034) b!6198573))

(assert (= (and b!6198573 res!2564029) b!6198564))

(assert (= (and b!6198564 res!2564030) b!6198567))

(assert (= (and b!6198574 (not res!2564032)) b!6198565))

(assert (= (and b!6198565 res!2564028) b!6198575))

(assert (= (and b!6198575 (not res!2564031)) b!6198570))

(assert (= (and b!6198570 (not res!2564033)) b!6198572))

(assert (= (or b!6198568 b!6198573 b!6198575) bm!518674))

(declare-fun m!7031786 () Bool)

(assert (=> b!6198567 m!7031786))

(assert (=> b!6198572 m!7031786))

(assert (=> bm!518674 m!7031778))

(declare-fun m!7031788 () Bool)

(assert (=> b!6198571 m!7031788))

(declare-fun m!7031790 () Bool)

(assert (=> b!6198570 m!7031790))

(assert (=> b!6198570 m!7031790))

(declare-fun m!7031792 () Bool)

(assert (=> b!6198570 m!7031792))

(assert (=> d!1943159 m!7031778))

(assert (=> d!1943159 m!7031614))

(assert (=> b!6198564 m!7031790))

(assert (=> b!6198564 m!7031790))

(assert (=> b!6198564 m!7031792))

(assert (=> b!6198563 m!7031786))

(assert (=> b!6198563 m!7031786))

(declare-fun m!7031794 () Bool)

(assert (=> b!6198563 m!7031794))

(assert (=> b!6198563 m!7031790))

(assert (=> b!6198563 m!7031794))

(assert (=> b!6198563 m!7031790))

(declare-fun m!7031796 () Bool)

(assert (=> b!6198563 m!7031796))

(assert (=> b!6198224 d!1943159))

(declare-fun d!1943163 () Bool)

(assert (=> d!1943163 (= (matchR!8322 r!7292 s!2326) (matchRSpec!3240 r!7292 s!2326))))

(declare-fun lt!2342697 () Unit!157887)

(declare-fun choose!46063 (Regex!16139 List!64718) Unit!157887)

(assert (=> d!1943163 (= lt!2342697 (choose!46063 r!7292 s!2326))))

(assert (=> d!1943163 (validRegex!7875 r!7292)))

(assert (=> d!1943163 (= (mainMatchTheorem!3240 r!7292 s!2326) lt!2342697)))

(declare-fun bs!1538063 () Bool)

(assert (= bs!1538063 d!1943163))

(assert (=> bs!1538063 m!7031594))

(assert (=> bs!1538063 m!7031592))

(declare-fun m!7031804 () Bool)

(assert (=> bs!1538063 m!7031804))

(assert (=> bs!1538063 m!7031614))

(assert (=> b!6198224 d!1943163))

(declare-fun d!1943165 () Bool)

(declare-fun lambda!338649 () Int)

(declare-fun forall!15253 (List!64716 Int) Bool)

(assert (=> d!1943165 (= (inv!83594 setElem!42064) (forall!15253 (exprs!6023 setElem!42064) lambda!338649))))

(declare-fun bs!1538064 () Bool)

(assert (= bs!1538064 d!1943165))

(declare-fun m!7031820 () Bool)

(assert (=> bs!1538064 m!7031820))

(assert (=> setNonEmpty!42064 d!1943165))

(declare-fun bs!1538068 () Bool)

(declare-fun d!1943173 () Bool)

(assert (= bs!1538068 (and d!1943173 d!1943165)))

(declare-fun lambda!338655 () Int)

(assert (=> bs!1538068 (= lambda!338655 lambda!338649)))

(declare-fun b!6198617 () Bool)

(declare-fun e!3774782 () Bool)

(assert (=> b!6198617 (= e!3774782 (isEmpty!36582 (t!378230 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun b!6198618 () Bool)

(declare-fun e!3774786 () Regex!16139)

(assert (=> b!6198618 (= e!3774786 EmptyExpr!16139)))

(declare-fun e!3774781 () Bool)

(assert (=> d!1943173 e!3774781))

(declare-fun res!2564042 () Bool)

(assert (=> d!1943173 (=> (not res!2564042) (not e!3774781))))

(declare-fun lt!2342700 () Regex!16139)

(assert (=> d!1943173 (= res!2564042 (validRegex!7875 lt!2342700))))

(declare-fun e!3774783 () Regex!16139)

(assert (=> d!1943173 (= lt!2342700 e!3774783)))

(declare-fun c!1118902 () Bool)

(assert (=> d!1943173 (= c!1118902 e!3774782)))

(declare-fun res!2564043 () Bool)

(assert (=> d!1943173 (=> (not res!2564043) (not e!3774782))))

(assert (=> d!1943173 (= res!2564043 ((_ is Cons!64592) (exprs!6023 (h!71041 zl!343))))))

(assert (=> d!1943173 (forall!15253 (exprs!6023 (h!71041 zl!343)) lambda!338655)))

(assert (=> d!1943173 (= (generalisedConcat!1736 (exprs!6023 (h!71041 zl!343))) lt!2342700)))

(declare-fun b!6198619 () Bool)

(declare-fun e!3774785 () Bool)

(declare-fun head!12787 (List!64716) Regex!16139)

(assert (=> b!6198619 (= e!3774785 (= lt!2342700 (head!12787 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun b!6198620 () Bool)

(assert (=> b!6198620 (= e!3774786 (Concat!24984 (h!71040 (exprs!6023 (h!71041 zl!343))) (generalisedConcat!1736 (t!378230 (exprs!6023 (h!71041 zl!343))))))))

(declare-fun b!6198621 () Bool)

(declare-fun e!3774784 () Bool)

(assert (=> b!6198621 (= e!3774781 e!3774784)))

(declare-fun c!1118905 () Bool)

(assert (=> b!6198621 (= c!1118905 (isEmpty!36582 (exprs!6023 (h!71041 zl!343))))))

(declare-fun b!6198622 () Bool)

(assert (=> b!6198622 (= e!3774784 e!3774785)))

(declare-fun c!1118903 () Bool)

(declare-fun tail!11872 (List!64716) List!64716)

(assert (=> b!6198622 (= c!1118903 (isEmpty!36582 (tail!11872 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun b!6198623 () Bool)

(declare-fun isEmptyExpr!1549 (Regex!16139) Bool)

(assert (=> b!6198623 (= e!3774784 (isEmptyExpr!1549 lt!2342700))))

(declare-fun b!6198624 () Bool)

(declare-fun isConcat!1072 (Regex!16139) Bool)

(assert (=> b!6198624 (= e!3774785 (isConcat!1072 lt!2342700))))

(declare-fun b!6198625 () Bool)

(assert (=> b!6198625 (= e!3774783 e!3774786)))

(declare-fun c!1118904 () Bool)

(assert (=> b!6198625 (= c!1118904 ((_ is Cons!64592) (exprs!6023 (h!71041 zl!343))))))

(declare-fun b!6198626 () Bool)

(assert (=> b!6198626 (= e!3774783 (h!71040 (exprs!6023 (h!71041 zl!343))))))

(assert (= (and d!1943173 res!2564043) b!6198617))

(assert (= (and d!1943173 c!1118902) b!6198626))

(assert (= (and d!1943173 (not c!1118902)) b!6198625))

(assert (= (and b!6198625 c!1118904) b!6198620))

(assert (= (and b!6198625 (not c!1118904)) b!6198618))

(assert (= (and d!1943173 res!2564042) b!6198621))

(assert (= (and b!6198621 c!1118905) b!6198623))

(assert (= (and b!6198621 (not c!1118905)) b!6198622))

(assert (= (and b!6198622 c!1118903) b!6198619))

(assert (= (and b!6198622 (not c!1118903)) b!6198624))

(assert (=> b!6198617 m!7031618))

(declare-fun m!7031826 () Bool)

(assert (=> b!6198623 m!7031826))

(declare-fun m!7031828 () Bool)

(assert (=> d!1943173 m!7031828))

(declare-fun m!7031830 () Bool)

(assert (=> d!1943173 m!7031830))

(declare-fun m!7031832 () Bool)

(assert (=> b!6198622 m!7031832))

(assert (=> b!6198622 m!7031832))

(declare-fun m!7031834 () Bool)

(assert (=> b!6198622 m!7031834))

(declare-fun m!7031836 () Bool)

(assert (=> b!6198620 m!7031836))

(declare-fun m!7031838 () Bool)

(assert (=> b!6198619 m!7031838))

(declare-fun m!7031840 () Bool)

(assert (=> b!6198624 m!7031840))

(declare-fun m!7031842 () Bool)

(assert (=> b!6198621 m!7031842))

(assert (=> b!6198225 d!1943173))

(declare-fun bm!518689 () Bool)

(declare-fun call!518696 () Bool)

(declare-fun call!518694 () Bool)

(assert (=> bm!518689 (= call!518696 call!518694)))

(declare-fun bm!518690 () Bool)

(declare-fun call!518695 () Bool)

(declare-fun c!1118914 () Bool)

(assert (=> bm!518690 (= call!518695 (validRegex!7875 (ite c!1118914 (regTwo!32791 r!7292) (regTwo!32790 r!7292))))))

(declare-fun b!6198663 () Bool)

(declare-fun e!3774814 () Bool)

(declare-fun e!3774811 () Bool)

(assert (=> b!6198663 (= e!3774814 e!3774811)))

(declare-fun c!1118915 () Bool)

(assert (=> b!6198663 (= c!1118915 ((_ is Star!16139) r!7292))))

(declare-fun bm!518691 () Bool)

(assert (=> bm!518691 (= call!518694 (validRegex!7875 (ite c!1118915 (reg!16468 r!7292) (ite c!1118914 (regOne!32791 r!7292) (regOne!32790 r!7292)))))))

(declare-fun b!6198664 () Bool)

(declare-fun e!3774813 () Bool)

(assert (=> b!6198664 (= e!3774813 call!518694)))

(declare-fun b!6198666 () Bool)

(declare-fun e!3774816 () Bool)

(declare-fun e!3774815 () Bool)

(assert (=> b!6198666 (= e!3774816 e!3774815)))

(declare-fun res!2564068 () Bool)

(assert (=> b!6198666 (=> (not res!2564068) (not e!3774815))))

(assert (=> b!6198666 (= res!2564068 call!518696)))

(declare-fun b!6198667 () Bool)

(declare-fun res!2564067 () Bool)

(declare-fun e!3774817 () Bool)

(assert (=> b!6198667 (=> (not res!2564067) (not e!3774817))))

(assert (=> b!6198667 (= res!2564067 call!518696)))

(declare-fun e!3774812 () Bool)

(assert (=> b!6198667 (= e!3774812 e!3774817)))

(declare-fun b!6198668 () Bool)

(assert (=> b!6198668 (= e!3774817 call!518695)))

(declare-fun b!6198669 () Bool)

(assert (=> b!6198669 (= e!3774811 e!3774813)))

(declare-fun res!2564065 () Bool)

(assert (=> b!6198669 (= res!2564065 (not (nullable!6132 (reg!16468 r!7292))))))

(assert (=> b!6198669 (=> (not res!2564065) (not e!3774813))))

(declare-fun b!6198665 () Bool)

(declare-fun res!2564064 () Bool)

(assert (=> b!6198665 (=> res!2564064 e!3774816)))

(assert (=> b!6198665 (= res!2564064 (not ((_ is Concat!24984) r!7292)))))

(assert (=> b!6198665 (= e!3774812 e!3774816)))

(declare-fun d!1943179 () Bool)

(declare-fun res!2564066 () Bool)

(assert (=> d!1943179 (=> res!2564066 e!3774814)))

(assert (=> d!1943179 (= res!2564066 ((_ is ElementMatch!16139) r!7292))))

(assert (=> d!1943179 (= (validRegex!7875 r!7292) e!3774814)))

(declare-fun b!6198670 () Bool)

(assert (=> b!6198670 (= e!3774815 call!518695)))

(declare-fun b!6198671 () Bool)

(assert (=> b!6198671 (= e!3774811 e!3774812)))

(assert (=> b!6198671 (= c!1118914 ((_ is Union!16139) r!7292))))

(assert (= (and d!1943179 (not res!2564066)) b!6198663))

(assert (= (and b!6198663 c!1118915) b!6198669))

(assert (= (and b!6198663 (not c!1118915)) b!6198671))

(assert (= (and b!6198669 res!2564065) b!6198664))

(assert (= (and b!6198671 c!1118914) b!6198667))

(assert (= (and b!6198671 (not c!1118914)) b!6198665))

(assert (= (and b!6198667 res!2564067) b!6198668))

(assert (= (and b!6198665 (not res!2564064)) b!6198666))

(assert (= (and b!6198666 res!2564068) b!6198670))

(assert (= (or b!6198668 b!6198670) bm!518690))

(assert (= (or b!6198667 b!6198666) bm!518689))

(assert (= (or b!6198664 bm!518689) bm!518691))

(declare-fun m!7031844 () Bool)

(assert (=> bm!518690 m!7031844))

(declare-fun m!7031846 () Bool)

(assert (=> bm!518691 m!7031846))

(declare-fun m!7031848 () Bool)

(assert (=> b!6198669 m!7031848))

(assert (=> start!618046 d!1943179))

(declare-fun bs!1538069 () Bool)

(declare-fun d!1943181 () Bool)

(assert (= bs!1538069 (and d!1943181 d!1943165)))

(declare-fun lambda!338656 () Int)

(assert (=> bs!1538069 (= lambda!338656 lambda!338649)))

(declare-fun bs!1538070 () Bool)

(assert (= bs!1538070 (and d!1943181 d!1943173)))

(assert (=> bs!1538070 (= lambda!338656 lambda!338655)))

(assert (=> d!1943181 (= (inv!83594 (Context!11047 (Cons!64592 (regTwo!32790 (regOne!32790 r!7292)) (t!378230 (exprs!6023 (h!71041 zl!343)))))) (forall!15253 (exprs!6023 (Context!11047 (Cons!64592 (regTwo!32790 (regOne!32790 r!7292)) (t!378230 (exprs!6023 (h!71041 zl!343)))))) lambda!338656))))

(declare-fun bs!1538071 () Bool)

(assert (= bs!1538071 d!1943181))

(declare-fun m!7031850 () Bool)

(assert (=> bs!1538071 m!7031850))

(assert (=> b!6198222 d!1943181))

(declare-fun d!1943183 () Bool)

(assert (=> d!1943183 (= (isEmpty!36582 (t!378230 (exprs!6023 (h!71041 zl!343)))) ((_ is Nil!64592) (t!378230 (exprs!6023 (h!71041 zl!343)))))))

(assert (=> b!6198212 d!1943183))

(declare-fun bs!1538072 () Bool)

(declare-fun d!1943185 () Bool)

(assert (= bs!1538072 (and d!1943185 d!1943165)))

(declare-fun lambda!338657 () Int)

(assert (=> bs!1538072 (= lambda!338657 lambda!338649)))

(declare-fun bs!1538073 () Bool)

(assert (= bs!1538073 (and d!1943185 d!1943173)))

(assert (=> bs!1538073 (= lambda!338657 lambda!338655)))

(declare-fun bs!1538074 () Bool)

(assert (= bs!1538074 (and d!1943185 d!1943181)))

(assert (=> bs!1538074 (= lambda!338657 lambda!338656)))

(assert (=> d!1943185 (= (inv!83594 (h!71041 zl!343)) (forall!15253 (exprs!6023 (h!71041 zl!343)) lambda!338657))))

(declare-fun bs!1538075 () Bool)

(assert (= bs!1538075 d!1943185))

(declare-fun m!7031852 () Bool)

(assert (=> bs!1538075 m!7031852))

(assert (=> b!6198231 d!1943185))

(declare-fun bs!1538078 () Bool)

(declare-fun d!1943187 () Bool)

(assert (= bs!1538078 (and d!1943187 d!1943165)))

(declare-fun lambda!338662 () Int)

(assert (=> bs!1538078 (= lambda!338662 lambda!338649)))

(declare-fun bs!1538079 () Bool)

(assert (= bs!1538079 (and d!1943187 d!1943173)))

(assert (=> bs!1538079 (= lambda!338662 lambda!338655)))

(declare-fun bs!1538080 () Bool)

(assert (= bs!1538080 (and d!1943187 d!1943181)))

(assert (=> bs!1538080 (= lambda!338662 lambda!338656)))

(declare-fun bs!1538081 () Bool)

(assert (= bs!1538081 (and d!1943187 d!1943185)))

(assert (=> bs!1538081 (= lambda!338662 lambda!338657)))

(declare-fun b!6198705 () Bool)

(declare-fun e!3774838 () Regex!16139)

(assert (=> b!6198705 (= e!3774838 EmptyLang!16139)))

(declare-fun b!6198706 () Bool)

(declare-fun e!3774840 () Regex!16139)

(assert (=> b!6198706 (= e!3774840 e!3774838)))

(declare-fun c!1118926 () Bool)

(assert (=> b!6198706 (= c!1118926 ((_ is Cons!64592) (unfocusZipperList!1560 zl!343)))))

(declare-fun b!6198707 () Bool)

(assert (=> b!6198707 (= e!3774840 (h!71040 (unfocusZipperList!1560 zl!343)))))

(declare-fun e!3774842 () Bool)

(assert (=> d!1943187 e!3774842))

(declare-fun res!2564082 () Bool)

(assert (=> d!1943187 (=> (not res!2564082) (not e!3774842))))

(declare-fun lt!2342714 () Regex!16139)

(assert (=> d!1943187 (= res!2564082 (validRegex!7875 lt!2342714))))

(assert (=> d!1943187 (= lt!2342714 e!3774840)))

(declare-fun c!1118927 () Bool)

(declare-fun e!3774841 () Bool)

(assert (=> d!1943187 (= c!1118927 e!3774841)))

(declare-fun res!2564083 () Bool)

(assert (=> d!1943187 (=> (not res!2564083) (not e!3774841))))

(assert (=> d!1943187 (= res!2564083 ((_ is Cons!64592) (unfocusZipperList!1560 zl!343)))))

(assert (=> d!1943187 (forall!15253 (unfocusZipperList!1560 zl!343) lambda!338662)))

(assert (=> d!1943187 (= (generalisedUnion!1983 (unfocusZipperList!1560 zl!343)) lt!2342714)))

(declare-fun b!6198708 () Bool)

(declare-fun e!3774837 () Bool)

(assert (=> b!6198708 (= e!3774837 (= lt!2342714 (head!12787 (unfocusZipperList!1560 zl!343))))))

(declare-fun b!6198709 () Bool)

(declare-fun e!3774839 () Bool)

(assert (=> b!6198709 (= e!3774839 e!3774837)))

(declare-fun c!1118929 () Bool)

(assert (=> b!6198709 (= c!1118929 (isEmpty!36582 (tail!11872 (unfocusZipperList!1560 zl!343))))))

(declare-fun b!6198710 () Bool)

(declare-fun isEmptyLang!1557 (Regex!16139) Bool)

(assert (=> b!6198710 (= e!3774839 (isEmptyLang!1557 lt!2342714))))

(declare-fun b!6198711 () Bool)

(assert (=> b!6198711 (= e!3774841 (isEmpty!36582 (t!378230 (unfocusZipperList!1560 zl!343))))))

(declare-fun b!6198712 () Bool)

(declare-fun isUnion!987 (Regex!16139) Bool)

(assert (=> b!6198712 (= e!3774837 (isUnion!987 lt!2342714))))

(declare-fun b!6198713 () Bool)

(assert (=> b!6198713 (= e!3774842 e!3774839)))

(declare-fun c!1118928 () Bool)

(assert (=> b!6198713 (= c!1118928 (isEmpty!36582 (unfocusZipperList!1560 zl!343)))))

(declare-fun b!6198714 () Bool)

(assert (=> b!6198714 (= e!3774838 (Union!16139 (h!71040 (unfocusZipperList!1560 zl!343)) (generalisedUnion!1983 (t!378230 (unfocusZipperList!1560 zl!343)))))))

(assert (= (and d!1943187 res!2564083) b!6198711))

(assert (= (and d!1943187 c!1118927) b!6198707))

(assert (= (and d!1943187 (not c!1118927)) b!6198706))

(assert (= (and b!6198706 c!1118926) b!6198714))

(assert (= (and b!6198706 (not c!1118926)) b!6198705))

(assert (= (and d!1943187 res!2564082) b!6198713))

(assert (= (and b!6198713 c!1118928) b!6198710))

(assert (= (and b!6198713 (not c!1118928)) b!6198709))

(assert (= (and b!6198709 c!1118929) b!6198708))

(assert (= (and b!6198709 (not c!1118929)) b!6198712))

(declare-fun m!7031882 () Bool)

(assert (=> b!6198714 m!7031882))

(assert (=> b!6198713 m!7031646))

(declare-fun m!7031884 () Bool)

(assert (=> b!6198713 m!7031884))

(declare-fun m!7031886 () Bool)

(assert (=> b!6198710 m!7031886))

(assert (=> b!6198708 m!7031646))

(declare-fun m!7031888 () Bool)

(assert (=> b!6198708 m!7031888))

(declare-fun m!7031890 () Bool)

(assert (=> b!6198711 m!7031890))

(declare-fun m!7031892 () Bool)

(assert (=> d!1943187 m!7031892))

(assert (=> d!1943187 m!7031646))

(declare-fun m!7031894 () Bool)

(assert (=> d!1943187 m!7031894))

(declare-fun m!7031896 () Bool)

(assert (=> b!6198712 m!7031896))

(assert (=> b!6198709 m!7031646))

(declare-fun m!7031898 () Bool)

(assert (=> b!6198709 m!7031898))

(assert (=> b!6198709 m!7031898))

(declare-fun m!7031900 () Bool)

(assert (=> b!6198709 m!7031900))

(assert (=> b!6198214 d!1943187))

(declare-fun bs!1538086 () Bool)

(declare-fun d!1943195 () Bool)

(assert (= bs!1538086 (and d!1943195 d!1943165)))

(declare-fun lambda!338666 () Int)

(assert (=> bs!1538086 (= lambda!338666 lambda!338649)))

(declare-fun bs!1538087 () Bool)

(assert (= bs!1538087 (and d!1943195 d!1943173)))

(assert (=> bs!1538087 (= lambda!338666 lambda!338655)))

(declare-fun bs!1538088 () Bool)

(assert (= bs!1538088 (and d!1943195 d!1943181)))

(assert (=> bs!1538088 (= lambda!338666 lambda!338656)))

(declare-fun bs!1538089 () Bool)

(assert (= bs!1538089 (and d!1943195 d!1943187)))

(assert (=> bs!1538089 (= lambda!338666 lambda!338662)))

(declare-fun bs!1538090 () Bool)

(assert (= bs!1538090 (and d!1943195 d!1943185)))

(assert (=> bs!1538090 (= lambda!338666 lambda!338657)))

(declare-fun lt!2342718 () List!64716)

(assert (=> d!1943195 (forall!15253 lt!2342718 lambda!338666)))

(declare-fun e!3774845 () List!64716)

(assert (=> d!1943195 (= lt!2342718 e!3774845)))

(declare-fun c!1118932 () Bool)

(assert (=> d!1943195 (= c!1118932 ((_ is Cons!64593) zl!343))))

(assert (=> d!1943195 (= (unfocusZipperList!1560 zl!343) lt!2342718)))

(declare-fun b!6198719 () Bool)

(assert (=> b!6198719 (= e!3774845 (Cons!64592 (generalisedConcat!1736 (exprs!6023 (h!71041 zl!343))) (unfocusZipperList!1560 (t!378231 zl!343))))))

(declare-fun b!6198720 () Bool)

(assert (=> b!6198720 (= e!3774845 Nil!64592)))

(assert (= (and d!1943195 c!1118932) b!6198719))

(assert (= (and d!1943195 (not c!1118932)) b!6198720))

(declare-fun m!7031906 () Bool)

(assert (=> d!1943195 m!7031906))

(assert (=> b!6198719 m!7031590))

(declare-fun m!7031908 () Bool)

(assert (=> b!6198719 m!7031908))

(assert (=> b!6198214 d!1943195))

(declare-fun b!6198747 () Bool)

(declare-fun e!3774863 () Option!16030)

(assert (=> b!6198747 (= e!3774863 None!16029)))

(declare-fun b!6198748 () Bool)

(declare-fun e!3774864 () Option!16030)

(assert (=> b!6198748 (= e!3774864 e!3774863)))

(declare-fun c!1118938 () Bool)

(assert (=> b!6198748 (= c!1118938 ((_ is Nil!64594) s!2326))))

(declare-fun d!1943199 () Bool)

(declare-fun e!3774862 () Bool)

(assert (=> d!1943199 e!3774862))

(declare-fun res!2564106 () Bool)

(assert (=> d!1943199 (=> res!2564106 e!3774862)))

(declare-fun e!3774860 () Bool)

(assert (=> d!1943199 (= res!2564106 e!3774860)))

(declare-fun res!2564104 () Bool)

(assert (=> d!1943199 (=> (not res!2564104) (not e!3774860))))

(declare-fun lt!2342728 () Option!16030)

(assert (=> d!1943199 (= res!2564104 (isDefined!12733 lt!2342728))))

(assert (=> d!1943199 (= lt!2342728 e!3774864)))

(declare-fun c!1118937 () Bool)

(declare-fun e!3774861 () Bool)

(assert (=> d!1943199 (= c!1118937 e!3774861)))

(declare-fun res!2564102 () Bool)

(assert (=> d!1943199 (=> (not res!2564102) (not e!3774861))))

(assert (=> d!1943199 (= res!2564102 (matchR!8322 (regOne!32790 r!7292) Nil!64594))))

(assert (=> d!1943199 (validRegex!7875 (regOne!32790 r!7292))))

(assert (=> d!1943199 (= (findConcatSeparation!2444 (regOne!32790 r!7292) (regTwo!32790 r!7292) Nil!64594 s!2326 s!2326) lt!2342728)))

(declare-fun b!6198749 () Bool)

(declare-fun res!2564105 () Bool)

(assert (=> b!6198749 (=> (not res!2564105) (not e!3774860))))

(declare-fun get!22302 (Option!16030) tuple2!66236)

(assert (=> b!6198749 (= res!2564105 (matchR!8322 (regOne!32790 r!7292) (_1!36421 (get!22302 lt!2342728))))))

(declare-fun b!6198750 () Bool)

(assert (=> b!6198750 (= e!3774864 (Some!16029 (tuple2!66237 Nil!64594 s!2326)))))

(declare-fun b!6198751 () Bool)

(assert (=> b!6198751 (= e!3774861 (matchR!8322 (regTwo!32790 r!7292) s!2326))))

(declare-fun b!6198752 () Bool)

(declare-fun lt!2342730 () Unit!157887)

(declare-fun lt!2342729 () Unit!157887)

(assert (=> b!6198752 (= lt!2342730 lt!2342729)))

(declare-fun ++!14217 (List!64718 List!64718) List!64718)

(assert (=> b!6198752 (= (++!14217 (++!14217 Nil!64594 (Cons!64594 (h!71042 s!2326) Nil!64594)) (t!378232 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2312 (List!64718 C!32548 List!64718 List!64718) Unit!157887)

(assert (=> b!6198752 (= lt!2342729 (lemmaMoveElementToOtherListKeepsConcatEq!2312 Nil!64594 (h!71042 s!2326) (t!378232 s!2326) s!2326))))

(assert (=> b!6198752 (= e!3774863 (findConcatSeparation!2444 (regOne!32790 r!7292) (regTwo!32790 r!7292) (++!14217 Nil!64594 (Cons!64594 (h!71042 s!2326) Nil!64594)) (t!378232 s!2326) s!2326))))

(declare-fun b!6198753 () Bool)

(declare-fun res!2564103 () Bool)

(assert (=> b!6198753 (=> (not res!2564103) (not e!3774860))))

(assert (=> b!6198753 (= res!2564103 (matchR!8322 (regTwo!32790 r!7292) (_2!36421 (get!22302 lt!2342728))))))

(declare-fun b!6198754 () Bool)

(assert (=> b!6198754 (= e!3774860 (= (++!14217 (_1!36421 (get!22302 lt!2342728)) (_2!36421 (get!22302 lt!2342728))) s!2326))))

(declare-fun b!6198755 () Bool)

(assert (=> b!6198755 (= e!3774862 (not (isDefined!12733 lt!2342728)))))

(assert (= (and d!1943199 res!2564102) b!6198751))

(assert (= (and d!1943199 c!1118937) b!6198750))

(assert (= (and d!1943199 (not c!1118937)) b!6198748))

(assert (= (and b!6198748 c!1118938) b!6198747))

(assert (= (and b!6198748 (not c!1118938)) b!6198752))

(assert (= (and d!1943199 res!2564104) b!6198749))

(assert (= (and b!6198749 res!2564105) b!6198753))

(assert (= (and b!6198753 res!2564103) b!6198754))

(assert (= (and d!1943199 (not res!2564106)) b!6198755))

(declare-fun m!7031918 () Bool)

(assert (=> b!6198752 m!7031918))

(assert (=> b!6198752 m!7031918))

(declare-fun m!7031920 () Bool)

(assert (=> b!6198752 m!7031920))

(declare-fun m!7031922 () Bool)

(assert (=> b!6198752 m!7031922))

(assert (=> b!6198752 m!7031918))

(declare-fun m!7031924 () Bool)

(assert (=> b!6198752 m!7031924))

(declare-fun m!7031926 () Bool)

(assert (=> d!1943199 m!7031926))

(declare-fun m!7031928 () Bool)

(assert (=> d!1943199 m!7031928))

(declare-fun m!7031930 () Bool)

(assert (=> d!1943199 m!7031930))

(declare-fun m!7031932 () Bool)

(assert (=> b!6198749 m!7031932))

(declare-fun m!7031934 () Bool)

(assert (=> b!6198749 m!7031934))

(declare-fun m!7031936 () Bool)

(assert (=> b!6198751 m!7031936))

(assert (=> b!6198754 m!7031932))

(declare-fun m!7031938 () Bool)

(assert (=> b!6198754 m!7031938))

(assert (=> b!6198753 m!7031932))

(declare-fun m!7031940 () Bool)

(assert (=> b!6198753 m!7031940))

(assert (=> b!6198755 m!7031926))

(assert (=> b!6198233 d!1943199))

(declare-fun d!1943205 () Bool)

(declare-fun choose!46069 (Int) Bool)

(assert (=> d!1943205 (= (Exists!3209 lambda!338630) (choose!46069 lambda!338630))))

(declare-fun bs!1538097 () Bool)

(assert (= bs!1538097 d!1943205))

(declare-fun m!7031942 () Bool)

(assert (=> bs!1538097 m!7031942))

(assert (=> b!6198233 d!1943205))

(declare-fun d!1943207 () Bool)

(assert (=> d!1943207 (= (Exists!3209 lambda!338629) (choose!46069 lambda!338629))))

(declare-fun bs!1538098 () Bool)

(assert (= bs!1538098 d!1943207))

(declare-fun m!7031944 () Bool)

(assert (=> bs!1538098 m!7031944))

(assert (=> b!6198233 d!1943207))

(declare-fun bs!1538109 () Bool)

(declare-fun d!1943209 () Bool)

(assert (= bs!1538109 (and d!1943209 b!6198233)))

(declare-fun lambda!338682 () Int)

(assert (=> bs!1538109 (= lambda!338682 lambda!338629)))

(assert (=> bs!1538109 (not (= lambda!338682 lambda!338630))))

(declare-fun bs!1538110 () Bool)

(assert (= bs!1538110 (and d!1943209 b!6198496)))

(assert (=> bs!1538110 (not (= lambda!338682 lambda!338645))))

(declare-fun bs!1538111 () Bool)

(assert (= bs!1538111 (and d!1943209 b!6198488)))

(assert (=> bs!1538111 (not (= lambda!338682 lambda!338646))))

(assert (=> d!1943209 true))

(assert (=> d!1943209 true))

(assert (=> d!1943209 true))

(assert (=> d!1943209 (= (isDefined!12733 (findConcatSeparation!2444 (regOne!32790 r!7292) (regTwo!32790 r!7292) Nil!64594 s!2326 s!2326)) (Exists!3209 lambda!338682))))

(declare-fun lt!2342739 () Unit!157887)

(declare-fun choose!46071 (Regex!16139 Regex!16139 List!64718) Unit!157887)

(assert (=> d!1943209 (= lt!2342739 (choose!46071 (regOne!32790 r!7292) (regTwo!32790 r!7292) s!2326))))

(assert (=> d!1943209 (validRegex!7875 (regOne!32790 r!7292))))

(assert (=> d!1943209 (= (lemmaFindConcatSeparationEquivalentToExists!2208 (regOne!32790 r!7292) (regTwo!32790 r!7292) s!2326) lt!2342739)))

(declare-fun bs!1538112 () Bool)

(assert (= bs!1538112 d!1943209))

(assert (=> bs!1538112 m!7031632))

(assert (=> bs!1538112 m!7031634))

(declare-fun m!7031972 () Bool)

(assert (=> bs!1538112 m!7031972))

(assert (=> bs!1538112 m!7031632))

(declare-fun m!7031974 () Bool)

(assert (=> bs!1538112 m!7031974))

(assert (=> bs!1538112 m!7031930))

(assert (=> b!6198233 d!1943209))

(declare-fun bs!1538113 () Bool)

(declare-fun d!1943217 () Bool)

(assert (= bs!1538113 (and d!1943217 d!1943209)))

(declare-fun lambda!338687 () Int)

(assert (=> bs!1538113 (= lambda!338687 lambda!338682)))

(declare-fun bs!1538114 () Bool)

(assert (= bs!1538114 (and d!1943217 b!6198488)))

(assert (=> bs!1538114 (not (= lambda!338687 lambda!338646))))

(declare-fun bs!1538115 () Bool)

(assert (= bs!1538115 (and d!1943217 b!6198233)))

(assert (=> bs!1538115 (not (= lambda!338687 lambda!338630))))

(assert (=> bs!1538115 (= lambda!338687 lambda!338629)))

(declare-fun bs!1538116 () Bool)

(assert (= bs!1538116 (and d!1943217 b!6198496)))

(assert (=> bs!1538116 (not (= lambda!338687 lambda!338645))))

(assert (=> d!1943217 true))

(assert (=> d!1943217 true))

(assert (=> d!1943217 true))

(declare-fun lambda!338688 () Int)

(assert (=> bs!1538113 (not (= lambda!338688 lambda!338682))))

(assert (=> bs!1538114 (= lambda!338688 lambda!338646)))

(declare-fun bs!1538117 () Bool)

(assert (= bs!1538117 d!1943217))

(assert (=> bs!1538117 (not (= lambda!338688 lambda!338687))))

(assert (=> bs!1538115 (= lambda!338688 lambda!338630)))

(assert (=> bs!1538115 (not (= lambda!338688 lambda!338629))))

(assert (=> bs!1538116 (not (= lambda!338688 lambda!338645))))

(assert (=> d!1943217 true))

(assert (=> d!1943217 true))

(assert (=> d!1943217 true))

(assert (=> d!1943217 (= (Exists!3209 lambda!338687) (Exists!3209 lambda!338688))))

(declare-fun lt!2342748 () Unit!157887)

(declare-fun choose!46072 (Regex!16139 Regex!16139 List!64718) Unit!157887)

(assert (=> d!1943217 (= lt!2342748 (choose!46072 (regOne!32790 r!7292) (regTwo!32790 r!7292) s!2326))))

(assert (=> d!1943217 (validRegex!7875 (regOne!32790 r!7292))))

(assert (=> d!1943217 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1746 (regOne!32790 r!7292) (regTwo!32790 r!7292) s!2326) lt!2342748)))

(declare-fun m!7032010 () Bool)

(assert (=> bs!1538117 m!7032010))

(declare-fun m!7032012 () Bool)

(assert (=> bs!1538117 m!7032012))

(declare-fun m!7032014 () Bool)

(assert (=> bs!1538117 m!7032014))

(assert (=> bs!1538117 m!7031930))

(assert (=> b!6198233 d!1943217))

(declare-fun d!1943233 () Bool)

(declare-fun isEmpty!36587 (Option!16030) Bool)

(assert (=> d!1943233 (= (isDefined!12733 (findConcatSeparation!2444 (regOne!32790 r!7292) (regTwo!32790 r!7292) Nil!64594 s!2326 s!2326)) (not (isEmpty!36587 (findConcatSeparation!2444 (regOne!32790 r!7292) (regTwo!32790 r!7292) Nil!64594 s!2326 s!2326))))))

(declare-fun bs!1538125 () Bool)

(assert (= bs!1538125 d!1943233))

(assert (=> bs!1538125 m!7031632))

(declare-fun m!7032018 () Bool)

(assert (=> bs!1538125 m!7032018))

(assert (=> b!6198233 d!1943233))

(declare-fun d!1943235 () Bool)

(declare-fun e!3774916 () Bool)

(assert (=> d!1943235 e!3774916))

(declare-fun res!2564133 () Bool)

(assert (=> d!1943235 (=> (not res!2564133) (not e!3774916))))

(declare-fun lt!2342754 () List!64717)

(declare-fun noDuplicate!1977 (List!64717) Bool)

(assert (=> d!1943235 (= res!2564133 (noDuplicate!1977 lt!2342754))))

(declare-fun choose!46073 ((InoxSet Context!11046)) List!64717)

(assert (=> d!1943235 (= lt!2342754 (choose!46073 z!1189))))

(assert (=> d!1943235 (= (toList!9923 z!1189) lt!2342754)))

(declare-fun b!6198854 () Bool)

(declare-fun content!12072 (List!64717) (InoxSet Context!11046))

(assert (=> b!6198854 (= e!3774916 (= (content!12072 lt!2342754) z!1189))))

(assert (= (and d!1943235 res!2564133) b!6198854))

(declare-fun m!7032020 () Bool)

(assert (=> d!1943235 m!7032020))

(declare-fun m!7032022 () Bool)

(assert (=> d!1943235 m!7032022))

(declare-fun m!7032024 () Bool)

(assert (=> b!6198854 m!7032024))

(assert (=> b!6198223 d!1943235))

(declare-fun b!6198873 () Bool)

(declare-fun e!3774923 () Bool)

(declare-fun tp!1728865 () Bool)

(assert (=> b!6198873 (= e!3774923 tp!1728865)))

(declare-fun b!6198872 () Bool)

(declare-fun tp!1728867 () Bool)

(declare-fun tp!1728864 () Bool)

(assert (=> b!6198872 (= e!3774923 (and tp!1728867 tp!1728864))))

(declare-fun b!6198874 () Bool)

(declare-fun tp!1728863 () Bool)

(declare-fun tp!1728866 () Bool)

(assert (=> b!6198874 (= e!3774923 (and tp!1728863 tp!1728866))))

(declare-fun b!6198871 () Bool)

(assert (=> b!6198871 (= e!3774923 tp_is_empty!41531)))

(assert (=> b!6198229 (= tp!1728809 e!3774923)))

(assert (= (and b!6198229 ((_ is ElementMatch!16139) (regOne!32790 r!7292))) b!6198871))

(assert (= (and b!6198229 ((_ is Concat!24984) (regOne!32790 r!7292))) b!6198872))

(assert (= (and b!6198229 ((_ is Star!16139) (regOne!32790 r!7292))) b!6198873))

(assert (= (and b!6198229 ((_ is Union!16139) (regOne!32790 r!7292))) b!6198874))

(declare-fun b!6198881 () Bool)

(declare-fun e!3774925 () Bool)

(declare-fun tp!1728875 () Bool)

(assert (=> b!6198881 (= e!3774925 tp!1728875)))

(declare-fun b!6198880 () Bool)

(declare-fun tp!1728877 () Bool)

(declare-fun tp!1728874 () Bool)

(assert (=> b!6198880 (= e!3774925 (and tp!1728877 tp!1728874))))

(declare-fun b!6198882 () Bool)

(declare-fun tp!1728873 () Bool)

(declare-fun tp!1728876 () Bool)

(assert (=> b!6198882 (= e!3774925 (and tp!1728873 tp!1728876))))

(declare-fun b!6198879 () Bool)

(assert (=> b!6198879 (= e!3774925 tp_is_empty!41531)))

(assert (=> b!6198229 (= tp!1728810 e!3774925)))

(assert (= (and b!6198229 ((_ is ElementMatch!16139) (regTwo!32790 r!7292))) b!6198879))

(assert (= (and b!6198229 ((_ is Concat!24984) (regTwo!32790 r!7292))) b!6198880))

(assert (= (and b!6198229 ((_ is Star!16139) (regTwo!32790 r!7292))) b!6198881))

(assert (= (and b!6198229 ((_ is Union!16139) (regTwo!32790 r!7292))) b!6198882))

(declare-fun b!6198897 () Bool)

(declare-fun e!3774933 () Bool)

(declare-fun tp!1728891 () Bool)

(declare-fun tp!1728892 () Bool)

(assert (=> b!6198897 (= e!3774933 (and tp!1728891 tp!1728892))))

(assert (=> b!6198215 (= tp!1728807 e!3774933)))

(assert (= (and b!6198215 ((_ is Cons!64592) (exprs!6023 (h!71041 zl!343)))) b!6198897))

(declare-fun condSetEmpty!42070 () Bool)

(assert (=> setNonEmpty!42064 (= condSetEmpty!42070 (= setRest!42064 ((as const (Array Context!11046 Bool)) false)))))

(declare-fun setRes!42070 () Bool)

(assert (=> setNonEmpty!42064 (= tp!1728808 setRes!42070)))

(declare-fun setIsEmpty!42070 () Bool)

(assert (=> setIsEmpty!42070 setRes!42070))

(declare-fun tp!1728899 () Bool)

(declare-fun e!3774938 () Bool)

(declare-fun setNonEmpty!42070 () Bool)

(declare-fun setElem!42070 () Context!11046)

(assert (=> setNonEmpty!42070 (= setRes!42070 (and tp!1728899 (inv!83594 setElem!42070) e!3774938))))

(declare-fun setRest!42070 () (InoxSet Context!11046))

(assert (=> setNonEmpty!42070 (= setRest!42064 ((_ map or) (store ((as const (Array Context!11046 Bool)) false) setElem!42070 true) setRest!42070))))

(declare-fun b!6198904 () Bool)

(declare-fun tp!1728900 () Bool)

(assert (=> b!6198904 (= e!3774938 tp!1728900)))

(assert (= (and setNonEmpty!42064 condSetEmpty!42070) setIsEmpty!42070))

(assert (= (and setNonEmpty!42064 (not condSetEmpty!42070)) setNonEmpty!42070))

(assert (= setNonEmpty!42070 b!6198904))

(declare-fun m!7032030 () Bool)

(assert (=> setNonEmpty!42070 m!7032030))

(declare-fun b!6198907 () Bool)

(declare-fun e!3774939 () Bool)

(declare-fun tp!1728903 () Bool)

(assert (=> b!6198907 (= e!3774939 tp!1728903)))

(declare-fun b!6198906 () Bool)

(declare-fun tp!1728905 () Bool)

(declare-fun tp!1728902 () Bool)

(assert (=> b!6198906 (= e!3774939 (and tp!1728905 tp!1728902))))

(declare-fun b!6198908 () Bool)

(declare-fun tp!1728901 () Bool)

(declare-fun tp!1728904 () Bool)

(assert (=> b!6198908 (= e!3774939 (and tp!1728901 tp!1728904))))

(declare-fun b!6198905 () Bool)

(assert (=> b!6198905 (= e!3774939 tp_is_empty!41531)))

(assert (=> b!6198221 (= tp!1728802 e!3774939)))

(assert (= (and b!6198221 ((_ is ElementMatch!16139) (reg!16468 r!7292))) b!6198905))

(assert (= (and b!6198221 ((_ is Concat!24984) (reg!16468 r!7292))) b!6198906))

(assert (= (and b!6198221 ((_ is Star!16139) (reg!16468 r!7292))) b!6198907))

(assert (= (and b!6198221 ((_ is Union!16139) (reg!16468 r!7292))) b!6198908))

(declare-fun b!6198911 () Bool)

(declare-fun e!3774940 () Bool)

(declare-fun tp!1728908 () Bool)

(assert (=> b!6198911 (= e!3774940 tp!1728908)))

(declare-fun b!6198910 () Bool)

(declare-fun tp!1728910 () Bool)

(declare-fun tp!1728907 () Bool)

(assert (=> b!6198910 (= e!3774940 (and tp!1728910 tp!1728907))))

(declare-fun b!6198912 () Bool)

(declare-fun tp!1728906 () Bool)

(declare-fun tp!1728909 () Bool)

(assert (=> b!6198912 (= e!3774940 (and tp!1728906 tp!1728909))))

(declare-fun b!6198909 () Bool)

(assert (=> b!6198909 (= e!3774940 tp_is_empty!41531)))

(assert (=> b!6198232 (= tp!1728806 e!3774940)))

(assert (= (and b!6198232 ((_ is ElementMatch!16139) (regOne!32791 r!7292))) b!6198909))

(assert (= (and b!6198232 ((_ is Concat!24984) (regOne!32791 r!7292))) b!6198910))

(assert (= (and b!6198232 ((_ is Star!16139) (regOne!32791 r!7292))) b!6198911))

(assert (= (and b!6198232 ((_ is Union!16139) (regOne!32791 r!7292))) b!6198912))

(declare-fun b!6198915 () Bool)

(declare-fun e!3774941 () Bool)

(declare-fun tp!1728913 () Bool)

(assert (=> b!6198915 (= e!3774941 tp!1728913)))

(declare-fun b!6198914 () Bool)

(declare-fun tp!1728915 () Bool)

(declare-fun tp!1728912 () Bool)

(assert (=> b!6198914 (= e!3774941 (and tp!1728915 tp!1728912))))

(declare-fun b!6198916 () Bool)

(declare-fun tp!1728911 () Bool)

(declare-fun tp!1728914 () Bool)

(assert (=> b!6198916 (= e!3774941 (and tp!1728911 tp!1728914))))

(declare-fun b!6198913 () Bool)

(assert (=> b!6198913 (= e!3774941 tp_is_empty!41531)))

(assert (=> b!6198232 (= tp!1728801 e!3774941)))

(assert (= (and b!6198232 ((_ is ElementMatch!16139) (regTwo!32791 r!7292))) b!6198913))

(assert (= (and b!6198232 ((_ is Concat!24984) (regTwo!32791 r!7292))) b!6198914))

(assert (= (and b!6198232 ((_ is Star!16139) (regTwo!32791 r!7292))) b!6198915))

(assert (= (and b!6198232 ((_ is Union!16139) (regTwo!32791 r!7292))) b!6198916))

(declare-fun b!6198921 () Bool)

(declare-fun e!3774944 () Bool)

(declare-fun tp!1728918 () Bool)

(assert (=> b!6198921 (= e!3774944 (and tp_is_empty!41531 tp!1728918))))

(assert (=> b!6198217 (= tp!1728803 e!3774944)))

(assert (= (and b!6198217 ((_ is Cons!64594) (t!378232 s!2326))) b!6198921))

(declare-fun b!6198929 () Bool)

(declare-fun e!3774950 () Bool)

(declare-fun tp!1728923 () Bool)

(assert (=> b!6198929 (= e!3774950 tp!1728923)))

(declare-fun e!3774949 () Bool)

(declare-fun tp!1728924 () Bool)

(declare-fun b!6198928 () Bool)

(assert (=> b!6198928 (= e!3774949 (and (inv!83594 (h!71041 (t!378231 zl!343))) e!3774950 tp!1728924))))

(assert (=> b!6198231 (= tp!1728805 e!3774949)))

(assert (= b!6198928 b!6198929))

(assert (= (and b!6198231 ((_ is Cons!64593) (t!378231 zl!343))) b!6198928))

(declare-fun m!7032032 () Bool)

(assert (=> b!6198928 m!7032032))

(declare-fun b!6198930 () Bool)

(declare-fun e!3774951 () Bool)

(declare-fun tp!1728925 () Bool)

(declare-fun tp!1728926 () Bool)

(assert (=> b!6198930 (= e!3774951 (and tp!1728925 tp!1728926))))

(assert (=> b!6198213 (= tp!1728804 e!3774951)))

(assert (= (and b!6198213 ((_ is Cons!64592) (exprs!6023 setElem!42064))) b!6198930))

(declare-fun b_lambda!235771 () Bool)

(assert (= b_lambda!235765 (or b!6198226 b_lambda!235771)))

(declare-fun bs!1538127 () Bool)

(declare-fun d!1943239 () Bool)

(assert (= bs!1538127 (and d!1943239 b!6198226)))

(assert (=> bs!1538127 (= (dynLambda!25470 lambda!338631 (h!71041 zl!343)) (derivationStepZipperUp!1313 (h!71041 zl!343) (h!71042 s!2326)))))

(assert (=> bs!1538127 m!7031602))

(assert (=> d!1943129 d!1943239))

(check-sat (not b!6198754) (not bm!518612) (not setNonEmpty!42070) (not bm!518674) (not b!6198906) (not b!6198873) (not d!1943133) (not d!1943181) (not bm!518690) (not d!1943207) (not b!6198563) (not d!1943139) (not b!6198874) (not d!1943159) (not b!6198411) (not d!1943125) (not b!6198713) (not b!6198296) (not b!6198710) (not d!1943195) (not b!6198669) (not bm!518620) (not b!6198916) (not d!1943185) (not b!6198708) tp_is_empty!41531 (not b!6198882) (not b!6198621) (not b!6198313) (not b!6198755) (not b!6198712) (not b!6198930) (not b!6198620) (not b!6198751) (not b!6198408) (not b!6198915) (not bm!518691) (not b!6198401) (not b!6198929) (not b!6198622) (not b!6198410) (not b!6198567) (not b!6198623) (not b!6198285) (not b!6198409) (not bm!518637) (not bm!518638) (not bs!1538127) (not b!6198570) (not b!6198752) (not b!6198311) (not bm!518656) (not b!6198872) (not d!1943205) (not b!6198854) (not b!6198383) (not b!6198897) (not d!1943209) (not d!1943147) (not b!6198714) (not bm!518613) (not b!6198880) (not d!1943173) (not b!6198283) (not b!6198406) (not b!6198491) (not d!1943145) (not b!6198928) (not bm!518640) (not bm!518655) (not b!6198709) (not d!1943129) (not b!6198624) (not b!6198572) (not b!6198564) (not b!6198619) (not d!1943199) (not b!6198904) (not b!6198294) (not d!1943141) (not b!6198907) (not b!6198914) (not d!1943115) (not d!1943217) (not b!6198881) (not b!6198908) (not b!6198489) (not d!1943233) (not d!1943113) (not d!1943163) (not d!1943235) (not b!6198910) (not b!6198912) (not b_lambda!235771) (not b!6198749) (not b!6198753) (not b!6198921) (not b!6198617) (not b!6198407) (not b!6198719) (not b!6198571) (not b!6198711) (not d!1943165) (not b!6198911) (not d!1943187))
(check-sat)
(get-model)

(declare-fun d!1943241 () Bool)

(assert (=> d!1943241 (= (head!12787 (unfocusZipperList!1560 zl!343)) (h!71040 (unfocusZipperList!1560 zl!343)))))

(assert (=> b!6198708 d!1943241))

(declare-fun d!1943243 () Bool)

(assert (=> d!1943243 (= (head!12787 (exprs!6023 (h!71041 zl!343))) (h!71040 (exprs!6023 (h!71041 zl!343))))))

(assert (=> b!6198619 d!1943243))

(declare-fun d!1943245 () Bool)

(assert (=> d!1943245 (= (nullable!6132 (h!71040 (exprs!6023 lt!2342664))) (nullableFct!2087 (h!71040 (exprs!6023 lt!2342664))))))

(declare-fun bs!1538128 () Bool)

(assert (= bs!1538128 d!1943245))

(declare-fun m!7032034 () Bool)

(assert (=> bs!1538128 m!7032034))

(assert (=> b!6198285 d!1943245))

(declare-fun b!6198931 () Bool)

(declare-fun res!2564134 () Bool)

(declare-fun e!3774958 () Bool)

(assert (=> b!6198931 (=> res!2564134 e!3774958)))

(assert (=> b!6198931 (= res!2564134 (not ((_ is ElementMatch!16139) (derivativeStep!4852 r!7292 (head!12786 s!2326)))))))

(declare-fun e!3774955 () Bool)

(assert (=> b!6198931 (= e!3774955 e!3774958)))

(declare-fun b!6198932 () Bool)

(declare-fun e!3774953 () Bool)

(assert (=> b!6198932 (= e!3774953 (matchR!8322 (derivativeStep!4852 (derivativeStep!4852 r!7292 (head!12786 s!2326)) (head!12786 (tail!11871 s!2326))) (tail!11871 (tail!11871 s!2326))))))

(declare-fun b!6198933 () Bool)

(declare-fun res!2564137 () Bool)

(declare-fun e!3774956 () Bool)

(assert (=> b!6198933 (=> (not res!2564137) (not e!3774956))))

(assert (=> b!6198933 (= res!2564137 (isEmpty!36585 (tail!11871 (tail!11871 s!2326))))))

(declare-fun b!6198934 () Bool)

(declare-fun e!3774957 () Bool)

(assert (=> b!6198934 (= e!3774958 e!3774957)))

(declare-fun res!2564135 () Bool)

(assert (=> b!6198934 (=> (not res!2564135) (not e!3774957))))

(declare-fun lt!2342755 () Bool)

(assert (=> b!6198934 (= res!2564135 (not lt!2342755))))

(declare-fun b!6198935 () Bool)

(declare-fun e!3774952 () Bool)

(assert (=> b!6198935 (= e!3774952 e!3774955)))

(declare-fun c!1118961 () Bool)

(assert (=> b!6198935 (= c!1118961 ((_ is EmptyLang!16139) (derivativeStep!4852 r!7292 (head!12786 s!2326))))))

(declare-fun b!6198936 () Bool)

(assert (=> b!6198936 (= e!3774956 (= (head!12786 (tail!11871 s!2326)) (c!1118778 (derivativeStep!4852 r!7292 (head!12786 s!2326)))))))

(declare-fun b!6198937 () Bool)

(declare-fun call!518697 () Bool)

(assert (=> b!6198937 (= e!3774952 (= lt!2342755 call!518697))))

(declare-fun b!6198938 () Bool)

(assert (=> b!6198938 (= e!3774955 (not lt!2342755))))

(declare-fun bm!518692 () Bool)

(assert (=> bm!518692 (= call!518697 (isEmpty!36585 (tail!11871 s!2326)))))

(declare-fun b!6198939 () Bool)

(declare-fun res!2564140 () Bool)

(declare-fun e!3774954 () Bool)

(assert (=> b!6198939 (=> res!2564140 e!3774954)))

(assert (=> b!6198939 (= res!2564140 (not (isEmpty!36585 (tail!11871 (tail!11871 s!2326)))))))

(declare-fun b!6198940 () Bool)

(assert (=> b!6198940 (= e!3774953 (nullable!6132 (derivativeStep!4852 r!7292 (head!12786 s!2326))))))

(declare-fun b!6198941 () Bool)

(assert (=> b!6198941 (= e!3774954 (not (= (head!12786 (tail!11871 s!2326)) (c!1118778 (derivativeStep!4852 r!7292 (head!12786 s!2326))))))))

(declare-fun b!6198942 () Bool)

(declare-fun res!2564136 () Bool)

(assert (=> b!6198942 (=> (not res!2564136) (not e!3774956))))

(assert (=> b!6198942 (= res!2564136 (not call!518697))))

(declare-fun b!6198943 () Bool)

(declare-fun res!2564139 () Bool)

(assert (=> b!6198943 (=> res!2564139 e!3774958)))

(assert (=> b!6198943 (= res!2564139 e!3774956)))

(declare-fun res!2564141 () Bool)

(assert (=> b!6198943 (=> (not res!2564141) (not e!3774956))))

(assert (=> b!6198943 (= res!2564141 lt!2342755)))

(declare-fun b!6198944 () Bool)

(assert (=> b!6198944 (= e!3774957 e!3774954)))

(declare-fun res!2564138 () Bool)

(assert (=> b!6198944 (=> res!2564138 e!3774954)))

(assert (=> b!6198944 (= res!2564138 call!518697)))

(declare-fun d!1943247 () Bool)

(assert (=> d!1943247 e!3774952))

(declare-fun c!1118959 () Bool)

(assert (=> d!1943247 (= c!1118959 ((_ is EmptyExpr!16139) (derivativeStep!4852 r!7292 (head!12786 s!2326))))))

(assert (=> d!1943247 (= lt!2342755 e!3774953)))

(declare-fun c!1118960 () Bool)

(assert (=> d!1943247 (= c!1118960 (isEmpty!36585 (tail!11871 s!2326)))))

(assert (=> d!1943247 (validRegex!7875 (derivativeStep!4852 r!7292 (head!12786 s!2326)))))

(assert (=> d!1943247 (= (matchR!8322 (derivativeStep!4852 r!7292 (head!12786 s!2326)) (tail!11871 s!2326)) lt!2342755)))

(assert (= (and d!1943247 c!1118960) b!6198940))

(assert (= (and d!1943247 (not c!1118960)) b!6198932))

(assert (= (and d!1943247 c!1118959) b!6198937))

(assert (= (and d!1943247 (not c!1118959)) b!6198935))

(assert (= (and b!6198935 c!1118961) b!6198938))

(assert (= (and b!6198935 (not c!1118961)) b!6198931))

(assert (= (and b!6198931 (not res!2564134)) b!6198943))

(assert (= (and b!6198943 res!2564141) b!6198942))

(assert (= (and b!6198942 res!2564136) b!6198933))

(assert (= (and b!6198933 res!2564137) b!6198936))

(assert (= (and b!6198943 (not res!2564139)) b!6198934))

(assert (= (and b!6198934 res!2564135) b!6198944))

(assert (= (and b!6198944 (not res!2564138)) b!6198939))

(assert (= (and b!6198939 (not res!2564140)) b!6198941))

(assert (= (or b!6198937 b!6198942 b!6198944) bm!518692))

(assert (=> b!6198936 m!7031790))

(declare-fun m!7032036 () Bool)

(assert (=> b!6198936 m!7032036))

(assert (=> b!6198941 m!7031790))

(assert (=> b!6198941 m!7032036))

(assert (=> bm!518692 m!7031790))

(assert (=> bm!518692 m!7031792))

(assert (=> b!6198940 m!7031794))

(declare-fun m!7032038 () Bool)

(assert (=> b!6198940 m!7032038))

(assert (=> b!6198939 m!7031790))

(declare-fun m!7032040 () Bool)

(assert (=> b!6198939 m!7032040))

(assert (=> b!6198939 m!7032040))

(declare-fun m!7032042 () Bool)

(assert (=> b!6198939 m!7032042))

(assert (=> d!1943247 m!7031790))

(assert (=> d!1943247 m!7031792))

(assert (=> d!1943247 m!7031794))

(declare-fun m!7032044 () Bool)

(assert (=> d!1943247 m!7032044))

(assert (=> b!6198933 m!7031790))

(assert (=> b!6198933 m!7032040))

(assert (=> b!6198933 m!7032040))

(assert (=> b!6198933 m!7032042))

(assert (=> b!6198932 m!7031790))

(assert (=> b!6198932 m!7032036))

(assert (=> b!6198932 m!7031794))

(assert (=> b!6198932 m!7032036))

(declare-fun m!7032046 () Bool)

(assert (=> b!6198932 m!7032046))

(assert (=> b!6198932 m!7031790))

(assert (=> b!6198932 m!7032040))

(assert (=> b!6198932 m!7032046))

(assert (=> b!6198932 m!7032040))

(declare-fun m!7032048 () Bool)

(assert (=> b!6198932 m!7032048))

(assert (=> b!6198563 d!1943247))

(declare-fun b!6198965 () Bool)

(declare-fun e!3774972 () Regex!16139)

(declare-fun e!3774969 () Regex!16139)

(assert (=> b!6198965 (= e!3774972 e!3774969)))

(declare-fun c!1118975 () Bool)

(assert (=> b!6198965 (= c!1118975 ((_ is ElementMatch!16139) r!7292))))

(declare-fun b!6198966 () Bool)

(declare-fun e!3774970 () Regex!16139)

(declare-fun e!3774973 () Regex!16139)

(assert (=> b!6198966 (= e!3774970 e!3774973)))

(declare-fun c!1118973 () Bool)

(assert (=> b!6198966 (= c!1118973 ((_ is Star!16139) r!7292))))

(declare-fun call!518708 () Regex!16139)

(declare-fun c!1118976 () Bool)

(declare-fun bm!518701 () Bool)

(assert (=> bm!518701 (= call!518708 (derivativeStep!4852 (ite c!1118976 (regTwo!32791 r!7292) (regOne!32790 r!7292)) (head!12786 s!2326)))))

(declare-fun b!6198967 () Bool)

(declare-fun call!518709 () Regex!16139)

(assert (=> b!6198967 (= e!3774970 (Union!16139 call!518709 call!518708))))

(declare-fun d!1943249 () Bool)

(declare-fun lt!2342758 () Regex!16139)

(assert (=> d!1943249 (validRegex!7875 lt!2342758)))

(assert (=> d!1943249 (= lt!2342758 e!3774972)))

(declare-fun c!1118972 () Bool)

(assert (=> d!1943249 (= c!1118972 (or ((_ is EmptyExpr!16139) r!7292) ((_ is EmptyLang!16139) r!7292)))))

(assert (=> d!1943249 (validRegex!7875 r!7292)))

(assert (=> d!1943249 (= (derivativeStep!4852 r!7292 (head!12786 s!2326)) lt!2342758)))

(declare-fun b!6198968 () Bool)

(assert (=> b!6198968 (= e!3774972 EmptyLang!16139)))

(declare-fun bm!518702 () Bool)

(declare-fun call!518706 () Regex!16139)

(declare-fun call!518707 () Regex!16139)

(assert (=> bm!518702 (= call!518706 call!518707)))

(declare-fun bm!518703 () Bool)

(assert (=> bm!518703 (= call!518707 call!518709)))

(declare-fun e!3774971 () Regex!16139)

(declare-fun b!6198969 () Bool)

(assert (=> b!6198969 (= e!3774971 (Union!16139 (Concat!24984 call!518708 (regTwo!32790 r!7292)) call!518706))))

(declare-fun b!6198970 () Bool)

(assert (=> b!6198970 (= e!3774973 (Concat!24984 call!518707 r!7292))))

(declare-fun b!6198971 () Bool)

(assert (=> b!6198971 (= e!3774969 (ite (= (head!12786 s!2326) (c!1118778 r!7292)) EmptyExpr!16139 EmptyLang!16139))))

(declare-fun bm!518704 () Bool)

(declare-fun c!1118974 () Bool)

(assert (=> bm!518704 (= call!518709 (derivativeStep!4852 (ite c!1118976 (regOne!32791 r!7292) (ite c!1118973 (reg!16468 r!7292) (ite c!1118974 (regTwo!32790 r!7292) (regOne!32790 r!7292)))) (head!12786 s!2326)))))

(declare-fun b!6198972 () Bool)

(assert (=> b!6198972 (= e!3774971 (Union!16139 (Concat!24984 call!518706 (regTwo!32790 r!7292)) EmptyLang!16139))))

(declare-fun b!6198973 () Bool)

(assert (=> b!6198973 (= c!1118976 ((_ is Union!16139) r!7292))))

(assert (=> b!6198973 (= e!3774969 e!3774970)))

(declare-fun b!6198974 () Bool)

(assert (=> b!6198974 (= c!1118974 (nullable!6132 (regOne!32790 r!7292)))))

(assert (=> b!6198974 (= e!3774973 e!3774971)))

(assert (= (and d!1943249 c!1118972) b!6198968))

(assert (= (and d!1943249 (not c!1118972)) b!6198965))

(assert (= (and b!6198965 c!1118975) b!6198971))

(assert (= (and b!6198965 (not c!1118975)) b!6198973))

(assert (= (and b!6198973 c!1118976) b!6198967))

(assert (= (and b!6198973 (not c!1118976)) b!6198966))

(assert (= (and b!6198966 c!1118973) b!6198970))

(assert (= (and b!6198966 (not c!1118973)) b!6198974))

(assert (= (and b!6198974 c!1118974) b!6198969))

(assert (= (and b!6198974 (not c!1118974)) b!6198972))

(assert (= (or b!6198969 b!6198972) bm!518702))

(assert (= (or b!6198970 bm!518702) bm!518703))

(assert (= (or b!6198967 b!6198969) bm!518701))

(assert (= (or b!6198967 bm!518703) bm!518704))

(assert (=> bm!518701 m!7031786))

(declare-fun m!7032050 () Bool)

(assert (=> bm!518701 m!7032050))

(declare-fun m!7032052 () Bool)

(assert (=> d!1943249 m!7032052))

(assert (=> d!1943249 m!7031614))

(assert (=> bm!518704 m!7031786))

(declare-fun m!7032054 () Bool)

(assert (=> bm!518704 m!7032054))

(declare-fun m!7032056 () Bool)

(assert (=> b!6198974 m!7032056))

(assert (=> b!6198563 d!1943249))

(declare-fun d!1943251 () Bool)

(assert (=> d!1943251 (= (head!12786 s!2326) (h!71042 s!2326))))

(assert (=> b!6198563 d!1943251))

(declare-fun d!1943253 () Bool)

(assert (=> d!1943253 (= (tail!11871 s!2326) (t!378232 s!2326))))

(assert (=> b!6198563 d!1943253))

(declare-fun d!1943255 () Bool)

(assert (=> d!1943255 (= (isEmpty!36585 s!2326) ((_ is Nil!64594) s!2326))))

(assert (=> bm!518656 d!1943255))

(declare-fun d!1943257 () Bool)

(declare-fun c!1118977 () Bool)

(assert (=> d!1943257 (= c!1118977 (isEmpty!36585 (tail!11871 (t!378232 s!2326))))))

(declare-fun e!3774974 () Bool)

(assert (=> d!1943257 (= (matchZipper!2151 (derivationStepZipper!2104 lt!2342667 (head!12786 (t!378232 s!2326))) (tail!11871 (t!378232 s!2326))) e!3774974)))

(declare-fun b!6198975 () Bool)

(assert (=> b!6198975 (= e!3774974 (nullableZipper!1912 (derivationStepZipper!2104 lt!2342667 (head!12786 (t!378232 s!2326)))))))

(declare-fun b!6198976 () Bool)

(assert (=> b!6198976 (= e!3774974 (matchZipper!2151 (derivationStepZipper!2104 (derivationStepZipper!2104 lt!2342667 (head!12786 (t!378232 s!2326))) (head!12786 (tail!11871 (t!378232 s!2326)))) (tail!11871 (tail!11871 (t!378232 s!2326)))))))

(assert (= (and d!1943257 c!1118977) b!6198975))

(assert (= (and d!1943257 (not c!1118977)) b!6198976))

(assert (=> d!1943257 m!7031734))

(declare-fun m!7032058 () Bool)

(assert (=> d!1943257 m!7032058))

(assert (=> b!6198975 m!7031746))

(declare-fun m!7032060 () Bool)

(assert (=> b!6198975 m!7032060))

(assert (=> b!6198976 m!7031734))

(declare-fun m!7032062 () Bool)

(assert (=> b!6198976 m!7032062))

(assert (=> b!6198976 m!7031746))

(assert (=> b!6198976 m!7032062))

(declare-fun m!7032064 () Bool)

(assert (=> b!6198976 m!7032064))

(assert (=> b!6198976 m!7031734))

(declare-fun m!7032066 () Bool)

(assert (=> b!6198976 m!7032066))

(assert (=> b!6198976 m!7032064))

(assert (=> b!6198976 m!7032066))

(declare-fun m!7032068 () Bool)

(assert (=> b!6198976 m!7032068))

(assert (=> b!6198411 d!1943257))

(declare-fun bs!1538129 () Bool)

(declare-fun d!1943259 () Bool)

(assert (= bs!1538129 (and d!1943259 b!6198226)))

(declare-fun lambda!338692 () Int)

(assert (=> bs!1538129 (= (= (head!12786 (t!378232 s!2326)) (h!71042 s!2326)) (= lambda!338692 lambda!338631))))

(assert (=> d!1943259 true))

(assert (=> d!1943259 (= (derivationStepZipper!2104 lt!2342667 (head!12786 (t!378232 s!2326))) (flatMap!1644 lt!2342667 lambda!338692))))

(declare-fun bs!1538130 () Bool)

(assert (= bs!1538130 d!1943259))

(declare-fun m!7032070 () Bool)

(assert (=> bs!1538130 m!7032070))

(assert (=> b!6198411 d!1943259))

(declare-fun d!1943261 () Bool)

(assert (=> d!1943261 (= (head!12786 (t!378232 s!2326)) (h!71042 (t!378232 s!2326)))))

(assert (=> b!6198411 d!1943261))

(declare-fun d!1943263 () Bool)

(assert (=> d!1943263 (= (tail!11871 (t!378232 s!2326)) (t!378232 (t!378232 s!2326)))))

(assert (=> b!6198411 d!1943263))

(declare-fun d!1943265 () Bool)

(assert (=> d!1943265 (= (isEmptyLang!1557 lt!2342714) ((_ is EmptyLang!16139) lt!2342714))))

(assert (=> b!6198710 d!1943265))

(declare-fun d!1943267 () Bool)

(declare-fun res!2564146 () Bool)

(declare-fun e!3774979 () Bool)

(assert (=> d!1943267 (=> res!2564146 e!3774979)))

(assert (=> d!1943267 (= res!2564146 ((_ is Nil!64592) (exprs!6023 setElem!42064)))))

(assert (=> d!1943267 (= (forall!15253 (exprs!6023 setElem!42064) lambda!338649) e!3774979)))

(declare-fun b!6198983 () Bool)

(declare-fun e!3774980 () Bool)

(assert (=> b!6198983 (= e!3774979 e!3774980)))

(declare-fun res!2564147 () Bool)

(assert (=> b!6198983 (=> (not res!2564147) (not e!3774980))))

(declare-fun dynLambda!25472 (Int Regex!16139) Bool)

(assert (=> b!6198983 (= res!2564147 (dynLambda!25472 lambda!338649 (h!71040 (exprs!6023 setElem!42064))))))

(declare-fun b!6198984 () Bool)

(assert (=> b!6198984 (= e!3774980 (forall!15253 (t!378230 (exprs!6023 setElem!42064)) lambda!338649))))

(assert (= (and d!1943267 (not res!2564146)) b!6198983))

(assert (= (and b!6198983 res!2564147) b!6198984))

(declare-fun b_lambda!235773 () Bool)

(assert (=> (not b_lambda!235773) (not b!6198983)))

(declare-fun m!7032072 () Bool)

(assert (=> b!6198983 m!7032072))

(declare-fun m!7032074 () Bool)

(assert (=> b!6198984 m!7032074))

(assert (=> d!1943165 d!1943267))

(declare-fun d!1943269 () Bool)

(assert (=> d!1943269 (= (isEmpty!36585 (t!378232 s!2326)) ((_ is Nil!64594) (t!378232 s!2326)))))

(assert (=> d!1943147 d!1943269))

(declare-fun b!6198985 () Bool)

(declare-fun e!3774982 () (InoxSet Context!11046))

(declare-fun call!518710 () (InoxSet Context!11046))

(assert (=> b!6198985 (= e!3774982 call!518710)))

(declare-fun b!6198986 () Bool)

(assert (=> b!6198986 (= e!3774982 ((as const (Array Context!11046 Bool)) false))))

(declare-fun e!3774983 () (InoxSet Context!11046))

(declare-fun b!6198987 () Bool)

(assert (=> b!6198987 (= e!3774983 ((_ map or) call!518710 (derivationStepZipperUp!1313 (Context!11047 (t!378230 (exprs!6023 (Context!11047 (t!378230 (exprs!6023 (h!71041 zl!343))))))) (h!71042 s!2326))))))

(declare-fun bm!518705 () Bool)

(assert (=> bm!518705 (= call!518710 (derivationStepZipperDown!1387 (h!71040 (exprs!6023 (Context!11047 (t!378230 (exprs!6023 (h!71041 zl!343)))))) (Context!11047 (t!378230 (exprs!6023 (Context!11047 (t!378230 (exprs!6023 (h!71041 zl!343))))))) (h!71042 s!2326)))))

(declare-fun d!1943271 () Bool)

(declare-fun c!1118980 () Bool)

(declare-fun e!3774981 () Bool)

(assert (=> d!1943271 (= c!1118980 e!3774981)))

(declare-fun res!2564148 () Bool)

(assert (=> d!1943271 (=> (not res!2564148) (not e!3774981))))

(assert (=> d!1943271 (= res!2564148 ((_ is Cons!64592) (exprs!6023 (Context!11047 (t!378230 (exprs!6023 (h!71041 zl!343)))))))))

(assert (=> d!1943271 (= (derivationStepZipperUp!1313 (Context!11047 (t!378230 (exprs!6023 (h!71041 zl!343)))) (h!71042 s!2326)) e!3774983)))

(declare-fun b!6198988 () Bool)

(assert (=> b!6198988 (= e!3774983 e!3774982)))

(declare-fun c!1118981 () Bool)

(assert (=> b!6198988 (= c!1118981 ((_ is Cons!64592) (exprs!6023 (Context!11047 (t!378230 (exprs!6023 (h!71041 zl!343)))))))))

(declare-fun b!6198989 () Bool)

(assert (=> b!6198989 (= e!3774981 (nullable!6132 (h!71040 (exprs!6023 (Context!11047 (t!378230 (exprs!6023 (h!71041 zl!343))))))))))

(assert (= (and d!1943271 res!2564148) b!6198989))

(assert (= (and d!1943271 c!1118980) b!6198987))

(assert (= (and d!1943271 (not c!1118980)) b!6198988))

(assert (= (and b!6198988 c!1118981) b!6198985))

(assert (= (and b!6198988 (not c!1118981)) b!6198986))

(assert (= (or b!6198987 b!6198985) bm!518705))

(declare-fun m!7032076 () Bool)

(assert (=> b!6198987 m!7032076))

(declare-fun m!7032078 () Bool)

(assert (=> bm!518705 m!7032078))

(declare-fun m!7032080 () Bool)

(assert (=> b!6198989 m!7032080))

(assert (=> b!6198311 d!1943271))

(declare-fun d!1943273 () Bool)

(assert (=> d!1943273 (= (isEmpty!36587 (findConcatSeparation!2444 (regOne!32790 r!7292) (regTwo!32790 r!7292) Nil!64594 s!2326 s!2326)) (not ((_ is Some!16029) (findConcatSeparation!2444 (regOne!32790 r!7292) (regTwo!32790 r!7292) Nil!64594 s!2326 s!2326))))))

(assert (=> d!1943233 d!1943273))

(declare-fun b!6198995 () Bool)

(declare-fun e!3774996 () (InoxSet Context!11046))

(declare-fun call!518713 () (InoxSet Context!11046))

(assert (=> b!6198995 (= e!3774996 call!518713)))

(declare-fun bm!518706 () Bool)

(declare-fun call!518714 () (InoxSet Context!11046))

(assert (=> bm!518706 (= call!518713 call!518714)))

(declare-fun b!6198998 () Bool)

(declare-fun c!1118989 () Bool)

(assert (=> b!6198998 (= c!1118989 ((_ is Star!16139) (h!71040 (exprs!6023 lt!2342664))))))

(declare-fun e!3774989 () (InoxSet Context!11046))

(assert (=> b!6198998 (= e!3774989 e!3774996)))

(declare-fun call!518715 () (InoxSet Context!11046))

(declare-fun bm!518708 () Bool)

(declare-fun c!1118988 () Bool)

(declare-fun call!518716 () List!64716)

(assert (=> bm!518708 (= call!518715 (derivationStepZipperDown!1387 (ite c!1118988 (regTwo!32791 (h!71040 (exprs!6023 lt!2342664))) (regOne!32790 (h!71040 (exprs!6023 lt!2342664)))) (ite c!1118988 (Context!11047 (t!378230 (exprs!6023 lt!2342664))) (Context!11047 call!518716)) (h!71042 s!2326)))))

(declare-fun call!518712 () (InoxSet Context!11046))

(declare-fun bm!518709 () Bool)

(declare-fun c!1118987 () Bool)

(declare-fun call!518717 () List!64716)

(declare-fun c!1118986 () Bool)

(assert (=> bm!518709 (= call!518712 (derivationStepZipperDown!1387 (ite c!1118988 (regOne!32791 (h!71040 (exprs!6023 lt!2342664))) (ite c!1118986 (regTwo!32790 (h!71040 (exprs!6023 lt!2342664))) (ite c!1118987 (regOne!32790 (h!71040 (exprs!6023 lt!2342664))) (reg!16468 (h!71040 (exprs!6023 lt!2342664)))))) (ite (or c!1118988 c!1118986) (Context!11047 (t!378230 (exprs!6023 lt!2342664))) (Context!11047 call!518717)) (h!71042 s!2326)))))

(declare-fun bm!518710 () Bool)

(assert (=> bm!518710 (= call!518714 call!518712)))

(declare-fun b!6199007 () Bool)

(declare-fun e!3774988 () Bool)

(assert (=> b!6199007 (= c!1118986 e!3774988)))

(declare-fun res!2564157 () Bool)

(assert (=> b!6199007 (=> (not res!2564157) (not e!3774988))))

(assert (=> b!6199007 (= res!2564157 ((_ is Concat!24984) (h!71040 (exprs!6023 lt!2342664))))))

(declare-fun e!3774992 () (InoxSet Context!11046))

(declare-fun e!3774986 () (InoxSet Context!11046))

(assert (=> b!6199007 (= e!3774992 e!3774986)))

(declare-fun b!6199008 () Bool)

(declare-fun e!3774991 () (InoxSet Context!11046))

(assert (=> b!6199008 (= e!3774991 e!3774992)))

(assert (=> b!6199008 (= c!1118988 ((_ is Union!16139) (h!71040 (exprs!6023 lt!2342664))))))

(declare-fun b!6199009 () Bool)

(assert (=> b!6199009 (= e!3774991 (store ((as const (Array Context!11046 Bool)) false) (Context!11047 (t!378230 (exprs!6023 lt!2342664))) true))))

(declare-fun b!6199010 () Bool)

(assert (=> b!6199010 (= e!3774988 (nullable!6132 (regOne!32790 (h!71040 (exprs!6023 lt!2342664)))))))

(declare-fun b!6199011 () Bool)

(assert (=> b!6199011 (= e!3774986 ((_ map or) call!518715 call!518714))))

(declare-fun b!6199012 () Bool)

(assert (=> b!6199012 (= e!3774989 call!518713)))

(declare-fun b!6199013 () Bool)

(assert (=> b!6199013 (= e!3774986 e!3774989)))

(assert (=> b!6199013 (= c!1118987 ((_ is Concat!24984) (h!71040 (exprs!6023 lt!2342664))))))

(declare-fun bm!518711 () Bool)

(assert (=> bm!518711 (= call!518716 ($colon$colon!2007 (exprs!6023 (Context!11047 (t!378230 (exprs!6023 lt!2342664)))) (ite (or c!1118986 c!1118987) (regTwo!32790 (h!71040 (exprs!6023 lt!2342664))) (h!71040 (exprs!6023 lt!2342664)))))))

(declare-fun b!6199014 () Bool)

(assert (=> b!6199014 (= e!3774996 ((as const (Array Context!11046 Bool)) false))))

(declare-fun bm!518712 () Bool)

(assert (=> bm!518712 (= call!518717 call!518716)))

(declare-fun d!1943279 () Bool)

(declare-fun c!1118984 () Bool)

(assert (=> d!1943279 (= c!1118984 (and ((_ is ElementMatch!16139) (h!71040 (exprs!6023 lt!2342664))) (= (c!1118778 (h!71040 (exprs!6023 lt!2342664))) (h!71042 s!2326))))))

(assert (=> d!1943279 (= (derivationStepZipperDown!1387 (h!71040 (exprs!6023 lt!2342664)) (Context!11047 (t!378230 (exprs!6023 lt!2342664))) (h!71042 s!2326)) e!3774991)))

(declare-fun b!6199003 () Bool)

(assert (=> b!6199003 (= e!3774992 ((_ map or) call!518712 call!518715))))

(assert (= (and d!1943279 c!1118984) b!6199009))

(assert (= (and d!1943279 (not c!1118984)) b!6199008))

(assert (= (and b!6199008 c!1118988) b!6199003))

(assert (= (and b!6199008 (not c!1118988)) b!6199007))

(assert (= (and b!6199007 res!2564157) b!6199010))

(assert (= (and b!6199007 c!1118986) b!6199011))

(assert (= (and b!6199007 (not c!1118986)) b!6199013))

(assert (= (and b!6199013 c!1118987) b!6199012))

(assert (= (and b!6199013 (not c!1118987)) b!6198998))

(assert (= (and b!6198998 c!1118989) b!6198995))

(assert (= (and b!6198998 (not c!1118989)) b!6199014))

(assert (= (or b!6199012 b!6198995) bm!518712))

(assert (= (or b!6199012 b!6198995) bm!518706))

(assert (= (or b!6199011 bm!518712) bm!518711))

(assert (= (or b!6199011 bm!518706) bm!518710))

(assert (= (or b!6199003 b!6199011) bm!518708))

(assert (= (or b!6199003 bm!518710) bm!518709))

(declare-fun m!7032086 () Bool)

(assert (=> bm!518711 m!7032086))

(declare-fun m!7032088 () Bool)

(assert (=> b!6199010 m!7032088))

(declare-fun m!7032094 () Bool)

(assert (=> bm!518709 m!7032094))

(declare-fun m!7032098 () Bool)

(assert (=> bm!518708 m!7032098))

(declare-fun m!7032100 () Bool)

(assert (=> b!6199009 m!7032100))

(assert (=> bm!518612 d!1943279))

(declare-fun bm!518713 () Bool)

(declare-fun call!518720 () Bool)

(declare-fun call!518718 () Bool)

(assert (=> bm!518713 (= call!518720 call!518718)))

(declare-fun bm!518714 () Bool)

(declare-fun call!518719 () Bool)

(declare-fun c!1118990 () Bool)

(assert (=> bm!518714 (= call!518719 (validRegex!7875 (ite c!1118990 (regTwo!32791 lt!2342700) (regTwo!32790 lt!2342700))))))

(declare-fun b!6199015 () Bool)

(declare-fun e!3775000 () Bool)

(declare-fun e!3774997 () Bool)

(assert (=> b!6199015 (= e!3775000 e!3774997)))

(declare-fun c!1118991 () Bool)

(assert (=> b!6199015 (= c!1118991 ((_ is Star!16139) lt!2342700))))

(declare-fun bm!518715 () Bool)

(assert (=> bm!518715 (= call!518718 (validRegex!7875 (ite c!1118991 (reg!16468 lt!2342700) (ite c!1118990 (regOne!32791 lt!2342700) (regOne!32790 lt!2342700)))))))

(declare-fun b!6199016 () Bool)

(declare-fun e!3774999 () Bool)

(assert (=> b!6199016 (= e!3774999 call!518718)))

(declare-fun b!6199018 () Bool)

(declare-fun e!3775002 () Bool)

(declare-fun e!3775001 () Bool)

(assert (=> b!6199018 (= e!3775002 e!3775001)))

(declare-fun res!2564162 () Bool)

(assert (=> b!6199018 (=> (not res!2564162) (not e!3775001))))

(assert (=> b!6199018 (= res!2564162 call!518720)))

(declare-fun b!6199019 () Bool)

(declare-fun res!2564161 () Bool)

(declare-fun e!3775003 () Bool)

(assert (=> b!6199019 (=> (not res!2564161) (not e!3775003))))

(assert (=> b!6199019 (= res!2564161 call!518720)))

(declare-fun e!3774998 () Bool)

(assert (=> b!6199019 (= e!3774998 e!3775003)))

(declare-fun b!6199020 () Bool)

(assert (=> b!6199020 (= e!3775003 call!518719)))

(declare-fun b!6199021 () Bool)

(assert (=> b!6199021 (= e!3774997 e!3774999)))

(declare-fun res!2564159 () Bool)

(assert (=> b!6199021 (= res!2564159 (not (nullable!6132 (reg!16468 lt!2342700))))))

(assert (=> b!6199021 (=> (not res!2564159) (not e!3774999))))

(declare-fun b!6199017 () Bool)

(declare-fun res!2564158 () Bool)

(assert (=> b!6199017 (=> res!2564158 e!3775002)))

(assert (=> b!6199017 (= res!2564158 (not ((_ is Concat!24984) lt!2342700)))))

(assert (=> b!6199017 (= e!3774998 e!3775002)))

(declare-fun d!1943281 () Bool)

(declare-fun res!2564160 () Bool)

(assert (=> d!1943281 (=> res!2564160 e!3775000)))

(assert (=> d!1943281 (= res!2564160 ((_ is ElementMatch!16139) lt!2342700))))

(assert (=> d!1943281 (= (validRegex!7875 lt!2342700) e!3775000)))

(declare-fun b!6199022 () Bool)

(assert (=> b!6199022 (= e!3775001 call!518719)))

(declare-fun b!6199023 () Bool)

(assert (=> b!6199023 (= e!3774997 e!3774998)))

(assert (=> b!6199023 (= c!1118990 ((_ is Union!16139) lt!2342700))))

(assert (= (and d!1943281 (not res!2564160)) b!6199015))

(assert (= (and b!6199015 c!1118991) b!6199021))

(assert (= (and b!6199015 (not c!1118991)) b!6199023))

(assert (= (and b!6199021 res!2564159) b!6199016))

(assert (= (and b!6199023 c!1118990) b!6199019))

(assert (= (and b!6199023 (not c!1118990)) b!6199017))

(assert (= (and b!6199019 res!2564161) b!6199020))

(assert (= (and b!6199017 (not res!2564158)) b!6199018))

(assert (= (and b!6199018 res!2564162) b!6199022))

(assert (= (or b!6199020 b!6199022) bm!518714))

(assert (= (or b!6199019 b!6199018) bm!518713))

(assert (= (or b!6199016 bm!518713) bm!518715))

(declare-fun m!7032106 () Bool)

(assert (=> bm!518714 m!7032106))

(declare-fun m!7032108 () Bool)

(assert (=> bm!518715 m!7032108))

(declare-fun m!7032110 () Bool)

(assert (=> b!6199021 m!7032110))

(assert (=> d!1943173 d!1943281))

(declare-fun d!1943287 () Bool)

(declare-fun res!2564163 () Bool)

(declare-fun e!3775004 () Bool)

(assert (=> d!1943287 (=> res!2564163 e!3775004)))

(assert (=> d!1943287 (= res!2564163 ((_ is Nil!64592) (exprs!6023 (h!71041 zl!343))))))

(assert (=> d!1943287 (= (forall!15253 (exprs!6023 (h!71041 zl!343)) lambda!338655) e!3775004)))

(declare-fun b!6199024 () Bool)

(declare-fun e!3775005 () Bool)

(assert (=> b!6199024 (= e!3775004 e!3775005)))

(declare-fun res!2564164 () Bool)

(assert (=> b!6199024 (=> (not res!2564164) (not e!3775005))))

(assert (=> b!6199024 (= res!2564164 (dynLambda!25472 lambda!338655 (h!71040 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun b!6199025 () Bool)

(assert (=> b!6199025 (= e!3775005 (forall!15253 (t!378230 (exprs!6023 (h!71041 zl!343))) lambda!338655))))

(assert (= (and d!1943287 (not res!2564163)) b!6199024))

(assert (= (and b!6199024 res!2564164) b!6199025))

(declare-fun b_lambda!235775 () Bool)

(assert (=> (not b_lambda!235775) (not b!6199024)))

(declare-fun m!7032112 () Bool)

(assert (=> b!6199024 m!7032112))

(declare-fun m!7032114 () Bool)

(assert (=> b!6199025 m!7032114))

(assert (=> d!1943173 d!1943287))

(declare-fun b!6199026 () Bool)

(declare-fun e!3775007 () (InoxSet Context!11046))

(declare-fun call!518721 () (InoxSet Context!11046))

(assert (=> b!6199026 (= e!3775007 call!518721)))

(declare-fun b!6199027 () Bool)

(assert (=> b!6199027 (= e!3775007 ((as const (Array Context!11046 Bool)) false))))

(declare-fun b!6199028 () Bool)

(declare-fun e!3775008 () (InoxSet Context!11046))

(assert (=> b!6199028 (= e!3775008 ((_ map or) call!518721 (derivationStepZipperUp!1313 (Context!11047 (t!378230 (exprs!6023 (Context!11047 (t!378230 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343))))))))))) (h!71042 s!2326))))))

(declare-fun bm!518716 () Bool)

(assert (=> bm!518716 (= call!518721 (derivationStepZipperDown!1387 (h!71040 (exprs!6023 (Context!11047 (t!378230 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))))) (Context!11047 (t!378230 (exprs!6023 (Context!11047 (t!378230 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343))))))))))) (h!71042 s!2326)))))

(declare-fun d!1943289 () Bool)

(declare-fun c!1118992 () Bool)

(declare-fun e!3775006 () Bool)

(assert (=> d!1943289 (= c!1118992 e!3775006)))

(declare-fun res!2564165 () Bool)

(assert (=> d!1943289 (=> (not res!2564165) (not e!3775006))))

(assert (=> d!1943289 (= res!2564165 ((_ is Cons!64592) (exprs!6023 (Context!11047 (t!378230 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))))))))

(assert (=> d!1943289 (= (derivationStepZipperUp!1313 (Context!11047 (t!378230 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))) (h!71042 s!2326)) e!3775008)))

(declare-fun b!6199029 () Bool)

(assert (=> b!6199029 (= e!3775008 e!3775007)))

(declare-fun c!1118993 () Bool)

(assert (=> b!6199029 (= c!1118993 ((_ is Cons!64592) (exprs!6023 (Context!11047 (t!378230 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))))))))

(declare-fun b!6199030 () Bool)

(assert (=> b!6199030 (= e!3775006 (nullable!6132 (h!71040 (exprs!6023 (Context!11047 (t!378230 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343))))))))))))))

(assert (= (and d!1943289 res!2564165) b!6199030))

(assert (= (and d!1943289 c!1118992) b!6199028))

(assert (= (and d!1943289 (not c!1118992)) b!6199029))

(assert (= (and b!6199029 c!1118993) b!6199026))

(assert (= (and b!6199029 (not c!1118993)) b!6199027))

(assert (= (or b!6199028 b!6199026) bm!518716))

(declare-fun m!7032116 () Bool)

(assert (=> b!6199028 m!7032116))

(declare-fun m!7032118 () Bool)

(assert (=> bm!518716 m!7032118))

(declare-fun m!7032120 () Bool)

(assert (=> b!6199030 m!7032120))

(assert (=> b!6198294 d!1943289))

(assert (=> b!6198617 d!1943183))

(declare-fun d!1943291 () Bool)

(assert (=> d!1943291 (= (isEmptyExpr!1549 lt!2342700) ((_ is EmptyExpr!16139) lt!2342700))))

(assert (=> b!6198623 d!1943291))

(assert (=> b!6198567 d!1943251))

(declare-fun bs!1538131 () Bool)

(declare-fun d!1943293 () Bool)

(assert (= bs!1538131 (and d!1943293 d!1943165)))

(declare-fun lambda!338693 () Int)

(assert (=> bs!1538131 (= lambda!338693 lambda!338649)))

(declare-fun bs!1538132 () Bool)

(assert (= bs!1538132 (and d!1943293 d!1943173)))

(assert (=> bs!1538132 (= lambda!338693 lambda!338655)))

(declare-fun bs!1538133 () Bool)

(assert (= bs!1538133 (and d!1943293 d!1943181)))

(assert (=> bs!1538133 (= lambda!338693 lambda!338656)))

(declare-fun bs!1538134 () Bool)

(assert (= bs!1538134 (and d!1943293 d!1943187)))

(assert (=> bs!1538134 (= lambda!338693 lambda!338662)))

(declare-fun bs!1538135 () Bool)

(assert (= bs!1538135 (and d!1943293 d!1943185)))

(assert (=> bs!1538135 (= lambda!338693 lambda!338657)))

(declare-fun bs!1538136 () Bool)

(assert (= bs!1538136 (and d!1943293 d!1943195)))

(assert (=> bs!1538136 (= lambda!338693 lambda!338666)))

(declare-fun b!6199037 () Bool)

(declare-fun e!3775016 () Regex!16139)

(assert (=> b!6199037 (= e!3775016 EmptyLang!16139)))

(declare-fun b!6199038 () Bool)

(declare-fun e!3775018 () Regex!16139)

(assert (=> b!6199038 (= e!3775018 e!3775016)))

(declare-fun c!1118994 () Bool)

(assert (=> b!6199038 (= c!1118994 ((_ is Cons!64592) (t!378230 (unfocusZipperList!1560 zl!343))))))

(declare-fun b!6199039 () Bool)

(assert (=> b!6199039 (= e!3775018 (h!71040 (t!378230 (unfocusZipperList!1560 zl!343))))))

(declare-fun e!3775020 () Bool)

(assert (=> d!1943293 e!3775020))

(declare-fun res!2564172 () Bool)

(assert (=> d!1943293 (=> (not res!2564172) (not e!3775020))))

(declare-fun lt!2342760 () Regex!16139)

(assert (=> d!1943293 (= res!2564172 (validRegex!7875 lt!2342760))))

(assert (=> d!1943293 (= lt!2342760 e!3775018)))

(declare-fun c!1118995 () Bool)

(declare-fun e!3775019 () Bool)

(assert (=> d!1943293 (= c!1118995 e!3775019)))

(declare-fun res!2564173 () Bool)

(assert (=> d!1943293 (=> (not res!2564173) (not e!3775019))))

(assert (=> d!1943293 (= res!2564173 ((_ is Cons!64592) (t!378230 (unfocusZipperList!1560 zl!343))))))

(assert (=> d!1943293 (forall!15253 (t!378230 (unfocusZipperList!1560 zl!343)) lambda!338693)))

(assert (=> d!1943293 (= (generalisedUnion!1983 (t!378230 (unfocusZipperList!1560 zl!343))) lt!2342760)))

(declare-fun b!6199040 () Bool)

(declare-fun e!3775015 () Bool)

(assert (=> b!6199040 (= e!3775015 (= lt!2342760 (head!12787 (t!378230 (unfocusZipperList!1560 zl!343)))))))

(declare-fun b!6199041 () Bool)

(declare-fun e!3775017 () Bool)

(assert (=> b!6199041 (= e!3775017 e!3775015)))

(declare-fun c!1118997 () Bool)

(assert (=> b!6199041 (= c!1118997 (isEmpty!36582 (tail!11872 (t!378230 (unfocusZipperList!1560 zl!343)))))))

(declare-fun b!6199042 () Bool)

(assert (=> b!6199042 (= e!3775017 (isEmptyLang!1557 lt!2342760))))

(declare-fun b!6199043 () Bool)

(assert (=> b!6199043 (= e!3775019 (isEmpty!36582 (t!378230 (t!378230 (unfocusZipperList!1560 zl!343)))))))

(declare-fun b!6199044 () Bool)

(assert (=> b!6199044 (= e!3775015 (isUnion!987 lt!2342760))))

(declare-fun b!6199045 () Bool)

(assert (=> b!6199045 (= e!3775020 e!3775017)))

(declare-fun c!1118996 () Bool)

(assert (=> b!6199045 (= c!1118996 (isEmpty!36582 (t!378230 (unfocusZipperList!1560 zl!343))))))

(declare-fun b!6199046 () Bool)

(assert (=> b!6199046 (= e!3775016 (Union!16139 (h!71040 (t!378230 (unfocusZipperList!1560 zl!343))) (generalisedUnion!1983 (t!378230 (t!378230 (unfocusZipperList!1560 zl!343))))))))

(assert (= (and d!1943293 res!2564173) b!6199043))

(assert (= (and d!1943293 c!1118995) b!6199039))

(assert (= (and d!1943293 (not c!1118995)) b!6199038))

(assert (= (and b!6199038 c!1118994) b!6199046))

(assert (= (and b!6199038 (not c!1118994)) b!6199037))

(assert (= (and d!1943293 res!2564172) b!6199045))

(assert (= (and b!6199045 c!1118996) b!6199042))

(assert (= (and b!6199045 (not c!1118996)) b!6199041))

(assert (= (and b!6199041 c!1118997) b!6199040))

(assert (= (and b!6199041 (not c!1118997)) b!6199044))

(declare-fun m!7032126 () Bool)

(assert (=> b!6199046 m!7032126))

(assert (=> b!6199045 m!7031890))

(declare-fun m!7032128 () Bool)

(assert (=> b!6199042 m!7032128))

(declare-fun m!7032130 () Bool)

(assert (=> b!6199040 m!7032130))

(declare-fun m!7032132 () Bool)

(assert (=> b!6199043 m!7032132))

(declare-fun m!7032134 () Bool)

(assert (=> d!1943293 m!7032134))

(declare-fun m!7032136 () Bool)

(assert (=> d!1943293 m!7032136))

(declare-fun m!7032138 () Bool)

(assert (=> b!6199044 m!7032138))

(declare-fun m!7032140 () Bool)

(assert (=> b!6199041 m!7032140))

(assert (=> b!6199041 m!7032140))

(declare-fun m!7032142 () Bool)

(assert (=> b!6199041 m!7032142))

(assert (=> b!6198714 d!1943293))

(assert (=> d!1943141 d!1943269))

(assert (=> d!1943163 d!1943159))

(assert (=> d!1943163 d!1943149))

(declare-fun d!1943297 () Bool)

(assert (=> d!1943297 (= (matchR!8322 r!7292 s!2326) (matchRSpec!3240 r!7292 s!2326))))

(assert (=> d!1943297 true))

(declare-fun _$88!4784 () Unit!157887)

(assert (=> d!1943297 (= (choose!46063 r!7292 s!2326) _$88!4784)))

(declare-fun bs!1538137 () Bool)

(assert (= bs!1538137 d!1943297))

(assert (=> bs!1538137 m!7031594))

(assert (=> bs!1538137 m!7031592))

(assert (=> d!1943163 d!1943297))

(assert (=> d!1943163 d!1943179))

(declare-fun d!1943299 () Bool)

(assert (=> d!1943299 (= (nullable!6132 (reg!16468 r!7292)) (nullableFct!2087 (reg!16468 r!7292)))))

(declare-fun bs!1538138 () Bool)

(assert (= bs!1538138 d!1943299))

(declare-fun m!7032144 () Bool)

(assert (=> bs!1538138 m!7032144))

(assert (=> b!6198669 d!1943299))

(assert (=> b!6198401 d!1943147))

(declare-fun d!1943301 () Bool)

(assert (=> d!1943301 (= (isEmpty!36582 (exprs!6023 (h!71041 zl!343))) ((_ is Nil!64592) (exprs!6023 (h!71041 zl!343))))))

(assert (=> b!6198621 d!1943301))

(declare-fun d!1943303 () Bool)

(assert (=> d!1943303 true))

(assert (=> d!1943303 true))

(declare-fun res!2564191 () Bool)

(assert (=> d!1943303 (= (choose!46069 lambda!338630) res!2564191)))

(assert (=> d!1943205 d!1943303))

(declare-fun d!1943305 () Bool)

(declare-fun res!2564199 () Bool)

(declare-fun e!3775044 () Bool)

(assert (=> d!1943305 (=> res!2564199 e!3775044)))

(assert (=> d!1943305 (= res!2564199 ((_ is Nil!64593) lt!2342754))))

(assert (=> d!1943305 (= (noDuplicate!1977 lt!2342754) e!3775044)))

(declare-fun b!6199074 () Bool)

(declare-fun e!3775045 () Bool)

(assert (=> b!6199074 (= e!3775044 e!3775045)))

(declare-fun res!2564200 () Bool)

(assert (=> b!6199074 (=> (not res!2564200) (not e!3775045))))

(declare-fun contains!20080 (List!64717 Context!11046) Bool)

(assert (=> b!6199074 (= res!2564200 (not (contains!20080 (t!378231 lt!2342754) (h!71041 lt!2342754))))))

(declare-fun b!6199075 () Bool)

(assert (=> b!6199075 (= e!3775045 (noDuplicate!1977 (t!378231 lt!2342754)))))

(assert (= (and d!1943305 (not res!2564199)) b!6199074))

(assert (= (and b!6199074 res!2564200) b!6199075))

(declare-fun m!7032162 () Bool)

(assert (=> b!6199074 m!7032162))

(declare-fun m!7032164 () Bool)

(assert (=> b!6199075 m!7032164))

(assert (=> d!1943235 d!1943305))

(declare-fun d!1943317 () Bool)

(declare-fun e!3775054 () Bool)

(assert (=> d!1943317 e!3775054))

(declare-fun res!2564205 () Bool)

(assert (=> d!1943317 (=> (not res!2564205) (not e!3775054))))

(declare-fun res!2564206 () List!64717)

(assert (=> d!1943317 (= res!2564205 (noDuplicate!1977 res!2564206))))

(declare-fun e!3775052 () Bool)

(assert (=> d!1943317 e!3775052))

(assert (=> d!1943317 (= (choose!46073 z!1189) res!2564206)))

(declare-fun b!6199085 () Bool)

(declare-fun e!3775053 () Bool)

(declare-fun tp!1728932 () Bool)

(assert (=> b!6199085 (= e!3775053 tp!1728932)))

(declare-fun tp!1728931 () Bool)

(declare-fun b!6199084 () Bool)

(assert (=> b!6199084 (= e!3775052 (and (inv!83594 (h!71041 res!2564206)) e!3775053 tp!1728931))))

(declare-fun b!6199086 () Bool)

(assert (=> b!6199086 (= e!3775054 (= (content!12072 res!2564206) z!1189))))

(assert (= b!6199084 b!6199085))

(assert (= (and d!1943317 ((_ is Cons!64593) res!2564206)) b!6199084))

(assert (= (and d!1943317 res!2564205) b!6199086))

(declare-fun m!7032168 () Bool)

(assert (=> d!1943317 m!7032168))

(declare-fun m!7032170 () Bool)

(assert (=> b!6199084 m!7032170))

(declare-fun m!7032172 () Bool)

(assert (=> b!6199086 m!7032172))

(assert (=> d!1943235 d!1943317))

(declare-fun d!1943323 () Bool)

(assert (=> d!1943323 (= (isUnion!987 lt!2342714) ((_ is Union!16139) lt!2342714))))

(assert (=> b!6198712 d!1943323))

(assert (=> b!6198572 d!1943251))

(declare-fun b!6199096 () Bool)

(declare-fun res!2564212 () Bool)

(declare-fun e!3775068 () Bool)

(assert (=> b!6199096 (=> res!2564212 e!3775068)))

(assert (=> b!6199096 (= res!2564212 (not ((_ is ElementMatch!16139) (regOne!32790 r!7292))))))

(declare-fun e!3775065 () Bool)

(assert (=> b!6199096 (= e!3775065 e!3775068)))

(declare-fun b!6199097 () Bool)

(declare-fun e!3775063 () Bool)

(assert (=> b!6199097 (= e!3775063 (matchR!8322 (derivativeStep!4852 (regOne!32790 r!7292) (head!12786 (_1!36421 (get!22302 lt!2342728)))) (tail!11871 (_1!36421 (get!22302 lt!2342728)))))))

(declare-fun b!6199098 () Bool)

(declare-fun res!2564215 () Bool)

(declare-fun e!3775066 () Bool)

(assert (=> b!6199098 (=> (not res!2564215) (not e!3775066))))

(assert (=> b!6199098 (= res!2564215 (isEmpty!36585 (tail!11871 (_1!36421 (get!22302 lt!2342728)))))))

(declare-fun b!6199099 () Bool)

(declare-fun e!3775067 () Bool)

(assert (=> b!6199099 (= e!3775068 e!3775067)))

(declare-fun res!2564213 () Bool)

(assert (=> b!6199099 (=> (not res!2564213) (not e!3775067))))

(declare-fun lt!2342761 () Bool)

(assert (=> b!6199099 (= res!2564213 (not lt!2342761))))

(declare-fun b!6199100 () Bool)

(declare-fun e!3775062 () Bool)

(assert (=> b!6199100 (= e!3775062 e!3775065)))

(declare-fun c!1119008 () Bool)

(assert (=> b!6199100 (= c!1119008 ((_ is EmptyLang!16139) (regOne!32790 r!7292)))))

(declare-fun b!6199101 () Bool)

(assert (=> b!6199101 (= e!3775066 (= (head!12786 (_1!36421 (get!22302 lt!2342728))) (c!1118778 (regOne!32790 r!7292))))))

(declare-fun b!6199102 () Bool)

(declare-fun call!518731 () Bool)

(assert (=> b!6199102 (= e!3775062 (= lt!2342761 call!518731))))

(declare-fun b!6199103 () Bool)

(assert (=> b!6199103 (= e!3775065 (not lt!2342761))))

(declare-fun bm!518726 () Bool)

(assert (=> bm!518726 (= call!518731 (isEmpty!36585 (_1!36421 (get!22302 lt!2342728))))))

(declare-fun b!6199104 () Bool)

(declare-fun res!2564218 () Bool)

(declare-fun e!3775064 () Bool)

(assert (=> b!6199104 (=> res!2564218 e!3775064)))

(assert (=> b!6199104 (= res!2564218 (not (isEmpty!36585 (tail!11871 (_1!36421 (get!22302 lt!2342728))))))))

(declare-fun b!6199105 () Bool)

(assert (=> b!6199105 (= e!3775063 (nullable!6132 (regOne!32790 r!7292)))))

(declare-fun b!6199106 () Bool)

(assert (=> b!6199106 (= e!3775064 (not (= (head!12786 (_1!36421 (get!22302 lt!2342728))) (c!1118778 (regOne!32790 r!7292)))))))

(declare-fun b!6199107 () Bool)

(declare-fun res!2564214 () Bool)

(assert (=> b!6199107 (=> (not res!2564214) (not e!3775066))))

(assert (=> b!6199107 (= res!2564214 (not call!518731))))

(declare-fun b!6199108 () Bool)

(declare-fun res!2564217 () Bool)

(assert (=> b!6199108 (=> res!2564217 e!3775068)))

(assert (=> b!6199108 (= res!2564217 e!3775066)))

(declare-fun res!2564219 () Bool)

(assert (=> b!6199108 (=> (not res!2564219) (not e!3775066))))

(assert (=> b!6199108 (= res!2564219 lt!2342761)))

(declare-fun b!6199109 () Bool)

(assert (=> b!6199109 (= e!3775067 e!3775064)))

(declare-fun res!2564216 () Bool)

(assert (=> b!6199109 (=> res!2564216 e!3775064)))

(assert (=> b!6199109 (= res!2564216 call!518731)))

(declare-fun d!1943327 () Bool)

(assert (=> d!1943327 e!3775062))

(declare-fun c!1119006 () Bool)

(assert (=> d!1943327 (= c!1119006 ((_ is EmptyExpr!16139) (regOne!32790 r!7292)))))

(assert (=> d!1943327 (= lt!2342761 e!3775063)))

(declare-fun c!1119007 () Bool)

(assert (=> d!1943327 (= c!1119007 (isEmpty!36585 (_1!36421 (get!22302 lt!2342728))))))

(assert (=> d!1943327 (validRegex!7875 (regOne!32790 r!7292))))

(assert (=> d!1943327 (= (matchR!8322 (regOne!32790 r!7292) (_1!36421 (get!22302 lt!2342728))) lt!2342761)))

(assert (= (and d!1943327 c!1119007) b!6199105))

(assert (= (and d!1943327 (not c!1119007)) b!6199097))

(assert (= (and d!1943327 c!1119006) b!6199102))

(assert (= (and d!1943327 (not c!1119006)) b!6199100))

(assert (= (and b!6199100 c!1119008) b!6199103))

(assert (= (and b!6199100 (not c!1119008)) b!6199096))

(assert (= (and b!6199096 (not res!2564212)) b!6199108))

(assert (= (and b!6199108 res!2564219) b!6199107))

(assert (= (and b!6199107 res!2564214) b!6199098))

(assert (= (and b!6199098 res!2564215) b!6199101))

(assert (= (and b!6199108 (not res!2564217)) b!6199099))

(assert (= (and b!6199099 res!2564213) b!6199109))

(assert (= (and b!6199109 (not res!2564216)) b!6199104))

(assert (= (and b!6199104 (not res!2564218)) b!6199106))

(assert (= (or b!6199102 b!6199107 b!6199109) bm!518726))

(declare-fun m!7032186 () Bool)

(assert (=> b!6199101 m!7032186))

(assert (=> b!6199106 m!7032186))

(declare-fun m!7032188 () Bool)

(assert (=> bm!518726 m!7032188))

(assert (=> b!6199105 m!7032056))

(declare-fun m!7032190 () Bool)

(assert (=> b!6199104 m!7032190))

(assert (=> b!6199104 m!7032190))

(declare-fun m!7032192 () Bool)

(assert (=> b!6199104 m!7032192))

(assert (=> d!1943327 m!7032188))

(assert (=> d!1943327 m!7031930))

(assert (=> b!6199098 m!7032190))

(assert (=> b!6199098 m!7032190))

(assert (=> b!6199098 m!7032192))

(assert (=> b!6199097 m!7032186))

(assert (=> b!6199097 m!7032186))

(declare-fun m!7032194 () Bool)

(assert (=> b!6199097 m!7032194))

(assert (=> b!6199097 m!7032190))

(assert (=> b!6199097 m!7032194))

(assert (=> b!6199097 m!7032190))

(declare-fun m!7032196 () Bool)

(assert (=> b!6199097 m!7032196))

(assert (=> b!6198749 d!1943327))

(declare-fun d!1943337 () Bool)

(assert (=> d!1943337 (= (get!22302 lt!2342728) (v!52172 lt!2342728))))

(assert (=> b!6198749 d!1943337))

(declare-fun d!1943343 () Bool)

(assert (=> d!1943343 true))

(assert (=> d!1943343 true))

(declare-fun res!2564223 () Bool)

(assert (=> d!1943343 (= (choose!46069 lambda!338629) res!2564223)))

(assert (=> d!1943207 d!1943343))

(assert (=> bs!1538127 d!1943131))

(declare-fun d!1943345 () Bool)

(declare-fun res!2564224 () Bool)

(declare-fun e!3775071 () Bool)

(assert (=> d!1943345 (=> res!2564224 e!3775071)))

(assert (=> d!1943345 (= res!2564224 ((_ is Nil!64592) (exprs!6023 (Context!11047 (Cons!64592 (regTwo!32790 (regOne!32790 r!7292)) (t!378230 (exprs!6023 (h!71041 zl!343))))))))))

(assert (=> d!1943345 (= (forall!15253 (exprs!6023 (Context!11047 (Cons!64592 (regTwo!32790 (regOne!32790 r!7292)) (t!378230 (exprs!6023 (h!71041 zl!343)))))) lambda!338656) e!3775071)))

(declare-fun b!6199112 () Bool)

(declare-fun e!3775072 () Bool)

(assert (=> b!6199112 (= e!3775071 e!3775072)))

(declare-fun res!2564225 () Bool)

(assert (=> b!6199112 (=> (not res!2564225) (not e!3775072))))

(assert (=> b!6199112 (= res!2564225 (dynLambda!25472 lambda!338656 (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (regTwo!32790 (regOne!32790 r!7292)) (t!378230 (exprs!6023 (h!71041 zl!343)))))))))))

(declare-fun b!6199113 () Bool)

(assert (=> b!6199113 (= e!3775072 (forall!15253 (t!378230 (exprs!6023 (Context!11047 (Cons!64592 (regTwo!32790 (regOne!32790 r!7292)) (t!378230 (exprs!6023 (h!71041 zl!343))))))) lambda!338656))))

(assert (= (and d!1943345 (not res!2564224)) b!6199112))

(assert (= (and b!6199112 res!2564225) b!6199113))

(declare-fun b_lambda!235781 () Bool)

(assert (=> (not b_lambda!235781) (not b!6199112)))

(declare-fun m!7032200 () Bool)

(assert (=> b!6199112 m!7032200))

(declare-fun m!7032202 () Bool)

(assert (=> b!6199113 m!7032202))

(assert (=> d!1943181 d!1943345))

(declare-fun b!6199114 () Bool)

(declare-fun res!2564226 () Bool)

(declare-fun e!3775079 () Bool)

(assert (=> b!6199114 (=> res!2564226 e!3775079)))

(assert (=> b!6199114 (= res!2564226 (not ((_ is ElementMatch!16139) (regTwo!32790 r!7292))))))

(declare-fun e!3775076 () Bool)

(assert (=> b!6199114 (= e!3775076 e!3775079)))

(declare-fun b!6199115 () Bool)

(declare-fun e!3775074 () Bool)

(assert (=> b!6199115 (= e!3775074 (matchR!8322 (derivativeStep!4852 (regTwo!32790 r!7292) (head!12786 s!2326)) (tail!11871 s!2326)))))

(declare-fun b!6199116 () Bool)

(declare-fun res!2564229 () Bool)

(declare-fun e!3775077 () Bool)

(assert (=> b!6199116 (=> (not res!2564229) (not e!3775077))))

(assert (=> b!6199116 (= res!2564229 (isEmpty!36585 (tail!11871 s!2326)))))

(declare-fun b!6199117 () Bool)

(declare-fun e!3775078 () Bool)

(assert (=> b!6199117 (= e!3775079 e!3775078)))

(declare-fun res!2564227 () Bool)

(assert (=> b!6199117 (=> (not res!2564227) (not e!3775078))))

(declare-fun lt!2342762 () Bool)

(assert (=> b!6199117 (= res!2564227 (not lt!2342762))))

(declare-fun b!6199118 () Bool)

(declare-fun e!3775073 () Bool)

(assert (=> b!6199118 (= e!3775073 e!3775076)))

(declare-fun c!1119011 () Bool)

(assert (=> b!6199118 (= c!1119011 ((_ is EmptyLang!16139) (regTwo!32790 r!7292)))))

(declare-fun b!6199119 () Bool)

(assert (=> b!6199119 (= e!3775077 (= (head!12786 s!2326) (c!1118778 (regTwo!32790 r!7292))))))

(declare-fun b!6199120 () Bool)

(declare-fun call!518732 () Bool)

(assert (=> b!6199120 (= e!3775073 (= lt!2342762 call!518732))))

(declare-fun b!6199121 () Bool)

(assert (=> b!6199121 (= e!3775076 (not lt!2342762))))

(declare-fun bm!518727 () Bool)

(assert (=> bm!518727 (= call!518732 (isEmpty!36585 s!2326))))

(declare-fun b!6199122 () Bool)

(declare-fun res!2564232 () Bool)

(declare-fun e!3775075 () Bool)

(assert (=> b!6199122 (=> res!2564232 e!3775075)))

(assert (=> b!6199122 (= res!2564232 (not (isEmpty!36585 (tail!11871 s!2326))))))

(declare-fun b!6199123 () Bool)

(assert (=> b!6199123 (= e!3775074 (nullable!6132 (regTwo!32790 r!7292)))))

(declare-fun b!6199124 () Bool)

(assert (=> b!6199124 (= e!3775075 (not (= (head!12786 s!2326) (c!1118778 (regTwo!32790 r!7292)))))))

(declare-fun b!6199125 () Bool)

(declare-fun res!2564228 () Bool)

(assert (=> b!6199125 (=> (not res!2564228) (not e!3775077))))

(assert (=> b!6199125 (= res!2564228 (not call!518732))))

(declare-fun b!6199126 () Bool)

(declare-fun res!2564231 () Bool)

(assert (=> b!6199126 (=> res!2564231 e!3775079)))

(assert (=> b!6199126 (= res!2564231 e!3775077)))

(declare-fun res!2564233 () Bool)

(assert (=> b!6199126 (=> (not res!2564233) (not e!3775077))))

(assert (=> b!6199126 (= res!2564233 lt!2342762)))

(declare-fun b!6199127 () Bool)

(assert (=> b!6199127 (= e!3775078 e!3775075)))

(declare-fun res!2564230 () Bool)

(assert (=> b!6199127 (=> res!2564230 e!3775075)))

(assert (=> b!6199127 (= res!2564230 call!518732)))

(declare-fun d!1943347 () Bool)

(assert (=> d!1943347 e!3775073))

(declare-fun c!1119009 () Bool)

(assert (=> d!1943347 (= c!1119009 ((_ is EmptyExpr!16139) (regTwo!32790 r!7292)))))

(assert (=> d!1943347 (= lt!2342762 e!3775074)))

(declare-fun c!1119010 () Bool)

(assert (=> d!1943347 (= c!1119010 (isEmpty!36585 s!2326))))

(assert (=> d!1943347 (validRegex!7875 (regTwo!32790 r!7292))))

(assert (=> d!1943347 (= (matchR!8322 (regTwo!32790 r!7292) s!2326) lt!2342762)))

(assert (= (and d!1943347 c!1119010) b!6199123))

(assert (= (and d!1943347 (not c!1119010)) b!6199115))

(assert (= (and d!1943347 c!1119009) b!6199120))

(assert (= (and d!1943347 (not c!1119009)) b!6199118))

(assert (= (and b!6199118 c!1119011) b!6199121))

(assert (= (and b!6199118 (not c!1119011)) b!6199114))

(assert (= (and b!6199114 (not res!2564226)) b!6199126))

(assert (= (and b!6199126 res!2564233) b!6199125))

(assert (= (and b!6199125 res!2564228) b!6199116))

(assert (= (and b!6199116 res!2564229) b!6199119))

(assert (= (and b!6199126 (not res!2564231)) b!6199117))

(assert (= (and b!6199117 res!2564227) b!6199127))

(assert (= (and b!6199127 (not res!2564230)) b!6199122))

(assert (= (and b!6199122 (not res!2564232)) b!6199124))

(assert (= (or b!6199120 b!6199125 b!6199127) bm!518727))

(assert (=> b!6199119 m!7031786))

(assert (=> b!6199124 m!7031786))

(assert (=> bm!518727 m!7031778))

(declare-fun m!7032204 () Bool)

(assert (=> b!6199123 m!7032204))

(assert (=> b!6199122 m!7031790))

(assert (=> b!6199122 m!7031790))

(assert (=> b!6199122 m!7031792))

(assert (=> d!1943347 m!7031778))

(declare-fun m!7032206 () Bool)

(assert (=> d!1943347 m!7032206))

(assert (=> b!6199116 m!7031790))

(assert (=> b!6199116 m!7031790))

(assert (=> b!6199116 m!7031792))

(assert (=> b!6199115 m!7031786))

(assert (=> b!6199115 m!7031786))

(declare-fun m!7032208 () Bool)

(assert (=> b!6199115 m!7032208))

(assert (=> b!6199115 m!7031790))

(assert (=> b!6199115 m!7032208))

(assert (=> b!6199115 m!7031790))

(declare-fun m!7032210 () Bool)

(assert (=> b!6199115 m!7032210))

(assert (=> b!6198751 d!1943347))

(declare-fun d!1943349 () Bool)

(declare-fun lambda!338699 () Int)

(declare-fun exists!2469 ((InoxSet Context!11046) Int) Bool)

(assert (=> d!1943349 (= (nullableZipper!1912 ((_ map or) lt!2342665 lt!2342667)) (exists!2469 ((_ map or) lt!2342665 lt!2342667) lambda!338699))))

(declare-fun bs!1538143 () Bool)

(assert (= bs!1538143 d!1943349))

(declare-fun m!7032216 () Bool)

(assert (=> bs!1538143 m!7032216))

(assert (=> b!6198408 d!1943349))

(declare-fun d!1943353 () Bool)

(assert (=> d!1943353 (= (isEmpty!36585 (tail!11871 s!2326)) ((_ is Nil!64594) (tail!11871 s!2326)))))

(assert (=> b!6198570 d!1943353))

(assert (=> b!6198570 d!1943253))

(declare-fun bm!518728 () Bool)

(declare-fun call!518735 () Bool)

(declare-fun call!518733 () Bool)

(assert (=> bm!518728 (= call!518735 call!518733)))

(declare-fun bm!518729 () Bool)

(declare-fun call!518734 () Bool)

(declare-fun c!1119014 () Bool)

(assert (=> bm!518729 (= call!518734 (validRegex!7875 (ite c!1119014 (regTwo!32791 lt!2342714) (regTwo!32790 lt!2342714))))))

(declare-fun b!6199143 () Bool)

(declare-fun e!3775098 () Bool)

(declare-fun e!3775095 () Bool)

(assert (=> b!6199143 (= e!3775098 e!3775095)))

(declare-fun c!1119015 () Bool)

(assert (=> b!6199143 (= c!1119015 ((_ is Star!16139) lt!2342714))))

(declare-fun bm!518730 () Bool)

(assert (=> bm!518730 (= call!518733 (validRegex!7875 (ite c!1119015 (reg!16468 lt!2342714) (ite c!1119014 (regOne!32791 lt!2342714) (regOne!32790 lt!2342714)))))))

(declare-fun b!6199144 () Bool)

(declare-fun e!3775097 () Bool)

(assert (=> b!6199144 (= e!3775097 call!518733)))

(declare-fun b!6199146 () Bool)

(declare-fun e!3775100 () Bool)

(declare-fun e!3775099 () Bool)

(assert (=> b!6199146 (= e!3775100 e!3775099)))

(declare-fun res!2564250 () Bool)

(assert (=> b!6199146 (=> (not res!2564250) (not e!3775099))))

(assert (=> b!6199146 (= res!2564250 call!518735)))

(declare-fun b!6199147 () Bool)

(declare-fun res!2564249 () Bool)

(declare-fun e!3775101 () Bool)

(assert (=> b!6199147 (=> (not res!2564249) (not e!3775101))))

(assert (=> b!6199147 (= res!2564249 call!518735)))

(declare-fun e!3775096 () Bool)

(assert (=> b!6199147 (= e!3775096 e!3775101)))

(declare-fun b!6199148 () Bool)

(assert (=> b!6199148 (= e!3775101 call!518734)))

(declare-fun b!6199149 () Bool)

(assert (=> b!6199149 (= e!3775095 e!3775097)))

(declare-fun res!2564247 () Bool)

(assert (=> b!6199149 (= res!2564247 (not (nullable!6132 (reg!16468 lt!2342714))))))

(assert (=> b!6199149 (=> (not res!2564247) (not e!3775097))))

(declare-fun b!6199145 () Bool)

(declare-fun res!2564246 () Bool)

(assert (=> b!6199145 (=> res!2564246 e!3775100)))

(assert (=> b!6199145 (= res!2564246 (not ((_ is Concat!24984) lt!2342714)))))

(assert (=> b!6199145 (= e!3775096 e!3775100)))

(declare-fun d!1943355 () Bool)

(declare-fun res!2564248 () Bool)

(assert (=> d!1943355 (=> res!2564248 e!3775098)))

(assert (=> d!1943355 (= res!2564248 ((_ is ElementMatch!16139) lt!2342714))))

(assert (=> d!1943355 (= (validRegex!7875 lt!2342714) e!3775098)))

(declare-fun b!6199150 () Bool)

(assert (=> b!6199150 (= e!3775099 call!518734)))

(declare-fun b!6199151 () Bool)

(assert (=> b!6199151 (= e!3775095 e!3775096)))

(assert (=> b!6199151 (= c!1119014 ((_ is Union!16139) lt!2342714))))

(assert (= (and d!1943355 (not res!2564248)) b!6199143))

(assert (= (and b!6199143 c!1119015) b!6199149))

(assert (= (and b!6199143 (not c!1119015)) b!6199151))

(assert (= (and b!6199149 res!2564247) b!6199144))

(assert (= (and b!6199151 c!1119014) b!6199147))

(assert (= (and b!6199151 (not c!1119014)) b!6199145))

(assert (= (and b!6199147 res!2564249) b!6199148))

(assert (= (and b!6199145 (not res!2564246)) b!6199146))

(assert (= (and b!6199146 res!2564250) b!6199150))

(assert (= (or b!6199148 b!6199150) bm!518729))

(assert (= (or b!6199147 b!6199146) bm!518728))

(assert (= (or b!6199144 bm!518728) bm!518730))

(declare-fun m!7032224 () Bool)

(assert (=> bm!518729 m!7032224))

(declare-fun m!7032226 () Bool)

(assert (=> bm!518730 m!7032226))

(declare-fun m!7032228 () Bool)

(assert (=> b!6199149 m!7032228))

(assert (=> d!1943187 d!1943355))

(declare-fun d!1943359 () Bool)

(declare-fun res!2564259 () Bool)

(declare-fun e!3775109 () Bool)

(assert (=> d!1943359 (=> res!2564259 e!3775109)))

(assert (=> d!1943359 (= res!2564259 ((_ is Nil!64592) (unfocusZipperList!1560 zl!343)))))

(assert (=> d!1943359 (= (forall!15253 (unfocusZipperList!1560 zl!343) lambda!338662) e!3775109)))

(declare-fun b!6199166 () Bool)

(declare-fun e!3775110 () Bool)

(assert (=> b!6199166 (= e!3775109 e!3775110)))

(declare-fun res!2564260 () Bool)

(assert (=> b!6199166 (=> (not res!2564260) (not e!3775110))))

(assert (=> b!6199166 (= res!2564260 (dynLambda!25472 lambda!338662 (h!71040 (unfocusZipperList!1560 zl!343))))))

(declare-fun b!6199167 () Bool)

(assert (=> b!6199167 (= e!3775110 (forall!15253 (t!378230 (unfocusZipperList!1560 zl!343)) lambda!338662))))

(assert (= (and d!1943359 (not res!2564259)) b!6199166))

(assert (= (and b!6199166 res!2564260) b!6199167))

(declare-fun b_lambda!235783 () Bool)

(assert (=> (not b_lambda!235783) (not b!6199166)))

(declare-fun m!7032234 () Bool)

(assert (=> b!6199166 m!7032234))

(declare-fun m!7032236 () Bool)

(assert (=> b!6199167 m!7032236))

(assert (=> d!1943187 d!1943359))

(declare-fun d!1943361 () Bool)

(assert (=> d!1943361 (= (isDefined!12733 lt!2342728) (not (isEmpty!36587 lt!2342728)))))

(declare-fun bs!1538144 () Bool)

(assert (= bs!1538144 d!1943361))

(declare-fun m!7032242 () Bool)

(assert (=> bs!1538144 m!7032242))

(assert (=> b!6198755 d!1943361))

(declare-fun d!1943365 () Bool)

(assert (=> d!1943365 (= ($colon$colon!2007 (exprs!6023 lt!2342664) (ite (or c!1118826 c!1118827) (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (h!71040 (exprs!6023 (h!71041 zl!343))))) (Cons!64592 (ite (or c!1118826 c!1118827) (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (h!71040 (exprs!6023 (h!71041 zl!343)))) (exprs!6023 lt!2342664)))))

(assert (=> bm!518640 d!1943365))

(declare-fun bs!1538148 () Bool)

(declare-fun b!6199180 () Bool)

(assert (= bs!1538148 (and b!6199180 d!1943209)))

(declare-fun lambda!338701 () Int)

(assert (=> bs!1538148 (not (= lambda!338701 lambda!338682))))

(declare-fun bs!1538149 () Bool)

(assert (= bs!1538149 (and b!6199180 b!6198488)))

(assert (=> bs!1538149 (not (= lambda!338701 lambda!338646))))

(declare-fun bs!1538150 () Bool)

(assert (= bs!1538150 (and b!6199180 d!1943217)))

(assert (=> bs!1538150 (not (= lambda!338701 lambda!338687))))

(declare-fun bs!1538151 () Bool)

(assert (= bs!1538151 (and b!6199180 b!6198233)))

(assert (=> bs!1538151 (not (= lambda!338701 lambda!338630))))

(assert (=> bs!1538151 (not (= lambda!338701 lambda!338629))))

(declare-fun bs!1538152 () Bool)

(assert (= bs!1538152 (and b!6199180 b!6198496)))

(assert (=> bs!1538152 (= (and (= (reg!16468 (regOne!32791 r!7292)) (reg!16468 r!7292)) (= (regOne!32791 r!7292) r!7292)) (= lambda!338701 lambda!338645))))

(assert (=> bs!1538150 (not (= lambda!338701 lambda!338688))))

(assert (=> b!6199180 true))

(assert (=> b!6199180 true))

(declare-fun bs!1538153 () Bool)

(declare-fun b!6199172 () Bool)

(assert (= bs!1538153 (and b!6199172 d!1943209)))

(declare-fun lambda!338702 () Int)

(assert (=> bs!1538153 (not (= lambda!338702 lambda!338682))))

(declare-fun bs!1538154 () Bool)

(assert (= bs!1538154 (and b!6199172 b!6198488)))

(assert (=> bs!1538154 (= (and (= (regOne!32790 (regOne!32791 r!7292)) (regOne!32790 r!7292)) (= (regTwo!32790 (regOne!32791 r!7292)) (regTwo!32790 r!7292))) (= lambda!338702 lambda!338646))))

(declare-fun bs!1538155 () Bool)

(assert (= bs!1538155 (and b!6199172 d!1943217)))

(assert (=> bs!1538155 (not (= lambda!338702 lambda!338687))))

(declare-fun bs!1538156 () Bool)

(assert (= bs!1538156 (and b!6199172 b!6198233)))

(assert (=> bs!1538156 (= (and (= (regOne!32790 (regOne!32791 r!7292)) (regOne!32790 r!7292)) (= (regTwo!32790 (regOne!32791 r!7292)) (regTwo!32790 r!7292))) (= lambda!338702 lambda!338630))))

(assert (=> bs!1538156 (not (= lambda!338702 lambda!338629))))

(declare-fun bs!1538157 () Bool)

(assert (= bs!1538157 (and b!6199172 b!6198496)))

(assert (=> bs!1538157 (not (= lambda!338702 lambda!338645))))

(assert (=> bs!1538155 (= (and (= (regOne!32790 (regOne!32791 r!7292)) (regOne!32790 r!7292)) (= (regTwo!32790 (regOne!32791 r!7292)) (regTwo!32790 r!7292))) (= lambda!338702 lambda!338688))))

(declare-fun bs!1538158 () Bool)

(assert (= bs!1538158 (and b!6199172 b!6199180)))

(assert (=> bs!1538158 (not (= lambda!338702 lambda!338701))))

(assert (=> b!6199172 true))

(assert (=> b!6199172 true))

(declare-fun b!6199170 () Bool)

(declare-fun e!3775117 () Bool)

(assert (=> b!6199170 (= e!3775117 (= s!2326 (Cons!64594 (c!1118778 (regOne!32791 r!7292)) Nil!64594)))))

(declare-fun bm!518732 () Bool)

(declare-fun c!1119022 () Bool)

(declare-fun call!518737 () Bool)

(assert (=> bm!518732 (= call!518737 (Exists!3209 (ite c!1119022 lambda!338701 lambda!338702)))))

(declare-fun b!6199171 () Bool)

(declare-fun e!3775116 () Bool)

(declare-fun e!3775115 () Bool)

(assert (=> b!6199171 (= e!3775116 e!3775115)))

(declare-fun res!2564261 () Bool)

(assert (=> b!6199171 (= res!2564261 (not ((_ is EmptyLang!16139) (regOne!32791 r!7292))))))

(assert (=> b!6199171 (=> (not res!2564261) (not e!3775115))))

(declare-fun b!6199173 () Bool)

(declare-fun e!3775112 () Bool)

(declare-fun e!3775118 () Bool)

(assert (=> b!6199173 (= e!3775112 e!3775118)))

(declare-fun res!2564262 () Bool)

(assert (=> b!6199173 (= res!2564262 (matchRSpec!3240 (regOne!32791 (regOne!32791 r!7292)) s!2326))))

(assert (=> b!6199173 (=> res!2564262 e!3775118)))

(declare-fun b!6199174 () Bool)

(declare-fun c!1119023 () Bool)

(assert (=> b!6199174 (= c!1119023 ((_ is Union!16139) (regOne!32791 r!7292)))))

(assert (=> b!6199174 (= e!3775117 e!3775112)))

(declare-fun b!6199175 () Bool)

(assert (=> b!6199175 (= e!3775118 (matchRSpec!3240 (regTwo!32791 (regOne!32791 r!7292)) s!2326))))

(declare-fun b!6199176 () Bool)

(declare-fun e!3775114 () Bool)

(assert (=> b!6199176 (= e!3775112 e!3775114)))

(assert (=> b!6199176 (= c!1119022 ((_ is Star!16139) (regOne!32791 r!7292)))))

(declare-fun b!6199177 () Bool)

(declare-fun call!518738 () Bool)

(assert (=> b!6199177 (= e!3775116 call!518738)))

(declare-fun bm!518733 () Bool)

(assert (=> bm!518733 (= call!518738 (isEmpty!36585 s!2326))))

(declare-fun b!6199178 () Bool)

(declare-fun c!1119020 () Bool)

(assert (=> b!6199178 (= c!1119020 ((_ is ElementMatch!16139) (regOne!32791 r!7292)))))

(assert (=> b!6199178 (= e!3775115 e!3775117)))

(assert (=> b!6199172 (= e!3775114 call!518737)))

(declare-fun d!1943367 () Bool)

(declare-fun c!1119021 () Bool)

(assert (=> d!1943367 (= c!1119021 ((_ is EmptyExpr!16139) (regOne!32791 r!7292)))))

(assert (=> d!1943367 (= (matchRSpec!3240 (regOne!32791 r!7292) s!2326) e!3775116)))

(declare-fun b!6199179 () Bool)

(declare-fun res!2564263 () Bool)

(declare-fun e!3775113 () Bool)

(assert (=> b!6199179 (=> res!2564263 e!3775113)))

(assert (=> b!6199179 (= res!2564263 call!518738)))

(assert (=> b!6199179 (= e!3775114 e!3775113)))

(assert (=> b!6199180 (= e!3775113 call!518737)))

(assert (= (and d!1943367 c!1119021) b!6199177))

(assert (= (and d!1943367 (not c!1119021)) b!6199171))

(assert (= (and b!6199171 res!2564261) b!6199178))

(assert (= (and b!6199178 c!1119020) b!6199170))

(assert (= (and b!6199178 (not c!1119020)) b!6199174))

(assert (= (and b!6199174 c!1119023) b!6199173))

(assert (= (and b!6199174 (not c!1119023)) b!6199176))

(assert (= (and b!6199173 (not res!2564262)) b!6199175))

(assert (= (and b!6199176 c!1119022) b!6199179))

(assert (= (and b!6199176 (not c!1119022)) b!6199172))

(assert (= (and b!6199179 (not res!2564263)) b!6199180))

(assert (= (or b!6199180 b!6199172) bm!518732))

(assert (= (or b!6199177 b!6199179) bm!518733))

(declare-fun m!7032272 () Bool)

(assert (=> bm!518732 m!7032272))

(declare-fun m!7032274 () Bool)

(assert (=> b!6199173 m!7032274))

(declare-fun m!7032276 () Bool)

(assert (=> b!6199175 m!7032276))

(assert (=> bm!518733 m!7031778))

(assert (=> b!6198489 d!1943367))

(declare-fun d!1943377 () Bool)

(assert (=> d!1943377 (= (nullable!6132 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343))))) (nullableFct!2087 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343))))))))

(declare-fun bs!1538165 () Bool)

(assert (= bs!1538165 d!1943377))

(declare-fun m!7032278 () Bool)

(assert (=> bs!1538165 m!7032278))

(assert (=> b!6198383 d!1943377))

(declare-fun d!1943379 () Bool)

(declare-fun res!2564268 () Bool)

(declare-fun e!3775137 () Bool)

(assert (=> d!1943379 (=> res!2564268 e!3775137)))

(assert (=> d!1943379 (= res!2564268 ((_ is Nil!64592) lt!2342718))))

(assert (=> d!1943379 (= (forall!15253 lt!2342718 lambda!338666) e!3775137)))

(declare-fun b!6199213 () Bool)

(declare-fun e!3775138 () Bool)

(assert (=> b!6199213 (= e!3775137 e!3775138)))

(declare-fun res!2564269 () Bool)

(assert (=> b!6199213 (=> (not res!2564269) (not e!3775138))))

(assert (=> b!6199213 (= res!2564269 (dynLambda!25472 lambda!338666 (h!71040 lt!2342718)))))

(declare-fun b!6199214 () Bool)

(assert (=> b!6199214 (= e!3775138 (forall!15253 (t!378230 lt!2342718) lambda!338666))))

(assert (= (and d!1943379 (not res!2564268)) b!6199213))

(assert (= (and b!6199213 res!2564269) b!6199214))

(declare-fun b_lambda!235785 () Bool)

(assert (=> (not b_lambda!235785) (not b!6199213)))

(declare-fun m!7032280 () Bool)

(assert (=> b!6199213 m!7032280))

(declare-fun m!7032282 () Bool)

(assert (=> b!6199214 m!7032282))

(assert (=> d!1943195 d!1943379))

(declare-fun d!1943381 () Bool)

(declare-fun c!1119038 () Bool)

(assert (=> d!1943381 (= c!1119038 (isEmpty!36585 (tail!11871 (t!378232 s!2326))))))

(declare-fun e!3775139 () Bool)

(assert (=> d!1943381 (= (matchZipper!2151 (derivationStepZipper!2104 lt!2342665 (head!12786 (t!378232 s!2326))) (tail!11871 (t!378232 s!2326))) e!3775139)))

(declare-fun b!6199215 () Bool)

(assert (=> b!6199215 (= e!3775139 (nullableZipper!1912 (derivationStepZipper!2104 lt!2342665 (head!12786 (t!378232 s!2326)))))))

(declare-fun b!6199216 () Bool)

(assert (=> b!6199216 (= e!3775139 (matchZipper!2151 (derivationStepZipper!2104 (derivationStepZipper!2104 lt!2342665 (head!12786 (t!378232 s!2326))) (head!12786 (tail!11871 (t!378232 s!2326)))) (tail!11871 (tail!11871 (t!378232 s!2326)))))))

(assert (= (and d!1943381 c!1119038) b!6199215))

(assert (= (and d!1943381 (not c!1119038)) b!6199216))

(assert (=> d!1943381 m!7031734))

(assert (=> d!1943381 m!7032058))

(assert (=> b!6199215 m!7031732))

(declare-fun m!7032294 () Bool)

(assert (=> b!6199215 m!7032294))

(assert (=> b!6199216 m!7031734))

(assert (=> b!6199216 m!7032062))

(assert (=> b!6199216 m!7031732))

(assert (=> b!6199216 m!7032062))

(declare-fun m!7032304 () Bool)

(assert (=> b!6199216 m!7032304))

(assert (=> b!6199216 m!7031734))

(assert (=> b!6199216 m!7032066))

(assert (=> b!6199216 m!7032304))

(assert (=> b!6199216 m!7032066))

(declare-fun m!7032306 () Bool)

(assert (=> b!6199216 m!7032306))

(assert (=> b!6198407 d!1943381))

(declare-fun bs!1538166 () Bool)

(declare-fun d!1943389 () Bool)

(assert (= bs!1538166 (and d!1943389 b!6198226)))

(declare-fun lambda!338704 () Int)

(assert (=> bs!1538166 (= (= (head!12786 (t!378232 s!2326)) (h!71042 s!2326)) (= lambda!338704 lambda!338631))))

(declare-fun bs!1538167 () Bool)

(assert (= bs!1538167 (and d!1943389 d!1943259)))

(assert (=> bs!1538167 (= lambda!338704 lambda!338692)))

(assert (=> d!1943389 true))

(assert (=> d!1943389 (= (derivationStepZipper!2104 lt!2342665 (head!12786 (t!378232 s!2326))) (flatMap!1644 lt!2342665 lambda!338704))))

(declare-fun bs!1538168 () Bool)

(assert (= bs!1538168 d!1943389))

(declare-fun m!7032308 () Bool)

(assert (=> bs!1538168 m!7032308))

(assert (=> b!6198407 d!1943389))

(assert (=> b!6198407 d!1943261))

(assert (=> b!6198407 d!1943263))

(declare-fun bs!1538169 () Bool)

(declare-fun d!1943395 () Bool)

(assert (= bs!1538169 (and d!1943395 d!1943165)))

(declare-fun lambda!338705 () Int)

(assert (=> bs!1538169 (= lambda!338705 lambda!338649)))

(declare-fun bs!1538170 () Bool)

(assert (= bs!1538170 (and d!1943395 d!1943173)))

(assert (=> bs!1538170 (= lambda!338705 lambda!338655)))

(declare-fun bs!1538171 () Bool)

(assert (= bs!1538171 (and d!1943395 d!1943187)))

(assert (=> bs!1538171 (= lambda!338705 lambda!338662)))

(declare-fun bs!1538172 () Bool)

(assert (= bs!1538172 (and d!1943395 d!1943185)))

(assert (=> bs!1538172 (= lambda!338705 lambda!338657)))

(declare-fun bs!1538173 () Bool)

(assert (= bs!1538173 (and d!1943395 d!1943195)))

(assert (=> bs!1538173 (= lambda!338705 lambda!338666)))

(declare-fun bs!1538174 () Bool)

(assert (= bs!1538174 (and d!1943395 d!1943293)))

(assert (=> bs!1538174 (= lambda!338705 lambda!338693)))

(declare-fun bs!1538175 () Bool)

(assert (= bs!1538175 (and d!1943395 d!1943181)))

(assert (=> bs!1538175 (= lambda!338705 lambda!338656)))

(assert (=> d!1943395 (= (inv!83594 setElem!42070) (forall!15253 (exprs!6023 setElem!42070) lambda!338705))))

(declare-fun bs!1538176 () Bool)

(assert (= bs!1538176 d!1943395))

(declare-fun m!7032316 () Bool)

(assert (=> bs!1538176 m!7032316))

(assert (=> setNonEmpty!42070 d!1943395))

(declare-fun b!6199247 () Bool)

(declare-fun e!3775165 () Bool)

(declare-fun call!518758 () Bool)

(assert (=> b!6199247 (= e!3775165 call!518758)))

(declare-fun b!6199248 () Bool)

(declare-fun e!3775169 () Bool)

(declare-fun e!3775166 () Bool)

(assert (=> b!6199248 (= e!3775169 e!3775166)))

(declare-fun res!2564289 () Bool)

(declare-fun call!518759 () Bool)

(assert (=> b!6199248 (= res!2564289 call!518759)))

(assert (=> b!6199248 (=> res!2564289 e!3775166)))

(declare-fun bm!518753 () Bool)

(declare-fun c!1119045 () Bool)

(assert (=> bm!518753 (= call!518758 (nullable!6132 (ite c!1119045 (regTwo!32791 (regOne!32790 (regOne!32790 r!7292))) (regTwo!32790 (regOne!32790 (regOne!32790 r!7292))))))))

(declare-fun b!6199249 () Bool)

(assert (=> b!6199249 (= e!3775166 call!518758)))

(declare-fun b!6199250 () Bool)

(declare-fun e!3775168 () Bool)

(declare-fun e!3775167 () Bool)

(assert (=> b!6199250 (= e!3775168 e!3775167)))

(declare-fun res!2564291 () Bool)

(assert (=> b!6199250 (=> (not res!2564291) (not e!3775167))))

(assert (=> b!6199250 (= res!2564291 (and (not ((_ is EmptyLang!16139) (regOne!32790 (regOne!32790 r!7292)))) (not ((_ is ElementMatch!16139) (regOne!32790 (regOne!32790 r!7292))))))))

(declare-fun b!6199251 () Bool)

(declare-fun e!3775164 () Bool)

(assert (=> b!6199251 (= e!3775167 e!3775164)))

(declare-fun res!2564288 () Bool)

(assert (=> b!6199251 (=> res!2564288 e!3775164)))

(assert (=> b!6199251 (= res!2564288 ((_ is Star!16139) (regOne!32790 (regOne!32790 r!7292))))))

(declare-fun d!1943399 () Bool)

(declare-fun res!2564292 () Bool)

(assert (=> d!1943399 (=> res!2564292 e!3775168)))

(assert (=> d!1943399 (= res!2564292 ((_ is EmptyExpr!16139) (regOne!32790 (regOne!32790 r!7292))))))

(assert (=> d!1943399 (= (nullableFct!2087 (regOne!32790 (regOne!32790 r!7292))) e!3775168)))

(declare-fun b!6199252 () Bool)

(assert (=> b!6199252 (= e!3775164 e!3775169)))

(assert (=> b!6199252 (= c!1119045 ((_ is Union!16139) (regOne!32790 (regOne!32790 r!7292))))))

(declare-fun b!6199253 () Bool)

(assert (=> b!6199253 (= e!3775169 e!3775165)))

(declare-fun res!2564290 () Bool)

(assert (=> b!6199253 (= res!2564290 call!518759)))

(assert (=> b!6199253 (=> (not res!2564290) (not e!3775165))))

(declare-fun bm!518754 () Bool)

(assert (=> bm!518754 (= call!518759 (nullable!6132 (ite c!1119045 (regOne!32791 (regOne!32790 (regOne!32790 r!7292))) (regOne!32790 (regOne!32790 (regOne!32790 r!7292))))))))

(assert (= (and d!1943399 (not res!2564292)) b!6199250))

(assert (= (and b!6199250 res!2564291) b!6199251))

(assert (= (and b!6199251 (not res!2564288)) b!6199252))

(assert (= (and b!6199252 c!1119045) b!6199248))

(assert (= (and b!6199252 (not c!1119045)) b!6199253))

(assert (= (and b!6199248 (not res!2564289)) b!6199249))

(assert (= (and b!6199253 res!2564290) b!6199247))

(assert (= (or b!6199249 b!6199247) bm!518753))

(assert (= (or b!6199248 b!6199253) bm!518754))

(declare-fun m!7032336 () Bool)

(assert (=> bm!518753 m!7032336))

(declare-fun m!7032338 () Bool)

(assert (=> bm!518754 m!7032338))

(assert (=> d!1943115 d!1943399))

(assert (=> d!1943199 d!1943361))

(declare-fun b!6199254 () Bool)

(declare-fun res!2564293 () Bool)

(declare-fun e!3775176 () Bool)

(assert (=> b!6199254 (=> res!2564293 e!3775176)))

(assert (=> b!6199254 (= res!2564293 (not ((_ is ElementMatch!16139) (regOne!32790 r!7292))))))

(declare-fun e!3775173 () Bool)

(assert (=> b!6199254 (= e!3775173 e!3775176)))

(declare-fun b!6199255 () Bool)

(declare-fun e!3775171 () Bool)

(assert (=> b!6199255 (= e!3775171 (matchR!8322 (derivativeStep!4852 (regOne!32790 r!7292) (head!12786 Nil!64594)) (tail!11871 Nil!64594)))))

(declare-fun b!6199256 () Bool)

(declare-fun res!2564296 () Bool)

(declare-fun e!3775174 () Bool)

(assert (=> b!6199256 (=> (not res!2564296) (not e!3775174))))

(assert (=> b!6199256 (= res!2564296 (isEmpty!36585 (tail!11871 Nil!64594)))))

(declare-fun b!6199257 () Bool)

(declare-fun e!3775175 () Bool)

(assert (=> b!6199257 (= e!3775176 e!3775175)))

(declare-fun res!2564294 () Bool)

(assert (=> b!6199257 (=> (not res!2564294) (not e!3775175))))

(declare-fun lt!2342765 () Bool)

(assert (=> b!6199257 (= res!2564294 (not lt!2342765))))

(declare-fun b!6199258 () Bool)

(declare-fun e!3775170 () Bool)

(assert (=> b!6199258 (= e!3775170 e!3775173)))

(declare-fun c!1119048 () Bool)

(assert (=> b!6199258 (= c!1119048 ((_ is EmptyLang!16139) (regOne!32790 r!7292)))))

(declare-fun b!6199259 () Bool)

(assert (=> b!6199259 (= e!3775174 (= (head!12786 Nil!64594) (c!1118778 (regOne!32790 r!7292))))))

(declare-fun b!6199260 () Bool)

(declare-fun call!518760 () Bool)

(assert (=> b!6199260 (= e!3775170 (= lt!2342765 call!518760))))

(declare-fun b!6199261 () Bool)

(assert (=> b!6199261 (= e!3775173 (not lt!2342765))))

(declare-fun bm!518755 () Bool)

(assert (=> bm!518755 (= call!518760 (isEmpty!36585 Nil!64594))))

(declare-fun b!6199262 () Bool)

(declare-fun res!2564299 () Bool)

(declare-fun e!3775172 () Bool)

(assert (=> b!6199262 (=> res!2564299 e!3775172)))

(assert (=> b!6199262 (= res!2564299 (not (isEmpty!36585 (tail!11871 Nil!64594))))))

(declare-fun b!6199263 () Bool)

(assert (=> b!6199263 (= e!3775171 (nullable!6132 (regOne!32790 r!7292)))))

(declare-fun b!6199264 () Bool)

(assert (=> b!6199264 (= e!3775172 (not (= (head!12786 Nil!64594) (c!1118778 (regOne!32790 r!7292)))))))

(declare-fun b!6199265 () Bool)

(declare-fun res!2564295 () Bool)

(assert (=> b!6199265 (=> (not res!2564295) (not e!3775174))))

(assert (=> b!6199265 (= res!2564295 (not call!518760))))

(declare-fun b!6199266 () Bool)

(declare-fun res!2564298 () Bool)

(assert (=> b!6199266 (=> res!2564298 e!3775176)))

(assert (=> b!6199266 (= res!2564298 e!3775174)))

(declare-fun res!2564300 () Bool)

(assert (=> b!6199266 (=> (not res!2564300) (not e!3775174))))

(assert (=> b!6199266 (= res!2564300 lt!2342765)))

(declare-fun b!6199267 () Bool)

(assert (=> b!6199267 (= e!3775175 e!3775172)))

(declare-fun res!2564297 () Bool)

(assert (=> b!6199267 (=> res!2564297 e!3775172)))

(assert (=> b!6199267 (= res!2564297 call!518760)))

(declare-fun d!1943417 () Bool)

(assert (=> d!1943417 e!3775170))

(declare-fun c!1119046 () Bool)

(assert (=> d!1943417 (= c!1119046 ((_ is EmptyExpr!16139) (regOne!32790 r!7292)))))

(assert (=> d!1943417 (= lt!2342765 e!3775171)))

(declare-fun c!1119047 () Bool)

(assert (=> d!1943417 (= c!1119047 (isEmpty!36585 Nil!64594))))

(assert (=> d!1943417 (validRegex!7875 (regOne!32790 r!7292))))

(assert (=> d!1943417 (= (matchR!8322 (regOne!32790 r!7292) Nil!64594) lt!2342765)))

(assert (= (and d!1943417 c!1119047) b!6199263))

(assert (= (and d!1943417 (not c!1119047)) b!6199255))

(assert (= (and d!1943417 c!1119046) b!6199260))

(assert (= (and d!1943417 (not c!1119046)) b!6199258))

(assert (= (and b!6199258 c!1119048) b!6199261))

(assert (= (and b!6199258 (not c!1119048)) b!6199254))

(assert (= (and b!6199254 (not res!2564293)) b!6199266))

(assert (= (and b!6199266 res!2564300) b!6199265))

(assert (= (and b!6199265 res!2564295) b!6199256))

(assert (= (and b!6199256 res!2564296) b!6199259))

(assert (= (and b!6199266 (not res!2564298)) b!6199257))

(assert (= (and b!6199257 res!2564294) b!6199267))

(assert (= (and b!6199267 (not res!2564297)) b!6199262))

(assert (= (and b!6199262 (not res!2564299)) b!6199264))

(assert (= (or b!6199260 b!6199265 b!6199267) bm!518755))

(declare-fun m!7032340 () Bool)

(assert (=> b!6199259 m!7032340))

(assert (=> b!6199264 m!7032340))

(declare-fun m!7032342 () Bool)

(assert (=> bm!518755 m!7032342))

(assert (=> b!6199263 m!7032056))

(declare-fun m!7032344 () Bool)

(assert (=> b!6199262 m!7032344))

(assert (=> b!6199262 m!7032344))

(declare-fun m!7032346 () Bool)

(assert (=> b!6199262 m!7032346))

(assert (=> d!1943417 m!7032342))

(assert (=> d!1943417 m!7031930))

(assert (=> b!6199256 m!7032344))

(assert (=> b!6199256 m!7032344))

(assert (=> b!6199256 m!7032346))

(assert (=> b!6199255 m!7032340))

(assert (=> b!6199255 m!7032340))

(declare-fun m!7032348 () Bool)

(assert (=> b!6199255 m!7032348))

(assert (=> b!6199255 m!7032344))

(assert (=> b!6199255 m!7032348))

(assert (=> b!6199255 m!7032344))

(declare-fun m!7032354 () Bool)

(assert (=> b!6199255 m!7032354))

(assert (=> d!1943199 d!1943417))

(declare-fun bm!518762 () Bool)

(declare-fun call!518769 () Bool)

(declare-fun call!518767 () Bool)

(assert (=> bm!518762 (= call!518769 call!518767)))

(declare-fun bm!518763 () Bool)

(declare-fun call!518768 () Bool)

(declare-fun c!1119054 () Bool)

(assert (=> bm!518763 (= call!518768 (validRegex!7875 (ite c!1119054 (regTwo!32791 (regOne!32790 r!7292)) (regTwo!32790 (regOne!32790 r!7292)))))))

(declare-fun b!6199279 () Bool)

(declare-fun e!3775186 () Bool)

(declare-fun e!3775183 () Bool)

(assert (=> b!6199279 (= e!3775186 e!3775183)))

(declare-fun c!1119055 () Bool)

(assert (=> b!6199279 (= c!1119055 ((_ is Star!16139) (regOne!32790 r!7292)))))

(declare-fun bm!518764 () Bool)

(assert (=> bm!518764 (= call!518767 (validRegex!7875 (ite c!1119055 (reg!16468 (regOne!32790 r!7292)) (ite c!1119054 (regOne!32791 (regOne!32790 r!7292)) (regOne!32790 (regOne!32790 r!7292))))))))

(declare-fun b!6199280 () Bool)

(declare-fun e!3775185 () Bool)

(assert (=> b!6199280 (= e!3775185 call!518767)))

(declare-fun b!6199282 () Bool)

(declare-fun e!3775188 () Bool)

(declare-fun e!3775187 () Bool)

(assert (=> b!6199282 (= e!3775188 e!3775187)))

(declare-fun res!2564306 () Bool)

(assert (=> b!6199282 (=> (not res!2564306) (not e!3775187))))

(assert (=> b!6199282 (= res!2564306 call!518769)))

(declare-fun b!6199283 () Bool)

(declare-fun res!2564305 () Bool)

(declare-fun e!3775189 () Bool)

(assert (=> b!6199283 (=> (not res!2564305) (not e!3775189))))

(assert (=> b!6199283 (= res!2564305 call!518769)))

(declare-fun e!3775184 () Bool)

(assert (=> b!6199283 (= e!3775184 e!3775189)))

(declare-fun b!6199284 () Bool)

(assert (=> b!6199284 (= e!3775189 call!518768)))

(declare-fun b!6199285 () Bool)

(assert (=> b!6199285 (= e!3775183 e!3775185)))

(declare-fun res!2564303 () Bool)

(assert (=> b!6199285 (= res!2564303 (not (nullable!6132 (reg!16468 (regOne!32790 r!7292)))))))

(assert (=> b!6199285 (=> (not res!2564303) (not e!3775185))))

(declare-fun b!6199281 () Bool)

(declare-fun res!2564302 () Bool)

(assert (=> b!6199281 (=> res!2564302 e!3775188)))

(assert (=> b!6199281 (= res!2564302 (not ((_ is Concat!24984) (regOne!32790 r!7292))))))

(assert (=> b!6199281 (= e!3775184 e!3775188)))

(declare-fun d!1943421 () Bool)

(declare-fun res!2564304 () Bool)

(assert (=> d!1943421 (=> res!2564304 e!3775186)))

(assert (=> d!1943421 (= res!2564304 ((_ is ElementMatch!16139) (regOne!32790 r!7292)))))

(assert (=> d!1943421 (= (validRegex!7875 (regOne!32790 r!7292)) e!3775186)))

(declare-fun b!6199286 () Bool)

(assert (=> b!6199286 (= e!3775187 call!518768)))

(declare-fun b!6199287 () Bool)

(assert (=> b!6199287 (= e!3775183 e!3775184)))

(assert (=> b!6199287 (= c!1119054 ((_ is Union!16139) (regOne!32790 r!7292)))))

(assert (= (and d!1943421 (not res!2564304)) b!6199279))

(assert (= (and b!6199279 c!1119055) b!6199285))

(assert (= (and b!6199279 (not c!1119055)) b!6199287))

(assert (= (and b!6199285 res!2564303) b!6199280))

(assert (= (and b!6199287 c!1119054) b!6199283))

(assert (= (and b!6199287 (not c!1119054)) b!6199281))

(assert (= (and b!6199283 res!2564305) b!6199284))

(assert (= (and b!6199281 (not res!2564302)) b!6199282))

(assert (= (and b!6199282 res!2564306) b!6199286))

(assert (= (or b!6199284 b!6199286) bm!518763))

(assert (= (or b!6199283 b!6199282) bm!518762))

(assert (= (or b!6199280 bm!518762) bm!518764))

(declare-fun m!7032364 () Bool)

(assert (=> bm!518763 m!7032364))

(declare-fun m!7032366 () Bool)

(assert (=> bm!518764 m!7032366))

(declare-fun m!7032368 () Bool)

(assert (=> b!6199285 m!7032368))

(assert (=> d!1943199 d!1943421))

(declare-fun b!6199299 () Bool)

(declare-fun res!2564310 () Bool)

(declare-fun e!3775203 () Bool)

(assert (=> b!6199299 (=> res!2564310 e!3775203)))

(assert (=> b!6199299 (= res!2564310 (not ((_ is ElementMatch!16139) (regTwo!32790 r!7292))))))

(declare-fun e!3775200 () Bool)

(assert (=> b!6199299 (= e!3775200 e!3775203)))

(declare-fun b!6199300 () Bool)

(declare-fun e!3775198 () Bool)

(assert (=> b!6199300 (= e!3775198 (matchR!8322 (derivativeStep!4852 (regTwo!32790 r!7292) (head!12786 (_2!36421 (get!22302 lt!2342728)))) (tail!11871 (_2!36421 (get!22302 lt!2342728)))))))

(declare-fun b!6199301 () Bool)

(declare-fun res!2564313 () Bool)

(declare-fun e!3775201 () Bool)

(assert (=> b!6199301 (=> (not res!2564313) (not e!3775201))))

(assert (=> b!6199301 (= res!2564313 (isEmpty!36585 (tail!11871 (_2!36421 (get!22302 lt!2342728)))))))

(declare-fun b!6199302 () Bool)

(declare-fun e!3775202 () Bool)

(assert (=> b!6199302 (= e!3775203 e!3775202)))

(declare-fun res!2564311 () Bool)

(assert (=> b!6199302 (=> (not res!2564311) (not e!3775202))))

(declare-fun lt!2342766 () Bool)

(assert (=> b!6199302 (= res!2564311 (not lt!2342766))))

(declare-fun b!6199303 () Bool)

(declare-fun e!3775197 () Bool)

(assert (=> b!6199303 (= e!3775197 e!3775200)))

(declare-fun c!1119062 () Bool)

(assert (=> b!6199303 (= c!1119062 ((_ is EmptyLang!16139) (regTwo!32790 r!7292)))))

(declare-fun b!6199304 () Bool)

(assert (=> b!6199304 (= e!3775201 (= (head!12786 (_2!36421 (get!22302 lt!2342728))) (c!1118778 (regTwo!32790 r!7292))))))

(declare-fun b!6199305 () Bool)

(declare-fun call!518772 () Bool)

(assert (=> b!6199305 (= e!3775197 (= lt!2342766 call!518772))))

(declare-fun b!6199306 () Bool)

(assert (=> b!6199306 (= e!3775200 (not lt!2342766))))

(declare-fun bm!518767 () Bool)

(assert (=> bm!518767 (= call!518772 (isEmpty!36585 (_2!36421 (get!22302 lt!2342728))))))

(declare-fun b!6199307 () Bool)

(declare-fun res!2564316 () Bool)

(declare-fun e!3775199 () Bool)

(assert (=> b!6199307 (=> res!2564316 e!3775199)))

(assert (=> b!6199307 (= res!2564316 (not (isEmpty!36585 (tail!11871 (_2!36421 (get!22302 lt!2342728))))))))

(declare-fun b!6199308 () Bool)

(assert (=> b!6199308 (= e!3775198 (nullable!6132 (regTwo!32790 r!7292)))))

(declare-fun b!6199309 () Bool)

(assert (=> b!6199309 (= e!3775199 (not (= (head!12786 (_2!36421 (get!22302 lt!2342728))) (c!1118778 (regTwo!32790 r!7292)))))))

(declare-fun b!6199310 () Bool)

(declare-fun res!2564312 () Bool)

(assert (=> b!6199310 (=> (not res!2564312) (not e!3775201))))

(assert (=> b!6199310 (= res!2564312 (not call!518772))))

(declare-fun b!6199311 () Bool)

(declare-fun res!2564315 () Bool)

(assert (=> b!6199311 (=> res!2564315 e!3775203)))

(assert (=> b!6199311 (= res!2564315 e!3775201)))

(declare-fun res!2564317 () Bool)

(assert (=> b!6199311 (=> (not res!2564317) (not e!3775201))))

(assert (=> b!6199311 (= res!2564317 lt!2342766)))

(declare-fun b!6199312 () Bool)

(assert (=> b!6199312 (= e!3775202 e!3775199)))

(declare-fun res!2564314 () Bool)

(assert (=> b!6199312 (=> res!2564314 e!3775199)))

(assert (=> b!6199312 (= res!2564314 call!518772)))

(declare-fun d!1943427 () Bool)

(assert (=> d!1943427 e!3775197))

(declare-fun c!1119060 () Bool)

(assert (=> d!1943427 (= c!1119060 ((_ is EmptyExpr!16139) (regTwo!32790 r!7292)))))

(assert (=> d!1943427 (= lt!2342766 e!3775198)))

(declare-fun c!1119061 () Bool)

(assert (=> d!1943427 (= c!1119061 (isEmpty!36585 (_2!36421 (get!22302 lt!2342728))))))

(assert (=> d!1943427 (validRegex!7875 (regTwo!32790 r!7292))))

(assert (=> d!1943427 (= (matchR!8322 (regTwo!32790 r!7292) (_2!36421 (get!22302 lt!2342728))) lt!2342766)))

(assert (= (and d!1943427 c!1119061) b!6199308))

(assert (= (and d!1943427 (not c!1119061)) b!6199300))

(assert (= (and d!1943427 c!1119060) b!6199305))

(assert (= (and d!1943427 (not c!1119060)) b!6199303))

(assert (= (and b!6199303 c!1119062) b!6199306))

(assert (= (and b!6199303 (not c!1119062)) b!6199299))

(assert (= (and b!6199299 (not res!2564310)) b!6199311))

(assert (= (and b!6199311 res!2564317) b!6199310))

(assert (= (and b!6199310 res!2564312) b!6199301))

(assert (= (and b!6199301 res!2564313) b!6199304))

(assert (= (and b!6199311 (not res!2564315)) b!6199302))

(assert (= (and b!6199302 res!2564311) b!6199312))

(assert (= (and b!6199312 (not res!2564314)) b!6199307))

(assert (= (and b!6199307 (not res!2564316)) b!6199309))

(assert (= (or b!6199305 b!6199310 b!6199312) bm!518767))

(declare-fun m!7032370 () Bool)

(assert (=> b!6199304 m!7032370))

(assert (=> b!6199309 m!7032370))

(declare-fun m!7032372 () Bool)

(assert (=> bm!518767 m!7032372))

(assert (=> b!6199308 m!7032204))

(declare-fun m!7032374 () Bool)

(assert (=> b!6199307 m!7032374))

(assert (=> b!6199307 m!7032374))

(declare-fun m!7032376 () Bool)

(assert (=> b!6199307 m!7032376))

(assert (=> d!1943427 m!7032372))

(assert (=> d!1943427 m!7032206))

(assert (=> b!6199301 m!7032374))

(assert (=> b!6199301 m!7032374))

(assert (=> b!6199301 m!7032376))

(assert (=> b!6199300 m!7032370))

(assert (=> b!6199300 m!7032370))

(declare-fun m!7032378 () Bool)

(assert (=> b!6199300 m!7032378))

(assert (=> b!6199300 m!7032374))

(assert (=> b!6199300 m!7032378))

(assert (=> b!6199300 m!7032374))

(declare-fun m!7032380 () Bool)

(assert (=> b!6199300 m!7032380))

(assert (=> b!6198753 d!1943427))

(assert (=> b!6198753 d!1943337))

(declare-fun bs!1538196 () Bool)

(declare-fun d!1943429 () Bool)

(assert (= bs!1538196 (and d!1943429 d!1943349)))

(declare-fun lambda!338709 () Int)

(assert (=> bs!1538196 (= lambda!338709 lambda!338699)))

(assert (=> d!1943429 (= (nullableZipper!1912 lt!2342667) (exists!2469 lt!2342667 lambda!338709))))

(declare-fun bs!1538197 () Bool)

(assert (= bs!1538197 d!1943429))

(declare-fun m!7032382 () Bool)

(assert (=> bs!1538197 m!7032382))

(assert (=> b!6198410 d!1943429))

(assert (=> b!6198313 d!1943125))

(declare-fun d!1943431 () Bool)

(assert (=> d!1943431 (= (isEmpty!36582 (tail!11872 (unfocusZipperList!1560 zl!343))) ((_ is Nil!64592) (tail!11872 (unfocusZipperList!1560 zl!343))))))

(assert (=> b!6198709 d!1943431))

(declare-fun d!1943433 () Bool)

(assert (=> d!1943433 (= (tail!11872 (unfocusZipperList!1560 zl!343)) (t!378230 (unfocusZipperList!1560 zl!343)))))

(assert (=> b!6198709 d!1943433))

(declare-fun b!6199313 () Bool)

(declare-fun e!3775209 () (InoxSet Context!11046))

(declare-fun call!518774 () (InoxSet Context!11046))

(assert (=> b!6199313 (= e!3775209 call!518774)))

(declare-fun bm!518768 () Bool)

(declare-fun call!518775 () (InoxSet Context!11046))

(assert (=> bm!518768 (= call!518774 call!518775)))

(declare-fun b!6199314 () Bool)

(declare-fun c!1119067 () Bool)

(assert (=> b!6199314 (= c!1119067 ((_ is Star!16139) (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))))))

(declare-fun e!3775206 () (InoxSet Context!11046))

(assert (=> b!6199314 (= e!3775206 e!3775209)))

(declare-fun call!518777 () List!64716)

(declare-fun call!518776 () (InoxSet Context!11046))

(declare-fun c!1119066 () Bool)

(declare-fun bm!518769 () Bool)

(assert (=> bm!518769 (= call!518776 (derivationStepZipperDown!1387 (ite c!1119066 (regTwo!32791 (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))) (regOne!32790 (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343))))))))) (ite c!1119066 (Context!11047 (t!378230 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))) (Context!11047 call!518777)) (h!71042 s!2326)))))

(declare-fun bm!518770 () Bool)

(declare-fun call!518773 () (InoxSet Context!11046))

(declare-fun c!1119064 () Bool)

(declare-fun c!1119065 () Bool)

(declare-fun call!518778 () List!64716)

(assert (=> bm!518770 (= call!518773 (derivationStepZipperDown!1387 (ite c!1119066 (regOne!32791 (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))) (ite c!1119064 (regTwo!32790 (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))) (ite c!1119065 (regOne!32790 (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))) (reg!16468 (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343))))))))))) (ite (or c!1119066 c!1119064) (Context!11047 (t!378230 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))) (Context!11047 call!518778)) (h!71042 s!2326)))))

(declare-fun bm!518771 () Bool)

(assert (=> bm!518771 (= call!518775 call!518773)))

(declare-fun b!6199316 () Bool)

(declare-fun e!3775205 () Bool)

(assert (=> b!6199316 (= c!1119064 e!3775205)))

(declare-fun res!2564318 () Bool)

(assert (=> b!6199316 (=> (not res!2564318) (not e!3775205))))

(assert (=> b!6199316 (= res!2564318 ((_ is Concat!24984) (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))))))

(declare-fun e!3775208 () (InoxSet Context!11046))

(declare-fun e!3775204 () (InoxSet Context!11046))

(assert (=> b!6199316 (= e!3775208 e!3775204)))

(declare-fun b!6199317 () Bool)

(declare-fun e!3775207 () (InoxSet Context!11046))

(assert (=> b!6199317 (= e!3775207 e!3775208)))

(assert (=> b!6199317 (= c!1119066 ((_ is Union!16139) (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))))))

(declare-fun b!6199318 () Bool)

(assert (=> b!6199318 (= e!3775207 (store ((as const (Array Context!11046 Bool)) false) (Context!11047 (t!378230 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))) true))))

(declare-fun b!6199319 () Bool)

(assert (=> b!6199319 (= e!3775205 (nullable!6132 (regOne!32790 (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343))))))))))))

(declare-fun b!6199320 () Bool)

(assert (=> b!6199320 (= e!3775204 ((_ map or) call!518776 call!518775))))

(declare-fun b!6199321 () Bool)

(assert (=> b!6199321 (= e!3775206 call!518774)))

(declare-fun b!6199322 () Bool)

(assert (=> b!6199322 (= e!3775204 e!3775206)))

(assert (=> b!6199322 (= c!1119065 ((_ is Concat!24984) (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))))))

(declare-fun bm!518772 () Bool)

(assert (=> bm!518772 (= call!518777 ($colon$colon!2007 (exprs!6023 (Context!11047 (t!378230 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343))))))))) (ite (or c!1119064 c!1119065) (regTwo!32790 (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))) (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343))))))))))))

(declare-fun b!6199323 () Bool)

(assert (=> b!6199323 (= e!3775209 ((as const (Array Context!11046 Bool)) false))))

(declare-fun bm!518773 () Bool)

(assert (=> bm!518773 (= call!518778 call!518777)))

(declare-fun d!1943435 () Bool)

(declare-fun c!1119063 () Bool)

(assert (=> d!1943435 (= c!1119063 (and ((_ is ElementMatch!16139) (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))) (= (c!1118778 (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))) (h!71042 s!2326))))))

(assert (=> d!1943435 (= (derivationStepZipperDown!1387 (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343))))))) (Context!11047 (t!378230 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))) (h!71042 s!2326)) e!3775207)))

(declare-fun b!6199315 () Bool)

(assert (=> b!6199315 (= e!3775208 ((_ map or) call!518773 call!518776))))

(assert (= (and d!1943435 c!1119063) b!6199318))

(assert (= (and d!1943435 (not c!1119063)) b!6199317))

(assert (= (and b!6199317 c!1119066) b!6199315))

(assert (= (and b!6199317 (not c!1119066)) b!6199316))

(assert (= (and b!6199316 res!2564318) b!6199319))

(assert (= (and b!6199316 c!1119064) b!6199320))

(assert (= (and b!6199316 (not c!1119064)) b!6199322))

(assert (= (and b!6199322 c!1119065) b!6199321))

(assert (= (and b!6199322 (not c!1119065)) b!6199314))

(assert (= (and b!6199314 c!1119067) b!6199313))

(assert (= (and b!6199314 (not c!1119067)) b!6199323))

(assert (= (or b!6199321 b!6199313) bm!518773))

(assert (= (or b!6199321 b!6199313) bm!518768))

(assert (= (or b!6199320 bm!518773) bm!518772))

(assert (= (or b!6199320 bm!518768) bm!518771))

(assert (= (or b!6199315 b!6199320) bm!518769))

(assert (= (or b!6199315 bm!518771) bm!518770))

(declare-fun m!7032390 () Bool)

(assert (=> bm!518772 m!7032390))

(declare-fun m!7032392 () Bool)

(assert (=> b!6199319 m!7032392))

(declare-fun m!7032398 () Bool)

(assert (=> bm!518770 m!7032398))

(declare-fun m!7032400 () Bool)

(assert (=> bm!518769 m!7032400))

(declare-fun m!7032404 () Bool)

(assert (=> b!6199318 m!7032404))

(assert (=> bm!518613 d!1943435))

(declare-fun d!1943445 () Bool)

(assert (=> d!1943445 (= (nullable!6132 (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))) (nullableFct!2087 (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (h!71040 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343)))))))))))

(declare-fun bs!1538207 () Bool)

(assert (= bs!1538207 d!1943445))

(declare-fun m!7032406 () Bool)

(assert (=> bs!1538207 m!7032406))

(assert (=> b!6198296 d!1943445))

(assert (=> b!6198564 d!1943353))

(assert (=> b!6198564 d!1943253))

(assert (=> d!1943129 d!1943133))

(declare-fun d!1943447 () Bool)

(assert (=> d!1943447 (= (flatMap!1644 z!1189 lambda!338631) (dynLambda!25470 lambda!338631 (h!71041 zl!343)))))

(assert (=> d!1943447 true))

(declare-fun _$13!3200 () Unit!157887)

(assert (=> d!1943447 (= (choose!46058 z!1189 (h!71041 zl!343) lambda!338631) _$13!3200)))

(declare-fun b_lambda!235791 () Bool)

(assert (=> (not b_lambda!235791) (not d!1943447)))

(declare-fun bs!1538208 () Bool)

(assert (= bs!1538208 d!1943447))

(assert (=> bs!1538208 m!7031612))

(assert (=> bs!1538208 m!7031688))

(assert (=> d!1943129 d!1943447))

(assert (=> b!6198719 d!1943173))

(declare-fun bs!1538209 () Bool)

(declare-fun d!1943449 () Bool)

(assert (= bs!1538209 (and d!1943449 d!1943165)))

(declare-fun lambda!338711 () Int)

(assert (=> bs!1538209 (= lambda!338711 lambda!338649)))

(declare-fun bs!1538210 () Bool)

(assert (= bs!1538210 (and d!1943449 d!1943173)))

(assert (=> bs!1538210 (= lambda!338711 lambda!338655)))

(declare-fun bs!1538211 () Bool)

(assert (= bs!1538211 (and d!1943449 d!1943395)))

(assert (=> bs!1538211 (= lambda!338711 lambda!338705)))

(declare-fun bs!1538212 () Bool)

(assert (= bs!1538212 (and d!1943449 d!1943187)))

(assert (=> bs!1538212 (= lambda!338711 lambda!338662)))

(declare-fun bs!1538213 () Bool)

(assert (= bs!1538213 (and d!1943449 d!1943185)))

(assert (=> bs!1538213 (= lambda!338711 lambda!338657)))

(declare-fun bs!1538214 () Bool)

(assert (= bs!1538214 (and d!1943449 d!1943195)))

(assert (=> bs!1538214 (= lambda!338711 lambda!338666)))

(declare-fun bs!1538215 () Bool)

(assert (= bs!1538215 (and d!1943449 d!1943293)))

(assert (=> bs!1538215 (= lambda!338711 lambda!338693)))

(declare-fun bs!1538216 () Bool)

(assert (= bs!1538216 (and d!1943449 d!1943181)))

(assert (=> bs!1538216 (= lambda!338711 lambda!338656)))

(declare-fun lt!2342767 () List!64716)

(assert (=> d!1943449 (forall!15253 lt!2342767 lambda!338711)))

(declare-fun e!3775210 () List!64716)

(assert (=> d!1943449 (= lt!2342767 e!3775210)))

(declare-fun c!1119068 () Bool)

(assert (=> d!1943449 (= c!1119068 ((_ is Cons!64593) (t!378231 zl!343)))))

(assert (=> d!1943449 (= (unfocusZipperList!1560 (t!378231 zl!343)) lt!2342767)))

(declare-fun b!6199324 () Bool)

(assert (=> b!6199324 (= e!3775210 (Cons!64592 (generalisedConcat!1736 (exprs!6023 (h!71041 (t!378231 zl!343)))) (unfocusZipperList!1560 (t!378231 (t!378231 zl!343)))))))

(declare-fun b!6199325 () Bool)

(assert (=> b!6199325 (= e!3775210 Nil!64592)))

(assert (= (and d!1943449 c!1119068) b!6199324))

(assert (= (and d!1943449 (not c!1119068)) b!6199325))

(declare-fun m!7032408 () Bool)

(assert (=> d!1943449 m!7032408))

(declare-fun m!7032410 () Bool)

(assert (=> b!6199324 m!7032410))

(declare-fun m!7032412 () Bool)

(assert (=> b!6199324 m!7032412))

(assert (=> b!6198719 d!1943449))

(declare-fun bs!1538217 () Bool)

(declare-fun b!6199336 () Bool)

(assert (= bs!1538217 (and b!6199336 d!1943209)))

(declare-fun lambda!338712 () Int)

(assert (=> bs!1538217 (not (= lambda!338712 lambda!338682))))

(declare-fun bs!1538218 () Bool)

(assert (= bs!1538218 (and b!6199336 b!6199172)))

(assert (=> bs!1538218 (not (= lambda!338712 lambda!338702))))

(declare-fun bs!1538219 () Bool)

(assert (= bs!1538219 (and b!6199336 b!6198488)))

(assert (=> bs!1538219 (not (= lambda!338712 lambda!338646))))

(declare-fun bs!1538220 () Bool)

(assert (= bs!1538220 (and b!6199336 d!1943217)))

(assert (=> bs!1538220 (not (= lambda!338712 lambda!338687))))

(declare-fun bs!1538221 () Bool)

(assert (= bs!1538221 (and b!6199336 b!6198233)))

(assert (=> bs!1538221 (not (= lambda!338712 lambda!338630))))

(assert (=> bs!1538221 (not (= lambda!338712 lambda!338629))))

(declare-fun bs!1538222 () Bool)

(assert (= bs!1538222 (and b!6199336 b!6198496)))

(assert (=> bs!1538222 (= (and (= (reg!16468 (regTwo!32791 r!7292)) (reg!16468 r!7292)) (= (regTwo!32791 r!7292) r!7292)) (= lambda!338712 lambda!338645))))

(assert (=> bs!1538220 (not (= lambda!338712 lambda!338688))))

(declare-fun bs!1538223 () Bool)

(assert (= bs!1538223 (and b!6199336 b!6199180)))

(assert (=> bs!1538223 (= (and (= (reg!16468 (regTwo!32791 r!7292)) (reg!16468 (regOne!32791 r!7292))) (= (regTwo!32791 r!7292) (regOne!32791 r!7292))) (= lambda!338712 lambda!338701))))

(assert (=> b!6199336 true))

(assert (=> b!6199336 true))

(declare-fun bs!1538224 () Bool)

(declare-fun b!6199328 () Bool)

(assert (= bs!1538224 (and b!6199328 d!1943209)))

(declare-fun lambda!338715 () Int)

(assert (=> bs!1538224 (not (= lambda!338715 lambda!338682))))

(declare-fun bs!1538225 () Bool)

(assert (= bs!1538225 (and b!6199328 b!6198488)))

(assert (=> bs!1538225 (= (and (= (regOne!32790 (regTwo!32791 r!7292)) (regOne!32790 r!7292)) (= (regTwo!32790 (regTwo!32791 r!7292)) (regTwo!32790 r!7292))) (= lambda!338715 lambda!338646))))

(declare-fun bs!1538226 () Bool)

(assert (= bs!1538226 (and b!6199328 d!1943217)))

(assert (=> bs!1538226 (not (= lambda!338715 lambda!338687))))

(declare-fun bs!1538227 () Bool)

(assert (= bs!1538227 (and b!6199328 b!6198233)))

(assert (=> bs!1538227 (= (and (= (regOne!32790 (regTwo!32791 r!7292)) (regOne!32790 r!7292)) (= (regTwo!32790 (regTwo!32791 r!7292)) (regTwo!32790 r!7292))) (= lambda!338715 lambda!338630))))

(assert (=> bs!1538227 (not (= lambda!338715 lambda!338629))))

(declare-fun bs!1538228 () Bool)

(assert (= bs!1538228 (and b!6199328 b!6198496)))

(assert (=> bs!1538228 (not (= lambda!338715 lambda!338645))))

(assert (=> bs!1538226 (= (and (= (regOne!32790 (regTwo!32791 r!7292)) (regOne!32790 r!7292)) (= (regTwo!32790 (regTwo!32791 r!7292)) (regTwo!32790 r!7292))) (= lambda!338715 lambda!338688))))

(declare-fun bs!1538229 () Bool)

(assert (= bs!1538229 (and b!6199328 b!6199180)))

(assert (=> bs!1538229 (not (= lambda!338715 lambda!338701))))

(declare-fun bs!1538230 () Bool)

(assert (= bs!1538230 (and b!6199328 b!6199336)))

(assert (=> bs!1538230 (not (= lambda!338715 lambda!338712))))

(declare-fun bs!1538231 () Bool)

(assert (= bs!1538231 (and b!6199328 b!6199172)))

(assert (=> bs!1538231 (= (and (= (regOne!32790 (regTwo!32791 r!7292)) (regOne!32790 (regOne!32791 r!7292))) (= (regTwo!32790 (regTwo!32791 r!7292)) (regTwo!32790 (regOne!32791 r!7292)))) (= lambda!338715 lambda!338702))))

(assert (=> b!6199328 true))

(assert (=> b!6199328 true))

(declare-fun b!6199326 () Bool)

(declare-fun e!3775216 () Bool)

(assert (=> b!6199326 (= e!3775216 (= s!2326 (Cons!64594 (c!1118778 (regTwo!32791 r!7292)) Nil!64594)))))

(declare-fun call!518779 () Bool)

(declare-fun bm!518774 () Bool)

(declare-fun c!1119071 () Bool)

(assert (=> bm!518774 (= call!518779 (Exists!3209 (ite c!1119071 lambda!338712 lambda!338715)))))

(declare-fun b!6199327 () Bool)

(declare-fun e!3775215 () Bool)

(declare-fun e!3775214 () Bool)

(assert (=> b!6199327 (= e!3775215 e!3775214)))

(declare-fun res!2564319 () Bool)

(assert (=> b!6199327 (= res!2564319 (not ((_ is EmptyLang!16139) (regTwo!32791 r!7292))))))

(assert (=> b!6199327 (=> (not res!2564319) (not e!3775214))))

(declare-fun b!6199329 () Bool)

(declare-fun e!3775211 () Bool)

(declare-fun e!3775217 () Bool)

(assert (=> b!6199329 (= e!3775211 e!3775217)))

(declare-fun res!2564320 () Bool)

(assert (=> b!6199329 (= res!2564320 (matchRSpec!3240 (regOne!32791 (regTwo!32791 r!7292)) s!2326))))

(assert (=> b!6199329 (=> res!2564320 e!3775217)))

(declare-fun b!6199330 () Bool)

(declare-fun c!1119072 () Bool)

(assert (=> b!6199330 (= c!1119072 ((_ is Union!16139) (regTwo!32791 r!7292)))))

(assert (=> b!6199330 (= e!3775216 e!3775211)))

(declare-fun b!6199331 () Bool)

(assert (=> b!6199331 (= e!3775217 (matchRSpec!3240 (regTwo!32791 (regTwo!32791 r!7292)) s!2326))))

(declare-fun b!6199332 () Bool)

(declare-fun e!3775213 () Bool)

(assert (=> b!6199332 (= e!3775211 e!3775213)))

(assert (=> b!6199332 (= c!1119071 ((_ is Star!16139) (regTwo!32791 r!7292)))))

(declare-fun b!6199333 () Bool)

(declare-fun call!518780 () Bool)

(assert (=> b!6199333 (= e!3775215 call!518780)))

(declare-fun bm!518775 () Bool)

(assert (=> bm!518775 (= call!518780 (isEmpty!36585 s!2326))))

(declare-fun b!6199334 () Bool)

(declare-fun c!1119069 () Bool)

(assert (=> b!6199334 (= c!1119069 ((_ is ElementMatch!16139) (regTwo!32791 r!7292)))))

(assert (=> b!6199334 (= e!3775214 e!3775216)))

(assert (=> b!6199328 (= e!3775213 call!518779)))

(declare-fun d!1943451 () Bool)

(declare-fun c!1119070 () Bool)

(assert (=> d!1943451 (= c!1119070 ((_ is EmptyExpr!16139) (regTwo!32791 r!7292)))))

(assert (=> d!1943451 (= (matchRSpec!3240 (regTwo!32791 r!7292) s!2326) e!3775215)))

(declare-fun b!6199335 () Bool)

(declare-fun res!2564321 () Bool)

(declare-fun e!3775212 () Bool)

(assert (=> b!6199335 (=> res!2564321 e!3775212)))

(assert (=> b!6199335 (= res!2564321 call!518780)))

(assert (=> b!6199335 (= e!3775213 e!3775212)))

(assert (=> b!6199336 (= e!3775212 call!518779)))

(assert (= (and d!1943451 c!1119070) b!6199333))

(assert (= (and d!1943451 (not c!1119070)) b!6199327))

(assert (= (and b!6199327 res!2564319) b!6199334))

(assert (= (and b!6199334 c!1119069) b!6199326))

(assert (= (and b!6199334 (not c!1119069)) b!6199330))

(assert (= (and b!6199330 c!1119072) b!6199329))

(assert (= (and b!6199330 (not c!1119072)) b!6199332))

(assert (= (and b!6199329 (not res!2564320)) b!6199331))

(assert (= (and b!6199332 c!1119071) b!6199335))

(assert (= (and b!6199332 (not c!1119071)) b!6199328))

(assert (= (and b!6199335 (not res!2564321)) b!6199336))

(assert (= (or b!6199336 b!6199328) bm!518774))

(assert (= (or b!6199333 b!6199335) bm!518775))

(declare-fun m!7032414 () Bool)

(assert (=> bm!518774 m!7032414))

(declare-fun m!7032416 () Bool)

(assert (=> b!6199329 m!7032416))

(declare-fun m!7032418 () Bool)

(assert (=> b!6199331 m!7032418))

(assert (=> bm!518775 m!7031778))

(assert (=> b!6198491 d!1943451))

(assert (=> d!1943159 d!1943255))

(assert (=> d!1943159 d!1943179))

(declare-fun b!6199345 () Bool)

(declare-fun e!3775227 () (InoxSet Context!11046))

(declare-fun call!518782 () (InoxSet Context!11046))

(assert (=> b!6199345 (= e!3775227 call!518782)))

(declare-fun bm!518776 () Bool)

(declare-fun call!518783 () (InoxSet Context!11046))

(assert (=> bm!518776 (= call!518782 call!518783)))

(declare-fun b!6199346 () Bool)

(declare-fun c!1119077 () Bool)

(assert (=> b!6199346 (= c!1119077 ((_ is Star!16139) (h!71040 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun e!3775224 () (InoxSet Context!11046))

(assert (=> b!6199346 (= e!3775224 e!3775227)))

(declare-fun c!1119076 () Bool)

(declare-fun call!518785 () List!64716)

(declare-fun bm!518777 () Bool)

(declare-fun call!518784 () (InoxSet Context!11046))

(assert (=> bm!518777 (= call!518784 (derivationStepZipperDown!1387 (ite c!1119076 (regTwo!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343))))) (ite c!1119076 (Context!11047 (t!378230 (exprs!6023 (h!71041 zl!343)))) (Context!11047 call!518785)) (h!71042 s!2326)))))

(declare-fun call!518786 () List!64716)

(declare-fun bm!518778 () Bool)

(declare-fun call!518781 () (InoxSet Context!11046))

(declare-fun c!1119075 () Bool)

(declare-fun c!1119074 () Bool)

(assert (=> bm!518778 (= call!518781 (derivationStepZipperDown!1387 (ite c!1119076 (regOne!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1119074 (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1119075 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (reg!16468 (h!71040 (exprs!6023 (h!71041 zl!343))))))) (ite (or c!1119076 c!1119074) (Context!11047 (t!378230 (exprs!6023 (h!71041 zl!343)))) (Context!11047 call!518786)) (h!71042 s!2326)))))

(declare-fun bm!518779 () Bool)

(assert (=> bm!518779 (= call!518783 call!518781)))

(declare-fun b!6199348 () Bool)

(declare-fun e!3775223 () Bool)

(assert (=> b!6199348 (= c!1119074 e!3775223)))

(declare-fun res!2564330 () Bool)

(assert (=> b!6199348 (=> (not res!2564330) (not e!3775223))))

(assert (=> b!6199348 (= res!2564330 ((_ is Concat!24984) (h!71040 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun e!3775226 () (InoxSet Context!11046))

(declare-fun e!3775222 () (InoxSet Context!11046))

(assert (=> b!6199348 (= e!3775226 e!3775222)))

(declare-fun b!6199349 () Bool)

(declare-fun e!3775225 () (InoxSet Context!11046))

(assert (=> b!6199349 (= e!3775225 e!3775226)))

(assert (=> b!6199349 (= c!1119076 ((_ is Union!16139) (h!71040 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun b!6199350 () Bool)

(assert (=> b!6199350 (= e!3775225 (store ((as const (Array Context!11046 Bool)) false) (Context!11047 (t!378230 (exprs!6023 (h!71041 zl!343)))) true))))

(declare-fun b!6199351 () Bool)

(assert (=> b!6199351 (= e!3775223 (nullable!6132 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343))))))))

(declare-fun b!6199352 () Bool)

(assert (=> b!6199352 (= e!3775222 ((_ map or) call!518784 call!518783))))

(declare-fun b!6199353 () Bool)

(assert (=> b!6199353 (= e!3775224 call!518782)))

(declare-fun b!6199354 () Bool)

(assert (=> b!6199354 (= e!3775222 e!3775224)))

(assert (=> b!6199354 (= c!1119075 ((_ is Concat!24984) (h!71040 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun bm!518780 () Bool)

(assert (=> bm!518780 (= call!518785 ($colon$colon!2007 (exprs!6023 (Context!11047 (t!378230 (exprs!6023 (h!71041 zl!343))))) (ite (or c!1119074 c!1119075) (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (h!71040 (exprs!6023 (h!71041 zl!343))))))))

(declare-fun b!6199355 () Bool)

(assert (=> b!6199355 (= e!3775227 ((as const (Array Context!11046 Bool)) false))))

(declare-fun bm!518781 () Bool)

(assert (=> bm!518781 (= call!518786 call!518785)))

(declare-fun d!1943453 () Bool)

(declare-fun c!1119073 () Bool)

(assert (=> d!1943453 (= c!1119073 (and ((_ is ElementMatch!16139) (h!71040 (exprs!6023 (h!71041 zl!343)))) (= (c!1118778 (h!71040 (exprs!6023 (h!71041 zl!343)))) (h!71042 s!2326))))))

(assert (=> d!1943453 (= (derivationStepZipperDown!1387 (h!71040 (exprs!6023 (h!71041 zl!343))) (Context!11047 (t!378230 (exprs!6023 (h!71041 zl!343)))) (h!71042 s!2326)) e!3775225)))

(declare-fun b!6199347 () Bool)

(assert (=> b!6199347 (= e!3775226 ((_ map or) call!518781 call!518784))))

(assert (= (and d!1943453 c!1119073) b!6199350))

(assert (= (and d!1943453 (not c!1119073)) b!6199349))

(assert (= (and b!6199349 c!1119076) b!6199347))

(assert (= (and b!6199349 (not c!1119076)) b!6199348))

(assert (= (and b!6199348 res!2564330) b!6199351))

(assert (= (and b!6199348 c!1119074) b!6199352))

(assert (= (and b!6199348 (not c!1119074)) b!6199354))

(assert (= (and b!6199354 c!1119075) b!6199353))

(assert (= (and b!6199354 (not c!1119075)) b!6199346))

(assert (= (and b!6199346 c!1119077) b!6199345))

(assert (= (and b!6199346 (not c!1119077)) b!6199355))

(assert (= (or b!6199353 b!6199345) bm!518781))

(assert (= (or b!6199353 b!6199345) bm!518776))

(assert (= (or b!6199352 bm!518781) bm!518780))

(assert (= (or b!6199352 bm!518776) bm!518779))

(assert (= (or b!6199347 b!6199352) bm!518777))

(assert (= (or b!6199347 bm!518779) bm!518778))

(declare-fun m!7032420 () Bool)

(assert (=> bm!518780 m!7032420))

(assert (=> b!6199351 m!7031708))

(declare-fun m!7032422 () Bool)

(assert (=> bm!518778 m!7032422))

(declare-fun m!7032424 () Bool)

(assert (=> bm!518777 m!7032424))

(declare-fun m!7032426 () Bool)

(assert (=> b!6199350 m!7032426))

(assert (=> bm!518620 d!1943453))

(declare-fun bs!1538235 () Bool)

(declare-fun d!1943455 () Bool)

(assert (= bs!1538235 (and d!1943455 d!1943165)))

(declare-fun lambda!338719 () Int)

(assert (=> bs!1538235 (= lambda!338719 lambda!338649)))

(declare-fun bs!1538236 () Bool)

(assert (= bs!1538236 (and d!1943455 d!1943173)))

(assert (=> bs!1538236 (= lambda!338719 lambda!338655)))

(declare-fun bs!1538237 () Bool)

(assert (= bs!1538237 (and d!1943455 d!1943395)))

(assert (=> bs!1538237 (= lambda!338719 lambda!338705)))

(declare-fun bs!1538239 () Bool)

(assert (= bs!1538239 (and d!1943455 d!1943449)))

(assert (=> bs!1538239 (= lambda!338719 lambda!338711)))

(declare-fun bs!1538241 () Bool)

(assert (= bs!1538241 (and d!1943455 d!1943187)))

(assert (=> bs!1538241 (= lambda!338719 lambda!338662)))

(declare-fun bs!1538242 () Bool)

(assert (= bs!1538242 (and d!1943455 d!1943185)))

(assert (=> bs!1538242 (= lambda!338719 lambda!338657)))

(declare-fun bs!1538244 () Bool)

(assert (= bs!1538244 (and d!1943455 d!1943195)))

(assert (=> bs!1538244 (= lambda!338719 lambda!338666)))

(declare-fun bs!1538245 () Bool)

(assert (= bs!1538245 (and d!1943455 d!1943293)))

(assert (=> bs!1538245 (= lambda!338719 lambda!338693)))

(declare-fun bs!1538246 () Bool)

(assert (= bs!1538246 (and d!1943455 d!1943181)))

(assert (=> bs!1538246 (= lambda!338719 lambda!338656)))

(assert (=> d!1943455 (= (inv!83594 (h!71041 (t!378231 zl!343))) (forall!15253 (exprs!6023 (h!71041 (t!378231 zl!343))) lambda!338719))))

(declare-fun bs!1538248 () Bool)

(assert (= bs!1538248 d!1943455))

(declare-fun m!7032428 () Bool)

(assert (=> bs!1538248 m!7032428))

(assert (=> b!6198928 d!1943455))

(declare-fun b!6199356 () Bool)

(declare-fun e!3775229 () (InoxSet Context!11046))

(declare-fun call!518787 () (InoxSet Context!11046))

(assert (=> b!6199356 (= e!3775229 call!518787)))

(declare-fun b!6199357 () Bool)

(assert (=> b!6199357 (= e!3775229 ((as const (Array Context!11046 Bool)) false))))

(declare-fun e!3775230 () (InoxSet Context!11046))

(declare-fun b!6199358 () Bool)

(assert (=> b!6199358 (= e!3775230 ((_ map or) call!518787 (derivationStepZipperUp!1313 (Context!11047 (t!378230 (exprs!6023 (Context!11047 (t!378230 (exprs!6023 lt!2342664)))))) (h!71042 s!2326))))))

(declare-fun bm!518782 () Bool)

(assert (=> bm!518782 (= call!518787 (derivationStepZipperDown!1387 (h!71040 (exprs!6023 (Context!11047 (t!378230 (exprs!6023 lt!2342664))))) (Context!11047 (t!378230 (exprs!6023 (Context!11047 (t!378230 (exprs!6023 lt!2342664)))))) (h!71042 s!2326)))))

(declare-fun d!1943457 () Bool)

(declare-fun c!1119078 () Bool)

(declare-fun e!3775228 () Bool)

(assert (=> d!1943457 (= c!1119078 e!3775228)))

(declare-fun res!2564331 () Bool)

(assert (=> d!1943457 (=> (not res!2564331) (not e!3775228))))

(assert (=> d!1943457 (= res!2564331 ((_ is Cons!64592) (exprs!6023 (Context!11047 (t!378230 (exprs!6023 lt!2342664))))))))

(assert (=> d!1943457 (= (derivationStepZipperUp!1313 (Context!11047 (t!378230 (exprs!6023 lt!2342664))) (h!71042 s!2326)) e!3775230)))

(declare-fun b!6199359 () Bool)

(assert (=> b!6199359 (= e!3775230 e!3775229)))

(declare-fun c!1119079 () Bool)

(assert (=> b!6199359 (= c!1119079 ((_ is Cons!64592) (exprs!6023 (Context!11047 (t!378230 (exprs!6023 lt!2342664))))))))

(declare-fun b!6199360 () Bool)

(assert (=> b!6199360 (= e!3775228 (nullable!6132 (h!71040 (exprs!6023 (Context!11047 (t!378230 (exprs!6023 lt!2342664)))))))))

(assert (= (and d!1943457 res!2564331) b!6199360))

(assert (= (and d!1943457 c!1119078) b!6199358))

(assert (= (and d!1943457 (not c!1119078)) b!6199359))

(assert (= (and b!6199359 c!1119079) b!6199356))

(assert (= (and b!6199359 (not c!1119079)) b!6199357))

(assert (= (or b!6199358 b!6199356) bm!518782))

(declare-fun m!7032430 () Bool)

(assert (=> b!6199358 m!7032430))

(declare-fun m!7032432 () Bool)

(assert (=> bm!518782 m!7032432))

(declare-fun m!7032434 () Bool)

(assert (=> b!6199360 m!7032434))

(assert (=> b!6198283 d!1943457))

(declare-fun d!1943459 () Bool)

(assert (=> d!1943459 (= (isConcat!1072 lt!2342700) ((_ is Concat!24984) lt!2342700))))

(assert (=> b!6198624 d!1943459))

(assert (=> d!1943145 d!1943269))

(declare-fun b!6199361 () Bool)

(declare-fun e!3775236 () (InoxSet Context!11046))

(declare-fun call!518789 () (InoxSet Context!11046))

(assert (=> b!6199361 (= e!3775236 call!518789)))

(declare-fun bm!518783 () Bool)

(declare-fun call!518790 () (InoxSet Context!11046))

(assert (=> bm!518783 (= call!518789 call!518790)))

(declare-fun b!6199362 () Bool)

(declare-fun c!1119084 () Bool)

(assert (=> b!6199362 (= c!1119084 ((_ is Star!16139) (ite c!1118828 (regTwo!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))))))))

(declare-fun e!3775233 () (InoxSet Context!11046))

(assert (=> b!6199362 (= e!3775233 e!3775236)))

(declare-fun bm!518784 () Bool)

(declare-fun call!518791 () (InoxSet Context!11046))

(declare-fun c!1119083 () Bool)

(declare-fun call!518792 () List!64716)

(assert (=> bm!518784 (= call!518791 (derivationStepZipperDown!1387 (ite c!1119083 (regTwo!32791 (ite c!1118828 (regTwo!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))))) (regOne!32790 (ite c!1118828 (regTwo!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343))))))) (ite c!1119083 (ite c!1118828 lt!2342664 (Context!11047 call!518645)) (Context!11047 call!518792)) (h!71042 s!2326)))))

(declare-fun call!518788 () (InoxSet Context!11046))

(declare-fun c!1119082 () Bool)

(declare-fun c!1119081 () Bool)

(declare-fun call!518793 () List!64716)

(declare-fun bm!518785 () Bool)

(assert (=> bm!518785 (= call!518788 (derivationStepZipperDown!1387 (ite c!1119083 (regOne!32791 (ite c!1118828 (regTwo!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))))) (ite c!1119081 (regTwo!32790 (ite c!1118828 (regTwo!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))))) (ite c!1119082 (regOne!32790 (ite c!1118828 (regTwo!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))))) (reg!16468 (ite c!1118828 (regTwo!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343))))))))) (ite (or c!1119083 c!1119081) (ite c!1118828 lt!2342664 (Context!11047 call!518645)) (Context!11047 call!518793)) (h!71042 s!2326)))))

(declare-fun bm!518786 () Bool)

(assert (=> bm!518786 (= call!518790 call!518788)))

(declare-fun b!6199364 () Bool)

(declare-fun e!3775232 () Bool)

(assert (=> b!6199364 (= c!1119081 e!3775232)))

(declare-fun res!2564332 () Bool)

(assert (=> b!6199364 (=> (not res!2564332) (not e!3775232))))

(assert (=> b!6199364 (= res!2564332 ((_ is Concat!24984) (ite c!1118828 (regTwo!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))))))))

(declare-fun e!3775235 () (InoxSet Context!11046))

(declare-fun e!3775231 () (InoxSet Context!11046))

(assert (=> b!6199364 (= e!3775235 e!3775231)))

(declare-fun b!6199365 () Bool)

(declare-fun e!3775234 () (InoxSet Context!11046))

(assert (=> b!6199365 (= e!3775234 e!3775235)))

(assert (=> b!6199365 (= c!1119083 ((_ is Union!16139) (ite c!1118828 (regTwo!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))))))))

(declare-fun b!6199366 () Bool)

(assert (=> b!6199366 (= e!3775234 (store ((as const (Array Context!11046 Bool)) false) (ite c!1118828 lt!2342664 (Context!11047 call!518645)) true))))

(declare-fun b!6199367 () Bool)

(assert (=> b!6199367 (= e!3775232 (nullable!6132 (regOne!32790 (ite c!1118828 (regTwo!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343))))))))))

(declare-fun b!6199368 () Bool)

(assert (=> b!6199368 (= e!3775231 ((_ map or) call!518791 call!518790))))

(declare-fun b!6199369 () Bool)

(assert (=> b!6199369 (= e!3775233 call!518789)))

(declare-fun b!6199370 () Bool)

(assert (=> b!6199370 (= e!3775231 e!3775233)))

(assert (=> b!6199370 (= c!1119082 ((_ is Concat!24984) (ite c!1118828 (regTwo!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))))))))

(declare-fun bm!518787 () Bool)

(assert (=> bm!518787 (= call!518792 ($colon$colon!2007 (exprs!6023 (ite c!1118828 lt!2342664 (Context!11047 call!518645))) (ite (or c!1119081 c!1119082) (regTwo!32790 (ite c!1118828 (regTwo!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))))) (ite c!1118828 (regTwo!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343))))))))))

(declare-fun b!6199371 () Bool)

(assert (=> b!6199371 (= e!3775236 ((as const (Array Context!11046 Bool)) false))))

(declare-fun bm!518788 () Bool)

(assert (=> bm!518788 (= call!518793 call!518792)))

(declare-fun d!1943461 () Bool)

(declare-fun c!1119080 () Bool)

(assert (=> d!1943461 (= c!1119080 (and ((_ is ElementMatch!16139) (ite c!1118828 (regTwo!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))))) (= (c!1118778 (ite c!1118828 (regTwo!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))))) (h!71042 s!2326))))))

(assert (=> d!1943461 (= (derivationStepZipperDown!1387 (ite c!1118828 (regTwo!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343))))) (ite c!1118828 lt!2342664 (Context!11047 call!518645)) (h!71042 s!2326)) e!3775234)))

(declare-fun b!6199363 () Bool)

(assert (=> b!6199363 (= e!3775235 ((_ map or) call!518788 call!518791))))

(assert (= (and d!1943461 c!1119080) b!6199366))

(assert (= (and d!1943461 (not c!1119080)) b!6199365))

(assert (= (and b!6199365 c!1119083) b!6199363))

(assert (= (and b!6199365 (not c!1119083)) b!6199364))

(assert (= (and b!6199364 res!2564332) b!6199367))

(assert (= (and b!6199364 c!1119081) b!6199368))

(assert (= (and b!6199364 (not c!1119081)) b!6199370))

(assert (= (and b!6199370 c!1119082) b!6199369))

(assert (= (and b!6199370 (not c!1119082)) b!6199362))

(assert (= (and b!6199362 c!1119084) b!6199361))

(assert (= (and b!6199362 (not c!1119084)) b!6199371))

(assert (= (or b!6199369 b!6199361) bm!518788))

(assert (= (or b!6199369 b!6199361) bm!518783))

(assert (= (or b!6199368 bm!518788) bm!518787))

(assert (= (or b!6199368 bm!518783) bm!518786))

(assert (= (or b!6199363 b!6199368) bm!518784))

(assert (= (or b!6199363 bm!518786) bm!518785))

(declare-fun m!7032440 () Bool)

(assert (=> bm!518787 m!7032440))

(declare-fun m!7032442 () Bool)

(assert (=> b!6199367 m!7032442))

(declare-fun m!7032446 () Bool)

(assert (=> bm!518785 m!7032446))

(declare-fun m!7032452 () Bool)

(assert (=> bm!518784 m!7032452))

(declare-fun m!7032454 () Bool)

(assert (=> b!6199366 m!7032454))

(assert (=> bm!518637 d!1943461))

(declare-fun d!1943467 () Bool)

(declare-fun res!2564338 () Bool)

(declare-fun e!3775244 () Bool)

(assert (=> d!1943467 (=> res!2564338 e!3775244)))

(assert (=> d!1943467 (= res!2564338 ((_ is Nil!64592) (exprs!6023 (h!71041 zl!343))))))

(assert (=> d!1943467 (= (forall!15253 (exprs!6023 (h!71041 zl!343)) lambda!338657) e!3775244)))

(declare-fun b!6199381 () Bool)

(declare-fun e!3775245 () Bool)

(assert (=> b!6199381 (= e!3775244 e!3775245)))

(declare-fun res!2564339 () Bool)

(assert (=> b!6199381 (=> (not res!2564339) (not e!3775245))))

(assert (=> b!6199381 (= res!2564339 (dynLambda!25472 lambda!338657 (h!71040 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun b!6199382 () Bool)

(assert (=> b!6199382 (= e!3775245 (forall!15253 (t!378230 (exprs!6023 (h!71041 zl!343))) lambda!338657))))

(assert (= (and d!1943467 (not res!2564338)) b!6199381))

(assert (= (and b!6199381 res!2564339) b!6199382))

(declare-fun b_lambda!235793 () Bool)

(assert (=> (not b_lambda!235793) (not b!6199381)))

(declare-fun m!7032456 () Bool)

(assert (=> b!6199381 m!7032456))

(declare-fun m!7032458 () Bool)

(assert (=> b!6199382 m!7032458))

(assert (=> d!1943185 d!1943467))

(declare-fun d!1943469 () Bool)

(declare-fun c!1119089 () Bool)

(assert (=> d!1943469 (= c!1119089 ((_ is Nil!64593) lt!2342754))))

(declare-fun e!3775248 () (InoxSet Context!11046))

(assert (=> d!1943469 (= (content!12072 lt!2342754) e!3775248)))

(declare-fun b!6199387 () Bool)

(assert (=> b!6199387 (= e!3775248 ((as const (Array Context!11046 Bool)) false))))

(declare-fun b!6199388 () Bool)

(assert (=> b!6199388 (= e!3775248 ((_ map or) (store ((as const (Array Context!11046 Bool)) false) (h!71041 lt!2342754) true) (content!12072 (t!378231 lt!2342754))))))

(assert (= (and d!1943469 c!1119089) b!6199387))

(assert (= (and d!1943469 (not c!1119089)) b!6199388))

(declare-fun m!7032460 () Bool)

(assert (=> b!6199388 m!7032460))

(declare-fun m!7032462 () Bool)

(assert (=> b!6199388 m!7032462))

(assert (=> b!6198854 d!1943469))

(declare-fun d!1943471 () Bool)

(assert (=> d!1943471 (= (isEmpty!36582 (t!378230 (unfocusZipperList!1560 zl!343))) ((_ is Nil!64592) (t!378230 (unfocusZipperList!1560 zl!343))))))

(assert (=> b!6198711 d!1943471))

(declare-fun bs!1538250 () Bool)

(declare-fun d!1943473 () Bool)

(assert (= bs!1538250 (and d!1943473 d!1943165)))

(declare-fun lambda!338721 () Int)

(assert (=> bs!1538250 (= lambda!338721 lambda!338649)))

(declare-fun bs!1538251 () Bool)

(assert (= bs!1538251 (and d!1943473 d!1943173)))

(assert (=> bs!1538251 (= lambda!338721 lambda!338655)))

(declare-fun bs!1538252 () Bool)

(assert (= bs!1538252 (and d!1943473 d!1943395)))

(assert (=> bs!1538252 (= lambda!338721 lambda!338705)))

(declare-fun bs!1538253 () Bool)

(assert (= bs!1538253 (and d!1943473 d!1943449)))

(assert (=> bs!1538253 (= lambda!338721 lambda!338711)))

(declare-fun bs!1538254 () Bool)

(assert (= bs!1538254 (and d!1943473 d!1943455)))

(assert (=> bs!1538254 (= lambda!338721 lambda!338719)))

(declare-fun bs!1538255 () Bool)

(assert (= bs!1538255 (and d!1943473 d!1943187)))

(assert (=> bs!1538255 (= lambda!338721 lambda!338662)))

(declare-fun bs!1538256 () Bool)

(assert (= bs!1538256 (and d!1943473 d!1943185)))

(assert (=> bs!1538256 (= lambda!338721 lambda!338657)))

(declare-fun bs!1538257 () Bool)

(assert (= bs!1538257 (and d!1943473 d!1943195)))

(assert (=> bs!1538257 (= lambda!338721 lambda!338666)))

(declare-fun bs!1538258 () Bool)

(assert (= bs!1538258 (and d!1943473 d!1943293)))

(assert (=> bs!1538258 (= lambda!338721 lambda!338693)))

(declare-fun bs!1538259 () Bool)

(assert (= bs!1538259 (and d!1943473 d!1943181)))

(assert (=> bs!1538259 (= lambda!338721 lambda!338656)))

(declare-fun b!6199389 () Bool)

(declare-fun e!3775250 () Bool)

(assert (=> b!6199389 (= e!3775250 (isEmpty!36582 (t!378230 (t!378230 (exprs!6023 (h!71041 zl!343))))))))

(declare-fun b!6199390 () Bool)

(declare-fun e!3775254 () Regex!16139)

(assert (=> b!6199390 (= e!3775254 EmptyExpr!16139)))

(declare-fun e!3775249 () Bool)

(assert (=> d!1943473 e!3775249))

(declare-fun res!2564340 () Bool)

(assert (=> d!1943473 (=> (not res!2564340) (not e!3775249))))

(declare-fun lt!2342768 () Regex!16139)

(assert (=> d!1943473 (= res!2564340 (validRegex!7875 lt!2342768))))

(declare-fun e!3775251 () Regex!16139)

(assert (=> d!1943473 (= lt!2342768 e!3775251)))

(declare-fun c!1119090 () Bool)

(assert (=> d!1943473 (= c!1119090 e!3775250)))

(declare-fun res!2564341 () Bool)

(assert (=> d!1943473 (=> (not res!2564341) (not e!3775250))))

(assert (=> d!1943473 (= res!2564341 ((_ is Cons!64592) (t!378230 (exprs!6023 (h!71041 zl!343)))))))

(assert (=> d!1943473 (forall!15253 (t!378230 (exprs!6023 (h!71041 zl!343))) lambda!338721)))

(assert (=> d!1943473 (= (generalisedConcat!1736 (t!378230 (exprs!6023 (h!71041 zl!343)))) lt!2342768)))

(declare-fun b!6199391 () Bool)

(declare-fun e!3775253 () Bool)

(assert (=> b!6199391 (= e!3775253 (= lt!2342768 (head!12787 (t!378230 (exprs!6023 (h!71041 zl!343))))))))

(declare-fun b!6199392 () Bool)

(assert (=> b!6199392 (= e!3775254 (Concat!24984 (h!71040 (t!378230 (exprs!6023 (h!71041 zl!343)))) (generalisedConcat!1736 (t!378230 (t!378230 (exprs!6023 (h!71041 zl!343)))))))))

(declare-fun b!6199393 () Bool)

(declare-fun e!3775252 () Bool)

(assert (=> b!6199393 (= e!3775249 e!3775252)))

(declare-fun c!1119093 () Bool)

(assert (=> b!6199393 (= c!1119093 (isEmpty!36582 (t!378230 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun b!6199394 () Bool)

(assert (=> b!6199394 (= e!3775252 e!3775253)))

(declare-fun c!1119091 () Bool)

(assert (=> b!6199394 (= c!1119091 (isEmpty!36582 (tail!11872 (t!378230 (exprs!6023 (h!71041 zl!343))))))))

(declare-fun b!6199395 () Bool)

(assert (=> b!6199395 (= e!3775252 (isEmptyExpr!1549 lt!2342768))))

(declare-fun b!6199396 () Bool)

(assert (=> b!6199396 (= e!3775253 (isConcat!1072 lt!2342768))))

(declare-fun b!6199397 () Bool)

(assert (=> b!6199397 (= e!3775251 e!3775254)))

(declare-fun c!1119092 () Bool)

(assert (=> b!6199397 (= c!1119092 ((_ is Cons!64592) (t!378230 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun b!6199398 () Bool)

(assert (=> b!6199398 (= e!3775251 (h!71040 (t!378230 (exprs!6023 (h!71041 zl!343)))))))

(assert (= (and d!1943473 res!2564341) b!6199389))

(assert (= (and d!1943473 c!1119090) b!6199398))

(assert (= (and d!1943473 (not c!1119090)) b!6199397))

(assert (= (and b!6199397 c!1119092) b!6199392))

(assert (= (and b!6199397 (not c!1119092)) b!6199390))

(assert (= (and d!1943473 res!2564340) b!6199393))

(assert (= (and b!6199393 c!1119093) b!6199395))

(assert (= (and b!6199393 (not c!1119093)) b!6199394))

(assert (= (and b!6199394 c!1119091) b!6199391))

(assert (= (and b!6199394 (not c!1119091)) b!6199396))

(declare-fun m!7032464 () Bool)

(assert (=> b!6199389 m!7032464))

(declare-fun m!7032466 () Bool)

(assert (=> b!6199395 m!7032466))

(declare-fun m!7032468 () Bool)

(assert (=> d!1943473 m!7032468))

(declare-fun m!7032470 () Bool)

(assert (=> d!1943473 m!7032470))

(declare-fun m!7032472 () Bool)

(assert (=> b!6199394 m!7032472))

(assert (=> b!6199394 m!7032472))

(declare-fun m!7032474 () Bool)

(assert (=> b!6199394 m!7032474))

(declare-fun m!7032476 () Bool)

(assert (=> b!6199392 m!7032476))

(declare-fun m!7032478 () Bool)

(assert (=> b!6199391 m!7032478))

(declare-fun m!7032480 () Bool)

(assert (=> b!6199396 m!7032480))

(assert (=> b!6199393 m!7031618))

(assert (=> b!6198620 d!1943473))

(declare-fun d!1943475 () Bool)

(assert (=> d!1943475 (= (Exists!3209 lambda!338687) (choose!46069 lambda!338687))))

(declare-fun bs!1538260 () Bool)

(assert (= bs!1538260 d!1943475))

(declare-fun m!7032482 () Bool)

(assert (=> bs!1538260 m!7032482))

(assert (=> d!1943217 d!1943475))

(declare-fun d!1943477 () Bool)

(assert (=> d!1943477 (= (Exists!3209 lambda!338688) (choose!46069 lambda!338688))))

(declare-fun bs!1538261 () Bool)

(assert (= bs!1538261 d!1943477))

(declare-fun m!7032484 () Bool)

(assert (=> bs!1538261 m!7032484))

(assert (=> d!1943217 d!1943477))

(declare-fun bs!1538264 () Bool)

(declare-fun d!1943479 () Bool)

(assert (= bs!1538264 (and d!1943479 d!1943209)))

(declare-fun lambda!338726 () Int)

(assert (=> bs!1538264 (= lambda!338726 lambda!338682)))

(declare-fun bs!1538265 () Bool)

(assert (= bs!1538265 (and d!1943479 b!6198488)))

(assert (=> bs!1538265 (not (= lambda!338726 lambda!338646))))

(declare-fun bs!1538266 () Bool)

(assert (= bs!1538266 (and d!1943479 b!6198233)))

(assert (=> bs!1538266 (not (= lambda!338726 lambda!338630))))

(assert (=> bs!1538266 (= lambda!338726 lambda!338629)))

(declare-fun bs!1538267 () Bool)

(assert (= bs!1538267 (and d!1943479 b!6198496)))

(assert (=> bs!1538267 (not (= lambda!338726 lambda!338645))))

(declare-fun bs!1538268 () Bool)

(assert (= bs!1538268 (and d!1943479 d!1943217)))

(assert (=> bs!1538268 (not (= lambda!338726 lambda!338688))))

(declare-fun bs!1538269 () Bool)

(assert (= bs!1538269 (and d!1943479 b!6199180)))

(assert (=> bs!1538269 (not (= lambda!338726 lambda!338701))))

(declare-fun bs!1538270 () Bool)

(assert (= bs!1538270 (and d!1943479 b!6199336)))

(assert (=> bs!1538270 (not (= lambda!338726 lambda!338712))))

(declare-fun bs!1538271 () Bool)

(assert (= bs!1538271 (and d!1943479 b!6199172)))

(assert (=> bs!1538271 (not (= lambda!338726 lambda!338702))))

(declare-fun bs!1538272 () Bool)

(assert (= bs!1538272 (and d!1943479 b!6199328)))

(assert (=> bs!1538272 (not (= lambda!338726 lambda!338715))))

(assert (=> bs!1538268 (= lambda!338726 lambda!338687)))

(assert (=> d!1943479 true))

(assert (=> d!1943479 true))

(assert (=> d!1943479 true))

(declare-fun lambda!338727 () Int)

(assert (=> bs!1538264 (not (= lambda!338727 lambda!338682))))

(assert (=> bs!1538265 (= lambda!338727 lambda!338646)))

(assert (=> bs!1538266 (= lambda!338727 lambda!338630)))

(assert (=> bs!1538267 (not (= lambda!338727 lambda!338645))))

(assert (=> bs!1538268 (= lambda!338727 lambda!338688)))

(assert (=> bs!1538269 (not (= lambda!338727 lambda!338701))))

(assert (=> bs!1538270 (not (= lambda!338727 lambda!338712))))

(assert (=> bs!1538271 (= (and (= (regOne!32790 r!7292) (regOne!32790 (regOne!32791 r!7292))) (= (regTwo!32790 r!7292) (regTwo!32790 (regOne!32791 r!7292)))) (= lambda!338727 lambda!338702))))

(assert (=> bs!1538272 (= (and (= (regOne!32790 r!7292) (regOne!32790 (regTwo!32791 r!7292))) (= (regTwo!32790 r!7292) (regTwo!32790 (regTwo!32791 r!7292)))) (= lambda!338727 lambda!338715))))

(assert (=> bs!1538268 (not (= lambda!338727 lambda!338687))))

(assert (=> bs!1538266 (not (= lambda!338727 lambda!338629))))

(declare-fun bs!1538273 () Bool)

(assert (= bs!1538273 d!1943479))

(assert (=> bs!1538273 (not (= lambda!338727 lambda!338726))))

(assert (=> d!1943479 true))

(assert (=> d!1943479 true))

(assert (=> d!1943479 true))

(assert (=> d!1943479 (= (Exists!3209 lambda!338726) (Exists!3209 lambda!338727))))

(assert (=> d!1943479 true))

(declare-fun _$90!1965 () Unit!157887)

(assert (=> d!1943479 (= (choose!46072 (regOne!32790 r!7292) (regTwo!32790 r!7292) s!2326) _$90!1965)))

(declare-fun m!7032584 () Bool)

(assert (=> bs!1538273 m!7032584))

(declare-fun m!7032586 () Bool)

(assert (=> bs!1538273 m!7032586))

(assert (=> d!1943217 d!1943479))

(assert (=> d!1943217 d!1943421))

(declare-fun d!1943499 () Bool)

(assert (=> d!1943499 (= (isEmpty!36582 (unfocusZipperList!1560 zl!343)) ((_ is Nil!64592) (unfocusZipperList!1560 zl!343)))))

(assert (=> b!6198713 d!1943499))

(declare-fun d!1943503 () Bool)

(assert (=> d!1943503 (= (isEmpty!36582 (tail!11872 (exprs!6023 (h!71041 zl!343)))) ((_ is Nil!64592) (tail!11872 (exprs!6023 (h!71041 zl!343)))))))

(assert (=> b!6198622 d!1943503))

(declare-fun d!1943505 () Bool)

(assert (=> d!1943505 (= (tail!11872 (exprs!6023 (h!71041 zl!343))) (t!378230 (exprs!6023 (h!71041 zl!343))))))

(assert (=> b!6198622 d!1943505))

(declare-fun d!1943507 () Bool)

(declare-fun c!1119113 () Bool)

(assert (=> d!1943507 (= c!1119113 (isEmpty!36585 (tail!11871 (t!378232 s!2326))))))

(declare-fun e!3775301 () Bool)

(assert (=> d!1943507 (= (matchZipper!2151 (derivationStepZipper!2104 ((_ map or) lt!2342665 lt!2342667) (head!12786 (t!378232 s!2326))) (tail!11871 (t!378232 s!2326))) e!3775301)))

(declare-fun b!6199479 () Bool)

(assert (=> b!6199479 (= e!3775301 (nullableZipper!1912 (derivationStepZipper!2104 ((_ map or) lt!2342665 lt!2342667) (head!12786 (t!378232 s!2326)))))))

(declare-fun b!6199480 () Bool)

(assert (=> b!6199480 (= e!3775301 (matchZipper!2151 (derivationStepZipper!2104 (derivationStepZipper!2104 ((_ map or) lt!2342665 lt!2342667) (head!12786 (t!378232 s!2326))) (head!12786 (tail!11871 (t!378232 s!2326)))) (tail!11871 (tail!11871 (t!378232 s!2326)))))))

(assert (= (and d!1943507 c!1119113) b!6199479))

(assert (= (and d!1943507 (not c!1119113)) b!6199480))

(assert (=> d!1943507 m!7031734))

(assert (=> d!1943507 m!7032058))

(assert (=> b!6199479 m!7031740))

(declare-fun m!7032588 () Bool)

(assert (=> b!6199479 m!7032588))

(assert (=> b!6199480 m!7031734))

(assert (=> b!6199480 m!7032062))

(assert (=> b!6199480 m!7031740))

(assert (=> b!6199480 m!7032062))

(declare-fun m!7032594 () Bool)

(assert (=> b!6199480 m!7032594))

(assert (=> b!6199480 m!7031734))

(assert (=> b!6199480 m!7032066))

(assert (=> b!6199480 m!7032594))

(assert (=> b!6199480 m!7032066))

(declare-fun m!7032598 () Bool)

(assert (=> b!6199480 m!7032598))

(assert (=> b!6198409 d!1943507))

(declare-fun bs!1538274 () Bool)

(declare-fun d!1943511 () Bool)

(assert (= bs!1538274 (and d!1943511 b!6198226)))

(declare-fun lambda!338728 () Int)

(assert (=> bs!1538274 (= (= (head!12786 (t!378232 s!2326)) (h!71042 s!2326)) (= lambda!338728 lambda!338631))))

(declare-fun bs!1538275 () Bool)

(assert (= bs!1538275 (and d!1943511 d!1943259)))

(assert (=> bs!1538275 (= lambda!338728 lambda!338692)))

(declare-fun bs!1538276 () Bool)

(assert (= bs!1538276 (and d!1943511 d!1943389)))

(assert (=> bs!1538276 (= lambda!338728 lambda!338704)))

(assert (=> d!1943511 true))

(assert (=> d!1943511 (= (derivationStepZipper!2104 ((_ map or) lt!2342665 lt!2342667) (head!12786 (t!378232 s!2326))) (flatMap!1644 ((_ map or) lt!2342665 lt!2342667) lambda!338728))))

(declare-fun bs!1538278 () Bool)

(assert (= bs!1538278 d!1943511))

(declare-fun m!7032604 () Bool)

(assert (=> bs!1538278 m!7032604))

(assert (=> b!6198409 d!1943511))

(assert (=> b!6198409 d!1943261))

(assert (=> b!6198409 d!1943263))

(declare-fun b!6199485 () Bool)

(declare-fun e!3775306 () Bool)

(declare-fun call!518810 () Bool)

(assert (=> b!6199485 (= e!3775306 call!518810)))

(declare-fun b!6199486 () Bool)

(declare-fun e!3775310 () Bool)

(declare-fun e!3775307 () Bool)

(assert (=> b!6199486 (= e!3775310 e!3775307)))

(declare-fun res!2564387 () Bool)

(declare-fun call!518811 () Bool)

(assert (=> b!6199486 (= res!2564387 call!518811)))

(assert (=> b!6199486 (=> res!2564387 e!3775307)))

(declare-fun bm!518805 () Bool)

(declare-fun c!1119115 () Bool)

(assert (=> bm!518805 (= call!518810 (nullable!6132 (ite c!1119115 (regTwo!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))))))))

(declare-fun b!6199487 () Bool)

(assert (=> b!6199487 (= e!3775307 call!518810)))

(declare-fun b!6199488 () Bool)

(declare-fun e!3775309 () Bool)

(declare-fun e!3775308 () Bool)

(assert (=> b!6199488 (= e!3775309 e!3775308)))

(declare-fun res!2564389 () Bool)

(assert (=> b!6199488 (=> (not res!2564389) (not e!3775308))))

(assert (=> b!6199488 (= res!2564389 (and (not ((_ is EmptyLang!16139) (h!71040 (exprs!6023 (h!71041 zl!343))))) (not ((_ is ElementMatch!16139) (h!71040 (exprs!6023 (h!71041 zl!343)))))))))

(declare-fun b!6199489 () Bool)

(declare-fun e!3775305 () Bool)

(assert (=> b!6199489 (= e!3775308 e!3775305)))

(declare-fun res!2564386 () Bool)

(assert (=> b!6199489 (=> res!2564386 e!3775305)))

(assert (=> b!6199489 (= res!2564386 ((_ is Star!16139) (h!71040 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun d!1943515 () Bool)

(declare-fun res!2564390 () Bool)

(assert (=> d!1943515 (=> res!2564390 e!3775309)))

(assert (=> d!1943515 (= res!2564390 ((_ is EmptyExpr!16139) (h!71040 (exprs!6023 (h!71041 zl!343)))))))

(assert (=> d!1943515 (= (nullableFct!2087 (h!71040 (exprs!6023 (h!71041 zl!343)))) e!3775309)))

(declare-fun b!6199490 () Bool)

(assert (=> b!6199490 (= e!3775305 e!3775310)))

(assert (=> b!6199490 (= c!1119115 ((_ is Union!16139) (h!71040 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun b!6199491 () Bool)

(assert (=> b!6199491 (= e!3775310 e!3775306)))

(declare-fun res!2564388 () Bool)

(assert (=> b!6199491 (= res!2564388 call!518811)))

(assert (=> b!6199491 (=> (not res!2564388) (not e!3775306))))

(declare-fun bm!518806 () Bool)

(assert (=> bm!518806 (= call!518811 (nullable!6132 (ite c!1119115 (regOne!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))))))))

(assert (= (and d!1943515 (not res!2564390)) b!6199488))

(assert (= (and b!6199488 res!2564389) b!6199489))

(assert (= (and b!6199489 (not res!2564386)) b!6199490))

(assert (= (and b!6199490 c!1119115) b!6199486))

(assert (= (and b!6199490 (not c!1119115)) b!6199491))

(assert (= (and b!6199486 (not res!2564387)) b!6199487))

(assert (= (and b!6199491 res!2564388) b!6199485))

(assert (= (or b!6199487 b!6199485) bm!518805))

(assert (= (or b!6199486 b!6199491) bm!518806))

(declare-fun m!7032606 () Bool)

(assert (=> bm!518805 m!7032606))

(declare-fun m!7032608 () Bool)

(assert (=> bm!518806 m!7032608))

(assert (=> d!1943125 d!1943515))

(declare-fun b!6199492 () Bool)

(declare-fun e!3775316 () (InoxSet Context!11046))

(declare-fun call!518813 () (InoxSet Context!11046))

(assert (=> b!6199492 (= e!3775316 call!518813)))

(declare-fun bm!518807 () Bool)

(declare-fun call!518814 () (InoxSet Context!11046))

(assert (=> bm!518807 (= call!518813 call!518814)))

(declare-fun b!6199493 () Bool)

(declare-fun c!1119120 () Bool)

(assert (=> b!6199493 (= c!1119120 ((_ is Star!16139) (ite c!1118828 (regOne!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118826 (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118827 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (reg!16468 (h!71040 (exprs!6023 (h!71041 zl!343)))))))))))

(declare-fun e!3775313 () (InoxSet Context!11046))

(assert (=> b!6199493 (= e!3775313 e!3775316)))

(declare-fun call!518816 () List!64716)

(declare-fun c!1119119 () Bool)

(declare-fun call!518815 () (InoxSet Context!11046))

(declare-fun bm!518808 () Bool)

(assert (=> bm!518808 (= call!518815 (derivationStepZipperDown!1387 (ite c!1119119 (regTwo!32791 (ite c!1118828 (regOne!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118826 (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118827 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (reg!16468 (h!71040 (exprs!6023 (h!71041 zl!343)))))))) (regOne!32790 (ite c!1118828 (regOne!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118826 (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118827 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (reg!16468 (h!71040 (exprs!6023 (h!71041 zl!343))))))))) (ite c!1119119 (ite (or c!1118828 c!1118826) lt!2342664 (Context!11047 call!518646)) (Context!11047 call!518816)) (h!71042 s!2326)))))

(declare-fun bm!518809 () Bool)

(declare-fun call!518817 () List!64716)

(declare-fun c!1119118 () Bool)

(declare-fun call!518812 () (InoxSet Context!11046))

(declare-fun c!1119117 () Bool)

(assert (=> bm!518809 (= call!518812 (derivationStepZipperDown!1387 (ite c!1119119 (regOne!32791 (ite c!1118828 (regOne!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118826 (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118827 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (reg!16468 (h!71040 (exprs!6023 (h!71041 zl!343)))))))) (ite c!1119117 (regTwo!32790 (ite c!1118828 (regOne!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118826 (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118827 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (reg!16468 (h!71040 (exprs!6023 (h!71041 zl!343)))))))) (ite c!1119118 (regOne!32790 (ite c!1118828 (regOne!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118826 (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118827 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (reg!16468 (h!71040 (exprs!6023 (h!71041 zl!343)))))))) (reg!16468 (ite c!1118828 (regOne!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118826 (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118827 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (reg!16468 (h!71040 (exprs!6023 (h!71041 zl!343))))))))))) (ite (or c!1119119 c!1119117) (ite (or c!1118828 c!1118826) lt!2342664 (Context!11047 call!518646)) (Context!11047 call!518817)) (h!71042 s!2326)))))

(declare-fun bm!518810 () Bool)

(assert (=> bm!518810 (= call!518814 call!518812)))

(declare-fun b!6199495 () Bool)

(declare-fun e!3775312 () Bool)

(assert (=> b!6199495 (= c!1119117 e!3775312)))

(declare-fun res!2564391 () Bool)

(assert (=> b!6199495 (=> (not res!2564391) (not e!3775312))))

(assert (=> b!6199495 (= res!2564391 ((_ is Concat!24984) (ite c!1118828 (regOne!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118826 (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118827 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (reg!16468 (h!71040 (exprs!6023 (h!71041 zl!343)))))))))))

(declare-fun e!3775315 () (InoxSet Context!11046))

(declare-fun e!3775311 () (InoxSet Context!11046))

(assert (=> b!6199495 (= e!3775315 e!3775311)))

(declare-fun b!6199496 () Bool)

(declare-fun e!3775314 () (InoxSet Context!11046))

(assert (=> b!6199496 (= e!3775314 e!3775315)))

(assert (=> b!6199496 (= c!1119119 ((_ is Union!16139) (ite c!1118828 (regOne!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118826 (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118827 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (reg!16468 (h!71040 (exprs!6023 (h!71041 zl!343)))))))))))

(declare-fun b!6199497 () Bool)

(assert (=> b!6199497 (= e!3775314 (store ((as const (Array Context!11046 Bool)) false) (ite (or c!1118828 c!1118826) lt!2342664 (Context!11047 call!518646)) true))))

(declare-fun b!6199498 () Bool)

(assert (=> b!6199498 (= e!3775312 (nullable!6132 (regOne!32790 (ite c!1118828 (regOne!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118826 (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118827 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (reg!16468 (h!71040 (exprs!6023 (h!71041 zl!343))))))))))))

(declare-fun b!6199499 () Bool)

(assert (=> b!6199499 (= e!3775311 ((_ map or) call!518815 call!518814))))

(declare-fun b!6199500 () Bool)

(assert (=> b!6199500 (= e!3775313 call!518813)))

(declare-fun b!6199501 () Bool)

(assert (=> b!6199501 (= e!3775311 e!3775313)))

(assert (=> b!6199501 (= c!1119118 ((_ is Concat!24984) (ite c!1118828 (regOne!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118826 (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118827 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (reg!16468 (h!71040 (exprs!6023 (h!71041 zl!343)))))))))))

(declare-fun bm!518811 () Bool)

(assert (=> bm!518811 (= call!518816 ($colon$colon!2007 (exprs!6023 (ite (or c!1118828 c!1118826) lt!2342664 (Context!11047 call!518646))) (ite (or c!1119117 c!1119118) (regTwo!32790 (ite c!1118828 (regOne!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118826 (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118827 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (reg!16468 (h!71040 (exprs!6023 (h!71041 zl!343)))))))) (ite c!1118828 (regOne!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118826 (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118827 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (reg!16468 (h!71040 (exprs!6023 (h!71041 zl!343))))))))))))

(declare-fun b!6199502 () Bool)

(assert (=> b!6199502 (= e!3775316 ((as const (Array Context!11046 Bool)) false))))

(declare-fun bm!518812 () Bool)

(assert (=> bm!518812 (= call!518817 call!518816)))

(declare-fun c!1119116 () Bool)

(declare-fun d!1943517 () Bool)

(assert (=> d!1943517 (= c!1119116 (and ((_ is ElementMatch!16139) (ite c!1118828 (regOne!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118826 (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118827 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (reg!16468 (h!71040 (exprs!6023 (h!71041 zl!343)))))))) (= (c!1118778 (ite c!1118828 (regOne!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118826 (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118827 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (reg!16468 (h!71040 (exprs!6023 (h!71041 zl!343)))))))) (h!71042 s!2326))))))

(assert (=> d!1943517 (= (derivationStepZipperDown!1387 (ite c!1118828 (regOne!32791 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118826 (regTwo!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (ite c!1118827 (regOne!32790 (h!71040 (exprs!6023 (h!71041 zl!343)))) (reg!16468 (h!71040 (exprs!6023 (h!71041 zl!343))))))) (ite (or c!1118828 c!1118826) lt!2342664 (Context!11047 call!518646)) (h!71042 s!2326)) e!3775314)))

(declare-fun b!6199494 () Bool)

(assert (=> b!6199494 (= e!3775315 ((_ map or) call!518812 call!518815))))

(assert (= (and d!1943517 c!1119116) b!6199497))

(assert (= (and d!1943517 (not c!1119116)) b!6199496))

(assert (= (and b!6199496 c!1119119) b!6199494))

(assert (= (and b!6199496 (not c!1119119)) b!6199495))

(assert (= (and b!6199495 res!2564391) b!6199498))

(assert (= (and b!6199495 c!1119117) b!6199499))

(assert (= (and b!6199495 (not c!1119117)) b!6199501))

(assert (= (and b!6199501 c!1119118) b!6199500))

(assert (= (and b!6199501 (not c!1119118)) b!6199493))

(assert (= (and b!6199493 c!1119120) b!6199492))

(assert (= (and b!6199493 (not c!1119120)) b!6199502))

(assert (= (or b!6199500 b!6199492) bm!518812))

(assert (= (or b!6199500 b!6199492) bm!518807))

(assert (= (or b!6199499 bm!518812) bm!518811))

(assert (= (or b!6199499 bm!518807) bm!518810))

(assert (= (or b!6199494 b!6199499) bm!518808))

(assert (= (or b!6199494 bm!518810) bm!518809))

(declare-fun m!7032616 () Bool)

(assert (=> bm!518811 m!7032616))

(declare-fun m!7032618 () Bool)

(assert (=> b!6199498 m!7032618))

(declare-fun m!7032620 () Bool)

(assert (=> bm!518809 m!7032620))

(declare-fun m!7032622 () Bool)

(assert (=> bm!518808 m!7032622))

(declare-fun m!7032624 () Bool)

(assert (=> b!6199497 m!7032624))

(assert (=> bm!518638 d!1943517))

(assert (=> bm!518674 d!1943255))

(declare-fun d!1943521 () Bool)

(assert (=> d!1943521 (= (nullable!6132 r!7292) (nullableFct!2087 r!7292))))

(declare-fun bs!1538286 () Bool)

(assert (= bs!1538286 d!1943521))

(declare-fun m!7032626 () Bool)

(assert (=> bs!1538286 m!7032626))

(assert (=> b!6198571 d!1943521))

(assert (=> d!1943139 d!1943145))

(assert (=> d!1943139 d!1943141))

(declare-fun e!3775322 () Bool)

(declare-fun d!1943523 () Bool)

(assert (=> d!1943523 (= (matchZipper!2151 ((_ map or) lt!2342665 lt!2342667) (t!378232 s!2326)) e!3775322)))

(declare-fun res!2564397 () Bool)

(assert (=> d!1943523 (=> res!2564397 e!3775322)))

(assert (=> d!1943523 (= res!2564397 (matchZipper!2151 lt!2342665 (t!378232 s!2326)))))

(assert (=> d!1943523 true))

(declare-fun _$48!1842 () Unit!157887)

(assert (=> d!1943523 (= (choose!46060 lt!2342665 lt!2342667 (t!378232 s!2326)) _$48!1842)))

(declare-fun b!6199508 () Bool)

(assert (=> b!6199508 (= e!3775322 (matchZipper!2151 lt!2342667 (t!378232 s!2326)))))

(assert (= (and d!1943523 (not res!2564397)) b!6199508))

(assert (=> d!1943523 m!7031626))

(assert (=> d!1943523 m!7031624))

(assert (=> b!6199508 m!7031586))

(assert (=> d!1943139 d!1943523))

(declare-fun bm!518813 () Bool)

(declare-fun call!518820 () Bool)

(declare-fun call!518818 () Bool)

(assert (=> bm!518813 (= call!518820 call!518818)))

(declare-fun bm!518814 () Bool)

(declare-fun c!1119123 () Bool)

(declare-fun call!518819 () Bool)

(assert (=> bm!518814 (= call!518819 (validRegex!7875 (ite c!1119123 (regTwo!32791 (ite c!1118914 (regTwo!32791 r!7292) (regTwo!32790 r!7292))) (regTwo!32790 (ite c!1118914 (regTwo!32791 r!7292) (regTwo!32790 r!7292))))))))

(declare-fun b!6199509 () Bool)

(declare-fun e!3775326 () Bool)

(declare-fun e!3775323 () Bool)

(assert (=> b!6199509 (= e!3775326 e!3775323)))

(declare-fun c!1119124 () Bool)

(assert (=> b!6199509 (= c!1119124 ((_ is Star!16139) (ite c!1118914 (regTwo!32791 r!7292) (regTwo!32790 r!7292))))))

(declare-fun bm!518815 () Bool)

(assert (=> bm!518815 (= call!518818 (validRegex!7875 (ite c!1119124 (reg!16468 (ite c!1118914 (regTwo!32791 r!7292) (regTwo!32790 r!7292))) (ite c!1119123 (regOne!32791 (ite c!1118914 (regTwo!32791 r!7292) (regTwo!32790 r!7292))) (regOne!32790 (ite c!1118914 (regTwo!32791 r!7292) (regTwo!32790 r!7292)))))))))

(declare-fun b!6199510 () Bool)

(declare-fun e!3775325 () Bool)

(assert (=> b!6199510 (= e!3775325 call!518818)))

(declare-fun b!6199512 () Bool)

(declare-fun e!3775328 () Bool)

(declare-fun e!3775327 () Bool)

(assert (=> b!6199512 (= e!3775328 e!3775327)))

(declare-fun res!2564402 () Bool)

(assert (=> b!6199512 (=> (not res!2564402) (not e!3775327))))

(assert (=> b!6199512 (= res!2564402 call!518820)))

(declare-fun b!6199513 () Bool)

(declare-fun res!2564401 () Bool)

(declare-fun e!3775329 () Bool)

(assert (=> b!6199513 (=> (not res!2564401) (not e!3775329))))

(assert (=> b!6199513 (= res!2564401 call!518820)))

(declare-fun e!3775324 () Bool)

(assert (=> b!6199513 (= e!3775324 e!3775329)))

(declare-fun b!6199514 () Bool)

(assert (=> b!6199514 (= e!3775329 call!518819)))

(declare-fun b!6199515 () Bool)

(assert (=> b!6199515 (= e!3775323 e!3775325)))

(declare-fun res!2564399 () Bool)

(assert (=> b!6199515 (= res!2564399 (not (nullable!6132 (reg!16468 (ite c!1118914 (regTwo!32791 r!7292) (regTwo!32790 r!7292))))))))

(assert (=> b!6199515 (=> (not res!2564399) (not e!3775325))))

(declare-fun b!6199511 () Bool)

(declare-fun res!2564398 () Bool)

(assert (=> b!6199511 (=> res!2564398 e!3775328)))

(assert (=> b!6199511 (= res!2564398 (not ((_ is Concat!24984) (ite c!1118914 (regTwo!32791 r!7292) (regTwo!32790 r!7292)))))))

(assert (=> b!6199511 (= e!3775324 e!3775328)))

(declare-fun d!1943527 () Bool)

(declare-fun res!2564400 () Bool)

(assert (=> d!1943527 (=> res!2564400 e!3775326)))

(assert (=> d!1943527 (= res!2564400 ((_ is ElementMatch!16139) (ite c!1118914 (regTwo!32791 r!7292) (regTwo!32790 r!7292))))))

(assert (=> d!1943527 (= (validRegex!7875 (ite c!1118914 (regTwo!32791 r!7292) (regTwo!32790 r!7292))) e!3775326)))

(declare-fun b!6199516 () Bool)

(assert (=> b!6199516 (= e!3775327 call!518819)))

(declare-fun b!6199517 () Bool)

(assert (=> b!6199517 (= e!3775323 e!3775324)))

(assert (=> b!6199517 (= c!1119123 ((_ is Union!16139) (ite c!1118914 (regTwo!32791 r!7292) (regTwo!32790 r!7292))))))

(assert (= (and d!1943527 (not res!2564400)) b!6199509))

(assert (= (and b!6199509 c!1119124) b!6199515))

(assert (= (and b!6199509 (not c!1119124)) b!6199517))

(assert (= (and b!6199515 res!2564399) b!6199510))

(assert (= (and b!6199517 c!1119123) b!6199513))

(assert (= (and b!6199517 (not c!1119123)) b!6199511))

(assert (= (and b!6199513 res!2564401) b!6199514))

(assert (= (and b!6199511 (not res!2564398)) b!6199512))

(assert (= (and b!6199512 res!2564402) b!6199516))

(assert (= (or b!6199514 b!6199516) bm!518814))

(assert (= (or b!6199513 b!6199512) bm!518813))

(assert (= (or b!6199510 bm!518813) bm!518815))

(declare-fun m!7032630 () Bool)

(assert (=> bm!518814 m!7032630))

(declare-fun m!7032632 () Bool)

(assert (=> bm!518815 m!7032632))

(declare-fun m!7032636 () Bool)

(assert (=> b!6199515 m!7032636))

(assert (=> bm!518690 d!1943527))

(assert (=> d!1943209 d!1943199))

(assert (=> d!1943209 d!1943233))

(declare-fun bs!1538299 () Bool)

(declare-fun d!1943533 () Bool)

(assert (= bs!1538299 (and d!1943533 d!1943479)))

(declare-fun lambda!338736 () Int)

(assert (=> bs!1538299 (not (= lambda!338736 lambda!338727))))

(declare-fun bs!1538300 () Bool)

(assert (= bs!1538300 (and d!1943533 d!1943209)))

(assert (=> bs!1538300 (= lambda!338736 lambda!338682)))

(declare-fun bs!1538301 () Bool)

(assert (= bs!1538301 (and d!1943533 b!6198488)))

(assert (=> bs!1538301 (not (= lambda!338736 lambda!338646))))

(declare-fun bs!1538302 () Bool)

(assert (= bs!1538302 (and d!1943533 b!6198233)))

(assert (=> bs!1538302 (not (= lambda!338736 lambda!338630))))

(declare-fun bs!1538303 () Bool)

(assert (= bs!1538303 (and d!1943533 b!6198496)))

(assert (=> bs!1538303 (not (= lambda!338736 lambda!338645))))

(declare-fun bs!1538304 () Bool)

(assert (= bs!1538304 (and d!1943533 d!1943217)))

(assert (=> bs!1538304 (not (= lambda!338736 lambda!338688))))

(declare-fun bs!1538305 () Bool)

(assert (= bs!1538305 (and d!1943533 b!6199180)))

(assert (=> bs!1538305 (not (= lambda!338736 lambda!338701))))

(declare-fun bs!1538306 () Bool)

(assert (= bs!1538306 (and d!1943533 b!6199336)))

(assert (=> bs!1538306 (not (= lambda!338736 lambda!338712))))

(declare-fun bs!1538307 () Bool)

(assert (= bs!1538307 (and d!1943533 b!6199172)))

(assert (=> bs!1538307 (not (= lambda!338736 lambda!338702))))

(declare-fun bs!1538308 () Bool)

(assert (= bs!1538308 (and d!1943533 b!6199328)))

(assert (=> bs!1538308 (not (= lambda!338736 lambda!338715))))

(assert (=> bs!1538304 (= lambda!338736 lambda!338687)))

(assert (=> bs!1538302 (= lambda!338736 lambda!338629)))

(assert (=> bs!1538299 (= lambda!338736 lambda!338726)))

(assert (=> d!1943533 true))

(assert (=> d!1943533 true))

(assert (=> d!1943533 true))

(assert (=> d!1943533 (= (isDefined!12733 (findConcatSeparation!2444 (regOne!32790 r!7292) (regTwo!32790 r!7292) Nil!64594 s!2326 s!2326)) (Exists!3209 lambda!338736))))

(assert (=> d!1943533 true))

(declare-fun _$89!2340 () Unit!157887)

(assert (=> d!1943533 (= (choose!46071 (regOne!32790 r!7292) (regTwo!32790 r!7292) s!2326) _$89!2340)))

(declare-fun bs!1538309 () Bool)

(assert (= bs!1538309 d!1943533))

(assert (=> bs!1538309 m!7031632))

(assert (=> bs!1538309 m!7031632))

(assert (=> bs!1538309 m!7031634))

(declare-fun m!7032652 () Bool)

(assert (=> bs!1538309 m!7032652))

(assert (=> d!1943209 d!1943533))

(assert (=> d!1943209 d!1943421))

(declare-fun d!1943545 () Bool)

(assert (=> d!1943545 (= (Exists!3209 lambda!338682) (choose!46069 lambda!338682))))

(declare-fun bs!1538310 () Bool)

(assert (= bs!1538310 d!1943545))

(declare-fun m!7032654 () Bool)

(assert (=> bs!1538310 m!7032654))

(assert (=> d!1943209 d!1943545))

(declare-fun bm!518822 () Bool)

(declare-fun call!518829 () Bool)

(declare-fun call!518827 () Bool)

(assert (=> bm!518822 (= call!518829 call!518827)))

(declare-fun bm!518823 () Bool)

(declare-fun call!518828 () Bool)

(declare-fun c!1119130 () Bool)

(assert (=> bm!518823 (= call!518828 (validRegex!7875 (ite c!1119130 (regTwo!32791 lt!2342675) (regTwo!32790 lt!2342675))))))

(declare-fun b!6199539 () Bool)

(declare-fun e!3775345 () Bool)

(declare-fun e!3775342 () Bool)

(assert (=> b!6199539 (= e!3775345 e!3775342)))

(declare-fun c!1119131 () Bool)

(assert (=> b!6199539 (= c!1119131 ((_ is Star!16139) lt!2342675))))

(declare-fun bm!518824 () Bool)

(assert (=> bm!518824 (= call!518827 (validRegex!7875 (ite c!1119131 (reg!16468 lt!2342675) (ite c!1119130 (regOne!32791 lt!2342675) (regOne!32790 lt!2342675)))))))

(declare-fun b!6199540 () Bool)

(declare-fun e!3775344 () Bool)

(assert (=> b!6199540 (= e!3775344 call!518827)))

(declare-fun b!6199542 () Bool)

(declare-fun e!3775347 () Bool)

(declare-fun e!3775346 () Bool)

(assert (=> b!6199542 (= e!3775347 e!3775346)))

(declare-fun res!2564418 () Bool)

(assert (=> b!6199542 (=> (not res!2564418) (not e!3775346))))

(assert (=> b!6199542 (= res!2564418 call!518829)))

(declare-fun b!6199543 () Bool)

(declare-fun res!2564417 () Bool)

(declare-fun e!3775348 () Bool)

(assert (=> b!6199543 (=> (not res!2564417) (not e!3775348))))

(assert (=> b!6199543 (= res!2564417 call!518829)))

(declare-fun e!3775343 () Bool)

(assert (=> b!6199543 (= e!3775343 e!3775348)))

(declare-fun b!6199544 () Bool)

(assert (=> b!6199544 (= e!3775348 call!518828)))

(declare-fun b!6199545 () Bool)

(assert (=> b!6199545 (= e!3775342 e!3775344)))

(declare-fun res!2564415 () Bool)

(assert (=> b!6199545 (= res!2564415 (not (nullable!6132 (reg!16468 lt!2342675))))))

(assert (=> b!6199545 (=> (not res!2564415) (not e!3775344))))

(declare-fun b!6199541 () Bool)

(declare-fun res!2564414 () Bool)

(assert (=> b!6199541 (=> res!2564414 e!3775347)))

(assert (=> b!6199541 (= res!2564414 (not ((_ is Concat!24984) lt!2342675)))))

(assert (=> b!6199541 (= e!3775343 e!3775347)))

(declare-fun d!1943547 () Bool)

(declare-fun res!2564416 () Bool)

(assert (=> d!1943547 (=> res!2564416 e!3775345)))

(assert (=> d!1943547 (= res!2564416 ((_ is ElementMatch!16139) lt!2342675))))

(assert (=> d!1943547 (= (validRegex!7875 lt!2342675) e!3775345)))

(declare-fun b!6199546 () Bool)

(assert (=> b!6199546 (= e!3775346 call!518828)))

(declare-fun b!6199547 () Bool)

(assert (=> b!6199547 (= e!3775342 e!3775343)))

(assert (=> b!6199547 (= c!1119130 ((_ is Union!16139) lt!2342675))))

(assert (= (and d!1943547 (not res!2564416)) b!6199539))

(assert (= (and b!6199539 c!1119131) b!6199545))

(assert (= (and b!6199539 (not c!1119131)) b!6199547))

(assert (= (and b!6199545 res!2564415) b!6199540))

(assert (= (and b!6199547 c!1119130) b!6199543))

(assert (= (and b!6199547 (not c!1119130)) b!6199541))

(assert (= (and b!6199543 res!2564417) b!6199544))

(assert (= (and b!6199541 (not res!2564414)) b!6199542))

(assert (= (and b!6199542 res!2564418) b!6199546))

(assert (= (or b!6199544 b!6199546) bm!518823))

(assert (= (or b!6199543 b!6199542) bm!518822))

(assert (= (or b!6199540 bm!518822) bm!518824))

(declare-fun m!7032656 () Bool)

(assert (=> bm!518823 m!7032656))

(declare-fun m!7032658 () Bool)

(assert (=> bm!518824 m!7032658))

(declare-fun m!7032660 () Bool)

(assert (=> b!6199545 m!7032660))

(assert (=> d!1943113 d!1943547))

(assert (=> d!1943113 d!1943187))

(assert (=> d!1943113 d!1943195))

(declare-fun bm!518825 () Bool)

(declare-fun call!518832 () Bool)

(declare-fun call!518830 () Bool)

(assert (=> bm!518825 (= call!518832 call!518830)))

(declare-fun call!518831 () Bool)

(declare-fun bm!518826 () Bool)

(declare-fun c!1119132 () Bool)

(assert (=> bm!518826 (= call!518831 (validRegex!7875 (ite c!1119132 (regTwo!32791 (ite c!1118915 (reg!16468 r!7292) (ite c!1118914 (regOne!32791 r!7292) (regOne!32790 r!7292)))) (regTwo!32790 (ite c!1118915 (reg!16468 r!7292) (ite c!1118914 (regOne!32791 r!7292) (regOne!32790 r!7292)))))))))

(declare-fun b!6199548 () Bool)

(declare-fun e!3775352 () Bool)

(declare-fun e!3775349 () Bool)

(assert (=> b!6199548 (= e!3775352 e!3775349)))

(declare-fun c!1119133 () Bool)

(assert (=> b!6199548 (= c!1119133 ((_ is Star!16139) (ite c!1118915 (reg!16468 r!7292) (ite c!1118914 (regOne!32791 r!7292) (regOne!32790 r!7292)))))))

(declare-fun bm!518827 () Bool)

(assert (=> bm!518827 (= call!518830 (validRegex!7875 (ite c!1119133 (reg!16468 (ite c!1118915 (reg!16468 r!7292) (ite c!1118914 (regOne!32791 r!7292) (regOne!32790 r!7292)))) (ite c!1119132 (regOne!32791 (ite c!1118915 (reg!16468 r!7292) (ite c!1118914 (regOne!32791 r!7292) (regOne!32790 r!7292)))) (regOne!32790 (ite c!1118915 (reg!16468 r!7292) (ite c!1118914 (regOne!32791 r!7292) (regOne!32790 r!7292))))))))))

(declare-fun b!6199549 () Bool)

(declare-fun e!3775351 () Bool)

(assert (=> b!6199549 (= e!3775351 call!518830)))

(declare-fun b!6199551 () Bool)

(declare-fun e!3775354 () Bool)

(declare-fun e!3775353 () Bool)

(assert (=> b!6199551 (= e!3775354 e!3775353)))

(declare-fun res!2564423 () Bool)

(assert (=> b!6199551 (=> (not res!2564423) (not e!3775353))))

(assert (=> b!6199551 (= res!2564423 call!518832)))

(declare-fun b!6199552 () Bool)

(declare-fun res!2564422 () Bool)

(declare-fun e!3775355 () Bool)

(assert (=> b!6199552 (=> (not res!2564422) (not e!3775355))))

(assert (=> b!6199552 (= res!2564422 call!518832)))

(declare-fun e!3775350 () Bool)

(assert (=> b!6199552 (= e!3775350 e!3775355)))

(declare-fun b!6199553 () Bool)

(assert (=> b!6199553 (= e!3775355 call!518831)))

(declare-fun b!6199554 () Bool)

(assert (=> b!6199554 (= e!3775349 e!3775351)))

(declare-fun res!2564420 () Bool)

(assert (=> b!6199554 (= res!2564420 (not (nullable!6132 (reg!16468 (ite c!1118915 (reg!16468 r!7292) (ite c!1118914 (regOne!32791 r!7292) (regOne!32790 r!7292)))))))))

(assert (=> b!6199554 (=> (not res!2564420) (not e!3775351))))

(declare-fun b!6199550 () Bool)

(declare-fun res!2564419 () Bool)

(assert (=> b!6199550 (=> res!2564419 e!3775354)))

(assert (=> b!6199550 (= res!2564419 (not ((_ is Concat!24984) (ite c!1118915 (reg!16468 r!7292) (ite c!1118914 (regOne!32791 r!7292) (regOne!32790 r!7292))))))))

(assert (=> b!6199550 (= e!3775350 e!3775354)))

(declare-fun d!1943549 () Bool)

(declare-fun res!2564421 () Bool)

(assert (=> d!1943549 (=> res!2564421 e!3775352)))

(assert (=> d!1943549 (= res!2564421 ((_ is ElementMatch!16139) (ite c!1118915 (reg!16468 r!7292) (ite c!1118914 (regOne!32791 r!7292) (regOne!32790 r!7292)))))))

(assert (=> d!1943549 (= (validRegex!7875 (ite c!1118915 (reg!16468 r!7292) (ite c!1118914 (regOne!32791 r!7292) (regOne!32790 r!7292)))) e!3775352)))

(declare-fun b!6199555 () Bool)

(assert (=> b!6199555 (= e!3775353 call!518831)))

(declare-fun b!6199556 () Bool)

(assert (=> b!6199556 (= e!3775349 e!3775350)))

(assert (=> b!6199556 (= c!1119132 ((_ is Union!16139) (ite c!1118915 (reg!16468 r!7292) (ite c!1118914 (regOne!32791 r!7292) (regOne!32790 r!7292)))))))

(assert (= (and d!1943549 (not res!2564421)) b!6199548))

(assert (= (and b!6199548 c!1119133) b!6199554))

(assert (= (and b!6199548 (not c!1119133)) b!6199556))

(assert (= (and b!6199554 res!2564420) b!6199549))

(assert (= (and b!6199556 c!1119132) b!6199552))

(assert (= (and b!6199556 (not c!1119132)) b!6199550))

(assert (= (and b!6199552 res!2564422) b!6199553))

(assert (= (and b!6199550 (not res!2564419)) b!6199551))

(assert (= (and b!6199551 res!2564423) b!6199555))

(assert (= (or b!6199553 b!6199555) bm!518826))

(assert (= (or b!6199552 b!6199551) bm!518825))

(assert (= (or b!6199549 bm!518825) bm!518827))

(declare-fun m!7032662 () Bool)

(assert (=> bm!518826 m!7032662))

(declare-fun m!7032664 () Bool)

(assert (=> bm!518827 m!7032664))

(declare-fun m!7032666 () Bool)

(assert (=> b!6199554 m!7032666))

(assert (=> bm!518691 d!1943549))

(declare-fun b!6199590 () Bool)

(declare-fun e!3775375 () Bool)

(declare-fun lt!2342784 () List!64718)

(assert (=> b!6199590 (= e!3775375 (or (not (= (t!378232 s!2326) Nil!64594)) (= lt!2342784 (++!14217 Nil!64594 (Cons!64594 (h!71042 s!2326) Nil!64594)))))))

(declare-fun b!6199588 () Bool)

(declare-fun e!3775376 () List!64718)

(assert (=> b!6199588 (= e!3775376 (Cons!64594 (h!71042 (++!14217 Nil!64594 (Cons!64594 (h!71042 s!2326) Nil!64594))) (++!14217 (t!378232 (++!14217 Nil!64594 (Cons!64594 (h!71042 s!2326) Nil!64594))) (t!378232 s!2326))))))

(declare-fun b!6199589 () Bool)

(declare-fun res!2564436 () Bool)

(assert (=> b!6199589 (=> (not res!2564436) (not e!3775375))))

(declare-fun size!40266 (List!64718) Int)

(assert (=> b!6199589 (= res!2564436 (= (size!40266 lt!2342784) (+ (size!40266 (++!14217 Nil!64594 (Cons!64594 (h!71042 s!2326) Nil!64594))) (size!40266 (t!378232 s!2326)))))))

(declare-fun b!6199587 () Bool)

(assert (=> b!6199587 (= e!3775376 (t!378232 s!2326))))

(declare-fun d!1943551 () Bool)

(assert (=> d!1943551 e!3775375))

(declare-fun res!2564437 () Bool)

(assert (=> d!1943551 (=> (not res!2564437) (not e!3775375))))

(declare-fun content!12074 (List!64718) (InoxSet C!32548))

(assert (=> d!1943551 (= res!2564437 (= (content!12074 lt!2342784) ((_ map or) (content!12074 (++!14217 Nil!64594 (Cons!64594 (h!71042 s!2326) Nil!64594))) (content!12074 (t!378232 s!2326)))))))

(assert (=> d!1943551 (= lt!2342784 e!3775376)))

(declare-fun c!1119143 () Bool)

(assert (=> d!1943551 (= c!1119143 ((_ is Nil!64594) (++!14217 Nil!64594 (Cons!64594 (h!71042 s!2326) Nil!64594))))))

(assert (=> d!1943551 (= (++!14217 (++!14217 Nil!64594 (Cons!64594 (h!71042 s!2326) Nil!64594)) (t!378232 s!2326)) lt!2342784)))

(assert (= (and d!1943551 c!1119143) b!6199587))

(assert (= (and d!1943551 (not c!1119143)) b!6199588))

(assert (= (and d!1943551 res!2564437) b!6199589))

(assert (= (and b!6199589 res!2564436) b!6199590))

(declare-fun m!7032690 () Bool)

(assert (=> b!6199588 m!7032690))

(declare-fun m!7032692 () Bool)

(assert (=> b!6199589 m!7032692))

(assert (=> b!6199589 m!7031918))

(declare-fun m!7032694 () Bool)

(assert (=> b!6199589 m!7032694))

(declare-fun m!7032696 () Bool)

(assert (=> b!6199589 m!7032696))

(declare-fun m!7032698 () Bool)

(assert (=> d!1943551 m!7032698))

(assert (=> d!1943551 m!7031918))

(declare-fun m!7032700 () Bool)

(assert (=> d!1943551 m!7032700))

(declare-fun m!7032702 () Bool)

(assert (=> d!1943551 m!7032702))

(assert (=> b!6198752 d!1943551))

(declare-fun b!6199594 () Bool)

(declare-fun e!3775377 () Bool)

(declare-fun lt!2342785 () List!64718)

(assert (=> b!6199594 (= e!3775377 (or (not (= (Cons!64594 (h!71042 s!2326) Nil!64594) Nil!64594)) (= lt!2342785 Nil!64594)))))

(declare-fun b!6199592 () Bool)

(declare-fun e!3775378 () List!64718)

(assert (=> b!6199592 (= e!3775378 (Cons!64594 (h!71042 Nil!64594) (++!14217 (t!378232 Nil!64594) (Cons!64594 (h!71042 s!2326) Nil!64594))))))

(declare-fun b!6199593 () Bool)

(declare-fun res!2564438 () Bool)

(assert (=> b!6199593 (=> (not res!2564438) (not e!3775377))))

(assert (=> b!6199593 (= res!2564438 (= (size!40266 lt!2342785) (+ (size!40266 Nil!64594) (size!40266 (Cons!64594 (h!71042 s!2326) Nil!64594)))))))

(declare-fun b!6199591 () Bool)

(assert (=> b!6199591 (= e!3775378 (Cons!64594 (h!71042 s!2326) Nil!64594))))

(declare-fun d!1943565 () Bool)

(assert (=> d!1943565 e!3775377))

(declare-fun res!2564439 () Bool)

(assert (=> d!1943565 (=> (not res!2564439) (not e!3775377))))

(assert (=> d!1943565 (= res!2564439 (= (content!12074 lt!2342785) ((_ map or) (content!12074 Nil!64594) (content!12074 (Cons!64594 (h!71042 s!2326) Nil!64594)))))))

(assert (=> d!1943565 (= lt!2342785 e!3775378)))

(declare-fun c!1119144 () Bool)

(assert (=> d!1943565 (= c!1119144 ((_ is Nil!64594) Nil!64594))))

(assert (=> d!1943565 (= (++!14217 Nil!64594 (Cons!64594 (h!71042 s!2326) Nil!64594)) lt!2342785)))

(assert (= (and d!1943565 c!1119144) b!6199591))

(assert (= (and d!1943565 (not c!1119144)) b!6199592))

(assert (= (and d!1943565 res!2564439) b!6199593))

(assert (= (and b!6199593 res!2564438) b!6199594))

(declare-fun m!7032706 () Bool)

(assert (=> b!6199592 m!7032706))

(declare-fun m!7032708 () Bool)

(assert (=> b!6199593 m!7032708))

(declare-fun m!7032710 () Bool)

(assert (=> b!6199593 m!7032710))

(declare-fun m!7032712 () Bool)

(assert (=> b!6199593 m!7032712))

(declare-fun m!7032714 () Bool)

(assert (=> d!1943565 m!7032714))

(declare-fun m!7032716 () Bool)

(assert (=> d!1943565 m!7032716))

(declare-fun m!7032718 () Bool)

(assert (=> d!1943565 m!7032718))

(assert (=> b!6198752 d!1943565))

(declare-fun d!1943573 () Bool)

(assert (=> d!1943573 (= (++!14217 (++!14217 Nil!64594 (Cons!64594 (h!71042 s!2326) Nil!64594)) (t!378232 s!2326)) s!2326)))

(declare-fun lt!2342788 () Unit!157887)

(declare-fun choose!46075 (List!64718 C!32548 List!64718 List!64718) Unit!157887)

(assert (=> d!1943573 (= lt!2342788 (choose!46075 Nil!64594 (h!71042 s!2326) (t!378232 s!2326) s!2326))))

(assert (=> d!1943573 (= (++!14217 Nil!64594 (Cons!64594 (h!71042 s!2326) (t!378232 s!2326))) s!2326)))

(assert (=> d!1943573 (= (lemmaMoveElementToOtherListKeepsConcatEq!2312 Nil!64594 (h!71042 s!2326) (t!378232 s!2326) s!2326) lt!2342788)))

(declare-fun bs!1538322 () Bool)

(assert (= bs!1538322 d!1943573))

(assert (=> bs!1538322 m!7031918))

(assert (=> bs!1538322 m!7031918))

(assert (=> bs!1538322 m!7031920))

(declare-fun m!7032734 () Bool)

(assert (=> bs!1538322 m!7032734))

(declare-fun m!7032736 () Bool)

(assert (=> bs!1538322 m!7032736))

(assert (=> b!6198752 d!1943573))

(declare-fun b!6199612 () Bool)

(declare-fun e!3775395 () Option!16030)

(assert (=> b!6199612 (= e!3775395 None!16029)))

(declare-fun b!6199613 () Bool)

(declare-fun e!3775396 () Option!16030)

(assert (=> b!6199613 (= e!3775396 e!3775395)))

(declare-fun c!1119150 () Bool)

(assert (=> b!6199613 (= c!1119150 ((_ is Nil!64594) (t!378232 s!2326)))))

(declare-fun d!1943581 () Bool)

(declare-fun e!3775394 () Bool)

(assert (=> d!1943581 e!3775394))

(declare-fun res!2564453 () Bool)

(assert (=> d!1943581 (=> res!2564453 e!3775394)))

(declare-fun e!3775392 () Bool)

(assert (=> d!1943581 (= res!2564453 e!3775392)))

(declare-fun res!2564451 () Bool)

(assert (=> d!1943581 (=> (not res!2564451) (not e!3775392))))

(declare-fun lt!2342789 () Option!16030)

(assert (=> d!1943581 (= res!2564451 (isDefined!12733 lt!2342789))))

(assert (=> d!1943581 (= lt!2342789 e!3775396)))

(declare-fun c!1119149 () Bool)

(declare-fun e!3775393 () Bool)

(assert (=> d!1943581 (= c!1119149 e!3775393)))

(declare-fun res!2564449 () Bool)

(assert (=> d!1943581 (=> (not res!2564449) (not e!3775393))))

(assert (=> d!1943581 (= res!2564449 (matchR!8322 (regOne!32790 r!7292) (++!14217 Nil!64594 (Cons!64594 (h!71042 s!2326) Nil!64594))))))

(assert (=> d!1943581 (validRegex!7875 (regOne!32790 r!7292))))

(assert (=> d!1943581 (= (findConcatSeparation!2444 (regOne!32790 r!7292) (regTwo!32790 r!7292) (++!14217 Nil!64594 (Cons!64594 (h!71042 s!2326) Nil!64594)) (t!378232 s!2326) s!2326) lt!2342789)))

(declare-fun b!6199614 () Bool)

(declare-fun res!2564452 () Bool)

(assert (=> b!6199614 (=> (not res!2564452) (not e!3775392))))

(assert (=> b!6199614 (= res!2564452 (matchR!8322 (regOne!32790 r!7292) (_1!36421 (get!22302 lt!2342789))))))

(declare-fun b!6199615 () Bool)

(assert (=> b!6199615 (= e!3775396 (Some!16029 (tuple2!66237 (++!14217 Nil!64594 (Cons!64594 (h!71042 s!2326) Nil!64594)) (t!378232 s!2326))))))

(declare-fun b!6199616 () Bool)

(assert (=> b!6199616 (= e!3775393 (matchR!8322 (regTwo!32790 r!7292) (t!378232 s!2326)))))

(declare-fun b!6199617 () Bool)

(declare-fun lt!2342791 () Unit!157887)

(declare-fun lt!2342790 () Unit!157887)

(assert (=> b!6199617 (= lt!2342791 lt!2342790)))

(assert (=> b!6199617 (= (++!14217 (++!14217 (++!14217 Nil!64594 (Cons!64594 (h!71042 s!2326) Nil!64594)) (Cons!64594 (h!71042 (t!378232 s!2326)) Nil!64594)) (t!378232 (t!378232 s!2326))) s!2326)))

(assert (=> b!6199617 (= lt!2342790 (lemmaMoveElementToOtherListKeepsConcatEq!2312 (++!14217 Nil!64594 (Cons!64594 (h!71042 s!2326) Nil!64594)) (h!71042 (t!378232 s!2326)) (t!378232 (t!378232 s!2326)) s!2326))))

(assert (=> b!6199617 (= e!3775395 (findConcatSeparation!2444 (regOne!32790 r!7292) (regTwo!32790 r!7292) (++!14217 (++!14217 Nil!64594 (Cons!64594 (h!71042 s!2326) Nil!64594)) (Cons!64594 (h!71042 (t!378232 s!2326)) Nil!64594)) (t!378232 (t!378232 s!2326)) s!2326))))

(declare-fun b!6199618 () Bool)

(declare-fun res!2564450 () Bool)

(assert (=> b!6199618 (=> (not res!2564450) (not e!3775392))))

(assert (=> b!6199618 (= res!2564450 (matchR!8322 (regTwo!32790 r!7292) (_2!36421 (get!22302 lt!2342789))))))

(declare-fun b!6199619 () Bool)

(assert (=> b!6199619 (= e!3775392 (= (++!14217 (_1!36421 (get!22302 lt!2342789)) (_2!36421 (get!22302 lt!2342789))) s!2326))))

(declare-fun b!6199620 () Bool)

(assert (=> b!6199620 (= e!3775394 (not (isDefined!12733 lt!2342789)))))

(assert (= (and d!1943581 res!2564449) b!6199616))

(assert (= (and d!1943581 c!1119149) b!6199615))

(assert (= (and d!1943581 (not c!1119149)) b!6199613))

(assert (= (and b!6199613 c!1119150) b!6199612))

(assert (= (and b!6199613 (not c!1119150)) b!6199617))

(assert (= (and d!1943581 res!2564451) b!6199614))

(assert (= (and b!6199614 res!2564452) b!6199618))

(assert (= (and b!6199618 res!2564450) b!6199619))

(assert (= (and d!1943581 (not res!2564453)) b!6199620))

(assert (=> b!6199617 m!7031918))

(declare-fun m!7032740 () Bool)

(assert (=> b!6199617 m!7032740))

(assert (=> b!6199617 m!7032740))

(declare-fun m!7032742 () Bool)

(assert (=> b!6199617 m!7032742))

(assert (=> b!6199617 m!7031918))

(declare-fun m!7032744 () Bool)

(assert (=> b!6199617 m!7032744))

(assert (=> b!6199617 m!7032740))

(declare-fun m!7032746 () Bool)

(assert (=> b!6199617 m!7032746))

(declare-fun m!7032748 () Bool)

(assert (=> d!1943581 m!7032748))

(assert (=> d!1943581 m!7031918))

(declare-fun m!7032750 () Bool)

(assert (=> d!1943581 m!7032750))

(assert (=> d!1943581 m!7031930))

(declare-fun m!7032752 () Bool)

(assert (=> b!6199614 m!7032752))

(declare-fun m!7032754 () Bool)

(assert (=> b!6199614 m!7032754))

(declare-fun m!7032758 () Bool)

(assert (=> b!6199616 m!7032758))

(assert (=> b!6199619 m!7032752))

(declare-fun m!7032764 () Bool)

(assert (=> b!6199619 m!7032764))

(assert (=> b!6199618 m!7032752))

(declare-fun m!7032766 () Bool)

(assert (=> b!6199618 m!7032766))

(assert (=> b!6199620 m!7032748))

(assert (=> b!6198752 d!1943581))

(declare-fun d!1943589 () Bool)

(assert (=> d!1943589 true))

(declare-fun setRes!42076 () Bool)

(assert (=> d!1943589 setRes!42076))

(declare-fun condSetEmpty!42076 () Bool)

(declare-fun res!2564464 () (InoxSet Context!11046))

(assert (=> d!1943589 (= condSetEmpty!42076 (= res!2564464 ((as const (Array Context!11046 Bool)) false)))))

(assert (=> d!1943589 (= (choose!46059 z!1189 lambda!338631) res!2564464)))

(declare-fun setIsEmpty!42076 () Bool)

(assert (=> setIsEmpty!42076 setRes!42076))

(declare-fun e!3775406 () Bool)

(declare-fun setNonEmpty!42076 () Bool)

(declare-fun setElem!42076 () Context!11046)

(declare-fun tp!1728949 () Bool)

(assert (=> setNonEmpty!42076 (= setRes!42076 (and tp!1728949 (inv!83594 setElem!42076) e!3775406))))

(declare-fun setRest!42076 () (InoxSet Context!11046))

(assert (=> setNonEmpty!42076 (= res!2564464 ((_ map or) (store ((as const (Array Context!11046 Bool)) false) setElem!42076 true) setRest!42076))))

(declare-fun b!6199637 () Bool)

(declare-fun tp!1728950 () Bool)

(assert (=> b!6199637 (= e!3775406 tp!1728950)))

(assert (= (and d!1943589 condSetEmpty!42076) setIsEmpty!42076))

(assert (= (and d!1943589 (not condSetEmpty!42076)) setNonEmpty!42076))

(assert (= setNonEmpty!42076 b!6199637))

(declare-fun m!7032776 () Bool)

(assert (=> setNonEmpty!42076 m!7032776))

(assert (=> d!1943133 d!1943589))

(declare-fun bs!1538326 () Bool)

(declare-fun d!1943593 () Bool)

(assert (= bs!1538326 (and d!1943593 d!1943349)))

(declare-fun lambda!338742 () Int)

(assert (=> bs!1538326 (= lambda!338742 lambda!338699)))

(declare-fun bs!1538327 () Bool)

(assert (= bs!1538327 (and d!1943593 d!1943429)))

(assert (=> bs!1538327 (= lambda!338742 lambda!338709)))

(assert (=> d!1943593 (= (nullableZipper!1912 lt!2342665) (exists!2469 lt!2342665 lambda!338742))))

(declare-fun bs!1538328 () Bool)

(assert (= bs!1538328 d!1943593))

(declare-fun m!7032778 () Bool)

(assert (=> bs!1538328 m!7032778))

(assert (=> b!6198406 d!1943593))

(declare-fun d!1943595 () Bool)

(assert (=> d!1943595 (= (Exists!3209 (ite c!1118858 lambda!338645 lambda!338646)) (choose!46069 (ite c!1118858 lambda!338645 lambda!338646)))))

(declare-fun bs!1538329 () Bool)

(assert (= bs!1538329 d!1943595))

(declare-fun m!7032780 () Bool)

(assert (=> bs!1538329 m!7032780))

(assert (=> bm!518655 d!1943595))

(declare-fun b!6199641 () Bool)

(declare-fun e!3775407 () Bool)

(declare-fun lt!2342793 () List!64718)

(assert (=> b!6199641 (= e!3775407 (or (not (= (_2!36421 (get!22302 lt!2342728)) Nil!64594)) (= lt!2342793 (_1!36421 (get!22302 lt!2342728)))))))

(declare-fun b!6199639 () Bool)

(declare-fun e!3775408 () List!64718)

(assert (=> b!6199639 (= e!3775408 (Cons!64594 (h!71042 (_1!36421 (get!22302 lt!2342728))) (++!14217 (t!378232 (_1!36421 (get!22302 lt!2342728))) (_2!36421 (get!22302 lt!2342728)))))))

(declare-fun b!6199640 () Bool)

(declare-fun res!2564465 () Bool)

(assert (=> b!6199640 (=> (not res!2564465) (not e!3775407))))

(assert (=> b!6199640 (= res!2564465 (= (size!40266 lt!2342793) (+ (size!40266 (_1!36421 (get!22302 lt!2342728))) (size!40266 (_2!36421 (get!22302 lt!2342728))))))))

(declare-fun b!6199638 () Bool)

(assert (=> b!6199638 (= e!3775408 (_2!36421 (get!22302 lt!2342728)))))

(declare-fun d!1943597 () Bool)

(assert (=> d!1943597 e!3775407))

(declare-fun res!2564466 () Bool)

(assert (=> d!1943597 (=> (not res!2564466) (not e!3775407))))

(assert (=> d!1943597 (= res!2564466 (= (content!12074 lt!2342793) ((_ map or) (content!12074 (_1!36421 (get!22302 lt!2342728))) (content!12074 (_2!36421 (get!22302 lt!2342728))))))))

(assert (=> d!1943597 (= lt!2342793 e!3775408)))

(declare-fun c!1119154 () Bool)

(assert (=> d!1943597 (= c!1119154 ((_ is Nil!64594) (_1!36421 (get!22302 lt!2342728))))))

(assert (=> d!1943597 (= (++!14217 (_1!36421 (get!22302 lt!2342728)) (_2!36421 (get!22302 lt!2342728))) lt!2342793)))

(assert (= (and d!1943597 c!1119154) b!6199638))

(assert (= (and d!1943597 (not c!1119154)) b!6199639))

(assert (= (and d!1943597 res!2564466) b!6199640))

(assert (= (and b!6199640 res!2564465) b!6199641))

(declare-fun m!7032782 () Bool)

(assert (=> b!6199639 m!7032782))

(declare-fun m!7032784 () Bool)

(assert (=> b!6199640 m!7032784))

(declare-fun m!7032786 () Bool)

(assert (=> b!6199640 m!7032786))

(declare-fun m!7032788 () Bool)

(assert (=> b!6199640 m!7032788))

(declare-fun m!7032790 () Bool)

(assert (=> d!1943597 m!7032790))

(declare-fun m!7032792 () Bool)

(assert (=> d!1943597 m!7032792))

(declare-fun m!7032794 () Bool)

(assert (=> d!1943597 m!7032794))

(assert (=> b!6198754 d!1943597))

(assert (=> b!6198754 d!1943337))

(declare-fun b!6199642 () Bool)

(declare-fun e!3775409 () Bool)

(declare-fun tp!1728951 () Bool)

(declare-fun tp!1728952 () Bool)

(assert (=> b!6199642 (= e!3775409 (and tp!1728951 tp!1728952))))

(assert (=> b!6198929 (= tp!1728923 e!3775409)))

(assert (= (and b!6198929 ((_ is Cons!64592) (exprs!6023 (h!71041 (t!378231 zl!343))))) b!6199642))

(declare-fun b!6199645 () Bool)

(declare-fun e!3775410 () Bool)

(declare-fun tp!1728955 () Bool)

(assert (=> b!6199645 (= e!3775410 tp!1728955)))

(declare-fun b!6199644 () Bool)

(declare-fun tp!1728957 () Bool)

(declare-fun tp!1728954 () Bool)

(assert (=> b!6199644 (= e!3775410 (and tp!1728957 tp!1728954))))

(declare-fun b!6199646 () Bool)

(declare-fun tp!1728953 () Bool)

(declare-fun tp!1728956 () Bool)

(assert (=> b!6199646 (= e!3775410 (and tp!1728953 tp!1728956))))

(declare-fun b!6199643 () Bool)

(assert (=> b!6199643 (= e!3775410 tp_is_empty!41531)))

(assert (=> b!6198914 (= tp!1728915 e!3775410)))

(assert (= (and b!6198914 ((_ is ElementMatch!16139) (regOne!32790 (regTwo!32791 r!7292)))) b!6199643))

(assert (= (and b!6198914 ((_ is Concat!24984) (regOne!32790 (regTwo!32791 r!7292)))) b!6199644))

(assert (= (and b!6198914 ((_ is Star!16139) (regOne!32790 (regTwo!32791 r!7292)))) b!6199645))

(assert (= (and b!6198914 ((_ is Union!16139) (regOne!32790 (regTwo!32791 r!7292)))) b!6199646))

(declare-fun b!6199649 () Bool)

(declare-fun e!3775411 () Bool)

(declare-fun tp!1728960 () Bool)

(assert (=> b!6199649 (= e!3775411 tp!1728960)))

(declare-fun b!6199648 () Bool)

(declare-fun tp!1728962 () Bool)

(declare-fun tp!1728959 () Bool)

(assert (=> b!6199648 (= e!3775411 (and tp!1728962 tp!1728959))))

(declare-fun b!6199650 () Bool)

(declare-fun tp!1728958 () Bool)

(declare-fun tp!1728961 () Bool)

(assert (=> b!6199650 (= e!3775411 (and tp!1728958 tp!1728961))))

(declare-fun b!6199647 () Bool)

(assert (=> b!6199647 (= e!3775411 tp_is_empty!41531)))

(assert (=> b!6198914 (= tp!1728912 e!3775411)))

(assert (= (and b!6198914 ((_ is ElementMatch!16139) (regTwo!32790 (regTwo!32791 r!7292)))) b!6199647))

(assert (= (and b!6198914 ((_ is Concat!24984) (regTwo!32790 (regTwo!32791 r!7292)))) b!6199648))

(assert (= (and b!6198914 ((_ is Star!16139) (regTwo!32790 (regTwo!32791 r!7292)))) b!6199649))

(assert (= (and b!6198914 ((_ is Union!16139) (regTwo!32790 (regTwo!32791 r!7292)))) b!6199650))

(declare-fun b!6199651 () Bool)

(declare-fun e!3775412 () Bool)

(declare-fun tp!1728963 () Bool)

(assert (=> b!6199651 (= e!3775412 (and tp_is_empty!41531 tp!1728963))))

(assert (=> b!6198921 (= tp!1728918 e!3775412)))

(assert (= (and b!6198921 ((_ is Cons!64594) (t!378232 (t!378232 s!2326)))) b!6199651))

(declare-fun b!6199653 () Bool)

(declare-fun e!3775414 () Bool)

(declare-fun tp!1728964 () Bool)

(assert (=> b!6199653 (= e!3775414 tp!1728964)))

(declare-fun b!6199652 () Bool)

(declare-fun tp!1728965 () Bool)

(declare-fun e!3775413 () Bool)

(assert (=> b!6199652 (= e!3775413 (and (inv!83594 (h!71041 (t!378231 (t!378231 zl!343)))) e!3775414 tp!1728965))))

(assert (=> b!6198928 (= tp!1728924 e!3775413)))

(assert (= b!6199652 b!6199653))

(assert (= (and b!6198928 ((_ is Cons!64593) (t!378231 (t!378231 zl!343)))) b!6199652))

(declare-fun m!7032796 () Bool)

(assert (=> b!6199652 m!7032796))

(declare-fun b!6199656 () Bool)

(declare-fun e!3775415 () Bool)

(declare-fun tp!1728968 () Bool)

(assert (=> b!6199656 (= e!3775415 tp!1728968)))

(declare-fun b!6199655 () Bool)

(declare-fun tp!1728970 () Bool)

(declare-fun tp!1728967 () Bool)

(assert (=> b!6199655 (= e!3775415 (and tp!1728970 tp!1728967))))

(declare-fun b!6199657 () Bool)

(declare-fun tp!1728966 () Bool)

(declare-fun tp!1728969 () Bool)

(assert (=> b!6199657 (= e!3775415 (and tp!1728966 tp!1728969))))

(declare-fun b!6199654 () Bool)

(assert (=> b!6199654 (= e!3775415 tp_is_empty!41531)))

(assert (=> b!6198908 (= tp!1728901 e!3775415)))

(assert (= (and b!6198908 ((_ is ElementMatch!16139) (regOne!32791 (reg!16468 r!7292)))) b!6199654))

(assert (= (and b!6198908 ((_ is Concat!24984) (regOne!32791 (reg!16468 r!7292)))) b!6199655))

(assert (= (and b!6198908 ((_ is Star!16139) (regOne!32791 (reg!16468 r!7292)))) b!6199656))

(assert (= (and b!6198908 ((_ is Union!16139) (regOne!32791 (reg!16468 r!7292)))) b!6199657))

(declare-fun b!6199660 () Bool)

(declare-fun e!3775416 () Bool)

(declare-fun tp!1728973 () Bool)

(assert (=> b!6199660 (= e!3775416 tp!1728973)))

(declare-fun b!6199659 () Bool)

(declare-fun tp!1728975 () Bool)

(declare-fun tp!1728972 () Bool)

(assert (=> b!6199659 (= e!3775416 (and tp!1728975 tp!1728972))))

(declare-fun b!6199661 () Bool)

(declare-fun tp!1728971 () Bool)

(declare-fun tp!1728974 () Bool)

(assert (=> b!6199661 (= e!3775416 (and tp!1728971 tp!1728974))))

(declare-fun b!6199658 () Bool)

(assert (=> b!6199658 (= e!3775416 tp_is_empty!41531)))

(assert (=> b!6198908 (= tp!1728904 e!3775416)))

(assert (= (and b!6198908 ((_ is ElementMatch!16139) (regTwo!32791 (reg!16468 r!7292)))) b!6199658))

(assert (= (and b!6198908 ((_ is Concat!24984) (regTwo!32791 (reg!16468 r!7292)))) b!6199659))

(assert (= (and b!6198908 ((_ is Star!16139) (regTwo!32791 (reg!16468 r!7292)))) b!6199660))

(assert (= (and b!6198908 ((_ is Union!16139) (regTwo!32791 (reg!16468 r!7292)))) b!6199661))

(declare-fun b!6199664 () Bool)

(declare-fun e!3775417 () Bool)

(declare-fun tp!1728978 () Bool)

(assert (=> b!6199664 (= e!3775417 tp!1728978)))

(declare-fun b!6199663 () Bool)

(declare-fun tp!1728980 () Bool)

(declare-fun tp!1728977 () Bool)

(assert (=> b!6199663 (= e!3775417 (and tp!1728980 tp!1728977))))

(declare-fun b!6199665 () Bool)

(declare-fun tp!1728976 () Bool)

(declare-fun tp!1728979 () Bool)

(assert (=> b!6199665 (= e!3775417 (and tp!1728976 tp!1728979))))

(declare-fun b!6199662 () Bool)

(assert (=> b!6199662 (= e!3775417 tp_is_empty!41531)))

(assert (=> b!6198873 (= tp!1728865 e!3775417)))

(assert (= (and b!6198873 ((_ is ElementMatch!16139) (reg!16468 (regOne!32790 r!7292)))) b!6199662))

(assert (= (and b!6198873 ((_ is Concat!24984) (reg!16468 (regOne!32790 r!7292)))) b!6199663))

(assert (= (and b!6198873 ((_ is Star!16139) (reg!16468 (regOne!32790 r!7292)))) b!6199664))

(assert (= (and b!6198873 ((_ is Union!16139) (reg!16468 (regOne!32790 r!7292)))) b!6199665))

(declare-fun b!6199668 () Bool)

(declare-fun e!3775418 () Bool)

(declare-fun tp!1728983 () Bool)

(assert (=> b!6199668 (= e!3775418 tp!1728983)))

(declare-fun b!6199667 () Bool)

(declare-fun tp!1728985 () Bool)

(declare-fun tp!1728982 () Bool)

(assert (=> b!6199667 (= e!3775418 (and tp!1728985 tp!1728982))))

(declare-fun b!6199669 () Bool)

(declare-fun tp!1728981 () Bool)

(declare-fun tp!1728984 () Bool)

(assert (=> b!6199669 (= e!3775418 (and tp!1728981 tp!1728984))))

(declare-fun b!6199666 () Bool)

(assert (=> b!6199666 (= e!3775418 tp_is_empty!41531)))

(assert (=> b!6198882 (= tp!1728873 e!3775418)))

(assert (= (and b!6198882 ((_ is ElementMatch!16139) (regOne!32791 (regTwo!32790 r!7292)))) b!6199666))

(assert (= (and b!6198882 ((_ is Concat!24984) (regOne!32791 (regTwo!32790 r!7292)))) b!6199667))

(assert (= (and b!6198882 ((_ is Star!16139) (regOne!32791 (regTwo!32790 r!7292)))) b!6199668))

(assert (= (and b!6198882 ((_ is Union!16139) (regOne!32791 (regTwo!32790 r!7292)))) b!6199669))

(declare-fun b!6199674 () Bool)

(declare-fun e!3775419 () Bool)

(declare-fun tp!1728988 () Bool)

(assert (=> b!6199674 (= e!3775419 tp!1728988)))

(declare-fun b!6199673 () Bool)

(declare-fun tp!1728990 () Bool)

(declare-fun tp!1728987 () Bool)

(assert (=> b!6199673 (= e!3775419 (and tp!1728990 tp!1728987))))

(declare-fun b!6199675 () Bool)

(declare-fun tp!1728986 () Bool)

(declare-fun tp!1728989 () Bool)

(assert (=> b!6199675 (= e!3775419 (and tp!1728986 tp!1728989))))

(declare-fun b!6199672 () Bool)

(assert (=> b!6199672 (= e!3775419 tp_is_empty!41531)))

(assert (=> b!6198882 (= tp!1728876 e!3775419)))

(assert (= (and b!6198882 ((_ is ElementMatch!16139) (regTwo!32791 (regTwo!32790 r!7292)))) b!6199672))

(assert (= (and b!6198882 ((_ is Concat!24984) (regTwo!32791 (regTwo!32790 r!7292)))) b!6199673))

(assert (= (and b!6198882 ((_ is Star!16139) (regTwo!32791 (regTwo!32790 r!7292)))) b!6199674))

(assert (= (and b!6198882 ((_ is Union!16139) (regTwo!32791 (regTwo!32790 r!7292)))) b!6199675))

(declare-fun b!6199680 () Bool)

(declare-fun e!3775422 () Bool)

(declare-fun tp!1728993 () Bool)

(assert (=> b!6199680 (= e!3775422 tp!1728993)))

(declare-fun b!6199679 () Bool)

(declare-fun tp!1728995 () Bool)

(declare-fun tp!1728992 () Bool)

(assert (=> b!6199679 (= e!3775422 (and tp!1728995 tp!1728992))))

(declare-fun b!6199681 () Bool)

(declare-fun tp!1728991 () Bool)

(declare-fun tp!1728994 () Bool)

(assert (=> b!6199681 (= e!3775422 (and tp!1728991 tp!1728994))))

(declare-fun b!6199678 () Bool)

(assert (=> b!6199678 (= e!3775422 tp_is_empty!41531)))

(assert (=> b!6198874 (= tp!1728863 e!3775422)))

(assert (= (and b!6198874 ((_ is ElementMatch!16139) (regOne!32791 (regOne!32790 r!7292)))) b!6199678))

(assert (= (and b!6198874 ((_ is Concat!24984) (regOne!32791 (regOne!32790 r!7292)))) b!6199679))

(assert (= (and b!6198874 ((_ is Star!16139) (regOne!32791 (regOne!32790 r!7292)))) b!6199680))

(assert (= (and b!6198874 ((_ is Union!16139) (regOne!32791 (regOne!32790 r!7292)))) b!6199681))

(declare-fun b!6199696 () Bool)

(declare-fun e!3775429 () Bool)

(declare-fun tp!1728998 () Bool)

(assert (=> b!6199696 (= e!3775429 tp!1728998)))

(declare-fun b!6199695 () Bool)

(declare-fun tp!1729000 () Bool)

(declare-fun tp!1728997 () Bool)

(assert (=> b!6199695 (= e!3775429 (and tp!1729000 tp!1728997))))

(declare-fun b!6199697 () Bool)

(declare-fun tp!1728996 () Bool)

(declare-fun tp!1728999 () Bool)

(assert (=> b!6199697 (= e!3775429 (and tp!1728996 tp!1728999))))

(declare-fun b!6199694 () Bool)

(assert (=> b!6199694 (= e!3775429 tp_is_empty!41531)))

(assert (=> b!6198874 (= tp!1728866 e!3775429)))

(assert (= (and b!6198874 ((_ is ElementMatch!16139) (regTwo!32791 (regOne!32790 r!7292)))) b!6199694))

(assert (= (and b!6198874 ((_ is Concat!24984) (regTwo!32791 (regOne!32790 r!7292)))) b!6199695))

(assert (= (and b!6198874 ((_ is Star!16139) (regTwo!32791 (regOne!32790 r!7292)))) b!6199696))

(assert (= (and b!6198874 ((_ is Union!16139) (regTwo!32791 (regOne!32790 r!7292)))) b!6199697))

(declare-fun b!6199704 () Bool)

(declare-fun e!3775432 () Bool)

(declare-fun tp!1729003 () Bool)

(assert (=> b!6199704 (= e!3775432 tp!1729003)))

(declare-fun b!6199703 () Bool)

(declare-fun tp!1729005 () Bool)

(declare-fun tp!1729002 () Bool)

(assert (=> b!6199703 (= e!3775432 (and tp!1729005 tp!1729002))))

(declare-fun b!6199705 () Bool)

(declare-fun tp!1729001 () Bool)

(declare-fun tp!1729004 () Bool)

(assert (=> b!6199705 (= e!3775432 (and tp!1729001 tp!1729004))))

(declare-fun b!6199702 () Bool)

(assert (=> b!6199702 (= e!3775432 tp_is_empty!41531)))

(assert (=> b!6198930 (= tp!1728925 e!3775432)))

(assert (= (and b!6198930 ((_ is ElementMatch!16139) (h!71040 (exprs!6023 setElem!42064)))) b!6199702))

(assert (= (and b!6198930 ((_ is Concat!24984) (h!71040 (exprs!6023 setElem!42064)))) b!6199703))

(assert (= (and b!6198930 ((_ is Star!16139) (h!71040 (exprs!6023 setElem!42064)))) b!6199704))

(assert (= (and b!6198930 ((_ is Union!16139) (h!71040 (exprs!6023 setElem!42064)))) b!6199705))

(declare-fun b!6199706 () Bool)

(declare-fun e!3775433 () Bool)

(declare-fun tp!1729006 () Bool)

(declare-fun tp!1729007 () Bool)

(assert (=> b!6199706 (= e!3775433 (and tp!1729006 tp!1729007))))

(assert (=> b!6198930 (= tp!1728926 e!3775433)))

(assert (= (and b!6198930 ((_ is Cons!64592) (t!378230 (exprs!6023 setElem!42064)))) b!6199706))

(declare-fun b!6199709 () Bool)

(declare-fun e!3775434 () Bool)

(declare-fun tp!1729010 () Bool)

(assert (=> b!6199709 (= e!3775434 tp!1729010)))

(declare-fun b!6199708 () Bool)

(declare-fun tp!1729012 () Bool)

(declare-fun tp!1729009 () Bool)

(assert (=> b!6199708 (= e!3775434 (and tp!1729012 tp!1729009))))

(declare-fun b!6199710 () Bool)

(declare-fun tp!1729008 () Bool)

(declare-fun tp!1729011 () Bool)

(assert (=> b!6199710 (= e!3775434 (and tp!1729008 tp!1729011))))

(declare-fun b!6199707 () Bool)

(assert (=> b!6199707 (= e!3775434 tp_is_empty!41531)))

(assert (=> b!6198915 (= tp!1728913 e!3775434)))

(assert (= (and b!6198915 ((_ is ElementMatch!16139) (reg!16468 (regTwo!32791 r!7292)))) b!6199707))

(assert (= (and b!6198915 ((_ is Concat!24984) (reg!16468 (regTwo!32791 r!7292)))) b!6199708))

(assert (= (and b!6198915 ((_ is Star!16139) (reg!16468 (regTwo!32791 r!7292)))) b!6199709))

(assert (= (and b!6198915 ((_ is Union!16139) (reg!16468 (regTwo!32791 r!7292)))) b!6199710))

(declare-fun b!6199713 () Bool)

(declare-fun e!3775435 () Bool)

(declare-fun tp!1729015 () Bool)

(assert (=> b!6199713 (= e!3775435 tp!1729015)))

(declare-fun b!6199712 () Bool)

(declare-fun tp!1729017 () Bool)

(declare-fun tp!1729014 () Bool)

(assert (=> b!6199712 (= e!3775435 (and tp!1729017 tp!1729014))))

(declare-fun b!6199714 () Bool)

(declare-fun tp!1729013 () Bool)

(declare-fun tp!1729016 () Bool)

(assert (=> b!6199714 (= e!3775435 (and tp!1729013 tp!1729016))))

(declare-fun b!6199711 () Bool)

(assert (=> b!6199711 (= e!3775435 tp_is_empty!41531)))

(assert (=> b!6198880 (= tp!1728877 e!3775435)))

(assert (= (and b!6198880 ((_ is ElementMatch!16139) (regOne!32790 (regTwo!32790 r!7292)))) b!6199711))

(assert (= (and b!6198880 ((_ is Concat!24984) (regOne!32790 (regTwo!32790 r!7292)))) b!6199712))

(assert (= (and b!6198880 ((_ is Star!16139) (regOne!32790 (regTwo!32790 r!7292)))) b!6199713))

(assert (= (and b!6198880 ((_ is Union!16139) (regOne!32790 (regTwo!32790 r!7292)))) b!6199714))

(declare-fun b!6199717 () Bool)

(declare-fun e!3775436 () Bool)

(declare-fun tp!1729020 () Bool)

(assert (=> b!6199717 (= e!3775436 tp!1729020)))

(declare-fun b!6199716 () Bool)

(declare-fun tp!1729022 () Bool)

(declare-fun tp!1729019 () Bool)

(assert (=> b!6199716 (= e!3775436 (and tp!1729022 tp!1729019))))

(declare-fun b!6199718 () Bool)

(declare-fun tp!1729018 () Bool)

(declare-fun tp!1729021 () Bool)

(assert (=> b!6199718 (= e!3775436 (and tp!1729018 tp!1729021))))

(declare-fun b!6199715 () Bool)

(assert (=> b!6199715 (= e!3775436 tp_is_empty!41531)))

(assert (=> b!6198880 (= tp!1728874 e!3775436)))

(assert (= (and b!6198880 ((_ is ElementMatch!16139) (regTwo!32790 (regTwo!32790 r!7292)))) b!6199715))

(assert (= (and b!6198880 ((_ is Concat!24984) (regTwo!32790 (regTwo!32790 r!7292)))) b!6199716))

(assert (= (and b!6198880 ((_ is Star!16139) (regTwo!32790 (regTwo!32790 r!7292)))) b!6199717))

(assert (= (and b!6198880 ((_ is Union!16139) (regTwo!32790 (regTwo!32790 r!7292)))) b!6199718))

(declare-fun b!6199721 () Bool)

(declare-fun e!3775437 () Bool)

(declare-fun tp!1729025 () Bool)

(assert (=> b!6199721 (= e!3775437 tp!1729025)))

(declare-fun b!6199720 () Bool)

(declare-fun tp!1729027 () Bool)

(declare-fun tp!1729024 () Bool)

(assert (=> b!6199720 (= e!3775437 (and tp!1729027 tp!1729024))))

(declare-fun b!6199722 () Bool)

(declare-fun tp!1729023 () Bool)

(declare-fun tp!1729026 () Bool)

(assert (=> b!6199722 (= e!3775437 (and tp!1729023 tp!1729026))))

(declare-fun b!6199719 () Bool)

(assert (=> b!6199719 (= e!3775437 tp_is_empty!41531)))

(assert (=> b!6198906 (= tp!1728905 e!3775437)))

(assert (= (and b!6198906 ((_ is ElementMatch!16139) (regOne!32790 (reg!16468 r!7292)))) b!6199719))

(assert (= (and b!6198906 ((_ is Concat!24984) (regOne!32790 (reg!16468 r!7292)))) b!6199720))

(assert (= (and b!6198906 ((_ is Star!16139) (regOne!32790 (reg!16468 r!7292)))) b!6199721))

(assert (= (and b!6198906 ((_ is Union!16139) (regOne!32790 (reg!16468 r!7292)))) b!6199722))

(declare-fun b!6199725 () Bool)

(declare-fun e!3775438 () Bool)

(declare-fun tp!1729030 () Bool)

(assert (=> b!6199725 (= e!3775438 tp!1729030)))

(declare-fun b!6199724 () Bool)

(declare-fun tp!1729032 () Bool)

(declare-fun tp!1729029 () Bool)

(assert (=> b!6199724 (= e!3775438 (and tp!1729032 tp!1729029))))

(declare-fun b!6199726 () Bool)

(declare-fun tp!1729028 () Bool)

(declare-fun tp!1729031 () Bool)

(assert (=> b!6199726 (= e!3775438 (and tp!1729028 tp!1729031))))

(declare-fun b!6199723 () Bool)

(assert (=> b!6199723 (= e!3775438 tp_is_empty!41531)))

(assert (=> b!6198906 (= tp!1728902 e!3775438)))

(assert (= (and b!6198906 ((_ is ElementMatch!16139) (regTwo!32790 (reg!16468 r!7292)))) b!6199723))

(assert (= (and b!6198906 ((_ is Concat!24984) (regTwo!32790 (reg!16468 r!7292)))) b!6199724))

(assert (= (and b!6198906 ((_ is Star!16139) (regTwo!32790 (reg!16468 r!7292)))) b!6199725))

(assert (= (and b!6198906 ((_ is Union!16139) (regTwo!32790 (reg!16468 r!7292)))) b!6199726))

(declare-fun b!6199729 () Bool)

(declare-fun e!3775439 () Bool)

(declare-fun tp!1729035 () Bool)

(assert (=> b!6199729 (= e!3775439 tp!1729035)))

(declare-fun b!6199728 () Bool)

(declare-fun tp!1729037 () Bool)

(declare-fun tp!1729034 () Bool)

(assert (=> b!6199728 (= e!3775439 (and tp!1729037 tp!1729034))))

(declare-fun b!6199730 () Bool)

(declare-fun tp!1729033 () Bool)

(declare-fun tp!1729036 () Bool)

(assert (=> b!6199730 (= e!3775439 (and tp!1729033 tp!1729036))))

(declare-fun b!6199727 () Bool)

(assert (=> b!6199727 (= e!3775439 tp_is_empty!41531)))

(assert (=> b!6198916 (= tp!1728911 e!3775439)))

(assert (= (and b!6198916 ((_ is ElementMatch!16139) (regOne!32791 (regTwo!32791 r!7292)))) b!6199727))

(assert (= (and b!6198916 ((_ is Concat!24984) (regOne!32791 (regTwo!32791 r!7292)))) b!6199728))

(assert (= (and b!6198916 ((_ is Star!16139) (regOne!32791 (regTwo!32791 r!7292)))) b!6199729))

(assert (= (and b!6198916 ((_ is Union!16139) (regOne!32791 (regTwo!32791 r!7292)))) b!6199730))

(declare-fun b!6199733 () Bool)

(declare-fun e!3775440 () Bool)

(declare-fun tp!1729040 () Bool)

(assert (=> b!6199733 (= e!3775440 tp!1729040)))

(declare-fun b!6199732 () Bool)

(declare-fun tp!1729042 () Bool)

(declare-fun tp!1729039 () Bool)

(assert (=> b!6199732 (= e!3775440 (and tp!1729042 tp!1729039))))

(declare-fun b!6199734 () Bool)

(declare-fun tp!1729038 () Bool)

(declare-fun tp!1729041 () Bool)

(assert (=> b!6199734 (= e!3775440 (and tp!1729038 tp!1729041))))

(declare-fun b!6199731 () Bool)

(assert (=> b!6199731 (= e!3775440 tp_is_empty!41531)))

(assert (=> b!6198916 (= tp!1728914 e!3775440)))

(assert (= (and b!6198916 ((_ is ElementMatch!16139) (regTwo!32791 (regTwo!32791 r!7292)))) b!6199731))

(assert (= (and b!6198916 ((_ is Concat!24984) (regTwo!32791 (regTwo!32791 r!7292)))) b!6199732))

(assert (= (and b!6198916 ((_ is Star!16139) (regTwo!32791 (regTwo!32791 r!7292)))) b!6199733))

(assert (= (and b!6198916 ((_ is Union!16139) (regTwo!32791 (regTwo!32791 r!7292)))) b!6199734))

(declare-fun b!6199737 () Bool)

(declare-fun e!3775441 () Bool)

(declare-fun tp!1729045 () Bool)

(assert (=> b!6199737 (= e!3775441 tp!1729045)))

(declare-fun b!6199736 () Bool)

(declare-fun tp!1729047 () Bool)

(declare-fun tp!1729044 () Bool)

(assert (=> b!6199736 (= e!3775441 (and tp!1729047 tp!1729044))))

(declare-fun b!6199738 () Bool)

(declare-fun tp!1729043 () Bool)

(declare-fun tp!1729046 () Bool)

(assert (=> b!6199738 (= e!3775441 (and tp!1729043 tp!1729046))))

(declare-fun b!6199735 () Bool)

(assert (=> b!6199735 (= e!3775441 tp_is_empty!41531)))

(assert (=> b!6198907 (= tp!1728903 e!3775441)))

(assert (= (and b!6198907 ((_ is ElementMatch!16139) (reg!16468 (reg!16468 r!7292)))) b!6199735))

(assert (= (and b!6198907 ((_ is Concat!24984) (reg!16468 (reg!16468 r!7292)))) b!6199736))

(assert (= (and b!6198907 ((_ is Star!16139) (reg!16468 (reg!16468 r!7292)))) b!6199737))

(assert (= (and b!6198907 ((_ is Union!16139) (reg!16468 (reg!16468 r!7292)))) b!6199738))

(declare-fun b!6199741 () Bool)

(declare-fun e!3775442 () Bool)

(declare-fun tp!1729050 () Bool)

(assert (=> b!6199741 (= e!3775442 tp!1729050)))

(declare-fun b!6199740 () Bool)

(declare-fun tp!1729052 () Bool)

(declare-fun tp!1729049 () Bool)

(assert (=> b!6199740 (= e!3775442 (and tp!1729052 tp!1729049))))

(declare-fun b!6199742 () Bool)

(declare-fun tp!1729048 () Bool)

(declare-fun tp!1729051 () Bool)

(assert (=> b!6199742 (= e!3775442 (and tp!1729048 tp!1729051))))

(declare-fun b!6199739 () Bool)

(assert (=> b!6199739 (= e!3775442 tp_is_empty!41531)))

(assert (=> b!6198872 (= tp!1728867 e!3775442)))

(assert (= (and b!6198872 ((_ is ElementMatch!16139) (regOne!32790 (regOne!32790 r!7292)))) b!6199739))

(assert (= (and b!6198872 ((_ is Concat!24984) (regOne!32790 (regOne!32790 r!7292)))) b!6199740))

(assert (= (and b!6198872 ((_ is Star!16139) (regOne!32790 (regOne!32790 r!7292)))) b!6199741))

(assert (= (and b!6198872 ((_ is Union!16139) (regOne!32790 (regOne!32790 r!7292)))) b!6199742))

(declare-fun b!6199745 () Bool)

(declare-fun e!3775443 () Bool)

(declare-fun tp!1729055 () Bool)

(assert (=> b!6199745 (= e!3775443 tp!1729055)))

(declare-fun b!6199744 () Bool)

(declare-fun tp!1729057 () Bool)

(declare-fun tp!1729054 () Bool)

(assert (=> b!6199744 (= e!3775443 (and tp!1729057 tp!1729054))))

(declare-fun b!6199746 () Bool)

(declare-fun tp!1729053 () Bool)

(declare-fun tp!1729056 () Bool)

(assert (=> b!6199746 (= e!3775443 (and tp!1729053 tp!1729056))))

(declare-fun b!6199743 () Bool)

(assert (=> b!6199743 (= e!3775443 tp_is_empty!41531)))

(assert (=> b!6198872 (= tp!1728864 e!3775443)))

(assert (= (and b!6198872 ((_ is ElementMatch!16139) (regTwo!32790 (regOne!32790 r!7292)))) b!6199743))

(assert (= (and b!6198872 ((_ is Concat!24984) (regTwo!32790 (regOne!32790 r!7292)))) b!6199744))

(assert (= (and b!6198872 ((_ is Star!16139) (regTwo!32790 (regOne!32790 r!7292)))) b!6199745))

(assert (= (and b!6198872 ((_ is Union!16139) (regTwo!32790 (regOne!32790 r!7292)))) b!6199746))

(declare-fun b!6199749 () Bool)

(declare-fun e!3775444 () Bool)

(declare-fun tp!1729060 () Bool)

(assert (=> b!6199749 (= e!3775444 tp!1729060)))

(declare-fun b!6199748 () Bool)

(declare-fun tp!1729062 () Bool)

(declare-fun tp!1729059 () Bool)

(assert (=> b!6199748 (= e!3775444 (and tp!1729062 tp!1729059))))

(declare-fun b!6199750 () Bool)

(declare-fun tp!1729058 () Bool)

(declare-fun tp!1729061 () Bool)

(assert (=> b!6199750 (= e!3775444 (and tp!1729058 tp!1729061))))

(declare-fun b!6199747 () Bool)

(assert (=> b!6199747 (= e!3775444 tp_is_empty!41531)))

(assert (=> b!6198881 (= tp!1728875 e!3775444)))

(assert (= (and b!6198881 ((_ is ElementMatch!16139) (reg!16468 (regTwo!32790 r!7292)))) b!6199747))

(assert (= (and b!6198881 ((_ is Concat!24984) (reg!16468 (regTwo!32790 r!7292)))) b!6199748))

(assert (= (and b!6198881 ((_ is Star!16139) (reg!16468 (regTwo!32790 r!7292)))) b!6199749))

(assert (= (and b!6198881 ((_ is Union!16139) (reg!16468 (regTwo!32790 r!7292)))) b!6199750))

(declare-fun b!6199753 () Bool)

(declare-fun e!3775445 () Bool)

(declare-fun tp!1729065 () Bool)

(assert (=> b!6199753 (= e!3775445 tp!1729065)))

(declare-fun b!6199752 () Bool)

(declare-fun tp!1729067 () Bool)

(declare-fun tp!1729064 () Bool)

(assert (=> b!6199752 (= e!3775445 (and tp!1729067 tp!1729064))))

(declare-fun b!6199754 () Bool)

(declare-fun tp!1729063 () Bool)

(declare-fun tp!1729066 () Bool)

(assert (=> b!6199754 (= e!3775445 (and tp!1729063 tp!1729066))))

(declare-fun b!6199751 () Bool)

(assert (=> b!6199751 (= e!3775445 tp_is_empty!41531)))

(assert (=> b!6198897 (= tp!1728891 e!3775445)))

(assert (= (and b!6198897 ((_ is ElementMatch!16139) (h!71040 (exprs!6023 (h!71041 zl!343))))) b!6199751))

(assert (= (and b!6198897 ((_ is Concat!24984) (h!71040 (exprs!6023 (h!71041 zl!343))))) b!6199752))

(assert (= (and b!6198897 ((_ is Star!16139) (h!71040 (exprs!6023 (h!71041 zl!343))))) b!6199753))

(assert (= (and b!6198897 ((_ is Union!16139) (h!71040 (exprs!6023 (h!71041 zl!343))))) b!6199754))

(declare-fun b!6199755 () Bool)

(declare-fun e!3775446 () Bool)

(declare-fun tp!1729068 () Bool)

(declare-fun tp!1729069 () Bool)

(assert (=> b!6199755 (= e!3775446 (and tp!1729068 tp!1729069))))

(assert (=> b!6198897 (= tp!1728892 e!3775446)))

(assert (= (and b!6198897 ((_ is Cons!64592) (t!378230 (exprs!6023 (h!71041 zl!343))))) b!6199755))

(declare-fun b!6199758 () Bool)

(declare-fun e!3775447 () Bool)

(declare-fun tp!1729072 () Bool)

(assert (=> b!6199758 (= e!3775447 tp!1729072)))

(declare-fun b!6199757 () Bool)

(declare-fun tp!1729074 () Bool)

(declare-fun tp!1729071 () Bool)

(assert (=> b!6199757 (= e!3775447 (and tp!1729074 tp!1729071))))

(declare-fun b!6199759 () Bool)

(declare-fun tp!1729070 () Bool)

(declare-fun tp!1729073 () Bool)

(assert (=> b!6199759 (= e!3775447 (and tp!1729070 tp!1729073))))

(declare-fun b!6199756 () Bool)

(assert (=> b!6199756 (= e!3775447 tp_is_empty!41531)))

(assert (=> b!6198910 (= tp!1728910 e!3775447)))

(assert (= (and b!6198910 ((_ is ElementMatch!16139) (regOne!32790 (regOne!32791 r!7292)))) b!6199756))

(assert (= (and b!6198910 ((_ is Concat!24984) (regOne!32790 (regOne!32791 r!7292)))) b!6199757))

(assert (= (and b!6198910 ((_ is Star!16139) (regOne!32790 (regOne!32791 r!7292)))) b!6199758))

(assert (= (and b!6198910 ((_ is Union!16139) (regOne!32790 (regOne!32791 r!7292)))) b!6199759))

(declare-fun b!6199762 () Bool)

(declare-fun e!3775448 () Bool)

(declare-fun tp!1729077 () Bool)

(assert (=> b!6199762 (= e!3775448 tp!1729077)))

(declare-fun b!6199761 () Bool)

(declare-fun tp!1729079 () Bool)

(declare-fun tp!1729076 () Bool)

(assert (=> b!6199761 (= e!3775448 (and tp!1729079 tp!1729076))))

(declare-fun b!6199763 () Bool)

(declare-fun tp!1729075 () Bool)

(declare-fun tp!1729078 () Bool)

(assert (=> b!6199763 (= e!3775448 (and tp!1729075 tp!1729078))))

(declare-fun b!6199760 () Bool)

(assert (=> b!6199760 (= e!3775448 tp_is_empty!41531)))

(assert (=> b!6198910 (= tp!1728907 e!3775448)))

(assert (= (and b!6198910 ((_ is ElementMatch!16139) (regTwo!32790 (regOne!32791 r!7292)))) b!6199760))

(assert (= (and b!6198910 ((_ is Concat!24984) (regTwo!32790 (regOne!32791 r!7292)))) b!6199761))

(assert (= (and b!6198910 ((_ is Star!16139) (regTwo!32790 (regOne!32791 r!7292)))) b!6199762))

(assert (= (and b!6198910 ((_ is Union!16139) (regTwo!32790 (regOne!32791 r!7292)))) b!6199763))

(declare-fun condSetEmpty!42077 () Bool)

(assert (=> setNonEmpty!42070 (= condSetEmpty!42077 (= setRest!42070 ((as const (Array Context!11046 Bool)) false)))))

(declare-fun setRes!42077 () Bool)

(assert (=> setNonEmpty!42070 (= tp!1728899 setRes!42077)))

(declare-fun setIsEmpty!42077 () Bool)

(assert (=> setIsEmpty!42077 setRes!42077))

(declare-fun setNonEmpty!42077 () Bool)

(declare-fun setElem!42077 () Context!11046)

(declare-fun e!3775449 () Bool)

(declare-fun tp!1729080 () Bool)

(assert (=> setNonEmpty!42077 (= setRes!42077 (and tp!1729080 (inv!83594 setElem!42077) e!3775449))))

(declare-fun setRest!42077 () (InoxSet Context!11046))

(assert (=> setNonEmpty!42077 (= setRest!42070 ((_ map or) (store ((as const (Array Context!11046 Bool)) false) setElem!42077 true) setRest!42077))))

(declare-fun b!6199764 () Bool)

(declare-fun tp!1729081 () Bool)

(assert (=> b!6199764 (= e!3775449 tp!1729081)))

(assert (= (and setNonEmpty!42070 condSetEmpty!42077) setIsEmpty!42077))

(assert (= (and setNonEmpty!42070 (not condSetEmpty!42077)) setNonEmpty!42077))

(assert (= setNonEmpty!42077 b!6199764))

(declare-fun m!7032798 () Bool)

(assert (=> setNonEmpty!42077 m!7032798))

(declare-fun b!6199767 () Bool)

(declare-fun e!3775450 () Bool)

(declare-fun tp!1729084 () Bool)

(assert (=> b!6199767 (= e!3775450 tp!1729084)))

(declare-fun b!6199766 () Bool)

(declare-fun tp!1729086 () Bool)

(declare-fun tp!1729083 () Bool)

(assert (=> b!6199766 (= e!3775450 (and tp!1729086 tp!1729083))))

(declare-fun b!6199768 () Bool)

(declare-fun tp!1729082 () Bool)

(declare-fun tp!1729085 () Bool)

(assert (=> b!6199768 (= e!3775450 (and tp!1729082 tp!1729085))))

(declare-fun b!6199765 () Bool)

(assert (=> b!6199765 (= e!3775450 tp_is_empty!41531)))

(assert (=> b!6198911 (= tp!1728908 e!3775450)))

(assert (= (and b!6198911 ((_ is ElementMatch!16139) (reg!16468 (regOne!32791 r!7292)))) b!6199765))

(assert (= (and b!6198911 ((_ is Concat!24984) (reg!16468 (regOne!32791 r!7292)))) b!6199766))

(assert (= (and b!6198911 ((_ is Star!16139) (reg!16468 (regOne!32791 r!7292)))) b!6199767))

(assert (= (and b!6198911 ((_ is Union!16139) (reg!16468 (regOne!32791 r!7292)))) b!6199768))

(declare-fun b!6199769 () Bool)

(declare-fun e!3775451 () Bool)

(declare-fun tp!1729087 () Bool)

(declare-fun tp!1729088 () Bool)

(assert (=> b!6199769 (= e!3775451 (and tp!1729087 tp!1729088))))

(assert (=> b!6198904 (= tp!1728900 e!3775451)))

(assert (= (and b!6198904 ((_ is Cons!64592) (exprs!6023 setElem!42070))) b!6199769))

(declare-fun b!6199772 () Bool)

(declare-fun e!3775452 () Bool)

(declare-fun tp!1729091 () Bool)

(assert (=> b!6199772 (= e!3775452 tp!1729091)))

(declare-fun b!6199771 () Bool)

(declare-fun tp!1729093 () Bool)

(declare-fun tp!1729090 () Bool)

(assert (=> b!6199771 (= e!3775452 (and tp!1729093 tp!1729090))))

(declare-fun b!6199773 () Bool)

(declare-fun tp!1729089 () Bool)

(declare-fun tp!1729092 () Bool)

(assert (=> b!6199773 (= e!3775452 (and tp!1729089 tp!1729092))))

(declare-fun b!6199770 () Bool)

(assert (=> b!6199770 (= e!3775452 tp_is_empty!41531)))

(assert (=> b!6198912 (= tp!1728906 e!3775452)))

(assert (= (and b!6198912 ((_ is ElementMatch!16139) (regOne!32791 (regOne!32791 r!7292)))) b!6199770))

(assert (= (and b!6198912 ((_ is Concat!24984) (regOne!32791 (regOne!32791 r!7292)))) b!6199771))

(assert (= (and b!6198912 ((_ is Star!16139) (regOne!32791 (regOne!32791 r!7292)))) b!6199772))

(assert (= (and b!6198912 ((_ is Union!16139) (regOne!32791 (regOne!32791 r!7292)))) b!6199773))

(declare-fun b!6199776 () Bool)

(declare-fun e!3775453 () Bool)

(declare-fun tp!1729096 () Bool)

(assert (=> b!6199776 (= e!3775453 tp!1729096)))

(declare-fun b!6199775 () Bool)

(declare-fun tp!1729098 () Bool)

(declare-fun tp!1729095 () Bool)

(assert (=> b!6199775 (= e!3775453 (and tp!1729098 tp!1729095))))

(declare-fun b!6199777 () Bool)

(declare-fun tp!1729094 () Bool)

(declare-fun tp!1729097 () Bool)

(assert (=> b!6199777 (= e!3775453 (and tp!1729094 tp!1729097))))

(declare-fun b!6199774 () Bool)

(assert (=> b!6199774 (= e!3775453 tp_is_empty!41531)))

(assert (=> b!6198912 (= tp!1728909 e!3775453)))

(assert (= (and b!6198912 ((_ is ElementMatch!16139) (regTwo!32791 (regOne!32791 r!7292)))) b!6199774))

(assert (= (and b!6198912 ((_ is Concat!24984) (regTwo!32791 (regOne!32791 r!7292)))) b!6199775))

(assert (= (and b!6198912 ((_ is Star!16139) (regTwo!32791 (regOne!32791 r!7292)))) b!6199776))

(assert (= (and b!6198912 ((_ is Union!16139) (regTwo!32791 (regOne!32791 r!7292)))) b!6199777))

(declare-fun b_lambda!235801 () Bool)

(assert (= b_lambda!235793 (or d!1943185 b_lambda!235801)))

(declare-fun bs!1538330 () Bool)

(declare-fun d!1943599 () Bool)

(assert (= bs!1538330 (and d!1943599 d!1943185)))

(assert (=> bs!1538330 (= (dynLambda!25472 lambda!338657 (h!71040 (exprs!6023 (h!71041 zl!343)))) (validRegex!7875 (h!71040 (exprs!6023 (h!71041 zl!343)))))))

(declare-fun m!7032800 () Bool)

(assert (=> bs!1538330 m!7032800))

(assert (=> b!6199381 d!1943599))

(declare-fun b_lambda!235803 () Bool)

(assert (= b_lambda!235785 (or d!1943195 b_lambda!235803)))

(declare-fun bs!1538331 () Bool)

(declare-fun d!1943601 () Bool)

(assert (= bs!1538331 (and d!1943601 d!1943195)))

(assert (=> bs!1538331 (= (dynLambda!25472 lambda!338666 (h!71040 lt!2342718)) (validRegex!7875 (h!71040 lt!2342718)))))

(declare-fun m!7032802 () Bool)

(assert (=> bs!1538331 m!7032802))

(assert (=> b!6199213 d!1943601))

(declare-fun b_lambda!235805 () Bool)

(assert (= b_lambda!235783 (or d!1943187 b_lambda!235805)))

(declare-fun bs!1538332 () Bool)

(declare-fun d!1943603 () Bool)

(assert (= bs!1538332 (and d!1943603 d!1943187)))

(assert (=> bs!1538332 (= (dynLambda!25472 lambda!338662 (h!71040 (unfocusZipperList!1560 zl!343))) (validRegex!7875 (h!71040 (unfocusZipperList!1560 zl!343))))))

(declare-fun m!7032804 () Bool)

(assert (=> bs!1538332 m!7032804))

(assert (=> b!6199166 d!1943603))

(declare-fun b_lambda!235807 () Bool)

(assert (= b_lambda!235791 (or b!6198226 b_lambda!235807)))

(assert (=> d!1943447 d!1943239))

(declare-fun b_lambda!235809 () Bool)

(assert (= b_lambda!235775 (or d!1943173 b_lambda!235809)))

(declare-fun bs!1538333 () Bool)

(declare-fun d!1943605 () Bool)

(assert (= bs!1538333 (and d!1943605 d!1943173)))

(assert (=> bs!1538333 (= (dynLambda!25472 lambda!338655 (h!71040 (exprs!6023 (h!71041 zl!343)))) (validRegex!7875 (h!71040 (exprs!6023 (h!71041 zl!343)))))))

(assert (=> bs!1538333 m!7032800))

(assert (=> b!6199024 d!1943605))

(declare-fun b_lambda!235811 () Bool)

(assert (= b_lambda!235773 (or d!1943165 b_lambda!235811)))

(declare-fun bs!1538334 () Bool)

(declare-fun d!1943607 () Bool)

(assert (= bs!1538334 (and d!1943607 d!1943165)))

(assert (=> bs!1538334 (= (dynLambda!25472 lambda!338649 (h!71040 (exprs!6023 setElem!42064))) (validRegex!7875 (h!71040 (exprs!6023 setElem!42064))))))

(declare-fun m!7032806 () Bool)

(assert (=> bs!1538334 m!7032806))

(assert (=> b!6198983 d!1943607))

(declare-fun b_lambda!235813 () Bool)

(assert (= b_lambda!235781 (or d!1943181 b_lambda!235813)))

(declare-fun bs!1538335 () Bool)

(declare-fun d!1943609 () Bool)

(assert (= bs!1538335 (and d!1943609 d!1943181)))

(assert (=> bs!1538335 (= (dynLambda!25472 lambda!338656 (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (regTwo!32790 (regOne!32790 r!7292)) (t!378230 (exprs!6023 (h!71041 zl!343)))))))) (validRegex!7875 (h!71040 (exprs!6023 (Context!11047 (Cons!64592 (regTwo!32790 (regOne!32790 r!7292)) (t!378230 (exprs!6023 (h!71041 zl!343)))))))))))

(declare-fun m!7032808 () Bool)

(assert (=> bs!1538335 m!7032808))

(assert (=> b!6199112 d!1943609))

(check-sat (not b!6199732) (not bm!518808) (not b!6199262) (not b!6199307) (not bm!518763) (not b!6199644) (not b!6199619) (not bm!518770) (not bs!1538330) (not b!6198939) (not b!6199710) (not b!6199712) (not b!6199673) (not b!6199709) (not b!6199637) (not b!6198941) (not b!6199742) (not b!6199721) (not d!1943511) (not bm!518711) (not b!6199664) (not b!6199766) (not b!6199718) (not bm!518782) (not b!6199705) (not b!6199724) (not b!6199669) (not b!6199618) (not b!6199044) (not b!6199733) (not bs!1538332) (not bm!518805) (not d!1943545) (not b!6198976) (not b!6199042) (not b!6199105) (not d!1943293) (not b!6199769) (not b!6199085) (not b!6199301) (not bm!518708) (not b!6199645) (not b!6199744) (not b!6199391) (not b!6199746) (not bm!518729) (not b!6199075) (not b!6199737) (not bm!518772) (not b!6199660) (not d!1943245) (not b!6199025) (not bm!518755) (not b!6199722) (not b!6199775) tp_is_empty!41531 (not bs!1538331) (not b!6199101) (not b!6199749) (not d!1943381) (not b!6199122) (not b!6199329) (not bm!518778) (not bm!518823) (not b!6199650) (not bm!518777) (not b!6199661) (not bm!518824) (not bs!1538335) (not b!6199285) (not b!6199300) (not b!6199498) (not bm!518826) (not setNonEmpty!42076) (not b!6199730) (not b!6199515) (not bm!518814) (not b!6199736) (not b!6199720) (not bm!518780) (not d!1943523) (not b!6199173) (not bm!518774) (not b!6199734) (not b!6199768) (not b!6199653) (not d!1943473) (not b!6198940) (not d!1943475) (not b!6199758) (not b!6199123) (not b!6199216) (not d!1943477) (not b!6199215) (not b!6199395) (not d!1943533) (not b!6199704) (not b!6199740) (not d!1943551) (not b!6199767) (not b!6199175) (not b!6199115) (not bm!518764) (not b!6199665) (not bm!518715) (not bm!518701) (not d!1943521) (not bm!518726) (not bm!518784) (not b!6199703) (not b!6199479) (not bm!518705) (not b!6199640) (not b!6199759) (not b!6199655) (not b!6199651) (not b!6199679) (not b!6199113) (not b!6199726) (not b_lambda!235809) (not b!6199259) (not b!6199674) (not b!6199754) (not bm!518714) (not b!6199098) (not b!6199659) (not d!1943447) (not d!1943507) (not b!6199097) (not b!6199716) (not b_lambda!235803) (not b!6199620) (not b!6199264) (not d!1943347) (not b!6199681) (not d!1943395) (not b!6199757) (not b!6198987) (not d!1943581) (not b!6199772) (not b!6199119) (not b!6199030) (not b!6199696) (not b!6199755) (not b!6199043) (not b!6199308) (not b!6199389) (not bm!518775) (not b!6199084) (not b!6199741) (not b!6199124) (not b!6199045) (not bs!1538333) (not b!6198974) (not b!6199752) (not d!1943377) (not b!6199668) (not bm!518709) (not d!1943595) (not d!1943427) (not b!6199750) (not b!6199214) (not b!6199663) (not d!1943479) (not b_lambda!235811) (not b!6199649) (not b!6199646) (not bm!518785) (not b!6199167) (not bm!518787) (not b!6199656) (not b!6199393) (not bm!518806) (not b!6199592) (not b!6199319) (not b!6199680) (not b!6199708) (not b!6199304) (not b!6199351) (not b!6199040) (not d!1943259) (not b!6199697) (not b!6199028) (not d!1943597) (not b_lambda!235813) (not b!6199614) (not d!1943429) (not b!6199642) (not b!6199255) (not b!6199773) (not setNonEmpty!42077) (not b!6199616) (not b!6199554) (not b!6199480) (not bm!518692) (not d!1943593) (not bm!518815) (not bm!518727) (not b!6199667) (not b!6199771) (not b!6199738) (not b!6199728) (not b!6199104) (not d!1943573) (not b!6199010) (not d!1943257) (not b!6199041) (not d!1943299) (not b!6199074) (not b!6199046) (not d!1943455) (not d!1943327) (not b!6199717) (not bm!518716) (not b!6198975) (not d!1943247) (not bm!518754) (not b!6199675) (not d!1943565) (not b!6199382) (not b!6199617) (not b!6199764) (not b!6199358) (not b!6199545) (not b!6199589) (not d!1943349) (not bm!518753) (not d!1943249) (not b!6199508) (not b!6199714) (not b!6199588) (not b!6199753) (not b!6198984) (not bm!518730) (not d!1943317) (not d!1943417) (not b!6199392) (not d!1943445) (not b!6199762) (not b!6199763) (not bm!518733) (not b!6199777) (not bm!518827) (not bm!518704) (not b_lambda!235801) (not d!1943449) (not bm!518769) (not b!6199309) (not d!1943361) (not b!6199256) (not b!6199360) (not b!6198933) (not b_lambda!235807) (not d!1943297) (not b!6199748) (not d!1943389) (not b!6199086) (not bs!1538334) (not b!6199263) (not b!6198936) (not bm!518767) (not bm!518732) (not b!6199324) (not b!6199149) (not b!6199652) (not b!6198989) (not b!6199116) (not b_lambda!235771) (not b!6199648) (not b!6199657) (not b!6199706) (not b!6199394) (not b!6199367) (not b!6199725) (not b!6199695) (not b!6199745) (not bm!518811) (not b!6199729) (not b!6198932) (not bm!518809) (not b!6199776) (not b!6199593) (not b!6199713) (not b!6199761) (not b!6199639) (not b!6199388) (not b!6199021) (not b!6199331) (not b_lambda!235805) (not b!6199396) (not b!6199106))
(check-sat)
