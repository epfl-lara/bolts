; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!539990 () Bool)

(assert start!539990)

(declare-fun b!5117358 () Bool)

(declare-fun e!3191619 () Bool)

(declare-fun e!3191612 () Bool)

(assert (=> b!5117358 (= e!3191619 e!3191612)))

(declare-fun res!2178758 () Bool)

(assert (=> b!5117358 (=> res!2178758 e!3191612)))

(declare-datatypes ((C!28654 0))(
  ( (C!28655 (val!23979 Int)) )
))
(declare-datatypes ((List!59299 0))(
  ( (Nil!59175) (Cons!59175 (h!65623 C!28654) (t!372310 List!59299)) )
))
(declare-fun input!5745 () List!59299)

(declare-fun lt!2109144 () List!59299)

(declare-fun knownP!20 () List!59299)

(declare-fun ++!13019 (List!59299 List!59299) List!59299)

(assert (=> b!5117358 (= res!2178758 (not (= (++!13019 knownP!20 lt!2109144) input!5745)))))

(declare-fun getSuffix!3273 (List!59299 List!59299) List!59299)

(assert (=> b!5117358 (= lt!2109144 (getSuffix!3273 input!5745 knownP!20))))

(declare-fun lt!2109139 () List!59299)

(declare-fun lt!2109137 () List!59299)

(assert (=> b!5117358 (= lt!2109139 (getSuffix!3273 knownP!20 lt!2109137))))

(declare-fun isPrefix!5599 (List!59299 List!59299) Bool)

(assert (=> b!5117358 (isPrefix!5599 lt!2109137 knownP!20)))

(declare-datatypes ((Unit!150307 0))(
  ( (Unit!150308) )
))
(declare-fun lt!2109136 () Unit!150307)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!736 (List!59299 List!59299 List!59299) Unit!150307)

(assert (=> b!5117358 (= lt!2109136 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!736 knownP!20 lt!2109137 input!5745))))

(declare-datatypes ((Regex!14194 0))(
  ( (ElementMatch!14194 (c!879292 C!28654)) (Concat!23039 (regOne!28900 Regex!14194) (regTwo!28900 Regex!14194)) (EmptyExpr!14194) (Star!14194 (reg!14523 Regex!14194)) (EmptyLang!14194) (Union!14194 (regOne!28901 Regex!14194) (regTwo!28901 Regex!14194)) )
))
(declare-datatypes ((List!59300 0))(
  ( (Nil!59176) (Cons!59176 (h!65624 Regex!14194) (t!372311 List!59300)) )
))
(declare-datatypes ((Context!7156 0))(
  ( (Context!7157 (exprs!4078 List!59300)) )
))
(declare-fun z!4463 () (Set Context!7156))

(declare-fun baseZ!46 () (Set Context!7156))

(declare-fun lt!2109142 () C!28654)

(declare-fun derivationZipper!93 ((Set Context!7156) List!59299) (Set Context!7156))

(declare-fun derivationStepZipper!829 ((Set Context!7156) C!28654) (Set Context!7156))

(assert (=> b!5117358 (= (derivationZipper!93 baseZ!46 lt!2109137) (derivationStepZipper!829 z!4463 lt!2109142))))

(declare-fun testedP!265 () List!59299)

(declare-fun lt!2109143 () Unit!150307)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!50 ((Set Context!7156) (Set Context!7156) List!59299 C!28654) Unit!150307)

(assert (=> b!5117358 (= lt!2109143 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!50 baseZ!46 z!4463 testedP!265 lt!2109142))))

(assert (=> b!5117358 (isPrefix!5599 lt!2109137 input!5745)))

(declare-fun lt!2109141 () Unit!150307)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!985 (List!59299 List!59299) Unit!150307)

(assert (=> b!5117358 (= lt!2109141 (lemmaAddHeadSuffixToPrefixStillPrefix!985 testedP!265 input!5745))))

(assert (=> b!5117358 (= lt!2109137 (++!13019 testedP!265 (Cons!59175 lt!2109142 Nil!59175)))))

(declare-fun lt!2109134 () List!59299)

(declare-fun head!10922 (List!59299) C!28654)

(assert (=> b!5117358 (= lt!2109142 (head!10922 lt!2109134))))

(assert (=> b!5117358 (= lt!2109134 (getSuffix!3273 input!5745 testedP!265))))

(declare-fun setIsEmpty!30167 () Bool)

(declare-fun setRes!30167 () Bool)

(assert (=> setIsEmpty!30167 setRes!30167))

(declare-fun b!5117359 () Bool)

(declare-fun e!3191617 () Bool)

(assert (=> b!5117359 (= e!3191617 (not e!3191619))))

(declare-fun res!2178759 () Bool)

(assert (=> b!5117359 (=> res!2178759 e!3191619)))

(declare-fun lt!2109140 () List!59299)

(declare-fun matchZipper!862 ((Set Context!7156) List!59299) Bool)

(assert (=> b!5117359 (= res!2178759 (not (matchZipper!862 z!4463 lt!2109140)))))

(assert (=> b!5117359 (= lt!2109140 (getSuffix!3273 knownP!20 testedP!265))))

(assert (=> b!5117359 (isPrefix!5599 testedP!265 knownP!20)))

(declare-fun lt!2109133 () Unit!150307)

(assert (=> b!5117359 (= lt!2109133 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!736 knownP!20 testedP!265 input!5745))))

(declare-fun b!5117360 () Bool)

(declare-fun res!2178749 () Bool)

(assert (=> b!5117360 (=> res!2178749 e!3191612)))

(assert (=> b!5117360 (= res!2178749 (not (= (++!13019 (++!13019 testedP!265 lt!2109140) lt!2109144) input!5745)))))

(declare-fun b!5117361 () Bool)

(declare-fun e!3191616 () Bool)

(declare-fun tp!1427712 () Bool)

(assert (=> b!5117361 (= e!3191616 tp!1427712)))

(declare-fun b!5117362 () Bool)

(assert (=> b!5117362 (= e!3191612 (= (++!13019 testedP!265 lt!2109134) input!5745))))

(declare-fun b!5117363 () Bool)

(declare-fun res!2178755 () Bool)

(assert (=> b!5117363 (=> res!2178755 e!3191619)))

(declare-fun lt!2109138 () Int)

(declare-fun size!39500 (List!59299) Int)

(assert (=> b!5117363 (= res!2178755 (>= lt!2109138 (size!39500 input!5745)))))

(declare-fun b!5117364 () Bool)

(declare-fun res!2178753 () Bool)

(assert (=> b!5117364 (=> res!2178753 e!3191619)))

