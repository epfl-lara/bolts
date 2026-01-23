; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!646256 () Bool)

(assert start!646256)

(declare-fun b!6611695 () Bool)

(assert (=> b!6611695 true))

(assert (=> b!6611695 true))

(declare-fun lambda!369243 () Int)

(declare-fun lambda!369242 () Int)

(assert (=> b!6611695 (not (= lambda!369243 lambda!369242))))

(assert (=> b!6611695 true))

(assert (=> b!6611695 true))

(declare-fun b!6611691 () Bool)

(assert (=> b!6611691 true))

(declare-fun b!6611671 () Bool)

(declare-fun e!4000119 () Bool)

(declare-datatypes ((C!33234 0))(
  ( (C!33235 (val!26319 Int)) )
))
(declare-datatypes ((Regex!16482 0))(
  ( (ElementMatch!16482 (c!1218571 C!33234)) (Concat!25327 (regOne!33476 Regex!16482) (regTwo!33476 Regex!16482)) (EmptyExpr!16482) (Star!16482 (reg!16811 Regex!16482)) (EmptyLang!16482) (Union!16482 (regOne!33477 Regex!16482) (regTwo!33477 Regex!16482)) )
))
(declare-datatypes ((List!65745 0))(
  ( (Nil!65621) (Cons!65621 (h!72069 Regex!16482) (t!379399 List!65745)) )
))
(declare-datatypes ((Context!11732 0))(
  ( (Context!11733 (exprs!6366 List!65745)) )
))
(declare-fun lt!2416798 () (Set Context!11732))

(declare-datatypes ((List!65746 0))(
  ( (Nil!65622) (Cons!65622 (h!72070 C!33234) (t!379400 List!65746)) )
))
(declare-fun s!2326 () List!65746)

(declare-fun matchZipper!2494 ((Set Context!11732) List!65746) Bool)

(assert (=> b!6611671 (= e!4000119 (matchZipper!2494 lt!2416798 (t!379400 s!2326)))))

(declare-fun b!6611672 () Bool)

(declare-fun e!4000124 () Bool)

(declare-fun e!4000118 () Bool)

(assert (=> b!6611672 (= e!4000124 e!4000118)))

(declare-fun res!2711253 () Bool)

(assert (=> b!6611672 (=> res!2711253 e!4000118)))

(declare-fun lt!2416804 () (Set Context!11732))

(declare-fun r!7292 () Regex!16482)

(assert (=> b!6611672 (= res!2711253 (or (not (= lt!2416804 (as set.empty (Set Context!11732)))) (not (= r!7292 (Concat!25327 (regOne!33476 r!7292) (regTwo!33476 r!7292)))) (not (= (regOne!33476 r!7292) EmptyExpr!16482))))))

(assert (=> b!6611672 (not (matchZipper!2494 lt!2416804 (t!379400 s!2326)))))

(declare-datatypes ((Unit!159283 0))(
  ( (Unit!159284) )
))
(declare-fun lt!2416796 () Unit!159283)

(declare-fun lemmaEmptyZipperMatchesNothing!77 ((Set Context!11732) List!65746) Unit!159283)

(assert (=> b!6611672 (= lt!2416796 (lemmaEmptyZipperMatchesNothing!77 lt!2416804 (t!379400 s!2326)))))

(declare-fun b!6611673 () Bool)

(declare-fun res!2711252 () Bool)

(declare-fun e!4000120 () Bool)

(assert (=> b!6611673 (=> res!2711252 e!4000120)))

(declare-datatypes ((List!65747 0))(
  ( (Nil!65623) (Cons!65623 (h!72071 Context!11732) (t!379401 List!65747)) )
))
(declare-fun zl!343 () List!65747)

(assert (=> b!6611673 (= res!2711252 (not (is-Cons!65621 (exprs!6366 (h!72071 zl!343)))))))

(declare-fun setIsEmpty!45169 () Bool)

(declare-fun setRes!45169 () Bool)

(assert (=> setIsEmpty!45169 setRes!45169))

(declare-fun b!6611674 () Bool)

(declare-fun res!2711246 () Bool)

(assert (=> b!6611674 (=> res!2711246 e!4000124)))

(declare-fun e!4000129 () Bool)

(assert (=> b!6611674 (= res!2711246 e!4000129)))

(declare-fun res!2711244 () Bool)

(assert (=> b!6611674 (=> (not res!2711244) (not e!4000129))))

(assert (=> b!6611674 (= res!2711244 (is-Concat!25327 (regOne!33476 r!7292)))))

(declare-fun b!6611675 () Bool)

(declare-fun nullable!6475 (Regex!16482) Bool)

(assert (=> b!6611675 (= e!4000129 (nullable!6475 (regOne!33476 (regOne!33476 r!7292))))))

(declare-fun b!6611676 () Bool)

(declare-fun e!4000123 () Bool)

(assert (=> b!6611676 (= e!4000123 (not e!4000120))))

(declare-fun res!2711243 () Bool)

(assert (=> b!6611676 (=> res!2711243 e!4000120)))

(assert (=> b!6611676 (= res!2711243 (not (is-Cons!65623 zl!343)))))

(declare-fun lt!2416802 () Bool)

(declare-fun matchRSpec!3583 (Regex!16482 List!65746) Bool)

(assert (=> b!6611676 (= lt!2416802 (matchRSpec!3583 r!7292 s!2326))))

(declare-fun matchR!8665 (Regex!16482 List!65746) Bool)

(assert (=> b!6611676 (= lt!2416802 (matchR!8665 r!7292 s!2326))))

(declare-fun lt!2416800 () Unit!159283)

(declare-fun mainMatchTheorem!3583 (Regex!16482 List!65746) Unit!159283)

(assert (=> b!6611676 (= lt!2416800 (mainMatchTheorem!3583 r!7292 s!2326))))

(declare-fun b!6611678 () Bool)

(declare-fun res!2711254 () Bool)

(assert (=> b!6611678 (=> res!2711254 e!4000124)))

(assert (=> b!6611678 (= res!2711254 (or (is-Concat!25327 (regOne!33476 r!7292)) (is-Star!16482 (regOne!33476 r!7292)) (not (is-EmptyExpr!16482 (regOne!33476 r!7292)))))))

(declare-fun b!6611679 () Bool)

(declare-fun e!4000117 () Bool)

(declare-fun tp!1821262 () Bool)

(declare-fun tp!1821265 () Bool)

(assert (=> b!6611679 (= e!4000117 (and tp!1821262 tp!1821265))))

(declare-fun b!6611680 () Bool)

(declare-fun e!4000122 () Unit!159283)

(declare-fun Unit!159285 () Unit!159283)

(assert (=> b!6611680 (= e!4000122 Unit!159285)))

(declare-fun b!6611681 () Bool)

(declare-fun res!2711257 () Bool)

(assert (=> b!6611681 (=> res!2711257 e!4000120)))

(declare-fun generalisedUnion!2326 (List!65745) Regex!16482)

(declare-fun unfocusZipperList!1903 (List!65747) List!65745)

(assert (=> b!6611681 (= res!2711257 (not (= r!7292 (generalisedUnion!2326 (unfocusZipperList!1903 zl!343)))))))

(declare-fun b!6611682 () Bool)

(declare-fun Unit!159286 () Unit!159283)

(assert (=> b!6611682 (= e!4000122 Unit!159286)))

(declare-fun lt!2416805 () Unit!159283)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1313 ((Set Context!11732) (Set Context!11732) List!65746) Unit!159283)

(assert (=> b!6611682 (= lt!2416805 (lemmaZipperConcatMatchesSameAsBothZippers!1313 lt!2416804 lt!2416798 (t!379400 s!2326)))))

(declare-fun res!2711249 () Bool)

(assert (=> b!6611682 (= res!2711249 (matchZipper!2494 lt!2416804 (t!379400 s!2326)))))

(assert (=> b!6611682 (=> res!2711249 e!4000119)))

(assert (=> b!6611682 (= (matchZipper!2494 (set.union lt!2416804 lt!2416798) (t!379400 s!2326)) e!4000119)))

(declare-fun b!6611683 () Bool)

(declare-fun e!4000125 () Bool)

(declare-fun tp!1821261 () Bool)

(assert (=> b!6611683 (= e!4000125 tp!1821261)))

(declare-fun b!6611684 () Bool)

(declare-fun res!2711258 () Bool)

(assert (=> b!6611684 (=> res!2711258 e!4000120)))

(assert (=> b!6611684 (= res!2711258 (or (is-EmptyExpr!16482 r!7292) (is-EmptyLang!16482 r!7292) (is-ElementMatch!16482 r!7292) (is-Union!16482 r!7292) (not (is-Concat!25327 r!7292))))))

(declare-fun b!6611685 () Bool)

(declare-fun tp_is_empty!42217 () Bool)

(assert (=> b!6611685 (= e!4000117 tp_is_empty!42217)))

(declare-fun b!6611686 () Bool)

(declare-fun res!2711255 () Bool)

(assert (=> b!6611686 (=> res!2711255 e!4000120)))

(declare-fun generalisedConcat!2079 (List!65745) Regex!16482)

(assert (=> b!6611686 (= res!2711255 (not (= r!7292 (generalisedConcat!2079 (exprs!6366 (h!72071 zl!343))))))))

(declare-fun b!6611687 () Bool)

(declare-fun res!2711256 () Bool)

(assert (=> b!6611687 (=> res!2711256 e!4000120)))

(declare-fun isEmpty!37901 (List!65747) Bool)

(assert (=> b!6611687 (= res!2711256 (not (isEmpty!37901 (t!379401 zl!343))))))

(declare-fun res!2711259 () Bool)

(assert (=> start!646256 (=> (not res!2711259) (not e!4000123))))

(declare-fun validRegex!8218 (Regex!16482) Bool)

(assert (=> start!646256 (= res!2711259 (validRegex!8218 r!7292))))

(assert (=> start!646256 e!4000123))

(assert (=> start!646256 e!4000117))

(declare-fun condSetEmpty!45169 () Bool)

(declare-fun z!1189 () (Set Context!11732))

(assert (=> start!646256 (= condSetEmpty!45169 (= z!1189 (as set.empty (Set Context!11732))))))

(assert (=> start!646256 setRes!45169))

(declare-fun e!4000127 () Bool)

(assert (=> start!646256 e!4000127))

(declare-fun e!4000126 () Bool)

(assert (=> start!646256 e!4000126))

(declare-fun b!6611677 () Bool)

(declare-fun tp!1821258 () Bool)

(assert (=> b!6611677 (= e!4000117 tp!1821258)))

(declare-fun b!6611688 () Bool)

(declare-fun tp!1821263 () Bool)

(assert (=> b!6611688 (= e!4000126 (and tp_is_empty!42217 tp!1821263))))

(declare-fun b!6611689 () Bool)

(declare-fun tp!1821256 () Bool)

(declare-fun tp!1821257 () Bool)

(assert (=> b!6611689 (= e!4000117 (and tp!1821256 tp!1821257))))

(declare-fun e!4000121 () Bool)

(declare-fun b!6611690 () Bool)

(declare-fun tp!1821264 () Bool)

(declare-fun inv!84453 (Context!11732) Bool)

(assert (=> b!6611690 (= e!4000127 (and (inv!84453 (h!72071 zl!343)) e!4000121 tp!1821264))))

(declare-fun setNonEmpty!45169 () Bool)

(declare-fun tp!1821259 () Bool)

(declare-fun setElem!45169 () Context!11732)

(assert (=> setNonEmpty!45169 (= setRes!45169 (and tp!1821259 (inv!84453 setElem!45169) e!4000125))))

(declare-fun setRest!45169 () (Set Context!11732))

(assert (=> setNonEmpty!45169 (= z!1189 (set.union (set.insert setElem!45169 (as set.empty (Set Context!11732))) setRest!45169))))

(declare-fun e!4000128 () Bool)

(assert (=> b!6611691 (= e!4000128 e!4000124)))

(declare-fun res!2711250 () Bool)

(assert (=> b!6611691 (=> res!2711250 e!4000124)))

(assert (=> b!6611691 (= res!2711250 (or (and (is-ElementMatch!16482 (regOne!33476 r!7292)) (= (c!1218571 (regOne!33476 r!7292)) (h!72070 s!2326))) (is-Union!16482 (regOne!33476 r!7292))))))

(declare-fun lt!2416799 () Unit!159283)

(assert (=> b!6611691 (= lt!2416799 e!4000122)))

(declare-fun c!1218570 () Bool)

(assert (=> b!6611691 (= c!1218570 (nullable!6475 (h!72069 (exprs!6366 (h!72071 zl!343)))))))

(declare-fun lambda!369244 () Int)

(declare-fun flatMap!1987 ((Set Context!11732) Int) (Set Context!11732))

(declare-fun derivationStepZipperUp!1656 (Context!11732 C!33234) (Set Context!11732))

(assert (=> b!6611691 (= (flatMap!1987 z!1189 lambda!369244) (derivationStepZipperUp!1656 (h!72071 zl!343) (h!72070 s!2326)))))

(declare-fun lt!2416793 () Unit!159283)

(declare-fun lemmaFlatMapOnSingletonSet!1513 ((Set Context!11732) Context!11732 Int) Unit!159283)

(assert (=> b!6611691 (= lt!2416793 (lemmaFlatMapOnSingletonSet!1513 z!1189 (h!72071 zl!343) lambda!369244))))

(declare-fun lt!2416795 () Context!11732)

(assert (=> b!6611691 (= lt!2416798 (derivationStepZipperUp!1656 lt!2416795 (h!72070 s!2326)))))

(declare-fun derivationStepZipperDown!1730 (Regex!16482 Context!11732 C!33234) (Set Context!11732))

(assert (=> b!6611691 (= lt!2416804 (derivationStepZipperDown!1730 (h!72069 (exprs!6366 (h!72071 zl!343))) lt!2416795 (h!72070 s!2326)))))

(assert (=> b!6611691 (= lt!2416795 (Context!11733 (t!379399 (exprs!6366 (h!72071 zl!343)))))))

(declare-fun lt!2416801 () (Set Context!11732))

(assert (=> b!6611691 (= lt!2416801 (derivationStepZipperUp!1656 (Context!11733 (Cons!65621 (h!72069 (exprs!6366 (h!72071 zl!343))) (t!379399 (exprs!6366 (h!72071 zl!343))))) (h!72070 s!2326)))))

(declare-fun b!6611692 () Bool)

(declare-fun tp!1821260 () Bool)

(assert (=> b!6611692 (= e!4000121 tp!1821260)))

(declare-fun b!6611693 () Bool)

(declare-fun res!2711245 () Bool)

(assert (=> b!6611693 (=> (not res!2711245) (not e!4000123))))

(declare-fun toList!10266 ((Set Context!11732)) List!65747)

