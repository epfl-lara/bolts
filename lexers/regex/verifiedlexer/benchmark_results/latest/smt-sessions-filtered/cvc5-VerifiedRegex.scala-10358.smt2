; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!537746 () Bool)

(assert start!537746)

(declare-fun res!2169831 () Bool)

(declare-fun e!3179725 () Bool)

(assert (=> start!537746 (=> (not res!2169831) (not e!3179725))))

(declare-datatypes ((C!28278 0))(
  ( (C!28279 (val!23791 Int)) )
))
(declare-datatypes ((Regex!14010 0))(
  ( (ElementMatch!14010 (c!876116 C!28278)) (Concat!22855 (regOne!28532 Regex!14010) (regTwo!28532 Regex!14010)) (EmptyExpr!14010) (Star!14010 (reg!14339 Regex!14010)) (EmptyLang!14010) (Union!14010 (regOne!28533 Regex!14010) (regTwo!28533 Regex!14010)) )
))
(declare-fun r!12920 () Regex!14010)

(declare-fun validRegex!6137 (Regex!14010) Bool)

(assert (=> start!537746 (= res!2169831 (validRegex!6137 r!12920))))

(assert (=> start!537746 e!3179725))

(declare-fun e!3179724 () Bool)

(assert (=> start!537746 e!3179724))

(declare-fun condSetEmpty!29095 () Bool)

(declare-datatypes ((List!58816 0))(
  ( (Nil!58692) (Cons!58692 (h!65140 Regex!14010) (t!371817 List!58816)) )
))
(declare-datatypes ((Context!6788 0))(
  ( (Context!6789 (exprs!3894 List!58816)) )
))
(declare-fun z!4303 () (Set Context!6788))

(assert (=> start!537746 (= condSetEmpty!29095 (= z!4303 (as set.empty (Set Context!6788))))))

(declare-fun setRes!29095 () Bool)

(assert (=> start!537746 setRes!29095))

(declare-fun e!3179727 () Bool)

(assert (=> start!537746 e!3179727))

(declare-fun b!5098560 () Bool)

(declare-fun tp_is_empty!37285 () Bool)

(assert (=> b!5098560 (= e!3179724 tp_is_empty!37285)))

(declare-fun b!5098561 () Bool)

(declare-fun e!3179726 () Bool)

(declare-fun tp!1421754 () Bool)

(assert (=> b!5098561 (= e!3179726 tp!1421754)))

(declare-fun b!5098562 () Bool)

(declare-fun tp!1421753 () Bool)

(declare-fun tp!1421752 () Bool)

(assert (=> b!5098562 (= e!3179724 (and tp!1421753 tp!1421752))))

(declare-fun b!5098563 () Bool)

(declare-fun tp!1421757 () Bool)

(assert (=> b!5098563 (= e!3179724 tp!1421757)))

(declare-fun setIsEmpty!29095 () Bool)

(assert (=> setIsEmpty!29095 setRes!29095))

(declare-fun setNonEmpty!29095 () Bool)

(declare-fun tp!1421756 () Bool)

(declare-fun setElem!29095 () Context!6788)

(declare-fun inv!78201 (Context!6788) Bool)

(assert (=> setNonEmpty!29095 (= setRes!29095 (and tp!1421756 (inv!78201 setElem!29095) e!3179726))))

(declare-fun setRest!29095 () (Set Context!6788))

(assert (=> setNonEmpty!29095 (= z!4303 (set.union (set.insert setElem!29095 (as set.empty (Set Context!6788))) setRest!29095))))

(declare-fun b!5098564 () Bool)

(declare-fun tp!1421759 () Bool)

(declare-fun tp!1421755 () Bool)

(assert (=> b!5098564 (= e!3179724 (and tp!1421759 tp!1421755))))

(declare-fun b!5098565 () Bool)

(declare-fun tp!1421758 () Bool)

(assert (=> b!5098565 (= e!3179727 (and tp_is_empty!37285 tp!1421758))))

(declare-fun b!5098566 () Bool)

(assert (=> b!5098566 (= e!3179725 false)))

(declare-datatypes ((List!58817 0))(
  ( (Nil!58693) (Cons!58693 (h!65141 C!28278) (t!371818 List!58817)) )
))
(declare-datatypes ((tuple2!63406 0))(
  ( (tuple2!63407 (_1!35006 List!58817) (_2!35006 List!58817)) )
))
(declare-fun lt!2095135 () tuple2!63406)

(declare-fun input!5654 () List!58817)

(declare-fun findLongestMatchZipper!34 ((Set Context!6788) List!58817) tuple2!63406)

(assert (=> b!5098566 (= lt!2095135 (findLongestMatchZipper!34 z!4303 input!5654))))

(declare-fun b!5098567 () Bool)

(declare-fun res!2169832 () Bool)

(assert (=> b!5098567 (=> (not res!2169832) (not e!3179725))))

(declare-datatypes ((List!58818 0))(
  ( (Nil!58694) (Cons!58694 (h!65142 Context!6788) (t!371819 List!58818)) )
))
(declare-fun unfocusZipper!352 (List!58818) Regex!14010)

(declare-fun toList!8144 ((Set Context!6788)) List!58818)

(assert (=> b!5098567 (= res!2169832 (= (unfocusZipper!352 (toList!8144 z!4303)) r!12920))))

(assert (= (and start!537746 res!2169831) b!5098567))

(assert (= (and b!5098567 res!2169832) b!5098566))

(assert (= (and start!537746 (is-ElementMatch!14010 r!12920)) b!5098560))

(assert (= (and start!537746 (is-Concat!22855 r!12920)) b!5098562))

(assert (= (and start!537746 (is-Star!14010 r!12920)) b!5098563))

(assert (= (and start!537746 (is-Union!14010 r!12920)) b!5098564))

(assert (= (and start!537746 condSetEmpty!29095) setIsEmpty!29095))

(assert (= (and start!537746 (not condSetEmpty!29095)) setNonEmpty!29095))

(assert (= setNonEmpty!29095 b!5098561))

(assert (= (and start!537746 (is-Cons!58693 input!5654)) b!5098565))

(declare-fun m!6155830 () Bool)

(assert (=> start!537746 m!6155830))

(declare-fun m!6155832 () Bool)

(assert (=> setNonEmpty!29095 m!6155832))

(declare-fun m!6155834 () Bool)

(assert (=> b!5098566 m!6155834))

(declare-fun m!6155836 () Bool)

(assert (=> b!5098567 m!6155836))

(assert (=> b!5098567 m!6155836))

(declare-fun m!6155838 () Bool)

(assert (=> b!5098567 m!6155838))

(push 1)

(assert (not b!5098562))

(assert (not b!5098564))

(assert (not start!537746))

(assert (not setNonEmpty!29095))

(assert (not b!5098561))

(assert (not b!5098566))

(assert tp_is_empty!37285)

(assert (not b!5098563))

(assert (not b!5098565))

(assert (not b!5098567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