(assert (=> b!5117364 (= res!2178753 (not (= (derivationZipper!93 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5117365 () Bool)

(declare-fun e!3191614 () Bool)

(declare-fun tp_is_empty!37661 () Bool)

(declare-fun tp!1427708 () Bool)

(assert (=> b!5117365 (= e!3191614 (and tp_is_empty!37661 tp!1427708))))

(declare-fun res!2178756 () Bool)

(declare-fun e!3191613 () Bool)

(assert (=> start!539990 (=> (not res!2178756) (not e!3191613))))

(assert (=> start!539990 (= res!2178756 (isPrefix!5599 testedP!265 input!5745))))

(assert (=> start!539990 e!3191613))

(declare-fun e!3191618 () Bool)

(assert (=> start!539990 e!3191618))

(declare-fun condSetEmpty!30167 () Bool)

(assert (=> start!539990 (= condSetEmpty!30167 (= z!4463 (as set.empty (Set Context!7156))))))

(assert (=> start!539990 setRes!30167))

(declare-fun e!3191620 () Bool)

(assert (=> start!539990 e!3191620))

(declare-fun condSetEmpty!30168 () Bool)

(assert (=> start!539990 (= condSetEmpty!30168 (= baseZ!46 (as set.empty (Set Context!7156))))))

(declare-fun setRes!30168 () Bool)

(assert (=> start!539990 setRes!30168))

(assert (=> start!539990 e!3191614))

(declare-fun b!5117366 () Bool)

(declare-fun e!3191615 () Bool)

(declare-fun tp!1427710 () Bool)

(assert (=> b!5117366 (= e!3191615 tp!1427710)))

(declare-fun setElem!30167 () Context!7156)

(declare-fun tp!1427707 () Bool)

(declare-fun setNonEmpty!30167 () Bool)

(declare-fun inv!78667 (Context!7156) Bool)

(assert (=> setNonEmpty!30167 (= setRes!30168 (and tp!1427707 (inv!78667 setElem!30167) e!3191615))))

(declare-fun setRest!30168 () (Set Context!7156))

(assert (=> setNonEmpty!30167 (= baseZ!46 (set.union (set.insert setElem!30167 (as set.empty (Set Context!7156))) setRest!30168))))

(declare-fun b!5117367 () Bool)

(declare-fun res!2178752 () Bool)

(assert (=> b!5117367 (=> (not res!2178752) (not e!3191613))))

(assert (=> b!5117367 (= res!2178752 (isPrefix!5599 knownP!20 input!5745))))

(declare-fun b!5117368 () Bool)

(declare-fun res!2178750 () Bool)

(assert (=> b!5117368 (=> (not res!2178750) (not e!3191617))))

(assert (=> b!5117368 (= res!2178750 (matchZipper!862 baseZ!46 knownP!20))))

(declare-fun setIsEmpty!30168 () Bool)

(assert (=> setIsEmpty!30168 setRes!30168))

(declare-fun b!5117369 () Bool)

(assert (=> b!5117369 (= e!3191613 e!3191617)))

(declare-fun res!2178751 () Bool)

(assert (=> b!5117369 (=> (not res!2178751) (not e!3191617))))

(declare-fun lt!2109135 () Int)

(assert (=> b!5117369 (= res!2178751 (>= lt!2109135 lt!2109138))))

(assert (=> b!5117369 (= lt!2109138 (size!39500 testedP!265))))

(assert (=> b!5117369 (= lt!2109135 (size!39500 knownP!20))))

(declare-fun b!5117370 () Bool)

(declare-fun res!2178757 () Bool)

(assert (=> b!5117370 (=> res!2178757 e!3191619)))

(assert (=> b!5117370 (= res!2178757 (= lt!2109138 lt!2109135))))

(declare-fun setNonEmpty!30168 () Bool)

(declare-fun tp!1427709 () Bool)

(declare-fun setElem!30168 () Context!7156)

(assert (=> setNonEmpty!30168 (= setRes!30167 (and tp!1427709 (inv!78667 setElem!30168) e!3191616))))

(declare-fun setRest!30167 () (Set Context!7156))

(assert (=> setNonEmpty!30168 (= z!4463 (set.union (set.insert setElem!30168 (as set.empty (Set Context!7156))) setRest!30167))))

(declare-fun b!5117371 () Bool)

(declare-fun tp!1427706 () Bool)

(assert (=> b!5117371 (= e!3191618 (and tp_is_empty!37661 tp!1427706))))

(declare-fun b!5117372 () Bool)

(declare-fun tp!1427711 () Bool)

(assert (=> b!5117372 (= e!3191620 (and tp_is_empty!37661 tp!1427711))))

(declare-fun b!5117373 () Bool)

(declare-fun res!2178754 () Bool)

(assert (=> b!5117373 (=> res!2178754 e!3191619)))

(declare-fun lostCauseZipper!1080 ((Set Context!7156)) Bool)

(assert (=> b!5117373 (= res!2178754 (lostCauseZipper!1080 z!4463))))

(assert (= (and start!539990 res!2178756) b!5117367))

(assert (= (and b!5117367 res!2178752) b!5117369))

(assert (= (and b!5117369 res!2178751) b!5117368))

(assert (= (and b!5117368 res!2178750) b!5117359))

(assert (= (and b!5117359 (not res!2178759)) b!5117364))

(assert (= (and b!5117364 (not res!2178753)) b!5117373))

(assert (= (and b!5117373 (not res!2178754)) b!5117370))

(assert (= (and b!5117370 (not res!2178757)) b!5117363))

(assert (= (and b!5117363 (not res!2178755)) b!5117358))

(assert (= (and b!5117358 (not res!2178758)) b!5117360))

(assert (= (and b!5117360 (not res!2178749)) b!5117362))

(assert (= (and start!539990 (is-Cons!59175 input!5745)) b!5117371))

(assert (= (and start!539990 condSetEmpty!30167) setIsEmpty!30167))

(assert (= (and start!539990 (not condSetEmpty!30167)) setNonEmpty!30168))

(assert (= setNonEmpty!30168 b!5117361))

(assert (= (and start!539990 (is-Cons!59175 testedP!265)) b!5117372))

(assert (= (and start!539990 condSetEmpty!30168) setIsEmpty!30168))

(assert (= (and start!539990 (not condSetEmpty!30168)) setNonEmpty!30167))

(assert (= setNonEmpty!30167 b!5117366))

(assert (= (and start!539990 (is-Cons!59175 knownP!20)) b!5117365))

(declare-fun m!6177002 () Bool)

(assert (=> start!539990 m!6177002))

(declare-fun m!6177004 () Bool)

(assert (=> b!5117360 m!6177004))

(assert (=> b!5117360 m!6177004))

(declare-fun m!6177006 () Bool)

(assert (=> b!5117360 m!6177006))

(declare-fun m!6177008 () Bool)

(assert (=> b!5117363 m!6177008))

(declare-fun m!6177010 () Bool)

(assert (=> b!5117359 m!6177010))

(declare-fun m!6177012 () Bool)

(assert (=> b!5117359 m!6177012))

(declare-fun m!6177014 () Bool)

(assert (=> b!5117359 m!6177014))

(declare-fun m!6177016 () Bool)

(assert (=> b!5117359 m!6177016))

(declare-fun m!6177018 () Bool)

(assert (=> b!5117358 m!6177018))

(declare-fun m!6177020 () Bool)

(assert (=> b!5117358 m!6177020))

(declare-fun m!6177022 () Bool)

(assert (=> b!5117358 m!6177022))

(declare-fun m!6177024 () Bool)

(assert (=> b!5117358 m!6177024))

(declare-fun m!6177026 () Bool)

(assert (=> b!5117358 m!6177026))

(declare-fun m!6177028 () Bool)

(assert (=> b!5117358 m!6177028))

(declare-fun m!6177030 () Bool)

(assert (=> b!5117358 m!6177030))

(declare-fun m!6177032 () Bool)

(assert (=> b!5117358 m!6177032))

(declare-fun m!6177034 () Bool)

(assert (=> b!5117358 m!6177034))

(declare-fun m!6177036 () Bool)

(assert (=> b!5117358 m!6177036))

(declare-fun m!6177038 () Bool)

(assert (=> b!5117358 m!6177038))

(declare-fun m!6177040 () Bool)

(assert (=> b!5117358 m!6177040))

(declare-fun m!6177042 () Bool)

(assert (=> b!5117358 m!6177042))

(declare-fun m!6177044 () Bool)

(assert (=> b!5117362 m!6177044))

(declare-fun m!6177046 () Bool)

(assert (=> setNonEmpty!30168 m!6177046))

(declare-fun m!6177048 () Bool)

(assert (=> b!5117364 m!6177048))

(declare-fun m!6177050 () Bool)

(assert (=> setNonEmpty!30167 m!6177050))

(declare-fun m!6177052 () Bool)

(assert (=> b!5117369 m!6177052))

(declare-fun m!6177054 () Bool)

(assert (=> b!5117369 m!6177054))

(declare-fun m!6177056 () Bool)

(assert (=> b!5117367 m!6177056))

(declare-fun m!6177058 () Bool)

(assert (=> b!5117368 m!6177058))

(declare-fun m!6177060 () Bool)

(assert (=> b!5117373 m!6177060))

(push 1)

(assert (not b!5117358))

(assert (not b!5117369))

(assert (not b!5117361))

(assert (not b!5117364))

(assert (not b!5117363))

(assert (not setNonEmpty!30167))

(assert tp_is_empty!37661)

(assert (not b!5117367))

(assert (not start!539990))

(assert (not b!5117371))

(assert (not b!5117365))

(assert (not setNonEmpty!30168))

(assert (not b!5117360))

(assert (not b!5117372))

(assert (not b!5117359))

(assert (not b!5117368))

(assert (not b!5117373))

(assert (not b!5117362))

(assert (not b!5117366))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1653729 () Bool)

(declare-fun lt!2109183 () Int)

(assert (=> d!1653729 (>= lt!2109183 0)))

(declare-fun e!3191650 () Int)

(assert (=> d!1653729 (= lt!2109183 e!3191650)))

(declare-fun c!879296 () Bool)

(assert (=> d!1653729 (= c!879296 (is-Nil!59175 input!5745))))

(assert (=> d!1653729 (= (size!39500 input!5745) lt!2109183)))

(declare-fun b!5117426 () Bool)

(assert (=> b!5117426 (= e!3191650 0)))

(declare-fun b!5117427 () Bool)

(assert (=> b!5117427 (= e!3191650 (+ 1 (size!39500 (t!372310 input!5745))))))

(assert (= (and d!1653729 c!879296) b!5117426))

(assert (= (and d!1653729 (not c!879296)) b!5117427))

(declare-fun m!6177122 () Bool)

(assert (=> b!5117427 m!6177122))

(assert (=> b!5117363 d!1653729))

(declare-fun d!1653733 () Bool)

(declare-fun lambda!251001 () Int)

(declare-fun forall!13593 (List!59300 Int) Bool)

(assert (=> d!1653733 (= (inv!78667 setElem!30168) (forall!13593 (exprs!4078 setElem!30168) lambda!251001))))

(declare-fun bs!1192457 () Bool)

(assert (= bs!1192457 d!1653733))

(declare-fun m!6177206 () Bool)

(assert (=> bs!1192457 m!6177206))

(assert (=> setNonEmpty!30168 d!1653733))

(declare-fun d!1653759 () Bool)

(declare-fun c!879315 () Bool)

(assert (=> d!1653759 (= c!879315 (is-Cons!59175 testedP!265))))

(declare-fun e!3191683 () (Set Context!7156))

(assert (=> d!1653759 (= (derivationZipper!93 baseZ!46 testedP!265) e!3191683)))

(declare-fun b!5117484 () Bool)

(assert (=> b!5117484 (= e!3191683 (derivationZipper!93 (derivationStepZipper!829 baseZ!46 (h!65623 testedP!265)) (t!372310 testedP!265)))))

(declare-fun b!5117485 () Bool)

(assert (=> b!5117485 (= e!3191683 baseZ!46)))

(assert (= (and d!1653759 c!879315) b!5117484))

(assert (= (and d!1653759 (not c!879315)) b!5117485))

(declare-fun m!6177208 () Bool)

(assert (=> b!5117484 m!6177208))

(assert (=> b!5117484 m!6177208))

(declare-fun m!6177210 () Bool)

(assert (=> b!5117484 m!6177210))

(assert (=> b!5117364 d!1653759))

(declare-fun b!5117494 () Bool)

(declare-fun e!3191692 () Bool)

(declare-fun e!3191691 () Bool)

(assert (=> b!5117494 (= e!3191692 e!3191691)))

(declare-fun res!2178828 () Bool)

(assert (=> b!5117494 (=> (not res!2178828) (not e!3191691))))

(assert (=> b!5117494 (= res!2178828 (not (is-Nil!59175 input!5745)))))

(declare-fun d!1653761 () Bool)

(declare-fun e!3191690 () Bool)

(assert (=> d!1653761 e!3191690))

(declare-fun res!2178830 () Bool)

(assert (=> d!1653761 (=> res!2178830 e!3191690)))

(declare-fun lt!2109209 () Bool)

(assert (=> d!1653761 (= res!2178830 (not lt!2109209))))

(assert (=> d!1653761 (= lt!2109209 e!3191692)))

(declare-fun res!2178827 () Bool)

(assert (=> d!1653761 (=> res!2178827 e!3191692)))

(assert (=> d!1653761 (= res!2178827 (is-Nil!59175 testedP!265))))

(assert (=> d!1653761 (= (isPrefix!5599 testedP!265 input!5745) lt!2109209)))

(declare-fun b!5117497 () Bool)

(assert (=> b!5117497 (= e!3191690 (>= (size!39500 input!5745) (size!39500 testedP!265)))))

(declare-fun b!5117495 () Bool)

(declare-fun res!2178829 () Bool)

(assert (=> b!5117495 (=> (not res!2178829) (not e!3191691))))

(assert (=> b!5117495 (= res!2178829 (= (head!10922 testedP!265) (head!10922 input!5745)))))

(declare-fun b!5117496 () Bool)

(declare-fun tail!10063 (List!59299) List!59299)

(assert (=> b!5117496 (= e!3191691 (isPrefix!5599 (tail!10063 testedP!265) (tail!10063 input!5745)))))

(assert (= (and d!1653761 (not res!2178827)) b!5117494))

(assert (= (and b!5117494 res!2178828) b!5117495))

(assert (= (and b!5117495 res!2178829) b!5117496))

(assert (= (and d!1653761 (not res!2178830)) b!5117497))

(assert (=> b!5117497 m!6177008))

(assert (=> b!5117497 m!6177052))

(declare-fun m!6177212 () Bool)

(assert (=> b!5117495 m!6177212))

(declare-fun m!6177214 () Bool)

(assert (=> b!5117495 m!6177214))

(declare-fun m!6177216 () Bool)

(assert (=> b!5117496 m!6177216))

(declare-fun m!6177218 () Bool)

(assert (=> b!5117496 m!6177218))

(assert (=> b!5117496 m!6177216))

(assert (=> b!5117496 m!6177218))

(declare-fun m!6177220 () Bool)

(assert (=> b!5117496 m!6177220))

(assert (=> start!539990 d!1653761))

(declare-fun bs!1192458 () Bool)

(declare-fun b!5117502 () Bool)

(declare-fun d!1653763 () Bool)

(assert (= bs!1192458 (and b!5117502 d!1653763)))

(declare-fun lambda!251015 () Int)

(declare-fun lambda!251014 () Int)

(assert (=> bs!1192458 (not (= lambda!251015 lambda!251014))))

(declare-fun bs!1192459 () Bool)

(declare-fun b!5117503 () Bool)

(assert (= bs!1192459 (and b!5117503 d!1653763)))

(declare-fun lambda!251016 () Int)

(assert (=> bs!1192459 (not (= lambda!251016 lambda!251014))))

(declare-fun bs!1192460 () Bool)

(assert (= bs!1192460 (and b!5117503 b!5117502)))

(assert (=> bs!1192460 (= lambda!251016 lambda!251015)))

(declare-fun e!3191699 () Unit!150307)

(declare-fun Unit!150311 () Unit!150307)

(assert (=> b!5117503 (= e!3191699 Unit!150311)))

(declare-datatypes ((List!59303 0))(
  ( (Nil!59179) (Cons!59179 (h!65627 Context!7156) (t!372314 List!59303)) )
))
(declare-fun lt!2109227 () List!59303)

(declare-fun call!356562 () List!59303)

(assert (=> b!5117503 (= lt!2109227 call!356562)))

(declare-fun lt!2109230 () Unit!150307)

(declare-fun lemmaForallThenNotExists!312 (List!59303 Int) Unit!150307)

(assert (=> b!5117503 (= lt!2109230 (lemmaForallThenNotExists!312 lt!2109227 lambda!251014))))

(declare-fun call!356563 () Bool)

(assert (=> b!5117503 (not call!356563)))

(declare-fun lt!2109232 () Unit!150307)

(assert (=> b!5117503 (= lt!2109232 lt!2109230)))

(declare-fun bm!356557 () Bool)

(declare-fun toList!8255 ((Set Context!7156)) List!59303)

(assert (=> bm!356557 (= call!356562 (toList!8255 z!4463))))

(declare-fun Unit!150312 () Unit!150307)

(assert (=> b!5117502 (= e!3191699 Unit!150312)))

(declare-fun lt!2109229 () List!59303)

(assert (=> b!5117502 (= lt!2109229 call!356562)))

(declare-fun lt!2109226 () Unit!150307)

(declare-fun lemmaNotForallThenExists!329 (List!59303 Int) Unit!150307)

(assert (=> b!5117502 (= lt!2109226 (lemmaNotForallThenExists!329 lt!2109229 lambda!251014))))

(assert (=> b!5117502 call!356563))

(declare-fun lt!2109228 () Unit!150307)

(assert (=> b!5117502 (= lt!2109228 lt!2109226)))

(declare-fun bm!356558 () Bool)

(declare-fun c!879326 () Bool)

(declare-fun exists!1466 (List!59303 Int) Bool)

(assert (=> bm!356558 (= call!356563 (exists!1466 (ite c!879326 lt!2109229 lt!2109227) (ite c!879326 lambda!251015 lambda!251016)))))

(declare-fun lt!2109231 () Bool)

(declare-datatypes ((Option!14689 0))(
  ( (None!14688) (Some!14688 (v!50701 List!59299)) )
))
(declare-fun isEmpty!31918 (Option!14689) Bool)

(declare-fun getLanguageWitness!806 ((Set Context!7156)) Option!14689)

(assert (=> d!1653763 (= lt!2109231 (isEmpty!31918 (getLanguageWitness!806 z!4463)))))

(declare-fun forall!13594 ((Set Context!7156) Int) Bool)

(assert (=> d!1653763 (= lt!2109231 (forall!13594 z!4463 lambda!251014))))

(declare-fun lt!2109233 () Unit!150307)

(assert (=> d!1653763 (= lt!2109233 e!3191699)))

(assert (=> d!1653763 (= c!879326 (not (forall!13594 z!4463 lambda!251014)))))

(assert (=> d!1653763 (= (lostCauseZipper!1080 z!4463) lt!2109231)))

(assert (= (and d!1653763 c!879326) b!5117502))

(assert (= (and d!1653763 (not c!879326)) b!5117503))

(assert (= (or b!5117502 b!5117503) bm!356557))

(assert (= (or b!5117502 b!5117503) bm!356558))

(declare-fun m!6177222 () Bool)

(assert (=> b!5117502 m!6177222))

(declare-fun m!6177224 () Bool)

(assert (=> d!1653763 m!6177224))

(assert (=> d!1653763 m!6177224))

(declare-fun m!6177226 () Bool)

(assert (=> d!1653763 m!6177226))

(declare-fun m!6177228 () Bool)

(assert (=> d!1653763 m!6177228))

(assert (=> d!1653763 m!6177228))

(declare-fun m!6177230 () Bool)

(assert (=> b!5117503 m!6177230))

(declare-fun m!6177232 () Bool)

(assert (=> bm!356558 m!6177232))

(declare-fun m!6177234 () Bool)

(assert (=> bm!356557 m!6177234))

(assert (=> b!5117373 d!1653763))

(declare-fun bs!1192461 () Bool)

(declare-fun d!1653765 () Bool)

(assert (= bs!1192461 (and d!1653765 d!1653733)))

(declare-fun lambda!251017 () Int)

(assert (=> bs!1192461 (= lambda!251017 lambda!251001)))

(assert (=> d!1653765 (= (inv!78667 setElem!30167) (forall!13593 (exprs!4078 setElem!30167) lambda!251017))))

(declare-fun bs!1192462 () Bool)

(assert (= bs!1192462 d!1653765))

(declare-fun m!6177236 () Bool)

(assert (=> bs!1192462 m!6177236))

(assert (=> setNonEmpty!30167 d!1653765))

(declare-fun d!1653767 () Bool)

(declare-fun lt!2109236 () List!59299)

(assert (=> d!1653767 (= (++!13019 testedP!265 lt!2109236) input!5745)))

(declare-fun e!3191702 () List!59299)

(assert (=> d!1653767 (= lt!2109236 e!3191702)))

(declare-fun c!879329 () Bool)

(assert (=> d!1653767 (= c!879329 (is-Cons!59175 testedP!265))))

(assert (=> d!1653767 (>= (size!39500 input!5745) (size!39500 testedP!265))))

(assert (=> d!1653767 (= (getSuffix!3273 input!5745 testedP!265) lt!2109236)))

(declare-fun b!5117508 () Bool)

(assert (=> b!5117508 (= e!3191702 (getSuffix!3273 (tail!10063 input!5745) (t!372310 testedP!265)))))

(declare-fun b!5117509 () Bool)

(assert (=> b!5117509 (= e!3191702 input!5745)))

(assert (= (and d!1653767 c!879329) b!5117508))

(assert (= (and d!1653767 (not c!879329)) b!5117509))

(declare-fun m!6177238 () Bool)

(assert (=> d!1653767 m!6177238))

(assert (=> d!1653767 m!6177008))

(assert (=> d!1653767 m!6177052))

(assert (=> b!5117508 m!6177218))

(assert (=> b!5117508 m!6177218))

(declare-fun m!6177240 () Bool)

(assert (=> b!5117508 m!6177240))

(assert (=> b!5117358 d!1653767))

(declare-fun d!1653769 () Bool)

(declare-fun lt!2109237 () List!59299)

(assert (=> d!1653769 (= (++!13019 lt!2109137 lt!2109237) knownP!20)))

(declare-fun e!3191703 () List!59299)

(assert (=> d!1653769 (= lt!2109237 e!3191703)))

(declare-fun c!879330 () Bool)

(assert (=> d!1653769 (= c!879330 (is-Cons!59175 lt!2109137))))

(assert (=> d!1653769 (>= (size!39500 knownP!20) (size!39500 lt!2109137))))

(assert (=> d!1653769 (= (getSuffix!3273 knownP!20 lt!2109137) lt!2109237)))

(declare-fun b!5117510 () Bool)

(assert (=> b!5117510 (= e!3191703 (getSuffix!3273 (tail!10063 knownP!20) (t!372310 lt!2109137)))))

(declare-fun b!5117511 () Bool)

(assert (=> b!5117511 (= e!3191703 knownP!20)))

(assert (= (and d!1653769 c!879330) b!5117510))

(assert (= (and d!1653769 (not c!879330)) b!5117511))

(declare-fun m!6177242 () Bool)

(assert (=> d!1653769 m!6177242))

(assert (=> d!1653769 m!6177054))

(declare-fun m!6177244 () Bool)

(assert (=> d!1653769 m!6177244))

(declare-fun m!6177246 () Bool)

(assert (=> b!5117510 m!6177246))

(assert (=> b!5117510 m!6177246))

(declare-fun m!6177248 () Bool)

(assert (=> b!5117510 m!6177248))

(assert (=> b!5117358 d!1653769))

(declare-fun b!5117512 () Bool)

(declare-fun e!3191706 () Bool)

(declare-fun e!3191705 () Bool)

(assert (=> b!5117512 (= e!3191706 e!3191705)))

(declare-fun res!2178832 () Bool)

(assert (=> b!5117512 (=> (not res!2178832) (not e!3191705))))

(assert (=> b!5117512 (= res!2178832 (not (is-Nil!59175 knownP!20)))))

(declare-fun d!1653771 () Bool)

(declare-fun e!3191704 () Bool)

(assert (=> d!1653771 e!3191704))

(declare-fun res!2178834 () Bool)

(assert (=> d!1653771 (=> res!2178834 e!3191704)))

(declare-fun lt!2109238 () Bool)

(assert (=> d!1653771 (= res!2178834 (not lt!2109238))))

(assert (=> d!1653771 (= lt!2109238 e!3191706)))

(declare-fun res!2178831 () Bool)

(assert (=> d!1653771 (=> res!2178831 e!3191706)))

(assert (=> d!1653771 (= res!2178831 (is-Nil!59175 lt!2109137))))

(assert (=> d!1653771 (= (isPrefix!5599 lt!2109137 knownP!20) lt!2109238)))

(declare-fun b!5117515 () Bool)

(assert (=> b!5117515 (= e!3191704 (>= (size!39500 knownP!20) (size!39500 lt!2109137)))))

(declare-fun b!5117513 () Bool)

(declare-fun res!2178833 () Bool)

(assert (=> b!5117513 (=> (not res!2178833) (not e!3191705))))

(assert (=> b!5117513 (= res!2178833 (= (head!10922 lt!2109137) (head!10922 knownP!20)))))

(declare-fun b!5117514 () Bool)

(assert (=> b!5117514 (= e!3191705 (isPrefix!5599 (tail!10063 lt!2109137) (tail!10063 knownP!20)))))

(assert (= (and d!1653771 (not res!2178831)) b!5117512))

(assert (= (and b!5117512 res!2178832) b!5117513))

(assert (= (and b!5117513 res!2178833) b!5117514))

(assert (= (and d!1653771 (not res!2178834)) b!5117515))

(assert (=> b!5117515 m!6177054))

(assert (=> b!5117515 m!6177244))

(declare-fun m!6177250 () Bool)

(assert (=> b!5117513 m!6177250))

(declare-fun m!6177252 () Bool)

(assert (=> b!5117513 m!6177252))

(declare-fun m!6177254 () Bool)

(assert (=> b!5117514 m!6177254))

(assert (=> b!5117514 m!6177246))

(assert (=> b!5117514 m!6177254))

(assert (=> b!5117514 m!6177246))

(declare-fun m!6177256 () Bool)

(assert (=> b!5117514 m!6177256))

(assert (=> b!5117358 d!1653771))

(declare-fun d!1653773 () Bool)

(declare-fun c!879331 () Bool)

(assert (=> d!1653773 (= c!879331 (is-Cons!59175 lt!2109137))))

(declare-fun e!3191707 () (Set Context!7156))

(assert (=> d!1653773 (= (derivationZipper!93 baseZ!46 lt!2109137) e!3191707)))

(declare-fun b!5117516 () Bool)

(assert (=> b!5117516 (= e!3191707 (derivationZipper!93 (derivationStepZipper!829 baseZ!46 (h!65623 lt!2109137)) (t!372310 lt!2109137)))))

(declare-fun b!5117517 () Bool)

(assert (=> b!5117517 (= e!3191707 baseZ!46)))

(assert (= (and d!1653773 c!879331) b!5117516))

(assert (= (and d!1653773 (not c!879331)) b!5117517))

(declare-fun m!6177258 () Bool)

(assert (=> b!5117516 m!6177258))

(assert (=> b!5117516 m!6177258))

(declare-fun m!6177260 () Bool)

(assert (=> b!5117516 m!6177260))

(assert (=> b!5117358 d!1653773))

(declare-fun d!1653775 () Bool)

(assert (=> d!1653775 (isPrefix!5599 (++!13019 testedP!265 (Cons!59175 (head!10922 (getSuffix!3273 input!5745 testedP!265)) Nil!59175)) input!5745)))

(declare-fun lt!2109241 () Unit!150307)

(declare-fun choose!37585 (List!59299 List!59299) Unit!150307)

(assert (=> d!1653775 (= lt!2109241 (choose!37585 testedP!265 input!5745))))

(assert (=> d!1653775 (isPrefix!5599 testedP!265 input!5745)))

(assert (=> d!1653775 (= (lemmaAddHeadSuffixToPrefixStillPrefix!985 testedP!265 input!5745) lt!2109241)))

(declare-fun bs!1192463 () Bool)

(assert (= bs!1192463 d!1653775))

(assert (=> bs!1192463 m!6177018))

(declare-fun m!6177262 () Bool)

(assert (=> bs!1192463 m!6177262))

(declare-fun m!6177264 () Bool)

(assert (=> bs!1192463 m!6177264))

(declare-fun m!6177266 () Bool)

(assert (=> bs!1192463 m!6177266))

(assert (=> bs!1192463 m!6177264))

(assert (=> bs!1192463 m!6177002))

(assert (=> bs!1192463 m!6177018))

(declare-fun m!6177268 () Bool)

(assert (=> bs!1192463 m!6177268))

(assert (=> b!5117358 d!1653775))

(declare-fun b!5117528 () Bool)

(declare-fun res!2178840 () Bool)

(declare-fun e!3191713 () Bool)

(assert (=> b!5117528 (=> (not res!2178840) (not e!3191713))))

(declare-fun lt!2109244 () List!59299)

(assert (=> b!5117528 (= res!2178840 (= (size!39500 lt!2109244) (+ (size!39500 knownP!20) (size!39500 lt!2109144))))))

(declare-fun d!1653777 () Bool)

(assert (=> d!1653777 e!3191713))

(declare-fun res!2178839 () Bool)

(assert (=> d!1653777 (=> (not res!2178839) (not e!3191713))))

(declare-fun content!10520 (List!59299) (Set C!28654))

(assert (=> d!1653777 (= res!2178839 (= (content!10520 lt!2109244) (set.union (content!10520 knownP!20) (content!10520 lt!2109144))))))

(declare-fun e!3191712 () List!59299)

(assert (=> d!1653777 (= lt!2109244 e!3191712)))

(declare-fun c!879334 () Bool)

(assert (=> d!1653777 (= c!879334 (is-Nil!59175 knownP!20))))

(assert (=> d!1653777 (= (++!13019 knownP!20 lt!2109144) lt!2109244)))

(declare-fun b!5117527 () Bool)

(assert (=> b!5117527 (= e!3191712 (Cons!59175 (h!65623 knownP!20) (++!13019 (t!372310 knownP!20) lt!2109144)))))

(declare-fun b!5117529 () Bool)

(assert (=> b!5117529 (= e!3191713 (or (not (= lt!2109144 Nil!59175)) (= lt!2109244 knownP!20)))))

(declare-fun b!5117526 () Bool)

(assert (=> b!5117526 (= e!3191712 lt!2109144)))

(assert (= (and d!1653777 c!879334) b!5117526))

(assert (= (and d!1653777 (not c!879334)) b!5117527))

(assert (= (and d!1653777 res!2178839) b!5117528))

(assert (= (and b!5117528 res!2178840) b!5117529))

(declare-fun m!6177270 () Bool)

(assert (=> b!5117528 m!6177270))

(assert (=> b!5117528 m!6177054))

(declare-fun m!6177272 () Bool)

(assert (=> b!5117528 m!6177272))

(declare-fun m!6177274 () Bool)

(assert (=> d!1653777 m!6177274))

(declare-fun m!6177276 () Bool)

(assert (=> d!1653777 m!6177276))

(declare-fun m!6177278 () Bool)

(assert (=> d!1653777 m!6177278))

(declare-fun m!6177280 () Bool)

(assert (=> b!5117527 m!6177280))

(assert (=> b!5117358 d!1653777))

(declare-fun d!1653779 () Bool)

(assert (=> d!1653779 (isPrefix!5599 lt!2109137 knownP!20)))

(declare-fun lt!2109247 () Unit!150307)

(declare-fun choose!37586 (List!59299 List!59299 List!59299) Unit!150307)

(assert (=> d!1653779 (= lt!2109247 (choose!37586 knownP!20 lt!2109137 input!5745))))

(assert (=> d!1653779 (isPrefix!5599 knownP!20 input!5745)))

(assert (=> d!1653779 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!736 knownP!20 lt!2109137 input!5745) lt!2109247)))

(declare-fun bs!1192464 () Bool)

(assert (= bs!1192464 d!1653779))

(assert (=> bs!1192464 m!6177022))

(declare-fun m!6177282 () Bool)

(assert (=> bs!1192464 m!6177282))

(assert (=> bs!1192464 m!6177056))

(assert (=> b!5117358 d!1653779))

(declare-fun d!1653781 () Bool)

(declare-fun lt!2109248 () List!59299)

(assert (=> d!1653781 (= (++!13019 knownP!20 lt!2109248) input!5745)))

(declare-fun e!3191714 () List!59299)

(assert (=> d!1653781 (= lt!2109248 e!3191714)))

(declare-fun c!879335 () Bool)

(assert (=> d!1653781 (= c!879335 (is-Cons!59175 knownP!20))))

(assert (=> d!1653781 (>= (size!39500 input!5745) (size!39500 knownP!20))))

(assert (=> d!1653781 (= (getSuffix!3273 input!5745 knownP!20) lt!2109248)))

(declare-fun b!5117530 () Bool)

(assert (=> b!5117530 (= e!3191714 (getSuffix!3273 (tail!10063 input!5745) (t!372310 knownP!20)))))

(declare-fun b!5117531 () Bool)

(assert (=> b!5117531 (= e!3191714 input!5745)))

(assert (= (and d!1653781 c!879335) b!5117530))

(assert (= (and d!1653781 (not c!879335)) b!5117531))

(declare-fun m!6177284 () Bool)

(assert (=> d!1653781 m!6177284))

(assert (=> d!1653781 m!6177008))

(assert (=> d!1653781 m!6177054))

(assert (=> b!5117530 m!6177218))

(assert (=> b!5117530 m!6177218))

(declare-fun m!6177286 () Bool)

(assert (=> b!5117530 m!6177286))

(assert (=> b!5117358 d!1653781))

(declare-fun d!1653783 () Bool)

(assert (=> d!1653783 true))

(declare-fun lambda!251020 () Int)

(declare-fun flatMap!349 ((Set Context!7156) Int) (Set Context!7156))

(assert (=> d!1653783 (= (derivationStepZipper!829 z!4463 lt!2109142) (flatMap!349 z!4463 lambda!251020))))

(declare-fun bs!1192465 () Bool)

(assert (= bs!1192465 d!1653783))

(declare-fun m!6177288 () Bool)

(assert (=> bs!1192465 m!6177288))

(assert (=> b!5117358 d!1653783))

(declare-fun d!1653785 () Bool)

(assert (=> d!1653785 (= (head!10922 lt!2109134) (h!65623 lt!2109134))))

(assert (=> b!5117358 d!1653785))

(declare-fun d!1653787 () Bool)

(assert (=> d!1653787 (= (derivationZipper!93 baseZ!46 (++!13019 testedP!265 (Cons!59175 lt!2109142 Nil!59175))) (derivationStepZipper!829 z!4463 lt!2109142))))

(declare-fun lt!2109251 () Unit!150307)

(declare-fun choose!37587 ((Set Context!7156) (Set Context!7156) List!59299 C!28654) Unit!150307)

(assert (=> d!1653787 (= lt!2109251 (choose!37587 baseZ!46 z!4463 testedP!265 lt!2109142))))

(assert (=> d!1653787 (= (derivationZipper!93 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1653787 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!50 baseZ!46 z!4463 testedP!265 lt!2109142) lt!2109251)))

(declare-fun bs!1192466 () Bool)

(assert (= bs!1192466 d!1653787))

(assert (=> bs!1192466 m!6177038))

(declare-fun m!6177290 () Bool)

(assert (=> bs!1192466 m!6177290))

(assert (=> bs!1192466 m!6177032))

(declare-fun m!6177292 () Bool)

(assert (=> bs!1192466 m!6177292))

(assert (=> bs!1192466 m!6177032))

(assert (=> bs!1192466 m!6177048))

(assert (=> b!5117358 d!1653787))

(declare-fun b!5117536 () Bool)

(declare-fun res!2178842 () Bool)

(declare-fun e!3191716 () Bool)

(assert (=> b!5117536 (=> (not res!2178842) (not e!3191716))))

(declare-fun lt!2109252 () List!59299)

(assert (=> b!5117536 (= res!2178842 (= (size!39500 lt!2109252) (+ (size!39500 testedP!265) (size!39500 (Cons!59175 lt!2109142 Nil!59175)))))))

(declare-fun d!1653789 () Bool)

(assert (=> d!1653789 e!3191716))

(declare-fun res!2178841 () Bool)

(assert (=> d!1653789 (=> (not res!2178841) (not e!3191716))))

(assert (=> d!1653789 (= res!2178841 (= (content!10520 lt!2109252) (set.union (content!10520 testedP!265) (content!10520 (Cons!59175 lt!2109142 Nil!59175)))))))

(declare-fun e!3191715 () List!59299)

(assert (=> d!1653789 (= lt!2109252 e!3191715)))

(declare-fun c!879339 () Bool)

(assert (=> d!1653789 (= c!879339 (is-Nil!59175 testedP!265))))

(assert (=> d!1653789 (= (++!13019 testedP!265 (Cons!59175 lt!2109142 Nil!59175)) lt!2109252)))

(declare-fun b!5117535 () Bool)

(assert (=> b!5117535 (= e!3191715 (Cons!59175 (h!65623 testedP!265) (++!13019 (t!372310 testedP!265) (Cons!59175 lt!2109142 Nil!59175))))))

(declare-fun b!5117537 () Bool)

(assert (=> b!5117537 (= e!3191716 (or (not (= (Cons!59175 lt!2109142 Nil!59175) Nil!59175)) (= lt!2109252 testedP!265)))))

(declare-fun b!5117534 () Bool)

(assert (=> b!5117534 (= e!3191715 (Cons!59175 lt!2109142 Nil!59175))))

(assert (= (and d!1653789 c!879339) b!5117534))

(assert (= (and d!1653789 (not c!879339)) b!5117535))

(assert (= (and d!1653789 res!2178841) b!5117536))

(assert (= (and b!5117536 res!2178842) b!5117537))

(declare-fun m!6177294 () Bool)

(assert (=> b!5117536 m!6177294))

(assert (=> b!5117536 m!6177052))

(declare-fun m!6177296 () Bool)

(assert (=> b!5117536 m!6177296))

(declare-fun m!6177298 () Bool)

(assert (=> d!1653789 m!6177298))

(declare-fun m!6177300 () Bool)

(assert (=> d!1653789 m!6177300))

(declare-fun m!6177302 () Bool)

(assert (=> d!1653789 m!6177302))

(declare-fun m!6177304 () Bool)

(assert (=> b!5117535 m!6177304))

(assert (=> b!5117358 d!1653789))

(declare-fun b!5117538 () Bool)

(declare-fun e!3191719 () Bool)

(declare-fun e!3191718 () Bool)

(assert (=> b!5117538 (= e!3191719 e!3191718)))

(declare-fun res!2178844 () Bool)

(assert (=> b!5117538 (=> (not res!2178844) (not e!3191718))))

(assert (=> b!5117538 (= res!2178844 (not (is-Nil!59175 input!5745)))))

(declare-fun d!1653791 () Bool)

(declare-fun e!3191717 () Bool)

(assert (=> d!1653791 e!3191717))

(declare-fun res!2178846 () Bool)

(assert (=> d!1653791 (=> res!2178846 e!3191717)))

(declare-fun lt!2109253 () Bool)

(assert (=> d!1653791 (= res!2178846 (not lt!2109253))))

(assert (=> d!1653791 (= lt!2109253 e!3191719)))

(declare-fun res!2178843 () Bool)

(assert (=> d!1653791 (=> res!2178843 e!3191719)))

(assert (=> d!1653791 (= res!2178843 (is-Nil!59175 lt!2109137))))

(assert (=> d!1653791 (= (isPrefix!5599 lt!2109137 input!5745) lt!2109253)))

(declare-fun b!5117541 () Bool)

(assert (=> b!5117541 (= e!3191717 (>= (size!39500 input!5745) (size!39500 lt!2109137)))))

(declare-fun b!5117539 () Bool)

(declare-fun res!2178845 () Bool)

(assert (=> b!5117539 (=> (not res!2178845) (not e!3191718))))

(assert (=> b!5117539 (= res!2178845 (= (head!10922 lt!2109137) (head!10922 input!5745)))))

(declare-fun b!5117540 () Bool)

(assert (=> b!5117540 (= e!3191718 (isPrefix!5599 (tail!10063 lt!2109137) (tail!10063 input!5745)))))

(assert (= (and d!1653791 (not res!2178843)) b!5117538))

(assert (= (and b!5117538 res!2178844) b!5117539))

(assert (= (and b!5117539 res!2178845) b!5117540))

(assert (= (and d!1653791 (not res!2178846)) b!5117541))

(assert (=> b!5117541 m!6177008))

(assert (=> b!5117541 m!6177244))

(assert (=> b!5117539 m!6177250))

(assert (=> b!5117539 m!6177214))

(assert (=> b!5117540 m!6177254))

(assert (=> b!5117540 m!6177218))

(assert (=> b!5117540 m!6177254))

(assert (=> b!5117540 m!6177218))

(declare-fun m!6177306 () Bool)

(assert (=> b!5117540 m!6177306))

(assert (=> b!5117358 d!1653791))

(declare-fun b!5117542 () Bool)

(declare-fun e!3191722 () Bool)

(declare-fun e!3191721 () Bool)

(assert (=> b!5117542 (= e!3191722 e!3191721)))

(declare-fun res!2178848 () Bool)

(assert (=> b!5117542 (=> (not res!2178848) (not e!3191721))))

(assert (=> b!5117542 (= res!2178848 (not (is-Nil!59175 input!5745)))))

(declare-fun d!1653793 () Bool)

(declare-fun e!3191720 () Bool)

(assert (=> d!1653793 e!3191720))

(declare-fun res!2178850 () Bool)

(assert (=> d!1653793 (=> res!2178850 e!3191720)))

(declare-fun lt!2109254 () Bool)

(assert (=> d!1653793 (= res!2178850 (not lt!2109254))))

(assert (=> d!1653793 (= lt!2109254 e!3191722)))

(declare-fun res!2178847 () Bool)

(assert (=> d!1653793 (=> res!2178847 e!3191722)))

(assert (=> d!1653793 (= res!2178847 (is-Nil!59175 knownP!20))))

(assert (=> d!1653793 (= (isPrefix!5599 knownP!20 input!5745) lt!2109254)))

(declare-fun b!5117545 () Bool)

(assert (=> b!5117545 (= e!3191720 (>= (size!39500 input!5745) (size!39500 knownP!20)))))

(declare-fun b!5117543 () Bool)

(declare-fun res!2178849 () Bool)

(assert (=> b!5117543 (=> (not res!2178849) (not e!3191721))))

(assert (=> b!5117543 (= res!2178849 (= (head!10922 knownP!20) (head!10922 input!5745)))))

(declare-fun b!5117544 () Bool)

(assert (=> b!5117544 (= e!3191721 (isPrefix!5599 (tail!10063 knownP!20) (tail!10063 input!5745)))))

(assert (= (and d!1653793 (not res!2178847)) b!5117542))

(assert (= (and b!5117542 res!2178848) b!5117543))

(assert (= (and b!5117543 res!2178849) b!5117544))

(assert (= (and d!1653793 (not res!2178850)) b!5117545))

(assert (=> b!5117545 m!6177008))

(assert (=> b!5117545 m!6177054))

(assert (=> b!5117543 m!6177252))

(assert (=> b!5117543 m!6177214))

(assert (=> b!5117544 m!6177246))

(assert (=> b!5117544 m!6177218))

(assert (=> b!5117544 m!6177246))

(assert (=> b!5117544 m!6177218))

(declare-fun m!6177308 () Bool)

(assert (=> b!5117544 m!6177308))

(assert (=> b!5117367 d!1653793))

(declare-fun d!1653795 () Bool)

(declare-fun c!879342 () Bool)

(declare-fun isEmpty!31919 (List!59299) Bool)

(assert (=> d!1653795 (= c!879342 (isEmpty!31919 lt!2109140))))

(declare-fun e!3191725 () Bool)

(assert (=> d!1653795 (= (matchZipper!862 z!4463 lt!2109140) e!3191725)))

(declare-fun b!5117550 () Bool)

(declare-fun nullableZipper!1019 ((Set Context!7156)) Bool)

(assert (=> b!5117550 (= e!3191725 (nullableZipper!1019 z!4463))))

(declare-fun b!5117551 () Bool)

(assert (=> b!5117551 (= e!3191725 (matchZipper!862 (derivationStepZipper!829 z!4463 (head!10922 lt!2109140)) (tail!10063 lt!2109140)))))

(assert (= (and d!1653795 c!879342) b!5117550))

(assert (= (and d!1653795 (not c!879342)) b!5117551))

(declare-fun m!6177310 () Bool)

(assert (=> d!1653795 m!6177310))

(declare-fun m!6177312 () Bool)

(assert (=> b!5117550 m!6177312))

(declare-fun m!6177314 () Bool)

(assert (=> b!5117551 m!6177314))

(assert (=> b!5117551 m!6177314))

(declare-fun m!6177316 () Bool)

(assert (=> b!5117551 m!6177316))

(declare-fun m!6177318 () Bool)

(assert (=> b!5117551 m!6177318))

(assert (=> b!5117551 m!6177316))

(assert (=> b!5117551 m!6177318))

(declare-fun m!6177320 () Bool)

(assert (=> b!5117551 m!6177320))

(assert (=> b!5117359 d!1653795))

(declare-fun d!1653797 () Bool)

(declare-fun lt!2109255 () List!59299)

(assert (=> d!1653797 (= (++!13019 testedP!265 lt!2109255) knownP!20)))

(declare-fun e!3191726 () List!59299)

(assert (=> d!1653797 (= lt!2109255 e!3191726)))

(declare-fun c!879343 () Bool)

(assert (=> d!1653797 (= c!879343 (is-Cons!59175 testedP!265))))

(assert (=> d!1653797 (>= (size!39500 knownP!20) (size!39500 testedP!265))))

(assert (=> d!1653797 (= (getSuffix!3273 knownP!20 testedP!265) lt!2109255)))

(declare-fun b!5117552 () Bool)

(assert (=> b!5117552 (= e!3191726 (getSuffix!3273 (tail!10063 knownP!20) (t!372310 testedP!265)))))

(declare-fun b!5117553 () Bool)

(assert (=> b!5117553 (= e!3191726 knownP!20)))

(assert (= (and d!1653797 c!879343) b!5117552))

(assert (= (and d!1653797 (not c!879343)) b!5117553))

(declare-fun m!6177322 () Bool)

(assert (=> d!1653797 m!6177322))

(assert (=> d!1653797 m!6177054))

(assert (=> d!1653797 m!6177052))

(assert (=> b!5117552 m!6177246))

(assert (=> b!5117552 m!6177246))

(declare-fun m!6177324 () Bool)

(assert (=> b!5117552 m!6177324))

(assert (=> b!5117359 d!1653797))

(declare-fun b!5117554 () Bool)

(declare-fun e!3191729 () Bool)

(declare-fun e!3191728 () Bool)

(assert (=> b!5117554 (= e!3191729 e!3191728)))

(declare-fun res!2178852 () Bool)

(assert (=> b!5117554 (=> (not res!2178852) (not e!3191728))))

(assert (=> b!5117554 (= res!2178852 (not (is-Nil!59175 knownP!20)))))

(declare-fun d!1653799 () Bool)

(declare-fun e!3191727 () Bool)

(assert (=> d!1653799 e!3191727))

(declare-fun res!2178854 () Bool)

(assert (=> d!1653799 (=> res!2178854 e!3191727)))

(declare-fun lt!2109256 () Bool)

(assert (=> d!1653799 (= res!2178854 (not lt!2109256))))

(assert (=> d!1653799 (= lt!2109256 e!3191729)))

(declare-fun res!2178851 () Bool)

(assert (=> d!1653799 (=> res!2178851 e!3191729)))

(assert (=> d!1653799 (= res!2178851 (is-Nil!59175 testedP!265))))

(assert (=> d!1653799 (= (isPrefix!5599 testedP!265 knownP!20) lt!2109256)))

(declare-fun b!5117557 () Bool)

(assert (=> b!5117557 (= e!3191727 (>= (size!39500 knownP!20) (size!39500 testedP!265)))))

(declare-fun b!5117555 () Bool)

(declare-fun res!2178853 () Bool)

(assert (=> b!5117555 (=> (not res!2178853) (not e!3191728))))

(assert (=> b!5117555 (= res!2178853 (= (head!10922 testedP!265) (head!10922 knownP!20)))))

(declare-fun b!5117556 () Bool)

(assert (=> b!5117556 (= e!3191728 (isPrefix!5599 (tail!10063 testedP!265) (tail!10063 knownP!20)))))

(assert (= (and d!1653799 (not res!2178851)) b!5117554))

(assert (= (and b!5117554 res!2178852) b!5117555))

(assert (= (and b!5117555 res!2178853) b!5117556))

(assert (= (and d!1653799 (not res!2178854)) b!5117557))

(assert (=> b!5117557 m!6177054))

(assert (=> b!5117557 m!6177052))

(assert (=> b!5117555 m!6177212))

(assert (=> b!5117555 m!6177252))

(assert (=> b!5117556 m!6177216))

(assert (=> b!5117556 m!6177246))

(assert (=> b!5117556 m!6177216))

(assert (=> b!5117556 m!6177246))

(declare-fun m!6177326 () Bool)

(assert (=> b!5117556 m!6177326))

(assert (=> b!5117359 d!1653799))

(declare-fun d!1653801 () Bool)

(assert (=> d!1653801 (isPrefix!5599 testedP!265 knownP!20)))

(declare-fun lt!2109257 () Unit!150307)

(assert (=> d!1653801 (= lt!2109257 (choose!37586 knownP!20 testedP!265 input!5745))))

(assert (=> d!1653801 (isPrefix!5599 knownP!20 input!5745)))

(assert (=> d!1653801 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!736 knownP!20 testedP!265 input!5745) lt!2109257)))

