; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!538566 () Bool)

(assert start!538566)

(declare-fun setRes!29449 () Bool)

(declare-fun setNonEmpty!29449 () Bool)

(declare-datatypes ((C!28470 0))(
  ( (C!28471 (val!23887 Int)) )
))
(declare-datatypes ((Regex!14102 0))(
  ( (ElementMatch!14102 (c!877410 C!28470)) (Concat!22947 (regOne!28716 Regex!14102) (regTwo!28716 Regex!14102)) (EmptyExpr!14102) (Star!14102 (reg!14431 Regex!14102)) (EmptyLang!14102) (Union!14102 (regOne!28717 Regex!14102) (regTwo!28717 Regex!14102)) )
))
(declare-datatypes ((List!59074 0))(
  ( (Nil!58950) (Cons!58950 (h!65398 Regex!14102) (t!372075 List!59074)) )
))
(declare-datatypes ((Context!6972 0))(
  ( (Context!6973 (exprs!3986 List!59074)) )
))
(declare-fun setElem!29449 () Context!6972)

(declare-fun e!3185598 () Bool)

(declare-fun tp!1424774 () Bool)

(declare-fun inv!78437 (Context!6972) Bool)

(assert (=> setNonEmpty!29449 (= setRes!29449 (and tp!1424774 (inv!78437 setElem!29449) e!3185598))))

(declare-fun baseZ!46 () (Set Context!6972))

(declare-fun setRest!29449 () (Set Context!6972))

(assert (=> setNonEmpty!29449 (= baseZ!46 (set.union (set.insert setElem!29449 (as set.empty (Set Context!6972))) setRest!29449))))

(declare-fun b!5107612 () Bool)

(declare-fun e!3185597 () Bool)

(declare-fun tp_is_empty!37477 () Bool)

(declare-fun tp!1424773 () Bool)

(assert (=> b!5107612 (= e!3185597 (and tp_is_empty!37477 tp!1424773))))

(declare-fun b!5107613 () Bool)

(declare-fun tp!1424772 () Bool)

(assert (=> b!5107613 (= e!3185598 tp!1424772)))

(declare-fun b!5107614 () Bool)

(declare-fun res!2174021 () Bool)

(declare-fun e!3185596 () Bool)

(assert (=> b!5107614 (=> (not res!2174021) (not e!3185596))))

(declare-datatypes ((List!59075 0))(
  ( (Nil!58951) (Cons!58951 (h!65399 C!28470) (t!372076 List!59075)) )
))
(declare-fun knownP!20 () List!59075)

(declare-fun testedP!265 () List!59075)

(declare-fun size!39408 (List!59075) Int)

(assert (=> b!5107614 (= res!2174021 (>= (size!39408 knownP!20) (size!39408 testedP!265)))))

(declare-fun b!5107615 () Bool)

(declare-fun e!3185594 () Bool)

(declare-fun tp!1424775 () Bool)

(assert (=> b!5107615 (= e!3185594 (and tp_is_empty!37477 tp!1424775))))

(declare-fun b!5107616 () Bool)

(assert (=> b!5107616 (= e!3185596 false)))

(declare-fun lt!2102849 () Bool)

(declare-fun matchZipper!770 ((Set Context!6972) List!59075) Bool)

(assert (=> b!5107616 (= lt!2102849 (matchZipper!770 baseZ!46 knownP!20))))

(declare-fun b!5107617 () Bool)

(declare-fun res!2174019 () Bool)

(assert (=> b!5107617 (=> (not res!2174019) (not e!3185596))))

(declare-fun input!5745 () List!59075)

(declare-fun isPrefix!5507 (List!59075 List!59075) Bool)

(assert (=> b!5107617 (= res!2174019 (isPrefix!5507 knownP!20 input!5745))))

(declare-fun b!5107618 () Bool)

(declare-fun e!3185595 () Bool)

(declare-fun tp!1424776 () Bool)

(assert (=> b!5107618 (= e!3185595 (and tp_is_empty!37477 tp!1424776))))

(declare-fun res!2174020 () Bool)

(assert (=> start!538566 (=> (not res!2174020) (not e!3185596))))

(assert (=> start!538566 (= res!2174020 (isPrefix!5507 testedP!265 input!5745))))

(assert (=> start!538566 e!3185596))

(assert (=> start!538566 e!3185594))

(assert (=> start!538566 e!3185597))

(assert (=> start!538566 e!3185595))

(declare-fun condSetEmpty!29449 () Bool)

(assert (=> start!538566 (= condSetEmpty!29449 (= baseZ!46 (as set.empty (Set Context!6972))))))

(assert (=> start!538566 setRes!29449))

(declare-fun setIsEmpty!29449 () Bool)

(assert (=> setIsEmpty!29449 setRes!29449))

(assert (= (and start!538566 res!2174020) b!5107617))

(assert (= (and b!5107617 res!2174019) b!5107614))

(assert (= (and b!5107614 res!2174021) b!5107616))

(assert (= (and start!538566 (is-Cons!58951 testedP!265)) b!5107615))

(assert (= (and start!538566 (is-Cons!58951 input!5745)) b!5107612))

(assert (= (and start!538566 (is-Cons!58951 knownP!20)) b!5107618))

(assert (= (and start!538566 condSetEmpty!29449) setIsEmpty!29449))

(assert (= (and start!538566 (not condSetEmpty!29449)) setNonEmpty!29449))

(assert (= setNonEmpty!29449 b!5107613))

(declare-fun m!6164802 () Bool)

(assert (=> b!5107616 m!6164802))

(declare-fun m!6164804 () Bool)

(assert (=> b!5107614 m!6164804))

(declare-fun m!6164806 () Bool)

(assert (=> b!5107614 m!6164806))

(declare-fun m!6164808 () Bool)

(assert (=> b!5107617 m!6164808))

(declare-fun m!6164810 () Bool)

(assert (=> setNonEmpty!29449 m!6164810))

(declare-fun m!6164812 () Bool)

(assert (=> start!538566 m!6164812))

(push 1)

(assert (not b!5107615))

(assert (not b!5107616))

(assert (not b!5107612))

(assert (not b!5107614))

(assert (not b!5107617))

(assert tp_is_empty!37477)

(assert (not setNonEmpty!29449))

(assert (not start!538566))

(assert (not b!5107618))

(assert (not b!5107613))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