(assert (=> b!6611693 (= res!2711245 (= (toList!10266 z!1189) zl!343))))

(declare-fun b!6611694 () Bool)

(declare-fun res!2711248 () Bool)

(assert (=> b!6611694 (=> res!2711248 e!4000128)))

(declare-fun isEmpty!37902 (List!65745) Bool)

(assert (=> b!6611694 (= res!2711248 (isEmpty!37902 (t!379399 (exprs!6366 (h!72071 zl!343)))))))

(assert (=> b!6611695 (= e!4000120 e!4000128)))

(declare-fun res!2711251 () Bool)

(assert (=> b!6611695 (=> res!2711251 e!4000128)))

(declare-fun lt!2416803 () Bool)

(assert (=> b!6611695 (= res!2711251 (or (not (= lt!2416802 lt!2416803)) (is-Nil!65622 s!2326)))))

(declare-fun Exists!3552 (Int) Bool)

(assert (=> b!6611695 (= (Exists!3552 lambda!369242) (Exists!3552 lambda!369243))))

(declare-fun lt!2416794 () Unit!159283)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2089 (Regex!16482 Regex!16482 List!65746) Unit!159283)

(assert (=> b!6611695 (= lt!2416794 (lemmaExistCutMatchRandMatchRSpecEquivalent!2089 (regOne!33476 r!7292) (regTwo!33476 r!7292) s!2326))))

(assert (=> b!6611695 (= lt!2416803 (Exists!3552 lambda!369242))))

(declare-datatypes ((tuple2!66922 0))(
  ( (tuple2!66923 (_1!36764 List!65746) (_2!36764 List!65746)) )
))
(declare-datatypes ((Option!16373 0))(
  ( (None!16372) (Some!16372 (v!52561 tuple2!66922)) )
))
(declare-fun isDefined!13076 (Option!16373) Bool)

(declare-fun findConcatSeparation!2787 (Regex!16482 Regex!16482 List!65746 List!65746 List!65746) Option!16373)

(assert (=> b!6611695 (= lt!2416803 (isDefined!13076 (findConcatSeparation!2787 (regOne!33476 r!7292) (regTwo!33476 r!7292) Nil!65622 s!2326 s!2326)))))

(declare-fun lt!2416797 () Unit!159283)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2551 (Regex!16482 Regex!16482 List!65746) Unit!159283)

(assert (=> b!6611695 (= lt!2416797 (lemmaFindConcatSeparationEquivalentToExists!2551 (regOne!33476 r!7292) (regTwo!33476 r!7292) s!2326))))

(declare-fun b!6611696 () Bool)

(declare-fun res!2711247 () Bool)

(assert (=> b!6611696 (=> (not res!2711247) (not e!4000123))))

(declare-fun unfocusZipper!2224 (List!65747) Regex!16482)

(assert (=> b!6611696 (= res!2711247 (= r!7292 (unfocusZipper!2224 zl!343)))))

(declare-fun b!6611697 () Bool)

(assert (=> b!6611697 (= e!4000118 (validRegex!8218 (regOne!33476 r!7292)))))

(assert (= (and start!646256 res!2711259) b!6611693))

(assert (= (and b!6611693 res!2711245) b!6611696))

(assert (= (and b!6611696 res!2711247) b!6611676))

(assert (= (and b!6611676 (not res!2711243)) b!6611687))

(assert (= (and b!6611687 (not res!2711256)) b!6611686))

(assert (= (and b!6611686 (not res!2711255)) b!6611673))

(assert (= (and b!6611673 (not res!2711252)) b!6611681))

(assert (= (and b!6611681 (not res!2711257)) b!6611684))

(assert (= (and b!6611684 (not res!2711258)) b!6611695))

(assert (= (and b!6611695 (not res!2711251)) b!6611694))

(assert (= (and b!6611694 (not res!2711248)) b!6611691))

(assert (= (and b!6611691 c!1218570) b!6611682))

(assert (= (and b!6611691 (not c!1218570)) b!6611680))

(assert (= (and b!6611682 (not res!2711249)) b!6611671))

(assert (= (and b!6611691 (not res!2711250)) b!6611674))

(assert (= (and b!6611674 res!2711244) b!6611675))

(assert (= (and b!6611674 (not res!2711246)) b!6611678))

(assert (= (and b!6611678 (not res!2711254)) b!6611672))

(assert (= (and b!6611672 (not res!2711253)) b!6611697))

(assert (= (and start!646256 (is-ElementMatch!16482 r!7292)) b!6611685))

(assert (= (and start!646256 (is-Concat!25327 r!7292)) b!6611689))

(assert (= (and start!646256 (is-Star!16482 r!7292)) b!6611677))

(assert (= (and start!646256 (is-Union!16482 r!7292)) b!6611679))

(assert (= (and start!646256 condSetEmpty!45169) setIsEmpty!45169))

(assert (= (and start!646256 (not condSetEmpty!45169)) setNonEmpty!45169))

(assert (= setNonEmpty!45169 b!6611683))

(assert (= b!6611690 b!6611692))

(assert (= (and start!646256 (is-Cons!65623 zl!343)) b!6611690))

(assert (= (and start!646256 (is-Cons!65622 s!2326)) b!6611688))

(declare-fun m!7386016 () Bool)

(assert (=> b!6611681 m!7386016))

(assert (=> b!6611681 m!7386016))

(declare-fun m!7386018 () Bool)

(assert (=> b!6611681 m!7386018))

(declare-fun m!7386020 () Bool)

(assert (=> setNonEmpty!45169 m!7386020))

(declare-fun m!7386022 () Bool)

(assert (=> b!6611687 m!7386022))

(declare-fun m!7386024 () Bool)

(assert (=> b!6611694 m!7386024))

(declare-fun m!7386026 () Bool)

(assert (=> b!6611693 m!7386026))

(declare-fun m!7386028 () Bool)

(assert (=> b!6611675 m!7386028))

(declare-fun m!7386030 () Bool)

(assert (=> start!646256 m!7386030))

(declare-fun m!7386032 () Bool)

(assert (=> b!6611686 m!7386032))

(declare-fun m!7386034 () Bool)

(assert (=> b!6611697 m!7386034))

(declare-fun m!7386036 () Bool)

(assert (=> b!6611676 m!7386036))

(declare-fun m!7386038 () Bool)

(assert (=> b!6611676 m!7386038))

(declare-fun m!7386040 () Bool)

(assert (=> b!6611676 m!7386040))

(declare-fun m!7386042 () Bool)

(assert (=> b!6611695 m!7386042))

(declare-fun m!7386044 () Bool)

(assert (=> b!6611695 m!7386044))

(declare-fun m!7386046 () Bool)

(assert (=> b!6611695 m!7386046))

(assert (=> b!6611695 m!7386042))

(declare-fun m!7386048 () Bool)

(assert (=> b!6611695 m!7386048))

(declare-fun m!7386050 () Bool)

(assert (=> b!6611695 m!7386050))

(assert (=> b!6611695 m!7386044))

(declare-fun m!7386052 () Bool)

(assert (=> b!6611695 m!7386052))

(declare-fun m!7386054 () Bool)

(assert (=> b!6611672 m!7386054))

(declare-fun m!7386056 () Bool)

(assert (=> b!6611672 m!7386056))

(declare-fun m!7386058 () Bool)

(assert (=> b!6611696 m!7386058))

(declare-fun m!7386060 () Bool)

(assert (=> b!6611671 m!7386060))

(declare-fun m!7386062 () Bool)

(assert (=> b!6611691 m!7386062))

(declare-fun m!7386064 () Bool)

(assert (=> b!6611691 m!7386064))

(declare-fun m!7386066 () Bool)

(assert (=> b!6611691 m!7386066))

(declare-fun m!7386068 () Bool)

(assert (=> b!6611691 m!7386068))

(declare-fun m!7386070 () Bool)

(assert (=> b!6611691 m!7386070))

(declare-fun m!7386072 () Bool)

(assert (=> b!6611691 m!7386072))

(declare-fun m!7386074 () Bool)

(assert (=> b!6611691 m!7386074))

(declare-fun m!7386076 () Bool)

(assert (=> b!6611690 m!7386076))

(declare-fun m!7386078 () Bool)

(assert (=> b!6611682 m!7386078))

(assert (=> b!6611682 m!7386054))

(declare-fun m!7386080 () Bool)

(assert (=> b!6611682 m!7386080))

(push 1)

(assert (not b!6611693))

(assert (not b!6611676))

(assert (not b!6611697))

(assert (not start!646256))

(assert (not b!6611671))

(assert (not b!6611679))

(assert (not b!6611686))

(assert (not b!6611672))

(assert (not b!6611687))

(assert (not b!6611688))

(assert (not b!6611691))

(assert (not b!6611675))

(assert (not b!6611689))

(assert (not b!6611695))

(assert (not b!6611692))

(assert (not b!6611682))

(assert (not b!6611690))

(assert (not b!6611677))

(assert (not b!6611696))

(assert (not b!6611681))

(assert (not b!6611694))

(assert (not setNonEmpty!45169))

(assert tp_is_empty!42217)

(assert (not b!6611683))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6611821 () Bool)

(declare-fun e!4000191 () Bool)

(declare-fun e!4000195 () Bool)

(assert (=> b!6611821 (= e!4000191 e!4000195)))

(declare-fun res!2711334 () Bool)

(assert (=> b!6611821 (=> (not res!2711334) (not e!4000195))))

(declare-fun call!579206 () Bool)

(assert (=> b!6611821 (= res!2711334 call!579206)))

(declare-fun bm!579199 () Bool)

(declare-fun call!579204 () Bool)

(assert (=> bm!579199 (= call!579206 call!579204)))

(declare-fun b!6611822 () Bool)

(declare-fun e!4000193 () Bool)

(declare-fun e!4000190 () Bool)

(assert (=> b!6611822 (= e!4000193 e!4000190)))

(declare-fun c!1218584 () Bool)

(assert (=> b!6611822 (= c!1218584 (is-Union!16482 (regOne!33476 r!7292)))))

(declare-fun c!1218583 () Bool)

(declare-fun bm!579200 () Bool)

(assert (=> bm!579200 (= call!579204 (validRegex!8218 (ite c!1218583 (reg!16811 (regOne!33476 r!7292)) (ite c!1218584 (regOne!33477 (regOne!33476 r!7292)) (regOne!33476 (regOne!33476 r!7292))))))))

(declare-fun b!6611823 () Bool)

(declare-fun e!4000192 () Bool)

(declare-fun call!579205 () Bool)

(assert (=> b!6611823 (= e!4000192 call!579205)))

(declare-fun b!6611824 () Bool)

(declare-fun e!4000194 () Bool)

(assert (=> b!6611824 (= e!4000194 e!4000193)))

(assert (=> b!6611824 (= c!1218583 (is-Star!16482 (regOne!33476 r!7292)))))

(declare-fun d!2072977 () Bool)

(declare-fun res!2711336 () Bool)

(assert (=> d!2072977 (=> res!2711336 e!4000194)))

(assert (=> d!2072977 (= res!2711336 (is-ElementMatch!16482 (regOne!33476 r!7292)))))

(assert (=> d!2072977 (= (validRegex!8218 (regOne!33476 r!7292)) e!4000194)))

(declare-fun b!6611825 () Bool)

(declare-fun e!4000189 () Bool)

(assert (=> b!6611825 (= e!4000189 call!579204)))

(declare-fun bm!579201 () Bool)

(assert (=> bm!579201 (= call!579205 (validRegex!8218 (ite c!1218584 (regTwo!33477 (regOne!33476 r!7292)) (regTwo!33476 (regOne!33476 r!7292)))))))

(declare-fun b!6611826 () Bool)

(assert (=> b!6611826 (= e!4000195 call!579205)))

(declare-fun b!6611827 () Bool)

(declare-fun res!2711335 () Bool)

(assert (=> b!6611827 (=> (not res!2711335) (not e!4000192))))

(assert (=> b!6611827 (= res!2711335 call!579206)))

(assert (=> b!6611827 (= e!4000190 e!4000192)))

(declare-fun b!6611828 () Bool)

(declare-fun res!2711337 () Bool)

(assert (=> b!6611828 (=> res!2711337 e!4000191)))

(assert (=> b!6611828 (= res!2711337 (not (is-Concat!25327 (regOne!33476 r!7292))))))

(assert (=> b!6611828 (= e!4000190 e!4000191)))

(declare-fun b!6611829 () Bool)

(assert (=> b!6611829 (= e!4000193 e!4000189)))

(declare-fun res!2711333 () Bool)

(assert (=> b!6611829 (= res!2711333 (not (nullable!6475 (reg!16811 (regOne!33476 r!7292)))))))

(assert (=> b!6611829 (=> (not res!2711333) (not e!4000189))))

(assert (= (and d!2072977 (not res!2711336)) b!6611824))

(assert (= (and b!6611824 c!1218583) b!6611829))

(assert (= (and b!6611824 (not c!1218583)) b!6611822))

(assert (= (and b!6611829 res!2711333) b!6611825))

(assert (= (and b!6611822 c!1218584) b!6611827))

(assert (= (and b!6611822 (not c!1218584)) b!6611828))

(assert (= (and b!6611827 res!2711335) b!6611823))

(assert (= (and b!6611828 (not res!2711337)) b!6611821))

(assert (= (and b!6611821 res!2711334) b!6611826))

(assert (= (or b!6611823 b!6611826) bm!579201))

(assert (= (or b!6611827 b!6611821) bm!579199))

(assert (= (or b!6611825 bm!579199) bm!579200))

(declare-fun m!7386148 () Bool)

(assert (=> bm!579200 m!7386148))

(declare-fun m!7386150 () Bool)

(assert (=> bm!579201 m!7386150))

(declare-fun m!7386152 () Bool)

(assert (=> b!6611829 m!7386152))

(assert (=> b!6611697 d!2072977))

(declare-fun d!2072979 () Bool)

(assert (=> d!2072979 (= (isEmpty!37901 (t!379401 zl!343)) (is-Nil!65623 (t!379401 zl!343)))))

(assert (=> b!6611687 d!2072979))

(declare-fun bs!1695306 () Bool)

(declare-fun b!6611868 () Bool)

(assert (= bs!1695306 (and b!6611868 b!6611695)))

(declare-fun lambda!369260 () Int)

(assert (=> bs!1695306 (not (= lambda!369260 lambda!369242))))

(assert (=> bs!1695306 (not (= lambda!369260 lambda!369243))))

(assert (=> b!6611868 true))

(assert (=> b!6611868 true))

(declare-fun bs!1695307 () Bool)

(declare-fun b!6611862 () Bool)

(assert (= bs!1695307 (and b!6611862 b!6611695)))

(declare-fun lambda!369261 () Int)

(assert (=> bs!1695307 (not (= lambda!369261 lambda!369242))))