(declare-fun bs!1192467 () Bool)

(assert (= bs!1192467 d!1653801))

(assert (=> bs!1192467 m!6177014))

(declare-fun m!6177328 () Bool)

(assert (=> bs!1192467 m!6177328))

(assert (=> bs!1192467 m!6177056))

(assert (=> b!5117359 d!1653801))

(declare-fun d!1653803 () Bool)

(declare-fun c!879344 () Bool)

(assert (=> d!1653803 (= c!879344 (isEmpty!31919 knownP!20))))

(declare-fun e!3191730 () Bool)

(assert (=> d!1653803 (= (matchZipper!862 baseZ!46 knownP!20) e!3191730)))

(declare-fun b!5117558 () Bool)

(assert (=> b!5117558 (= e!3191730 (nullableZipper!1019 baseZ!46))))

(declare-fun b!5117559 () Bool)

(assert (=> b!5117559 (= e!3191730 (matchZipper!862 (derivationStepZipper!829 baseZ!46 (head!10922 knownP!20)) (tail!10063 knownP!20)))))

(assert (= (and d!1653803 c!879344) b!5117558))

(assert (= (and d!1653803 (not c!879344)) b!5117559))

(declare-fun m!6177330 () Bool)

(assert (=> d!1653803 m!6177330))

