; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!618692 () Bool)

(assert start!618692)

(declare-fun b!6203913 () Bool)

(assert (=> b!6203913 true))

(assert (=> b!6203913 true))

(declare-fun lambda!339027 () Int)

(declare-fun lambda!339026 () Int)

(assert (=> b!6203913 (not (= lambda!339027 lambda!339026))))

(assert (=> b!6203913 true))

(assert (=> b!6203913 true))

(declare-fun b!6203896 () Bool)

(assert (=> b!6203896 true))

(declare-fun b!6203895 () Bool)

(declare-fun res!2565904 () Bool)

(declare-fun e!3777686 () Bool)

(assert (=> b!6203895 (=> res!2565904 e!3777686)))

(declare-datatypes ((C!32558 0))(
  ( (C!32559 (val!25981 Int)) )
))
(declare-datatypes ((Regex!16144 0))(
  ( (ElementMatch!16144 (c!1120079 C!32558)) (Concat!24989 (regOne!32800 Regex!16144) (regTwo!32800 Regex!16144)) (EmptyExpr!16144) (Star!16144 (reg!16473 Regex!16144)) (EmptyLang!16144) (Union!16144 (regOne!32801 Regex!16144) (regTwo!32801 Regex!16144)) )
))
(declare-datatypes ((List!64731 0))(
  ( (Nil!64607) (Cons!64607 (h!71055 Regex!16144) (t!378251 List!64731)) )
))
(declare-datatypes ((Context!11056 0))(
  ( (Context!11057 (exprs!6028 List!64731)) )
))
(declare-datatypes ((List!64732 0))(
  ( (Nil!64608) (Cons!64608 (h!71056 Context!11056) (t!378252 List!64732)) )
))
(declare-fun zl!343 () List!64732)

(assert (=> b!6203895 (= res!2565904 (not (is-Cons!64607 (exprs!6028 (h!71056 zl!343)))))))

(declare-fun e!3777678 () Bool)

(declare-fun e!3777684 () Bool)

(assert (=> b!6203896 (= e!3777678 e!3777684)))

(declare-fun res!2565905 () Bool)

(assert (=> b!6203896 (=> res!2565905 e!3777684)))

(declare-fun r!7292 () Regex!16144)

(declare-datatypes ((List!64733 0))(
  ( (Nil!64609) (Cons!64609 (h!71057 C!32558) (t!378253 List!64733)) )
))
(declare-fun s!2326 () List!64733)

(assert (=> b!6203896 (= res!2565905 (or (and (is-ElementMatch!16144 (regOne!32800 r!7292)) (= (c!1120079 (regOne!32800 r!7292)) (h!71057 s!2326))) (is-Union!16144 (regOne!32800 r!7292)) (not (is-Concat!24989 (regOne!32800 r!7292)))))))

(declare-datatypes ((Unit!157907 0))(
  ( (Unit!157908) )
))
(declare-fun lt!2343229 () Unit!157907)

(declare-fun e!3777681 () Unit!157907)

(assert (=> b!6203896 (= lt!2343229 e!3777681)))

(declare-fun c!1120078 () Bool)

(declare-fun nullable!6137 (Regex!16144) Bool)

(assert (=> b!6203896 (= c!1120078 (nullable!6137 (h!71055 (exprs!6028 (h!71056 zl!343)))))))

(declare-fun z!1189 () (Set Context!11056))

(declare-fun lambda!339028 () Int)

(declare-fun flatMap!1649 ((Set Context!11056) Int) (Set Context!11056))

(declare-fun derivationStepZipperUp!1318 (Context!11056 C!32558) (Set Context!11056))

(assert (=> b!6203896 (= (flatMap!1649 z!1189 lambda!339028) (derivationStepZipperUp!1318 (h!71056 zl!343) (h!71057 s!2326)))))

(declare-fun lt!2343236 () Unit!157907)

(declare-fun lemmaFlatMapOnSingletonSet!1175 ((Set Context!11056) Context!11056 Int) Unit!157907)

(assert (=> b!6203896 (= lt!2343236 (lemmaFlatMapOnSingletonSet!1175 z!1189 (h!71056 zl!343) lambda!339028))))

(declare-fun lt!2343240 () (Set Context!11056))

(declare-fun lt!2343238 () Context!11056)

(assert (=> b!6203896 (= lt!2343240 (derivationStepZipperUp!1318 lt!2343238 (h!71057 s!2326)))))

(declare-fun lt!2343239 () (Set Context!11056))

(declare-fun derivationStepZipperDown!1392 (Regex!16144 Context!11056 C!32558) (Set Context!11056))

(assert (=> b!6203896 (= lt!2343239 (derivationStepZipperDown!1392 (h!71055 (exprs!6028 (h!71056 zl!343))) lt!2343238 (h!71057 s!2326)))))

(assert (=> b!6203896 (= lt!2343238 (Context!11057 (t!378251 (exprs!6028 (h!71056 zl!343)))))))

(declare-fun lt!2343230 () (Set Context!11056))

(assert (=> b!6203896 (= lt!2343230 (derivationStepZipperUp!1318 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343))))) (h!71057 s!2326)))))

(declare-fun b!6203897 () Bool)

(declare-fun res!2565902 () Bool)

(assert (=> b!6203897 (=> res!2565902 e!3777684)))

(assert (=> b!6203897 (= res!2565902 (not (nullable!6137 (regOne!32800 (regOne!32800 r!7292)))))))

(declare-fun b!6203898 () Bool)

(declare-fun e!3777680 () Bool)

(declare-fun tp!1730265 () Bool)

(assert (=> b!6203898 (= e!3777680 tp!1730265)))

(declare-fun b!6203899 () Bool)

(declare-fun res!2565906 () Bool)

(assert (=> b!6203899 (=> res!2565906 e!3777686)))

(declare-fun generalisedUnion!1988 (List!64731) Regex!16144)

(declare-fun unfocusZipperList!1565 (List!64732) List!64731)

(assert (=> b!6203899 (= res!2565906 (not (= r!7292 (generalisedUnion!1988 (unfocusZipperList!1565 zl!343)))))))

(declare-fun b!6203900 () Bool)

(declare-fun e!3777683 () Bool)

(assert (=> b!6203900 (= e!3777683 (not e!3777686))))

(declare-fun res!2565903 () Bool)

(assert (=> b!6203900 (=> res!2565903 e!3777686)))

(assert (=> b!6203900 (= res!2565903 (not (is-Cons!64608 zl!343)))))

(declare-fun lt!2343234 () Bool)

(declare-fun matchRSpec!3245 (Regex!16144 List!64733) Bool)

(assert (=> b!6203900 (= lt!2343234 (matchRSpec!3245 r!7292 s!2326))))

(declare-fun matchR!8327 (Regex!16144 List!64733) Bool)

(assert (=> b!6203900 (= lt!2343234 (matchR!8327 r!7292 s!2326))))

(declare-fun lt!2343235 () Unit!157907)

(declare-fun mainMatchTheorem!3245 (Regex!16144 List!64733) Unit!157907)

(assert (=> b!6203900 (= lt!2343235 (mainMatchTheorem!3245 r!7292 s!2326))))

(declare-fun tp!1730260 () Bool)

(declare-fun e!3777679 () Bool)

(declare-fun b!6203901 () Bool)

(declare-fun inv!83608 (Context!11056) Bool)

(assert (=> b!6203901 (= e!3777679 (and (inv!83608 (h!71056 zl!343)) e!3777680 tp!1730260))))

(declare-fun res!2565900 () Bool)

(assert (=> start!618692 (=> (not res!2565900) (not e!3777683))))

(declare-fun validRegex!7880 (Regex!16144) Bool)

(assert (=> start!618692 (= res!2565900 (validRegex!7880 r!7292))))

(assert (=> start!618692 e!3777683))

(declare-fun e!3777685 () Bool)

(assert (=> start!618692 e!3777685))

(declare-fun condSetEmpty!42121 () Bool)

(assert (=> start!618692 (= condSetEmpty!42121 (= z!1189 (as set.empty (Set Context!11056))))))

(declare-fun setRes!42121 () Bool)

(assert (=> start!618692 setRes!42121))

(assert (=> start!618692 e!3777679))

(declare-fun e!3777682 () Bool)

(assert (=> start!618692 e!3777682))

(declare-fun b!6203902 () Bool)

(declare-fun tp_is_empty!41541 () Bool)

(assert (=> b!6203902 (= e!3777685 tp_is_empty!41541)))

(declare-fun b!6203903 () Bool)

(declare-fun res!2565894 () Bool)

(assert (=> b!6203903 (=> res!2565894 e!3777686)))

(assert (=> b!6203903 (= res!2565894 (or (is-EmptyExpr!16144 r!7292) (is-EmptyLang!16144 r!7292) (is-ElementMatch!16144 r!7292) (is-Union!16144 r!7292) (not (is-Concat!24989 r!7292))))))

(declare-fun b!6203904 () Bool)

(declare-fun res!2565899 () Bool)

(assert (=> b!6203904 (=> res!2565899 e!3777686)))

(declare-fun isEmpty!36604 (List!64732) Bool)

(assert (=> b!6203904 (= res!2565899 (not (isEmpty!36604 (t!378252 zl!343))))))

(declare-fun b!6203905 () Bool)

(declare-fun e!3777677 () Bool)

(declare-fun matchZipper!2156 ((Set Context!11056) List!64733) Bool)

(assert (=> b!6203905 (= e!3777677 (matchZipper!2156 lt!2343240 (t!378253 s!2326)))))

(declare-fun b!6203906 () Bool)

(assert (=> b!6203906 (= e!3777684 (inv!83608 lt!2343238))))

(declare-fun b!6203907 () Bool)

(declare-fun e!3777676 () Bool)

(declare-fun tp!1730264 () Bool)

(assert (=> b!6203907 (= e!3777676 tp!1730264)))

(declare-fun setIsEmpty!42121 () Bool)

(assert (=> setIsEmpty!42121 setRes!42121))

(declare-fun b!6203908 () Bool)

(declare-fun Unit!157909 () Unit!157907)

(assert (=> b!6203908 (= e!3777681 Unit!157909)))

(declare-fun b!6203909 () Bool)

(declare-fun res!2565896 () Bool)

(assert (=> b!6203909 (=> res!2565896 e!3777684)))

(assert (=> b!6203909 (= res!2565896 (not (= lt!2343239 (set.union (derivationStepZipperDown!1392 (regOne!32800 (regOne!32800 r!7292)) (Context!11057 (Cons!64607 (regTwo!32800 (regOne!32800 r!7292)) (t!378251 (exprs!6028 (h!71056 zl!343))))) (h!71057 s!2326)) (derivationStepZipperDown!1392 (regTwo!32800 (regOne!32800 r!7292)) lt!2343238 (h!71057 s!2326))))))))

(declare-fun b!6203910 () Bool)

(declare-fun Unit!157910 () Unit!157907)

(assert (=> b!6203910 (= e!3777681 Unit!157910)))

(declare-fun lt!2343233 () Unit!157907)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!975 ((Set Context!11056) (Set Context!11056) List!64733) Unit!157907)

(assert (=> b!6203910 (= lt!2343233 (lemmaZipperConcatMatchesSameAsBothZippers!975 lt!2343239 lt!2343240 (t!378253 s!2326)))))

(declare-fun res!2565897 () Bool)

(assert (=> b!6203910 (= res!2565897 (matchZipper!2156 lt!2343239 (t!378253 s!2326)))))

(assert (=> b!6203910 (=> res!2565897 e!3777677)))

(assert (=> b!6203910 (= (matchZipper!2156 (set.union lt!2343239 lt!2343240) (t!378253 s!2326)) e!3777677)))

(declare-fun b!6203911 () Bool)

(declare-fun res!2565893 () Bool)

(assert (=> b!6203911 (=> res!2565893 e!3777686)))

(declare-fun generalisedConcat!1741 (List!64731) Regex!16144)

(assert (=> b!6203911 (= res!2565893 (not (= r!7292 (generalisedConcat!1741 (exprs!6028 (h!71056 zl!343))))))))

(declare-fun tp!1730263 () Bool)

(declare-fun setNonEmpty!42121 () Bool)

(declare-fun setElem!42121 () Context!11056)

(assert (=> setNonEmpty!42121 (= setRes!42121 (and tp!1730263 (inv!83608 setElem!42121) e!3777676))))

(declare-fun setRest!42121 () (Set Context!11056))

(assert (=> setNonEmpty!42121 (= z!1189 (set.union (set.insert setElem!42121 (as set.empty (Set Context!11056))) setRest!42121))))

(declare-fun b!6203912 () Bool)

(declare-fun tp!1730261 () Bool)

(assert (=> b!6203912 (= e!3777682 (and tp_is_empty!41541 tp!1730261))))

(assert (=> b!6203913 (= e!3777686 e!3777678)))

(declare-fun res!2565892 () Bool)

(assert (=> b!6203913 (=> res!2565892 e!3777678)))

(declare-fun lt!2343237 () Bool)

(assert (=> b!6203913 (= res!2565892 (or (not (= lt!2343234 lt!2343237)) (is-Nil!64609 s!2326)))))

(declare-fun Exists!3214 (Int) Bool)

(assert (=> b!6203913 (= (Exists!3214 lambda!339026) (Exists!3214 lambda!339027))))

(declare-fun lt!2343232 () Unit!157907)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1751 (Regex!16144 Regex!16144 List!64733) Unit!157907)

(assert (=> b!6203913 (= lt!2343232 (lemmaExistCutMatchRandMatchRSpecEquivalent!1751 (regOne!32800 r!7292) (regTwo!32800 r!7292) s!2326))))

(assert (=> b!6203913 (= lt!2343237 (Exists!3214 lambda!339026))))

(declare-datatypes ((tuple2!66246 0))(
  ( (tuple2!66247 (_1!36426 List!64733) (_2!36426 List!64733)) )
))
(declare-datatypes ((Option!16035 0))(
  ( (None!16034) (Some!16034 (v!52177 tuple2!66246)) )
))
(declare-fun isDefined!12738 (Option!16035) Bool)

(declare-fun findConcatSeparation!2449 (Regex!16144 Regex!16144 List!64733 List!64733 List!64733) Option!16035)

(assert (=> b!6203913 (= lt!2343237 (isDefined!12738 (findConcatSeparation!2449 (regOne!32800 r!7292) (regTwo!32800 r!7292) Nil!64609 s!2326 s!2326)))))

(declare-fun lt!2343231 () Unit!157907)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2213 (Regex!16144 Regex!16144 List!64733) Unit!157907)

(assert (=> b!6203913 (= lt!2343231 (lemmaFindConcatSeparationEquivalentToExists!2213 (regOne!32800 r!7292) (regTwo!32800 r!7292) s!2326))))

(declare-fun b!6203914 () Bool)

(declare-fun res!2565898 () Bool)

(assert (=> b!6203914 (=> res!2565898 e!3777678)))

(declare-fun isEmpty!36605 (List!64731) Bool)

(assert (=> b!6203914 (= res!2565898 (isEmpty!36605 (t!378251 (exprs!6028 (h!71056 zl!343)))))))

(declare-fun b!6203915 () Bool)

(declare-fun res!2565901 () Bool)

(assert (=> b!6203915 (=> (not res!2565901) (not e!3777683))))

(declare-fun toList!9928 ((Set Context!11056)) List!64732)

(assert (=> b!6203915 (= res!2565901 (= (toList!9928 z!1189) zl!343))))

(declare-fun b!6203916 () Bool)

(declare-fun tp!1730268 () Bool)

(declare-fun tp!1730262 () Bool)

(assert (=> b!6203916 (= e!3777685 (and tp!1730268 tp!1730262))))

(declare-fun b!6203917 () Bool)

(declare-fun tp!1730267 () Bool)

(assert (=> b!6203917 (= e!3777685 tp!1730267)))

(declare-fun b!6203918 () Bool)

(declare-fun res!2565895 () Bool)

(assert (=> b!6203918 (=> (not res!2565895) (not e!3777683))))

(declare-fun unfocusZipper!1886 (List!64732) Regex!16144)

(assert (=> b!6203918 (= res!2565895 (= r!7292 (unfocusZipper!1886 zl!343)))))

(declare-fun b!6203919 () Bool)

(declare-fun tp!1730266 () Bool)

(declare-fun tp!1730259 () Bool)

(assert (=> b!6203919 (= e!3777685 (and tp!1730266 tp!1730259))))

(assert (= (and start!618692 res!2565900) b!6203915))

(assert (= (and b!6203915 res!2565901) b!6203918))

(assert (= (and b!6203918 res!2565895) b!6203900))

(assert (= (and b!6203900 (not res!2565903)) b!6203904))

(assert (= (and b!6203904 (not res!2565899)) b!6203911))

(assert (= (and b!6203911 (not res!2565893)) b!6203895))

(assert (= (and b!6203895 (not res!2565904)) b!6203899))

(assert (= (and b!6203899 (not res!2565906)) b!6203903))

(assert (= (and b!6203903 (not res!2565894)) b!6203913))

(assert (= (and b!6203913 (not res!2565892)) b!6203914))

(assert (= (and b!6203914 (not res!2565898)) b!6203896))

(assert (= (and b!6203896 c!1120078) b!6203910))

(assert (= (and b!6203896 (not c!1120078)) b!6203908))

(assert (= (and b!6203910 (not res!2565897)) b!6203905))

(assert (= (and b!6203896 (not res!2565905)) b!6203897))

(assert (= (and b!6203897 (not res!2565902)) b!6203909))

(assert (= (and b!6203909 (not res!2565896)) b!6203906))

(assert (= (and start!618692 (is-ElementMatch!16144 r!7292)) b!6203902))

(assert (= (and start!618692 (is-Concat!24989 r!7292)) b!6203916))

(assert (= (and start!618692 (is-Star!16144 r!7292)) b!6203917))

(assert (= (and start!618692 (is-Union!16144 r!7292)) b!6203919))

(assert (= (and start!618692 condSetEmpty!42121) setIsEmpty!42121))

(assert (= (and start!618692 (not condSetEmpty!42121)) setNonEmpty!42121))

(assert (= setNonEmpty!42121 b!6203907))

(assert (= b!6203901 b!6203898))

(assert (= (and start!618692 (is-Cons!64608 zl!343)) b!6203901))

(assert (= (and start!618692 (is-Cons!64609 s!2326)) b!6203912))

(declare-fun m!7035698 () Bool)

(assert (=> b!6203910 m!7035698))

(declare-fun m!7035700 () Bool)

(assert (=> b!6203910 m!7035700))

(declare-fun m!7035702 () Bool)

(assert (=> b!6203910 m!7035702))

(declare-fun m!7035704 () Bool)

(assert (=> b!6203897 m!7035704))

(declare-fun m!7035706 () Bool)

(assert (=> b!6203901 m!7035706))

(declare-fun m!7035708 () Bool)

(assert (=> b!6203918 m!7035708))

(declare-fun m!7035710 () Bool)

(assert (=> b!6203904 m!7035710))

(declare-fun m!7035712 () Bool)

(assert (=> b!6203899 m!7035712))

(assert (=> b!6203899 m!7035712))

(declare-fun m!7035714 () Bool)

(assert (=> b!6203899 m!7035714))

(declare-fun m!7035716 () Bool)

(assert (=> b!6203914 m!7035716))

(declare-fun m!7035718 () Bool)

(assert (=> b!6203911 m!7035718))

(declare-fun m!7035720 () Bool)

(assert (=> setNonEmpty!42121 m!7035720))

(declare-fun m!7035722 () Bool)

(assert (=> b!6203915 m!7035722))

(declare-fun m!7035724 () Bool)

(assert (=> b!6203905 m!7035724))

(declare-fun m!7035726 () Bool)

(assert (=> b!6203909 m!7035726))

(declare-fun m!7035728 () Bool)

(assert (=> b!6203909 m!7035728))

(declare-fun m!7035730 () Bool)

(assert (=> b!6203896 m!7035730))

(declare-fun m!7035732 () Bool)

(assert (=> b!6203896 m!7035732))

(declare-fun m!7035734 () Bool)

(assert (=> b!6203896 m!7035734))

(declare-fun m!7035736 () Bool)

(assert (=> b!6203896 m!7035736))

(declare-fun m!7035738 () Bool)

(assert (=> b!6203896 m!7035738))

(declare-fun m!7035740 () Bool)

(assert (=> b!6203896 m!7035740))

(declare-fun m!7035742 () Bool)

(assert (=> b!6203896 m!7035742))

(declare-fun m!7035744 () Bool)

(assert (=> b!6203913 m!7035744))

(declare-fun m!7035746 () Bool)

(assert (=> b!6203913 m!7035746))

(declare-fun m!7035748 () Bool)

(assert (=> b!6203913 m!7035748))

(declare-fun m!7035750 () Bool)

(assert (=> b!6203913 m!7035750))

(assert (=> b!6203913 m!7035750))

(declare-fun m!7035752 () Bool)

(assert (=> b!6203913 m!7035752))

(assert (=> b!6203913 m!7035746))

(declare-fun m!7035754 () Bool)

(assert (=> b!6203913 m!7035754))

(declare-fun m!7035756 () Bool)

(assert (=> b!6203900 m!7035756))

(declare-fun m!7035758 () Bool)

(assert (=> b!6203900 m!7035758))

(declare-fun m!7035760 () Bool)

(assert (=> b!6203900 m!7035760))

(declare-fun m!7035762 () Bool)

(assert (=> b!6203906 m!7035762))

(declare-fun m!7035764 () Bool)

(assert (=> start!618692 m!7035764))

(push 1)

(assert (not b!6203917))

(assert (not b!6203913))

(assert (not b!6203904))

(assert (not b!6203907))

(assert (not b!6203911))

(assert (not b!6203898))

(assert (not b!6203915))

(assert (not b!6203896))

(assert (not b!6203906))

(assert (not b!6203918))

(assert (not setNonEmpty!42121))

(assert (not b!6203912))

(assert (not b!6203900))

(assert (not b!6203901))

(assert (not b!6203899))

(assert (not b!6203910))

(assert (not b!6203905))

(assert (not b!6203916))

(assert (not b!6203914))

(assert (not b!6203909))

(assert tp_is_empty!41541)

(assert (not b!6203897))

(assert (not b!6203919))

(assert (not start!618692))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1944736 () Bool)

(declare-fun lambda!339042 () Int)

(declare-fun forall!15258 (List!64731 Int) Bool)

(assert (=> d!1944736 (= (inv!83608 lt!2343238) (forall!15258 (exprs!6028 lt!2343238) lambda!339042))))

(declare-fun bs!1539036 () Bool)

(assert (= bs!1539036 d!1944736))

(declare-fun m!7035834 () Bool)

(assert (=> bs!1539036 m!7035834))

(assert (=> b!6203906 d!1944736))

(declare-fun d!1944738 () Bool)

(declare-fun e!3777728 () Bool)

(assert (=> d!1944738 e!3777728))

(declare-fun res!2565966 () Bool)

(assert (=> d!1944738 (=> (not res!2565966) (not e!3777728))))

(declare-fun lt!2343279 () List!64732)

(declare-fun noDuplicate!1982 (List!64732) Bool)

(assert (=> d!1944738 (= res!2565966 (noDuplicate!1982 lt!2343279))))

(declare-fun choose!46112 ((Set Context!11056)) List!64732)

(assert (=> d!1944738 (= lt!2343279 (choose!46112 z!1189))))

(assert (=> d!1944738 (= (toList!9928 z!1189) lt!2343279)))

(declare-fun b!6204021 () Bool)

(declare-fun content!12083 (List!64732) (Set Context!11056))

(assert (=> b!6204021 (= e!3777728 (= (content!12083 lt!2343279) z!1189))))

(assert (= (and d!1944738 res!2565966) b!6204021))

(declare-fun m!7035836 () Bool)

(assert (=> d!1944738 m!7035836))

(declare-fun m!7035838 () Bool)

(assert (=> d!1944738 m!7035838))

(declare-fun m!7035840 () Bool)

(assert (=> b!6204021 m!7035840))

(assert (=> b!6203915 d!1944738))

(declare-fun d!1944740 () Bool)

(assert (=> d!1944740 (= (isEmpty!36605 (t!378251 (exprs!6028 (h!71056 zl!343)))) (is-Nil!64607 (t!378251 (exprs!6028 (h!71056 zl!343)))))))

(assert (=> b!6203914 d!1944740))

(declare-fun d!1944742 () Bool)

(declare-fun nullableFct!2093 (Regex!16144) Bool)

(assert (=> d!1944742 (= (nullable!6137 (regOne!32800 (regOne!32800 r!7292))) (nullableFct!2093 (regOne!32800 (regOne!32800 r!7292))))))

(declare-fun bs!1539037 () Bool)

(assert (= bs!1539037 d!1944742))

(declare-fun m!7035842 () Bool)

(assert (=> bs!1539037 m!7035842))

(assert (=> b!6203897 d!1944742))

(declare-fun d!1944744 () Bool)

(declare-fun choose!46113 ((Set Context!11056) Int) (Set Context!11056))

(assert (=> d!1944744 (= (flatMap!1649 z!1189 lambda!339028) (choose!46113 z!1189 lambda!339028))))

(declare-fun bs!1539038 () Bool)

(assert (= bs!1539038 d!1944744))

(declare-fun m!7035844 () Bool)

(assert (=> bs!1539038 m!7035844))

(assert (=> b!6203896 d!1944744))

(declare-fun b!6204032 () Bool)

(declare-fun e!3777737 () (Set Context!11056))

(declare-fun call!519415 () (Set Context!11056))

(assert (=> b!6204032 (= e!3777737 call!519415)))

(declare-fun b!6204033 () Bool)

(declare-fun e!3777736 () (Set Context!11056))

(assert (=> b!6204033 (= e!3777736 e!3777737)))

(declare-fun c!1120091 () Bool)

(assert (=> b!6204033 (= c!1120091 (is-Cons!64607 (exprs!6028 lt!2343238)))))

(declare-fun d!1944746 () Bool)

(declare-fun c!1120092 () Bool)

(declare-fun e!3777735 () Bool)

(assert (=> d!1944746 (= c!1120092 e!3777735)))

(declare-fun res!2565969 () Bool)

(assert (=> d!1944746 (=> (not res!2565969) (not e!3777735))))

(assert (=> d!1944746 (= res!2565969 (is-Cons!64607 (exprs!6028 lt!2343238)))))

(assert (=> d!1944746 (= (derivationStepZipperUp!1318 lt!2343238 (h!71057 s!2326)) e!3777736)))

(declare-fun bm!519410 () Bool)

(assert (=> bm!519410 (= call!519415 (derivationStepZipperDown!1392 (h!71055 (exprs!6028 lt!2343238)) (Context!11057 (t!378251 (exprs!6028 lt!2343238))) (h!71057 s!2326)))))

(declare-fun b!6204034 () Bool)

(assert (=> b!6204034 (= e!3777735 (nullable!6137 (h!71055 (exprs!6028 lt!2343238))))))

(declare-fun b!6204035 () Bool)

(assert (=> b!6204035 (= e!3777737 (as set.empty (Set Context!11056)))))

(declare-fun b!6204036 () Bool)

(assert (=> b!6204036 (= e!3777736 (set.union call!519415 (derivationStepZipperUp!1318 (Context!11057 (t!378251 (exprs!6028 lt!2343238))) (h!71057 s!2326))))))

(assert (= (and d!1944746 res!2565969) b!6204034))

(assert (= (and d!1944746 c!1120092) b!6204036))

(assert (= (and d!1944746 (not c!1120092)) b!6204033))

(assert (= (and b!6204033 c!1120091) b!6204032))

(assert (= (and b!6204033 (not c!1120091)) b!6204035))

(assert (= (or b!6204036 b!6204032) bm!519410))

(declare-fun m!7035846 () Bool)

(assert (=> bm!519410 m!7035846))

(declare-fun m!7035848 () Bool)

(assert (=> b!6204034 m!7035848))

(declare-fun m!7035850 () Bool)

(assert (=> b!6204036 m!7035850))

(assert (=> b!6203896 d!1944746))

(declare-fun d!1944748 () Bool)

(assert (=> d!1944748 (= (nullable!6137 (h!71055 (exprs!6028 (h!71056 zl!343)))) (nullableFct!2093 (h!71055 (exprs!6028 (h!71056 zl!343)))))))

(declare-fun bs!1539039 () Bool)

(assert (= bs!1539039 d!1944748))

(declare-fun m!7035852 () Bool)

(assert (=> bs!1539039 m!7035852))

(assert (=> b!6203896 d!1944748))

(declare-fun b!6204037 () Bool)

(declare-fun e!3777740 () (Set Context!11056))

(declare-fun call!519416 () (Set Context!11056))

(assert (=> b!6204037 (= e!3777740 call!519416)))

(declare-fun b!6204038 () Bool)

(declare-fun e!3777739 () (Set Context!11056))

(assert (=> b!6204038 (= e!3777739 e!3777740)))

(declare-fun c!1120093 () Bool)

(assert (=> b!6204038 (= c!1120093 (is-Cons!64607 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343))))))))))

(declare-fun d!1944750 () Bool)

(declare-fun c!1120094 () Bool)

(declare-fun e!3777738 () Bool)

(assert (=> d!1944750 (= c!1120094 e!3777738)))

(declare-fun res!2565970 () Bool)

(assert (=> d!1944750 (=> (not res!2565970) (not e!3777738))))

(assert (=> d!1944750 (= res!2565970 (is-Cons!64607 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343))))))))))

(assert (=> d!1944750 (= (derivationStepZipperUp!1318 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343))))) (h!71057 s!2326)) e!3777739)))

(declare-fun bm!519411 () Bool)

(assert (=> bm!519411 (= call!519416 (derivationStepZipperDown!1392 (h!71055 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343))))))) (Context!11057 (t!378251 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))) (h!71057 s!2326)))))

(declare-fun b!6204039 () Bool)

(assert (=> b!6204039 (= e!3777738 (nullable!6137 (h!71055 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))))))

(declare-fun b!6204040 () Bool)

(assert (=> b!6204040 (= e!3777740 (as set.empty (Set Context!11056)))))

(declare-fun b!6204041 () Bool)

(assert (=> b!6204041 (= e!3777739 (set.union call!519416 (derivationStepZipperUp!1318 (Context!11057 (t!378251 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))) (h!71057 s!2326))))))

(assert (= (and d!1944750 res!2565970) b!6204039))

(assert (= (and d!1944750 c!1120094) b!6204041))

(assert (= (and d!1944750 (not c!1120094)) b!6204038))

(assert (= (and b!6204038 c!1120093) b!6204037))

(assert (= (and b!6204038 (not c!1120093)) b!6204040))

(assert (= (or b!6204041 b!6204037) bm!519411))

(declare-fun m!7035854 () Bool)

(assert (=> bm!519411 m!7035854))

(declare-fun m!7035856 () Bool)

(assert (=> b!6204039 m!7035856))

(declare-fun m!7035858 () Bool)

(assert (=> b!6204041 m!7035858))

(assert (=> b!6203896 d!1944750))

(declare-fun b!6204042 () Bool)

(declare-fun e!3777743 () (Set Context!11056))

(declare-fun call!519417 () (Set Context!11056))

(assert (=> b!6204042 (= e!3777743 call!519417)))

(declare-fun b!6204043 () Bool)

(declare-fun e!3777742 () (Set Context!11056))

(assert (=> b!6204043 (= e!3777742 e!3777743)))

(declare-fun c!1120095 () Bool)

(assert (=> b!6204043 (= c!1120095 (is-Cons!64607 (exprs!6028 (h!71056 zl!343))))))

(declare-fun d!1944752 () Bool)

(declare-fun c!1120096 () Bool)

(declare-fun e!3777741 () Bool)

(assert (=> d!1944752 (= c!1120096 e!3777741)))

(declare-fun res!2565971 () Bool)

(assert (=> d!1944752 (=> (not res!2565971) (not e!3777741))))

(assert (=> d!1944752 (= res!2565971 (is-Cons!64607 (exprs!6028 (h!71056 zl!343))))))

(assert (=> d!1944752 (= (derivationStepZipperUp!1318 (h!71056 zl!343) (h!71057 s!2326)) e!3777742)))

(declare-fun bm!519412 () Bool)

(assert (=> bm!519412 (= call!519417 (derivationStepZipperDown!1392 (h!71055 (exprs!6028 (h!71056 zl!343))) (Context!11057 (t!378251 (exprs!6028 (h!71056 zl!343)))) (h!71057 s!2326)))))

(declare-fun b!6204044 () Bool)

(assert (=> b!6204044 (= e!3777741 (nullable!6137 (h!71055 (exprs!6028 (h!71056 zl!343)))))))

(declare-fun b!6204045 () Bool)

(assert (=> b!6204045 (= e!3777743 (as set.empty (Set Context!11056)))))

(declare-fun b!6204046 () Bool)

(assert (=> b!6204046 (= e!3777742 (set.union call!519417 (derivationStepZipperUp!1318 (Context!11057 (t!378251 (exprs!6028 (h!71056 zl!343)))) (h!71057 s!2326))))))

(assert (= (and d!1944752 res!2565971) b!6204044))

(assert (= (and d!1944752 c!1120096) b!6204046))

(assert (= (and d!1944752 (not c!1120096)) b!6204043))

(assert (= (and b!6204043 c!1120095) b!6204042))

(assert (= (and b!6204043 (not c!1120095)) b!6204045))

(assert (= (or b!6204046 b!6204042) bm!519412))

(declare-fun m!7035860 () Bool)

(assert (=> bm!519412 m!7035860))

(assert (=> b!6204044 m!7035738))

(declare-fun m!7035862 () Bool)

(assert (=> b!6204046 m!7035862))

(assert (=> b!6203896 d!1944752))

(declare-fun c!1120111 () Bool)

(declare-fun c!1120108 () Bool)

(declare-fun c!1120110 () Bool)

(declare-fun bm!519425 () Bool)

(declare-fun call!519432 () (Set Context!11056))

(declare-fun call!519430 () List!64731)

(assert (=> bm!519425 (= call!519432 (derivationStepZipperDown!1392 (ite c!1120111 (regTwo!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120108 (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120110 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (reg!16473 (h!71055 (exprs!6028 (h!71056 zl!343))))))) (ite (or c!1120111 c!1120108) lt!2343238 (Context!11057 call!519430)) (h!71057 s!2326)))))

(declare-fun b!6204069 () Bool)

(declare-fun e!3777756 () (Set Context!11056))

(declare-fun call!519433 () (Set Context!11056))

(assert (=> b!6204069 (= e!3777756 (set.union call!519433 call!519432))))

(declare-fun b!6204070 () Bool)

(declare-fun e!3777759 () (Set Context!11056))

(declare-fun e!3777760 () (Set Context!11056))

(assert (=> b!6204070 (= e!3777759 e!3777760)))

(assert (=> b!6204070 (= c!1120110 (is-Concat!24989 (h!71055 (exprs!6028 (h!71056 zl!343)))))))

(declare-fun b!6204071 () Bool)

(declare-fun e!3777761 () Bool)

(assert (=> b!6204071 (= c!1120108 e!3777761)))

(declare-fun res!2565974 () Bool)

(assert (=> b!6204071 (=> (not res!2565974) (not e!3777761))))

(assert (=> b!6204071 (= res!2565974 (is-Concat!24989 (h!71055 (exprs!6028 (h!71056 zl!343)))))))

(assert (=> b!6204071 (= e!3777756 e!3777759)))

(declare-fun bm!519426 () Bool)

(declare-fun call!519435 () (Set Context!11056))

(assert (=> bm!519426 (= call!519435 call!519432)))

(declare-fun b!6204072 () Bool)

(declare-fun c!1120107 () Bool)

(assert (=> b!6204072 (= c!1120107 (is-Star!16144 (h!71055 (exprs!6028 (h!71056 zl!343)))))))

(declare-fun e!3777758 () (Set Context!11056))

(assert (=> b!6204072 (= e!3777760 e!3777758)))

(declare-fun d!1944754 () Bool)

(declare-fun c!1120109 () Bool)

(assert (=> d!1944754 (= c!1120109 (and (is-ElementMatch!16144 (h!71055 (exprs!6028 (h!71056 zl!343)))) (= (c!1120079 (h!71055 (exprs!6028 (h!71056 zl!343)))) (h!71057 s!2326))))))

(declare-fun e!3777757 () (Set Context!11056))

(assert (=> d!1944754 (= (derivationStepZipperDown!1392 (h!71055 (exprs!6028 (h!71056 zl!343))) lt!2343238 (h!71057 s!2326)) e!3777757)))

(declare-fun bm!519427 () Bool)

(declare-fun call!519431 () (Set Context!11056))

(assert (=> bm!519427 (= call!519431 call!519435)))

(declare-fun b!6204073 () Bool)

(assert (=> b!6204073 (= e!3777757 e!3777756)))

(assert (=> b!6204073 (= c!1120111 (is-Union!16144 (h!71055 (exprs!6028 (h!71056 zl!343)))))))

(declare-fun b!6204074 () Bool)

(assert (=> b!6204074 (= e!3777758 (as set.empty (Set Context!11056)))))

(declare-fun bm!519428 () Bool)

(declare-fun call!519434 () List!64731)

(assert (=> bm!519428 (= call!519433 (derivationStepZipperDown!1392 (ite c!1120111 (regOne!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343))))) (ite c!1120111 lt!2343238 (Context!11057 call!519434)) (h!71057 s!2326)))))

(declare-fun b!6204075 () Bool)

(assert (=> b!6204075 (= e!3777759 (set.union call!519433 call!519435))))

(declare-fun b!6204076 () Bool)

(assert (=> b!6204076 (= e!3777760 call!519431)))

(declare-fun bm!519429 () Bool)

(assert (=> bm!519429 (= call!519430 call!519434)))

(declare-fun b!6204077 () Bool)

(assert (=> b!6204077 (= e!3777757 (set.insert lt!2343238 (as set.empty (Set Context!11056))))))

(declare-fun b!6204078 () Bool)

(assert (=> b!6204078 (= e!3777758 call!519431)))

(declare-fun b!6204079 () Bool)

(assert (=> b!6204079 (= e!3777761 (nullable!6137 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343))))))))

(declare-fun bm!519430 () Bool)

(declare-fun $colon$colon!2013 (List!64731 Regex!16144) List!64731)

(assert (=> bm!519430 (= call!519434 ($colon$colon!2013 (exprs!6028 lt!2343238) (ite (or c!1120108 c!1120110) (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (h!71055 (exprs!6028 (h!71056 zl!343))))))))

(assert (= (and d!1944754 c!1120109) b!6204077))

(assert (= (and d!1944754 (not c!1120109)) b!6204073))

(assert (= (and b!6204073 c!1120111) b!6204069))

(assert (= (and b!6204073 (not c!1120111)) b!6204071))

(assert (= (and b!6204071 res!2565974) b!6204079))

(assert (= (and b!6204071 c!1120108) b!6204075))

(assert (= (and b!6204071 (not c!1120108)) b!6204070))

(assert (= (and b!6204070 c!1120110) b!6204076))

(assert (= (and b!6204070 (not c!1120110)) b!6204072))

(assert (= (and b!6204072 c!1120107) b!6204078))

(assert (= (and b!6204072 (not c!1120107)) b!6204074))

(assert (= (or b!6204076 b!6204078) bm!519429))

(assert (= (or b!6204076 b!6204078) bm!519427))

(assert (= (or b!6204075 bm!519429) bm!519430))

(assert (= (or b!6204075 bm!519427) bm!519426))

(assert (= (or b!6204069 bm!519426) bm!519425))

(assert (= (or b!6204069 b!6204075) bm!519428))

(declare-fun m!7035864 () Bool)

(assert (=> bm!519430 m!7035864))

(declare-fun m!7035866 () Bool)

(assert (=> b!6204079 m!7035866))

(declare-fun m!7035868 () Bool)

(assert (=> bm!519428 m!7035868))

(declare-fun m!7035870 () Bool)

(assert (=> b!6204077 m!7035870))

(declare-fun m!7035872 () Bool)

(assert (=> bm!519425 m!7035872))

(assert (=> b!6203896 d!1944754))

(declare-fun d!1944756 () Bool)

(declare-fun dynLambda!25482 (Int Context!11056) (Set Context!11056))

(assert (=> d!1944756 (= (flatMap!1649 z!1189 lambda!339028) (dynLambda!25482 lambda!339028 (h!71056 zl!343)))))

(declare-fun lt!2343282 () Unit!157907)

(declare-fun choose!46114 ((Set Context!11056) Context!11056 Int) Unit!157907)

(assert (=> d!1944756 (= lt!2343282 (choose!46114 z!1189 (h!71056 zl!343) lambda!339028))))

(assert (=> d!1944756 (= z!1189 (set.insert (h!71056 zl!343) (as set.empty (Set Context!11056))))))

(assert (=> d!1944756 (= (lemmaFlatMapOnSingletonSet!1175 z!1189 (h!71056 zl!343) lambda!339028) lt!2343282)))

(declare-fun b_lambda!235957 () Bool)

(assert (=> (not b_lambda!235957) (not d!1944756)))

(declare-fun bs!1539040 () Bool)

(assert (= bs!1539040 d!1944756))

(assert (=> bs!1539040 m!7035732))

(declare-fun m!7035874 () Bool)

(assert (=> bs!1539040 m!7035874))

(declare-fun m!7035876 () Bool)

(assert (=> bs!1539040 m!7035876))

(declare-fun m!7035878 () Bool)

(assert (=> bs!1539040 m!7035878))

(assert (=> b!6203896 d!1944756))

(declare-fun c!1120113 () Bool)

(declare-fun c!1120116 () Bool)

(declare-fun call!519438 () (Set Context!11056))

(declare-fun bm!519431 () Bool)

(declare-fun c!1120115 () Bool)

(declare-fun call!519436 () List!64731)

(assert (=> bm!519431 (= call!519438 (derivationStepZipperDown!1392 (ite c!1120116 (regTwo!32801 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120113 (regTwo!32800 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120115 (regOne!32800 (regOne!32800 (regOne!32800 r!7292))) (reg!16473 (regOne!32800 (regOne!32800 r!7292)))))) (ite (or c!1120116 c!1120113) (Context!11057 (Cons!64607 (regTwo!32800 (regOne!32800 r!7292)) (t!378251 (exprs!6028 (h!71056 zl!343))))) (Context!11057 call!519436)) (h!71057 s!2326)))))

(declare-fun b!6204080 () Bool)

(declare-fun e!3777762 () (Set Context!11056))

(declare-fun call!519439 () (Set Context!11056))

(assert (=> b!6204080 (= e!3777762 (set.union call!519439 call!519438))))

(declare-fun b!6204081 () Bool)

(declare-fun e!3777765 () (Set Context!11056))

(declare-fun e!3777766 () (Set Context!11056))

(assert (=> b!6204081 (= e!3777765 e!3777766)))

(assert (=> b!6204081 (= c!1120115 (is-Concat!24989 (regOne!32800 (regOne!32800 r!7292))))))

(declare-fun b!6204082 () Bool)

(declare-fun e!3777767 () Bool)

(assert (=> b!6204082 (= c!1120113 e!3777767)))

(declare-fun res!2565975 () Bool)

(assert (=> b!6204082 (=> (not res!2565975) (not e!3777767))))

(assert (=> b!6204082 (= res!2565975 (is-Concat!24989 (regOne!32800 (regOne!32800 r!7292))))))

(assert (=> b!6204082 (= e!3777762 e!3777765)))

(declare-fun bm!519432 () Bool)

(declare-fun call!519441 () (Set Context!11056))

(assert (=> bm!519432 (= call!519441 call!519438)))

(declare-fun b!6204083 () Bool)

(declare-fun c!1120112 () Bool)

(assert (=> b!6204083 (= c!1120112 (is-Star!16144 (regOne!32800 (regOne!32800 r!7292))))))

(declare-fun e!3777764 () (Set Context!11056))

(assert (=> b!6204083 (= e!3777766 e!3777764)))

(declare-fun d!1944758 () Bool)

(declare-fun c!1120114 () Bool)

(assert (=> d!1944758 (= c!1120114 (and (is-ElementMatch!16144 (regOne!32800 (regOne!32800 r!7292))) (= (c!1120079 (regOne!32800 (regOne!32800 r!7292))) (h!71057 s!2326))))))

(declare-fun e!3777763 () (Set Context!11056))

(assert (=> d!1944758 (= (derivationStepZipperDown!1392 (regOne!32800 (regOne!32800 r!7292)) (Context!11057 (Cons!64607 (regTwo!32800 (regOne!32800 r!7292)) (t!378251 (exprs!6028 (h!71056 zl!343))))) (h!71057 s!2326)) e!3777763)))

(declare-fun bm!519433 () Bool)

(declare-fun call!519437 () (Set Context!11056))

(assert (=> bm!519433 (= call!519437 call!519441)))

(declare-fun b!6204084 () Bool)

(assert (=> b!6204084 (= e!3777763 e!3777762)))

(assert (=> b!6204084 (= c!1120116 (is-Union!16144 (regOne!32800 (regOne!32800 r!7292))))))

(declare-fun b!6204085 () Bool)

(assert (=> b!6204085 (= e!3777764 (as set.empty (Set Context!11056)))))

(declare-fun call!519440 () List!64731)

(declare-fun bm!519434 () Bool)

(assert (=> bm!519434 (= call!519439 (derivationStepZipperDown!1392 (ite c!1120116 (regOne!32801 (regOne!32800 (regOne!32800 r!7292))) (regOne!32800 (regOne!32800 (regOne!32800 r!7292)))) (ite c!1120116 (Context!11057 (Cons!64607 (regTwo!32800 (regOne!32800 r!7292)) (t!378251 (exprs!6028 (h!71056 zl!343))))) (Context!11057 call!519440)) (h!71057 s!2326)))))

(declare-fun b!6204086 () Bool)

(assert (=> b!6204086 (= e!3777765 (set.union call!519439 call!519441))))

(declare-fun b!6204087 () Bool)

(assert (=> b!6204087 (= e!3777766 call!519437)))

(declare-fun bm!519435 () Bool)

(assert (=> bm!519435 (= call!519436 call!519440)))

(declare-fun b!6204088 () Bool)

(assert (=> b!6204088 (= e!3777763 (set.insert (Context!11057 (Cons!64607 (regTwo!32800 (regOne!32800 r!7292)) (t!378251 (exprs!6028 (h!71056 zl!343))))) (as set.empty (Set Context!11056))))))

(declare-fun b!6204089 () Bool)

(assert (=> b!6204089 (= e!3777764 call!519437)))

(declare-fun b!6204090 () Bool)

(assert (=> b!6204090 (= e!3777767 (nullable!6137 (regOne!32800 (regOne!32800 (regOne!32800 r!7292)))))))

(declare-fun bm!519436 () Bool)

(assert (=> bm!519436 (= call!519440 ($colon$colon!2013 (exprs!6028 (Context!11057 (Cons!64607 (regTwo!32800 (regOne!32800 r!7292)) (t!378251 (exprs!6028 (h!71056 zl!343)))))) (ite (or c!1120113 c!1120115) (regTwo!32800 (regOne!32800 (regOne!32800 r!7292))) (regOne!32800 (regOne!32800 r!7292)))))))

(assert (= (and d!1944758 c!1120114) b!6204088))

(assert (= (and d!1944758 (not c!1120114)) b!6204084))

(assert (= (and b!6204084 c!1120116) b!6204080))

(assert (= (and b!6204084 (not c!1120116)) b!6204082))

(assert (= (and b!6204082 res!2565975) b!6204090))

(assert (= (and b!6204082 c!1120113) b!6204086))

(assert (= (and b!6204082 (not c!1120113)) b!6204081))

(assert (= (and b!6204081 c!1120115) b!6204087))

(assert (= (and b!6204081 (not c!1120115)) b!6204083))

(assert (= (and b!6204083 c!1120112) b!6204089))

(assert (= (and b!6204083 (not c!1120112)) b!6204085))

(assert (= (or b!6204087 b!6204089) bm!519435))

(assert (= (or b!6204087 b!6204089) bm!519433))

(assert (= (or b!6204086 bm!519435) bm!519436))

(assert (= (or b!6204086 bm!519433) bm!519432))

(assert (= (or b!6204080 bm!519432) bm!519431))

(assert (= (or b!6204080 b!6204086) bm!519434))

(declare-fun m!7035880 () Bool)

(assert (=> bm!519436 m!7035880))

(declare-fun m!7035882 () Bool)

(assert (=> b!6204090 m!7035882))

(declare-fun m!7035884 () Bool)

(assert (=> bm!519434 m!7035884))

(declare-fun m!7035886 () Bool)

(assert (=> b!6204088 m!7035886))

(declare-fun m!7035888 () Bool)

(assert (=> bm!519431 m!7035888))

(assert (=> b!6203909 d!1944758))

(declare-fun bm!519437 () Bool)

(declare-fun c!1120118 () Bool)

(declare-fun c!1120120 () Bool)

(declare-fun c!1120121 () Bool)

(declare-fun call!519442 () List!64731)

(declare-fun call!519444 () (Set Context!11056))

(assert (=> bm!519437 (= call!519444 (derivationStepZipperDown!1392 (ite c!1120121 (regTwo!32801 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120118 (regTwo!32800 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120120 (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))) (reg!16473 (regTwo!32800 (regOne!32800 r!7292)))))) (ite (or c!1120121 c!1120118) lt!2343238 (Context!11057 call!519442)) (h!71057 s!2326)))))

(declare-fun b!6204091 () Bool)

(declare-fun e!3777768 () (Set Context!11056))

(declare-fun call!519445 () (Set Context!11056))

(assert (=> b!6204091 (= e!3777768 (set.union call!519445 call!519444))))

(declare-fun b!6204092 () Bool)

(declare-fun e!3777771 () (Set Context!11056))

(declare-fun e!3777772 () (Set Context!11056))

(assert (=> b!6204092 (= e!3777771 e!3777772)))

(assert (=> b!6204092 (= c!1120120 (is-Concat!24989 (regTwo!32800 (regOne!32800 r!7292))))))

(declare-fun b!6204093 () Bool)

(declare-fun e!3777773 () Bool)

(assert (=> b!6204093 (= c!1120118 e!3777773)))

(declare-fun res!2565976 () Bool)

(assert (=> b!6204093 (=> (not res!2565976) (not e!3777773))))

(assert (=> b!6204093 (= res!2565976 (is-Concat!24989 (regTwo!32800 (regOne!32800 r!7292))))))

(assert (=> b!6204093 (= e!3777768 e!3777771)))

(declare-fun bm!519438 () Bool)

(declare-fun call!519447 () (Set Context!11056))

(assert (=> bm!519438 (= call!519447 call!519444)))

(declare-fun b!6204094 () Bool)

(declare-fun c!1120117 () Bool)

(assert (=> b!6204094 (= c!1120117 (is-Star!16144 (regTwo!32800 (regOne!32800 r!7292))))))

(declare-fun e!3777770 () (Set Context!11056))

(assert (=> b!6204094 (= e!3777772 e!3777770)))

(declare-fun d!1944760 () Bool)

(declare-fun c!1120119 () Bool)

(assert (=> d!1944760 (= c!1120119 (and (is-ElementMatch!16144 (regTwo!32800 (regOne!32800 r!7292))) (= (c!1120079 (regTwo!32800 (regOne!32800 r!7292))) (h!71057 s!2326))))))

(declare-fun e!3777769 () (Set Context!11056))

(assert (=> d!1944760 (= (derivationStepZipperDown!1392 (regTwo!32800 (regOne!32800 r!7292)) lt!2343238 (h!71057 s!2326)) e!3777769)))

(declare-fun bm!519439 () Bool)

(declare-fun call!519443 () (Set Context!11056))

(assert (=> bm!519439 (= call!519443 call!519447)))

(declare-fun b!6204095 () Bool)

(assert (=> b!6204095 (= e!3777769 e!3777768)))

(assert (=> b!6204095 (= c!1120121 (is-Union!16144 (regTwo!32800 (regOne!32800 r!7292))))))

(declare-fun b!6204096 () Bool)

(assert (=> b!6204096 (= e!3777770 (as set.empty (Set Context!11056)))))

(declare-fun bm!519440 () Bool)

(declare-fun call!519446 () List!64731)

(assert (=> bm!519440 (= call!519445 (derivationStepZipperDown!1392 (ite c!1120121 (regOne!32801 (regTwo!32800 (regOne!32800 r!7292))) (regOne!32800 (regTwo!32800 (regOne!32800 r!7292)))) (ite c!1120121 lt!2343238 (Context!11057 call!519446)) (h!71057 s!2326)))))

(declare-fun b!6204097 () Bool)

(assert (=> b!6204097 (= e!3777771 (set.union call!519445 call!519447))))

(declare-fun b!6204098 () Bool)

(assert (=> b!6204098 (= e!3777772 call!519443)))

(declare-fun bm!519441 () Bool)

(assert (=> bm!519441 (= call!519442 call!519446)))

(declare-fun b!6204099 () Bool)

(assert (=> b!6204099 (= e!3777769 (set.insert lt!2343238 (as set.empty (Set Context!11056))))))

(declare-fun b!6204100 () Bool)

(assert (=> b!6204100 (= e!3777770 call!519443)))

(declare-fun b!6204101 () Bool)

(assert (=> b!6204101 (= e!3777773 (nullable!6137 (regOne!32800 (regTwo!32800 (regOne!32800 r!7292)))))))

(declare-fun bm!519442 () Bool)

(assert (=> bm!519442 (= call!519446 ($colon$colon!2013 (exprs!6028 lt!2343238) (ite (or c!1120118 c!1120120) (regTwo!32800 (regTwo!32800 (regOne!32800 r!7292))) (regTwo!32800 (regOne!32800 r!7292)))))))

(assert (= (and d!1944760 c!1120119) b!6204099))

(assert (= (and d!1944760 (not c!1120119)) b!6204095))

(assert (= (and b!6204095 c!1120121) b!6204091))

(assert (= (and b!6204095 (not c!1120121)) b!6204093))

(assert (= (and b!6204093 res!2565976) b!6204101))

(assert (= (and b!6204093 c!1120118) b!6204097))

(assert (= (and b!6204093 (not c!1120118)) b!6204092))

(assert (= (and b!6204092 c!1120120) b!6204098))

(assert (= (and b!6204092 (not c!1120120)) b!6204094))

(assert (= (and b!6204094 c!1120117) b!6204100))

(assert (= (and b!6204094 (not c!1120117)) b!6204096))

(assert (= (or b!6204098 b!6204100) bm!519441))

(assert (= (or b!6204098 b!6204100) bm!519439))

(assert (= (or b!6204097 bm!519441) bm!519442))

(assert (= (or b!6204097 bm!519439) bm!519438))

(assert (= (or b!6204091 bm!519438) bm!519437))

(assert (= (or b!6204091 b!6204097) bm!519440))

(declare-fun m!7035890 () Bool)

(assert (=> bm!519442 m!7035890))

(declare-fun m!7035892 () Bool)

(assert (=> b!6204101 m!7035892))

(declare-fun m!7035894 () Bool)

(assert (=> bm!519440 m!7035894))

(assert (=> b!6204099 m!7035870))

(declare-fun m!7035896 () Bool)

(assert (=> bm!519437 m!7035896))

(assert (=> b!6203909 d!1944760))

(declare-fun d!1944762 () Bool)

(declare-fun lt!2343285 () Regex!16144)

(assert (=> d!1944762 (validRegex!7880 lt!2343285)))

(assert (=> d!1944762 (= lt!2343285 (generalisedUnion!1988 (unfocusZipperList!1565 zl!343)))))

(assert (=> d!1944762 (= (unfocusZipper!1886 zl!343) lt!2343285)))

(declare-fun bs!1539041 () Bool)

(assert (= bs!1539041 d!1944762))

(declare-fun m!7035898 () Bool)

(assert (=> bs!1539041 m!7035898))

(assert (=> bs!1539041 m!7035712))

(assert (=> bs!1539041 m!7035712))

(assert (=> bs!1539041 m!7035714))

(assert (=> b!6203918 d!1944762))

(declare-fun bs!1539042 () Bool)

(declare-fun d!1944764 () Bool)

(assert (= bs!1539042 (and d!1944764 d!1944736)))

(declare-fun lambda!339045 () Int)

(assert (=> bs!1539042 (= lambda!339045 lambda!339042)))

(declare-fun b!6204122 () Bool)

(declare-fun e!3777790 () Bool)

(assert (=> b!6204122 (= e!3777790 (isEmpty!36605 (t!378251 (unfocusZipperList!1565 zl!343))))))

(declare-fun b!6204123 () Bool)

(declare-fun e!3777791 () Regex!16144)

(assert (=> b!6204123 (= e!3777791 (Union!16144 (h!71055 (unfocusZipperList!1565 zl!343)) (generalisedUnion!1988 (t!378251 (unfocusZipperList!1565 zl!343)))))))

(declare-fun b!6204124 () Bool)

(assert (=> b!6204124 (= e!3777791 EmptyLang!16144)))

(declare-fun e!3777789 () Bool)

(assert (=> d!1944764 e!3777789))

(declare-fun res!2565982 () Bool)

(assert (=> d!1944764 (=> (not res!2565982) (not e!3777789))))

(declare-fun lt!2343288 () Regex!16144)

(assert (=> d!1944764 (= res!2565982 (validRegex!7880 lt!2343288))))

(declare-fun e!3777787 () Regex!16144)

(assert (=> d!1944764 (= lt!2343288 e!3777787)))

(declare-fun c!1120131 () Bool)

(assert (=> d!1944764 (= c!1120131 e!3777790)))

(declare-fun res!2565981 () Bool)

(assert (=> d!1944764 (=> (not res!2565981) (not e!3777790))))

(assert (=> d!1944764 (= res!2565981 (is-Cons!64607 (unfocusZipperList!1565 zl!343)))))

(assert (=> d!1944764 (forall!15258 (unfocusZipperList!1565 zl!343) lambda!339045)))

(assert (=> d!1944764 (= (generalisedUnion!1988 (unfocusZipperList!1565 zl!343)) lt!2343288)))

(declare-fun b!6204125 () Bool)

(assert (=> b!6204125 (= e!3777787 e!3777791)))

(declare-fun c!1120132 () Bool)

(assert (=> b!6204125 (= c!1120132 (is-Cons!64607 (unfocusZipperList!1565 zl!343)))))

(declare-fun b!6204126 () Bool)

(declare-fun e!3777786 () Bool)

(declare-fun e!3777788 () Bool)

(assert (=> b!6204126 (= e!3777786 e!3777788)))

(declare-fun c!1120133 () Bool)

(declare-fun tail!11881 (List!64731) List!64731)

(assert (=> b!6204126 (= c!1120133 (isEmpty!36605 (tail!11881 (unfocusZipperList!1565 zl!343))))))

(declare-fun b!6204127 () Bool)

(declare-fun isEmptyLang!1563 (Regex!16144) Bool)

(assert (=> b!6204127 (= e!3777786 (isEmptyLang!1563 lt!2343288))))

(declare-fun b!6204128 () Bool)

(assert (=> b!6204128 (= e!3777787 (h!71055 (unfocusZipperList!1565 zl!343)))))

(declare-fun b!6204129 () Bool)

(assert (=> b!6204129 (= e!3777789 e!3777786)))

(declare-fun c!1120130 () Bool)

(assert (=> b!6204129 (= c!1120130 (isEmpty!36605 (unfocusZipperList!1565 zl!343)))))

(declare-fun b!6204130 () Bool)

(declare-fun isUnion!993 (Regex!16144) Bool)

(assert (=> b!6204130 (= e!3777788 (isUnion!993 lt!2343288))))

(declare-fun b!6204131 () Bool)

(declare-fun head!12796 (List!64731) Regex!16144)

(assert (=> b!6204131 (= e!3777788 (= lt!2343288 (head!12796 (unfocusZipperList!1565 zl!343))))))

(assert (= (and d!1944764 res!2565981) b!6204122))

(assert (= (and d!1944764 c!1120131) b!6204128))

(assert (= (and d!1944764 (not c!1120131)) b!6204125))

(assert (= (and b!6204125 c!1120132) b!6204123))

(assert (= (and b!6204125 (not c!1120132)) b!6204124))

(assert (= (and d!1944764 res!2565982) b!6204129))

(assert (= (and b!6204129 c!1120130) b!6204127))

(assert (= (and b!6204129 (not c!1120130)) b!6204126))

(assert (= (and b!6204126 c!1120133) b!6204131))

(assert (= (and b!6204126 (not c!1120133)) b!6204130))

(declare-fun m!7035900 () Bool)

(assert (=> b!6204122 m!7035900))

(assert (=> b!6204131 m!7035712))

(declare-fun m!7035902 () Bool)

(assert (=> b!6204131 m!7035902))

(declare-fun m!7035904 () Bool)

(assert (=> b!6204123 m!7035904))

(declare-fun m!7035906 () Bool)

(assert (=> d!1944764 m!7035906))

(assert (=> d!1944764 m!7035712))

(declare-fun m!7035908 () Bool)

(assert (=> d!1944764 m!7035908))

(declare-fun m!7035910 () Bool)

(assert (=> b!6204127 m!7035910))

(declare-fun m!7035912 () Bool)

(assert (=> b!6204130 m!7035912))

(assert (=> b!6204126 m!7035712))

(declare-fun m!7035914 () Bool)

(assert (=> b!6204126 m!7035914))

(assert (=> b!6204126 m!7035914))

(declare-fun m!7035916 () Bool)

(assert (=> b!6204126 m!7035916))

(assert (=> b!6204129 m!7035712))

(declare-fun m!7035918 () Bool)

(assert (=> b!6204129 m!7035918))

(assert (=> b!6203899 d!1944764))

(declare-fun bs!1539043 () Bool)

(declare-fun d!1944766 () Bool)

(assert (= bs!1539043 (and d!1944766 d!1944736)))

(declare-fun lambda!339048 () Int)

(assert (=> bs!1539043 (= lambda!339048 lambda!339042)))

(declare-fun bs!1539044 () Bool)

(assert (= bs!1539044 (and d!1944766 d!1944764)))

(assert (=> bs!1539044 (= lambda!339048 lambda!339045)))

(declare-fun lt!2343291 () List!64731)

(assert (=> d!1944766 (forall!15258 lt!2343291 lambda!339048)))

(declare-fun e!3777794 () List!64731)

(assert (=> d!1944766 (= lt!2343291 e!3777794)))

(declare-fun c!1120136 () Bool)

(assert (=> d!1944766 (= c!1120136 (is-Cons!64608 zl!343))))

(assert (=> d!1944766 (= (unfocusZipperList!1565 zl!343) lt!2343291)))

(declare-fun b!6204136 () Bool)

(assert (=> b!6204136 (= e!3777794 (Cons!64607 (generalisedConcat!1741 (exprs!6028 (h!71056 zl!343))) (unfocusZipperList!1565 (t!378252 zl!343))))))

(declare-fun b!6204137 () Bool)

(assert (=> b!6204137 (= e!3777794 Nil!64607)))

(assert (= (and d!1944766 c!1120136) b!6204136))

(assert (= (and d!1944766 (not c!1120136)) b!6204137))

(declare-fun m!7035920 () Bool)

(assert (=> d!1944766 m!7035920))

(assert (=> b!6204136 m!7035718))

(declare-fun m!7035922 () Bool)

(assert (=> b!6204136 m!7035922))

(assert (=> b!6203899 d!1944766))

(declare-fun bs!1539045 () Bool)

(declare-fun d!1944768 () Bool)

(assert (= bs!1539045 (and d!1944768 d!1944736)))

(declare-fun lambda!339049 () Int)

(assert (=> bs!1539045 (= lambda!339049 lambda!339042)))

(declare-fun bs!1539046 () Bool)

(assert (= bs!1539046 (and d!1944768 d!1944764)))

(assert (=> bs!1539046 (= lambda!339049 lambda!339045)))

(declare-fun bs!1539047 () Bool)

(assert (= bs!1539047 (and d!1944768 d!1944766)))

(assert (=> bs!1539047 (= lambda!339049 lambda!339048)))

(assert (=> d!1944768 (= (inv!83608 (h!71056 zl!343)) (forall!15258 (exprs!6028 (h!71056 zl!343)) lambda!339049))))

(declare-fun bs!1539048 () Bool)

(assert (= bs!1539048 d!1944768))

(declare-fun m!7035924 () Bool)

(assert (=> bs!1539048 m!7035924))

(assert (=> b!6203901 d!1944768))

(declare-fun bs!1539049 () Bool)

(declare-fun b!6204177 () Bool)

(assert (= bs!1539049 (and b!6204177 b!6203913)))

(declare-fun lambda!339054 () Int)

(assert (=> bs!1539049 (not (= lambda!339054 lambda!339026))))

(assert (=> bs!1539049 (not (= lambda!339054 lambda!339027))))

(assert (=> b!6204177 true))

(assert (=> b!6204177 true))

(declare-fun bs!1539050 () Bool)

(declare-fun b!6204180 () Bool)

(assert (= bs!1539050 (and b!6204180 b!6203913)))

(declare-fun lambda!339055 () Int)

(assert (=> bs!1539050 (not (= lambda!339055 lambda!339026))))

(assert (=> bs!1539050 (= lambda!339055 lambda!339027)))

(declare-fun bs!1539051 () Bool)

(assert (= bs!1539051 (and b!6204180 b!6204177)))

(assert (=> bs!1539051 (not (= lambda!339055 lambda!339054))))

(assert (=> b!6204180 true))

(assert (=> b!6204180 true))

(declare-fun d!1944770 () Bool)

(declare-fun c!1120146 () Bool)

(assert (=> d!1944770 (= c!1120146 (is-EmptyExpr!16144 r!7292))))

(declare-fun e!3777819 () Bool)

(assert (=> d!1944770 (= (matchRSpec!3245 r!7292 s!2326) e!3777819)))

(declare-fun b!6204170 () Bool)

(declare-fun e!3777815 () Bool)

(assert (=> b!6204170 (= e!3777815 (matchRSpec!3245 (regTwo!32801 r!7292) s!2326))))

(declare-fun b!6204171 () Bool)

(declare-fun e!3777813 () Bool)

(assert (=> b!6204171 (= e!3777813 (= s!2326 (Cons!64609 (c!1120079 r!7292) Nil!64609)))))

(declare-fun call!519453 () Bool)

(declare-fun bm!519447 () Bool)

(declare-fun c!1120148 () Bool)

(assert (=> bm!519447 (= call!519453 (Exists!3214 (ite c!1120148 lambda!339054 lambda!339055)))))

(declare-fun b!6204172 () Bool)

(declare-fun c!1120147 () Bool)

(assert (=> b!6204172 (= c!1120147 (is-ElementMatch!16144 r!7292))))

(declare-fun e!3777814 () Bool)

(assert (=> b!6204172 (= e!3777814 e!3777813)))

(declare-fun b!6204173 () Bool)

(assert (=> b!6204173 (= e!3777819 e!3777814)))

(declare-fun res!2566001 () Bool)

(assert (=> b!6204173 (= res!2566001 (not (is-EmptyLang!16144 r!7292)))))

(assert (=> b!6204173 (=> (not res!2566001) (not e!3777814))))

(declare-fun bm!519448 () Bool)

(declare-fun call!519452 () Bool)

(declare-fun isEmpty!36608 (List!64733) Bool)

(assert (=> bm!519448 (= call!519452 (isEmpty!36608 s!2326))))

(declare-fun b!6204174 () Bool)

(declare-fun c!1120145 () Bool)

(assert (=> b!6204174 (= c!1120145 (is-Union!16144 r!7292))))

(declare-fun e!3777818 () Bool)

(assert (=> b!6204174 (= e!3777813 e!3777818)))

(declare-fun b!6204175 () Bool)

(declare-fun res!2565999 () Bool)

(declare-fun e!3777817 () Bool)

(assert (=> b!6204175 (=> res!2565999 e!3777817)))

(assert (=> b!6204175 (= res!2565999 call!519452)))

(declare-fun e!3777816 () Bool)

(assert (=> b!6204175 (= e!3777816 e!3777817)))

(declare-fun b!6204176 () Bool)

(assert (=> b!6204176 (= e!3777819 call!519452)))

(assert (=> b!6204177 (= e!3777817 call!519453)))

(declare-fun b!6204178 () Bool)

(assert (=> b!6204178 (= e!3777818 e!3777816)))

(assert (=> b!6204178 (= c!1120148 (is-Star!16144 r!7292))))

(declare-fun b!6204179 () Bool)

(assert (=> b!6204179 (= e!3777818 e!3777815)))

(declare-fun res!2566000 () Bool)

(assert (=> b!6204179 (= res!2566000 (matchRSpec!3245 (regOne!32801 r!7292) s!2326))))

(assert (=> b!6204179 (=> res!2566000 e!3777815)))

(assert (=> b!6204180 (= e!3777816 call!519453)))

(assert (= (and d!1944770 c!1120146) b!6204176))

(assert (= (and d!1944770 (not c!1120146)) b!6204173))

(assert (= (and b!6204173 res!2566001) b!6204172))

(assert (= (and b!6204172 c!1120147) b!6204171))

(assert (= (and b!6204172 (not c!1120147)) b!6204174))

(assert (= (and b!6204174 c!1120145) b!6204179))

(assert (= (and b!6204174 (not c!1120145)) b!6204178))

(assert (= (and b!6204179 (not res!2566000)) b!6204170))

(assert (= (and b!6204178 c!1120148) b!6204175))

(assert (= (and b!6204178 (not c!1120148)) b!6204180))

(assert (= (and b!6204175 (not res!2565999)) b!6204177))

(assert (= (or b!6204177 b!6204180) bm!519447))

(assert (= (or b!6204176 b!6204175) bm!519448))

(declare-fun m!7035926 () Bool)

(assert (=> b!6204170 m!7035926))

(declare-fun m!7035928 () Bool)

(assert (=> bm!519447 m!7035928))

(declare-fun m!7035930 () Bool)

(assert (=> bm!519448 m!7035930))

(declare-fun m!7035932 () Bool)

(assert (=> b!6204179 m!7035932))

(assert (=> b!6203900 d!1944770))

(declare-fun bm!519451 () Bool)

(declare-fun call!519456 () Bool)

(assert (=> bm!519451 (= call!519456 (isEmpty!36608 s!2326))))

(declare-fun b!6204215 () Bool)

(declare-fun e!3777840 () Bool)

(declare-fun derivativeStep!4857 (Regex!16144 C!32558) Regex!16144)

(declare-fun head!12797 (List!64733) C!32558)

(declare-fun tail!11882 (List!64733) List!64733)

(assert (=> b!6204215 (= e!3777840 (matchR!8327 (derivativeStep!4857 r!7292 (head!12797 s!2326)) (tail!11882 s!2326)))))

(declare-fun b!6204216 () Bool)

(declare-fun e!3777841 () Bool)

(declare-fun e!3777837 () Bool)

(assert (=> b!6204216 (= e!3777841 e!3777837)))

(declare-fun c!1120159 () Bool)

(assert (=> b!6204216 (= c!1120159 (is-EmptyLang!16144 r!7292))))

(declare-fun b!6204217 () Bool)

(declare-fun res!2566023 () Bool)

(declare-fun e!3777838 () Bool)

(assert (=> b!6204217 (=> res!2566023 e!3777838)))

(declare-fun e!3777843 () Bool)

(assert (=> b!6204217 (= res!2566023 e!3777843)))

(declare-fun res!2566019 () Bool)

(assert (=> b!6204217 (=> (not res!2566019) (not e!3777843))))

(declare-fun lt!2343294 () Bool)

(assert (=> b!6204217 (= res!2566019 lt!2343294)))

(declare-fun b!6204218 () Bool)

(assert (=> b!6204218 (= e!3777837 (not lt!2343294))))

(declare-fun b!6204219 () Bool)

(declare-fun res!2566021 () Bool)

(declare-fun e!3777842 () Bool)

(assert (=> b!6204219 (=> res!2566021 e!3777842)))

(assert (=> b!6204219 (= res!2566021 (not (isEmpty!36608 (tail!11882 s!2326))))))

(declare-fun b!6204220 () Bool)

(assert (=> b!6204220 (= e!3777841 (= lt!2343294 call!519456))))

(declare-fun b!6204221 () Bool)

(declare-fun e!3777839 () Bool)

(assert (=> b!6204221 (= e!3777839 e!3777842)))

(declare-fun res!2566024 () Bool)

(assert (=> b!6204221 (=> res!2566024 e!3777842)))

(assert (=> b!6204221 (= res!2566024 call!519456)))

(declare-fun b!6204222 () Bool)

(declare-fun res!2566020 () Bool)

(assert (=> b!6204222 (=> res!2566020 e!3777838)))

(assert (=> b!6204222 (= res!2566020 (not (is-ElementMatch!16144 r!7292)))))

(assert (=> b!6204222 (= e!3777837 e!3777838)))

(declare-fun d!1944774 () Bool)

(assert (=> d!1944774 e!3777841))

(declare-fun c!1120160 () Bool)

(assert (=> d!1944774 (= c!1120160 (is-EmptyExpr!16144 r!7292))))

(assert (=> d!1944774 (= lt!2343294 e!3777840)))

(declare-fun c!1120158 () Bool)

(assert (=> d!1944774 (= c!1120158 (isEmpty!36608 s!2326))))

(assert (=> d!1944774 (validRegex!7880 r!7292)))

(assert (=> d!1944774 (= (matchR!8327 r!7292 s!2326) lt!2343294)))

(declare-fun b!6204223 () Bool)

(declare-fun res!2566025 () Bool)

(assert (=> b!6204223 (=> (not res!2566025) (not e!3777843))))

(assert (=> b!6204223 (= res!2566025 (isEmpty!36608 (tail!11882 s!2326)))))

(declare-fun b!6204224 () Bool)

(assert (=> b!6204224 (= e!3777843 (= (head!12797 s!2326) (c!1120079 r!7292)))))

(declare-fun b!6204225 () Bool)

(assert (=> b!6204225 (= e!3777842 (not (= (head!12797 s!2326) (c!1120079 r!7292))))))

(declare-fun b!6204226 () Bool)

(declare-fun res!2566022 () Bool)

(assert (=> b!6204226 (=> (not res!2566022) (not e!3777843))))

(assert (=> b!6204226 (= res!2566022 (not call!519456))))

(declare-fun b!6204227 () Bool)

(assert (=> b!6204227 (= e!3777838 e!3777839)))

(declare-fun res!2566018 () Bool)

(assert (=> b!6204227 (=> (not res!2566018) (not e!3777839))))

(assert (=> b!6204227 (= res!2566018 (not lt!2343294))))

(declare-fun b!6204228 () Bool)

(assert (=> b!6204228 (= e!3777840 (nullable!6137 r!7292))))

(assert (= (and d!1944774 c!1120158) b!6204228))

(assert (= (and d!1944774 (not c!1120158)) b!6204215))

(assert (= (and d!1944774 c!1120160) b!6204220))

(assert (= (and d!1944774 (not c!1120160)) b!6204216))

(assert (= (and b!6204216 c!1120159) b!6204218))

(assert (= (and b!6204216 (not c!1120159)) b!6204222))

(assert (= (and b!6204222 (not res!2566020)) b!6204217))

(assert (= (and b!6204217 res!2566019) b!6204226))

(assert (= (and b!6204226 res!2566022) b!6204223))

(assert (= (and b!6204223 res!2566025) b!6204224))

(assert (= (and b!6204217 (not res!2566023)) b!6204227))

(assert (= (and b!6204227 res!2566018) b!6204221))

(assert (= (and b!6204221 (not res!2566024)) b!6204219))

(assert (= (and b!6204219 (not res!2566021)) b!6204225))

(assert (= (or b!6204220 b!6204221 b!6204226) bm!519451))

(declare-fun m!7035948 () Bool)

(assert (=> b!6204223 m!7035948))

(assert (=> b!6204223 m!7035948))

(declare-fun m!7035950 () Bool)

(assert (=> b!6204223 m!7035950))

(assert (=> d!1944774 m!7035930))

(assert (=> d!1944774 m!7035764))

(assert (=> bm!519451 m!7035930))

(assert (=> b!6204219 m!7035948))

(assert (=> b!6204219 m!7035948))

(assert (=> b!6204219 m!7035950))

(declare-fun m!7035952 () Bool)

(assert (=> b!6204224 m!7035952))

(declare-fun m!7035954 () Bool)

(assert (=> b!6204228 m!7035954))

(assert (=> b!6204225 m!7035952))

(assert (=> b!6204215 m!7035952))

(assert (=> b!6204215 m!7035952))

(declare-fun m!7035956 () Bool)

(assert (=> b!6204215 m!7035956))

(assert (=> b!6204215 m!7035948))

(assert (=> b!6204215 m!7035956))

(assert (=> b!6204215 m!7035948))

(declare-fun m!7035958 () Bool)

(assert (=> b!6204215 m!7035958))

(assert (=> b!6203900 d!1944774))

(declare-fun d!1944780 () Bool)

(assert (=> d!1944780 (= (matchR!8327 r!7292 s!2326) (matchRSpec!3245 r!7292 s!2326))))

(declare-fun lt!2343297 () Unit!157907)

(declare-fun choose!46115 (Regex!16144 List!64733) Unit!157907)

(assert (=> d!1944780 (= lt!2343297 (choose!46115 r!7292 s!2326))))

(assert (=> d!1944780 (validRegex!7880 r!7292)))

(assert (=> d!1944780 (= (mainMatchTheorem!3245 r!7292 s!2326) lt!2343297)))

(declare-fun bs!1539053 () Bool)

(assert (= bs!1539053 d!1944780))

(assert (=> bs!1539053 m!7035758))

(assert (=> bs!1539053 m!7035756))

(declare-fun m!7035960 () Bool)

(assert (=> bs!1539053 m!7035960))

(assert (=> bs!1539053 m!7035764))

(assert (=> b!6203900 d!1944780))

(declare-fun d!1944784 () Bool)

(declare-fun e!3777846 () Bool)

(assert (=> d!1944784 (= (matchZipper!2156 (set.union lt!2343239 lt!2343240) (t!378253 s!2326)) e!3777846)))

(declare-fun res!2566028 () Bool)

(assert (=> d!1944784 (=> res!2566028 e!3777846)))

(assert (=> d!1944784 (= res!2566028 (matchZipper!2156 lt!2343239 (t!378253 s!2326)))))

(declare-fun lt!2343300 () Unit!157907)

(declare-fun choose!46116 ((Set Context!11056) (Set Context!11056) List!64733) Unit!157907)

(assert (=> d!1944784 (= lt!2343300 (choose!46116 lt!2343239 lt!2343240 (t!378253 s!2326)))))

(assert (=> d!1944784 (= (lemmaZipperConcatMatchesSameAsBothZippers!975 lt!2343239 lt!2343240 (t!378253 s!2326)) lt!2343300)))

(declare-fun b!6204231 () Bool)

(assert (=> b!6204231 (= e!3777846 (matchZipper!2156 lt!2343240 (t!378253 s!2326)))))

(assert (= (and d!1944784 (not res!2566028)) b!6204231))

(assert (=> d!1944784 m!7035702))

(assert (=> d!1944784 m!7035700))

(declare-fun m!7035962 () Bool)

(assert (=> d!1944784 m!7035962))

(assert (=> b!6204231 m!7035724))

(assert (=> b!6203910 d!1944784))

(declare-fun d!1944786 () Bool)

(declare-fun c!1120167 () Bool)

(assert (=> d!1944786 (= c!1120167 (isEmpty!36608 (t!378253 s!2326)))))

(declare-fun e!3777855 () Bool)

(assert (=> d!1944786 (= (matchZipper!2156 lt!2343239 (t!378253 s!2326)) e!3777855)))

(declare-fun b!6204246 () Bool)

(declare-fun nullableZipper!1918 ((Set Context!11056)) Bool)

(assert (=> b!6204246 (= e!3777855 (nullableZipper!1918 lt!2343239))))

(declare-fun b!6204247 () Bool)

(declare-fun derivationStepZipper!2110 ((Set Context!11056) C!32558) (Set Context!11056))

(assert (=> b!6204247 (= e!3777855 (matchZipper!2156 (derivationStepZipper!2110 lt!2343239 (head!12797 (t!378253 s!2326))) (tail!11882 (t!378253 s!2326))))))

(assert (= (and d!1944786 c!1120167) b!6204246))

(assert (= (and d!1944786 (not c!1120167)) b!6204247))

(declare-fun m!7035964 () Bool)

(assert (=> d!1944786 m!7035964))

(declare-fun m!7035966 () Bool)

(assert (=> b!6204246 m!7035966))

(declare-fun m!7035968 () Bool)

(assert (=> b!6204247 m!7035968))

(assert (=> b!6204247 m!7035968))

(declare-fun m!7035970 () Bool)

(assert (=> b!6204247 m!7035970))

(declare-fun m!7035972 () Bool)

(assert (=> b!6204247 m!7035972))

(assert (=> b!6204247 m!7035970))

(assert (=> b!6204247 m!7035972))

(declare-fun m!7035974 () Bool)

(assert (=> b!6204247 m!7035974))

(assert (=> b!6203910 d!1944786))

(declare-fun d!1944788 () Bool)

(declare-fun c!1120168 () Bool)

(assert (=> d!1944788 (= c!1120168 (isEmpty!36608 (t!378253 s!2326)))))

(declare-fun e!3777856 () Bool)

(assert (=> d!1944788 (= (matchZipper!2156 (set.union lt!2343239 lt!2343240) (t!378253 s!2326)) e!3777856)))

(declare-fun b!6204248 () Bool)

(assert (=> b!6204248 (= e!3777856 (nullableZipper!1918 (set.union lt!2343239 lt!2343240)))))

(declare-fun b!6204249 () Bool)

(assert (=> b!6204249 (= e!3777856 (matchZipper!2156 (derivationStepZipper!2110 (set.union lt!2343239 lt!2343240) (head!12797 (t!378253 s!2326))) (tail!11882 (t!378253 s!2326))))))

(assert (= (and d!1944788 c!1120168) b!6204248))

(assert (= (and d!1944788 (not c!1120168)) b!6204249))

(assert (=> d!1944788 m!7035964))

(declare-fun m!7035976 () Bool)

(assert (=> b!6204248 m!7035976))

(assert (=> b!6204249 m!7035968))

(assert (=> b!6204249 m!7035968))

(declare-fun m!7035978 () Bool)

(assert (=> b!6204249 m!7035978))

(assert (=> b!6204249 m!7035972))

(assert (=> b!6204249 m!7035978))

(assert (=> b!6204249 m!7035972))

(declare-fun m!7035980 () Bool)

(assert (=> b!6204249 m!7035980))

(assert (=> b!6203910 d!1944788))

(declare-fun b!6204278 () Bool)

(declare-fun e!3777879 () Bool)

(declare-fun e!3777881 () Bool)

(assert (=> b!6204278 (= e!3777879 e!3777881)))

(declare-fun c!1120177 () Bool)

(assert (=> b!6204278 (= c!1120177 (is-Union!16144 r!7292))))

(declare-fun d!1944790 () Bool)

(declare-fun res!2566044 () Bool)

(declare-fun e!3777880 () Bool)

(assert (=> d!1944790 (=> res!2566044 e!3777880)))

(assert (=> d!1944790 (= res!2566044 (is-ElementMatch!16144 r!7292))))

(assert (=> d!1944790 (= (validRegex!7880 r!7292) e!3777880)))

(declare-fun b!6204279 () Bool)

(declare-fun e!3777883 () Bool)

(declare-fun call!519464 () Bool)

(assert (=> b!6204279 (= e!3777883 call!519464)))

(declare-fun b!6204280 () Bool)

(assert (=> b!6204280 (= e!3777880 e!3777879)))

(declare-fun c!1120178 () Bool)

(assert (=> b!6204280 (= c!1120178 (is-Star!16144 r!7292))))

(declare-fun b!6204281 () Bool)

(declare-fun res!2566045 () Bool)

(declare-fun e!3777878 () Bool)

(assert (=> b!6204281 (=> res!2566045 e!3777878)))

(assert (=> b!6204281 (= res!2566045 (not (is-Concat!24989 r!7292)))))

(assert (=> b!6204281 (= e!3777881 e!3777878)))

(declare-fun b!6204282 () Bool)

(declare-fun res!2566043 () Bool)

(declare-fun e!3777882 () Bool)

(assert (=> b!6204282 (=> (not res!2566043) (not e!3777882))))

(declare-fun call!519463 () Bool)

(assert (=> b!6204282 (= res!2566043 call!519463)))

(assert (=> b!6204282 (= e!3777881 e!3777882)))

(declare-fun bm!519458 () Bool)

(assert (=> bm!519458 (= call!519463 call!519464)))

(declare-fun bm!519459 () Bool)

(declare-fun call!519465 () Bool)

(assert (=> bm!519459 (= call!519465 (validRegex!7880 (ite c!1120177 (regTwo!32801 r!7292) (regTwo!32800 r!7292))))))

(declare-fun b!6204283 () Bool)

(declare-fun e!3777877 () Bool)

(assert (=> b!6204283 (= e!3777878 e!3777877)))

(declare-fun res!2566046 () Bool)

(assert (=> b!6204283 (=> (not res!2566046) (not e!3777877))))

(assert (=> b!6204283 (= res!2566046 call!519463)))

(declare-fun bm!519460 () Bool)

(assert (=> bm!519460 (= call!519464 (validRegex!7880 (ite c!1120178 (reg!16473 r!7292) (ite c!1120177 (regOne!32801 r!7292) (regOne!32800 r!7292)))))))

(declare-fun b!6204284 () Bool)

(assert (=> b!6204284 (= e!3777882 call!519465)))

(declare-fun b!6204285 () Bool)

(assert (=> b!6204285 (= e!3777879 e!3777883)))

(declare-fun res!2566047 () Bool)

(assert (=> b!6204285 (= res!2566047 (not (nullable!6137 (reg!16473 r!7292))))))

(assert (=> b!6204285 (=> (not res!2566047) (not e!3777883))))

(declare-fun b!6204286 () Bool)

(assert (=> b!6204286 (= e!3777877 call!519465)))

(assert (= (and d!1944790 (not res!2566044)) b!6204280))

(assert (= (and b!6204280 c!1120178) b!6204285))

(assert (= (and b!6204280 (not c!1120178)) b!6204278))

(assert (= (and b!6204285 res!2566047) b!6204279))

(assert (= (and b!6204278 c!1120177) b!6204282))

(assert (= (and b!6204278 (not c!1120177)) b!6204281))

(assert (= (and b!6204282 res!2566043) b!6204284))

(assert (= (and b!6204281 (not res!2566045)) b!6204283))

(assert (= (and b!6204283 res!2566046) b!6204286))

(assert (= (or b!6204284 b!6204286) bm!519459))

(assert (= (or b!6204282 b!6204283) bm!519458))

(assert (= (or b!6204279 bm!519458) bm!519460))

(declare-fun m!7035982 () Bool)

(assert (=> bm!519459 m!7035982))

(declare-fun m!7035984 () Bool)

(assert (=> bm!519460 m!7035984))

(declare-fun m!7035986 () Bool)

(assert (=> b!6204285 m!7035986))

(assert (=> start!618692 d!1944790))

(declare-fun bs!1539055 () Bool)

(declare-fun d!1944792 () Bool)

(assert (= bs!1539055 (and d!1944792 d!1944736)))

(declare-fun lambda!339062 () Int)

(assert (=> bs!1539055 (= lambda!339062 lambda!339042)))

(declare-fun bs!1539056 () Bool)

(assert (= bs!1539056 (and d!1944792 d!1944764)))

(assert (=> bs!1539056 (= lambda!339062 lambda!339045)))

(declare-fun bs!1539057 () Bool)

(assert (= bs!1539057 (and d!1944792 d!1944766)))

(assert (=> bs!1539057 (= lambda!339062 lambda!339048)))

(declare-fun bs!1539058 () Bool)

(assert (= bs!1539058 (and d!1944792 d!1944768)))

(assert (=> bs!1539058 (= lambda!339062 lambda!339049)))

(assert (=> d!1944792 (= (inv!83608 setElem!42121) (forall!15258 (exprs!6028 setElem!42121) lambda!339062))))

(declare-fun bs!1539059 () Bool)

(assert (= bs!1539059 d!1944792))

(declare-fun m!7035988 () Bool)

(assert (=> bs!1539059 m!7035988))

(assert (=> setNonEmpty!42121 d!1944792))

(declare-fun bs!1539060 () Bool)

(declare-fun d!1944794 () Bool)

(assert (= bs!1539060 (and d!1944794 d!1944768)))

(declare-fun lambda!339065 () Int)

(assert (=> bs!1539060 (= lambda!339065 lambda!339049)))

(declare-fun bs!1539061 () Bool)

(assert (= bs!1539061 (and d!1944794 d!1944764)))

(assert (=> bs!1539061 (= lambda!339065 lambda!339045)))

(declare-fun bs!1539062 () Bool)

(assert (= bs!1539062 (and d!1944794 d!1944792)))

(assert (=> bs!1539062 (= lambda!339065 lambda!339062)))

(declare-fun bs!1539063 () Bool)

(assert (= bs!1539063 (and d!1944794 d!1944766)))

(assert (=> bs!1539063 (= lambda!339065 lambda!339048)))

(declare-fun bs!1539064 () Bool)

(assert (= bs!1539064 (and d!1944794 d!1944736)))

(assert (=> bs!1539064 (= lambda!339065 lambda!339042)))

(declare-fun b!6204327 () Bool)

(declare-fun e!3777909 () Regex!16144)

(assert (=> b!6204327 (= e!3777909 EmptyExpr!16144)))

(declare-fun b!6204328 () Bool)

(declare-fun e!3777908 () Bool)

(declare-fun e!3777912 () Bool)

(assert (=> b!6204328 (= e!3777908 e!3777912)))

(declare-fun c!1120195 () Bool)

(assert (=> b!6204328 (= c!1120195 (isEmpty!36605 (tail!11881 (exprs!6028 (h!71056 zl!343)))))))

(declare-fun e!3777910 () Bool)

(assert (=> d!1944794 e!3777910))

(declare-fun res!2566056 () Bool)

(assert (=> d!1944794 (=> (not res!2566056) (not e!3777910))))

(declare-fun lt!2343306 () Regex!16144)

(assert (=> d!1944794 (= res!2566056 (validRegex!7880 lt!2343306))))

(declare-fun e!3777911 () Regex!16144)

(assert (=> d!1944794 (= lt!2343306 e!3777911)))

(declare-fun c!1120198 () Bool)

(declare-fun e!3777913 () Bool)

(assert (=> d!1944794 (= c!1120198 e!3777913)))

(declare-fun res!2566057 () Bool)

(assert (=> d!1944794 (=> (not res!2566057) (not e!3777913))))

(assert (=> d!1944794 (= res!2566057 (is-Cons!64607 (exprs!6028 (h!71056 zl!343))))))

(assert (=> d!1944794 (forall!15258 (exprs!6028 (h!71056 zl!343)) lambda!339065)))

(assert (=> d!1944794 (= (generalisedConcat!1741 (exprs!6028 (h!71056 zl!343))) lt!2343306)))

(declare-fun b!6204329 () Bool)

(assert (=> b!6204329 (= e!3777912 (= lt!2343306 (head!12796 (exprs!6028 (h!71056 zl!343)))))))

(declare-fun b!6204330 () Bool)

(assert (=> b!6204330 (= e!3777911 e!3777909)))

(declare-fun c!1120197 () Bool)

(assert (=> b!6204330 (= c!1120197 (is-Cons!64607 (exprs!6028 (h!71056 zl!343))))))

(declare-fun b!6204331 () Bool)

(assert (=> b!6204331 (= e!3777910 e!3777908)))

(declare-fun c!1120196 () Bool)

(assert (=> b!6204331 (= c!1120196 (isEmpty!36605 (exprs!6028 (h!71056 zl!343))))))

(declare-fun b!6204332 () Bool)

(assert (=> b!6204332 (= e!3777913 (isEmpty!36605 (t!378251 (exprs!6028 (h!71056 zl!343)))))))

(declare-fun b!6204333 () Bool)

(declare-fun isConcat!1077 (Regex!16144) Bool)

(assert (=> b!6204333 (= e!3777912 (isConcat!1077 lt!2343306))))

(declare-fun b!6204334 () Bool)

(assert (=> b!6204334 (= e!3777909 (Concat!24989 (h!71055 (exprs!6028 (h!71056 zl!343))) (generalisedConcat!1741 (t!378251 (exprs!6028 (h!71056 zl!343))))))))

(declare-fun b!6204335 () Bool)

(declare-fun isEmptyExpr!1554 (Regex!16144) Bool)

(assert (=> b!6204335 (= e!3777908 (isEmptyExpr!1554 lt!2343306))))

(declare-fun b!6204336 () Bool)

(assert (=> b!6204336 (= e!3777911 (h!71055 (exprs!6028 (h!71056 zl!343))))))

(assert (= (and d!1944794 res!2566057) b!6204332))

(assert (= (and d!1944794 c!1120198) b!6204336))

(assert (= (and d!1944794 (not c!1120198)) b!6204330))

(assert (= (and b!6204330 c!1120197) b!6204334))

(assert (= (and b!6204330 (not c!1120197)) b!6204327))

(assert (= (and d!1944794 res!2566056) b!6204331))

(assert (= (and b!6204331 c!1120196) b!6204335))

(assert (= (and b!6204331 (not c!1120196)) b!6204328))

(assert (= (and b!6204328 c!1120195) b!6204329))

(assert (= (and b!6204328 (not c!1120195)) b!6204333))

(declare-fun m!7036008 () Bool)

(assert (=> b!6204333 m!7036008))

(declare-fun m!7036010 () Bool)

(assert (=> b!6204331 m!7036010))

(assert (=> b!6204332 m!7035716))

(declare-fun m!7036012 () Bool)

(assert (=> d!1944794 m!7036012))

(declare-fun m!7036014 () Bool)

(assert (=> d!1944794 m!7036014))

(declare-fun m!7036016 () Bool)

(assert (=> b!6204334 m!7036016))

(declare-fun m!7036018 () Bool)

(assert (=> b!6204335 m!7036018))

(declare-fun m!7036020 () Bool)

(assert (=> b!6204328 m!7036020))

(assert (=> b!6204328 m!7036020))

(declare-fun m!7036022 () Bool)

(assert (=> b!6204328 m!7036022))

(declare-fun m!7036024 () Bool)

(assert (=> b!6204329 m!7036024))

(assert (=> b!6203911 d!1944794))

(declare-fun d!1944800 () Bool)

(declare-fun c!1120199 () Bool)

(assert (=> d!1944800 (= c!1120199 (isEmpty!36608 (t!378253 s!2326)))))

(declare-fun e!3777914 () Bool)

(assert (=> d!1944800 (= (matchZipper!2156 lt!2343240 (t!378253 s!2326)) e!3777914)))

(declare-fun b!6204337 () Bool)

(assert (=> b!6204337 (= e!3777914 (nullableZipper!1918 lt!2343240))))

(declare-fun b!6204338 () Bool)

(assert (=> b!6204338 (= e!3777914 (matchZipper!2156 (derivationStepZipper!2110 lt!2343240 (head!12797 (t!378253 s!2326))) (tail!11882 (t!378253 s!2326))))))

(assert (= (and d!1944800 c!1120199) b!6204337))

(assert (= (and d!1944800 (not c!1120199)) b!6204338))

(assert (=> d!1944800 m!7035964))

(declare-fun m!7036026 () Bool)

(assert (=> b!6204337 m!7036026))

(assert (=> b!6204338 m!7035968))

(assert (=> b!6204338 m!7035968))

(declare-fun m!7036028 () Bool)

(assert (=> b!6204338 m!7036028))

(assert (=> b!6204338 m!7035972))

(assert (=> b!6204338 m!7036028))

(assert (=> b!6204338 m!7035972))

(declare-fun m!7036030 () Bool)

(assert (=> b!6204338 m!7036030))

(assert (=> b!6203905 d!1944800))

(declare-fun d!1944802 () Bool)

(assert (=> d!1944802 (= (isEmpty!36604 (t!378252 zl!343)) (is-Nil!64608 (t!378252 zl!343)))))

(assert (=> b!6203904 d!1944802))

(declare-fun b!6204384 () Bool)

(declare-fun e!3777941 () Bool)

(declare-fun lt!2343314 () Option!16035)

(declare-fun ++!14222 (List!64733 List!64733) List!64733)

(declare-fun get!22310 (Option!16035) tuple2!66246)

(assert (=> b!6204384 (= e!3777941 (= (++!14222 (_1!36426 (get!22310 lt!2343314)) (_2!36426 (get!22310 lt!2343314))) s!2326))))

(declare-fun b!6204385 () Bool)

(declare-fun e!3777940 () Bool)

(assert (=> b!6204385 (= e!3777940 (not (isDefined!12738 lt!2343314)))))

(declare-fun b!6204386 () Bool)

(declare-fun res!2566075 () Bool)

(assert (=> b!6204386 (=> (not res!2566075) (not e!3777941))))

(assert (=> b!6204386 (= res!2566075 (matchR!8327 (regTwo!32800 r!7292) (_2!36426 (get!22310 lt!2343314))))))

(declare-fun b!6204387 () Bool)

(declare-fun res!2566071 () Bool)

(assert (=> b!6204387 (=> (not res!2566071) (not e!3777941))))

(assert (=> b!6204387 (= res!2566071 (matchR!8327 (regOne!32800 r!7292) (_1!36426 (get!22310 lt!2343314))))))

(declare-fun b!6204388 () Bool)

(declare-fun e!3777944 () Bool)

(assert (=> b!6204388 (= e!3777944 (matchR!8327 (regTwo!32800 r!7292) s!2326))))

(declare-fun b!6204389 () Bool)

(declare-fun e!3777942 () Option!16035)

(assert (=> b!6204389 (= e!3777942 None!16034)))

(declare-fun b!6204390 () Bool)

(declare-fun lt!2343315 () Unit!157907)

(declare-fun lt!2343313 () Unit!157907)

(assert (=> b!6204390 (= lt!2343315 lt!2343313)))

(assert (=> b!6204390 (= (++!14222 (++!14222 Nil!64609 (Cons!64609 (h!71057 s!2326) Nil!64609)) (t!378253 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2317 (List!64733 C!32558 List!64733 List!64733) Unit!157907)

(assert (=> b!6204390 (= lt!2343313 (lemmaMoveElementToOtherListKeepsConcatEq!2317 Nil!64609 (h!71057 s!2326) (t!378253 s!2326) s!2326))))

(assert (=> b!6204390 (= e!3777942 (findConcatSeparation!2449 (regOne!32800 r!7292) (regTwo!32800 r!7292) (++!14222 Nil!64609 (Cons!64609 (h!71057 s!2326) Nil!64609)) (t!378253 s!2326) s!2326))))

(declare-fun d!1944804 () Bool)

(assert (=> d!1944804 e!3777940))

(declare-fun res!2566074 () Bool)

(assert (=> d!1944804 (=> res!2566074 e!3777940)))

(assert (=> d!1944804 (= res!2566074 e!3777941)))

(declare-fun res!2566072 () Bool)

(assert (=> d!1944804 (=> (not res!2566072) (not e!3777941))))

(assert (=> d!1944804 (= res!2566072 (isDefined!12738 lt!2343314))))

(declare-fun e!3777943 () Option!16035)

(assert (=> d!1944804 (= lt!2343314 e!3777943)))

(declare-fun c!1120217 () Bool)

(assert (=> d!1944804 (= c!1120217 e!3777944)))

(declare-fun res!2566073 () Bool)

(assert (=> d!1944804 (=> (not res!2566073) (not e!3777944))))

(assert (=> d!1944804 (= res!2566073 (matchR!8327 (regOne!32800 r!7292) Nil!64609))))

(assert (=> d!1944804 (validRegex!7880 (regOne!32800 r!7292))))

(assert (=> d!1944804 (= (findConcatSeparation!2449 (regOne!32800 r!7292) (regTwo!32800 r!7292) Nil!64609 s!2326 s!2326) lt!2343314)))

(declare-fun b!6204391 () Bool)

(assert (=> b!6204391 (= e!3777943 (Some!16034 (tuple2!66247 Nil!64609 s!2326)))))

(declare-fun b!6204392 () Bool)

(assert (=> b!6204392 (= e!3777943 e!3777942)))

(declare-fun c!1120216 () Bool)

(assert (=> b!6204392 (= c!1120216 (is-Nil!64609 s!2326))))

(assert (= (and d!1944804 res!2566073) b!6204388))

(assert (= (and d!1944804 c!1120217) b!6204391))

(assert (= (and d!1944804 (not c!1120217)) b!6204392))

(assert (= (and b!6204392 c!1120216) b!6204389))

(assert (= (and b!6204392 (not c!1120216)) b!6204390))

(assert (= (and d!1944804 res!2566072) b!6204387))

(assert (= (and b!6204387 res!2566071) b!6204386))

(assert (= (and b!6204386 res!2566075) b!6204384))

(assert (= (and d!1944804 (not res!2566074)) b!6204385))

(declare-fun m!7036038 () Bool)

(assert (=> b!6204388 m!7036038))

(declare-fun m!7036040 () Bool)

(assert (=> b!6204387 m!7036040))

(declare-fun m!7036042 () Bool)

(assert (=> b!6204387 m!7036042))

(declare-fun m!7036044 () Bool)

(assert (=> b!6204385 m!7036044))

(declare-fun m!7036046 () Bool)

(assert (=> b!6204390 m!7036046))

(assert (=> b!6204390 m!7036046))

(declare-fun m!7036048 () Bool)

(assert (=> b!6204390 m!7036048))

(declare-fun m!7036050 () Bool)

(assert (=> b!6204390 m!7036050))

(assert (=> b!6204390 m!7036046))

(declare-fun m!7036052 () Bool)

(assert (=> b!6204390 m!7036052))

(assert (=> d!1944804 m!7036044))

(declare-fun m!7036054 () Bool)

(assert (=> d!1944804 m!7036054))

(declare-fun m!7036056 () Bool)

(assert (=> d!1944804 m!7036056))

(assert (=> b!6204386 m!7036040))

(declare-fun m!7036058 () Bool)

(assert (=> b!6204386 m!7036058))

(assert (=> b!6204384 m!7036040))

(declare-fun m!7036060 () Bool)

(assert (=> b!6204384 m!7036060))

(assert (=> b!6203913 d!1944804))

(declare-fun d!1944808 () Bool)

(declare-fun choose!46117 (Int) Bool)

(assert (=> d!1944808 (= (Exists!3214 lambda!339027) (choose!46117 lambda!339027))))

(declare-fun bs!1539065 () Bool)

(assert (= bs!1539065 d!1944808))

(declare-fun m!7036062 () Bool)

(assert (=> bs!1539065 m!7036062))

(assert (=> b!6203913 d!1944808))

(declare-fun d!1944810 () Bool)

(assert (=> d!1944810 (= (Exists!3214 lambda!339026) (choose!46117 lambda!339026))))

(declare-fun bs!1539066 () Bool)

(assert (= bs!1539066 d!1944810))

(declare-fun m!7036064 () Bool)

(assert (=> bs!1539066 m!7036064))

(assert (=> b!6203913 d!1944810))

(declare-fun bs!1539067 () Bool)

(declare-fun d!1944812 () Bool)

(assert (= bs!1539067 (and d!1944812 b!6203913)))

(declare-fun lambda!339068 () Int)

(assert (=> bs!1539067 (= lambda!339068 lambda!339026)))

(assert (=> bs!1539067 (not (= lambda!339068 lambda!339027))))

(declare-fun bs!1539068 () Bool)

(assert (= bs!1539068 (and d!1944812 b!6204177)))

(assert (=> bs!1539068 (not (= lambda!339068 lambda!339054))))

(declare-fun bs!1539069 () Bool)

(assert (= bs!1539069 (and d!1944812 b!6204180)))

(assert (=> bs!1539069 (not (= lambda!339068 lambda!339055))))

(assert (=> d!1944812 true))

(assert (=> d!1944812 true))

(assert (=> d!1944812 true))

(assert (=> d!1944812 (= (isDefined!12738 (findConcatSeparation!2449 (regOne!32800 r!7292) (regTwo!32800 r!7292) Nil!64609 s!2326 s!2326)) (Exists!3214 lambda!339068))))

(declare-fun lt!2343318 () Unit!157907)

(declare-fun choose!46118 (Regex!16144 Regex!16144 List!64733) Unit!157907)

(assert (=> d!1944812 (= lt!2343318 (choose!46118 (regOne!32800 r!7292) (regTwo!32800 r!7292) s!2326))))

(assert (=> d!1944812 (validRegex!7880 (regOne!32800 r!7292))))

(assert (=> d!1944812 (= (lemmaFindConcatSeparationEquivalentToExists!2213 (regOne!32800 r!7292) (regTwo!32800 r!7292) s!2326) lt!2343318)))

(declare-fun bs!1539070 () Bool)

(assert (= bs!1539070 d!1944812))

(declare-fun m!7036066 () Bool)

(assert (=> bs!1539070 m!7036066))

(assert (=> bs!1539070 m!7036056))

(assert (=> bs!1539070 m!7035746))

(assert (=> bs!1539070 m!7035746))

(assert (=> bs!1539070 m!7035748))

(declare-fun m!7036068 () Bool)

(assert (=> bs!1539070 m!7036068))

(assert (=> b!6203913 d!1944812))

(declare-fun bs!1539074 () Bool)

(declare-fun d!1944814 () Bool)

(assert (= bs!1539074 (and d!1944814 b!6203913)))

(declare-fun lambda!339073 () Int)

(assert (=> bs!1539074 (not (= lambda!339073 lambda!339027))))

(declare-fun bs!1539075 () Bool)

(assert (= bs!1539075 (and d!1944814 b!6204177)))

(assert (=> bs!1539075 (not (= lambda!339073 lambda!339054))))

(declare-fun bs!1539076 () Bool)

(assert (= bs!1539076 (and d!1944814 b!6204180)))

(assert (=> bs!1539076 (not (= lambda!339073 lambda!339055))))

(declare-fun bs!1539077 () Bool)

(assert (= bs!1539077 (and d!1944814 d!1944812)))

(assert (=> bs!1539077 (= lambda!339073 lambda!339068)))

(assert (=> bs!1539074 (= lambda!339073 lambda!339026)))

(assert (=> d!1944814 true))

(assert (=> d!1944814 true))

(assert (=> d!1944814 true))

(declare-fun lambda!339074 () Int)

(assert (=> bs!1539074 (= lambda!339074 lambda!339027)))

(assert (=> bs!1539075 (not (= lambda!339074 lambda!339054))))

(assert (=> bs!1539076 (= lambda!339074 lambda!339055)))

(declare-fun bs!1539078 () Bool)

(assert (= bs!1539078 d!1944814))

(assert (=> bs!1539078 (not (= lambda!339074 lambda!339073))))

(assert (=> bs!1539077 (not (= lambda!339074 lambda!339068))))

(assert (=> bs!1539074 (not (= lambda!339074 lambda!339026))))

(assert (=> d!1944814 true))

(assert (=> d!1944814 true))

(assert (=> d!1944814 true))

(assert (=> d!1944814 (= (Exists!3214 lambda!339073) (Exists!3214 lambda!339074))))

(declare-fun lt!2343324 () Unit!157907)

(declare-fun choose!46119 (Regex!16144 Regex!16144 List!64733) Unit!157907)

(assert (=> d!1944814 (= lt!2343324 (choose!46119 (regOne!32800 r!7292) (regTwo!32800 r!7292) s!2326))))

(assert (=> d!1944814 (validRegex!7880 (regOne!32800 r!7292))))

(assert (=> d!1944814 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1751 (regOne!32800 r!7292) (regTwo!32800 r!7292) s!2326) lt!2343324)))

(declare-fun m!7036100 () Bool)

(assert (=> bs!1539078 m!7036100))

(declare-fun m!7036102 () Bool)

(assert (=> bs!1539078 m!7036102))

(declare-fun m!7036104 () Bool)

(assert (=> bs!1539078 m!7036104))

(assert (=> bs!1539078 m!7036056))

(assert (=> b!6203913 d!1944814))

(declare-fun d!1944828 () Bool)

(declare-fun isEmpty!36609 (Option!16035) Bool)

(assert (=> d!1944828 (= (isDefined!12738 (findConcatSeparation!2449 (regOne!32800 r!7292) (regTwo!32800 r!7292) Nil!64609 s!2326 s!2326)) (not (isEmpty!36609 (findConcatSeparation!2449 (regOne!32800 r!7292) (regTwo!32800 r!7292) Nil!64609 s!2326 s!2326))))))

(declare-fun bs!1539079 () Bool)

(assert (= bs!1539079 d!1944828))

(assert (=> bs!1539079 m!7035746))

(declare-fun m!7036110 () Bool)

(assert (=> bs!1539079 m!7036110))

(assert (=> b!6203913 d!1944828))

(declare-fun b!6204455 () Bool)

(declare-fun e!3777980 () Bool)

(declare-fun tp!1730303 () Bool)

(assert (=> b!6204455 (= e!3777980 tp!1730303)))

(declare-fun e!3777979 () Bool)

(declare-fun b!6204454 () Bool)

(declare-fun tp!1730304 () Bool)

(assert (=> b!6204454 (= e!3777979 (and (inv!83608 (h!71056 (t!378252 zl!343))) e!3777980 tp!1730304))))

(assert (=> b!6203901 (= tp!1730260 e!3777979)))

(assert (= b!6204454 b!6204455))

(assert (= (and b!6203901 (is-Cons!64608 (t!378252 zl!343))) b!6204454))

(declare-fun m!7036118 () Bool)

(assert (=> b!6204454 m!7036118))

(declare-fun b!6204467 () Bool)

(declare-fun e!3777983 () Bool)

(declare-fun tp!1730318 () Bool)

(declare-fun tp!1730315 () Bool)

(assert (=> b!6204467 (= e!3777983 (and tp!1730318 tp!1730315))))

(declare-fun b!6204466 () Bool)

(assert (=> b!6204466 (= e!3777983 tp_is_empty!41541)))

(assert (=> b!6203916 (= tp!1730268 e!3777983)))

(declare-fun b!6204468 () Bool)

(declare-fun tp!1730317 () Bool)

(assert (=> b!6204468 (= e!3777983 tp!1730317)))

(declare-fun b!6204469 () Bool)

(declare-fun tp!1730319 () Bool)

(declare-fun tp!1730316 () Bool)

(assert (=> b!6204469 (= e!3777983 (and tp!1730319 tp!1730316))))

(assert (= (and b!6203916 (is-ElementMatch!16144 (regOne!32800 r!7292))) b!6204466))

(assert (= (and b!6203916 (is-Concat!24989 (regOne!32800 r!7292))) b!6204467))

(assert (= (and b!6203916 (is-Star!16144 (regOne!32800 r!7292))) b!6204468))

(assert (= (and b!6203916 (is-Union!16144 (regOne!32800 r!7292))) b!6204469))

(declare-fun b!6204471 () Bool)

(declare-fun e!3777984 () Bool)

(declare-fun tp!1730323 () Bool)

(declare-fun tp!1730320 () Bool)

(assert (=> b!6204471 (= e!3777984 (and tp!1730323 tp!1730320))))

(declare-fun b!6204470 () Bool)

(assert (=> b!6204470 (= e!3777984 tp_is_empty!41541)))

(assert (=> b!6203916 (= tp!1730262 e!3777984)))

(declare-fun b!6204472 () Bool)

(declare-fun tp!1730322 () Bool)

(assert (=> b!6204472 (= e!3777984 tp!1730322)))

(declare-fun b!6204473 () Bool)

(declare-fun tp!1730324 () Bool)

(declare-fun tp!1730321 () Bool)

(assert (=> b!6204473 (= e!3777984 (and tp!1730324 tp!1730321))))

(assert (= (and b!6203916 (is-ElementMatch!16144 (regTwo!32800 r!7292))) b!6204470))

(assert (= (and b!6203916 (is-Concat!24989 (regTwo!32800 r!7292))) b!6204471))

(assert (= (and b!6203916 (is-Star!16144 (regTwo!32800 r!7292))) b!6204472))

(assert (= (and b!6203916 (is-Union!16144 (regTwo!32800 r!7292))) b!6204473))

(declare-fun condSetEmpty!42127 () Bool)

(assert (=> setNonEmpty!42121 (= condSetEmpty!42127 (= setRest!42121 (as set.empty (Set Context!11056))))))

(declare-fun setRes!42127 () Bool)

(assert (=> setNonEmpty!42121 (= tp!1730263 setRes!42127)))

(declare-fun setIsEmpty!42127 () Bool)

(assert (=> setIsEmpty!42127 setRes!42127))

(declare-fun setElem!42127 () Context!11056)

(declare-fun e!3777987 () Bool)

(declare-fun tp!1730330 () Bool)

(declare-fun setNonEmpty!42127 () Bool)

(assert (=> setNonEmpty!42127 (= setRes!42127 (and tp!1730330 (inv!83608 setElem!42127) e!3777987))))

(declare-fun setRest!42127 () (Set Context!11056))

(assert (=> setNonEmpty!42127 (= setRest!42121 (set.union (set.insert setElem!42127 (as set.empty (Set Context!11056))) setRest!42127))))

(declare-fun b!6204478 () Bool)

(declare-fun tp!1730329 () Bool)

(assert (=> b!6204478 (= e!3777987 tp!1730329)))

(assert (= (and setNonEmpty!42121 condSetEmpty!42127) setIsEmpty!42127))

(assert (= (and setNonEmpty!42121 (not condSetEmpty!42127)) setNonEmpty!42127))

(assert (= setNonEmpty!42127 b!6204478))

(declare-fun m!7036130 () Bool)

(assert (=> setNonEmpty!42127 m!7036130))

(declare-fun b!6204483 () Bool)

(declare-fun e!3777990 () Bool)

(declare-fun tp!1730335 () Bool)

(declare-fun tp!1730336 () Bool)

(assert (=> b!6204483 (= e!3777990 (and tp!1730335 tp!1730336))))

(assert (=> b!6203907 (= tp!1730264 e!3777990)))

(assert (= (and b!6203907 (is-Cons!64607 (exprs!6028 setElem!42121))) b!6204483))

(declare-fun b!6204488 () Bool)

(declare-fun e!3777993 () Bool)

(declare-fun tp!1730339 () Bool)

(assert (=> b!6204488 (= e!3777993 (and tp_is_empty!41541 tp!1730339))))

(assert (=> b!6203912 (= tp!1730261 e!3777993)))

(assert (= (and b!6203912 (is-Cons!64609 (t!378253 s!2326))) b!6204488))

(declare-fun b!6204489 () Bool)

(declare-fun e!3777994 () Bool)

(declare-fun tp!1730340 () Bool)

(declare-fun tp!1730341 () Bool)

(assert (=> b!6204489 (= e!3777994 (and tp!1730340 tp!1730341))))

(assert (=> b!6203898 (= tp!1730265 e!3777994)))

(assert (= (and b!6203898 (is-Cons!64607 (exprs!6028 (h!71056 zl!343)))) b!6204489))

(declare-fun b!6204491 () Bool)

(declare-fun e!3777995 () Bool)

(declare-fun tp!1730345 () Bool)

(declare-fun tp!1730342 () Bool)

(assert (=> b!6204491 (= e!3777995 (and tp!1730345 tp!1730342))))

(declare-fun b!6204490 () Bool)

(assert (=> b!6204490 (= e!3777995 tp_is_empty!41541)))

(assert (=> b!6203917 (= tp!1730267 e!3777995)))

(declare-fun b!6204492 () Bool)

(declare-fun tp!1730344 () Bool)

(assert (=> b!6204492 (= e!3777995 tp!1730344)))

(declare-fun b!6204493 () Bool)

(declare-fun tp!1730346 () Bool)

(declare-fun tp!1730343 () Bool)

(assert (=> b!6204493 (= e!3777995 (and tp!1730346 tp!1730343))))

(assert (= (and b!6203917 (is-ElementMatch!16144 (reg!16473 r!7292))) b!6204490))

(assert (= (and b!6203917 (is-Concat!24989 (reg!16473 r!7292))) b!6204491))

(assert (= (and b!6203917 (is-Star!16144 (reg!16473 r!7292))) b!6204492))

(assert (= (and b!6203917 (is-Union!16144 (reg!16473 r!7292))) b!6204493))

(declare-fun b!6204495 () Bool)

(declare-fun e!3777996 () Bool)

(declare-fun tp!1730350 () Bool)

(declare-fun tp!1730347 () Bool)

(assert (=> b!6204495 (= e!3777996 (and tp!1730350 tp!1730347))))

(declare-fun b!6204494 () Bool)

(assert (=> b!6204494 (= e!3777996 tp_is_empty!41541)))

(assert (=> b!6203919 (= tp!1730266 e!3777996)))

(declare-fun b!6204496 () Bool)

(declare-fun tp!1730349 () Bool)

(assert (=> b!6204496 (= e!3777996 tp!1730349)))

(declare-fun b!6204497 () Bool)

(declare-fun tp!1730351 () Bool)

(declare-fun tp!1730348 () Bool)

(assert (=> b!6204497 (= e!3777996 (and tp!1730351 tp!1730348))))

(assert (= (and b!6203919 (is-ElementMatch!16144 (regOne!32801 r!7292))) b!6204494))

(assert (= (and b!6203919 (is-Concat!24989 (regOne!32801 r!7292))) b!6204495))

(assert (= (and b!6203919 (is-Star!16144 (regOne!32801 r!7292))) b!6204496))

(assert (= (and b!6203919 (is-Union!16144 (regOne!32801 r!7292))) b!6204497))

(declare-fun b!6204499 () Bool)

(declare-fun e!3777997 () Bool)

(declare-fun tp!1730355 () Bool)

(declare-fun tp!1730352 () Bool)

(assert (=> b!6204499 (= e!3777997 (and tp!1730355 tp!1730352))))

(declare-fun b!6204498 () Bool)

(assert (=> b!6204498 (= e!3777997 tp_is_empty!41541)))

(assert (=> b!6203919 (= tp!1730259 e!3777997)))

(declare-fun b!6204500 () Bool)

(declare-fun tp!1730354 () Bool)

(assert (=> b!6204500 (= e!3777997 tp!1730354)))

(declare-fun b!6204501 () Bool)

(declare-fun tp!1730356 () Bool)

(declare-fun tp!1730353 () Bool)

(assert (=> b!6204501 (= e!3777997 (and tp!1730356 tp!1730353))))

(assert (= (and b!6203919 (is-ElementMatch!16144 (regTwo!32801 r!7292))) b!6204498))

(assert (= (and b!6203919 (is-Concat!24989 (regTwo!32801 r!7292))) b!6204499))

(assert (= (and b!6203919 (is-Star!16144 (regTwo!32801 r!7292))) b!6204500))

(assert (= (and b!6203919 (is-Union!16144 (regTwo!32801 r!7292))) b!6204501))

(declare-fun b_lambda!235961 () Bool)

(assert (= b_lambda!235957 (or b!6203896 b_lambda!235961)))

(declare-fun bs!1539087 () Bool)

(declare-fun d!1944838 () Bool)

(assert (= bs!1539087 (and d!1944838 b!6203896)))

(assert (=> bs!1539087 (= (dynLambda!25482 lambda!339028 (h!71056 zl!343)) (derivationStepZipperUp!1318 (h!71056 zl!343) (h!71057 s!2326)))))

(assert (=> bs!1539087 m!7035734))

(assert (=> d!1944756 d!1944838))

(push 1)

(assert (not d!1944808))

(assert (not b!6204249))

(assert (not bm!519411))

(assert (not b!6204041))

(assert (not b!6204478))

(assert (not b!6204328))

(assert (not b!6204384))

(assert (not b!6204131))

(assert (not b!6204079))

(assert (not b!6204473))

(assert (not b!6204224))

(assert (not b!6204136))

(assert (not b!6204225))

(assert (not b!6204044))

(assert (not b!6204332))

(assert (not d!1944792))

(assert (not b!6204455))

(assert (not b!6204335))

(assert (not bm!519431))

(assert (not b!6204285))

(assert (not b!6204248))

(assert (not b!6204472))

(assert (not b!6204493))

(assert (not b!6204333))

(assert (not bm!519460))

(assert (not b!6204127))

(assert (not b!6204247))

(assert (not d!1944748))

(assert (not bm!519430))

(assert (not d!1944784))

(assert (not b!6204046))

(assert (not b!6204497))

(assert (not d!1944828))

(assert (not b!6204488))

(assert (not b!6204090))

(assert (not b!6204496))

(assert (not bm!519459))

(assert (not bm!519428))

(assert (not d!1944738))

(assert (not b!6204467))

(assert (not d!1944788))

(assert (not b!6204386))

(assert (not d!1944742))

(assert (not b!6204034))

(assert (not d!1944804))

(assert (not b!6204123))

(assert (not b!6204039))

(assert (not b!6204499))

(assert (not b!6204385))

(assert (not bm!519436))

(assert (not b!6204469))

(assert (not bm!519447))

(assert (not b!6204130))

(assert (not b!6204223))

(assert (not b!6204390))

(assert (not d!1944764))

(assert (not d!1944774))

(assert (not bm!519410))

(assert (not b!6204122))

(assert (not bm!519448))

(assert (not b!6204489))

(assert (not d!1944810))

(assert (not b!6204331))

(assert (not b!6204334))

(assert (not b!6204337))

(assert (not d!1944744))

(assert (not d!1944768))

(assert (not bm!519451))

(assert (not b!6204471))

(assert (not b!6204219))

(assert (not bm!519425))

(assert (not b!6204500))

(assert (not d!1944814))

(assert (not b!6204179))

(assert (not bm!519437))

(assert (not b!6204338))

(assert (not b!6204468))

(assert (not b!6204329))

(assert (not d!1944756))

(assert (not b!6204126))

(assert (not d!1944736))

(assert (not b!6204246))

(assert (not d!1944780))

(assert (not b!6204228))

(assert (not d!1944786))

(assert (not b!6204170))

(assert (not b!6204387))

(assert (not d!1944766))

(assert (not d!1944812))

(assert (not b!6204492))

(assert (not d!1944794))

(assert (not bm!519440))

(assert (not b!6204129))

(assert (not b!6204231))

(assert (not b!6204491))

(assert tp_is_empty!41541)

(assert (not b!6204483))

(assert (not bs!1539087))

(assert (not b!6204036))

(assert (not b!6204454))

(assert (not bm!519412))

(assert (not setNonEmpty!42127))

(assert (not b!6204021))

(assert (not bm!519434))

(assert (not b!6204495))

(assert (not d!1944762))

(assert (not d!1944800))

(assert (not b!6204388))

(assert (not bm!519442))

(assert (not b!6204101))

(assert (not b!6204215))

(assert (not b_lambda!235961))

(assert (not b!6204501))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1944876 () Bool)

(assert (=> d!1944876 (= (head!12797 s!2326) (h!71057 s!2326))))

(assert (=> b!6204225 d!1944876))

(declare-fun d!1944878 () Bool)

(declare-fun res!2566194 () Bool)

(declare-fun e!3778142 () Bool)

(assert (=> d!1944878 (=> res!2566194 e!3778142)))

(assert (=> d!1944878 (= res!2566194 (is-Nil!64607 (exprs!6028 (h!71056 zl!343))))))

(assert (=> d!1944878 (= (forall!15258 (exprs!6028 (h!71056 zl!343)) lambda!339049) e!3778142)))

(declare-fun b!6204757 () Bool)

(declare-fun e!3778143 () Bool)

(assert (=> b!6204757 (= e!3778142 e!3778143)))

(declare-fun res!2566195 () Bool)

(assert (=> b!6204757 (=> (not res!2566195) (not e!3778143))))

(declare-fun dynLambda!25484 (Int Regex!16144) Bool)

(assert (=> b!6204757 (= res!2566195 (dynLambda!25484 lambda!339049 (h!71055 (exprs!6028 (h!71056 zl!343)))))))

(declare-fun b!6204758 () Bool)

(assert (=> b!6204758 (= e!3778143 (forall!15258 (t!378251 (exprs!6028 (h!71056 zl!343))) lambda!339049))))

(assert (= (and d!1944878 (not res!2566194)) b!6204757))

(assert (= (and b!6204757 res!2566195) b!6204758))

(declare-fun b_lambda!235965 () Bool)

(assert (=> (not b_lambda!235965) (not b!6204757)))

(declare-fun m!7036254 () Bool)

(assert (=> b!6204757 m!7036254))

(declare-fun m!7036256 () Bool)

(assert (=> b!6204758 m!7036256))

(assert (=> d!1944768 d!1944878))

(assert (=> b!6204231 d!1944800))

(declare-fun d!1944880 () Bool)

(assert (=> d!1944880 (= (nullable!6137 (regOne!32800 (regOne!32800 (regOne!32800 r!7292)))) (nullableFct!2093 (regOne!32800 (regOne!32800 (regOne!32800 r!7292)))))))

(declare-fun bs!1539116 () Bool)

(assert (= bs!1539116 d!1944880))

(declare-fun m!7036258 () Bool)

(assert (=> bs!1539116 m!7036258))

(assert (=> b!6204090 d!1944880))

(declare-fun d!1944882 () Bool)

(assert (=> d!1944882 (= (isEmpty!36608 (t!378253 s!2326)) (is-Nil!64609 (t!378253 s!2326)))))

(assert (=> d!1944788 d!1944882))

(declare-fun d!1944884 () Bool)

(assert (=> d!1944884 (= (isEmptyLang!1563 lt!2343288) (is-EmptyLang!16144 lt!2343288))))

(assert (=> b!6204127 d!1944884))

(declare-fun bs!1539117 () Bool)

(declare-fun b!6204766 () Bool)

(assert (= bs!1539117 (and b!6204766 b!6203913)))

(declare-fun lambda!339098 () Int)

(assert (=> bs!1539117 (not (= lambda!339098 lambda!339027))))

(declare-fun bs!1539118 () Bool)

(assert (= bs!1539118 (and b!6204766 b!6204177)))

(assert (=> bs!1539118 (= (and (= (reg!16473 (regTwo!32801 r!7292)) (reg!16473 r!7292)) (= (regTwo!32801 r!7292) r!7292)) (= lambda!339098 lambda!339054))))

(declare-fun bs!1539119 () Bool)

(assert (= bs!1539119 (and b!6204766 b!6204180)))

(assert (=> bs!1539119 (not (= lambda!339098 lambda!339055))))

(declare-fun bs!1539120 () Bool)

(assert (= bs!1539120 (and b!6204766 d!1944814)))

(assert (=> bs!1539120 (not (= lambda!339098 lambda!339074))))

(assert (=> bs!1539120 (not (= lambda!339098 lambda!339073))))

(declare-fun bs!1539121 () Bool)

(assert (= bs!1539121 (and b!6204766 d!1944812)))

(assert (=> bs!1539121 (not (= lambda!339098 lambda!339068))))

(assert (=> bs!1539117 (not (= lambda!339098 lambda!339026))))

(assert (=> b!6204766 true))

(assert (=> b!6204766 true))

(declare-fun bs!1539122 () Bool)

(declare-fun b!6204769 () Bool)

(assert (= bs!1539122 (and b!6204769 b!6203913)))

(declare-fun lambda!339099 () Int)

(assert (=> bs!1539122 (= (and (= (regOne!32800 (regTwo!32801 r!7292)) (regOne!32800 r!7292)) (= (regTwo!32800 (regTwo!32801 r!7292)) (regTwo!32800 r!7292))) (= lambda!339099 lambda!339027))))

(declare-fun bs!1539123 () Bool)

(assert (= bs!1539123 (and b!6204769 b!6204177)))

(assert (=> bs!1539123 (not (= lambda!339099 lambda!339054))))

(declare-fun bs!1539124 () Bool)

(assert (= bs!1539124 (and b!6204769 b!6204180)))

(assert (=> bs!1539124 (= (and (= (regOne!32800 (regTwo!32801 r!7292)) (regOne!32800 r!7292)) (= (regTwo!32800 (regTwo!32801 r!7292)) (regTwo!32800 r!7292))) (= lambda!339099 lambda!339055))))

(declare-fun bs!1539125 () Bool)

(assert (= bs!1539125 (and b!6204769 d!1944814)))

(assert (=> bs!1539125 (= (and (= (regOne!32800 (regTwo!32801 r!7292)) (regOne!32800 r!7292)) (= (regTwo!32800 (regTwo!32801 r!7292)) (regTwo!32800 r!7292))) (= lambda!339099 lambda!339074))))

(assert (=> bs!1539125 (not (= lambda!339099 lambda!339073))))

(declare-fun bs!1539126 () Bool)

(assert (= bs!1539126 (and b!6204769 d!1944812)))

(assert (=> bs!1539126 (not (= lambda!339099 lambda!339068))))

(assert (=> bs!1539122 (not (= lambda!339099 lambda!339026))))

(declare-fun bs!1539127 () Bool)

(assert (= bs!1539127 (and b!6204769 b!6204766)))

(assert (=> bs!1539127 (not (= lambda!339099 lambda!339098))))

(assert (=> b!6204769 true))

(assert (=> b!6204769 true))

(declare-fun d!1944886 () Bool)

(declare-fun c!1120288 () Bool)

(assert (=> d!1944886 (= c!1120288 (is-EmptyExpr!16144 (regTwo!32801 r!7292)))))

(declare-fun e!3778150 () Bool)

(assert (=> d!1944886 (= (matchRSpec!3245 (regTwo!32801 r!7292) s!2326) e!3778150)))

(declare-fun b!6204759 () Bool)

(declare-fun e!3778146 () Bool)

(assert (=> b!6204759 (= e!3778146 (matchRSpec!3245 (regTwo!32801 (regTwo!32801 r!7292)) s!2326))))

(declare-fun b!6204760 () Bool)

(declare-fun e!3778144 () Bool)

(assert (=> b!6204760 (= e!3778144 (= s!2326 (Cons!64609 (c!1120079 (regTwo!32801 r!7292)) Nil!64609)))))

(declare-fun call!519520 () Bool)

(declare-fun c!1120290 () Bool)

(declare-fun bm!519514 () Bool)

(assert (=> bm!519514 (= call!519520 (Exists!3214 (ite c!1120290 lambda!339098 lambda!339099)))))

(declare-fun b!6204761 () Bool)

(declare-fun c!1120289 () Bool)

(assert (=> b!6204761 (= c!1120289 (is-ElementMatch!16144 (regTwo!32801 r!7292)))))

(declare-fun e!3778145 () Bool)

(assert (=> b!6204761 (= e!3778145 e!3778144)))

(declare-fun b!6204762 () Bool)

(assert (=> b!6204762 (= e!3778150 e!3778145)))

(declare-fun res!2566198 () Bool)

(assert (=> b!6204762 (= res!2566198 (not (is-EmptyLang!16144 (regTwo!32801 r!7292))))))

(assert (=> b!6204762 (=> (not res!2566198) (not e!3778145))))

(declare-fun bm!519515 () Bool)

(declare-fun call!519519 () Bool)

(assert (=> bm!519515 (= call!519519 (isEmpty!36608 s!2326))))

(declare-fun b!6204763 () Bool)

(declare-fun c!1120287 () Bool)

(assert (=> b!6204763 (= c!1120287 (is-Union!16144 (regTwo!32801 r!7292)))))

(declare-fun e!3778149 () Bool)

(assert (=> b!6204763 (= e!3778144 e!3778149)))

(declare-fun b!6204764 () Bool)

(declare-fun res!2566196 () Bool)

(declare-fun e!3778148 () Bool)

(assert (=> b!6204764 (=> res!2566196 e!3778148)))

(assert (=> b!6204764 (= res!2566196 call!519519)))

(declare-fun e!3778147 () Bool)

(assert (=> b!6204764 (= e!3778147 e!3778148)))

(declare-fun b!6204765 () Bool)

(assert (=> b!6204765 (= e!3778150 call!519519)))

(assert (=> b!6204766 (= e!3778148 call!519520)))

(declare-fun b!6204767 () Bool)

(assert (=> b!6204767 (= e!3778149 e!3778147)))

(assert (=> b!6204767 (= c!1120290 (is-Star!16144 (regTwo!32801 r!7292)))))

(declare-fun b!6204768 () Bool)

(assert (=> b!6204768 (= e!3778149 e!3778146)))

(declare-fun res!2566197 () Bool)

(assert (=> b!6204768 (= res!2566197 (matchRSpec!3245 (regOne!32801 (regTwo!32801 r!7292)) s!2326))))

(assert (=> b!6204768 (=> res!2566197 e!3778146)))

(assert (=> b!6204769 (= e!3778147 call!519520)))

(assert (= (and d!1944886 c!1120288) b!6204765))

(assert (= (and d!1944886 (not c!1120288)) b!6204762))

(assert (= (and b!6204762 res!2566198) b!6204761))

(assert (= (and b!6204761 c!1120289) b!6204760))

(assert (= (and b!6204761 (not c!1120289)) b!6204763))

(assert (= (and b!6204763 c!1120287) b!6204768))

(assert (= (and b!6204763 (not c!1120287)) b!6204767))

(assert (= (and b!6204768 (not res!2566197)) b!6204759))

(assert (= (and b!6204767 c!1120290) b!6204764))

(assert (= (and b!6204767 (not c!1120290)) b!6204769))

(assert (= (and b!6204764 (not res!2566196)) b!6204766))

(assert (= (or b!6204766 b!6204769) bm!519514))

(assert (= (or b!6204765 b!6204764) bm!519515))

(declare-fun m!7036260 () Bool)

(assert (=> b!6204759 m!7036260))

(declare-fun m!7036262 () Bool)

(assert (=> bm!519514 m!7036262))

(assert (=> bm!519515 m!7035930))

(declare-fun m!7036264 () Bool)

(assert (=> b!6204768 m!7036264))

(assert (=> b!6204170 d!1944886))

(declare-fun d!1944888 () Bool)

(assert (=> d!1944888 (= (nullable!6137 (h!71055 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))) (nullableFct!2093 (h!71055 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))))))

(declare-fun bs!1539128 () Bool)

(assert (= bs!1539128 d!1944888))

(declare-fun m!7036266 () Bool)

(assert (=> bs!1539128 m!7036266))

(assert (=> b!6204039 d!1944888))

(assert (=> b!6204044 d!1944748))

(assert (=> bs!1539087 d!1944752))

(declare-fun d!1944890 () Bool)

(assert (=> d!1944890 (= (isEmpty!36605 (unfocusZipperList!1565 zl!343)) (is-Nil!64607 (unfocusZipperList!1565 zl!343)))))

(assert (=> b!6204129 d!1944890))

(declare-fun d!1944892 () Bool)

(assert (=> d!1944892 (= (isEmpty!36608 (tail!11882 s!2326)) (is-Nil!64609 (tail!11882 s!2326)))))

(assert (=> b!6204219 d!1944892))

(declare-fun d!1944894 () Bool)

(assert (=> d!1944894 (= (tail!11882 s!2326) (t!378253 s!2326))))

(assert (=> b!6204219 d!1944894))

(declare-fun d!1944896 () Bool)

(assert (=> d!1944896 (= (isEmpty!36608 s!2326) (is-Nil!64609 s!2326))))

(assert (=> d!1944774 d!1944896))

(assert (=> d!1944774 d!1944790))

(declare-fun c!1120292 () Bool)

(declare-fun c!1120294 () Bool)

(declare-fun bm!519516 () Bool)

(declare-fun c!1120295 () Bool)

(declare-fun call!519523 () (Set Context!11056))

(declare-fun call!519521 () List!64731)

(assert (=> bm!519516 (= call!519523 (derivationStepZipperDown!1392 (ite c!1120295 (regTwo!32801 (ite c!1120121 (regTwo!32801 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120118 (regTwo!32800 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120120 (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))) (reg!16473 (regTwo!32800 (regOne!32800 r!7292))))))) (ite c!1120292 (regTwo!32800 (ite c!1120121 (regTwo!32801 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120118 (regTwo!32800 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120120 (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))) (reg!16473 (regTwo!32800 (regOne!32800 r!7292))))))) (ite c!1120294 (regOne!32800 (ite c!1120121 (regTwo!32801 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120118 (regTwo!32800 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120120 (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))) (reg!16473 (regTwo!32800 (regOne!32800 r!7292))))))) (reg!16473 (ite c!1120121 (regTwo!32801 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120118 (regTwo!32800 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120120 (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))) (reg!16473 (regTwo!32800 (regOne!32800 r!7292)))))))))) (ite (or c!1120295 c!1120292) (ite (or c!1120121 c!1120118) lt!2343238 (Context!11057 call!519442)) (Context!11057 call!519521)) (h!71057 s!2326)))))

(declare-fun b!6204770 () Bool)

(declare-fun e!3778151 () (Set Context!11056))

(declare-fun call!519524 () (Set Context!11056))

(assert (=> b!6204770 (= e!3778151 (set.union call!519524 call!519523))))

(declare-fun b!6204771 () Bool)

(declare-fun e!3778154 () (Set Context!11056))

(declare-fun e!3778155 () (Set Context!11056))

(assert (=> b!6204771 (= e!3778154 e!3778155)))

(assert (=> b!6204771 (= c!1120294 (is-Concat!24989 (ite c!1120121 (regTwo!32801 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120118 (regTwo!32800 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120120 (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))) (reg!16473 (regTwo!32800 (regOne!32800 r!7292))))))))))

(declare-fun b!6204772 () Bool)

(declare-fun e!3778156 () Bool)

(assert (=> b!6204772 (= c!1120292 e!3778156)))

(declare-fun res!2566199 () Bool)

(assert (=> b!6204772 (=> (not res!2566199) (not e!3778156))))

(assert (=> b!6204772 (= res!2566199 (is-Concat!24989 (ite c!1120121 (regTwo!32801 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120118 (regTwo!32800 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120120 (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))) (reg!16473 (regTwo!32800 (regOne!32800 r!7292))))))))))

(assert (=> b!6204772 (= e!3778151 e!3778154)))

(declare-fun bm!519517 () Bool)

(declare-fun call!519526 () (Set Context!11056))

(assert (=> bm!519517 (= call!519526 call!519523)))

(declare-fun c!1120291 () Bool)

(declare-fun b!6204773 () Bool)

(assert (=> b!6204773 (= c!1120291 (is-Star!16144 (ite c!1120121 (regTwo!32801 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120118 (regTwo!32800 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120120 (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))) (reg!16473 (regTwo!32800 (regOne!32800 r!7292))))))))))

(declare-fun e!3778153 () (Set Context!11056))

(assert (=> b!6204773 (= e!3778155 e!3778153)))

(declare-fun d!1944898 () Bool)

(declare-fun c!1120293 () Bool)

(assert (=> d!1944898 (= c!1120293 (and (is-ElementMatch!16144 (ite c!1120121 (regTwo!32801 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120118 (regTwo!32800 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120120 (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))) (reg!16473 (regTwo!32800 (regOne!32800 r!7292))))))) (= (c!1120079 (ite c!1120121 (regTwo!32801 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120118 (regTwo!32800 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120120 (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))) (reg!16473 (regTwo!32800 (regOne!32800 r!7292))))))) (h!71057 s!2326))))))

(declare-fun e!3778152 () (Set Context!11056))

(assert (=> d!1944898 (= (derivationStepZipperDown!1392 (ite c!1120121 (regTwo!32801 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120118 (regTwo!32800 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120120 (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))) (reg!16473 (regTwo!32800 (regOne!32800 r!7292)))))) (ite (or c!1120121 c!1120118) lt!2343238 (Context!11057 call!519442)) (h!71057 s!2326)) e!3778152)))

(declare-fun bm!519518 () Bool)

(declare-fun call!519522 () (Set Context!11056))

(assert (=> bm!519518 (= call!519522 call!519526)))

(declare-fun b!6204774 () Bool)

(assert (=> b!6204774 (= e!3778152 e!3778151)))

(assert (=> b!6204774 (= c!1120295 (is-Union!16144 (ite c!1120121 (regTwo!32801 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120118 (regTwo!32800 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120120 (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))) (reg!16473 (regTwo!32800 (regOne!32800 r!7292))))))))))

(declare-fun b!6204775 () Bool)

(assert (=> b!6204775 (= e!3778153 (as set.empty (Set Context!11056)))))

(declare-fun call!519525 () List!64731)

(declare-fun bm!519519 () Bool)

(assert (=> bm!519519 (= call!519524 (derivationStepZipperDown!1392 (ite c!1120295 (regOne!32801 (ite c!1120121 (regTwo!32801 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120118 (regTwo!32800 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120120 (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))) (reg!16473 (regTwo!32800 (regOne!32800 r!7292))))))) (regOne!32800 (ite c!1120121 (regTwo!32801 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120118 (regTwo!32800 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120120 (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))) (reg!16473 (regTwo!32800 (regOne!32800 r!7292)))))))) (ite c!1120295 (ite (or c!1120121 c!1120118) lt!2343238 (Context!11057 call!519442)) (Context!11057 call!519525)) (h!71057 s!2326)))))

(declare-fun b!6204776 () Bool)

(assert (=> b!6204776 (= e!3778154 (set.union call!519524 call!519526))))

(declare-fun b!6204777 () Bool)

(assert (=> b!6204777 (= e!3778155 call!519522)))

(declare-fun bm!519520 () Bool)

(assert (=> bm!519520 (= call!519521 call!519525)))

(declare-fun b!6204778 () Bool)

(assert (=> b!6204778 (= e!3778152 (set.insert (ite (or c!1120121 c!1120118) lt!2343238 (Context!11057 call!519442)) (as set.empty (Set Context!11056))))))

(declare-fun b!6204779 () Bool)

(assert (=> b!6204779 (= e!3778153 call!519522)))

(declare-fun b!6204780 () Bool)

(assert (=> b!6204780 (= e!3778156 (nullable!6137 (regOne!32800 (ite c!1120121 (regTwo!32801 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120118 (regTwo!32800 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120120 (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))) (reg!16473 (regTwo!32800 (regOne!32800 r!7292)))))))))))

(declare-fun bm!519521 () Bool)

(assert (=> bm!519521 (= call!519525 ($colon$colon!2013 (exprs!6028 (ite (or c!1120121 c!1120118) lt!2343238 (Context!11057 call!519442))) (ite (or c!1120292 c!1120294) (regTwo!32800 (ite c!1120121 (regTwo!32801 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120118 (regTwo!32800 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120120 (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))) (reg!16473 (regTwo!32800 (regOne!32800 r!7292))))))) (ite c!1120121 (regTwo!32801 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120118 (regTwo!32800 (regTwo!32800 (regOne!32800 r!7292))) (ite c!1120120 (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))) (reg!16473 (regTwo!32800 (regOne!32800 r!7292)))))))))))

(assert (= (and d!1944898 c!1120293) b!6204778))

(assert (= (and d!1944898 (not c!1120293)) b!6204774))

(assert (= (and b!6204774 c!1120295) b!6204770))

(assert (= (and b!6204774 (not c!1120295)) b!6204772))

(assert (= (and b!6204772 res!2566199) b!6204780))

(assert (= (and b!6204772 c!1120292) b!6204776))

(assert (= (and b!6204772 (not c!1120292)) b!6204771))

(assert (= (and b!6204771 c!1120294) b!6204777))

(assert (= (and b!6204771 (not c!1120294)) b!6204773))

(assert (= (and b!6204773 c!1120291) b!6204779))

(assert (= (and b!6204773 (not c!1120291)) b!6204775))

(assert (= (or b!6204777 b!6204779) bm!519520))

(assert (= (or b!6204777 b!6204779) bm!519518))

(assert (= (or b!6204776 bm!519520) bm!519521))

(assert (= (or b!6204776 bm!519518) bm!519517))

(assert (= (or b!6204770 bm!519517) bm!519516))

(assert (= (or b!6204770 b!6204776) bm!519519))

(declare-fun m!7036268 () Bool)

(assert (=> bm!519521 m!7036268))

(declare-fun m!7036270 () Bool)

(assert (=> b!6204780 m!7036270))

(declare-fun m!7036272 () Bool)

(assert (=> bm!519519 m!7036272))

(declare-fun m!7036274 () Bool)

(assert (=> b!6204778 m!7036274))

(declare-fun m!7036276 () Bool)

(assert (=> bm!519516 m!7036276))

(assert (=> bm!519437 d!1944898))

(declare-fun bs!1539129 () Bool)

(declare-fun d!1944900 () Bool)

(assert (= bs!1539129 (and d!1944900 d!1944768)))

(declare-fun lambda!339100 () Int)

(assert (=> bs!1539129 (= lambda!339100 lambda!339049)))

(declare-fun bs!1539130 () Bool)

(assert (= bs!1539130 (and d!1944900 d!1944794)))

(assert (=> bs!1539130 (= lambda!339100 lambda!339065)))

(declare-fun bs!1539131 () Bool)

(assert (= bs!1539131 (and d!1944900 d!1944764)))

(assert (=> bs!1539131 (= lambda!339100 lambda!339045)))

(declare-fun bs!1539132 () Bool)

(assert (= bs!1539132 (and d!1944900 d!1944792)))

(assert (=> bs!1539132 (= lambda!339100 lambda!339062)))

(declare-fun bs!1539133 () Bool)

(assert (= bs!1539133 (and d!1944900 d!1944766)))

(assert (=> bs!1539133 (= lambda!339100 lambda!339048)))

(declare-fun bs!1539134 () Bool)

(assert (= bs!1539134 (and d!1944900 d!1944736)))

(assert (=> bs!1539134 (= lambda!339100 lambda!339042)))

(declare-fun b!6204781 () Bool)

(declare-fun e!3778158 () Regex!16144)

(assert (=> b!6204781 (= e!3778158 EmptyExpr!16144)))

(declare-fun b!6204782 () Bool)

(declare-fun e!3778157 () Bool)

(declare-fun e!3778161 () Bool)

(assert (=> b!6204782 (= e!3778157 e!3778161)))

(declare-fun c!1120296 () Bool)

(assert (=> b!6204782 (= c!1120296 (isEmpty!36605 (tail!11881 (t!378251 (exprs!6028 (h!71056 zl!343))))))))

(declare-fun e!3778159 () Bool)

(assert (=> d!1944900 e!3778159))

(declare-fun res!2566200 () Bool)

(assert (=> d!1944900 (=> (not res!2566200) (not e!3778159))))

(declare-fun lt!2343361 () Regex!16144)

(assert (=> d!1944900 (= res!2566200 (validRegex!7880 lt!2343361))))

(declare-fun e!3778160 () Regex!16144)

(assert (=> d!1944900 (= lt!2343361 e!3778160)))

(declare-fun c!1120299 () Bool)

(declare-fun e!3778162 () Bool)

(assert (=> d!1944900 (= c!1120299 e!3778162)))

(declare-fun res!2566201 () Bool)

(assert (=> d!1944900 (=> (not res!2566201) (not e!3778162))))

(assert (=> d!1944900 (= res!2566201 (is-Cons!64607 (t!378251 (exprs!6028 (h!71056 zl!343)))))))

(assert (=> d!1944900 (forall!15258 (t!378251 (exprs!6028 (h!71056 zl!343))) lambda!339100)))

(assert (=> d!1944900 (= (generalisedConcat!1741 (t!378251 (exprs!6028 (h!71056 zl!343)))) lt!2343361)))

(declare-fun b!6204783 () Bool)

(assert (=> b!6204783 (= e!3778161 (= lt!2343361 (head!12796 (t!378251 (exprs!6028 (h!71056 zl!343))))))))

(declare-fun b!6204784 () Bool)

(assert (=> b!6204784 (= e!3778160 e!3778158)))

(declare-fun c!1120298 () Bool)

(assert (=> b!6204784 (= c!1120298 (is-Cons!64607 (t!378251 (exprs!6028 (h!71056 zl!343)))))))

(declare-fun b!6204785 () Bool)

(assert (=> b!6204785 (= e!3778159 e!3778157)))

(declare-fun c!1120297 () Bool)

(assert (=> b!6204785 (= c!1120297 (isEmpty!36605 (t!378251 (exprs!6028 (h!71056 zl!343)))))))

(declare-fun b!6204786 () Bool)

(assert (=> b!6204786 (= e!3778162 (isEmpty!36605 (t!378251 (t!378251 (exprs!6028 (h!71056 zl!343))))))))

(declare-fun b!6204787 () Bool)

(assert (=> b!6204787 (= e!3778161 (isConcat!1077 lt!2343361))))

(declare-fun b!6204788 () Bool)

(assert (=> b!6204788 (= e!3778158 (Concat!24989 (h!71055 (t!378251 (exprs!6028 (h!71056 zl!343)))) (generalisedConcat!1741 (t!378251 (t!378251 (exprs!6028 (h!71056 zl!343)))))))))

(declare-fun b!6204789 () Bool)

(assert (=> b!6204789 (= e!3778157 (isEmptyExpr!1554 lt!2343361))))

(declare-fun b!6204790 () Bool)

(assert (=> b!6204790 (= e!3778160 (h!71055 (t!378251 (exprs!6028 (h!71056 zl!343)))))))

(assert (= (and d!1944900 res!2566201) b!6204786))

(assert (= (and d!1944900 c!1120299) b!6204790))

(assert (= (and d!1944900 (not c!1120299)) b!6204784))

(assert (= (and b!6204784 c!1120298) b!6204788))

(assert (= (and b!6204784 (not c!1120298)) b!6204781))

(assert (= (and d!1944900 res!2566200) b!6204785))

(assert (= (and b!6204785 c!1120297) b!6204789))

(assert (= (and b!6204785 (not c!1120297)) b!6204782))

(assert (= (and b!6204782 c!1120296) b!6204783))

(assert (= (and b!6204782 (not c!1120296)) b!6204787))

(declare-fun m!7036278 () Bool)

(assert (=> b!6204787 m!7036278))

(assert (=> b!6204785 m!7035716))

(declare-fun m!7036280 () Bool)

(assert (=> b!6204786 m!7036280))

(declare-fun m!7036282 () Bool)

(assert (=> d!1944900 m!7036282))

(declare-fun m!7036284 () Bool)

(assert (=> d!1944900 m!7036284))

(declare-fun m!7036286 () Bool)

(assert (=> b!6204788 m!7036286))

(declare-fun m!7036288 () Bool)

(assert (=> b!6204789 m!7036288))

(declare-fun m!7036290 () Bool)

(assert (=> b!6204782 m!7036290))

(assert (=> b!6204782 m!7036290))

(declare-fun m!7036292 () Bool)

(assert (=> b!6204782 m!7036292))

(declare-fun m!7036294 () Bool)

(assert (=> b!6204783 m!7036294))

(assert (=> b!6204334 d!1944900))

(declare-fun c!1120304 () Bool)

(declare-fun bm!519522 () Bool)

(declare-fun c!1120301 () Bool)

(declare-fun call!519527 () List!64731)

(declare-fun c!1120303 () Bool)

(declare-fun call!519529 () (Set Context!11056))

(assert (=> bm!519522 (= call!519529 (derivationStepZipperDown!1392 (ite c!1120304 (regTwo!32801 (ite c!1120116 (regOne!32801 (regOne!32800 (regOne!32800 r!7292))) (regOne!32800 (regOne!32800 (regOne!32800 r!7292))))) (ite c!1120301 (regTwo!32800 (ite c!1120116 (regOne!32801 (regOne!32800 (regOne!32800 r!7292))) (regOne!32800 (regOne!32800 (regOne!32800 r!7292))))) (ite c!1120303 (regOne!32800 (ite c!1120116 (regOne!32801 (regOne!32800 (regOne!32800 r!7292))) (regOne!32800 (regOne!32800 (regOne!32800 r!7292))))) (reg!16473 (ite c!1120116 (regOne!32801 (regOne!32800 (regOne!32800 r!7292))) (regOne!32800 (regOne!32800 (regOne!32800 r!7292)))))))) (ite (or c!1120304 c!1120301) (ite c!1120116 (Context!11057 (Cons!64607 (regTwo!32800 (regOne!32800 r!7292)) (t!378251 (exprs!6028 (h!71056 zl!343))))) (Context!11057 call!519440)) (Context!11057 call!519527)) (h!71057 s!2326)))))

(declare-fun b!6204791 () Bool)

(declare-fun e!3778163 () (Set Context!11056))

(declare-fun call!519530 () (Set Context!11056))

(assert (=> b!6204791 (= e!3778163 (set.union call!519530 call!519529))))

(declare-fun b!6204792 () Bool)

(declare-fun e!3778166 () (Set Context!11056))

(declare-fun e!3778167 () (Set Context!11056))

(assert (=> b!6204792 (= e!3778166 e!3778167)))

(assert (=> b!6204792 (= c!1120303 (is-Concat!24989 (ite c!1120116 (regOne!32801 (regOne!32800 (regOne!32800 r!7292))) (regOne!32800 (regOne!32800 (regOne!32800 r!7292))))))))

(declare-fun b!6204793 () Bool)

(declare-fun e!3778168 () Bool)

(assert (=> b!6204793 (= c!1120301 e!3778168)))

(declare-fun res!2566202 () Bool)

(assert (=> b!6204793 (=> (not res!2566202) (not e!3778168))))

(assert (=> b!6204793 (= res!2566202 (is-Concat!24989 (ite c!1120116 (regOne!32801 (regOne!32800 (regOne!32800 r!7292))) (regOne!32800 (regOne!32800 (regOne!32800 r!7292))))))))

(assert (=> b!6204793 (= e!3778163 e!3778166)))

(declare-fun bm!519523 () Bool)

(declare-fun call!519532 () (Set Context!11056))

(assert (=> bm!519523 (= call!519532 call!519529)))

(declare-fun b!6204794 () Bool)

(declare-fun c!1120300 () Bool)

(assert (=> b!6204794 (= c!1120300 (is-Star!16144 (ite c!1120116 (regOne!32801 (regOne!32800 (regOne!32800 r!7292))) (regOne!32800 (regOne!32800 (regOne!32800 r!7292))))))))

(declare-fun e!3778165 () (Set Context!11056))

(assert (=> b!6204794 (= e!3778167 e!3778165)))

(declare-fun d!1944902 () Bool)

(declare-fun c!1120302 () Bool)

(assert (=> d!1944902 (= c!1120302 (and (is-ElementMatch!16144 (ite c!1120116 (regOne!32801 (regOne!32800 (regOne!32800 r!7292))) (regOne!32800 (regOne!32800 (regOne!32800 r!7292))))) (= (c!1120079 (ite c!1120116 (regOne!32801 (regOne!32800 (regOne!32800 r!7292))) (regOne!32800 (regOne!32800 (regOne!32800 r!7292))))) (h!71057 s!2326))))))

(declare-fun e!3778164 () (Set Context!11056))

(assert (=> d!1944902 (= (derivationStepZipperDown!1392 (ite c!1120116 (regOne!32801 (regOne!32800 (regOne!32800 r!7292))) (regOne!32800 (regOne!32800 (regOne!32800 r!7292)))) (ite c!1120116 (Context!11057 (Cons!64607 (regTwo!32800 (regOne!32800 r!7292)) (t!378251 (exprs!6028 (h!71056 zl!343))))) (Context!11057 call!519440)) (h!71057 s!2326)) e!3778164)))

(declare-fun bm!519524 () Bool)

(declare-fun call!519528 () (Set Context!11056))

(assert (=> bm!519524 (= call!519528 call!519532)))

(declare-fun b!6204795 () Bool)

(assert (=> b!6204795 (= e!3778164 e!3778163)))

(assert (=> b!6204795 (= c!1120304 (is-Union!16144 (ite c!1120116 (regOne!32801 (regOne!32800 (regOne!32800 r!7292))) (regOne!32800 (regOne!32800 (regOne!32800 r!7292))))))))

(declare-fun b!6204796 () Bool)

(assert (=> b!6204796 (= e!3778165 (as set.empty (Set Context!11056)))))

(declare-fun bm!519525 () Bool)

(declare-fun call!519531 () List!64731)

(assert (=> bm!519525 (= call!519530 (derivationStepZipperDown!1392 (ite c!1120304 (regOne!32801 (ite c!1120116 (regOne!32801 (regOne!32800 (regOne!32800 r!7292))) (regOne!32800 (regOne!32800 (regOne!32800 r!7292))))) (regOne!32800 (ite c!1120116 (regOne!32801 (regOne!32800 (regOne!32800 r!7292))) (regOne!32800 (regOne!32800 (regOne!32800 r!7292)))))) (ite c!1120304 (ite c!1120116 (Context!11057 (Cons!64607 (regTwo!32800 (regOne!32800 r!7292)) (t!378251 (exprs!6028 (h!71056 zl!343))))) (Context!11057 call!519440)) (Context!11057 call!519531)) (h!71057 s!2326)))))

(declare-fun b!6204797 () Bool)

(assert (=> b!6204797 (= e!3778166 (set.union call!519530 call!519532))))

(declare-fun b!6204798 () Bool)

(assert (=> b!6204798 (= e!3778167 call!519528)))

(declare-fun bm!519526 () Bool)

(assert (=> bm!519526 (= call!519527 call!519531)))

(declare-fun b!6204799 () Bool)

(assert (=> b!6204799 (= e!3778164 (set.insert (ite c!1120116 (Context!11057 (Cons!64607 (regTwo!32800 (regOne!32800 r!7292)) (t!378251 (exprs!6028 (h!71056 zl!343))))) (Context!11057 call!519440)) (as set.empty (Set Context!11056))))))

(declare-fun b!6204800 () Bool)

(assert (=> b!6204800 (= e!3778165 call!519528)))

(declare-fun b!6204801 () Bool)

(assert (=> b!6204801 (= e!3778168 (nullable!6137 (regOne!32800 (ite c!1120116 (regOne!32801 (regOne!32800 (regOne!32800 r!7292))) (regOne!32800 (regOne!32800 (regOne!32800 r!7292)))))))))

(declare-fun bm!519527 () Bool)

(assert (=> bm!519527 (= call!519531 ($colon$colon!2013 (exprs!6028 (ite c!1120116 (Context!11057 (Cons!64607 (regTwo!32800 (regOne!32800 r!7292)) (t!378251 (exprs!6028 (h!71056 zl!343))))) (Context!11057 call!519440))) (ite (or c!1120301 c!1120303) (regTwo!32800 (ite c!1120116 (regOne!32801 (regOne!32800 (regOne!32800 r!7292))) (regOne!32800 (regOne!32800 (regOne!32800 r!7292))))) (ite c!1120116 (regOne!32801 (regOne!32800 (regOne!32800 r!7292))) (regOne!32800 (regOne!32800 (regOne!32800 r!7292)))))))))

(assert (= (and d!1944902 c!1120302) b!6204799))

(assert (= (and d!1944902 (not c!1120302)) b!6204795))

(assert (= (and b!6204795 c!1120304) b!6204791))

(assert (= (and b!6204795 (not c!1120304)) b!6204793))

(assert (= (and b!6204793 res!2566202) b!6204801))

(assert (= (and b!6204793 c!1120301) b!6204797))

(assert (= (and b!6204793 (not c!1120301)) b!6204792))

(assert (= (and b!6204792 c!1120303) b!6204798))

(assert (= (and b!6204792 (not c!1120303)) b!6204794))

(assert (= (and b!6204794 c!1120300) b!6204800))

(assert (= (and b!6204794 (not c!1120300)) b!6204796))

(assert (= (or b!6204798 b!6204800) bm!519526))

(assert (= (or b!6204798 b!6204800) bm!519524))

(assert (= (or b!6204797 bm!519526) bm!519527))

(assert (= (or b!6204797 bm!519524) bm!519523))

(assert (= (or b!6204791 bm!519523) bm!519522))

(assert (= (or b!6204791 b!6204797) bm!519525))

(declare-fun m!7036296 () Bool)

(assert (=> bm!519527 m!7036296))

(declare-fun m!7036298 () Bool)

(assert (=> b!6204801 m!7036298))

(declare-fun m!7036300 () Bool)

(assert (=> bm!519525 m!7036300))

(declare-fun m!7036302 () Bool)

(assert (=> b!6204799 m!7036302))

(declare-fun m!7036304 () Bool)

(assert (=> bm!519522 m!7036304))

(assert (=> bm!519434 d!1944902))

(declare-fun d!1944904 () Bool)

(assert (=> d!1944904 (= (isEmpty!36609 (findConcatSeparation!2449 (regOne!32800 r!7292) (regTwo!32800 r!7292) Nil!64609 s!2326 s!2326)) (not (is-Some!16034 (findConcatSeparation!2449 (regOne!32800 r!7292) (regTwo!32800 r!7292) Nil!64609 s!2326 s!2326))))))

(assert (=> d!1944828 d!1944904))

(assert (=> b!6204223 d!1944892))

(assert (=> b!6204223 d!1944894))

(declare-fun bs!1539135 () Bool)

(declare-fun d!1944906 () Bool)

(assert (= bs!1539135 (and d!1944906 d!1944768)))

(declare-fun lambda!339101 () Int)

(assert (=> bs!1539135 (= lambda!339101 lambda!339049)))

(declare-fun bs!1539136 () Bool)

(assert (= bs!1539136 (and d!1944906 d!1944794)))

(assert (=> bs!1539136 (= lambda!339101 lambda!339065)))

(declare-fun bs!1539137 () Bool)

(assert (= bs!1539137 (and d!1944906 d!1944764)))

(assert (=> bs!1539137 (= lambda!339101 lambda!339045)))

(declare-fun bs!1539138 () Bool)

(assert (= bs!1539138 (and d!1944906 d!1944792)))

(assert (=> bs!1539138 (= lambda!339101 lambda!339062)))

(declare-fun bs!1539139 () Bool)

(assert (= bs!1539139 (and d!1944906 d!1944766)))

(assert (=> bs!1539139 (= lambda!339101 lambda!339048)))

(declare-fun bs!1539140 () Bool)

(assert (= bs!1539140 (and d!1944906 d!1944736)))

(assert (=> bs!1539140 (= lambda!339101 lambda!339042)))

(declare-fun bs!1539141 () Bool)

(assert (= bs!1539141 (and d!1944906 d!1944900)))

(assert (=> bs!1539141 (= lambda!339101 lambda!339100)))

(declare-fun b!6204802 () Bool)

(declare-fun e!3778173 () Bool)

(assert (=> b!6204802 (= e!3778173 (isEmpty!36605 (t!378251 (t!378251 (unfocusZipperList!1565 zl!343)))))))

(declare-fun b!6204803 () Bool)

(declare-fun e!3778174 () Regex!16144)

(assert (=> b!6204803 (= e!3778174 (Union!16144 (h!71055 (t!378251 (unfocusZipperList!1565 zl!343))) (generalisedUnion!1988 (t!378251 (t!378251 (unfocusZipperList!1565 zl!343))))))))

(declare-fun b!6204804 () Bool)

(assert (=> b!6204804 (= e!3778174 EmptyLang!16144)))

(declare-fun e!3778172 () Bool)

(assert (=> d!1944906 e!3778172))

(declare-fun res!2566204 () Bool)

(assert (=> d!1944906 (=> (not res!2566204) (not e!3778172))))

(declare-fun lt!2343362 () Regex!16144)

(assert (=> d!1944906 (= res!2566204 (validRegex!7880 lt!2343362))))

(declare-fun e!3778170 () Regex!16144)

(assert (=> d!1944906 (= lt!2343362 e!3778170)))

(declare-fun c!1120306 () Bool)

(assert (=> d!1944906 (= c!1120306 e!3778173)))

(declare-fun res!2566203 () Bool)

(assert (=> d!1944906 (=> (not res!2566203) (not e!3778173))))

(assert (=> d!1944906 (= res!2566203 (is-Cons!64607 (t!378251 (unfocusZipperList!1565 zl!343))))))

(assert (=> d!1944906 (forall!15258 (t!378251 (unfocusZipperList!1565 zl!343)) lambda!339101)))

(assert (=> d!1944906 (= (generalisedUnion!1988 (t!378251 (unfocusZipperList!1565 zl!343))) lt!2343362)))

(declare-fun b!6204805 () Bool)

(assert (=> b!6204805 (= e!3778170 e!3778174)))

(declare-fun c!1120307 () Bool)

(assert (=> b!6204805 (= c!1120307 (is-Cons!64607 (t!378251 (unfocusZipperList!1565 zl!343))))))

(declare-fun b!6204806 () Bool)

(declare-fun e!3778169 () Bool)

(declare-fun e!3778171 () Bool)

(assert (=> b!6204806 (= e!3778169 e!3778171)))

(declare-fun c!1120308 () Bool)

(assert (=> b!6204806 (= c!1120308 (isEmpty!36605 (tail!11881 (t!378251 (unfocusZipperList!1565 zl!343)))))))

(declare-fun b!6204807 () Bool)

(assert (=> b!6204807 (= e!3778169 (isEmptyLang!1563 lt!2343362))))

(declare-fun b!6204808 () Bool)

(assert (=> b!6204808 (= e!3778170 (h!71055 (t!378251 (unfocusZipperList!1565 zl!343))))))

(declare-fun b!6204809 () Bool)

(assert (=> b!6204809 (= e!3778172 e!3778169)))

(declare-fun c!1120305 () Bool)

(assert (=> b!6204809 (= c!1120305 (isEmpty!36605 (t!378251 (unfocusZipperList!1565 zl!343))))))

(declare-fun b!6204810 () Bool)

(assert (=> b!6204810 (= e!3778171 (isUnion!993 lt!2343362))))

(declare-fun b!6204811 () Bool)

(assert (=> b!6204811 (= e!3778171 (= lt!2343362 (head!12796 (t!378251 (unfocusZipperList!1565 zl!343)))))))

(assert (= (and d!1944906 res!2566203) b!6204802))

(assert (= (and d!1944906 c!1120306) b!6204808))

(assert (= (and d!1944906 (not c!1120306)) b!6204805))

(assert (= (and b!6204805 c!1120307) b!6204803))

(assert (= (and b!6204805 (not c!1120307)) b!6204804))

(assert (= (and d!1944906 res!2566204) b!6204809))

(assert (= (and b!6204809 c!1120305) b!6204807))

(assert (= (and b!6204809 (not c!1120305)) b!6204806))

(assert (= (and b!6204806 c!1120308) b!6204811))

(assert (= (and b!6204806 (not c!1120308)) b!6204810))

(declare-fun m!7036306 () Bool)

(assert (=> b!6204802 m!7036306))

(declare-fun m!7036308 () Bool)

(assert (=> b!6204811 m!7036308))

(declare-fun m!7036310 () Bool)

(assert (=> b!6204803 m!7036310))

(declare-fun m!7036312 () Bool)

(assert (=> d!1944906 m!7036312))

(declare-fun m!7036314 () Bool)

(assert (=> d!1944906 m!7036314))

(declare-fun m!7036316 () Bool)

(assert (=> b!6204807 m!7036316))

(declare-fun m!7036318 () Bool)

(assert (=> b!6204810 m!7036318))

(declare-fun m!7036320 () Bool)

(assert (=> b!6204806 m!7036320))

(assert (=> b!6204806 m!7036320))

(declare-fun m!7036322 () Bool)

(assert (=> b!6204806 m!7036322))

(assert (=> b!6204809 m!7035900))

(assert (=> b!6204123 d!1944906))

(declare-fun bm!519528 () Bool)

(declare-fun c!1120312 () Bool)

(declare-fun call!519533 () List!64731)

(declare-fun c!1120310 () Bool)

(declare-fun c!1120313 () Bool)

(declare-fun call!519535 () (Set Context!11056))

(assert (=> bm!519528 (= call!519535 (derivationStepZipperDown!1392 (ite c!1120313 (regTwo!32801 (h!71055 (exprs!6028 lt!2343238))) (ite c!1120310 (regTwo!32800 (h!71055 (exprs!6028 lt!2343238))) (ite c!1120312 (regOne!32800 (h!71055 (exprs!6028 lt!2343238))) (reg!16473 (h!71055 (exprs!6028 lt!2343238)))))) (ite (or c!1120313 c!1120310) (Context!11057 (t!378251 (exprs!6028 lt!2343238))) (Context!11057 call!519533)) (h!71057 s!2326)))))

(declare-fun b!6204812 () Bool)

(declare-fun e!3778175 () (Set Context!11056))

(declare-fun call!519536 () (Set Context!11056))

(assert (=> b!6204812 (= e!3778175 (set.union call!519536 call!519535))))

(declare-fun b!6204813 () Bool)

(declare-fun e!3778178 () (Set Context!11056))

(declare-fun e!3778179 () (Set Context!11056))

(assert (=> b!6204813 (= e!3778178 e!3778179)))

(assert (=> b!6204813 (= c!1120312 (is-Concat!24989 (h!71055 (exprs!6028 lt!2343238))))))

(declare-fun b!6204814 () Bool)

(declare-fun e!3778180 () Bool)

(assert (=> b!6204814 (= c!1120310 e!3778180)))

(declare-fun res!2566205 () Bool)

(assert (=> b!6204814 (=> (not res!2566205) (not e!3778180))))

(assert (=> b!6204814 (= res!2566205 (is-Concat!24989 (h!71055 (exprs!6028 lt!2343238))))))

(assert (=> b!6204814 (= e!3778175 e!3778178)))

(declare-fun bm!519529 () Bool)

(declare-fun call!519538 () (Set Context!11056))

(assert (=> bm!519529 (= call!519538 call!519535)))

(declare-fun b!6204815 () Bool)

(declare-fun c!1120309 () Bool)

(assert (=> b!6204815 (= c!1120309 (is-Star!16144 (h!71055 (exprs!6028 lt!2343238))))))

(declare-fun e!3778177 () (Set Context!11056))

(assert (=> b!6204815 (= e!3778179 e!3778177)))

(declare-fun d!1944908 () Bool)

(declare-fun c!1120311 () Bool)

(assert (=> d!1944908 (= c!1120311 (and (is-ElementMatch!16144 (h!71055 (exprs!6028 lt!2343238))) (= (c!1120079 (h!71055 (exprs!6028 lt!2343238))) (h!71057 s!2326))))))

(declare-fun e!3778176 () (Set Context!11056))

(assert (=> d!1944908 (= (derivationStepZipperDown!1392 (h!71055 (exprs!6028 lt!2343238)) (Context!11057 (t!378251 (exprs!6028 lt!2343238))) (h!71057 s!2326)) e!3778176)))

(declare-fun bm!519530 () Bool)

(declare-fun call!519534 () (Set Context!11056))

(assert (=> bm!519530 (= call!519534 call!519538)))

(declare-fun b!6204816 () Bool)

(assert (=> b!6204816 (= e!3778176 e!3778175)))

(assert (=> b!6204816 (= c!1120313 (is-Union!16144 (h!71055 (exprs!6028 lt!2343238))))))

(declare-fun b!6204817 () Bool)

(assert (=> b!6204817 (= e!3778177 (as set.empty (Set Context!11056)))))

(declare-fun call!519537 () List!64731)

(declare-fun bm!519531 () Bool)

(assert (=> bm!519531 (= call!519536 (derivationStepZipperDown!1392 (ite c!1120313 (regOne!32801 (h!71055 (exprs!6028 lt!2343238))) (regOne!32800 (h!71055 (exprs!6028 lt!2343238)))) (ite c!1120313 (Context!11057 (t!378251 (exprs!6028 lt!2343238))) (Context!11057 call!519537)) (h!71057 s!2326)))))

(declare-fun b!6204818 () Bool)

(assert (=> b!6204818 (= e!3778178 (set.union call!519536 call!519538))))

(declare-fun b!6204819 () Bool)

(assert (=> b!6204819 (= e!3778179 call!519534)))

(declare-fun bm!519532 () Bool)

(assert (=> bm!519532 (= call!519533 call!519537)))

(declare-fun b!6204820 () Bool)

(assert (=> b!6204820 (= e!3778176 (set.insert (Context!11057 (t!378251 (exprs!6028 lt!2343238))) (as set.empty (Set Context!11056))))))

(declare-fun b!6204821 () Bool)

(assert (=> b!6204821 (= e!3778177 call!519534)))

(declare-fun b!6204822 () Bool)

(assert (=> b!6204822 (= e!3778180 (nullable!6137 (regOne!32800 (h!71055 (exprs!6028 lt!2343238)))))))

(declare-fun bm!519533 () Bool)

(assert (=> bm!519533 (= call!519537 ($colon$colon!2013 (exprs!6028 (Context!11057 (t!378251 (exprs!6028 lt!2343238)))) (ite (or c!1120310 c!1120312) (regTwo!32800 (h!71055 (exprs!6028 lt!2343238))) (h!71055 (exprs!6028 lt!2343238)))))))

(assert (= (and d!1944908 c!1120311) b!6204820))

(assert (= (and d!1944908 (not c!1120311)) b!6204816))

(assert (= (and b!6204816 c!1120313) b!6204812))

(assert (= (and b!6204816 (not c!1120313)) b!6204814))

(assert (= (and b!6204814 res!2566205) b!6204822))

(assert (= (and b!6204814 c!1120310) b!6204818))

(assert (= (and b!6204814 (not c!1120310)) b!6204813))

(assert (= (and b!6204813 c!1120312) b!6204819))

(assert (= (and b!6204813 (not c!1120312)) b!6204815))

(assert (= (and b!6204815 c!1120309) b!6204821))

(assert (= (and b!6204815 (not c!1120309)) b!6204817))

(assert (= (or b!6204819 b!6204821) bm!519532))

(assert (= (or b!6204819 b!6204821) bm!519530))

(assert (= (or b!6204818 bm!519532) bm!519533))

(assert (= (or b!6204818 bm!519530) bm!519529))

(assert (= (or b!6204812 bm!519529) bm!519528))

(assert (= (or b!6204812 b!6204818) bm!519531))

(declare-fun m!7036324 () Bool)

(assert (=> bm!519533 m!7036324))

(declare-fun m!7036326 () Bool)

(assert (=> b!6204822 m!7036326))

(declare-fun m!7036328 () Bool)

(assert (=> bm!519531 m!7036328))

(declare-fun m!7036330 () Bool)

(assert (=> b!6204820 m!7036330))

(declare-fun m!7036332 () Bool)

(assert (=> bm!519528 m!7036332))

(assert (=> bm!519410 d!1944908))

(declare-fun d!1944910 () Bool)

(declare-fun c!1120314 () Bool)

(assert (=> d!1944910 (= c!1120314 (isEmpty!36608 (tail!11882 (t!378253 s!2326))))))

(declare-fun e!3778181 () Bool)

(assert (=> d!1944910 (= (matchZipper!2156 (derivationStepZipper!2110 lt!2343240 (head!12797 (t!378253 s!2326))) (tail!11882 (t!378253 s!2326))) e!3778181)))

(declare-fun b!6204823 () Bool)

(assert (=> b!6204823 (= e!3778181 (nullableZipper!1918 (derivationStepZipper!2110 lt!2343240 (head!12797 (t!378253 s!2326)))))))

(declare-fun b!6204824 () Bool)

(assert (=> b!6204824 (= e!3778181 (matchZipper!2156 (derivationStepZipper!2110 (derivationStepZipper!2110 lt!2343240 (head!12797 (t!378253 s!2326))) (head!12797 (tail!11882 (t!378253 s!2326)))) (tail!11882 (tail!11882 (t!378253 s!2326)))))))

(assert (= (and d!1944910 c!1120314) b!6204823))

(assert (= (and d!1944910 (not c!1120314)) b!6204824))

(assert (=> d!1944910 m!7035972))

(declare-fun m!7036334 () Bool)

(assert (=> d!1944910 m!7036334))

(assert (=> b!6204823 m!7036028))

(declare-fun m!7036336 () Bool)

(assert (=> b!6204823 m!7036336))

(assert (=> b!6204824 m!7035972))

(declare-fun m!7036338 () Bool)

(assert (=> b!6204824 m!7036338))

(assert (=> b!6204824 m!7036028))

(assert (=> b!6204824 m!7036338))

(declare-fun m!7036340 () Bool)

(assert (=> b!6204824 m!7036340))

(assert (=> b!6204824 m!7035972))

(declare-fun m!7036342 () Bool)

(assert (=> b!6204824 m!7036342))

(assert (=> b!6204824 m!7036340))

(assert (=> b!6204824 m!7036342))

(declare-fun m!7036344 () Bool)

(assert (=> b!6204824 m!7036344))

(assert (=> b!6204338 d!1944910))

(declare-fun bs!1539142 () Bool)

(declare-fun d!1944912 () Bool)

(assert (= bs!1539142 (and d!1944912 b!6203896)))

(declare-fun lambda!339104 () Int)

(assert (=> bs!1539142 (= (= (head!12797 (t!378253 s!2326)) (h!71057 s!2326)) (= lambda!339104 lambda!339028))))

(assert (=> d!1944912 true))

(assert (=> d!1944912 (= (derivationStepZipper!2110 lt!2343240 (head!12797 (t!378253 s!2326))) (flatMap!1649 lt!2343240 lambda!339104))))

(declare-fun bs!1539143 () Bool)

(assert (= bs!1539143 d!1944912))

(declare-fun m!7036346 () Bool)

(assert (=> bs!1539143 m!7036346))

(assert (=> b!6204338 d!1944912))

(declare-fun d!1944914 () Bool)

(assert (=> d!1944914 (= (head!12797 (t!378253 s!2326)) (h!71057 (t!378253 s!2326)))))

(assert (=> b!6204338 d!1944914))

(declare-fun d!1944916 () Bool)

(assert (=> d!1944916 (= (tail!11882 (t!378253 s!2326)) (t!378253 (t!378253 s!2326)))))

(assert (=> b!6204338 d!1944916))

(declare-fun d!1944918 () Bool)

(assert (=> d!1944918 (= (nullable!6137 (regOne!32800 (regTwo!32800 (regOne!32800 r!7292)))) (nullableFct!2093 (regOne!32800 (regTwo!32800 (regOne!32800 r!7292)))))))

(declare-fun bs!1539144 () Bool)

(assert (= bs!1539144 d!1944918))

(declare-fun m!7036348 () Bool)

(assert (=> bs!1539144 m!7036348))

(assert (=> b!6204101 d!1944918))

(declare-fun d!1944920 () Bool)

(assert (=> d!1944920 (= (isEmpty!36605 (tail!11881 (exprs!6028 (h!71056 zl!343)))) (is-Nil!64607 (tail!11881 (exprs!6028 (h!71056 zl!343)))))))

(assert (=> b!6204328 d!1944920))

(declare-fun d!1944922 () Bool)

(assert (=> d!1944922 (= (tail!11881 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343))))))

(assert (=> b!6204328 d!1944922))

(declare-fun bm!519534 () Bool)

(declare-fun call!519539 () Bool)

(assert (=> bm!519534 (= call!519539 (isEmpty!36608 (tail!11882 s!2326)))))

(declare-fun b!6204827 () Bool)

(declare-fun e!3778185 () Bool)

(assert (=> b!6204827 (= e!3778185 (matchR!8327 (derivativeStep!4857 (derivativeStep!4857 r!7292 (head!12797 s!2326)) (head!12797 (tail!11882 s!2326))) (tail!11882 (tail!11882 s!2326))))))

(declare-fun b!6204828 () Bool)

(declare-fun e!3778186 () Bool)

(declare-fun e!3778182 () Bool)

(assert (=> b!6204828 (= e!3778186 e!3778182)))

(declare-fun c!1120318 () Bool)

(assert (=> b!6204828 (= c!1120318 (is-EmptyLang!16144 (derivativeStep!4857 r!7292 (head!12797 s!2326))))))

(declare-fun b!6204829 () Bool)

(declare-fun res!2566211 () Bool)

(declare-fun e!3778183 () Bool)

(assert (=> b!6204829 (=> res!2566211 e!3778183)))

(declare-fun e!3778188 () Bool)

(assert (=> b!6204829 (= res!2566211 e!3778188)))

(declare-fun res!2566207 () Bool)

(assert (=> b!6204829 (=> (not res!2566207) (not e!3778188))))

(declare-fun lt!2343363 () Bool)

(assert (=> b!6204829 (= res!2566207 lt!2343363)))

(declare-fun b!6204830 () Bool)

(assert (=> b!6204830 (= e!3778182 (not lt!2343363))))

(declare-fun b!6204831 () Bool)

(declare-fun res!2566209 () Bool)

(declare-fun e!3778187 () Bool)

(assert (=> b!6204831 (=> res!2566209 e!3778187)))

(assert (=> b!6204831 (= res!2566209 (not (isEmpty!36608 (tail!11882 (tail!11882 s!2326)))))))

(declare-fun b!6204832 () Bool)

(assert (=> b!6204832 (= e!3778186 (= lt!2343363 call!519539))))

(declare-fun b!6204833 () Bool)

(declare-fun e!3778184 () Bool)

(assert (=> b!6204833 (= e!3778184 e!3778187)))

(declare-fun res!2566212 () Bool)

(assert (=> b!6204833 (=> res!2566212 e!3778187)))

(assert (=> b!6204833 (= res!2566212 call!519539)))

(declare-fun b!6204834 () Bool)

(declare-fun res!2566208 () Bool)

(assert (=> b!6204834 (=> res!2566208 e!3778183)))

(assert (=> b!6204834 (= res!2566208 (not (is-ElementMatch!16144 (derivativeStep!4857 r!7292 (head!12797 s!2326)))))))

(assert (=> b!6204834 (= e!3778182 e!3778183)))

(declare-fun d!1944924 () Bool)

(assert (=> d!1944924 e!3778186))

(declare-fun c!1120319 () Bool)

(assert (=> d!1944924 (= c!1120319 (is-EmptyExpr!16144 (derivativeStep!4857 r!7292 (head!12797 s!2326))))))

(assert (=> d!1944924 (= lt!2343363 e!3778185)))

(declare-fun c!1120317 () Bool)

(assert (=> d!1944924 (= c!1120317 (isEmpty!36608 (tail!11882 s!2326)))))

(assert (=> d!1944924 (validRegex!7880 (derivativeStep!4857 r!7292 (head!12797 s!2326)))))

(assert (=> d!1944924 (= (matchR!8327 (derivativeStep!4857 r!7292 (head!12797 s!2326)) (tail!11882 s!2326)) lt!2343363)))

(declare-fun b!6204835 () Bool)

(declare-fun res!2566213 () Bool)

(assert (=> b!6204835 (=> (not res!2566213) (not e!3778188))))

(assert (=> b!6204835 (= res!2566213 (isEmpty!36608 (tail!11882 (tail!11882 s!2326))))))

(declare-fun b!6204836 () Bool)

(assert (=> b!6204836 (= e!3778188 (= (head!12797 (tail!11882 s!2326)) (c!1120079 (derivativeStep!4857 r!7292 (head!12797 s!2326)))))))

(declare-fun b!6204837 () Bool)

(assert (=> b!6204837 (= e!3778187 (not (= (head!12797 (tail!11882 s!2326)) (c!1120079 (derivativeStep!4857 r!7292 (head!12797 s!2326))))))))

(declare-fun b!6204838 () Bool)

(declare-fun res!2566210 () Bool)

(assert (=> b!6204838 (=> (not res!2566210) (not e!3778188))))

(assert (=> b!6204838 (= res!2566210 (not call!519539))))

(declare-fun b!6204839 () Bool)

(assert (=> b!6204839 (= e!3778183 e!3778184)))

(declare-fun res!2566206 () Bool)

(assert (=> b!6204839 (=> (not res!2566206) (not e!3778184))))

(assert (=> b!6204839 (= res!2566206 (not lt!2343363))))

(declare-fun b!6204840 () Bool)

(assert (=> b!6204840 (= e!3778185 (nullable!6137 (derivativeStep!4857 r!7292 (head!12797 s!2326))))))

(assert (= (and d!1944924 c!1120317) b!6204840))

(assert (= (and d!1944924 (not c!1120317)) b!6204827))

(assert (= (and d!1944924 c!1120319) b!6204832))

(assert (= (and d!1944924 (not c!1120319)) b!6204828))

(assert (= (and b!6204828 c!1120318) b!6204830))

(assert (= (and b!6204828 (not c!1120318)) b!6204834))

(assert (= (and b!6204834 (not res!2566208)) b!6204829))

(assert (= (and b!6204829 res!2566207) b!6204838))

(assert (= (and b!6204838 res!2566210) b!6204835))

(assert (= (and b!6204835 res!2566213) b!6204836))

(assert (= (and b!6204829 (not res!2566211)) b!6204839))

(assert (= (and b!6204839 res!2566206) b!6204833))

(assert (= (and b!6204833 (not res!2566212)) b!6204831))

(assert (= (and b!6204831 (not res!2566209)) b!6204837))

(assert (= (or b!6204832 b!6204833 b!6204838) bm!519534))

(assert (=> b!6204835 m!7035948))

(declare-fun m!7036350 () Bool)

(assert (=> b!6204835 m!7036350))

(assert (=> b!6204835 m!7036350))

(declare-fun m!7036352 () Bool)

(assert (=> b!6204835 m!7036352))

(assert (=> d!1944924 m!7035948))

(assert (=> d!1944924 m!7035950))

(assert (=> d!1944924 m!7035956))

(declare-fun m!7036354 () Bool)

(assert (=> d!1944924 m!7036354))

(assert (=> bm!519534 m!7035948))

(assert (=> bm!519534 m!7035950))

(assert (=> b!6204831 m!7035948))

(assert (=> b!6204831 m!7036350))

(assert (=> b!6204831 m!7036350))

(assert (=> b!6204831 m!7036352))

(assert (=> b!6204836 m!7035948))

(declare-fun m!7036356 () Bool)

(assert (=> b!6204836 m!7036356))

(assert (=> b!6204840 m!7035956))

(declare-fun m!7036358 () Bool)

(assert (=> b!6204840 m!7036358))

(assert (=> b!6204837 m!7035948))

(assert (=> b!6204837 m!7036356))

(assert (=> b!6204827 m!7035948))

(assert (=> b!6204827 m!7036356))

(assert (=> b!6204827 m!7035956))

(assert (=> b!6204827 m!7036356))

(declare-fun m!7036360 () Bool)

(assert (=> b!6204827 m!7036360))

(assert (=> b!6204827 m!7035948))

(assert (=> b!6204827 m!7036350))

(assert (=> b!6204827 m!7036360))

(assert (=> b!6204827 m!7036350))

(declare-fun m!7036362 () Bool)

(assert (=> b!6204827 m!7036362))

(assert (=> b!6204215 d!1944924))

(declare-fun b!6204861 () Bool)

(declare-fun e!3778201 () Regex!16144)

(declare-fun e!3778202 () Regex!16144)

(assert (=> b!6204861 (= e!3778201 e!3778202)))

(declare-fun c!1120332 () Bool)

(assert (=> b!6204861 (= c!1120332 (is-Star!16144 r!7292))))

(declare-fun bm!519543 () Bool)

(declare-fun call!519548 () Regex!16144)

(declare-fun call!519549 () Regex!16144)

(assert (=> bm!519543 (= call!519548 call!519549)))

(declare-fun b!6204862 () Bool)

(declare-fun call!519550 () Regex!16144)

(assert (=> b!6204862 (= e!3778201 (Union!16144 call!519550 call!519549))))

(declare-fun b!6204863 () Bool)

(declare-fun e!3778200 () Regex!16144)

(assert (=> b!6204863 (= e!3778200 EmptyLang!16144)))

(declare-fun b!6204864 () Bool)

(declare-fun c!1120334 () Bool)

(assert (=> b!6204864 (= c!1120334 (nullable!6137 (regOne!32800 r!7292)))))

(declare-fun e!3778199 () Regex!16144)

(assert (=> b!6204864 (= e!3778202 e!3778199)))

(declare-fun b!6204865 () Bool)

(declare-fun e!3778203 () Regex!16144)

(assert (=> b!6204865 (= e!3778203 (ite (= (head!12797 s!2326) (c!1120079 r!7292)) EmptyExpr!16144 EmptyLang!16144))))

(declare-fun c!1120333 () Bool)

(declare-fun bm!519544 () Bool)

(assert (=> bm!519544 (= call!519550 (derivativeStep!4857 (ite c!1120333 (regOne!32801 r!7292) (regOne!32800 r!7292)) (head!12797 s!2326)))))

(declare-fun call!519551 () Regex!16144)

(declare-fun b!6204866 () Bool)

(assert (=> b!6204866 (= e!3778199 (Union!16144 (Concat!24989 call!519550 (regTwo!32800 r!7292)) call!519551))))

(declare-fun d!1944926 () Bool)

(declare-fun lt!2343366 () Regex!16144)

(assert (=> d!1944926 (validRegex!7880 lt!2343366)))

(assert (=> d!1944926 (= lt!2343366 e!3778200)))

(declare-fun c!1120331 () Bool)

(assert (=> d!1944926 (= c!1120331 (or (is-EmptyExpr!16144 r!7292) (is-EmptyLang!16144 r!7292)))))

(assert (=> d!1944926 (validRegex!7880 r!7292)))

(assert (=> d!1944926 (= (derivativeStep!4857 r!7292 (head!12797 s!2326)) lt!2343366)))

(declare-fun b!6204867 () Bool)

(assert (=> b!6204867 (= e!3778200 e!3778203)))

(declare-fun c!1120330 () Bool)

(assert (=> b!6204867 (= c!1120330 (is-ElementMatch!16144 r!7292))))

(declare-fun b!6204868 () Bool)

(assert (=> b!6204868 (= e!3778202 (Concat!24989 call!519548 r!7292))))

(declare-fun bm!519545 () Bool)

(assert (=> bm!519545 (= call!519549 (derivativeStep!4857 (ite c!1120333 (regTwo!32801 r!7292) (ite c!1120332 (reg!16473 r!7292) (ite c!1120334 (regTwo!32800 r!7292) (regOne!32800 r!7292)))) (head!12797 s!2326)))))

(declare-fun b!6204869 () Bool)

(assert (=> b!6204869 (= e!3778199 (Union!16144 (Concat!24989 call!519551 (regTwo!32800 r!7292)) EmptyLang!16144))))

(declare-fun bm!519546 () Bool)

(assert (=> bm!519546 (= call!519551 call!519548)))

(declare-fun b!6204870 () Bool)

(assert (=> b!6204870 (= c!1120333 (is-Union!16144 r!7292))))

(assert (=> b!6204870 (= e!3778203 e!3778201)))

(assert (= (and d!1944926 c!1120331) b!6204863))

(assert (= (and d!1944926 (not c!1120331)) b!6204867))

(assert (= (and b!6204867 c!1120330) b!6204865))

(assert (= (and b!6204867 (not c!1120330)) b!6204870))

(assert (= (and b!6204870 c!1120333) b!6204862))

(assert (= (and b!6204870 (not c!1120333)) b!6204861))

(assert (= (and b!6204861 c!1120332) b!6204868))

(assert (= (and b!6204861 (not c!1120332)) b!6204864))

(assert (= (and b!6204864 c!1120334) b!6204866))

(assert (= (and b!6204864 (not c!1120334)) b!6204869))

(assert (= (or b!6204866 b!6204869) bm!519546))

(assert (= (or b!6204868 bm!519546) bm!519543))

(assert (= (or b!6204862 bm!519543) bm!519545))

(assert (= (or b!6204862 b!6204866) bm!519544))

(declare-fun m!7036364 () Bool)

(assert (=> b!6204864 m!7036364))

(assert (=> bm!519544 m!7035952))

(declare-fun m!7036366 () Bool)

(assert (=> bm!519544 m!7036366))

(declare-fun m!7036368 () Bool)

(assert (=> d!1944926 m!7036368))

(assert (=> d!1944926 m!7035764))

(assert (=> bm!519545 m!7035952))

(declare-fun m!7036370 () Bool)

(assert (=> bm!519545 m!7036370))

(assert (=> b!6204215 d!1944926))

(assert (=> b!6204215 d!1944876))

(assert (=> b!6204215 d!1944894))

(declare-fun b!6204879 () Bool)

(declare-fun e!3778209 () List!64733)

(assert (=> b!6204879 (= e!3778209 (t!378253 s!2326))))

(declare-fun d!1944928 () Bool)

(declare-fun e!3778208 () Bool)

(assert (=> d!1944928 e!3778208))

(declare-fun res!2566218 () Bool)

(assert (=> d!1944928 (=> (not res!2566218) (not e!3778208))))

(declare-fun lt!2343369 () List!64733)

(declare-fun content!12085 (List!64733) (Set C!32558))

(assert (=> d!1944928 (= res!2566218 (= (content!12085 lt!2343369) (set.union (content!12085 (++!14222 Nil!64609 (Cons!64609 (h!71057 s!2326) Nil!64609))) (content!12085 (t!378253 s!2326)))))))

(assert (=> d!1944928 (= lt!2343369 e!3778209)))

(declare-fun c!1120337 () Bool)

(assert (=> d!1944928 (= c!1120337 (is-Nil!64609 (++!14222 Nil!64609 (Cons!64609 (h!71057 s!2326) Nil!64609))))))

(assert (=> d!1944928 (= (++!14222 (++!14222 Nil!64609 (Cons!64609 (h!71057 s!2326) Nil!64609)) (t!378253 s!2326)) lt!2343369)))

(declare-fun b!6204881 () Bool)

(declare-fun res!2566219 () Bool)

(assert (=> b!6204881 (=> (not res!2566219) (not e!3778208))))

(declare-fun size!40271 (List!64733) Int)

(assert (=> b!6204881 (= res!2566219 (= (size!40271 lt!2343369) (+ (size!40271 (++!14222 Nil!64609 (Cons!64609 (h!71057 s!2326) Nil!64609))) (size!40271 (t!378253 s!2326)))))))

(declare-fun b!6204880 () Bool)

(assert (=> b!6204880 (= e!3778209 (Cons!64609 (h!71057 (++!14222 Nil!64609 (Cons!64609 (h!71057 s!2326) Nil!64609))) (++!14222 (t!378253 (++!14222 Nil!64609 (Cons!64609 (h!71057 s!2326) Nil!64609))) (t!378253 s!2326))))))

(declare-fun b!6204882 () Bool)

(assert (=> b!6204882 (= e!3778208 (or (not (= (t!378253 s!2326) Nil!64609)) (= lt!2343369 (++!14222 Nil!64609 (Cons!64609 (h!71057 s!2326) Nil!64609)))))))

(assert (= (and d!1944928 c!1120337) b!6204879))

(assert (= (and d!1944928 (not c!1120337)) b!6204880))

(assert (= (and d!1944928 res!2566218) b!6204881))

(assert (= (and b!6204881 res!2566219) b!6204882))

(declare-fun m!7036372 () Bool)

(assert (=> d!1944928 m!7036372))

(assert (=> d!1944928 m!7036046))

(declare-fun m!7036374 () Bool)

(assert (=> d!1944928 m!7036374))

(declare-fun m!7036376 () Bool)

(assert (=> d!1944928 m!7036376))

(declare-fun m!7036378 () Bool)

(assert (=> b!6204881 m!7036378))

(assert (=> b!6204881 m!7036046))

(declare-fun m!7036380 () Bool)

(assert (=> b!6204881 m!7036380))

(declare-fun m!7036382 () Bool)

(assert (=> b!6204881 m!7036382))

(declare-fun m!7036384 () Bool)

(assert (=> b!6204880 m!7036384))

(assert (=> b!6204390 d!1944928))

(declare-fun b!6204883 () Bool)

(declare-fun e!3778211 () List!64733)

(assert (=> b!6204883 (= e!3778211 (Cons!64609 (h!71057 s!2326) Nil!64609))))

(declare-fun d!1944930 () Bool)

(declare-fun e!3778210 () Bool)

(assert (=> d!1944930 e!3778210))

(declare-fun res!2566220 () Bool)

(assert (=> d!1944930 (=> (not res!2566220) (not e!3778210))))

(declare-fun lt!2343370 () List!64733)

(assert (=> d!1944930 (= res!2566220 (= (content!12085 lt!2343370) (set.union (content!12085 Nil!64609) (content!12085 (Cons!64609 (h!71057 s!2326) Nil!64609)))))))

(assert (=> d!1944930 (= lt!2343370 e!3778211)))

(declare-fun c!1120338 () Bool)

(assert (=> d!1944930 (= c!1120338 (is-Nil!64609 Nil!64609))))

(assert (=> d!1944930 (= (++!14222 Nil!64609 (Cons!64609 (h!71057 s!2326) Nil!64609)) lt!2343370)))

(declare-fun b!6204885 () Bool)

(declare-fun res!2566221 () Bool)

(assert (=> b!6204885 (=> (not res!2566221) (not e!3778210))))

(assert (=> b!6204885 (= res!2566221 (= (size!40271 lt!2343370) (+ (size!40271 Nil!64609) (size!40271 (Cons!64609 (h!71057 s!2326) Nil!64609)))))))

(declare-fun b!6204884 () Bool)

(assert (=> b!6204884 (= e!3778211 (Cons!64609 (h!71057 Nil!64609) (++!14222 (t!378253 Nil!64609) (Cons!64609 (h!71057 s!2326) Nil!64609))))))

(declare-fun b!6204886 () Bool)

(assert (=> b!6204886 (= e!3778210 (or (not (= (Cons!64609 (h!71057 s!2326) Nil!64609) Nil!64609)) (= lt!2343370 Nil!64609)))))

(assert (= (and d!1944930 c!1120338) b!6204883))

(assert (= (and d!1944930 (not c!1120338)) b!6204884))

(assert (= (and d!1944930 res!2566220) b!6204885))

(assert (= (and b!6204885 res!2566221) b!6204886))

(declare-fun m!7036386 () Bool)

(assert (=> d!1944930 m!7036386))

(declare-fun m!7036388 () Bool)

(assert (=> d!1944930 m!7036388))

(declare-fun m!7036390 () Bool)

(assert (=> d!1944930 m!7036390))

(declare-fun m!7036392 () Bool)

(assert (=> b!6204885 m!7036392))

(declare-fun m!7036394 () Bool)

(assert (=> b!6204885 m!7036394))

(declare-fun m!7036396 () Bool)

(assert (=> b!6204885 m!7036396))

(declare-fun m!7036398 () Bool)

(assert (=> b!6204884 m!7036398))

(assert (=> b!6204390 d!1944930))

(declare-fun d!1944932 () Bool)

(assert (=> d!1944932 (= (++!14222 (++!14222 Nil!64609 (Cons!64609 (h!71057 s!2326) Nil!64609)) (t!378253 s!2326)) s!2326)))

(declare-fun lt!2343373 () Unit!157907)

(declare-fun choose!46128 (List!64733 C!32558 List!64733 List!64733) Unit!157907)

(assert (=> d!1944932 (= lt!2343373 (choose!46128 Nil!64609 (h!71057 s!2326) (t!378253 s!2326) s!2326))))

(assert (=> d!1944932 (= (++!14222 Nil!64609 (Cons!64609 (h!71057 s!2326) (t!378253 s!2326))) s!2326)))

(assert (=> d!1944932 (= (lemmaMoveElementToOtherListKeepsConcatEq!2317 Nil!64609 (h!71057 s!2326) (t!378253 s!2326) s!2326) lt!2343373)))

(declare-fun bs!1539145 () Bool)

(assert (= bs!1539145 d!1944932))

(assert (=> bs!1539145 m!7036046))

(assert (=> bs!1539145 m!7036046))

(assert (=> bs!1539145 m!7036048))

(declare-fun m!7036400 () Bool)

(assert (=> bs!1539145 m!7036400))

(declare-fun m!7036402 () Bool)

(assert (=> bs!1539145 m!7036402))

(assert (=> b!6204390 d!1944932))

(declare-fun b!6204887 () Bool)

(declare-fun e!3778213 () Bool)

(declare-fun lt!2343375 () Option!16035)

(assert (=> b!6204887 (= e!3778213 (= (++!14222 (_1!36426 (get!22310 lt!2343375)) (_2!36426 (get!22310 lt!2343375))) s!2326))))

(declare-fun b!6204888 () Bool)

(declare-fun e!3778212 () Bool)

(assert (=> b!6204888 (= e!3778212 (not (isDefined!12738 lt!2343375)))))

(declare-fun b!6204889 () Bool)

(declare-fun res!2566226 () Bool)

(assert (=> b!6204889 (=> (not res!2566226) (not e!3778213))))

(assert (=> b!6204889 (= res!2566226 (matchR!8327 (regTwo!32800 r!7292) (_2!36426 (get!22310 lt!2343375))))))

(declare-fun b!6204890 () Bool)

(declare-fun res!2566222 () Bool)

(assert (=> b!6204890 (=> (not res!2566222) (not e!3778213))))

(assert (=> b!6204890 (= res!2566222 (matchR!8327 (regOne!32800 r!7292) (_1!36426 (get!22310 lt!2343375))))))

(declare-fun b!6204891 () Bool)

(declare-fun e!3778216 () Bool)

(assert (=> b!6204891 (= e!3778216 (matchR!8327 (regTwo!32800 r!7292) (t!378253 s!2326)))))

(declare-fun b!6204892 () Bool)

(declare-fun e!3778214 () Option!16035)

(assert (=> b!6204892 (= e!3778214 None!16034)))

(declare-fun b!6204893 () Bool)

(declare-fun lt!2343376 () Unit!157907)

(declare-fun lt!2343374 () Unit!157907)

(assert (=> b!6204893 (= lt!2343376 lt!2343374)))

(assert (=> b!6204893 (= (++!14222 (++!14222 (++!14222 Nil!64609 (Cons!64609 (h!71057 s!2326) Nil!64609)) (Cons!64609 (h!71057 (t!378253 s!2326)) Nil!64609)) (t!378253 (t!378253 s!2326))) s!2326)))

(assert (=> b!6204893 (= lt!2343374 (lemmaMoveElementToOtherListKeepsConcatEq!2317 (++!14222 Nil!64609 (Cons!64609 (h!71057 s!2326) Nil!64609)) (h!71057 (t!378253 s!2326)) (t!378253 (t!378253 s!2326)) s!2326))))

(assert (=> b!6204893 (= e!3778214 (findConcatSeparation!2449 (regOne!32800 r!7292) (regTwo!32800 r!7292) (++!14222 (++!14222 Nil!64609 (Cons!64609 (h!71057 s!2326) Nil!64609)) (Cons!64609 (h!71057 (t!378253 s!2326)) Nil!64609)) (t!378253 (t!378253 s!2326)) s!2326))))

(declare-fun d!1944934 () Bool)

(assert (=> d!1944934 e!3778212))

(declare-fun res!2566225 () Bool)

(assert (=> d!1944934 (=> res!2566225 e!3778212)))

(assert (=> d!1944934 (= res!2566225 e!3778213)))

(declare-fun res!2566223 () Bool)

(assert (=> d!1944934 (=> (not res!2566223) (not e!3778213))))

(assert (=> d!1944934 (= res!2566223 (isDefined!12738 lt!2343375))))

(declare-fun e!3778215 () Option!16035)

(assert (=> d!1944934 (= lt!2343375 e!3778215)))

(declare-fun c!1120340 () Bool)

(assert (=> d!1944934 (= c!1120340 e!3778216)))

(declare-fun res!2566224 () Bool)

(assert (=> d!1944934 (=> (not res!2566224) (not e!3778216))))

(assert (=> d!1944934 (= res!2566224 (matchR!8327 (regOne!32800 r!7292) (++!14222 Nil!64609 (Cons!64609 (h!71057 s!2326) Nil!64609))))))

(assert (=> d!1944934 (validRegex!7880 (regOne!32800 r!7292))))

(assert (=> d!1944934 (= (findConcatSeparation!2449 (regOne!32800 r!7292) (regTwo!32800 r!7292) (++!14222 Nil!64609 (Cons!64609 (h!71057 s!2326) Nil!64609)) (t!378253 s!2326) s!2326) lt!2343375)))

(declare-fun b!6204894 () Bool)

(assert (=> b!6204894 (= e!3778215 (Some!16034 (tuple2!66247 (++!14222 Nil!64609 (Cons!64609 (h!71057 s!2326) Nil!64609)) (t!378253 s!2326))))))

(declare-fun b!6204895 () Bool)

(assert (=> b!6204895 (= e!3778215 e!3778214)))

(declare-fun c!1120339 () Bool)

(assert (=> b!6204895 (= c!1120339 (is-Nil!64609 (t!378253 s!2326)))))

(assert (= (and d!1944934 res!2566224) b!6204891))

(assert (= (and d!1944934 c!1120340) b!6204894))

(assert (= (and d!1944934 (not c!1120340)) b!6204895))

(assert (= (and b!6204895 c!1120339) b!6204892))

(assert (= (and b!6204895 (not c!1120339)) b!6204893))

(assert (= (and d!1944934 res!2566223) b!6204890))

(assert (= (and b!6204890 res!2566222) b!6204889))

(assert (= (and b!6204889 res!2566226) b!6204887))

(assert (= (and d!1944934 (not res!2566225)) b!6204888))

(declare-fun m!7036404 () Bool)

(assert (=> b!6204891 m!7036404))

(declare-fun m!7036406 () Bool)

(assert (=> b!6204890 m!7036406))

(declare-fun m!7036408 () Bool)

(assert (=> b!6204890 m!7036408))

(declare-fun m!7036410 () Bool)

(assert (=> b!6204888 m!7036410))

(assert (=> b!6204893 m!7036046))

(declare-fun m!7036412 () Bool)

(assert (=> b!6204893 m!7036412))

(assert (=> b!6204893 m!7036412))

(declare-fun m!7036414 () Bool)

(assert (=> b!6204893 m!7036414))

(assert (=> b!6204893 m!7036046))

(declare-fun m!7036416 () Bool)

(assert (=> b!6204893 m!7036416))

(assert (=> b!6204893 m!7036412))

(declare-fun m!7036418 () Bool)

(assert (=> b!6204893 m!7036418))

(assert (=> d!1944934 m!7036410))

(assert (=> d!1944934 m!7036046))

(declare-fun m!7036420 () Bool)

(assert (=> d!1944934 m!7036420))

(assert (=> d!1944934 m!7036056))

(assert (=> b!6204889 m!7036406))

(declare-fun m!7036422 () Bool)

(assert (=> b!6204889 m!7036422))

(assert (=> b!6204887 m!7036406))

(declare-fun m!7036424 () Bool)

(assert (=> b!6204887 m!7036424))

(assert (=> b!6204390 d!1944934))

(assert (=> b!6204136 d!1944794))

(declare-fun bs!1539146 () Bool)

(declare-fun d!1944936 () Bool)

(assert (= bs!1539146 (and d!1944936 d!1944768)))

(declare-fun lambda!339105 () Int)

(assert (=> bs!1539146 (= lambda!339105 lambda!339049)))

(declare-fun bs!1539147 () Bool)

(assert (= bs!1539147 (and d!1944936 d!1944906)))

(assert (=> bs!1539147 (= lambda!339105 lambda!339101)))

(declare-fun bs!1539148 () Bool)

(assert (= bs!1539148 (and d!1944936 d!1944794)))

(assert (=> bs!1539148 (= lambda!339105 lambda!339065)))

(declare-fun bs!1539149 () Bool)

(assert (= bs!1539149 (and d!1944936 d!1944764)))

(assert (=> bs!1539149 (= lambda!339105 lambda!339045)))

(declare-fun bs!1539150 () Bool)

(assert (= bs!1539150 (and d!1944936 d!1944792)))

(assert (=> bs!1539150 (= lambda!339105 lambda!339062)))

(declare-fun bs!1539151 () Bool)

(assert (= bs!1539151 (and d!1944936 d!1944766)))

(assert (=> bs!1539151 (= lambda!339105 lambda!339048)))

(declare-fun bs!1539152 () Bool)

(assert (= bs!1539152 (and d!1944936 d!1944736)))

(assert (=> bs!1539152 (= lambda!339105 lambda!339042)))

(declare-fun bs!1539153 () Bool)

(assert (= bs!1539153 (and d!1944936 d!1944900)))

(assert (=> bs!1539153 (= lambda!339105 lambda!339100)))

(declare-fun lt!2343377 () List!64731)

(assert (=> d!1944936 (forall!15258 lt!2343377 lambda!339105)))

(declare-fun e!3778217 () List!64731)

(assert (=> d!1944936 (= lt!2343377 e!3778217)))

(declare-fun c!1120341 () Bool)

(assert (=> d!1944936 (= c!1120341 (is-Cons!64608 (t!378252 zl!343)))))

(assert (=> d!1944936 (= (unfocusZipperList!1565 (t!378252 zl!343)) lt!2343377)))

(declare-fun b!6204896 () Bool)

(assert (=> b!6204896 (= e!3778217 (Cons!64607 (generalisedConcat!1741 (exprs!6028 (h!71056 (t!378252 zl!343)))) (unfocusZipperList!1565 (t!378252 (t!378252 zl!343)))))))

(declare-fun b!6204897 () Bool)

(assert (=> b!6204897 (= e!3778217 Nil!64607)))

(assert (= (and d!1944936 c!1120341) b!6204896))

(assert (= (and d!1944936 (not c!1120341)) b!6204897))

(declare-fun m!7036426 () Bool)

(assert (=> d!1944936 m!7036426))

(declare-fun m!7036428 () Bool)

(assert (=> b!6204896 m!7036428))

(declare-fun m!7036430 () Bool)

(assert (=> b!6204896 m!7036430))

(assert (=> b!6204136 d!1944936))

(assert (=> d!1944780 d!1944774))

(assert (=> d!1944780 d!1944770))

(declare-fun d!1944938 () Bool)

(assert (=> d!1944938 (= (matchR!8327 r!7292 s!2326) (matchRSpec!3245 r!7292 s!2326))))

(assert (=> d!1944938 true))

(declare-fun _$88!4802 () Unit!157907)

(assert (=> d!1944938 (= (choose!46115 r!7292 s!2326) _$88!4802)))

(declare-fun bs!1539154 () Bool)

(assert (= bs!1539154 d!1944938))

(assert (=> bs!1539154 m!7035758))

(assert (=> bs!1539154 m!7035756))

(assert (=> d!1944780 d!1944938))

(assert (=> d!1944780 d!1944790))

(declare-fun d!1944940 () Bool)

(assert (=> d!1944940 true))

(assert (=> d!1944940 true))

(declare-fun res!2566229 () Bool)

(assert (=> d!1944940 (= (choose!46117 lambda!339026) res!2566229)))

(assert (=> d!1944810 d!1944940))

(declare-fun bs!1539155 () Bool)

(declare-fun b!6204905 () Bool)

(assert (= bs!1539155 (and b!6204905 b!6203913)))

(declare-fun lambda!339106 () Int)

(assert (=> bs!1539155 (not (= lambda!339106 lambda!339027))))

(declare-fun bs!1539156 () Bool)

(assert (= bs!1539156 (and b!6204905 b!6204177)))

(assert (=> bs!1539156 (= (and (= (reg!16473 (regOne!32801 r!7292)) (reg!16473 r!7292)) (= (regOne!32801 r!7292) r!7292)) (= lambda!339106 lambda!339054))))

(declare-fun bs!1539157 () Bool)

(assert (= bs!1539157 (and b!6204905 b!6204180)))

(assert (=> bs!1539157 (not (= lambda!339106 lambda!339055))))

(declare-fun bs!1539158 () Bool)

(assert (= bs!1539158 (and b!6204905 b!6204769)))

(assert (=> bs!1539158 (not (= lambda!339106 lambda!339099))))

(declare-fun bs!1539159 () Bool)

(assert (= bs!1539159 (and b!6204905 d!1944814)))

(assert (=> bs!1539159 (not (= lambda!339106 lambda!339074))))

(assert (=> bs!1539159 (not (= lambda!339106 lambda!339073))))

(declare-fun bs!1539160 () Bool)

(assert (= bs!1539160 (and b!6204905 d!1944812)))

(assert (=> bs!1539160 (not (= lambda!339106 lambda!339068))))

(assert (=> bs!1539155 (not (= lambda!339106 lambda!339026))))

(declare-fun bs!1539161 () Bool)

(assert (= bs!1539161 (and b!6204905 b!6204766)))

(assert (=> bs!1539161 (= (and (= (reg!16473 (regOne!32801 r!7292)) (reg!16473 (regTwo!32801 r!7292))) (= (regOne!32801 r!7292) (regTwo!32801 r!7292))) (= lambda!339106 lambda!339098))))

(assert (=> b!6204905 true))

(assert (=> b!6204905 true))

(declare-fun bs!1539162 () Bool)

(declare-fun b!6204908 () Bool)

(assert (= bs!1539162 (and b!6204908 b!6203913)))

(declare-fun lambda!339107 () Int)

(assert (=> bs!1539162 (= (and (= (regOne!32800 (regOne!32801 r!7292)) (regOne!32800 r!7292)) (= (regTwo!32800 (regOne!32801 r!7292)) (regTwo!32800 r!7292))) (= lambda!339107 lambda!339027))))

(declare-fun bs!1539163 () Bool)

(assert (= bs!1539163 (and b!6204908 b!6204177)))

(assert (=> bs!1539163 (not (= lambda!339107 lambda!339054))))

(declare-fun bs!1539164 () Bool)

(assert (= bs!1539164 (and b!6204908 b!6204180)))

(assert (=> bs!1539164 (= (and (= (regOne!32800 (regOne!32801 r!7292)) (regOne!32800 r!7292)) (= (regTwo!32800 (regOne!32801 r!7292)) (regTwo!32800 r!7292))) (= lambda!339107 lambda!339055))))

(declare-fun bs!1539165 () Bool)

(assert (= bs!1539165 (and b!6204908 b!6204769)))

(assert (=> bs!1539165 (= (and (= (regOne!32800 (regOne!32801 r!7292)) (regOne!32800 (regTwo!32801 r!7292))) (= (regTwo!32800 (regOne!32801 r!7292)) (regTwo!32800 (regTwo!32801 r!7292)))) (= lambda!339107 lambda!339099))))

(declare-fun bs!1539166 () Bool)

(assert (= bs!1539166 (and b!6204908 d!1944814)))

(assert (=> bs!1539166 (= (and (= (regOne!32800 (regOne!32801 r!7292)) (regOne!32800 r!7292)) (= (regTwo!32800 (regOne!32801 r!7292)) (regTwo!32800 r!7292))) (= lambda!339107 lambda!339074))))

(assert (=> bs!1539166 (not (= lambda!339107 lambda!339073))))

(declare-fun bs!1539167 () Bool)

(assert (= bs!1539167 (and b!6204908 d!1944812)))

(assert (=> bs!1539167 (not (= lambda!339107 lambda!339068))))

(declare-fun bs!1539168 () Bool)

(assert (= bs!1539168 (and b!6204908 b!6204905)))

(assert (=> bs!1539168 (not (= lambda!339107 lambda!339106))))

(assert (=> bs!1539162 (not (= lambda!339107 lambda!339026))))

(declare-fun bs!1539169 () Bool)

(assert (= bs!1539169 (and b!6204908 b!6204766)))

(assert (=> bs!1539169 (not (= lambda!339107 lambda!339098))))

(assert (=> b!6204908 true))

(assert (=> b!6204908 true))

(declare-fun d!1944942 () Bool)

(declare-fun c!1120343 () Bool)

(assert (=> d!1944942 (= c!1120343 (is-EmptyExpr!16144 (regOne!32801 r!7292)))))

(declare-fun e!3778224 () Bool)

(assert (=> d!1944942 (= (matchRSpec!3245 (regOne!32801 r!7292) s!2326) e!3778224)))

(declare-fun b!6204898 () Bool)

(declare-fun e!3778220 () Bool)

(assert (=> b!6204898 (= e!3778220 (matchRSpec!3245 (regTwo!32801 (regOne!32801 r!7292)) s!2326))))

(declare-fun b!6204899 () Bool)

(declare-fun e!3778218 () Bool)

(assert (=> b!6204899 (= e!3778218 (= s!2326 (Cons!64609 (c!1120079 (regOne!32801 r!7292)) Nil!64609)))))

(declare-fun bm!519547 () Bool)

(declare-fun c!1120345 () Bool)

(declare-fun call!519553 () Bool)

(assert (=> bm!519547 (= call!519553 (Exists!3214 (ite c!1120345 lambda!339106 lambda!339107)))))

(declare-fun b!6204900 () Bool)

(declare-fun c!1120344 () Bool)

(assert (=> b!6204900 (= c!1120344 (is-ElementMatch!16144 (regOne!32801 r!7292)))))

(declare-fun e!3778219 () Bool)

(assert (=> b!6204900 (= e!3778219 e!3778218)))

(declare-fun b!6204901 () Bool)

(assert (=> b!6204901 (= e!3778224 e!3778219)))

(declare-fun res!2566232 () Bool)

(assert (=> b!6204901 (= res!2566232 (not (is-EmptyLang!16144 (regOne!32801 r!7292))))))

(assert (=> b!6204901 (=> (not res!2566232) (not e!3778219))))

(declare-fun bm!519548 () Bool)

(declare-fun call!519552 () Bool)

(assert (=> bm!519548 (= call!519552 (isEmpty!36608 s!2326))))

(declare-fun b!6204902 () Bool)

(declare-fun c!1120342 () Bool)

(assert (=> b!6204902 (= c!1120342 (is-Union!16144 (regOne!32801 r!7292)))))

(declare-fun e!3778223 () Bool)

(assert (=> b!6204902 (= e!3778218 e!3778223)))

(declare-fun b!6204903 () Bool)

(declare-fun res!2566230 () Bool)

(declare-fun e!3778222 () Bool)

(assert (=> b!6204903 (=> res!2566230 e!3778222)))

(assert (=> b!6204903 (= res!2566230 call!519552)))

(declare-fun e!3778221 () Bool)

(assert (=> b!6204903 (= e!3778221 e!3778222)))

(declare-fun b!6204904 () Bool)

(assert (=> b!6204904 (= e!3778224 call!519552)))

(assert (=> b!6204905 (= e!3778222 call!519553)))

(declare-fun b!6204906 () Bool)

(assert (=> b!6204906 (= e!3778223 e!3778221)))

(assert (=> b!6204906 (= c!1120345 (is-Star!16144 (regOne!32801 r!7292)))))

(declare-fun b!6204907 () Bool)

(assert (=> b!6204907 (= e!3778223 e!3778220)))

(declare-fun res!2566231 () Bool)

(assert (=> b!6204907 (= res!2566231 (matchRSpec!3245 (regOne!32801 (regOne!32801 r!7292)) s!2326))))

(assert (=> b!6204907 (=> res!2566231 e!3778220)))

(assert (=> b!6204908 (= e!3778221 call!519553)))

(assert (= (and d!1944942 c!1120343) b!6204904))

(assert (= (and d!1944942 (not c!1120343)) b!6204901))

(assert (= (and b!6204901 res!2566232) b!6204900))

(assert (= (and b!6204900 c!1120344) b!6204899))

(assert (= (and b!6204900 (not c!1120344)) b!6204902))

(assert (= (and b!6204902 c!1120342) b!6204907))

(assert (= (and b!6204902 (not c!1120342)) b!6204906))

(assert (= (and b!6204907 (not res!2566231)) b!6204898))

(assert (= (and b!6204906 c!1120345) b!6204903))

(assert (= (and b!6204906 (not c!1120345)) b!6204908))

(assert (= (and b!6204903 (not res!2566230)) b!6204905))

(assert (= (or b!6204905 b!6204908) bm!519547))

(assert (= (or b!6204904 b!6204903) bm!519548))

(declare-fun m!7036432 () Bool)

(assert (=> b!6204898 m!7036432))

(declare-fun m!7036434 () Bool)

(assert (=> bm!519547 m!7036434))

(assert (=> bm!519548 m!7035930))

(declare-fun m!7036436 () Bool)

(assert (=> b!6204907 m!7036436))

(assert (=> b!6204179 d!1944942))

(declare-fun d!1944944 () Bool)

(assert (=> d!1944944 (= ($colon$colon!2013 (exprs!6028 lt!2343238) (ite (or c!1120108 c!1120110) (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (h!71055 (exprs!6028 (h!71056 zl!343))))) (Cons!64607 (ite (or c!1120108 c!1120110) (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (h!71055 (exprs!6028 (h!71056 zl!343)))) (exprs!6028 lt!2343238)))))

(assert (=> bm!519430 d!1944944))

(assert (=> b!6204332 d!1944740))

(declare-fun d!1944946 () Bool)

(assert (=> d!1944946 (= (isUnion!993 lt!2343288) (is-Union!16144 lt!2343288))))

(assert (=> b!6204130 d!1944946))

(declare-fun call!519554 () List!64731)

(declare-fun bm!519549 () Bool)

(declare-fun c!1120347 () Bool)

(declare-fun c!1120349 () Bool)

(declare-fun call!519556 () (Set Context!11056))

(declare-fun c!1120350 () Bool)

(assert (=> bm!519549 (= call!519556 (derivationStepZipperDown!1392 (ite c!1120350 (regTwo!32801 (ite c!1120121 (regOne!32801 (regTwo!32800 (regOne!32800 r!7292))) (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))))) (ite c!1120347 (regTwo!32800 (ite c!1120121 (regOne!32801 (regTwo!32800 (regOne!32800 r!7292))) (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))))) (ite c!1120349 (regOne!32800 (ite c!1120121 (regOne!32801 (regTwo!32800 (regOne!32800 r!7292))) (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))))) (reg!16473 (ite c!1120121 (regOne!32801 (regTwo!32800 (regOne!32800 r!7292))) (regOne!32800 (regTwo!32800 (regOne!32800 r!7292)))))))) (ite (or c!1120350 c!1120347) (ite c!1120121 lt!2343238 (Context!11057 call!519446)) (Context!11057 call!519554)) (h!71057 s!2326)))))

(declare-fun b!6204909 () Bool)

(declare-fun e!3778225 () (Set Context!11056))

(declare-fun call!519557 () (Set Context!11056))

(assert (=> b!6204909 (= e!3778225 (set.union call!519557 call!519556))))

(declare-fun b!6204910 () Bool)

(declare-fun e!3778228 () (Set Context!11056))

(declare-fun e!3778229 () (Set Context!11056))

(assert (=> b!6204910 (= e!3778228 e!3778229)))

(assert (=> b!6204910 (= c!1120349 (is-Concat!24989 (ite c!1120121 (regOne!32801 (regTwo!32800 (regOne!32800 r!7292))) (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))))))))

(declare-fun b!6204911 () Bool)

(declare-fun e!3778230 () Bool)

(assert (=> b!6204911 (= c!1120347 e!3778230)))

(declare-fun res!2566233 () Bool)

(assert (=> b!6204911 (=> (not res!2566233) (not e!3778230))))

(assert (=> b!6204911 (= res!2566233 (is-Concat!24989 (ite c!1120121 (regOne!32801 (regTwo!32800 (regOne!32800 r!7292))) (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))))))))

(assert (=> b!6204911 (= e!3778225 e!3778228)))

(declare-fun bm!519550 () Bool)

(declare-fun call!519559 () (Set Context!11056))

(assert (=> bm!519550 (= call!519559 call!519556)))

(declare-fun b!6204912 () Bool)

(declare-fun c!1120346 () Bool)

(assert (=> b!6204912 (= c!1120346 (is-Star!16144 (ite c!1120121 (regOne!32801 (regTwo!32800 (regOne!32800 r!7292))) (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))))))))

(declare-fun e!3778227 () (Set Context!11056))

(assert (=> b!6204912 (= e!3778229 e!3778227)))

(declare-fun d!1944948 () Bool)

(declare-fun c!1120348 () Bool)

(assert (=> d!1944948 (= c!1120348 (and (is-ElementMatch!16144 (ite c!1120121 (regOne!32801 (regTwo!32800 (regOne!32800 r!7292))) (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))))) (= (c!1120079 (ite c!1120121 (regOne!32801 (regTwo!32800 (regOne!32800 r!7292))) (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))))) (h!71057 s!2326))))))

(declare-fun e!3778226 () (Set Context!11056))

(assert (=> d!1944948 (= (derivationStepZipperDown!1392 (ite c!1120121 (regOne!32801 (regTwo!32800 (regOne!32800 r!7292))) (regOne!32800 (regTwo!32800 (regOne!32800 r!7292)))) (ite c!1120121 lt!2343238 (Context!11057 call!519446)) (h!71057 s!2326)) e!3778226)))

(declare-fun bm!519551 () Bool)

(declare-fun call!519555 () (Set Context!11056))

(assert (=> bm!519551 (= call!519555 call!519559)))

(declare-fun b!6204913 () Bool)

(assert (=> b!6204913 (= e!3778226 e!3778225)))

(assert (=> b!6204913 (= c!1120350 (is-Union!16144 (ite c!1120121 (regOne!32801 (regTwo!32800 (regOne!32800 r!7292))) (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))))))))

(declare-fun b!6204914 () Bool)

(assert (=> b!6204914 (= e!3778227 (as set.empty (Set Context!11056)))))

(declare-fun call!519558 () List!64731)

(declare-fun bm!519552 () Bool)

(assert (=> bm!519552 (= call!519557 (derivationStepZipperDown!1392 (ite c!1120350 (regOne!32801 (ite c!1120121 (regOne!32801 (regTwo!32800 (regOne!32800 r!7292))) (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))))) (regOne!32800 (ite c!1120121 (regOne!32801 (regTwo!32800 (regOne!32800 r!7292))) (regOne!32800 (regTwo!32800 (regOne!32800 r!7292)))))) (ite c!1120350 (ite c!1120121 lt!2343238 (Context!11057 call!519446)) (Context!11057 call!519558)) (h!71057 s!2326)))))

(declare-fun b!6204915 () Bool)

(assert (=> b!6204915 (= e!3778228 (set.union call!519557 call!519559))))

(declare-fun b!6204916 () Bool)

(assert (=> b!6204916 (= e!3778229 call!519555)))

(declare-fun bm!519553 () Bool)

(assert (=> bm!519553 (= call!519554 call!519558)))

(declare-fun b!6204917 () Bool)

(assert (=> b!6204917 (= e!3778226 (set.insert (ite c!1120121 lt!2343238 (Context!11057 call!519446)) (as set.empty (Set Context!11056))))))

(declare-fun b!6204918 () Bool)

(assert (=> b!6204918 (= e!3778227 call!519555)))

(declare-fun b!6204919 () Bool)

(assert (=> b!6204919 (= e!3778230 (nullable!6137 (regOne!32800 (ite c!1120121 (regOne!32801 (regTwo!32800 (regOne!32800 r!7292))) (regOne!32800 (regTwo!32800 (regOne!32800 r!7292)))))))))

(declare-fun bm!519554 () Bool)

(assert (=> bm!519554 (= call!519558 ($colon$colon!2013 (exprs!6028 (ite c!1120121 lt!2343238 (Context!11057 call!519446))) (ite (or c!1120347 c!1120349) (regTwo!32800 (ite c!1120121 (regOne!32801 (regTwo!32800 (regOne!32800 r!7292))) (regOne!32800 (regTwo!32800 (regOne!32800 r!7292))))) (ite c!1120121 (regOne!32801 (regTwo!32800 (regOne!32800 r!7292))) (regOne!32800 (regTwo!32800 (regOne!32800 r!7292)))))))))

(assert (= (and d!1944948 c!1120348) b!6204917))

(assert (= (and d!1944948 (not c!1120348)) b!6204913))

(assert (= (and b!6204913 c!1120350) b!6204909))

(assert (= (and b!6204913 (not c!1120350)) b!6204911))

(assert (= (and b!6204911 res!2566233) b!6204919))

(assert (= (and b!6204911 c!1120347) b!6204915))

(assert (= (and b!6204911 (not c!1120347)) b!6204910))

(assert (= (and b!6204910 c!1120349) b!6204916))

(assert (= (and b!6204910 (not c!1120349)) b!6204912))

(assert (= (and b!6204912 c!1120346) b!6204918))

(assert (= (and b!6204912 (not c!1120346)) b!6204914))

(assert (= (or b!6204916 b!6204918) bm!519553))

(assert (= (or b!6204916 b!6204918) bm!519551))

(assert (= (or b!6204915 bm!519553) bm!519554))

(assert (= (or b!6204915 bm!519551) bm!519550))

(assert (= (or b!6204909 bm!519550) bm!519549))

(assert (= (or b!6204909 b!6204915) bm!519552))

(declare-fun m!7036438 () Bool)

(assert (=> bm!519554 m!7036438))

(declare-fun m!7036440 () Bool)

(assert (=> b!6204919 m!7036440))

(declare-fun m!7036442 () Bool)

(assert (=> bm!519552 m!7036442))

(declare-fun m!7036444 () Bool)

(assert (=> b!6204917 m!7036444))

(declare-fun m!7036446 () Bool)

(assert (=> bm!519549 m!7036446))

(assert (=> bm!519440 d!1944948))

(declare-fun d!1944950 () Bool)

(declare-fun lambda!339110 () Int)

(declare-fun exists!2475 ((Set Context!11056) Int) Bool)

(assert (=> d!1944950 (= (nullableZipper!1918 (set.union lt!2343239 lt!2343240)) (exists!2475 (set.union lt!2343239 lt!2343240) lambda!339110))))

(declare-fun bs!1539170 () Bool)

(assert (= bs!1539170 d!1944950))

(declare-fun m!7036448 () Bool)

(assert (=> bs!1539170 m!7036448))

(assert (=> b!6204248 d!1944950))

(declare-fun b!6204920 () Bool)

(declare-fun e!3778232 () List!64733)

(assert (=> b!6204920 (= e!3778232 (_2!36426 (get!22310 lt!2343314)))))

(declare-fun d!1944952 () Bool)

(declare-fun e!3778231 () Bool)

(assert (=> d!1944952 e!3778231))

(declare-fun res!2566234 () Bool)

(assert (=> d!1944952 (=> (not res!2566234) (not e!3778231))))

(declare-fun lt!2343378 () List!64733)

(assert (=> d!1944952 (= res!2566234 (= (content!12085 lt!2343378) (set.union (content!12085 (_1!36426 (get!22310 lt!2343314))) (content!12085 (_2!36426 (get!22310 lt!2343314))))))))

(assert (=> d!1944952 (= lt!2343378 e!3778232)))

(declare-fun c!1120353 () Bool)

(assert (=> d!1944952 (= c!1120353 (is-Nil!64609 (_1!36426 (get!22310 lt!2343314))))))

(assert (=> d!1944952 (= (++!14222 (_1!36426 (get!22310 lt!2343314)) (_2!36426 (get!22310 lt!2343314))) lt!2343378)))

(declare-fun b!6204922 () Bool)

(declare-fun res!2566235 () Bool)

(assert (=> b!6204922 (=> (not res!2566235) (not e!3778231))))

(assert (=> b!6204922 (= res!2566235 (= (size!40271 lt!2343378) (+ (size!40271 (_1!36426 (get!22310 lt!2343314))) (size!40271 (_2!36426 (get!22310 lt!2343314))))))))

(declare-fun b!6204921 () Bool)

(assert (=> b!6204921 (= e!3778232 (Cons!64609 (h!71057 (_1!36426 (get!22310 lt!2343314))) (++!14222 (t!378253 (_1!36426 (get!22310 lt!2343314))) (_2!36426 (get!22310 lt!2343314)))))))

(declare-fun b!6204923 () Bool)

(assert (=> b!6204923 (= e!3778231 (or (not (= (_2!36426 (get!22310 lt!2343314)) Nil!64609)) (= lt!2343378 (_1!36426 (get!22310 lt!2343314)))))))

(assert (= (and d!1944952 c!1120353) b!6204920))

(assert (= (and d!1944952 (not c!1120353)) b!6204921))

(assert (= (and d!1944952 res!2566234) b!6204922))

(assert (= (and b!6204922 res!2566235) b!6204923))

(declare-fun m!7036450 () Bool)

(assert (=> d!1944952 m!7036450))

(declare-fun m!7036452 () Bool)

(assert (=> d!1944952 m!7036452))

(declare-fun m!7036454 () Bool)

(assert (=> d!1944952 m!7036454))

(declare-fun m!7036456 () Bool)

(assert (=> b!6204922 m!7036456))

(declare-fun m!7036458 () Bool)

(assert (=> b!6204922 m!7036458))

(declare-fun m!7036460 () Bool)

(assert (=> b!6204922 m!7036460))

(declare-fun m!7036462 () Bool)

(assert (=> b!6204921 m!7036462))

(assert (=> b!6204384 d!1944952))

(declare-fun d!1944954 () Bool)

(assert (=> d!1944954 (= (get!22310 lt!2343314) (v!52177 lt!2343314))))

(assert (=> b!6204384 d!1944954))

(assert (=> d!1944800 d!1944882))

(declare-fun bm!519555 () Bool)

(declare-fun call!519560 () Bool)

(assert (=> bm!519555 (= call!519560 (isEmpty!36608 (_2!36426 (get!22310 lt!2343314))))))

(declare-fun b!6204924 () Bool)

(declare-fun e!3778236 () Bool)

(assert (=> b!6204924 (= e!3778236 (matchR!8327 (derivativeStep!4857 (regTwo!32800 r!7292) (head!12797 (_2!36426 (get!22310 lt!2343314)))) (tail!11882 (_2!36426 (get!22310 lt!2343314)))))))

(declare-fun b!6204925 () Bool)

(declare-fun e!3778237 () Bool)

(declare-fun e!3778233 () Bool)

(assert (=> b!6204925 (= e!3778237 e!3778233)))

(declare-fun c!1120355 () Bool)

(assert (=> b!6204925 (= c!1120355 (is-EmptyLang!16144 (regTwo!32800 r!7292)))))

(declare-fun b!6204926 () Bool)

(declare-fun res!2566241 () Bool)

(declare-fun e!3778234 () Bool)

(assert (=> b!6204926 (=> res!2566241 e!3778234)))

(declare-fun e!3778239 () Bool)

(assert (=> b!6204926 (= res!2566241 e!3778239)))

(declare-fun res!2566237 () Bool)

(assert (=> b!6204926 (=> (not res!2566237) (not e!3778239))))

(declare-fun lt!2343379 () Bool)

(assert (=> b!6204926 (= res!2566237 lt!2343379)))

(declare-fun b!6204927 () Bool)

(assert (=> b!6204927 (= e!3778233 (not lt!2343379))))

(declare-fun b!6204928 () Bool)

(declare-fun res!2566239 () Bool)

(declare-fun e!3778238 () Bool)

(assert (=> b!6204928 (=> res!2566239 e!3778238)))

(assert (=> b!6204928 (= res!2566239 (not (isEmpty!36608 (tail!11882 (_2!36426 (get!22310 lt!2343314))))))))

(declare-fun b!6204929 () Bool)

(assert (=> b!6204929 (= e!3778237 (= lt!2343379 call!519560))))

(declare-fun b!6204930 () Bool)

(declare-fun e!3778235 () Bool)

(assert (=> b!6204930 (= e!3778235 e!3778238)))

(declare-fun res!2566242 () Bool)

(assert (=> b!6204930 (=> res!2566242 e!3778238)))

(assert (=> b!6204930 (= res!2566242 call!519560)))

(declare-fun b!6204931 () Bool)

(declare-fun res!2566238 () Bool)

(assert (=> b!6204931 (=> res!2566238 e!3778234)))

(assert (=> b!6204931 (= res!2566238 (not (is-ElementMatch!16144 (regTwo!32800 r!7292))))))

(assert (=> b!6204931 (= e!3778233 e!3778234)))

(declare-fun d!1944956 () Bool)

(assert (=> d!1944956 e!3778237))

(declare-fun c!1120356 () Bool)

(assert (=> d!1944956 (= c!1120356 (is-EmptyExpr!16144 (regTwo!32800 r!7292)))))

(assert (=> d!1944956 (= lt!2343379 e!3778236)))

(declare-fun c!1120354 () Bool)

(assert (=> d!1944956 (= c!1120354 (isEmpty!36608 (_2!36426 (get!22310 lt!2343314))))))

(assert (=> d!1944956 (validRegex!7880 (regTwo!32800 r!7292))))

(assert (=> d!1944956 (= (matchR!8327 (regTwo!32800 r!7292) (_2!36426 (get!22310 lt!2343314))) lt!2343379)))

(declare-fun b!6204932 () Bool)

(declare-fun res!2566243 () Bool)

(assert (=> b!6204932 (=> (not res!2566243) (not e!3778239))))

(assert (=> b!6204932 (= res!2566243 (isEmpty!36608 (tail!11882 (_2!36426 (get!22310 lt!2343314)))))))

(declare-fun b!6204933 () Bool)

(assert (=> b!6204933 (= e!3778239 (= (head!12797 (_2!36426 (get!22310 lt!2343314))) (c!1120079 (regTwo!32800 r!7292))))))

(declare-fun b!6204934 () Bool)

(assert (=> b!6204934 (= e!3778238 (not (= (head!12797 (_2!36426 (get!22310 lt!2343314))) (c!1120079 (regTwo!32800 r!7292)))))))

(declare-fun b!6204935 () Bool)

(declare-fun res!2566240 () Bool)

(assert (=> b!6204935 (=> (not res!2566240) (not e!3778239))))

(assert (=> b!6204935 (= res!2566240 (not call!519560))))

(declare-fun b!6204936 () Bool)

(assert (=> b!6204936 (= e!3778234 e!3778235)))

(declare-fun res!2566236 () Bool)

(assert (=> b!6204936 (=> (not res!2566236) (not e!3778235))))

(assert (=> b!6204936 (= res!2566236 (not lt!2343379))))

(declare-fun b!6204937 () Bool)

(assert (=> b!6204937 (= e!3778236 (nullable!6137 (regTwo!32800 r!7292)))))

(assert (= (and d!1944956 c!1120354) b!6204937))

(assert (= (and d!1944956 (not c!1120354)) b!6204924))

(assert (= (and d!1944956 c!1120356) b!6204929))

(assert (= (and d!1944956 (not c!1120356)) b!6204925))

(assert (= (and b!6204925 c!1120355) b!6204927))

(assert (= (and b!6204925 (not c!1120355)) b!6204931))

(assert (= (and b!6204931 (not res!2566238)) b!6204926))

(assert (= (and b!6204926 res!2566237) b!6204935))

(assert (= (and b!6204935 res!2566240) b!6204932))

(assert (= (and b!6204932 res!2566243) b!6204933))

(assert (= (and b!6204926 (not res!2566241)) b!6204936))

(assert (= (and b!6204936 res!2566236) b!6204930))

(assert (= (and b!6204930 (not res!2566242)) b!6204928))

(assert (= (and b!6204928 (not res!2566239)) b!6204934))

(assert (= (or b!6204929 b!6204930 b!6204935) bm!519555))

(declare-fun m!7036464 () Bool)

(assert (=> b!6204932 m!7036464))

(assert (=> b!6204932 m!7036464))

(declare-fun m!7036466 () Bool)

(assert (=> b!6204932 m!7036466))

(declare-fun m!7036468 () Bool)

(assert (=> d!1944956 m!7036468))

(declare-fun m!7036470 () Bool)

(assert (=> d!1944956 m!7036470))

(assert (=> bm!519555 m!7036468))

(assert (=> b!6204928 m!7036464))

(assert (=> b!6204928 m!7036464))

(assert (=> b!6204928 m!7036466))

(declare-fun m!7036472 () Bool)

(assert (=> b!6204933 m!7036472))

(declare-fun m!7036474 () Bool)

(assert (=> b!6204937 m!7036474))

(assert (=> b!6204934 m!7036472))

(assert (=> b!6204924 m!7036472))

(assert (=> b!6204924 m!7036472))

(declare-fun m!7036476 () Bool)

(assert (=> b!6204924 m!7036476))

(assert (=> b!6204924 m!7036464))

(assert (=> b!6204924 m!7036476))

(assert (=> b!6204924 m!7036464))

(declare-fun m!7036478 () Bool)

(assert (=> b!6204924 m!7036478))

(assert (=> b!6204386 d!1944956))

(assert (=> b!6204386 d!1944954))

(assert (=> bm!519448 d!1944896))

(declare-fun b!6204952 () Bool)

(declare-fun e!3778256 () Bool)

(declare-fun call!519565 () Bool)

(assert (=> b!6204952 (= e!3778256 call!519565)))

(declare-fun bm!519560 () Bool)

(declare-fun c!1120359 () Bool)

(assert (=> bm!519560 (= call!519565 (nullable!6137 (ite c!1120359 (regTwo!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))))))))

(declare-fun b!6204953 () Bool)

(declare-fun e!3778255 () Bool)

(declare-fun e!3778257 () Bool)

(assert (=> b!6204953 (= e!3778255 e!3778257)))

(declare-fun res!2566255 () Bool)

(declare-fun call!519566 () Bool)

(assert (=> b!6204953 (= res!2566255 call!519566)))

(assert (=> b!6204953 (=> (not res!2566255) (not e!3778257))))

(declare-fun b!6204954 () Bool)

(assert (=> b!6204954 (= e!3778257 call!519565)))

(declare-fun b!6204955 () Bool)

(declare-fun e!3778252 () Bool)

(declare-fun e!3778254 () Bool)

(assert (=> b!6204955 (= e!3778252 e!3778254)))

(declare-fun res!2566257 () Bool)

(assert (=> b!6204955 (=> (not res!2566257) (not e!3778254))))

(assert (=> b!6204955 (= res!2566257 (and (not (is-EmptyLang!16144 (h!71055 (exprs!6028 (h!71056 zl!343))))) (not (is-ElementMatch!16144 (h!71055 (exprs!6028 (h!71056 zl!343)))))))))

(declare-fun d!1944958 () Bool)

(declare-fun res!2566258 () Bool)

(assert (=> d!1944958 (=> res!2566258 e!3778252)))

(assert (=> d!1944958 (= res!2566258 (is-EmptyExpr!16144 (h!71055 (exprs!6028 (h!71056 zl!343)))))))

(assert (=> d!1944958 (= (nullableFct!2093 (h!71055 (exprs!6028 (h!71056 zl!343)))) e!3778252)))

(declare-fun bm!519561 () Bool)

(assert (=> bm!519561 (= call!519566 (nullable!6137 (ite c!1120359 (regOne!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))))))))

(declare-fun b!6204956 () Bool)

(assert (=> b!6204956 (= e!3778255 e!3778256)))

(declare-fun res!2566254 () Bool)

(assert (=> b!6204956 (= res!2566254 call!519566)))

(assert (=> b!6204956 (=> res!2566254 e!3778256)))

(declare-fun b!6204957 () Bool)

(declare-fun e!3778253 () Bool)

(assert (=> b!6204957 (= e!3778254 e!3778253)))

(declare-fun res!2566256 () Bool)

(assert (=> b!6204957 (=> res!2566256 e!3778253)))

(assert (=> b!6204957 (= res!2566256 (is-Star!16144 (h!71055 (exprs!6028 (h!71056 zl!343)))))))

(declare-fun b!6204958 () Bool)

(assert (=> b!6204958 (= e!3778253 e!3778255)))

(assert (=> b!6204958 (= c!1120359 (is-Union!16144 (h!71055 (exprs!6028 (h!71056 zl!343)))))))

(assert (= (and d!1944958 (not res!2566258)) b!6204955))

(assert (= (and b!6204955 res!2566257) b!6204957))

(assert (= (and b!6204957 (not res!2566256)) b!6204958))

(assert (= (and b!6204958 c!1120359) b!6204956))

(assert (= (and b!6204958 (not c!1120359)) b!6204953))

(assert (= (and b!6204956 (not res!2566254)) b!6204952))

(assert (= (and b!6204953 res!2566255) b!6204954))

(assert (= (or b!6204952 b!6204954) bm!519560))

(assert (= (or b!6204956 b!6204953) bm!519561))

(declare-fun m!7036480 () Bool)

(assert (=> bm!519560 m!7036480))

(declare-fun m!7036482 () Bool)

(assert (=> bm!519561 m!7036482))

(assert (=> d!1944748 d!1944958))

(declare-fun d!1944960 () Bool)

(declare-fun res!2566259 () Bool)

(declare-fun e!3778258 () Bool)

(assert (=> d!1944960 (=> res!2566259 e!3778258)))

(assert (=> d!1944960 (= res!2566259 (is-Nil!64607 lt!2343291))))

(assert (=> d!1944960 (= (forall!15258 lt!2343291 lambda!339048) e!3778258)))

(declare-fun b!6204959 () Bool)

(declare-fun e!3778259 () Bool)

(assert (=> b!6204959 (= e!3778258 e!3778259)))

(declare-fun res!2566260 () Bool)

(assert (=> b!6204959 (=> (not res!2566260) (not e!3778259))))

(assert (=> b!6204959 (= res!2566260 (dynLambda!25484 lambda!339048 (h!71055 lt!2343291)))))

(declare-fun b!6204960 () Bool)

(assert (=> b!6204960 (= e!3778259 (forall!15258 (t!378251 lt!2343291) lambda!339048))))

(assert (= (and d!1944960 (not res!2566259)) b!6204959))

(assert (= (and b!6204959 res!2566260) b!6204960))

(declare-fun b_lambda!235967 () Bool)

(assert (=> (not b_lambda!235967) (not b!6204959)))

(declare-fun m!7036484 () Bool)

(assert (=> b!6204959 m!7036484))

(declare-fun m!7036486 () Bool)

(assert (=> b!6204960 m!7036486))

(assert (=> d!1944766 d!1944960))

(declare-fun d!1944962 () Bool)

(declare-fun c!1120360 () Bool)

(assert (=> d!1944962 (= c!1120360 (isEmpty!36608 (tail!11882 (t!378253 s!2326))))))

(declare-fun e!3778260 () Bool)

(assert (=> d!1944962 (= (matchZipper!2156 (derivationStepZipper!2110 lt!2343239 (head!12797 (t!378253 s!2326))) (tail!11882 (t!378253 s!2326))) e!3778260)))

(declare-fun b!6204961 () Bool)

(assert (=> b!6204961 (= e!3778260 (nullableZipper!1918 (derivationStepZipper!2110 lt!2343239 (head!12797 (t!378253 s!2326)))))))

(declare-fun b!6204962 () Bool)

(assert (=> b!6204962 (= e!3778260 (matchZipper!2156 (derivationStepZipper!2110 (derivationStepZipper!2110 lt!2343239 (head!12797 (t!378253 s!2326))) (head!12797 (tail!11882 (t!378253 s!2326)))) (tail!11882 (tail!11882 (t!378253 s!2326)))))))

(assert (= (and d!1944962 c!1120360) b!6204961))

(assert (= (and d!1944962 (not c!1120360)) b!6204962))

(assert (=> d!1944962 m!7035972))

(assert (=> d!1944962 m!7036334))

(assert (=> b!6204961 m!7035970))

(declare-fun m!7036488 () Bool)

(assert (=> b!6204961 m!7036488))

(assert (=> b!6204962 m!7035972))

(assert (=> b!6204962 m!7036338))

(assert (=> b!6204962 m!7035970))

(assert (=> b!6204962 m!7036338))

(declare-fun m!7036490 () Bool)

(assert (=> b!6204962 m!7036490))

(assert (=> b!6204962 m!7035972))

(assert (=> b!6204962 m!7036342))

(assert (=> b!6204962 m!7036490))

(assert (=> b!6204962 m!7036342))

(declare-fun m!7036492 () Bool)

(assert (=> b!6204962 m!7036492))

(assert (=> b!6204247 d!1944962))

(declare-fun bs!1539171 () Bool)

(declare-fun d!1944964 () Bool)

(assert (= bs!1539171 (and d!1944964 b!6203896)))

(declare-fun lambda!339111 () Int)

(assert (=> bs!1539171 (= (= (head!12797 (t!378253 s!2326)) (h!71057 s!2326)) (= lambda!339111 lambda!339028))))

(declare-fun bs!1539172 () Bool)

(assert (= bs!1539172 (and d!1944964 d!1944912)))

(assert (=> bs!1539172 (= lambda!339111 lambda!339104)))

(assert (=> d!1944964 true))

(assert (=> d!1944964 (= (derivationStepZipper!2110 lt!2343239 (head!12797 (t!378253 s!2326))) (flatMap!1649 lt!2343239 lambda!339111))))

(declare-fun bs!1539173 () Bool)

(assert (= bs!1539173 d!1944964))

(declare-fun m!7036494 () Bool)

(assert (=> bs!1539173 m!7036494))

(assert (=> b!6204247 d!1944964))

(assert (=> b!6204247 d!1944914))

(assert (=> b!6204247 d!1944916))

(declare-fun bm!519562 () Bool)

(declare-fun call!519567 () Bool)

(assert (=> bm!519562 (= call!519567 (isEmpty!36608 s!2326))))

(declare-fun b!6204963 () Bool)

(declare-fun e!3778264 () Bool)

(assert (=> b!6204963 (= e!3778264 (matchR!8327 (derivativeStep!4857 (regTwo!32800 r!7292) (head!12797 s!2326)) (tail!11882 s!2326)))))

(declare-fun b!6204964 () Bool)

(declare-fun e!3778265 () Bool)

(declare-fun e!3778261 () Bool)

(assert (=> b!6204964 (= e!3778265 e!3778261)))

(declare-fun c!1120362 () Bool)

(assert (=> b!6204964 (= c!1120362 (is-EmptyLang!16144 (regTwo!32800 r!7292)))))

(declare-fun b!6204965 () Bool)

(declare-fun res!2566266 () Bool)

(declare-fun e!3778262 () Bool)

(assert (=> b!6204965 (=> res!2566266 e!3778262)))

(declare-fun e!3778267 () Bool)

(assert (=> b!6204965 (= res!2566266 e!3778267)))

(declare-fun res!2566262 () Bool)

(assert (=> b!6204965 (=> (not res!2566262) (not e!3778267))))

(declare-fun lt!2343380 () Bool)

(assert (=> b!6204965 (= res!2566262 lt!2343380)))

(declare-fun b!6204966 () Bool)

(assert (=> b!6204966 (= e!3778261 (not lt!2343380))))

(declare-fun b!6204967 () Bool)

(declare-fun res!2566264 () Bool)

(declare-fun e!3778266 () Bool)

(assert (=> b!6204967 (=> res!2566264 e!3778266)))

(assert (=> b!6204967 (= res!2566264 (not (isEmpty!36608 (tail!11882 s!2326))))))

(declare-fun b!6204968 () Bool)

(assert (=> b!6204968 (= e!3778265 (= lt!2343380 call!519567))))

(declare-fun b!6204969 () Bool)

(declare-fun e!3778263 () Bool)

(assert (=> b!6204969 (= e!3778263 e!3778266)))

(declare-fun res!2566267 () Bool)

(assert (=> b!6204969 (=> res!2566267 e!3778266)))

(assert (=> b!6204969 (= res!2566267 call!519567)))

(declare-fun b!6204970 () Bool)

(declare-fun res!2566263 () Bool)

(assert (=> b!6204970 (=> res!2566263 e!3778262)))

(assert (=> b!6204970 (= res!2566263 (not (is-ElementMatch!16144 (regTwo!32800 r!7292))))))

(assert (=> b!6204970 (= e!3778261 e!3778262)))

(declare-fun d!1944966 () Bool)

(assert (=> d!1944966 e!3778265))

(declare-fun c!1120363 () Bool)

(assert (=> d!1944966 (= c!1120363 (is-EmptyExpr!16144 (regTwo!32800 r!7292)))))

(assert (=> d!1944966 (= lt!2343380 e!3778264)))

(declare-fun c!1120361 () Bool)

(assert (=> d!1944966 (= c!1120361 (isEmpty!36608 s!2326))))

(assert (=> d!1944966 (validRegex!7880 (regTwo!32800 r!7292))))

(assert (=> d!1944966 (= (matchR!8327 (regTwo!32800 r!7292) s!2326) lt!2343380)))

(declare-fun b!6204971 () Bool)

(declare-fun res!2566268 () Bool)

(assert (=> b!6204971 (=> (not res!2566268) (not e!3778267))))

(assert (=> b!6204971 (= res!2566268 (isEmpty!36608 (tail!11882 s!2326)))))

(declare-fun b!6204972 () Bool)

(assert (=> b!6204972 (= e!3778267 (= (head!12797 s!2326) (c!1120079 (regTwo!32800 r!7292))))))

(declare-fun b!6204973 () Bool)

(assert (=> b!6204973 (= e!3778266 (not (= (head!12797 s!2326) (c!1120079 (regTwo!32800 r!7292)))))))

(declare-fun b!6204974 () Bool)

(declare-fun res!2566265 () Bool)

(assert (=> b!6204974 (=> (not res!2566265) (not e!3778267))))

(assert (=> b!6204974 (= res!2566265 (not call!519567))))

(declare-fun b!6204975 () Bool)

(assert (=> b!6204975 (= e!3778262 e!3778263)))

(declare-fun res!2566261 () Bool)

(assert (=> b!6204975 (=> (not res!2566261) (not e!3778263))))

(assert (=> b!6204975 (= res!2566261 (not lt!2343380))))

(declare-fun b!6204976 () Bool)

(assert (=> b!6204976 (= e!3778264 (nullable!6137 (regTwo!32800 r!7292)))))

(assert (= (and d!1944966 c!1120361) b!6204976))

(assert (= (and d!1944966 (not c!1120361)) b!6204963))

(assert (= (and d!1944966 c!1120363) b!6204968))

(assert (= (and d!1944966 (not c!1120363)) b!6204964))

(assert (= (and b!6204964 c!1120362) b!6204966))

(assert (= (and b!6204964 (not c!1120362)) b!6204970))

(assert (= (and b!6204970 (not res!2566263)) b!6204965))

(assert (= (and b!6204965 res!2566262) b!6204974))

(assert (= (and b!6204974 res!2566265) b!6204971))

(assert (= (and b!6204971 res!2566268) b!6204972))

(assert (= (and b!6204965 (not res!2566266)) b!6204975))

(assert (= (and b!6204975 res!2566261) b!6204969))

(assert (= (and b!6204969 (not res!2566267)) b!6204967))

(assert (= (and b!6204967 (not res!2566264)) b!6204973))

(assert (= (or b!6204968 b!6204969 b!6204974) bm!519562))

(assert (=> b!6204971 m!7035948))

(assert (=> b!6204971 m!7035948))

(assert (=> b!6204971 m!7035950))

(assert (=> d!1944966 m!7035930))

(assert (=> d!1944966 m!7036470))

(assert (=> bm!519562 m!7035930))

(assert (=> b!6204967 m!7035948))

(assert (=> b!6204967 m!7035948))

(assert (=> b!6204967 m!7035950))

(assert (=> b!6204972 m!7035952))

(assert (=> b!6204976 m!7036474))

(assert (=> b!6204973 m!7035952))

(assert (=> b!6204963 m!7035952))

(assert (=> b!6204963 m!7035952))

(declare-fun m!7036496 () Bool)

(assert (=> b!6204963 m!7036496))

(assert (=> b!6204963 m!7035948))

(assert (=> b!6204963 m!7036496))

(assert (=> b!6204963 m!7035948))

(declare-fun m!7036498 () Bool)

(assert (=> b!6204963 m!7036498))

(assert (=> b!6204388 d!1944966))

(declare-fun bs!1539174 () Bool)

(declare-fun d!1944968 () Bool)

(assert (= bs!1539174 (and d!1944968 d!1944768)))

(declare-fun lambda!339112 () Int)

(assert (=> bs!1539174 (= lambda!339112 lambda!339049)))

(declare-fun bs!1539175 () Bool)

(assert (= bs!1539175 (and d!1944968 d!1944906)))

(assert (=> bs!1539175 (= lambda!339112 lambda!339101)))

(declare-fun bs!1539176 () Bool)

(assert (= bs!1539176 (and d!1944968 d!1944794)))

(assert (=> bs!1539176 (= lambda!339112 lambda!339065)))

(declare-fun bs!1539177 () Bool)

(assert (= bs!1539177 (and d!1944968 d!1944764)))

(assert (=> bs!1539177 (= lambda!339112 lambda!339045)))

(declare-fun bs!1539178 () Bool)

(assert (= bs!1539178 (and d!1944968 d!1944792)))

(assert (=> bs!1539178 (= lambda!339112 lambda!339062)))

(declare-fun bs!1539179 () Bool)

(assert (= bs!1539179 (and d!1944968 d!1944766)))

(assert (=> bs!1539179 (= lambda!339112 lambda!339048)))

(declare-fun bs!1539180 () Bool)

(assert (= bs!1539180 (and d!1944968 d!1944936)))

(assert (=> bs!1539180 (= lambda!339112 lambda!339105)))

(declare-fun bs!1539181 () Bool)

(assert (= bs!1539181 (and d!1944968 d!1944736)))

(assert (=> bs!1539181 (= lambda!339112 lambda!339042)))

(declare-fun bs!1539182 () Bool)

(assert (= bs!1539182 (and d!1944968 d!1944900)))

(assert (=> bs!1539182 (= lambda!339112 lambda!339100)))

(assert (=> d!1944968 (= (inv!83608 (h!71056 (t!378252 zl!343))) (forall!15258 (exprs!6028 (h!71056 (t!378252 zl!343))) lambda!339112))))

(declare-fun bs!1539183 () Bool)

(assert (= bs!1539183 d!1944968))

(declare-fun m!7036500 () Bool)

(assert (=> bs!1539183 m!7036500))

(assert (=> b!6204454 d!1944968))

(assert (=> b!6204224 d!1944876))

(declare-fun b!6204977 () Bool)

(declare-fun e!3778270 () Bool)

(declare-fun e!3778272 () Bool)

(assert (=> b!6204977 (= e!3778270 e!3778272)))

(declare-fun c!1120364 () Bool)

(assert (=> b!6204977 (= c!1120364 (is-Union!16144 lt!2343285))))

(declare-fun d!1944970 () Bool)

(declare-fun res!2566270 () Bool)

(declare-fun e!3778271 () Bool)

(assert (=> d!1944970 (=> res!2566270 e!3778271)))

(assert (=> d!1944970 (= res!2566270 (is-ElementMatch!16144 lt!2343285))))

(assert (=> d!1944970 (= (validRegex!7880 lt!2343285) e!3778271)))

(declare-fun b!6204978 () Bool)

(declare-fun e!3778274 () Bool)

(declare-fun call!519569 () Bool)

(assert (=> b!6204978 (= e!3778274 call!519569)))

(declare-fun b!6204979 () Bool)

(assert (=> b!6204979 (= e!3778271 e!3778270)))

(declare-fun c!1120365 () Bool)

(assert (=> b!6204979 (= c!1120365 (is-Star!16144 lt!2343285))))

(declare-fun b!6204980 () Bool)

(declare-fun res!2566271 () Bool)

(declare-fun e!3778269 () Bool)

(assert (=> b!6204980 (=> res!2566271 e!3778269)))

(assert (=> b!6204980 (= res!2566271 (not (is-Concat!24989 lt!2343285)))))

(assert (=> b!6204980 (= e!3778272 e!3778269)))

(declare-fun b!6204981 () Bool)

(declare-fun res!2566269 () Bool)

(declare-fun e!3778273 () Bool)

(assert (=> b!6204981 (=> (not res!2566269) (not e!3778273))))

(declare-fun call!519568 () Bool)

(assert (=> b!6204981 (= res!2566269 call!519568)))

(assert (=> b!6204981 (= e!3778272 e!3778273)))

(declare-fun bm!519563 () Bool)

(assert (=> bm!519563 (= call!519568 call!519569)))

(declare-fun bm!519564 () Bool)

(declare-fun call!519570 () Bool)

(assert (=> bm!519564 (= call!519570 (validRegex!7880 (ite c!1120364 (regTwo!32801 lt!2343285) (regTwo!32800 lt!2343285))))))

(declare-fun b!6204982 () Bool)

(declare-fun e!3778268 () Bool)

(assert (=> b!6204982 (= e!3778269 e!3778268)))

(declare-fun res!2566272 () Bool)

(assert (=> b!6204982 (=> (not res!2566272) (not e!3778268))))

(assert (=> b!6204982 (= res!2566272 call!519568)))

(declare-fun bm!519565 () Bool)

(assert (=> bm!519565 (= call!519569 (validRegex!7880 (ite c!1120365 (reg!16473 lt!2343285) (ite c!1120364 (regOne!32801 lt!2343285) (regOne!32800 lt!2343285)))))))

(declare-fun b!6204983 () Bool)

(assert (=> b!6204983 (= e!3778273 call!519570)))

(declare-fun b!6204984 () Bool)

(assert (=> b!6204984 (= e!3778270 e!3778274)))

(declare-fun res!2566273 () Bool)

(assert (=> b!6204984 (= res!2566273 (not (nullable!6137 (reg!16473 lt!2343285))))))

(assert (=> b!6204984 (=> (not res!2566273) (not e!3778274))))

(declare-fun b!6204985 () Bool)

(assert (=> b!6204985 (= e!3778268 call!519570)))

(assert (= (and d!1944970 (not res!2566270)) b!6204979))

(assert (= (and b!6204979 c!1120365) b!6204984))

(assert (= (and b!6204979 (not c!1120365)) b!6204977))

(assert (= (and b!6204984 res!2566273) b!6204978))

(assert (= (and b!6204977 c!1120364) b!6204981))

(assert (= (and b!6204977 (not c!1120364)) b!6204980))

(assert (= (and b!6204981 res!2566269) b!6204983))

(assert (= (and b!6204980 (not res!2566271)) b!6204982))

(assert (= (and b!6204982 res!2566272) b!6204985))

(assert (= (or b!6204983 b!6204985) bm!519564))

(assert (= (or b!6204981 b!6204982) bm!519563))

(assert (= (or b!6204978 bm!519563) bm!519565))

(declare-fun m!7036502 () Bool)

(assert (=> bm!519564 m!7036502))

(declare-fun m!7036504 () Bool)

(assert (=> bm!519565 m!7036504))

(declare-fun m!7036506 () Bool)

(assert (=> b!6204984 m!7036506))

(assert (=> d!1944762 d!1944970))

(assert (=> d!1944762 d!1944764))

(assert (=> d!1944762 d!1944766))

(declare-fun d!1944972 () Bool)

(assert (=> d!1944972 (= (isEmpty!36605 (tail!11881 (unfocusZipperList!1565 zl!343))) (is-Nil!64607 (tail!11881 (unfocusZipperList!1565 zl!343))))))

(assert (=> b!6204126 d!1944972))

(declare-fun d!1944974 () Bool)

(assert (=> d!1944974 (= (tail!11881 (unfocusZipperList!1565 zl!343)) (t!378251 (unfocusZipperList!1565 zl!343)))))

(assert (=> b!6204126 d!1944974))

(declare-fun b!6204986 () Bool)

(declare-fun e!3778277 () (Set Context!11056))

(declare-fun call!519571 () (Set Context!11056))

(assert (=> b!6204986 (= e!3778277 call!519571)))

(declare-fun b!6204987 () Bool)

(declare-fun e!3778276 () (Set Context!11056))

(assert (=> b!6204987 (= e!3778276 e!3778277)))

(declare-fun c!1120366 () Bool)

(assert (=> b!6204987 (= c!1120366 (is-Cons!64607 (exprs!6028 (Context!11057 (t!378251 (exprs!6028 lt!2343238))))))))

(declare-fun d!1944976 () Bool)

(declare-fun c!1120367 () Bool)

(declare-fun e!3778275 () Bool)

(assert (=> d!1944976 (= c!1120367 e!3778275)))

(declare-fun res!2566274 () Bool)

(assert (=> d!1944976 (=> (not res!2566274) (not e!3778275))))

(assert (=> d!1944976 (= res!2566274 (is-Cons!64607 (exprs!6028 (Context!11057 (t!378251 (exprs!6028 lt!2343238))))))))

(assert (=> d!1944976 (= (derivationStepZipperUp!1318 (Context!11057 (t!378251 (exprs!6028 lt!2343238))) (h!71057 s!2326)) e!3778276)))

(declare-fun bm!519566 () Bool)

(assert (=> bm!519566 (= call!519571 (derivationStepZipperDown!1392 (h!71055 (exprs!6028 (Context!11057 (t!378251 (exprs!6028 lt!2343238))))) (Context!11057 (t!378251 (exprs!6028 (Context!11057 (t!378251 (exprs!6028 lt!2343238)))))) (h!71057 s!2326)))))

(declare-fun b!6204988 () Bool)

(assert (=> b!6204988 (= e!3778275 (nullable!6137 (h!71055 (exprs!6028 (Context!11057 (t!378251 (exprs!6028 lt!2343238)))))))))

(declare-fun b!6204989 () Bool)

(assert (=> b!6204989 (= e!3778277 (as set.empty (Set Context!11056)))))

(declare-fun b!6204990 () Bool)

(assert (=> b!6204990 (= e!3778276 (set.union call!519571 (derivationStepZipperUp!1318 (Context!11057 (t!378251 (exprs!6028 (Context!11057 (t!378251 (exprs!6028 lt!2343238)))))) (h!71057 s!2326))))))

(assert (= (and d!1944976 res!2566274) b!6204988))

(assert (= (and d!1944976 c!1120367) b!6204990))

(assert (= (and d!1944976 (not c!1120367)) b!6204987))

(assert (= (and b!6204987 c!1120366) b!6204986))

(assert (= (and b!6204987 (not c!1120366)) b!6204989))

(assert (= (or b!6204990 b!6204986) bm!519566))

(declare-fun m!7036508 () Bool)

(assert (=> bm!519566 m!7036508))

(declare-fun m!7036510 () Bool)

(assert (=> b!6204988 m!7036510))

(declare-fun m!7036512 () Bool)

(assert (=> b!6204990 m!7036512))

(assert (=> b!6204036 d!1944976))

(declare-fun d!1944978 () Bool)

(declare-fun res!2566275 () Bool)

(declare-fun e!3778278 () Bool)

(assert (=> d!1944978 (=> res!2566275 e!3778278)))

(assert (=> d!1944978 (= res!2566275 (is-Nil!64607 (exprs!6028 lt!2343238)))))

(assert (=> d!1944978 (= (forall!15258 (exprs!6028 lt!2343238) lambda!339042) e!3778278)))

(declare-fun b!6204991 () Bool)

(declare-fun e!3778279 () Bool)

(assert (=> b!6204991 (= e!3778278 e!3778279)))

(declare-fun res!2566276 () Bool)

(assert (=> b!6204991 (=> (not res!2566276) (not e!3778279))))

(assert (=> b!6204991 (= res!2566276 (dynLambda!25484 lambda!339042 (h!71055 (exprs!6028 lt!2343238))))))

(declare-fun b!6204992 () Bool)

(assert (=> b!6204992 (= e!3778279 (forall!15258 (t!378251 (exprs!6028 lt!2343238)) lambda!339042))))

(assert (= (and d!1944978 (not res!2566275)) b!6204991))

(assert (= (and b!6204991 res!2566276) b!6204992))

(declare-fun b_lambda!235969 () Bool)

(assert (=> (not b_lambda!235969) (not b!6204991)))

(declare-fun m!7036514 () Bool)

(assert (=> b!6204991 m!7036514))

(declare-fun m!7036516 () Bool)

(assert (=> b!6204992 m!7036516))

(assert (=> d!1944736 d!1944978))

(declare-fun call!519574 () (Set Context!11056))

(declare-fun c!1120372 () Bool)

(declare-fun c!1120369 () Bool)

(declare-fun bm!519567 () Bool)

(declare-fun call!519572 () List!64731)

(declare-fun c!1120371 () Bool)

(assert (=> bm!519567 (= call!519574 (derivationStepZipperDown!1392 (ite c!1120372 (regTwo!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120369 (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120371 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (reg!16473 (h!71055 (exprs!6028 (h!71056 zl!343))))))) (ite (or c!1120372 c!1120369) (Context!11057 (t!378251 (exprs!6028 (h!71056 zl!343)))) (Context!11057 call!519572)) (h!71057 s!2326)))))

(declare-fun b!6204993 () Bool)

(declare-fun e!3778280 () (Set Context!11056))

(declare-fun call!519575 () (Set Context!11056))

(assert (=> b!6204993 (= e!3778280 (set.union call!519575 call!519574))))

(declare-fun b!6204994 () Bool)

(declare-fun e!3778283 () (Set Context!11056))

(declare-fun e!3778284 () (Set Context!11056))

(assert (=> b!6204994 (= e!3778283 e!3778284)))

(assert (=> b!6204994 (= c!1120371 (is-Concat!24989 (h!71055 (exprs!6028 (h!71056 zl!343)))))))

(declare-fun b!6204995 () Bool)

(declare-fun e!3778285 () Bool)

(assert (=> b!6204995 (= c!1120369 e!3778285)))

(declare-fun res!2566277 () Bool)

(assert (=> b!6204995 (=> (not res!2566277) (not e!3778285))))

(assert (=> b!6204995 (= res!2566277 (is-Concat!24989 (h!71055 (exprs!6028 (h!71056 zl!343)))))))

(assert (=> b!6204995 (= e!3778280 e!3778283)))

(declare-fun bm!519568 () Bool)

(declare-fun call!519577 () (Set Context!11056))

(assert (=> bm!519568 (= call!519577 call!519574)))

(declare-fun b!6204996 () Bool)

(declare-fun c!1120368 () Bool)

(assert (=> b!6204996 (= c!1120368 (is-Star!16144 (h!71055 (exprs!6028 (h!71056 zl!343)))))))

(declare-fun e!3778282 () (Set Context!11056))

(assert (=> b!6204996 (= e!3778284 e!3778282)))

(declare-fun d!1944980 () Bool)

(declare-fun c!1120370 () Bool)

(assert (=> d!1944980 (= c!1120370 (and (is-ElementMatch!16144 (h!71055 (exprs!6028 (h!71056 zl!343)))) (= (c!1120079 (h!71055 (exprs!6028 (h!71056 zl!343)))) (h!71057 s!2326))))))

(declare-fun e!3778281 () (Set Context!11056))

(assert (=> d!1944980 (= (derivationStepZipperDown!1392 (h!71055 (exprs!6028 (h!71056 zl!343))) (Context!11057 (t!378251 (exprs!6028 (h!71056 zl!343)))) (h!71057 s!2326)) e!3778281)))

(declare-fun bm!519569 () Bool)

(declare-fun call!519573 () (Set Context!11056))

(assert (=> bm!519569 (= call!519573 call!519577)))

(declare-fun b!6204997 () Bool)

(assert (=> b!6204997 (= e!3778281 e!3778280)))

(assert (=> b!6204997 (= c!1120372 (is-Union!16144 (h!71055 (exprs!6028 (h!71056 zl!343)))))))

(declare-fun b!6204998 () Bool)

(assert (=> b!6204998 (= e!3778282 (as set.empty (Set Context!11056)))))

(declare-fun call!519576 () List!64731)

(declare-fun bm!519570 () Bool)

(assert (=> bm!519570 (= call!519575 (derivationStepZipperDown!1392 (ite c!1120372 (regOne!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343))))) (ite c!1120372 (Context!11057 (t!378251 (exprs!6028 (h!71056 zl!343)))) (Context!11057 call!519576)) (h!71057 s!2326)))))

(declare-fun b!6204999 () Bool)

(assert (=> b!6204999 (= e!3778283 (set.union call!519575 call!519577))))

(declare-fun b!6205000 () Bool)

(assert (=> b!6205000 (= e!3778284 call!519573)))

(declare-fun bm!519571 () Bool)

(assert (=> bm!519571 (= call!519572 call!519576)))

(declare-fun b!6205001 () Bool)

(assert (=> b!6205001 (= e!3778281 (set.insert (Context!11057 (t!378251 (exprs!6028 (h!71056 zl!343)))) (as set.empty (Set Context!11056))))))

(declare-fun b!6205002 () Bool)

(assert (=> b!6205002 (= e!3778282 call!519573)))

(declare-fun b!6205003 () Bool)

(assert (=> b!6205003 (= e!3778285 (nullable!6137 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343))))))))

(declare-fun bm!519572 () Bool)

(assert (=> bm!519572 (= call!519576 ($colon$colon!2013 (exprs!6028 (Context!11057 (t!378251 (exprs!6028 (h!71056 zl!343))))) (ite (or c!1120369 c!1120371) (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (h!71055 (exprs!6028 (h!71056 zl!343))))))))

(assert (= (and d!1944980 c!1120370) b!6205001))

(assert (= (and d!1944980 (not c!1120370)) b!6204997))

(assert (= (and b!6204997 c!1120372) b!6204993))

(assert (= (and b!6204997 (not c!1120372)) b!6204995))

(assert (= (and b!6204995 res!2566277) b!6205003))

(assert (= (and b!6204995 c!1120369) b!6204999))

(assert (= (and b!6204995 (not c!1120369)) b!6204994))

(assert (= (and b!6204994 c!1120371) b!6205000))

(assert (= (and b!6204994 (not c!1120371)) b!6204996))

(assert (= (and b!6204996 c!1120368) b!6205002))

(assert (= (and b!6204996 (not c!1120368)) b!6204998))

(assert (= (or b!6205000 b!6205002) bm!519571))

(assert (= (or b!6205000 b!6205002) bm!519569))

(assert (= (or b!6204999 bm!519571) bm!519572))

(assert (= (or b!6204999 bm!519569) bm!519568))

(assert (= (or b!6204993 bm!519568) bm!519567))

(assert (= (or b!6204993 b!6204999) bm!519570))

(declare-fun m!7036518 () Bool)

(assert (=> bm!519572 m!7036518))

(assert (=> b!6205003 m!7035866))

(declare-fun m!7036520 () Bool)

(assert (=> bm!519570 m!7036520))

(declare-fun m!7036522 () Bool)

(assert (=> b!6205001 m!7036522))

(declare-fun m!7036524 () Bool)

(assert (=> bm!519567 m!7036524))

(assert (=> bm!519412 d!1944980))

(declare-fun d!1944982 () Bool)

(assert (=> d!1944982 (= (isDefined!12738 lt!2343314) (not (isEmpty!36609 lt!2343314)))))

(declare-fun bs!1539184 () Bool)

(assert (= bs!1539184 d!1944982))

(declare-fun m!7036526 () Bool)

(assert (=> bs!1539184 m!7036526))

(assert (=> d!1944804 d!1944982))

(declare-fun bm!519573 () Bool)

(declare-fun call!519578 () Bool)

(assert (=> bm!519573 (= call!519578 (isEmpty!36608 Nil!64609))))

(declare-fun b!6205004 () Bool)

(declare-fun e!3778289 () Bool)

(assert (=> b!6205004 (= e!3778289 (matchR!8327 (derivativeStep!4857 (regOne!32800 r!7292) (head!12797 Nil!64609)) (tail!11882 Nil!64609)))))

(declare-fun b!6205005 () Bool)

(declare-fun e!3778290 () Bool)

(declare-fun e!3778286 () Bool)

(assert (=> b!6205005 (= e!3778290 e!3778286)))

(declare-fun c!1120374 () Bool)

(assert (=> b!6205005 (= c!1120374 (is-EmptyLang!16144 (regOne!32800 r!7292)))))

(declare-fun b!6205006 () Bool)

(declare-fun res!2566283 () Bool)

(declare-fun e!3778287 () Bool)

(assert (=> b!6205006 (=> res!2566283 e!3778287)))

(declare-fun e!3778292 () Bool)

(assert (=> b!6205006 (= res!2566283 e!3778292)))

(declare-fun res!2566279 () Bool)

(assert (=> b!6205006 (=> (not res!2566279) (not e!3778292))))

(declare-fun lt!2343381 () Bool)

(assert (=> b!6205006 (= res!2566279 lt!2343381)))

(declare-fun b!6205007 () Bool)

(assert (=> b!6205007 (= e!3778286 (not lt!2343381))))

(declare-fun b!6205008 () Bool)

(declare-fun res!2566281 () Bool)

(declare-fun e!3778291 () Bool)

(assert (=> b!6205008 (=> res!2566281 e!3778291)))

(assert (=> b!6205008 (= res!2566281 (not (isEmpty!36608 (tail!11882 Nil!64609))))))

(declare-fun b!6205009 () Bool)

(assert (=> b!6205009 (= e!3778290 (= lt!2343381 call!519578))))

(declare-fun b!6205010 () Bool)

(declare-fun e!3778288 () Bool)

(assert (=> b!6205010 (= e!3778288 e!3778291)))

(declare-fun res!2566284 () Bool)

(assert (=> b!6205010 (=> res!2566284 e!3778291)))

(assert (=> b!6205010 (= res!2566284 call!519578)))

(declare-fun b!6205011 () Bool)

(declare-fun res!2566280 () Bool)

(assert (=> b!6205011 (=> res!2566280 e!3778287)))

(assert (=> b!6205011 (= res!2566280 (not (is-ElementMatch!16144 (regOne!32800 r!7292))))))

(assert (=> b!6205011 (= e!3778286 e!3778287)))

(declare-fun d!1944984 () Bool)

(assert (=> d!1944984 e!3778290))

(declare-fun c!1120375 () Bool)

(assert (=> d!1944984 (= c!1120375 (is-EmptyExpr!16144 (regOne!32800 r!7292)))))

(assert (=> d!1944984 (= lt!2343381 e!3778289)))

(declare-fun c!1120373 () Bool)

(assert (=> d!1944984 (= c!1120373 (isEmpty!36608 Nil!64609))))

(assert (=> d!1944984 (validRegex!7880 (regOne!32800 r!7292))))

(assert (=> d!1944984 (= (matchR!8327 (regOne!32800 r!7292) Nil!64609) lt!2343381)))

(declare-fun b!6205012 () Bool)

(declare-fun res!2566285 () Bool)

(assert (=> b!6205012 (=> (not res!2566285) (not e!3778292))))

(assert (=> b!6205012 (= res!2566285 (isEmpty!36608 (tail!11882 Nil!64609)))))

(declare-fun b!6205013 () Bool)

(assert (=> b!6205013 (= e!3778292 (= (head!12797 Nil!64609) (c!1120079 (regOne!32800 r!7292))))))

(declare-fun b!6205014 () Bool)

(assert (=> b!6205014 (= e!3778291 (not (= (head!12797 Nil!64609) (c!1120079 (regOne!32800 r!7292)))))))

(declare-fun b!6205015 () Bool)

(declare-fun res!2566282 () Bool)

(assert (=> b!6205015 (=> (not res!2566282) (not e!3778292))))

(assert (=> b!6205015 (= res!2566282 (not call!519578))))

(declare-fun b!6205016 () Bool)

(assert (=> b!6205016 (= e!3778287 e!3778288)))

(declare-fun res!2566278 () Bool)

(assert (=> b!6205016 (=> (not res!2566278) (not e!3778288))))

(assert (=> b!6205016 (= res!2566278 (not lt!2343381))))

(declare-fun b!6205017 () Bool)

(assert (=> b!6205017 (= e!3778289 (nullable!6137 (regOne!32800 r!7292)))))

(assert (= (and d!1944984 c!1120373) b!6205017))

(assert (= (and d!1944984 (not c!1120373)) b!6205004))

(assert (= (and d!1944984 c!1120375) b!6205009))

(assert (= (and d!1944984 (not c!1120375)) b!6205005))

(assert (= (and b!6205005 c!1120374) b!6205007))

(assert (= (and b!6205005 (not c!1120374)) b!6205011))

(assert (= (and b!6205011 (not res!2566280)) b!6205006))

(assert (= (and b!6205006 res!2566279) b!6205015))

(assert (= (and b!6205015 res!2566282) b!6205012))

(assert (= (and b!6205012 res!2566285) b!6205013))

(assert (= (and b!6205006 (not res!2566283)) b!6205016))

(assert (= (and b!6205016 res!2566278) b!6205010))

(assert (= (and b!6205010 (not res!2566284)) b!6205008))

(assert (= (and b!6205008 (not res!2566281)) b!6205014))

(assert (= (or b!6205009 b!6205010 b!6205015) bm!519573))

(declare-fun m!7036528 () Bool)

(assert (=> b!6205012 m!7036528))

(assert (=> b!6205012 m!7036528))

(declare-fun m!7036530 () Bool)

(assert (=> b!6205012 m!7036530))

(declare-fun m!7036532 () Bool)

(assert (=> d!1944984 m!7036532))

(assert (=> d!1944984 m!7036056))

(assert (=> bm!519573 m!7036532))

(assert (=> b!6205008 m!7036528))

(assert (=> b!6205008 m!7036528))

(assert (=> b!6205008 m!7036530))

(declare-fun m!7036534 () Bool)

(assert (=> b!6205013 m!7036534))

(assert (=> b!6205017 m!7036364))

(assert (=> b!6205014 m!7036534))

(assert (=> b!6205004 m!7036534))

(assert (=> b!6205004 m!7036534))

(declare-fun m!7036536 () Bool)

(assert (=> b!6205004 m!7036536))

(assert (=> b!6205004 m!7036528))

(assert (=> b!6205004 m!7036536))

(assert (=> b!6205004 m!7036528))

(declare-fun m!7036538 () Bool)

(assert (=> b!6205004 m!7036538))

(assert (=> d!1944804 d!1944984))

(declare-fun b!6205018 () Bool)

(declare-fun e!3778295 () Bool)

(declare-fun e!3778297 () Bool)

(assert (=> b!6205018 (= e!3778295 e!3778297)))

(declare-fun c!1120376 () Bool)

(assert (=> b!6205018 (= c!1120376 (is-Union!16144 (regOne!32800 r!7292)))))

(declare-fun d!1944986 () Bool)

(declare-fun res!2566287 () Bool)

(declare-fun e!3778296 () Bool)

(assert (=> d!1944986 (=> res!2566287 e!3778296)))

(assert (=> d!1944986 (= res!2566287 (is-ElementMatch!16144 (regOne!32800 r!7292)))))

(assert (=> d!1944986 (= (validRegex!7880 (regOne!32800 r!7292)) e!3778296)))

(declare-fun b!6205019 () Bool)

(declare-fun e!3778299 () Bool)

(declare-fun call!519580 () Bool)

(assert (=> b!6205019 (= e!3778299 call!519580)))

(declare-fun b!6205020 () Bool)

(assert (=> b!6205020 (= e!3778296 e!3778295)))

(declare-fun c!1120377 () Bool)

(assert (=> b!6205020 (= c!1120377 (is-Star!16144 (regOne!32800 r!7292)))))

(declare-fun b!6205021 () Bool)

(declare-fun res!2566288 () Bool)

(declare-fun e!3778294 () Bool)

(assert (=> b!6205021 (=> res!2566288 e!3778294)))

(assert (=> b!6205021 (= res!2566288 (not (is-Concat!24989 (regOne!32800 r!7292))))))

(assert (=> b!6205021 (= e!3778297 e!3778294)))

(declare-fun b!6205022 () Bool)

(declare-fun res!2566286 () Bool)

(declare-fun e!3778298 () Bool)

(assert (=> b!6205022 (=> (not res!2566286) (not e!3778298))))

(declare-fun call!519579 () Bool)

(assert (=> b!6205022 (= res!2566286 call!519579)))

(assert (=> b!6205022 (= e!3778297 e!3778298)))

(declare-fun bm!519574 () Bool)

(assert (=> bm!519574 (= call!519579 call!519580)))

(declare-fun bm!519575 () Bool)

(declare-fun call!519581 () Bool)

(assert (=> bm!519575 (= call!519581 (validRegex!7880 (ite c!1120376 (regTwo!32801 (regOne!32800 r!7292)) (regTwo!32800 (regOne!32800 r!7292)))))))

(declare-fun b!6205023 () Bool)

(declare-fun e!3778293 () Bool)

(assert (=> b!6205023 (= e!3778294 e!3778293)))

(declare-fun res!2566289 () Bool)

(assert (=> b!6205023 (=> (not res!2566289) (not e!3778293))))

(assert (=> b!6205023 (= res!2566289 call!519579)))

(declare-fun bm!519576 () Bool)

(assert (=> bm!519576 (= call!519580 (validRegex!7880 (ite c!1120377 (reg!16473 (regOne!32800 r!7292)) (ite c!1120376 (regOne!32801 (regOne!32800 r!7292)) (regOne!32800 (regOne!32800 r!7292))))))))

(declare-fun b!6205024 () Bool)

(assert (=> b!6205024 (= e!3778298 call!519581)))

(declare-fun b!6205025 () Bool)

(assert (=> b!6205025 (= e!3778295 e!3778299)))

(declare-fun res!2566290 () Bool)

(assert (=> b!6205025 (= res!2566290 (not (nullable!6137 (reg!16473 (regOne!32800 r!7292)))))))

(assert (=> b!6205025 (=> (not res!2566290) (not e!3778299))))

(declare-fun b!6205026 () Bool)

(assert (=> b!6205026 (= e!3778293 call!519581)))

(assert (= (and d!1944986 (not res!2566287)) b!6205020))

(assert (= (and b!6205020 c!1120377) b!6205025))

(assert (= (and b!6205020 (not c!1120377)) b!6205018))

(assert (= (and b!6205025 res!2566290) b!6205019))

(assert (= (and b!6205018 c!1120376) b!6205022))

(assert (= (and b!6205018 (not c!1120376)) b!6205021))

(assert (= (and b!6205022 res!2566286) b!6205024))

(assert (= (and b!6205021 (not res!2566288)) b!6205023))

(assert (= (and b!6205023 res!2566289) b!6205026))

(assert (= (or b!6205024 b!6205026) bm!519575))

(assert (= (or b!6205022 b!6205023) bm!519574))

(assert (= (or b!6205019 bm!519574) bm!519576))

(declare-fun m!7036540 () Bool)

(assert (=> bm!519575 m!7036540))

(declare-fun m!7036542 () Bool)

(assert (=> bm!519576 m!7036542))

(declare-fun m!7036544 () Bool)

(assert (=> b!6205025 m!7036544))

(assert (=> d!1944804 d!1944986))

(declare-fun c!1120379 () Bool)

(declare-fun bm!519577 () Bool)

(declare-fun call!519584 () (Set Context!11056))

(declare-fun c!1120381 () Bool)

(declare-fun call!519582 () List!64731)

(declare-fun c!1120382 () Bool)

(assert (=> bm!519577 (= call!519584 (derivationStepZipperDown!1392 (ite c!1120382 (regTwo!32801 (h!71055 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))) (ite c!1120379 (regTwo!32800 (h!71055 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))) (ite c!1120381 (regOne!32800 (h!71055 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))) (reg!16473 (h!71055 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343))))))))))) (ite (or c!1120382 c!1120379) (Context!11057 (t!378251 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))) (Context!11057 call!519582)) (h!71057 s!2326)))))

(declare-fun b!6205027 () Bool)

(declare-fun e!3778300 () (Set Context!11056))

(declare-fun call!519585 () (Set Context!11056))

(assert (=> b!6205027 (= e!3778300 (set.union call!519585 call!519584))))

(declare-fun b!6205028 () Bool)

(declare-fun e!3778303 () (Set Context!11056))

(declare-fun e!3778304 () (Set Context!11056))

(assert (=> b!6205028 (= e!3778303 e!3778304)))

(assert (=> b!6205028 (= c!1120381 (is-Concat!24989 (h!71055 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))))))

(declare-fun b!6205029 () Bool)

(declare-fun e!3778305 () Bool)

(assert (=> b!6205029 (= c!1120379 e!3778305)))

(declare-fun res!2566291 () Bool)

(assert (=> b!6205029 (=> (not res!2566291) (not e!3778305))))

(assert (=> b!6205029 (= res!2566291 (is-Concat!24989 (h!71055 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))))))

(assert (=> b!6205029 (= e!3778300 e!3778303)))

(declare-fun bm!519578 () Bool)

(declare-fun call!519587 () (Set Context!11056))

(assert (=> bm!519578 (= call!519587 call!519584)))

(declare-fun b!6205030 () Bool)

(declare-fun c!1120378 () Bool)

(assert (=> b!6205030 (= c!1120378 (is-Star!16144 (h!71055 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))))))

(declare-fun e!3778302 () (Set Context!11056))

(assert (=> b!6205030 (= e!3778304 e!3778302)))

(declare-fun d!1944988 () Bool)

(declare-fun c!1120380 () Bool)

(assert (=> d!1944988 (= c!1120380 (and (is-ElementMatch!16144 (h!71055 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))) (= (c!1120079 (h!71055 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))) (h!71057 s!2326))))))

(declare-fun e!3778301 () (Set Context!11056))

(assert (=> d!1944988 (= (derivationStepZipperDown!1392 (h!71055 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343))))))) (Context!11057 (t!378251 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))) (h!71057 s!2326)) e!3778301)))

(declare-fun bm!519579 () Bool)

(declare-fun call!519583 () (Set Context!11056))

(assert (=> bm!519579 (= call!519583 call!519587)))

(declare-fun b!6205031 () Bool)

(assert (=> b!6205031 (= e!3778301 e!3778300)))

(assert (=> b!6205031 (= c!1120382 (is-Union!16144 (h!71055 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))))))

(declare-fun b!6205032 () Bool)

(assert (=> b!6205032 (= e!3778302 (as set.empty (Set Context!11056)))))

(declare-fun bm!519580 () Bool)

(declare-fun call!519586 () List!64731)

(assert (=> bm!519580 (= call!519585 (derivationStepZipperDown!1392 (ite c!1120382 (regOne!32801 (h!71055 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))) (regOne!32800 (h!71055 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343))))))))) (ite c!1120382 (Context!11057 (t!378251 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))) (Context!11057 call!519586)) (h!71057 s!2326)))))

(declare-fun b!6205033 () Bool)

(assert (=> b!6205033 (= e!3778303 (set.union call!519585 call!519587))))

(declare-fun b!6205034 () Bool)

(assert (=> b!6205034 (= e!3778304 call!519583)))

(declare-fun bm!519581 () Bool)

(assert (=> bm!519581 (= call!519582 call!519586)))

(declare-fun b!6205035 () Bool)

(assert (=> b!6205035 (= e!3778301 (set.insert (Context!11057 (t!378251 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))) (as set.empty (Set Context!11056))))))

(declare-fun b!6205036 () Bool)

(assert (=> b!6205036 (= e!3778302 call!519583)))

(declare-fun b!6205037 () Bool)

(assert (=> b!6205037 (= e!3778305 (nullable!6137 (regOne!32800 (h!71055 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343))))))))))))

(declare-fun bm!519582 () Bool)

(assert (=> bm!519582 (= call!519586 ($colon$colon!2013 (exprs!6028 (Context!11057 (t!378251 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343))))))))) (ite (or c!1120379 c!1120381) (regTwo!32800 (h!71055 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))) (h!71055 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343))))))))))))

(assert (= (and d!1944988 c!1120380) b!6205035))

(assert (= (and d!1944988 (not c!1120380)) b!6205031))

(assert (= (and b!6205031 c!1120382) b!6205027))

(assert (= (and b!6205031 (not c!1120382)) b!6205029))

(assert (= (and b!6205029 res!2566291) b!6205037))

(assert (= (and b!6205029 c!1120379) b!6205033))

(assert (= (and b!6205029 (not c!1120379)) b!6205028))

(assert (= (and b!6205028 c!1120381) b!6205034))

(assert (= (and b!6205028 (not c!1120381)) b!6205030))

(assert (= (and b!6205030 c!1120378) b!6205036))

(assert (= (and b!6205030 (not c!1120378)) b!6205032))

(assert (= (or b!6205034 b!6205036) bm!519581))

(assert (= (or b!6205034 b!6205036) bm!519579))

(assert (= (or b!6205033 bm!519581) bm!519582))

(assert (= (or b!6205033 bm!519579) bm!519578))

(assert (= (or b!6205027 bm!519578) bm!519577))

(assert (= (or b!6205027 b!6205033) bm!519580))

(declare-fun m!7036546 () Bool)

(assert (=> bm!519582 m!7036546))

(declare-fun m!7036548 () Bool)

(assert (=> b!6205037 m!7036548))

(declare-fun m!7036550 () Bool)

(assert (=> bm!519580 m!7036550))

(declare-fun m!7036552 () Bool)

(assert (=> b!6205035 m!7036552))

(declare-fun m!7036554 () Bool)

(assert (=> bm!519577 m!7036554))

(assert (=> bm!519411 d!1944988))

(declare-fun d!1944990 () Bool)

(assert (=> d!1944990 true))

(assert (=> d!1944990 true))

(declare-fun res!2566292 () Bool)

(assert (=> d!1944990 (= (choose!46117 lambda!339027) res!2566292)))

(assert (=> d!1944808 d!1944990))

(declare-fun d!1944992 () Bool)

(assert (=> d!1944992 (= ($colon$colon!2013 (exprs!6028 (Context!11057 (Cons!64607 (regTwo!32800 (regOne!32800 r!7292)) (t!378251 (exprs!6028 (h!71056 zl!343)))))) (ite (or c!1120113 c!1120115) (regTwo!32800 (regOne!32800 (regOne!32800 r!7292))) (regOne!32800 (regOne!32800 r!7292)))) (Cons!64607 (ite (or c!1120113 c!1120115) (regTwo!32800 (regOne!32800 (regOne!32800 r!7292))) (regOne!32800 (regOne!32800 r!7292))) (exprs!6028 (Context!11057 (Cons!64607 (regTwo!32800 (regOne!32800 r!7292)) (t!378251 (exprs!6028 (h!71056 zl!343))))))))))

(assert (=> bm!519436 d!1944992))

(declare-fun d!1944994 () Bool)

(assert (=> d!1944994 (= (nullable!6137 r!7292) (nullableFct!2093 r!7292))))

(declare-fun bs!1539185 () Bool)

(assert (= bs!1539185 d!1944994))

(declare-fun m!7036556 () Bool)

(assert (=> bs!1539185 m!7036556))

(assert (=> b!6204228 d!1944994))

(declare-fun d!1944996 () Bool)

(assert (=> d!1944996 (= (isConcat!1077 lt!2343306) (is-Concat!24989 lt!2343306))))

(assert (=> b!6204333 d!1944996))

(declare-fun b!6205038 () Bool)

(declare-fun e!3778308 () Bool)

(declare-fun e!3778310 () Bool)

(assert (=> b!6205038 (= e!3778308 e!3778310)))

(declare-fun c!1120383 () Bool)

(assert (=> b!6205038 (= c!1120383 (is-Union!16144 (ite c!1120178 (reg!16473 r!7292) (ite c!1120177 (regOne!32801 r!7292) (regOne!32800 r!7292)))))))

(declare-fun d!1944998 () Bool)

(declare-fun res!2566294 () Bool)

(declare-fun e!3778309 () Bool)

(assert (=> d!1944998 (=> res!2566294 e!3778309)))

(assert (=> d!1944998 (= res!2566294 (is-ElementMatch!16144 (ite c!1120178 (reg!16473 r!7292) (ite c!1120177 (regOne!32801 r!7292) (regOne!32800 r!7292)))))))

(assert (=> d!1944998 (= (validRegex!7880 (ite c!1120178 (reg!16473 r!7292) (ite c!1120177 (regOne!32801 r!7292) (regOne!32800 r!7292)))) e!3778309)))

(declare-fun b!6205039 () Bool)

(declare-fun e!3778312 () Bool)

(declare-fun call!519589 () Bool)

(assert (=> b!6205039 (= e!3778312 call!519589)))

(declare-fun b!6205040 () Bool)

(assert (=> b!6205040 (= e!3778309 e!3778308)))

(declare-fun c!1120384 () Bool)

(assert (=> b!6205040 (= c!1120384 (is-Star!16144 (ite c!1120178 (reg!16473 r!7292) (ite c!1120177 (regOne!32801 r!7292) (regOne!32800 r!7292)))))))

(declare-fun b!6205041 () Bool)

(declare-fun res!2566295 () Bool)

(declare-fun e!3778307 () Bool)

(assert (=> b!6205041 (=> res!2566295 e!3778307)))

(assert (=> b!6205041 (= res!2566295 (not (is-Concat!24989 (ite c!1120178 (reg!16473 r!7292) (ite c!1120177 (regOne!32801 r!7292) (regOne!32800 r!7292))))))))

(assert (=> b!6205041 (= e!3778310 e!3778307)))

(declare-fun b!6205042 () Bool)

(declare-fun res!2566293 () Bool)

(declare-fun e!3778311 () Bool)

(assert (=> b!6205042 (=> (not res!2566293) (not e!3778311))))

(declare-fun call!519588 () Bool)

(assert (=> b!6205042 (= res!2566293 call!519588)))

(assert (=> b!6205042 (= e!3778310 e!3778311)))

(declare-fun bm!519583 () Bool)

(assert (=> bm!519583 (= call!519588 call!519589)))

(declare-fun call!519590 () Bool)

(declare-fun bm!519584 () Bool)

(assert (=> bm!519584 (= call!519590 (validRegex!7880 (ite c!1120383 (regTwo!32801 (ite c!1120178 (reg!16473 r!7292) (ite c!1120177 (regOne!32801 r!7292) (regOne!32800 r!7292)))) (regTwo!32800 (ite c!1120178 (reg!16473 r!7292) (ite c!1120177 (regOne!32801 r!7292) (regOne!32800 r!7292)))))))))

(declare-fun b!6205043 () Bool)

(declare-fun e!3778306 () Bool)

(assert (=> b!6205043 (= e!3778307 e!3778306)))

(declare-fun res!2566296 () Bool)

(assert (=> b!6205043 (=> (not res!2566296) (not e!3778306))))

(assert (=> b!6205043 (= res!2566296 call!519588)))

(declare-fun bm!519585 () Bool)

(assert (=> bm!519585 (= call!519589 (validRegex!7880 (ite c!1120384 (reg!16473 (ite c!1120178 (reg!16473 r!7292) (ite c!1120177 (regOne!32801 r!7292) (regOne!32800 r!7292)))) (ite c!1120383 (regOne!32801 (ite c!1120178 (reg!16473 r!7292) (ite c!1120177 (regOne!32801 r!7292) (regOne!32800 r!7292)))) (regOne!32800 (ite c!1120178 (reg!16473 r!7292) (ite c!1120177 (regOne!32801 r!7292) (regOne!32800 r!7292))))))))))

(declare-fun b!6205044 () Bool)

(assert (=> b!6205044 (= e!3778311 call!519590)))

(declare-fun b!6205045 () Bool)

(assert (=> b!6205045 (= e!3778308 e!3778312)))

(declare-fun res!2566297 () Bool)

(assert (=> b!6205045 (= res!2566297 (not (nullable!6137 (reg!16473 (ite c!1120178 (reg!16473 r!7292) (ite c!1120177 (regOne!32801 r!7292) (regOne!32800 r!7292)))))))))

(assert (=> b!6205045 (=> (not res!2566297) (not e!3778312))))

(declare-fun b!6205046 () Bool)

(assert (=> b!6205046 (= e!3778306 call!519590)))

(assert (= (and d!1944998 (not res!2566294)) b!6205040))

(assert (= (and b!6205040 c!1120384) b!6205045))

(assert (= (and b!6205040 (not c!1120384)) b!6205038))

(assert (= (and b!6205045 res!2566297) b!6205039))

(assert (= (and b!6205038 c!1120383) b!6205042))

(assert (= (and b!6205038 (not c!1120383)) b!6205041))

(assert (= (and b!6205042 res!2566293) b!6205044))

(assert (= (and b!6205041 (not res!2566295)) b!6205043))

(assert (= (and b!6205043 res!2566296) b!6205046))

(assert (= (or b!6205044 b!6205046) bm!519584))

(assert (= (or b!6205042 b!6205043) bm!519583))

(assert (= (or b!6205039 bm!519583) bm!519585))

(declare-fun m!7036558 () Bool)

(assert (=> bm!519584 m!7036558))

(declare-fun m!7036560 () Bool)

(assert (=> bm!519585 m!7036560))

(declare-fun m!7036562 () Bool)

(assert (=> b!6205045 m!7036562))

(assert (=> bm!519460 d!1944998))

(declare-fun d!1945000 () Bool)

(assert (=> d!1945000 (= (Exists!3214 lambda!339073) (choose!46117 lambda!339073))))

(declare-fun bs!1539186 () Bool)

(assert (= bs!1539186 d!1945000))

(declare-fun m!7036564 () Bool)

(assert (=> bs!1539186 m!7036564))

(assert (=> d!1944814 d!1945000))

(declare-fun d!1945002 () Bool)

(assert (=> d!1945002 (= (Exists!3214 lambda!339074) (choose!46117 lambda!339074))))

(declare-fun bs!1539187 () Bool)

(assert (= bs!1539187 d!1945002))

(declare-fun m!7036566 () Bool)

(assert (=> bs!1539187 m!7036566))

(assert (=> d!1944814 d!1945002))

(declare-fun bs!1539188 () Bool)

(declare-fun d!1945004 () Bool)

(assert (= bs!1539188 (and d!1945004 b!6203913)))

(declare-fun lambda!339117 () Int)

(assert (=> bs!1539188 (not (= lambda!339117 lambda!339027))))

(declare-fun bs!1539189 () Bool)

(assert (= bs!1539189 (and d!1945004 b!6204177)))

(assert (=> bs!1539189 (not (= lambda!339117 lambda!339054))))

(declare-fun bs!1539190 () Bool)

(assert (= bs!1539190 (and d!1945004 b!6204180)))

(assert (=> bs!1539190 (not (= lambda!339117 lambda!339055))))

(declare-fun bs!1539191 () Bool)

(assert (= bs!1539191 (and d!1945004 b!6204769)))

(assert (=> bs!1539191 (not (= lambda!339117 lambda!339099))))

(declare-fun bs!1539192 () Bool)

(assert (= bs!1539192 (and d!1945004 d!1944814)))

(assert (=> bs!1539192 (not (= lambda!339117 lambda!339074))))

(assert (=> bs!1539192 (= lambda!339117 lambda!339073)))

(declare-fun bs!1539193 () Bool)

(assert (= bs!1539193 (and d!1945004 d!1944812)))

(assert (=> bs!1539193 (= lambda!339117 lambda!339068)))

(declare-fun bs!1539194 () Bool)

(assert (= bs!1539194 (and d!1945004 b!6204905)))

(assert (=> bs!1539194 (not (= lambda!339117 lambda!339106))))

(assert (=> bs!1539188 (= lambda!339117 lambda!339026)))

(declare-fun bs!1539195 () Bool)

(assert (= bs!1539195 (and d!1945004 b!6204908)))

(assert (=> bs!1539195 (not (= lambda!339117 lambda!339107))))

(declare-fun bs!1539196 () Bool)

(assert (= bs!1539196 (and d!1945004 b!6204766)))

(assert (=> bs!1539196 (not (= lambda!339117 lambda!339098))))

(assert (=> d!1945004 true))

(assert (=> d!1945004 true))

(assert (=> d!1945004 true))

(declare-fun lambda!339118 () Int)

(assert (=> bs!1539188 (= lambda!339118 lambda!339027)))

(assert (=> bs!1539189 (not (= lambda!339118 lambda!339054))))

(assert (=> bs!1539190 (= lambda!339118 lambda!339055)))

(assert (=> bs!1539191 (= (and (= (regOne!32800 r!7292) (regOne!32800 (regTwo!32801 r!7292))) (= (regTwo!32800 r!7292) (regTwo!32800 (regTwo!32801 r!7292)))) (= lambda!339118 lambda!339099))))

(assert (=> bs!1539192 (= lambda!339118 lambda!339074)))

(declare-fun bs!1539197 () Bool)

(assert (= bs!1539197 d!1945004))

(assert (=> bs!1539197 (not (= lambda!339118 lambda!339117))))

(assert (=> bs!1539192 (not (= lambda!339118 lambda!339073))))

(assert (=> bs!1539193 (not (= lambda!339118 lambda!339068))))

(assert (=> bs!1539194 (not (= lambda!339118 lambda!339106))))

(assert (=> bs!1539188 (not (= lambda!339118 lambda!339026))))

(assert (=> bs!1539195 (= (and (= (regOne!32800 r!7292) (regOne!32800 (regOne!32801 r!7292))) (= (regTwo!32800 r!7292) (regTwo!32800 (regOne!32801 r!7292)))) (= lambda!339118 lambda!339107))))

(assert (=> bs!1539196 (not (= lambda!339118 lambda!339098))))

(assert (=> d!1945004 true))

(assert (=> d!1945004 true))

(assert (=> d!1945004 true))

(assert (=> d!1945004 (= (Exists!3214 lambda!339117) (Exists!3214 lambda!339118))))

(assert (=> d!1945004 true))

(declare-fun _$90!1980 () Unit!157907)

(assert (=> d!1945004 (= (choose!46119 (regOne!32800 r!7292) (regTwo!32800 r!7292) s!2326) _$90!1980)))

(declare-fun m!7036568 () Bool)

(assert (=> bs!1539197 m!7036568))

(declare-fun m!7036570 () Bool)

(assert (=> bs!1539197 m!7036570))

(assert (=> d!1944814 d!1945004))

(assert (=> d!1944814 d!1944986))

(declare-fun d!1945006 () Bool)

(assert (=> d!1945006 (= (isEmpty!36605 (t!378251 (unfocusZipperList!1565 zl!343))) (is-Nil!64607 (t!378251 (unfocusZipperList!1565 zl!343))))))

(assert (=> b!6204122 d!1945006))

(assert (=> d!1944812 d!1944804))

(assert (=> d!1944812 d!1944828))

(declare-fun bs!1539198 () Bool)

(declare-fun d!1945008 () Bool)

(assert (= bs!1539198 (and d!1945008 b!6203913)))

(declare-fun lambda!339121 () Int)

(assert (=> bs!1539198 (not (= lambda!339121 lambda!339027))))

(declare-fun bs!1539199 () Bool)

(assert (= bs!1539199 (and d!1945008 b!6204177)))

(assert (=> bs!1539199 (not (= lambda!339121 lambda!339054))))

(declare-fun bs!1539200 () Bool)

(assert (= bs!1539200 (and d!1945008 b!6204180)))

(assert (=> bs!1539200 (not (= lambda!339121 lambda!339055))))

(declare-fun bs!1539201 () Bool)

(assert (= bs!1539201 (and d!1945008 d!1944814)))

(assert (=> bs!1539201 (not (= lambda!339121 lambda!339074))))

(declare-fun bs!1539202 () Bool)

(assert (= bs!1539202 (and d!1945008 d!1945004)))

(assert (=> bs!1539202 (= lambda!339121 lambda!339117)))

(assert (=> bs!1539201 (= lambda!339121 lambda!339073)))

(declare-fun bs!1539203 () Bool)

(assert (= bs!1539203 (and d!1945008 d!1944812)))

(assert (=> bs!1539203 (= lambda!339121 lambda!339068)))

(declare-fun bs!1539204 () Bool)

(assert (= bs!1539204 (and d!1945008 b!6204905)))

(assert (=> bs!1539204 (not (= lambda!339121 lambda!339106))))

(assert (=> bs!1539198 (= lambda!339121 lambda!339026)))

(declare-fun bs!1539205 () Bool)

(assert (= bs!1539205 (and d!1945008 b!6204908)))

(assert (=> bs!1539205 (not (= lambda!339121 lambda!339107))))

(declare-fun bs!1539206 () Bool)

(assert (= bs!1539206 (and d!1945008 b!6204766)))

(assert (=> bs!1539206 (not (= lambda!339121 lambda!339098))))

(declare-fun bs!1539207 () Bool)

(assert (= bs!1539207 (and d!1945008 b!6204769)))

(assert (=> bs!1539207 (not (= lambda!339121 lambda!339099))))

(assert (=> bs!1539202 (not (= lambda!339121 lambda!339118))))

(assert (=> d!1945008 true))

(assert (=> d!1945008 true))

(assert (=> d!1945008 true))

(assert (=> d!1945008 (= (isDefined!12738 (findConcatSeparation!2449 (regOne!32800 r!7292) (regTwo!32800 r!7292) Nil!64609 s!2326 s!2326)) (Exists!3214 lambda!339121))))

(assert (=> d!1945008 true))

(declare-fun _$89!2356 () Unit!157907)

(assert (=> d!1945008 (= (choose!46118 (regOne!32800 r!7292) (regTwo!32800 r!7292) s!2326) _$89!2356)))

(declare-fun bs!1539208 () Bool)

(assert (= bs!1539208 d!1945008))

(assert (=> bs!1539208 m!7035746))

(assert (=> bs!1539208 m!7035746))

(assert (=> bs!1539208 m!7035748))

(declare-fun m!7036572 () Bool)

(assert (=> bs!1539208 m!7036572))

(assert (=> d!1944812 d!1945008))

(assert (=> d!1944812 d!1944986))

(declare-fun d!1945010 () Bool)

(assert (=> d!1945010 (= (Exists!3214 lambda!339068) (choose!46117 lambda!339068))))

(declare-fun bs!1539209 () Bool)

(assert (= bs!1539209 d!1945010))

(declare-fun m!7036574 () Bool)

(assert (=> bs!1539209 m!7036574))

(assert (=> d!1944812 d!1945010))

(declare-fun d!1945012 () Bool)

(assert (=> d!1945012 (= (isEmptyExpr!1554 lt!2343306) (is-EmptyExpr!16144 lt!2343306))))

(assert (=> b!6204335 d!1945012))

(declare-fun d!1945014 () Bool)

(assert (=> d!1945014 (= (nullable!6137 (reg!16473 r!7292)) (nullableFct!2093 (reg!16473 r!7292)))))

(declare-fun bs!1539210 () Bool)

(assert (= bs!1539210 d!1945014))

(declare-fun m!7036576 () Bool)

(assert (=> bs!1539210 m!7036576))

(assert (=> b!6204285 d!1945014))

(declare-fun d!1945016 () Bool)

(assert (=> d!1945016 (= (nullable!6137 (h!71055 (exprs!6028 lt!2343238))) (nullableFct!2093 (h!71055 (exprs!6028 lt!2343238))))))

(declare-fun bs!1539211 () Bool)

(assert (= bs!1539211 d!1945016))

(declare-fun m!7036578 () Bool)

(assert (=> bs!1539211 m!7036578))

(assert (=> b!6204034 d!1945016))

(declare-fun d!1945018 () Bool)

(declare-fun res!2566314 () Bool)

(declare-fun e!3778323 () Bool)

(assert (=> d!1945018 (=> res!2566314 e!3778323)))

(assert (=> d!1945018 (= res!2566314 (is-Nil!64608 lt!2343279))))

(assert (=> d!1945018 (= (noDuplicate!1982 lt!2343279) e!3778323)))

(declare-fun b!6205063 () Bool)

(declare-fun e!3778324 () Bool)

(assert (=> b!6205063 (= e!3778323 e!3778324)))

(declare-fun res!2566315 () Bool)

(assert (=> b!6205063 (=> (not res!2566315) (not e!3778324))))

(declare-fun contains!20085 (List!64732 Context!11056) Bool)

(assert (=> b!6205063 (= res!2566315 (not (contains!20085 (t!378252 lt!2343279) (h!71056 lt!2343279))))))

(declare-fun b!6205064 () Bool)

(assert (=> b!6205064 (= e!3778324 (noDuplicate!1982 (t!378252 lt!2343279)))))

(assert (= (and d!1945018 (not res!2566314)) b!6205063))

(assert (= (and b!6205063 res!2566315) b!6205064))

(declare-fun m!7036580 () Bool)

(assert (=> b!6205063 m!7036580))

(declare-fun m!7036582 () Bool)

(assert (=> b!6205064 m!7036582))

(assert (=> d!1944738 d!1945018))

(declare-fun d!1945020 () Bool)

(declare-fun e!3778332 () Bool)

(assert (=> d!1945020 e!3778332))

(declare-fun res!2566321 () Bool)

(assert (=> d!1945020 (=> (not res!2566321) (not e!3778332))))

(declare-fun res!2566320 () List!64732)

(assert (=> d!1945020 (= res!2566321 (noDuplicate!1982 res!2566320))))

(declare-fun e!3778333 () Bool)

(assert (=> d!1945020 e!3778333))

(assert (=> d!1945020 (= (choose!46112 z!1189) res!2566320)))

(declare-fun b!6205072 () Bool)

(declare-fun e!3778331 () Bool)

(declare-fun tp!1730420 () Bool)

(assert (=> b!6205072 (= e!3778331 tp!1730420)))

(declare-fun tp!1730419 () Bool)

(declare-fun b!6205071 () Bool)

(assert (=> b!6205071 (= e!3778333 (and (inv!83608 (h!71056 res!2566320)) e!3778331 tp!1730419))))

(declare-fun b!6205073 () Bool)

(assert (=> b!6205073 (= e!3778332 (= (content!12083 res!2566320) z!1189))))

(assert (= b!6205071 b!6205072))

(assert (= (and d!1945020 (is-Cons!64608 res!2566320)) b!6205071))

(assert (= (and d!1945020 res!2566321) b!6205073))

(declare-fun m!7036584 () Bool)

(assert (=> d!1945020 m!7036584))

(declare-fun m!7036586 () Bool)

(assert (=> b!6205071 m!7036586))

(declare-fun m!7036588 () Bool)

(assert (=> b!6205073 m!7036588))

(assert (=> d!1944738 d!1945020))

(declare-fun c!1120389 () Bool)

(declare-fun bm!519586 () Bool)

(declare-fun c!1120386 () Bool)

(declare-fun call!519591 () List!64731)

(declare-fun call!519593 () (Set Context!11056))

(declare-fun c!1120388 () Bool)

(assert (=> bm!519586 (= call!519593 (derivationStepZipperDown!1392 (ite c!1120389 (regTwo!32801 (ite c!1120111 (regTwo!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120108 (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120110 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (reg!16473 (h!71055 (exprs!6028 (h!71056 zl!343)))))))) (ite c!1120386 (regTwo!32800 (ite c!1120111 (regTwo!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120108 (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120110 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (reg!16473 (h!71055 (exprs!6028 (h!71056 zl!343)))))))) (ite c!1120388 (regOne!32800 (ite c!1120111 (regTwo!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120108 (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120110 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (reg!16473 (h!71055 (exprs!6028 (h!71056 zl!343)))))))) (reg!16473 (ite c!1120111 (regTwo!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120108 (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120110 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (reg!16473 (h!71055 (exprs!6028 (h!71056 zl!343))))))))))) (ite (or c!1120389 c!1120386) (ite (or c!1120111 c!1120108) lt!2343238 (Context!11057 call!519430)) (Context!11057 call!519591)) (h!71057 s!2326)))))

(declare-fun b!6205074 () Bool)

(declare-fun e!3778334 () (Set Context!11056))

(declare-fun call!519594 () (Set Context!11056))

(assert (=> b!6205074 (= e!3778334 (set.union call!519594 call!519593))))

(declare-fun b!6205075 () Bool)

(declare-fun e!3778337 () (Set Context!11056))

(declare-fun e!3778338 () (Set Context!11056))

(assert (=> b!6205075 (= e!3778337 e!3778338)))

(assert (=> b!6205075 (= c!1120388 (is-Concat!24989 (ite c!1120111 (regTwo!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120108 (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120110 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (reg!16473 (h!71055 (exprs!6028 (h!71056 zl!343)))))))))))

(declare-fun b!6205076 () Bool)

(declare-fun e!3778339 () Bool)

(assert (=> b!6205076 (= c!1120386 e!3778339)))

(declare-fun res!2566322 () Bool)

(assert (=> b!6205076 (=> (not res!2566322) (not e!3778339))))

(assert (=> b!6205076 (= res!2566322 (is-Concat!24989 (ite c!1120111 (regTwo!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120108 (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120110 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (reg!16473 (h!71055 (exprs!6028 (h!71056 zl!343)))))))))))

(assert (=> b!6205076 (= e!3778334 e!3778337)))

(declare-fun bm!519587 () Bool)

(declare-fun call!519596 () (Set Context!11056))

(assert (=> bm!519587 (= call!519596 call!519593)))

(declare-fun b!6205077 () Bool)

(declare-fun c!1120385 () Bool)

(assert (=> b!6205077 (= c!1120385 (is-Star!16144 (ite c!1120111 (regTwo!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120108 (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120110 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (reg!16473 (h!71055 (exprs!6028 (h!71056 zl!343)))))))))))

(declare-fun e!3778336 () (Set Context!11056))

(assert (=> b!6205077 (= e!3778338 e!3778336)))

(declare-fun c!1120387 () Bool)

(declare-fun d!1945022 () Bool)

(assert (=> d!1945022 (= c!1120387 (and (is-ElementMatch!16144 (ite c!1120111 (regTwo!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120108 (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120110 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (reg!16473 (h!71055 (exprs!6028 (h!71056 zl!343)))))))) (= (c!1120079 (ite c!1120111 (regTwo!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120108 (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120110 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (reg!16473 (h!71055 (exprs!6028 (h!71056 zl!343)))))))) (h!71057 s!2326))))))

(declare-fun e!3778335 () (Set Context!11056))

(assert (=> d!1945022 (= (derivationStepZipperDown!1392 (ite c!1120111 (regTwo!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120108 (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120110 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (reg!16473 (h!71055 (exprs!6028 (h!71056 zl!343))))))) (ite (or c!1120111 c!1120108) lt!2343238 (Context!11057 call!519430)) (h!71057 s!2326)) e!3778335)))

(declare-fun bm!519588 () Bool)

(declare-fun call!519592 () (Set Context!11056))

(assert (=> bm!519588 (= call!519592 call!519596)))

(declare-fun b!6205078 () Bool)

(assert (=> b!6205078 (= e!3778335 e!3778334)))

(assert (=> b!6205078 (= c!1120389 (is-Union!16144 (ite c!1120111 (regTwo!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120108 (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120110 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (reg!16473 (h!71055 (exprs!6028 (h!71056 zl!343)))))))))))

(declare-fun b!6205079 () Bool)

(assert (=> b!6205079 (= e!3778336 (as set.empty (Set Context!11056)))))

(declare-fun call!519595 () List!64731)

(declare-fun bm!519589 () Bool)

(assert (=> bm!519589 (= call!519594 (derivationStepZipperDown!1392 (ite c!1120389 (regOne!32801 (ite c!1120111 (regTwo!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120108 (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120110 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (reg!16473 (h!71055 (exprs!6028 (h!71056 zl!343)))))))) (regOne!32800 (ite c!1120111 (regTwo!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120108 (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120110 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (reg!16473 (h!71055 (exprs!6028 (h!71056 zl!343))))))))) (ite c!1120389 (ite (or c!1120111 c!1120108) lt!2343238 (Context!11057 call!519430)) (Context!11057 call!519595)) (h!71057 s!2326)))))

(declare-fun b!6205080 () Bool)

(assert (=> b!6205080 (= e!3778337 (set.union call!519594 call!519596))))

(declare-fun b!6205081 () Bool)

(assert (=> b!6205081 (= e!3778338 call!519592)))

(declare-fun bm!519590 () Bool)

(assert (=> bm!519590 (= call!519591 call!519595)))

(declare-fun b!6205082 () Bool)

(assert (=> b!6205082 (= e!3778335 (set.insert (ite (or c!1120111 c!1120108) lt!2343238 (Context!11057 call!519430)) (as set.empty (Set Context!11056))))))

(declare-fun b!6205083 () Bool)

(assert (=> b!6205083 (= e!3778336 call!519592)))

(declare-fun b!6205084 () Bool)

(assert (=> b!6205084 (= e!3778339 (nullable!6137 (regOne!32800 (ite c!1120111 (regTwo!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120108 (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120110 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (reg!16473 (h!71055 (exprs!6028 (h!71056 zl!343))))))))))))

(declare-fun bm!519591 () Bool)

(assert (=> bm!519591 (= call!519595 ($colon$colon!2013 (exprs!6028 (ite (or c!1120111 c!1120108) lt!2343238 (Context!11057 call!519430))) (ite (or c!1120386 c!1120388) (regTwo!32800 (ite c!1120111 (regTwo!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120108 (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120110 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (reg!16473 (h!71055 (exprs!6028 (h!71056 zl!343)))))))) (ite c!1120111 (regTwo!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120108 (regTwo!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (ite c!1120110 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))) (reg!16473 (h!71055 (exprs!6028 (h!71056 zl!343))))))))))))

(assert (= (and d!1945022 c!1120387) b!6205082))

(assert (= (and d!1945022 (not c!1120387)) b!6205078))

(assert (= (and b!6205078 c!1120389) b!6205074))

(assert (= (and b!6205078 (not c!1120389)) b!6205076))

(assert (= (and b!6205076 res!2566322) b!6205084))

(assert (= (and b!6205076 c!1120386) b!6205080))

(assert (= (and b!6205076 (not c!1120386)) b!6205075))

(assert (= (and b!6205075 c!1120388) b!6205081))

(assert (= (and b!6205075 (not c!1120388)) b!6205077))

(assert (= (and b!6205077 c!1120385) b!6205083))

(assert (= (and b!6205077 (not c!1120385)) b!6205079))

(assert (= (or b!6205081 b!6205083) bm!519590))

(assert (= (or b!6205081 b!6205083) bm!519588))

(assert (= (or b!6205080 bm!519590) bm!519591))

(assert (= (or b!6205080 bm!519588) bm!519587))

(assert (= (or b!6205074 bm!519587) bm!519586))

(assert (= (or b!6205074 b!6205080) bm!519589))

(declare-fun m!7036590 () Bool)

(assert (=> bm!519591 m!7036590))

(declare-fun m!7036592 () Bool)

(assert (=> b!6205084 m!7036592))

(declare-fun m!7036594 () Bool)

(assert (=> bm!519589 m!7036594))

(declare-fun m!7036596 () Bool)

(assert (=> b!6205082 m!7036596))

(declare-fun m!7036598 () Bool)

(assert (=> bm!519586 m!7036598))

(assert (=> bm!519425 d!1945022))

(declare-fun b!6205085 () Bool)

(declare-fun e!3778342 () Bool)

(declare-fun e!3778344 () Bool)

(assert (=> b!6205085 (= e!3778342 e!3778344)))

(declare-fun c!1120390 () Bool)

(assert (=> b!6205085 (= c!1120390 (is-Union!16144 lt!2343306))))

(declare-fun d!1945024 () Bool)

(declare-fun res!2566324 () Bool)

(declare-fun e!3778343 () Bool)

(assert (=> d!1945024 (=> res!2566324 e!3778343)))

(assert (=> d!1945024 (= res!2566324 (is-ElementMatch!16144 lt!2343306))))

(assert (=> d!1945024 (= (validRegex!7880 lt!2343306) e!3778343)))

(declare-fun b!6205086 () Bool)

(declare-fun e!3778346 () Bool)

(declare-fun call!519598 () Bool)

(assert (=> b!6205086 (= e!3778346 call!519598)))

(declare-fun b!6205087 () Bool)

(assert (=> b!6205087 (= e!3778343 e!3778342)))

(declare-fun c!1120391 () Bool)

(assert (=> b!6205087 (= c!1120391 (is-Star!16144 lt!2343306))))

(declare-fun b!6205088 () Bool)

(declare-fun res!2566325 () Bool)

(declare-fun e!3778341 () Bool)

(assert (=> b!6205088 (=> res!2566325 e!3778341)))

(assert (=> b!6205088 (= res!2566325 (not (is-Concat!24989 lt!2343306)))))

(assert (=> b!6205088 (= e!3778344 e!3778341)))

(declare-fun b!6205089 () Bool)

(declare-fun res!2566323 () Bool)

(declare-fun e!3778345 () Bool)

(assert (=> b!6205089 (=> (not res!2566323) (not e!3778345))))

(declare-fun call!519597 () Bool)

(assert (=> b!6205089 (= res!2566323 call!519597)))

(assert (=> b!6205089 (= e!3778344 e!3778345)))

(declare-fun bm!519592 () Bool)

(assert (=> bm!519592 (= call!519597 call!519598)))

(declare-fun bm!519593 () Bool)

(declare-fun call!519599 () Bool)

(assert (=> bm!519593 (= call!519599 (validRegex!7880 (ite c!1120390 (regTwo!32801 lt!2343306) (regTwo!32800 lt!2343306))))))

(declare-fun b!6205090 () Bool)

(declare-fun e!3778340 () Bool)

(assert (=> b!6205090 (= e!3778341 e!3778340)))

(declare-fun res!2566326 () Bool)

(assert (=> b!6205090 (=> (not res!2566326) (not e!3778340))))

(assert (=> b!6205090 (= res!2566326 call!519597)))

(declare-fun bm!519594 () Bool)

(assert (=> bm!519594 (= call!519598 (validRegex!7880 (ite c!1120391 (reg!16473 lt!2343306) (ite c!1120390 (regOne!32801 lt!2343306) (regOne!32800 lt!2343306)))))))

(declare-fun b!6205091 () Bool)

(assert (=> b!6205091 (= e!3778345 call!519599)))

(declare-fun b!6205092 () Bool)

(assert (=> b!6205092 (= e!3778342 e!3778346)))

(declare-fun res!2566327 () Bool)

(assert (=> b!6205092 (= res!2566327 (not (nullable!6137 (reg!16473 lt!2343306))))))

(assert (=> b!6205092 (=> (not res!2566327) (not e!3778346))))

(declare-fun b!6205093 () Bool)

(assert (=> b!6205093 (= e!3778340 call!519599)))

(assert (= (and d!1945024 (not res!2566324)) b!6205087))

(assert (= (and b!6205087 c!1120391) b!6205092))

(assert (= (and b!6205087 (not c!1120391)) b!6205085))

(assert (= (and b!6205092 res!2566327) b!6205086))

(assert (= (and b!6205085 c!1120390) b!6205089))

(assert (= (and b!6205085 (not c!1120390)) b!6205088))

(assert (= (and b!6205089 res!2566323) b!6205091))

(assert (= (and b!6205088 (not res!2566325)) b!6205090))

(assert (= (and b!6205090 res!2566326) b!6205093))

(assert (= (or b!6205091 b!6205093) bm!519593))

(assert (= (or b!6205089 b!6205090) bm!519592))

(assert (= (or b!6205086 bm!519592) bm!519594))

(declare-fun m!7036600 () Bool)

(assert (=> bm!519593 m!7036600))

(declare-fun m!7036602 () Bool)

(assert (=> bm!519594 m!7036602))

(declare-fun m!7036604 () Bool)

(assert (=> b!6205092 m!7036604))

(assert (=> d!1944794 d!1945024))

(declare-fun d!1945026 () Bool)

(declare-fun res!2566328 () Bool)

(declare-fun e!3778347 () Bool)

(assert (=> d!1945026 (=> res!2566328 e!3778347)))

(assert (=> d!1945026 (= res!2566328 (is-Nil!64607 (exprs!6028 (h!71056 zl!343))))))

(assert (=> d!1945026 (= (forall!15258 (exprs!6028 (h!71056 zl!343)) lambda!339065) e!3778347)))

(declare-fun b!6205094 () Bool)

(declare-fun e!3778348 () Bool)

(assert (=> b!6205094 (= e!3778347 e!3778348)))

(declare-fun res!2566329 () Bool)

(assert (=> b!6205094 (=> (not res!2566329) (not e!3778348))))

(assert (=> b!6205094 (= res!2566329 (dynLambda!25484 lambda!339065 (h!71055 (exprs!6028 (h!71056 zl!343)))))))

(declare-fun b!6205095 () Bool)

(assert (=> b!6205095 (= e!3778348 (forall!15258 (t!378251 (exprs!6028 (h!71056 zl!343))) lambda!339065))))

(assert (= (and d!1945026 (not res!2566328)) b!6205094))

(assert (= (and b!6205094 res!2566329) b!6205095))

(declare-fun b_lambda!235971 () Bool)

(assert (=> (not b_lambda!235971) (not b!6205094)))

(declare-fun m!7036606 () Bool)

(assert (=> b!6205094 m!7036606))

(declare-fun m!7036608 () Bool)

(assert (=> b!6205095 m!7036608))

(assert (=> d!1944794 d!1945026))

(assert (=> bm!519451 d!1944896))

(declare-fun d!1945028 () Bool)

(assert (=> d!1945028 (= ($colon$colon!2013 (exprs!6028 lt!2343238) (ite (or c!1120118 c!1120120) (regTwo!32800 (regTwo!32800 (regOne!32800 r!7292))) (regTwo!32800 (regOne!32800 r!7292)))) (Cons!64607 (ite (or c!1120118 c!1120120) (regTwo!32800 (regTwo!32800 (regOne!32800 r!7292))) (regTwo!32800 (regOne!32800 r!7292))) (exprs!6028 lt!2343238)))))

(assert (=> bm!519442 d!1945028))

(declare-fun b!6205096 () Bool)

(declare-fun e!3778351 () Bool)

(declare-fun e!3778353 () Bool)

(assert (=> b!6205096 (= e!3778351 e!3778353)))

(declare-fun c!1120392 () Bool)

(assert (=> b!6205096 (= c!1120392 (is-Union!16144 lt!2343288))))

(declare-fun d!1945030 () Bool)

(declare-fun res!2566331 () Bool)

(declare-fun e!3778352 () Bool)

(assert (=> d!1945030 (=> res!2566331 e!3778352)))

(assert (=> d!1945030 (= res!2566331 (is-ElementMatch!16144 lt!2343288))))

(assert (=> d!1945030 (= (validRegex!7880 lt!2343288) e!3778352)))

(declare-fun b!6205097 () Bool)

(declare-fun e!3778355 () Bool)

(declare-fun call!519601 () Bool)

(assert (=> b!6205097 (= e!3778355 call!519601)))

(declare-fun b!6205098 () Bool)

(assert (=> b!6205098 (= e!3778352 e!3778351)))

(declare-fun c!1120393 () Bool)

(assert (=> b!6205098 (= c!1120393 (is-Star!16144 lt!2343288))))

(declare-fun b!6205099 () Bool)

(declare-fun res!2566332 () Bool)

(declare-fun e!3778350 () Bool)

(assert (=> b!6205099 (=> res!2566332 e!3778350)))

(assert (=> b!6205099 (= res!2566332 (not (is-Concat!24989 lt!2343288)))))

(assert (=> b!6205099 (= e!3778353 e!3778350)))

(declare-fun b!6205100 () Bool)

(declare-fun res!2566330 () Bool)

(declare-fun e!3778354 () Bool)

(assert (=> b!6205100 (=> (not res!2566330) (not e!3778354))))

(declare-fun call!519600 () Bool)

(assert (=> b!6205100 (= res!2566330 call!519600)))

(assert (=> b!6205100 (= e!3778353 e!3778354)))

(declare-fun bm!519595 () Bool)

(assert (=> bm!519595 (= call!519600 call!519601)))

(declare-fun bm!519596 () Bool)

(declare-fun call!519602 () Bool)

(assert (=> bm!519596 (= call!519602 (validRegex!7880 (ite c!1120392 (regTwo!32801 lt!2343288) (regTwo!32800 lt!2343288))))))

(declare-fun b!6205101 () Bool)

(declare-fun e!3778349 () Bool)

(assert (=> b!6205101 (= e!3778350 e!3778349)))

(declare-fun res!2566333 () Bool)

(assert (=> b!6205101 (=> (not res!2566333) (not e!3778349))))

(assert (=> b!6205101 (= res!2566333 call!519600)))

(declare-fun bm!519597 () Bool)

(assert (=> bm!519597 (= call!519601 (validRegex!7880 (ite c!1120393 (reg!16473 lt!2343288) (ite c!1120392 (regOne!32801 lt!2343288) (regOne!32800 lt!2343288)))))))

(declare-fun b!6205102 () Bool)

(assert (=> b!6205102 (= e!3778354 call!519602)))

(declare-fun b!6205103 () Bool)

(assert (=> b!6205103 (= e!3778351 e!3778355)))

(declare-fun res!2566334 () Bool)

(assert (=> b!6205103 (= res!2566334 (not (nullable!6137 (reg!16473 lt!2343288))))))

(assert (=> b!6205103 (=> (not res!2566334) (not e!3778355))))

(declare-fun b!6205104 () Bool)

(assert (=> b!6205104 (= e!3778349 call!519602)))

(assert (= (and d!1945030 (not res!2566331)) b!6205098))

(assert (= (and b!6205098 c!1120393) b!6205103))

(assert (= (and b!6205098 (not c!1120393)) b!6205096))

(assert (= (and b!6205103 res!2566334) b!6205097))

(assert (= (and b!6205096 c!1120392) b!6205100))

(assert (= (and b!6205096 (not c!1120392)) b!6205099))

(assert (= (and b!6205100 res!2566330) b!6205102))

(assert (= (and b!6205099 (not res!2566332)) b!6205101))

(assert (= (and b!6205101 res!2566333) b!6205104))

(assert (= (or b!6205102 b!6205104) bm!519596))

(assert (= (or b!6205100 b!6205101) bm!519595))

(assert (= (or b!6205097 bm!519595) bm!519597))

(declare-fun m!7036610 () Bool)

(assert (=> bm!519596 m!7036610))

(declare-fun m!7036612 () Bool)

(assert (=> bm!519597 m!7036612))

(declare-fun m!7036614 () Bool)

(assert (=> b!6205103 m!7036614))

(assert (=> d!1944764 d!1945030))

(declare-fun d!1945032 () Bool)

(declare-fun res!2566335 () Bool)

(declare-fun e!3778356 () Bool)

(assert (=> d!1945032 (=> res!2566335 e!3778356)))

(assert (=> d!1945032 (= res!2566335 (is-Nil!64607 (unfocusZipperList!1565 zl!343)))))

(assert (=> d!1945032 (= (forall!15258 (unfocusZipperList!1565 zl!343) lambda!339045) e!3778356)))

(declare-fun b!6205105 () Bool)

(declare-fun e!3778357 () Bool)

(assert (=> b!6205105 (= e!3778356 e!3778357)))

(declare-fun res!2566336 () Bool)

(assert (=> b!6205105 (=> (not res!2566336) (not e!3778357))))

(assert (=> b!6205105 (= res!2566336 (dynLambda!25484 lambda!339045 (h!71055 (unfocusZipperList!1565 zl!343))))))

(declare-fun b!6205106 () Bool)

(assert (=> b!6205106 (= e!3778357 (forall!15258 (t!378251 (unfocusZipperList!1565 zl!343)) lambda!339045))))

(assert (= (and d!1945032 (not res!2566335)) b!6205105))

(assert (= (and b!6205105 res!2566336) b!6205106))

(declare-fun b_lambda!235973 () Bool)

(assert (=> (not b_lambda!235973) (not b!6205105)))

(declare-fun m!7036616 () Bool)

(assert (=> b!6205105 m!7036616))

(declare-fun m!7036618 () Bool)

(assert (=> b!6205106 m!7036618))

(assert (=> d!1944764 d!1945032))

(declare-fun d!1945034 () Bool)

(assert (=> d!1945034 (= (head!12796 (exprs!6028 (h!71056 zl!343))) (h!71055 (exprs!6028 (h!71056 zl!343))))))

(assert (=> b!6204329 d!1945034))

(declare-fun d!1945036 () Bool)

(declare-fun c!1120396 () Bool)

(assert (=> d!1945036 (= c!1120396 (is-Nil!64608 lt!2343279))))

(declare-fun e!3778360 () (Set Context!11056))

(assert (=> d!1945036 (= (content!12083 lt!2343279) e!3778360)))

(declare-fun b!6205111 () Bool)

(assert (=> b!6205111 (= e!3778360 (as set.empty (Set Context!11056)))))

(declare-fun b!6205112 () Bool)

(assert (=> b!6205112 (= e!3778360 (set.union (set.insert (h!71056 lt!2343279) (as set.empty (Set Context!11056))) (content!12083 (t!378252 lt!2343279))))))

(assert (= (and d!1945036 c!1120396) b!6205111))

(assert (= (and d!1945036 (not c!1120396)) b!6205112))

(declare-fun m!7036620 () Bool)

(assert (=> b!6205112 m!7036620))

(declare-fun m!7036622 () Bool)

(assert (=> b!6205112 m!7036622))

(assert (=> b!6204021 d!1945036))

(declare-fun d!1945038 () Bool)

(assert (=> d!1945038 (= (nullable!6137 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343))))) (nullableFct!2093 (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343))))))))

(declare-fun bs!1539212 () Bool)

(assert (= bs!1539212 d!1945038))

(declare-fun m!7036624 () Bool)

(assert (=> bs!1539212 m!7036624))

(assert (=> b!6204079 d!1945038))

(declare-fun d!1945040 () Bool)

(assert (=> d!1945040 true))

(declare-fun setRes!42133 () Bool)

(assert (=> d!1945040 setRes!42133))

(declare-fun condSetEmpty!42133 () Bool)

(declare-fun res!2566339 () (Set Context!11056))

(assert (=> d!1945040 (= condSetEmpty!42133 (= res!2566339 (as set.empty (Set Context!11056))))))

(assert (=> d!1945040 (= (choose!46113 z!1189 lambda!339028) res!2566339)))

(declare-fun setIsEmpty!42133 () Bool)

(assert (=> setIsEmpty!42133 setRes!42133))

(declare-fun setElem!42133 () Context!11056)

(declare-fun e!3778363 () Bool)

(declare-fun tp!1730425 () Bool)

(declare-fun setNonEmpty!42133 () Bool)

(assert (=> setNonEmpty!42133 (= setRes!42133 (and tp!1730425 (inv!83608 setElem!42133) e!3778363))))

(declare-fun setRest!42133 () (Set Context!11056))

(assert (=> setNonEmpty!42133 (= res!2566339 (set.union (set.insert setElem!42133 (as set.empty (Set Context!11056))) setRest!42133))))

(declare-fun b!6205115 () Bool)

(declare-fun tp!1730426 () Bool)

(assert (=> b!6205115 (= e!3778363 tp!1730426)))

(assert (= (and d!1945040 condSetEmpty!42133) setIsEmpty!42133))

(assert (= (and d!1945040 (not condSetEmpty!42133)) setNonEmpty!42133))

(assert (= setNonEmpty!42133 b!6205115))

(declare-fun m!7036626 () Bool)

(assert (=> setNonEmpty!42133 m!7036626))

(assert (=> d!1944744 d!1945040))

(declare-fun d!1945042 () Bool)

(assert (=> d!1945042 (= (isEmpty!36605 (exprs!6028 (h!71056 zl!343))) (is-Nil!64607 (exprs!6028 (h!71056 zl!343))))))

(assert (=> b!6204331 d!1945042))

(declare-fun b!6205116 () Bool)

(declare-fun e!3778366 () Bool)

(declare-fun e!3778368 () Bool)

(assert (=> b!6205116 (= e!3778366 e!3778368)))

(declare-fun c!1120397 () Bool)

(assert (=> b!6205116 (= c!1120397 (is-Union!16144 (ite c!1120177 (regTwo!32801 r!7292) (regTwo!32800 r!7292))))))

(declare-fun d!1945044 () Bool)

(declare-fun res!2566341 () Bool)

(declare-fun e!3778367 () Bool)

(assert (=> d!1945044 (=> res!2566341 e!3778367)))

(assert (=> d!1945044 (= res!2566341 (is-ElementMatch!16144 (ite c!1120177 (regTwo!32801 r!7292) (regTwo!32800 r!7292))))))

(assert (=> d!1945044 (= (validRegex!7880 (ite c!1120177 (regTwo!32801 r!7292) (regTwo!32800 r!7292))) e!3778367)))

(declare-fun b!6205117 () Bool)

(declare-fun e!3778370 () Bool)

(declare-fun call!519604 () Bool)

(assert (=> b!6205117 (= e!3778370 call!519604)))

(declare-fun b!6205118 () Bool)

(assert (=> b!6205118 (= e!3778367 e!3778366)))

(declare-fun c!1120398 () Bool)

(assert (=> b!6205118 (= c!1120398 (is-Star!16144 (ite c!1120177 (regTwo!32801 r!7292) (regTwo!32800 r!7292))))))

(declare-fun b!6205119 () Bool)

(declare-fun res!2566342 () Bool)

(declare-fun e!3778365 () Bool)

(assert (=> b!6205119 (=> res!2566342 e!3778365)))

(assert (=> b!6205119 (= res!2566342 (not (is-Concat!24989 (ite c!1120177 (regTwo!32801 r!7292) (regTwo!32800 r!7292)))))))

(assert (=> b!6205119 (= e!3778368 e!3778365)))

(declare-fun b!6205120 () Bool)

(declare-fun res!2566340 () Bool)

(declare-fun e!3778369 () Bool)

(assert (=> b!6205120 (=> (not res!2566340) (not e!3778369))))

(declare-fun call!519603 () Bool)

(assert (=> b!6205120 (= res!2566340 call!519603)))

(assert (=> b!6205120 (= e!3778368 e!3778369)))

(declare-fun bm!519598 () Bool)

(assert (=> bm!519598 (= call!519603 call!519604)))

(declare-fun call!519605 () Bool)

(declare-fun bm!519599 () Bool)

(assert (=> bm!519599 (= call!519605 (validRegex!7880 (ite c!1120397 (regTwo!32801 (ite c!1120177 (regTwo!32801 r!7292) (regTwo!32800 r!7292))) (regTwo!32800 (ite c!1120177 (regTwo!32801 r!7292) (regTwo!32800 r!7292))))))))

(declare-fun b!6205121 () Bool)

(declare-fun e!3778364 () Bool)

(assert (=> b!6205121 (= e!3778365 e!3778364)))

(declare-fun res!2566343 () Bool)

(assert (=> b!6205121 (=> (not res!2566343) (not e!3778364))))

(assert (=> b!6205121 (= res!2566343 call!519603)))

(declare-fun bm!519600 () Bool)

(assert (=> bm!519600 (= call!519604 (validRegex!7880 (ite c!1120398 (reg!16473 (ite c!1120177 (regTwo!32801 r!7292) (regTwo!32800 r!7292))) (ite c!1120397 (regOne!32801 (ite c!1120177 (regTwo!32801 r!7292) (regTwo!32800 r!7292))) (regOne!32800 (ite c!1120177 (regTwo!32801 r!7292) (regTwo!32800 r!7292)))))))))

(declare-fun b!6205122 () Bool)

(assert (=> b!6205122 (= e!3778369 call!519605)))

(declare-fun b!6205123 () Bool)

(assert (=> b!6205123 (= e!3778366 e!3778370)))

(declare-fun res!2566344 () Bool)

(assert (=> b!6205123 (= res!2566344 (not (nullable!6137 (reg!16473 (ite c!1120177 (regTwo!32801 r!7292) (regTwo!32800 r!7292))))))))

(assert (=> b!6205123 (=> (not res!2566344) (not e!3778370))))

(declare-fun b!6205124 () Bool)

(assert (=> b!6205124 (= e!3778364 call!519605)))

(assert (= (and d!1945044 (not res!2566341)) b!6205118))

(assert (= (and b!6205118 c!1120398) b!6205123))

(assert (= (and b!6205118 (not c!1120398)) b!6205116))

(assert (= (and b!6205123 res!2566344) b!6205117))

(assert (= (and b!6205116 c!1120397) b!6205120))

(assert (= (and b!6205116 (not c!1120397)) b!6205119))

(assert (= (and b!6205120 res!2566340) b!6205122))

(assert (= (and b!6205119 (not res!2566342)) b!6205121))

(assert (= (and b!6205121 res!2566343) b!6205124))

(assert (= (or b!6205122 b!6205124) bm!519599))

(assert (= (or b!6205120 b!6205121) bm!519598))

(assert (= (or b!6205117 bm!519598) bm!519600))

(declare-fun m!7036628 () Bool)

(assert (=> bm!519599 m!7036628))

(declare-fun m!7036630 () Bool)

(assert (=> bm!519600 m!7036630))

(declare-fun m!7036632 () Bool)

(assert (=> b!6205123 m!7036632))

(assert (=> bm!519459 d!1945044))

(declare-fun d!1945046 () Bool)

(assert (=> d!1945046 (= (Exists!3214 (ite c!1120148 lambda!339054 lambda!339055)) (choose!46117 (ite c!1120148 lambda!339054 lambda!339055)))))

(declare-fun bs!1539213 () Bool)

(assert (= bs!1539213 d!1945046))

(declare-fun m!7036634 () Bool)

(assert (=> bs!1539213 m!7036634))

(assert (=> bm!519447 d!1945046))

(declare-fun bs!1539214 () Bool)

(declare-fun d!1945048 () Bool)

(assert (= bs!1539214 (and d!1945048 d!1944768)))

(declare-fun lambda!339122 () Int)

(assert (=> bs!1539214 (= lambda!339122 lambda!339049)))

(declare-fun bs!1539215 () Bool)

(assert (= bs!1539215 (and d!1945048 d!1944968)))

(assert (=> bs!1539215 (= lambda!339122 lambda!339112)))

(declare-fun bs!1539216 () Bool)

(assert (= bs!1539216 (and d!1945048 d!1944906)))

(assert (=> bs!1539216 (= lambda!339122 lambda!339101)))

(declare-fun bs!1539217 () Bool)

(assert (= bs!1539217 (and d!1945048 d!1944794)))

(assert (=> bs!1539217 (= lambda!339122 lambda!339065)))

(declare-fun bs!1539218 () Bool)

(assert (= bs!1539218 (and d!1945048 d!1944764)))

(assert (=> bs!1539218 (= lambda!339122 lambda!339045)))

(declare-fun bs!1539219 () Bool)

(assert (= bs!1539219 (and d!1945048 d!1944792)))

(assert (=> bs!1539219 (= lambda!339122 lambda!339062)))

(declare-fun bs!1539220 () Bool)

(assert (= bs!1539220 (and d!1945048 d!1944766)))

(assert (=> bs!1539220 (= lambda!339122 lambda!339048)))

(declare-fun bs!1539221 () Bool)

(assert (= bs!1539221 (and d!1945048 d!1944936)))

(assert (=> bs!1539221 (= lambda!339122 lambda!339105)))

(declare-fun bs!1539222 () Bool)

(assert (= bs!1539222 (and d!1945048 d!1944736)))

(assert (=> bs!1539222 (= lambda!339122 lambda!339042)))

(declare-fun bs!1539223 () Bool)

(assert (= bs!1539223 (and d!1945048 d!1944900)))

(assert (=> bs!1539223 (= lambda!339122 lambda!339100)))

(assert (=> d!1945048 (= (inv!83608 setElem!42127) (forall!15258 (exprs!6028 setElem!42127) lambda!339122))))

(declare-fun bs!1539224 () Bool)

(assert (= bs!1539224 d!1945048))

(declare-fun m!7036636 () Bool)

(assert (=> bs!1539224 m!7036636))

(assert (=> setNonEmpty!42127 d!1945048))

(declare-fun b!6205125 () Bool)

(declare-fun e!3778373 () (Set Context!11056))

(declare-fun call!519606 () (Set Context!11056))

(assert (=> b!6205125 (= e!3778373 call!519606)))

(declare-fun b!6205126 () Bool)

(declare-fun e!3778372 () (Set Context!11056))

(assert (=> b!6205126 (= e!3778372 e!3778373)))

(declare-fun c!1120399 () Bool)

(assert (=> b!6205126 (= c!1120399 (is-Cons!64607 (exprs!6028 (Context!11057 (t!378251 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))))))))

(declare-fun d!1945050 () Bool)

(declare-fun c!1120400 () Bool)

(declare-fun e!3778371 () Bool)

(assert (=> d!1945050 (= c!1120400 e!3778371)))

(declare-fun res!2566345 () Bool)

(assert (=> d!1945050 (=> (not res!2566345) (not e!3778371))))

(assert (=> d!1945050 (= res!2566345 (is-Cons!64607 (exprs!6028 (Context!11057 (t!378251 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))))))))

(assert (=> d!1945050 (= (derivationStepZipperUp!1318 (Context!11057 (t!378251 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))) (h!71057 s!2326)) e!3778372)))

(declare-fun bm!519601 () Bool)

(assert (=> bm!519601 (= call!519606 (derivationStepZipperDown!1392 (h!71055 (exprs!6028 (Context!11057 (t!378251 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343)))))))))) (Context!11057 (t!378251 (exprs!6028 (Context!11057 (t!378251 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343))))))))))) (h!71057 s!2326)))))

(declare-fun b!6205127 () Bool)

(assert (=> b!6205127 (= e!3778371 (nullable!6137 (h!71055 (exprs!6028 (Context!11057 (t!378251 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343))))))))))))))

(declare-fun b!6205128 () Bool)

(assert (=> b!6205128 (= e!3778373 (as set.empty (Set Context!11056)))))

(declare-fun b!6205129 () Bool)

(assert (=> b!6205129 (= e!3778372 (set.union call!519606 (derivationStepZipperUp!1318 (Context!11057 (t!378251 (exprs!6028 (Context!11057 (t!378251 (exprs!6028 (Context!11057 (Cons!64607 (h!71055 (exprs!6028 (h!71056 zl!343))) (t!378251 (exprs!6028 (h!71056 zl!343))))))))))) (h!71057 s!2326))))))

(assert (= (and d!1945050 res!2566345) b!6205127))

(assert (= (and d!1945050 c!1120400) b!6205129))

(assert (= (and d!1945050 (not c!1120400)) b!6205126))

(assert (= (and b!6205126 c!1120399) b!6205125))

(assert (= (and b!6205126 (not c!1120399)) b!6205128))

(assert (= (or b!6205129 b!6205125) bm!519601))

(declare-fun m!7036638 () Bool)

(assert (=> bm!519601 m!7036638))

(declare-fun m!7036640 () Bool)

(assert (=> b!6205127 m!7036640))

(declare-fun m!7036642 () Bool)

(assert (=> b!6205129 m!7036642))

(assert (=> b!6204041 d!1945050))

(assert (=> d!1944784 d!1944788))

(assert (=> d!1944784 d!1944786))

(declare-fun e!3778376 () Bool)

(declare-fun d!1945052 () Bool)

(assert (=> d!1945052 (= (matchZipper!2156 (set.union lt!2343239 lt!2343240) (t!378253 s!2326)) e!3778376)))

(declare-fun res!2566348 () Bool)

(assert (=> d!1945052 (=> res!2566348 e!3778376)))

(assert (=> d!1945052 (= res!2566348 (matchZipper!2156 lt!2343239 (t!378253 s!2326)))))

(assert (=> d!1945052 true))

(declare-fun _$48!1857 () Unit!157907)

(assert (=> d!1945052 (= (choose!46116 lt!2343239 lt!2343240 (t!378253 s!2326)) _$48!1857)))

(declare-fun b!6205132 () Bool)

(assert (=> b!6205132 (= e!3778376 (matchZipper!2156 lt!2343240 (t!378253 s!2326)))))

(assert (= (and d!1945052 (not res!2566348)) b!6205132))

(assert (=> d!1945052 m!7035702))

(assert (=> d!1945052 m!7035700))

(assert (=> b!6205132 m!7035724))

(assert (=> d!1944784 d!1945052))

(declare-fun b!6205133 () Bool)

(declare-fun e!3778381 () Bool)

(declare-fun call!519607 () Bool)

(assert (=> b!6205133 (= e!3778381 call!519607)))

(declare-fun bm!519602 () Bool)

(declare-fun c!1120401 () Bool)

(assert (=> bm!519602 (= call!519607 (nullable!6137 (ite c!1120401 (regTwo!32801 (regOne!32800 (regOne!32800 r!7292))) (regTwo!32800 (regOne!32800 (regOne!32800 r!7292))))))))

(declare-fun b!6205134 () Bool)

(declare-fun e!3778380 () Bool)

(declare-fun e!3778382 () Bool)

(assert (=> b!6205134 (= e!3778380 e!3778382)))

(declare-fun res!2566350 () Bool)

(declare-fun call!519608 () Bool)

(assert (=> b!6205134 (= res!2566350 call!519608)))

(assert (=> b!6205134 (=> (not res!2566350) (not e!3778382))))

(declare-fun b!6205135 () Bool)

(assert (=> b!6205135 (= e!3778382 call!519607)))

(declare-fun b!6205136 () Bool)

(declare-fun e!3778377 () Bool)

(declare-fun e!3778379 () Bool)

(assert (=> b!6205136 (= e!3778377 e!3778379)))

(declare-fun res!2566352 () Bool)

(assert (=> b!6205136 (=> (not res!2566352) (not e!3778379))))

(assert (=> b!6205136 (= res!2566352 (and (not (is-EmptyLang!16144 (regOne!32800 (regOne!32800 r!7292)))) (not (is-ElementMatch!16144 (regOne!32800 (regOne!32800 r!7292))))))))

(declare-fun d!1945054 () Bool)

(declare-fun res!2566353 () Bool)

(assert (=> d!1945054 (=> res!2566353 e!3778377)))

(assert (=> d!1945054 (= res!2566353 (is-EmptyExpr!16144 (regOne!32800 (regOne!32800 r!7292))))))

(assert (=> d!1945054 (= (nullableFct!2093 (regOne!32800 (regOne!32800 r!7292))) e!3778377)))

(declare-fun bm!519603 () Bool)

(assert (=> bm!519603 (= call!519608 (nullable!6137 (ite c!1120401 (regOne!32801 (regOne!32800 (regOne!32800 r!7292))) (regOne!32800 (regOne!32800 (regOne!32800 r!7292))))))))

(declare-fun b!6205137 () Bool)

(assert (=> b!6205137 (= e!3778380 e!3778381)))

(declare-fun res!2566349 () Bool)

(assert (=> b!6205137 (= res!2566349 call!519608)))

(assert (=> b!6205137 (=> res!2566349 e!3778381)))

(declare-fun b!6205138 () Bool)

(declare-fun e!3778378 () Bool)

(assert (=> b!6205138 (= e!3778379 e!3778378)))

(declare-fun res!2566351 () Bool)

(assert (=> b!6205138 (=> res!2566351 e!3778378)))

(assert (=> b!6205138 (= res!2566351 (is-Star!16144 (regOne!32800 (regOne!32800 r!7292))))))

(declare-fun b!6205139 () Bool)

(assert (=> b!6205139 (= e!3778378 e!3778380)))

(assert (=> b!6205139 (= c!1120401 (is-Union!16144 (regOne!32800 (regOne!32800 r!7292))))))

(assert (= (and d!1945054 (not res!2566353)) b!6205136))

(assert (= (and b!6205136 res!2566352) b!6205138))

(assert (= (and b!6205138 (not res!2566351)) b!6205139))

(assert (= (and b!6205139 c!1120401) b!6205137))

(assert (= (and b!6205139 (not c!1120401)) b!6205134))

(assert (= (and b!6205137 (not res!2566349)) b!6205133))

(assert (= (and b!6205134 res!2566350) b!6205135))

(assert (= (or b!6205133 b!6205135) bm!519602))

(assert (= (or b!6205137 b!6205134) bm!519603))

(declare-fun m!7036644 () Bool)

(assert (=> bm!519602 m!7036644))

(declare-fun m!7036646 () Bool)

(assert (=> bm!519603 m!7036646))

(assert (=> d!1944742 d!1945054))

(declare-fun b!6205140 () Bool)

(declare-fun e!3778385 () (Set Context!11056))

(declare-fun call!519609 () (Set Context!11056))

(assert (=> b!6205140 (= e!3778385 call!519609)))

(declare-fun b!6205141 () Bool)

(declare-fun e!3778384 () (Set Context!11056))

(assert (=> b!6205141 (= e!3778384 e!3778385)))

(declare-fun c!1120402 () Bool)

(assert (=> b!6205141 (= c!1120402 (is-Cons!64607 (exprs!6028 (Context!11057 (t!378251 (exprs!6028 (h!71056 zl!343)))))))))

(declare-fun d!1945056 () Bool)

(declare-fun c!1120403 () Bool)

(declare-fun e!3778383 () Bool)

(assert (=> d!1945056 (= c!1120403 e!3778383)))

(declare-fun res!2566354 () Bool)

(assert (=> d!1945056 (=> (not res!2566354) (not e!3778383))))

(assert (=> d!1945056 (= res!2566354 (is-Cons!64607 (exprs!6028 (Context!11057 (t!378251 (exprs!6028 (h!71056 zl!343)))))))))

(assert (=> d!1945056 (= (derivationStepZipperUp!1318 (Context!11057 (t!378251 (exprs!6028 (h!71056 zl!343)))) (h!71057 s!2326)) e!3778384)))

(declare-fun bm!519604 () Bool)

(assert (=> bm!519604 (= call!519609 (derivationStepZipperDown!1392 (h!71055 (exprs!6028 (Context!11057 (t!378251 (exprs!6028 (h!71056 zl!343)))))) (Context!11057 (t!378251 (exprs!6028 (Context!11057 (t!378251 (exprs!6028 (h!71056 zl!343))))))) (h!71057 s!2326)))))

(declare-fun b!6205142 () Bool)

(assert (=> b!6205142 (= e!3778383 (nullable!6137 (h!71055 (exprs!6028 (Context!11057 (t!378251 (exprs!6028 (h!71056 zl!343))))))))))

(declare-fun b!6205143 () Bool)

(assert (=> b!6205143 (= e!3778385 (as set.empty (Set Context!11056)))))

(declare-fun b!6205144 () Bool)

(assert (=> b!6205144 (= e!3778384 (set.union call!519609 (derivationStepZipperUp!1318 (Context!11057 (t!378251 (exprs!6028 (Context!11057 (t!378251 (exprs!6028 (h!71056 zl!343))))))) (h!71057 s!2326))))))

(assert (= (and d!1945056 res!2566354) b!6205142))

(assert (= (and d!1945056 c!1120403) b!6205144))

(assert (= (and d!1945056 (not c!1120403)) b!6205141))

(assert (= (and b!6205141 c!1120402) b!6205140))

(assert (= (and b!6205141 (not c!1120402)) b!6205143))

(assert (= (or b!6205144 b!6205140) bm!519604))

(declare-fun m!7036648 () Bool)

(assert (=> bm!519604 m!7036648))

(declare-fun m!7036650 () Bool)

(assert (=> b!6205142 m!7036650))

(declare-fun m!7036652 () Bool)

(assert (=> b!6205144 m!7036652))

(assert (=> b!6204046 d!1945056))

(assert (=> d!1944786 d!1944882))

(declare-fun d!1945058 () Bool)

(declare-fun c!1120404 () Bool)

(assert (=> d!1945058 (= c!1120404 (isEmpty!36608 (tail!11882 (t!378253 s!2326))))))

(declare-fun e!3778386 () Bool)

(assert (=> d!1945058 (= (matchZipper!2156 (derivationStepZipper!2110 (set.union lt!2343239 lt!2343240) (head!12797 (t!378253 s!2326))) (tail!11882 (t!378253 s!2326))) e!3778386)))

(declare-fun b!6205145 () Bool)

(assert (=> b!6205145 (= e!3778386 (nullableZipper!1918 (derivationStepZipper!2110 (set.union lt!2343239 lt!2343240) (head!12797 (t!378253 s!2326)))))))

(declare-fun b!6205146 () Bool)

(assert (=> b!6205146 (= e!3778386 (matchZipper!2156 (derivationStepZipper!2110 (derivationStepZipper!2110 (set.union lt!2343239 lt!2343240) (head!12797 (t!378253 s!2326))) (head!12797 (tail!11882 (t!378253 s!2326)))) (tail!11882 (tail!11882 (t!378253 s!2326)))))))

(assert (= (and d!1945058 c!1120404) b!6205145))

(assert (= (and d!1945058 (not c!1120404)) b!6205146))

(assert (=> d!1945058 m!7035972))

(assert (=> d!1945058 m!7036334))

(assert (=> b!6205145 m!7035978))

(declare-fun m!7036654 () Bool)

(assert (=> b!6205145 m!7036654))

(assert (=> b!6205146 m!7035972))

(assert (=> b!6205146 m!7036338))

(assert (=> b!6205146 m!7035978))

(assert (=> b!6205146 m!7036338))

(declare-fun m!7036656 () Bool)

(assert (=> b!6205146 m!7036656))

(assert (=> b!6205146 m!7035972))

(assert (=> b!6205146 m!7036342))

(assert (=> b!6205146 m!7036656))

(assert (=> b!6205146 m!7036342))

(declare-fun m!7036658 () Bool)

(assert (=> b!6205146 m!7036658))

(assert (=> b!6204249 d!1945058))

(declare-fun bs!1539225 () Bool)

(declare-fun d!1945060 () Bool)

(assert (= bs!1539225 (and d!1945060 b!6203896)))

(declare-fun lambda!339123 () Int)

(assert (=> bs!1539225 (= (= (head!12797 (t!378253 s!2326)) (h!71057 s!2326)) (= lambda!339123 lambda!339028))))

(declare-fun bs!1539226 () Bool)

(assert (= bs!1539226 (and d!1945060 d!1944912)))

(assert (=> bs!1539226 (= lambda!339123 lambda!339104)))

(declare-fun bs!1539227 () Bool)

(assert (= bs!1539227 (and d!1945060 d!1944964)))

(assert (=> bs!1539227 (= lambda!339123 lambda!339111)))

(assert (=> d!1945060 true))

(assert (=> d!1945060 (= (derivationStepZipper!2110 (set.union lt!2343239 lt!2343240) (head!12797 (t!378253 s!2326))) (flatMap!1649 (set.union lt!2343239 lt!2343240) lambda!339123))))

(declare-fun bs!1539228 () Bool)

(assert (= bs!1539228 d!1945060))

(declare-fun m!7036660 () Bool)

(assert (=> bs!1539228 m!7036660))

(assert (=> b!6204249 d!1945060))

(assert (=> b!6204249 d!1944914))

(assert (=> b!6204249 d!1944916))

(declare-fun d!1945062 () Bool)

(assert (=> d!1945062 (= (head!12796 (unfocusZipperList!1565 zl!343)) (h!71055 (unfocusZipperList!1565 zl!343)))))

(assert (=> b!6204131 d!1945062))

(assert (=> b!6204385 d!1944982))

(declare-fun bm!519605 () Bool)

(declare-fun call!519612 () (Set Context!11056))

(declare-fun c!1120408 () Bool)

(declare-fun c!1120406 () Bool)

(declare-fun c!1120409 () Bool)

(declare-fun call!519610 () List!64731)

(assert (=> bm!519605 (= call!519612 (derivationStepZipperDown!1392 (ite c!1120409 (regTwo!32801 (ite c!1120111 (regOne!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))))) (ite c!1120406 (regTwo!32800 (ite c!1120111 (regOne!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))))) (ite c!1120408 (regOne!32800 (ite c!1120111 (regOne!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))))) (reg!16473 (ite c!1120111 (regOne!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343))))))))) (ite (or c!1120409 c!1120406) (ite c!1120111 lt!2343238 (Context!11057 call!519434)) (Context!11057 call!519610)) (h!71057 s!2326)))))

(declare-fun b!6205147 () Bool)

(declare-fun e!3778387 () (Set Context!11056))

(declare-fun call!519613 () (Set Context!11056))

(assert (=> b!6205147 (= e!3778387 (set.union call!519613 call!519612))))

(declare-fun b!6205148 () Bool)

(declare-fun e!3778390 () (Set Context!11056))

(declare-fun e!3778391 () (Set Context!11056))

(assert (=> b!6205148 (= e!3778390 e!3778391)))

(assert (=> b!6205148 (= c!1120408 (is-Concat!24989 (ite c!1120111 (regOne!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))))))))

(declare-fun b!6205149 () Bool)

(declare-fun e!3778392 () Bool)

(assert (=> b!6205149 (= c!1120406 e!3778392)))

(declare-fun res!2566355 () Bool)

(assert (=> b!6205149 (=> (not res!2566355) (not e!3778392))))

(assert (=> b!6205149 (= res!2566355 (is-Concat!24989 (ite c!1120111 (regOne!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))))))))

(assert (=> b!6205149 (= e!3778387 e!3778390)))

(declare-fun bm!519606 () Bool)

(declare-fun call!519615 () (Set Context!11056))

(assert (=> bm!519606 (= call!519615 call!519612)))

(declare-fun b!6205150 () Bool)

(declare-fun c!1120405 () Bool)

(assert (=> b!6205150 (= c!1120405 (is-Star!16144 (ite c!1120111 (regOne!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))))))))

(declare-fun e!3778389 () (Set Context!11056))

(assert (=> b!6205150 (= e!3778391 e!3778389)))

(declare-fun d!1945064 () Bool)

(declare-fun c!1120407 () Bool)

(assert (=> d!1945064 (= c!1120407 (and (is-ElementMatch!16144 (ite c!1120111 (regOne!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))))) (= (c!1120079 (ite c!1120111 (regOne!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))))) (h!71057 s!2326))))))

(declare-fun e!3778388 () (Set Context!11056))

(assert (=> d!1945064 (= (derivationStepZipperDown!1392 (ite c!1120111 (regOne!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343))))) (ite c!1120111 lt!2343238 (Context!11057 call!519434)) (h!71057 s!2326)) e!3778388)))

(declare-fun bm!519607 () Bool)

(declare-fun call!519611 () (Set Context!11056))

(assert (=> bm!519607 (= call!519611 call!519615)))

(declare-fun b!6205151 () Bool)

(assert (=> b!6205151 (= e!3778388 e!3778387)))

(assert (=> b!6205151 (= c!1120409 (is-Union!16144 (ite c!1120111 (regOne!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))))))))

(declare-fun b!6205152 () Bool)

(assert (=> b!6205152 (= e!3778389 (as set.empty (Set Context!11056)))))

(declare-fun call!519614 () List!64731)

(declare-fun bm!519608 () Bool)

(assert (=> bm!519608 (= call!519613 (derivationStepZipperDown!1392 (ite c!1120409 (regOne!32801 (ite c!1120111 (regOne!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))))) (regOne!32800 (ite c!1120111 (regOne!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343))))))) (ite c!1120409 (ite c!1120111 lt!2343238 (Context!11057 call!519434)) (Context!11057 call!519614)) (h!71057 s!2326)))))

(declare-fun b!6205153 () Bool)

(assert (=> b!6205153 (= e!3778390 (set.union call!519613 call!519615))))

(declare-fun b!6205154 () Bool)

(assert (=> b!6205154 (= e!3778391 call!519611)))

(declare-fun bm!519609 () Bool)

(assert (=> bm!519609 (= call!519610 call!519614)))

(declare-fun b!6205155 () Bool)

(assert (=> b!6205155 (= e!3778388 (set.insert (ite c!1120111 lt!2343238 (Context!11057 call!519434)) (as set.empty (Set Context!11056))))))

(declare-fun b!6205156 () Bool)

(assert (=> b!6205156 (= e!3778389 call!519611)))

(declare-fun b!6205157 () Bool)

(assert (=> b!6205157 (= e!3778392 (nullable!6137 (regOne!32800 (ite c!1120111 (regOne!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343))))))))))

(declare-fun bm!519610 () Bool)

(assert (=> bm!519610 (= call!519614 ($colon$colon!2013 (exprs!6028 (ite c!1120111 lt!2343238 (Context!11057 call!519434))) (ite (or c!1120406 c!1120408) (regTwo!32800 (ite c!1120111 (regOne!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343)))))) (ite c!1120111 (regOne!32801 (h!71055 (exprs!6028 (h!71056 zl!343)))) (regOne!32800 (h!71055 (exprs!6028 (h!71056 zl!343))))))))))

(assert (= (and d!1945064 c!1120407) b!6205155))

(assert (= (and d!1945064 (not c!1120407)) b!6205151))

(assert (= (and b!6205151 c!1120409) b!6205147))

(assert (= (and b!6205151 (not c!1120409)) b!6205149))

(assert (= (and b!6205149 res!2566355) b!6205157))

(assert (= (and b!6205149 c!1120406) b!6205153))

(assert (= (and b!6205149 (not c!1120406)) b!6205148))

(assert (= (and b!6205148 c!1120408) b!6205154))

(assert (= (and b!6205148 (not c!1120408)) b!6205150))

(assert (= (and b!6205150 c!1120405) b!6205156))

(assert (= (and b!6205150 (not c!1120405)) b!6205152))

(assert (= (or b!6205154 b!6205156) bm!519609))

(assert (= (or b!6205154 b!6205156) bm!519607))

(assert (= (or b!6205153 bm!519609) bm!519610))

(assert (= (or b!6205153 bm!519607) bm!519606))

(assert (= (or b!6205147 bm!519606) bm!519605))

(assert (= (or b!6205147 b!6205153) bm!519608))

(declare-fun m!7036662 () Bool)

(assert (=> bm!519610 m!7036662))

(declare-fun m!7036664 () Bool)

(assert (=> b!6205157 m!7036664))

(declare-fun m!7036666 () Bool)

(assert (=> bm!519608 m!7036666))

(declare-fun m!7036668 () Bool)

(assert (=> b!6205155 m!7036668))

(declare-fun m!7036670 () Bool)

(assert (=> bm!519605 m!7036670))

(assert (=> bm!519428 d!1945064))

(declare-fun d!1945066 () Bool)

(declare-fun res!2566356 () Bool)

(declare-fun e!3778393 () Bool)

(assert (=> d!1945066 (=> res!2566356 e!3778393)))

(assert (=> d!1945066 (= res!2566356 (is-Nil!64607 (exprs!6028 setElem!42121)))))

(assert (=> d!1945066 (= (forall!15258 (exprs!6028 setElem!42121) lambda!339062) e!3778393)))

(declare-fun b!6205158 () Bool)

(declare-fun e!3778394 () Bool)

(assert (=> b!6205158 (= e!3778393 e!3778394)))

(declare-fun res!2566357 () Bool)

(assert (=> b!6205158 (=> (not res!2566357) (not e!3778394))))

(assert (=> b!6205158 (= res!2566357 (dynLambda!25484 lambda!339062 (h!71055 (exprs!6028 setElem!42121))))))

(declare-fun b!6205159 () Bool)

(assert (=> b!6205159 (= e!3778394 (forall!15258 (t!378251 (exprs!6028 setElem!42121)) lambda!339062))))

(assert (= (and d!1945066 (not res!2566356)) b!6205158))

(assert (= (and b!6205158 res!2566357) b!6205159))

(declare-fun b_lambda!235975 () Bool)

(assert (=> (not b_lambda!235975) (not b!6205158)))

(declare-fun m!7036672 () Bool)

(assert (=> b!6205158 m!7036672))

(declare-fun m!7036674 () Bool)

(assert (=> b!6205159 m!7036674))

(assert (=> d!1944792 d!1945066))

(declare-fun bm!519611 () Bool)

(declare-fun call!519616 () Bool)

(assert (=> bm!519611 (= call!519616 (isEmpty!36608 (_1!36426 (get!22310 lt!2343314))))))

(declare-fun b!6205160 () Bool)

(declare-fun e!3778398 () Bool)

(assert (=> b!6205160 (= e!3778398 (matchR!8327 (derivativeStep!4857 (regOne!32800 r!7292) (head!12797 (_1!36426 (get!22310 lt!2343314)))) (tail!11882 (_1!36426 (get!22310 lt!2343314)))))))

(declare-fun b!6205161 () Bool)

(declare-fun e!3778399 () Bool)

(declare-fun e!3778395 () Bool)

(assert (=> b!6205161 (= e!3778399 e!3778395)))

(declare-fun c!1120411 () Bool)

(assert (=> b!6205161 (= c!1120411 (is-EmptyLang!16144 (regOne!32800 r!7292)))))

(declare-fun b!6205162 () Bool)

(declare-fun res!2566363 () Bool)

(declare-fun e!3778396 () Bool)

(assert (=> b!6205162 (=> res!2566363 e!3778396)))

(declare-fun e!3778401 () Bool)

(assert (=> b!6205162 (= res!2566363 e!3778401)))

(declare-fun res!2566359 () Bool)

(assert (=> b!6205162 (=> (not res!2566359) (not e!3778401))))

(declare-fun lt!2343382 () Bool)

(assert (=> b!6205162 (= res!2566359 lt!2343382)))

(declare-fun b!6205163 () Bool)

(assert (=> b!6205163 (= e!3778395 (not lt!2343382))))

(declare-fun b!6205164 () Bool)

(declare-fun res!2566361 () Bool)

(declare-fun e!3778400 () Bool)

(assert (=> b!6205164 (=> res!2566361 e!3778400)))

(assert (=> b!6205164 (= res!2566361 (not (isEmpty!36608 (tail!11882 (_1!36426 (get!22310 lt!2343314))))))))

(declare-fun b!6205165 () Bool)

(assert (=> b!6205165 (= e!3778399 (= lt!2343382 call!519616))))

(declare-fun b!6205166 () Bool)

(declare-fun e!3778397 () Bool)

(assert (=> b!6205166 (= e!3778397 e!3778400)))

(declare-fun res!2566364 () Bool)

(assert (=> b!6205166 (=> res!2566364 e!3778400)))

(assert (=> b!6205166 (= res!2566364 call!519616)))

(declare-fun b!6205167 () Bool)

(declare-fun res!2566360 () Bool)

(assert (=> b!6205167 (=> res!2566360 e!3778396)))

(assert (=> b!6205167 (= res!2566360 (not (is-ElementMatch!16144 (regOne!32800 r!7292))))))

(assert (=> b!6205167 (= e!3778395 e!3778396)))

(declare-fun d!1945068 () Bool)

(assert (=> d!1945068 e!3778399))

(declare-fun c!1120412 () Bool)

(assert (=> d!1945068 (= c!1120412 (is-EmptyExpr!16144 (regOne!32800 r!7292)))))

(assert (=> d!1945068 (= lt!2343382 e!3778398)))

(declare-fun c!1120410 () Bool)

(assert (=> d!1945068 (= c!1120410 (isEmpty!36608 (_1!36426 (get!22310 lt!2343314))))))

(assert (=> d!1945068 (validRegex!7880 (regOne!32800 r!7292))))

(assert (=> d!1945068 (= (matchR!8327 (regOne!32800 r!7292) (_1!36426 (get!22310 lt!2343314))) lt!2343382)))

(declare-fun b!6205168 () Bool)

(declare-fun res!2566365 () Bool)

(assert (=> b!6205168 (=> (not res!2566365) (not e!3778401))))

(assert (=> b!6205168 (= res!2566365 (isEmpty!36608 (tail!11882 (_1!36426 (get!22310 lt!2343314)))))))

(declare-fun b!6205169 () Bool)

(assert (=> b!6205169 (= e!3778401 (= (head!12797 (_1!36426 (get!22310 lt!2343314))) (c!1120079 (regOne!32800 r!7292))))))

(declare-fun b!6205170 () Bool)

(assert (=> b!6205170 (= e!3778400 (not (= (head!12797 (_1!36426 (get!22310 lt!2343314))) (c!1120079 (regOne!32800 r!7292)))))))

(declare-fun b!6205171 () Bool)

(declare-fun res!2566362 () Bool)

(assert (=> b!6205171 (=> (not res!2566362) (not e!3778401))))

(assert (=> b!6205171 (= res!2566362 (not call!519616))))

(declare-fun b!6205172 () Bool)

(assert (=> b!6205172 (= e!3778396 e!3778397)))

(declare-fun res!2566358 () Bool)

(assert (=> b!6205172 (=> (not res!2566358) (not e!3778397))))

(assert (=> b!6205172 (= res!2566358 (not lt!2343382))))

(declare-fun b!6205173 () Bool)

(assert (=> b!6205173 (= e!3778398 (nullable!6137 (regOne!32800 r!7292)))))

(assert (= (and d!1945068 c!1120410) b!6205173))

(assert (= (and d!1945068 (not c!1120410)) b!6205160))

(assert (= (and d!1945068 c!1120412) b!6205165))

(assert (= (and d!1945068 (not c!1120412)) b!6205161))

(assert (= (and b!6205161 c!1120411) b!6205163))

(assert (= (and b!6205161 (not c!1120411)) b!6205167))

(assert (= (and b!6205167 (not res!2566360)) b!6205162))

(assert (= (and b!6205162 res!2566359) b!6205171))

(assert (= (and b!6205171 res!2566362) b!6205168))

(assert (= (and b!6205168 res!2566365) b!6205169))

(assert (= (and b!6205162 (not res!2566363)) b!6205172))

(assert (= (and b!6205172 res!2566358) b!6205166))

(assert (= (and b!6205166 (not res!2566364)) b!6205164))

(assert (= (and b!6205164 (not res!2566361)) b!6205170))

(assert (= (or b!6205165 b!6205166 b!6205171) bm!519611))

(declare-fun m!7036676 () Bool)

(assert (=> b!6205168 m!7036676))

(assert (=> b!6205168 m!7036676))

(declare-fun m!7036678 () Bool)

(assert (=> b!6205168 m!7036678))

(declare-fun m!7036680 () Bool)

(assert (=> d!1945068 m!7036680))

(assert (=> d!1945068 m!7036056))

(assert (=> bm!519611 m!7036680))

(assert (=> b!6205164 m!7036676))

(assert (=> b!6205164 m!7036676))

(assert (=> b!6205164 m!7036678))

(declare-fun m!7036682 () Bool)

(assert (=> b!6205169 m!7036682))

(assert (=> b!6205173 m!7036364))

(assert (=> b!6205170 m!7036682))

(assert (=> b!6205160 m!7036682))

(assert (=> b!6205160 m!7036682))

(declare-fun m!7036684 () Bool)

(assert (=> b!6205160 m!7036684))

(assert (=> b!6205160 m!7036676))

(assert (=> b!6205160 m!7036684))

(assert (=> b!6205160 m!7036676))

(declare-fun m!7036686 () Bool)

(assert (=> b!6205160 m!7036686))

(assert (=> b!6204387 d!1945068))

(assert (=> b!6204387 d!1944954))

(declare-fun call!519619 () (Set Context!11056))

(declare-fun bm!519612 () Bool)

(declare-fun c!1120417 () Bool)

(declare-fun call!519617 () List!64731)

(declare-fun c!1120416 () Bool)

(declare-fun c!1120414 () Bool)

(assert (=> bm!519612 (= call!519619 (derivationStepZipperDown!1392 (ite c!1120417 (regTwo!32801 (ite c!1120116 (regTwo!32801 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120113 (regTwo!32800 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120115 (regOne!32800 (regOne!32800 (regOne!32800 r!7292))) (reg!16473 (regOne!32800 (regOne!32800 r!7292))))))) (ite c!1120414 (regTwo!32800 (ite c!1120116 (regTwo!32801 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120113 (regTwo!32800 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120115 (regOne!32800 (regOne!32800 (regOne!32800 r!7292))) (reg!16473 (regOne!32800 (regOne!32800 r!7292))))))) (ite c!1120416 (regOne!32800 (ite c!1120116 (regTwo!32801 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120113 (regTwo!32800 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120115 (regOne!32800 (regOne!32800 (regOne!32800 r!7292))) (reg!16473 (regOne!32800 (regOne!32800 r!7292))))))) (reg!16473 (ite c!1120116 (regTwo!32801 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120113 (regTwo!32800 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120115 (regOne!32800 (regOne!32800 (regOne!32800 r!7292))) (reg!16473 (regOne!32800 (regOne!32800 r!7292)))))))))) (ite (or c!1120417 c!1120414) (ite (or c!1120116 c!1120113) (Context!11057 (Cons!64607 (regTwo!32800 (regOne!32800 r!7292)) (t!378251 (exprs!6028 (h!71056 zl!343))))) (Context!11057 call!519436)) (Context!11057 call!519617)) (h!71057 s!2326)))))

(declare-fun b!6205174 () Bool)

(declare-fun e!3778402 () (Set Context!11056))

(declare-fun call!519620 () (Set Context!11056))

(assert (=> b!6205174 (= e!3778402 (set.union call!519620 call!519619))))

(declare-fun b!6205175 () Bool)

(declare-fun e!3778405 () (Set Context!11056))

(declare-fun e!3778406 () (Set Context!11056))

(assert (=> b!6205175 (= e!3778405 e!3778406)))

(assert (=> b!6205175 (= c!1120416 (is-Concat!24989 (ite c!1120116 (regTwo!32801 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120113 (regTwo!32800 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120115 (regOne!32800 (regOne!32800 (regOne!32800 r!7292))) (reg!16473 (regOne!32800 (regOne!32800 r!7292))))))))))

(declare-fun b!6205176 () Bool)

(declare-fun e!3778407 () Bool)

(assert (=> b!6205176 (= c!1120414 e!3778407)))

(declare-fun res!2566366 () Bool)

(assert (=> b!6205176 (=> (not res!2566366) (not e!3778407))))

(assert (=> b!6205176 (= res!2566366 (is-Concat!24989 (ite c!1120116 (regTwo!32801 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120113 (regTwo!32800 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120115 (regOne!32800 (regOne!32800 (regOne!32800 r!7292))) (reg!16473 (regOne!32800 (regOne!32800 r!7292))))))))))

(assert (=> b!6205176 (= e!3778402 e!3778405)))

(declare-fun bm!519613 () Bool)

(declare-fun call!519622 () (Set Context!11056))

(assert (=> bm!519613 (= call!519622 call!519619)))

(declare-fun b!6205177 () Bool)

(declare-fun c!1120413 () Bool)

(assert (=> b!6205177 (= c!1120413 (is-Star!16144 (ite c!1120116 (regTwo!32801 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120113 (regTwo!32800 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120115 (regOne!32800 (regOne!32800 (regOne!32800 r!7292))) (reg!16473 (regOne!32800 (regOne!32800 r!7292))))))))))

(declare-fun e!3778404 () (Set Context!11056))

(assert (=> b!6205177 (= e!3778406 e!3778404)))

(declare-fun d!1945070 () Bool)

(declare-fun c!1120415 () Bool)

(assert (=> d!1945070 (= c!1120415 (and (is-ElementMatch!16144 (ite c!1120116 (regTwo!32801 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120113 (regTwo!32800 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120115 (regOne!32800 (regOne!32800 (regOne!32800 r!7292))) (reg!16473 (regOne!32800 (regOne!32800 r!7292))))))) (= (c!1120079 (ite c!1120116 (regTwo!32801 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120113 (regTwo!32800 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120115 (regOne!32800 (regOne!32800 (regOne!32800 r!7292))) (reg!16473 (regOne!32800 (regOne!32800 r!7292))))))) (h!71057 s!2326))))))

(declare-fun e!3778403 () (Set Context!11056))

(assert (=> d!1945070 (= (derivationStepZipperDown!1392 (ite c!1120116 (regTwo!32801 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120113 (regTwo!32800 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120115 (regOne!32800 (regOne!32800 (regOne!32800 r!7292))) (reg!16473 (regOne!32800 (regOne!32800 r!7292)))))) (ite (or c!1120116 c!1120113) (Context!11057 (Cons!64607 (regTwo!32800 (regOne!32800 r!7292)) (t!378251 (exprs!6028 (h!71056 zl!343))))) (Context!11057 call!519436)) (h!71057 s!2326)) e!3778403)))

(declare-fun bm!519614 () Bool)

(declare-fun call!519618 () (Set Context!11056))

(assert (=> bm!519614 (= call!519618 call!519622)))

(declare-fun b!6205178 () Bool)

(assert (=> b!6205178 (= e!3778403 e!3778402)))

(assert (=> b!6205178 (= c!1120417 (is-Union!16144 (ite c!1120116 (regTwo!32801 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120113 (regTwo!32800 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120115 (regOne!32800 (regOne!32800 (regOne!32800 r!7292))) (reg!16473 (regOne!32800 (regOne!32800 r!7292))))))))))

(declare-fun b!6205179 () Bool)

(assert (=> b!6205179 (= e!3778404 (as set.empty (Set Context!11056)))))

(declare-fun bm!519615 () Bool)

(declare-fun call!519621 () List!64731)

(assert (=> bm!519615 (= call!519620 (derivationStepZipperDown!1392 (ite c!1120417 (regOne!32801 (ite c!1120116 (regTwo!32801 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120113 (regTwo!32800 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120115 (regOne!32800 (regOne!32800 (regOne!32800 r!7292))) (reg!16473 (regOne!32800 (regOne!32800 r!7292))))))) (regOne!32800 (ite c!1120116 (regTwo!32801 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120113 (regTwo!32800 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120115 (regOne!32800 (regOne!32800 (regOne!32800 r!7292))) (reg!16473 (regOne!32800 (regOne!32800 r!7292)))))))) (ite c!1120417 (ite (or c!1120116 c!1120113) (Context!11057 (Cons!64607 (regTwo!32800 (regOne!32800 r!7292)) (t!378251 (exprs!6028 (h!71056 zl!343))))) (Context!11057 call!519436)) (Context!11057 call!519621)) (h!71057 s!2326)))))

(declare-fun b!6205180 () Bool)

(assert (=> b!6205180 (= e!3778405 (set.union call!519620 call!519622))))

(declare-fun b!6205181 () Bool)

(assert (=> b!6205181 (= e!3778406 call!519618)))

(declare-fun bm!519616 () Bool)

(assert (=> bm!519616 (= call!519617 call!519621)))

(declare-fun b!6205182 () Bool)

(assert (=> b!6205182 (= e!3778403 (set.insert (ite (or c!1120116 c!1120113) (Context!11057 (Cons!64607 (regTwo!32800 (regOne!32800 r!7292)) (t!378251 (exprs!6028 (h!71056 zl!343))))) (Context!11057 call!519436)) (as set.empty (Set Context!11056))))))

(declare-fun b!6205183 () Bool)

(assert (=> b!6205183 (= e!3778404 call!519618)))

(declare-fun b!6205184 () Bool)

(assert (=> b!6205184 (= e!3778407 (nullable!6137 (regOne!32800 (ite c!1120116 (regTwo!32801 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120113 (regTwo!32800 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120115 (regOne!32800 (regOne!32800 (regOne!32800 r!7292))) (reg!16473 (regOne!32800 (regOne!32800 r!7292)))))))))))

(declare-fun bm!519617 () Bool)

(assert (=> bm!519617 (= call!519621 ($colon$colon!2013 (exprs!6028 (ite (or c!1120116 c!1120113) (Context!11057 (Cons!64607 (regTwo!32800 (regOne!32800 r!7292)) (t!378251 (exprs!6028 (h!71056 zl!343))))) (Context!11057 call!519436))) (ite (or c!1120414 c!1120416) (regTwo!32800 (ite c!1120116 (regTwo!32801 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120113 (regTwo!32800 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120115 (regOne!32800 (regOne!32800 (regOne!32800 r!7292))) (reg!16473 (regOne!32800 (regOne!32800 r!7292))))))) (ite c!1120116 (regTwo!32801 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120113 (regTwo!32800 (regOne!32800 (regOne!32800 r!7292))) (ite c!1120115 (regOne!32800 (regOne!32800 (regOne!32800 r!7292))) (reg!16473 (regOne!32800 (regOne!32800 r!7292)))))))))))

(assert (= (and d!1945070 c!1120415) b!6205182))

(assert (= (and d!1945070 (not c!1120415)) b!6205178))

(assert (= (and b!6205178 c!1120417) b!6205174))

(assert (= (and b!6205178 (not c!1120417)) b!6205176))

(assert (= (and b!6205176 res!2566366) b!6205184))

(assert (= (and b!6205176 c!1120414) b!6205180))

(assert (= (and b!6205176 (not c!1120414)) b!6205175))

(assert (= (and b!6205175 c!1120416) b!6205181))

(assert (= (and b!6205175 (not c!1120416)) b!6205177))

(assert (= (and b!6205177 c!1120413) b!6205183))

(assert (= (and b!6205177 (not c!1120413)) b!6205179))

(assert (= (or b!6205181 b!6205183) bm!519616))

(assert (= (or b!6205181 b!6205183) bm!519614))

(assert (= (or b!6205180 bm!519616) bm!519617))

(assert (= (or b!6205180 bm!519614) bm!519613))

(assert (= (or b!6205174 bm!519613) bm!519612))

(assert (= (or b!6205174 b!6205180) bm!519615))

(declare-fun m!7036688 () Bool)

(assert (=> bm!519617 m!7036688))

(declare-fun m!7036690 () Bool)

(assert (=> b!6205184 m!7036690))

(declare-fun m!7036692 () Bool)

(assert (=> bm!519615 m!7036692))

(declare-fun m!7036694 () Bool)

(assert (=> b!6205182 m!7036694))

(declare-fun m!7036696 () Bool)

(assert (=> bm!519612 m!7036696))

(assert (=> bm!519431 d!1945070))

(declare-fun bs!1539229 () Bool)

(declare-fun d!1945072 () Bool)

(assert (= bs!1539229 (and d!1945072 d!1944950)))

(declare-fun lambda!339124 () Int)

(assert (=> bs!1539229 (= lambda!339124 lambda!339110)))

(assert (=> d!1945072 (= (nullableZipper!1918 lt!2343239) (exists!2475 lt!2343239 lambda!339124))))

(declare-fun bs!1539230 () Bool)

(assert (= bs!1539230 d!1945072))

(declare-fun m!7036698 () Bool)

(assert (=> bs!1539230 m!7036698))

(assert (=> b!6204246 d!1945072))

(declare-fun bs!1539231 () Bool)

(declare-fun d!1945074 () Bool)

(assert (= bs!1539231 (and d!1945074 d!1944950)))

(declare-fun lambda!339125 () Int)

(assert (=> bs!1539231 (= lambda!339125 lambda!339110)))

(declare-fun bs!1539232 () Bool)

(assert (= bs!1539232 (and d!1945074 d!1945072)))

(assert (=> bs!1539232 (= lambda!339125 lambda!339124)))

(assert (=> d!1945074 (= (nullableZipper!1918 lt!2343240) (exists!2475 lt!2343240 lambda!339125))))

(declare-fun bs!1539233 () Bool)

(assert (= bs!1539233 d!1945074))

(declare-fun m!7036700 () Bool)

(assert (=> bs!1539233 m!7036700))

(assert (=> b!6204337 d!1945074))

(assert (=> d!1944756 d!1944744))

(declare-fun d!1945076 () Bool)

(assert (=> d!1945076 (= (flatMap!1649 z!1189 lambda!339028) (dynLambda!25482 lambda!339028 (h!71056 zl!343)))))

(assert (=> d!1945076 true))

(declare-fun _$13!3215 () Unit!157907)

(assert (=> d!1945076 (= (choose!46114 z!1189 (h!71056 zl!343) lambda!339028) _$13!3215)))

(declare-fun b_lambda!235977 () Bool)

(assert (=> (not b_lambda!235977) (not d!1945076)))

(declare-fun bs!1539234 () Bool)

(assert (= bs!1539234 d!1945076))

(assert (=> bs!1539234 m!7035732))

(assert (=> bs!1539234 m!7035874))

(assert (=> d!1944756 d!1945076))

(declare-fun b!6205186 () Bool)

(declare-fun e!3778408 () Bool)

(declare-fun tp!1730430 () Bool)

(declare-fun tp!1730427 () Bool)

(assert (=> b!6205186 (= e!3778408 (and tp!1730430 tp!1730427))))

(declare-fun b!6205185 () Bool)

(assert (=> b!6205185 (= e!3778408 tp_is_empty!41541)))

(assert (=> b!6204472 (= tp!1730322 e!3778408)))

(declare-fun b!6205187 () Bool)

(declare-fun tp!1730429 () Bool)

(assert (=> b!6205187 (= e!3778408 tp!1730429)))

(declare-fun b!6205188 () Bool)

(declare-fun tp!1730431 () Bool)

(declare-fun tp!1730428 () Bool)

(assert (=> b!6205188 (= e!3778408 (and tp!1730431 tp!1730428))))

(assert (= (and b!6204472 (is-ElementMatch!16144 (reg!16473 (regTwo!32800 r!7292)))) b!6205185))

(assert (= (and b!6204472 (is-Concat!24989 (reg!16473 (regTwo!32800 r!7292)))) b!6205186))

(assert (= (and b!6204472 (is-Star!16144 (reg!16473 (regTwo!32800 r!7292)))) b!6205187))

(assert (= (and b!6204472 (is-Union!16144 (reg!16473 (regTwo!32800 r!7292)))) b!6205188))

(declare-fun b!6205190 () Bool)

(declare-fun e!3778409 () Bool)

(declare-fun tp!1730435 () Bool)

(declare-fun tp!1730432 () Bool)

(assert (=> b!6205190 (= e!3778409 (and tp!1730435 tp!1730432))))

(declare-fun b!6205189 () Bool)

(assert (=> b!6205189 (= e!3778409 tp_is_empty!41541)))

(assert (=> b!6204493 (= tp!1730346 e!3778409)))

(declare-fun b!6205191 () Bool)

(declare-fun tp!1730434 () Bool)

(assert (=> b!6205191 (= e!3778409 tp!1730434)))

(declare-fun b!6205192 () Bool)

(declare-fun tp!1730436 () Bool)

(declare-fun tp!1730433 () Bool)

(assert (=> b!6205192 (= e!3778409 (and tp!1730436 tp!1730433))))

(assert (= (and b!6204493 (is-ElementMatch!16144 (regOne!32801 (reg!16473 r!7292)))) b!6205189))

(assert (= (and b!6204493 (is-Concat!24989 (regOne!32801 (reg!16473 r!7292)))) b!6205190))

(assert (= (and b!6204493 (is-Star!16144 (regOne!32801 (reg!16473 r!7292)))) b!6205191))

(assert (= (and b!6204493 (is-Union!16144 (regOne!32801 (reg!16473 r!7292)))) b!6205192))

(declare-fun b!6205194 () Bool)

(declare-fun e!3778410 () Bool)

(declare-fun tp!1730440 () Bool)

(declare-fun tp!1730437 () Bool)

(assert (=> b!6205194 (= e!3778410 (and tp!1730440 tp!1730437))))

(declare-fun b!6205193 () Bool)

(assert (=> b!6205193 (= e!3778410 tp_is_empty!41541)))

(assert (=> b!6204493 (= tp!1730343 e!3778410)))

(declare-fun b!6205195 () Bool)

(declare-fun tp!1730439 () Bool)

(assert (=> b!6205195 (= e!3778410 tp!1730439)))

(declare-fun b!6205196 () Bool)

(declare-fun tp!1730441 () Bool)

(declare-fun tp!1730438 () Bool)

(assert (=> b!6205196 (= e!3778410 (and tp!1730441 tp!1730438))))

(assert (= (and b!6204493 (is-ElementMatch!16144 (regTwo!32801 (reg!16473 r!7292)))) b!6205193))

(assert (= (and b!6204493 (is-Concat!24989 (regTwo!32801 (reg!16473 r!7292)))) b!6205194))

(assert (= (and b!6204493 (is-Star!16144 (regTwo!32801 (reg!16473 r!7292)))) b!6205195))

(assert (= (and b!6204493 (is-Union!16144 (regTwo!32801 (reg!16473 r!7292)))) b!6205196))

(declare-fun b!6205198 () Bool)

(declare-fun e!3778411 () Bool)

(declare-fun tp!1730445 () Bool)

(declare-fun tp!1730442 () Bool)

(assert (=> b!6205198 (= e!3778411 (and tp!1730445 tp!1730442))))

(declare-fun b!6205197 () Bool)

(assert (=> b!6205197 (= e!3778411 tp_is_empty!41541)))

(assert (=> b!6204473 (= tp!1730324 e!3778411)))

(declare-fun b!6205199 () Bool)

(declare-fun tp!1730444 () Bool)

(assert (=> b!6205199 (= e!3778411 tp!1730444)))

(declare-fun b!6205200 () Bool)

(declare-fun tp!1730446 () Bool)

(declare-fun tp!1730443 () Bool)

(assert (=> b!6205200 (= e!3778411 (and tp!1730446 tp!1730443))))

(assert (= (and b!6204473 (is-ElementMatch!16144 (regOne!32801 (regTwo!32800 r!7292)))) b!6205197))

(assert (= (and b!6204473 (is-Concat!24989 (regOne!32801 (regTwo!32800 r!7292)))) b!6205198))

(assert (= (and b!6204473 (is-Star!16144 (regOne!32801 (regTwo!32800 r!7292)))) b!6205199))

(assert (= (and b!6204473 (is-Union!16144 (regOne!32801 (regTwo!32800 r!7292)))) b!6205200))

(declare-fun b!6205202 () Bool)

(declare-fun e!3778412 () Bool)

(declare-fun tp!1730450 () Bool)

(declare-fun tp!1730447 () Bool)

(assert (=> b!6205202 (= e!3778412 (and tp!1730450 tp!1730447))))

(declare-fun b!6205201 () Bool)

(assert (=> b!6205201 (= e!3778412 tp_is_empty!41541)))

(assert (=> b!6204473 (= tp!1730321 e!3778412)))

(declare-fun b!6205203 () Bool)

(declare-fun tp!1730449 () Bool)

(assert (=> b!6205203 (= e!3778412 tp!1730449)))

(declare-fun b!6205204 () Bool)

(declare-fun tp!1730451 () Bool)

(declare-fun tp!1730448 () Bool)

(assert (=> b!6205204 (= e!3778412 (and tp!1730451 tp!1730448))))

(assert (= (and b!6204473 (is-ElementMatch!16144 (regTwo!32801 (regTwo!32800 r!7292)))) b!6205201))

(assert (= (and b!6204473 (is-Concat!24989 (regTwo!32801 (regTwo!32800 r!7292)))) b!6205202))

(assert (= (and b!6204473 (is-Star!16144 (regTwo!32801 (regTwo!32800 r!7292)))) b!6205203))

(assert (= (and b!6204473 (is-Union!16144 (regTwo!32801 (regTwo!32800 r!7292)))) b!6205204))

(declare-fun b!6205206 () Bool)

(declare-fun e!3778413 () Bool)

(declare-fun tp!1730455 () Bool)

(declare-fun tp!1730452 () Bool)

(assert (=> b!6205206 (= e!3778413 (and tp!1730455 tp!1730452))))

(declare-fun b!6205205 () Bool)

(assert (=> b!6205205 (= e!3778413 tp_is_empty!41541)))

(assert (=> b!6204499 (= tp!1730355 e!3778413)))

(declare-fun b!6205207 () Bool)

(declare-fun tp!1730454 () Bool)

(assert (=> b!6205207 (= e!3778413 tp!1730454)))

(declare-fun b!6205208 () Bool)

(declare-fun tp!1730456 () Bool)

(declare-fun tp!1730453 () Bool)

(assert (=> b!6205208 (= e!3778413 (and tp!1730456 tp!1730453))))

(assert (= (and b!6204499 (is-ElementMatch!16144 (regOne!32800 (regTwo!32801 r!7292)))) b!6205205))

(assert (= (and b!6204499 (is-Concat!24989 (regOne!32800 (regTwo!32801 r!7292)))) b!6205206))

(assert (= (and b!6204499 (is-Star!16144 (regOne!32800 (regTwo!32801 r!7292)))) b!6205207))

(assert (= (and b!6204499 (is-Union!16144 (regOne!32800 (regTwo!32801 r!7292)))) b!6205208))

(declare-fun b!6205210 () Bool)

(declare-fun e!3778414 () Bool)

(declare-fun tp!1730460 () Bool)

(declare-fun tp!1730457 () Bool)

(assert (=> b!6205210 (= e!3778414 (and tp!1730460 tp!1730457))))

(declare-fun b!6205209 () Bool)

(assert (=> b!6205209 (= e!3778414 tp_is_empty!41541)))

(assert (=> b!6204499 (= tp!1730352 e!3778414)))

(declare-fun b!6205211 () Bool)

(declare-fun tp!1730459 () Bool)

(assert (=> b!6205211 (= e!3778414 tp!1730459)))

(declare-fun b!6205212 () Bool)

(declare-fun tp!1730461 () Bool)

(declare-fun tp!1730458 () Bool)

(assert (=> b!6205212 (= e!3778414 (and tp!1730461 tp!1730458))))

(assert (= (and b!6204499 (is-ElementMatch!16144 (regTwo!32800 (regTwo!32801 r!7292)))) b!6205209))

(assert (= (and b!6204499 (is-Concat!24989 (regTwo!32800 (regTwo!32801 r!7292)))) b!6205210))

(assert (= (and b!6204499 (is-Star!16144 (regTwo!32800 (regTwo!32801 r!7292)))) b!6205211))

(assert (= (and b!6204499 (is-Union!16144 (regTwo!32800 (regTwo!32801 r!7292)))) b!6205212))

(declare-fun b!6205214 () Bool)

(declare-fun e!3778415 () Bool)

(declare-fun tp!1730465 () Bool)

(declare-fun tp!1730462 () Bool)

(assert (=> b!6205214 (= e!3778415 (and tp!1730465 tp!1730462))))

(declare-fun b!6205213 () Bool)

(assert (=> b!6205213 (= e!3778415 tp_is_empty!41541)))

(assert (=> b!6204500 (= tp!1730354 e!3778415)))

(declare-fun b!6205215 () Bool)

(declare-fun tp!1730464 () Bool)

(assert (=> b!6205215 (= e!3778415 tp!1730464)))

(declare-fun b!6205216 () Bool)

(declare-fun tp!1730466 () Bool)

(declare-fun tp!1730463 () Bool)

(assert (=> b!6205216 (= e!3778415 (and tp!1730466 tp!1730463))))

(assert (= (and b!6204500 (is-ElementMatch!16144 (reg!16473 (regTwo!32801 r!7292)))) b!6205213))

(assert (= (and b!6204500 (is-Concat!24989 (reg!16473 (regTwo!32801 r!7292)))) b!6205214))

(assert (= (and b!6204500 (is-Star!16144 (reg!16473 (regTwo!32801 r!7292)))) b!6205215))

(assert (= (and b!6204500 (is-Union!16144 (reg!16473 (regTwo!32801 r!7292)))) b!6205216))

(declare-fun b!6205218 () Bool)

(declare-fun e!3778416 () Bool)

(declare-fun tp!1730470 () Bool)

(declare-fun tp!1730467 () Bool)

(assert (=> b!6205218 (= e!3778416 (and tp!1730470 tp!1730467))))

(declare-fun b!6205217 () Bool)

(assert (=> b!6205217 (= e!3778416 tp_is_empty!41541)))

(assert (=> b!6204491 (= tp!1730345 e!3778416)))

(declare-fun b!6205219 () Bool)

(declare-fun tp!1730469 () Bool)

(assert (=> b!6205219 (= e!3778416 tp!1730469)))

(declare-fun b!6205220 () Bool)

(declare-fun tp!1730471 () Bool)

(declare-fun tp!1730468 () Bool)

(assert (=> b!6205220 (= e!3778416 (and tp!1730471 tp!1730468))))

(assert (= (and b!6204491 (is-ElementMatch!16144 (regOne!32800 (reg!16473 r!7292)))) b!6205217))

(assert (= (and b!6204491 (is-Concat!24989 (regOne!32800 (reg!16473 r!7292)))) b!6205218))

(assert (= (and b!6204491 (is-Star!16144 (regOne!32800 (reg!16473 r!7292)))) b!6205219))

(assert (= (and b!6204491 (is-Union!16144 (regOne!32800 (reg!16473 r!7292)))) b!6205220))

(declare-fun b!6205222 () Bool)

(declare-fun e!3778417 () Bool)

(declare-fun tp!1730475 () Bool)

(declare-fun tp!1730472 () Bool)

(assert (=> b!6205222 (= e!3778417 (and tp!1730475 tp!1730472))))

(declare-fun b!6205221 () Bool)

(assert (=> b!6205221 (= e!3778417 tp_is_empty!41541)))

(assert (=> b!6204491 (= tp!1730342 e!3778417)))

(declare-fun b!6205223 () Bool)

(declare-fun tp!1730474 () Bool)

(assert (=> b!6205223 (= e!3778417 tp!1730474)))

(declare-fun b!6205224 () Bool)

(declare-fun tp!1730476 () Bool)

(declare-fun tp!1730473 () Bool)

(assert (=> b!6205224 (= e!3778417 (and tp!1730476 tp!1730473))))

(assert (= (and b!6204491 (is-ElementMatch!16144 (regTwo!32800 (reg!16473 r!7292)))) b!6205221))

(assert (= (and b!6204491 (is-Concat!24989 (regTwo!32800 (reg!16473 r!7292)))) b!6205222))

(assert (= (and b!6204491 (is-Star!16144 (regTwo!32800 (reg!16473 r!7292)))) b!6205223))

(assert (= (and b!6204491 (is-Union!16144 (regTwo!32800 (reg!16473 r!7292)))) b!6205224))

(declare-fun b!6205226 () Bool)

(declare-fun e!3778418 () Bool)

(declare-fun tp!1730480 () Bool)

(declare-fun tp!1730477 () Bool)

(assert (=> b!6205226 (= e!3778418 (and tp!1730480 tp!1730477))))

(declare-fun b!6205225 () Bool)

(assert (=> b!6205225 (= e!3778418 tp_is_empty!41541)))

(assert (=> b!6204501 (= tp!1730356 e!3778418)))

(declare-fun b!6205227 () Bool)

(declare-fun tp!1730479 () Bool)

(assert (=> b!6205227 (= e!3778418 tp!1730479)))

(declare-fun b!6205228 () Bool)

(declare-fun tp!1730481 () Bool)

(declare-fun tp!1730478 () Bool)

(assert (=> b!6205228 (= e!3778418 (and tp!1730481 tp!1730478))))

(assert (= (and b!6204501 (is-ElementMatch!16144 (regOne!32801 (regTwo!32801 r!7292)))) b!6205225))

(assert (= (and b!6204501 (is-Concat!24989 (regOne!32801 (regTwo!32801 r!7292)))) b!6205226))

(assert (= (and b!6204501 (is-Star!16144 (regOne!32801 (regTwo!32801 r!7292)))) b!6205227))

(assert (= (and b!6204501 (is-Union!16144 (regOne!32801 (regTwo!32801 r!7292)))) b!6205228))

(declare-fun b!6205230 () Bool)

(declare-fun e!3778419 () Bool)

(declare-fun tp!1730485 () Bool)

(declare-fun tp!1730482 () Bool)

(assert (=> b!6205230 (= e!3778419 (and tp!1730485 tp!1730482))))

(declare-fun b!6205229 () Bool)

(assert (=> b!6205229 (= e!3778419 tp_is_empty!41541)))

(assert (=> b!6204501 (= tp!1730353 e!3778419)))

(declare-fun b!6205231 () Bool)

(declare-fun tp!1730484 () Bool)

(assert (=> b!6205231 (= e!3778419 tp!1730484)))

(declare-fun b!6205232 () Bool)

(declare-fun tp!1730486 () Bool)

(declare-fun tp!1730483 () Bool)

(assert (=> b!6205232 (= e!3778419 (and tp!1730486 tp!1730483))))

(assert (= (and b!6204501 (is-ElementMatch!16144 (regTwo!32801 (regTwo!32801 r!7292)))) b!6205229))

(assert (= (and b!6204501 (is-Concat!24989 (regTwo!32801 (regTwo!32801 r!7292)))) b!6205230))

(assert (= (and b!6204501 (is-Star!16144 (regTwo!32801 (regTwo!32801 r!7292)))) b!6205231))

(assert (= (and b!6204501 (is-Union!16144 (regTwo!32801 (regTwo!32801 r!7292)))) b!6205232))

(declare-fun b!6205234 () Bool)

(declare-fun e!3778420 () Bool)

(declare-fun tp!1730490 () Bool)

(declare-fun tp!1730487 () Bool)

(assert (=> b!6205234 (= e!3778420 (and tp!1730490 tp!1730487))))

(declare-fun b!6205233 () Bool)

(assert (=> b!6205233 (= e!3778420 tp_is_empty!41541)))

(assert (=> b!6204471 (= tp!1730323 e!3778420)))

(declare-fun b!6205235 () Bool)

(declare-fun tp!1730489 () Bool)

(assert (=> b!6205235 (= e!3778420 tp!1730489)))

(declare-fun b!6205236 () Bool)

(declare-fun tp!1730491 () Bool)

(declare-fun tp!1730488 () Bool)

(assert (=> b!6205236 (= e!3778420 (and tp!1730491 tp!1730488))))

(assert (= (and b!6204471 (is-ElementMatch!16144 (regOne!32800 (regTwo!32800 r!7292)))) b!6205233))

(assert (= (and b!6204471 (is-Concat!24989 (regOne!32800 (regTwo!32800 r!7292)))) b!6205234))

(assert (= (and b!6204471 (is-Star!16144 (regOne!32800 (regTwo!32800 r!7292)))) b!6205235))

(assert (= (and b!6204471 (is-Union!16144 (regOne!32800 (regTwo!32800 r!7292)))) b!6205236))

(declare-fun b!6205238 () Bool)

(declare-fun e!3778421 () Bool)

(declare-fun tp!1730495 () Bool)

(declare-fun tp!1730492 () Bool)

(assert (=> b!6205238 (= e!3778421 (and tp!1730495 tp!1730492))))

(declare-fun b!6205237 () Bool)

(assert (=> b!6205237 (= e!3778421 tp_is_empty!41541)))

(assert (=> b!6204471 (= tp!1730320 e!3778421)))

(declare-fun b!6205239 () Bool)

(declare-fun tp!1730494 () Bool)

(assert (=> b!6205239 (= e!3778421 tp!1730494)))

(declare-fun b!6205240 () Bool)

(declare-fun tp!1730496 () Bool)

(declare-fun tp!1730493 () Bool)

(assert (=> b!6205240 (= e!3778421 (and tp!1730496 tp!1730493))))

(assert (= (and b!6204471 (is-ElementMatch!16144 (regTwo!32800 (regTwo!32800 r!7292)))) b!6205237))

(assert (= (and b!6204471 (is-Concat!24989 (regTwo!32800 (regTwo!32800 r!7292)))) b!6205238))

(assert (= (and b!6204471 (is-Star!16144 (regTwo!32800 (regTwo!32800 r!7292)))) b!6205239))

(assert (= (and b!6204471 (is-Union!16144 (regTwo!32800 (regTwo!32800 r!7292)))) b!6205240))

(declare-fun b!6205242 () Bool)

(declare-fun e!3778422 () Bool)

(declare-fun tp!1730500 () Bool)

(declare-fun tp!1730497 () Bool)

(assert (=> b!6205242 (= e!3778422 (and tp!1730500 tp!1730497))))

(declare-fun b!6205241 () Bool)

(assert (=> b!6205241 (= e!3778422 tp_is_empty!41541)))

(assert (=> b!6204492 (= tp!1730344 e!3778422)))

(declare-fun b!6205243 () Bool)

(declare-fun tp!1730499 () Bool)

(assert (=> b!6205243 (= e!3778422 tp!1730499)))

(declare-fun b!6205244 () Bool)

(declare-fun tp!1730501 () Bool)

(declare-fun tp!1730498 () Bool)

(assert (=> b!6205244 (= e!3778422 (and tp!1730501 tp!1730498))))

(assert (= (and b!6204492 (is-ElementMatch!16144 (reg!16473 (reg!16473 r!7292)))) b!6205241))

(assert (= (and b!6204492 (is-Concat!24989 (reg!16473 (reg!16473 r!7292)))) b!6205242))

(assert (= (and b!6204492 (is-Star!16144 (reg!16473 (reg!16473 r!7292)))) b!6205243))

(assert (= (and b!6204492 (is-Union!16144 (reg!16473 (reg!16473 r!7292)))) b!6205244))

(declare-fun b!6205246 () Bool)

(declare-fun e!3778423 () Bool)

(declare-fun tp!1730505 () Bool)

(declare-fun tp!1730502 () Bool)

(assert (=> b!6205246 (= e!3778423 (and tp!1730505 tp!1730502))))

(declare-fun b!6205245 () Bool)

(assert (=> b!6205245 (= e!3778423 tp_is_empty!41541)))

(assert (=> b!6204497 (= tp!1730351 e!3778423)))

(declare-fun b!6205247 () Bool)

(declare-fun tp!1730504 () Bool)

(assert (=> b!6205247 (= e!3778423 tp!1730504)))

(declare-fun b!6205248 () Bool)

(declare-fun tp!1730506 () Bool)

(declare-fun tp!1730503 () Bool)

(assert (=> b!6205248 (= e!3778423 (and tp!1730506 tp!1730503))))

(assert (= (and b!6204497 (is-ElementMatch!16144 (regOne!32801 (regOne!32801 r!7292)))) b!6205245))

(assert (= (and b!6204497 (is-Concat!24989 (regOne!32801 (regOne!32801 r!7292)))) b!6205246))

(assert (= (and b!6204497 (is-Star!16144 (regOne!32801 (regOne!32801 r!7292)))) b!6205247))

(assert (= (and b!6204497 (is-Union!16144 (regOne!32801 (regOne!32801 r!7292)))) b!6205248))

(declare-fun b!6205250 () Bool)

(declare-fun e!3778424 () Bool)

(declare-fun tp!1730510 () Bool)

(declare-fun tp!1730507 () Bool)

(assert (=> b!6205250 (= e!3778424 (and tp!1730510 tp!1730507))))

(declare-fun b!6205249 () Bool)

(assert (=> b!6205249 (= e!3778424 tp_is_empty!41541)))

(assert (=> b!6204497 (= tp!1730348 e!3778424)))

(declare-fun b!6205251 () Bool)

(declare-fun tp!1730509 () Bool)

(assert (=> b!6205251 (= e!3778424 tp!1730509)))

(declare-fun b!6205252 () Bool)

(declare-fun tp!1730511 () Bool)

(declare-fun tp!1730508 () Bool)

(assert (=> b!6205252 (= e!3778424 (and tp!1730511 tp!1730508))))

(assert (= (and b!6204497 (is-ElementMatch!16144 (regTwo!32801 (regOne!32801 r!7292)))) b!6205249))

(assert (= (and b!6204497 (is-Concat!24989 (regTwo!32801 (regOne!32801 r!7292)))) b!6205250))

(assert (= (and b!6204497 (is-Star!16144 (regTwo!32801 (regOne!32801 r!7292)))) b!6205251))

(assert (= (and b!6204497 (is-Union!16144 (regTwo!32801 (regOne!32801 r!7292)))) b!6205252))

(declare-fun b!6205253 () Bool)

(declare-fun e!3778425 () Bool)

(declare-fun tp!1730512 () Bool)

(declare-fun tp!1730513 () Bool)

(assert (=> b!6205253 (= e!3778425 (and tp!1730512 tp!1730513))))

(assert (=> b!6204455 (= tp!1730303 e!3778425)))

(assert (= (and b!6204455 (is-Cons!64607 (exprs!6028 (h!71056 (t!378252 zl!343))))) b!6205253))

(declare-fun b!6205255 () Bool)

(declare-fun e!3778426 () Bool)

(declare-fun tp!1730517 () Bool)

(declare-fun tp!1730514 () Bool)

(assert (=> b!6205255 (= e!3778426 (and tp!1730517 tp!1730514))))

(declare-fun b!6205254 () Bool)

(assert (=> b!6205254 (= e!3778426 tp_is_empty!41541)))

(assert (=> b!6204489 (= tp!1730340 e!3778426)))

(declare-fun b!6205256 () Bool)

(declare-fun tp!1730516 () Bool)

(assert (=> b!6205256 (= e!3778426 tp!1730516)))

(declare-fun b!6205257 () Bool)

(declare-fun tp!1730518 () Bool)

(declare-fun tp!1730515 () Bool)

(assert (=> b!6205257 (= e!3778426 (and tp!1730518 tp!1730515))))

(assert (= (and b!6204489 (is-ElementMatch!16144 (h!71055 (exprs!6028 (h!71056 zl!343))))) b!6205254))

(assert (= (and b!6204489 (is-Concat!24989 (h!71055 (exprs!6028 (h!71056 zl!343))))) b!6205255))

(assert (= (and b!6204489 (is-Star!16144 (h!71055 (exprs!6028 (h!71056 zl!343))))) b!6205256))

(assert (= (and b!6204489 (is-Union!16144 (h!71055 (exprs!6028 (h!71056 zl!343))))) b!6205257))

(declare-fun b!6205258 () Bool)

(declare-fun e!3778427 () Bool)

(declare-fun tp!1730519 () Bool)

(declare-fun tp!1730520 () Bool)

(assert (=> b!6205258 (= e!3778427 (and tp!1730519 tp!1730520))))

(assert (=> b!6204489 (= tp!1730341 e!3778427)))

(assert (= (and b!6204489 (is-Cons!64607 (t!378251 (exprs!6028 (h!71056 zl!343))))) b!6205258))

(declare-fun condSetEmpty!42134 () Bool)

(assert (=> setNonEmpty!42127 (= condSetEmpty!42134 (= setRest!42127 (as set.empty (Set Context!11056))))))

(declare-fun setRes!42134 () Bool)

(assert (=> setNonEmpty!42127 (= tp!1730330 setRes!42134)))

(declare-fun setIsEmpty!42134 () Bool)

(assert (=> setIsEmpty!42134 setRes!42134))

(declare-fun tp!1730522 () Bool)

(declare-fun setElem!42134 () Context!11056)

(declare-fun setNonEmpty!42134 () Bool)

(declare-fun e!3778428 () Bool)

(assert (=> setNonEmpty!42134 (= setRes!42134 (and tp!1730522 (inv!83608 setElem!42134) e!3778428))))

(declare-fun setRest!42134 () (Set Context!11056))

(assert (=> setNonEmpty!42134 (= setRest!42127 (set.union (set.insert setElem!42134 (as set.empty (Set Context!11056))) setRest!42134))))

(declare-fun b!6205259 () Bool)

(declare-fun tp!1730521 () Bool)

(assert (=> b!6205259 (= e!3778428 tp!1730521)))

(assert (= (and setNonEmpty!42127 condSetEmpty!42134) setIsEmpty!42134))

(assert (= (and setNonEmpty!42127 (not condSetEmpty!42134)) setNonEmpty!42134))

(assert (= setNonEmpty!42134 b!6205259))

(declare-fun m!7036702 () Bool)

(assert (=> setNonEmpty!42134 m!7036702))

(declare-fun b!6205260 () Bool)

(declare-fun e!3778429 () Bool)

(declare-fun tp!1730523 () Bool)

(declare-fun tp!1730524 () Bool)

(assert (=> b!6205260 (= e!3778429 (and tp!1730523 tp!1730524))))

(assert (=> b!6204478 (= tp!1730329 e!3778429)))

(assert (= (and b!6204478 (is-Cons!64607 (exprs!6028 setElem!42127))) b!6205260))

(declare-fun b!6205262 () Bool)

(declare-fun e!3778430 () Bool)

(declare-fun tp!1730528 () Bool)

(declare-fun tp!1730525 () Bool)

(assert (=> b!6205262 (= e!3778430 (and tp!1730528 tp!1730525))))

(declare-fun b!6205261 () Bool)

(assert (=> b!6205261 (= e!3778430 tp_is_empty!41541)))

(assert (=> b!6204467 (= tp!1730318 e!3778430)))

(declare-fun b!6205263 () Bool)

(declare-fun tp!1730527 () Bool)

(assert (=> b!6205263 (= e!3778430 tp!1730527)))

(declare-fun b!6205264 () Bool)

(declare-fun tp!1730529 () Bool)

(declare-fun tp!1730526 () Bool)

(assert (=> b!6205264 (= e!3778430 (and tp!1730529 tp!1730526))))

(assert (= (and b!6204467 (is-ElementMatch!16144 (regOne!32800 (regOne!32800 r!7292)))) b!6205261))

(assert (= (and b!6204467 (is-Concat!24989 (regOne!32800 (regOne!32800 r!7292)))) b!6205262))

(assert (= (and b!6204467 (is-Star!16144 (regOne!32800 (regOne!32800 r!7292)))) b!6205263))

(assert (= (and b!6204467 (is-Union!16144 (regOne!32800 (regOne!32800 r!7292)))) b!6205264))

(declare-fun b!6205266 () Bool)

(declare-fun e!3778431 () Bool)

(declare-fun tp!1730533 () Bool)

(declare-fun tp!1730530 () Bool)

(assert (=> b!6205266 (= e!3778431 (and tp!1730533 tp!1730530))))

(declare-fun b!6205265 () Bool)

(assert (=> b!6205265 (= e!3778431 tp_is_empty!41541)))

(assert (=> b!6204467 (= tp!1730315 e!3778431)))

(declare-fun b!6205267 () Bool)

(declare-fun tp!1730532 () Bool)

(assert (=> b!6205267 (= e!3778431 tp!1730532)))

(declare-fun b!6205268 () Bool)

(declare-fun tp!1730534 () Bool)

(declare-fun tp!1730531 () Bool)

(assert (=> b!6205268 (= e!3778431 (and tp!1730534 tp!1730531))))

(assert (= (and b!6204467 (is-ElementMatch!16144 (regTwo!32800 (regOne!32800 r!7292)))) b!6205265))

(assert (= (and b!6204467 (is-Concat!24989 (regTwo!32800 (regOne!32800 r!7292)))) b!6205266))

(assert (= (and b!6204467 (is-Star!16144 (regTwo!32800 (regOne!32800 r!7292)))) b!6205267))

(assert (= (and b!6204467 (is-Union!16144 (regTwo!32800 (regOne!32800 r!7292)))) b!6205268))

(declare-fun b!6205270 () Bool)

(declare-fun e!3778432 () Bool)

(declare-fun tp!1730538 () Bool)

(declare-fun tp!1730535 () Bool)

(assert (=> b!6205270 (= e!3778432 (and tp!1730538 tp!1730535))))

(declare-fun b!6205269 () Bool)

(assert (=> b!6205269 (= e!3778432 tp_is_empty!41541)))

(assert (=> b!6204468 (= tp!1730317 e!3778432)))

(declare-fun b!6205271 () Bool)

(declare-fun tp!1730537 () Bool)

(assert (=> b!6205271 (= e!3778432 tp!1730537)))

(declare-fun b!6205272 () Bool)

(declare-fun tp!1730539 () Bool)

(declare-fun tp!1730536 () Bool)

(assert (=> b!6205272 (= e!3778432 (and tp!1730539 tp!1730536))))

(assert (= (and b!6204468 (is-ElementMatch!16144 (reg!16473 (regOne!32800 r!7292)))) b!6205269))

(assert (= (and b!6204468 (is-Concat!24989 (reg!16473 (regOne!32800 r!7292)))) b!6205270))

(assert (= (and b!6204468 (is-Star!16144 (reg!16473 (regOne!32800 r!7292)))) b!6205271))

(assert (= (and b!6204468 (is-Union!16144 (reg!16473 (regOne!32800 r!7292)))) b!6205272))

(declare-fun b!6205273 () Bool)

(declare-fun e!3778433 () Bool)

(declare-fun tp!1730540 () Bool)

(assert (=> b!6205273 (= e!3778433 (and tp_is_empty!41541 tp!1730540))))

(assert (=> b!6204488 (= tp!1730339 e!3778433)))

(assert (= (and b!6204488 (is-Cons!64609 (t!378253 (t!378253 s!2326)))) b!6205273))

(declare-fun b!6205275 () Bool)

(declare-fun e!3778434 () Bool)

(declare-fun tp!1730544 () Bool)

(declare-fun tp!1730541 () Bool)

(assert (=> b!6205275 (= e!3778434 (and tp!1730544 tp!1730541))))

(declare-fun b!6205274 () Bool)

(assert (=> b!6205274 (= e!3778434 tp_is_empty!41541)))

(assert (=> b!6204495 (= tp!1730350 e!3778434)))

(declare-fun b!6205276 () Bool)

(declare-fun tp!1730543 () Bool)

(assert (=> b!6205276 (= e!3778434 tp!1730543)))

(declare-fun b!6205277 () Bool)

(declare-fun tp!1730545 () Bool)

(declare-fun tp!1730542 () Bool)

(assert (=> b!6205277 (= e!3778434 (and tp!1730545 tp!1730542))))

(assert (= (and b!6204495 (is-ElementMatch!16144 (regOne!32800 (regOne!32801 r!7292)))) b!6205274))

(assert (= (and b!6204495 (is-Concat!24989 (regOne!32800 (regOne!32801 r!7292)))) b!6205275))

(assert (= (and b!6204495 (is-Star!16144 (regOne!32800 (regOne!32801 r!7292)))) b!6205276))

(assert (= (and b!6204495 (is-Union!16144 (regOne!32800 (regOne!32801 r!7292)))) b!6205277))

(declare-fun b!6205279 () Bool)

(declare-fun e!3778435 () Bool)

(declare-fun tp!1730549 () Bool)

(declare-fun tp!1730546 () Bool)

(assert (=> b!6205279 (= e!3778435 (and tp!1730549 tp!1730546))))

(declare-fun b!6205278 () Bool)

(assert (=> b!6205278 (= e!3778435 tp_is_empty!41541)))

(assert (=> b!6204495 (= tp!1730347 e!3778435)))

(declare-fun b!6205280 () Bool)

(declare-fun tp!1730548 () Bool)

(assert (=> b!6205280 (= e!3778435 tp!1730548)))

(declare-fun b!6205281 () Bool)

(declare-fun tp!1730550 () Bool)

(declare-fun tp!1730547 () Bool)

(assert (=> b!6205281 (= e!3778435 (and tp!1730550 tp!1730547))))

(assert (= (and b!6204495 (is-ElementMatch!16144 (regTwo!32800 (regOne!32801 r!7292)))) b!6205278))

(assert (= (and b!6204495 (is-Concat!24989 (regTwo!32800 (regOne!32801 r!7292)))) b!6205279))

(assert (= (and b!6204495 (is-Star!16144 (regTwo!32800 (regOne!32801 r!7292)))) b!6205280))

(assert (= (and b!6204495 (is-Union!16144 (regTwo!32800 (regOne!32801 r!7292)))) b!6205281))

(declare-fun b!6205283 () Bool)

(declare-fun e!3778436 () Bool)

(declare-fun tp!1730554 () Bool)

(declare-fun tp!1730551 () Bool)

(assert (=> b!6205283 (= e!3778436 (and tp!1730554 tp!1730551))))

(declare-fun b!6205282 () Bool)

(assert (=> b!6205282 (= e!3778436 tp_is_empty!41541)))

(assert (=> b!6204469 (= tp!1730319 e!3778436)))

(declare-fun b!6205284 () Bool)

(declare-fun tp!1730553 () Bool)

(assert (=> b!6205284 (= e!3778436 tp!1730553)))

(declare-fun b!6205285 () Bool)

(declare-fun tp!1730555 () Bool)

(declare-fun tp!1730552 () Bool)

(assert (=> b!6205285 (= e!3778436 (and tp!1730555 tp!1730552))))

(assert (= (and b!6204469 (is-ElementMatch!16144 (regOne!32801 (regOne!32800 r!7292)))) b!6205282))

(assert (= (and b!6204469 (is-Concat!24989 (regOne!32801 (regOne!32800 r!7292)))) b!6205283))

(assert (= (and b!6204469 (is-Star!16144 (regOne!32801 (regOne!32800 r!7292)))) b!6205284))

(assert (= (and b!6204469 (is-Union!16144 (regOne!32801 (regOne!32800 r!7292)))) b!6205285))

(declare-fun b!6205287 () Bool)

(declare-fun e!3778437 () Bool)

(declare-fun tp!1730559 () Bool)

(declare-fun tp!1730556 () Bool)

(assert (=> b!6205287 (= e!3778437 (and tp!1730559 tp!1730556))))

(declare-fun b!6205286 () Bool)

(assert (=> b!6205286 (= e!3778437 tp_is_empty!41541)))

(assert (=> b!6204469 (= tp!1730316 e!3778437)))

(declare-fun b!6205288 () Bool)

(declare-fun tp!1730558 () Bool)

(assert (=> b!6205288 (= e!3778437 tp!1730558)))

(declare-fun b!6205289 () Bool)

(declare-fun tp!1730560 () Bool)

(declare-fun tp!1730557 () Bool)

(assert (=> b!6205289 (= e!3778437 (and tp!1730560 tp!1730557))))

(assert (= (and b!6204469 (is-ElementMatch!16144 (regTwo!32801 (regOne!32800 r!7292)))) b!6205286))

(assert (= (and b!6204469 (is-Concat!24989 (regTwo!32801 (regOne!32800 r!7292)))) b!6205287))

(assert (= (and b!6204469 (is-Star!16144 (regTwo!32801 (regOne!32800 r!7292)))) b!6205288))

(assert (= (and b!6204469 (is-Union!16144 (regTwo!32801 (regOne!32800 r!7292)))) b!6205289))

(declare-fun b!6205291 () Bool)

(declare-fun e!3778438 () Bool)

(declare-fun tp!1730564 () Bool)

(declare-fun tp!1730561 () Bool)

(assert (=> b!6205291 (= e!3778438 (and tp!1730564 tp!1730561))))

(declare-fun b!6205290 () Bool)

(assert (=> b!6205290 (= e!3778438 tp_is_empty!41541)))

(assert (=> b!6204483 (= tp!1730335 e!3778438)))

(declare-fun b!6205292 () Bool)

(declare-fun tp!1730563 () Bool)

(assert (=> b!6205292 (= e!3778438 tp!1730563)))

(declare-fun b!6205293 () Bool)

(declare-fun tp!1730565 () Bool)

(declare-fun tp!1730562 () Bool)

(assert (=> b!6205293 (= e!3778438 (and tp!1730565 tp!1730562))))

(assert (= (and b!6204483 (is-ElementMatch!16144 (h!71055 (exprs!6028 setElem!42121)))) b!6205290))

(assert (= (and b!6204483 (is-Concat!24989 (h!71055 (exprs!6028 setElem!42121)))) b!6205291))

(assert (= (and b!6204483 (is-Star!16144 (h!71055 (exprs!6028 setElem!42121)))) b!6205292))

(assert (= (and b!6204483 (is-Union!16144 (h!71055 (exprs!6028 setElem!42121)))) b!6205293))

(declare-fun b!6205294 () Bool)

(declare-fun e!3778439 () Bool)

(declare-fun tp!1730566 () Bool)

(declare-fun tp!1730567 () Bool)

(assert (=> b!6205294 (= e!3778439 (and tp!1730566 tp!1730567))))

(assert (=> b!6204483 (= tp!1730336 e!3778439)))

(assert (= (and b!6204483 (is-Cons!64607 (t!378251 (exprs!6028 setElem!42121)))) b!6205294))

(declare-fun b!6205296 () Bool)

(declare-fun e!3778440 () Bool)

(declare-fun tp!1730571 () Bool)

(declare-fun tp!1730568 () Bool)

(assert (=> b!6205296 (= e!3778440 (and tp!1730571 tp!1730568))))

(declare-fun b!6205295 () Bool)

(assert (=> b!6205295 (= e!3778440 tp_is_empty!41541)))

(assert (=> b!6204496 (= tp!1730349 e!3778440)))

(declare-fun b!6205297 () Bool)

(declare-fun tp!1730570 () Bool)

(assert (=> b!6205297 (= e!3778440 tp!1730570)))

(declare-fun b!6205298 () Bool)

(declare-fun tp!1730572 () Bool)

(declare-fun tp!1730569 () Bool)

(assert (=> b!6205298 (= e!3778440 (and tp!1730572 tp!1730569))))

(assert (= (and b!6204496 (is-ElementMatch!16144 (reg!16473 (regOne!32801 r!7292)))) b!6205295))

(assert (= (and b!6204496 (is-Concat!24989 (reg!16473 (regOne!32801 r!7292)))) b!6205296))

(assert (= (and b!6204496 (is-Star!16144 (reg!16473 (regOne!32801 r!7292)))) b!6205297))

(assert (= (and b!6204496 (is-Union!16144 (reg!16473 (regOne!32801 r!7292)))) b!6205298))

(declare-fun b!6205300 () Bool)

(declare-fun e!3778442 () Bool)

(declare-fun tp!1730573 () Bool)

(assert (=> b!6205300 (= e!3778442 tp!1730573)))

(declare-fun b!6205299 () Bool)

(declare-fun e!3778441 () Bool)

(declare-fun tp!1730574 () Bool)

(assert (=> b!6205299 (= e!3778441 (and (inv!83608 (h!71056 (t!378252 (t!378252 zl!343)))) e!3778442 tp!1730574))))

(assert (=> b!6204454 (= tp!1730304 e!3778441)))

(assert (= b!6205299 b!6205300))

(assert (= (and b!6204454 (is-Cons!64608 (t!378252 (t!378252 zl!343)))) b!6205299))

(declare-fun m!7036704 () Bool)

(assert (=> b!6205299 m!7036704))

(declare-fun b_lambda!235979 () Bool)

(assert (= b_lambda!235969 (or d!1944736 b_lambda!235979)))

(declare-fun bs!1539235 () Bool)

(declare-fun d!1945078 () Bool)

(assert (= bs!1539235 (and d!1945078 d!1944736)))

(assert (=> bs!1539235 (= (dynLambda!25484 lambda!339042 (h!71055 (exprs!6028 lt!2343238))) (validRegex!7880 (h!71055 (exprs!6028 lt!2343238))))))

(declare-fun m!7036706 () Bool)

(assert (=> bs!1539235 m!7036706))

(assert (=> b!6204991 d!1945078))

(declare-fun b_lambda!235981 () Bool)

(assert (= b_lambda!235975 (or d!1944792 b_lambda!235981)))

(declare-fun bs!1539236 () Bool)

(declare-fun d!1945080 () Bool)

(assert (= bs!1539236 (and d!1945080 d!1944792)))

(assert (=> bs!1539236 (= (dynLambda!25484 lambda!339062 (h!71055 (exprs!6028 setElem!42121))) (validRegex!7880 (h!71055 (exprs!6028 setElem!42121))))))

(declare-fun m!7036708 () Bool)

(assert (=> bs!1539236 m!7036708))

(assert (=> b!6205158 d!1945080))

(declare-fun b_lambda!235983 () Bool)

(assert (= b_lambda!235971 (or d!1944794 b_lambda!235983)))

(declare-fun bs!1539237 () Bool)

(declare-fun d!1945082 () Bool)

(assert (= bs!1539237 (and d!1945082 d!1944794)))

(assert (=> bs!1539237 (= (dynLambda!25484 lambda!339065 (h!71055 (exprs!6028 (h!71056 zl!343)))) (validRegex!7880 (h!71055 (exprs!6028 (h!71056 zl!343)))))))

(declare-fun m!7036710 () Bool)

(assert (=> bs!1539237 m!7036710))

(assert (=> b!6205094 d!1945082))

(declare-fun b_lambda!235985 () Bool)

(assert (= b_lambda!235977 (or b!6203896 b_lambda!235985)))

(assert (=> d!1945076 d!1944838))

(declare-fun b_lambda!235987 () Bool)

(assert (= b_lambda!235973 (or d!1944764 b_lambda!235987)))

(declare-fun bs!1539238 () Bool)

(declare-fun d!1945084 () Bool)

(assert (= bs!1539238 (and d!1945084 d!1944764)))

(assert (=> bs!1539238 (= (dynLambda!25484 lambda!339045 (h!71055 (unfocusZipperList!1565 zl!343))) (validRegex!7880 (h!71055 (unfocusZipperList!1565 zl!343))))))

(declare-fun m!7036712 () Bool)

(assert (=> bs!1539238 m!7036712))

(assert (=> b!6205105 d!1945084))

(declare-fun b_lambda!235989 () Bool)

(assert (= b_lambda!235965 (or d!1944768 b_lambda!235989)))

(declare-fun bs!1539239 () Bool)

(declare-fun d!1945086 () Bool)

(assert (= bs!1539239 (and d!1945086 d!1944768)))

(assert (=> bs!1539239 (= (dynLambda!25484 lambda!339049 (h!71055 (exprs!6028 (h!71056 zl!343)))) (validRegex!7880 (h!71055 (exprs!6028 (h!71056 zl!343)))))))

(assert (=> bs!1539239 m!7036710))

(assert (=> b!6204757 d!1945086))

(declare-fun b_lambda!235991 () Bool)

(assert (= b_lambda!235967 (or d!1944766 b_lambda!235991)))

(declare-fun bs!1539240 () Bool)

(declare-fun d!1945088 () Bool)

(assert (= bs!1539240 (and d!1945088 d!1944766)))

(assert (=> bs!1539240 (= (dynLambda!25484 lambda!339048 (h!71055 lt!2343291)) (validRegex!7880 (h!71055 lt!2343291)))))

(declare-fun m!7036714 () Bool)

(assert (=> bs!1539240 m!7036714))

(assert (=> b!6204959 d!1945088))

(push 1)

(assert (not b!6204972))

(assert (not bm!519516))

(assert (not b!6205218))

(assert (not bm!519519))

(assert (not b!6204922))

(assert (not b!6205187))

(assert (not d!1945000))

(assert (not d!1944952))

(assert (not bm!519547))

(assert (not b!6204990))

(assert (not b!6205230))

(assert (not b!6205142))

(assert (not b!6204889))

(assert (not bm!519573))

(assert (not d!1944926))

(assert (not bm!519599))

(assert (not b!6205275))

(assert (not d!1945072))

(assert (not b!6204934))

(assert (not bm!519597))

(assert (not bm!519562))

(assert (not d!1944964))

(assert (not d!1945020))

(assert (not b!6205200))

(assert (not b!6205228))

(assert (not b!6205095))

(assert (not b!6204898))

(assert (not b!6205219))

(assert (not b!6204880))

(assert (not b!6205202))

(assert (not b!6204891))

(assert (not bs!1539237))

(assert (not d!1944956))

(assert (not b!6205207))

(assert (not b!6204921))

(assert (not d!1944918))

(assert (not b!6205285))

(assert (not d!1945058))

(assert (not bm!519561))

(assert (not b!6205246))

(assert (not b!6205144))

(assert (not b!6205256))

(assert (not b!6205037))

(assert (not bm!519545))

(assert (not bm!519534))

(assert (not b!6205240))

(assert (not setNonEmpty!42133))

(assert (not b!6204932))

(assert (not b!6205258))

(assert (not b!6204802))

(assert (not b!6204831))

(assert (not b!6204807))

(assert (not bm!519544))

(assert (not d!1944984))

(assert (not b!6205115))

(assert (not b!6205214))

(assert (not b!6205255))

(assert (not bm!519531))

(assert (not b_lambda!235979))

(assert (not b!6205186))

(assert (not b!6205263))

(assert (not d!1945068))

(assert (not bm!519566))

(assert (not b!6205123))

(assert (not b!6204823))

(assert (not d!1945014))

(assert (not b!6205210))

(assert (not b!6205293))

(assert (not b!6205297))

(assert (not b!6205299))

(assert (not b!6205199))

(assert (not b!6204928))

(assert (not b!6205289))

(assert (not bm!519515))

(assert (not bm!519575))

(assert (not b!6205173))

(assert (not b!6205198))

(assert (not b!6205235))

(assert (not b!6204758))

(assert (not b!6204961))

(assert (not d!1945060))

(assert (not b_lambda!235983))

(assert (not b!6205204))

(assert (not b!6204840))

(assert (not bm!519603))

(assert (not b!6204824))

(assert (not b!6205294))

(assert (not d!1944936))

(assert (not bm!519528))

(assert (not b!6204787))

(assert (not d!1944932))

(assert (not b!6205247))

(assert (not b!6204967))

(assert (not d!1944928))

(assert (not bm!519576))

(assert (not b!6205203))

(assert (not b!6205271))

(assert (not b!6204888))

(assert (not bm!519585))

(assert (not b!6205071))

(assert (not b_lambda!235991))

(assert (not b!6204783))

(assert (not bs!1539239))

(assert (not b!6205146))

(assert (not b!6205270))

(assert (not d!1945076))

(assert (not b!6204976))

(assert (not b!6204988))

(assert (not b!6205239))

(assert (not b!6205157))

(assert (not bm!519567))

(assert (not b!6204803))

(assert (not b!6205267))

(assert (not b!6205252))

(assert (not b!6204885))

(assert (not bm!519596))

(assert (not b!6205216))

(assert (not b!6205253))

(assert (not d!1944910))

(assert (not bm!519617))

(assert (not d!1944880))

(assert (not b!6205084))

(assert (not bm!519533))

(assert (not bm!519605))

(assert (not bm!519577))

(assert (not b!6205160))

(assert (not b!6204788))

(assert (not bm!519572))

(assert (not d!1944950))

(assert (not bm!519552))

(assert (not b!6205259))

(assert (not b!6205224))

(assert (not bm!519611))

(assert (not b!6204786))

(assert (not d!1945038))

(assert (not b!6204789))

(assert (not b!6205220))

(assert (not b!6205231))

(assert (not bm!519608))

(assert (not bm!519521))

(assert (not b_lambda!235981))

(assert (not b!6204780))

(assert (not bm!519548))

(assert (not bm!519525))

(assert (not b!6204822))

(assert (not b!6204924))

(assert (not d!1944924))

(assert (not b!6205250))

(assert (not bs!1539235))

(assert (not d!1945010))

(assert (not b!6205248))

(assert (not bm!519555))

(assert (not b!6205073))

(assert (not bm!519612))

(assert (not b!6205266))

(assert (not b!6205215))

(assert (not bm!519589))

(assert (not b!6204960))

(assert (not bm!519610))

(assert (not bm!519591))

(assert (not b!6205222))

(assert (not b!6204881))

(assert (not b!6204992))

(assert (not b!6205232))

(assert (not b!6205106))

(assert (not bs!1539236))

(assert (not b!6205092))

(assert (not bm!519586))

(assert (not b!6205212))

(assert (not b_lambda!235989))

(assert (not b!6205242))

(assert (not bm!519564))

(assert (not b!6204785))

(assert (not b!6205192))

(assert (not b!6204768))

(assert (not bm!519514))

(assert (not b!6205236))

(assert (not b!6205272))

(assert (not bm!519522))

(assert (not d!1944900))

(assert (not b!6205168))

(assert (not b!6204759))

(assert (not b!6205004))

(assert (not b!6205196))

(assert (not b!6204971))

(assert (not bm!519580))

(assert (not setNonEmpty!42134))

(assert (not b!6204801))

(assert (not bm!519527))

(assert (not b!6205276))

(assert (not bm!519560))

(assert (not b!6205191))

(assert (not b!6204837))

(assert (not b!6205277))

(assert (not b_lambda!235987))

(assert (not d!1944982))

(assert (not b!6205238))

(assert (not bm!519600))

(assert (not bm!519549))

(assert (not d!1944994))

(assert (not b!6205298))

(assert (not b!6204937))

(assert (not bm!519604))

(assert (not b!6204963))

(assert (not b!6205072))

(assert (not b!6204893))

(assert (not b!6204836))

(assert (not d!1945048))

(assert (not d!1944912))

(assert (not bm!519582))

(assert (not b!6205159))

(assert (not b!6204782))

(assert (not bm!519570))

(assert (not d!1945052))

(assert (not bs!1539240))

(assert (not b!6205260))

(assert (not b!6204884))

(assert (not b!6205129))

(assert (not bs!1539238))

(assert (not bm!519584))

(assert (not b!6205273))

(assert (not d!1944906))

(assert (not b!6204835))

(assert (not b!6205103))

(assert (not b!6204827))

(assert (not b!6205190))

(assert (not b!6204806))

(assert (not b!6205045))

(assert (not b!6205211))

(assert (not d!1944966))

(assert (not b!6205145))

(assert (not d!1944934))

(assert (not bm!519615))

(assert (not b!6205257))

(assert (not b!6205206))

(assert (not b!6205264))

(assert (not b!6205287))

(assert (not b!6205132))

(assert (not b!6205017))

(assert (not d!1944930))

(assert (not b!6205244))

(assert (not b!6204973))

(assert (not bm!519602))

(assert (not b!6205279))

(assert (not bm!519594))

(assert (not bm!519601))

(assert (not d!1945002))

(assert (not b!6205170))

(assert (not b!6205003))

(assert (not bm!519554))

(assert (not b!6205014))

(assert (not b!6204984))

(assert (not b!6205280))

(assert (not b!6204907))

(assert (not b!6204809))

(assert (not b!6205064))

(assert (not b!6204810))

(assert (not b!6205243))

(assert (not b!6204919))

(assert (not d!1944968))

(assert tp_is_empty!41541)

(assert (not b!6204896))

(assert (not b!6205300))

(assert (not d!1945016))

(assert (not b!6205251))

(assert (not b!6205025))

(assert (not b!6205281))

(assert (not b!6205227))

(assert (not b!6205188))

(assert (not d!1945004))

(assert (not b!6204962))

(assert (not b!6205012))

(assert (not b!6205223))

(assert (not b!6205262))

(assert (not b!6205291))

(assert (not b!6204933))

(assert (not b!6204864))

(assert (not b!6205283))

(assert (not b!6205234))

(assert (not b!6204890))

(assert (not b!6205195))

(assert (not b!6205296))

(assert (not d!1945074))

(assert (not b!6205112))

(assert (not b!6205063))

(assert (not b!6205127))

(assert (not b_lambda!235985))

(assert (not d!1944938))

(assert (not b!6205184))

(assert (not b!6205008))

(assert (not b!6205208))

(assert (not b!6204887))

(assert (not d!1945046))

(assert (not d!1945008))

(assert (not bm!519565))

(assert (not b!6205268))

(assert (not b!6205013))

(assert (not bm!519593))

(assert (not d!1944962))

(assert (not b!6205292))

(assert (not b!6205288))

(assert (not b_lambda!235961))

(assert (not b!6205226))

(assert (not b!6205194))

(assert (not d!1944888))

(assert (not b!6204811))

(assert (not b!6205169))

(assert (not b!6205284))

(assert (not b!6205164))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