(assert (=> bs!1695307 (= lambda!369261 lambda!369243)))

(declare-fun bs!1695308 () Bool)

(assert (= bs!1695308 (and b!6611862 b!6611868)))

(assert (=> bs!1695308 (not (= lambda!369261 lambda!369260))))

(assert (=> b!6611862 true))

(assert (=> b!6611862 true))

(declare-fun e!4000215 () Bool)

(declare-fun call!579212 () Bool)

(assert (=> b!6611862 (= e!4000215 call!579212)))

(declare-fun b!6611863 () Bool)

(declare-fun res!2711354 () Bool)

(declare-fun e!4000214 () Bool)

(assert (=> b!6611863 (=> res!2711354 e!4000214)))

(declare-fun call!579211 () Bool)

(assert (=> b!6611863 (= res!2711354 call!579211)))

(assert (=> b!6611863 (= e!4000215 e!4000214)))

(declare-fun d!2072981 () Bool)

(declare-fun c!1218593 () Bool)

(assert (=> d!2072981 (= c!1218593 (is-EmptyExpr!16482 r!7292))))

(declare-fun e!4000217 () Bool)

(assert (=> d!2072981 (= (matchRSpec!3583 r!7292 s!2326) e!4000217)))

(declare-fun b!6611864 () Bool)

(declare-fun e!4000218 () Bool)

(assert (=> b!6611864 (= e!4000218 e!4000215)))

(declare-fun c!1218595 () Bool)

(assert (=> b!6611864 (= c!1218595 (is-Star!16482 r!7292))))

(declare-fun bm!579206 () Bool)

(declare-fun isEmpty!37905 (List!65746) Bool)

(assert (=> bm!579206 (= call!579211 (isEmpty!37905 s!2326))))

(declare-fun bm!579207 () Bool)

(assert (=> bm!579207 (= call!579212 (Exists!3552 (ite c!1218595 lambda!369260 lambda!369261)))))

(declare-fun b!6611865 () Bool)

(declare-fun e!4000216 () Bool)

(assert (=> b!6611865 (= e!4000216 (= s!2326 (Cons!65622 (c!1218571 r!7292) Nil!65622)))))

(declare-fun b!6611866 () Bool)

(declare-fun e!4000220 () Bool)

(assert (=> b!6611866 (= e!4000218 e!4000220)))

(declare-fun res!2711356 () Bool)

(assert (=> b!6611866 (= res!2711356 (matchRSpec!3583 (regOne!33477 r!7292) s!2326))))

(assert (=> b!6611866 (=> res!2711356 e!4000220)))

(declare-fun b!6611867 () Bool)

(declare-fun c!1218596 () Bool)

(assert (=> b!6611867 (= c!1218596 (is-ElementMatch!16482 r!7292))))

(declare-fun e!4000219 () Bool)

(assert (=> b!6611867 (= e!4000219 e!4000216)))

(assert (=> b!6611868 (= e!4000214 call!579212)))

(declare-fun b!6611869 () Bool)

(declare-fun c!1218594 () Bool)

(assert (=> b!6611869 (= c!1218594 (is-Union!16482 r!7292))))

(assert (=> b!6611869 (= e!4000216 e!4000218)))

(declare-fun b!6611870 () Bool)

(assert (=> b!6611870 (= e!4000217 e!4000219)))

(declare-fun res!2711355 () Bool)

(assert (=> b!6611870 (= res!2711355 (not (is-EmptyLang!16482 r!7292)))))

(assert (=> b!6611870 (=> (not res!2711355) (not e!4000219))))

(declare-fun b!6611871 () Bool)

(assert (=> b!6611871 (= e!4000220 (matchRSpec!3583 (regTwo!33477 r!7292) s!2326))))

(declare-fun b!6611872 () Bool)

(assert (=> b!6611872 (= e!4000217 call!579211)))

(assert (= (and d!2072981 c!1218593) b!6611872))

(assert (= (and d!2072981 (not c!1218593)) b!6611870))

(assert (= (and b!6611870 res!2711355) b!6611867))

(assert (= (and b!6611867 c!1218596) b!6611865))

(assert (= (and b!6611867 (not c!1218596)) b!6611869))

(assert (= (and b!6611869 c!1218594) b!6611866))

(assert (= (and b!6611869 (not c!1218594)) b!6611864))

(assert (= (and b!6611866 (not res!2711356)) b!6611871))

(assert (= (and b!6611864 c!1218595) b!6611863))

(assert (= (and b!6611864 (not c!1218595)) b!6611862))

(assert (= (and b!6611863 (not res!2711354)) b!6611868))

(assert (= (or b!6611868 b!6611862) bm!579207))

(assert (= (or b!6611872 b!6611863) bm!579206))

(declare-fun m!7386154 () Bool)

(assert (=> bm!579206 m!7386154))

(declare-fun m!7386156 () Bool)

(assert (=> bm!579207 m!7386156))

(declare-fun m!7386158 () Bool)

(assert (=> b!6611866 m!7386158))

(declare-fun m!7386160 () Bool)

(assert (=> b!6611871 m!7386160))

(assert (=> b!6611676 d!2072981))

(declare-fun b!6611921 () Bool)

(declare-fun e!4000247 () Bool)

(assert (=> b!6611921 (= e!4000247 (nullable!6475 r!7292))))

(declare-fun bm!579210 () Bool)

(declare-fun call!579215 () Bool)

(assert (=> bm!579210 (= call!579215 (isEmpty!37905 s!2326))))

(declare-fun b!6611922 () Bool)

(declare-fun e!4000253 () Bool)

(declare-fun e!4000248 () Bool)

(assert (=> b!6611922 (= e!4000253 e!4000248)))

(declare-fun res!2711378 () Bool)

(assert (=> b!6611922 (=> (not res!2711378) (not e!4000248))))

(declare-fun lt!2416849 () Bool)

(assert (=> b!6611922 (= res!2711378 (not lt!2416849))))

(declare-fun b!6611924 () Bool)

(declare-fun e!4000249 () Bool)

(declare-fun head!13407 (List!65746) C!33234)

(assert (=> b!6611924 (= e!4000249 (not (= (head!13407 s!2326) (c!1218571 r!7292))))))

(declare-fun b!6611925 () Bool)

(declare-fun e!4000250 () Bool)

(assert (=> b!6611925 (= e!4000250 (not lt!2416849))))

(declare-fun b!6611926 () Bool)

(declare-fun e!4000251 () Bool)

(assert (=> b!6611926 (= e!4000251 (= lt!2416849 call!579215))))

(declare-fun b!6611927 () Bool)

(assert (=> b!6611927 (= e!4000248 e!4000249)))

(declare-fun res!2711383 () Bool)

(assert (=> b!6611927 (=> res!2711383 e!4000249)))

(assert (=> b!6611927 (= res!2711383 call!579215)))

(declare-fun b!6611928 () Bool)

(declare-fun res!2711381 () Bool)

(declare-fun e!4000252 () Bool)

(assert (=> b!6611928 (=> (not res!2711381) (not e!4000252))))

(assert (=> b!6611928 (= res!2711381 (not call!579215))))

(declare-fun b!6611929 () Bool)

(declare-fun res!2711377 () Bool)

(assert (=> b!6611929 (=> res!2711377 e!4000253)))

(assert (=> b!6611929 (= res!2711377 (not (is-ElementMatch!16482 r!7292)))))

(assert (=> b!6611929 (= e!4000250 e!4000253)))

(declare-fun b!6611930 () Bool)

(assert (=> b!6611930 (= e!4000252 (= (head!13407 s!2326) (c!1218571 r!7292)))))

(declare-fun b!6611931 () Bool)

(declare-fun res!2711380 () Bool)

(assert (=> b!6611931 (=> res!2711380 e!4000249)))

(declare-fun tail!12492 (List!65746) List!65746)

(assert (=> b!6611931 (= res!2711380 (not (isEmpty!37905 (tail!12492 s!2326))))))

(declare-fun b!6611932 () Bool)

(declare-fun res!2711384 () Bool)

(assert (=> b!6611932 (=> (not res!2711384) (not e!4000252))))

(assert (=> b!6611932 (= res!2711384 (isEmpty!37905 (tail!12492 s!2326)))))

(declare-fun b!6611933 () Bool)

(declare-fun res!2711382 () Bool)

(assert (=> b!6611933 (=> res!2711382 e!4000253)))

(assert (=> b!6611933 (= res!2711382 e!4000252)))

(declare-fun res!2711379 () Bool)

(assert (=> b!6611933 (=> (not res!2711379) (not e!4000252))))

(assert (=> b!6611933 (= res!2711379 lt!2416849)))

(declare-fun b!6611934 () Bool)

(declare-fun derivativeStep!5162 (Regex!16482 C!33234) Regex!16482)

(assert (=> b!6611934 (= e!4000247 (matchR!8665 (derivativeStep!5162 r!7292 (head!13407 s!2326)) (tail!12492 s!2326)))))

(declare-fun b!6611923 () Bool)

(assert (=> b!6611923 (= e!4000251 e!4000250)))

(declare-fun c!1218611 () Bool)

(assert (=> b!6611923 (= c!1218611 (is-EmptyLang!16482 r!7292))))

(declare-fun d!2072985 () Bool)

(assert (=> d!2072985 e!4000251))

(declare-fun c!1218612 () Bool)

(assert (=> d!2072985 (= c!1218612 (is-EmptyExpr!16482 r!7292))))

(assert (=> d!2072985 (= lt!2416849 e!4000247)))

(declare-fun c!1218613 () Bool)

(assert (=> d!2072985 (= c!1218613 (isEmpty!37905 s!2326))))

(assert (=> d!2072985 (validRegex!8218 r!7292)))

(assert (=> d!2072985 (= (matchR!8665 r!7292 s!2326) lt!2416849)))

(assert (= (and d!2072985 c!1218613) b!6611921))

(assert (= (and d!2072985 (not c!1218613)) b!6611934))

(assert (= (and d!2072985 c!1218612) b!6611926))

(assert (= (and d!2072985 (not c!1218612)) b!6611923))

(assert (= (and b!6611923 c!1218611) b!6611925))

(assert (= (and b!6611923 (not c!1218611)) b!6611929))

(assert (= (and b!6611929 (not res!2711377)) b!6611933))

(assert (= (and b!6611933 res!2711379) b!6611928))

(assert (= (and b!6611928 res!2711381) b!6611932))

(assert (= (and b!6611932 res!2711384) b!6611930))

(assert (= (and b!6611933 (not res!2711382)) b!6611922))

(assert (= (and b!6611922 res!2711378) b!6611927))

(assert (= (and b!6611927 (not res!2711383)) b!6611931))

(assert (= (and b!6611931 (not res!2711380)) b!6611924))

(assert (= (or b!6611926 b!6611927 b!6611928) bm!579210))

(declare-fun m!7386162 () Bool)

(assert (=> b!6611934 m!7386162))

(assert (=> b!6611934 m!7386162))

(declare-fun m!7386164 () Bool)

(assert (=> b!6611934 m!7386164))

(declare-fun m!7386166 () Bool)

(assert (=> b!6611934 m!7386166))

(assert (=> b!6611934 m!7386164))

(assert (=> b!6611934 m!7386166))

(declare-fun m!7386168 () Bool)

(assert (=> b!6611934 m!7386168))

(assert (=> b!6611924 m!7386162))

(assert (=> b!6611930 m!7386162))

(assert (=> bm!579210 m!7386154))

(declare-fun m!7386170 () Bool)

(assert (=> b!6611921 m!7386170))

(assert (=> d!2072985 m!7386154))

(assert (=> d!2072985 m!7386030))

(assert (=> b!6611931 m!7386166))

(assert (=> b!6611931 m!7386166))

(declare-fun m!7386172 () Bool)

(assert (=> b!6611931 m!7386172))

(assert (=> b!6611932 m!7386166))

(assert (=> b!6611932 m!7386166))

(assert (=> b!6611932 m!7386172))

(assert (=> b!6611676 d!2072985))

(declare-fun d!2072987 () Bool)

(assert (=> d!2072987 (= (matchR!8665 r!7292 s!2326) (matchRSpec!3583 r!7292 s!2326))))

(declare-fun lt!2416853 () Unit!159283)

(declare-fun choose!49379 (Regex!16482 List!65746) Unit!159283)

(assert (=> d!2072987 (= lt!2416853 (choose!49379 r!7292 s!2326))))

(assert (=> d!2072987 (validRegex!8218 r!7292)))

(assert (=> d!2072987 (= (mainMatchTheorem!3583 r!7292 s!2326) lt!2416853)))

(declare-fun bs!1695309 () Bool)

(assert (= bs!1695309 d!2072987))

(assert (=> bs!1695309 m!7386038))

(assert (=> bs!1695309 m!7386036))

(declare-fun m!7386192 () Bool)

(assert (=> bs!1695309 m!7386192))

(assert (=> bs!1695309 m!7386030))

(assert (=> b!6611676 d!2072987))

(declare-fun d!2072991 () Bool)

(declare-fun lt!2416858 () Regex!16482)

(assert (=> d!2072991 (validRegex!8218 lt!2416858)))

(assert (=> d!2072991 (= lt!2416858 (generalisedUnion!2326 (unfocusZipperList!1903 zl!343)))))

(assert (=> d!2072991 (= (unfocusZipper!2224 zl!343) lt!2416858)))

(declare-fun bs!1695310 () Bool)

(assert (= bs!1695310 d!2072991))

(declare-fun m!7386194 () Bool)

(assert (=> bs!1695310 m!7386194))

(assert (=> bs!1695310 m!7386016))

(assert (=> bs!1695310 m!7386016))

(assert (=> bs!1695310 m!7386018))

(assert (=> b!6611696 d!2072991))

(declare-fun b!6611968 () Bool)

(declare-fun e!4000280 () Bool)

(declare-fun lt!2416865 () Regex!16482)

(declare-fun head!13408 (List!65745) Regex!16482)

(assert (=> b!6611968 (= e!4000280 (= lt!2416865 (head!13408 (exprs!6366 (h!72071 zl!343)))))))

(declare-fun d!2072993 () Bool)

(declare-fun e!4000279 () Bool)

(assert (=> d!2072993 e!4000279))

(declare-fun res!2711395 () Bool)

(assert (=> d!2072993 (=> (not res!2711395) (not e!4000279))))

(assert (=> d!2072993 (= res!2711395 (validRegex!8218 lt!2416865))))

(declare-fun e!4000277 () Regex!16482)

(assert (=> d!2072993 (= lt!2416865 e!4000277)))

(declare-fun c!1218628 () Bool)

(declare-fun e!4000275 () Bool)

(assert (=> d!2072993 (= c!1218628 e!4000275)))

(declare-fun res!2711394 () Bool)