(declare-fun m!6177332 () Bool)

(assert (=> b!5117558 m!6177332))

(assert (=> b!5117559 m!6177252))

(assert (=> b!5117559 m!6177252))

(declare-fun m!6177334 () Bool)

(assert (=> b!5117559 m!6177334))

(assert (=> b!5117559 m!6177246))

(assert (=> b!5117559 m!6177334))

(assert (=> b!5117559 m!6177246))

(declare-fun m!6177336 () Bool)

(assert (=> b!5117559 m!6177336))

(assert (=> b!5117368 d!1653803))

(declare-fun d!1653805 () Bool)

(declare-fun lt!2109258 () Int)

(assert (=> d!1653805 (>= lt!2109258 0)))

(declare-fun e!3191731 () Int)

(assert (=> d!1653805 (= lt!2109258 e!3191731)))

(declare-fun c!879345 () Bool)

(assert (=> d!1653805 (= c!879345 (is-Nil!59175 testedP!265))))

(assert (=> d!1653805 (= (size!39500 testedP!265) lt!2109258)))

(declare-fun b!5117560 () Bool)

(assert (=> b!5117560 (= e!3191731 0)))

(declare-fun b!5117561 () Bool)

(assert (=> b!5117561 (= e!3191731 (+ 1 (size!39500 (t!372310 testedP!265))))))

