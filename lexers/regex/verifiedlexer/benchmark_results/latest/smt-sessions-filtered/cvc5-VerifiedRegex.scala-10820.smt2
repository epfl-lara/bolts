; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!556268 () Bool)

(assert start!556268)

(declare-fun b!5266802 () Bool)

(assert (=> b!5266802 true))

(assert (=> b!5266802 true))

(declare-fun lambda!265621 () Int)

(declare-fun lambda!265620 () Int)

(assert (=> b!5266802 (not (= lambda!265621 lambda!265620))))

(assert (=> b!5266802 true))

(assert (=> b!5266802 true))

(declare-fun b!5266789 () Bool)

(assert (=> b!5266789 true))

(declare-fun b!5266784 () Bool)

(declare-fun res!2234563 () Bool)

(declare-fun e!3275774 () Bool)

(assert (=> b!5266784 (=> res!2234563 e!3275774)))

(declare-datatypes ((C!30042 0))(
  ( (C!30043 (val!24723 Int)) )
))
(declare-datatypes ((Regex!14886 0))(
  ( (ElementMatch!14886 (c!911978 C!30042)) (Concat!23731 (regOne!30284 Regex!14886) (regTwo!30284 Regex!14886)) (EmptyExpr!14886) (Star!14886 (reg!15215 Regex!14886)) (EmptyLang!14886) (Union!14886 (regOne!30285 Regex!14886) (regTwo!30285 Regex!14886)) )
))
(declare-fun r!7292 () Regex!14886)

(assert (=> b!5266784 (= res!2234563 (or (is-EmptyExpr!14886 r!7292) (is-EmptyLang!14886 r!7292) (is-ElementMatch!14886 r!7292) (is-Union!14886 r!7292) (not (is-Concat!23731 r!7292))))))

(declare-fun b!5266785 () Bool)

(declare-fun res!2234550 () Bool)

(assert (=> b!5266785 (=> res!2234550 e!3275774)))

(declare-datatypes ((List!60957 0))(
  ( (Nil!60833) (Cons!60833 (h!67281 Regex!14886) (t!374148 List!60957)) )
))
(declare-datatypes ((Context!8540 0))(
  ( (Context!8541 (exprs!4770 List!60957)) )
))
(declare-datatypes ((List!60958 0))(
  ( (Nil!60834) (Cons!60834 (h!67282 Context!8540) (t!374149 List!60958)) )
))
(declare-fun zl!343 () List!60958)

(assert (=> b!5266785 (= res!2234550 (not (is-Cons!60833 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun b!5266786 () Bool)

(declare-fun e!3275771 () Bool)

(declare-fun tp!1472245 () Bool)

(declare-fun tp!1472239 () Bool)

(assert (=> b!5266786 (= e!3275771 (and tp!1472245 tp!1472239))))

(declare-fun b!5266787 () Bool)

(declare-fun e!3275767 () Bool)

(declare-fun lt!2156046 () (Set Context!8540))

(declare-datatypes ((List!60959 0))(
  ( (Nil!60835) (Cons!60835 (h!67283 C!30042) (t!374150 List!60959)) )
))
(declare-fun s!2326 () List!60959)

(declare-fun matchZipper!1130 ((Set Context!8540) List!60959) Bool)

(assert (=> b!5266787 (= e!3275767 (matchZipper!1130 lt!2156046 (t!374150 s!2326)))))

(declare-fun e!3275780 () Bool)

(declare-fun tp!1472238 () Bool)

(declare-fun b!5266788 () Bool)

(declare-fun e!3275770 () Bool)

(declare-fun inv!80463 (Context!8540) Bool)

(assert (=> b!5266788 (= e!3275770 (and (inv!80463 (h!67282 zl!343)) e!3275780 tp!1472238))))

(declare-fun e!3275769 () Bool)

(declare-fun e!3275768 () Bool)

(assert (=> b!5266789 (= e!3275769 e!3275768)))

(declare-fun res!2234565 () Bool)

(assert (=> b!5266789 (=> res!2234565 e!3275768)))

(assert (=> b!5266789 (= res!2234565 (or (and (is-ElementMatch!14886 (regOne!30284 r!7292)) (= (c!911978 (regOne!30284 r!7292)) (h!67283 s!2326))) (is-Union!14886 (regOne!30284 r!7292)) (not (is-Concat!23731 (regOne!30284 r!7292)))))))

(declare-datatypes ((Unit!153062 0))(
  ( (Unit!153063) )
))
(declare-fun lt!2156031 () Unit!153062)

(declare-fun e!3275781 () Unit!153062)

(assert (=> b!5266789 (= lt!2156031 e!3275781)))

(declare-fun c!911977 () Bool)

(declare-fun nullable!5055 (Regex!14886) Bool)

(assert (=> b!5266789 (= c!911977 (nullable!5055 (h!67281 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun z!1189 () (Set Context!8540))

(declare-fun lambda!265622 () Int)

(declare-fun flatMap!613 ((Set Context!8540) Int) (Set Context!8540))

(declare-fun derivationStepZipperUp!258 (Context!8540 C!30042) (Set Context!8540))

(assert (=> b!5266789 (= (flatMap!613 z!1189 lambda!265622) (derivationStepZipperUp!258 (h!67282 zl!343) (h!67283 s!2326)))))

(declare-fun lt!2156027 () Unit!153062)

(declare-fun lemmaFlatMapOnSingletonSet!145 ((Set Context!8540) Context!8540 Int) Unit!153062)

(assert (=> b!5266789 (= lt!2156027 (lemmaFlatMapOnSingletonSet!145 z!1189 (h!67282 zl!343) lambda!265622))))

(declare-fun lt!2156044 () (Set Context!8540))

(declare-fun lt!2156038 () Context!8540)

(assert (=> b!5266789 (= lt!2156044 (derivationStepZipperUp!258 lt!2156038 (h!67283 s!2326)))))

(declare-fun lt!2156039 () (Set Context!8540))

(declare-fun derivationStepZipperDown!334 (Regex!14886 Context!8540 C!30042) (Set Context!8540))

(assert (=> b!5266789 (= lt!2156039 (derivationStepZipperDown!334 (h!67281 (exprs!4770 (h!67282 zl!343))) lt!2156038 (h!67283 s!2326)))))

(assert (=> b!5266789 (= lt!2156038 (Context!8541 (t!374148 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun lt!2156036 () (Set Context!8540))

(assert (=> b!5266789 (= lt!2156036 (derivationStepZipperUp!258 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343))))) (h!67283 s!2326)))))

(declare-fun b!5266790 () Bool)

(declare-fun res!2234556 () Bool)

(assert (=> b!5266790 (=> res!2234556 e!3275769)))

(declare-fun isEmpty!32781 (List!60957) Bool)

(assert (=> b!5266790 (= res!2234556 (isEmpty!32781 (t!374148 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun b!5266791 () Bool)

(declare-fun res!2234567 () Bool)

(declare-fun e!3275775 () Bool)

(assert (=> b!5266791 (=> (not res!2234567) (not e!3275775))))

(declare-fun toList!8670 ((Set Context!8540)) List!60958)

(assert (=> b!5266791 (= res!2234567 (= (toList!8670 z!1189) zl!343))))

(declare-fun res!2234559 () Bool)

(assert (=> start!556268 (=> (not res!2234559) (not e!3275775))))

(declare-fun validRegex!6622 (Regex!14886) Bool)

(assert (=> start!556268 (= res!2234559 (validRegex!6622 r!7292))))

(assert (=> start!556268 e!3275775))

(assert (=> start!556268 e!3275771))

(declare-fun condSetEmpty!33694 () Bool)

(assert (=> start!556268 (= condSetEmpty!33694 (= z!1189 (as set.empty (Set Context!8540))))))

(declare-fun setRes!33694 () Bool)

(assert (=> start!556268 setRes!33694))

(assert (=> start!556268 e!3275770))

(declare-fun e!3275778 () Bool)

(assert (=> start!556268 e!3275778))

(declare-fun b!5266792 () Bool)

(declare-fun tp!1472244 () Bool)

(declare-fun tp!1472242 () Bool)

(assert (=> b!5266792 (= e!3275771 (and tp!1472244 tp!1472242))))

(declare-fun b!5266793 () Bool)

(declare-fun e!3275773 () Bool)

(assert (=> b!5266793 (= e!3275773 (not (matchZipper!1130 lt!2156046 (t!374150 s!2326))))))

(declare-fun setIsEmpty!33694 () Bool)

(assert (=> setIsEmpty!33694 setRes!33694))

(declare-fun b!5266794 () Bool)

(declare-fun tp_is_empty!39025 () Bool)

(assert (=> b!5266794 (= e!3275771 tp_is_empty!39025)))

(declare-fun b!5266795 () Bool)

(declare-fun Unit!153064 () Unit!153062)

(assert (=> b!5266795 (= e!3275781 Unit!153064)))

(declare-fun b!5266796 () Bool)

(declare-fun e!3275776 () Bool)

(assert (=> b!5266796 (= e!3275776 (matchZipper!1130 lt!2156044 (t!374150 s!2326)))))

(declare-fun b!5266797 () Bool)

(declare-fun res!2234566 () Bool)

(assert (=> b!5266797 (=> res!2234566 e!3275774)))

(declare-fun generalisedConcat!555 (List!60957) Regex!14886)

(assert (=> b!5266797 (= res!2234566 (not (= r!7292 (generalisedConcat!555 (exprs!4770 (h!67282 zl!343))))))))

(declare-fun b!5266798 () Bool)

(declare-fun res!2234555 () Bool)

(assert (=> b!5266798 (=> (not res!2234555) (not e!3275775))))

(declare-fun unfocusZipper!628 (List!60958) Regex!14886)

(assert (=> b!5266798 (= res!2234555 (= r!7292 (unfocusZipper!628 zl!343)))))

(declare-fun b!5266799 () Bool)

(declare-fun res!2234561 () Bool)

(assert (=> b!5266799 (=> res!2234561 e!3275774)))

(declare-fun generalisedUnion!815 (List!60957) Regex!14886)

(declare-fun unfocusZipperList!328 (List!60958) List!60957)

(assert (=> b!5266799 (= res!2234561 (not (= r!7292 (generalisedUnion!815 (unfocusZipperList!328 zl!343)))))))

(declare-fun b!5266800 () Bool)

(declare-fun e!3275777 () Bool)

(assert (=> b!5266800 (= e!3275768 e!3275777)))

(declare-fun res!2234551 () Bool)

(assert (=> b!5266800 (=> res!2234551 e!3275777)))

(declare-fun lt!2156037 () (Set Context!8540))

(assert (=> b!5266800 (= res!2234551 (not (= lt!2156039 lt!2156037)))))

(declare-fun lt!2156028 () (Set Context!8540))

(assert (=> b!5266800 (= lt!2156037 (set.union lt!2156028 lt!2156046))))

(assert (=> b!5266800 (= lt!2156046 (derivationStepZipperDown!334 (regTwo!30284 (regOne!30284 r!7292)) lt!2156038 (h!67283 s!2326)))))

(declare-fun lt!2156033 () List!60957)

(assert (=> b!5266800 (= lt!2156028 (derivationStepZipperDown!334 (regOne!30284 (regOne!30284 r!7292)) (Context!8541 lt!2156033) (h!67283 s!2326)))))

(assert (=> b!5266800 (= lt!2156033 (Cons!60833 (regTwo!30284 (regOne!30284 r!7292)) (t!374148 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun tp!1472247 () Bool)

(declare-fun setElem!33694 () Context!8540)

(declare-fun setNonEmpty!33694 () Bool)

(declare-fun e!3275772 () Bool)

(assert (=> setNonEmpty!33694 (= setRes!33694 (and tp!1472247 (inv!80463 setElem!33694) e!3275772))))

(declare-fun setRest!33694 () (Set Context!8540))

(assert (=> setNonEmpty!33694 (= z!1189 (set.union (set.insert setElem!33694 (as set.empty (Set Context!8540))) setRest!33694))))

(declare-fun b!5266801 () Bool)

(declare-fun tp!1472246 () Bool)

(assert (=> b!5266801 (= e!3275772 tp!1472246)))

(assert (=> b!5266802 (= e!3275774 e!3275769)))

(declare-fun res!2234558 () Bool)

(assert (=> b!5266802 (=> res!2234558 e!3275769)))

(declare-fun lt!2156025 () Bool)

(declare-fun lt!2156045 () Bool)

(assert (=> b!5266802 (= res!2234558 (or (not (= lt!2156045 lt!2156025)) (is-Nil!60835 s!2326)))))

(declare-fun Exists!2067 (Int) Bool)

(assert (=> b!5266802 (= (Exists!2067 lambda!265620) (Exists!2067 lambda!265621))))

(declare-fun lt!2156030 () Unit!153062)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!721 (Regex!14886 Regex!14886 List!60959) Unit!153062)

(assert (=> b!5266802 (= lt!2156030 (lemmaExistCutMatchRandMatchRSpecEquivalent!721 (regOne!30284 r!7292) (regTwo!30284 r!7292) s!2326))))

(assert (=> b!5266802 (= lt!2156025 (Exists!2067 lambda!265620))))

(declare-datatypes ((tuple2!64170 0))(
  ( (tuple2!64171 (_1!35388 List!60959) (_2!35388 List!60959)) )
))
(declare-datatypes ((Option!14997 0))(
  ( (None!14996) (Some!14996 (v!51025 tuple2!64170)) )
))
(declare-fun isDefined!11700 (Option!14997) Bool)

(declare-fun findConcatSeparation!1411 (Regex!14886 Regex!14886 List!60959 List!60959 List!60959) Option!14997)

(assert (=> b!5266802 (= lt!2156025 (isDefined!11700 (findConcatSeparation!1411 (regOne!30284 r!7292) (regTwo!30284 r!7292) Nil!60835 s!2326 s!2326)))))

(declare-fun lt!2156042 () Unit!153062)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1175 (Regex!14886 Regex!14886 List!60959) Unit!153062)

(assert (=> b!5266802 (= lt!2156042 (lemmaFindConcatSeparationEquivalentToExists!1175 (regOne!30284 r!7292) (regTwo!30284 r!7292) s!2326))))

(declare-fun b!5266803 () Bool)

(declare-fun Unit!153065 () Unit!153062)

(assert (=> b!5266803 (= e!3275781 Unit!153065)))

(declare-fun lt!2156040 () Unit!153062)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!123 ((Set Context!8540) (Set Context!8540) List!60959) Unit!153062)

(assert (=> b!5266803 (= lt!2156040 (lemmaZipperConcatMatchesSameAsBothZippers!123 lt!2156039 lt!2156044 (t!374150 s!2326)))))

(declare-fun res!2234562 () Bool)

(assert (=> b!5266803 (= res!2234562 (matchZipper!1130 lt!2156039 (t!374150 s!2326)))))

(assert (=> b!5266803 (=> res!2234562 e!3275776)))

(assert (=> b!5266803 (= (matchZipper!1130 (set.union lt!2156039 lt!2156044) (t!374150 s!2326)) e!3275776)))

(declare-fun b!5266804 () Bool)

(declare-fun e!3275779 () Bool)

(assert (=> b!5266804 (= e!3275779 (validRegex!6622 (regOne!30284 (regOne!30284 r!7292))))))

(declare-fun lt!2156034 () Context!8540)

(declare-fun lt!2156035 () (Set Context!8540))

(assert (=> b!5266804 (= (flatMap!613 lt!2156035 lambda!265622) (derivationStepZipperUp!258 lt!2156034 (h!67283 s!2326)))))

(declare-fun lt!2156029 () Unit!153062)

(assert (=> b!5266804 (= lt!2156029 (lemmaFlatMapOnSingletonSet!145 lt!2156035 lt!2156034 lambda!265622))))

(declare-fun lt!2156043 () (Set Context!8540))

(assert (=> b!5266804 (= lt!2156043 (derivationStepZipperUp!258 lt!2156034 (h!67283 s!2326)))))

(assert (=> b!5266804 (= lt!2156035 (set.insert lt!2156034 (as set.empty (Set Context!8540))))))

(assert (=> b!5266804 (= lt!2156034 (Context!8541 (Cons!60833 (regOne!30284 (regOne!30284 r!7292)) lt!2156033)))))

(declare-fun b!5266805 () Bool)

(assert (=> b!5266805 (= e!3275775 (not e!3275774))))

(declare-fun res!2234564 () Bool)

(assert (=> b!5266805 (=> res!2234564 e!3275774)))

(assert (=> b!5266805 (= res!2234564 (not (is-Cons!60834 zl!343)))))

(declare-fun matchRSpec!1989 (Regex!14886 List!60959) Bool)

(assert (=> b!5266805 (= lt!2156045 (matchRSpec!1989 r!7292 s!2326))))

(declare-fun matchR!7071 (Regex!14886 List!60959) Bool)

(assert (=> b!5266805 (= lt!2156045 (matchR!7071 r!7292 s!2326))))

(declare-fun lt!2156026 () Unit!153062)

(declare-fun mainMatchTheorem!1989 (Regex!14886 List!60959) Unit!153062)

(assert (=> b!5266805 (= lt!2156026 (mainMatchTheorem!1989 r!7292 s!2326))))

(declare-fun b!5266806 () Bool)

(declare-fun res!2234560 () Bool)

(assert (=> b!5266806 (=> res!2234560 e!3275768)))

(assert (=> b!5266806 (= res!2234560 (not (nullable!5055 (regOne!30284 (regOne!30284 r!7292)))))))

(declare-fun b!5266807 () Bool)

(declare-fun tp!1472240 () Bool)

(assert (=> b!5266807 (= e!3275778 (and tp_is_empty!39025 tp!1472240))))

(declare-fun b!5266808 () Bool)

(assert (=> b!5266808 (= e!3275777 e!3275779)))

(declare-fun res!2234552 () Bool)

(assert (=> b!5266808 (=> res!2234552 e!3275779)))

(assert (=> b!5266808 (= res!2234552 e!3275773)))

(declare-fun res!2234557 () Bool)

(assert (=> b!5266808 (=> (not res!2234557) (not e!3275773))))

(declare-fun lt!2156032 () Bool)

(assert (=> b!5266808 (= res!2234557 (not (= (matchZipper!1130 lt!2156039 (t!374150 s!2326)) lt!2156032)))))

(assert (=> b!5266808 (= (matchZipper!1130 lt!2156037 (t!374150 s!2326)) e!3275767)))

(declare-fun res!2234554 () Bool)

(assert (=> b!5266808 (=> res!2234554 e!3275767)))

(assert (=> b!5266808 (= res!2234554 lt!2156032)))

(assert (=> b!5266808 (= lt!2156032 (matchZipper!1130 lt!2156028 (t!374150 s!2326)))))

(declare-fun lt!2156041 () Unit!153062)

(assert (=> b!5266808 (= lt!2156041 (lemmaZipperConcatMatchesSameAsBothZippers!123 lt!2156028 lt!2156046 (t!374150 s!2326)))))

(declare-fun b!5266809 () Bool)

(declare-fun tp!1472243 () Bool)

(assert (=> b!5266809 (= e!3275780 tp!1472243)))

(declare-fun b!5266810 () Bool)

(declare-fun tp!1472241 () Bool)

(assert (=> b!5266810 (= e!3275771 tp!1472241)))

(declare-fun b!5266811 () Bool)

(declare-fun res!2234553 () Bool)

(assert (=> b!5266811 (=> res!2234553 e!3275774)))

(declare-fun isEmpty!32782 (List!60958) Bool)

(assert (=> b!5266811 (= res!2234553 (not (isEmpty!32782 (t!374149 zl!343))))))

(assert (= (and start!556268 res!2234559) b!5266791))

(assert (= (and b!5266791 res!2234567) b!5266798))

(assert (= (and b!5266798 res!2234555) b!5266805))

(assert (= (and b!5266805 (not res!2234564)) b!5266811))

(assert (= (and b!5266811 (not res!2234553)) b!5266797))

(assert (= (and b!5266797 (not res!2234566)) b!5266785))

(assert (= (and b!5266785 (not res!2234550)) b!5266799))

(assert (= (and b!5266799 (not res!2234561)) b!5266784))

(assert (= (and b!5266784 (not res!2234563)) b!5266802))

(assert (= (and b!5266802 (not res!2234558)) b!5266790))

(assert (= (and b!5266790 (not res!2234556)) b!5266789))

(assert (= (and b!5266789 c!911977) b!5266803))

(assert (= (and b!5266789 (not c!911977)) b!5266795))

(assert (= (and b!5266803 (not res!2234562)) b!5266796))

(assert (= (and b!5266789 (not res!2234565)) b!5266806))

(assert (= (and b!5266806 (not res!2234560)) b!5266800))

(assert (= (and b!5266800 (not res!2234551)) b!5266808))

(assert (= (and b!5266808 (not res!2234554)) b!5266787))

(assert (= (and b!5266808 res!2234557) b!5266793))

(assert (= (and b!5266808 (not res!2234552)) b!5266804))

(assert (= (and start!556268 (is-ElementMatch!14886 r!7292)) b!5266794))

(assert (= (and start!556268 (is-Concat!23731 r!7292)) b!5266786))

(assert (= (and start!556268 (is-Star!14886 r!7292)) b!5266810))

(assert (= (and start!556268 (is-Union!14886 r!7292)) b!5266792))

(assert (= (and start!556268 condSetEmpty!33694) setIsEmpty!33694))

(assert (= (and start!556268 (not condSetEmpty!33694)) setNonEmpty!33694))

(assert (= setNonEmpty!33694 b!5266801))

(assert (= b!5266788 b!5266809))

(assert (= (and start!556268 (is-Cons!60834 zl!343)) b!5266788))

(assert (= (and start!556268 (is-Cons!60835 s!2326)) b!5266807))

(declare-fun m!6306760 () Bool)

(assert (=> b!5266790 m!6306760))

(declare-fun m!6306762 () Bool)

(assert (=> b!5266804 m!6306762))

(declare-fun m!6306764 () Bool)

(assert (=> b!5266804 m!6306764))

(declare-fun m!6306766 () Bool)

(assert (=> b!5266804 m!6306766))

(declare-fun m!6306768 () Bool)

(assert (=> b!5266804 m!6306768))

(declare-fun m!6306770 () Bool)

(assert (=> b!5266804 m!6306770))

(declare-fun m!6306772 () Bool)

(assert (=> b!5266799 m!6306772))

(assert (=> b!5266799 m!6306772))

(declare-fun m!6306774 () Bool)

(assert (=> b!5266799 m!6306774))

(declare-fun m!6306776 () Bool)

(assert (=> b!5266802 m!6306776))

(declare-fun m!6306778 () Bool)

(assert (=> b!5266802 m!6306778))

(declare-fun m!6306780 () Bool)

(assert (=> b!5266802 m!6306780))

(declare-fun m!6306782 () Bool)

(assert (=> b!5266802 m!6306782))

(declare-fun m!6306784 () Bool)

(assert (=> b!5266802 m!6306784))

(assert (=> b!5266802 m!6306780))

(assert (=> b!5266802 m!6306776))

(declare-fun m!6306786 () Bool)

(assert (=> b!5266802 m!6306786))

(declare-fun m!6306788 () Bool)

(assert (=> b!5266789 m!6306788))

(declare-fun m!6306790 () Bool)

(assert (=> b!5266789 m!6306790))

(declare-fun m!6306792 () Bool)

(assert (=> b!5266789 m!6306792))

(declare-fun m!6306794 () Bool)

(assert (=> b!5266789 m!6306794))

(declare-fun m!6306796 () Bool)

(assert (=> b!5266789 m!6306796))

(declare-fun m!6306798 () Bool)

(assert (=> b!5266789 m!6306798))

(declare-fun m!6306800 () Bool)

(assert (=> b!5266789 m!6306800))

(declare-fun m!6306802 () Bool)

(assert (=> b!5266805 m!6306802))

(declare-fun m!6306804 () Bool)

(assert (=> b!5266805 m!6306804))

(declare-fun m!6306806 () Bool)

(assert (=> b!5266805 m!6306806))

(declare-fun m!6306808 () Bool)

(assert (=> b!5266811 m!6306808))

(declare-fun m!6306810 () Bool)

(assert (=> b!5266800 m!6306810))

(declare-fun m!6306812 () Bool)

(assert (=> b!5266800 m!6306812))

(declare-fun m!6306814 () Bool)

(assert (=> b!5266793 m!6306814))

(declare-fun m!6306816 () Bool)

(assert (=> b!5266808 m!6306816))

(declare-fun m!6306818 () Bool)

(assert (=> b!5266808 m!6306818))

(declare-fun m!6306820 () Bool)

(assert (=> b!5266808 m!6306820))

(declare-fun m!6306822 () Bool)

(assert (=> b!5266808 m!6306822))

(declare-fun m!6306824 () Bool)

(assert (=> b!5266806 m!6306824))

(declare-fun m!6306826 () Bool)

(assert (=> b!5266791 m!6306826))

(declare-fun m!6306828 () Bool)

(assert (=> b!5266788 m!6306828))

(declare-fun m!6306830 () Bool)

(assert (=> start!556268 m!6306830))

(declare-fun m!6306832 () Bool)

(assert (=> b!5266803 m!6306832))

(assert (=> b!5266803 m!6306816))

(declare-fun m!6306834 () Bool)

(assert (=> b!5266803 m!6306834))

(declare-fun m!6306836 () Bool)

(assert (=> b!5266796 m!6306836))

(assert (=> b!5266787 m!6306814))

(declare-fun m!6306838 () Bool)

(assert (=> b!5266798 m!6306838))

(declare-fun m!6306840 () Bool)

(assert (=> setNonEmpty!33694 m!6306840))

(declare-fun m!6306842 () Bool)

(assert (=> b!5266797 m!6306842))

(push 1)

(assert (not b!5266793))

(assert (not b!5266791))

(assert (not b!5266797))

(assert (not b!5266801))

(assert (not b!5266789))

(assert (not b!5266787))

(assert (not setNonEmpty!33694))

(assert (not b!5266802))

(assert (not b!5266805))

(assert (not b!5266807))

(assert (not b!5266796))

(assert (not b!5266788))

(assert (not b!5266800))

(assert (not b!5266810))

(assert tp_is_empty!39025)

(assert (not b!5266803))

(assert (not b!5266799))

(assert (not b!5266798))

(assert (not b!5266806))

(assert (not b!5266811))

(assert (not b!5266790))

(assert (not start!556268))

(assert (not b!5266804))

(assert (not b!5266809))

(assert (not b!5266786))

(assert (not b!5266808))

(assert (not b!5266792))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1695023 () Bool)

(declare-fun e!3275835 () Bool)

(assert (=> d!1695023 e!3275835))

(declare-fun res!2234636 () Bool)

(assert (=> d!1695023 (=> (not res!2234636) (not e!3275835))))

(declare-fun lt!2156115 () List!60958)

(declare-fun noDuplicate!1242 (List!60958) Bool)

(assert (=> d!1695023 (= res!2234636 (noDuplicate!1242 lt!2156115))))

(declare-fun choose!39294 ((Set Context!8540)) List!60958)

(assert (=> d!1695023 (= lt!2156115 (choose!39294 z!1189))))

(assert (=> d!1695023 (= (toList!8670 z!1189) lt!2156115)))

(declare-fun b!5266922 () Bool)

(declare-fun content!10817 (List!60958) (Set Context!8540))

(assert (=> b!5266922 (= e!3275835 (= (content!10817 lt!2156115) z!1189))))

(assert (= (and d!1695023 res!2234636) b!5266922))

(declare-fun m!6306928 () Bool)

(assert (=> d!1695023 m!6306928))

(declare-fun m!6306930 () Bool)

(assert (=> d!1695023 m!6306930))

(declare-fun m!6306932 () Bool)

(assert (=> b!5266922 m!6306932))

(assert (=> b!5266791 d!1695023))

(declare-fun d!1695025 () Bool)

(assert (=> d!1695025 (= (isEmpty!32782 (t!374149 zl!343)) (is-Nil!60834 (t!374149 zl!343)))))

(assert (=> b!5266811 d!1695025))

(declare-fun d!1695027 () Bool)

(declare-fun lambda!265638 () Int)

(declare-fun forall!14296 (List!60957 Int) Bool)

(assert (=> d!1695027 (= (inv!80463 setElem!33694) (forall!14296 (exprs!4770 setElem!33694) lambda!265638))))

(declare-fun bs!1220619 () Bool)

(assert (= bs!1220619 d!1695027))

(declare-fun m!6306934 () Bool)

(assert (=> bs!1220619 m!6306934))

(assert (=> setNonEmpty!33694 d!1695027))

(declare-fun d!1695029 () Bool)

(declare-fun c!911990 () Bool)

(declare-fun isEmpty!32785 (List!60959) Bool)

(assert (=> d!1695029 (= c!911990 (isEmpty!32785 (t!374150 s!2326)))))

(declare-fun e!3275838 () Bool)

(assert (=> d!1695029 (= (matchZipper!1130 lt!2156046 (t!374150 s!2326)) e!3275838)))

(declare-fun b!5266927 () Bool)

(declare-fun nullableZipper!1287 ((Set Context!8540)) Bool)

(assert (=> b!5266927 (= e!3275838 (nullableZipper!1287 lt!2156046))))

(declare-fun b!5266928 () Bool)

(declare-fun derivationStepZipper!1131 ((Set Context!8540) C!30042) (Set Context!8540))

(declare-fun head!11292 (List!60959) C!30042)

(declare-fun tail!10389 (List!60959) List!60959)

(assert (=> b!5266928 (= e!3275838 (matchZipper!1130 (derivationStepZipper!1131 lt!2156046 (head!11292 (t!374150 s!2326))) (tail!10389 (t!374150 s!2326))))))

(assert (= (and d!1695029 c!911990) b!5266927))

(assert (= (and d!1695029 (not c!911990)) b!5266928))

(declare-fun m!6306936 () Bool)

(assert (=> d!1695029 m!6306936))

(declare-fun m!6306938 () Bool)

(assert (=> b!5266927 m!6306938))

(declare-fun m!6306940 () Bool)

(assert (=> b!5266928 m!6306940))

(assert (=> b!5266928 m!6306940))

(declare-fun m!6306942 () Bool)

(assert (=> b!5266928 m!6306942))

(declare-fun m!6306944 () Bool)

(assert (=> b!5266928 m!6306944))

(assert (=> b!5266928 m!6306942))

(assert (=> b!5266928 m!6306944))

(declare-fun m!6306946 () Bool)

(assert (=> b!5266928 m!6306946))

(assert (=> b!5266793 d!1695029))

(declare-fun b!5266947 () Bool)

(declare-fun e!3275859 () Bool)

(declare-fun e!3275856 () Bool)

(assert (=> b!5266947 (= e!3275859 e!3275856)))

(declare-fun res!2234651 () Bool)

(assert (=> b!5266947 (= res!2234651 (not (nullable!5055 (reg!15215 r!7292))))))

(assert (=> b!5266947 (=> (not res!2234651) (not e!3275856))))

(declare-fun d!1695031 () Bool)

(declare-fun res!2234648 () Bool)

(declare-fun e!3275853 () Bool)

(assert (=> d!1695031 (=> res!2234648 e!3275853)))

(assert (=> d!1695031 (= res!2234648 (is-ElementMatch!14886 r!7292))))

(assert (=> d!1695031 (= (validRegex!6622 r!7292) e!3275853)))

(declare-fun b!5266948 () Bool)

(assert (=> b!5266948 (= e!3275853 e!3275859)))

(declare-fun c!911996 () Bool)

(assert (=> b!5266948 (= c!911996 (is-Star!14886 r!7292))))

(declare-fun b!5266949 () Bool)

(declare-fun e!3275857 () Bool)

(declare-fun call!373919 () Bool)

(assert (=> b!5266949 (= e!3275857 call!373919)))

(declare-fun b!5266950 () Bool)

(declare-fun e!3275858 () Bool)

(assert (=> b!5266950 (= e!3275859 e!3275858)))

(declare-fun c!911995 () Bool)

(assert (=> b!5266950 (= c!911995 (is-Union!14886 r!7292))))

(declare-fun call!373918 () Bool)

(declare-fun bm!373912 () Bool)

(assert (=> bm!373912 (= call!373918 (validRegex!6622 (ite c!911996 (reg!15215 r!7292) (ite c!911995 (regTwo!30285 r!7292) (regTwo!30284 r!7292)))))))

(declare-fun b!5266951 () Bool)

(declare-fun e!3275854 () Bool)

(assert (=> b!5266951 (= e!3275854 call!373919)))

(declare-fun bm!373913 () Bool)

(assert (=> bm!373913 (= call!373919 call!373918)))

(declare-fun b!5266952 () Bool)

(assert (=> b!5266952 (= e!3275856 call!373918)))

(declare-fun bm!373914 () Bool)

(declare-fun call!373917 () Bool)

(assert (=> bm!373914 (= call!373917 (validRegex!6622 (ite c!911995 (regOne!30285 r!7292) (regOne!30284 r!7292))))))

(declare-fun b!5266953 () Bool)

(declare-fun e!3275855 () Bool)

(assert (=> b!5266953 (= e!3275855 e!3275857)))

(declare-fun res!2234650 () Bool)

(assert (=> b!5266953 (=> (not res!2234650) (not e!3275857))))

(assert (=> b!5266953 (= res!2234650 call!373917)))

(declare-fun b!5266954 () Bool)

(declare-fun res!2234647 () Bool)

(assert (=> b!5266954 (=> res!2234647 e!3275855)))

(assert (=> b!5266954 (= res!2234647 (not (is-Concat!23731 r!7292)))))

(assert (=> b!5266954 (= e!3275858 e!3275855)))

(declare-fun b!5266955 () Bool)

(declare-fun res!2234649 () Bool)

(assert (=> b!5266955 (=> (not res!2234649) (not e!3275854))))

(assert (=> b!5266955 (= res!2234649 call!373917)))

(assert (=> b!5266955 (= e!3275858 e!3275854)))

(assert (= (and d!1695031 (not res!2234648)) b!5266948))

(assert (= (and b!5266948 c!911996) b!5266947))

(assert (= (and b!5266948 (not c!911996)) b!5266950))

(assert (= (and b!5266947 res!2234651) b!5266952))

(assert (= (and b!5266950 c!911995) b!5266955))

(assert (= (and b!5266950 (not c!911995)) b!5266954))

(assert (= (and b!5266955 res!2234649) b!5266951))

(assert (= (and b!5266954 (not res!2234647)) b!5266953))

(assert (= (and b!5266953 res!2234650) b!5266949))

(assert (= (or b!5266951 b!5266949) bm!373913))

(assert (= (or b!5266955 b!5266953) bm!373914))

(assert (= (or b!5266952 bm!373913) bm!373912))

(declare-fun m!6306948 () Bool)

(assert (=> b!5266947 m!6306948))

(declare-fun m!6306950 () Bool)

(assert (=> bm!373912 m!6306950))

(declare-fun m!6306952 () Bool)

(assert (=> bm!373914 m!6306952))

(assert (=> start!556268 d!1695031))

(declare-fun b!5266974 () Bool)

(declare-fun lt!2156123 () Unit!153062)

(declare-fun lt!2156124 () Unit!153062)

(assert (=> b!5266974 (= lt!2156123 lt!2156124)))

(declare-fun ++!13267 (List!60959 List!60959) List!60959)

(assert (=> b!5266974 (= (++!13267 (++!13267 Nil!60835 (Cons!60835 (h!67283 s!2326) Nil!60835)) (t!374150 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1682 (List!60959 C!30042 List!60959 List!60959) Unit!153062)

(assert (=> b!5266974 (= lt!2156124 (lemmaMoveElementToOtherListKeepsConcatEq!1682 Nil!60835 (h!67283 s!2326) (t!374150 s!2326) s!2326))))

(declare-fun e!3275872 () Option!14997)

(assert (=> b!5266974 (= e!3275872 (findConcatSeparation!1411 (regOne!30284 r!7292) (regTwo!30284 r!7292) (++!13267 Nil!60835 (Cons!60835 (h!67283 s!2326) Nil!60835)) (t!374150 s!2326) s!2326))))

(declare-fun b!5266975 () Bool)

(declare-fun e!3275871 () Bool)

(declare-fun lt!2156122 () Option!14997)

(declare-fun get!20916 (Option!14997) tuple2!64170)

(assert (=> b!5266975 (= e!3275871 (= (++!13267 (_1!35388 (get!20916 lt!2156122)) (_2!35388 (get!20916 lt!2156122))) s!2326))))

(declare-fun b!5266976 () Bool)

(declare-fun e!3275874 () Option!14997)

(assert (=> b!5266976 (= e!3275874 e!3275872)))

(declare-fun c!912002 () Bool)

(assert (=> b!5266976 (= c!912002 (is-Nil!60835 s!2326))))

(declare-fun d!1695033 () Bool)

(declare-fun e!3275870 () Bool)

(assert (=> d!1695033 e!3275870))

(declare-fun res!2234662 () Bool)

(assert (=> d!1695033 (=> res!2234662 e!3275870)))

(assert (=> d!1695033 (= res!2234662 e!3275871)))

(declare-fun res!2234666 () Bool)

(assert (=> d!1695033 (=> (not res!2234666) (not e!3275871))))

(assert (=> d!1695033 (= res!2234666 (isDefined!11700 lt!2156122))))

(assert (=> d!1695033 (= lt!2156122 e!3275874)))

(declare-fun c!912001 () Bool)

(declare-fun e!3275873 () Bool)

(assert (=> d!1695033 (= c!912001 e!3275873)))

(declare-fun res!2234663 () Bool)

(assert (=> d!1695033 (=> (not res!2234663) (not e!3275873))))

(assert (=> d!1695033 (= res!2234663 (matchR!7071 (regOne!30284 r!7292) Nil!60835))))

(assert (=> d!1695033 (validRegex!6622 (regOne!30284 r!7292))))

(assert (=> d!1695033 (= (findConcatSeparation!1411 (regOne!30284 r!7292) (regTwo!30284 r!7292) Nil!60835 s!2326 s!2326) lt!2156122)))

(declare-fun b!5266977 () Bool)

(assert (=> b!5266977 (= e!3275872 None!14996)))

(declare-fun b!5266978 () Bool)

(declare-fun res!2234664 () Bool)

(assert (=> b!5266978 (=> (not res!2234664) (not e!3275871))))

(assert (=> b!5266978 (= res!2234664 (matchR!7071 (regOne!30284 r!7292) (_1!35388 (get!20916 lt!2156122))))))

(declare-fun b!5266979 () Bool)

(assert (=> b!5266979 (= e!3275873 (matchR!7071 (regTwo!30284 r!7292) s!2326))))

(declare-fun b!5266980 () Bool)

(declare-fun res!2234665 () Bool)

(assert (=> b!5266980 (=> (not res!2234665) (not e!3275871))))

(assert (=> b!5266980 (= res!2234665 (matchR!7071 (regTwo!30284 r!7292) (_2!35388 (get!20916 lt!2156122))))))

(declare-fun b!5266981 () Bool)

(assert (=> b!5266981 (= e!3275874 (Some!14996 (tuple2!64171 Nil!60835 s!2326)))))

(declare-fun b!5266982 () Bool)

(assert (=> b!5266982 (= e!3275870 (not (isDefined!11700 lt!2156122)))))

(assert (= (and d!1695033 res!2234663) b!5266979))

(assert (= (and d!1695033 c!912001) b!5266981))

(assert (= (and d!1695033 (not c!912001)) b!5266976))

(assert (= (and b!5266976 c!912002) b!5266977))

(assert (= (and b!5266976 (not c!912002)) b!5266974))

(assert (= (and d!1695033 res!2234666) b!5266978))

(assert (= (and b!5266978 res!2234664) b!5266980))

(assert (= (and b!5266980 res!2234665) b!5266975))

(assert (= (and d!1695033 (not res!2234662)) b!5266982))

(declare-fun m!6306954 () Bool)

(assert (=> b!5266978 m!6306954))

(declare-fun m!6306956 () Bool)

(assert (=> b!5266978 m!6306956))

(declare-fun m!6306958 () Bool)

(assert (=> b!5266979 m!6306958))

(declare-fun m!6306960 () Bool)

(assert (=> b!5266982 m!6306960))

(declare-fun m!6306962 () Bool)

(assert (=> b!5266974 m!6306962))

(assert (=> b!5266974 m!6306962))

(declare-fun m!6306964 () Bool)

(assert (=> b!5266974 m!6306964))

(declare-fun m!6306966 () Bool)

(assert (=> b!5266974 m!6306966))

(assert (=> b!5266974 m!6306962))

(declare-fun m!6306968 () Bool)

(assert (=> b!5266974 m!6306968))

(assert (=> b!5266975 m!6306954))

(declare-fun m!6306970 () Bool)

(assert (=> b!5266975 m!6306970))

(assert (=> d!1695033 m!6306960))

(declare-fun m!6306972 () Bool)

(assert (=> d!1695033 m!6306972))

(declare-fun m!6306974 () Bool)

(assert (=> d!1695033 m!6306974))

(assert (=> b!5266980 m!6306954))

(declare-fun m!6306976 () Bool)

(assert (=> b!5266980 m!6306976))

(assert (=> b!5266802 d!1695033))

(declare-fun d!1695035 () Bool)

(declare-fun choose!39295 (Int) Bool)

(assert (=> d!1695035 (= (Exists!2067 lambda!265620) (choose!39295 lambda!265620))))

(declare-fun bs!1220620 () Bool)

(assert (= bs!1220620 d!1695035))

(declare-fun m!6306978 () Bool)

(assert (=> bs!1220620 m!6306978))

(assert (=> b!5266802 d!1695035))

(declare-fun d!1695037 () Bool)

(assert (=> d!1695037 (= (Exists!2067 lambda!265621) (choose!39295 lambda!265621))))

(declare-fun bs!1220621 () Bool)

(assert (= bs!1220621 d!1695037))

(declare-fun m!6306980 () Bool)

(assert (=> bs!1220621 m!6306980))

(assert (=> b!5266802 d!1695037))

(declare-fun bs!1220622 () Bool)

(declare-fun d!1695039 () Bool)

(assert (= bs!1220622 (and d!1695039 b!5266802)))

(declare-fun lambda!265641 () Int)

(assert (=> bs!1220622 (= lambda!265641 lambda!265620)))

(assert (=> bs!1220622 (not (= lambda!265641 lambda!265621))))

(assert (=> d!1695039 true))

(assert (=> d!1695039 true))

(assert (=> d!1695039 true))

(assert (=> d!1695039 (= (isDefined!11700 (findConcatSeparation!1411 (regOne!30284 r!7292) (regTwo!30284 r!7292) Nil!60835 s!2326 s!2326)) (Exists!2067 lambda!265641))))

(declare-fun lt!2156127 () Unit!153062)

(declare-fun choose!39296 (Regex!14886 Regex!14886 List!60959) Unit!153062)

(assert (=> d!1695039 (= lt!2156127 (choose!39296 (regOne!30284 r!7292) (regTwo!30284 r!7292) s!2326))))

(assert (=> d!1695039 (validRegex!6622 (regOne!30284 r!7292))))

(assert (=> d!1695039 (= (lemmaFindConcatSeparationEquivalentToExists!1175 (regOne!30284 r!7292) (regTwo!30284 r!7292) s!2326) lt!2156127)))

(declare-fun bs!1220623 () Bool)

(assert (= bs!1220623 d!1695039))

(declare-fun m!6306982 () Bool)

(assert (=> bs!1220623 m!6306982))

(assert (=> bs!1220623 m!6306776))

(declare-fun m!6306984 () Bool)

(assert (=> bs!1220623 m!6306984))

(assert (=> bs!1220623 m!6306974))

(assert (=> bs!1220623 m!6306776))

(assert (=> bs!1220623 m!6306778))

(assert (=> b!5266802 d!1695039))

(declare-fun bs!1220624 () Bool)

(declare-fun d!1695041 () Bool)

(assert (= bs!1220624 (and d!1695041 b!5266802)))

(declare-fun lambda!265646 () Int)

(assert (=> bs!1220624 (= lambda!265646 lambda!265620)))

(assert (=> bs!1220624 (not (= lambda!265646 lambda!265621))))

(declare-fun bs!1220625 () Bool)

(assert (= bs!1220625 (and d!1695041 d!1695039)))

(assert (=> bs!1220625 (= lambda!265646 lambda!265641)))

(assert (=> d!1695041 true))

(assert (=> d!1695041 true))

(assert (=> d!1695041 true))

(declare-fun lambda!265647 () Int)

(assert (=> bs!1220624 (not (= lambda!265647 lambda!265620))))

(assert (=> bs!1220624 (= lambda!265647 lambda!265621)))

(assert (=> bs!1220625 (not (= lambda!265647 lambda!265641))))

(declare-fun bs!1220626 () Bool)

(assert (= bs!1220626 d!1695041))

(assert (=> bs!1220626 (not (= lambda!265647 lambda!265646))))

(assert (=> d!1695041 true))

(assert (=> d!1695041 true))

(assert (=> d!1695041 true))

(assert (=> d!1695041 (= (Exists!2067 lambda!265646) (Exists!2067 lambda!265647))))

(declare-fun lt!2156130 () Unit!153062)

(declare-fun choose!39297 (Regex!14886 Regex!14886 List!60959) Unit!153062)

(assert (=> d!1695041 (= lt!2156130 (choose!39297 (regOne!30284 r!7292) (regTwo!30284 r!7292) s!2326))))

(assert (=> d!1695041 (validRegex!6622 (regOne!30284 r!7292))))

(assert (=> d!1695041 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!721 (regOne!30284 r!7292) (regTwo!30284 r!7292) s!2326) lt!2156130)))

(declare-fun m!6306986 () Bool)

(assert (=> bs!1220626 m!6306986))

(declare-fun m!6306988 () Bool)

(assert (=> bs!1220626 m!6306988))

(declare-fun m!6306990 () Bool)

(assert (=> bs!1220626 m!6306990))

(assert (=> bs!1220626 m!6306974))

(assert (=> b!5266802 d!1695041))

(declare-fun d!1695043 () Bool)

(declare-fun isEmpty!32786 (Option!14997) Bool)

(assert (=> d!1695043 (= (isDefined!11700 (findConcatSeparation!1411 (regOne!30284 r!7292) (regTwo!30284 r!7292) Nil!60835 s!2326 s!2326)) (not (isEmpty!32786 (findConcatSeparation!1411 (regOne!30284 r!7292) (regTwo!30284 r!7292) Nil!60835 s!2326 s!2326))))))

(declare-fun bs!1220627 () Bool)

(assert (= bs!1220627 d!1695043))

(assert (=> bs!1220627 m!6306776))

(declare-fun m!6306992 () Bool)

(assert (=> bs!1220627 m!6306992))

(assert (=> b!5266802 d!1695043))

(declare-fun d!1695045 () Bool)

(declare-fun e!3275883 () Bool)

(assert (=> d!1695045 (= (matchZipper!1130 (set.union lt!2156039 lt!2156044) (t!374150 s!2326)) e!3275883)))

(declare-fun res!2234681 () Bool)

(assert (=> d!1695045 (=> res!2234681 e!3275883)))

(assert (=> d!1695045 (= res!2234681 (matchZipper!1130 lt!2156039 (t!374150 s!2326)))))

(declare-fun lt!2156133 () Unit!153062)

(declare-fun choose!39298 ((Set Context!8540) (Set Context!8540) List!60959) Unit!153062)

(assert (=> d!1695045 (= lt!2156133 (choose!39298 lt!2156039 lt!2156044 (t!374150 s!2326)))))

(assert (=> d!1695045 (= (lemmaZipperConcatMatchesSameAsBothZippers!123 lt!2156039 lt!2156044 (t!374150 s!2326)) lt!2156133)))

(declare-fun b!5266997 () Bool)

(assert (=> b!5266997 (= e!3275883 (matchZipper!1130 lt!2156044 (t!374150 s!2326)))))

(assert (= (and d!1695045 (not res!2234681)) b!5266997))

(assert (=> d!1695045 m!6306834))

(assert (=> d!1695045 m!6306816))

(declare-fun m!6306994 () Bool)

(assert (=> d!1695045 m!6306994))

(assert (=> b!5266997 m!6306836))

(assert (=> b!5266803 d!1695045))

(declare-fun d!1695047 () Bool)

(declare-fun c!912003 () Bool)

(assert (=> d!1695047 (= c!912003 (isEmpty!32785 (t!374150 s!2326)))))

(declare-fun e!3275884 () Bool)

(assert (=> d!1695047 (= (matchZipper!1130 lt!2156039 (t!374150 s!2326)) e!3275884)))

(declare-fun b!5266998 () Bool)

(assert (=> b!5266998 (= e!3275884 (nullableZipper!1287 lt!2156039))))

(declare-fun b!5266999 () Bool)

(assert (=> b!5266999 (= e!3275884 (matchZipper!1130 (derivationStepZipper!1131 lt!2156039 (head!11292 (t!374150 s!2326))) (tail!10389 (t!374150 s!2326))))))

(assert (= (and d!1695047 c!912003) b!5266998))

(assert (= (and d!1695047 (not c!912003)) b!5266999))

(assert (=> d!1695047 m!6306936))

(declare-fun m!6306996 () Bool)

(assert (=> b!5266998 m!6306996))

(assert (=> b!5266999 m!6306940))

(assert (=> b!5266999 m!6306940))

(declare-fun m!6306998 () Bool)

(assert (=> b!5266999 m!6306998))

(assert (=> b!5266999 m!6306944))

(assert (=> b!5266999 m!6306998))

(assert (=> b!5266999 m!6306944))

(declare-fun m!6307000 () Bool)

(assert (=> b!5266999 m!6307000))

(assert (=> b!5266803 d!1695047))

(declare-fun d!1695049 () Bool)

(declare-fun c!912004 () Bool)

(assert (=> d!1695049 (= c!912004 (isEmpty!32785 (t!374150 s!2326)))))

(declare-fun e!3275885 () Bool)

(assert (=> d!1695049 (= (matchZipper!1130 (set.union lt!2156039 lt!2156044) (t!374150 s!2326)) e!3275885)))

(declare-fun b!5267000 () Bool)

(assert (=> b!5267000 (= e!3275885 (nullableZipper!1287 (set.union lt!2156039 lt!2156044)))))

(declare-fun b!5267001 () Bool)

(assert (=> b!5267001 (= e!3275885 (matchZipper!1130 (derivationStepZipper!1131 (set.union lt!2156039 lt!2156044) (head!11292 (t!374150 s!2326))) (tail!10389 (t!374150 s!2326))))))

(assert (= (and d!1695049 c!912004) b!5267000))

(assert (= (and d!1695049 (not c!912004)) b!5267001))

(assert (=> d!1695049 m!6306936))

(declare-fun m!6307002 () Bool)

(assert (=> b!5267000 m!6307002))

(assert (=> b!5267001 m!6306940))

(assert (=> b!5267001 m!6306940))

(declare-fun m!6307004 () Bool)

(assert (=> b!5267001 m!6307004))

(assert (=> b!5267001 m!6306944))

(assert (=> b!5267001 m!6307004))

(assert (=> b!5267001 m!6306944))

(declare-fun m!6307006 () Bool)

(assert (=> b!5267001 m!6307006))

(assert (=> b!5266803 d!1695049))

(declare-fun b!5267002 () Bool)

(declare-fun e!3275892 () Bool)

(declare-fun e!3275889 () Bool)

(assert (=> b!5267002 (= e!3275892 e!3275889)))

(declare-fun res!2234686 () Bool)

(assert (=> b!5267002 (= res!2234686 (not (nullable!5055 (reg!15215 (regOne!30284 (regOne!30284 r!7292))))))))

(assert (=> b!5267002 (=> (not res!2234686) (not e!3275889))))

(declare-fun d!1695051 () Bool)

(declare-fun res!2234683 () Bool)

(declare-fun e!3275886 () Bool)

(assert (=> d!1695051 (=> res!2234683 e!3275886)))

(assert (=> d!1695051 (= res!2234683 (is-ElementMatch!14886 (regOne!30284 (regOne!30284 r!7292))))))

(assert (=> d!1695051 (= (validRegex!6622 (regOne!30284 (regOne!30284 r!7292))) e!3275886)))

(declare-fun b!5267003 () Bool)

(assert (=> b!5267003 (= e!3275886 e!3275892)))

(declare-fun c!912006 () Bool)

(assert (=> b!5267003 (= c!912006 (is-Star!14886 (regOne!30284 (regOne!30284 r!7292))))))

(declare-fun b!5267004 () Bool)

(declare-fun e!3275890 () Bool)

(declare-fun call!373922 () Bool)

(assert (=> b!5267004 (= e!3275890 call!373922)))

(declare-fun b!5267005 () Bool)

(declare-fun e!3275891 () Bool)

(assert (=> b!5267005 (= e!3275892 e!3275891)))

(declare-fun c!912005 () Bool)

(assert (=> b!5267005 (= c!912005 (is-Union!14886 (regOne!30284 (regOne!30284 r!7292))))))

(declare-fun call!373921 () Bool)

(declare-fun bm!373915 () Bool)

(assert (=> bm!373915 (= call!373921 (validRegex!6622 (ite c!912006 (reg!15215 (regOne!30284 (regOne!30284 r!7292))) (ite c!912005 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regTwo!30284 (regOne!30284 (regOne!30284 r!7292)))))))))

(declare-fun b!5267006 () Bool)

(declare-fun e!3275887 () Bool)

(assert (=> b!5267006 (= e!3275887 call!373922)))

(declare-fun bm!373916 () Bool)

(assert (=> bm!373916 (= call!373922 call!373921)))

(declare-fun b!5267007 () Bool)

(assert (=> b!5267007 (= e!3275889 call!373921)))

(declare-fun bm!373917 () Bool)

(declare-fun call!373920 () Bool)

(assert (=> bm!373917 (= call!373920 (validRegex!6622 (ite c!912005 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))))))

(declare-fun b!5267008 () Bool)

(declare-fun e!3275888 () Bool)

(assert (=> b!5267008 (= e!3275888 e!3275890)))

(declare-fun res!2234685 () Bool)

(assert (=> b!5267008 (=> (not res!2234685) (not e!3275890))))

(assert (=> b!5267008 (= res!2234685 call!373920)))

(declare-fun b!5267009 () Bool)

(declare-fun res!2234682 () Bool)

(assert (=> b!5267009 (=> res!2234682 e!3275888)))

(assert (=> b!5267009 (= res!2234682 (not (is-Concat!23731 (regOne!30284 (regOne!30284 r!7292)))))))

(assert (=> b!5267009 (= e!3275891 e!3275888)))

(declare-fun b!5267010 () Bool)

(declare-fun res!2234684 () Bool)

(assert (=> b!5267010 (=> (not res!2234684) (not e!3275887))))

(assert (=> b!5267010 (= res!2234684 call!373920)))

(assert (=> b!5267010 (= e!3275891 e!3275887)))

(assert (= (and d!1695051 (not res!2234683)) b!5267003))

(assert (= (and b!5267003 c!912006) b!5267002))

(assert (= (and b!5267003 (not c!912006)) b!5267005))

(assert (= (and b!5267002 res!2234686) b!5267007))

(assert (= (and b!5267005 c!912005) b!5267010))

(assert (= (and b!5267005 (not c!912005)) b!5267009))

(assert (= (and b!5267010 res!2234684) b!5267006))

(assert (= (and b!5267009 (not res!2234682)) b!5267008))

(assert (= (and b!5267008 res!2234685) b!5267004))

(assert (= (or b!5267006 b!5267004) bm!373916))

(assert (= (or b!5267010 b!5267008) bm!373917))

(assert (= (or b!5267007 bm!373916) bm!373915))

(declare-fun m!6307008 () Bool)

(assert (=> b!5267002 m!6307008))

(declare-fun m!6307010 () Bool)

(assert (=> bm!373915 m!6307010))

(declare-fun m!6307012 () Bool)

(assert (=> bm!373917 m!6307012))

(assert (=> b!5266804 d!1695051))

(declare-fun d!1695053 () Bool)

(declare-fun choose!39299 ((Set Context!8540) Int) (Set Context!8540))

(assert (=> d!1695053 (= (flatMap!613 lt!2156035 lambda!265622) (choose!39299 lt!2156035 lambda!265622))))

(declare-fun bs!1220628 () Bool)

(assert (= bs!1220628 d!1695053))

(declare-fun m!6307014 () Bool)

(assert (=> bs!1220628 m!6307014))

(assert (=> b!5266804 d!1695053))

(declare-fun bm!373920 () Bool)

(declare-fun call!373925 () (Set Context!8540))

(assert (=> bm!373920 (= call!373925 (derivationStepZipperDown!334 (h!67281 (exprs!4770 lt!2156034)) (Context!8541 (t!374148 (exprs!4770 lt!2156034))) (h!67283 s!2326)))))

(declare-fun b!5267021 () Bool)

(declare-fun e!3275901 () (Set Context!8540))

(assert (=> b!5267021 (= e!3275901 (set.union call!373925 (derivationStepZipperUp!258 (Context!8541 (t!374148 (exprs!4770 lt!2156034))) (h!67283 s!2326))))))

(declare-fun b!5267022 () Bool)

(declare-fun e!3275900 () (Set Context!8540))

(assert (=> b!5267022 (= e!3275901 e!3275900)))

(declare-fun c!912011 () Bool)

(assert (=> b!5267022 (= c!912011 (is-Cons!60833 (exprs!4770 lt!2156034)))))

(declare-fun b!5267023 () Bool)

(declare-fun e!3275899 () Bool)

(assert (=> b!5267023 (= e!3275899 (nullable!5055 (h!67281 (exprs!4770 lt!2156034))))))

(declare-fun d!1695055 () Bool)

(declare-fun c!912012 () Bool)

(assert (=> d!1695055 (= c!912012 e!3275899)))

(declare-fun res!2234689 () Bool)

(assert (=> d!1695055 (=> (not res!2234689) (not e!3275899))))

(assert (=> d!1695055 (= res!2234689 (is-Cons!60833 (exprs!4770 lt!2156034)))))

(assert (=> d!1695055 (= (derivationStepZipperUp!258 lt!2156034 (h!67283 s!2326)) e!3275901)))

(declare-fun b!5267024 () Bool)

(assert (=> b!5267024 (= e!3275900 (as set.empty (Set Context!8540)))))

(declare-fun b!5267025 () Bool)

(assert (=> b!5267025 (= e!3275900 call!373925)))

(assert (= (and d!1695055 res!2234689) b!5267023))

(assert (= (and d!1695055 c!912012) b!5267021))

(assert (= (and d!1695055 (not c!912012)) b!5267022))

(assert (= (and b!5267022 c!912011) b!5267025))

(assert (= (and b!5267022 (not c!912011)) b!5267024))

(assert (= (or b!5267021 b!5267025) bm!373920))

(declare-fun m!6307016 () Bool)

(assert (=> bm!373920 m!6307016))

(declare-fun m!6307018 () Bool)

(assert (=> b!5267021 m!6307018))

(declare-fun m!6307020 () Bool)

(assert (=> b!5267023 m!6307020))

(assert (=> b!5266804 d!1695055))

(declare-fun d!1695057 () Bool)

(declare-fun dynLambda!24038 (Int Context!8540) (Set Context!8540))

(assert (=> d!1695057 (= (flatMap!613 lt!2156035 lambda!265622) (dynLambda!24038 lambda!265622 lt!2156034))))

(declare-fun lt!2156136 () Unit!153062)

(declare-fun choose!39300 ((Set Context!8540) Context!8540 Int) Unit!153062)

(assert (=> d!1695057 (= lt!2156136 (choose!39300 lt!2156035 lt!2156034 lambda!265622))))

(assert (=> d!1695057 (= lt!2156035 (set.insert lt!2156034 (as set.empty (Set Context!8540))))))

(assert (=> d!1695057 (= (lemmaFlatMapOnSingletonSet!145 lt!2156035 lt!2156034 lambda!265622) lt!2156136)))

(declare-fun b_lambda!203173 () Bool)

(assert (=> (not b_lambda!203173) (not d!1695057)))

(declare-fun bs!1220629 () Bool)

(assert (= bs!1220629 d!1695057))

(assert (=> bs!1220629 m!6306766))

(declare-fun m!6307022 () Bool)

(assert (=> bs!1220629 m!6307022))

(declare-fun m!6307024 () Bool)

(assert (=> bs!1220629 m!6307024))

(assert (=> bs!1220629 m!6306764))

(assert (=> b!5266804 d!1695057))

(declare-fun bs!1220630 () Bool)

(declare-fun b!5267064 () Bool)

(assert (= bs!1220630 (and b!5267064 d!1695041)))

(declare-fun lambda!265652 () Int)

(assert (=> bs!1220630 (not (= lambda!265652 lambda!265646))))

(declare-fun bs!1220631 () Bool)

(assert (= bs!1220631 (and b!5267064 b!5266802)))

(assert (=> bs!1220631 (not (= lambda!265652 lambda!265621))))

(assert (=> bs!1220630 (not (= lambda!265652 lambda!265647))))

(assert (=> bs!1220631 (not (= lambda!265652 lambda!265620))))

(declare-fun bs!1220632 () Bool)

(assert (= bs!1220632 (and b!5267064 d!1695039)))

(assert (=> bs!1220632 (not (= lambda!265652 lambda!265641))))

(assert (=> b!5267064 true))

(assert (=> b!5267064 true))

(declare-fun bs!1220633 () Bool)

(declare-fun b!5267058 () Bool)

(assert (= bs!1220633 (and b!5267058 d!1695041)))

(declare-fun lambda!265653 () Int)

(assert (=> bs!1220633 (not (= lambda!265653 lambda!265646))))

(declare-fun bs!1220634 () Bool)

(assert (= bs!1220634 (and b!5267058 b!5267064)))

(assert (=> bs!1220634 (not (= lambda!265653 lambda!265652))))

(declare-fun bs!1220635 () Bool)

(assert (= bs!1220635 (and b!5267058 b!5266802)))

(assert (=> bs!1220635 (= lambda!265653 lambda!265621)))

(assert (=> bs!1220633 (= lambda!265653 lambda!265647)))

(assert (=> bs!1220635 (not (= lambda!265653 lambda!265620))))

(declare-fun bs!1220636 () Bool)

(assert (= bs!1220636 (and b!5267058 d!1695039)))

(assert (=> bs!1220636 (not (= lambda!265653 lambda!265641))))

(assert (=> b!5267058 true))

(assert (=> b!5267058 true))

(declare-fun e!3275926 () Bool)

(declare-fun call!373931 () Bool)

(assert (=> b!5267058 (= e!3275926 call!373931)))

(declare-fun d!1695059 () Bool)

(declare-fun c!912023 () Bool)

(assert (=> d!1695059 (= c!912023 (is-EmptyExpr!14886 r!7292))))

(declare-fun e!3275925 () Bool)

(assert (=> d!1695059 (= (matchRSpec!1989 r!7292 s!2326) e!3275925)))

(declare-fun b!5267059 () Bool)

(declare-fun e!3275923 () Bool)

(assert (=> b!5267059 (= e!3275923 (= s!2326 (Cons!60835 (c!911978 r!7292) Nil!60835)))))

(declare-fun b!5267060 () Bool)

(declare-fun e!3275922 () Bool)

(assert (=> b!5267060 (= e!3275922 e!3275926)))

(declare-fun c!912021 () Bool)

(assert (=> b!5267060 (= c!912021 (is-Star!14886 r!7292))))

(declare-fun b!5267061 () Bool)

(declare-fun e!3275921 () Bool)

(assert (=> b!5267061 (= e!3275925 e!3275921)))

(declare-fun res!2234708 () Bool)

(assert (=> b!5267061 (= res!2234708 (not (is-EmptyLang!14886 r!7292)))))

(assert (=> b!5267061 (=> (not res!2234708) (not e!3275921))))

(declare-fun bm!373925 () Bool)

(declare-fun call!373930 () Bool)

(assert (=> bm!373925 (= call!373930 (isEmpty!32785 s!2326))))

(declare-fun b!5267062 () Bool)

(declare-fun e!3275924 () Bool)

(assert (=> b!5267062 (= e!3275924 (matchRSpec!1989 (regTwo!30285 r!7292) s!2326))))

(declare-fun b!5267063 () Bool)

(assert (=> b!5267063 (= e!3275925 call!373930)))

(declare-fun e!3275920 () Bool)

(assert (=> b!5267064 (= e!3275920 call!373931)))

(declare-fun b!5267065 () Bool)

(declare-fun res!2234706 () Bool)

(assert (=> b!5267065 (=> res!2234706 e!3275920)))

(assert (=> b!5267065 (= res!2234706 call!373930)))

(assert (=> b!5267065 (= e!3275926 e!3275920)))

(declare-fun b!5267066 () Bool)

(declare-fun c!912022 () Bool)

(assert (=> b!5267066 (= c!912022 (is-Union!14886 r!7292))))

(assert (=> b!5267066 (= e!3275923 e!3275922)))

(declare-fun b!5267067 () Bool)

(assert (=> b!5267067 (= e!3275922 e!3275924)))

(declare-fun res!2234707 () Bool)

(assert (=> b!5267067 (= res!2234707 (matchRSpec!1989 (regOne!30285 r!7292) s!2326))))

(assert (=> b!5267067 (=> res!2234707 e!3275924)))

(declare-fun bm!373926 () Bool)

(assert (=> bm!373926 (= call!373931 (Exists!2067 (ite c!912021 lambda!265652 lambda!265653)))))

(declare-fun b!5267068 () Bool)

(declare-fun c!912024 () Bool)

(assert (=> b!5267068 (= c!912024 (is-ElementMatch!14886 r!7292))))

(assert (=> b!5267068 (= e!3275921 e!3275923)))

(assert (= (and d!1695059 c!912023) b!5267063))

(assert (= (and d!1695059 (not c!912023)) b!5267061))

(assert (= (and b!5267061 res!2234708) b!5267068))

(assert (= (and b!5267068 c!912024) b!5267059))

(assert (= (and b!5267068 (not c!912024)) b!5267066))

(assert (= (and b!5267066 c!912022) b!5267067))

(assert (= (and b!5267066 (not c!912022)) b!5267060))

(assert (= (and b!5267067 (not res!2234707)) b!5267062))

(assert (= (and b!5267060 c!912021) b!5267065))

(assert (= (and b!5267060 (not c!912021)) b!5267058))

(assert (= (and b!5267065 (not res!2234706)) b!5267064))

(assert (= (or b!5267064 b!5267058) bm!373926))

(assert (= (or b!5267063 b!5267065) bm!373925))

(declare-fun m!6307026 () Bool)

(assert (=> bm!373925 m!6307026))

(declare-fun m!6307028 () Bool)

(assert (=> b!5267062 m!6307028))

(declare-fun m!6307030 () Bool)

(assert (=> b!5267067 m!6307030))

(declare-fun m!6307032 () Bool)

(assert (=> bm!373926 m!6307032))

(assert (=> b!5266805 d!1695059))

(declare-fun b!5267097 () Bool)

(declare-fun e!3275945 () Bool)

(declare-fun e!3275947 () Bool)

(assert (=> b!5267097 (= e!3275945 e!3275947)))

(declare-fun c!912032 () Bool)

(assert (=> b!5267097 (= c!912032 (is-EmptyLang!14886 r!7292))))

(declare-fun b!5267098 () Bool)

(declare-fun e!3275942 () Bool)

(assert (=> b!5267098 (= e!3275942 (nullable!5055 r!7292))))

(declare-fun b!5267099 () Bool)

(declare-fun res!2234729 () Bool)

(declare-fun e!3275943 () Bool)

(assert (=> b!5267099 (=> (not res!2234729) (not e!3275943))))

(assert (=> b!5267099 (= res!2234729 (isEmpty!32785 (tail!10389 s!2326)))))

(declare-fun b!5267100 () Bool)

(declare-fun e!3275946 () Bool)

(assert (=> b!5267100 (= e!3275946 (not (= (head!11292 s!2326) (c!911978 r!7292))))))

(declare-fun b!5267101 () Bool)

(declare-fun res!2234728 () Bool)

(assert (=> b!5267101 (=> (not res!2234728) (not e!3275943))))

(declare-fun call!373934 () Bool)

(assert (=> b!5267101 (= res!2234728 (not call!373934))))

(declare-fun b!5267102 () Bool)

(declare-fun res!2234732 () Bool)

(declare-fun e!3275941 () Bool)

(assert (=> b!5267102 (=> res!2234732 e!3275941)))

(assert (=> b!5267102 (= res!2234732 (not (is-ElementMatch!14886 r!7292)))))

(assert (=> b!5267102 (= e!3275947 e!3275941)))

(declare-fun b!5267103 () Bool)

(assert (=> b!5267103 (= e!3275943 (= (head!11292 s!2326) (c!911978 r!7292)))))

(declare-fun b!5267104 () Bool)

(declare-fun derivativeStep!4108 (Regex!14886 C!30042) Regex!14886)

(assert (=> b!5267104 (= e!3275942 (matchR!7071 (derivativeStep!4108 r!7292 (head!11292 s!2326)) (tail!10389 s!2326)))))

(declare-fun d!1695061 () Bool)

(assert (=> d!1695061 e!3275945))

(declare-fun c!912033 () Bool)

(assert (=> d!1695061 (= c!912033 (is-EmptyExpr!14886 r!7292))))

(declare-fun lt!2156139 () Bool)

(assert (=> d!1695061 (= lt!2156139 e!3275942)))

(declare-fun c!912031 () Bool)

(assert (=> d!1695061 (= c!912031 (isEmpty!32785 s!2326))))

(assert (=> d!1695061 (validRegex!6622 r!7292)))

(assert (=> d!1695061 (= (matchR!7071 r!7292 s!2326) lt!2156139)))

(declare-fun b!5267105 () Bool)

(declare-fun res!2234731 () Bool)

(assert (=> b!5267105 (=> res!2234731 e!3275941)))

(assert (=> b!5267105 (= res!2234731 e!3275943)))

(declare-fun res!2234730 () Bool)

(assert (=> b!5267105 (=> (not res!2234730) (not e!3275943))))

(assert (=> b!5267105 (= res!2234730 lt!2156139)))

(declare-fun bm!373929 () Bool)

(assert (=> bm!373929 (= call!373934 (isEmpty!32785 s!2326))))

(declare-fun b!5267106 () Bool)

(assert (=> b!5267106 (= e!3275947 (not lt!2156139))))

(declare-fun b!5267107 () Bool)

(assert (=> b!5267107 (= e!3275945 (= lt!2156139 call!373934))))

(declare-fun b!5267108 () Bool)

(declare-fun e!3275944 () Bool)

(assert (=> b!5267108 (= e!3275941 e!3275944)))

(declare-fun res!2234725 () Bool)

(assert (=> b!5267108 (=> (not res!2234725) (not e!3275944))))

(assert (=> b!5267108 (= res!2234725 (not lt!2156139))))

(declare-fun b!5267109 () Bool)

(declare-fun res!2234727 () Bool)

(assert (=> b!5267109 (=> res!2234727 e!3275946)))

(assert (=> b!5267109 (= res!2234727 (not (isEmpty!32785 (tail!10389 s!2326))))))

(declare-fun b!5267110 () Bool)

(assert (=> b!5267110 (= e!3275944 e!3275946)))

(declare-fun res!2234726 () Bool)

(assert (=> b!5267110 (=> res!2234726 e!3275946)))

(assert (=> b!5267110 (= res!2234726 call!373934)))

(assert (= (and d!1695061 c!912031) b!5267098))

(assert (= (and d!1695061 (not c!912031)) b!5267104))

(assert (= (and d!1695061 c!912033) b!5267107))

(assert (= (and d!1695061 (not c!912033)) b!5267097))

(assert (= (and b!5267097 c!912032) b!5267106))

(assert (= (and b!5267097 (not c!912032)) b!5267102))

(assert (= (and b!5267102 (not res!2234732)) b!5267105))

(assert (= (and b!5267105 res!2234730) b!5267101))

(assert (= (and b!5267101 res!2234728) b!5267099))

(assert (= (and b!5267099 res!2234729) b!5267103))

(assert (= (and b!5267105 (not res!2234731)) b!5267108))

(assert (= (and b!5267108 res!2234725) b!5267110))

(assert (= (and b!5267110 (not res!2234726)) b!5267109))

(assert (= (and b!5267109 (not res!2234727)) b!5267100))

(assert (= (or b!5267107 b!5267101 b!5267110) bm!373929))

(declare-fun m!6307034 () Bool)

(assert (=> b!5267100 m!6307034))

(assert (=> d!1695061 m!6307026))

(assert (=> d!1695061 m!6306830))

(assert (=> b!5267104 m!6307034))

(assert (=> b!5267104 m!6307034))

(declare-fun m!6307036 () Bool)

(assert (=> b!5267104 m!6307036))

(declare-fun m!6307038 () Bool)

(assert (=> b!5267104 m!6307038))

(assert (=> b!5267104 m!6307036))

(assert (=> b!5267104 m!6307038))

(declare-fun m!6307040 () Bool)

(assert (=> b!5267104 m!6307040))

(assert (=> bm!373929 m!6307026))

(declare-fun m!6307042 () Bool)

(assert (=> b!5267098 m!6307042))

(assert (=> b!5267099 m!6307038))

(assert (=> b!5267099 m!6307038))

(declare-fun m!6307044 () Bool)

(assert (=> b!5267099 m!6307044))

(assert (=> b!5267103 m!6307034))

(assert (=> b!5267109 m!6307038))

(assert (=> b!5267109 m!6307038))

(assert (=> b!5267109 m!6307044))

(assert (=> b!5266805 d!1695061))

(declare-fun d!1695063 () Bool)

(assert (=> d!1695063 (= (matchR!7071 r!7292 s!2326) (matchRSpec!1989 r!7292 s!2326))))

(declare-fun lt!2156142 () Unit!153062)

(declare-fun choose!39301 (Regex!14886 List!60959) Unit!153062)

(assert (=> d!1695063 (= lt!2156142 (choose!39301 r!7292 s!2326))))

(assert (=> d!1695063 (validRegex!6622 r!7292)))

(assert (=> d!1695063 (= (mainMatchTheorem!1989 r!7292 s!2326) lt!2156142)))

(declare-fun bs!1220637 () Bool)

(assert (= bs!1220637 d!1695063))

(assert (=> bs!1220637 m!6306804))

(assert (=> bs!1220637 m!6306802))

(declare-fun m!6307046 () Bool)

(assert (=> bs!1220637 m!6307046))

(assert (=> bs!1220637 m!6306830))

(assert (=> b!5266805 d!1695063))

(declare-fun d!1695065 () Bool)

(declare-fun c!912034 () Bool)

(assert (=> d!1695065 (= c!912034 (isEmpty!32785 (t!374150 s!2326)))))

(declare-fun e!3275948 () Bool)

(assert (=> d!1695065 (= (matchZipper!1130 lt!2156044 (t!374150 s!2326)) e!3275948)))

(declare-fun b!5267111 () Bool)

(assert (=> b!5267111 (= e!3275948 (nullableZipper!1287 lt!2156044))))

(declare-fun b!5267112 () Bool)

(assert (=> b!5267112 (= e!3275948 (matchZipper!1130 (derivationStepZipper!1131 lt!2156044 (head!11292 (t!374150 s!2326))) (tail!10389 (t!374150 s!2326))))))

(assert (= (and d!1695065 c!912034) b!5267111))

(assert (= (and d!1695065 (not c!912034)) b!5267112))

(assert (=> d!1695065 m!6306936))

(declare-fun m!6307048 () Bool)

(assert (=> b!5267111 m!6307048))

(assert (=> b!5267112 m!6306940))

(assert (=> b!5267112 m!6306940))

(declare-fun m!6307050 () Bool)

(assert (=> b!5267112 m!6307050))

(assert (=> b!5267112 m!6306944))

(assert (=> b!5267112 m!6307050))

(assert (=> b!5267112 m!6306944))

(declare-fun m!6307052 () Bool)

(assert (=> b!5267112 m!6307052))

(assert (=> b!5266796 d!1695065))

(assert (=> b!5266787 d!1695029))

(declare-fun d!1695067 () Bool)

(declare-fun nullableFct!1439 (Regex!14886) Bool)

(assert (=> d!1695067 (= (nullable!5055 (regOne!30284 (regOne!30284 r!7292))) (nullableFct!1439 (regOne!30284 (regOne!30284 r!7292))))))

(declare-fun bs!1220638 () Bool)

(assert (= bs!1220638 d!1695067))

(declare-fun m!6307054 () Bool)

(assert (=> bs!1220638 m!6307054))

(assert (=> b!5266806 d!1695067))

(declare-fun bs!1220639 () Bool)

(declare-fun d!1695069 () Bool)

(assert (= bs!1220639 (and d!1695069 d!1695027)))

(declare-fun lambda!265656 () Int)

(assert (=> bs!1220639 (= lambda!265656 lambda!265638)))

(declare-fun b!5267133 () Bool)

(declare-fun e!3275963 () Regex!14886)

(assert (=> b!5267133 (= e!3275963 (h!67281 (exprs!4770 (h!67282 zl!343))))))

(declare-fun b!5267134 () Bool)

(declare-fun e!3275966 () Bool)

(declare-fun e!3275964 () Bool)

(assert (=> b!5267134 (= e!3275966 e!3275964)))

(declare-fun c!912043 () Bool)

(declare-fun tail!10390 (List!60957) List!60957)

(assert (=> b!5267134 (= c!912043 (isEmpty!32781 (tail!10390 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun b!5267135 () Bool)

(declare-fun e!3275961 () Regex!14886)

(assert (=> b!5267135 (= e!3275961 (Concat!23731 (h!67281 (exprs!4770 (h!67282 zl!343))) (generalisedConcat!555 (t!374148 (exprs!4770 (h!67282 zl!343))))))))

(declare-fun b!5267136 () Bool)

(declare-fun e!3275965 () Bool)

(assert (=> b!5267136 (= e!3275965 (isEmpty!32781 (t!374148 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun b!5267137 () Bool)

(declare-fun lt!2156145 () Regex!14886)

(declare-fun isConcat!345 (Regex!14886) Bool)

(assert (=> b!5267137 (= e!3275964 (isConcat!345 lt!2156145))))

(declare-fun b!5267139 () Bool)

(assert (=> b!5267139 (= e!3275963 e!3275961)))

(declare-fun c!912046 () Bool)

(assert (=> b!5267139 (= c!912046 (is-Cons!60833 (exprs!4770 (h!67282 zl!343))))))

(declare-fun b!5267140 () Bool)

(declare-fun e!3275962 () Bool)

(assert (=> b!5267140 (= e!3275962 e!3275966)))

(declare-fun c!912044 () Bool)

(assert (=> b!5267140 (= c!912044 (isEmpty!32781 (exprs!4770 (h!67282 zl!343))))))

(declare-fun b!5267141 () Bool)

(assert (=> b!5267141 (= e!3275961 EmptyExpr!14886)))

(declare-fun b!5267142 () Bool)

(declare-fun head!11293 (List!60957) Regex!14886)

(assert (=> b!5267142 (= e!3275964 (= lt!2156145 (head!11293 (exprs!4770 (h!67282 zl!343)))))))

(assert (=> d!1695069 e!3275962))

(declare-fun res!2234738 () Bool)

(assert (=> d!1695069 (=> (not res!2234738) (not e!3275962))))

(assert (=> d!1695069 (= res!2234738 (validRegex!6622 lt!2156145))))

(assert (=> d!1695069 (= lt!2156145 e!3275963)))

(declare-fun c!912045 () Bool)

(assert (=> d!1695069 (= c!912045 e!3275965)))

(declare-fun res!2234737 () Bool)

(assert (=> d!1695069 (=> (not res!2234737) (not e!3275965))))

(assert (=> d!1695069 (= res!2234737 (is-Cons!60833 (exprs!4770 (h!67282 zl!343))))))

(assert (=> d!1695069 (forall!14296 (exprs!4770 (h!67282 zl!343)) lambda!265656)))

(assert (=> d!1695069 (= (generalisedConcat!555 (exprs!4770 (h!67282 zl!343))) lt!2156145)))

(declare-fun b!5267138 () Bool)

(declare-fun isEmptyExpr!822 (Regex!14886) Bool)

(assert (=> b!5267138 (= e!3275966 (isEmptyExpr!822 lt!2156145))))

(assert (= (and d!1695069 res!2234737) b!5267136))

(assert (= (and d!1695069 c!912045) b!5267133))

(assert (= (and d!1695069 (not c!912045)) b!5267139))

(assert (= (and b!5267139 c!912046) b!5267135))

(assert (= (and b!5267139 (not c!912046)) b!5267141))

(assert (= (and d!1695069 res!2234738) b!5267140))

(assert (= (and b!5267140 c!912044) b!5267138))

(assert (= (and b!5267140 (not c!912044)) b!5267134))

(assert (= (and b!5267134 c!912043) b!5267142))

(assert (= (and b!5267134 (not c!912043)) b!5267137))

(declare-fun m!6307056 () Bool)

(assert (=> b!5267137 m!6307056))

(declare-fun m!6307058 () Bool)

(assert (=> d!1695069 m!6307058))

(declare-fun m!6307060 () Bool)

(assert (=> d!1695069 m!6307060))

(declare-fun m!6307062 () Bool)

(assert (=> b!5267140 m!6307062))

(declare-fun m!6307064 () Bool)

(assert (=> b!5267135 m!6307064))

(declare-fun m!6307066 () Bool)

(assert (=> b!5267142 m!6307066))

(declare-fun m!6307068 () Bool)

(assert (=> b!5267138 m!6307068))

(declare-fun m!6307070 () Bool)

(assert (=> b!5267134 m!6307070))

(assert (=> b!5267134 m!6307070))

(declare-fun m!6307072 () Bool)

(assert (=> b!5267134 m!6307072))

(assert (=> b!5267136 m!6306760))

(assert (=> b!5266797 d!1695069))

(declare-fun d!1695071 () Bool)

(declare-fun lt!2156148 () Regex!14886)

(assert (=> d!1695071 (validRegex!6622 lt!2156148)))

(assert (=> d!1695071 (= lt!2156148 (generalisedUnion!815 (unfocusZipperList!328 zl!343)))))

(assert (=> d!1695071 (= (unfocusZipper!628 zl!343) lt!2156148)))

(declare-fun bs!1220640 () Bool)

(assert (= bs!1220640 d!1695071))

(declare-fun m!6307074 () Bool)

(assert (=> bs!1220640 m!6307074))

(assert (=> bs!1220640 m!6306772))

(assert (=> bs!1220640 m!6306772))

(assert (=> bs!1220640 m!6306774))

(assert (=> b!5266798 d!1695071))

(declare-fun bs!1220641 () Bool)

(declare-fun d!1695073 () Bool)

(assert (= bs!1220641 (and d!1695073 d!1695027)))

(declare-fun lambda!265657 () Int)

(assert (=> bs!1220641 (= lambda!265657 lambda!265638)))

(declare-fun bs!1220642 () Bool)

(assert (= bs!1220642 (and d!1695073 d!1695069)))

(assert (=> bs!1220642 (= lambda!265657 lambda!265656)))

(assert (=> d!1695073 (= (inv!80463 (h!67282 zl!343)) (forall!14296 (exprs!4770 (h!67282 zl!343)) lambda!265657))))

(declare-fun bs!1220643 () Bool)

(assert (= bs!1220643 d!1695073))

(declare-fun m!6307076 () Bool)

(assert (=> bs!1220643 m!6307076))

(assert (=> b!5266788 d!1695073))

(declare-fun d!1695075 () Bool)

(assert (=> d!1695075 (= (nullable!5055 (h!67281 (exprs!4770 (h!67282 zl!343)))) (nullableFct!1439 (h!67281 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun bs!1220644 () Bool)

(assert (= bs!1220644 d!1695075))

(declare-fun m!6307078 () Bool)

(assert (=> bs!1220644 m!6307078))

(assert (=> b!5266789 d!1695075))

(declare-fun bm!373930 () Bool)

(declare-fun call!373935 () (Set Context!8540))

(assert (=> bm!373930 (= call!373935 (derivationStepZipperDown!334 (h!67281 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343))))))) (Context!8541 (t!374148 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))) (h!67283 s!2326)))))

(declare-fun e!3275969 () (Set Context!8540))

(declare-fun b!5267143 () Bool)

(assert (=> b!5267143 (= e!3275969 (set.union call!373935 (derivationStepZipperUp!258 (Context!8541 (t!374148 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))) (h!67283 s!2326))))))

(declare-fun b!5267144 () Bool)

(declare-fun e!3275968 () (Set Context!8540))

(assert (=> b!5267144 (= e!3275969 e!3275968)))

(declare-fun c!912047 () Bool)

(assert (=> b!5267144 (= c!912047 (is-Cons!60833 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343))))))))))

(declare-fun b!5267145 () Bool)

(declare-fun e!3275967 () Bool)

(assert (=> b!5267145 (= e!3275967 (nullable!5055 (h!67281 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))))))

(declare-fun d!1695077 () Bool)

(declare-fun c!912048 () Bool)

(assert (=> d!1695077 (= c!912048 e!3275967)))

(declare-fun res!2234739 () Bool)

(assert (=> d!1695077 (=> (not res!2234739) (not e!3275967))))

(assert (=> d!1695077 (= res!2234739 (is-Cons!60833 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343))))))))))

(assert (=> d!1695077 (= (derivationStepZipperUp!258 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343))))) (h!67283 s!2326)) e!3275969)))

(declare-fun b!5267146 () Bool)

(assert (=> b!5267146 (= e!3275968 (as set.empty (Set Context!8540)))))

(declare-fun b!5267147 () Bool)

(assert (=> b!5267147 (= e!3275968 call!373935)))

(assert (= (and d!1695077 res!2234739) b!5267145))

(assert (= (and d!1695077 c!912048) b!5267143))

(assert (= (and d!1695077 (not c!912048)) b!5267144))

(assert (= (and b!5267144 c!912047) b!5267147))

(assert (= (and b!5267144 (not c!912047)) b!5267146))

(assert (= (or b!5267143 b!5267147) bm!373930))

(declare-fun m!6307080 () Bool)

(assert (=> bm!373930 m!6307080))

(declare-fun m!6307082 () Bool)

(assert (=> b!5267143 m!6307082))

(declare-fun m!6307084 () Bool)

(assert (=> b!5267145 m!6307084))

(assert (=> b!5266789 d!1695077))

(declare-fun b!5267170 () Bool)

(declare-fun e!3275986 () (Set Context!8540))

(assert (=> b!5267170 (= e!3275986 (as set.empty (Set Context!8540)))))

(declare-fun b!5267171 () Bool)

(declare-fun e!3275982 () (Set Context!8540))

(declare-fun call!373948 () (Set Context!8540))

(assert (=> b!5267171 (= e!3275982 call!373948)))

(declare-fun b!5267172 () Bool)

(declare-fun e!3275983 () (Set Context!8540))

(declare-fun call!373950 () (Set Context!8540))

(declare-fun call!373953 () (Set Context!8540))

(assert (=> b!5267172 (= e!3275983 (set.union call!373950 call!373953))))

(declare-fun b!5267173 () Bool)

(declare-fun c!912060 () Bool)

(assert (=> b!5267173 (= c!912060 (is-Star!14886 (h!67281 (exprs!4770 (h!67282 zl!343)))))))

(assert (=> b!5267173 (= e!3275982 e!3275986)))

(declare-fun b!5267174 () Bool)

(declare-fun c!912061 () Bool)

(declare-fun e!3275985 () Bool)

(assert (=> b!5267174 (= c!912061 e!3275985)))

(declare-fun res!2234742 () Bool)

(assert (=> b!5267174 (=> (not res!2234742) (not e!3275985))))

(assert (=> b!5267174 (= res!2234742 (is-Concat!23731 (h!67281 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun e!3275984 () (Set Context!8540))

(assert (=> b!5267174 (= e!3275984 e!3275983)))

(declare-fun c!912062 () Bool)

(declare-fun call!373952 () List!60957)

(declare-fun bm!373943 () Bool)

(declare-fun $colon$colon!1337 (List!60957 Regex!14886) List!60957)

(assert (=> bm!373943 (= call!373952 ($colon$colon!1337 (exprs!4770 lt!2156038) (ite (or c!912061 c!912062) (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (h!67281 (exprs!4770 (h!67282 zl!343))))))))

(declare-fun b!5267175 () Bool)

(assert (=> b!5267175 (= e!3275983 e!3275982)))

(assert (=> b!5267175 (= c!912062 (is-Concat!23731 (h!67281 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun b!5267176 () Bool)

(assert (=> b!5267176 (= e!3275985 (nullable!5055 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343))))))))

(declare-fun b!5267177 () Bool)

(declare-fun call!373949 () (Set Context!8540))

(assert (=> b!5267177 (= e!3275984 (set.union call!373949 call!373950))))

(declare-fun c!912063 () Bool)

(declare-fun bm!373944 () Bool)

(declare-fun call!373951 () List!60957)

(assert (=> bm!373944 (= call!373949 (derivationStepZipperDown!334 (ite c!912063 (regOne!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912061 (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912062 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (reg!15215 (h!67281 (exprs!4770 (h!67282 zl!343))))))) (ite (or c!912063 c!912061) lt!2156038 (Context!8541 call!373951)) (h!67283 s!2326)))))

(declare-fun b!5267178 () Bool)

(declare-fun e!3275987 () (Set Context!8540))

(assert (=> b!5267178 (= e!3275987 e!3275984)))

(assert (=> b!5267178 (= c!912063 (is-Union!14886 (h!67281 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun bm!373945 () Bool)

(assert (=> bm!373945 (= call!373948 call!373953)))

(declare-fun d!1695079 () Bool)

(declare-fun c!912059 () Bool)

(assert (=> d!1695079 (= c!912059 (and (is-ElementMatch!14886 (h!67281 (exprs!4770 (h!67282 zl!343)))) (= (c!911978 (h!67281 (exprs!4770 (h!67282 zl!343)))) (h!67283 s!2326))))))

(assert (=> d!1695079 (= (derivationStepZipperDown!334 (h!67281 (exprs!4770 (h!67282 zl!343))) lt!2156038 (h!67283 s!2326)) e!3275987)))

(declare-fun b!5267179 () Bool)

(assert (=> b!5267179 (= e!3275987 (set.insert lt!2156038 (as set.empty (Set Context!8540))))))

(declare-fun bm!373946 () Bool)

(assert (=> bm!373946 (= call!373951 call!373952)))

(declare-fun bm!373947 () Bool)

(assert (=> bm!373947 (= call!373950 (derivationStepZipperDown!334 (ite c!912063 (regTwo!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343))))) (ite c!912063 lt!2156038 (Context!8541 call!373952)) (h!67283 s!2326)))))

(declare-fun bm!373948 () Bool)

(assert (=> bm!373948 (= call!373953 call!373949)))

(declare-fun b!5267180 () Bool)

(assert (=> b!5267180 (= e!3275986 call!373948)))

(assert (= (and d!1695079 c!912059) b!5267179))

(assert (= (and d!1695079 (not c!912059)) b!5267178))

(assert (= (and b!5267178 c!912063) b!5267177))

(assert (= (and b!5267178 (not c!912063)) b!5267174))

(assert (= (and b!5267174 res!2234742) b!5267176))

(assert (= (and b!5267174 c!912061) b!5267172))

(assert (= (and b!5267174 (not c!912061)) b!5267175))

(assert (= (and b!5267175 c!912062) b!5267171))

(assert (= (and b!5267175 (not c!912062)) b!5267173))

(assert (= (and b!5267173 c!912060) b!5267180))

(assert (= (and b!5267173 (not c!912060)) b!5267170))

(assert (= (or b!5267171 b!5267180) bm!373946))

(assert (= (or b!5267171 b!5267180) bm!373945))

(assert (= (or b!5267172 bm!373946) bm!373943))

(assert (= (or b!5267172 bm!373945) bm!373948))

(assert (= (or b!5267177 b!5267172) bm!373947))

(assert (= (or b!5267177 bm!373948) bm!373944))

(declare-fun m!6307086 () Bool)

(assert (=> bm!373944 m!6307086))

(declare-fun m!6307088 () Bool)

(assert (=> bm!373947 m!6307088))

(declare-fun m!6307090 () Bool)

(assert (=> bm!373943 m!6307090))

(declare-fun m!6307092 () Bool)

(assert (=> b!5267176 m!6307092))

(declare-fun m!6307094 () Bool)

(assert (=> b!5267179 m!6307094))

(assert (=> b!5266789 d!1695079))

(declare-fun bm!373949 () Bool)

(declare-fun call!373954 () (Set Context!8540))

(assert (=> bm!373949 (= call!373954 (derivationStepZipperDown!334 (h!67281 (exprs!4770 lt!2156038)) (Context!8541 (t!374148 (exprs!4770 lt!2156038))) (h!67283 s!2326)))))

(declare-fun e!3275990 () (Set Context!8540))

(declare-fun b!5267181 () Bool)

(assert (=> b!5267181 (= e!3275990 (set.union call!373954 (derivationStepZipperUp!258 (Context!8541 (t!374148 (exprs!4770 lt!2156038))) (h!67283 s!2326))))))

(declare-fun b!5267182 () Bool)

(declare-fun e!3275989 () (Set Context!8540))

(assert (=> b!5267182 (= e!3275990 e!3275989)))

(declare-fun c!912064 () Bool)

(assert (=> b!5267182 (= c!912064 (is-Cons!60833 (exprs!4770 lt!2156038)))))

(declare-fun b!5267183 () Bool)

(declare-fun e!3275988 () Bool)

(assert (=> b!5267183 (= e!3275988 (nullable!5055 (h!67281 (exprs!4770 lt!2156038))))))

(declare-fun d!1695081 () Bool)

(declare-fun c!912065 () Bool)

(assert (=> d!1695081 (= c!912065 e!3275988)))

(declare-fun res!2234743 () Bool)

(assert (=> d!1695081 (=> (not res!2234743) (not e!3275988))))

(assert (=> d!1695081 (= res!2234743 (is-Cons!60833 (exprs!4770 lt!2156038)))))

(assert (=> d!1695081 (= (derivationStepZipperUp!258 lt!2156038 (h!67283 s!2326)) e!3275990)))

(declare-fun b!5267184 () Bool)

(assert (=> b!5267184 (= e!3275989 (as set.empty (Set Context!8540)))))

(declare-fun b!5267185 () Bool)

(assert (=> b!5267185 (= e!3275989 call!373954)))

(assert (= (and d!1695081 res!2234743) b!5267183))

(assert (= (and d!1695081 c!912065) b!5267181))

(assert (= (and d!1695081 (not c!912065)) b!5267182))

(assert (= (and b!5267182 c!912064) b!5267185))

(assert (= (and b!5267182 (not c!912064)) b!5267184))

(assert (= (or b!5267181 b!5267185) bm!373949))

(declare-fun m!6307096 () Bool)

(assert (=> bm!373949 m!6307096))

(declare-fun m!6307098 () Bool)

(assert (=> b!5267181 m!6307098))

(declare-fun m!6307100 () Bool)

(assert (=> b!5267183 m!6307100))

(assert (=> b!5266789 d!1695081))

(declare-fun d!1695083 () Bool)

(assert (=> d!1695083 (= (flatMap!613 z!1189 lambda!265622) (dynLambda!24038 lambda!265622 (h!67282 zl!343)))))

(declare-fun lt!2156149 () Unit!153062)

(assert (=> d!1695083 (= lt!2156149 (choose!39300 z!1189 (h!67282 zl!343) lambda!265622))))

(assert (=> d!1695083 (= z!1189 (set.insert (h!67282 zl!343) (as set.empty (Set Context!8540))))))

(assert (=> d!1695083 (= (lemmaFlatMapOnSingletonSet!145 z!1189 (h!67282 zl!343) lambda!265622) lt!2156149)))

(declare-fun b_lambda!203175 () Bool)

(assert (=> (not b_lambda!203175) (not d!1695083)))

(declare-fun bs!1220645 () Bool)

(assert (= bs!1220645 d!1695083))

(assert (=> bs!1220645 m!6306800))

(declare-fun m!6307102 () Bool)

(assert (=> bs!1220645 m!6307102))

(declare-fun m!6307104 () Bool)

(assert (=> bs!1220645 m!6307104))

(declare-fun m!6307106 () Bool)

(assert (=> bs!1220645 m!6307106))

(assert (=> b!5266789 d!1695083))

(declare-fun d!1695085 () Bool)

(assert (=> d!1695085 (= (flatMap!613 z!1189 lambda!265622) (choose!39299 z!1189 lambda!265622))))

(declare-fun bs!1220646 () Bool)

(assert (= bs!1220646 d!1695085))

(declare-fun m!6307108 () Bool)

(assert (=> bs!1220646 m!6307108))

(assert (=> b!5266789 d!1695085))

(declare-fun bm!373950 () Bool)

(declare-fun call!373955 () (Set Context!8540))

(assert (=> bm!373950 (= call!373955 (derivationStepZipperDown!334 (h!67281 (exprs!4770 (h!67282 zl!343))) (Context!8541 (t!374148 (exprs!4770 (h!67282 zl!343)))) (h!67283 s!2326)))))

(declare-fun b!5267186 () Bool)

(declare-fun e!3275993 () (Set Context!8540))

(assert (=> b!5267186 (= e!3275993 (set.union call!373955 (derivationStepZipperUp!258 (Context!8541 (t!374148 (exprs!4770 (h!67282 zl!343)))) (h!67283 s!2326))))))

(declare-fun b!5267187 () Bool)

(declare-fun e!3275992 () (Set Context!8540))

(assert (=> b!5267187 (= e!3275993 e!3275992)))

(declare-fun c!912066 () Bool)

(assert (=> b!5267187 (= c!912066 (is-Cons!60833 (exprs!4770 (h!67282 zl!343))))))

(declare-fun b!5267188 () Bool)

(declare-fun e!3275991 () Bool)

(assert (=> b!5267188 (= e!3275991 (nullable!5055 (h!67281 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun d!1695087 () Bool)

(declare-fun c!912067 () Bool)

(assert (=> d!1695087 (= c!912067 e!3275991)))

(declare-fun res!2234744 () Bool)

(assert (=> d!1695087 (=> (not res!2234744) (not e!3275991))))

(assert (=> d!1695087 (= res!2234744 (is-Cons!60833 (exprs!4770 (h!67282 zl!343))))))

(assert (=> d!1695087 (= (derivationStepZipperUp!258 (h!67282 zl!343) (h!67283 s!2326)) e!3275993)))

(declare-fun b!5267189 () Bool)

(assert (=> b!5267189 (= e!3275992 (as set.empty (Set Context!8540)))))

(declare-fun b!5267190 () Bool)

(assert (=> b!5267190 (= e!3275992 call!373955)))

(assert (= (and d!1695087 res!2234744) b!5267188))

(assert (= (and d!1695087 c!912067) b!5267186))

(assert (= (and d!1695087 (not c!912067)) b!5267187))

(assert (= (and b!5267187 c!912066) b!5267190))

(assert (= (and b!5267187 (not c!912066)) b!5267189))

(assert (= (or b!5267186 b!5267190) bm!373950))

(declare-fun m!6307110 () Bool)

(assert (=> bm!373950 m!6307110))

(declare-fun m!6307112 () Bool)

(assert (=> b!5267186 m!6307112))

(assert (=> b!5267188 m!6306792))

(assert (=> b!5266789 d!1695087))

(assert (=> b!5266808 d!1695047))

(declare-fun d!1695089 () Bool)

(declare-fun c!912068 () Bool)

(assert (=> d!1695089 (= c!912068 (isEmpty!32785 (t!374150 s!2326)))))

(declare-fun e!3275994 () Bool)

(assert (=> d!1695089 (= (matchZipper!1130 lt!2156037 (t!374150 s!2326)) e!3275994)))

(declare-fun b!5267191 () Bool)

(assert (=> b!5267191 (= e!3275994 (nullableZipper!1287 lt!2156037))))

(declare-fun b!5267192 () Bool)

(assert (=> b!5267192 (= e!3275994 (matchZipper!1130 (derivationStepZipper!1131 lt!2156037 (head!11292 (t!374150 s!2326))) (tail!10389 (t!374150 s!2326))))))

(assert (= (and d!1695089 c!912068) b!5267191))

(assert (= (and d!1695089 (not c!912068)) b!5267192))

(assert (=> d!1695089 m!6306936))

(declare-fun m!6307114 () Bool)

(assert (=> b!5267191 m!6307114))

(assert (=> b!5267192 m!6306940))

(assert (=> b!5267192 m!6306940))

(declare-fun m!6307116 () Bool)

(assert (=> b!5267192 m!6307116))

(assert (=> b!5267192 m!6306944))

(assert (=> b!5267192 m!6307116))

(assert (=> b!5267192 m!6306944))

(declare-fun m!6307118 () Bool)

(assert (=> b!5267192 m!6307118))

(assert (=> b!5266808 d!1695089))

(declare-fun d!1695091 () Bool)

(declare-fun c!912069 () Bool)

(assert (=> d!1695091 (= c!912069 (isEmpty!32785 (t!374150 s!2326)))))

(declare-fun e!3275995 () Bool)

(assert (=> d!1695091 (= (matchZipper!1130 lt!2156028 (t!374150 s!2326)) e!3275995)))

(declare-fun b!5267193 () Bool)

(assert (=> b!5267193 (= e!3275995 (nullableZipper!1287 lt!2156028))))

(declare-fun b!5267194 () Bool)

(assert (=> b!5267194 (= e!3275995 (matchZipper!1130 (derivationStepZipper!1131 lt!2156028 (head!11292 (t!374150 s!2326))) (tail!10389 (t!374150 s!2326))))))

(assert (= (and d!1695091 c!912069) b!5267193))

(assert (= (and d!1695091 (not c!912069)) b!5267194))

(assert (=> d!1695091 m!6306936))

(declare-fun m!6307120 () Bool)

(assert (=> b!5267193 m!6307120))

(assert (=> b!5267194 m!6306940))

(assert (=> b!5267194 m!6306940))

(declare-fun m!6307122 () Bool)

(assert (=> b!5267194 m!6307122))

(assert (=> b!5267194 m!6306944))

(assert (=> b!5267194 m!6307122))

(assert (=> b!5267194 m!6306944))

(declare-fun m!6307124 () Bool)

(assert (=> b!5267194 m!6307124))

(assert (=> b!5266808 d!1695091))

(declare-fun e!3275996 () Bool)

(declare-fun d!1695093 () Bool)

(assert (=> d!1695093 (= (matchZipper!1130 (set.union lt!2156028 lt!2156046) (t!374150 s!2326)) e!3275996)))

(declare-fun res!2234745 () Bool)

(assert (=> d!1695093 (=> res!2234745 e!3275996)))

(assert (=> d!1695093 (= res!2234745 (matchZipper!1130 lt!2156028 (t!374150 s!2326)))))

(declare-fun lt!2156150 () Unit!153062)

(assert (=> d!1695093 (= lt!2156150 (choose!39298 lt!2156028 lt!2156046 (t!374150 s!2326)))))

(assert (=> d!1695093 (= (lemmaZipperConcatMatchesSameAsBothZippers!123 lt!2156028 lt!2156046 (t!374150 s!2326)) lt!2156150)))

(declare-fun b!5267195 () Bool)

(assert (=> b!5267195 (= e!3275996 (matchZipper!1130 lt!2156046 (t!374150 s!2326)))))

(assert (= (and d!1695093 (not res!2234745)) b!5267195))

(declare-fun m!6307126 () Bool)

(assert (=> d!1695093 m!6307126))

(assert (=> d!1695093 m!6306820))

(declare-fun m!6307128 () Bool)

(assert (=> d!1695093 m!6307128))

(assert (=> b!5267195 m!6306814))

(assert (=> b!5266808 d!1695093))

(declare-fun bs!1220647 () Bool)

(declare-fun d!1695095 () Bool)

(assert (= bs!1220647 (and d!1695095 d!1695027)))

(declare-fun lambda!265660 () Int)

(assert (=> bs!1220647 (= lambda!265660 lambda!265638)))

(declare-fun bs!1220648 () Bool)

(assert (= bs!1220648 (and d!1695095 d!1695069)))

(assert (=> bs!1220648 (= lambda!265660 lambda!265656)))

(declare-fun bs!1220649 () Bool)

(assert (= bs!1220649 (and d!1695095 d!1695073)))

(assert (=> bs!1220649 (= lambda!265660 lambda!265657)))

(declare-fun b!5267216 () Bool)

(declare-fun e!3276014 () Regex!14886)

(assert (=> b!5267216 (= e!3276014 (Union!14886 (h!67281 (unfocusZipperList!328 zl!343)) (generalisedUnion!815 (t!374148 (unfocusZipperList!328 zl!343)))))))

(declare-fun b!5267217 () Bool)

(declare-fun e!3276011 () Bool)

(declare-fun lt!2156153 () Regex!14886)

(declare-fun isUnion!262 (Regex!14886) Bool)

(assert (=> b!5267217 (= e!3276011 (isUnion!262 lt!2156153))))

(declare-fun b!5267218 () Bool)

(assert (=> b!5267218 (= e!3276011 (= lt!2156153 (head!11293 (unfocusZipperList!328 zl!343))))))

(declare-fun b!5267219 () Bool)

(declare-fun e!3276012 () Regex!14886)

(assert (=> b!5267219 (= e!3276012 (h!67281 (unfocusZipperList!328 zl!343)))))

(declare-fun b!5267221 () Bool)

(assert (=> b!5267221 (= e!3276014 EmptyLang!14886)))

(declare-fun b!5267222 () Bool)

(declare-fun e!3276009 () Bool)

(declare-fun isEmptyLang!830 (Regex!14886) Bool)

(assert (=> b!5267222 (= e!3276009 (isEmptyLang!830 lt!2156153))))

(declare-fun b!5267223 () Bool)

(assert (=> b!5267223 (= e!3276009 e!3276011)))

(declare-fun c!912078 () Bool)

(assert (=> b!5267223 (= c!912078 (isEmpty!32781 (tail!10390 (unfocusZipperList!328 zl!343))))))

(declare-fun b!5267224 () Bool)

(declare-fun e!3276010 () Bool)

(assert (=> b!5267224 (= e!3276010 e!3276009)))

(declare-fun c!912081 () Bool)

(assert (=> b!5267224 (= c!912081 (isEmpty!32781 (unfocusZipperList!328 zl!343)))))

(declare-fun b!5267225 () Bool)

(assert (=> b!5267225 (= e!3276012 e!3276014)))

(declare-fun c!912079 () Bool)

(assert (=> b!5267225 (= c!912079 (is-Cons!60833 (unfocusZipperList!328 zl!343)))))

(declare-fun b!5267220 () Bool)

(declare-fun e!3276013 () Bool)

(assert (=> b!5267220 (= e!3276013 (isEmpty!32781 (t!374148 (unfocusZipperList!328 zl!343))))))

(assert (=> d!1695095 e!3276010))

(declare-fun res!2234751 () Bool)

(assert (=> d!1695095 (=> (not res!2234751) (not e!3276010))))

(assert (=> d!1695095 (= res!2234751 (validRegex!6622 lt!2156153))))

(assert (=> d!1695095 (= lt!2156153 e!3276012)))

(declare-fun c!912080 () Bool)

(assert (=> d!1695095 (= c!912080 e!3276013)))

(declare-fun res!2234750 () Bool)

(assert (=> d!1695095 (=> (not res!2234750) (not e!3276013))))

(assert (=> d!1695095 (= res!2234750 (is-Cons!60833 (unfocusZipperList!328 zl!343)))))

(assert (=> d!1695095 (forall!14296 (unfocusZipperList!328 zl!343) lambda!265660)))

(assert (=> d!1695095 (= (generalisedUnion!815 (unfocusZipperList!328 zl!343)) lt!2156153)))

(assert (= (and d!1695095 res!2234750) b!5267220))

(assert (= (and d!1695095 c!912080) b!5267219))

(assert (= (and d!1695095 (not c!912080)) b!5267225))

(assert (= (and b!5267225 c!912079) b!5267216))

(assert (= (and b!5267225 (not c!912079)) b!5267221))

(assert (= (and d!1695095 res!2234751) b!5267224))

(assert (= (and b!5267224 c!912081) b!5267222))

(assert (= (and b!5267224 (not c!912081)) b!5267223))

(assert (= (and b!5267223 c!912078) b!5267218))

(assert (= (and b!5267223 (not c!912078)) b!5267217))

(declare-fun m!6307130 () Bool)

(assert (=> b!5267216 m!6307130))

(assert (=> b!5267218 m!6306772))

(declare-fun m!6307132 () Bool)

(assert (=> b!5267218 m!6307132))

(declare-fun m!6307134 () Bool)

(assert (=> b!5267220 m!6307134))

(assert (=> b!5267223 m!6306772))

(declare-fun m!6307136 () Bool)

(assert (=> b!5267223 m!6307136))

(assert (=> b!5267223 m!6307136))

(declare-fun m!6307138 () Bool)

(assert (=> b!5267223 m!6307138))

(declare-fun m!6307140 () Bool)

(assert (=> d!1695095 m!6307140))

(assert (=> d!1695095 m!6306772))

(declare-fun m!6307142 () Bool)

(assert (=> d!1695095 m!6307142))

(declare-fun m!6307144 () Bool)

(assert (=> b!5267217 m!6307144))

(assert (=> b!5267224 m!6306772))

(declare-fun m!6307146 () Bool)

(assert (=> b!5267224 m!6307146))

(declare-fun m!6307148 () Bool)

(assert (=> b!5267222 m!6307148))

(assert (=> b!5266799 d!1695095))

(declare-fun bs!1220650 () Bool)

(declare-fun d!1695097 () Bool)

(assert (= bs!1220650 (and d!1695097 d!1695027)))

(declare-fun lambda!265663 () Int)

(assert (=> bs!1220650 (= lambda!265663 lambda!265638)))

(declare-fun bs!1220651 () Bool)

(assert (= bs!1220651 (and d!1695097 d!1695069)))

(assert (=> bs!1220651 (= lambda!265663 lambda!265656)))

(declare-fun bs!1220652 () Bool)

(assert (= bs!1220652 (and d!1695097 d!1695073)))

(assert (=> bs!1220652 (= lambda!265663 lambda!265657)))

(declare-fun bs!1220653 () Bool)

(assert (= bs!1220653 (and d!1695097 d!1695095)))

(assert (=> bs!1220653 (= lambda!265663 lambda!265660)))

(declare-fun lt!2156156 () List!60957)

(assert (=> d!1695097 (forall!14296 lt!2156156 lambda!265663)))

(declare-fun e!3276017 () List!60957)

(assert (=> d!1695097 (= lt!2156156 e!3276017)))

(declare-fun c!912084 () Bool)

(assert (=> d!1695097 (= c!912084 (is-Cons!60834 zl!343))))

(assert (=> d!1695097 (= (unfocusZipperList!328 zl!343) lt!2156156)))

(declare-fun b!5267230 () Bool)

(assert (=> b!5267230 (= e!3276017 (Cons!60833 (generalisedConcat!555 (exprs!4770 (h!67282 zl!343))) (unfocusZipperList!328 (t!374149 zl!343))))))

(declare-fun b!5267231 () Bool)

(assert (=> b!5267231 (= e!3276017 Nil!60833)))

(assert (= (and d!1695097 c!912084) b!5267230))

(assert (= (and d!1695097 (not c!912084)) b!5267231))

(declare-fun m!6307150 () Bool)

(assert (=> d!1695097 m!6307150))

(assert (=> b!5267230 m!6306842))

(declare-fun m!6307152 () Bool)

(assert (=> b!5267230 m!6307152))

(assert (=> b!5266799 d!1695097))

(declare-fun b!5267232 () Bool)

(declare-fun e!3276022 () (Set Context!8540))

(assert (=> b!5267232 (= e!3276022 (as set.empty (Set Context!8540)))))

(declare-fun b!5267233 () Bool)

(declare-fun e!3276018 () (Set Context!8540))

(declare-fun call!373956 () (Set Context!8540))

(assert (=> b!5267233 (= e!3276018 call!373956)))

(declare-fun b!5267234 () Bool)

(declare-fun e!3276019 () (Set Context!8540))

(declare-fun call!373958 () (Set Context!8540))

(declare-fun call!373961 () (Set Context!8540))

(assert (=> b!5267234 (= e!3276019 (set.union call!373958 call!373961))))

(declare-fun b!5267235 () Bool)

(declare-fun c!912086 () Bool)

(assert (=> b!5267235 (= c!912086 (is-Star!14886 (regTwo!30284 (regOne!30284 r!7292))))))

(assert (=> b!5267235 (= e!3276018 e!3276022)))

(declare-fun b!5267236 () Bool)

(declare-fun c!912087 () Bool)

(declare-fun e!3276021 () Bool)

(assert (=> b!5267236 (= c!912087 e!3276021)))

(declare-fun res!2234752 () Bool)

(assert (=> b!5267236 (=> (not res!2234752) (not e!3276021))))

(assert (=> b!5267236 (= res!2234752 (is-Concat!23731 (regTwo!30284 (regOne!30284 r!7292))))))

(declare-fun e!3276020 () (Set Context!8540))

(assert (=> b!5267236 (= e!3276020 e!3276019)))

(declare-fun c!912088 () Bool)

(declare-fun call!373960 () List!60957)

(declare-fun bm!373951 () Bool)

(assert (=> bm!373951 (= call!373960 ($colon$colon!1337 (exprs!4770 lt!2156038) (ite (or c!912087 c!912088) (regTwo!30284 (regTwo!30284 (regOne!30284 r!7292))) (regTwo!30284 (regOne!30284 r!7292)))))))

(declare-fun b!5267237 () Bool)

(assert (=> b!5267237 (= e!3276019 e!3276018)))

(assert (=> b!5267237 (= c!912088 (is-Concat!23731 (regTwo!30284 (regOne!30284 r!7292))))))

(declare-fun b!5267238 () Bool)

(assert (=> b!5267238 (= e!3276021 (nullable!5055 (regOne!30284 (regTwo!30284 (regOne!30284 r!7292)))))))

(declare-fun b!5267239 () Bool)

(declare-fun call!373957 () (Set Context!8540))

(assert (=> b!5267239 (= e!3276020 (set.union call!373957 call!373958))))

(declare-fun bm!373952 () Bool)

(declare-fun call!373959 () List!60957)

(declare-fun c!912089 () Bool)

(assert (=> bm!373952 (= call!373957 (derivationStepZipperDown!334 (ite c!912089 (regOne!30285 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912087 (regTwo!30284 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912088 (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))) (reg!15215 (regTwo!30284 (regOne!30284 r!7292)))))) (ite (or c!912089 c!912087) lt!2156038 (Context!8541 call!373959)) (h!67283 s!2326)))))

(declare-fun b!5267240 () Bool)

(declare-fun e!3276023 () (Set Context!8540))

(assert (=> b!5267240 (= e!3276023 e!3276020)))

(assert (=> b!5267240 (= c!912089 (is-Union!14886 (regTwo!30284 (regOne!30284 r!7292))))))

(declare-fun bm!373953 () Bool)

(assert (=> bm!373953 (= call!373956 call!373961)))

(declare-fun d!1695099 () Bool)

(declare-fun c!912085 () Bool)

(assert (=> d!1695099 (= c!912085 (and (is-ElementMatch!14886 (regTwo!30284 (regOne!30284 r!7292))) (= (c!911978 (regTwo!30284 (regOne!30284 r!7292))) (h!67283 s!2326))))))

(assert (=> d!1695099 (= (derivationStepZipperDown!334 (regTwo!30284 (regOne!30284 r!7292)) lt!2156038 (h!67283 s!2326)) e!3276023)))

(declare-fun b!5267241 () Bool)

(assert (=> b!5267241 (= e!3276023 (set.insert lt!2156038 (as set.empty (Set Context!8540))))))

(declare-fun bm!373954 () Bool)

(assert (=> bm!373954 (= call!373959 call!373960)))

(declare-fun bm!373955 () Bool)

(assert (=> bm!373955 (= call!373958 (derivationStepZipperDown!334 (ite c!912089 (regTwo!30285 (regTwo!30284 (regOne!30284 r!7292))) (regOne!30284 (regTwo!30284 (regOne!30284 r!7292)))) (ite c!912089 lt!2156038 (Context!8541 call!373960)) (h!67283 s!2326)))))

(declare-fun bm!373956 () Bool)

(assert (=> bm!373956 (= call!373961 call!373957)))

(declare-fun b!5267242 () Bool)

(assert (=> b!5267242 (= e!3276022 call!373956)))

(assert (= (and d!1695099 c!912085) b!5267241))

(assert (= (and d!1695099 (not c!912085)) b!5267240))

(assert (= (and b!5267240 c!912089) b!5267239))

(assert (= (and b!5267240 (not c!912089)) b!5267236))

(assert (= (and b!5267236 res!2234752) b!5267238))

(assert (= (and b!5267236 c!912087) b!5267234))

(assert (= (and b!5267236 (not c!912087)) b!5267237))

(assert (= (and b!5267237 c!912088) b!5267233))

(assert (= (and b!5267237 (not c!912088)) b!5267235))

(assert (= (and b!5267235 c!912086) b!5267242))

(assert (= (and b!5267235 (not c!912086)) b!5267232))

(assert (= (or b!5267233 b!5267242) bm!373954))

(assert (= (or b!5267233 b!5267242) bm!373953))

(assert (= (or b!5267234 bm!373954) bm!373951))

(assert (= (or b!5267234 bm!373953) bm!373956))

(assert (= (or b!5267239 b!5267234) bm!373955))

(assert (= (or b!5267239 bm!373956) bm!373952))

(declare-fun m!6307154 () Bool)

(assert (=> bm!373952 m!6307154))

(declare-fun m!6307156 () Bool)

(assert (=> bm!373955 m!6307156))

(declare-fun m!6307158 () Bool)

(assert (=> bm!373951 m!6307158))

(declare-fun m!6307160 () Bool)

(assert (=> b!5267238 m!6307160))

(assert (=> b!5267241 m!6307094))

(assert (=> b!5266800 d!1695099))

(declare-fun b!5267243 () Bool)

(declare-fun e!3276028 () (Set Context!8540))

(assert (=> b!5267243 (= e!3276028 (as set.empty (Set Context!8540)))))

(declare-fun b!5267244 () Bool)

(declare-fun e!3276024 () (Set Context!8540))

(declare-fun call!373962 () (Set Context!8540))

(assert (=> b!5267244 (= e!3276024 call!373962)))

(declare-fun b!5267245 () Bool)

(declare-fun e!3276025 () (Set Context!8540))

(declare-fun call!373964 () (Set Context!8540))

(declare-fun call!373967 () (Set Context!8540))

(assert (=> b!5267245 (= e!3276025 (set.union call!373964 call!373967))))

(declare-fun b!5267246 () Bool)

(declare-fun c!912091 () Bool)

(assert (=> b!5267246 (= c!912091 (is-Star!14886 (regOne!30284 (regOne!30284 r!7292))))))

(assert (=> b!5267246 (= e!3276024 e!3276028)))

(declare-fun b!5267247 () Bool)

(declare-fun c!912092 () Bool)

(declare-fun e!3276027 () Bool)

(assert (=> b!5267247 (= c!912092 e!3276027)))

(declare-fun res!2234753 () Bool)

(assert (=> b!5267247 (=> (not res!2234753) (not e!3276027))))

(assert (=> b!5267247 (= res!2234753 (is-Concat!23731 (regOne!30284 (regOne!30284 r!7292))))))

(declare-fun e!3276026 () (Set Context!8540))

(assert (=> b!5267247 (= e!3276026 e!3276025)))

(declare-fun c!912093 () Bool)

(declare-fun call!373966 () List!60957)

(declare-fun bm!373957 () Bool)

(assert (=> bm!373957 (= call!373966 ($colon$colon!1337 (exprs!4770 (Context!8541 lt!2156033)) (ite (or c!912092 c!912093) (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 r!7292)))))))

(declare-fun b!5267248 () Bool)

(assert (=> b!5267248 (= e!3276025 e!3276024)))

(assert (=> b!5267248 (= c!912093 (is-Concat!23731 (regOne!30284 (regOne!30284 r!7292))))))

(declare-fun b!5267249 () Bool)

(assert (=> b!5267249 (= e!3276027 (nullable!5055 (regOne!30284 (regOne!30284 (regOne!30284 r!7292)))))))

(declare-fun b!5267250 () Bool)

(declare-fun call!373963 () (Set Context!8540))

(assert (=> b!5267250 (= e!3276026 (set.union call!373963 call!373964))))

(declare-fun c!912094 () Bool)

(declare-fun bm!373958 () Bool)

(declare-fun call!373965 () List!60957)

(assert (=> bm!373958 (= call!373963 (derivationStepZipperDown!334 (ite c!912094 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (ite c!912092 (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))) (ite c!912093 (regOne!30284 (regOne!30284 (regOne!30284 r!7292))) (reg!15215 (regOne!30284 (regOne!30284 r!7292)))))) (ite (or c!912094 c!912092) (Context!8541 lt!2156033) (Context!8541 call!373965)) (h!67283 s!2326)))))

(declare-fun b!5267251 () Bool)

(declare-fun e!3276029 () (Set Context!8540))

(assert (=> b!5267251 (= e!3276029 e!3276026)))

(assert (=> b!5267251 (= c!912094 (is-Union!14886 (regOne!30284 (regOne!30284 r!7292))))))

(declare-fun bm!373959 () Bool)

(assert (=> bm!373959 (= call!373962 call!373967)))

(declare-fun d!1695101 () Bool)

(declare-fun c!912090 () Bool)

(assert (=> d!1695101 (= c!912090 (and (is-ElementMatch!14886 (regOne!30284 (regOne!30284 r!7292))) (= (c!911978 (regOne!30284 (regOne!30284 r!7292))) (h!67283 s!2326))))))

(assert (=> d!1695101 (= (derivationStepZipperDown!334 (regOne!30284 (regOne!30284 r!7292)) (Context!8541 lt!2156033) (h!67283 s!2326)) e!3276029)))

(declare-fun b!5267252 () Bool)

(assert (=> b!5267252 (= e!3276029 (set.insert (Context!8541 lt!2156033) (as set.empty (Set Context!8540))))))

(declare-fun bm!373960 () Bool)

(assert (=> bm!373960 (= call!373965 call!373966)))

(declare-fun bm!373961 () Bool)

(assert (=> bm!373961 (= call!373964 (derivationStepZipperDown!334 (ite c!912094 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292)))) (ite c!912094 (Context!8541 lt!2156033) (Context!8541 call!373966)) (h!67283 s!2326)))))

(declare-fun bm!373962 () Bool)

(assert (=> bm!373962 (= call!373967 call!373963)))

(declare-fun b!5267253 () Bool)

(assert (=> b!5267253 (= e!3276028 call!373962)))

(assert (= (and d!1695101 c!912090) b!5267252))

(assert (= (and d!1695101 (not c!912090)) b!5267251))

(assert (= (and b!5267251 c!912094) b!5267250))

(assert (= (and b!5267251 (not c!912094)) b!5267247))

(assert (= (and b!5267247 res!2234753) b!5267249))

(assert (= (and b!5267247 c!912092) b!5267245))

(assert (= (and b!5267247 (not c!912092)) b!5267248))

(assert (= (and b!5267248 c!912093) b!5267244))

(assert (= (and b!5267248 (not c!912093)) b!5267246))

(assert (= (and b!5267246 c!912091) b!5267253))

(assert (= (and b!5267246 (not c!912091)) b!5267243))

(assert (= (or b!5267244 b!5267253) bm!373960))

(assert (= (or b!5267244 b!5267253) bm!373959))

(assert (= (or b!5267245 bm!373960) bm!373957))

(assert (= (or b!5267245 bm!373959) bm!373962))

(assert (= (or b!5267250 b!5267245) bm!373961))

(assert (= (or b!5267250 bm!373962) bm!373958))

(declare-fun m!6307162 () Bool)

(assert (=> bm!373958 m!6307162))

(declare-fun m!6307164 () Bool)

(assert (=> bm!373961 m!6307164))

(declare-fun m!6307166 () Bool)

(assert (=> bm!373957 m!6307166))

(declare-fun m!6307168 () Bool)

(assert (=> b!5267249 m!6307168))

(declare-fun m!6307170 () Bool)

(assert (=> b!5267252 m!6307170))

(assert (=> b!5266800 d!1695101))

(declare-fun d!1695103 () Bool)

(assert (=> d!1695103 (= (isEmpty!32781 (t!374148 (exprs!4770 (h!67282 zl!343)))) (is-Nil!60833 (t!374148 (exprs!4770 (h!67282 zl!343)))))))

(assert (=> b!5266790 d!1695103))

(declare-fun b!5267264 () Bool)

(declare-fun e!3276032 () Bool)

(assert (=> b!5267264 (= e!3276032 tp_is_empty!39025)))

(declare-fun b!5267266 () Bool)

(declare-fun tp!1472288 () Bool)

(assert (=> b!5267266 (= e!3276032 tp!1472288)))

(assert (=> b!5266810 (= tp!1472241 e!3276032)))

(declare-fun b!5267265 () Bool)

(declare-fun tp!1472291 () Bool)

(declare-fun tp!1472290 () Bool)

(assert (=> b!5267265 (= e!3276032 (and tp!1472291 tp!1472290))))

(declare-fun b!5267267 () Bool)

(declare-fun tp!1472289 () Bool)

(declare-fun tp!1472292 () Bool)

(assert (=> b!5267267 (= e!3276032 (and tp!1472289 tp!1472292))))

(assert (= (and b!5266810 (is-ElementMatch!14886 (reg!15215 r!7292))) b!5267264))

(assert (= (and b!5266810 (is-Concat!23731 (reg!15215 r!7292))) b!5267265))

(assert (= (and b!5266810 (is-Star!14886 (reg!15215 r!7292))) b!5267266))

(assert (= (and b!5266810 (is-Union!14886 (reg!15215 r!7292))) b!5267267))

(declare-fun b!5267268 () Bool)

(declare-fun e!3276033 () Bool)

(assert (=> b!5267268 (= e!3276033 tp_is_empty!39025)))

(declare-fun b!5267270 () Bool)

(declare-fun tp!1472293 () Bool)

(assert (=> b!5267270 (= e!3276033 tp!1472293)))

(assert (=> b!5266786 (= tp!1472245 e!3276033)))

(declare-fun b!5267269 () Bool)

(declare-fun tp!1472296 () Bool)

(declare-fun tp!1472295 () Bool)

(assert (=> b!5267269 (= e!3276033 (and tp!1472296 tp!1472295))))

(declare-fun b!5267271 () Bool)

(declare-fun tp!1472294 () Bool)

(declare-fun tp!1472297 () Bool)

(assert (=> b!5267271 (= e!3276033 (and tp!1472294 tp!1472297))))

(assert (= (and b!5266786 (is-ElementMatch!14886 (regOne!30284 r!7292))) b!5267268))

(assert (= (and b!5266786 (is-Concat!23731 (regOne!30284 r!7292))) b!5267269))

(assert (= (and b!5266786 (is-Star!14886 (regOne!30284 r!7292))) b!5267270))

(assert (= (and b!5266786 (is-Union!14886 (regOne!30284 r!7292))) b!5267271))

(declare-fun b!5267272 () Bool)

(declare-fun e!3276034 () Bool)

(assert (=> b!5267272 (= e!3276034 tp_is_empty!39025)))

(declare-fun b!5267274 () Bool)

(declare-fun tp!1472298 () Bool)

(assert (=> b!5267274 (= e!3276034 tp!1472298)))

(assert (=> b!5266786 (= tp!1472239 e!3276034)))

(declare-fun b!5267273 () Bool)

(declare-fun tp!1472301 () Bool)

(declare-fun tp!1472300 () Bool)

(assert (=> b!5267273 (= e!3276034 (and tp!1472301 tp!1472300))))

(declare-fun b!5267275 () Bool)

(declare-fun tp!1472299 () Bool)

(declare-fun tp!1472302 () Bool)

(assert (=> b!5267275 (= e!3276034 (and tp!1472299 tp!1472302))))

(assert (= (and b!5266786 (is-ElementMatch!14886 (regTwo!30284 r!7292))) b!5267272))

(assert (= (and b!5266786 (is-Concat!23731 (regTwo!30284 r!7292))) b!5267273))

(assert (= (and b!5266786 (is-Star!14886 (regTwo!30284 r!7292))) b!5267274))

(assert (= (and b!5266786 (is-Union!14886 (regTwo!30284 r!7292))) b!5267275))

(declare-fun condSetEmpty!33700 () Bool)

(assert (=> setNonEmpty!33694 (= condSetEmpty!33700 (= setRest!33694 (as set.empty (Set Context!8540))))))

(declare-fun setRes!33700 () Bool)

(assert (=> setNonEmpty!33694 (= tp!1472247 setRes!33700)))

(declare-fun setIsEmpty!33700 () Bool)

(assert (=> setIsEmpty!33700 setRes!33700))

(declare-fun setElem!33700 () Context!8540)

(declare-fun tp!1472308 () Bool)

(declare-fun e!3276037 () Bool)

(declare-fun setNonEmpty!33700 () Bool)

(assert (=> setNonEmpty!33700 (= setRes!33700 (and tp!1472308 (inv!80463 setElem!33700) e!3276037))))

(declare-fun setRest!33700 () (Set Context!8540))

(assert (=> setNonEmpty!33700 (= setRest!33694 (set.union (set.insert setElem!33700 (as set.empty (Set Context!8540))) setRest!33700))))

(declare-fun b!5267280 () Bool)

(declare-fun tp!1472307 () Bool)

(assert (=> b!5267280 (= e!3276037 tp!1472307)))

(assert (= (and setNonEmpty!33694 condSetEmpty!33700) setIsEmpty!33700))

(assert (= (and setNonEmpty!33694 (not condSetEmpty!33700)) setNonEmpty!33700))

(assert (= setNonEmpty!33700 b!5267280))

(declare-fun m!6307172 () Bool)

(assert (=> setNonEmpty!33700 m!6307172))

(declare-fun b!5267285 () Bool)

(declare-fun e!3276040 () Bool)

(declare-fun tp!1472313 () Bool)

(declare-fun tp!1472314 () Bool)

(assert (=> b!5267285 (= e!3276040 (and tp!1472313 tp!1472314))))

(assert (=> b!5266801 (= tp!1472246 e!3276040)))

(assert (= (and b!5266801 (is-Cons!60833 (exprs!4770 setElem!33694))) b!5267285))

(declare-fun b!5267286 () Bool)

(declare-fun e!3276041 () Bool)

(assert (=> b!5267286 (= e!3276041 tp_is_empty!39025)))

(declare-fun b!5267288 () Bool)

(declare-fun tp!1472315 () Bool)

(assert (=> b!5267288 (= e!3276041 tp!1472315)))

(assert (=> b!5266792 (= tp!1472244 e!3276041)))

(declare-fun b!5267287 () Bool)

(declare-fun tp!1472318 () Bool)

(declare-fun tp!1472317 () Bool)

(assert (=> b!5267287 (= e!3276041 (and tp!1472318 tp!1472317))))

(declare-fun b!5267289 () Bool)

(declare-fun tp!1472316 () Bool)

(declare-fun tp!1472319 () Bool)

(assert (=> b!5267289 (= e!3276041 (and tp!1472316 tp!1472319))))

(assert (= (and b!5266792 (is-ElementMatch!14886 (regOne!30285 r!7292))) b!5267286))

(assert (= (and b!5266792 (is-Concat!23731 (regOne!30285 r!7292))) b!5267287))

(assert (= (and b!5266792 (is-Star!14886 (regOne!30285 r!7292))) b!5267288))

(assert (= (and b!5266792 (is-Union!14886 (regOne!30285 r!7292))) b!5267289))

(declare-fun b!5267290 () Bool)

(declare-fun e!3276042 () Bool)

(assert (=> b!5267290 (= e!3276042 tp_is_empty!39025)))

(declare-fun b!5267292 () Bool)

(declare-fun tp!1472320 () Bool)

(assert (=> b!5267292 (= e!3276042 tp!1472320)))

(assert (=> b!5266792 (= tp!1472242 e!3276042)))

(declare-fun b!5267291 () Bool)

(declare-fun tp!1472323 () Bool)

(declare-fun tp!1472322 () Bool)

(assert (=> b!5267291 (= e!3276042 (and tp!1472323 tp!1472322))))

(declare-fun b!5267293 () Bool)

(declare-fun tp!1472321 () Bool)

(declare-fun tp!1472324 () Bool)

(assert (=> b!5267293 (= e!3276042 (and tp!1472321 tp!1472324))))

(assert (= (and b!5266792 (is-ElementMatch!14886 (regTwo!30285 r!7292))) b!5267290))

(assert (= (and b!5266792 (is-Concat!23731 (regTwo!30285 r!7292))) b!5267291))

(assert (= (and b!5266792 (is-Star!14886 (regTwo!30285 r!7292))) b!5267292))

(assert (= (and b!5266792 (is-Union!14886 (regTwo!30285 r!7292))) b!5267293))

(declare-fun b!5267298 () Bool)

(declare-fun e!3276045 () Bool)

(declare-fun tp!1472327 () Bool)

(assert (=> b!5267298 (= e!3276045 (and tp_is_empty!39025 tp!1472327))))

(assert (=> b!5266807 (= tp!1472240 e!3276045)))

(assert (= (and b!5266807 (is-Cons!60835 (t!374150 s!2326))) b!5267298))

(declare-fun b!5267306 () Bool)

(declare-fun e!3276051 () Bool)

(declare-fun tp!1472332 () Bool)

(assert (=> b!5267306 (= e!3276051 tp!1472332)))

(declare-fun b!5267305 () Bool)

(declare-fun e!3276050 () Bool)

(declare-fun tp!1472333 () Bool)

(assert (=> b!5267305 (= e!3276050 (and (inv!80463 (h!67282 (t!374149 zl!343))) e!3276051 tp!1472333))))

(assert (=> b!5266788 (= tp!1472238 e!3276050)))

(assert (= b!5267305 b!5267306))

(assert (= (and b!5266788 (is-Cons!60834 (t!374149 zl!343))) b!5267305))

(declare-fun m!6307174 () Bool)

(assert (=> b!5267305 m!6307174))

(declare-fun b!5267307 () Bool)

(declare-fun e!3276052 () Bool)

(declare-fun tp!1472334 () Bool)

(declare-fun tp!1472335 () Bool)

(assert (=> b!5267307 (= e!3276052 (and tp!1472334 tp!1472335))))

(assert (=> b!5266809 (= tp!1472243 e!3276052)))

(assert (= (and b!5266809 (is-Cons!60833 (exprs!4770 (h!67282 zl!343)))) b!5267307))

(declare-fun b_lambda!203177 () Bool)

(assert (= b_lambda!203175 (or b!5266789 b_lambda!203177)))

(declare-fun bs!1220654 () Bool)

(declare-fun d!1695105 () Bool)

(assert (= bs!1220654 (and d!1695105 b!5266789)))

(assert (=> bs!1220654 (= (dynLambda!24038 lambda!265622 (h!67282 zl!343)) (derivationStepZipperUp!258 (h!67282 zl!343) (h!67283 s!2326)))))

(assert (=> bs!1220654 m!6306790))

(assert (=> d!1695083 d!1695105))

(declare-fun b_lambda!203179 () Bool)

(assert (= b_lambda!203173 (or b!5266789 b_lambda!203179)))

(declare-fun bs!1220655 () Bool)

(declare-fun d!1695107 () Bool)

(assert (= bs!1220655 (and d!1695107 b!5266789)))

(assert (=> bs!1220655 (= (dynLambda!24038 lambda!265622 lt!2156034) (derivationStepZipperUp!258 lt!2156034 (h!67283 s!2326)))))

(assert (=> bs!1220655 m!6306768))

(assert (=> d!1695057 d!1695107))

(push 1)

(assert (not d!1695047))

(assert (not b!5267249))

(assert (not b_lambda!203179))

(assert (not bm!373952))

(assert (not d!1695091))

(assert (not b!5267265))

(assert (not b!5267000))

(assert (not b!5267230))

(assert (not b!5267134))

(assert (not d!1695057))

(assert (not b!5267138))

(assert (not setNonEmpty!33700))

(assert (not b!5267238))

(assert (not b!5266978))

(assert (not b!5267104))

(assert (not d!1695063))

(assert (not d!1695065))

(assert (not d!1695033))

(assert (not b!5266980))

(assert (not b!5267142))

(assert (not bm!373915))

(assert (not d!1695067))

(assert (not d!1695085))

(assert (not b!5267135))

(assert (not b!5267292))

(assert (not b!5266997))

(assert (not b!5267269))

(assert (not bm!373947))

(assert (not b!5267273))

(assert (not bm!373943))

(assert (not d!1695029))

(assert (not d!1695093))

(assert (not b!5267137))

(assert (not b!5267002))

(assert (not b!5266999))

(assert (not b!5267285))

(assert (not bm!373955))

(assert (not b!5267145))

(assert (not b!5267275))

(assert (not bm!373930))

(assert (not bm!373961))

(assert (not b!5267021))

(assert (not b!5267143))

(assert (not d!1695089))

(assert (not bm!373914))

(assert (not d!1695035))

(assert (not d!1695043))

(assert (not bs!1220654))

(assert (not b!5267193))

(assert tp_is_empty!39025)

(assert (not b!5267062))

(assert (not b!5267222))

(assert (not b!5266974))

(assert (not b!5267274))

(assert (not bm!373917))

(assert (not b!5267270))

(assert (not b!5267067))

(assert (not b!5267098))

(assert (not b!5267001))

(assert (not b!5267223))

(assert (not d!1695083))

(assert (not d!1695045))

(assert (not d!1695095))

(assert (not b!5267176))

(assert (not d!1695061))

(assert (not bm!373926))

(assert (not b!5267195))

(assert (not d!1695069))

(assert (not b!5267220))

(assert (not b!5267192))

(assert (not b!5267305))

(assert (not d!1695039))

(assert (not bm!373949))

(assert (not b!5267216))

(assert (not bm!373951))

(assert (not b!5267271))

(assert (not b!5266928))

(assert (not b!5267023))

(assert (not b!5267280))

(assert (not b!5267186))

(assert (not b!5267194))

(assert (not bm!373950))

(assert (not b!5267100))

(assert (not b!5267181))

(assert (not d!1695071))

(assert (not b!5266982))

(assert (not b!5267266))

(assert (not d!1695037))

(assert (not b_lambda!203177))

(assert (not bm!373929))

(assert (not b!5267288))

(assert (not b!5267103))

(assert (not d!1695097))

(assert (not b!5266998))

(assert (not bm!373957))

(assert (not d!1695053))

(assert (not b!5267188))

(assert (not b!5266975))

(assert (not b!5267287))

(assert (not b!5267298))

(assert (not d!1695027))

(assert (not b!5267289))

(assert (not d!1695075))

(assert (not b!5267306))

(assert (not d!1695073))

(assert (not b!5267111))

(assert (not b!5267112))

(assert (not b!5267218))

(assert (not bm!373958))

(assert (not b!5266947))

(assert (not b!5266979))

(assert (not b!5267109))

(assert (not bm!373925))

(assert (not b!5267136))

(assert (not b!5266922))

(assert (not bm!373920))

(assert (not b!5267183))

(assert (not d!1695049))

(assert (not b!5267140))

(assert (not b!5267224))

(assert (not d!1695023))

(assert (not b!5267217))

(assert (not b!5267099))

(assert (not b!5267267))

(assert (not d!1695041))

(assert (not b!5267291))

(assert (not b!5266927))

(assert (not b!5267293))

(assert (not b!5267307))

(assert (not bm!373912))

(assert (not b!5267191))

(assert (not bm!373944))

(assert (not bs!1220655))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1695195 () Bool)

(declare-fun res!2234878 () Bool)

(declare-fun e!3276277 () Bool)

(assert (=> d!1695195 (=> res!2234878 e!3276277)))

(assert (=> d!1695195 (= res!2234878 (is-Nil!60834 lt!2156115))))

(assert (=> d!1695195 (= (noDuplicate!1242 lt!2156115) e!3276277)))

(declare-fun b!5267700 () Bool)

(declare-fun e!3276278 () Bool)

(assert (=> b!5267700 (= e!3276277 e!3276278)))

(declare-fun res!2234879 () Bool)

(assert (=> b!5267700 (=> (not res!2234879) (not e!3276278))))

(declare-fun contains!19692 (List!60958 Context!8540) Bool)

(assert (=> b!5267700 (= res!2234879 (not (contains!19692 (t!374149 lt!2156115) (h!67282 lt!2156115))))))

(declare-fun b!5267701 () Bool)

(assert (=> b!5267701 (= e!3276278 (noDuplicate!1242 (t!374149 lt!2156115)))))

(assert (= (and d!1695195 (not res!2234878)) b!5267700))

(assert (= (and b!5267700 res!2234879) b!5267701))

(declare-fun m!6307424 () Bool)

(assert (=> b!5267700 m!6307424))

(declare-fun m!6307426 () Bool)

(assert (=> b!5267701 m!6307426))

(assert (=> d!1695023 d!1695195))

(declare-fun d!1695197 () Bool)

(declare-fun e!3276285 () Bool)

(assert (=> d!1695197 e!3276285))

(declare-fun res!2234884 () Bool)

(assert (=> d!1695197 (=> (not res!2234884) (not e!3276285))))

(declare-fun res!2234885 () List!60958)

(assert (=> d!1695197 (= res!2234884 (noDuplicate!1242 res!2234885))))

(declare-fun e!3276286 () Bool)

(assert (=> d!1695197 e!3276286))

(assert (=> d!1695197 (= (choose!39294 z!1189) res!2234885)))

(declare-fun b!5267709 () Bool)

(declare-fun e!3276287 () Bool)

(declare-fun tp!1472399 () Bool)

(assert (=> b!5267709 (= e!3276287 tp!1472399)))

(declare-fun b!5267708 () Bool)

(declare-fun tp!1472398 () Bool)

(assert (=> b!5267708 (= e!3276286 (and (inv!80463 (h!67282 res!2234885)) e!3276287 tp!1472398))))

(declare-fun b!5267710 () Bool)

(assert (=> b!5267710 (= e!3276285 (= (content!10817 res!2234885) z!1189))))

(assert (= b!5267708 b!5267709))

(assert (= (and d!1695197 (is-Cons!60834 res!2234885)) b!5267708))

(assert (= (and d!1695197 res!2234884) b!5267710))

(declare-fun m!6307428 () Bool)

(assert (=> d!1695197 m!6307428))

(declare-fun m!6307430 () Bool)

(assert (=> b!5267708 m!6307430))

(declare-fun m!6307432 () Bool)

(assert (=> b!5267710 m!6307432))

(assert (=> d!1695023 d!1695197))

(declare-fun d!1695199 () Bool)

(assert (=> d!1695199 true))

(declare-fun setRes!33706 () Bool)

(assert (=> d!1695199 setRes!33706))

(declare-fun condSetEmpty!33706 () Bool)

(declare-fun res!2234888 () (Set Context!8540))

(assert (=> d!1695199 (= condSetEmpty!33706 (= res!2234888 (as set.empty (Set Context!8540))))))

(assert (=> d!1695199 (= (choose!39299 lt!2156035 lambda!265622) res!2234888)))

(declare-fun setIsEmpty!33706 () Bool)

(assert (=> setIsEmpty!33706 setRes!33706))

(declare-fun setElem!33706 () Context!8540)

(declare-fun e!3276290 () Bool)

(declare-fun tp!1472404 () Bool)

(declare-fun setNonEmpty!33706 () Bool)

(assert (=> setNonEmpty!33706 (= setRes!33706 (and tp!1472404 (inv!80463 setElem!33706) e!3276290))))

(declare-fun setRest!33706 () (Set Context!8540))

(assert (=> setNonEmpty!33706 (= res!2234888 (set.union (set.insert setElem!33706 (as set.empty (Set Context!8540))) setRest!33706))))

(declare-fun b!5267713 () Bool)

(declare-fun tp!1472405 () Bool)

(assert (=> b!5267713 (= e!3276290 tp!1472405)))

(assert (= (and d!1695199 condSetEmpty!33706) setIsEmpty!33706))

(assert (= (and d!1695199 (not condSetEmpty!33706)) setNonEmpty!33706))

(assert (= setNonEmpty!33706 b!5267713))

(declare-fun m!6307434 () Bool)

(assert (=> setNonEmpty!33706 m!6307434))

(assert (=> d!1695053 d!1695199))

(declare-fun d!1695201 () Bool)

(assert (=> d!1695201 (= ($colon$colon!1337 (exprs!4770 lt!2156038) (ite (or c!912087 c!912088) (regTwo!30284 (regTwo!30284 (regOne!30284 r!7292))) (regTwo!30284 (regOne!30284 r!7292)))) (Cons!60833 (ite (or c!912087 c!912088) (regTwo!30284 (regTwo!30284 (regOne!30284 r!7292))) (regTwo!30284 (regOne!30284 r!7292))) (exprs!4770 lt!2156038)))))

(assert (=> bm!373951 d!1695201))

(declare-fun d!1695203 () Bool)

(assert (=> d!1695203 (= (isEmpty!32785 s!2326) (is-Nil!60835 s!2326))))

(assert (=> bm!373925 d!1695203))

(declare-fun d!1695205 () Bool)

(assert (=> d!1695205 (= (isEmpty!32785 (t!374150 s!2326)) (is-Nil!60835 (t!374150 s!2326)))))

(assert (=> d!1695089 d!1695205))

(assert (=> b!5267136 d!1695103))

(declare-fun bm!374020 () Bool)

(declare-fun call!374025 () (Set Context!8540))

(assert (=> bm!374020 (= call!374025 (derivationStepZipperDown!334 (h!67281 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))))) (Context!8541 (t!374148 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343))))))))))) (h!67283 s!2326)))))

(declare-fun e!3276293 () (Set Context!8540))

(declare-fun b!5267714 () Bool)

(assert (=> b!5267714 (= e!3276293 (set.union call!374025 (derivationStepZipperUp!258 (Context!8541 (t!374148 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343))))))))))) (h!67283 s!2326))))))

(declare-fun b!5267715 () Bool)

(declare-fun e!3276292 () (Set Context!8540))

(assert (=> b!5267715 (= e!3276293 e!3276292)))

(declare-fun c!912202 () Bool)

(assert (=> b!5267715 (= c!912202 (is-Cons!60833 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))))))))

(declare-fun b!5267716 () Bool)

(declare-fun e!3276291 () Bool)

(assert (=> b!5267716 (= e!3276291 (nullable!5055 (h!67281 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343))))))))))))))

(declare-fun d!1695207 () Bool)

(declare-fun c!912203 () Bool)

(assert (=> d!1695207 (= c!912203 e!3276291)))

(declare-fun res!2234889 () Bool)

(assert (=> d!1695207 (=> (not res!2234889) (not e!3276291))))

(assert (=> d!1695207 (= res!2234889 (is-Cons!60833 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))))))))

(assert (=> d!1695207 (= (derivationStepZipperUp!258 (Context!8541 (t!374148 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))) (h!67283 s!2326)) e!3276293)))

(declare-fun b!5267717 () Bool)

(assert (=> b!5267717 (= e!3276292 (as set.empty (Set Context!8540)))))

(declare-fun b!5267718 () Bool)

(assert (=> b!5267718 (= e!3276292 call!374025)))

(assert (= (and d!1695207 res!2234889) b!5267716))

(assert (= (and d!1695207 c!912203) b!5267714))

(assert (= (and d!1695207 (not c!912203)) b!5267715))

(assert (= (and b!5267715 c!912202) b!5267718))

(assert (= (and b!5267715 (not c!912202)) b!5267717))

(assert (= (or b!5267714 b!5267718) bm!374020))

(declare-fun m!6307436 () Bool)

(assert (=> bm!374020 m!6307436))

(declare-fun m!6307438 () Bool)

(assert (=> b!5267714 m!6307438))

(declare-fun m!6307440 () Bool)

(assert (=> b!5267716 m!6307440))

(assert (=> b!5267143 d!1695207))

(declare-fun d!1695209 () Bool)

(assert (=> d!1695209 (= (isEmpty!32781 (t!374148 (unfocusZipperList!328 zl!343))) (is-Nil!60833 (t!374148 (unfocusZipperList!328 zl!343))))))

(assert (=> b!5267220 d!1695209))

(declare-fun d!1695211 () Bool)

(assert (=> d!1695211 (= (nullable!5055 (h!67281 (exprs!4770 lt!2156038))) (nullableFct!1439 (h!67281 (exprs!4770 lt!2156038))))))

(declare-fun bs!1220693 () Bool)

(assert (= bs!1220693 d!1695211))

(declare-fun m!6307442 () Bool)

(assert (=> bs!1220693 m!6307442))

(assert (=> b!5267183 d!1695211))

(declare-fun bs!1220694 () Bool)

(declare-fun d!1695213 () Bool)

(assert (= bs!1220694 (and d!1695213 d!1695095)))

(declare-fun lambda!265692 () Int)

(assert (=> bs!1220694 (= lambda!265692 lambda!265660)))

(declare-fun bs!1220695 () Bool)

(assert (= bs!1220695 (and d!1695213 d!1695097)))

(assert (=> bs!1220695 (= lambda!265692 lambda!265663)))

(declare-fun bs!1220696 () Bool)

(assert (= bs!1220696 (and d!1695213 d!1695027)))

(assert (=> bs!1220696 (= lambda!265692 lambda!265638)))

(declare-fun bs!1220697 () Bool)

(assert (= bs!1220697 (and d!1695213 d!1695069)))

(assert (=> bs!1220697 (= lambda!265692 lambda!265656)))

(declare-fun bs!1220698 () Bool)

(assert (= bs!1220698 (and d!1695213 d!1695073)))

(assert (=> bs!1220698 (= lambda!265692 lambda!265657)))

(declare-fun b!5267719 () Bool)

(declare-fun e!3276299 () Regex!14886)

(assert (=> b!5267719 (= e!3276299 (Union!14886 (h!67281 (t!374148 (unfocusZipperList!328 zl!343))) (generalisedUnion!815 (t!374148 (t!374148 (unfocusZipperList!328 zl!343))))))))

(declare-fun b!5267720 () Bool)

(declare-fun e!3276296 () Bool)

(declare-fun lt!2156201 () Regex!14886)

(assert (=> b!5267720 (= e!3276296 (isUnion!262 lt!2156201))))

(declare-fun b!5267721 () Bool)

(assert (=> b!5267721 (= e!3276296 (= lt!2156201 (head!11293 (t!374148 (unfocusZipperList!328 zl!343)))))))

(declare-fun b!5267722 () Bool)

(declare-fun e!3276297 () Regex!14886)

(assert (=> b!5267722 (= e!3276297 (h!67281 (t!374148 (unfocusZipperList!328 zl!343))))))

(declare-fun b!5267724 () Bool)

(assert (=> b!5267724 (= e!3276299 EmptyLang!14886)))

(declare-fun b!5267725 () Bool)

(declare-fun e!3276294 () Bool)

(assert (=> b!5267725 (= e!3276294 (isEmptyLang!830 lt!2156201))))

(declare-fun b!5267726 () Bool)

(assert (=> b!5267726 (= e!3276294 e!3276296)))

(declare-fun c!912204 () Bool)

(assert (=> b!5267726 (= c!912204 (isEmpty!32781 (tail!10390 (t!374148 (unfocusZipperList!328 zl!343)))))))

(declare-fun b!5267727 () Bool)

(declare-fun e!3276295 () Bool)

(assert (=> b!5267727 (= e!3276295 e!3276294)))

(declare-fun c!912207 () Bool)

(assert (=> b!5267727 (= c!912207 (isEmpty!32781 (t!374148 (unfocusZipperList!328 zl!343))))))

(declare-fun b!5267728 () Bool)

(assert (=> b!5267728 (= e!3276297 e!3276299)))

(declare-fun c!912205 () Bool)

(assert (=> b!5267728 (= c!912205 (is-Cons!60833 (t!374148 (unfocusZipperList!328 zl!343))))))

(declare-fun b!5267723 () Bool)

(declare-fun e!3276298 () Bool)

(assert (=> b!5267723 (= e!3276298 (isEmpty!32781 (t!374148 (t!374148 (unfocusZipperList!328 zl!343)))))))

(assert (=> d!1695213 e!3276295))

(declare-fun res!2234891 () Bool)

(assert (=> d!1695213 (=> (not res!2234891) (not e!3276295))))

(assert (=> d!1695213 (= res!2234891 (validRegex!6622 lt!2156201))))

(assert (=> d!1695213 (= lt!2156201 e!3276297)))

(declare-fun c!912206 () Bool)

(assert (=> d!1695213 (= c!912206 e!3276298)))

(declare-fun res!2234890 () Bool)

(assert (=> d!1695213 (=> (not res!2234890) (not e!3276298))))

(assert (=> d!1695213 (= res!2234890 (is-Cons!60833 (t!374148 (unfocusZipperList!328 zl!343))))))

(assert (=> d!1695213 (forall!14296 (t!374148 (unfocusZipperList!328 zl!343)) lambda!265692)))

(assert (=> d!1695213 (= (generalisedUnion!815 (t!374148 (unfocusZipperList!328 zl!343))) lt!2156201)))

(assert (= (and d!1695213 res!2234890) b!5267723))

(assert (= (and d!1695213 c!912206) b!5267722))

(assert (= (and d!1695213 (not c!912206)) b!5267728))

(assert (= (and b!5267728 c!912205) b!5267719))

(assert (= (and b!5267728 (not c!912205)) b!5267724))

(assert (= (and d!1695213 res!2234891) b!5267727))

(assert (= (and b!5267727 c!912207) b!5267725))

(assert (= (and b!5267727 (not c!912207)) b!5267726))

(assert (= (and b!5267726 c!912204) b!5267721))

(assert (= (and b!5267726 (not c!912204)) b!5267720))

(declare-fun m!6307444 () Bool)

(assert (=> b!5267719 m!6307444))

(declare-fun m!6307446 () Bool)

(assert (=> b!5267721 m!6307446))

(declare-fun m!6307448 () Bool)

(assert (=> b!5267723 m!6307448))

(declare-fun m!6307450 () Bool)

(assert (=> b!5267726 m!6307450))

(assert (=> b!5267726 m!6307450))

(declare-fun m!6307452 () Bool)

(assert (=> b!5267726 m!6307452))

(declare-fun m!6307454 () Bool)

(assert (=> d!1695213 m!6307454))

(declare-fun m!6307456 () Bool)

(assert (=> d!1695213 m!6307456))

(declare-fun m!6307458 () Bool)

(assert (=> b!5267720 m!6307458))

(assert (=> b!5267727 m!6307134))

(declare-fun m!6307460 () Bool)

(assert (=> b!5267725 m!6307460))

(assert (=> b!5267216 d!1695213))

(declare-fun b!5267729 () Bool)

(declare-fun e!3276304 () (Set Context!8540))

(assert (=> b!5267729 (= e!3276304 (as set.empty (Set Context!8540)))))

(declare-fun b!5267730 () Bool)

(declare-fun e!3276300 () (Set Context!8540))

(declare-fun call!374026 () (Set Context!8540))

(assert (=> b!5267730 (= e!3276300 call!374026)))

(declare-fun b!5267731 () Bool)

(declare-fun e!3276301 () (Set Context!8540))

(declare-fun call!374028 () (Set Context!8540))

(declare-fun call!374031 () (Set Context!8540))

(assert (=> b!5267731 (= e!3276301 (set.union call!374028 call!374031))))

(declare-fun b!5267732 () Bool)

(declare-fun c!912209 () Bool)

(assert (=> b!5267732 (= c!912209 (is-Star!14886 (ite c!912063 (regTwo!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))))))))

(assert (=> b!5267732 (= e!3276300 e!3276304)))

(declare-fun b!5267733 () Bool)

(declare-fun c!912210 () Bool)

(declare-fun e!3276303 () Bool)

(assert (=> b!5267733 (= c!912210 e!3276303)))

(declare-fun res!2234892 () Bool)

(assert (=> b!5267733 (=> (not res!2234892) (not e!3276303))))

(assert (=> b!5267733 (= res!2234892 (is-Concat!23731 (ite c!912063 (regTwo!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))))))))

(declare-fun e!3276302 () (Set Context!8540))

(assert (=> b!5267733 (= e!3276302 e!3276301)))

(declare-fun call!374030 () List!60957)

(declare-fun bm!374021 () Bool)

(declare-fun c!912211 () Bool)

(assert (=> bm!374021 (= call!374030 ($colon$colon!1337 (exprs!4770 (ite c!912063 lt!2156038 (Context!8541 call!373952))) (ite (or c!912210 c!912211) (regTwo!30284 (ite c!912063 (regTwo!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))))) (ite c!912063 (regTwo!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343))))))))))

(declare-fun b!5267734 () Bool)

(assert (=> b!5267734 (= e!3276301 e!3276300)))

(assert (=> b!5267734 (= c!912211 (is-Concat!23731 (ite c!912063 (regTwo!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))))))))

(declare-fun b!5267735 () Bool)

(assert (=> b!5267735 (= e!3276303 (nullable!5055 (regOne!30284 (ite c!912063 (regTwo!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343))))))))))

(declare-fun b!5267736 () Bool)

(declare-fun call!374027 () (Set Context!8540))

(assert (=> b!5267736 (= e!3276302 (set.union call!374027 call!374028))))

(declare-fun c!912212 () Bool)

(declare-fun bm!374022 () Bool)

(declare-fun call!374029 () List!60957)

(assert (=> bm!374022 (= call!374027 (derivationStepZipperDown!334 (ite c!912212 (regOne!30285 (ite c!912063 (regTwo!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))))) (ite c!912210 (regTwo!30284 (ite c!912063 (regTwo!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))))) (ite c!912211 (regOne!30284 (ite c!912063 (regTwo!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))))) (reg!15215 (ite c!912063 (regTwo!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343))))))))) (ite (or c!912212 c!912210) (ite c!912063 lt!2156038 (Context!8541 call!373952)) (Context!8541 call!374029)) (h!67283 s!2326)))))

(declare-fun b!5267737 () Bool)

(declare-fun e!3276305 () (Set Context!8540))

(assert (=> b!5267737 (= e!3276305 e!3276302)))

(assert (=> b!5267737 (= c!912212 (is-Union!14886 (ite c!912063 (regTwo!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))))))))

(declare-fun bm!374023 () Bool)

(assert (=> bm!374023 (= call!374026 call!374031)))

(declare-fun c!912208 () Bool)

(declare-fun d!1695215 () Bool)

(assert (=> d!1695215 (= c!912208 (and (is-ElementMatch!14886 (ite c!912063 (regTwo!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))))) (= (c!911978 (ite c!912063 (regTwo!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))))) (h!67283 s!2326))))))

(assert (=> d!1695215 (= (derivationStepZipperDown!334 (ite c!912063 (regTwo!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343))))) (ite c!912063 lt!2156038 (Context!8541 call!373952)) (h!67283 s!2326)) e!3276305)))

(declare-fun b!5267738 () Bool)

(assert (=> b!5267738 (= e!3276305 (set.insert (ite c!912063 lt!2156038 (Context!8541 call!373952)) (as set.empty (Set Context!8540))))))

(declare-fun bm!374024 () Bool)

(assert (=> bm!374024 (= call!374029 call!374030)))

(declare-fun bm!374025 () Bool)

(assert (=> bm!374025 (= call!374028 (derivationStepZipperDown!334 (ite c!912212 (regTwo!30285 (ite c!912063 (regTwo!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))))) (regOne!30284 (ite c!912063 (regTwo!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343))))))) (ite c!912212 (ite c!912063 lt!2156038 (Context!8541 call!373952)) (Context!8541 call!374030)) (h!67283 s!2326)))))

(declare-fun bm!374026 () Bool)

(assert (=> bm!374026 (= call!374031 call!374027)))

(declare-fun b!5267739 () Bool)

(assert (=> b!5267739 (= e!3276304 call!374026)))

(assert (= (and d!1695215 c!912208) b!5267738))

(assert (= (and d!1695215 (not c!912208)) b!5267737))

(assert (= (and b!5267737 c!912212) b!5267736))

(assert (= (and b!5267737 (not c!912212)) b!5267733))

(assert (= (and b!5267733 res!2234892) b!5267735))

(assert (= (and b!5267733 c!912210) b!5267731))

(assert (= (and b!5267733 (not c!912210)) b!5267734))

(assert (= (and b!5267734 c!912211) b!5267730))

(assert (= (and b!5267734 (not c!912211)) b!5267732))

(assert (= (and b!5267732 c!912209) b!5267739))

(assert (= (and b!5267732 (not c!912209)) b!5267729))

(assert (= (or b!5267730 b!5267739) bm!374024))

(assert (= (or b!5267730 b!5267739) bm!374023))

(assert (= (or b!5267731 bm!374024) bm!374021))

(assert (= (or b!5267731 bm!374023) bm!374026))

(assert (= (or b!5267736 b!5267731) bm!374025))

(assert (= (or b!5267736 bm!374026) bm!374022))

(declare-fun m!6307462 () Bool)

(assert (=> bm!374022 m!6307462))

(declare-fun m!6307464 () Bool)

(assert (=> bm!374025 m!6307464))

(declare-fun m!6307466 () Bool)

(assert (=> bm!374021 m!6307466))

(declare-fun m!6307468 () Bool)

(assert (=> b!5267735 m!6307468))

(declare-fun m!6307470 () Bool)

(assert (=> b!5267738 m!6307470))

(assert (=> bm!373947 d!1695215))

(assert (=> b!5267188 d!1695075))

(declare-fun b!5267740 () Bool)

(declare-fun e!3276310 () (Set Context!8540))

(assert (=> b!5267740 (= e!3276310 (as set.empty (Set Context!8540)))))

(declare-fun b!5267741 () Bool)

(declare-fun e!3276306 () (Set Context!8540))

(declare-fun call!374032 () (Set Context!8540))

(assert (=> b!5267741 (= e!3276306 call!374032)))

(declare-fun b!5267742 () Bool)

(declare-fun e!3276307 () (Set Context!8540))

(declare-fun call!374034 () (Set Context!8540))

(declare-fun call!374037 () (Set Context!8540))

(assert (=> b!5267742 (= e!3276307 (set.union call!374034 call!374037))))

(declare-fun b!5267743 () Bool)

(declare-fun c!912214 () Bool)

(assert (=> b!5267743 (= c!912214 (is-Star!14886 (ite c!912094 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))))))

(assert (=> b!5267743 (= e!3276306 e!3276310)))

(declare-fun b!5267744 () Bool)

(declare-fun c!912215 () Bool)

(declare-fun e!3276309 () Bool)

(assert (=> b!5267744 (= c!912215 e!3276309)))

(declare-fun res!2234893 () Bool)

(assert (=> b!5267744 (=> (not res!2234893) (not e!3276309))))

(assert (=> b!5267744 (= res!2234893 (is-Concat!23731 (ite c!912094 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))))))

(declare-fun e!3276308 () (Set Context!8540))

(assert (=> b!5267744 (= e!3276308 e!3276307)))

(declare-fun c!912216 () Bool)

(declare-fun bm!374027 () Bool)

(declare-fun call!374036 () List!60957)

(assert (=> bm!374027 (= call!374036 ($colon$colon!1337 (exprs!4770 (ite c!912094 (Context!8541 lt!2156033) (Context!8541 call!373966))) (ite (or c!912215 c!912216) (regTwo!30284 (ite c!912094 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))) (ite c!912094 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292)))))))))

(declare-fun b!5267745 () Bool)

(assert (=> b!5267745 (= e!3276307 e!3276306)))

(assert (=> b!5267745 (= c!912216 (is-Concat!23731 (ite c!912094 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))))))

(declare-fun b!5267746 () Bool)

(assert (=> b!5267746 (= e!3276309 (nullable!5055 (regOne!30284 (ite c!912094 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292)))))))))

(declare-fun b!5267747 () Bool)

(declare-fun call!374033 () (Set Context!8540))

(assert (=> b!5267747 (= e!3276308 (set.union call!374033 call!374034))))

(declare-fun call!374035 () List!60957)

(declare-fun c!912217 () Bool)

(declare-fun bm!374028 () Bool)

(assert (=> bm!374028 (= call!374033 (derivationStepZipperDown!334 (ite c!912217 (regOne!30285 (ite c!912094 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))) (ite c!912215 (regTwo!30284 (ite c!912094 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))) (ite c!912216 (regOne!30284 (ite c!912094 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))) (reg!15215 (ite c!912094 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292)))))))) (ite (or c!912217 c!912215) (ite c!912094 (Context!8541 lt!2156033) (Context!8541 call!373966)) (Context!8541 call!374035)) (h!67283 s!2326)))))

(declare-fun b!5267748 () Bool)

(declare-fun e!3276311 () (Set Context!8540))

(assert (=> b!5267748 (= e!3276311 e!3276308)))

(assert (=> b!5267748 (= c!912217 (is-Union!14886 (ite c!912094 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))))))

(declare-fun bm!374029 () Bool)

(assert (=> bm!374029 (= call!374032 call!374037)))

(declare-fun d!1695217 () Bool)

(declare-fun c!912213 () Bool)

(assert (=> d!1695217 (= c!912213 (and (is-ElementMatch!14886 (ite c!912094 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))) (= (c!911978 (ite c!912094 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))) (h!67283 s!2326))))))

(assert (=> d!1695217 (= (derivationStepZipperDown!334 (ite c!912094 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292)))) (ite c!912094 (Context!8541 lt!2156033) (Context!8541 call!373966)) (h!67283 s!2326)) e!3276311)))

(declare-fun b!5267749 () Bool)

(assert (=> b!5267749 (= e!3276311 (set.insert (ite c!912094 (Context!8541 lt!2156033) (Context!8541 call!373966)) (as set.empty (Set Context!8540))))))

(declare-fun bm!374030 () Bool)

(assert (=> bm!374030 (= call!374035 call!374036)))

(declare-fun bm!374031 () Bool)

(assert (=> bm!374031 (= call!374034 (derivationStepZipperDown!334 (ite c!912217 (regTwo!30285 (ite c!912094 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))) (regOne!30284 (ite c!912094 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292)))))) (ite c!912217 (ite c!912094 (Context!8541 lt!2156033) (Context!8541 call!373966)) (Context!8541 call!374036)) (h!67283 s!2326)))))

(declare-fun bm!374032 () Bool)

(assert (=> bm!374032 (= call!374037 call!374033)))

(declare-fun b!5267750 () Bool)

(assert (=> b!5267750 (= e!3276310 call!374032)))

(assert (= (and d!1695217 c!912213) b!5267749))

(assert (= (and d!1695217 (not c!912213)) b!5267748))

(assert (= (and b!5267748 c!912217) b!5267747))

(assert (= (and b!5267748 (not c!912217)) b!5267744))

(assert (= (and b!5267744 res!2234893) b!5267746))

(assert (= (and b!5267744 c!912215) b!5267742))

(assert (= (and b!5267744 (not c!912215)) b!5267745))

(assert (= (and b!5267745 c!912216) b!5267741))

(assert (= (and b!5267745 (not c!912216)) b!5267743))

(assert (= (and b!5267743 c!912214) b!5267750))

(assert (= (and b!5267743 (not c!912214)) b!5267740))

(assert (= (or b!5267741 b!5267750) bm!374030))

(assert (= (or b!5267741 b!5267750) bm!374029))

(assert (= (or b!5267742 bm!374030) bm!374027))

(assert (= (or b!5267742 bm!374029) bm!374032))

(assert (= (or b!5267747 b!5267742) bm!374031))

(assert (= (or b!5267747 bm!374032) bm!374028))

(declare-fun m!6307472 () Bool)

(assert (=> bm!374028 m!6307472))

(declare-fun m!6307474 () Bool)

(assert (=> bm!374031 m!6307474))

(declare-fun m!6307476 () Bool)

(assert (=> bm!374027 m!6307476))

(declare-fun m!6307478 () Bool)

(assert (=> b!5267746 m!6307478))

(declare-fun m!6307480 () Bool)

(assert (=> b!5267749 m!6307480))

(assert (=> bm!373961 d!1695217))

(assert (=> d!1695091 d!1695205))

(declare-fun b!5267751 () Bool)

(declare-fun e!3276316 () (Set Context!8540))

(assert (=> b!5267751 (= e!3276316 (as set.empty (Set Context!8540)))))

(declare-fun b!5267752 () Bool)

(declare-fun e!3276312 () (Set Context!8540))

(declare-fun call!374038 () (Set Context!8540))

(assert (=> b!5267752 (= e!3276312 call!374038)))

(declare-fun b!5267753 () Bool)

(declare-fun e!3276313 () (Set Context!8540))

(declare-fun call!374040 () (Set Context!8540))

(declare-fun call!374043 () (Set Context!8540))

(assert (=> b!5267753 (= e!3276313 (set.union call!374040 call!374043))))

(declare-fun b!5267754 () Bool)

(declare-fun c!912219 () Bool)

(assert (=> b!5267754 (= c!912219 (is-Star!14886 (h!67281 (exprs!4770 lt!2156034))))))

(assert (=> b!5267754 (= e!3276312 e!3276316)))

(declare-fun b!5267755 () Bool)

(declare-fun c!912220 () Bool)

(declare-fun e!3276315 () Bool)

(assert (=> b!5267755 (= c!912220 e!3276315)))

(declare-fun res!2234894 () Bool)

(assert (=> b!5267755 (=> (not res!2234894) (not e!3276315))))

(assert (=> b!5267755 (= res!2234894 (is-Concat!23731 (h!67281 (exprs!4770 lt!2156034))))))

(declare-fun e!3276314 () (Set Context!8540))

(assert (=> b!5267755 (= e!3276314 e!3276313)))

(declare-fun c!912221 () Bool)

(declare-fun bm!374033 () Bool)

(declare-fun call!374042 () List!60957)

(assert (=> bm!374033 (= call!374042 ($colon$colon!1337 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 lt!2156034)))) (ite (or c!912220 c!912221) (regTwo!30284 (h!67281 (exprs!4770 lt!2156034))) (h!67281 (exprs!4770 lt!2156034)))))))

(declare-fun b!5267756 () Bool)

(assert (=> b!5267756 (= e!3276313 e!3276312)))

(assert (=> b!5267756 (= c!912221 (is-Concat!23731 (h!67281 (exprs!4770 lt!2156034))))))

(declare-fun b!5267757 () Bool)

(assert (=> b!5267757 (= e!3276315 (nullable!5055 (regOne!30284 (h!67281 (exprs!4770 lt!2156034)))))))

(declare-fun b!5267758 () Bool)

(declare-fun call!374039 () (Set Context!8540))

(assert (=> b!5267758 (= e!3276314 (set.union call!374039 call!374040))))

(declare-fun call!374041 () List!60957)

(declare-fun c!912222 () Bool)

(declare-fun bm!374034 () Bool)

(assert (=> bm!374034 (= call!374039 (derivationStepZipperDown!334 (ite c!912222 (regOne!30285 (h!67281 (exprs!4770 lt!2156034))) (ite c!912220 (regTwo!30284 (h!67281 (exprs!4770 lt!2156034))) (ite c!912221 (regOne!30284 (h!67281 (exprs!4770 lt!2156034))) (reg!15215 (h!67281 (exprs!4770 lt!2156034)))))) (ite (or c!912222 c!912220) (Context!8541 (t!374148 (exprs!4770 lt!2156034))) (Context!8541 call!374041)) (h!67283 s!2326)))))

(declare-fun b!5267759 () Bool)

(declare-fun e!3276317 () (Set Context!8540))

(assert (=> b!5267759 (= e!3276317 e!3276314)))

(assert (=> b!5267759 (= c!912222 (is-Union!14886 (h!67281 (exprs!4770 lt!2156034))))))

(declare-fun bm!374035 () Bool)

(assert (=> bm!374035 (= call!374038 call!374043)))

(declare-fun d!1695219 () Bool)

(declare-fun c!912218 () Bool)

(assert (=> d!1695219 (= c!912218 (and (is-ElementMatch!14886 (h!67281 (exprs!4770 lt!2156034))) (= (c!911978 (h!67281 (exprs!4770 lt!2156034))) (h!67283 s!2326))))))

(assert (=> d!1695219 (= (derivationStepZipperDown!334 (h!67281 (exprs!4770 lt!2156034)) (Context!8541 (t!374148 (exprs!4770 lt!2156034))) (h!67283 s!2326)) e!3276317)))

(declare-fun b!5267760 () Bool)

(assert (=> b!5267760 (= e!3276317 (set.insert (Context!8541 (t!374148 (exprs!4770 lt!2156034))) (as set.empty (Set Context!8540))))))

(declare-fun bm!374036 () Bool)

(assert (=> bm!374036 (= call!374041 call!374042)))

(declare-fun bm!374037 () Bool)

(assert (=> bm!374037 (= call!374040 (derivationStepZipperDown!334 (ite c!912222 (regTwo!30285 (h!67281 (exprs!4770 lt!2156034))) (regOne!30284 (h!67281 (exprs!4770 lt!2156034)))) (ite c!912222 (Context!8541 (t!374148 (exprs!4770 lt!2156034))) (Context!8541 call!374042)) (h!67283 s!2326)))))

(declare-fun bm!374038 () Bool)

(assert (=> bm!374038 (= call!374043 call!374039)))

(declare-fun b!5267761 () Bool)

(assert (=> b!5267761 (= e!3276316 call!374038)))

(assert (= (and d!1695219 c!912218) b!5267760))

(assert (= (and d!1695219 (not c!912218)) b!5267759))

(assert (= (and b!5267759 c!912222) b!5267758))

(assert (= (and b!5267759 (not c!912222)) b!5267755))

(assert (= (and b!5267755 res!2234894) b!5267757))

(assert (= (and b!5267755 c!912220) b!5267753))

(assert (= (and b!5267755 (not c!912220)) b!5267756))

(assert (= (and b!5267756 c!912221) b!5267752))

(assert (= (and b!5267756 (not c!912221)) b!5267754))

(assert (= (and b!5267754 c!912219) b!5267761))

(assert (= (and b!5267754 (not c!912219)) b!5267751))

(assert (= (or b!5267752 b!5267761) bm!374036))

(assert (= (or b!5267752 b!5267761) bm!374035))

(assert (= (or b!5267753 bm!374036) bm!374033))

(assert (= (or b!5267753 bm!374035) bm!374038))

(assert (= (or b!5267758 b!5267753) bm!374037))

(assert (= (or b!5267758 bm!374038) bm!374034))

(declare-fun m!6307482 () Bool)

(assert (=> bm!374034 m!6307482))

(declare-fun m!6307484 () Bool)

(assert (=> bm!374037 m!6307484))

(declare-fun m!6307486 () Bool)

(assert (=> bm!374033 m!6307486))

(declare-fun m!6307488 () Bool)

(assert (=> b!5267757 m!6307488))

(declare-fun m!6307490 () Bool)

(assert (=> b!5267760 m!6307490))

(assert (=> bm!373920 d!1695219))

(declare-fun b!5267762 () Bool)

(declare-fun e!3276322 () Bool)

(declare-fun e!3276324 () Bool)

(assert (=> b!5267762 (= e!3276322 e!3276324)))

(declare-fun c!912224 () Bool)

(assert (=> b!5267762 (= c!912224 (is-EmptyLang!14886 (regOne!30284 r!7292)))))

(declare-fun b!5267763 () Bool)

(declare-fun e!3276319 () Bool)

(assert (=> b!5267763 (= e!3276319 (nullable!5055 (regOne!30284 r!7292)))))

(declare-fun b!5267764 () Bool)

(declare-fun res!2234899 () Bool)

(declare-fun e!3276320 () Bool)

(assert (=> b!5267764 (=> (not res!2234899) (not e!3276320))))

(assert (=> b!5267764 (= res!2234899 (isEmpty!32785 (tail!10389 (_1!35388 (get!20916 lt!2156122)))))))

(declare-fun b!5267765 () Bool)

(declare-fun e!3276323 () Bool)

(assert (=> b!5267765 (= e!3276323 (not (= (head!11292 (_1!35388 (get!20916 lt!2156122))) (c!911978 (regOne!30284 r!7292)))))))

(declare-fun b!5267766 () Bool)

(declare-fun res!2234898 () Bool)

(assert (=> b!5267766 (=> (not res!2234898) (not e!3276320))))

(declare-fun call!374044 () Bool)

(assert (=> b!5267766 (= res!2234898 (not call!374044))))

(declare-fun b!5267767 () Bool)

(declare-fun res!2234902 () Bool)

(declare-fun e!3276318 () Bool)

(assert (=> b!5267767 (=> res!2234902 e!3276318)))

(assert (=> b!5267767 (= res!2234902 (not (is-ElementMatch!14886 (regOne!30284 r!7292))))))

(assert (=> b!5267767 (= e!3276324 e!3276318)))

(declare-fun b!5267768 () Bool)

(assert (=> b!5267768 (= e!3276320 (= (head!11292 (_1!35388 (get!20916 lt!2156122))) (c!911978 (regOne!30284 r!7292))))))

(declare-fun b!5267769 () Bool)

(assert (=> b!5267769 (= e!3276319 (matchR!7071 (derivativeStep!4108 (regOne!30284 r!7292) (head!11292 (_1!35388 (get!20916 lt!2156122)))) (tail!10389 (_1!35388 (get!20916 lt!2156122)))))))

(declare-fun d!1695221 () Bool)

(assert (=> d!1695221 e!3276322))

(declare-fun c!912225 () Bool)

(assert (=> d!1695221 (= c!912225 (is-EmptyExpr!14886 (regOne!30284 r!7292)))))

(declare-fun lt!2156202 () Bool)

(assert (=> d!1695221 (= lt!2156202 e!3276319)))

(declare-fun c!912223 () Bool)

(assert (=> d!1695221 (= c!912223 (isEmpty!32785 (_1!35388 (get!20916 lt!2156122))))))

(assert (=> d!1695221 (validRegex!6622 (regOne!30284 r!7292))))

(assert (=> d!1695221 (= (matchR!7071 (regOne!30284 r!7292) (_1!35388 (get!20916 lt!2156122))) lt!2156202)))

(declare-fun b!5267770 () Bool)

(declare-fun res!2234901 () Bool)

(assert (=> b!5267770 (=> res!2234901 e!3276318)))

(assert (=> b!5267770 (= res!2234901 e!3276320)))

(declare-fun res!2234900 () Bool)

(assert (=> b!5267770 (=> (not res!2234900) (not e!3276320))))

(assert (=> b!5267770 (= res!2234900 lt!2156202)))

(declare-fun bm!374039 () Bool)

(assert (=> bm!374039 (= call!374044 (isEmpty!32785 (_1!35388 (get!20916 lt!2156122))))))

(declare-fun b!5267771 () Bool)

(assert (=> b!5267771 (= e!3276324 (not lt!2156202))))

(declare-fun b!5267772 () Bool)

(assert (=> b!5267772 (= e!3276322 (= lt!2156202 call!374044))))

(declare-fun b!5267773 () Bool)

(declare-fun e!3276321 () Bool)

(assert (=> b!5267773 (= e!3276318 e!3276321)))

(declare-fun res!2234895 () Bool)

(assert (=> b!5267773 (=> (not res!2234895) (not e!3276321))))

(assert (=> b!5267773 (= res!2234895 (not lt!2156202))))

(declare-fun b!5267774 () Bool)

(declare-fun res!2234897 () Bool)

(assert (=> b!5267774 (=> res!2234897 e!3276323)))

(assert (=> b!5267774 (= res!2234897 (not (isEmpty!32785 (tail!10389 (_1!35388 (get!20916 lt!2156122))))))))

(declare-fun b!5267775 () Bool)

(assert (=> b!5267775 (= e!3276321 e!3276323)))

(declare-fun res!2234896 () Bool)

(assert (=> b!5267775 (=> res!2234896 e!3276323)))

(assert (=> b!5267775 (= res!2234896 call!374044)))

(assert (= (and d!1695221 c!912223) b!5267763))

(assert (= (and d!1695221 (not c!912223)) b!5267769))

(assert (= (and d!1695221 c!912225) b!5267772))

(assert (= (and d!1695221 (not c!912225)) b!5267762))

(assert (= (and b!5267762 c!912224) b!5267771))

(assert (= (and b!5267762 (not c!912224)) b!5267767))

(assert (= (and b!5267767 (not res!2234902)) b!5267770))

(assert (= (and b!5267770 res!2234900) b!5267766))

(assert (= (and b!5267766 res!2234898) b!5267764))

(assert (= (and b!5267764 res!2234899) b!5267768))

(assert (= (and b!5267770 (not res!2234901)) b!5267773))

(assert (= (and b!5267773 res!2234895) b!5267775))

(assert (= (and b!5267775 (not res!2234896)) b!5267774))

(assert (= (and b!5267774 (not res!2234897)) b!5267765))

(assert (= (or b!5267772 b!5267766 b!5267775) bm!374039))

(declare-fun m!6307492 () Bool)

(assert (=> b!5267765 m!6307492))

(declare-fun m!6307494 () Bool)

(assert (=> d!1695221 m!6307494))

(assert (=> d!1695221 m!6306974))

(assert (=> b!5267769 m!6307492))

(assert (=> b!5267769 m!6307492))

(declare-fun m!6307496 () Bool)

(assert (=> b!5267769 m!6307496))

(declare-fun m!6307498 () Bool)

(assert (=> b!5267769 m!6307498))

(assert (=> b!5267769 m!6307496))

(assert (=> b!5267769 m!6307498))

(declare-fun m!6307500 () Bool)

(assert (=> b!5267769 m!6307500))

(assert (=> bm!374039 m!6307494))

(declare-fun m!6307502 () Bool)

(assert (=> b!5267763 m!6307502))

(assert (=> b!5267764 m!6307498))

(assert (=> b!5267764 m!6307498))

(declare-fun m!6307504 () Bool)

(assert (=> b!5267764 m!6307504))

(assert (=> b!5267768 m!6307492))

(assert (=> b!5267774 m!6307498))

(assert (=> b!5267774 m!6307498))

(assert (=> b!5267774 m!6307504))

(assert (=> b!5266978 d!1695221))

(declare-fun d!1695223 () Bool)

(assert (=> d!1695223 (= (get!20916 lt!2156122) (v!51025 lt!2156122))))

(assert (=> b!5266978 d!1695223))

(declare-fun b!5267776 () Bool)

(declare-fun e!3276329 () (Set Context!8540))

(assert (=> b!5267776 (= e!3276329 (as set.empty (Set Context!8540)))))

(declare-fun b!5267777 () Bool)

(declare-fun e!3276325 () (Set Context!8540))

(declare-fun call!374045 () (Set Context!8540))

(assert (=> b!5267777 (= e!3276325 call!374045)))

(declare-fun b!5267778 () Bool)

(declare-fun e!3276326 () (Set Context!8540))

(declare-fun call!374047 () (Set Context!8540))

(declare-fun call!374050 () (Set Context!8540))

(assert (=> b!5267778 (= e!3276326 (set.union call!374047 call!374050))))

(declare-fun c!912227 () Bool)

(declare-fun b!5267779 () Bool)

(assert (=> b!5267779 (= c!912227 (is-Star!14886 (ite c!912063 (regOne!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912061 (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912062 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (reg!15215 (h!67281 (exprs!4770 (h!67282 zl!343)))))))))))

(assert (=> b!5267779 (= e!3276325 e!3276329)))

(declare-fun b!5267780 () Bool)

(declare-fun c!912228 () Bool)

(declare-fun e!3276328 () Bool)

(assert (=> b!5267780 (= c!912228 e!3276328)))

(declare-fun res!2234903 () Bool)

(assert (=> b!5267780 (=> (not res!2234903) (not e!3276328))))

(assert (=> b!5267780 (= res!2234903 (is-Concat!23731 (ite c!912063 (regOne!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912061 (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912062 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (reg!15215 (h!67281 (exprs!4770 (h!67282 zl!343)))))))))))

(declare-fun e!3276327 () (Set Context!8540))

(assert (=> b!5267780 (= e!3276327 e!3276326)))

(declare-fun c!912229 () Bool)

(declare-fun bm!374040 () Bool)

(declare-fun call!374049 () List!60957)

(assert (=> bm!374040 (= call!374049 ($colon$colon!1337 (exprs!4770 (ite (or c!912063 c!912061) lt!2156038 (Context!8541 call!373951))) (ite (or c!912228 c!912229) (regTwo!30284 (ite c!912063 (regOne!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912061 (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912062 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (reg!15215 (h!67281 (exprs!4770 (h!67282 zl!343)))))))) (ite c!912063 (regOne!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912061 (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912062 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (reg!15215 (h!67281 (exprs!4770 (h!67282 zl!343))))))))))))

(declare-fun b!5267781 () Bool)

(assert (=> b!5267781 (= e!3276326 e!3276325)))

(assert (=> b!5267781 (= c!912229 (is-Concat!23731 (ite c!912063 (regOne!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912061 (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912062 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (reg!15215 (h!67281 (exprs!4770 (h!67282 zl!343)))))))))))

(declare-fun b!5267782 () Bool)

(assert (=> b!5267782 (= e!3276328 (nullable!5055 (regOne!30284 (ite c!912063 (regOne!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912061 (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912062 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (reg!15215 (h!67281 (exprs!4770 (h!67282 zl!343))))))))))))

(declare-fun b!5267783 () Bool)

(declare-fun call!374046 () (Set Context!8540))

(assert (=> b!5267783 (= e!3276327 (set.union call!374046 call!374047))))

(declare-fun call!374048 () List!60957)

(declare-fun c!912230 () Bool)

(declare-fun bm!374041 () Bool)

(assert (=> bm!374041 (= call!374046 (derivationStepZipperDown!334 (ite c!912230 (regOne!30285 (ite c!912063 (regOne!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912061 (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912062 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (reg!15215 (h!67281 (exprs!4770 (h!67282 zl!343)))))))) (ite c!912228 (regTwo!30284 (ite c!912063 (regOne!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912061 (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912062 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (reg!15215 (h!67281 (exprs!4770 (h!67282 zl!343)))))))) (ite c!912229 (regOne!30284 (ite c!912063 (regOne!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912061 (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912062 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (reg!15215 (h!67281 (exprs!4770 (h!67282 zl!343)))))))) (reg!15215 (ite c!912063 (regOne!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912061 (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912062 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (reg!15215 (h!67281 (exprs!4770 (h!67282 zl!343))))))))))) (ite (or c!912230 c!912228) (ite (or c!912063 c!912061) lt!2156038 (Context!8541 call!373951)) (Context!8541 call!374048)) (h!67283 s!2326)))))

(declare-fun b!5267784 () Bool)

(declare-fun e!3276330 () (Set Context!8540))

(assert (=> b!5267784 (= e!3276330 e!3276327)))

(assert (=> b!5267784 (= c!912230 (is-Union!14886 (ite c!912063 (regOne!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912061 (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912062 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (reg!15215 (h!67281 (exprs!4770 (h!67282 zl!343)))))))))))

(declare-fun bm!374042 () Bool)

(assert (=> bm!374042 (= call!374045 call!374050)))

(declare-fun d!1695225 () Bool)

(declare-fun c!912226 () Bool)

(assert (=> d!1695225 (= c!912226 (and (is-ElementMatch!14886 (ite c!912063 (regOne!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912061 (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912062 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (reg!15215 (h!67281 (exprs!4770 (h!67282 zl!343)))))))) (= (c!911978 (ite c!912063 (regOne!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912061 (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912062 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (reg!15215 (h!67281 (exprs!4770 (h!67282 zl!343)))))))) (h!67283 s!2326))))))

(assert (=> d!1695225 (= (derivationStepZipperDown!334 (ite c!912063 (regOne!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912061 (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912062 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (reg!15215 (h!67281 (exprs!4770 (h!67282 zl!343))))))) (ite (or c!912063 c!912061) lt!2156038 (Context!8541 call!373951)) (h!67283 s!2326)) e!3276330)))

(declare-fun b!5267785 () Bool)

(assert (=> b!5267785 (= e!3276330 (set.insert (ite (or c!912063 c!912061) lt!2156038 (Context!8541 call!373951)) (as set.empty (Set Context!8540))))))

(declare-fun bm!374043 () Bool)

(assert (=> bm!374043 (= call!374048 call!374049)))

(declare-fun bm!374044 () Bool)

(assert (=> bm!374044 (= call!374047 (derivationStepZipperDown!334 (ite c!912230 (regTwo!30285 (ite c!912063 (regOne!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912061 (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912062 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (reg!15215 (h!67281 (exprs!4770 (h!67282 zl!343)))))))) (regOne!30284 (ite c!912063 (regOne!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912061 (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912062 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (reg!15215 (h!67281 (exprs!4770 (h!67282 zl!343))))))))) (ite c!912230 (ite (or c!912063 c!912061) lt!2156038 (Context!8541 call!373951)) (Context!8541 call!374049)) (h!67283 s!2326)))))

(declare-fun bm!374045 () Bool)

(assert (=> bm!374045 (= call!374050 call!374046)))

(declare-fun b!5267786 () Bool)

(assert (=> b!5267786 (= e!3276329 call!374045)))

(assert (= (and d!1695225 c!912226) b!5267785))

(assert (= (and d!1695225 (not c!912226)) b!5267784))

(assert (= (and b!5267784 c!912230) b!5267783))

(assert (= (and b!5267784 (not c!912230)) b!5267780))

(assert (= (and b!5267780 res!2234903) b!5267782))

(assert (= (and b!5267780 c!912228) b!5267778))

(assert (= (and b!5267780 (not c!912228)) b!5267781))

(assert (= (and b!5267781 c!912229) b!5267777))

(assert (= (and b!5267781 (not c!912229)) b!5267779))

(assert (= (and b!5267779 c!912227) b!5267786))

(assert (= (and b!5267779 (not c!912227)) b!5267776))

(assert (= (or b!5267777 b!5267786) bm!374043))

(assert (= (or b!5267777 b!5267786) bm!374042))

(assert (= (or b!5267778 bm!374043) bm!374040))

(assert (= (or b!5267778 bm!374042) bm!374045))

(assert (= (or b!5267783 b!5267778) bm!374044))

(assert (= (or b!5267783 bm!374045) bm!374041))

(declare-fun m!6307506 () Bool)

(assert (=> bm!374041 m!6307506))

(declare-fun m!6307508 () Bool)

(assert (=> bm!374044 m!6307508))

(declare-fun m!6307510 () Bool)

(assert (=> bm!374040 m!6307510))

(declare-fun m!6307512 () Bool)

(assert (=> b!5267782 m!6307512))

(declare-fun m!6307514 () Bool)

(assert (=> b!5267785 m!6307514))

(assert (=> bm!373944 d!1695225))

(declare-fun bs!1220699 () Bool)

(declare-fun d!1695227 () Bool)

(assert (= bs!1220699 (and d!1695227 d!1695095)))

(declare-fun lambda!265693 () Int)

(assert (=> bs!1220699 (= lambda!265693 lambda!265660)))

(declare-fun bs!1220700 () Bool)

(assert (= bs!1220700 (and d!1695227 d!1695097)))

(assert (=> bs!1220700 (= lambda!265693 lambda!265663)))

(declare-fun bs!1220701 () Bool)

(assert (= bs!1220701 (and d!1695227 d!1695213)))

(assert (=> bs!1220701 (= lambda!265693 lambda!265692)))

(declare-fun bs!1220702 () Bool)

(assert (= bs!1220702 (and d!1695227 d!1695027)))

(assert (=> bs!1220702 (= lambda!265693 lambda!265638)))

(declare-fun bs!1220703 () Bool)

(assert (= bs!1220703 (and d!1695227 d!1695069)))

(assert (=> bs!1220703 (= lambda!265693 lambda!265656)))

(declare-fun bs!1220704 () Bool)

(assert (= bs!1220704 (and d!1695227 d!1695073)))

(assert (=> bs!1220704 (= lambda!265693 lambda!265657)))

(assert (=> d!1695227 (= (inv!80463 (h!67282 (t!374149 zl!343))) (forall!14296 (exprs!4770 (h!67282 (t!374149 zl!343))) lambda!265693))))

(declare-fun bs!1220705 () Bool)

(assert (= bs!1220705 d!1695227))

(declare-fun m!6307516 () Bool)

(assert (=> bs!1220705 m!6307516))

(assert (=> b!5267305 d!1695227))

(declare-fun d!1695229 () Bool)

(assert (=> d!1695229 (= (isDefined!11700 lt!2156122) (not (isEmpty!32786 lt!2156122)))))

(declare-fun bs!1220706 () Bool)

(assert (= bs!1220706 d!1695229))

(declare-fun m!6307518 () Bool)

(assert (=> bs!1220706 m!6307518))

(assert (=> b!5266982 d!1695229))

(declare-fun d!1695231 () Bool)

(assert (=> d!1695231 (= ($colon$colon!1337 (exprs!4770 lt!2156038) (ite (or c!912061 c!912062) (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (h!67281 (exprs!4770 (h!67282 zl!343))))) (Cons!60833 (ite (or c!912061 c!912062) (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (h!67281 (exprs!4770 (h!67282 zl!343)))) (exprs!4770 lt!2156038)))))

(assert (=> bm!373943 d!1695231))

(declare-fun b!5267787 () Bool)

(declare-fun e!3276335 () (Set Context!8540))

(assert (=> b!5267787 (= e!3276335 (as set.empty (Set Context!8540)))))

(declare-fun b!5267788 () Bool)

(declare-fun e!3276331 () (Set Context!8540))

(declare-fun call!374051 () (Set Context!8540))

(assert (=> b!5267788 (= e!3276331 call!374051)))

(declare-fun b!5267789 () Bool)

(declare-fun e!3276332 () (Set Context!8540))

(declare-fun call!374053 () (Set Context!8540))

(declare-fun call!374056 () (Set Context!8540))

(assert (=> b!5267789 (= e!3276332 (set.union call!374053 call!374056))))

(declare-fun c!912232 () Bool)

(declare-fun b!5267790 () Bool)

(assert (=> b!5267790 (= c!912232 (is-Star!14886 (ite c!912089 (regOne!30285 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912087 (regTwo!30284 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912088 (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))) (reg!15215 (regTwo!30284 (regOne!30284 r!7292))))))))))

(assert (=> b!5267790 (= e!3276331 e!3276335)))

(declare-fun b!5267791 () Bool)

(declare-fun c!912233 () Bool)

(declare-fun e!3276334 () Bool)

(assert (=> b!5267791 (= c!912233 e!3276334)))

(declare-fun res!2234904 () Bool)

(assert (=> b!5267791 (=> (not res!2234904) (not e!3276334))))

(assert (=> b!5267791 (= res!2234904 (is-Concat!23731 (ite c!912089 (regOne!30285 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912087 (regTwo!30284 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912088 (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))) (reg!15215 (regTwo!30284 (regOne!30284 r!7292))))))))))

(declare-fun e!3276333 () (Set Context!8540))

(assert (=> b!5267791 (= e!3276333 e!3276332)))

(declare-fun bm!374046 () Bool)

(declare-fun call!374055 () List!60957)

(declare-fun c!912234 () Bool)

(assert (=> bm!374046 (= call!374055 ($colon$colon!1337 (exprs!4770 (ite (or c!912089 c!912087) lt!2156038 (Context!8541 call!373959))) (ite (or c!912233 c!912234) (regTwo!30284 (ite c!912089 (regOne!30285 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912087 (regTwo!30284 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912088 (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))) (reg!15215 (regTwo!30284 (regOne!30284 r!7292))))))) (ite c!912089 (regOne!30285 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912087 (regTwo!30284 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912088 (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))) (reg!15215 (regTwo!30284 (regOne!30284 r!7292)))))))))))

(declare-fun b!5267792 () Bool)

(assert (=> b!5267792 (= e!3276332 e!3276331)))

(assert (=> b!5267792 (= c!912234 (is-Concat!23731 (ite c!912089 (regOne!30285 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912087 (regTwo!30284 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912088 (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))) (reg!15215 (regTwo!30284 (regOne!30284 r!7292))))))))))

(declare-fun b!5267793 () Bool)

(assert (=> b!5267793 (= e!3276334 (nullable!5055 (regOne!30284 (ite c!912089 (regOne!30285 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912087 (regTwo!30284 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912088 (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))) (reg!15215 (regTwo!30284 (regOne!30284 r!7292)))))))))))

(declare-fun b!5267794 () Bool)

(declare-fun call!374052 () (Set Context!8540))

(assert (=> b!5267794 (= e!3276333 (set.union call!374052 call!374053))))

(declare-fun bm!374047 () Bool)

(declare-fun call!374054 () List!60957)

(declare-fun c!912235 () Bool)

(assert (=> bm!374047 (= call!374052 (derivationStepZipperDown!334 (ite c!912235 (regOne!30285 (ite c!912089 (regOne!30285 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912087 (regTwo!30284 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912088 (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))) (reg!15215 (regTwo!30284 (regOne!30284 r!7292))))))) (ite c!912233 (regTwo!30284 (ite c!912089 (regOne!30285 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912087 (regTwo!30284 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912088 (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))) (reg!15215 (regTwo!30284 (regOne!30284 r!7292))))))) (ite c!912234 (regOne!30284 (ite c!912089 (regOne!30285 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912087 (regTwo!30284 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912088 (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))) (reg!15215 (regTwo!30284 (regOne!30284 r!7292))))))) (reg!15215 (ite c!912089 (regOne!30285 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912087 (regTwo!30284 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912088 (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))) (reg!15215 (regTwo!30284 (regOne!30284 r!7292)))))))))) (ite (or c!912235 c!912233) (ite (or c!912089 c!912087) lt!2156038 (Context!8541 call!373959)) (Context!8541 call!374054)) (h!67283 s!2326)))))

(declare-fun b!5267795 () Bool)

(declare-fun e!3276336 () (Set Context!8540))

(assert (=> b!5267795 (= e!3276336 e!3276333)))

(assert (=> b!5267795 (= c!912235 (is-Union!14886 (ite c!912089 (regOne!30285 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912087 (regTwo!30284 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912088 (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))) (reg!15215 (regTwo!30284 (regOne!30284 r!7292))))))))))

(declare-fun bm!374048 () Bool)

(assert (=> bm!374048 (= call!374051 call!374056)))

(declare-fun c!912231 () Bool)

(declare-fun d!1695233 () Bool)

(assert (=> d!1695233 (= c!912231 (and (is-ElementMatch!14886 (ite c!912089 (regOne!30285 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912087 (regTwo!30284 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912088 (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))) (reg!15215 (regTwo!30284 (regOne!30284 r!7292))))))) (= (c!911978 (ite c!912089 (regOne!30285 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912087 (regTwo!30284 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912088 (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))) (reg!15215 (regTwo!30284 (regOne!30284 r!7292))))))) (h!67283 s!2326))))))

(assert (=> d!1695233 (= (derivationStepZipperDown!334 (ite c!912089 (regOne!30285 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912087 (regTwo!30284 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912088 (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))) (reg!15215 (regTwo!30284 (regOne!30284 r!7292)))))) (ite (or c!912089 c!912087) lt!2156038 (Context!8541 call!373959)) (h!67283 s!2326)) e!3276336)))

(declare-fun b!5267796 () Bool)

(assert (=> b!5267796 (= e!3276336 (set.insert (ite (or c!912089 c!912087) lt!2156038 (Context!8541 call!373959)) (as set.empty (Set Context!8540))))))

(declare-fun bm!374049 () Bool)

(assert (=> bm!374049 (= call!374054 call!374055)))

(declare-fun bm!374050 () Bool)

(assert (=> bm!374050 (= call!374053 (derivationStepZipperDown!334 (ite c!912235 (regTwo!30285 (ite c!912089 (regOne!30285 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912087 (regTwo!30284 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912088 (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))) (reg!15215 (regTwo!30284 (regOne!30284 r!7292))))))) (regOne!30284 (ite c!912089 (regOne!30285 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912087 (regTwo!30284 (regTwo!30284 (regOne!30284 r!7292))) (ite c!912088 (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))) (reg!15215 (regTwo!30284 (regOne!30284 r!7292)))))))) (ite c!912235 (ite (or c!912089 c!912087) lt!2156038 (Context!8541 call!373959)) (Context!8541 call!374055)) (h!67283 s!2326)))))

(declare-fun bm!374051 () Bool)

(assert (=> bm!374051 (= call!374056 call!374052)))

(declare-fun b!5267797 () Bool)

(assert (=> b!5267797 (= e!3276335 call!374051)))

(assert (= (and d!1695233 c!912231) b!5267796))

(assert (= (and d!1695233 (not c!912231)) b!5267795))

(assert (= (and b!5267795 c!912235) b!5267794))

(assert (= (and b!5267795 (not c!912235)) b!5267791))

(assert (= (and b!5267791 res!2234904) b!5267793))

(assert (= (and b!5267791 c!912233) b!5267789))

(assert (= (and b!5267791 (not c!912233)) b!5267792))

(assert (= (and b!5267792 c!912234) b!5267788))

(assert (= (and b!5267792 (not c!912234)) b!5267790))

(assert (= (and b!5267790 c!912232) b!5267797))

(assert (= (and b!5267790 (not c!912232)) b!5267787))

(assert (= (or b!5267788 b!5267797) bm!374049))

(assert (= (or b!5267788 b!5267797) bm!374048))

(assert (= (or b!5267789 bm!374049) bm!374046))

(assert (= (or b!5267789 bm!374048) bm!374051))

(assert (= (or b!5267794 b!5267789) bm!374050))

(assert (= (or b!5267794 bm!374051) bm!374047))

(declare-fun m!6307520 () Bool)

(assert (=> bm!374047 m!6307520))

(declare-fun m!6307522 () Bool)

(assert (=> bm!374050 m!6307522))

(declare-fun m!6307524 () Bool)

(assert (=> bm!374046 m!6307524))

(declare-fun m!6307526 () Bool)

(assert (=> b!5267793 m!6307526))

(declare-fun m!6307528 () Bool)

(assert (=> b!5267796 m!6307528))

(assert (=> bm!373952 d!1695233))

(assert (=> bs!1220655 d!1695055))

(declare-fun d!1695235 () Bool)

(declare-fun lambda!265696 () Int)

(declare-fun exists!1990 ((Set Context!8540) Int) Bool)

(assert (=> d!1695235 (= (nullableZipper!1287 (set.union lt!2156039 lt!2156044)) (exists!1990 (set.union lt!2156039 lt!2156044) lambda!265696))))

(declare-fun bs!1220707 () Bool)

(assert (= bs!1220707 d!1695235))

(declare-fun m!6307530 () Bool)

(assert (=> bs!1220707 m!6307530))

(assert (=> b!5267000 d!1695235))

(declare-fun d!1695237 () Bool)

(declare-fun c!912238 () Bool)

(assert (=> d!1695237 (= c!912238 (isEmpty!32785 (tail!10389 (t!374150 s!2326))))))

(declare-fun e!3276337 () Bool)

(assert (=> d!1695237 (= (matchZipper!1130 (derivationStepZipper!1131 lt!2156037 (head!11292 (t!374150 s!2326))) (tail!10389 (t!374150 s!2326))) e!3276337)))

(declare-fun b!5267798 () Bool)

(assert (=> b!5267798 (= e!3276337 (nullableZipper!1287 (derivationStepZipper!1131 lt!2156037 (head!11292 (t!374150 s!2326)))))))

(declare-fun b!5267799 () Bool)

(assert (=> b!5267799 (= e!3276337 (matchZipper!1130 (derivationStepZipper!1131 (derivationStepZipper!1131 lt!2156037 (head!11292 (t!374150 s!2326))) (head!11292 (tail!10389 (t!374150 s!2326)))) (tail!10389 (tail!10389 (t!374150 s!2326)))))))

(assert (= (and d!1695237 c!912238) b!5267798))

(assert (= (and d!1695237 (not c!912238)) b!5267799))

(assert (=> d!1695237 m!6306944))

(declare-fun m!6307532 () Bool)

(assert (=> d!1695237 m!6307532))

(assert (=> b!5267798 m!6307116))

(declare-fun m!6307534 () Bool)

(assert (=> b!5267798 m!6307534))

(assert (=> b!5267799 m!6306944))

(declare-fun m!6307536 () Bool)

(assert (=> b!5267799 m!6307536))

(assert (=> b!5267799 m!6307116))

(assert (=> b!5267799 m!6307536))

(declare-fun m!6307538 () Bool)

(assert (=> b!5267799 m!6307538))

(assert (=> b!5267799 m!6306944))

(declare-fun m!6307540 () Bool)

(assert (=> b!5267799 m!6307540))

(assert (=> b!5267799 m!6307538))

(assert (=> b!5267799 m!6307540))

(declare-fun m!6307542 () Bool)

(assert (=> b!5267799 m!6307542))

(assert (=> b!5267192 d!1695237))

(declare-fun bs!1220708 () Bool)

(declare-fun d!1695239 () Bool)

(assert (= bs!1220708 (and d!1695239 b!5266789)))

(declare-fun lambda!265699 () Int)

(assert (=> bs!1220708 (= (= (head!11292 (t!374150 s!2326)) (h!67283 s!2326)) (= lambda!265699 lambda!265622))))

(assert (=> d!1695239 true))

(assert (=> d!1695239 (= (derivationStepZipper!1131 lt!2156037 (head!11292 (t!374150 s!2326))) (flatMap!613 lt!2156037 lambda!265699))))

(declare-fun bs!1220709 () Bool)

(assert (= bs!1220709 d!1695239))

(declare-fun m!6307544 () Bool)

(assert (=> bs!1220709 m!6307544))

(assert (=> b!5267192 d!1695239))

(declare-fun d!1695241 () Bool)

(assert (=> d!1695241 (= (head!11292 (t!374150 s!2326)) (h!67283 (t!374150 s!2326)))))

(assert (=> b!5267192 d!1695241))

(declare-fun d!1695243 () Bool)

(assert (=> d!1695243 (= (tail!10389 (t!374150 s!2326)) (t!374150 (t!374150 s!2326)))))

(assert (=> b!5267192 d!1695243))

(declare-fun d!1695245 () Bool)

(assert (=> d!1695245 (= (isEmpty!32781 (exprs!4770 (h!67282 zl!343))) (is-Nil!60833 (exprs!4770 (h!67282 zl!343))))))

(assert (=> b!5267140 d!1695245))

(declare-fun d!1695247 () Bool)

(assert (=> d!1695247 (= (isEmpty!32781 (unfocusZipperList!328 zl!343)) (is-Nil!60833 (unfocusZipperList!328 zl!343)))))

(assert (=> b!5267224 d!1695247))

(assert (=> bs!1220654 d!1695087))

(declare-fun d!1695249 () Bool)

(assert (=> d!1695249 true))

(assert (=> d!1695249 true))

(declare-fun res!2234907 () Bool)

(assert (=> d!1695249 (= (choose!39295 lambda!265620) res!2234907)))

(assert (=> d!1695035 d!1695249))

(declare-fun d!1695251 () Bool)

(assert (=> d!1695251 (= (isConcat!345 lt!2156145) (is-Concat!23731 lt!2156145))))

(assert (=> b!5267137 d!1695251))

(assert (=> d!1695033 d!1695229))

(declare-fun b!5267802 () Bool)

(declare-fun e!3276342 () Bool)

(declare-fun e!3276344 () Bool)

(assert (=> b!5267802 (= e!3276342 e!3276344)))

(declare-fun c!912242 () Bool)

(assert (=> b!5267802 (= c!912242 (is-EmptyLang!14886 (regOne!30284 r!7292)))))

(declare-fun b!5267803 () Bool)

(declare-fun e!3276339 () Bool)

(assert (=> b!5267803 (= e!3276339 (nullable!5055 (regOne!30284 r!7292)))))

(declare-fun b!5267804 () Bool)

(declare-fun res!2234912 () Bool)

(declare-fun e!3276340 () Bool)

(assert (=> b!5267804 (=> (not res!2234912) (not e!3276340))))

(assert (=> b!5267804 (= res!2234912 (isEmpty!32785 (tail!10389 Nil!60835)))))

(declare-fun b!5267805 () Bool)

(declare-fun e!3276343 () Bool)

(assert (=> b!5267805 (= e!3276343 (not (= (head!11292 Nil!60835) (c!911978 (regOne!30284 r!7292)))))))

(declare-fun b!5267806 () Bool)

(declare-fun res!2234911 () Bool)

(assert (=> b!5267806 (=> (not res!2234911) (not e!3276340))))

(declare-fun call!374057 () Bool)

(assert (=> b!5267806 (= res!2234911 (not call!374057))))

(declare-fun b!5267807 () Bool)

(declare-fun res!2234915 () Bool)

(declare-fun e!3276338 () Bool)

(assert (=> b!5267807 (=> res!2234915 e!3276338)))

(assert (=> b!5267807 (= res!2234915 (not (is-ElementMatch!14886 (regOne!30284 r!7292))))))

(assert (=> b!5267807 (= e!3276344 e!3276338)))

(declare-fun b!5267808 () Bool)

(assert (=> b!5267808 (= e!3276340 (= (head!11292 Nil!60835) (c!911978 (regOne!30284 r!7292))))))

(declare-fun b!5267809 () Bool)

(assert (=> b!5267809 (= e!3276339 (matchR!7071 (derivativeStep!4108 (regOne!30284 r!7292) (head!11292 Nil!60835)) (tail!10389 Nil!60835)))))

(declare-fun d!1695253 () Bool)

(assert (=> d!1695253 e!3276342))

(declare-fun c!912243 () Bool)

(assert (=> d!1695253 (= c!912243 (is-EmptyExpr!14886 (regOne!30284 r!7292)))))

(declare-fun lt!2156203 () Bool)

(assert (=> d!1695253 (= lt!2156203 e!3276339)))

(declare-fun c!912241 () Bool)

(assert (=> d!1695253 (= c!912241 (isEmpty!32785 Nil!60835))))

(assert (=> d!1695253 (validRegex!6622 (regOne!30284 r!7292))))

(assert (=> d!1695253 (= (matchR!7071 (regOne!30284 r!7292) Nil!60835) lt!2156203)))

(declare-fun b!5267810 () Bool)

(declare-fun res!2234914 () Bool)

(assert (=> b!5267810 (=> res!2234914 e!3276338)))

(assert (=> b!5267810 (= res!2234914 e!3276340)))

(declare-fun res!2234913 () Bool)

(assert (=> b!5267810 (=> (not res!2234913) (not e!3276340))))

(assert (=> b!5267810 (= res!2234913 lt!2156203)))

(declare-fun bm!374052 () Bool)

(assert (=> bm!374052 (= call!374057 (isEmpty!32785 Nil!60835))))

(declare-fun b!5267811 () Bool)

(assert (=> b!5267811 (= e!3276344 (not lt!2156203))))

(declare-fun b!5267812 () Bool)

(assert (=> b!5267812 (= e!3276342 (= lt!2156203 call!374057))))

(declare-fun b!5267813 () Bool)

(declare-fun e!3276341 () Bool)

(assert (=> b!5267813 (= e!3276338 e!3276341)))

(declare-fun res!2234908 () Bool)

(assert (=> b!5267813 (=> (not res!2234908) (not e!3276341))))

(assert (=> b!5267813 (= res!2234908 (not lt!2156203))))

(declare-fun b!5267814 () Bool)

(declare-fun res!2234910 () Bool)

(assert (=> b!5267814 (=> res!2234910 e!3276343)))

(assert (=> b!5267814 (= res!2234910 (not (isEmpty!32785 (tail!10389 Nil!60835))))))

(declare-fun b!5267815 () Bool)

(assert (=> b!5267815 (= e!3276341 e!3276343)))

(declare-fun res!2234909 () Bool)

(assert (=> b!5267815 (=> res!2234909 e!3276343)))

(assert (=> b!5267815 (= res!2234909 call!374057)))

(assert (= (and d!1695253 c!912241) b!5267803))

(assert (= (and d!1695253 (not c!912241)) b!5267809))

(assert (= (and d!1695253 c!912243) b!5267812))

(assert (= (and d!1695253 (not c!912243)) b!5267802))

(assert (= (and b!5267802 c!912242) b!5267811))

(assert (= (and b!5267802 (not c!912242)) b!5267807))

(assert (= (and b!5267807 (not res!2234915)) b!5267810))

(assert (= (and b!5267810 res!2234913) b!5267806))

(assert (= (and b!5267806 res!2234911) b!5267804))

(assert (= (and b!5267804 res!2234912) b!5267808))

(assert (= (and b!5267810 (not res!2234914)) b!5267813))

(assert (= (and b!5267813 res!2234908) b!5267815))

(assert (= (and b!5267815 (not res!2234909)) b!5267814))

(assert (= (and b!5267814 (not res!2234910)) b!5267805))

(assert (= (or b!5267812 b!5267806 b!5267815) bm!374052))

(declare-fun m!6307546 () Bool)

(assert (=> b!5267805 m!6307546))

(declare-fun m!6307548 () Bool)

(assert (=> d!1695253 m!6307548))

(assert (=> d!1695253 m!6306974))

(assert (=> b!5267809 m!6307546))

(assert (=> b!5267809 m!6307546))

(declare-fun m!6307550 () Bool)

(assert (=> b!5267809 m!6307550))

(declare-fun m!6307552 () Bool)

(assert (=> b!5267809 m!6307552))

(assert (=> b!5267809 m!6307550))

(assert (=> b!5267809 m!6307552))

(declare-fun m!6307554 () Bool)

(assert (=> b!5267809 m!6307554))

(assert (=> bm!374052 m!6307548))

(assert (=> b!5267803 m!6307502))

(assert (=> b!5267804 m!6307552))

(assert (=> b!5267804 m!6307552))

(declare-fun m!6307556 () Bool)

(assert (=> b!5267804 m!6307556))

(assert (=> b!5267808 m!6307546))

(assert (=> b!5267814 m!6307552))

(assert (=> b!5267814 m!6307552))

(assert (=> b!5267814 m!6307556))

(assert (=> d!1695033 d!1695253))

(declare-fun b!5267816 () Bool)

(declare-fun e!3276351 () Bool)

(declare-fun e!3276348 () Bool)

(assert (=> b!5267816 (= e!3276351 e!3276348)))

(declare-fun res!2234920 () Bool)

(assert (=> b!5267816 (= res!2234920 (not (nullable!5055 (reg!15215 (regOne!30284 r!7292)))))))

(assert (=> b!5267816 (=> (not res!2234920) (not e!3276348))))

(declare-fun d!1695255 () Bool)

(declare-fun res!2234917 () Bool)

(declare-fun e!3276345 () Bool)

(assert (=> d!1695255 (=> res!2234917 e!3276345)))

(assert (=> d!1695255 (= res!2234917 (is-ElementMatch!14886 (regOne!30284 r!7292)))))

(assert (=> d!1695255 (= (validRegex!6622 (regOne!30284 r!7292)) e!3276345)))

(declare-fun b!5267817 () Bool)

(assert (=> b!5267817 (= e!3276345 e!3276351)))

(declare-fun c!912245 () Bool)

(assert (=> b!5267817 (= c!912245 (is-Star!14886 (regOne!30284 r!7292)))))

(declare-fun b!5267818 () Bool)

(declare-fun e!3276349 () Bool)

(declare-fun call!374060 () Bool)

(assert (=> b!5267818 (= e!3276349 call!374060)))

(declare-fun b!5267819 () Bool)

(declare-fun e!3276350 () Bool)

(assert (=> b!5267819 (= e!3276351 e!3276350)))

(declare-fun c!912244 () Bool)

(assert (=> b!5267819 (= c!912244 (is-Union!14886 (regOne!30284 r!7292)))))

(declare-fun bm!374053 () Bool)

(declare-fun call!374059 () Bool)

(assert (=> bm!374053 (= call!374059 (validRegex!6622 (ite c!912245 (reg!15215 (regOne!30284 r!7292)) (ite c!912244 (regTwo!30285 (regOne!30284 r!7292)) (regTwo!30284 (regOne!30284 r!7292))))))))

(declare-fun b!5267820 () Bool)

(declare-fun e!3276346 () Bool)

(assert (=> b!5267820 (= e!3276346 call!374060)))

(declare-fun bm!374054 () Bool)

(assert (=> bm!374054 (= call!374060 call!374059)))

(declare-fun b!5267821 () Bool)

(assert (=> b!5267821 (= e!3276348 call!374059)))

(declare-fun bm!374055 () Bool)

(declare-fun call!374058 () Bool)

(assert (=> bm!374055 (= call!374058 (validRegex!6622 (ite c!912244 (regOne!30285 (regOne!30284 r!7292)) (regOne!30284 (regOne!30284 r!7292)))))))

(declare-fun b!5267822 () Bool)

(declare-fun e!3276347 () Bool)

(assert (=> b!5267822 (= e!3276347 e!3276349)))

(declare-fun res!2234919 () Bool)

(assert (=> b!5267822 (=> (not res!2234919) (not e!3276349))))

(assert (=> b!5267822 (= res!2234919 call!374058)))

(declare-fun b!5267823 () Bool)

(declare-fun res!2234916 () Bool)

(assert (=> b!5267823 (=> res!2234916 e!3276347)))

(assert (=> b!5267823 (= res!2234916 (not (is-Concat!23731 (regOne!30284 r!7292))))))

(assert (=> b!5267823 (= e!3276350 e!3276347)))

(declare-fun b!5267824 () Bool)

(declare-fun res!2234918 () Bool)

(assert (=> b!5267824 (=> (not res!2234918) (not e!3276346))))

(assert (=> b!5267824 (= res!2234918 call!374058)))

(assert (=> b!5267824 (= e!3276350 e!3276346)))

(assert (= (and d!1695255 (not res!2234917)) b!5267817))

(assert (= (and b!5267817 c!912245) b!5267816))

(assert (= (and b!5267817 (not c!912245)) b!5267819))

(assert (= (and b!5267816 res!2234920) b!5267821))

(assert (= (and b!5267819 c!912244) b!5267824))

(assert (= (and b!5267819 (not c!912244)) b!5267823))

(assert (= (and b!5267824 res!2234918) b!5267820))

(assert (= (and b!5267823 (not res!2234916)) b!5267822))

(assert (= (and b!5267822 res!2234919) b!5267818))

(assert (= (or b!5267820 b!5267818) bm!374054))

(assert (= (or b!5267824 b!5267822) bm!374055))

(assert (= (or b!5267821 bm!374054) bm!374053))

(declare-fun m!6307558 () Bool)

(assert (=> b!5267816 m!6307558))

(declare-fun m!6307560 () Bool)

(assert (=> bm!374053 m!6307560))

(declare-fun m!6307562 () Bool)

(assert (=> bm!374055 m!6307562))

(assert (=> d!1695033 d!1695255))

(declare-fun bs!1220710 () Bool)

(declare-fun b!5267831 () Bool)

(assert (= bs!1220710 (and b!5267831 d!1695041)))

(declare-fun lambda!265700 () Int)

(assert (=> bs!1220710 (not (= lambda!265700 lambda!265646))))

(declare-fun bs!1220711 () Bool)

(assert (= bs!1220711 (and b!5267831 b!5267064)))

(assert (=> bs!1220711 (= (and (= (reg!15215 (regTwo!30285 r!7292)) (reg!15215 r!7292)) (= (regTwo!30285 r!7292) r!7292)) (= lambda!265700 lambda!265652))))

(declare-fun bs!1220712 () Bool)

(assert (= bs!1220712 (and b!5267831 b!5266802)))

(assert (=> bs!1220712 (not (= lambda!265700 lambda!265621))))

(declare-fun bs!1220713 () Bool)

(assert (= bs!1220713 (and b!5267831 b!5267058)))

(assert (=> bs!1220713 (not (= lambda!265700 lambda!265653))))

(assert (=> bs!1220710 (not (= lambda!265700 lambda!265647))))

(assert (=> bs!1220712 (not (= lambda!265700 lambda!265620))))

(declare-fun bs!1220714 () Bool)

(assert (= bs!1220714 (and b!5267831 d!1695039)))

(assert (=> bs!1220714 (not (= lambda!265700 lambda!265641))))

(assert (=> b!5267831 true))

(assert (=> b!5267831 true))

(declare-fun bs!1220715 () Bool)

(declare-fun b!5267825 () Bool)

(assert (= bs!1220715 (and b!5267825 d!1695041)))

(declare-fun lambda!265701 () Int)

(assert (=> bs!1220715 (not (= lambda!265701 lambda!265646))))

(declare-fun bs!1220716 () Bool)

(assert (= bs!1220716 (and b!5267825 b!5267064)))

(assert (=> bs!1220716 (not (= lambda!265701 lambda!265652))))

(declare-fun bs!1220717 () Bool)

(assert (= bs!1220717 (and b!5267825 b!5267058)))

(assert (=> bs!1220717 (= (and (= (regOne!30284 (regTwo!30285 r!7292)) (regOne!30284 r!7292)) (= (regTwo!30284 (regTwo!30285 r!7292)) (regTwo!30284 r!7292))) (= lambda!265701 lambda!265653))))

(assert (=> bs!1220715 (= (and (= (regOne!30284 (regTwo!30285 r!7292)) (regOne!30284 r!7292)) (= (regTwo!30284 (regTwo!30285 r!7292)) (regTwo!30284 r!7292))) (= lambda!265701 lambda!265647))))

(declare-fun bs!1220718 () Bool)

(assert (= bs!1220718 (and b!5267825 b!5266802)))

(assert (=> bs!1220718 (= (and (= (regOne!30284 (regTwo!30285 r!7292)) (regOne!30284 r!7292)) (= (regTwo!30284 (regTwo!30285 r!7292)) (regTwo!30284 r!7292))) (= lambda!265701 lambda!265621))))

(declare-fun bs!1220719 () Bool)

(assert (= bs!1220719 (and b!5267825 b!5267831)))

(assert (=> bs!1220719 (not (= lambda!265701 lambda!265700))))

(assert (=> bs!1220718 (not (= lambda!265701 lambda!265620))))

(declare-fun bs!1220720 () Bool)

(assert (= bs!1220720 (and b!5267825 d!1695039)))

(assert (=> bs!1220720 (not (= lambda!265701 lambda!265641))))

(assert (=> b!5267825 true))

(assert (=> b!5267825 true))

(declare-fun e!3276358 () Bool)

(declare-fun call!374062 () Bool)

(assert (=> b!5267825 (= e!3276358 call!374062)))

(declare-fun d!1695257 () Bool)

(declare-fun c!912248 () Bool)

(assert (=> d!1695257 (= c!912248 (is-EmptyExpr!14886 (regTwo!30285 r!7292)))))

(declare-fun e!3276357 () Bool)

(assert (=> d!1695257 (= (matchRSpec!1989 (regTwo!30285 r!7292) s!2326) e!3276357)))

(declare-fun b!5267826 () Bool)

(declare-fun e!3276355 () Bool)

(assert (=> b!5267826 (= e!3276355 (= s!2326 (Cons!60835 (c!911978 (regTwo!30285 r!7292)) Nil!60835)))))

(declare-fun b!5267827 () Bool)

(declare-fun e!3276354 () Bool)

(assert (=> b!5267827 (= e!3276354 e!3276358)))

(declare-fun c!912246 () Bool)

(assert (=> b!5267827 (= c!912246 (is-Star!14886 (regTwo!30285 r!7292)))))

(declare-fun b!5267828 () Bool)

(declare-fun e!3276353 () Bool)

(assert (=> b!5267828 (= e!3276357 e!3276353)))

(declare-fun res!2234923 () Bool)

(assert (=> b!5267828 (= res!2234923 (not (is-EmptyLang!14886 (regTwo!30285 r!7292))))))

(assert (=> b!5267828 (=> (not res!2234923) (not e!3276353))))

(declare-fun bm!374056 () Bool)

(declare-fun call!374061 () Bool)

(assert (=> bm!374056 (= call!374061 (isEmpty!32785 s!2326))))

(declare-fun b!5267829 () Bool)

(declare-fun e!3276356 () Bool)

(assert (=> b!5267829 (= e!3276356 (matchRSpec!1989 (regTwo!30285 (regTwo!30285 r!7292)) s!2326))))

(declare-fun b!5267830 () Bool)

(assert (=> b!5267830 (= e!3276357 call!374061)))

(declare-fun e!3276352 () Bool)

(assert (=> b!5267831 (= e!3276352 call!374062)))

(declare-fun b!5267832 () Bool)

(declare-fun res!2234921 () Bool)

(assert (=> b!5267832 (=> res!2234921 e!3276352)))

(assert (=> b!5267832 (= res!2234921 call!374061)))

(assert (=> b!5267832 (= e!3276358 e!3276352)))

(declare-fun b!5267833 () Bool)

(declare-fun c!912247 () Bool)

(assert (=> b!5267833 (= c!912247 (is-Union!14886 (regTwo!30285 r!7292)))))

(assert (=> b!5267833 (= e!3276355 e!3276354)))

(declare-fun b!5267834 () Bool)

(assert (=> b!5267834 (= e!3276354 e!3276356)))

(declare-fun res!2234922 () Bool)

(assert (=> b!5267834 (= res!2234922 (matchRSpec!1989 (regOne!30285 (regTwo!30285 r!7292)) s!2326))))

(assert (=> b!5267834 (=> res!2234922 e!3276356)))

(declare-fun bm!374057 () Bool)

(assert (=> bm!374057 (= call!374062 (Exists!2067 (ite c!912246 lambda!265700 lambda!265701)))))

(declare-fun b!5267835 () Bool)

(declare-fun c!912249 () Bool)

(assert (=> b!5267835 (= c!912249 (is-ElementMatch!14886 (regTwo!30285 r!7292)))))

(assert (=> b!5267835 (= e!3276353 e!3276355)))

(assert (= (and d!1695257 c!912248) b!5267830))

(assert (= (and d!1695257 (not c!912248)) b!5267828))

(assert (= (and b!5267828 res!2234923) b!5267835))

(assert (= (and b!5267835 c!912249) b!5267826))

(assert (= (and b!5267835 (not c!912249)) b!5267833))

(assert (= (and b!5267833 c!912247) b!5267834))

(assert (= (and b!5267833 (not c!912247)) b!5267827))

(assert (= (and b!5267834 (not res!2234922)) b!5267829))

(assert (= (and b!5267827 c!912246) b!5267832))

(assert (= (and b!5267827 (not c!912246)) b!5267825))

(assert (= (and b!5267832 (not res!2234921)) b!5267831))

(assert (= (or b!5267831 b!5267825) bm!374057))

(assert (= (or b!5267830 b!5267832) bm!374056))

(assert (=> bm!374056 m!6307026))

(declare-fun m!6307564 () Bool)

(assert (=> b!5267829 m!6307564))

(declare-fun m!6307566 () Bool)

(assert (=> b!5267834 m!6307566))

(declare-fun m!6307568 () Bool)

(assert (=> bm!374057 m!6307568))

(assert (=> b!5267062 d!1695257))

(assert (=> bm!373929 d!1695203))

(declare-fun d!1695259 () Bool)

(assert (=> d!1695259 true))

(declare-fun setRes!33707 () Bool)

(assert (=> d!1695259 setRes!33707))

(declare-fun condSetEmpty!33707 () Bool)

(declare-fun res!2234924 () (Set Context!8540))

(assert (=> d!1695259 (= condSetEmpty!33707 (= res!2234924 (as set.empty (Set Context!8540))))))

(assert (=> d!1695259 (= (choose!39299 z!1189 lambda!265622) res!2234924)))

(declare-fun setIsEmpty!33707 () Bool)

(assert (=> setIsEmpty!33707 setRes!33707))

(declare-fun setElem!33707 () Context!8540)

(declare-fun setNonEmpty!33707 () Bool)

(declare-fun e!3276359 () Bool)

(declare-fun tp!1472406 () Bool)

(assert (=> setNonEmpty!33707 (= setRes!33707 (and tp!1472406 (inv!80463 setElem!33707) e!3276359))))

(declare-fun setRest!33707 () (Set Context!8540))

(assert (=> setNonEmpty!33707 (= res!2234924 (set.union (set.insert setElem!33707 (as set.empty (Set Context!8540))) setRest!33707))))

(declare-fun b!5267836 () Bool)

(declare-fun tp!1472407 () Bool)

(assert (=> b!5267836 (= e!3276359 tp!1472407)))

(assert (= (and d!1695259 condSetEmpty!33707) setIsEmpty!33707))

(assert (= (and d!1695259 (not condSetEmpty!33707)) setNonEmpty!33707))

(assert (= setNonEmpty!33707 b!5267836))

(declare-fun m!6307570 () Bool)

(assert (=> setNonEmpty!33707 m!6307570))

(assert (=> d!1695085 d!1695259))

(assert (=> d!1695057 d!1695053))

(declare-fun d!1695261 () Bool)

(assert (=> d!1695261 (= (flatMap!613 lt!2156035 lambda!265622) (dynLambda!24038 lambda!265622 lt!2156034))))

(assert (=> d!1695261 true))

(declare-fun _$13!1805 () Unit!153062)

(assert (=> d!1695261 (= (choose!39300 lt!2156035 lt!2156034 lambda!265622) _$13!1805)))

(declare-fun b_lambda!203189 () Bool)

(assert (=> (not b_lambda!203189) (not d!1695261)))

(declare-fun bs!1220721 () Bool)

(assert (= bs!1220721 d!1695261))

(assert (=> bs!1220721 m!6306766))

(assert (=> bs!1220721 m!6307022))

(assert (=> d!1695057 d!1695261))

(declare-fun d!1695263 () Bool)

(declare-fun res!2234929 () Bool)

(declare-fun e!3276364 () Bool)

(assert (=> d!1695263 (=> res!2234929 e!3276364)))

(assert (=> d!1695263 (= res!2234929 (is-Nil!60833 (exprs!4770 (h!67282 zl!343))))))

(assert (=> d!1695263 (= (forall!14296 (exprs!4770 (h!67282 zl!343)) lambda!265657) e!3276364)))

(declare-fun b!5267841 () Bool)

(declare-fun e!3276365 () Bool)

(assert (=> b!5267841 (= e!3276364 e!3276365)))

(declare-fun res!2234930 () Bool)

(assert (=> b!5267841 (=> (not res!2234930) (not e!3276365))))

(declare-fun dynLambda!24040 (Int Regex!14886) Bool)

(assert (=> b!5267841 (= res!2234930 (dynLambda!24040 lambda!265657 (h!67281 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun b!5267842 () Bool)

(assert (=> b!5267842 (= e!3276365 (forall!14296 (t!374148 (exprs!4770 (h!67282 zl!343))) lambda!265657))))

(assert (= (and d!1695263 (not res!2234929)) b!5267841))

(assert (= (and b!5267841 res!2234930) b!5267842))

(declare-fun b_lambda!203191 () Bool)

(assert (=> (not b_lambda!203191) (not b!5267841)))

(declare-fun m!6307572 () Bool)

(assert (=> b!5267841 m!6307572))

(declare-fun m!6307574 () Bool)

(assert (=> b!5267842 m!6307574))

(assert (=> d!1695073 d!1695263))

(declare-fun d!1695265 () Bool)

(assert (=> d!1695265 (= (isUnion!262 lt!2156153) (is-Union!14886 lt!2156153))))

(assert (=> b!5267217 d!1695265))

(declare-fun bs!1220722 () Bool)

(declare-fun d!1695267 () Bool)

(assert (= bs!1220722 (and d!1695267 d!1695235)))

(declare-fun lambda!265702 () Int)

(assert (=> bs!1220722 (= lambda!265702 lambda!265696)))

(assert (=> d!1695267 (= (nullableZipper!1287 lt!2156039) (exists!1990 lt!2156039 lambda!265702))))

(declare-fun bs!1220723 () Bool)

(assert (= bs!1220723 d!1695267))

(declare-fun m!6307576 () Bool)

(assert (=> bs!1220723 m!6307576))

(assert (=> b!5266998 d!1695267))

(declare-fun b!5267843 () Bool)

(declare-fun e!3276370 () (Set Context!8540))

(assert (=> b!5267843 (= e!3276370 (as set.empty (Set Context!8540)))))

(declare-fun b!5267844 () Bool)

(declare-fun e!3276366 () (Set Context!8540))

(declare-fun call!374063 () (Set Context!8540))

(assert (=> b!5267844 (= e!3276366 call!374063)))

(declare-fun b!5267845 () Bool)

(declare-fun e!3276367 () (Set Context!8540))

(declare-fun call!374065 () (Set Context!8540))

(declare-fun call!374068 () (Set Context!8540))

(assert (=> b!5267845 (= e!3276367 (set.union call!374065 call!374068))))

(declare-fun b!5267846 () Bool)

(declare-fun c!912251 () Bool)

(assert (=> b!5267846 (= c!912251 (is-Star!14886 (h!67281 (exprs!4770 lt!2156038))))))

(assert (=> b!5267846 (= e!3276366 e!3276370)))

(declare-fun b!5267847 () Bool)

(declare-fun c!912252 () Bool)

(declare-fun e!3276369 () Bool)

(assert (=> b!5267847 (= c!912252 e!3276369)))

(declare-fun res!2234931 () Bool)

(assert (=> b!5267847 (=> (not res!2234931) (not e!3276369))))

(assert (=> b!5267847 (= res!2234931 (is-Concat!23731 (h!67281 (exprs!4770 lt!2156038))))))

(declare-fun e!3276368 () (Set Context!8540))

(assert (=> b!5267847 (= e!3276368 e!3276367)))

(declare-fun call!374067 () List!60957)

(declare-fun bm!374058 () Bool)

(declare-fun c!912253 () Bool)

(assert (=> bm!374058 (= call!374067 ($colon$colon!1337 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 lt!2156038)))) (ite (or c!912252 c!912253) (regTwo!30284 (h!67281 (exprs!4770 lt!2156038))) (h!67281 (exprs!4770 lt!2156038)))))))

(declare-fun b!5267848 () Bool)

(assert (=> b!5267848 (= e!3276367 e!3276366)))

(assert (=> b!5267848 (= c!912253 (is-Concat!23731 (h!67281 (exprs!4770 lt!2156038))))))

(declare-fun b!5267849 () Bool)

(assert (=> b!5267849 (= e!3276369 (nullable!5055 (regOne!30284 (h!67281 (exprs!4770 lt!2156038)))))))

(declare-fun b!5267850 () Bool)

(declare-fun call!374064 () (Set Context!8540))

(assert (=> b!5267850 (= e!3276368 (set.union call!374064 call!374065))))

(declare-fun c!912254 () Bool)

(declare-fun bm!374059 () Bool)

(declare-fun call!374066 () List!60957)

(assert (=> bm!374059 (= call!374064 (derivationStepZipperDown!334 (ite c!912254 (regOne!30285 (h!67281 (exprs!4770 lt!2156038))) (ite c!912252 (regTwo!30284 (h!67281 (exprs!4770 lt!2156038))) (ite c!912253 (regOne!30284 (h!67281 (exprs!4770 lt!2156038))) (reg!15215 (h!67281 (exprs!4770 lt!2156038)))))) (ite (or c!912254 c!912252) (Context!8541 (t!374148 (exprs!4770 lt!2156038))) (Context!8541 call!374066)) (h!67283 s!2326)))))

(declare-fun b!5267851 () Bool)

(declare-fun e!3276371 () (Set Context!8540))

(assert (=> b!5267851 (= e!3276371 e!3276368)))

(assert (=> b!5267851 (= c!912254 (is-Union!14886 (h!67281 (exprs!4770 lt!2156038))))))

(declare-fun bm!374060 () Bool)

(assert (=> bm!374060 (= call!374063 call!374068)))

(declare-fun d!1695269 () Bool)

(declare-fun c!912250 () Bool)

(assert (=> d!1695269 (= c!912250 (and (is-ElementMatch!14886 (h!67281 (exprs!4770 lt!2156038))) (= (c!911978 (h!67281 (exprs!4770 lt!2156038))) (h!67283 s!2326))))))

(assert (=> d!1695269 (= (derivationStepZipperDown!334 (h!67281 (exprs!4770 lt!2156038)) (Context!8541 (t!374148 (exprs!4770 lt!2156038))) (h!67283 s!2326)) e!3276371)))

(declare-fun b!5267852 () Bool)

(assert (=> b!5267852 (= e!3276371 (set.insert (Context!8541 (t!374148 (exprs!4770 lt!2156038))) (as set.empty (Set Context!8540))))))

(declare-fun bm!374061 () Bool)

(assert (=> bm!374061 (= call!374066 call!374067)))

(declare-fun bm!374062 () Bool)

(assert (=> bm!374062 (= call!374065 (derivationStepZipperDown!334 (ite c!912254 (regTwo!30285 (h!67281 (exprs!4770 lt!2156038))) (regOne!30284 (h!67281 (exprs!4770 lt!2156038)))) (ite c!912254 (Context!8541 (t!374148 (exprs!4770 lt!2156038))) (Context!8541 call!374067)) (h!67283 s!2326)))))

(declare-fun bm!374063 () Bool)

(assert (=> bm!374063 (= call!374068 call!374064)))

(declare-fun b!5267853 () Bool)

(assert (=> b!5267853 (= e!3276370 call!374063)))

(assert (= (and d!1695269 c!912250) b!5267852))

(assert (= (and d!1695269 (not c!912250)) b!5267851))

(assert (= (and b!5267851 c!912254) b!5267850))

(assert (= (and b!5267851 (not c!912254)) b!5267847))

(assert (= (and b!5267847 res!2234931) b!5267849))

(assert (= (and b!5267847 c!912252) b!5267845))

(assert (= (and b!5267847 (not c!912252)) b!5267848))

(assert (= (and b!5267848 c!912253) b!5267844))

(assert (= (and b!5267848 (not c!912253)) b!5267846))

(assert (= (and b!5267846 c!912251) b!5267853))

(assert (= (and b!5267846 (not c!912251)) b!5267843))

(assert (= (or b!5267844 b!5267853) bm!374061))

(assert (= (or b!5267844 b!5267853) bm!374060))

(assert (= (or b!5267845 bm!374061) bm!374058))

(assert (= (or b!5267845 bm!374060) bm!374063))

(assert (= (or b!5267850 b!5267845) bm!374062))

(assert (= (or b!5267850 bm!374063) bm!374059))

(declare-fun m!6307578 () Bool)

(assert (=> bm!374059 m!6307578))

(declare-fun m!6307580 () Bool)

(assert (=> bm!374062 m!6307580))

(declare-fun m!6307582 () Bool)

(assert (=> bm!374058 m!6307582))

(declare-fun m!6307584 () Bool)

(assert (=> b!5267849 m!6307584))

(declare-fun m!6307586 () Bool)

(assert (=> b!5267852 m!6307586))

(assert (=> bm!373949 d!1695269))

(declare-fun d!1695271 () Bool)

(assert (=> d!1695271 (= (isEmpty!32785 (tail!10389 s!2326)) (is-Nil!60835 (tail!10389 s!2326)))))

(assert (=> b!5267109 d!1695271))

(declare-fun d!1695273 () Bool)

(assert (=> d!1695273 (= (tail!10389 s!2326) (t!374150 s!2326))))

(assert (=> b!5267109 d!1695273))

(declare-fun d!1695275 () Bool)

(assert (=> d!1695275 true))

(assert (=> d!1695275 true))

(declare-fun res!2234932 () Bool)

(assert (=> d!1695275 (= (choose!39295 lambda!265621) res!2234932)))

(assert (=> d!1695037 d!1695275))

(declare-fun b!5267865 () Bool)

(declare-fun e!3276376 () Bool)

(declare-fun lt!2156206 () List!60959)

(assert (=> b!5267865 (= e!3276376 (or (not (= (t!374150 s!2326) Nil!60835)) (= lt!2156206 (++!13267 Nil!60835 (Cons!60835 (h!67283 s!2326) Nil!60835)))))))

(declare-fun d!1695277 () Bool)

(assert (=> d!1695277 e!3276376))

(declare-fun res!2234938 () Bool)

(assert (=> d!1695277 (=> (not res!2234938) (not e!3276376))))

(declare-fun content!10819 (List!60959) (Set C!30042))

(assert (=> d!1695277 (= res!2234938 (= (content!10819 lt!2156206) (set.union (content!10819 (++!13267 Nil!60835 (Cons!60835 (h!67283 s!2326) Nil!60835))) (content!10819 (t!374150 s!2326)))))))

(declare-fun e!3276377 () List!60959)

(assert (=> d!1695277 (= lt!2156206 e!3276377)))

(declare-fun c!912257 () Bool)

(assert (=> d!1695277 (= c!912257 (is-Nil!60835 (++!13267 Nil!60835 (Cons!60835 (h!67283 s!2326) Nil!60835))))))

(assert (=> d!1695277 (= (++!13267 (++!13267 Nil!60835 (Cons!60835 (h!67283 s!2326) Nil!60835)) (t!374150 s!2326)) lt!2156206)))

(declare-fun b!5267864 () Bool)

(declare-fun res!2234937 () Bool)

(assert (=> b!5267864 (=> (not res!2234937) (not e!3276376))))

(declare-fun size!39745 (List!60959) Int)

(assert (=> b!5267864 (= res!2234937 (= (size!39745 lt!2156206) (+ (size!39745 (++!13267 Nil!60835 (Cons!60835 (h!67283 s!2326) Nil!60835))) (size!39745 (t!374150 s!2326)))))))

(declare-fun b!5267862 () Bool)

(assert (=> b!5267862 (= e!3276377 (t!374150 s!2326))))

(declare-fun b!5267863 () Bool)

(assert (=> b!5267863 (= e!3276377 (Cons!60835 (h!67283 (++!13267 Nil!60835 (Cons!60835 (h!67283 s!2326) Nil!60835))) (++!13267 (t!374150 (++!13267 Nil!60835 (Cons!60835 (h!67283 s!2326) Nil!60835))) (t!374150 s!2326))))))

(assert (= (and d!1695277 c!912257) b!5267862))

(assert (= (and d!1695277 (not c!912257)) b!5267863))

(assert (= (and d!1695277 res!2234938) b!5267864))

(assert (= (and b!5267864 res!2234937) b!5267865))

(declare-fun m!6307588 () Bool)

(assert (=> d!1695277 m!6307588))

(assert (=> d!1695277 m!6306962))

(declare-fun m!6307590 () Bool)

(assert (=> d!1695277 m!6307590))

(declare-fun m!6307592 () Bool)

(assert (=> d!1695277 m!6307592))

(declare-fun m!6307594 () Bool)

(assert (=> b!5267864 m!6307594))

(assert (=> b!5267864 m!6306962))

(declare-fun m!6307596 () Bool)

(assert (=> b!5267864 m!6307596))

(declare-fun m!6307598 () Bool)

(assert (=> b!5267864 m!6307598))

(declare-fun m!6307600 () Bool)

(assert (=> b!5267863 m!6307600))

(assert (=> b!5266974 d!1695277))

(declare-fun b!5267869 () Bool)

(declare-fun e!3276378 () Bool)

(declare-fun lt!2156207 () List!60959)

(assert (=> b!5267869 (= e!3276378 (or (not (= (Cons!60835 (h!67283 s!2326) Nil!60835) Nil!60835)) (= lt!2156207 Nil!60835)))))

(declare-fun d!1695279 () Bool)

(assert (=> d!1695279 e!3276378))

(declare-fun res!2234940 () Bool)

(assert (=> d!1695279 (=> (not res!2234940) (not e!3276378))))

(assert (=> d!1695279 (= res!2234940 (= (content!10819 lt!2156207) (set.union (content!10819 Nil!60835) (content!10819 (Cons!60835 (h!67283 s!2326) Nil!60835)))))))

(declare-fun e!3276379 () List!60959)

(assert (=> d!1695279 (= lt!2156207 e!3276379)))

(declare-fun c!912258 () Bool)

(assert (=> d!1695279 (= c!912258 (is-Nil!60835 Nil!60835))))

(assert (=> d!1695279 (= (++!13267 Nil!60835 (Cons!60835 (h!67283 s!2326) Nil!60835)) lt!2156207)))

(declare-fun b!5267868 () Bool)

(declare-fun res!2234939 () Bool)

(assert (=> b!5267868 (=> (not res!2234939) (not e!3276378))))

(assert (=> b!5267868 (= res!2234939 (= (size!39745 lt!2156207) (+ (size!39745 Nil!60835) (size!39745 (Cons!60835 (h!67283 s!2326) Nil!60835)))))))

(declare-fun b!5267866 () Bool)

(assert (=> b!5267866 (= e!3276379 (Cons!60835 (h!67283 s!2326) Nil!60835))))

(declare-fun b!5267867 () Bool)

(assert (=> b!5267867 (= e!3276379 (Cons!60835 (h!67283 Nil!60835) (++!13267 (t!374150 Nil!60835) (Cons!60835 (h!67283 s!2326) Nil!60835))))))

(assert (= (and d!1695279 c!912258) b!5267866))

(assert (= (and d!1695279 (not c!912258)) b!5267867))

(assert (= (and d!1695279 res!2234940) b!5267868))

(assert (= (and b!5267868 res!2234939) b!5267869))

(declare-fun m!6307602 () Bool)

(assert (=> d!1695279 m!6307602))

(declare-fun m!6307604 () Bool)

(assert (=> d!1695279 m!6307604))

(declare-fun m!6307606 () Bool)

(assert (=> d!1695279 m!6307606))

(declare-fun m!6307608 () Bool)

(assert (=> b!5267868 m!6307608))

(declare-fun m!6307610 () Bool)

(assert (=> b!5267868 m!6307610))

(declare-fun m!6307612 () Bool)

(assert (=> b!5267868 m!6307612))

(declare-fun m!6307614 () Bool)

(assert (=> b!5267867 m!6307614))

(assert (=> b!5266974 d!1695279))

(declare-fun d!1695281 () Bool)

(assert (=> d!1695281 (= (++!13267 (++!13267 Nil!60835 (Cons!60835 (h!67283 s!2326) Nil!60835)) (t!374150 s!2326)) s!2326)))

(declare-fun lt!2156210 () Unit!153062)

(declare-fun choose!39310 (List!60959 C!30042 List!60959 List!60959) Unit!153062)

(assert (=> d!1695281 (= lt!2156210 (choose!39310 Nil!60835 (h!67283 s!2326) (t!374150 s!2326) s!2326))))

(assert (=> d!1695281 (= (++!13267 Nil!60835 (Cons!60835 (h!67283 s!2326) (t!374150 s!2326))) s!2326)))

(assert (=> d!1695281 (= (lemmaMoveElementToOtherListKeepsConcatEq!1682 Nil!60835 (h!67283 s!2326) (t!374150 s!2326) s!2326) lt!2156210)))

(declare-fun bs!1220724 () Bool)

(assert (= bs!1220724 d!1695281))

(assert (=> bs!1220724 m!6306962))

(assert (=> bs!1220724 m!6306962))

(assert (=> bs!1220724 m!6306964))

(declare-fun m!6307616 () Bool)

(assert (=> bs!1220724 m!6307616))

(declare-fun m!6307618 () Bool)

(assert (=> bs!1220724 m!6307618))

(assert (=> b!5266974 d!1695281))

(declare-fun b!5267870 () Bool)

(declare-fun lt!2156212 () Unit!153062)

(declare-fun lt!2156213 () Unit!153062)

(assert (=> b!5267870 (= lt!2156212 lt!2156213)))

(assert (=> b!5267870 (= (++!13267 (++!13267 (++!13267 Nil!60835 (Cons!60835 (h!67283 s!2326) Nil!60835)) (Cons!60835 (h!67283 (t!374150 s!2326)) Nil!60835)) (t!374150 (t!374150 s!2326))) s!2326)))

(assert (=> b!5267870 (= lt!2156213 (lemmaMoveElementToOtherListKeepsConcatEq!1682 (++!13267 Nil!60835 (Cons!60835 (h!67283 s!2326) Nil!60835)) (h!67283 (t!374150 s!2326)) (t!374150 (t!374150 s!2326)) s!2326))))

(declare-fun e!3276382 () Option!14997)

(assert (=> b!5267870 (= e!3276382 (findConcatSeparation!1411 (regOne!30284 r!7292) (regTwo!30284 r!7292) (++!13267 (++!13267 Nil!60835 (Cons!60835 (h!67283 s!2326) Nil!60835)) (Cons!60835 (h!67283 (t!374150 s!2326)) Nil!60835)) (t!374150 (t!374150 s!2326)) s!2326))))

(declare-fun b!5267871 () Bool)

(declare-fun e!3276381 () Bool)

(declare-fun lt!2156211 () Option!14997)

(assert (=> b!5267871 (= e!3276381 (= (++!13267 (_1!35388 (get!20916 lt!2156211)) (_2!35388 (get!20916 lt!2156211))) s!2326))))

(declare-fun b!5267872 () Bool)

(declare-fun e!3276384 () Option!14997)

(assert (=> b!5267872 (= e!3276384 e!3276382)))

(declare-fun c!912260 () Bool)

(assert (=> b!5267872 (= c!912260 (is-Nil!60835 (t!374150 s!2326)))))

(declare-fun d!1695283 () Bool)

(declare-fun e!3276380 () Bool)

(assert (=> d!1695283 e!3276380))

(declare-fun res!2234941 () Bool)

(assert (=> d!1695283 (=> res!2234941 e!3276380)))

(assert (=> d!1695283 (= res!2234941 e!3276381)))

(declare-fun res!2234945 () Bool)

(assert (=> d!1695283 (=> (not res!2234945) (not e!3276381))))

(assert (=> d!1695283 (= res!2234945 (isDefined!11700 lt!2156211))))

(assert (=> d!1695283 (= lt!2156211 e!3276384)))

(declare-fun c!912259 () Bool)

(declare-fun e!3276383 () Bool)

(assert (=> d!1695283 (= c!912259 e!3276383)))

(declare-fun res!2234942 () Bool)

(assert (=> d!1695283 (=> (not res!2234942) (not e!3276383))))

(assert (=> d!1695283 (= res!2234942 (matchR!7071 (regOne!30284 r!7292) (++!13267 Nil!60835 (Cons!60835 (h!67283 s!2326) Nil!60835))))))

(assert (=> d!1695283 (validRegex!6622 (regOne!30284 r!7292))))

(assert (=> d!1695283 (= (findConcatSeparation!1411 (regOne!30284 r!7292) (regTwo!30284 r!7292) (++!13267 Nil!60835 (Cons!60835 (h!67283 s!2326) Nil!60835)) (t!374150 s!2326) s!2326) lt!2156211)))

(declare-fun b!5267873 () Bool)

(assert (=> b!5267873 (= e!3276382 None!14996)))

(declare-fun b!5267874 () Bool)

(declare-fun res!2234943 () Bool)

(assert (=> b!5267874 (=> (not res!2234943) (not e!3276381))))

(assert (=> b!5267874 (= res!2234943 (matchR!7071 (regOne!30284 r!7292) (_1!35388 (get!20916 lt!2156211))))))

(declare-fun b!5267875 () Bool)

(assert (=> b!5267875 (= e!3276383 (matchR!7071 (regTwo!30284 r!7292) (t!374150 s!2326)))))

(declare-fun b!5267876 () Bool)

(declare-fun res!2234944 () Bool)

(assert (=> b!5267876 (=> (not res!2234944) (not e!3276381))))

(assert (=> b!5267876 (= res!2234944 (matchR!7071 (regTwo!30284 r!7292) (_2!35388 (get!20916 lt!2156211))))))

(declare-fun b!5267877 () Bool)

(assert (=> b!5267877 (= e!3276384 (Some!14996 (tuple2!64171 (++!13267 Nil!60835 (Cons!60835 (h!67283 s!2326) Nil!60835)) (t!374150 s!2326))))))

(declare-fun b!5267878 () Bool)

(assert (=> b!5267878 (= e!3276380 (not (isDefined!11700 lt!2156211)))))

(assert (= (and d!1695283 res!2234942) b!5267875))

(assert (= (and d!1695283 c!912259) b!5267877))

(assert (= (and d!1695283 (not c!912259)) b!5267872))

(assert (= (and b!5267872 c!912260) b!5267873))

(assert (= (and b!5267872 (not c!912260)) b!5267870))

(assert (= (and d!1695283 res!2234945) b!5267874))

(assert (= (and b!5267874 res!2234943) b!5267876))

(assert (= (and b!5267876 res!2234944) b!5267871))

(assert (= (and d!1695283 (not res!2234941)) b!5267878))

(declare-fun m!6307620 () Bool)

(assert (=> b!5267874 m!6307620))

(declare-fun m!6307622 () Bool)

(assert (=> b!5267874 m!6307622))

(declare-fun m!6307624 () Bool)

(assert (=> b!5267875 m!6307624))

(declare-fun m!6307626 () Bool)

(assert (=> b!5267878 m!6307626))

(assert (=> b!5267870 m!6306962))

(declare-fun m!6307628 () Bool)

(assert (=> b!5267870 m!6307628))

(assert (=> b!5267870 m!6307628))

(declare-fun m!6307630 () Bool)

(assert (=> b!5267870 m!6307630))

(assert (=> b!5267870 m!6306962))

(declare-fun m!6307632 () Bool)

(assert (=> b!5267870 m!6307632))

(assert (=> b!5267870 m!6307628))

(declare-fun m!6307634 () Bool)

(assert (=> b!5267870 m!6307634))

(assert (=> b!5267871 m!6307620))

(declare-fun m!6307636 () Bool)

(assert (=> b!5267871 m!6307636))

(assert (=> d!1695283 m!6307626))

(assert (=> d!1695283 m!6306962))

(declare-fun m!6307638 () Bool)

(assert (=> d!1695283 m!6307638))

(assert (=> d!1695283 m!6306974))

(assert (=> b!5267876 m!6307620))

(declare-fun m!6307640 () Bool)

(assert (=> b!5267876 m!6307640))

(assert (=> b!5266974 d!1695283))

(declare-fun b!5267882 () Bool)

(declare-fun e!3276385 () Bool)

(declare-fun lt!2156214 () List!60959)

(assert (=> b!5267882 (= e!3276385 (or (not (= (_2!35388 (get!20916 lt!2156122)) Nil!60835)) (= lt!2156214 (_1!35388 (get!20916 lt!2156122)))))))

(declare-fun d!1695285 () Bool)

(assert (=> d!1695285 e!3276385))

(declare-fun res!2234947 () Bool)

(assert (=> d!1695285 (=> (not res!2234947) (not e!3276385))))

(assert (=> d!1695285 (= res!2234947 (= (content!10819 lt!2156214) (set.union (content!10819 (_1!35388 (get!20916 lt!2156122))) (content!10819 (_2!35388 (get!20916 lt!2156122))))))))

(declare-fun e!3276386 () List!60959)

(assert (=> d!1695285 (= lt!2156214 e!3276386)))

(declare-fun c!912261 () Bool)

(assert (=> d!1695285 (= c!912261 (is-Nil!60835 (_1!35388 (get!20916 lt!2156122))))))

(assert (=> d!1695285 (= (++!13267 (_1!35388 (get!20916 lt!2156122)) (_2!35388 (get!20916 lt!2156122))) lt!2156214)))

(declare-fun b!5267881 () Bool)

(declare-fun res!2234946 () Bool)

(assert (=> b!5267881 (=> (not res!2234946) (not e!3276385))))

(assert (=> b!5267881 (= res!2234946 (= (size!39745 lt!2156214) (+ (size!39745 (_1!35388 (get!20916 lt!2156122))) (size!39745 (_2!35388 (get!20916 lt!2156122))))))))

(declare-fun b!5267879 () Bool)

(assert (=> b!5267879 (= e!3276386 (_2!35388 (get!20916 lt!2156122)))))

(declare-fun b!5267880 () Bool)

(assert (=> b!5267880 (= e!3276386 (Cons!60835 (h!67283 (_1!35388 (get!20916 lt!2156122))) (++!13267 (t!374150 (_1!35388 (get!20916 lt!2156122))) (_2!35388 (get!20916 lt!2156122)))))))

(assert (= (and d!1695285 c!912261) b!5267879))

(assert (= (and d!1695285 (not c!912261)) b!5267880))

(assert (= (and d!1695285 res!2234947) b!5267881))

(assert (= (and b!5267881 res!2234946) b!5267882))

(declare-fun m!6307642 () Bool)

(assert (=> d!1695285 m!6307642))

(declare-fun m!6307644 () Bool)

(assert (=> d!1695285 m!6307644))

(declare-fun m!6307646 () Bool)

(assert (=> d!1695285 m!6307646))

(declare-fun m!6307648 () Bool)

(assert (=> b!5267881 m!6307648))

(declare-fun m!6307650 () Bool)

(assert (=> b!5267881 m!6307650))

(declare-fun m!6307652 () Bool)

(assert (=> b!5267881 m!6307652))

(declare-fun m!6307654 () Bool)

(assert (=> b!5267880 m!6307654))

(assert (=> b!5266975 d!1695285))

(assert (=> b!5266975 d!1695223))

(declare-fun b!5267883 () Bool)

(declare-fun e!3276393 () Bool)

(declare-fun e!3276390 () Bool)

(assert (=> b!5267883 (= e!3276393 e!3276390)))

(declare-fun res!2234952 () Bool)

(assert (=> b!5267883 (= res!2234952 (not (nullable!5055 (reg!15215 lt!2156153))))))

(assert (=> b!5267883 (=> (not res!2234952) (not e!3276390))))

(declare-fun d!1695287 () Bool)

(declare-fun res!2234949 () Bool)

(declare-fun e!3276387 () Bool)

(assert (=> d!1695287 (=> res!2234949 e!3276387)))

(assert (=> d!1695287 (= res!2234949 (is-ElementMatch!14886 lt!2156153))))

(assert (=> d!1695287 (= (validRegex!6622 lt!2156153) e!3276387)))

(declare-fun b!5267884 () Bool)

(assert (=> b!5267884 (= e!3276387 e!3276393)))

(declare-fun c!912263 () Bool)

(assert (=> b!5267884 (= c!912263 (is-Star!14886 lt!2156153))))

(declare-fun b!5267885 () Bool)

(declare-fun e!3276391 () Bool)

(declare-fun call!374071 () Bool)

(assert (=> b!5267885 (= e!3276391 call!374071)))

(declare-fun b!5267886 () Bool)

(declare-fun e!3276392 () Bool)

(assert (=> b!5267886 (= e!3276393 e!3276392)))

(declare-fun c!912262 () Bool)

(assert (=> b!5267886 (= c!912262 (is-Union!14886 lt!2156153))))

(declare-fun call!374070 () Bool)

(declare-fun bm!374064 () Bool)

(assert (=> bm!374064 (= call!374070 (validRegex!6622 (ite c!912263 (reg!15215 lt!2156153) (ite c!912262 (regTwo!30285 lt!2156153) (regTwo!30284 lt!2156153)))))))

(declare-fun b!5267887 () Bool)

(declare-fun e!3276388 () Bool)

(assert (=> b!5267887 (= e!3276388 call!374071)))

(declare-fun bm!374065 () Bool)

(assert (=> bm!374065 (= call!374071 call!374070)))

(declare-fun b!5267888 () Bool)

(assert (=> b!5267888 (= e!3276390 call!374070)))

(declare-fun bm!374066 () Bool)

(declare-fun call!374069 () Bool)

(assert (=> bm!374066 (= call!374069 (validRegex!6622 (ite c!912262 (regOne!30285 lt!2156153) (regOne!30284 lt!2156153))))))

(declare-fun b!5267889 () Bool)

(declare-fun e!3276389 () Bool)

(assert (=> b!5267889 (= e!3276389 e!3276391)))

(declare-fun res!2234951 () Bool)

(assert (=> b!5267889 (=> (not res!2234951) (not e!3276391))))

(assert (=> b!5267889 (= res!2234951 call!374069)))

(declare-fun b!5267890 () Bool)

(declare-fun res!2234948 () Bool)

(assert (=> b!5267890 (=> res!2234948 e!3276389)))

(assert (=> b!5267890 (= res!2234948 (not (is-Concat!23731 lt!2156153)))))

(assert (=> b!5267890 (= e!3276392 e!3276389)))

(declare-fun b!5267891 () Bool)

(declare-fun res!2234950 () Bool)

(assert (=> b!5267891 (=> (not res!2234950) (not e!3276388))))

(assert (=> b!5267891 (= res!2234950 call!374069)))

(assert (=> b!5267891 (= e!3276392 e!3276388)))

(assert (= (and d!1695287 (not res!2234949)) b!5267884))

(assert (= (and b!5267884 c!912263) b!5267883))

(assert (= (and b!5267884 (not c!912263)) b!5267886))

(assert (= (and b!5267883 res!2234952) b!5267888))

(assert (= (and b!5267886 c!912262) b!5267891))

(assert (= (and b!5267886 (not c!912262)) b!5267890))

(assert (= (and b!5267891 res!2234950) b!5267887))

(assert (= (and b!5267890 (not res!2234948)) b!5267889))

(assert (= (and b!5267889 res!2234951) b!5267885))

(assert (= (or b!5267887 b!5267885) bm!374065))

(assert (= (or b!5267891 b!5267889) bm!374066))

(assert (= (or b!5267888 bm!374065) bm!374064))

(declare-fun m!6307656 () Bool)

(assert (=> b!5267883 m!6307656))

(declare-fun m!6307658 () Bool)

(assert (=> bm!374064 m!6307658))

(declare-fun m!6307660 () Bool)

(assert (=> bm!374066 m!6307660))

(assert (=> d!1695095 d!1695287))

(declare-fun d!1695289 () Bool)

(declare-fun res!2234953 () Bool)

(declare-fun e!3276394 () Bool)

(assert (=> d!1695289 (=> res!2234953 e!3276394)))

(assert (=> d!1695289 (= res!2234953 (is-Nil!60833 (unfocusZipperList!328 zl!343)))))

(assert (=> d!1695289 (= (forall!14296 (unfocusZipperList!328 zl!343) lambda!265660) e!3276394)))

(declare-fun b!5267892 () Bool)

(declare-fun e!3276395 () Bool)

(assert (=> b!5267892 (= e!3276394 e!3276395)))

(declare-fun res!2234954 () Bool)

(assert (=> b!5267892 (=> (not res!2234954) (not e!3276395))))

(assert (=> b!5267892 (= res!2234954 (dynLambda!24040 lambda!265660 (h!67281 (unfocusZipperList!328 zl!343))))))

(declare-fun b!5267893 () Bool)

(assert (=> b!5267893 (= e!3276395 (forall!14296 (t!374148 (unfocusZipperList!328 zl!343)) lambda!265660))))

(assert (= (and d!1695289 (not res!2234953)) b!5267892))

(assert (= (and b!5267892 res!2234954) b!5267893))

(declare-fun b_lambda!203193 () Bool)

(assert (=> (not b_lambda!203193) (not b!5267892)))

(declare-fun m!6307662 () Bool)

(assert (=> b!5267892 m!6307662))

(declare-fun m!6307664 () Bool)

(assert (=> b!5267893 m!6307664))

(assert (=> d!1695095 d!1695289))

(declare-fun b!5267894 () Bool)

(declare-fun e!3276402 () Bool)

(declare-fun e!3276399 () Bool)

(assert (=> b!5267894 (= e!3276402 e!3276399)))

(declare-fun res!2234959 () Bool)

(assert (=> b!5267894 (= res!2234959 (not (nullable!5055 (reg!15215 (ite c!912005 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))))))))

(assert (=> b!5267894 (=> (not res!2234959) (not e!3276399))))

(declare-fun d!1695291 () Bool)

(declare-fun res!2234956 () Bool)

(declare-fun e!3276396 () Bool)

(assert (=> d!1695291 (=> res!2234956 e!3276396)))

(assert (=> d!1695291 (= res!2234956 (is-ElementMatch!14886 (ite c!912005 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))))))

(assert (=> d!1695291 (= (validRegex!6622 (ite c!912005 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))) e!3276396)))

(declare-fun b!5267895 () Bool)

(assert (=> b!5267895 (= e!3276396 e!3276402)))

(declare-fun c!912265 () Bool)

(assert (=> b!5267895 (= c!912265 (is-Star!14886 (ite c!912005 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))))))

(declare-fun b!5267896 () Bool)

(declare-fun e!3276400 () Bool)

(declare-fun call!374074 () Bool)

(assert (=> b!5267896 (= e!3276400 call!374074)))

(declare-fun b!5267897 () Bool)

(declare-fun e!3276401 () Bool)

(assert (=> b!5267897 (= e!3276402 e!3276401)))

(declare-fun c!912264 () Bool)

(assert (=> b!5267897 (= c!912264 (is-Union!14886 (ite c!912005 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))))))

(declare-fun bm!374067 () Bool)

(declare-fun call!374073 () Bool)

(assert (=> bm!374067 (= call!374073 (validRegex!6622 (ite c!912265 (reg!15215 (ite c!912005 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))) (ite c!912264 (regTwo!30285 (ite c!912005 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))) (regTwo!30284 (ite c!912005 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292)))))))))))

(declare-fun b!5267898 () Bool)

(declare-fun e!3276397 () Bool)

(assert (=> b!5267898 (= e!3276397 call!374074)))

(declare-fun bm!374068 () Bool)

(assert (=> bm!374068 (= call!374074 call!374073)))

(declare-fun b!5267899 () Bool)

(assert (=> b!5267899 (= e!3276399 call!374073)))

(declare-fun call!374072 () Bool)

(declare-fun bm!374069 () Bool)

(assert (=> bm!374069 (= call!374072 (validRegex!6622 (ite c!912264 (regOne!30285 (ite c!912005 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))) (regOne!30284 (ite c!912005 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))))))))

(declare-fun b!5267900 () Bool)

(declare-fun e!3276398 () Bool)

(assert (=> b!5267900 (= e!3276398 e!3276400)))

(declare-fun res!2234958 () Bool)

(assert (=> b!5267900 (=> (not res!2234958) (not e!3276400))))

(assert (=> b!5267900 (= res!2234958 call!374072)))

(declare-fun b!5267901 () Bool)

(declare-fun res!2234955 () Bool)

(assert (=> b!5267901 (=> res!2234955 e!3276398)))

(assert (=> b!5267901 (= res!2234955 (not (is-Concat!23731 (ite c!912005 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292)))))))))

(assert (=> b!5267901 (= e!3276401 e!3276398)))

(declare-fun b!5267902 () Bool)

(declare-fun res!2234957 () Bool)

(assert (=> b!5267902 (=> (not res!2234957) (not e!3276397))))

(assert (=> b!5267902 (= res!2234957 call!374072)))

(assert (=> b!5267902 (= e!3276401 e!3276397)))

(assert (= (and d!1695291 (not res!2234956)) b!5267895))

(assert (= (and b!5267895 c!912265) b!5267894))

(assert (= (and b!5267895 (not c!912265)) b!5267897))

(assert (= (and b!5267894 res!2234959) b!5267899))

(assert (= (and b!5267897 c!912264) b!5267902))

(assert (= (and b!5267897 (not c!912264)) b!5267901))

(assert (= (and b!5267902 res!2234957) b!5267898))

(assert (= (and b!5267901 (not res!2234955)) b!5267900))

(assert (= (and b!5267900 res!2234958) b!5267896))

(assert (= (or b!5267898 b!5267896) bm!374068))

(assert (= (or b!5267902 b!5267900) bm!374069))

(assert (= (or b!5267899 bm!374068) bm!374067))

(declare-fun m!6307666 () Bool)

(assert (=> b!5267894 m!6307666))

(declare-fun m!6307668 () Bool)

(assert (=> bm!374067 m!6307668))

(declare-fun m!6307670 () Bool)

(assert (=> bm!374069 m!6307670))

(assert (=> bm!373917 d!1695291))

(declare-fun b!5267903 () Bool)

(declare-fun e!3276409 () Bool)

(declare-fun e!3276406 () Bool)

(assert (=> b!5267903 (= e!3276409 e!3276406)))

(declare-fun res!2234964 () Bool)

(assert (=> b!5267903 (= res!2234964 (not (nullable!5055 (reg!15215 lt!2156145))))))

(assert (=> b!5267903 (=> (not res!2234964) (not e!3276406))))

(declare-fun d!1695293 () Bool)

(declare-fun res!2234961 () Bool)

(declare-fun e!3276403 () Bool)

(assert (=> d!1695293 (=> res!2234961 e!3276403)))

(assert (=> d!1695293 (= res!2234961 (is-ElementMatch!14886 lt!2156145))))

(assert (=> d!1695293 (= (validRegex!6622 lt!2156145) e!3276403)))

(declare-fun b!5267904 () Bool)

(assert (=> b!5267904 (= e!3276403 e!3276409)))

(declare-fun c!912267 () Bool)

(assert (=> b!5267904 (= c!912267 (is-Star!14886 lt!2156145))))

(declare-fun b!5267905 () Bool)

(declare-fun e!3276407 () Bool)

(declare-fun call!374077 () Bool)

(assert (=> b!5267905 (= e!3276407 call!374077)))

(declare-fun b!5267906 () Bool)

(declare-fun e!3276408 () Bool)

(assert (=> b!5267906 (= e!3276409 e!3276408)))

(declare-fun c!912266 () Bool)

(assert (=> b!5267906 (= c!912266 (is-Union!14886 lt!2156145))))

(declare-fun call!374076 () Bool)

(declare-fun bm!374070 () Bool)

(assert (=> bm!374070 (= call!374076 (validRegex!6622 (ite c!912267 (reg!15215 lt!2156145) (ite c!912266 (regTwo!30285 lt!2156145) (regTwo!30284 lt!2156145)))))))

(declare-fun b!5267907 () Bool)

(declare-fun e!3276404 () Bool)

(assert (=> b!5267907 (= e!3276404 call!374077)))

(declare-fun bm!374071 () Bool)

(assert (=> bm!374071 (= call!374077 call!374076)))

(declare-fun b!5267908 () Bool)

(assert (=> b!5267908 (= e!3276406 call!374076)))

(declare-fun bm!374072 () Bool)

(declare-fun call!374075 () Bool)

(assert (=> bm!374072 (= call!374075 (validRegex!6622 (ite c!912266 (regOne!30285 lt!2156145) (regOne!30284 lt!2156145))))))

(declare-fun b!5267909 () Bool)

(declare-fun e!3276405 () Bool)

(assert (=> b!5267909 (= e!3276405 e!3276407)))

(declare-fun res!2234963 () Bool)

(assert (=> b!5267909 (=> (not res!2234963) (not e!3276407))))

(assert (=> b!5267909 (= res!2234963 call!374075)))

(declare-fun b!5267910 () Bool)

(declare-fun res!2234960 () Bool)

(assert (=> b!5267910 (=> res!2234960 e!3276405)))

(assert (=> b!5267910 (= res!2234960 (not (is-Concat!23731 lt!2156145)))))

(assert (=> b!5267910 (= e!3276408 e!3276405)))

(declare-fun b!5267911 () Bool)

(declare-fun res!2234962 () Bool)

(assert (=> b!5267911 (=> (not res!2234962) (not e!3276404))))

(assert (=> b!5267911 (= res!2234962 call!374075)))

(assert (=> b!5267911 (= e!3276408 e!3276404)))

(assert (= (and d!1695293 (not res!2234961)) b!5267904))

(assert (= (and b!5267904 c!912267) b!5267903))

(assert (= (and b!5267904 (not c!912267)) b!5267906))

(assert (= (and b!5267903 res!2234964) b!5267908))

(assert (= (and b!5267906 c!912266) b!5267911))

(assert (= (and b!5267906 (not c!912266)) b!5267910))

(assert (= (and b!5267911 res!2234962) b!5267907))

(assert (= (and b!5267910 (not res!2234960)) b!5267909))

(assert (= (and b!5267909 res!2234963) b!5267905))

(assert (= (or b!5267907 b!5267905) bm!374071))

(assert (= (or b!5267911 b!5267909) bm!374072))

(assert (= (or b!5267908 bm!374071) bm!374070))

(declare-fun m!6307672 () Bool)

(assert (=> b!5267903 m!6307672))

(declare-fun m!6307674 () Bool)

(assert (=> bm!374070 m!6307674))

(declare-fun m!6307676 () Bool)

(assert (=> bm!374072 m!6307676))

(assert (=> d!1695069 d!1695293))

(declare-fun d!1695295 () Bool)

(declare-fun res!2234965 () Bool)

(declare-fun e!3276410 () Bool)

(assert (=> d!1695295 (=> res!2234965 e!3276410)))

(assert (=> d!1695295 (= res!2234965 (is-Nil!60833 (exprs!4770 (h!67282 zl!343))))))

(assert (=> d!1695295 (= (forall!14296 (exprs!4770 (h!67282 zl!343)) lambda!265656) e!3276410)))

(declare-fun b!5267912 () Bool)

(declare-fun e!3276411 () Bool)

(assert (=> b!5267912 (= e!3276410 e!3276411)))

(declare-fun res!2234966 () Bool)

(assert (=> b!5267912 (=> (not res!2234966) (not e!3276411))))

(assert (=> b!5267912 (= res!2234966 (dynLambda!24040 lambda!265656 (h!67281 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun b!5267913 () Bool)

(assert (=> b!5267913 (= e!3276411 (forall!14296 (t!374148 (exprs!4770 (h!67282 zl!343))) lambda!265656))))

(assert (= (and d!1695295 (not res!2234965)) b!5267912))

(assert (= (and b!5267912 res!2234966) b!5267913))

(declare-fun b_lambda!203195 () Bool)

(assert (=> (not b_lambda!203195) (not b!5267912)))

(declare-fun m!6307678 () Bool)

(assert (=> b!5267912 m!6307678))

(declare-fun m!6307680 () Bool)

(assert (=> b!5267913 m!6307680))

(assert (=> d!1695069 d!1695295))

(declare-fun b!5267914 () Bool)

(declare-fun e!3276416 () (Set Context!8540))

(assert (=> b!5267914 (= e!3276416 (as set.empty (Set Context!8540)))))

(declare-fun b!5267915 () Bool)

(declare-fun e!3276412 () (Set Context!8540))

(declare-fun call!374078 () (Set Context!8540))

(assert (=> b!5267915 (= e!3276412 call!374078)))

(declare-fun b!5267916 () Bool)

(declare-fun e!3276413 () (Set Context!8540))

(declare-fun call!374080 () (Set Context!8540))

(declare-fun call!374083 () (Set Context!8540))

(assert (=> b!5267916 (= e!3276413 (set.union call!374080 call!374083))))

(declare-fun b!5267917 () Bool)

(declare-fun c!912269 () Bool)

(assert (=> b!5267917 (= c!912269 (is-Star!14886 (ite c!912089 (regTwo!30285 (regTwo!30284 (regOne!30284 r!7292))) (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))))))))

(assert (=> b!5267917 (= e!3276412 e!3276416)))

(declare-fun b!5267918 () Bool)

(declare-fun c!912270 () Bool)

(declare-fun e!3276415 () Bool)

(assert (=> b!5267918 (= c!912270 e!3276415)))

(declare-fun res!2234967 () Bool)

(assert (=> b!5267918 (=> (not res!2234967) (not e!3276415))))

(assert (=> b!5267918 (= res!2234967 (is-Concat!23731 (ite c!912089 (regTwo!30285 (regTwo!30284 (regOne!30284 r!7292))) (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))))))))

(declare-fun e!3276414 () (Set Context!8540))

(assert (=> b!5267918 (= e!3276414 e!3276413)))

(declare-fun c!912271 () Bool)

(declare-fun call!374082 () List!60957)

(declare-fun bm!374073 () Bool)

(assert (=> bm!374073 (= call!374082 ($colon$colon!1337 (exprs!4770 (ite c!912089 lt!2156038 (Context!8541 call!373960))) (ite (or c!912270 c!912271) (regTwo!30284 (ite c!912089 (regTwo!30285 (regTwo!30284 (regOne!30284 r!7292))) (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))))) (ite c!912089 (regTwo!30285 (regTwo!30284 (regOne!30284 r!7292))) (regOne!30284 (regTwo!30284 (regOne!30284 r!7292)))))))))

(declare-fun b!5267919 () Bool)

(assert (=> b!5267919 (= e!3276413 e!3276412)))

(assert (=> b!5267919 (= c!912271 (is-Concat!23731 (ite c!912089 (regTwo!30285 (regTwo!30284 (regOne!30284 r!7292))) (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))))))))

(declare-fun b!5267920 () Bool)

(assert (=> b!5267920 (= e!3276415 (nullable!5055 (regOne!30284 (ite c!912089 (regTwo!30285 (regTwo!30284 (regOne!30284 r!7292))) (regOne!30284 (regTwo!30284 (regOne!30284 r!7292)))))))))

(declare-fun b!5267921 () Bool)

(declare-fun call!374079 () (Set Context!8540))

(assert (=> b!5267921 (= e!3276414 (set.union call!374079 call!374080))))

(declare-fun c!912272 () Bool)

(declare-fun call!374081 () List!60957)

(declare-fun bm!374074 () Bool)

(assert (=> bm!374074 (= call!374079 (derivationStepZipperDown!334 (ite c!912272 (regOne!30285 (ite c!912089 (regTwo!30285 (regTwo!30284 (regOne!30284 r!7292))) (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))))) (ite c!912270 (regTwo!30284 (ite c!912089 (regTwo!30285 (regTwo!30284 (regOne!30284 r!7292))) (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))))) (ite c!912271 (regOne!30284 (ite c!912089 (regTwo!30285 (regTwo!30284 (regOne!30284 r!7292))) (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))))) (reg!15215 (ite c!912089 (regTwo!30285 (regTwo!30284 (regOne!30284 r!7292))) (regOne!30284 (regTwo!30284 (regOne!30284 r!7292)))))))) (ite (or c!912272 c!912270) (ite c!912089 lt!2156038 (Context!8541 call!373960)) (Context!8541 call!374081)) (h!67283 s!2326)))))

(declare-fun b!5267922 () Bool)

(declare-fun e!3276417 () (Set Context!8540))

(assert (=> b!5267922 (= e!3276417 e!3276414)))

(assert (=> b!5267922 (= c!912272 (is-Union!14886 (ite c!912089 (regTwo!30285 (regTwo!30284 (regOne!30284 r!7292))) (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))))))))

(declare-fun bm!374075 () Bool)

(assert (=> bm!374075 (= call!374078 call!374083)))

(declare-fun d!1695297 () Bool)

(declare-fun c!912268 () Bool)

(assert (=> d!1695297 (= c!912268 (and (is-ElementMatch!14886 (ite c!912089 (regTwo!30285 (regTwo!30284 (regOne!30284 r!7292))) (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))))) (= (c!911978 (ite c!912089 (regTwo!30285 (regTwo!30284 (regOne!30284 r!7292))) (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))))) (h!67283 s!2326))))))

(assert (=> d!1695297 (= (derivationStepZipperDown!334 (ite c!912089 (regTwo!30285 (regTwo!30284 (regOne!30284 r!7292))) (regOne!30284 (regTwo!30284 (regOne!30284 r!7292)))) (ite c!912089 lt!2156038 (Context!8541 call!373960)) (h!67283 s!2326)) e!3276417)))

(declare-fun b!5267923 () Bool)

(assert (=> b!5267923 (= e!3276417 (set.insert (ite c!912089 lt!2156038 (Context!8541 call!373960)) (as set.empty (Set Context!8540))))))

(declare-fun bm!374076 () Bool)

(assert (=> bm!374076 (= call!374081 call!374082)))

(declare-fun bm!374077 () Bool)

(assert (=> bm!374077 (= call!374080 (derivationStepZipperDown!334 (ite c!912272 (regTwo!30285 (ite c!912089 (regTwo!30285 (regTwo!30284 (regOne!30284 r!7292))) (regOne!30284 (regTwo!30284 (regOne!30284 r!7292))))) (regOne!30284 (ite c!912089 (regTwo!30285 (regTwo!30284 (regOne!30284 r!7292))) (regOne!30284 (regTwo!30284 (regOne!30284 r!7292)))))) (ite c!912272 (ite c!912089 lt!2156038 (Context!8541 call!373960)) (Context!8541 call!374082)) (h!67283 s!2326)))))

(declare-fun bm!374078 () Bool)

(assert (=> bm!374078 (= call!374083 call!374079)))

(declare-fun b!5267924 () Bool)

(assert (=> b!5267924 (= e!3276416 call!374078)))

(assert (= (and d!1695297 c!912268) b!5267923))

(assert (= (and d!1695297 (not c!912268)) b!5267922))

(assert (= (and b!5267922 c!912272) b!5267921))

(assert (= (and b!5267922 (not c!912272)) b!5267918))

(assert (= (and b!5267918 res!2234967) b!5267920))

(assert (= (and b!5267918 c!912270) b!5267916))

(assert (= (and b!5267918 (not c!912270)) b!5267919))

(assert (= (and b!5267919 c!912271) b!5267915))

(assert (= (and b!5267919 (not c!912271)) b!5267917))

(assert (= (and b!5267917 c!912269) b!5267924))

(assert (= (and b!5267917 (not c!912269)) b!5267914))

(assert (= (or b!5267915 b!5267924) bm!374076))

(assert (= (or b!5267915 b!5267924) bm!374075))

(assert (= (or b!5267916 bm!374076) bm!374073))

(assert (= (or b!5267916 bm!374075) bm!374078))

(assert (= (or b!5267921 b!5267916) bm!374077))

(assert (= (or b!5267921 bm!374078) bm!374074))

(declare-fun m!6307682 () Bool)

(assert (=> bm!374074 m!6307682))

(declare-fun m!6307684 () Bool)

(assert (=> bm!374077 m!6307684))

(declare-fun m!6307686 () Bool)

(assert (=> bm!374073 m!6307686))

(declare-fun m!6307688 () Bool)

(assert (=> b!5267920 m!6307688))

(declare-fun m!6307690 () Bool)

(assert (=> b!5267923 m!6307690))

(assert (=> bm!373955 d!1695297))

(assert (=> d!1695039 d!1695033))

(declare-fun d!1695299 () Bool)

(assert (=> d!1695299 (= (Exists!2067 lambda!265641) (choose!39295 lambda!265641))))

(declare-fun bs!1220725 () Bool)

(assert (= bs!1220725 d!1695299))

(declare-fun m!6307692 () Bool)

(assert (=> bs!1220725 m!6307692))

(assert (=> d!1695039 d!1695299))

(assert (=> d!1695039 d!1695255))

(assert (=> d!1695039 d!1695043))

(declare-fun bs!1220726 () Bool)

(declare-fun d!1695301 () Bool)

(assert (= bs!1220726 (and d!1695301 b!5267825)))

(declare-fun lambda!265705 () Int)

(assert (=> bs!1220726 (not (= lambda!265705 lambda!265701))))

(declare-fun bs!1220727 () Bool)

(assert (= bs!1220727 (and d!1695301 d!1695041)))

(assert (=> bs!1220727 (= lambda!265705 lambda!265646)))

(declare-fun bs!1220728 () Bool)

(assert (= bs!1220728 (and d!1695301 b!5267064)))

(assert (=> bs!1220728 (not (= lambda!265705 lambda!265652))))

(declare-fun bs!1220729 () Bool)

(assert (= bs!1220729 (and d!1695301 b!5267058)))

(assert (=> bs!1220729 (not (= lambda!265705 lambda!265653))))

(assert (=> bs!1220727 (not (= lambda!265705 lambda!265647))))

(declare-fun bs!1220730 () Bool)

(assert (= bs!1220730 (and d!1695301 b!5266802)))

(assert (=> bs!1220730 (not (= lambda!265705 lambda!265621))))

(declare-fun bs!1220731 () Bool)

(assert (= bs!1220731 (and d!1695301 b!5267831)))

(assert (=> bs!1220731 (not (= lambda!265705 lambda!265700))))

(assert (=> bs!1220730 (= lambda!265705 lambda!265620)))

(declare-fun bs!1220732 () Bool)

(assert (= bs!1220732 (and d!1695301 d!1695039)))

(assert (=> bs!1220732 (= lambda!265705 lambda!265641)))

(assert (=> d!1695301 true))

(assert (=> d!1695301 true))

(assert (=> d!1695301 true))

(assert (=> d!1695301 (= (isDefined!11700 (findConcatSeparation!1411 (regOne!30284 r!7292) (regTwo!30284 r!7292) Nil!60835 s!2326 s!2326)) (Exists!2067 lambda!265705))))

(assert (=> d!1695301 true))

(declare-fun _$89!1457 () Unit!153062)

(assert (=> d!1695301 (= (choose!39296 (regOne!30284 r!7292) (regTwo!30284 r!7292) s!2326) _$89!1457)))

(declare-fun bs!1220733 () Bool)

(assert (= bs!1220733 d!1695301))

(assert (=> bs!1220733 m!6306776))

(assert (=> bs!1220733 m!6306776))

(assert (=> bs!1220733 m!6306778))

(declare-fun m!6307694 () Bool)

(assert (=> bs!1220733 m!6307694))

(assert (=> d!1695039 d!1695301))

(declare-fun bm!374079 () Bool)

(declare-fun call!374084 () (Set Context!8540))

(assert (=> bm!374079 (= call!374084 (derivationStepZipperDown!334 (h!67281 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 lt!2156034))))) (Context!8541 (t!374148 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 lt!2156034)))))) (h!67283 s!2326)))))

(declare-fun b!5267929 () Bool)

(declare-fun e!3276422 () (Set Context!8540))

(assert (=> b!5267929 (= e!3276422 (set.union call!374084 (derivationStepZipperUp!258 (Context!8541 (t!374148 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 lt!2156034)))))) (h!67283 s!2326))))))

(declare-fun b!5267930 () Bool)

(declare-fun e!3276421 () (Set Context!8540))

(assert (=> b!5267930 (= e!3276422 e!3276421)))

(declare-fun c!912273 () Bool)

(assert (=> b!5267930 (= c!912273 (is-Cons!60833 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 lt!2156034))))))))

(declare-fun b!5267931 () Bool)

(declare-fun e!3276420 () Bool)

(assert (=> b!5267931 (= e!3276420 (nullable!5055 (h!67281 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 lt!2156034)))))))))

(declare-fun d!1695303 () Bool)

(declare-fun c!912274 () Bool)

(assert (=> d!1695303 (= c!912274 e!3276420)))

(declare-fun res!2234972 () Bool)

(assert (=> d!1695303 (=> (not res!2234972) (not e!3276420))))

(assert (=> d!1695303 (= res!2234972 (is-Cons!60833 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 lt!2156034))))))))

(assert (=> d!1695303 (= (derivationStepZipperUp!258 (Context!8541 (t!374148 (exprs!4770 lt!2156034))) (h!67283 s!2326)) e!3276422)))

(declare-fun b!5267932 () Bool)

(assert (=> b!5267932 (= e!3276421 (as set.empty (Set Context!8540)))))

(declare-fun b!5267933 () Bool)

(assert (=> b!5267933 (= e!3276421 call!374084)))

(assert (= (and d!1695303 res!2234972) b!5267931))

(assert (= (and d!1695303 c!912274) b!5267929))

(assert (= (and d!1695303 (not c!912274)) b!5267930))

(assert (= (and b!5267930 c!912273) b!5267933))

(assert (= (and b!5267930 (not c!912273)) b!5267932))

(assert (= (or b!5267929 b!5267933) bm!374079))

(declare-fun m!6307696 () Bool)

(assert (=> bm!374079 m!6307696))

(declare-fun m!6307698 () Bool)

(assert (=> b!5267929 m!6307698))

(declare-fun m!6307700 () Bool)

(assert (=> b!5267931 m!6307700))

(assert (=> b!5267021 d!1695303))

(declare-fun b!5267934 () Bool)

(declare-fun e!3276427 () Bool)

(declare-fun e!3276429 () Bool)

(assert (=> b!5267934 (= e!3276427 e!3276429)))

(declare-fun c!912276 () Bool)

(assert (=> b!5267934 (= c!912276 (is-EmptyLang!14886 (regTwo!30284 r!7292)))))

(declare-fun b!5267935 () Bool)

(declare-fun e!3276424 () Bool)

(assert (=> b!5267935 (= e!3276424 (nullable!5055 (regTwo!30284 r!7292)))))

(declare-fun b!5267936 () Bool)

(declare-fun res!2234977 () Bool)

(declare-fun e!3276425 () Bool)

(assert (=> b!5267936 (=> (not res!2234977) (not e!3276425))))

(assert (=> b!5267936 (= res!2234977 (isEmpty!32785 (tail!10389 s!2326)))))

(declare-fun b!5267937 () Bool)

(declare-fun e!3276428 () Bool)

(assert (=> b!5267937 (= e!3276428 (not (= (head!11292 s!2326) (c!911978 (regTwo!30284 r!7292)))))))

(declare-fun b!5267938 () Bool)

(declare-fun res!2234976 () Bool)

(assert (=> b!5267938 (=> (not res!2234976) (not e!3276425))))

(declare-fun call!374085 () Bool)

(assert (=> b!5267938 (= res!2234976 (not call!374085))))

(declare-fun b!5267939 () Bool)

(declare-fun res!2234980 () Bool)

(declare-fun e!3276423 () Bool)

(assert (=> b!5267939 (=> res!2234980 e!3276423)))

(assert (=> b!5267939 (= res!2234980 (not (is-ElementMatch!14886 (regTwo!30284 r!7292))))))

(assert (=> b!5267939 (= e!3276429 e!3276423)))

(declare-fun b!5267940 () Bool)

(assert (=> b!5267940 (= e!3276425 (= (head!11292 s!2326) (c!911978 (regTwo!30284 r!7292))))))

(declare-fun b!5267941 () Bool)

(assert (=> b!5267941 (= e!3276424 (matchR!7071 (derivativeStep!4108 (regTwo!30284 r!7292) (head!11292 s!2326)) (tail!10389 s!2326)))))

(declare-fun d!1695305 () Bool)

(assert (=> d!1695305 e!3276427))

(declare-fun c!912277 () Bool)

(assert (=> d!1695305 (= c!912277 (is-EmptyExpr!14886 (regTwo!30284 r!7292)))))

(declare-fun lt!2156215 () Bool)

(assert (=> d!1695305 (= lt!2156215 e!3276424)))

(declare-fun c!912275 () Bool)

(assert (=> d!1695305 (= c!912275 (isEmpty!32785 s!2326))))

(assert (=> d!1695305 (validRegex!6622 (regTwo!30284 r!7292))))

(assert (=> d!1695305 (= (matchR!7071 (regTwo!30284 r!7292) s!2326) lt!2156215)))

(declare-fun b!5267942 () Bool)

(declare-fun res!2234979 () Bool)

(assert (=> b!5267942 (=> res!2234979 e!3276423)))

(assert (=> b!5267942 (= res!2234979 e!3276425)))

(declare-fun res!2234978 () Bool)

(assert (=> b!5267942 (=> (not res!2234978) (not e!3276425))))

(assert (=> b!5267942 (= res!2234978 lt!2156215)))

(declare-fun bm!374080 () Bool)

(assert (=> bm!374080 (= call!374085 (isEmpty!32785 s!2326))))

(declare-fun b!5267943 () Bool)

(assert (=> b!5267943 (= e!3276429 (not lt!2156215))))

(declare-fun b!5267944 () Bool)

(assert (=> b!5267944 (= e!3276427 (= lt!2156215 call!374085))))

(declare-fun b!5267945 () Bool)

(declare-fun e!3276426 () Bool)

(assert (=> b!5267945 (= e!3276423 e!3276426)))

(declare-fun res!2234973 () Bool)

(assert (=> b!5267945 (=> (not res!2234973) (not e!3276426))))

(assert (=> b!5267945 (= res!2234973 (not lt!2156215))))

(declare-fun b!5267946 () Bool)

(declare-fun res!2234975 () Bool)

(assert (=> b!5267946 (=> res!2234975 e!3276428)))

(assert (=> b!5267946 (= res!2234975 (not (isEmpty!32785 (tail!10389 s!2326))))))

(declare-fun b!5267947 () Bool)

(assert (=> b!5267947 (= e!3276426 e!3276428)))

(declare-fun res!2234974 () Bool)

(assert (=> b!5267947 (=> res!2234974 e!3276428)))

(assert (=> b!5267947 (= res!2234974 call!374085)))

(assert (= (and d!1695305 c!912275) b!5267935))

(assert (= (and d!1695305 (not c!912275)) b!5267941))

(assert (= (and d!1695305 c!912277) b!5267944))

(assert (= (and d!1695305 (not c!912277)) b!5267934))

(assert (= (and b!5267934 c!912276) b!5267943))

(assert (= (and b!5267934 (not c!912276)) b!5267939))

(assert (= (and b!5267939 (not res!2234980)) b!5267942))

(assert (= (and b!5267942 res!2234978) b!5267938))

(assert (= (and b!5267938 res!2234976) b!5267936))

(assert (= (and b!5267936 res!2234977) b!5267940))

(assert (= (and b!5267942 (not res!2234979)) b!5267945))

(assert (= (and b!5267945 res!2234973) b!5267947))

(assert (= (and b!5267947 (not res!2234974)) b!5267946))

(assert (= (and b!5267946 (not res!2234975)) b!5267937))

(assert (= (or b!5267944 b!5267938 b!5267947) bm!374080))

(assert (=> b!5267937 m!6307034))

(assert (=> d!1695305 m!6307026))

(declare-fun m!6307702 () Bool)

(assert (=> d!1695305 m!6307702))

(assert (=> b!5267941 m!6307034))

(assert (=> b!5267941 m!6307034))

(declare-fun m!6307704 () Bool)

(assert (=> b!5267941 m!6307704))

(assert (=> b!5267941 m!6307038))

(assert (=> b!5267941 m!6307704))

(assert (=> b!5267941 m!6307038))

(declare-fun m!6307706 () Bool)

(assert (=> b!5267941 m!6307706))

(assert (=> bm!374080 m!6307026))

(declare-fun m!6307708 () Bool)

(assert (=> b!5267935 m!6307708))

(assert (=> b!5267936 m!6307038))

(assert (=> b!5267936 m!6307038))

(assert (=> b!5267936 m!6307044))

(assert (=> b!5267940 m!6307034))

(assert (=> b!5267946 m!6307038))

(assert (=> b!5267946 m!6307038))

(assert (=> b!5267946 m!6307044))

(assert (=> b!5266979 d!1695305))

(assert (=> d!1695049 d!1695205))

(declare-fun bs!1220734 () Bool)

(declare-fun d!1695307 () Bool)

(assert (= bs!1220734 (and d!1695307 d!1695235)))

(declare-fun lambda!265706 () Int)

(assert (=> bs!1220734 (= lambda!265706 lambda!265696)))

(declare-fun bs!1220735 () Bool)

(assert (= bs!1220735 (and d!1695307 d!1695267)))

(assert (=> bs!1220735 (= lambda!265706 lambda!265702)))

(assert (=> d!1695307 (= (nullableZipper!1287 lt!2156044) (exists!1990 lt!2156044 lambda!265706))))

(declare-fun bs!1220736 () Bool)

(assert (= bs!1220736 d!1695307))

(declare-fun m!6307710 () Bool)

(assert (=> bs!1220736 m!6307710))

(assert (=> b!5267111 d!1695307))

(declare-fun bs!1220737 () Bool)

(declare-fun d!1695309 () Bool)

(assert (= bs!1220737 (and d!1695309 d!1695235)))

(declare-fun lambda!265707 () Int)

(assert (=> bs!1220737 (= lambda!265707 lambda!265696)))

(declare-fun bs!1220738 () Bool)

(assert (= bs!1220738 (and d!1695309 d!1695267)))

(assert (=> bs!1220738 (= lambda!265707 lambda!265702)))

(declare-fun bs!1220739 () Bool)

(assert (= bs!1220739 (and d!1695309 d!1695307)))

(assert (=> bs!1220739 (= lambda!265707 lambda!265706)))

(assert (=> d!1695309 (= (nullableZipper!1287 lt!2156046) (exists!1990 lt!2156046 lambda!265707))))

(declare-fun bs!1220740 () Bool)

(assert (= bs!1220740 d!1695309))

(declare-fun m!6307712 () Bool)

(assert (=> bs!1220740 m!6307712))

(assert (=> b!5266927 d!1695309))

(declare-fun d!1695311 () Bool)

(assert (=> d!1695311 (= (nullable!5055 r!7292) (nullableFct!1439 r!7292))))

(declare-fun bs!1220741 () Bool)

(assert (= bs!1220741 d!1695311))

(declare-fun m!6307714 () Bool)

(assert (=> bs!1220741 m!6307714))

(assert (=> b!5267098 d!1695311))

(declare-fun d!1695313 () Bool)

(assert (=> d!1695313 (= (nullable!5055 (regOne!30284 (regOne!30284 (regOne!30284 r!7292)))) (nullableFct!1439 (regOne!30284 (regOne!30284 (regOne!30284 r!7292)))))))

(declare-fun bs!1220742 () Bool)

(assert (= bs!1220742 d!1695313))

(declare-fun m!6307716 () Bool)

(assert (=> bs!1220742 m!6307716))

(assert (=> b!5267249 d!1695313))

(declare-fun b!5267962 () Bool)

(declare-fun e!3276447 () Bool)

(declare-fun call!374090 () Bool)

(assert (=> b!5267962 (= e!3276447 call!374090)))

(declare-fun b!5267963 () Bool)

(declare-fun e!3276442 () Bool)

(declare-fun e!3276446 () Bool)

(assert (=> b!5267963 (= e!3276442 e!3276446)))

(declare-fun c!912280 () Bool)

(assert (=> b!5267963 (= c!912280 (is-Union!14886 (h!67281 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun bm!374085 () Bool)

(assert (=> bm!374085 (= call!374090 (nullable!5055 (ite c!912280 (regTwo!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))))))))

(declare-fun b!5267964 () Bool)

(declare-fun e!3276445 () Bool)

(assert (=> b!5267964 (= e!3276446 e!3276445)))

(declare-fun res!2234994 () Bool)

(declare-fun call!374091 () Bool)

(assert (=> b!5267964 (= res!2234994 call!374091)))

(assert (=> b!5267964 (=> res!2234994 e!3276445)))

(declare-fun b!5267965 () Bool)

(declare-fun e!3276444 () Bool)

(declare-fun e!3276443 () Bool)

(assert (=> b!5267965 (= e!3276444 e!3276443)))

(declare-fun res!2234995 () Bool)

(assert (=> b!5267965 (=> (not res!2234995) (not e!3276443))))

(assert (=> b!5267965 (= res!2234995 (and (not (is-EmptyLang!14886 (h!67281 (exprs!4770 (h!67282 zl!343))))) (not (is-ElementMatch!14886 (h!67281 (exprs!4770 (h!67282 zl!343)))))))))

(declare-fun b!5267966 () Bool)

(assert (=> b!5267966 (= e!3276445 call!374090)))

(declare-fun b!5267967 () Bool)

(assert (=> b!5267967 (= e!3276446 e!3276447)))

(declare-fun res!2234993 () Bool)

(assert (=> b!5267967 (= res!2234993 call!374091)))

(assert (=> b!5267967 (=> (not res!2234993) (not e!3276447))))

(declare-fun bm!374086 () Bool)

(assert (=> bm!374086 (= call!374091 (nullable!5055 (ite c!912280 (regOne!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))))))))

(declare-fun d!1695315 () Bool)

(declare-fun res!2234992 () Bool)

(assert (=> d!1695315 (=> res!2234992 e!3276444)))

(assert (=> d!1695315 (= res!2234992 (is-EmptyExpr!14886 (h!67281 (exprs!4770 (h!67282 zl!343)))))))

(assert (=> d!1695315 (= (nullableFct!1439 (h!67281 (exprs!4770 (h!67282 zl!343)))) e!3276444)))

(declare-fun b!5267968 () Bool)

(assert (=> b!5267968 (= e!3276443 e!3276442)))

(declare-fun res!2234991 () Bool)

(assert (=> b!5267968 (=> res!2234991 e!3276442)))

(assert (=> b!5267968 (= res!2234991 (is-Star!14886 (h!67281 (exprs!4770 (h!67282 zl!343)))))))

(assert (= (and d!1695315 (not res!2234992)) b!5267965))

(assert (= (and b!5267965 res!2234995) b!5267968))

(assert (= (and b!5267968 (not res!2234991)) b!5267963))

(assert (= (and b!5267963 c!912280) b!5267964))

(assert (= (and b!5267963 (not c!912280)) b!5267967))

(assert (= (and b!5267964 (not res!2234994)) b!5267966))

(assert (= (and b!5267967 res!2234993) b!5267962))

(assert (= (or b!5267966 b!5267962) bm!374085))

(assert (= (or b!5267964 b!5267967) bm!374086))

(declare-fun m!6307718 () Bool)

(assert (=> bm!374085 m!6307718))

(declare-fun m!6307720 () Bool)

(assert (=> bm!374086 m!6307720))

(assert (=> d!1695075 d!1695315))

(declare-fun d!1695317 () Bool)

(declare-fun c!912281 () Bool)

(assert (=> d!1695317 (= c!912281 (isEmpty!32785 (tail!10389 (t!374150 s!2326))))))

(declare-fun e!3276448 () Bool)

(assert (=> d!1695317 (= (matchZipper!1130 (derivationStepZipper!1131 (set.union lt!2156039 lt!2156044) (head!11292 (t!374150 s!2326))) (tail!10389 (t!374150 s!2326))) e!3276448)))

(declare-fun b!5267969 () Bool)

(assert (=> b!5267969 (= e!3276448 (nullableZipper!1287 (derivationStepZipper!1131 (set.union lt!2156039 lt!2156044) (head!11292 (t!374150 s!2326)))))))

(declare-fun b!5267970 () Bool)

(assert (=> b!5267970 (= e!3276448 (matchZipper!1130 (derivationStepZipper!1131 (derivationStepZipper!1131 (set.union lt!2156039 lt!2156044) (head!11292 (t!374150 s!2326))) (head!11292 (tail!10389 (t!374150 s!2326)))) (tail!10389 (tail!10389 (t!374150 s!2326)))))))

(assert (= (and d!1695317 c!912281) b!5267969))

(assert (= (and d!1695317 (not c!912281)) b!5267970))

(assert (=> d!1695317 m!6306944))

(assert (=> d!1695317 m!6307532))

(assert (=> b!5267969 m!6307004))

(declare-fun m!6307722 () Bool)

(assert (=> b!5267969 m!6307722))

(assert (=> b!5267970 m!6306944))

(assert (=> b!5267970 m!6307536))

(assert (=> b!5267970 m!6307004))

(assert (=> b!5267970 m!6307536))

(declare-fun m!6307724 () Bool)

(assert (=> b!5267970 m!6307724))

(assert (=> b!5267970 m!6306944))

(assert (=> b!5267970 m!6307540))

(assert (=> b!5267970 m!6307724))

(assert (=> b!5267970 m!6307540))

(declare-fun m!6307726 () Bool)

(assert (=> b!5267970 m!6307726))

(assert (=> b!5267001 d!1695317))

(declare-fun bs!1220743 () Bool)

(declare-fun d!1695319 () Bool)

(assert (= bs!1220743 (and d!1695319 b!5266789)))

(declare-fun lambda!265708 () Int)

(assert (=> bs!1220743 (= (= (head!11292 (t!374150 s!2326)) (h!67283 s!2326)) (= lambda!265708 lambda!265622))))

(declare-fun bs!1220744 () Bool)

(assert (= bs!1220744 (and d!1695319 d!1695239)))

(assert (=> bs!1220744 (= lambda!265708 lambda!265699)))

(assert (=> d!1695319 true))

(assert (=> d!1695319 (= (derivationStepZipper!1131 (set.union lt!2156039 lt!2156044) (head!11292 (t!374150 s!2326))) (flatMap!613 (set.union lt!2156039 lt!2156044) lambda!265708))))

(declare-fun bs!1220745 () Bool)

(assert (= bs!1220745 d!1695319))

(declare-fun m!6307728 () Bool)

(assert (=> bs!1220745 m!6307728))

(assert (=> b!5267001 d!1695319))

(assert (=> b!5267001 d!1695241))

(assert (=> b!5267001 d!1695243))

(assert (=> b!5266997 d!1695065))

(declare-fun d!1695321 () Bool)

(assert (=> d!1695321 (= (isEmptyExpr!822 lt!2156145) (is-EmptyExpr!14886 lt!2156145))))

(assert (=> b!5267138 d!1695321))

(declare-fun d!1695323 () Bool)

(assert (=> d!1695323 (= (nullable!5055 (h!67281 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))) (nullableFct!1439 (h!67281 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))))))

(declare-fun bs!1220746 () Bool)

(assert (= bs!1220746 d!1695323))

(declare-fun m!6307730 () Bool)

(assert (=> bs!1220746 m!6307730))

(assert (=> b!5267145 d!1695323))

(declare-fun d!1695325 () Bool)

(assert (=> d!1695325 (= (head!11292 s!2326) (h!67283 s!2326))))

(assert (=> b!5267103 d!1695325))

(declare-fun d!1695327 () Bool)

(assert (=> d!1695327 (= (isEmptyLang!830 lt!2156153) (is-EmptyLang!14886 lt!2156153))))

(assert (=> b!5267222 d!1695327))

(declare-fun d!1695329 () Bool)

(assert (=> d!1695329 (= (nullable!5055 (reg!15215 (regOne!30284 (regOne!30284 r!7292)))) (nullableFct!1439 (reg!15215 (regOne!30284 (regOne!30284 r!7292)))))))

(declare-fun bs!1220747 () Bool)

(assert (= bs!1220747 d!1695329))

(declare-fun m!6307732 () Bool)

(assert (=> bs!1220747 m!6307732))

(assert (=> b!5267002 d!1695329))

(assert (=> d!1695047 d!1695205))

(declare-fun d!1695331 () Bool)

(assert (=> d!1695331 (= (isEmpty!32781 (tail!10390 (exprs!4770 (h!67282 zl!343)))) (is-Nil!60833 (tail!10390 (exprs!4770 (h!67282 zl!343)))))))

(assert (=> b!5267134 d!1695331))

(declare-fun d!1695333 () Bool)

(assert (=> d!1695333 (= (tail!10390 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343))))))

(assert (=> b!5267134 d!1695333))

(assert (=> d!1695045 d!1695049))

(assert (=> d!1695045 d!1695047))

(declare-fun d!1695335 () Bool)

(declare-fun e!3276451 () Bool)

(assert (=> d!1695335 (= (matchZipper!1130 (set.union lt!2156039 lt!2156044) (t!374150 s!2326)) e!3276451)))

(declare-fun res!2234998 () Bool)

(assert (=> d!1695335 (=> res!2234998 e!3276451)))

(assert (=> d!1695335 (= res!2234998 (matchZipper!1130 lt!2156039 (t!374150 s!2326)))))

(assert (=> d!1695335 true))

(declare-fun _$48!917 () Unit!153062)

(assert (=> d!1695335 (= (choose!39298 lt!2156039 lt!2156044 (t!374150 s!2326)) _$48!917)))

(declare-fun b!5267973 () Bool)

(assert (=> b!5267973 (= e!3276451 (matchZipper!1130 lt!2156044 (t!374150 s!2326)))))

(assert (= (and d!1695335 (not res!2234998)) b!5267973))

(assert (=> d!1695335 m!6306834))

(assert (=> d!1695335 m!6306816))

(assert (=> b!5267973 m!6306836))

(assert (=> d!1695045 d!1695335))

(declare-fun b!5267974 () Bool)

(declare-fun e!3276457 () Bool)

(declare-fun call!374092 () Bool)

(assert (=> b!5267974 (= e!3276457 call!374092)))

(declare-fun b!5267975 () Bool)

(declare-fun e!3276452 () Bool)

(declare-fun e!3276456 () Bool)

(assert (=> b!5267975 (= e!3276452 e!3276456)))

(declare-fun c!912282 () Bool)

(assert (=> b!5267975 (= c!912282 (is-Union!14886 (regOne!30284 (regOne!30284 r!7292))))))

(declare-fun bm!374087 () Bool)

(assert (=> bm!374087 (= call!374092 (nullable!5055 (ite c!912282 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))))))))

(declare-fun b!5267976 () Bool)

(declare-fun e!3276455 () Bool)

(assert (=> b!5267976 (= e!3276456 e!3276455)))

(declare-fun res!2235002 () Bool)

(declare-fun call!374093 () Bool)

(assert (=> b!5267976 (= res!2235002 call!374093)))

(assert (=> b!5267976 (=> res!2235002 e!3276455)))

(declare-fun b!5267977 () Bool)

(declare-fun e!3276454 () Bool)

(declare-fun e!3276453 () Bool)

(assert (=> b!5267977 (= e!3276454 e!3276453)))

(declare-fun res!2235003 () Bool)

(assert (=> b!5267977 (=> (not res!2235003) (not e!3276453))))

(assert (=> b!5267977 (= res!2235003 (and (not (is-EmptyLang!14886 (regOne!30284 (regOne!30284 r!7292)))) (not (is-ElementMatch!14886 (regOne!30284 (regOne!30284 r!7292))))))))

(declare-fun b!5267978 () Bool)

(assert (=> b!5267978 (= e!3276455 call!374092)))

(declare-fun b!5267979 () Bool)

(assert (=> b!5267979 (= e!3276456 e!3276457)))

(declare-fun res!2235001 () Bool)

(assert (=> b!5267979 (= res!2235001 call!374093)))

(assert (=> b!5267979 (=> (not res!2235001) (not e!3276457))))

(declare-fun bm!374088 () Bool)

(assert (=> bm!374088 (= call!374093 (nullable!5055 (ite c!912282 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 (regOne!30284 r!7292))))))))

(declare-fun d!1695337 () Bool)

(declare-fun res!2235000 () Bool)

(assert (=> d!1695337 (=> res!2235000 e!3276454)))

(assert (=> d!1695337 (= res!2235000 (is-EmptyExpr!14886 (regOne!30284 (regOne!30284 r!7292))))))

(assert (=> d!1695337 (= (nullableFct!1439 (regOne!30284 (regOne!30284 r!7292))) e!3276454)))

(declare-fun b!5267980 () Bool)

(assert (=> b!5267980 (= e!3276453 e!3276452)))

(declare-fun res!2234999 () Bool)

(assert (=> b!5267980 (=> res!2234999 e!3276452)))

(assert (=> b!5267980 (= res!2234999 (is-Star!14886 (regOne!30284 (regOne!30284 r!7292))))))

(assert (= (and d!1695337 (not res!2235000)) b!5267977))

(assert (= (and b!5267977 res!2235003) b!5267980))

(assert (= (and b!5267980 (not res!2234999)) b!5267975))

(assert (= (and b!5267975 c!912282) b!5267976))

(assert (= (and b!5267975 (not c!912282)) b!5267979))

(assert (= (and b!5267976 (not res!2235002)) b!5267978))

(assert (= (and b!5267979 res!2235001) b!5267974))

(assert (= (or b!5267978 b!5267974) bm!374087))

(assert (= (or b!5267976 b!5267979) bm!374088))

(declare-fun m!6307734 () Bool)

(assert (=> bm!374087 m!6307734))

(declare-fun m!6307736 () Bool)

(assert (=> bm!374088 m!6307736))

(assert (=> d!1695067 d!1695337))

(declare-fun b!5267981 () Bool)

(declare-fun e!3276462 () (Set Context!8540))

(assert (=> b!5267981 (= e!3276462 (as set.empty (Set Context!8540)))))

(declare-fun b!5267982 () Bool)

(declare-fun e!3276458 () (Set Context!8540))

(declare-fun call!374094 () (Set Context!8540))

(assert (=> b!5267982 (= e!3276458 call!374094)))

(declare-fun b!5267983 () Bool)

(declare-fun e!3276459 () (Set Context!8540))

(declare-fun call!374096 () (Set Context!8540))

(declare-fun call!374099 () (Set Context!8540))

(assert (=> b!5267983 (= e!3276459 (set.union call!374096 call!374099))))

(declare-fun b!5267984 () Bool)

(declare-fun c!912284 () Bool)

(assert (=> b!5267984 (= c!912284 (is-Star!14886 (h!67281 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))))))

(assert (=> b!5267984 (= e!3276458 e!3276462)))

(declare-fun b!5267985 () Bool)

(declare-fun c!912285 () Bool)

(declare-fun e!3276461 () Bool)

(assert (=> b!5267985 (= c!912285 e!3276461)))

(declare-fun res!2235004 () Bool)

(assert (=> b!5267985 (=> (not res!2235004) (not e!3276461))))

(assert (=> b!5267985 (= res!2235004 (is-Concat!23731 (h!67281 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))))))

(declare-fun e!3276460 () (Set Context!8540))

(assert (=> b!5267985 (= e!3276460 e!3276459)))

(declare-fun c!912286 () Bool)

(declare-fun bm!374089 () Bool)

(declare-fun call!374098 () List!60957)

(assert (=> bm!374089 (= call!374098 ($colon$colon!1337 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343))))))))) (ite (or c!912285 c!912286) (regTwo!30284 (h!67281 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))) (h!67281 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343))))))))))))

(declare-fun b!5267986 () Bool)

(assert (=> b!5267986 (= e!3276459 e!3276458)))

(assert (=> b!5267986 (= c!912286 (is-Concat!23731 (h!67281 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))))))

(declare-fun b!5267987 () Bool)

(assert (=> b!5267987 (= e!3276461 (nullable!5055 (regOne!30284 (h!67281 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343))))))))))))

(declare-fun b!5267988 () Bool)

(declare-fun call!374095 () (Set Context!8540))

(assert (=> b!5267988 (= e!3276460 (set.union call!374095 call!374096))))

(declare-fun call!374097 () List!60957)

(declare-fun bm!374090 () Bool)

(declare-fun c!912287 () Bool)

(assert (=> bm!374090 (= call!374095 (derivationStepZipperDown!334 (ite c!912287 (regOne!30285 (h!67281 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))) (ite c!912285 (regTwo!30284 (h!67281 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))) (ite c!912286 (regOne!30284 (h!67281 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))) (reg!15215 (h!67281 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343))))))))))) (ite (or c!912287 c!912285) (Context!8541 (t!374148 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))) (Context!8541 call!374097)) (h!67283 s!2326)))))

(declare-fun b!5267989 () Bool)

(declare-fun e!3276463 () (Set Context!8540))

(assert (=> b!5267989 (= e!3276463 e!3276460)))

(assert (=> b!5267989 (= c!912287 (is-Union!14886 (h!67281 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))))))

(declare-fun bm!374091 () Bool)

(assert (=> bm!374091 (= call!374094 call!374099)))

(declare-fun d!1695339 () Bool)

(declare-fun c!912283 () Bool)

(assert (=> d!1695339 (= c!912283 (and (is-ElementMatch!14886 (h!67281 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))) (= (c!911978 (h!67281 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))) (h!67283 s!2326))))))

(assert (=> d!1695339 (= (derivationStepZipperDown!334 (h!67281 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343))))))) (Context!8541 (t!374148 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))) (h!67283 s!2326)) e!3276463)))

(declare-fun b!5267990 () Bool)

(assert (=> b!5267990 (= e!3276463 (set.insert (Context!8541 (t!374148 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))) (as set.empty (Set Context!8540))))))

(declare-fun bm!374092 () Bool)

(assert (=> bm!374092 (= call!374097 call!374098)))

(declare-fun bm!374093 () Bool)

(assert (=> bm!374093 (= call!374096 (derivationStepZipperDown!334 (ite c!912287 (regTwo!30285 (h!67281 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))) (regOne!30284 (h!67281 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343))))))))) (ite c!912287 (Context!8541 (t!374148 (exprs!4770 (Context!8541 (Cons!60833 (h!67281 (exprs!4770 (h!67282 zl!343))) (t!374148 (exprs!4770 (h!67282 zl!343)))))))) (Context!8541 call!374098)) (h!67283 s!2326)))))

(declare-fun bm!374094 () Bool)

(assert (=> bm!374094 (= call!374099 call!374095)))

(declare-fun b!5267991 () Bool)

(assert (=> b!5267991 (= e!3276462 call!374094)))

(assert (= (and d!1695339 c!912283) b!5267990))

(assert (= (and d!1695339 (not c!912283)) b!5267989))

(assert (= (and b!5267989 c!912287) b!5267988))

(assert (= (and b!5267989 (not c!912287)) b!5267985))

(assert (= (and b!5267985 res!2235004) b!5267987))

(assert (= (and b!5267985 c!912285) b!5267983))

(assert (= (and b!5267985 (not c!912285)) b!5267986))

(assert (= (and b!5267986 c!912286) b!5267982))

(assert (= (and b!5267986 (not c!912286)) b!5267984))

(assert (= (and b!5267984 c!912284) b!5267991))

(assert (= (and b!5267984 (not c!912284)) b!5267981))

(assert (= (or b!5267982 b!5267991) bm!374092))

(assert (= (or b!5267982 b!5267991) bm!374091))

(assert (= (or b!5267983 bm!374092) bm!374089))

(assert (= (or b!5267983 bm!374091) bm!374094))

(assert (= (or b!5267988 b!5267983) bm!374093))

(assert (= (or b!5267988 bm!374094) bm!374090))

(declare-fun m!6307738 () Bool)

(assert (=> bm!374090 m!6307738))

(declare-fun m!6307740 () Bool)

(assert (=> bm!374093 m!6307740))

(declare-fun m!6307742 () Bool)

(assert (=> bm!374089 m!6307742))

(declare-fun m!6307744 () Bool)

(assert (=> b!5267987 m!6307744))

(declare-fun m!6307746 () Bool)

(assert (=> b!5267990 m!6307746))

(assert (=> bm!373930 d!1695339))

(declare-fun d!1695341 () Bool)

(assert (=> d!1695341 (= (Exists!2067 lambda!265646) (choose!39295 lambda!265646))))

(declare-fun bs!1220748 () Bool)

(assert (= bs!1220748 d!1695341))

(declare-fun m!6307748 () Bool)

(assert (=> bs!1220748 m!6307748))

(assert (=> d!1695041 d!1695341))

(declare-fun d!1695343 () Bool)

(assert (=> d!1695343 (= (Exists!2067 lambda!265647) (choose!39295 lambda!265647))))

(declare-fun bs!1220749 () Bool)

(assert (= bs!1220749 d!1695343))

(declare-fun m!6307750 () Bool)

(assert (=> bs!1220749 m!6307750))

(assert (=> d!1695041 d!1695343))

(declare-fun bs!1220750 () Bool)

(declare-fun d!1695345 () Bool)

(assert (= bs!1220750 (and d!1695345 b!5267825)))

(declare-fun lambda!265713 () Int)

(assert (=> bs!1220750 (not (= lambda!265713 lambda!265701))))

(declare-fun bs!1220751 () Bool)

(assert (= bs!1220751 (and d!1695345 d!1695041)))

(assert (=> bs!1220751 (= lambda!265713 lambda!265646)))

(declare-fun bs!1220752 () Bool)

(assert (= bs!1220752 (and d!1695345 b!5267064)))

(assert (=> bs!1220752 (not (= lambda!265713 lambda!265652))))

(declare-fun bs!1220753 () Bool)

(assert (= bs!1220753 (and d!1695345 b!5267058)))

(assert (=> bs!1220753 (not (= lambda!265713 lambda!265653))))

(assert (=> bs!1220751 (not (= lambda!265713 lambda!265647))))

(declare-fun bs!1220754 () Bool)

(assert (= bs!1220754 (and d!1695345 b!5266802)))

(assert (=> bs!1220754 (not (= lambda!265713 lambda!265621))))

(declare-fun bs!1220755 () Bool)

(assert (= bs!1220755 (and d!1695345 b!5267831)))

(assert (=> bs!1220755 (not (= lambda!265713 lambda!265700))))

(declare-fun bs!1220756 () Bool)

(assert (= bs!1220756 (and d!1695345 d!1695301)))

(assert (=> bs!1220756 (= lambda!265713 lambda!265705)))

(assert (=> bs!1220754 (= lambda!265713 lambda!265620)))

(declare-fun bs!1220757 () Bool)

(assert (= bs!1220757 (and d!1695345 d!1695039)))

(assert (=> bs!1220757 (= lambda!265713 lambda!265641)))

(assert (=> d!1695345 true))

(assert (=> d!1695345 true))

(assert (=> d!1695345 true))

(declare-fun lambda!265714 () Int)

(assert (=> bs!1220750 (= (and (= (regOne!30284 r!7292) (regOne!30284 (regTwo!30285 r!7292))) (= (regTwo!30284 r!7292) (regTwo!30284 (regTwo!30285 r!7292)))) (= lambda!265714 lambda!265701))))

(assert (=> bs!1220751 (not (= lambda!265714 lambda!265646))))

(assert (=> bs!1220752 (not (= lambda!265714 lambda!265652))))

(assert (=> bs!1220753 (= lambda!265714 lambda!265653)))

(assert (=> bs!1220751 (= lambda!265714 lambda!265647)))

(declare-fun bs!1220758 () Bool)

(assert (= bs!1220758 d!1695345))

(assert (=> bs!1220758 (not (= lambda!265714 lambda!265713))))

(assert (=> bs!1220754 (= lambda!265714 lambda!265621)))

(assert (=> bs!1220755 (not (= lambda!265714 lambda!265700))))

(assert (=> bs!1220756 (not (= lambda!265714 lambda!265705))))

(assert (=> bs!1220754 (not (= lambda!265714 lambda!265620))))

(assert (=> bs!1220757 (not (= lambda!265714 lambda!265641))))

(assert (=> d!1695345 true))

(assert (=> d!1695345 true))

(assert (=> d!1695345 true))

(assert (=> d!1695345 (= (Exists!2067 lambda!265713) (Exists!2067 lambda!265714))))

(assert (=> d!1695345 true))

(declare-fun _$90!1081 () Unit!153062)

(assert (=> d!1695345 (= (choose!39297 (regOne!30284 r!7292) (regTwo!30284 r!7292) s!2326) _$90!1081)))

(declare-fun m!6307752 () Bool)

(assert (=> bs!1220758 m!6307752))

(declare-fun m!6307754 () Bool)

(assert (=> bs!1220758 m!6307754))

(assert (=> d!1695041 d!1695345))

(assert (=> d!1695041 d!1695255))

(declare-fun d!1695347 () Bool)

(assert (=> d!1695347 (= (head!11293 (unfocusZipperList!328 zl!343)) (h!67281 (unfocusZipperList!328 zl!343)))))

(assert (=> b!5267218 d!1695347))

(assert (=> d!1695061 d!1695203))

(assert (=> d!1695061 d!1695031))

(declare-fun b!5268000 () Bool)

(declare-fun e!3276474 () Bool)

(declare-fun e!3276471 () Bool)

(assert (=> b!5268000 (= e!3276474 e!3276471)))

(declare-fun res!2235017 () Bool)

(assert (=> b!5268000 (= res!2235017 (not (nullable!5055 (reg!15215 (ite c!912006 (reg!15215 (regOne!30284 (regOne!30284 r!7292))) (ite c!912005 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regTwo!30284 (regOne!30284 (regOne!30284 r!7292)))))))))))

(assert (=> b!5268000 (=> (not res!2235017) (not e!3276471))))

(declare-fun d!1695349 () Bool)

(declare-fun res!2235014 () Bool)

(declare-fun e!3276468 () Bool)

(assert (=> d!1695349 (=> res!2235014 e!3276468)))

(assert (=> d!1695349 (= res!2235014 (is-ElementMatch!14886 (ite c!912006 (reg!15215 (regOne!30284 (regOne!30284 r!7292))) (ite c!912005 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regTwo!30284 (regOne!30284 (regOne!30284 r!7292)))))))))

(assert (=> d!1695349 (= (validRegex!6622 (ite c!912006 (reg!15215 (regOne!30284 (regOne!30284 r!7292))) (ite c!912005 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regTwo!30284 (regOne!30284 (regOne!30284 r!7292)))))) e!3276468)))

(declare-fun b!5268001 () Bool)

(assert (=> b!5268001 (= e!3276468 e!3276474)))

(declare-fun c!912289 () Bool)

(assert (=> b!5268001 (= c!912289 (is-Star!14886 (ite c!912006 (reg!15215 (regOne!30284 (regOne!30284 r!7292))) (ite c!912005 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regTwo!30284 (regOne!30284 (regOne!30284 r!7292)))))))))

(declare-fun b!5268002 () Bool)

(declare-fun e!3276472 () Bool)

(declare-fun call!374102 () Bool)

(assert (=> b!5268002 (= e!3276472 call!374102)))

(declare-fun b!5268003 () Bool)

(declare-fun e!3276473 () Bool)

(assert (=> b!5268003 (= e!3276474 e!3276473)))

(declare-fun c!912288 () Bool)

(assert (=> b!5268003 (= c!912288 (is-Union!14886 (ite c!912006 (reg!15215 (regOne!30284 (regOne!30284 r!7292))) (ite c!912005 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regTwo!30284 (regOne!30284 (regOne!30284 r!7292)))))))))

(declare-fun call!374101 () Bool)

(declare-fun bm!374095 () Bool)

(assert (=> bm!374095 (= call!374101 (validRegex!6622 (ite c!912289 (reg!15215 (ite c!912006 (reg!15215 (regOne!30284 (regOne!30284 r!7292))) (ite c!912005 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regTwo!30284 (regOne!30284 (regOne!30284 r!7292)))))) (ite c!912288 (regTwo!30285 (ite c!912006 (reg!15215 (regOne!30284 (regOne!30284 r!7292))) (ite c!912005 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regTwo!30284 (regOne!30284 (regOne!30284 r!7292)))))) (regTwo!30284 (ite c!912006 (reg!15215 (regOne!30284 (regOne!30284 r!7292))) (ite c!912005 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))))))))))))

(declare-fun b!5268004 () Bool)

(declare-fun e!3276469 () Bool)

(assert (=> b!5268004 (= e!3276469 call!374102)))

(declare-fun bm!374096 () Bool)

(assert (=> bm!374096 (= call!374102 call!374101)))

(declare-fun b!5268005 () Bool)

(assert (=> b!5268005 (= e!3276471 call!374101)))

(declare-fun bm!374097 () Bool)

(declare-fun call!374100 () Bool)

(assert (=> bm!374097 (= call!374100 (validRegex!6622 (ite c!912288 (regOne!30285 (ite c!912006 (reg!15215 (regOne!30284 (regOne!30284 r!7292))) (ite c!912005 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regTwo!30284 (regOne!30284 (regOne!30284 r!7292)))))) (regOne!30284 (ite c!912006 (reg!15215 (regOne!30284 (regOne!30284 r!7292))) (ite c!912005 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regTwo!30284 (regOne!30284 (regOne!30284 r!7292)))))))))))

(declare-fun b!5268006 () Bool)

(declare-fun e!3276470 () Bool)

(assert (=> b!5268006 (= e!3276470 e!3276472)))

(declare-fun res!2235016 () Bool)

(assert (=> b!5268006 (=> (not res!2235016) (not e!3276472))))

(assert (=> b!5268006 (= res!2235016 call!374100)))

(declare-fun b!5268007 () Bool)

(declare-fun res!2235013 () Bool)

(assert (=> b!5268007 (=> res!2235013 e!3276470)))

(assert (=> b!5268007 (= res!2235013 (not (is-Concat!23731 (ite c!912006 (reg!15215 (regOne!30284 (regOne!30284 r!7292))) (ite c!912005 (regTwo!30285 (regOne!30284 (regOne!30284 r!7292))) (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))))))))))

(assert (=> b!5268007 (= e!3276473 e!3276470)))

(declare-fun b!5268008 () Bool)

(declare-fun res!2235015 () Bool)

(assert (=> b!5268008 (=> (not res!2235015) (not e!3276469))))

(assert (=> b!5268008 (= res!2235015 call!374100)))

(assert (=> b!5268008 (= e!3276473 e!3276469)))

(assert (= (and d!1695349 (not res!2235014)) b!5268001))

(assert (= (and b!5268001 c!912289) b!5268000))

(assert (= (and b!5268001 (not c!912289)) b!5268003))

(assert (= (and b!5268000 res!2235017) b!5268005))

(assert (= (and b!5268003 c!912288) b!5268008))

(assert (= (and b!5268003 (not c!912288)) b!5268007))

(assert (= (and b!5268008 res!2235015) b!5268004))

(assert (= (and b!5268007 (not res!2235013)) b!5268006))

(assert (= (and b!5268006 res!2235016) b!5268002))

(assert (= (or b!5268004 b!5268002) bm!374096))

(assert (= (or b!5268008 b!5268006) bm!374097))

(assert (= (or b!5268005 bm!374096) bm!374095))

(declare-fun m!6307756 () Bool)

(assert (=> b!5268000 m!6307756))

(declare-fun m!6307758 () Bool)

(assert (=> bm!374095 m!6307758))

(declare-fun m!6307760 () Bool)

(assert (=> bm!374097 m!6307760))

(assert (=> bm!373915 d!1695349))

(declare-fun bm!374098 () Bool)

(declare-fun call!374103 () (Set Context!8540))

(assert (=> bm!374098 (= call!374103 (derivationStepZipperDown!334 (h!67281 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 lt!2156038))))) (Context!8541 (t!374148 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 lt!2156038)))))) (h!67283 s!2326)))))

(declare-fun e!3276477 () (Set Context!8540))

(declare-fun b!5268009 () Bool)

(assert (=> b!5268009 (= e!3276477 (set.union call!374103 (derivationStepZipperUp!258 (Context!8541 (t!374148 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 lt!2156038)))))) (h!67283 s!2326))))))

(declare-fun b!5268010 () Bool)

(declare-fun e!3276476 () (Set Context!8540))

(assert (=> b!5268010 (= e!3276477 e!3276476)))

(declare-fun c!912290 () Bool)

(assert (=> b!5268010 (= c!912290 (is-Cons!60833 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 lt!2156038))))))))

(declare-fun b!5268011 () Bool)

(declare-fun e!3276475 () Bool)

(assert (=> b!5268011 (= e!3276475 (nullable!5055 (h!67281 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 lt!2156038)))))))))

(declare-fun d!1695351 () Bool)

(declare-fun c!912291 () Bool)

(assert (=> d!1695351 (= c!912291 e!3276475)))

(declare-fun res!2235018 () Bool)

(assert (=> d!1695351 (=> (not res!2235018) (not e!3276475))))

(assert (=> d!1695351 (= res!2235018 (is-Cons!60833 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 lt!2156038))))))))

(assert (=> d!1695351 (= (derivationStepZipperUp!258 (Context!8541 (t!374148 (exprs!4770 lt!2156038))) (h!67283 s!2326)) e!3276477)))

(declare-fun b!5268012 () Bool)

(assert (=> b!5268012 (= e!3276476 (as set.empty (Set Context!8540)))))

(declare-fun b!5268013 () Bool)

(assert (=> b!5268013 (= e!3276476 call!374103)))

(assert (= (and d!1695351 res!2235018) b!5268011))

(assert (= (and d!1695351 c!912291) b!5268009))

(assert (= (and d!1695351 (not c!912291)) b!5268010))

(assert (= (and b!5268010 c!912290) b!5268013))

(assert (= (and b!5268010 (not c!912290)) b!5268012))

(assert (= (or b!5268009 b!5268013) bm!374098))

(declare-fun m!6307762 () Bool)

(assert (=> bm!374098 m!6307762))

(declare-fun m!6307764 () Bool)

(assert (=> b!5268009 m!6307764))

(declare-fun m!6307766 () Bool)

(assert (=> b!5268011 m!6307766))

(assert (=> b!5267181 d!1695351))

(declare-fun bs!1220759 () Bool)

(declare-fun b!5268020 () Bool)

(assert (= bs!1220759 (and b!5268020 b!5267825)))

(declare-fun lambda!265715 () Int)

(assert (=> bs!1220759 (not (= lambda!265715 lambda!265701))))

(declare-fun bs!1220760 () Bool)

(assert (= bs!1220760 (and b!5268020 d!1695041)))

(assert (=> bs!1220760 (not (= lambda!265715 lambda!265646))))

(declare-fun bs!1220761 () Bool)

(assert (= bs!1220761 (and b!5268020 b!5267064)))

(assert (=> bs!1220761 (= (and (= (reg!15215 (regOne!30285 r!7292)) (reg!15215 r!7292)) (= (regOne!30285 r!7292) r!7292)) (= lambda!265715 lambda!265652))))

(declare-fun bs!1220762 () Bool)

(assert (= bs!1220762 (and b!5268020 b!5267058)))

(assert (=> bs!1220762 (not (= lambda!265715 lambda!265653))))

(assert (=> bs!1220760 (not (= lambda!265715 lambda!265647))))

(declare-fun bs!1220763 () Bool)

(assert (= bs!1220763 (and b!5268020 d!1695345)))

(assert (=> bs!1220763 (not (= lambda!265715 lambda!265713))))

(assert (=> bs!1220763 (not (= lambda!265715 lambda!265714))))

(declare-fun bs!1220764 () Bool)

(assert (= bs!1220764 (and b!5268020 b!5266802)))

(assert (=> bs!1220764 (not (= lambda!265715 lambda!265621))))

(declare-fun bs!1220765 () Bool)

(assert (= bs!1220765 (and b!5268020 b!5267831)))

(assert (=> bs!1220765 (= (and (= (reg!15215 (regOne!30285 r!7292)) (reg!15215 (regTwo!30285 r!7292))) (= (regOne!30285 r!7292) (regTwo!30285 r!7292))) (= lambda!265715 lambda!265700))))

(declare-fun bs!1220766 () Bool)

(assert (= bs!1220766 (and b!5268020 d!1695301)))

(assert (=> bs!1220766 (not (= lambda!265715 lambda!265705))))

(assert (=> bs!1220764 (not (= lambda!265715 lambda!265620))))

(declare-fun bs!1220767 () Bool)

(assert (= bs!1220767 (and b!5268020 d!1695039)))

(assert (=> bs!1220767 (not (= lambda!265715 lambda!265641))))

(assert (=> b!5268020 true))

(assert (=> b!5268020 true))

(declare-fun bs!1220768 () Bool)

(declare-fun b!5268014 () Bool)

(assert (= bs!1220768 (and b!5268014 b!5268020)))

(declare-fun lambda!265716 () Int)

(assert (=> bs!1220768 (not (= lambda!265716 lambda!265715))))

(declare-fun bs!1220769 () Bool)

(assert (= bs!1220769 (and b!5268014 b!5267825)))

(assert (=> bs!1220769 (= (and (= (regOne!30284 (regOne!30285 r!7292)) (regOne!30284 (regTwo!30285 r!7292))) (= (regTwo!30284 (regOne!30285 r!7292)) (regTwo!30284 (regTwo!30285 r!7292)))) (= lambda!265716 lambda!265701))))

(declare-fun bs!1220770 () Bool)

(assert (= bs!1220770 (and b!5268014 d!1695041)))

(assert (=> bs!1220770 (not (= lambda!265716 lambda!265646))))

(declare-fun bs!1220771 () Bool)

(assert (= bs!1220771 (and b!5268014 b!5267064)))

(assert (=> bs!1220771 (not (= lambda!265716 lambda!265652))))

(declare-fun bs!1220772 () Bool)

(assert (= bs!1220772 (and b!5268014 b!5267058)))

(assert (=> bs!1220772 (= (and (= (regOne!30284 (regOne!30285 r!7292)) (regOne!30284 r!7292)) (= (regTwo!30284 (regOne!30285 r!7292)) (regTwo!30284 r!7292))) (= lambda!265716 lambda!265653))))

(assert (=> bs!1220770 (= (and (= (regOne!30284 (regOne!30285 r!7292)) (regOne!30284 r!7292)) (= (regTwo!30284 (regOne!30285 r!7292)) (regTwo!30284 r!7292))) (= lambda!265716 lambda!265647))))

(declare-fun bs!1220773 () Bool)

(assert (= bs!1220773 (and b!5268014 d!1695345)))

(assert (=> bs!1220773 (not (= lambda!265716 lambda!265713))))

(assert (=> bs!1220773 (= (and (= (regOne!30284 (regOne!30285 r!7292)) (regOne!30284 r!7292)) (= (regTwo!30284 (regOne!30285 r!7292)) (regTwo!30284 r!7292))) (= lambda!265716 lambda!265714))))

(declare-fun bs!1220774 () Bool)

(assert (= bs!1220774 (and b!5268014 b!5266802)))

(assert (=> bs!1220774 (= (and (= (regOne!30284 (regOne!30285 r!7292)) (regOne!30284 r!7292)) (= (regTwo!30284 (regOne!30285 r!7292)) (regTwo!30284 r!7292))) (= lambda!265716 lambda!265621))))

(declare-fun bs!1220775 () Bool)

(assert (= bs!1220775 (and b!5268014 b!5267831)))

(assert (=> bs!1220775 (not (= lambda!265716 lambda!265700))))

(declare-fun bs!1220776 () Bool)

(assert (= bs!1220776 (and b!5268014 d!1695301)))

(assert (=> bs!1220776 (not (= lambda!265716 lambda!265705))))

(assert (=> bs!1220774 (not (= lambda!265716 lambda!265620))))

(declare-fun bs!1220777 () Bool)

(assert (= bs!1220777 (and b!5268014 d!1695039)))

(assert (=> bs!1220777 (not (= lambda!265716 lambda!265641))))

(assert (=> b!5268014 true))

(assert (=> b!5268014 true))

(declare-fun e!3276484 () Bool)

(declare-fun call!374105 () Bool)

(assert (=> b!5268014 (= e!3276484 call!374105)))

(declare-fun d!1695353 () Bool)

(declare-fun c!912294 () Bool)

(assert (=> d!1695353 (= c!912294 (is-EmptyExpr!14886 (regOne!30285 r!7292)))))

(declare-fun e!3276483 () Bool)

(assert (=> d!1695353 (= (matchRSpec!1989 (regOne!30285 r!7292) s!2326) e!3276483)))

(declare-fun b!5268015 () Bool)

(declare-fun e!3276481 () Bool)

(assert (=> b!5268015 (= e!3276481 (= s!2326 (Cons!60835 (c!911978 (regOne!30285 r!7292)) Nil!60835)))))

(declare-fun b!5268016 () Bool)

(declare-fun e!3276480 () Bool)

(assert (=> b!5268016 (= e!3276480 e!3276484)))

(declare-fun c!912292 () Bool)

(assert (=> b!5268016 (= c!912292 (is-Star!14886 (regOne!30285 r!7292)))))

(declare-fun b!5268017 () Bool)

(declare-fun e!3276479 () Bool)

(assert (=> b!5268017 (= e!3276483 e!3276479)))

(declare-fun res!2235021 () Bool)

(assert (=> b!5268017 (= res!2235021 (not (is-EmptyLang!14886 (regOne!30285 r!7292))))))

(assert (=> b!5268017 (=> (not res!2235021) (not e!3276479))))

(declare-fun bm!374099 () Bool)

(declare-fun call!374104 () Bool)

(assert (=> bm!374099 (= call!374104 (isEmpty!32785 s!2326))))

(declare-fun b!5268018 () Bool)

(declare-fun e!3276482 () Bool)

(assert (=> b!5268018 (= e!3276482 (matchRSpec!1989 (regTwo!30285 (regOne!30285 r!7292)) s!2326))))

(declare-fun b!5268019 () Bool)

(assert (=> b!5268019 (= e!3276483 call!374104)))

(declare-fun e!3276478 () Bool)

(assert (=> b!5268020 (= e!3276478 call!374105)))

(declare-fun b!5268021 () Bool)

(declare-fun res!2235019 () Bool)

(assert (=> b!5268021 (=> res!2235019 e!3276478)))

(assert (=> b!5268021 (= res!2235019 call!374104)))

(assert (=> b!5268021 (= e!3276484 e!3276478)))

(declare-fun b!5268022 () Bool)

(declare-fun c!912293 () Bool)

(assert (=> b!5268022 (= c!912293 (is-Union!14886 (regOne!30285 r!7292)))))

(assert (=> b!5268022 (= e!3276481 e!3276480)))

(declare-fun b!5268023 () Bool)

(assert (=> b!5268023 (= e!3276480 e!3276482)))

(declare-fun res!2235020 () Bool)

(assert (=> b!5268023 (= res!2235020 (matchRSpec!1989 (regOne!30285 (regOne!30285 r!7292)) s!2326))))

(assert (=> b!5268023 (=> res!2235020 e!3276482)))

(declare-fun bm!374100 () Bool)

(assert (=> bm!374100 (= call!374105 (Exists!2067 (ite c!912292 lambda!265715 lambda!265716)))))

(declare-fun b!5268024 () Bool)

(declare-fun c!912295 () Bool)

(assert (=> b!5268024 (= c!912295 (is-ElementMatch!14886 (regOne!30285 r!7292)))))

(assert (=> b!5268024 (= e!3276479 e!3276481)))

(assert (= (and d!1695353 c!912294) b!5268019))

(assert (= (and d!1695353 (not c!912294)) b!5268017))

(assert (= (and b!5268017 res!2235021) b!5268024))

(assert (= (and b!5268024 c!912295) b!5268015))

(assert (= (and b!5268024 (not c!912295)) b!5268022))

(assert (= (and b!5268022 c!912293) b!5268023))

(assert (= (and b!5268022 (not c!912293)) b!5268016))

(assert (= (and b!5268023 (not res!2235020)) b!5268018))

(assert (= (and b!5268016 c!912292) b!5268021))

(assert (= (and b!5268016 (not c!912292)) b!5268014))

(assert (= (and b!5268021 (not res!2235019)) b!5268020))

(assert (= (or b!5268020 b!5268014) bm!374100))

(assert (= (or b!5268019 b!5268021) bm!374099))

(assert (=> bm!374099 m!6307026))

(declare-fun m!6307768 () Bool)

(assert (=> b!5268018 m!6307768))

(declare-fun m!6307770 () Bool)

(assert (=> b!5268023 m!6307770))

(declare-fun m!6307772 () Bool)

(assert (=> bm!374100 m!6307772))

(assert (=> b!5267067 d!1695353))

(declare-fun d!1695355 () Bool)

(declare-fun c!912296 () Bool)

(assert (=> d!1695355 (= c!912296 (isEmpty!32785 (tail!10389 (t!374150 s!2326))))))

(declare-fun e!3276485 () Bool)

(assert (=> d!1695355 (= (matchZipper!1130 (derivationStepZipper!1131 lt!2156039 (head!11292 (t!374150 s!2326))) (tail!10389 (t!374150 s!2326))) e!3276485)))

(declare-fun b!5268025 () Bool)

(assert (=> b!5268025 (= e!3276485 (nullableZipper!1287 (derivationStepZipper!1131 lt!2156039 (head!11292 (t!374150 s!2326)))))))

(declare-fun b!5268026 () Bool)

(assert (=> b!5268026 (= e!3276485 (matchZipper!1130 (derivationStepZipper!1131 (derivationStepZipper!1131 lt!2156039 (head!11292 (t!374150 s!2326))) (head!11292 (tail!10389 (t!374150 s!2326)))) (tail!10389 (tail!10389 (t!374150 s!2326)))))))

(assert (= (and d!1695355 c!912296) b!5268025))

(assert (= (and d!1695355 (not c!912296)) b!5268026))

(assert (=> d!1695355 m!6306944))

(assert (=> d!1695355 m!6307532))

(assert (=> b!5268025 m!6306998))

(declare-fun m!6307774 () Bool)

(assert (=> b!5268025 m!6307774))

(assert (=> b!5268026 m!6306944))

(assert (=> b!5268026 m!6307536))

(assert (=> b!5268026 m!6306998))

(assert (=> b!5268026 m!6307536))

(declare-fun m!6307776 () Bool)

(assert (=> b!5268026 m!6307776))

(assert (=> b!5268026 m!6306944))

(assert (=> b!5268026 m!6307540))

(assert (=> b!5268026 m!6307776))

(assert (=> b!5268026 m!6307540))

(declare-fun m!6307778 () Bool)

(assert (=> b!5268026 m!6307778))

(assert (=> b!5266999 d!1695355))

(declare-fun bs!1220778 () Bool)

(declare-fun d!1695357 () Bool)

(assert (= bs!1220778 (and d!1695357 b!5266789)))

(declare-fun lambda!265717 () Int)

(assert (=> bs!1220778 (= (= (head!11292 (t!374150 s!2326)) (h!67283 s!2326)) (= lambda!265717 lambda!265622))))

(declare-fun bs!1220779 () Bool)

(assert (= bs!1220779 (and d!1695357 d!1695239)))

(assert (=> bs!1220779 (= lambda!265717 lambda!265699)))

(declare-fun bs!1220780 () Bool)

(assert (= bs!1220780 (and d!1695357 d!1695319)))

(assert (=> bs!1220780 (= lambda!265717 lambda!265708)))

(assert (=> d!1695357 true))

(assert (=> d!1695357 (= (derivationStepZipper!1131 lt!2156039 (head!11292 (t!374150 s!2326))) (flatMap!613 lt!2156039 lambda!265717))))

(declare-fun bs!1220781 () Bool)

(assert (= bs!1220781 d!1695357))

(declare-fun m!6307780 () Bool)

(assert (=> bs!1220781 m!6307780))

(assert (=> b!5266999 d!1695357))

(assert (=> b!5266999 d!1695241))

(assert (=> b!5266999 d!1695243))

(declare-fun bs!1220782 () Bool)

(declare-fun d!1695359 () Bool)

(assert (= bs!1220782 (and d!1695359 d!1695235)))

(declare-fun lambda!265718 () Int)

(assert (=> bs!1220782 (= lambda!265718 lambda!265696)))

(declare-fun bs!1220783 () Bool)

(assert (= bs!1220783 (and d!1695359 d!1695267)))

(assert (=> bs!1220783 (= lambda!265718 lambda!265702)))

(declare-fun bs!1220784 () Bool)

(assert (= bs!1220784 (and d!1695359 d!1695307)))

(assert (=> bs!1220784 (= lambda!265718 lambda!265706)))

(declare-fun bs!1220785 () Bool)

(assert (= bs!1220785 (and d!1695359 d!1695309)))

(assert (=> bs!1220785 (= lambda!265718 lambda!265707)))

(assert (=> d!1695359 (= (nullableZipper!1287 lt!2156028) (exists!1990 lt!2156028 lambda!265718))))

(declare-fun bs!1220786 () Bool)

(assert (= bs!1220786 d!1695359))

(declare-fun m!6307782 () Bool)

(assert (=> bs!1220786 m!6307782))

(assert (=> b!5267193 d!1695359))

(declare-fun bs!1220787 () Bool)

(declare-fun d!1695361 () Bool)

(assert (= bs!1220787 (and d!1695361 d!1695227)))

(declare-fun lambda!265719 () Int)

(assert (=> bs!1220787 (= lambda!265719 lambda!265693)))

(declare-fun bs!1220788 () Bool)

(assert (= bs!1220788 (and d!1695361 d!1695095)))

(assert (=> bs!1220788 (= lambda!265719 lambda!265660)))

(declare-fun bs!1220789 () Bool)

(assert (= bs!1220789 (and d!1695361 d!1695097)))

(assert (=> bs!1220789 (= lambda!265719 lambda!265663)))

(declare-fun bs!1220790 () Bool)

(assert (= bs!1220790 (and d!1695361 d!1695213)))

(assert (=> bs!1220790 (= lambda!265719 lambda!265692)))

(declare-fun bs!1220791 () Bool)

(assert (= bs!1220791 (and d!1695361 d!1695027)))

(assert (=> bs!1220791 (= lambda!265719 lambda!265638)))

(declare-fun bs!1220792 () Bool)

(assert (= bs!1220792 (and d!1695361 d!1695069)))

(assert (=> bs!1220792 (= lambda!265719 lambda!265656)))

(declare-fun bs!1220793 () Bool)

(assert (= bs!1220793 (and d!1695361 d!1695073)))

(assert (=> bs!1220793 (= lambda!265719 lambda!265657)))

(assert (=> d!1695361 (= (inv!80463 setElem!33700) (forall!14296 (exprs!4770 setElem!33700) lambda!265719))))

(declare-fun bs!1220794 () Bool)

(assert (= bs!1220794 d!1695361))

(declare-fun m!6307784 () Bool)

(assert (=> bs!1220794 m!6307784))

(assert (=> setNonEmpty!33700 d!1695361))

(declare-fun b!5268027 () Bool)

(declare-fun e!3276492 () Bool)

(declare-fun e!3276489 () Bool)

(assert (=> b!5268027 (= e!3276492 e!3276489)))

(declare-fun res!2235026 () Bool)

(assert (=> b!5268027 (= res!2235026 (not (nullable!5055 (reg!15215 (ite c!911995 (regOne!30285 r!7292) (regOne!30284 r!7292))))))))

(assert (=> b!5268027 (=> (not res!2235026) (not e!3276489))))

(declare-fun d!1695363 () Bool)

(declare-fun res!2235023 () Bool)

(declare-fun e!3276486 () Bool)

(assert (=> d!1695363 (=> res!2235023 e!3276486)))

(assert (=> d!1695363 (= res!2235023 (is-ElementMatch!14886 (ite c!911995 (regOne!30285 r!7292) (regOne!30284 r!7292))))))

(assert (=> d!1695363 (= (validRegex!6622 (ite c!911995 (regOne!30285 r!7292) (regOne!30284 r!7292))) e!3276486)))

(declare-fun b!5268028 () Bool)

(assert (=> b!5268028 (= e!3276486 e!3276492)))

(declare-fun c!912298 () Bool)

(assert (=> b!5268028 (= c!912298 (is-Star!14886 (ite c!911995 (regOne!30285 r!7292) (regOne!30284 r!7292))))))

(declare-fun b!5268029 () Bool)

(declare-fun e!3276490 () Bool)

(declare-fun call!374108 () Bool)

(assert (=> b!5268029 (= e!3276490 call!374108)))

(declare-fun b!5268030 () Bool)

(declare-fun e!3276491 () Bool)

(assert (=> b!5268030 (= e!3276492 e!3276491)))

(declare-fun c!912297 () Bool)

(assert (=> b!5268030 (= c!912297 (is-Union!14886 (ite c!911995 (regOne!30285 r!7292) (regOne!30284 r!7292))))))

(declare-fun bm!374101 () Bool)

(declare-fun call!374107 () Bool)

(assert (=> bm!374101 (= call!374107 (validRegex!6622 (ite c!912298 (reg!15215 (ite c!911995 (regOne!30285 r!7292) (regOne!30284 r!7292))) (ite c!912297 (regTwo!30285 (ite c!911995 (regOne!30285 r!7292) (regOne!30284 r!7292))) (regTwo!30284 (ite c!911995 (regOne!30285 r!7292) (regOne!30284 r!7292)))))))))

(declare-fun b!5268031 () Bool)

(declare-fun e!3276487 () Bool)

(assert (=> b!5268031 (= e!3276487 call!374108)))

(declare-fun bm!374102 () Bool)

(assert (=> bm!374102 (= call!374108 call!374107)))

(declare-fun b!5268032 () Bool)

(assert (=> b!5268032 (= e!3276489 call!374107)))

(declare-fun bm!374103 () Bool)

(declare-fun call!374106 () Bool)

(assert (=> bm!374103 (= call!374106 (validRegex!6622 (ite c!912297 (regOne!30285 (ite c!911995 (regOne!30285 r!7292) (regOne!30284 r!7292))) (regOne!30284 (ite c!911995 (regOne!30285 r!7292) (regOne!30284 r!7292))))))))

(declare-fun b!5268033 () Bool)

(declare-fun e!3276488 () Bool)

(assert (=> b!5268033 (= e!3276488 e!3276490)))

(declare-fun res!2235025 () Bool)

(assert (=> b!5268033 (=> (not res!2235025) (not e!3276490))))

(assert (=> b!5268033 (= res!2235025 call!374106)))

(declare-fun b!5268034 () Bool)

(declare-fun res!2235022 () Bool)

(assert (=> b!5268034 (=> res!2235022 e!3276488)))

(assert (=> b!5268034 (= res!2235022 (not (is-Concat!23731 (ite c!911995 (regOne!30285 r!7292) (regOne!30284 r!7292)))))))

(assert (=> b!5268034 (= e!3276491 e!3276488)))

(declare-fun b!5268035 () Bool)

(declare-fun res!2235024 () Bool)

(assert (=> b!5268035 (=> (not res!2235024) (not e!3276487))))

(assert (=> b!5268035 (= res!2235024 call!374106)))

(assert (=> b!5268035 (= e!3276491 e!3276487)))

(assert (= (and d!1695363 (not res!2235023)) b!5268028))

(assert (= (and b!5268028 c!912298) b!5268027))

(assert (= (and b!5268028 (not c!912298)) b!5268030))

(assert (= (and b!5268027 res!2235026) b!5268032))

(assert (= (and b!5268030 c!912297) b!5268035))

(assert (= (and b!5268030 (not c!912297)) b!5268034))

(assert (= (and b!5268035 res!2235024) b!5268031))

(assert (= (and b!5268034 (not res!2235022)) b!5268033))

(assert (= (and b!5268033 res!2235025) b!5268029))

(assert (= (or b!5268031 b!5268029) bm!374102))

(assert (= (or b!5268035 b!5268033) bm!374103))

(assert (= (or b!5268032 bm!374102) bm!374101))

(declare-fun m!6307786 () Bool)

(assert (=> b!5268027 m!6307786))

(declare-fun m!6307788 () Bool)

(assert (=> bm!374101 m!6307788))

(declare-fun m!6307790 () Bool)

(assert (=> bm!374103 m!6307790))

(assert (=> bm!373914 d!1695363))

(declare-fun b!5268036 () Bool)

(declare-fun e!3276497 () (Set Context!8540))

(assert (=> b!5268036 (= e!3276497 (as set.empty (Set Context!8540)))))

(declare-fun b!5268037 () Bool)

(declare-fun e!3276493 () (Set Context!8540))

(declare-fun call!374109 () (Set Context!8540))

(assert (=> b!5268037 (= e!3276493 call!374109)))

(declare-fun b!5268038 () Bool)

(declare-fun e!3276494 () (Set Context!8540))

(declare-fun call!374111 () (Set Context!8540))

(declare-fun call!374114 () (Set Context!8540))

(assert (=> b!5268038 (= e!3276494 (set.union call!374111 call!374114))))

(declare-fun b!5268039 () Bool)

(declare-fun c!912300 () Bool)

(assert (=> b!5268039 (= c!912300 (is-Star!14886 (h!67281 (exprs!4770 (h!67282 zl!343)))))))

(assert (=> b!5268039 (= e!3276493 e!3276497)))

(declare-fun b!5268040 () Bool)

(declare-fun c!912301 () Bool)

(declare-fun e!3276496 () Bool)

(assert (=> b!5268040 (= c!912301 e!3276496)))

(declare-fun res!2235027 () Bool)

(assert (=> b!5268040 (=> (not res!2235027) (not e!3276496))))

(assert (=> b!5268040 (= res!2235027 (is-Concat!23731 (h!67281 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun e!3276495 () (Set Context!8540))

(assert (=> b!5268040 (= e!3276495 e!3276494)))

(declare-fun call!374113 () List!60957)

(declare-fun c!912302 () Bool)

(declare-fun bm!374104 () Bool)

(assert (=> bm!374104 (= call!374113 ($colon$colon!1337 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 (h!67282 zl!343))))) (ite (or c!912301 c!912302) (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (h!67281 (exprs!4770 (h!67282 zl!343))))))))

(declare-fun b!5268041 () Bool)

(assert (=> b!5268041 (= e!3276494 e!3276493)))

(assert (=> b!5268041 (= c!912302 (is-Concat!23731 (h!67281 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun b!5268042 () Bool)

(assert (=> b!5268042 (= e!3276496 (nullable!5055 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343))))))))

(declare-fun b!5268043 () Bool)

(declare-fun call!374110 () (Set Context!8540))

(assert (=> b!5268043 (= e!3276495 (set.union call!374110 call!374111))))

(declare-fun c!912303 () Bool)

(declare-fun bm!374105 () Bool)

(declare-fun call!374112 () List!60957)

(assert (=> bm!374105 (= call!374110 (derivationStepZipperDown!334 (ite c!912303 (regOne!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912301 (regTwo!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (ite c!912302 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343)))) (reg!15215 (h!67281 (exprs!4770 (h!67282 zl!343))))))) (ite (or c!912303 c!912301) (Context!8541 (t!374148 (exprs!4770 (h!67282 zl!343)))) (Context!8541 call!374112)) (h!67283 s!2326)))))

(declare-fun b!5268044 () Bool)

(declare-fun e!3276498 () (Set Context!8540))

(assert (=> b!5268044 (= e!3276498 e!3276495)))

(assert (=> b!5268044 (= c!912303 (is-Union!14886 (h!67281 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun bm!374106 () Bool)

(assert (=> bm!374106 (= call!374109 call!374114)))

(declare-fun d!1695365 () Bool)

(declare-fun c!912299 () Bool)

(assert (=> d!1695365 (= c!912299 (and (is-ElementMatch!14886 (h!67281 (exprs!4770 (h!67282 zl!343)))) (= (c!911978 (h!67281 (exprs!4770 (h!67282 zl!343)))) (h!67283 s!2326))))))

(assert (=> d!1695365 (= (derivationStepZipperDown!334 (h!67281 (exprs!4770 (h!67282 zl!343))) (Context!8541 (t!374148 (exprs!4770 (h!67282 zl!343)))) (h!67283 s!2326)) e!3276498)))

(declare-fun b!5268045 () Bool)

(assert (=> b!5268045 (= e!3276498 (set.insert (Context!8541 (t!374148 (exprs!4770 (h!67282 zl!343)))) (as set.empty (Set Context!8540))))))

(declare-fun bm!374107 () Bool)

(assert (=> bm!374107 (= call!374112 call!374113)))

(declare-fun bm!374108 () Bool)

(assert (=> bm!374108 (= call!374111 (derivationStepZipperDown!334 (ite c!912303 (regTwo!30285 (h!67281 (exprs!4770 (h!67282 zl!343)))) (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343))))) (ite c!912303 (Context!8541 (t!374148 (exprs!4770 (h!67282 zl!343)))) (Context!8541 call!374113)) (h!67283 s!2326)))))

(declare-fun bm!374109 () Bool)

(assert (=> bm!374109 (= call!374114 call!374110)))

(declare-fun b!5268046 () Bool)

(assert (=> b!5268046 (= e!3276497 call!374109)))

(assert (= (and d!1695365 c!912299) b!5268045))

(assert (= (and d!1695365 (not c!912299)) b!5268044))

(assert (= (and b!5268044 c!912303) b!5268043))

(assert (= (and b!5268044 (not c!912303)) b!5268040))

(assert (= (and b!5268040 res!2235027) b!5268042))

(assert (= (and b!5268040 c!912301) b!5268038))

(assert (= (and b!5268040 (not c!912301)) b!5268041))

(assert (= (and b!5268041 c!912302) b!5268037))

(assert (= (and b!5268041 (not c!912302)) b!5268039))

(assert (= (and b!5268039 c!912300) b!5268046))

(assert (= (and b!5268039 (not c!912300)) b!5268036))

(assert (= (or b!5268037 b!5268046) bm!374107))

(assert (= (or b!5268037 b!5268046) bm!374106))

(assert (= (or b!5268038 bm!374107) bm!374104))

(assert (= (or b!5268038 bm!374106) bm!374109))

(assert (= (or b!5268043 b!5268038) bm!374108))

(assert (= (or b!5268043 bm!374109) bm!374105))

(declare-fun m!6307792 () Bool)

(assert (=> bm!374105 m!6307792))

(declare-fun m!6307794 () Bool)

(assert (=> bm!374108 m!6307794))

(declare-fun m!6307796 () Bool)

(assert (=> bm!374104 m!6307796))

(assert (=> b!5268042 m!6307092))

(declare-fun m!6307798 () Bool)

(assert (=> b!5268045 m!6307798))

(assert (=> bm!373950 d!1695365))

(assert (=> d!1695065 d!1695205))

(declare-fun d!1695367 () Bool)

(declare-fun c!912306 () Bool)

(assert (=> d!1695367 (= c!912306 (is-Nil!60834 lt!2156115))))

(declare-fun e!3276501 () (Set Context!8540))

(assert (=> d!1695367 (= (content!10817 lt!2156115) e!3276501)))

(declare-fun b!5268051 () Bool)

(assert (=> b!5268051 (= e!3276501 (as set.empty (Set Context!8540)))))

(declare-fun b!5268052 () Bool)

(assert (=> b!5268052 (= e!3276501 (set.union (set.insert (h!67282 lt!2156115) (as set.empty (Set Context!8540))) (content!10817 (t!374149 lt!2156115))))))

(assert (= (and d!1695367 c!912306) b!5268051))

(assert (= (and d!1695367 (not c!912306)) b!5268052))

(declare-fun m!6307800 () Bool)

(assert (=> b!5268052 m!6307800))

(declare-fun m!6307802 () Bool)

(assert (=> b!5268052 m!6307802))

(assert (=> b!5266922 d!1695367))

(declare-fun d!1695369 () Bool)

(declare-fun res!2235028 () Bool)

(declare-fun e!3276502 () Bool)

(assert (=> d!1695369 (=> res!2235028 e!3276502)))

(assert (=> d!1695369 (= res!2235028 (is-Nil!60833 lt!2156156))))

(assert (=> d!1695369 (= (forall!14296 lt!2156156 lambda!265663) e!3276502)))

(declare-fun b!5268053 () Bool)

(declare-fun e!3276503 () Bool)

(assert (=> b!5268053 (= e!3276502 e!3276503)))

(declare-fun res!2235029 () Bool)

(assert (=> b!5268053 (=> (not res!2235029) (not e!3276503))))

(assert (=> b!5268053 (= res!2235029 (dynLambda!24040 lambda!265663 (h!67281 lt!2156156)))))

(declare-fun b!5268054 () Bool)

(assert (=> b!5268054 (= e!3276503 (forall!14296 (t!374148 lt!2156156) lambda!265663))))

(assert (= (and d!1695369 (not res!2235028)) b!5268053))

(assert (= (and b!5268053 res!2235029) b!5268054))

(declare-fun b_lambda!203197 () Bool)

(assert (=> (not b_lambda!203197) (not b!5268053)))

(declare-fun m!6307804 () Bool)

(assert (=> b!5268053 m!6307804))

(declare-fun m!6307806 () Bool)

(assert (=> b!5268054 m!6307806))

(assert (=> d!1695097 d!1695369))

(declare-fun b!5268055 () Bool)

(declare-fun e!3276508 () Bool)

(declare-fun e!3276510 () Bool)

(assert (=> b!5268055 (= e!3276508 e!3276510)))

(declare-fun c!912308 () Bool)

(assert (=> b!5268055 (= c!912308 (is-EmptyLang!14886 (regTwo!30284 r!7292)))))

(declare-fun b!5268056 () Bool)

(declare-fun e!3276505 () Bool)

(assert (=> b!5268056 (= e!3276505 (nullable!5055 (regTwo!30284 r!7292)))))

(declare-fun b!5268057 () Bool)

(declare-fun res!2235034 () Bool)

(declare-fun e!3276506 () Bool)

(assert (=> b!5268057 (=> (not res!2235034) (not e!3276506))))

(assert (=> b!5268057 (= res!2235034 (isEmpty!32785 (tail!10389 (_2!35388 (get!20916 lt!2156122)))))))

(declare-fun b!5268058 () Bool)

(declare-fun e!3276509 () Bool)

(assert (=> b!5268058 (= e!3276509 (not (= (head!11292 (_2!35388 (get!20916 lt!2156122))) (c!911978 (regTwo!30284 r!7292)))))))

(declare-fun b!5268059 () Bool)

(declare-fun res!2235033 () Bool)

(assert (=> b!5268059 (=> (not res!2235033) (not e!3276506))))

(declare-fun call!374115 () Bool)

(assert (=> b!5268059 (= res!2235033 (not call!374115))))

(declare-fun b!5268060 () Bool)

(declare-fun res!2235037 () Bool)

(declare-fun e!3276504 () Bool)

(assert (=> b!5268060 (=> res!2235037 e!3276504)))

(assert (=> b!5268060 (= res!2235037 (not (is-ElementMatch!14886 (regTwo!30284 r!7292))))))

(assert (=> b!5268060 (= e!3276510 e!3276504)))

(declare-fun b!5268061 () Bool)

(assert (=> b!5268061 (= e!3276506 (= (head!11292 (_2!35388 (get!20916 lt!2156122))) (c!911978 (regTwo!30284 r!7292))))))

(declare-fun b!5268062 () Bool)

(assert (=> b!5268062 (= e!3276505 (matchR!7071 (derivativeStep!4108 (regTwo!30284 r!7292) (head!11292 (_2!35388 (get!20916 lt!2156122)))) (tail!10389 (_2!35388 (get!20916 lt!2156122)))))))

(declare-fun d!1695371 () Bool)

(assert (=> d!1695371 e!3276508))

(declare-fun c!912309 () Bool)

(assert (=> d!1695371 (= c!912309 (is-EmptyExpr!14886 (regTwo!30284 r!7292)))))

(declare-fun lt!2156216 () Bool)

(assert (=> d!1695371 (= lt!2156216 e!3276505)))

(declare-fun c!912307 () Bool)

(assert (=> d!1695371 (= c!912307 (isEmpty!32785 (_2!35388 (get!20916 lt!2156122))))))

(assert (=> d!1695371 (validRegex!6622 (regTwo!30284 r!7292))))

(assert (=> d!1695371 (= (matchR!7071 (regTwo!30284 r!7292) (_2!35388 (get!20916 lt!2156122))) lt!2156216)))

(declare-fun b!5268063 () Bool)

(declare-fun res!2235036 () Bool)

(assert (=> b!5268063 (=> res!2235036 e!3276504)))

(assert (=> b!5268063 (= res!2235036 e!3276506)))

(declare-fun res!2235035 () Bool)

(assert (=> b!5268063 (=> (not res!2235035) (not e!3276506))))

(assert (=> b!5268063 (= res!2235035 lt!2156216)))

(declare-fun bm!374110 () Bool)

(assert (=> bm!374110 (= call!374115 (isEmpty!32785 (_2!35388 (get!20916 lt!2156122))))))

(declare-fun b!5268064 () Bool)

(assert (=> b!5268064 (= e!3276510 (not lt!2156216))))

(declare-fun b!5268065 () Bool)

(assert (=> b!5268065 (= e!3276508 (= lt!2156216 call!374115))))

(declare-fun b!5268066 () Bool)

(declare-fun e!3276507 () Bool)

(assert (=> b!5268066 (= e!3276504 e!3276507)))

(declare-fun res!2235030 () Bool)

(assert (=> b!5268066 (=> (not res!2235030) (not e!3276507))))

(assert (=> b!5268066 (= res!2235030 (not lt!2156216))))

(declare-fun b!5268067 () Bool)

(declare-fun res!2235032 () Bool)

(assert (=> b!5268067 (=> res!2235032 e!3276509)))

(assert (=> b!5268067 (= res!2235032 (not (isEmpty!32785 (tail!10389 (_2!35388 (get!20916 lt!2156122))))))))

(declare-fun b!5268068 () Bool)

(assert (=> b!5268068 (= e!3276507 e!3276509)))

(declare-fun res!2235031 () Bool)

(assert (=> b!5268068 (=> res!2235031 e!3276509)))

(assert (=> b!5268068 (= res!2235031 call!374115)))

(assert (= (and d!1695371 c!912307) b!5268056))

(assert (= (and d!1695371 (not c!912307)) b!5268062))

(assert (= (and d!1695371 c!912309) b!5268065))

(assert (= (and d!1695371 (not c!912309)) b!5268055))

(assert (= (and b!5268055 c!912308) b!5268064))

(assert (= (and b!5268055 (not c!912308)) b!5268060))

(assert (= (and b!5268060 (not res!2235037)) b!5268063))

(assert (= (and b!5268063 res!2235035) b!5268059))

(assert (= (and b!5268059 res!2235033) b!5268057))

(assert (= (and b!5268057 res!2235034) b!5268061))

(assert (= (and b!5268063 (not res!2235036)) b!5268066))

(assert (= (and b!5268066 res!2235030) b!5268068))

(assert (= (and b!5268068 (not res!2235031)) b!5268067))

(assert (= (and b!5268067 (not res!2235032)) b!5268058))

(assert (= (or b!5268065 b!5268059 b!5268068) bm!374110))

(declare-fun m!6307808 () Bool)

(assert (=> b!5268058 m!6307808))

(declare-fun m!6307810 () Bool)

(assert (=> d!1695371 m!6307810))

(assert (=> d!1695371 m!6307702))

(assert (=> b!5268062 m!6307808))

(assert (=> b!5268062 m!6307808))

(declare-fun m!6307812 () Bool)

(assert (=> b!5268062 m!6307812))

(declare-fun m!6307814 () Bool)

(assert (=> b!5268062 m!6307814))

(assert (=> b!5268062 m!6307812))

(assert (=> b!5268062 m!6307814))

(declare-fun m!6307816 () Bool)

(assert (=> b!5268062 m!6307816))

(assert (=> bm!374110 m!6307810))

(assert (=> b!5268056 m!6307708))

(assert (=> b!5268057 m!6307814))

(assert (=> b!5268057 m!6307814))

(declare-fun m!6307818 () Bool)

(assert (=> b!5268057 m!6307818))

(assert (=> b!5268061 m!6307808))

(assert (=> b!5268067 m!6307814))

(assert (=> b!5268067 m!6307814))

(assert (=> b!5268067 m!6307818))

(assert (=> b!5266980 d!1695371))

(assert (=> b!5266980 d!1695223))

(assert (=> b!5267230 d!1695069))

(declare-fun bs!1220795 () Bool)

(declare-fun d!1695373 () Bool)

(assert (= bs!1220795 (and d!1695373 d!1695361)))

(declare-fun lambda!265720 () Int)

(assert (=> bs!1220795 (= lambda!265720 lambda!265719)))

(declare-fun bs!1220796 () Bool)

(assert (= bs!1220796 (and d!1695373 d!1695227)))

(assert (=> bs!1220796 (= lambda!265720 lambda!265693)))

(declare-fun bs!1220797 () Bool)

(assert (= bs!1220797 (and d!1695373 d!1695095)))

(assert (=> bs!1220797 (= lambda!265720 lambda!265660)))

(declare-fun bs!1220798 () Bool)

(assert (= bs!1220798 (and d!1695373 d!1695097)))

(assert (=> bs!1220798 (= lambda!265720 lambda!265663)))

(declare-fun bs!1220799 () Bool)

(assert (= bs!1220799 (and d!1695373 d!1695213)))

(assert (=> bs!1220799 (= lambda!265720 lambda!265692)))

(declare-fun bs!1220800 () Bool)

(assert (= bs!1220800 (and d!1695373 d!1695027)))

(assert (=> bs!1220800 (= lambda!265720 lambda!265638)))

(declare-fun bs!1220801 () Bool)

(assert (= bs!1220801 (and d!1695373 d!1695069)))

(assert (=> bs!1220801 (= lambda!265720 lambda!265656)))

(declare-fun bs!1220802 () Bool)

(assert (= bs!1220802 (and d!1695373 d!1695073)))

(assert (=> bs!1220802 (= lambda!265720 lambda!265657)))

(declare-fun lt!2156217 () List!60957)

(assert (=> d!1695373 (forall!14296 lt!2156217 lambda!265720)))

(declare-fun e!3276511 () List!60957)

(assert (=> d!1695373 (= lt!2156217 e!3276511)))

(declare-fun c!912310 () Bool)

(assert (=> d!1695373 (= c!912310 (is-Cons!60834 (t!374149 zl!343)))))

(assert (=> d!1695373 (= (unfocusZipperList!328 (t!374149 zl!343)) lt!2156217)))

(declare-fun b!5268069 () Bool)

(assert (=> b!5268069 (= e!3276511 (Cons!60833 (generalisedConcat!555 (exprs!4770 (h!67282 (t!374149 zl!343)))) (unfocusZipperList!328 (t!374149 (t!374149 zl!343)))))))

(declare-fun b!5268070 () Bool)

(assert (=> b!5268070 (= e!3276511 Nil!60833)))

(assert (= (and d!1695373 c!912310) b!5268069))

(assert (= (and d!1695373 (not c!912310)) b!5268070))

(declare-fun m!6307820 () Bool)

(assert (=> d!1695373 m!6307820))

(declare-fun m!6307822 () Bool)

(assert (=> b!5268069 m!6307822))

(declare-fun m!6307824 () Bool)

(assert (=> b!5268069 m!6307824))

(assert (=> b!5267230 d!1695373))

(declare-fun d!1695375 () Bool)

(assert (=> d!1695375 (= (nullable!5055 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343))))) (nullableFct!1439 (regOne!30284 (h!67281 (exprs!4770 (h!67282 zl!343))))))))

(declare-fun bs!1220803 () Bool)

(assert (= bs!1220803 d!1695375))

(declare-fun m!6307826 () Bool)

(assert (=> bs!1220803 m!6307826))

(assert (=> b!5267176 d!1695375))

(assert (=> d!1695083 d!1695085))

(declare-fun d!1695377 () Bool)

(assert (=> d!1695377 (= (flatMap!613 z!1189 lambda!265622) (dynLambda!24038 lambda!265622 (h!67282 zl!343)))))

(assert (=> d!1695377 true))

(declare-fun _$13!1806 () Unit!153062)

(assert (=> d!1695377 (= (choose!39300 z!1189 (h!67282 zl!343) lambda!265622) _$13!1806)))

(declare-fun b_lambda!203199 () Bool)

(assert (=> (not b_lambda!203199) (not d!1695377)))

(declare-fun bs!1220804 () Bool)

(assert (= bs!1220804 d!1695377))

(assert (=> bs!1220804 m!6306800))

(assert (=> bs!1220804 m!6307102))

(assert (=> d!1695083 d!1695377))

(declare-fun d!1695379 () Bool)

(assert (=> d!1695379 (= (head!11293 (exprs!4770 (h!67282 zl!343))) (h!67281 (exprs!4770 (h!67282 zl!343))))))

(assert (=> b!5267142 d!1695379))

(declare-fun d!1695381 () Bool)

(assert (=> d!1695381 (= (isEmpty!32786 (findConcatSeparation!1411 (regOne!30284 r!7292) (regTwo!30284 r!7292) Nil!60835 s!2326 s!2326)) (not (is-Some!14996 (findConcatSeparation!1411 (regOne!30284 r!7292) (regTwo!30284 r!7292) Nil!60835 s!2326 s!2326))))))

(assert (=> d!1695043 d!1695381))

(declare-fun d!1695383 () Bool)

(declare-fun c!912311 () Bool)

(assert (=> d!1695383 (= c!912311 (isEmpty!32785 (tail!10389 (t!374150 s!2326))))))

(declare-fun e!3276512 () Bool)

(assert (=> d!1695383 (= (matchZipper!1130 (derivationStepZipper!1131 lt!2156044 (head!11292 (t!374150 s!2326))) (tail!10389 (t!374150 s!2326))) e!3276512)))

(declare-fun b!5268071 () Bool)

(assert (=> b!5268071 (= e!3276512 (nullableZipper!1287 (derivationStepZipper!1131 lt!2156044 (head!11292 (t!374150 s!2326)))))))

(declare-fun b!5268072 () Bool)

(assert (=> b!5268072 (= e!3276512 (matchZipper!1130 (derivationStepZipper!1131 (derivationStepZipper!1131 lt!2156044 (head!11292 (t!374150 s!2326))) (head!11292 (tail!10389 (t!374150 s!2326)))) (tail!10389 (tail!10389 (t!374150 s!2326)))))))

(assert (= (and d!1695383 c!912311) b!5268071))

(assert (= (and d!1695383 (not c!912311)) b!5268072))

(assert (=> d!1695383 m!6306944))

(assert (=> d!1695383 m!6307532))

(assert (=> b!5268071 m!6307050))

(declare-fun m!6307828 () Bool)

(assert (=> b!5268071 m!6307828))

(assert (=> b!5268072 m!6306944))

(assert (=> b!5268072 m!6307536))

(assert (=> b!5268072 m!6307050))

(assert (=> b!5268072 m!6307536))

(declare-fun m!6307830 () Bool)

(assert (=> b!5268072 m!6307830))

(assert (=> b!5268072 m!6306944))

(assert (=> b!5268072 m!6307540))

(assert (=> b!5268072 m!6307830))

(assert (=> b!5268072 m!6307540))

(declare-fun m!6307832 () Bool)

(assert (=> b!5268072 m!6307832))

(assert (=> b!5267112 d!1695383))

(declare-fun bs!1220805 () Bool)

(declare-fun d!1695385 () Bool)

(assert (= bs!1220805 (and d!1695385 b!5266789)))

(declare-fun lambda!265721 () Int)

(assert (=> bs!1220805 (= (= (head!11292 (t!374150 s!2326)) (h!67283 s!2326)) (= lambda!265721 lambda!265622))))

(declare-fun bs!1220806 () Bool)

(assert (= bs!1220806 (and d!1695385 d!1695239)))

(assert (=> bs!1220806 (= lambda!265721 lambda!265699)))

(declare-fun bs!1220807 () Bool)

(assert (= bs!1220807 (and d!1695385 d!1695319)))

(assert (=> bs!1220807 (= lambda!265721 lambda!265708)))

(declare-fun bs!1220808 () Bool)

(assert (= bs!1220808 (and d!1695385 d!1695357)))

(assert (=> bs!1220808 (= lambda!265721 lambda!265717)))

(assert (=> d!1695385 true))

(assert (=> d!1695385 (= (derivationStepZipper!1131 lt!2156044 (head!11292 (t!374150 s!2326))) (flatMap!613 lt!2156044 lambda!265721))))

(declare-fun bs!1220809 () Bool)

(assert (= bs!1220809 d!1695385))

(declare-fun m!6307834 () Bool)

(assert (=> bs!1220809 m!6307834))

(assert (=> b!5267112 d!1695385))

(assert (=> b!5267112 d!1695241))

(assert (=> b!5267112 d!1695243))

(declare-fun d!1695387 () Bool)

(declare-fun c!912312 () Bool)

(assert (=> d!1695387 (= c!912312 (isEmpty!32785 (tail!10389 (t!374150 s!2326))))))

(declare-fun e!3276513 () Bool)

(assert (=> d!1695387 (= (matchZipper!1130 (derivationStepZipper!1131 lt!2156046 (head!11292 (t!374150 s!2326))) (tail!10389 (t!374150 s!2326))) e!3276513)))

(declare-fun b!5268073 () Bool)

(assert (=> b!5268073 (= e!3276513 (nullableZipper!1287 (derivationStepZipper!1131 lt!2156046 (head!11292 (t!374150 s!2326)))))))

(declare-fun b!5268074 () Bool)

(assert (=> b!5268074 (= e!3276513 (matchZipper!1130 (derivationStepZipper!1131 (derivationStepZipper!1131 lt!2156046 (head!11292 (t!374150 s!2326))) (head!11292 (tail!10389 (t!374150 s!2326)))) (tail!10389 (tail!10389 (t!374150 s!2326)))))))

(assert (= (and d!1695387 c!912312) b!5268073))

(assert (= (and d!1695387 (not c!912312)) b!5268074))

(assert (=> d!1695387 m!6306944))

(assert (=> d!1695387 m!6307532))

(assert (=> b!5268073 m!6306942))

(declare-fun m!6307836 () Bool)

(assert (=> b!5268073 m!6307836))

(assert (=> b!5268074 m!6306944))

(assert (=> b!5268074 m!6307536))

(assert (=> b!5268074 m!6306942))

(assert (=> b!5268074 m!6307536))

(declare-fun m!6307838 () Bool)

(assert (=> b!5268074 m!6307838))

(assert (=> b!5268074 m!6306944))

(assert (=> b!5268074 m!6307540))

(assert (=> b!5268074 m!6307838))

(assert (=> b!5268074 m!6307540))

(declare-fun m!6307840 () Bool)

(assert (=> b!5268074 m!6307840))

(assert (=> b!5266928 d!1695387))

(declare-fun bs!1220810 () Bool)

(declare-fun d!1695389 () Bool)

(assert (= bs!1220810 (and d!1695389 b!5266789)))

(declare-fun lambda!265722 () Int)

(assert (=> bs!1220810 (= (= (head!11292 (t!374150 s!2326)) (h!67283 s!2326)) (= lambda!265722 lambda!265622))))

(declare-fun bs!1220811 () Bool)

(assert (= bs!1220811 (and d!1695389 d!1695239)))

(assert (=> bs!1220811 (= lambda!265722 lambda!265699)))

(declare-fun bs!1220812 () Bool)

(assert (= bs!1220812 (and d!1695389 d!1695385)))

(assert (=> bs!1220812 (= lambda!265722 lambda!265721)))

(declare-fun bs!1220813 () Bool)

(assert (= bs!1220813 (and d!1695389 d!1695319)))

(assert (=> bs!1220813 (= lambda!265722 lambda!265708)))

(declare-fun bs!1220814 () Bool)

(assert (= bs!1220814 (and d!1695389 d!1695357)))

(assert (=> bs!1220814 (= lambda!265722 lambda!265717)))

(assert (=> d!1695389 true))

(assert (=> d!1695389 (= (derivationStepZipper!1131 lt!2156046 (head!11292 (t!374150 s!2326))) (flatMap!613 lt!2156046 lambda!265722))))

(declare-fun bs!1220815 () Bool)

(assert (= bs!1220815 d!1695389))

(declare-fun m!6307842 () Bool)

(assert (=> bs!1220815 m!6307842))

(assert (=> b!5266928 d!1695389))

(assert (=> b!5266928 d!1695241))

(assert (=> b!5266928 d!1695243))

(assert (=> b!5267099 d!1695271))

(assert (=> b!5267099 d!1695273))

(declare-fun d!1695391 () Bool)

(assert (=> d!1695391 (= (nullable!5055 (regOne!30284 (regTwo!30284 (regOne!30284 r!7292)))) (nullableFct!1439 (regOne!30284 (regTwo!30284 (regOne!30284 r!7292)))))))

(declare-fun bs!1220816 () Bool)

(assert (= bs!1220816 d!1695391))

(declare-fun m!6307844 () Bool)

(assert (=> bs!1220816 m!6307844))

(assert (=> b!5267238 d!1695391))

(declare-fun d!1695393 () Bool)

(assert (=> d!1695393 (= (isEmpty!32781 (tail!10390 (unfocusZipperList!328 zl!343))) (is-Nil!60833 (tail!10390 (unfocusZipperList!328 zl!343))))))

(assert (=> b!5267223 d!1695393))

(declare-fun d!1695395 () Bool)

(assert (=> d!1695395 (= (tail!10390 (unfocusZipperList!328 zl!343)) (t!374148 (unfocusZipperList!328 zl!343)))))

(assert (=> b!5267223 d!1695395))

(assert (=> d!1695063 d!1695061))

(assert (=> d!1695063 d!1695059))

(declare-fun d!1695397 () Bool)

(assert (=> d!1695397 (= (matchR!7071 r!7292 s!2326) (matchRSpec!1989 r!7292 s!2326))))

(assert (=> d!1695397 true))

(declare-fun _$88!3553 () Unit!153062)

(assert (=> d!1695397 (= (choose!39301 r!7292 s!2326) _$88!3553)))

(declare-fun bs!1220817 () Bool)

(assert (= bs!1220817 d!1695397))

(assert (=> bs!1220817 m!6306804))

(assert (=> bs!1220817 m!6306802))

(assert (=> d!1695063 d!1695397))

(assert (=> d!1695063 d!1695031))

(assert (=> d!1695029 d!1695205))

(declare-fun b!5268075 () Bool)

(declare-fun e!3276518 () Bool)

(declare-fun e!3276520 () Bool)

(assert (=> b!5268075 (= e!3276518 e!3276520)))

(declare-fun c!912314 () Bool)

(assert (=> b!5268075 (= c!912314 (is-EmptyLang!14886 (derivativeStep!4108 r!7292 (head!11292 s!2326))))))

(declare-fun b!5268076 () Bool)

(declare-fun e!3276515 () Bool)

(assert (=> b!5268076 (= e!3276515 (nullable!5055 (derivativeStep!4108 r!7292 (head!11292 s!2326))))))

(declare-fun b!5268077 () Bool)

(declare-fun res!2235042 () Bool)

(declare-fun e!3276516 () Bool)

(assert (=> b!5268077 (=> (not res!2235042) (not e!3276516))))

(assert (=> b!5268077 (= res!2235042 (isEmpty!32785 (tail!10389 (tail!10389 s!2326))))))

(declare-fun b!5268078 () Bool)

(declare-fun e!3276519 () Bool)

(assert (=> b!5268078 (= e!3276519 (not (= (head!11292 (tail!10389 s!2326)) (c!911978 (derivativeStep!4108 r!7292 (head!11292 s!2326))))))))

(declare-fun b!5268079 () Bool)

(declare-fun res!2235041 () Bool)

(assert (=> b!5268079 (=> (not res!2235041) (not e!3276516))))

(declare-fun call!374116 () Bool)

(assert (=> b!5268079 (= res!2235041 (not call!374116))))

(declare-fun b!5268080 () Bool)

(declare-fun res!2235045 () Bool)

(declare-fun e!3276514 () Bool)

(assert (=> b!5268080 (=> res!2235045 e!3276514)))

(assert (=> b!5268080 (= res!2235045 (not (is-ElementMatch!14886 (derivativeStep!4108 r!7292 (head!11292 s!2326)))))))

(assert (=> b!5268080 (= e!3276520 e!3276514)))

(declare-fun b!5268081 () Bool)

(assert (=> b!5268081 (= e!3276516 (= (head!11292 (tail!10389 s!2326)) (c!911978 (derivativeStep!4108 r!7292 (head!11292 s!2326)))))))

(declare-fun b!5268082 () Bool)

(assert (=> b!5268082 (= e!3276515 (matchR!7071 (derivativeStep!4108 (derivativeStep!4108 r!7292 (head!11292 s!2326)) (head!11292 (tail!10389 s!2326))) (tail!10389 (tail!10389 s!2326))))))

(declare-fun d!1695399 () Bool)

(assert (=> d!1695399 e!3276518))

(declare-fun c!912315 () Bool)

(assert (=> d!1695399 (= c!912315 (is-EmptyExpr!14886 (derivativeStep!4108 r!7292 (head!11292 s!2326))))))

(declare-fun lt!2156218 () Bool)

(assert (=> d!1695399 (= lt!2156218 e!3276515)))

(declare-fun c!912313 () Bool)

(assert (=> d!1695399 (= c!912313 (isEmpty!32785 (tail!10389 s!2326)))))

(assert (=> d!1695399 (validRegex!6622 (derivativeStep!4108 r!7292 (head!11292 s!2326)))))

(assert (=> d!1695399 (= (matchR!7071 (derivativeStep!4108 r!7292 (head!11292 s!2326)) (tail!10389 s!2326)) lt!2156218)))

(declare-fun b!5268083 () Bool)

(declare-fun res!2235044 () Bool)

(assert (=> b!5268083 (=> res!2235044 e!3276514)))

(assert (=> b!5268083 (= res!2235044 e!3276516)))

(declare-fun res!2235043 () Bool)

(assert (=> b!5268083 (=> (not res!2235043) (not e!3276516))))

(assert (=> b!5268083 (= res!2235043 lt!2156218)))

(declare-fun bm!374111 () Bool)

(assert (=> bm!374111 (= call!374116 (isEmpty!32785 (tail!10389 s!2326)))))

(declare-fun b!5268084 () Bool)

(assert (=> b!5268084 (= e!3276520 (not lt!2156218))))

(declare-fun b!5268085 () Bool)

(assert (=> b!5268085 (= e!3276518 (= lt!2156218 call!374116))))

(declare-fun b!5268086 () Bool)

(declare-fun e!3276517 () Bool)

(assert (=> b!5268086 (= e!3276514 e!3276517)))

(declare-fun res!2235038 () Bool)

(assert (=> b!5268086 (=> (not res!2235038) (not e!3276517))))

(assert (=> b!5268086 (= res!2235038 (not lt!2156218))))

(declare-fun b!5268087 () Bool)

(declare-fun res!2235040 () Bool)

(assert (=> b!5268087 (=> res!2235040 e!3276519)))

(assert (=> b!5268087 (= res!2235040 (not (isEmpty!32785 (tail!10389 (tail!10389 s!2326)))))))

(declare-fun b!5268088 () Bool)

(assert (=> b!5268088 (= e!3276517 e!3276519)))

(declare-fun res!2235039 () Bool)

(assert (=> b!5268088 (=> res!2235039 e!3276519)))

(assert (=> b!5268088 (= res!2235039 call!374116)))

(assert (= (and d!1695399 c!912313) b!5268076))

(assert (= (and d!1695399 (not c!912313)) b!5268082))

(assert (= (and d!1695399 c!912315) b!5268085))

(assert (= (and d!1695399 (not c!912315)) b!5268075))

(assert (= (and b!5268075 c!912314) b!5268084))

(assert (= (and b!5268075 (not c!912314)) b!5268080))

(assert (= (and b!5268080 (not res!2235045)) b!5268083))

(assert (= (and b!5268083 res!2235043) b!5268079))

(assert (= (and b!5268079 res!2235041) b!5268077))

(assert (= (and b!5268077 res!2235042) b!5268081))

(assert (= (and b!5268083 (not res!2235044)) b!5268086))

(assert (= (and b!5268086 res!2235038) b!5268088))

(assert (= (and b!5268088 (not res!2235039)) b!5268087))

(assert (= (and b!5268087 (not res!2235040)) b!5268078))

(assert (= (or b!5268085 b!5268079 b!5268088) bm!374111))

(assert (=> b!5268078 m!6307038))

(declare-fun m!6307846 () Bool)

(assert (=> b!5268078 m!6307846))

(assert (=> d!1695399 m!6307038))

(assert (=> d!1695399 m!6307044))

(assert (=> d!1695399 m!6307036))

(declare-fun m!6307848 () Bool)

(assert (=> d!1695399 m!6307848))

(assert (=> b!5268082 m!6307038))

(assert (=> b!5268082 m!6307846))

(assert (=> b!5268082 m!6307036))

(assert (=> b!5268082 m!6307846))

(declare-fun m!6307850 () Bool)

(assert (=> b!5268082 m!6307850))

(assert (=> b!5268082 m!6307038))

(declare-fun m!6307852 () Bool)

(assert (=> b!5268082 m!6307852))

(assert (=> b!5268082 m!6307850))

(assert (=> b!5268082 m!6307852))

(declare-fun m!6307854 () Bool)

(assert (=> b!5268082 m!6307854))

(assert (=> bm!374111 m!6307038))

(assert (=> bm!374111 m!6307044))

(assert (=> b!5268076 m!6307036))

(declare-fun m!6307856 () Bool)

(assert (=> b!5268076 m!6307856))

(assert (=> b!5268077 m!6307038))

(assert (=> b!5268077 m!6307852))

(assert (=> b!5268077 m!6307852))

(declare-fun m!6307858 () Bool)

(assert (=> b!5268077 m!6307858))

(assert (=> b!5268081 m!6307038))

(assert (=> b!5268081 m!6307846))

(assert (=> b!5268087 m!6307038))

(assert (=> b!5268087 m!6307852))

(assert (=> b!5268087 m!6307852))

(assert (=> b!5268087 m!6307858))

(assert (=> b!5267104 d!1695399))

(declare-fun b!5268109 () Bool)

(declare-fun e!3276531 () Regex!14886)

(declare-fun call!374127 () Regex!14886)

(assert (=> b!5268109 (= e!3276531 (Concat!23731 call!374127 r!7292))))

(declare-fun bm!374120 () Bool)

(declare-fun call!374125 () Regex!14886)

(assert (=> bm!374120 (= call!374127 call!374125)))

(declare-fun b!5268110 () Bool)

(declare-fun e!3276535 () Regex!14886)

(assert (=> b!5268110 (= e!3276535 EmptyLang!14886)))

(declare-fun b!5268111 () Bool)

(declare-fun e!3276532 () Regex!14886)

(declare-fun call!374126 () Regex!14886)

(assert (=> b!5268111 (= e!3276532 (Union!14886 call!374125 call!374126))))

(declare-fun b!5268112 () Bool)

(declare-fun e!3276534 () Regex!14886)

(assert (=> b!5268112 (= e!3276535 e!3276534)))

(declare-fun c!912327 () Bool)

(assert (=> b!5268112 (= c!912327 (is-ElementMatch!14886 r!7292))))

(declare-fun bm!374121 () Bool)

(declare-fun c!912329 () Bool)

(declare-fun c!912326 () Bool)

(declare-fun c!912330 () Bool)

(assert (=> bm!374121 (= call!374125 (derivativeStep!4108 (ite c!912330 (regOne!30285 r!7292) (ite c!912326 (reg!15215 r!7292) (ite c!912329 (regTwo!30284 r!7292) (regOne!30284 r!7292)))) (head!11292 s!2326)))))

(declare-fun d!1695401 () Bool)

(declare-fun lt!2156221 () Regex!14886)

(assert (=> d!1695401 (validRegex!6622 lt!2156221)))

(assert (=> d!1695401 (= lt!2156221 e!3276535)))

(declare-fun c!912328 () Bool)

(assert (=> d!1695401 (= c!912328 (or (is-EmptyExpr!14886 r!7292) (is-EmptyLang!14886 r!7292)))))

(assert (=> d!1695401 (validRegex!6622 r!7292)))

(assert (=> d!1695401 (= (derivativeStep!4108 r!7292 (head!11292 s!2326)) lt!2156221)))

(declare-fun b!5268113 () Bool)

(assert (=> b!5268113 (= e!3276534 (ite (= (head!11292 s!2326) (c!911978 r!7292)) EmptyExpr!14886 EmptyLang!14886))))

(declare-fun b!5268114 () Bool)

(assert (=> b!5268114 (= e!3276532 e!3276531)))

(assert (=> b!5268114 (= c!912326 (is-Star!14886 r!7292))))

(declare-fun bm!374122 () Bool)

(declare-fun call!374128 () Regex!14886)

(assert (=> bm!374122 (= call!374128 call!374127)))

(declare-fun b!5268115 () Bool)

(assert (=> b!5268115 (= c!912330 (is-Union!14886 r!7292))))

(assert (=> b!5268115 (= e!3276534 e!3276532)))

(declare-fun e!3276533 () Regex!14886)

(declare-fun b!5268116 () Bool)

(assert (=> b!5268116 (= e!3276533 (Union!14886 (Concat!23731 call!374126 (regTwo!30284 r!7292)) call!374128))))

(declare-fun bm!374123 () Bool)

(assert (=> bm!374123 (= call!374126 (derivativeStep!4108 (ite c!912330 (regTwo!30285 r!7292) (regOne!30284 r!7292)) (head!11292 s!2326)))))

(declare-fun b!5268117 () Bool)

(assert (=> b!5268117 (= e!3276533 (Union!14886 (Concat!23731 call!374128 (regTwo!30284 r!7292)) EmptyLang!14886))))

(declare-fun b!5268118 () Bool)

(assert (=> b!5268118 (= c!912329 (nullable!5055 (regOne!30284 r!7292)))))

(assert (=> b!5268118 (= e!3276531 e!3276533)))

(assert (= (and d!1695401 c!912328) b!5268110))

(assert (= (and d!1695401 (not c!912328)) b!5268112))

(assert (= (and b!5268112 c!912327) b!5268113))

(assert (= (and b!5268112 (not c!912327)) b!5268115))

(assert (= (and b!5268115 c!912330) b!5268111))

(assert (= (and b!5268115 (not c!912330)) b!5268114))

(assert (= (and b!5268114 c!912326) b!5268109))

(assert (= (and b!5268114 (not c!912326)) b!5268118))

(assert (= (and b!5268118 c!912329) b!5268116))

(assert (= (and b!5268118 (not c!912329)) b!5268117))

(assert (= (or b!5268116 b!5268117) bm!374122))

(assert (= (or b!5268109 bm!374122) bm!374120))

(assert (= (or b!5268111 b!5268116) bm!374123))

(assert (= (or b!5268111 bm!374120) bm!374121))

(assert (=> bm!374121 m!6307034))

(declare-fun m!6307860 () Bool)

(assert (=> bm!374121 m!6307860))

(declare-fun m!6307862 () Bool)

(assert (=> d!1695401 m!6307862))

(assert (=> d!1695401 m!6306830))

(assert (=> bm!374123 m!6307034))

(declare-fun m!6307864 () Bool)

(assert (=> bm!374123 m!6307864))

(assert (=> b!5268118 m!6307502))

(assert (=> b!5267104 d!1695401))

(assert (=> b!5267104 d!1695325))

(assert (=> b!5267104 d!1695273))

(declare-fun bs!1220818 () Bool)

(declare-fun d!1695403 () Bool)

(assert (= bs!1220818 (and d!1695403 d!1695373)))

(declare-fun lambda!265723 () Int)

(assert (=> bs!1220818 (= lambda!265723 lambda!265720)))

(declare-fun bs!1220819 () Bool)

(assert (= bs!1220819 (and d!1695403 d!1695361)))

(assert (=> bs!1220819 (= lambda!265723 lambda!265719)))

(declare-fun bs!1220820 () Bool)

(assert (= bs!1220820 (and d!1695403 d!1695227)))

(assert (=> bs!1220820 (= lambda!265723 lambda!265693)))

(declare-fun bs!1220821 () Bool)

(assert (= bs!1220821 (and d!1695403 d!1695095)))

(assert (=> bs!1220821 (= lambda!265723 lambda!265660)))

(declare-fun bs!1220822 () Bool)

(assert (= bs!1220822 (and d!1695403 d!1695097)))

(assert (=> bs!1220822 (= lambda!265723 lambda!265663)))

(declare-fun bs!1220823 () Bool)

(assert (= bs!1220823 (and d!1695403 d!1695213)))

(assert (=> bs!1220823 (= lambda!265723 lambda!265692)))

(declare-fun bs!1220824 () Bool)

(assert (= bs!1220824 (and d!1695403 d!1695027)))

(assert (=> bs!1220824 (= lambda!265723 lambda!265638)))

(declare-fun bs!1220825 () Bool)

(assert (= bs!1220825 (and d!1695403 d!1695069)))

(assert (=> bs!1220825 (= lambda!265723 lambda!265656)))

(declare-fun bs!1220826 () Bool)

(assert (= bs!1220826 (and d!1695403 d!1695073)))

(assert (=> bs!1220826 (= lambda!265723 lambda!265657)))

(declare-fun b!5268119 () Bool)

(declare-fun e!3276538 () Regex!14886)

(assert (=> b!5268119 (= e!3276538 (h!67281 (t!374148 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun b!5268120 () Bool)

(declare-fun e!3276541 () Bool)

(declare-fun e!3276539 () Bool)

(assert (=> b!5268120 (= e!3276541 e!3276539)))

(declare-fun c!912331 () Bool)

(assert (=> b!5268120 (= c!912331 (isEmpty!32781 (tail!10390 (t!374148 (exprs!4770 (h!67282 zl!343))))))))

(declare-fun b!5268121 () Bool)

(declare-fun e!3276536 () Regex!14886)

(assert (=> b!5268121 (= e!3276536 (Concat!23731 (h!67281 (t!374148 (exprs!4770 (h!67282 zl!343)))) (generalisedConcat!555 (t!374148 (t!374148 (exprs!4770 (h!67282 zl!343)))))))))

(declare-fun b!5268122 () Bool)

(declare-fun e!3276540 () Bool)

(assert (=> b!5268122 (= e!3276540 (isEmpty!32781 (t!374148 (t!374148 (exprs!4770 (h!67282 zl!343))))))))

(declare-fun b!5268123 () Bool)

(declare-fun lt!2156222 () Regex!14886)

(assert (=> b!5268123 (= e!3276539 (isConcat!345 lt!2156222))))

(declare-fun b!5268125 () Bool)

(assert (=> b!5268125 (= e!3276538 e!3276536)))

(declare-fun c!912334 () Bool)

(assert (=> b!5268125 (= c!912334 (is-Cons!60833 (t!374148 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun b!5268126 () Bool)

(declare-fun e!3276537 () Bool)

(assert (=> b!5268126 (= e!3276537 e!3276541)))

(declare-fun c!912332 () Bool)

(assert (=> b!5268126 (= c!912332 (isEmpty!32781 (t!374148 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun b!5268127 () Bool)

(assert (=> b!5268127 (= e!3276536 EmptyExpr!14886)))

(declare-fun b!5268128 () Bool)

(assert (=> b!5268128 (= e!3276539 (= lt!2156222 (head!11293 (t!374148 (exprs!4770 (h!67282 zl!343))))))))

(assert (=> d!1695403 e!3276537))

(declare-fun res!2235047 () Bool)

(assert (=> d!1695403 (=> (not res!2235047) (not e!3276537))))

(assert (=> d!1695403 (= res!2235047 (validRegex!6622 lt!2156222))))

(assert (=> d!1695403 (= lt!2156222 e!3276538)))

(declare-fun c!912333 () Bool)

(assert (=> d!1695403 (= c!912333 e!3276540)))

(declare-fun res!2235046 () Bool)

(assert (=> d!1695403 (=> (not res!2235046) (not e!3276540))))

(assert (=> d!1695403 (= res!2235046 (is-Cons!60833 (t!374148 (exprs!4770 (h!67282 zl!343)))))))

(assert (=> d!1695403 (forall!14296 (t!374148 (exprs!4770 (h!67282 zl!343))) lambda!265723)))

(assert (=> d!1695403 (= (generalisedConcat!555 (t!374148 (exprs!4770 (h!67282 zl!343)))) lt!2156222)))

(declare-fun b!5268124 () Bool)

(assert (=> b!5268124 (= e!3276541 (isEmptyExpr!822 lt!2156222))))

(assert (= (and d!1695403 res!2235046) b!5268122))

(assert (= (and d!1695403 c!912333) b!5268119))

(assert (= (and d!1695403 (not c!912333)) b!5268125))

(assert (= (and b!5268125 c!912334) b!5268121))

(assert (= (and b!5268125 (not c!912334)) b!5268127))

(assert (= (and d!1695403 res!2235047) b!5268126))

(assert (= (and b!5268126 c!912332) b!5268124))

(assert (= (and b!5268126 (not c!912332)) b!5268120))

(assert (= (and b!5268120 c!912331) b!5268128))

(assert (= (and b!5268120 (not c!912331)) b!5268123))

(declare-fun m!6307866 () Bool)

(assert (=> b!5268123 m!6307866))

(declare-fun m!6307868 () Bool)

(assert (=> d!1695403 m!6307868))

(declare-fun m!6307870 () Bool)

(assert (=> d!1695403 m!6307870))

(assert (=> b!5268126 m!6306760))

(declare-fun m!6307872 () Bool)

(assert (=> b!5268121 m!6307872))

(declare-fun m!6307874 () Bool)

(assert (=> b!5268128 m!6307874))

(declare-fun m!6307876 () Bool)

(assert (=> b!5268124 m!6307876))

(declare-fun m!6307878 () Bool)

(assert (=> b!5268120 m!6307878))

(assert (=> b!5268120 m!6307878))

(declare-fun m!6307880 () Bool)

(assert (=> b!5268120 m!6307880))

(declare-fun m!6307882 () Bool)

(assert (=> b!5268122 m!6307882))

(assert (=> b!5267135 d!1695403))

(declare-fun d!1695405 () Bool)

(assert (=> d!1695405 (= (nullable!5055 (reg!15215 r!7292)) (nullableFct!1439 (reg!15215 r!7292)))))

(declare-fun bs!1220827 () Bool)

(assert (= bs!1220827 d!1695405))

(declare-fun m!6307884 () Bool)

(assert (=> bs!1220827 m!6307884))

(assert (=> b!5266947 d!1695405))

(declare-fun d!1695407 () Bool)

(declare-fun res!2235048 () Bool)

(declare-fun e!3276542 () Bool)

(assert (=> d!1695407 (=> res!2235048 e!3276542)))

(assert (=> d!1695407 (= res!2235048 (is-Nil!60833 (exprs!4770 setElem!33694)))))

(assert (=> d!1695407 (= (forall!14296 (exprs!4770 setElem!33694) lambda!265638) e!3276542)))

(declare-fun b!5268129 () Bool)

(declare-fun e!3276543 () Bool)

(assert (=> b!5268129 (= e!3276542 e!3276543)))

(declare-fun res!2235049 () Bool)

(assert (=> b!5268129 (=> (not res!2235049) (not e!3276543))))

(assert (=> b!5268129 (= res!2235049 (dynLambda!24040 lambda!265638 (h!67281 (exprs!4770 setElem!33694))))))

(declare-fun b!5268130 () Bool)

(assert (=> b!5268130 (= e!3276543 (forall!14296 (t!374148 (exprs!4770 setElem!33694)) lambda!265638))))

(assert (= (and d!1695407 (not res!2235048)) b!5268129))

(assert (= (and b!5268129 res!2235049) b!5268130))

(declare-fun b_lambda!203201 () Bool)

(assert (=> (not b_lambda!203201) (not b!5268129)))

(declare-fun m!6307886 () Bool)

(assert (=> b!5268129 m!6307886))

(declare-fun m!6307888 () Bool)

(assert (=> b!5268130 m!6307888))

(assert (=> d!1695027 d!1695407))

(declare-fun d!1695409 () Bool)

(declare-fun c!912335 () Bool)

(assert (=> d!1695409 (= c!912335 (isEmpty!32785 (tail!10389 (t!374150 s!2326))))))

(declare-fun e!3276544 () Bool)

(assert (=> d!1695409 (= (matchZipper!1130 (derivationStepZipper!1131 lt!2156028 (head!11292 (t!374150 s!2326))) (tail!10389 (t!374150 s!2326))) e!3276544)))

(declare-fun b!5268131 () Bool)

(assert (=> b!5268131 (= e!3276544 (nullableZipper!1287 (derivationStepZipper!1131 lt!2156028 (head!11292 (t!374150 s!2326)))))))

(declare-fun b!5268132 () Bool)

(assert (=> b!5268132 (= e!3276544 (matchZipper!1130 (derivationStepZipper!1131 (derivationStepZipper!1131 lt!2156028 (head!11292 (t!374150 s!2326))) (head!11292 (tail!10389 (t!374150 s!2326)))) (tail!10389 (tail!10389 (t!374150 s!2326)))))))

(assert (= (and d!1695409 c!912335) b!5268131))

(assert (= (and d!1695409 (not c!912335)) b!5268132))

(assert (=> d!1695409 m!6306944))

(assert (=> d!1695409 m!6307532))

(assert (=> b!5268131 m!6307122))

(declare-fun m!6307890 () Bool)

(assert (=> b!5268131 m!6307890))

(assert (=> b!5268132 m!6306944))

(assert (=> b!5268132 m!6307536))

(assert (=> b!5268132 m!6307122))

(assert (=> b!5268132 m!6307536))

(declare-fun m!6307892 () Bool)

(assert (=> b!5268132 m!6307892))

(assert (=> b!5268132 m!6306944))

(assert (=> b!5268132 m!6307540))

(assert (=> b!5268132 m!6307892))

(assert (=> b!5268132 m!6307540))

(declare-fun m!6307894 () Bool)

(assert (=> b!5268132 m!6307894))

(assert (=> b!5267194 d!1695409))

(declare-fun bs!1220828 () Bool)

(declare-fun d!1695411 () Bool)

(assert (= bs!1220828 (and d!1695411 b!5266789)))

(declare-fun lambda!265724 () Int)

(assert (=> bs!1220828 (= (= (head!11292 (t!374150 s!2326)) (h!67283 s!2326)) (= lambda!265724 lambda!265622))))

(declare-fun bs!1220829 () Bool)

(assert (= bs!1220829 (and d!1695411 d!1695239)))

(assert (=> bs!1220829 (= lambda!265724 lambda!265699)))

(declare-fun bs!1220830 () Bool)

(assert (= bs!1220830 (and d!1695411 d!1695385)))

(assert (=> bs!1220830 (= lambda!265724 lambda!265721)))

(declare-fun bs!1220831 () Bool)

(assert (= bs!1220831 (and d!1695411 d!1695389)))

(assert (=> bs!1220831 (= lambda!265724 lambda!265722)))

(declare-fun bs!1220832 () Bool)

(assert (= bs!1220832 (and d!1695411 d!1695319)))

(assert (=> bs!1220832 (= lambda!265724 lambda!265708)))

(declare-fun bs!1220833 () Bool)

(assert (= bs!1220833 (and d!1695411 d!1695357)))

(assert (=> bs!1220833 (= lambda!265724 lambda!265717)))

(assert (=> d!1695411 true))

(assert (=> d!1695411 (= (derivationStepZipper!1131 lt!2156028 (head!11292 (t!374150 s!2326))) (flatMap!613 lt!2156028 lambda!265724))))

(declare-fun bs!1220834 () Bool)

(assert (= bs!1220834 d!1695411))

(declare-fun m!6307896 () Bool)

(assert (=> bs!1220834 m!6307896))

(assert (=> b!5267194 d!1695411))

(assert (=> b!5267194 d!1695241))

(assert (=> b!5267194 d!1695243))

(declare-fun d!1695413 () Bool)

(assert (=> d!1695413 (= (Exists!2067 (ite c!912021 lambda!265652 lambda!265653)) (choose!39295 (ite c!912021 lambda!265652 lambda!265653)))))

(declare-fun bs!1220835 () Bool)

(assert (= bs!1220835 d!1695413))

(declare-fun m!6307898 () Bool)

(assert (=> bs!1220835 m!6307898))

(assert (=> bm!373926 d!1695413))

(declare-fun b!5268133 () Bool)

(declare-fun e!3276551 () Bool)

(declare-fun e!3276548 () Bool)

(assert (=> b!5268133 (= e!3276551 e!3276548)))

(declare-fun res!2235054 () Bool)

(assert (=> b!5268133 (= res!2235054 (not (nullable!5055 (reg!15215 (ite c!911996 (reg!15215 r!7292) (ite c!911995 (regTwo!30285 r!7292) (regTwo!30284 r!7292)))))))))

(assert (=> b!5268133 (=> (not res!2235054) (not e!3276548))))

(declare-fun d!1695415 () Bool)

(declare-fun res!2235051 () Bool)

(declare-fun e!3276545 () Bool)

(assert (=> d!1695415 (=> res!2235051 e!3276545)))

(assert (=> d!1695415 (= res!2235051 (is-ElementMatch!14886 (ite c!911996 (reg!15215 r!7292) (ite c!911995 (regTwo!30285 r!7292) (regTwo!30284 r!7292)))))))

(assert (=> d!1695415 (= (validRegex!6622 (ite c!911996 (reg!15215 r!7292) (ite c!911995 (regTwo!30285 r!7292) (regTwo!30284 r!7292)))) e!3276545)))

(declare-fun b!5268134 () Bool)

(assert (=> b!5268134 (= e!3276545 e!3276551)))

(declare-fun c!912337 () Bool)

(assert (=> b!5268134 (= c!912337 (is-Star!14886 (ite c!911996 (reg!15215 r!7292) (ite c!911995 (regTwo!30285 r!7292) (regTwo!30284 r!7292)))))))

(declare-fun b!5268135 () Bool)

(declare-fun e!3276549 () Bool)

(declare-fun call!374131 () Bool)

(assert (=> b!5268135 (= e!3276549 call!374131)))

(declare-fun b!5268136 () Bool)

(declare-fun e!3276550 () Bool)

(assert (=> b!5268136 (= e!3276551 e!3276550)))

(declare-fun c!912336 () Bool)

(assert (=> b!5268136 (= c!912336 (is-Union!14886 (ite c!911996 (reg!15215 r!7292) (ite c!911995 (regTwo!30285 r!7292) (regTwo!30284 r!7292)))))))

(declare-fun bm!374124 () Bool)

(declare-fun call!374130 () Bool)

(assert (=> bm!374124 (= call!374130 (validRegex!6622 (ite c!912337 (reg!15215 (ite c!911996 (reg!15215 r!7292) (ite c!911995 (regTwo!30285 r!7292) (regTwo!30284 r!7292)))) (ite c!912336 (regTwo!30285 (ite c!911996 (reg!15215 r!7292) (ite c!911995 (regTwo!30285 r!7292) (regTwo!30284 r!7292)))) (regTwo!30284 (ite c!911996 (reg!15215 r!7292) (ite c!911995 (regTwo!30285 r!7292) (regTwo!30284 r!7292))))))))))

(declare-fun b!5268137 () Bool)

(declare-fun e!3276546 () Bool)

(assert (=> b!5268137 (= e!3276546 call!374131)))

(declare-fun bm!374125 () Bool)

(assert (=> bm!374125 (= call!374131 call!374130)))

(declare-fun b!5268138 () Bool)

(assert (=> b!5268138 (= e!3276548 call!374130)))

(declare-fun call!374129 () Bool)

(declare-fun bm!374126 () Bool)

(assert (=> bm!374126 (= call!374129 (validRegex!6622 (ite c!912336 (regOne!30285 (ite c!911996 (reg!15215 r!7292) (ite c!911995 (regTwo!30285 r!7292) (regTwo!30284 r!7292)))) (regOne!30284 (ite c!911996 (reg!15215 r!7292) (ite c!911995 (regTwo!30285 r!7292) (regTwo!30284 r!7292)))))))))

(declare-fun b!5268139 () Bool)

(declare-fun e!3276547 () Bool)

(assert (=> b!5268139 (= e!3276547 e!3276549)))

(declare-fun res!2235053 () Bool)

(assert (=> b!5268139 (=> (not res!2235053) (not e!3276549))))

(assert (=> b!5268139 (= res!2235053 call!374129)))

(declare-fun b!5268140 () Bool)

(declare-fun res!2235050 () Bool)

(assert (=> b!5268140 (=> res!2235050 e!3276547)))

(assert (=> b!5268140 (= res!2235050 (not (is-Concat!23731 (ite c!911996 (reg!15215 r!7292) (ite c!911995 (regTwo!30285 r!7292) (regTwo!30284 r!7292))))))))

(assert (=> b!5268140 (= e!3276550 e!3276547)))

(declare-fun b!5268141 () Bool)

(declare-fun res!2235052 () Bool)

(assert (=> b!5268141 (=> (not res!2235052) (not e!3276546))))

(assert (=> b!5268141 (= res!2235052 call!374129)))

(assert (=> b!5268141 (= e!3276550 e!3276546)))

(assert (= (and d!1695415 (not res!2235051)) b!5268134))

(assert (= (and b!5268134 c!912337) b!5268133))

(assert (= (and b!5268134 (not c!912337)) b!5268136))

(assert (= (and b!5268133 res!2235054) b!5268138))

(assert (= (and b!5268136 c!912336) b!5268141))

(assert (= (and b!5268136 (not c!912336)) b!5268140))

(assert (= (and b!5268141 res!2235052) b!5268137))

(assert (= (and b!5268140 (not res!2235050)) b!5268139))

(assert (= (and b!5268139 res!2235053) b!5268135))

(assert (= (or b!5268137 b!5268135) bm!374125))

(assert (= (or b!5268141 b!5268139) bm!374126))

(assert (= (or b!5268138 bm!374125) bm!374124))

(declare-fun m!6307900 () Bool)

(assert (=> b!5268133 m!6307900))

(declare-fun m!6307902 () Bool)

(assert (=> bm!374124 m!6307902))

(declare-fun m!6307904 () Bool)

(assert (=> bm!374126 m!6307904))

(assert (=> bm!373912 d!1695415))

(declare-fun bm!374127 () Bool)

(declare-fun call!374132 () (Set Context!8540))

(assert (=> bm!374127 (= call!374132 (derivationStepZipperDown!334 (h!67281 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 (h!67282 zl!343)))))) (Context!8541 (t!374148 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 (h!67282 zl!343))))))) (h!67283 s!2326)))))

(declare-fun b!5268142 () Bool)

(declare-fun e!3276554 () (Set Context!8540))

(assert (=> b!5268142 (= e!3276554 (set.union call!374132 (derivationStepZipperUp!258 (Context!8541 (t!374148 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 (h!67282 zl!343))))))) (h!67283 s!2326))))))

(declare-fun b!5268143 () Bool)

(declare-fun e!3276553 () (Set Context!8540))

(assert (=> b!5268143 (= e!3276554 e!3276553)))

(declare-fun c!912338 () Bool)

(assert (=> b!5268143 (= c!912338 (is-Cons!60833 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 (h!67282 zl!343)))))))))

(declare-fun b!5268144 () Bool)

(declare-fun e!3276552 () Bool)

(assert (=> b!5268144 (= e!3276552 (nullable!5055 (h!67281 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 (h!67282 zl!343))))))))))

(declare-fun d!1695417 () Bool)

(declare-fun c!912339 () Bool)

(assert (=> d!1695417 (= c!912339 e!3276552)))

(declare-fun res!2235055 () Bool)

(assert (=> d!1695417 (=> (not res!2235055) (not e!3276552))))

(assert (=> d!1695417 (= res!2235055 (is-Cons!60833 (exprs!4770 (Context!8541 (t!374148 (exprs!4770 (h!67282 zl!343)))))))))

(assert (=> d!1695417 (= (derivationStepZipperUp!258 (Context!8541 (t!374148 (exprs!4770 (h!67282 zl!343)))) (h!67283 s!2326)) e!3276554)))

(declare-fun b!5268145 () Bool)

(assert (=> b!5268145 (= e!3276553 (as set.empty (Set Context!8540)))))

(declare-fun b!5268146 () Bool)

(assert (=> b!5268146 (= e!3276553 call!374132)))

(assert (= (and d!1695417 res!2235055) b!5268144))

(assert (= (and d!1695417 c!912339) b!5268142))

(assert (= (and d!1695417 (not c!912339)) b!5268143))

(assert (= (and b!5268143 c!912338) b!5268146))

(assert (= (and b!5268143 (not c!912338)) b!5268145))

(assert (= (or b!5268142 b!5268146) bm!374127))

(declare-fun m!6307906 () Bool)

(assert (=> bm!374127 m!6307906))

(declare-fun m!6307908 () Bool)

(assert (=> b!5268142 m!6307908))

(declare-fun m!6307910 () Bool)

(assert (=> b!5268144 m!6307910))

(assert (=> b!5267186 d!1695417))

(declare-fun b!5268147 () Bool)

(declare-fun e!3276559 () (Set Context!8540))

(assert (=> b!5268147 (= e!3276559 (as set.empty (Set Context!8540)))))

(declare-fun b!5268148 () Bool)

(declare-fun e!3276555 () (Set Context!8540))

(declare-fun call!374133 () (Set Context!8540))

(assert (=> b!5268148 (= e!3276555 call!374133)))

(declare-fun b!5268149 () Bool)

(declare-fun e!3276556 () (Set Context!8540))

(declare-fun call!374135 () (Set Context!8540))

(declare-fun call!374138 () (Set Context!8540))

(assert (=> b!5268149 (= e!3276556 (set.union call!374135 call!374138))))

(declare-fun b!5268150 () Bool)

(declare-fun c!912341 () Bool)

(assert (=> b!5268150 (= c!912341 (is-Star!14886 (ite c!912094 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (ite c!912092 (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))) (ite c!912093 (regOne!30284 (regOne!30284 (regOne!30284 r!7292))) (reg!15215 (regOne!30284 (regOne!30284 r!7292))))))))))

(assert (=> b!5268150 (= e!3276555 e!3276559)))

(declare-fun b!5268151 () Bool)

(declare-fun c!912342 () Bool)

(declare-fun e!3276558 () Bool)

(assert (=> b!5268151 (= c!912342 e!3276558)))

(declare-fun res!2235056 () Bool)

(assert (=> b!5268151 (=> (not res!2235056) (not e!3276558))))

(assert (=> b!5268151 (= res!2235056 (is-Concat!23731 (ite c!912094 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (ite c!912092 (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))) (ite c!912093 (regOne!30284 (regOne!30284 (regOne!30284 r!7292))) (reg!15215 (regOne!30284 (regOne!30284 r!7292))))))))))

(declare-fun e!3276557 () (Set Context!8540))

(assert (=> b!5268151 (= e!3276557 e!3276556)))

(declare-fun bm!374128 () Bool)

(declare-fun c!912343 () Bool)

(declare-fun call!374137 () List!60957)

(assert (=> bm!374128 (= call!374137 ($colon$colon!1337 (exprs!4770 (ite (or c!912094 c!912092) (Context!8541 lt!2156033) (Context!8541 call!373965))) (ite (or c!912342 c!912343) (regTwo!30284 (ite c!912094 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (ite c!912092 (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))) (ite c!912093 (regOne!30284 (regOne!30284 (regOne!30284 r!7292))) (reg!15215 (regOne!30284 (regOne!30284 r!7292))))))) (ite c!912094 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (ite c!912092 (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))) (ite c!912093 (regOne!30284 (regOne!30284 (regOne!30284 r!7292))) (reg!15215 (regOne!30284 (regOne!30284 r!7292)))))))))))

(declare-fun b!5268152 () Bool)

(assert (=> b!5268152 (= e!3276556 e!3276555)))

(assert (=> b!5268152 (= c!912343 (is-Concat!23731 (ite c!912094 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (ite c!912092 (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))) (ite c!912093 (regOne!30284 (regOne!30284 (regOne!30284 r!7292))) (reg!15215 (regOne!30284 (regOne!30284 r!7292))))))))))

(declare-fun b!5268153 () Bool)

(assert (=> b!5268153 (= e!3276558 (nullable!5055 (regOne!30284 (ite c!912094 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (ite c!912092 (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))) (ite c!912093 (regOne!30284 (regOne!30284 (regOne!30284 r!7292))) (reg!15215 (regOne!30284 (regOne!30284 r!7292)))))))))))

(declare-fun b!5268154 () Bool)

(declare-fun call!374134 () (Set Context!8540))

(assert (=> b!5268154 (= e!3276557 (set.union call!374134 call!374135))))

(declare-fun bm!374129 () Bool)

(declare-fun c!912344 () Bool)

(declare-fun call!374136 () List!60957)

(assert (=> bm!374129 (= call!374134 (derivationStepZipperDown!334 (ite c!912344 (regOne!30285 (ite c!912094 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (ite c!912092 (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))) (ite c!912093 (regOne!30284 (regOne!30284 (regOne!30284 r!7292))) (reg!15215 (regOne!30284 (regOne!30284 r!7292))))))) (ite c!912342 (regTwo!30284 (ite c!912094 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (ite c!912092 (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))) (ite c!912093 (regOne!30284 (regOne!30284 (regOne!30284 r!7292))) (reg!15215 (regOne!30284 (regOne!30284 r!7292))))))) (ite c!912343 (regOne!30284 (ite c!912094 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (ite c!912092 (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))) (ite c!912093 (regOne!30284 (regOne!30284 (regOne!30284 r!7292))) (reg!15215 (regOne!30284 (regOne!30284 r!7292))))))) (reg!15215 (ite c!912094 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (ite c!912092 (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))) (ite c!912093 (regOne!30284 (regOne!30284 (regOne!30284 r!7292))) (reg!15215 (regOne!30284 (regOne!30284 r!7292)))))))))) (ite (or c!912344 c!912342) (ite (or c!912094 c!912092) (Context!8541 lt!2156033) (Context!8541 call!373965)) (Context!8541 call!374136)) (h!67283 s!2326)))))

(declare-fun b!5268155 () Bool)

(declare-fun e!3276560 () (Set Context!8540))

(assert (=> b!5268155 (= e!3276560 e!3276557)))

(assert (=> b!5268155 (= c!912344 (is-Union!14886 (ite c!912094 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (ite c!912092 (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))) (ite c!912093 (regOne!30284 (regOne!30284 (regOne!30284 r!7292))) (reg!15215 (regOne!30284 (regOne!30284 r!7292))))))))))

(declare-fun bm!374130 () Bool)

(assert (=> bm!374130 (= call!374133 call!374138)))

(declare-fun d!1695419 () Bool)

(declare-fun c!912340 () Bool)

(assert (=> d!1695419 (= c!912340 (and (is-ElementMatch!14886 (ite c!912094 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (ite c!912092 (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))) (ite c!912093 (regOne!30284 (regOne!30284 (regOne!30284 r!7292))) (reg!15215 (regOne!30284 (regOne!30284 r!7292))))))) (= (c!911978 (ite c!912094 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (ite c!912092 (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))) (ite c!912093 (regOne!30284 (regOne!30284 (regOne!30284 r!7292))) (reg!15215 (regOne!30284 (regOne!30284 r!7292))))))) (h!67283 s!2326))))))

(assert (=> d!1695419 (= (derivationStepZipperDown!334 (ite c!912094 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (ite c!912092 (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))) (ite c!912093 (regOne!30284 (regOne!30284 (regOne!30284 r!7292))) (reg!15215 (regOne!30284 (regOne!30284 r!7292)))))) (ite (or c!912094 c!912092) (Context!8541 lt!2156033) (Context!8541 call!373965)) (h!67283 s!2326)) e!3276560)))

(declare-fun b!5268156 () Bool)

(assert (=> b!5268156 (= e!3276560 (set.insert (ite (or c!912094 c!912092) (Context!8541 lt!2156033) (Context!8541 call!373965)) (as set.empty (Set Context!8540))))))

(declare-fun bm!374131 () Bool)

(assert (=> bm!374131 (= call!374136 call!374137)))

(declare-fun bm!374132 () Bool)

(assert (=> bm!374132 (= call!374135 (derivationStepZipperDown!334 (ite c!912344 (regTwo!30285 (ite c!912094 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (ite c!912092 (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))) (ite c!912093 (regOne!30284 (regOne!30284 (regOne!30284 r!7292))) (reg!15215 (regOne!30284 (regOne!30284 r!7292))))))) (regOne!30284 (ite c!912094 (regOne!30285 (regOne!30284 (regOne!30284 r!7292))) (ite c!912092 (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))) (ite c!912093 (regOne!30284 (regOne!30284 (regOne!30284 r!7292))) (reg!15215 (regOne!30284 (regOne!30284 r!7292)))))))) (ite c!912344 (ite (or c!912094 c!912092) (Context!8541 lt!2156033) (Context!8541 call!373965)) (Context!8541 call!374137)) (h!67283 s!2326)))))

(declare-fun bm!374133 () Bool)

(assert (=> bm!374133 (= call!374138 call!374134)))

(declare-fun b!5268157 () Bool)

(assert (=> b!5268157 (= e!3276559 call!374133)))

(assert (= (and d!1695419 c!912340) b!5268156))

(assert (= (and d!1695419 (not c!912340)) b!5268155))

(assert (= (and b!5268155 c!912344) b!5268154))

(assert (= (and b!5268155 (not c!912344)) b!5268151))

(assert (= (and b!5268151 res!2235056) b!5268153))

(assert (= (and b!5268151 c!912342) b!5268149))

(assert (= (and b!5268151 (not c!912342)) b!5268152))

(assert (= (and b!5268152 c!912343) b!5268148))

(assert (= (and b!5268152 (not c!912343)) b!5268150))

(assert (= (and b!5268150 c!912341) b!5268157))

(assert (= (and b!5268150 (not c!912341)) b!5268147))

(assert (= (or b!5268148 b!5268157) bm!374131))

(assert (= (or b!5268148 b!5268157) bm!374130))

(assert (= (or b!5268149 bm!374131) bm!374128))

(assert (= (or b!5268149 bm!374130) bm!374133))

(assert (= (or b!5268154 b!5268149) bm!374132))

(assert (= (or b!5268154 bm!374133) bm!374129))

(declare-fun m!6307912 () Bool)

(assert (=> bm!374129 m!6307912))

(declare-fun m!6307914 () Bool)

(assert (=> bm!374132 m!6307914))

(declare-fun m!6307916 () Bool)

(assert (=> bm!374128 m!6307916))

(declare-fun m!6307918 () Bool)

(assert (=> b!5268153 m!6307918))

(declare-fun m!6307920 () Bool)

(assert (=> b!5268156 m!6307920))

(assert (=> bm!373958 d!1695419))

(declare-fun d!1695421 () Bool)

(assert (=> d!1695421 (= (nullable!5055 (h!67281 (exprs!4770 lt!2156034))) (nullableFct!1439 (h!67281 (exprs!4770 lt!2156034))))))

(declare-fun bs!1220836 () Bool)

(assert (= bs!1220836 d!1695421))

(declare-fun m!6307922 () Bool)

(assert (=> bs!1220836 m!6307922))

(assert (=> b!5267023 d!1695421))

(assert (=> b!5267195 d!1695029))

(declare-fun b!5268158 () Bool)

(declare-fun e!3276567 () Bool)

(declare-fun e!3276564 () Bool)

(assert (=> b!5268158 (= e!3276567 e!3276564)))

(declare-fun res!2235061 () Bool)

(assert (=> b!5268158 (= res!2235061 (not (nullable!5055 (reg!15215 lt!2156148))))))

(assert (=> b!5268158 (=> (not res!2235061) (not e!3276564))))

(declare-fun d!1695423 () Bool)

(declare-fun res!2235058 () Bool)

(declare-fun e!3276561 () Bool)

(assert (=> d!1695423 (=> res!2235058 e!3276561)))

(assert (=> d!1695423 (= res!2235058 (is-ElementMatch!14886 lt!2156148))))

(assert (=> d!1695423 (= (validRegex!6622 lt!2156148) e!3276561)))

(declare-fun b!5268159 () Bool)

(assert (=> b!5268159 (= e!3276561 e!3276567)))

(declare-fun c!912346 () Bool)

(assert (=> b!5268159 (= c!912346 (is-Star!14886 lt!2156148))))

(declare-fun b!5268160 () Bool)

(declare-fun e!3276565 () Bool)

(declare-fun call!374141 () Bool)

(assert (=> b!5268160 (= e!3276565 call!374141)))

(declare-fun b!5268161 () Bool)

(declare-fun e!3276566 () Bool)

(assert (=> b!5268161 (= e!3276567 e!3276566)))

(declare-fun c!912345 () Bool)

(assert (=> b!5268161 (= c!912345 (is-Union!14886 lt!2156148))))

(declare-fun bm!374134 () Bool)

(declare-fun call!374140 () Bool)

(assert (=> bm!374134 (= call!374140 (validRegex!6622 (ite c!912346 (reg!15215 lt!2156148) (ite c!912345 (regTwo!30285 lt!2156148) (regTwo!30284 lt!2156148)))))))

(declare-fun b!5268162 () Bool)

(declare-fun e!3276562 () Bool)

(assert (=> b!5268162 (= e!3276562 call!374141)))

(declare-fun bm!374135 () Bool)

(assert (=> bm!374135 (= call!374141 call!374140)))

(declare-fun b!5268163 () Bool)

(assert (=> b!5268163 (= e!3276564 call!374140)))

(declare-fun bm!374136 () Bool)

(declare-fun call!374139 () Bool)

(assert (=> bm!374136 (= call!374139 (validRegex!6622 (ite c!912345 (regOne!30285 lt!2156148) (regOne!30284 lt!2156148))))))

(declare-fun b!5268164 () Bool)

(declare-fun e!3276563 () Bool)

(assert (=> b!5268164 (= e!3276563 e!3276565)))

(declare-fun res!2235060 () Bool)

(assert (=> b!5268164 (=> (not res!2235060) (not e!3276565))))

(assert (=> b!5268164 (= res!2235060 call!374139)))

(declare-fun b!5268165 () Bool)

(declare-fun res!2235057 () Bool)

(assert (=> b!5268165 (=> res!2235057 e!3276563)))

(assert (=> b!5268165 (= res!2235057 (not (is-Concat!23731 lt!2156148)))))

(assert (=> b!5268165 (= e!3276566 e!3276563)))

(declare-fun b!5268166 () Bool)

(declare-fun res!2235059 () Bool)

(assert (=> b!5268166 (=> (not res!2235059) (not e!3276562))))

(assert (=> b!5268166 (= res!2235059 call!374139)))

(assert (=> b!5268166 (= e!3276566 e!3276562)))

(assert (= (and d!1695423 (not res!2235058)) b!5268159))

(assert (= (and b!5268159 c!912346) b!5268158))

(assert (= (and b!5268159 (not c!912346)) b!5268161))

(assert (= (and b!5268158 res!2235061) b!5268163))

(assert (= (and b!5268161 c!912345) b!5268166))

(assert (= (and b!5268161 (not c!912345)) b!5268165))

(assert (= (and b!5268166 res!2235059) b!5268162))

(assert (= (and b!5268165 (not res!2235057)) b!5268164))

(assert (= (and b!5268164 res!2235060) b!5268160))

(assert (= (or b!5268162 b!5268160) bm!374135))

(assert (= (or b!5268166 b!5268164) bm!374136))

(assert (= (or b!5268163 bm!374135) bm!374134))

(declare-fun m!6307924 () Bool)

(assert (=> b!5268158 m!6307924))

(declare-fun m!6307926 () Bool)

(assert (=> bm!374134 m!6307926))

(declare-fun m!6307928 () Bool)

(assert (=> bm!374136 m!6307928))

(assert (=> d!1695071 d!1695423))

(assert (=> d!1695071 d!1695095))

(assert (=> d!1695071 d!1695097))

(assert (=> b!5267100 d!1695325))

(declare-fun d!1695425 () Bool)

(assert (=> d!1695425 (= ($colon$colon!1337 (exprs!4770 (Context!8541 lt!2156033)) (ite (or c!912092 c!912093) (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 r!7292)))) (Cons!60833 (ite (or c!912092 c!912093) (regTwo!30284 (regOne!30284 (regOne!30284 r!7292))) (regOne!30284 (regOne!30284 r!7292))) (exprs!4770 (Context!8541 lt!2156033))))))

(assert (=> bm!373957 d!1695425))

(declare-fun bs!1220837 () Bool)

(declare-fun d!1695427 () Bool)

(assert (= bs!1220837 (and d!1695427 d!1695359)))

(declare-fun lambda!265725 () Int)

(assert (=> bs!1220837 (= lambda!265725 lambda!265718)))

(declare-fun bs!1220838 () Bool)

(assert (= bs!1220838 (and d!1695427 d!1695307)))

(assert (=> bs!1220838 (= lambda!265725 lambda!265706)))

(declare-fun bs!1220839 () Bool)

(assert (= bs!1220839 (and d!1695427 d!1695267)))

(assert (=> bs!1220839 (= lambda!265725 lambda!265702)))

(declare-fun bs!1220840 () Bool)

(assert (= bs!1220840 (and d!1695427 d!1695235)))

(assert (=> bs!1220840 (= lambda!265725 lambda!265696)))

(declare-fun bs!1220841 () Bool)

(assert (= bs!1220841 (and d!1695427 d!1695309)))

(assert (=> bs!1220841 (= lambda!265725 lambda!265707)))

(assert (=> d!1695427 (= (nullableZipper!1287 lt!2156037) (exists!1990 lt!2156037 lambda!265725))))

(declare-fun bs!1220842 () Bool)

(assert (= bs!1220842 d!1695427))

(declare-fun m!6307930 () Bool)

(assert (=> bs!1220842 m!6307930))

(assert (=> b!5267191 d!1695427))

(declare-fun d!1695429 () Bool)

(declare-fun c!912347 () Bool)

(assert (=> d!1695429 (= c!912347 (isEmpty!32785 (t!374150 s!2326)))))

(declare-fun e!3276568 () Bool)

(assert (=> d!1695429 (= (matchZipper!1130 (set.union lt!2156028 lt!2156046) (t!374150 s!2326)) e!3276568)))

(declare-fun b!5268167 () Bool)

(assert (=> b!5268167 (= e!3276568 (nullableZipper!1287 (set.union lt!2156028 lt!2156046)))))

(declare-fun b!5268168 () Bool)

(assert (=> b!5268168 (= e!3276568 (matchZipper!1130 (derivationStepZipper!1131 (set.union lt!2156028 lt!2156046) (head!11292 (t!374150 s!2326))) (tail!10389 (t!374150 s!2326))))))

(assert (= (and d!1695429 c!912347) b!5268167))

(assert (= (and d!1695429 (not c!912347)) b!5268168))

(assert (=> d!1695429 m!6306936))

(declare-fun m!6307932 () Bool)

(assert (=> b!5268167 m!6307932))

(assert (=> b!5268168 m!6306940))

(assert (=> b!5268168 m!6306940))

(declare-fun m!6307934 () Bool)

(assert (=> b!5268168 m!6307934))

(assert (=> b!5268168 m!6306944))

(assert (=> b!5268168 m!6307934))

(assert (=> b!5268168 m!6306944))

(declare-fun m!6307936 () Bool)

(assert (=> b!5268168 m!6307936))

(assert (=> d!1695093 d!1695429))

(assert (=> d!1695093 d!1695091))

(declare-fun e!3276569 () Bool)

(declare-fun d!1695431 () Bool)

(assert (=> d!1695431 (= (matchZipper!1130 (set.union lt!2156028 lt!2156046) (t!374150 s!2326)) e!3276569)))

(declare-fun res!2235062 () Bool)

(assert (=> d!1695431 (=> res!2235062 e!3276569)))

(assert (=> d!1695431 (= res!2235062 (matchZipper!1130 lt!2156028 (t!374150 s!2326)))))

(assert (=> d!1695431 true))

(declare-fun _$48!918 () Unit!153062)

(assert (=> d!1695431 (= (choose!39298 lt!2156028 lt!2156046 (t!374150 s!2326)) _$48!918)))

(declare-fun b!5268169 () Bool)

(assert (=> b!5268169 (= e!3276569 (matchZipper!1130 lt!2156046 (t!374150 s!2326)))))

(assert (= (and d!1695431 (not res!2235062)) b!5268169))

(assert (=> d!1695431 m!6307126))

(assert (=> d!1695431 m!6306820))

(assert (=> b!5268169 m!6306814))

(assert (=> d!1695093 d!1695431))

(declare-fun b!5268170 () Bool)

(declare-fun e!3276570 () Bool)

(assert (=> b!5268170 (= e!3276570 tp_is_empty!39025)))

(declare-fun b!5268172 () Bool)

(declare-fun tp!1472408 () Bool)

(assert (=> b!5268172 (= e!3276570 tp!1472408)))

(assert (=> b!5267289 (= tp!1472316 e!3276570)))

(declare-fun b!5268171 () Bool)

(declare-fun tp!1472411 () Bool)

(declare-fun tp!1472410 () Bool)

(assert (=> b!5268171 (= e!3276570 (and tp!1472411 tp!1472410))))

(declare-fun b!5268173 () Bool)

(declare-fun tp!1472409 () Bool)

(declare-fun tp!1472412 () Bool)

(assert (=> b!5268173 (= e!3276570 (and tp!1472409 tp!1472412))))

(assert (= (and b!5267289 (is-ElementMatch!14886 (regOne!30285 (regOne!30285 r!7292)))) b!5268170))

(assert (= (and b!5267289 (is-Concat!23731 (regOne!30285 (regOne!30285 r!7292)))) b!5268171))

(assert (= (and b!5267289 (is-Star!14886 (regOne!30285 (regOne!30285 r!7292)))) b!5268172))

(assert (= (and b!5267289 (is-Union!14886 (regOne!30285 (regOne!30285 r!7292)))) b!5268173))

(declare-fun b!5268174 () Bool)

(declare-fun e!3276571 () Bool)

(assert (=> b!5268174 (= e!3276571 tp_is_empty!39025)))

(declare-fun b!5268176 () Bool)

(declare-fun tp!1472413 () Bool)

(assert (=> b!5268176 (= e!3276571 tp!1472413)))

(assert (=> b!5267289 (= tp!1472319 e!3276571)))

(declare-fun b!5268175 () Bool)

(declare-fun tp!1472416 () Bool)

(declare-fun tp!1472415 () Bool)

(assert (=> b!5268175 (= e!3276571 (and tp!1472416 tp!1472415))))

(declare-fun b!5268177 () Bool)

(declare-fun tp!1472414 () Bool)

(declare-fun tp!1472417 () Bool)

(assert (=> b!5268177 (= e!3276571 (and tp!1472414 tp!1472417))))

(assert (= (and b!5267289 (is-ElementMatch!14886 (regTwo!30285 (regOne!30285 r!7292)))) b!5268174))

(assert (= (and b!5267289 (is-Concat!23731 (regTwo!30285 (regOne!30285 r!7292)))) b!5268175))

(assert (= (and b!5267289 (is-Star!14886 (regTwo!30285 (regOne!30285 r!7292)))) b!5268176))

(assert (= (and b!5267289 (is-Union!14886 (regTwo!30285 (regOne!30285 r!7292)))) b!5268177))

(declare-fun b!5268178 () Bool)

(declare-fun e!3276572 () Bool)

(assert (=> b!5268178 (= e!3276572 tp_is_empty!39025)))

(declare-fun b!5268180 () Bool)

(declare-fun tp!1472418 () Bool)

(assert (=> b!5268180 (= e!3276572 tp!1472418)))

(assert (=> b!5267267 (= tp!1472289 e!3276572)))

(declare-fun b!5268179 () Bool)

(declare-fun tp!1472421 () Bool)

(declare-fun tp!1472420 () Bool)

(assert (=> b!5268179 (= e!3276572 (and tp!1472421 tp!1472420))))

(declare-fun b!5268181 () Bool)

(declare-fun tp!1472419 () Bool)

(declare-fun tp!1472422 () Bool)

(assert (=> b!5268181 (= e!3276572 (and tp!1472419 tp!1472422))))

(assert (= (and b!5267267 (is-ElementMatch!14886 (regOne!30285 (reg!15215 r!7292)))) b!5268178))

(assert (= (and b!5267267 (is-Concat!23731 (regOne!30285 (reg!15215 r!7292)))) b!5268179))

(assert (= (and b!5267267 (is-Star!14886 (regOne!30285 (reg!15215 r!7292)))) b!5268180))

(assert (= (and b!5267267 (is-Union!14886 (regOne!30285 (reg!15215 r!7292)))) b!5268181))

(declare-fun b!5268182 () Bool)

(declare-fun e!3276573 () Bool)

(assert (=> b!5268182 (= e!3276573 tp_is_empty!39025)))

(declare-fun b!5268184 () Bool)

(declare-fun tp!1472423 () Bool)

(assert (=> b!5268184 (= e!3276573 tp!1472423)))

(assert (=> b!5267267 (= tp!1472292 e!3276573)))

(declare-fun b!5268183 () Bool)

(declare-fun tp!1472426 () Bool)

(declare-fun tp!1472425 () Bool)

(assert (=> b!5268183 (= e!3276573 (and tp!1472426 tp!1472425))))

(declare-fun b!5268185 () Bool)

(declare-fun tp!1472424 () Bool)

(declare-fun tp!1472427 () Bool)

(assert (=> b!5268185 (= e!3276573 (and tp!1472424 tp!1472427))))

(assert (= (and b!5267267 (is-ElementMatch!14886 (regTwo!30285 (reg!15215 r!7292)))) b!5268182))

(assert (= (and b!5267267 (is-Concat!23731 (regTwo!30285 (reg!15215 r!7292)))) b!5268183))

(assert (= (and b!5267267 (is-Star!14886 (regTwo!30285 (reg!15215 r!7292)))) b!5268184))

(assert (= (and b!5267267 (is-Union!14886 (regTwo!30285 (reg!15215 r!7292)))) b!5268185))

(declare-fun b!5268186 () Bool)

(declare-fun e!3276574 () Bool)

(assert (=> b!5268186 (= e!3276574 tp_is_empty!39025)))

(declare-fun b!5268188 () Bool)

(declare-fun tp!1472428 () Bool)

(assert (=> b!5268188 (= e!3276574 tp!1472428)))

(assert (=> b!5267288 (= tp!1472315 e!3276574)))

(declare-fun b!5268187 () Bool)

(declare-fun tp!1472431 () Bool)

(declare-fun tp!1472430 () Bool)

(assert (=> b!5268187 (= e!3276574 (and tp!1472431 tp!1472430))))

(declare-fun b!5268189 () Bool)

(declare-fun tp!1472429 () Bool)

(declare-fun tp!1472432 () Bool)

(assert (=> b!5268189 (= e!3276574 (and tp!1472429 tp!1472432))))

(assert (= (and b!5267288 (is-ElementMatch!14886 (reg!15215 (regOne!30285 r!7292)))) b!5268186))

(assert (= (and b!5267288 (is-Concat!23731 (reg!15215 (regOne!30285 r!7292)))) b!5268187))

(assert (= (and b!5267288 (is-Star!14886 (reg!15215 (regOne!30285 r!7292)))) b!5268188))

(assert (= (and b!5267288 (is-Union!14886 (reg!15215 (regOne!30285 r!7292)))) b!5268189))

(declare-fun b!5268190 () Bool)

(declare-fun e!3276575 () Bool)

(assert (=> b!5268190 (= e!3276575 tp_is_empty!39025)))

(declare-fun b!5268192 () Bool)

(declare-fun tp!1472433 () Bool)

(assert (=> b!5268192 (= e!3276575 tp!1472433)))

(assert (=> b!5267266 (= tp!1472288 e!3276575)))

(declare-fun b!5268191 () Bool)

(declare-fun tp!1472436 () Bool)

(declare-fun tp!1472435 () Bool)

(assert (=> b!5268191 (= e!3276575 (and tp!1472436 tp!1472435))))

(declare-fun b!5268193 () Bool)

(declare-fun tp!1472434 () Bool)

(declare-fun tp!1472437 () Bool)

(assert (=> b!5268193 (= e!3276575 (and tp!1472434 tp!1472437))))

(assert (= (and b!5267266 (is-ElementMatch!14886 (reg!15215 (reg!15215 r!7292)))) b!5268190))

(assert (= (and b!5267266 (is-Concat!23731 (reg!15215 (reg!15215 r!7292)))) b!5268191))

(assert (= (and b!5267266 (is-Star!14886 (reg!15215 (reg!15215 r!7292)))) b!5268192))

(assert (= (and b!5267266 (is-Union!14886 (reg!15215 (reg!15215 r!7292)))) b!5268193))

(declare-fun b!5268194 () Bool)

(declare-fun e!3276576 () Bool)

(assert (=> b!5268194 (= e!3276576 tp_is_empty!39025)))

(declare-fun b!5268196 () Bool)

(declare-fun tp!1472438 () Bool)

(assert (=> b!5268196 (= e!3276576 tp!1472438)))

(assert (=> b!5267287 (= tp!1472318 e!3276576)))

(declare-fun b!5268195 () Bool)

(declare-fun tp!1472441 () Bool)

(declare-fun tp!1472440 () Bool)

(assert (=> b!5268195 (= e!3276576 (and tp!1472441 tp!1472440))))

(declare-fun b!5268197 () Bool)

(declare-fun tp!1472439 () Bool)

(declare-fun tp!1472442 () Bool)

(assert (=> b!5268197 (= e!3276576 (and tp!1472439 tp!1472442))))

(assert (= (and b!5267287 (is-ElementMatch!14886 (regOne!30284 (regOne!30285 r!7292)))) b!5268194))

(assert (= (and b!5267287 (is-Concat!23731 (regOne!30284 (regOne!30285 r!7292)))) b!5268195))

(assert (= (and b!5267287 (is-Star!14886 (regOne!30284 (regOne!30285 r!7292)))) b!5268196))

(assert (= (and b!5267287 (is-Union!14886 (regOne!30284 (regOne!30285 r!7292)))) b!5268197))

(declare-fun b!5268198 () Bool)

(declare-fun e!3276577 () Bool)

(assert (=> b!5268198 (= e!3276577 tp_is_empty!39025)))

(declare-fun b!5268200 () Bool)

(declare-fun tp!1472443 () Bool)

(assert (=> b!5268200 (= e!3276577 tp!1472443)))

(assert (=> b!5267287 (= tp!1472317 e!3276577)))

(declare-fun b!5268199 () Bool)

(declare-fun tp!1472446 () Bool)

(declare-fun tp!1472445 () Bool)

(assert (=> b!5268199 (= e!3276577 (and tp!1472446 tp!1472445))))

(declare-fun b!5268201 () Bool)

(declare-fun tp!1472444 () Bool)

(declare-fun tp!1472447 () Bool)

(assert (=> b!5268201 (= e!3276577 (and tp!1472444 tp!1472447))))

(assert (= (and b!5267287 (is-ElementMatch!14886 (regTwo!30284 (regOne!30285 r!7292)))) b!5268198))

(assert (= (and b!5267287 (is-Concat!23731 (regTwo!30284 (regOne!30285 r!7292)))) b!5268199))

(assert (= (and b!5267287 (is-Star!14886 (regTwo!30284 (regOne!30285 r!7292)))) b!5268200))

(assert (= (and b!5267287 (is-Union!14886 (regTwo!30284 (regOne!30285 r!7292)))) b!5268201))

(declare-fun b!5268202 () Bool)

(declare-fun e!3276578 () Bool)

(assert (=> b!5268202 (= e!3276578 tp_is_empty!39025)))

(declare-fun b!5268204 () Bool)

(declare-fun tp!1472448 () Bool)

(assert (=> b!5268204 (= e!3276578 tp!1472448)))

(assert (=> b!5267275 (= tp!1472299 e!3276578)))

(declare-fun b!5268203 () Bool)

(declare-fun tp!1472451 () Bool)

(declare-fun tp!1472450 () Bool)

(assert (=> b!5268203 (= e!3276578 (and tp!1472451 tp!1472450))))

(declare-fun b!5268205 () Bool)

(declare-fun tp!1472449 () Bool)

(declare-fun tp!1472452 () Bool)

(assert (=> b!5268205 (= e!3276578 (and tp!1472449 tp!1472452))))

(assert (= (and b!5267275 (is-ElementMatch!14886 (regOne!30285 (regTwo!30284 r!7292)))) b!5268202))

(assert (= (and b!5267275 (is-Concat!23731 (regOne!30285 (regTwo!30284 r!7292)))) b!5268203))

(assert (= (and b!5267275 (is-Star!14886 (regOne!30285 (regTwo!30284 r!7292)))) b!5268204))

(assert (= (and b!5267275 (is-Union!14886 (regOne!30285 (regTwo!30284 r!7292)))) b!5268205))

(declare-fun b!5268206 () Bool)

(declare-fun e!3276579 () Bool)

(assert (=> b!5268206 (= e!3276579 tp_is_empty!39025)))

(declare-fun b!5268208 () Bool)

(declare-fun tp!1472453 () Bool)

(assert (=> b!5268208 (= e!3276579 tp!1472453)))

(assert (=> b!5267275 (= tp!1472302 e!3276579)))

(declare-fun b!5268207 () Bool)

(declare-fun tp!1472456 () Bool)

(declare-fun tp!1472455 () Bool)

(assert (=> b!5268207 (= e!3276579 (and tp!1472456 tp!1472455))))

(declare-fun b!5268209 () Bool)

(declare-fun tp!1472454 () Bool)

(declare-fun tp!1472457 () Bool)

(assert (=> b!5268209 (= e!3276579 (and tp!1472454 tp!1472457))))

(assert (= (and b!5267275 (is-ElementMatch!14886 (regTwo!30285 (regTwo!30284 r!7292)))) b!5268206))

(assert (= (and b!5267275 (is-Concat!23731 (regTwo!30285 (regTwo!30284 r!7292)))) b!5268207))

(assert (= (and b!5267275 (is-Star!14886 (regTwo!30285 (regTwo!30284 r!7292)))) b!5268208))

(assert (= (and b!5267275 (is-Union!14886 (regTwo!30285 (regTwo!30284 r!7292)))) b!5268209))

(declare-fun b!5268210 () Bool)

(declare-fun e!3276580 () Bool)

(assert (=> b!5268210 (= e!3276580 tp_is_empty!39025)))

(declare-fun b!5268212 () Bool)

(declare-fun tp!1472458 () Bool)

(assert (=> b!5268212 (= e!3276580 tp!1472458)))

(assert (=> b!5267265 (= tp!1472291 e!3276580)))

(declare-fun b!5268211 () Bool)

(declare-fun tp!1472461 () Bool)

(declare-fun tp!1472460 () Bool)

(assert (=> b!5268211 (= e!3276580 (and tp!1472461 tp!1472460))))

(declare-fun b!5268213 () Bool)

(declare-fun tp!1472459 () Bool)

(declare-fun tp!1472462 () Bool)

(assert (=> b!5268213 (= e!3276580 (and tp!1472459 tp!1472462))))

(assert (= (and b!5267265 (is-ElementMatch!14886 (regOne!30284 (reg!15215 r!7292)))) b!5268210))

(assert (= (and b!5267265 (is-Concat!23731 (regOne!30284 (reg!15215 r!7292)))) b!5268211))

(assert (= (and b!5267265 (is-Star!14886 (regOne!30284 (reg!15215 r!7292)))) b!5268212))

(assert (= (and b!5267265 (is-Union!14886 (regOne!30284 (reg!15215 r!7292)))) b!5268213))

(declare-fun b!5268214 () Bool)

(declare-fun e!3276581 () Bool)

(assert (=> b!5268214 (= e!3276581 tp_is_empty!39025)))

(declare-fun b!5268216 () Bool)

(declare-fun tp!1472463 () Bool)

(assert (=> b!5268216 (= e!3276581 tp!1472463)))

(assert (=> b!5267265 (= tp!1472290 e!3276581)))

(declare-fun b!5268215 () Bool)

(declare-fun tp!1472466 () Bool)

(declare-fun tp!1472465 () Bool)

(assert (=> b!5268215 (= e!3276581 (and tp!1472466 tp!1472465))))

(declare-fun b!5268217 () Bool)

(declare-fun tp!1472464 () Bool)

(declare-fun tp!1472467 () Bool)

(assert (=> b!5268217 (= e!3276581 (and tp!1472464 tp!1472467))))

(assert (= (and b!5267265 (is-ElementMatch!14886 (regTwo!30284 (reg!15215 r!7292)))) b!5268214))

(assert (= (and b!5267265 (is-Concat!23731 (regTwo!30284 (reg!15215 r!7292)))) b!5268215))

(assert (= (and b!5267265 (is-Star!14886 (regTwo!30284 (reg!15215 r!7292)))) b!5268216))

(assert (= (and b!5267265 (is-Union!14886 (regTwo!30284 (reg!15215 r!7292)))) b!5268217))

(declare-fun b!5268218 () Bool)

(declare-fun e!3276582 () Bool)

(assert (=> b!5268218 (= e!3276582 tp_is_empty!39025)))

(declare-fun b!5268220 () Bool)

(declare-fun tp!1472468 () Bool)

(assert (=> b!5268220 (= e!3276582 tp!1472468)))

(assert (=> b!5267274 (= tp!1472298 e!3276582)))

(declare-fun b!5268219 () Bool)

(declare-fun tp!1472471 () Bool)

(declare-fun tp!1472470 () Bool)

(assert (=> b!5268219 (= e!3276582 (and tp!1472471 tp!1472470))))

(declare-fun b!5268221 () Bool)

(declare-fun tp!1472469 () Bool)

(declare-fun tp!1472472 () Bool)

(assert (=> b!5268221 (= e!3276582 (and tp!1472469 tp!1472472))))

(assert (= (and b!5267274 (is-ElementMatch!14886 (reg!15215 (regTwo!30284 r!7292)))) b!5268218))

(assert (= (and b!5267274 (is-Concat!23731 (reg!15215 (regTwo!30284 r!7292)))) b!5268219))

(assert (= (and b!5267274 (is-Star!14886 (reg!15215 (regTwo!30284 r!7292)))) b!5268220))

(assert (= (and b!5267274 (is-Union!14886 (reg!15215 (regTwo!30284 r!7292)))) b!5268221))

(declare-fun b!5268222 () Bool)

(declare-fun e!3276583 () Bool)

(assert (=> b!5268222 (= e!3276583 tp_is_empty!39025)))

(declare-fun b!5268224 () Bool)

(declare-fun tp!1472473 () Bool)

(assert (=> b!5268224 (= e!3276583 tp!1472473)))

(assert (=> b!5267273 (= tp!1472301 e!3276583)))

(declare-fun b!5268223 () Bool)

(declare-fun tp!1472476 () Bool)

(declare-fun tp!1472475 () Bool)

(assert (=> b!5268223 (= e!3276583 (and tp!1472476 tp!1472475))))

(declare-fun b!5268225 () Bool)

(declare-fun tp!1472474 () Bool)

(declare-fun tp!1472477 () Bool)

(assert (=> b!5268225 (= e!3276583 (and tp!1472474 tp!1472477))))

(assert (= (and b!5267273 (is-ElementMatch!14886 (regOne!30284 (regTwo!30284 r!7292)))) b!5268222))

(assert (= (and b!5267273 (is-Concat!23731 (regOne!30284 (regTwo!30284 r!7292)))) b!5268223))

(assert (= (and b!5267273 (is-Star!14886 (regOne!30284 (regTwo!30284 r!7292)))) b!5268224))

(assert (= (and b!5267273 (is-Union!14886 (regOne!30284 (regTwo!30284 r!7292)))) b!5268225))

(declare-fun b!5268226 () Bool)

(declare-fun e!3276584 () Bool)

(assert (=> b!5268226 (= e!3276584 tp_is_empty!39025)))

(declare-fun b!5268228 () Bool)

(declare-fun tp!1472478 () Bool)

(assert (=> b!5268228 (= e!3276584 tp!1472478)))

(assert (=> b!5267273 (= tp!1472300 e!3276584)))

(declare-fun b!5268227 () Bool)

(declare-fun tp!1472481 () Bool)

(declare-fun tp!1472480 () Bool)

(assert (=> b!5268227 (= e!3276584 (and tp!1472481 tp!1472480))))

(declare-fun b!5268229 () Bool)

(declare-fun tp!1472479 () Bool)

(declare-fun tp!1472482 () Bool)

(assert (=> b!5268229 (= e!3276584 (and tp!1472479 tp!1472482))))

(assert (= (and b!5267273 (is-ElementMatch!14886 (regTwo!30284 (regTwo!30284 r!7292)))) b!5268226))

(assert (= (and b!5267273 (is-Concat!23731 (regTwo!30284 (regTwo!30284 r!7292)))) b!5268227))

(assert (= (and b!5267273 (is-Star!14886 (regTwo!30284 (regTwo!30284 r!7292)))) b!5268228))

(assert (= (and b!5267273 (is-Union!14886 (regTwo!30284 (regTwo!30284 r!7292)))) b!5268229))

(declare-fun b!5268230 () Bool)

(declare-fun e!3276585 () Bool)

(assert (=> b!5268230 (= e!3276585 tp_is_empty!39025)))

(declare-fun b!5268232 () Bool)

(declare-fun tp!1472483 () Bool)

(assert (=> b!5268232 (= e!3276585 tp!1472483)))

(assert (=> b!5267307 (= tp!1472334 e!3276585)))

(declare-fun b!5268231 () Bool)

(declare-fun tp!1472486 () Bool)

(declare-fun tp!1472485 () Bool)

(assert (=> b!5268231 (= e!3276585 (and tp!1472486 tp!1472485))))

(declare-fun b!5268233 () Bool)

(declare-fun tp!1472484 () Bool)

(declare-fun tp!1472487 () Bool)

(assert (=> b!5268233 (= e!3276585 (and tp!1472484 tp!1472487))))

(assert (= (and b!5267307 (is-ElementMatch!14886 (h!67281 (exprs!4770 (h!67282 zl!343))))) b!5268230))

(assert (= (and b!5267307 (is-Concat!23731 (h!67281 (exprs!4770 (h!67282 zl!343))))) b!5268231))

(assert (= (and b!5267307 (is-Star!14886 (h!67281 (exprs!4770 (h!67282 zl!343))))) b!5268232))

(assert (= (and b!5267307 (is-Union!14886 (h!67281 (exprs!4770 (h!67282 zl!343))))) b!5268233))

(declare-fun b!5268234 () Bool)

(declare-fun e!3276586 () Bool)

(declare-fun tp!1472488 () Bool)

(declare-fun tp!1472489 () Bool)

(assert (=> b!5268234 (= e!3276586 (and tp!1472488 tp!1472489))))

(assert (=> b!5267307 (= tp!1472335 e!3276586)))

(assert (= (and b!5267307 (is-Cons!60833 (t!374148 (exprs!4770 (h!67282 zl!343))))) b!5268234))

(declare-fun b!5268235 () Bool)

(declare-fun e!3276587 () Bool)

(declare-fun tp!1472490 () Bool)

(declare-fun tp!1472491 () Bool)

(assert (=> b!5268235 (= e!3276587 (and tp!1472490 tp!1472491))))

(assert (=> b!5267280 (= tp!1472307 e!3276587)))

(assert (= (and b!5267280 (is-Cons!60833 (exprs!4770 setElem!33700))) b!5268235))

(declare-fun condSetEmpty!33708 () Bool)

(assert (=> setNonEmpty!33700 (= condSetEmpty!33708 (= setRest!33700 (as set.empty (Set Context!8540))))))

(declare-fun setRes!33708 () Bool)

(assert (=> setNonEmpty!33700 (= tp!1472308 setRes!33708)))

(declare-fun setIsEmpty!33708 () Bool)

(assert (=> setIsEmpty!33708 setRes!33708))

(declare-fun setNonEmpty!33708 () Bool)

(declare-fun e!3276588 () Bool)

(declare-fun setElem!33708 () Context!8540)

(declare-fun tp!1472493 () Bool)

(assert (=> setNonEmpty!33708 (= setRes!33708 (and tp!1472493 (inv!80463 setElem!33708) e!3276588))))

(declare-fun setRest!33708 () (Set Context!8540))

(assert (=> setNonEmpty!33708 (= setRest!33700 (set.union (set.insert setElem!33708 (as set.empty (Set Context!8540))) setRest!33708))))

(declare-fun b!5268236 () Bool)

(declare-fun tp!1472492 () Bool)

(assert (=> b!5268236 (= e!3276588 tp!1472492)))

(assert (= (and setNonEmpty!33700 condSetEmpty!33708) setIsEmpty!33708))

(assert (= (and setNonEmpty!33700 (not condSetEmpty!33708)) setNonEmpty!33708))

(assert (= setNonEmpty!33708 b!5268236))

(declare-fun m!6307938 () Bool)

(assert (=> setNonEmpty!33708 m!6307938))

(declare-fun b!5268237 () Bool)

(declare-fun e!3276589 () Bool)

(assert (=> b!5268237 (= e!3276589 tp_is_empty!39025)))

(declare-fun b!5268239 () Bool)

(declare-fun tp!1472494 () Bool)

(assert (=> b!5268239 (= e!3276589 tp!1472494)))

(assert (=> b!5267285 (= tp!1472313 e!3276589)))

(declare-fun b!5268238 () Bool)

(declare-fun tp!1472497 () Bool)

(declare-fun tp!1472496 () Bool)

(assert (=> b!5268238 (= e!3276589 (and tp!1472497 tp!1472496))))

(declare-fun b!5268240 () Bool)

(declare-fun tp!1472495 () Bool)

(declare-fun tp!1472498 () Bool)

(assert (=> b!5268240 (= e!3276589 (and tp!1472495 tp!1472498))))

(assert (= (and b!5267285 (is-ElementMatch!14886 (h!67281 (exprs!4770 setElem!33694)))) b!5268237))

(assert (= (and b!5267285 (is-Concat!23731 (h!67281 (exprs!4770 setElem!33694)))) b!5268238))

(assert (= (and b!5267285 (is-Star!14886 (h!67281 (exprs!4770 setElem!33694)))) b!5268239))

(assert (= (and b!5267285 (is-Union!14886 (h!67281 (exprs!4770 setElem!33694)))) b!5268240))

(declare-fun b!5268241 () Bool)

(declare-fun e!3276590 () Bool)

(declare-fun tp!1472499 () Bool)

(declare-fun tp!1472500 () Bool)

(assert (=> b!5268241 (= e!3276590 (and tp!1472499 tp!1472500))))

(assert (=> b!5267285 (= tp!1472314 e!3276590)))

(assert (= (and b!5267285 (is-Cons!60833 (t!374148 (exprs!4770 setElem!33694)))) b!5268241))

(declare-fun b!5268242 () Bool)

(declare-fun e!3276591 () Bool)

(assert (=> b!5268242 (= e!3276591 tp_is_empty!39025)))

(declare-fun b!5268244 () Bool)

(declare-fun tp!1472501 () Bool)

(assert (=> b!5268244 (= e!3276591 tp!1472501)))

(assert (=> b!5267293 (= tp!1472321 e!3276591)))

(declare-fun b!5268243 () Bool)

(declare-fun tp!1472504 () Bool)

(declare-fun tp!1472503 () Bool)

(assert (=> b!5268243 (= e!3276591 (and tp!1472504 tp!1472503))))

(declare-fun b!5268245 () Bool)

(declare-fun tp!1472502 () Bool)

(declare-fun tp!1472505 () Bool)

(assert (=> b!5268245 (= e!3276591 (and tp!1472502 tp!1472505))))

(assert (= (and b!5267293 (is-ElementMatch!14886 (regOne!30285 (regTwo!30285 r!7292)))) b!5268242))

(assert (= (and b!5267293 (is-Concat!23731 (regOne!30285 (regTwo!30285 r!7292)))) b!5268243))

(assert (= (and b!5267293 (is-Star!14886 (regOne!30285 (regTwo!30285 r!7292)))) b!5268244))

(assert (= (and b!5267293 (is-Union!14886 (regOne!30285 (regTwo!30285 r!7292)))) b!5268245))

(declare-fun b!5268246 () Bool)

(declare-fun e!3276592 () Bool)

(assert (=> b!5268246 (= e!3276592 tp_is_empty!39025)))

(declare-fun b!5268248 () Bool)

(declare-fun tp!1472506 () Bool)

(assert (=> b!5268248 (= e!3276592 tp!1472506)))

(assert (=> b!5267293 (= tp!1472324 e!3276592)))

(declare-fun b!5268247 () Bool)

(declare-fun tp!1472509 () Bool)

(declare-fun tp!1472508 () Bool)

(assert (=> b!5268247 (= e!3276592 (and tp!1472509 tp!1472508))))

(declare-fun b!5268249 () Bool)

(declare-fun tp!1472507 () Bool)

(declare-fun tp!1472510 () Bool)

(assert (=> b!5268249 (= e!3276592 (and tp!1472507 tp!1472510))))

(assert (= (and b!5267293 (is-ElementMatch!14886 (regTwo!30285 (regTwo!30285 r!7292)))) b!5268246))

(assert (= (and b!5267293 (is-Concat!23731 (regTwo!30285 (regTwo!30285 r!7292)))) b!5268247))

(assert (= (and b!5267293 (is-Star!14886 (regTwo!30285 (regTwo!30285 r!7292)))) b!5268248))

(assert (= (and b!5267293 (is-Union!14886 (regTwo!30285 (regTwo!30285 r!7292)))) b!5268249))

(declare-fun b!5268250 () Bool)

(declare-fun e!3276593 () Bool)

(assert (=> b!5268250 (= e!3276593 tp_is_empty!39025)))

(declare-fun b!5268252 () Bool)

(declare-fun tp!1472511 () Bool)

(assert (=> b!5268252 (= e!3276593 tp!1472511)))

(assert (=> b!5267271 (= tp!1472294 e!3276593)))

(declare-fun b!5268251 () Bool)

(declare-fun tp!1472514 () Bool)

(declare-fun tp!1472513 () Bool)

(assert (=> b!5268251 (= e!3276593 (and tp!1472514 tp!1472513))))

(declare-fun b!5268253 () Bool)

(declare-fun tp!1472512 () Bool)

(declare-fun tp!1472515 () Bool)

(assert (=> b!5268253 (= e!3276593 (and tp!1472512 tp!1472515))))

(assert (= (and b!5267271 (is-ElementMatch!14886 (regOne!30285 (regOne!30284 r!7292)))) b!5268250))

(assert (= (and b!5267271 (is-Concat!23731 (regOne!30285 (regOne!30284 r!7292)))) b!5268251))

(assert (= (and b!5267271 (is-Star!14886 (regOne!30285 (regOne!30284 r!7292)))) b!5268252))

(assert (= (and b!5267271 (is-Union!14886 (regOne!30285 (regOne!30284 r!7292)))) b!5268253))

(declare-fun b!5268254 () Bool)

(declare-fun e!3276594 () Bool)

(assert (=> b!5268254 (= e!3276594 tp_is_empty!39025)))

(declare-fun b!5268256 () Bool)

(declare-fun tp!1472516 () Bool)

(assert (=> b!5268256 (= e!3276594 tp!1472516)))

(assert (=> b!5267271 (= tp!1472297 e!3276594)))

(declare-fun b!5268255 () Bool)

(declare-fun tp!1472519 () Bool)

(declare-fun tp!1472518 () Bool)

(assert (=> b!5268255 (= e!3276594 (and tp!1472519 tp!1472518))))

(declare-fun b!5268257 () Bool)

(declare-fun tp!1472517 () Bool)

(declare-fun tp!1472520 () Bool)

(assert (=> b!5268257 (= e!3276594 (and tp!1472517 tp!1472520))))

(assert (= (and b!5267271 (is-ElementMatch!14886 (regTwo!30285 (regOne!30284 r!7292)))) b!5268254))

(assert (= (and b!5267271 (is-Concat!23731 (regTwo!30285 (regOne!30284 r!7292)))) b!5268255))

(assert (= (and b!5267271 (is-Star!14886 (regTwo!30285 (regOne!30284 r!7292)))) b!5268256))

(assert (= (and b!5267271 (is-Union!14886 (regTwo!30285 (regOne!30284 r!7292)))) b!5268257))

(declare-fun b!5268258 () Bool)

(declare-fun e!3276595 () Bool)

(assert (=> b!5268258 (= e!3276595 tp_is_empty!39025)))

(declare-fun b!5268260 () Bool)

(declare-fun tp!1472521 () Bool)

(assert (=> b!5268260 (= e!3276595 tp!1472521)))

(assert (=> b!5267292 (= tp!1472320 e!3276595)))

(declare-fun b!5268259 () Bool)

(declare-fun tp!1472524 () Bool)

(declare-fun tp!1472523 () Bool)

(assert (=> b!5268259 (= e!3276595 (and tp!1472524 tp!1472523))))

(declare-fun b!5268261 () Bool)

(declare-fun tp!1472522 () Bool)

(declare-fun tp!1472525 () Bool)

(assert (=> b!5268261 (= e!3276595 (and tp!1472522 tp!1472525))))

(assert (= (and b!5267292 (is-ElementMatch!14886 (reg!15215 (regTwo!30285 r!7292)))) b!5268258))

(assert (= (and b!5267292 (is-Concat!23731 (reg!15215 (regTwo!30285 r!7292)))) b!5268259))

(assert (= (and b!5267292 (is-Star!14886 (reg!15215 (regTwo!30285 r!7292)))) b!5268260))

(assert (= (and b!5267292 (is-Union!14886 (reg!15215 (regTwo!30285 r!7292)))) b!5268261))

(declare-fun b!5268262 () Bool)

(declare-fun e!3276596 () Bool)

(declare-fun tp!1472526 () Bool)

(declare-fun tp!1472527 () Bool)

(assert (=> b!5268262 (= e!3276596 (and tp!1472526 tp!1472527))))

(assert (=> b!5267306 (= tp!1472332 e!3276596)))

(assert (= (and b!5267306 (is-Cons!60833 (exprs!4770 (h!67282 (t!374149 zl!343))))) b!5268262))

(declare-fun b!5268263 () Bool)

(declare-fun e!3276597 () Bool)

(assert (=> b!5268263 (= e!3276597 tp_is_empty!39025)))

(declare-fun b!5268265 () Bool)

(declare-fun tp!1472528 () Bool)

(assert (=> b!5268265 (= e!3276597 tp!1472528)))

(assert (=> b!5267270 (= tp!1472293 e!3276597)))

(declare-fun b!5268264 () Bool)

(declare-fun tp!1472531 () Bool)

(declare-fun tp!1472530 () Bool)

(assert (=> b!5268264 (= e!3276597 (and tp!1472531 tp!1472530))))

(declare-fun b!5268266 () Bool)

(declare-fun tp!1472529 () Bool)

(declare-fun tp!1472532 () Bool)

(assert (=> b!5268266 (= e!3276597 (and tp!1472529 tp!1472532))))

(assert (= (and b!5267270 (is-ElementMatch!14886 (reg!15215 (regOne!30284 r!7292)))) b!5268263))

(assert (= (and b!5267270 (is-Concat!23731 (reg!15215 (regOne!30284 r!7292)))) b!5268264))

(assert (= (and b!5267270 (is-Star!14886 (reg!15215 (regOne!30284 r!7292)))) b!5268265))

(assert (= (and b!5267270 (is-Union!14886 (reg!15215 (regOne!30284 r!7292)))) b!5268266))

(declare-fun b!5268267 () Bool)

(declare-fun e!3276598 () Bool)

(assert (=> b!5268267 (= e!3276598 tp_is_empty!39025)))

(declare-fun b!5268269 () Bool)

(declare-fun tp!1472533 () Bool)

(assert (=> b!5268269 (= e!3276598 tp!1472533)))

(assert (=> b!5267291 (= tp!1472323 e!3276598)))

(declare-fun b!5268268 () Bool)

(declare-fun tp!1472536 () Bool)

(declare-fun tp!1472535 () Bool)

(assert (=> b!5268268 (= e!3276598 (and tp!1472536 tp!1472535))))

(declare-fun b!5268270 () Bool)

(declare-fun tp!1472534 () Bool)

(declare-fun tp!1472537 () Bool)

(assert (=> b!5268270 (= e!3276598 (and tp!1472534 tp!1472537))))

(assert (= (and b!5267291 (is-ElementMatch!14886 (regOne!30284 (regTwo!30285 r!7292)))) b!5268267))

(assert (= (and b!5267291 (is-Concat!23731 (regOne!30284 (regTwo!30285 r!7292)))) b!5268268))

(assert (= (and b!5267291 (is-Star!14886 (regOne!30284 (regTwo!30285 r!7292)))) b!5268269))

(assert (= (and b!5267291 (is-Union!14886 (regOne!30284 (regTwo!30285 r!7292)))) b!5268270))

(declare-fun b!5268271 () Bool)

(declare-fun e!3276599 () Bool)

(assert (=> b!5268271 (= e!3276599 tp_is_empty!39025)))

(declare-fun b!5268273 () Bool)

(declare-fun tp!1472538 () Bool)

(assert (=> b!5268273 (= e!3276599 tp!1472538)))

(assert (=> b!5267291 (= tp!1472322 e!3276599)))

(declare-fun b!5268272 () Bool)

(declare-fun tp!1472541 () Bool)

(declare-fun tp!1472540 () Bool)

(assert (=> b!5268272 (= e!3276599 (and tp!1472541 tp!1472540))))

(declare-fun b!5268274 () Bool)

(declare-fun tp!1472539 () Bool)

(declare-fun tp!1472542 () Bool)

(assert (=> b!5268274 (= e!3276599 (and tp!1472539 tp!1472542))))

(assert (= (and b!5267291 (is-ElementMatch!14886 (regTwo!30284 (regTwo!30285 r!7292)))) b!5268271))

(assert (= (and b!5267291 (is-Concat!23731 (regTwo!30284 (regTwo!30285 r!7292)))) b!5268272))

(assert (= (and b!5267291 (is-Star!14886 (regTwo!30284 (regTwo!30285 r!7292)))) b!5268273))

(assert (= (and b!5267291 (is-Union!14886 (regTwo!30284 (regTwo!30285 r!7292)))) b!5268274))

(declare-fun b!5268276 () Bool)

(declare-fun e!3276601 () Bool)

(declare-fun tp!1472543 () Bool)

(assert (=> b!5268276 (= e!3276601 tp!1472543)))

(declare-fun tp!1472544 () Bool)

(declare-fun e!3276600 () Bool)

(declare-fun b!5268275 () Bool)

(assert (=> b!5268275 (= e!3276600 (and (inv!80463 (h!67282 (t!374149 (t!374149 zl!343)))) e!3276601 tp!1472544))))

(assert (=> b!5267305 (= tp!1472333 e!3276600)))

(assert (= b!5268275 b!5268276))

(assert (= (and b!5267305 (is-Cons!60834 (t!374149 (t!374149 zl!343)))) b!5268275))

(declare-fun m!6307940 () Bool)

(assert (=> b!5268275 m!6307940))

(declare-fun b!5268277 () Bool)

(declare-fun e!3276602 () Bool)

(assert (=> b!5268277 (= e!3276602 tp_is_empty!39025)))

(declare-fun b!5268279 () Bool)

(declare-fun tp!1472545 () Bool)

(assert (=> b!5268279 (= e!3276602 tp!1472545)))

(assert (=> b!5267269 (= tp!1472296 e!3276602)))

(declare-fun b!5268278 () Bool)

(declare-fun tp!1472548 () Bool)

(declare-fun tp!1472547 () Bool)

(assert (=> b!5268278 (= e!3276602 (and tp!1472548 tp!1472547))))

(declare-fun b!5268280 () Bool)

(declare-fun tp!1472546 () Bool)

(declare-fun tp!1472549 () Bool)

(assert (=> b!5268280 (= e!3276602 (and tp!1472546 tp!1472549))))

(assert (= (and b!5267269 (is-ElementMatch!14886 (regOne!30284 (regOne!30284 r!7292)))) b!5268277))

(assert (= (and b!5267269 (is-Concat!23731 (regOne!30284 (regOne!30284 r!7292)))) b!5268278))

(assert (= (and b!5267269 (is-Star!14886 (regOne!30284 (regOne!30284 r!7292)))) b!5268279))

(assert (= (and b!5267269 (is-Union!14886 (regOne!30284 (regOne!30284 r!7292)))) b!5268280))

(declare-fun b!5268281 () Bool)

(declare-fun e!3276603 () Bool)

(assert (=> b!5268281 (= e!3276603 tp_is_empty!39025)))

(declare-fun b!5268283 () Bool)

(declare-fun tp!1472550 () Bool)

(assert (=> b!5268283 (= e!3276603 tp!1472550)))

(assert (=> b!5267269 (= tp!1472295 e!3276603)))

(declare-fun b!5268282 () Bool)

(declare-fun tp!1472553 () Bool)

(declare-fun tp!1472552 () Bool)

(assert (=> b!5268282 (= e!3276603 (and tp!1472553 tp!1472552))))

(declare-fun b!5268284 () Bool)

(declare-fun tp!1472551 () Bool)

(declare-fun tp!1472554 () Bool)

(assert (=> b!5268284 (= e!3276603 (and tp!1472551 tp!1472554))))

(assert (= (and b!5267269 (is-ElementMatch!14886 (regTwo!30284 (regOne!30284 r!7292)))) b!5268281))

(assert (= (and b!5267269 (is-Concat!23731 (regTwo!30284 (regOne!30284 r!7292)))) b!5268282))

(assert (= (and b!5267269 (is-Star!14886 (regTwo!30284 (regOne!30284 r!7292)))) b!5268283))

(assert (= (and b!5267269 (is-Union!14886 (regTwo!30284 (regOne!30284 r!7292)))) b!5268284))

(declare-fun b!5268285 () Bool)

(declare-fun e!3276604 () Bool)

(declare-fun tp!1472555 () Bool)

(assert (=> b!5268285 (= e!3276604 (and tp_is_empty!39025 tp!1472555))))

(assert (=> b!5267298 (= tp!1472327 e!3276604)))

(assert (= (and b!5267298 (is-Cons!60835 (t!374150 (t!374150 s!2326)))) b!5268285))

(declare-fun b_lambda!203203 () Bool)

(assert (= b_lambda!203199 (or b!5266789 b_lambda!203203)))

(assert (=> d!1695377 d!1695105))

(declare-fun b_lambda!203205 () Bool)

(assert (= b_lambda!203189 (or b!5266789 b_lambda!203205)))

(assert (=> d!1695261 d!1695107))

(declare-fun b_lambda!203207 () Bool)

(assert (= b_lambda!203195 (or d!1695069 b_lambda!203207)))

(declare-fun bs!1220843 () Bool)

(declare-fun d!1695433 () Bool)

(assert (= bs!1220843 (and d!1695433 d!1695069)))

(assert (=> bs!1220843 (= (dynLambda!24040 lambda!265656 (h!67281 (exprs!4770 (h!67282 zl!343)))) (validRegex!6622 (h!67281 (exprs!4770 (h!67282 zl!343)))))))

(declare-fun m!6307942 () Bool)

(assert (=> bs!1220843 m!6307942))

(assert (=> b!5267912 d!1695433))

(declare-fun b_lambda!203209 () Bool)

(assert (= b_lambda!203197 (or d!1695097 b_lambda!203209)))

(declare-fun bs!1220844 () Bool)

(declare-fun d!1695435 () Bool)

(assert (= bs!1220844 (and d!1695435 d!1695097)))

(assert (=> bs!1220844 (= (dynLambda!24040 lambda!265663 (h!67281 lt!2156156)) (validRegex!6622 (h!67281 lt!2156156)))))

(declare-fun m!6307944 () Bool)

(assert (=> bs!1220844 m!6307944))

(assert (=> b!5268053 d!1695435))

(declare-fun b_lambda!203211 () Bool)

(assert (= b_lambda!203201 (or d!1695027 b_lambda!203211)))

(declare-fun bs!1220845 () Bool)

(declare-fun d!1695437 () Bool)

(assert (= bs!1220845 (and d!1695437 d!1695027)))

(assert (=> bs!1220845 (= (dynLambda!24040 lambda!265638 (h!67281 (exprs!4770 setElem!33694))) (validRegex!6622 (h!67281 (exprs!4770 setElem!33694))))))

(declare-fun m!6307946 () Bool)

(assert (=> bs!1220845 m!6307946))

(assert (=> b!5268129 d!1695437))

(declare-fun b_lambda!203213 () Bool)

(assert (= b_lambda!203191 (or d!1695073 b_lambda!203213)))

(declare-fun bs!1220846 () Bool)

(declare-fun d!1695439 () Bool)

(assert (= bs!1220846 (and d!1695439 d!1695073)))

(assert (=> bs!1220846 (= (dynLambda!24040 lambda!265657 (h!67281 (exprs!4770 (h!67282 zl!343)))) (validRegex!6622 (h!67281 (exprs!4770 (h!67282 zl!343)))))))

(assert (=> bs!1220846 m!6307942))

(assert (=> b!5267841 d!1695439))

(declare-fun b_lambda!203215 () Bool)

(assert (= b_lambda!203193 (or d!1695095 b_lambda!203215)))

(declare-fun bs!1220847 () Bool)

(declare-fun d!1695441 () Bool)

(assert (= bs!1220847 (and d!1695441 d!1695095)))

(assert (=> bs!1220847 (= (dynLambda!24040 lambda!265660 (h!67281 (unfocusZipperList!328 zl!343))) (validRegex!6622 (h!67281 (unfocusZipperList!328 zl!343))))))

(declare-fun m!6307948 () Bool)

(assert (=> bs!1220847 m!6307948))

(assert (=> b!5267892 d!1695441))

(push 1)

(assert (not b!5267809))

(assert (not b!5267863))

(assert (not b!5268203))

(assert (not d!1695309))

(assert (not b!5267757))

(assert (not b!5267793))

(assert (not b_lambda!203213))

(assert (not d!1695283))

(assert (not b!5268213))

(assert (not b!5268280))

(assert (not bm!374069))

(assert (not setNonEmpty!33707))

(assert (not b!5268197))

(assert (not d!1695299))

(assert (not b!5267805))

(assert (not bm!374099))

(assert (not b!5268179))

(assert (not b!5268132))

(assert (not bm!374086))

(assert (not b!5268056))

(assert (not b!5267987))

(assert (not b!5268009))

(assert (not b!5268169))

(assert (not bm!374050))

(assert (not d!1695409))

(assert (not bm!374053))

(assert (not b!5268285))

(assert (not b!5268180))

(assert (not b!5268082))

(assert (not b!5268133))

(assert (not d!1695319))

(assert (not b!5268181))

(assert (not bm!374039))

(assert (not b!5268067))

(assert (not d!1695387))

(assert (not b_lambda!203203))

(assert (not b!5268260))

(assert (not b!5268126))

(assert (not b!5268122))

(assert (not b!5267746))

(assert (not bm!374105))

(assert (not b!5268255))

(assert (not d!1695359))

(assert (not bm!374040))

(assert (not b!5268077))

(assert (not b!5268220))

(assert (not bm!374098))

(assert (not b!5268247))

(assert (not b!5268261))

(assert (not b!5267871))

(assert (not b!5267782))

(assert (not d!1695403))

(assert (not b!5268215))

(assert (not b!5268275))

(assert (not b!5267864))

(assert (not bm!374110))

(assert (not b!5268272))

(assert (not b!5267713))

(assert (not b!5268249))

(assert (not b!5267816))

(assert (not d!1695323))

(assert (not d!1695253))

(assert (not b!5267878))

(assert (not bm!374057))

(assert (not d!1695281))

(assert (not d!1695429))

(assert (not b!5267721))

(assert (not bm!374037))

(assert (not b!5268081))

(assert (not b!5267868))

(assert (not bm!374046))

(assert (not bm!374093))

(assert (not b!5267935))

(assert (not b!5268269))

(assert (not b!5268235))

(assert (not b!5268188))

(assert (not d!1695413))

(assert (not b!5267913))

(assert (not b!5268184))

(assert (not b!5268076))

(assert (not b!5268248))

(assert (not b!5267764))

(assert (not d!1695279))

(assert (not bm!374064))

(assert (not b!5267931))

(assert (not d!1695377))

(assert (not b!5268078))

(assert (not bm!374031))

(assert (not setNonEmpty!33706))

(assert (not d!1695221))

(assert (not b!5268193))

(assert (not b!5268123))

(assert (not b!5267893))

(assert (not b!5268057))

(assert (not bm!374044))

(assert (not d!1695421))

(assert (not b!5268183))

(assert (not b!5267937))

(assert (not d!1695329))

(assert (not b!5267940))

(assert (not b!5267836))

(assert (not b!5268231))

(assert (not bs!1220845))

(assert (not b!5268176))

(assert (not bm!374104))

(assert (not b!5268192))

(assert (not bm!374072))

(assert (not b!5268225))

(assert (not b!5268201))

(assert (not b!5267969))

(assert (not bm!374134))

(assert (not b!5268274))

(assert (not b!5268199))

(assert (not b!5267708))

(assert (not b!5268061))

(assert (not b!5268259))

(assert (not b!5267716))

(assert (not b!5268124))

(assert (not b!5267714))

(assert (not b!5268167))

(assert (not d!1695229))

(assert (not d!1695383))

(assert (not d!1695391))

(assert (not b!5267726))

(assert (not b!5268283))

(assert (not b!5268238))

(assert (not d!1695277))

(assert tp_is_empty!39025)

(assert (not bm!374088))

(assert (not bm!374127))

(assert (not bm!374070))

(assert (not d!1695301))

(assert (not bm!374055))

(assert (not b!5268219))

(assert (not d!1695385))

(assert (not d!1695335))

(assert (not b_lambda!203205))

(assert (not b!5268128))

(assert (not b!5267768))

(assert (not b!5267804))

(assert (not d!1695313))

(assert (not bm!374020))

(assert (not b!5268000))

(assert (not b!5267808))

(assert (not bm!374025))

(assert (not b!5268062))

(assert (not b!5267727))

(assert (not bm!374059))

(assert (not b!5267876))

(assert (not b_lambda!203215))

(assert (not b!5268236))

(assert (not b!5267803))

(assert (not b!5268131))

(assert (not b!5267723))

(assert (not b!5267709))

(assert (not b!5268073))

(assert (not b!5268153))

(assert (not d!1695345))

(assert (not d!1695405))

(assert (not b!5268118))

(assert (not b!5268168))

(assert (not b!5268054))

(assert (not b!5268130))

(assert (not bm!374136))

(assert (not b!5268018))

(assert (not b!5268187))

(assert (not bm!374073))

(assert (not d!1695239))

(assert (not d!1695227))

(assert (not bm!374108))

(assert (not d!1695401))

(assert (not b!5268273))

(assert (not bm!374079))

(assert (not b!5267765))

(assert (not d!1695361))

(assert (not b!5268264))

(assert (not b!5268268))

(assert (not bm!374126))

(assert (not b!5268282))

(assert (not b!5267829))

(assert (not b!5268144))

(assert (not bm!374074))

(assert (not b!5268209))

(assert (not b_lambda!203209))

(assert (not d!1695397))

(assert (not b!5267701))

(assert (not bm!374123))

(assert (not b!5268279))

(assert (not d!1695427))

(assert (not b!5267842))

(assert (not b!5267903))

(assert (not d!1695305))

(assert (not b!5267881))

(assert (not bm!374085))

(assert (not d!1695389))

(assert (not d!1695311))

(assert (not b!5267798))

(assert (not b!5268026))

(assert (not b!5268196))

(assert (not d!1695341))

(assert (not b!5268205))

(assert (not b!5267946))

(assert (not b!5267875))

(assert (not d!1695307))

(assert (not bm!374022))

(assert (not b!5268244))

(assert (not b!5268216))

(assert (not b!5268252))

(assert (not b!5268171))

(assert (not bm!374128))

(assert (not b!5268212))

(assert (not bm!374132))

(assert (not d!1695411))

(assert (not b!5267973))

(assert (not b!5268207))

(assert (not d!1695261))

(assert (not bs!1220846))

(assert (not b_lambda!203177))

(assert (not b!5268023))

(assert (not bm!374097))

(assert (not bm!374077))

(assert (not b!5268229))

(assert (not b!5267799))

(assert (not d!1695373))

(assert (not b!5268253))

(assert (not b!5268142))

(assert (not b!5268224))

(assert (not bm!374101))

(assert (not bm!374052))

(assert (not b!5268257))

(assert (not b!5268071))

(assert (not bm!374047))

(assert (not b!5268270))

(assert (not b!5267774))

(assert (not b!5268191))

(assert (not b!5267735))

(assert (not b!5267849))

(assert (not setNonEmpty!33708))

(assert (not bm!374056))

(assert (not b!5268189))

(assert (not b!5267700))

(assert (not d!1695285))

(assert (not b!5267719))

(assert (not b!5268239))

(assert (not bm!374087))

(assert (not d!1695211))

(assert (not b!5268072))

(assert (not bm!374095))

(assert (not b!5268276))

(assert (not b!5267725))

(assert (not bm!374062))

(assert (not b!5268266))

(assert (not d!1695237))

(assert (not b!5268211))

(assert (not b!5267870))

(assert (not b!5267880))

(assert (not b!5268228))

(assert (not b!5267894))

(assert (not b!5268262))

(assert (not bm!374129))

(assert (not bm!374033))

(assert (not b!5267834))

(assert (not b!5268195))

(assert (not b!5268200))

(assert (not b!5268223))

(assert (not b!5268245))

(assert (not b!5268241))

(assert (not b!5268234))

(assert (not bm!374021))

(assert (not d!1695343))

(assert (not b!5268284))

(assert (not bm!374111))

(assert (not d!1695267))

(assert (not b!5268027))

(assert (not b!5267874))

(assert (not b!5268173))

(assert (not b!5268243))

(assert (not b!5268175))

(assert (not b!5268011))

(assert (not b!5268172))

(assert (not b!5268058))

(assert (not b!5267763))

(assert (not b!5268158))

(assert (not b!5267710))

(assert (not b!5268185))

(assert (not bm!374090))

(assert (not d!1695355))

(assert (not b!5267936))

(assert (not bs!1220844))

(assert (not d!1695197))

(assert (not d!1695235))

(assert (not b!5267867))

(assert (not b!5268074))

(assert (not b!5267920))

(assert (not b!5268025))

(assert (not bm!374058))

(assert (not b!5268087))

(assert (not b!5267814))

(assert (not b!5267769))

(assert (not bm!374089))

(assert (not b!5268232))

(assert (not b!5268120))

(assert (not bs!1220847))

(assert (not bm!374028))

(assert (not bm!374103))

(assert (not b_lambda!203207))

(assert (not b!5268208))

(assert (not b!5268251))

(assert (not bm!374041))

(assert (not bs!1220843))

(assert (not bm!374080))

(assert (not b_lambda!203179))

(assert (not b!5268233))

(assert (not b!5267883))

(assert (not b!5268042))

(assert (not b!5267720))

(assert (not b!5268278))

(assert (not b!5268217))

(assert (not b!5268204))

(assert (not d!1695371))

(assert (not b!5267970))

(assert (not b!5267941))

(assert (not bm!374124))

(assert (not b_lambda!203211))

(assert (not b!5267929))

(assert (not b!5268227))

(assert (not bm!374034))

(assert (not d!1695431))

(assert (not d!1695357))

(assert (not d!1695399))

(assert (not b!5268121))

(assert (not b!5268265))

(assert (not b!5268177))

(assert (not bm!374121))

(assert (not d!1695213))

(assert (not bm!374027))

(assert (not d!1695375))

(assert (not d!1695317))

(assert (not b!5268052))

(assert (not bm!374066))

(assert (not b!5268069))

(assert (not b!5268221))

(assert (not b!5268256))

(assert (not bm!374100))

(assert (not b!5268240))

(assert (not bm!374067))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