(assert (=> d!2072993 (=> (not res!2711394) (not e!4000275))))

(assert (=> d!2072993 (= res!2711394 (is-Cons!65621 (exprs!6366 (h!72071 zl!343))))))

(declare-fun lambda!369267 () Int)

(declare-fun forall!15678 (List!65745 Int) Bool)

(assert (=> d!2072993 (forall!15678 (exprs!6366 (h!72071 zl!343)) lambda!369267)))

(assert (=> d!2072993 (= (generalisedConcat!2079 (exprs!6366 (h!72071 zl!343))) lt!2416865)))

(declare-fun b!6611969 () Bool)

(declare-fun e!4000276 () Bool)

(assert (=> b!6611969 (= e!4000279 e!4000276)))

(declare-fun c!1218627 () Bool)

(assert (=> b!6611969 (= c!1218627 (isEmpty!37902 (exprs!6366 (h!72071 zl!343))))))

(declare-fun b!6611970 () Bool)

(assert (=> b!6611970 (= e!4000275 (isEmpty!37902 (t!379399 (exprs!6366 (h!72071 zl!343)))))))

(declare-fun b!6611971 () Bool)

(declare-fun e!4000278 () Regex!16482)

(assert (=> b!6611971 (= e!4000278 EmptyExpr!16482)))

(declare-fun b!6611972 () Bool)

(declare-fun isEmptyExpr!1856 (Regex!16482) Bool)

(assert (=> b!6611972 (= e!4000276 (isEmptyExpr!1856 lt!2416865))))

(declare-fun b!6611973 () Bool)

(declare-fun isConcat!1379 (Regex!16482) Bool)

(assert (=> b!6611973 (= e!4000280 (isConcat!1379 lt!2416865))))

(declare-fun b!6611974 () Bool)

(assert (=> b!6611974 (= e!4000277 (h!72069 (exprs!6366 (h!72071 zl!343))))))

(declare-fun b!6611975 () Bool)

(assert (=> b!6611975 (= e!4000276 e!4000280)))

(declare-fun c!1218626 () Bool)

(declare-fun tail!12493 (List!65745) List!65745)

(assert (=> b!6611975 (= c!1218626 (isEmpty!37902 (tail!12493 (exprs!6366 (h!72071 zl!343)))))))

(declare-fun b!6611976 () Bool)

(assert (=> b!6611976 (= e!4000278 (Concat!25327 (h!72069 (exprs!6366 (h!72071 zl!343))) (generalisedConcat!2079 (t!379399 (exprs!6366 (h!72071 zl!343))))))))

(declare-fun b!6611977 () Bool)

(assert (=> b!6611977 (= e!4000277 e!4000278)))

(declare-fun c!1218629 () Bool)

(assert (=> b!6611977 (= c!1218629 (is-Cons!65621 (exprs!6366 (h!72071 zl!343))))))

(assert (= (and d!2072993 res!2711394) b!6611970))

(assert (= (and d!2072993 c!1218628) b!6611974))

(assert (= (and d!2072993 (not c!1218628)) b!6611977))

(assert (= (and b!6611977 c!1218629) b!6611976))

(assert (= (and b!6611977 (not c!1218629)) b!6611971))

(assert (= (and d!2072993 res!2711395) b!6611969))

(assert (= (and b!6611969 c!1218627) b!6611972))

(assert (= (and b!6611969 (not c!1218627)) b!6611975))

(assert (= (and b!6611975 c!1218626) b!6611968))

(assert (= (and b!6611975 (not c!1218626)) b!6611973))

(declare-fun m!7386204 () Bool)

(assert (=> b!6611972 m!7386204))

(declare-fun m!7386206 () Bool)

(assert (=> d!2072993 m!7386206))

(declare-fun m!7386208 () Bool)

(assert (=> d!2072993 m!7386208))

(declare-fun m!7386210 () Bool)

(assert (=> b!6611968 m!7386210))

(declare-fun m!7386212 () Bool)

(assert (=> b!6611969 m!7386212))

(declare-fun m!7386214 () Bool)

(assert (=> b!6611975 m!7386214))

(assert (=> b!6611975 m!7386214))

(declare-fun m!7386216 () Bool)

(assert (=> b!6611975 m!7386216))

(assert (=> b!6611970 m!7386024))

(declare-fun m!7386218 () Bool)

(assert (=> b!6611973 m!7386218))

(declare-fun m!7386220 () Bool)

(assert (=> b!6611976 m!7386220))

(assert (=> b!6611686 d!2072993))

(declare-fun bs!1695312 () Bool)

(declare-fun d!2073001 () Bool)

(assert (= bs!1695312 (and d!2073001 d!2072993)))

(declare-fun lambda!369270 () Int)

(assert (=> bs!1695312 (= lambda!369270 lambda!369267)))

(assert (=> d!2073001 (= (inv!84453 setElem!45169) (forall!15678 (exprs!6366 setElem!45169) lambda!369270))))

(declare-fun bs!1695313 () Bool)

(assert (= bs!1695313 d!2073001))

(declare-fun m!7386222 () Bool)

(assert (=> bs!1695313 m!7386222))

(assert (=> setNonEmpty!45169 d!2073001))

(declare-fun bs!1695314 () Bool)

(declare-fun d!2073003 () Bool)

(assert (= bs!1695314 (and d!2073003 d!2072993)))

(declare-fun lambda!369271 () Int)

(assert (=> bs!1695314 (= lambda!369271 lambda!369267)))

(declare-fun bs!1695315 () Bool)

(assert (= bs!1695315 (and d!2073003 d!2073001)))

(assert (=> bs!1695315 (= lambda!369271 lambda!369270)))

(assert (=> d!2073003 (= (inv!84453 (h!72071 zl!343)) (forall!15678 (exprs!6366 (h!72071 zl!343)) lambda!369271))))

(declare-fun bs!1695316 () Bool)

(assert (= bs!1695316 d!2073003))

(declare-fun m!7386224 () Bool)

(assert (=> bs!1695316 m!7386224))

(assert (=> b!6611690 d!2073003))

(declare-fun b!6611978 () Bool)

(declare-fun e!4000283 () Bool)

(declare-fun e!4000287 () Bool)

(assert (=> b!6611978 (= e!4000283 e!4000287)))

(declare-fun res!2711397 () Bool)

(assert (=> b!6611978 (=> (not res!2711397) (not e!4000287))))

(declare-fun call!579218 () Bool)

(assert (=> b!6611978 (= res!2711397 call!579218)))

(declare-fun bm!579211 () Bool)

(declare-fun call!579216 () Bool)

(assert (=> bm!579211 (= call!579218 call!579216)))

(declare-fun b!6611979 () Bool)

(declare-fun e!4000285 () Bool)

(declare-fun e!4000282 () Bool)

(assert (=> b!6611979 (= e!4000285 e!4000282)))

(declare-fun c!1218631 () Bool)

(assert (=> b!6611979 (= c!1218631 (is-Union!16482 r!7292))))

(declare-fun bm!579212 () Bool)

(declare-fun c!1218630 () Bool)

(assert (=> bm!579212 (= call!579216 (validRegex!8218 (ite c!1218630 (reg!16811 r!7292) (ite c!1218631 (regOne!33477 r!7292) (regOne!33476 r!7292)))))))

(declare-fun b!6611980 () Bool)

(declare-fun e!4000284 () Bool)

(declare-fun call!579217 () Bool)

(assert (=> b!6611980 (= e!4000284 call!579217)))

(declare-fun b!6611981 () Bool)

(declare-fun e!4000286 () Bool)

(assert (=> b!6611981 (= e!4000286 e!4000285)))

(assert (=> b!6611981 (= c!1218630 (is-Star!16482 r!7292))))

(declare-fun d!2073005 () Bool)

(declare-fun res!2711399 () Bool)

(assert (=> d!2073005 (=> res!2711399 e!4000286)))

(assert (=> d!2073005 (= res!2711399 (is-ElementMatch!16482 r!7292))))

(assert (=> d!2073005 (= (validRegex!8218 r!7292) e!4000286)))

(declare-fun b!6611982 () Bool)

(declare-fun e!4000281 () Bool)

(assert (=> b!6611982 (= e!4000281 call!579216)))

(declare-fun bm!579213 () Bool)

(assert (=> bm!579213 (= call!579217 (validRegex!8218 (ite c!1218631 (regTwo!33477 r!7292) (regTwo!33476 r!7292))))))

(declare-fun b!6611983 () Bool)

(assert (=> b!6611983 (= e!4000287 call!579217)))

(declare-fun b!6611984 () Bool)

(declare-fun res!2711398 () Bool)

(assert (=> b!6611984 (=> (not res!2711398) (not e!4000284))))

(assert (=> b!6611984 (= res!2711398 call!579218)))

(assert (=> b!6611984 (= e!4000282 e!4000284)))

(declare-fun b!6611985 () Bool)

(declare-fun res!2711400 () Bool)

(assert (=> b!6611985 (=> res!2711400 e!4000283)))

(assert (=> b!6611985 (= res!2711400 (not (is-Concat!25327 r!7292)))))

(assert (=> b!6611985 (= e!4000282 e!4000283)))

(declare-fun b!6611986 () Bool)

(assert (=> b!6611986 (= e!4000285 e!4000281)))

(declare-fun res!2711396 () Bool)

(assert (=> b!6611986 (= res!2711396 (not (nullable!6475 (reg!16811 r!7292))))))

(assert (=> b!6611986 (=> (not res!2711396) (not e!4000281))))

(assert (= (and d!2073005 (not res!2711399)) b!6611981))

(assert (= (and b!6611981 c!1218630) b!6611986))

(assert (= (and b!6611981 (not c!1218630)) b!6611979))

(assert (= (and b!6611986 res!2711396) b!6611982))

(assert (= (and b!6611979 c!1218631) b!6611984))

(assert (= (and b!6611979 (not c!1218631)) b!6611985))

(assert (= (and b!6611984 res!2711398) b!6611980))

(assert (= (and b!6611985 (not res!2711400)) b!6611978))

(assert (= (and b!6611978 res!2711397) b!6611983))

(assert (= (or b!6611980 b!6611983) bm!579213))

(assert (= (or b!6611984 b!6611978) bm!579211))

(assert (= (or b!6611982 bm!579211) bm!579212))

(declare-fun m!7386226 () Bool)

(assert (=> bm!579212 m!7386226))

(declare-fun m!7386228 () Bool)

(assert (=> bm!579213 m!7386228))

(declare-fun m!7386230 () Bool)

(assert (=> b!6611986 m!7386230))

(assert (=> start!646256 d!2073005))

(declare-fun e!4000292 () Bool)

(declare-fun d!2073007 () Bool)

(assert (=> d!2073007 (= (matchZipper!2494 (set.union lt!2416804 lt!2416798) (t!379400 s!2326)) e!4000292)))

(declare-fun res!2711405 () Bool)

(assert (=> d!2073007 (=> res!2711405 e!4000292)))

(assert (=> d!2073007 (= res!2711405 (matchZipper!2494 lt!2416804 (t!379400 s!2326)))))

(declare-fun lt!2416870 () Unit!159283)

(declare-fun choose!49380 ((Set Context!11732) (Set Context!11732) List!65746) Unit!159283)

(assert (=> d!2073007 (= lt!2416870 (choose!49380 lt!2416804 lt!2416798 (t!379400 s!2326)))))

(assert (=> d!2073007 (= (lemmaZipperConcatMatchesSameAsBothZippers!1313 lt!2416804 lt!2416798 (t!379400 s!2326)) lt!2416870)))

(declare-fun b!6611991 () Bool)

(assert (=> b!6611991 (= e!4000292 (matchZipper!2494 lt!2416798 (t!379400 s!2326)))))

(assert (= (and d!2073007 (not res!2711405)) b!6611991))

(assert (=> d!2073007 m!7386080))

(assert (=> d!2073007 m!7386054))

(declare-fun m!7386232 () Bool)

(assert (=> d!2073007 m!7386232))

(assert (=> b!6611991 m!7386060))

(assert (=> b!6611682 d!2073007))

(declare-fun d!2073009 () Bool)

(declare-fun c!1218634 () Bool)

(assert (=> d!2073009 (= c!1218634 (isEmpty!37905 (t!379400 s!2326)))))

(declare-fun e!4000296 () Bool)

(assert (=> d!2073009 (= (matchZipper!2494 lt!2416804 (t!379400 s!2326)) e!4000296)))

(declare-fun b!6611997 () Bool)

(declare-fun nullableZipper!2223 ((Set Context!11732)) Bool)

(assert (=> b!6611997 (= e!4000296 (nullableZipper!2223 lt!2416804))))

(declare-fun b!6611998 () Bool)

(declare-fun derivationStepZipper!2448 ((Set Context!11732) C!33234) (Set Context!11732))

(assert (=> b!6611998 (= e!4000296 (matchZipper!2494 (derivationStepZipper!2448 lt!2416804 (head!13407 (t!379400 s!2326))) (tail!12492 (t!379400 s!2326))))))

(assert (= (and d!2073009 c!1218634) b!6611997))

(assert (= (and d!2073009 (not c!1218634)) b!6611998))

(declare-fun m!7386236 () Bool)

(assert (=> d!2073009 m!7386236))

(declare-fun m!7386238 () Bool)

(assert (=> b!6611997 m!7386238))

(declare-fun m!7386240 () Bool)

(assert (=> b!6611998 m!7386240))

(assert (=> b!6611998 m!7386240))

(declare-fun m!7386242 () Bool)

(assert (=> b!6611998 m!7386242))

(declare-fun m!7386244 () Bool)

(assert (=> b!6611998 m!7386244))

(assert (=> b!6611998 m!7386242))

(assert (=> b!6611998 m!7386244))

(declare-fun m!7386246 () Bool)

(assert (=> b!6611998 m!7386246))

(assert (=> b!6611682 d!2073009))

(declare-fun d!2073013 () Bool)

(declare-fun c!1218635 () Bool)

(assert (=> d!2073013 (= c!1218635 (isEmpty!37905 (t!379400 s!2326)))))

(declare-fun e!4000297 () Bool)

(assert (=> d!2073013 (= (matchZipper!2494 (set.union lt!2416804 lt!2416798) (t!379400 s!2326)) e!4000297)))

(declare-fun b!6611999 () Bool)

(assert (=> b!6611999 (= e!4000297 (nullableZipper!2223 (set.union lt!2416804 lt!2416798)))))

(declare-fun b!6612000 () Bool)

(assert (=> b!6612000 (= e!4000297 (matchZipper!2494 (derivationStepZipper!2448 (set.union lt!2416804 lt!2416798) (head!13407 (t!379400 s!2326))) (tail!12492 (t!379400 s!2326))))))

(assert (= (and d!2073013 c!1218635) b!6611999))