(assert (= (and d!1653805 c!879345) b!5117560))

(assert (= (and d!1653805 (not c!879345)) b!5117561))

(declare-fun m!6177338 () Bool)

(assert (=> b!5117561 m!6177338))

(assert (=> b!5117369 d!1653805))

(declare-fun d!1653807 () Bool)

(declare-fun lt!2109259 () Int)

(assert (=> d!1653807 (>= lt!2109259 0)))

(declare-fun e!3191732 () Int)

(assert (=> d!1653807 (= lt!2109259 e!3191732)))

(declare-fun c!879346 () Bool)

(assert (=> d!1653807 (= c!879346 (is-Nil!59175 knownP!20))))

(assert (=> d!1653807 (= (size!39500 knownP!20) lt!2109259)))

(declare-fun b!5117562 () Bool)

(assert (=> b!5117562 (= e!3191732 0)))

(declare-fun b!5117563 () Bool)

(assert (=> b!5117563 (= e!3191732 (+ 1 (size!39500 (t!372310 knownP!20))))))

(assert (= (and d!1653807 c!879346) b!5117562))

(assert (= (and d!1653807 (not c!879346)) b!5117563))

(declare-fun m!6177340 () Bool)

(assert (=> b!5117563 m!6177340))

(assert (=> b!5117369 d!1653807))

