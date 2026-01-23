; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278568 () Bool)

(assert start!278568)

(declare-fun res!1188459 () Bool)

(declare-fun e!1812021 () Bool)

(assert (=> start!278568 (=> (not res!1188459) (not e!1812021))))

(declare-datatypes ((C!17422 0))(
  ( (C!17423 (val!10745 Int)) )
))
(declare-datatypes ((Regex!8620 0))(
  ( (ElementMatch!8620 (c!461417 C!17422)) (Concat!13941 (regOne!17752 Regex!8620) (regTwo!17752 Regex!8620)) (EmptyExpr!8620) (Star!8620 (reg!8949 Regex!8620)) (EmptyLang!8620) (Union!8620 (regOne!17753 Regex!8620) (regTwo!17753 Regex!8620)) )
))
(declare-datatypes ((List!34223 0))(
  ( (Nil!34099) (Cons!34099 (h!39519 Regex!8620) (t!233260 List!34223)) )
))
(declare-datatypes ((Context!5160 0))(
  ( (Context!5161 (exprs!3080 List!34223)) )
))
(declare-fun z!960 () (Set Context!5160))

(declare-datatypes ((List!34224 0))(
  ( (Nil!34100) (Cons!34100 (h!39520 C!17422) (t!233261 List!34224)) )
))
(declare-fun prefix!919 () List!34224)

(declare-fun prefixMatchZipper!302 ((Set Context!5160) List!34224) Bool)

(assert (=> start!278568 (= res!1188459 (prefixMatchZipper!302 z!960 prefix!919))))

(assert (=> start!278568 e!1812021))

(declare-fun condSetEmpty!25277 () Bool)

(assert (=> start!278568 (= condSetEmpty!25277 (= z!960 (as set.empty (Set Context!5160))))))

(declare-fun setRes!25277 () Bool)

(assert (=> start!278568 setRes!25277))

(declare-fun e!1812022 () Bool)

(assert (=> start!278568 e!1812022))

(declare-fun b!2862409 () Bool)

(declare-fun e!1812023 () Bool)

(declare-fun tp!921623 () Bool)

(assert (=> b!2862409 (= e!1812023 tp!921623)))

(declare-fun b!2862410 () Bool)

(declare-fun tp_is_empty!14977 () Bool)

(declare-fun tp!921621 () Bool)

(assert (=> b!2862410 (= e!1812022 (and tp_is_empty!14977 tp!921621))))

(declare-fun b!2862411 () Bool)

(declare-fun res!1188460 () Bool)

(assert (=> b!2862411 (=> (not res!1188460) (not e!1812021))))

(assert (=> b!2862411 (= res!1188460 (is-Nil!34100 prefix!919))))

(declare-fun b!2862412 () Bool)

(assert (=> b!2862412 (= e!1812021 (not true))))

(declare-fun lt!1014718 () Bool)

(declare-fun lt!1014719 () List!34224)

(declare-fun isPrefix!2686 (List!34224 List!34224) Bool)

(assert (=> b!2862412 (= lt!1014718 (isPrefix!2686 prefix!919 lt!1014719))))

(declare-fun matchZipper!422 ((Set Context!5160) List!34224) Bool)

(assert (=> b!2862412 (matchZipper!422 z!960 lt!1014719)))

(declare-datatypes ((Unit!47767 0))(
  ( (Unit!47768) )
))
(declare-fun lt!1014720 () Unit!47767)

(declare-fun lemmaGetWitnessMatchesZipper!1 ((Set Context!5160)) Unit!47767)

(assert (=> b!2862412 (= lt!1014720 (lemmaGetWitnessMatchesZipper!1 z!960))))

(declare-datatypes ((Option!6321 0))(
  ( (None!6320) (Some!6320 (v!34442 List!34224)) )
))
(declare-fun get!10223 (Option!6321) List!34224)

(declare-fun getLanguageWitness!256 ((Set Context!5160)) Option!6321)

(assert (=> b!2862412 (= lt!1014719 (get!10223 (getLanguageWitness!256 z!960)))))

(declare-fun setElem!25277 () Context!5160)

(declare-fun tp!921622 () Bool)

(declare-fun setNonEmpty!25277 () Bool)

(declare-fun inv!46138 (Context!5160) Bool)

(assert (=> setNonEmpty!25277 (= setRes!25277 (and tp!921622 (inv!46138 setElem!25277) e!1812023))))

(declare-fun setRest!25277 () (Set Context!5160))

(assert (=> setNonEmpty!25277 (= z!960 (set.union (set.insert setElem!25277 (as set.empty (Set Context!5160))) setRest!25277))))

(declare-fun setIsEmpty!25277 () Bool)

(assert (=> setIsEmpty!25277 setRes!25277))

(assert (= (and start!278568 res!1188459) b!2862411))

(assert (= (and b!2862411 res!1188460) b!2862412))

(assert (= (and start!278568 condSetEmpty!25277) setIsEmpty!25277))

(assert (= (and start!278568 (not condSetEmpty!25277)) setNonEmpty!25277))

(assert (= setNonEmpty!25277 b!2862409))

(assert (= (and start!278568 (is-Cons!34100 prefix!919)) b!2862410))

(declare-fun m!3281749 () Bool)

(assert (=> start!278568 m!3281749))

(declare-fun m!3281751 () Bool)

(assert (=> b!2862412 m!3281751))

(declare-fun m!3281753 () Bool)

(assert (=> b!2862412 m!3281753))

(declare-fun m!3281755 () Bool)

(assert (=> b!2862412 m!3281755))

(declare-fun m!3281757 () Bool)

(assert (=> b!2862412 m!3281757))

(assert (=> b!2862412 m!3281753))

(declare-fun m!3281759 () Bool)

(assert (=> b!2862412 m!3281759))

(declare-fun m!3281761 () Bool)

(assert (=> setNonEmpty!25277 m!3281761))

(push 1)

(assert (not b!2862409))

(assert (not setNonEmpty!25277))

(assert tp_is_empty!14977)

(assert (not b!2862412))

(assert (not b!2862410))

(assert (not start!278568))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