(assert (= (and d!2073013 (not c!1218635)) b!6612000))

(assert (=> d!2073013 m!7386236))

(declare-fun m!7386248 () Bool)

(assert (=> b!6611999 m!7386248))

(assert (=> b!6612000 m!7386240))

(assert (=> b!6612000 m!7386240))

(declare-fun m!7386250 () Bool)

(assert (=> b!6612000 m!7386250))

(assert (=> b!6612000 m!7386244))

(assert (=> b!6612000 m!7386250))

(assert (=> b!6612000 m!7386244))

(declare-fun m!7386252 () Bool)

(assert (=> b!6612000 m!7386252))

(assert (=> b!6611682 d!2073013))

(assert (=> b!6611672 d!2073009))

(declare-fun d!2073015 () Bool)

(assert (=> d!2073015 (not (matchZipper!2494 lt!2416804 (t!379400 s!2326)))))

(declare-fun lt!2416874 () Unit!159283)

(declare-fun choose!49381 ((Set Context!11732) List!65746) Unit!159283)

(assert (=> d!2073015 (= lt!2416874 (choose!49381 lt!2416804 (t!379400 s!2326)))))

(assert (=> d!2073015 (= lt!2416804 (as set.empty (Set Context!11732)))))

(assert (=> d!2073015 (= (lemmaEmptyZipperMatchesNothing!77 lt!2416804 (t!379400 s!2326)) lt!2416874)))

(declare-fun bs!1695317 () Bool)

(assert (= bs!1695317 d!2073015))

(assert (=> bs!1695317 m!7386054))

(declare-fun m!7386254 () Bool)

(assert (=> bs!1695317 m!7386254))

(assert (=> b!6611672 d!2073015))

(declare-fun d!2073017 () Bool)

(declare-fun nullableFct!2397 (Regex!16482) Bool)

(assert (=> d!2073017 (= (nullable!6475 (h!72069 (exprs!6366 (h!72071 zl!343)))) (nullableFct!2397 (h!72069 (exprs!6366 (h!72071 zl!343)))))))

(declare-fun bs!1695318 () Bool)

(assert (= bs!1695318 d!2073017))

(declare-fun m!7386256 () Bool)

(assert (=> bs!1695318 m!7386256))

(assert (=> b!6611691 d!2073017))

(declare-fun b!6612019 () Bool)

(declare-fun e!4000309 () Bool)

(assert (=> b!6612019 (= e!4000309 (nullable!6475 (h!72069 (exprs!6366 (Context!11733 (Cons!65621 (h!72069 (exprs!6366 (h!72071 zl!343))) (t!379399 (exprs!6366 (h!72071 zl!343)))))))))))

(declare-fun e!4000310 () (Set Context!11732))

(declare-fun call!579221 () (Set Context!11732))

(declare-fun b!6612020 () Bool)

(assert (=> b!6612020 (= e!4000310 (set.union call!579221 (derivationStepZipperUp!1656 (Context!11733 (t!379399 (exprs!6366 (Context!11733 (Cons!65621 (h!72069 (exprs!6366 (h!72071 zl!343))) (t!379399 (exprs!6366 (h!72071 zl!343)))))))) (h!72070 s!2326))))))

(declare-fun bm!579216 () Bool)

(assert (=> bm!579216 (= call!579221 (derivationStepZipperDown!1730 (h!72069 (exprs!6366 (Context!11733 (Cons!65621 (h!72069 (exprs!6366 (h!72071 zl!343))) (t!379399 (exprs!6366 (h!72071 zl!343))))))) (Context!11733 (t!379399 (exprs!6366 (Context!11733 (Cons!65621 (h!72069 (exprs!6366 (h!72071 zl!343))) (t!379399 (exprs!6366 (h!72071 zl!343)))))))) (h!72070 s!2326)))))

(declare-fun b!6612021 () Bool)

(declare-fun e!4000308 () (Set Context!11732))

(assert (=> b!6612021 (= e!4000308 (as set.empty (Set Context!11732)))))

(declare-fun d!2073019 () Bool)

(declare-fun c!1218644 () Bool)

(assert (=> d!2073019 (= c!1218644 e!4000309)))

(declare-fun res!2711409 () Bool)

(assert (=> d!2073019 (=> (not res!2711409) (not e!4000309))))

(assert (=> d!2073019 (= res!2711409 (is-Cons!65621 (exprs!6366 (Context!11733 (Cons!65621 (h!72069 (exprs!6366 (h!72071 zl!343))) (t!379399 (exprs!6366 (h!72071 zl!343))))))))))

(assert (=> d!2073019 (= (derivationStepZipperUp!1656 (Context!11733 (Cons!65621 (h!72069 (exprs!6366 (h!72071 zl!343))) (t!379399 (exprs!6366 (h!72071 zl!343))))) (h!72070 s!2326)) e!4000310)))

(declare-fun b!6612022 () Bool)

(assert (=> b!6612022 (= e!4000310 e!4000308)))

(declare-fun c!1218645 () Bool)

(assert (=> b!6612022 (= c!1218645 (is-Cons!65621 (exprs!6366 (Context!11733 (Cons!65621 (h!72069 (exprs!6366 (h!72071 zl!343))) (t!379399 (exprs!6366 (h!72071 zl!343))))))))))

(declare-fun b!6612023 () Bool)

(assert (=> b!6612023 (= e!4000308 call!579221)))

(assert (= (and d!2073019 res!2711409) b!6612019))

(assert (= (and d!2073019 c!1218644) b!6612020))

(assert (= (and d!2073019 (not c!1218644)) b!6612022))

(assert (= (and b!6612022 c!1218645) b!6612023))

(assert (= (and b!6612022 (not c!1218645)) b!6612021))

(assert (= (or b!6612020 b!6612023) bm!579216))

(declare-fun m!7386276 () Bool)

(assert (=> b!6612019 m!7386276))

(declare-fun m!7386278 () Bool)

(assert (=> b!6612020 m!7386278))

(declare-fun m!7386280 () Bool)

(assert (=> bm!579216 m!7386280))

(assert (=> b!6611691 d!2073019))

(declare-fun b!6612024 () Bool)

(declare-fun e!4000312 () Bool)

(assert (=> b!6612024 (= e!4000312 (nullable!6475 (h!72069 (exprs!6366 lt!2416795))))))

(declare-fun b!6612025 () Bool)

(declare-fun call!579222 () (Set Context!11732))

(declare-fun e!4000313 () (Set Context!11732))

(assert (=> b!6612025 (= e!4000313 (set.union call!579222 (derivationStepZipperUp!1656 (Context!11733 (t!379399 (exprs!6366 lt!2416795))) (h!72070 s!2326))))))

(declare-fun bm!579217 () Bool)

(assert (=> bm!579217 (= call!579222 (derivationStepZipperDown!1730 (h!72069 (exprs!6366 lt!2416795)) (Context!11733 (t!379399 (exprs!6366 lt!2416795))) (h!72070 s!2326)))))

(declare-fun b!6612026 () Bool)

(declare-fun e!4000311 () (Set Context!11732))

(assert (=> b!6612026 (= e!4000311 (as set.empty (Set Context!11732)))))

(declare-fun d!2073025 () Bool)

(declare-fun c!1218646 () Bool)

(assert (=> d!2073025 (= c!1218646 e!4000312)))

(declare-fun res!2711410 () Bool)

(assert (=> d!2073025 (=> (not res!2711410) (not e!4000312))))

(assert (=> d!2073025 (= res!2711410 (is-Cons!65621 (exprs!6366 lt!2416795)))))

(assert (=> d!2073025 (= (derivationStepZipperUp!1656 lt!2416795 (h!72070 s!2326)) e!4000313)))

(declare-fun b!6612027 () Bool)

(assert (=> b!6612027 (= e!4000313 e!4000311)))

(declare-fun c!1218647 () Bool)

(assert (=> b!6612027 (= c!1218647 (is-Cons!65621 (exprs!6366 lt!2416795)))))

(declare-fun b!6612028 () Bool)

(assert (=> b!6612028 (= e!4000311 call!579222)))

(assert (= (and d!2073025 res!2711410) b!6612024))

(assert (= (and d!2073025 c!1218646) b!6612025))

(assert (= (and d!2073025 (not c!1218646)) b!6612027))

(assert (= (and b!6612027 c!1218647) b!6612028))

(assert (= (and b!6612027 (not c!1218647)) b!6612026))

(assert (= (or b!6612025 b!6612028) bm!579217))

(declare-fun m!7386282 () Bool)

(assert (=> b!6612024 m!7386282))

(declare-fun m!7386284 () Bool)

(assert (=> b!6612025 m!7386284))

(declare-fun m!7386286 () Bool)

(assert (=> bm!579217 m!7386286))

(assert (=> b!6611691 d!2073025))

(declare-fun b!6612029 () Bool)

(declare-fun e!4000315 () Bool)

(assert (=> b!6612029 (= e!4000315 (nullable!6475 (h!72069 (exprs!6366 (h!72071 zl!343)))))))

(declare-fun b!6612030 () Bool)

(declare-fun e!4000316 () (Set Context!11732))

(declare-fun call!579223 () (Set Context!11732))

(assert (=> b!6612030 (= e!4000316 (set.union call!579223 (derivationStepZipperUp!1656 (Context!11733 (t!379399 (exprs!6366 (h!72071 zl!343)))) (h!72070 s!2326))))))

(declare-fun bm!579218 () Bool)

(assert (=> bm!579218 (= call!579223 (derivationStepZipperDown!1730 (h!72069 (exprs!6366 (h!72071 zl!343))) (Context!11733 (t!379399 (exprs!6366 (h!72071 zl!343)))) (h!72070 s!2326)))))

(declare-fun b!6612031 () Bool)

(declare-fun e!4000314 () (Set Context!11732))

(assert (=> b!6612031 (= e!4000314 (as set.empty (Set Context!11732)))))

(declare-fun d!2073027 () Bool)

(declare-fun c!1218648 () Bool)

(assert (=> d!2073027 (= c!1218648 e!4000315)))

(declare-fun res!2711411 () Bool)

(assert (=> d!2073027 (=> (not res!2711411) (not e!4000315))))

(assert (=> d!2073027 (= res!2711411 (is-Cons!65621 (exprs!6366 (h!72071 zl!343))))))

(assert (=> d!2073027 (= (derivationStepZipperUp!1656 (h!72071 zl!343) (h!72070 s!2326)) e!4000316)))

(declare-fun b!6612032 () Bool)

(assert (=> b!6612032 (= e!4000316 e!4000314)))

(declare-fun c!1218649 () Bool)

(assert (=> b!6612032 (= c!1218649 (is-Cons!65621 (exprs!6366 (h!72071 zl!343))))))

(declare-fun b!6612033 () Bool)

(assert (=> b!6612033 (= e!4000314 call!579223)))

(assert (= (and d!2073027 res!2711411) b!6612029))

(assert (= (and d!2073027 c!1218648) b!6612030))

(assert (= (and d!2073027 (not c!1218648)) b!6612032))

(assert (= (and b!6612032 c!1218649) b!6612033))

(assert (= (and b!6612032 (not c!1218649)) b!6612031))

(assert (= (or b!6612030 b!6612033) bm!579218))

(assert (=> b!6612029 m!7386072))

(declare-fun m!7386288 () Bool)

(assert (=> b!6612030 m!7386288))

(declare-fun m!7386290 () Bool)

(assert (=> bm!579218 m!7386290))

(assert (=> b!6611691 d!2073027))

(declare-fun b!6612074 () Bool)

(declare-fun e!4000347 () (Set Context!11732))

(declare-fun e!4000345 () (Set Context!11732))

(assert (=> b!6612074 (= e!4000347 e!4000345)))

(declare-fun c!1218667 () Bool)

(assert (=> b!6612074 (= c!1218667 (is-Union!16482 (h!72069 (exprs!6366 (h!72071 zl!343)))))))

(declare-fun bm!579231 () Bool)

(declare-fun call!579238 () (Set Context!11732))

(declare-fun call!579237 () (Set Context!11732))

(assert (=> bm!579231 (= call!579238 call!579237)))

(declare-fun bm!579232 () Bool)

(declare-fun call!579239 () List!65745)

(declare-fun c!1218666 () Bool)

(declare-fun call!579240 () (Set Context!11732))

(declare-fun c!1218668 () Bool)

(assert (=> bm!579232 (= call!579240 (derivationStepZipperDown!1730 (ite c!1218667 (regOne!33477 (h!72069 (exprs!6366 (h!72071 zl!343)))) (ite c!1218666 (regTwo!33476 (h!72069 (exprs!6366 (h!72071 zl!343)))) (ite c!1218668 (regOne!33476 (h!72069 (exprs!6366 (h!72071 zl!343)))) (reg!16811 (h!72069 (exprs!6366 (h!72071 zl!343))))))) (ite (or c!1218667 c!1218666) lt!2416795 (Context!11733 call!579239)) (h!72070 s!2326)))))

(declare-fun d!2073029 () Bool)

(declare-fun c!1218664 () Bool)

(assert (=> d!2073029 (= c!1218664 (and (is-ElementMatch!16482 (h!72069 (exprs!6366 (h!72071 zl!343)))) (= (c!1218571 (h!72069 (exprs!6366 (h!72071 zl!343)))) (h!72070 s!2326))))))

(assert (=> d!2073029 (= (derivationStepZipperDown!1730 (h!72069 (exprs!6366 (h!72071 zl!343))) lt!2416795 (h!72070 s!2326)) e!4000347)))

(declare-fun b!6612075 () Bool)

(declare-fun e!4000344 () (Set Context!11732))

(declare-fun e!4000346 () (Set Context!11732))

(assert (=> b!6612075 (= e!4000344 e!4000346)))

(assert (=> b!6612075 (= c!1218668 (is-Concat!25327 (h!72069 (exprs!6366 (h!72071 zl!343)))))))

(declare-fun bm!579233 () Bool)

(assert (=> bm!579233 (= call!579237 call!579240)))

(declare-fun b!6612076 () Bool)

(declare-fun e!4000343 () Bool)

(assert (=> b!6612076 (= e!4000343 (nullable!6475 (regOne!33476 (h!72069 (exprs!6366 (h!72071 zl!343))))))))

(declare-fun b!6612077 () Bool)

(declare-fun call!579236 () (Set Context!11732))

(assert (=> b!6612077 (= e!4000344 (set.union call!579236 call!579237))))

(declare-fun b!6612078 () Bool)

(assert (=> b!6612078 (= e!4000346 call!579238)))

(declare-fun b!6612079 () Bool)

(assert (=> b!6612079 (= c!1218666 e!4000343)))

(declare-fun res!2711424 () Bool)

(assert (=> b!6612079 (=> (not res!2711424) (not e!4000343))))