(declare-fun b!5117566 () Bool)

(declare-fun res!2178856 () Bool)

(declare-fun e!3191734 () Bool)

(assert (=> b!5117566 (=> (not res!2178856) (not e!3191734))))

(declare-fun lt!2109260 () List!59299)

(assert (=> b!5117566 (= res!2178856 (= (size!39500 lt!2109260) (+ (size!39500 (++!13019 testedP!265 lt!2109140)) (size!39500 lt!2109144))))))

(declare-fun d!1653809 () Bool)

(assert (=> d!1653809 e!3191734))

(declare-fun res!2178855 () Bool)

(assert (=> d!1653809 (=> (not res!2178855) (not e!3191734))))

(assert (=> d!1653809 (= res!2178855 (= (content!10520 lt!2109260) (set.union (content!10520 (++!13019 testedP!265 lt!2109140)) (content!10520 lt!2109144))))))

(declare-fun e!3191733 () List!59299)

(assert (=> d!1653809 (= lt!2109260 e!3191733)))

(declare-fun c!879347 () Bool)

(assert (=> d!1653809 (= c!879347 (is-Nil!59175 (++!13019 testedP!265 lt!2109140)))))

(assert (=> d!1653809 (= (++!13019 (++!13019 testedP!265 lt!2109140) lt!2109144) lt!2109260)))