(assert (=> b!6612079 (= res!2711424 (is-Concat!25327 (h!72069 (exprs!6366 (h!72071 zl!343)))))))

(assert (=> b!6612079 (= e!4000345 e!4000344)))

(declare-fun call!579241 () List!65745)

(declare-fun bm!579234 () Bool)

(assert (=> bm!579234 (= call!579236 (derivationStepZipperDown!1730 (ite c!1218667 (regTwo!33477 (h!72069 (exprs!6366 (h!72071 zl!343)))) (regOne!33476 (h!72069 (exprs!6366 (h!72071 zl!343))))) (ite c!1218667 lt!2416795 (Context!11733 call!579241)) (h!72070 s!2326)))))

(declare-fun bm!579235 () Bool)

(assert (=> bm!579235 (= call!579239 call!579241)))

(declare-fun b!6612080 () Bool)

(assert (=> b!6612080 (= e!4000347 (set.insert lt!2416795 (as set.empty (Set Context!11732))))))

(declare-fun b!6612081 () Bool)

(assert (=> b!6612081 (= e!4000345 (set.union call!579240 call!579236))))

(declare-fun b!6612082 () Bool)

(declare-fun e!4000348 () (Set Context!11732))

(assert (=> b!6612082 (= e!4000348 (as set.empty (Set Context!11732)))))

(declare-fun bm!579236 () Bool)

(declare-fun $colon$colon!2319 (List!65745 Regex!16482) List!65745)

(assert (=> bm!579236 (= call!579241 ($colon$colon!2319 (exprs!6366 lt!2416795) (ite (or c!1218666 c!1218668) (regTwo!33476 (h!72069 (exprs!6366 (h!72071 zl!343)))) (h!72069 (exprs!6366 (h!72071 zl!343))))))))

(declare-fun b!6612083 () Bool)

(assert (=> b!6612083 (= e!4000348 call!579238)))

(declare-fun b!6612084 () Bool)

(declare-fun c!1218665 () Bool)

(assert (=> b!6612084 (= c!1218665 (is-Star!16482 (h!72069 (exprs!6366 (h!72071 zl!343)))))))

(assert (=> b!6612084 (= e!4000346 e!4000348)))

(assert (= (and d!2073029 c!1218664) b!6612080))

(assert (= (and d!2073029 (not c!1218664)) b!6612074))

(assert (= (and b!6612074 c!1218667) b!6612081))

(assert (= (and b!6612074 (not c!1218667)) b!6612079))

(assert (= (and b!6612079 res!2711424) b!6612076))

(assert (= (and b!6612079 c!1218666) b!6612077))

(assert (= (and b!6612079 (not c!1218666)) b!6612075))

(assert (= (and b!6612075 c!1218668) b!6612078))

(assert (= (and b!6612075 (not c!1218668)) b!6612084))

(assert (= (and b!6612084 c!1218665) b!6612083))

(assert (= (and b!6612084 (not c!1218665)) b!6612082))

(assert (= (or b!6612078 b!6612083) bm!579235))

(assert (= (or b!6612078 b!6612083) bm!579231))

(assert (= (or b!6612077 bm!579235) bm!579236))

(assert (= (or b!6612077 bm!579231) bm!579233))

(assert (= (or b!6612081 b!6612077) bm!579234))

(assert (= (or b!6612081 bm!579233) bm!579232))

(declare-fun m!7386294 () Bool)

(assert (=> bm!579232 m!7386294))

(declare-fun m!7386296 () Bool)

(assert (=> b!6612080 m!7386296))

(declare-fun m!7386298 () Bool)

(assert (=> bm!579234 m!7386298))

(declare-fun m!7386300 () Bool)

(assert (=> bm!579236 m!7386300))

(declare-fun m!7386302 () Bool)

(assert (=> b!6612076 m!7386302))

(assert (=> b!6611691 d!2073029))

(declare-fun d!2073033 () Bool)

(declare-fun choose!49382 ((Set Context!11732) Int) (Set Context!11732))

(assert (=> d!2073033 (= (flatMap!1987 z!1189 lambda!369244) (choose!49382 z!1189 lambda!369244))))

(declare-fun bs!1695320 () Bool)

(assert (= bs!1695320 d!2073033))

(declare-fun m!7386304 () Bool)

(assert (=> bs!1695320 m!7386304))

(assert (=> b!6611691 d!2073033))

(declare-fun d!2073035 () Bool)

(declare-fun dynLambda!26133 (Int Context!11732) (Set Context!11732))

(assert (=> d!2073035 (= (flatMap!1987 z!1189 lambda!369244) (dynLambda!26133 lambda!369244 (h!72071 zl!343)))))

(declare-fun lt!2416880 () Unit!159283)

(declare-fun choose!49383 ((Set Context!11732) Context!11732 Int) Unit!159283)

(assert (=> d!2073035 (= lt!2416880 (choose!49383 z!1189 (h!72071 zl!343) lambda!369244))))

(assert (=> d!2073035 (= z!1189 (set.insert (h!72071 zl!343) (as set.empty (Set Context!11732))))))

(assert (=> d!2073035 (= (lemmaFlatMapOnSingletonSet!1513 z!1189 (h!72071 zl!343) lambda!369244) lt!2416880)))

(declare-fun b_lambda!250145 () Bool)

(assert (=> (not b_lambda!250145) (not d!2073035)))

(declare-fun bs!1695321 () Bool)

(assert (= bs!1695321 d!2073035))

(assert (=> bs!1695321 m!7386074))

(declare-fun m!7386306 () Bool)

(assert (=> bs!1695321 m!7386306))

(declare-fun m!7386308 () Bool)

(assert (=> bs!1695321 m!7386308))

(declare-fun m!7386310 () Bool)

(assert (=> bs!1695321 m!7386310))

(assert (=> b!6611691 d!2073035))

(declare-fun bs!1695323 () Bool)

(declare-fun d!2073037 () Bool)

(assert (= bs!1695323 (and d!2073037 d!2072993)))

(declare-fun lambda!369274 () Int)

(assert (=> bs!1695323 (= lambda!369274 lambda!369267)))

(declare-fun bs!1695324 () Bool)

(assert (= bs!1695324 (and d!2073037 d!2073001)))

(assert (=> bs!1695324 (= lambda!369274 lambda!369270)))

(declare-fun bs!1695325 () Bool)

(assert (= bs!1695325 (and d!2073037 d!2073003)))

(assert (=> bs!1695325 (= lambda!369274 lambda!369271)))

(declare-fun b!6612114 () Bool)

(declare-fun e!4000369 () Bool)

(declare-fun lt!2416883 () Regex!16482)

(assert (=> b!6612114 (= e!4000369 (= lt!2416883 (head!13408 (unfocusZipperList!1903 zl!343))))))

(declare-fun e!4000370 () Bool)

(assert (=> d!2073037 e!4000370))

(declare-fun res!2711434 () Bool)

(assert (=> d!2073037 (=> (not res!2711434) (not e!4000370))))

(assert (=> d!2073037 (= res!2711434 (validRegex!8218 lt!2416883))))

(declare-fun e!4000368 () Regex!16482)

(assert (=> d!2073037 (= lt!2416883 e!4000368)))

(declare-fun c!1218681 () Bool)

(declare-fun e!4000373 () Bool)

(assert (=> d!2073037 (= c!1218681 e!4000373)))

(declare-fun res!2711435 () Bool)

(assert (=> d!2073037 (=> (not res!2711435) (not e!4000373))))

(assert (=> d!2073037 (= res!2711435 (is-Cons!65621 (unfocusZipperList!1903 zl!343)))))

(assert (=> d!2073037 (forall!15678 (unfocusZipperList!1903 zl!343) lambda!369274)))

(assert (=> d!2073037 (= (generalisedUnion!2326 (unfocusZipperList!1903 zl!343)) lt!2416883)))

(declare-fun b!6612115 () Bool)

(declare-fun e!4000372 () Regex!16482)

(assert (=> b!6612115 (= e!4000368 e!4000372)))

(declare-fun c!1218679 () Bool)

(assert (=> b!6612115 (= c!1218679 (is-Cons!65621 (unfocusZipperList!1903 zl!343)))))

(declare-fun b!6612116 () Bool)

(declare-fun e!4000371 () Bool)

(assert (=> b!6612116 (= e!4000371 e!4000369)))

(declare-fun c!1218682 () Bool)

(assert (=> b!6612116 (= c!1218682 (isEmpty!37902 (tail!12493 (unfocusZipperList!1903 zl!343))))))

(declare-fun b!6612117 () Bool)

(declare-fun isEmptyLang!1865 (Regex!16482) Bool)

(assert (=> b!6612117 (= e!4000371 (isEmptyLang!1865 lt!2416883))))

(declare-fun b!6612118 () Bool)

(assert (=> b!6612118 (= e!4000370 e!4000371)))

(declare-fun c!1218680 () Bool)

(assert (=> b!6612118 (= c!1218680 (isEmpty!37902 (unfocusZipperList!1903 zl!343)))))

(declare-fun b!6612119 () Bool)

(assert (=> b!6612119 (= e!4000372 EmptyLang!16482)))

(declare-fun b!6612120 () Bool)

(assert (=> b!6612120 (= e!4000368 (h!72069 (unfocusZipperList!1903 zl!343)))))

(declare-fun b!6612121 () Bool)

(assert (=> b!6612121 (= e!4000372 (Union!16482 (h!72069 (unfocusZipperList!1903 zl!343)) (generalisedUnion!2326 (t!379399 (unfocusZipperList!1903 zl!343)))))))

(declare-fun b!6612122 () Bool)

(declare-fun isUnion!1295 (Regex!16482) Bool)

(assert (=> b!6612122 (= e!4000369 (isUnion!1295 lt!2416883))))

(declare-fun b!6612123 () Bool)

(assert (=> b!6612123 (= e!4000373 (isEmpty!37902 (t!379399 (unfocusZipperList!1903 zl!343))))))

(assert (= (and d!2073037 res!2711435) b!6612123))

(assert (= (and d!2073037 c!1218681) b!6612120))

(assert (= (and d!2073037 (not c!1218681)) b!6612115))

(assert (= (and b!6612115 c!1218679) b!6612121))

(assert (= (and b!6612115 (not c!1218679)) b!6612119))

(assert (= (and d!2073037 res!2711434) b!6612118))

(assert (= (and b!6612118 c!1218680) b!6612117))

(assert (= (and b!6612118 (not c!1218680)) b!6612116))

(assert (= (and b!6612116 c!1218682) b!6612114))

(assert (= (and b!6612116 (not c!1218682)) b!6612122))

(declare-fun m!7386320 () Bool)

(assert (=> b!6612123 m!7386320))

(assert (=> b!6612118 m!7386016))

(declare-fun m!7386322 () Bool)

(assert (=> b!6612118 m!7386322))

(declare-fun m!7386324 () Bool)

(assert (=> d!2073037 m!7386324))

(assert (=> d!2073037 m!7386016))

(declare-fun m!7386326 () Bool)

(assert (=> d!2073037 m!7386326))

(declare-fun m!7386328 () Bool)

(assert (=> b!6612117 m!7386328))

(assert (=> b!6612116 m!7386016))

(declare-fun m!7386330 () Bool)

(assert (=> b!6612116 m!7386330))

(assert (=> b!6612116 m!7386330))

(declare-fun m!7386332 () Bool)

(assert (=> b!6612116 m!7386332))

(declare-fun m!7386334 () Bool)

(assert (=> b!6612121 m!7386334))

(assert (=> b!6612114 m!7386016))

(declare-fun m!7386336 () Bool)

(assert (=> b!6612114 m!7386336))

(declare-fun m!7386338 () Bool)

(assert (=> b!6612122 m!7386338))

(assert (=> b!6611681 d!2073037))

(declare-fun bs!1695327 () Bool)

(declare-fun d!2073043 () Bool)

(assert (= bs!1695327 (and d!2073043 d!2072993)))

(declare-fun lambda!369277 () Int)

(assert (=> bs!1695327 (= lambda!369277 lambda!369267)))

(declare-fun bs!1695328 () Bool)

(assert (= bs!1695328 (and d!2073043 d!2073001)))

(assert (=> bs!1695328 (= lambda!369277 lambda!369270)))

(declare-fun bs!1695329 () Bool)

(assert (= bs!1695329 (and d!2073043 d!2073003)))

(assert (=> bs!1695329 (= lambda!369277 lambda!369271)))

(declare-fun bs!1695330 () Bool)

(assert (= bs!1695330 (and d!2073043 d!2073037)))

(assert (=> bs!1695330 (= lambda!369277 lambda!369274)))

(declare-fun lt!2416889 () List!65745)

(assert (=> d!2073043 (forall!15678 lt!2416889 lambda!369277)))

(declare-fun e!4000376 () List!65745)

(assert (=> d!2073043 (= lt!2416889 e!4000376)))

(declare-fun c!1218685 () Bool)

(assert (=> d!2073043 (= c!1218685 (is-Cons!65623 zl!343))))

(assert (=> d!2073043 (= (unfocusZipperList!1903 zl!343) lt!2416889)))

(declare-fun b!6612128 () Bool)

(assert (=> b!6612128 (= e!4000376 (Cons!65621 (generalisedConcat!2079 (exprs!6366 (h!72071 zl!343))) (unfocusZipperList!1903 (t!379401 zl!343))))))

(declare-fun b!6612129 () Bool)

(assert (=> b!6612129 (= e!4000376 Nil!65621)))

(assert (= (and d!2073043 c!1218685) b!6612128))

(assert (= (and d!2073043 (not c!1218685)) b!6612129))

(declare-fun m!7386346 () Bool)

(assert (=> d!2073043 m!7386346))

(assert (=> b!6612128 m!7386032))

(declare-fun m!7386348 () Bool)

(assert (=> b!6612128 m!7386348))

(assert (=> b!6611681 d!2073043))

(declare-fun d!2073047 () Bool)

(declare-fun c!1218686 () Bool)

(assert (=> d!2073047 (= c!1218686 (isEmpty!37905 (t!379400 s!2326)))))

(declare-fun e!4000377 () Bool)

(assert (=> d!2073047 (= (matchZipper!2494 lt!2416798 (t!379400 s!2326)) e!4000377)))

(declare-fun b!6612130 () Bool)

(assert (=> b!6612130 (= e!4000377 (nullableZipper!2223 lt!2416798))))

(declare-fun b!6612131 () Bool)

(assert (=> b!6612131 (= e!4000377 (matchZipper!2494 (derivationStepZipper!2448 lt!2416798 (head!13407 (t!379400 s!2326))) (tail!12492 (t!379400 s!2326))))))

(assert (= (and d!2073047 c!1218686) b!6612130))

(assert (= (and d!2073047 (not c!1218686)) b!6612131))

(assert (=> d!2073047 m!7386236))