(declare-fun b!5117565 () Bool)

(assert (=> b!5117565 (= e!3191733 (Cons!59175 (h!65623 (++!13019 testedP!265 lt!2109140)) (++!13019 (t!372310 (++!13019 testedP!265 lt!2109140)) lt!2109144)))))

(declare-fun b!5117567 () Bool)

(assert (=> b!5117567 (= e!3191734 (or (not (= lt!2109144 Nil!59175)) (= lt!2109260 (++!13019 testedP!265 lt!2109140))))))

(declare-fun b!5117564 () Bool)

(assert (=> b!5117564 (= e!3191733 lt!2109144)))

(assert (= (and d!1653809 c!879347) b!5117564))

(assert (= (and d!1653809 (not c!879347)) b!5117565))

(assert (= (and d!1653809 res!2178855) b!5117566))

(assert (= (and b!5117566 res!2178856) b!5117567))

(declare-fun m!6177342 () Bool)

(assert (=> b!5117566 m!6177342))

(assert (=> b!5117566 m!6177004))

(declare-fun m!6177344 () Bool)

(assert (=> b!5117566 m!6177344))

(assert (=> b!5117566 m!6177272))

(declare-fun m!6177346 () Bool)

(assert (=> d!1653809 m!6177346))

(assert (=> d!1653809 m!6177004))

(declare-fun m!6177348 () Bool)

(assert (=> d!1653809 m!6177348))

(assert (=> d!1653809 m!6177278))

(declare-fun m!6177350 () Bool)

(assert (=> b!5117565 m!6177350))

(assert (=> b!5117360 d!1653809))

(declare-fun b!5117570 () Bool)

(declare-fun res!2178858 () Bool)

(declare-fun e!3191736 () Bool)

(assert (=> b!5117570 (=> (not res!2178858) (not e!3191736))))

(declare-fun lt!2109261 () List!59299)

(assert (=> b!5117570 (= res!2178858 (= (size!39500 lt!2109261) (+ (size!39500 testedP!265) (size!39500 lt!2109140))))))

(declare-fun d!1653811 () Bool)

(assert (=> d!1653811 e!3191736))

(declare-fun res!2178857 () Bool)

(assert (=> d!1653811 (=> (not res!2178857) (not e!3191736))))

(assert (=> d!1653811 (= res!2178857 (= (content!10520 lt!2109261) (set.union (content!10520 testedP!265) (content!10520 lt!2109140))))))

(declare-fun e!3191735 () List!59299)

(assert (=> d!1653811 (= lt!2109261 e!3191735)))

(declare-fun c!879348 () Bool)

(assert (=> d!1653811 (= c!879348 (is-Nil!59175 testedP!265))))

(assert (=> d!1653811 (= (++!13019 testedP!265 lt!2109140) lt!2109261)))

(declare-fun b!5117569 () Bool)

(assert (=> b!5117569 (= e!3191735 (Cons!59175 (h!65623 testedP!265) (++!13019 (t!372310 testedP!265) lt!2109140)))))

(declare-fun b!5117571 () Bool)

(assert (=> b!5117571 (= e!3191736 (or (not (= lt!2109140 Nil!59175)) (= lt!2109261 testedP!265)))))

(declare-fun b!5117568 () Bool)

(assert (=> b!5117568 (= e!3191735 lt!2109140)))

(assert (= (and d!1653811 c!879348) b!5117568))

(assert (= (and d!1653811 (not c!879348)) b!5117569))

(assert (= (and d!1653811 res!2178857) b!5117570))

(assert (= (and b!5117570 res!2178858) b!5117571))

(declare-fun m!6177352 () Bool)

(assert (=> b!5117570 m!6177352))

(assert (=> b!5117570 m!6177052))

(declare-fun m!6177354 () Bool)

(assert (=> b!5117570 m!6177354))

(declare-fun m!6177356 () Bool)

(assert (=> d!1653811 m!6177356))

(assert (=> d!1653811 m!6177300))

(declare-fun m!6177358 () Bool)

(assert (=> d!1653811 m!6177358))

(declare-fun m!6177360 () Bool)

(assert (=> b!5117569 m!6177360))

(assert (=> b!5117360 d!1653811))

(declare-fun b!5117574 () Bool)

(declare-fun res!2178860 () Bool)

(declare-fun e!3191738 () Bool)

(assert (=> b!5117574 (=> (not res!2178860) (not e!3191738))))

(declare-fun lt!2109262 () List!59299)

(assert (=> b!5117574 (= res!2178860 (= (size!39500 lt!2109262) (+ (size!39500 testedP!265) (size!39500 lt!2109134))))))

(declare-fun d!1653813 () Bool)

(assert (=> d!1653813 e!3191738))

(declare-fun res!2178859 () Bool)

(assert (=> d!1653813 (=> (not res!2178859) (not e!3191738))))

(assert (=> d!1653813 (= res!2178859 (= (content!10520 lt!2109262) (set.union (content!10520 testedP!265) (content!10520 lt!2109134))))))

(declare-fun e!3191737 () List!59299)

(assert (=> d!1653813 (= lt!2109262 e!3191737)))

(declare-fun c!879349 () Bool)

(assert (=> d!1653813 (= c!879349 (is-Nil!59175 testedP!265))))

(assert (=> d!1653813 (= (++!13019 testedP!265 lt!2109134) lt!2109262)))

(declare-fun b!5117573 () Bool)

(assert (=> b!5117573 (= e!3191737 (Cons!59175 (h!65623 testedP!265) (++!13019 (t!372310 testedP!265) lt!2109134)))))

(declare-fun b!5117575 () Bool)

(assert (=> b!5117575 (= e!3191738 (or (not (= lt!2109134 Nil!59175)) (= lt!2109262 testedP!265)))))

(declare-fun b!5117572 () Bool)

(assert (=> b!5117572 (= e!3191737 lt!2109134)))

(assert (= (and d!1653813 c!879349) b!5117572))

(assert (= (and d!1653813 (not c!879349)) b!5117573))

(assert (= (and d!1653813 res!2178859) b!5117574))

(assert (= (and b!5117574 res!2178860) b!5117575))

(declare-fun m!6177362 () Bool)

(assert (=> b!5117574 m!6177362))

(assert (=> b!5117574 m!6177052))

(declare-fun m!6177364 () Bool)

(assert (=> b!5117574 m!6177364))

(declare-fun m!6177366 () Bool)

(assert (=> d!1653813 m!6177366))

(assert (=> d!1653813 m!6177300))

(declare-fun m!6177368 () Bool)

(assert (=> d!1653813 m!6177368))

(declare-fun m!6177370 () Bool)

(assert (=> b!5117573 m!6177370))

(assert (=> b!5117362 d!1653813))

(declare-fun b!5117580 () Bool)

(declare-fun e!3191741 () Bool)

(declare-fun tp!1427736 () Bool)

(assert (=> b!5117580 (= e!3191741 (and tp_is_empty!37661 tp!1427736))))

(assert (=> b!5117371 (= tp!1427706 e!3191741)))

(assert (= (and b!5117371 (is-Cons!59175 (t!372310 input!5745))) b!5117580))

(declare-fun condSetEmpty!30177 () Bool)

(assert (=> setNonEmpty!30168 (= condSetEmpty!30177 (= setRest!30167 (as set.empty (Set Context!7156))))))

(declare-fun setRes!30177 () Bool)

(assert (=> setNonEmpty!30168 (= tp!1427709 setRes!30177)))

(declare-fun setIsEmpty!30177 () Bool)

(assert (=> setIsEmpty!30177 setRes!30177))

(declare-fun e!3191744 () Bool)

(declare-fun setNonEmpty!30177 () Bool)

(declare-fun setElem!30177 () Context!7156)

(declare-fun tp!1427741 () Bool)

(assert (=> setNonEmpty!30177 (= setRes!30177 (and tp!1427741 (inv!78667 setElem!30177) e!3191744))))

(declare-fun setRest!30177 () (Set Context!7156))

(assert (=> setNonEmpty!30177 (= setRest!30167 (set.union (set.insert setElem!30177 (as set.empty (Set Context!7156))) setRest!30177))))

(declare-fun b!5117585 () Bool)

(declare-fun tp!1427742 () Bool)

(assert (=> b!5117585 (= e!3191744 tp!1427742)))

(assert (= (and setNonEmpty!30168 condSetEmpty!30177) setIsEmpty!30177))

(assert (= (and setNonEmpty!30168 (not condSetEmpty!30177)) setNonEmpty!30177))

(assert (= setNonEmpty!30177 b!5117585))

(declare-fun m!6177372 () Bool)

(assert (=> setNonEmpty!30177 m!6177372))

(declare-fun b!5117586 () Bool)

(declare-fun e!3191745 () Bool)

(declare-fun tp!1427743 () Bool)

(assert (=> b!5117586 (= e!3191745 (and tp_is_empty!37661 tp!1427743))))

(assert (=> b!5117372 (= tp!1427711 e!3191745)))

(assert (= (and b!5117372 (is-Cons!59175 (t!372310 testedP!265))) b!5117586))

(declare-fun b!5117591 () Bool)

(declare-fun e!3191748 () Bool)

(declare-fun tp!1427748 () Bool)

(declare-fun tp!1427749 () Bool)

(assert (=> b!5117591 (= e!3191748 (and tp!1427748 tp!1427749))))

(assert (=> b!5117366 (= tp!1427710 e!3191748)))

(assert (= (and b!5117366 (is-Cons!59176 (exprs!4078 setElem!30167))) b!5117591))

(declare-fun b!5117592 () Bool)

(declare-fun e!3191749 () Bool)

(declare-fun tp!1427750 () Bool)

(assert (=> b!5117592 (= e!3191749 (and tp_is_empty!37661 tp!1427750))))

(assert (=> b!5117365 (= tp!1427708 e!3191749)))

(assert (= (and b!5117365 (is-Cons!59175 (t!372310 knownP!20))) b!5117592))

(declare-fun condSetEmpty!30178 () Bool)

(assert (=> setNonEmpty!30167 (= condSetEmpty!30178 (= setRest!30168 (as set.empty (Set Context!7156))))))

(declare-fun setRes!30178 () Bool)

(assert (=> setNonEmpty!30167 (= tp!1427707 setRes!30178)))

(declare-fun setIsEmpty!30178 () Bool)

(assert (=> setIsEmpty!30178 setRes!30178))

(declare-fun e!3191750 () Bool)

(declare-fun setElem!30178 () Context!7156)

(declare-fun setNonEmpty!30178 () Bool)

(declare-fun tp!1427751 () Bool)

(assert (=> setNonEmpty!30178 (= setRes!30178 (and tp!1427751 (inv!78667 setElem!30178) e!3191750))))

(declare-fun setRest!30178 () (Set Context!7156))

(assert (=> setNonEmpty!30178 (= setRest!30168 (set.union (set.insert setElem!30178 (as set.empty (Set Context!7156))) setRest!30178))))

(declare-fun b!5117593 () Bool)

(declare-fun tp!1427752 () Bool)

(assert (=> b!5117593 (= e!3191750 tp!1427752)))

(assert (= (and setNonEmpty!30167 condSetEmpty!30178) setIsEmpty!30178))

(assert (= (and setNonEmpty!30167 (not condSetEmpty!30178)) setNonEmpty!30178))

(assert (= setNonEmpty!30178 b!5117593))

(declare-fun m!6177374 () Bool)

(assert (=> setNonEmpty!30178 m!6177374))

(declare-fun b!5117594 () Bool)

(declare-fun e!3191751 () Bool)

(declare-fun tp!1427753 () Bool)

(declare-fun tp!1427754 () Bool)

(assert (=> b!5117594 (= e!3191751 (and tp!1427753 tp!1427754))))

(assert (=> b!5117361 (= tp!1427712 e!3191751)))

(assert (= (and b!5117361 (is-Cons!59176 (exprs!4078 setElem!30168))) b!5117594))

(push 1)

(assert (not d!1653801))

(assert (not d!1653777))

(assert (not b!5117559))

(assert (not b!5117508))

(assert (not b!5117573))

(assert (not d!1653813))

(assert (not d!1653789))

(assert (not bm!356557))

(assert (not setNonEmpty!30177))

(assert (not b!5117514))

(assert (not d!1653783))

(assert (not b!5117565))

(assert (not b!5117502))

(assert (not d!1653797))

(assert (not b!5117569))

(assert (not b!5117541))

(assert (not d!1653803))

(assert (not b!5117570))

(assert (not d!1653769))

(assert (not b!5117495))

(assert (not b!5117551))

(assert (not b!5117574))

(assert (not b!5117561))

(assert (not b!5117591))

(assert (not b!5117530))

(assert (not b!5117593))

(assert (not b!5117515))

(assert (not b!5117527))

(assert (not b!5117594))

(assert (not d!1653779))

(assert (not b!5117543))

(assert (not b!5117592))

(assert (not b!5117427))

(assert (not b!5117539))

(assert (not b!5117555))

(assert (not b!5117484))

(assert (not b!5117580))

(assert (not b!5117516))

(assert (not b!5117586))

(assert (not b!5117497))

(assert (not b!5117545))

(assert (not d!1653765))

(assert (not setNonEmpty!30178))

(assert (not b!5117510))

(assert (not b!5117585))

(assert (not b!5117544))

(assert (not d!1653733))

(assert (not b!5117566))

(assert (not b!5117513))

(assert (not d!1653781))

(assert (not d!1653767))

(assert (not d!1653809))

(assert (not d!1653795))

(assert (not d!1653763))

(assert (not b!5117557))

(assert (not b!5117503))

(assert (not b!5117535))

(assert tp_is_empty!37661)

(assert (not d!1653811))

(assert (not b!5117496))

(assert (not b!5117550))

(assert (not d!1653775))

(assert (not d!1653787))

(assert (not b!5117528))

(assert (not b!5117536))

(assert (not b!5117540))

(assert (not b!5117556))

(assert (not b!5117552))

(assert (not b!5117563))

(assert (not bm!356558))

(assert (not b!5117558))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