(declare-fun m!7386350 () Bool)

(assert (=> b!6612130 m!7386350))

(assert (=> b!6612131 m!7386240))

(assert (=> b!6612131 m!7386240))

(declare-fun m!7386352 () Bool)

(assert (=> b!6612131 m!7386352))

(assert (=> b!6612131 m!7386244))

(assert (=> b!6612131 m!7386352))

(assert (=> b!6612131 m!7386244))

(declare-fun m!7386354 () Bool)

(assert (=> b!6612131 m!7386354))

(assert (=> b!6611671 d!2073047))

(declare-fun d!2073049 () Bool)

(assert (=> d!2073049 (= (nullable!6475 (regOne!33476 (regOne!33476 r!7292))) (nullableFct!2397 (regOne!33476 (regOne!33476 r!7292))))))

(declare-fun bs!1695331 () Bool)

(assert (= bs!1695331 d!2073049))

(declare-fun m!7386356 () Bool)

(assert (=> bs!1695331 m!7386356))

(assert (=> b!6611675 d!2073049))

(declare-fun d!2073051 () Bool)

(declare-fun choose!49385 (Int) Bool)

(assert (=> d!2073051 (= (Exists!3552 lambda!369242) (choose!49385 lambda!369242))))

(declare-fun bs!1695333 () Bool)

(assert (= bs!1695333 d!2073051))

(declare-fun m!7386360 () Bool)

(assert (=> bs!1695333 m!7386360))

(assert (=> b!6611695 d!2073051))

(declare-fun bs!1695334 () Bool)

(declare-fun d!2073055 () Bool)

(assert (= bs!1695334 (and d!2073055 b!6611695)))

(declare-fun lambda!369280 () Int)

(assert (=> bs!1695334 (= lambda!369280 lambda!369242)))

(assert (=> bs!1695334 (not (= lambda!369280 lambda!369243))))

(declare-fun bs!1695335 () Bool)

(assert (= bs!1695335 (and d!2073055 b!6611868)))

(assert (=> bs!1695335 (not (= lambda!369280 lambda!369260))))

(declare-fun bs!1695336 () Bool)

(assert (= bs!1695336 (and d!2073055 b!6611862)))

(assert (=> bs!1695336 (not (= lambda!369280 lambda!369261))))

(assert (=> d!2073055 true))

(assert (=> d!2073055 true))

(assert (=> d!2073055 true))

(assert (=> d!2073055 (= (isDefined!13076 (findConcatSeparation!2787 (regOne!33476 r!7292) (regTwo!33476 r!7292) Nil!65622 s!2326 s!2326)) (Exists!3552 lambda!369280))))

(declare-fun lt!2416892 () Unit!159283)

(declare-fun choose!49387 (Regex!16482 Regex!16482 List!65746) Unit!159283)

(assert (=> d!2073055 (= lt!2416892 (choose!49387 (regOne!33476 r!7292) (regTwo!33476 r!7292) s!2326))))

(assert (=> d!2073055 (validRegex!8218 (regOne!33476 r!7292))))

(assert (=> d!2073055 (= (lemmaFindConcatSeparationEquivalentToExists!2551 (regOne!33476 r!7292) (regTwo!33476 r!7292) s!2326) lt!2416892)))

(declare-fun bs!1695337 () Bool)

(assert (= bs!1695337 d!2073055))

(assert (=> bs!1695337 m!7386044))

(assert (=> bs!1695337 m!7386044))

(assert (=> bs!1695337 m!7386046))

(declare-fun m!7386362 () Bool)

(assert (=> bs!1695337 m!7386362))

(assert (=> bs!1695337 m!7386034))

(declare-fun m!7386364 () Bool)

(assert (=> bs!1695337 m!7386364))

(assert (=> b!6611695 d!2073055))

(declare-fun d!2073057 () Bool)

(assert (=> d!2073057 (= (Exists!3552 lambda!369243) (choose!49385 lambda!369243))))

(declare-fun bs!1695338 () Bool)

(assert (= bs!1695338 d!2073057))

(declare-fun m!7386366 () Bool)

(assert (=> bs!1695338 m!7386366))

(assert (=> b!6611695 d!2073057))

(declare-fun b!6612191 () Bool)

(declare-fun e!4000415 () Option!16373)

(declare-fun e!4000414 () Option!16373)

(assert (=> b!6612191 (= e!4000415 e!4000414)))

(declare-fun c!1218707 () Bool)

(assert (=> b!6612191 (= c!1218707 (is-Nil!65622 s!2326))))

(declare-fun b!6612192 () Bool)

(declare-fun e!4000411 () Bool)

(declare-fun lt!2416900 () Option!16373)

(assert (=> b!6612192 (= e!4000411 (not (isDefined!13076 lt!2416900)))))

(declare-fun b!6612193 () Bool)

(declare-fun res!2711456 () Bool)

(declare-fun e!4000413 () Bool)

(assert (=> b!6612193 (=> (not res!2711456) (not e!4000413))))

(declare-fun get!22805 (Option!16373) tuple2!66922)

(assert (=> b!6612193 (= res!2711456 (matchR!8665 (regTwo!33476 r!7292) (_2!36764 (get!22805 lt!2416900))))))

(declare-fun b!6612194 () Bool)

(declare-fun lt!2416899 () Unit!159283)

(declare-fun lt!2416901 () Unit!159283)

(assert (=> b!6612194 (= lt!2416899 lt!2416901)))

(declare-fun ++!14632 (List!65746 List!65746) List!65746)

(assert (=> b!6612194 (= (++!14632 (++!14632 Nil!65622 (Cons!65622 (h!72070 s!2326) Nil!65622)) (t!379400 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2621 (List!65746 C!33234 List!65746 List!65746) Unit!159283)

(assert (=> b!6612194 (= lt!2416901 (lemmaMoveElementToOtherListKeepsConcatEq!2621 Nil!65622 (h!72070 s!2326) (t!379400 s!2326) s!2326))))

(assert (=> b!6612194 (= e!4000414 (findConcatSeparation!2787 (regOne!33476 r!7292) (regTwo!33476 r!7292) (++!14632 Nil!65622 (Cons!65622 (h!72070 s!2326) Nil!65622)) (t!379400 s!2326) s!2326))))

(declare-fun b!6612195 () Bool)

(assert (=> b!6612195 (= e!4000413 (= (++!14632 (_1!36764 (get!22805 lt!2416900)) (_2!36764 (get!22805 lt!2416900))) s!2326))))

(declare-fun d!2073059 () Bool)

(assert (=> d!2073059 e!4000411))

(declare-fun res!2711455 () Bool)

(assert (=> d!2073059 (=> res!2711455 e!4000411)))

(assert (=> d!2073059 (= res!2711455 e!4000413)))

(declare-fun res!2711459 () Bool)

(assert (=> d!2073059 (=> (not res!2711459) (not e!4000413))))

(assert (=> d!2073059 (= res!2711459 (isDefined!13076 lt!2416900))))

(assert (=> d!2073059 (= lt!2416900 e!4000415)))

(declare-fun c!1218708 () Bool)

(declare-fun e!4000412 () Bool)

(assert (=> d!2073059 (= c!1218708 e!4000412)))

(declare-fun res!2711458 () Bool)

(assert (=> d!2073059 (=> (not res!2711458) (not e!4000412))))

(assert (=> d!2073059 (= res!2711458 (matchR!8665 (regOne!33476 r!7292) Nil!65622))))

(assert (=> d!2073059 (validRegex!8218 (regOne!33476 r!7292))))

(assert (=> d!2073059 (= (findConcatSeparation!2787 (regOne!33476 r!7292) (regTwo!33476 r!7292) Nil!65622 s!2326 s!2326) lt!2416900)))

(declare-fun b!6612196 () Bool)

(assert (=> b!6612196 (= e!4000412 (matchR!8665 (regTwo!33476 r!7292) s!2326))))

(declare-fun b!6612197 () Bool)

(declare-fun res!2711457 () Bool)

(assert (=> b!6612197 (=> (not res!2711457) (not e!4000413))))

(assert (=> b!6612197 (= res!2711457 (matchR!8665 (regOne!33476 r!7292) (_1!36764 (get!22805 lt!2416900))))))

(declare-fun b!6612198 () Bool)

(assert (=> b!6612198 (= e!4000414 None!16372)))

(declare-fun b!6612199 () Bool)

(assert (=> b!6612199 (= e!4000415 (Some!16372 (tuple2!66923 Nil!65622 s!2326)))))

(assert (= (and d!2073059 res!2711458) b!6612196))

(assert (= (and d!2073059 c!1218708) b!6612199))

(assert (= (and d!2073059 (not c!1218708)) b!6612191))

(assert (= (and b!6612191 c!1218707) b!6612198))

(assert (= (and b!6612191 (not c!1218707)) b!6612194))

(assert (= (and d!2073059 res!2711459) b!6612197))

(assert (= (and b!6612197 res!2711457) b!6612193))

(assert (= (and b!6612193 res!2711456) b!6612195))

(assert (= (and d!2073059 (not res!2711455)) b!6612192))

(declare-fun m!7386374 () Bool)

(assert (=> b!6612197 m!7386374))

(declare-fun m!7386376 () Bool)

(assert (=> b!6612197 m!7386376))

(declare-fun m!7386378 () Bool)

(assert (=> b!6612192 m!7386378))

(assert (=> b!6612193 m!7386374))

(declare-fun m!7386380 () Bool)

(assert (=> b!6612193 m!7386380))

(declare-fun m!7386382 () Bool)

(assert (=> b!6612196 m!7386382))

(declare-fun m!7386384 () Bool)

(assert (=> b!6612194 m!7386384))

(assert (=> b!6612194 m!7386384))

(declare-fun m!7386386 () Bool)

(assert (=> b!6612194 m!7386386))

(declare-fun m!7386388 () Bool)

(assert (=> b!6612194 m!7386388))

(assert (=> b!6612194 m!7386384))

(declare-fun m!7386390 () Bool)

(assert (=> b!6612194 m!7386390))

(assert (=> d!2073059 m!7386378))

(declare-fun m!7386392 () Bool)

(assert (=> d!2073059 m!7386392))

(assert (=> d!2073059 m!7386034))

(assert (=> b!6612195 m!7386374))

(declare-fun m!7386394 () Bool)

(assert (=> b!6612195 m!7386394))

(assert (=> b!6611695 d!2073059))

(declare-fun bs!1695339 () Bool)

(declare-fun d!2073063 () Bool)

(assert (= bs!1695339 (and d!2073063 b!6611868)))

(declare-fun lambda!369285 () Int)

(assert (=> bs!1695339 (not (= lambda!369285 lambda!369260))))

(declare-fun bs!1695340 () Bool)

(assert (= bs!1695340 (and d!2073063 d!2073055)))

(assert (=> bs!1695340 (= lambda!369285 lambda!369280)))

(declare-fun bs!1695341 () Bool)

(assert (= bs!1695341 (and d!2073063 b!6611695)))

(assert (=> bs!1695341 (= lambda!369285 lambda!369242)))

(assert (=> bs!1695341 (not (= lambda!369285 lambda!369243))))

(declare-fun bs!1695342 () Bool)

(assert (= bs!1695342 (and d!2073063 b!6611862)))

(assert (=> bs!1695342 (not (= lambda!369285 lambda!369261))))

(assert (=> d!2073063 true))

(assert (=> d!2073063 true))

(assert (=> d!2073063 true))

(declare-fun lambda!369286 () Int)

(assert (=> bs!1695340 (not (= lambda!369286 lambda!369280))))

(assert (=> bs!1695341 (not (= lambda!369286 lambda!369242))))

(assert (=> bs!1695339 (not (= lambda!369286 lambda!369260))))

(declare-fun bs!1695343 () Bool)

(assert (= bs!1695343 d!2073063))

(assert (=> bs!1695343 (not (= lambda!369286 lambda!369285))))

(assert (=> bs!1695341 (= lambda!369286 lambda!369243)))

(assert (=> bs!1695342 (= lambda!369286 lambda!369261)))

(assert (=> d!2073063 true))

(assert (=> d!2073063 true))

(assert (=> d!2073063 true))

(assert (=> d!2073063 (= (Exists!3552 lambda!369285) (Exists!3552 lambda!369286))))

(declare-fun lt!2416904 () Unit!159283)

(declare-fun choose!49390 (Regex!16482 Regex!16482 List!65746) Unit!159283)

(assert (=> d!2073063 (= lt!2416904 (choose!49390 (regOne!33476 r!7292) (regTwo!33476 r!7292) s!2326))))

(assert (=> d!2073063 (validRegex!8218 (regOne!33476 r!7292))))

(assert (=> d!2073063 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2089 (regOne!33476 r!7292) (regTwo!33476 r!7292) s!2326) lt!2416904)))

(declare-fun m!7386396 () Bool)

(assert (=> bs!1695343 m!7386396))

(declare-fun m!7386398 () Bool)

(assert (=> bs!1695343 m!7386398))

(declare-fun m!7386400 () Bool)

(assert (=> bs!1695343 m!7386400))

(assert (=> bs!1695343 m!7386034))

(assert (=> b!6611695 d!2073063))

(declare-fun d!2073065 () Bool)

(declare-fun isEmpty!37907 (Option!16373) Bool)

(assert (=> d!2073065 (= (isDefined!13076 (findConcatSeparation!2787 (regOne!33476 r!7292) (regTwo!33476 r!7292) Nil!65622 s!2326 s!2326)) (not (isEmpty!37907 (findConcatSeparation!2787 (regOne!33476 r!7292) (regTwo!33476 r!7292) Nil!65622 s!2326 s!2326))))))

(declare-fun bs!1695344 () Bool)

(assert (= bs!1695344 d!2073065))

(assert (=> bs!1695344 m!7386044))

(declare-fun m!7386402 () Bool)

(assert (=> bs!1695344 m!7386402))

(assert (=> b!6611695 d!2073065))

(declare-fun d!2073067 () Bool)

(assert (=> d!2073067 (= (isEmpty!37902 (t!379399 (exprs!6366 (h!72071 zl!343)))) (is-Nil!65621 (t!379399 (exprs!6366 (h!72071 zl!343)))))))

(assert (=> b!6611694 d!2073067))

(declare-fun d!2073069 () Bool)

(declare-fun e!4000428 () Bool)

(assert (=> d!2073069 e!4000428))

(declare-fun res!2711471 () Bool)

(assert (=> d!2073069 (=> (not res!2711471) (not e!4000428))))

(declare-fun lt!2416907 () List!65747)

(declare-fun noDuplicate!2284 (List!65747) Bool)

(assert (=> d!2073069 (= res!2711471 (noDuplicate!2284 lt!2416907))))

(declare-fun choose!49392 ((Set Context!11732)) List!65747)

(assert (=> d!2073069 (= lt!2416907 (choose!49392 z!1189))))

(assert (=> d!2073069 (= (toList!10266 z!1189) lt!2416907)))

(declare-fun b!6612221 () Bool)

(declare-fun content!12658 (List!65747) (Set Context!11732))

(assert (=> b!6612221 (= e!4000428 (= (content!12658 lt!2416907) z!1189))))

(assert (= (and d!2073069 res!2711471) b!6612221))

(declare-fun m!7386408 () Bool)

(assert (=> d!2073069 m!7386408))

(declare-fun m!7386410 () Bool)

(assert (=> d!2073069 m!7386410))

(declare-fun m!7386412 () Bool)

(assert (=> b!6612221 m!7386412))

(assert (=> b!6611693 d!2073069))

(declare-fun b!6612231 () Bool)

(declare-fun e!4000434 () Bool)

(declare-fun tp!1821300 () Bool)

(declare-fun tp!1821301 () Bool)

(assert (=> b!6612231 (= e!4000434 (and tp!1821300 tp!1821301))))

(assert (=> b!6611683 (= tp!1821261 e!4000434)))

(assert (= (and b!6611683 (is-Cons!65621 (exprs!6366 setElem!45169))) b!6612231))

(declare-fun b!6612236 () Bool)

(declare-fun e!4000437 () Bool)

(declare-fun tp!1821304 () Bool)

(assert (=> b!6612236 (= e!4000437 (and tp_is_empty!42217 tp!1821304))))

(assert (=> b!6611688 (= tp!1821263 e!4000437)))

(assert (= (and b!6611688 (is-Cons!65622 (t!379400 s!2326))) b!6612236))

(declare-fun b!6612252 () Bool)

(declare-fun e!4000443 () Bool)

(assert (=> b!6612252 (= e!4000443 tp_is_empty!42217)))

(declare-fun b!6612254 () Bool)

(declare-fun tp!1821315 () Bool)

(assert (=> b!6612254 (= e!4000443 tp!1821315)))

(assert (=> b!6611677 (= tp!1821258 e!4000443)))

(declare-fun b!6612253 () Bool)

(declare-fun tp!1821316 () Bool)

(declare-fun tp!1821319 () Bool)

(assert (=> b!6612253 (= e!4000443 (and tp!1821316 tp!1821319))))

(declare-fun b!6612255 () Bool)

(declare-fun tp!1821318 () Bool)

(declare-fun tp!1821317 () Bool)

(assert (=> b!6612255 (= e!4000443 (and tp!1821318 tp!1821317))))

(assert (= (and b!6611677 (is-ElementMatch!16482 (reg!16811 r!7292))) b!6612252))

(assert (= (and b!6611677 (is-Concat!25327 (reg!16811 r!7292))) b!6612253))

(assert (= (and b!6611677 (is-Star!16482 (reg!16811 r!7292))) b!6612254))

(assert (= (and b!6611677 (is-Union!16482 (reg!16811 r!7292))) b!6612255))

(declare-fun b!6612256 () Bool)

(declare-fun e!4000444 () Bool)

(declare-fun tp!1821320 () Bool)

(declare-fun tp!1821321 () Bool)

(assert (=> b!6612256 (= e!4000444 (and tp!1821320 tp!1821321))))

(assert (=> b!6611692 (= tp!1821260 e!4000444)))

(assert (= (and b!6611692 (is-Cons!65621 (exprs!6366 (h!72071 zl!343)))) b!6612256))

(declare-fun condSetEmpty!45175 () Bool)

(assert (=> setNonEmpty!45169 (= condSetEmpty!45175 (= setRest!45169 (as set.empty (Set Context!11732))))))

(declare-fun setRes!45175 () Bool)

(assert (=> setNonEmpty!45169 (= tp!1821259 setRes!45175)))

(declare-fun setIsEmpty!45175 () Bool)

(assert (=> setIsEmpty!45175 setRes!45175))

(declare-fun setNonEmpty!45175 () Bool)

(declare-fun tp!1821326 () Bool)

(declare-fun e!4000447 () Bool)

(declare-fun setElem!45175 () Context!11732)

(assert (=> setNonEmpty!45175 (= setRes!45175 (and tp!1821326 (inv!84453 setElem!45175) e!4000447))))

(declare-fun setRest!45175 () (Set Context!11732))

(assert (=> setNonEmpty!45175 (= setRest!45169 (set.union (set.insert setElem!45175 (as set.empty (Set Context!11732))) setRest!45175))))

(declare-fun b!6612261 () Bool)

(declare-fun tp!1821327 () Bool)

(assert (=> b!6612261 (= e!4000447 tp!1821327)))

(assert (= (and setNonEmpty!45169 condSetEmpty!45175) setIsEmpty!45175))

(assert (= (and setNonEmpty!45169 (not condSetEmpty!45175)) setNonEmpty!45175))

(assert (= setNonEmpty!45175 b!6612261))

(declare-fun m!7386430 () Bool)

(assert (=> setNonEmpty!45175 m!7386430))

(declare-fun b!6612269 () Bool)

(declare-fun e!4000453 () Bool)

(declare-fun tp!1821332 () Bool)

(assert (=> b!6612269 (= e!4000453 tp!1821332)))

(declare-fun b!6612268 () Bool)

(declare-fun tp!1821333 () Bool)

(declare-fun e!4000452 () Bool)

(assert (=> b!6612268 (= e!4000452 (and (inv!84453 (h!72071 (t!379401 zl!343))) e!4000453 tp!1821333))))

(assert (=> b!6611690 (= tp!1821264 e!4000452)))

(assert (= b!6612268 b!6612269))

(assert (= (and b!6611690 (is-Cons!65623 (t!379401 zl!343))) b!6612268))

(declare-fun m!7386432 () Bool)

(assert (=> b!6612268 m!7386432))

(declare-fun b!6612270 () Bool)

(declare-fun e!4000454 () Bool)

(assert (=> b!6612270 (= e!4000454 tp_is_empty!42217)))

(declare-fun b!6612272 () Bool)

(declare-fun tp!1821334 () Bool)

(assert (=> b!6612272 (= e!4000454 tp!1821334)))

(assert (=> b!6611679 (= tp!1821262 e!4000454)))

(declare-fun b!6612271 () Bool)

(declare-fun tp!1821335 () Bool)

(declare-fun tp!1821338 () Bool)

(assert (=> b!6612271 (= e!4000454 (and tp!1821335 tp!1821338))))

(declare-fun b!6612273 () Bool)

(declare-fun tp!1821337 () Bool)

(declare-fun tp!1821336 () Bool)

(assert (=> b!6612273 (= e!4000454 (and tp!1821337 tp!1821336))))

(assert (= (and b!6611679 (is-ElementMatch!16482 (regOne!33477 r!7292))) b!6612270))

(assert (= (and b!6611679 (is-Concat!25327 (regOne!33477 r!7292))) b!6612271))

(assert (= (and b!6611679 (is-Star!16482 (regOne!33477 r!7292))) b!6612272))

(assert (= (and b!6611679 (is-Union!16482 (regOne!33477 r!7292))) b!6612273))

(declare-fun b!6612274 () Bool)

(declare-fun e!4000455 () Bool)

(assert (=> b!6612274 (= e!4000455 tp_is_empty!42217)))

(declare-fun b!6612276 () Bool)

(declare-fun tp!1821339 () Bool)

(assert (=> b!6612276 (= e!4000455 tp!1821339)))

(assert (=> b!6611679 (= tp!1821265 e!4000455)))

(declare-fun b!6612275 () Bool)

(declare-fun tp!1821340 () Bool)

(declare-fun tp!1821343 () Bool)

(assert (=> b!6612275 (= e!4000455 (and tp!1821340 tp!1821343))))

(declare-fun b!6612277 () Bool)

(declare-fun tp!1821342 () Bool)

(declare-fun tp!1821341 () Bool)

(assert (=> b!6612277 (= e!4000455 (and tp!1821342 tp!1821341))))

(assert (= (and b!6611679 (is-ElementMatch!16482 (regTwo!33477 r!7292))) b!6612274))

(assert (= (and b!6611679 (is-Concat!25327 (regTwo!33477 r!7292))) b!6612275))

(assert (= (and b!6611679 (is-Star!16482 (regTwo!33477 r!7292))) b!6612276))

(assert (= (and b!6611679 (is-Union!16482 (regTwo!33477 r!7292))) b!6612277))

(declare-fun b!6612278 () Bool)

(declare-fun e!4000456 () Bool)

(assert (=> b!6612278 (= e!4000456 tp_is_empty!42217)))

(declare-fun b!6612280 () Bool)

(declare-fun tp!1821344 () Bool)

(assert (=> b!6612280 (= e!4000456 tp!1821344)))

(assert (=> b!6611689 (= tp!1821256 e!4000456)))

(declare-fun b!6612279 () Bool)

(declare-fun tp!1821345 () Bool)

(declare-fun tp!1821348 () Bool)

(assert (=> b!6612279 (= e!4000456 (and tp!1821345 tp!1821348))))

(declare-fun b!6612281 () Bool)

(declare-fun tp!1821347 () Bool)

(declare-fun tp!1821346 () Bool)

(assert (=> b!6612281 (= e!4000456 (and tp!1821347 tp!1821346))))

(assert (= (and b!6611689 (is-ElementMatch!16482 (regOne!33476 r!7292))) b!6612278))

(assert (= (and b!6611689 (is-Concat!25327 (regOne!33476 r!7292))) b!6612279))

(assert (= (and b!6611689 (is-Star!16482 (regOne!33476 r!7292))) b!6612280))

(assert (= (and b!6611689 (is-Union!16482 (regOne!33476 r!7292))) b!6612281))

(declare-fun b!6612282 () Bool)

(declare-fun e!4000457 () Bool)

(assert (=> b!6612282 (= e!4000457 tp_is_empty!42217)))

(declare-fun b!6612284 () Bool)

(declare-fun tp!1821349 () Bool)

(assert (=> b!6612284 (= e!4000457 tp!1821349)))

(assert (=> b!6611689 (= tp!1821257 e!4000457)))

(declare-fun b!6612283 () Bool)

(declare-fun tp!1821350 () Bool)

(declare-fun tp!1821353 () Bool)

(assert (=> b!6612283 (= e!4000457 (and tp!1821350 tp!1821353))))

(declare-fun b!6612285 () Bool)

(declare-fun tp!1821352 () Bool)

(declare-fun tp!1821351 () Bool)

(assert (=> b!6612285 (= e!4000457 (and tp!1821352 tp!1821351))))

(assert (= (and b!6611689 (is-ElementMatch!16482 (regTwo!33476 r!7292))) b!6612282))

(assert (= (and b!6611689 (is-Concat!25327 (regTwo!33476 r!7292))) b!6612283))

(assert (= (and b!6611689 (is-Star!16482 (regTwo!33476 r!7292))) b!6612284))

(assert (= (and b!6611689 (is-Union!16482 (regTwo!33476 r!7292))) b!6612285))

(declare-fun b_lambda!250149 () Bool)

(assert (= b_lambda!250145 (or b!6611691 b_lambda!250149)))

(declare-fun bs!1695346 () Bool)

(declare-fun d!2073077 () Bool)

(assert (= bs!1695346 (and d!2073077 b!6611691)))

(assert (=> bs!1695346 (= (dynLambda!26133 lambda!369244 (h!72071 zl!343)) (derivationStepZipperUp!1656 (h!72071 zl!343) (h!72070 s!2326)))))

(assert (=> bs!1695346 m!7386066))

(assert (=> d!2073035 d!2073077))

(push 1)

(assert (not b!6612275))

(assert (not b!6612272))

(assert (not b!6612024))

(assert (not d!2072987))

(assert (not bm!579212))

(assert (not d!2072991))

(assert (not b!6612116))

(assert (not b!6612117))

(assert (not b!6611975))

(assert (not b!6612271))

(assert (not b!6612128))

(assert (not b!6612269))

(assert (not b!6612231))

(assert (not d!2073017))

(assert (not bm!579216))

(assert (not b!6612196))

(assert (not b!6611997))

(assert (not b!6612194))

(assert (not b!6611871))

(assert (not b!6612256))

(assert (not b!6612131))

(assert (not b!6612123))

(assert (not b!6611924))

(assert (not b!6611973))

(assert (not b!6612000))

(assert (not d!2073055))

(assert (not b!6612253))

(assert (not bm!579201))

(assert (not b!6612236))

(assert (not b!6612193))

(assert (not bm!579206))

(assert (not b!6611934))

(assert (not d!2073001))

(assert (not b!6612118))

(assert (not b!6611998))

(assert (not b!6611968))

(assert (not d!2073063))

(assert (not b!6612192))

(assert (not d!2073013))

(assert (not bm!579207))

(assert (not bm!579236))

(assert (not b!6611931))

(assert (not d!2073069))

(assert (not b!6611866))

(assert (not d!2072985))

(assert (not b!6612283))

(assert (not b!6612279))

(assert (not d!2073033))

(assert (not b!6611991))

(assert (not b!6611972))

(assert (not d!2073007))

(assert (not b!6612221))

(assert (not bm!579217))

(assert (not bs!1695346))

(assert (not setNonEmpty!45175))

(assert (not b!6612254))

(assert (not b!6612285))

(assert (not b!6612030))

(assert (not bm!579213))

(assert (not d!2073037))

(assert (not b!6611999))

(assert (not d!2073065))

(assert (not b!6612121))

(assert (not b!6611829))

(assert (not b!6612122))

(assert (not b!6611986))

(assert (not b!6612280))

(assert (not b!6612261))

(assert (not d!2072993))

(assert (not b!6612019))

(assert (not bm!579200))

(assert (not b!6612029))

(assert (not d!2073035))

(assert (not b!6612255))

(assert (not b!6612076))

(assert (not b!6611969))

(assert (not d!2073051))

(assert (not d!2073047))

(assert (not b!6611932))

(assert (not b!6612020))

(assert (not b!6612268))

(assert (not b!6611970))

(assert (not b!6612276))

(assert (not d!2073059))

(assert (not b!6612114))

(assert (not d!2073057))

(assert (not b!6612281))

(assert (not b!6612195))

(assert (not d!2073015))

(assert (not bm!579218))

(assert (not bm!579232))

(assert (not d!2073003))

(assert (not b_lambda!250149))

(assert (not b!6612197))

(assert (not b!6612277))

(assert (not b!6611930))

(assert tp_is_empty!42217)

(assert (not b!6612284))

(assert (not b!6612273))

(assert (not b!6611921))

(assert (not b!6612025))

(assert (not d!2073009))

(assert (not bm!579234))

(assert (not b!6611976))

(assert (not d!2073049))

(assert (not b!6612130))

(assert (not bm!579210))

(assert (not d!2073043))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

