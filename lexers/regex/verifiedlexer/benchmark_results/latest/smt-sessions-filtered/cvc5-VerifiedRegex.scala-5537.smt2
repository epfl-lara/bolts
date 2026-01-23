; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278584 () Bool)

(assert start!278584)

(declare-fun b!2862561 () Bool)

(declare-fun e!1812128 () Bool)

(assert (=> b!2862561 (= e!1812128 (not true))))

(declare-datatypes ((C!17438 0))(
  ( (C!17439 (val!10753 Int)) )
))
(declare-datatypes ((Regex!8628 0))(
  ( (ElementMatch!8628 (c!461425 C!17438)) (Concat!13949 (regOne!17768 Regex!8628) (regTwo!17768 Regex!8628)) (EmptyExpr!8628) (Star!8628 (reg!8957 Regex!8628)) (EmptyLang!8628) (Union!8628 (regOne!17769 Regex!8628) (regTwo!17769 Regex!8628)) )
))
(declare-datatypes ((List!34239 0))(
  ( (Nil!34115) (Cons!34115 (h!39535 Regex!8628) (t!233276 List!34239)) )
))
(declare-datatypes ((Context!5176 0))(
  ( (Context!5177 (exprs!3088 List!34239)) )
))
(declare-fun z!960 () (Set Context!5176))

(declare-datatypes ((List!34240 0))(
  ( (Nil!34116) (Cons!34116 (h!39536 C!17438) (t!233277 List!34240)) )
))
(declare-datatypes ((Option!6323 0))(
  ( (None!6322) (Some!6322 (v!34444 List!34240)) )
))
(declare-fun lt!1014783 () Option!6323)

(declare-fun matchZipper!426 ((Set Context!5176) List!34240) Bool)

(declare-fun get!10229 (Option!6323) List!34240)

(assert (=> b!2862561 (matchZipper!426 z!960 (get!10229 lt!1014783))))

(declare-datatypes ((Unit!47779 0))(
  ( (Unit!47780) )
))
(declare-fun lt!1014782 () Unit!47779)

(declare-fun lemmaGetWitnessMatchesZipper!3 ((Set Context!5176)) Unit!47779)

(assert (=> b!2862561 (= lt!1014782 (lemmaGetWitnessMatchesZipper!3 z!960))))

(declare-fun getLanguageWitness!258 ((Set Context!5176)) Option!6323)

(assert (=> b!2862561 (= lt!1014783 (getLanguageWitness!258 z!960))))

(declare-fun setIsEmpty!25313 () Bool)

(declare-fun setRes!25313 () Bool)

(assert (=> setIsEmpty!25313 setRes!25313))

(declare-fun res!1188547 () Bool)

(assert (=> start!278584 (=> (not res!1188547) (not e!1812128))))

(declare-fun prefix!919 () List!34240)

(declare-fun prefixMatchZipper!310 ((Set Context!5176) List!34240) Bool)

(assert (=> start!278584 (= res!1188547 (prefixMatchZipper!310 z!960 prefix!919))))

(assert (=> start!278584 e!1812128))

(declare-fun condSetEmpty!25313 () Bool)

(assert (=> start!278584 (= condSetEmpty!25313 (= z!960 (as set.empty (Set Context!5176))))))

(assert (=> start!278584 setRes!25313))

(declare-fun e!1812127 () Bool)

(assert (=> start!278584 e!1812127))

(declare-fun b!2862562 () Bool)

(declare-fun tp_is_empty!14993 () Bool)

(declare-fun tp!921693 () Bool)

(assert (=> b!2862562 (= e!1812127 (and tp_is_empty!14993 tp!921693))))

(declare-fun b!2862563 () Bool)

(declare-fun res!1188548 () Bool)

(assert (=> b!2862563 (=> (not res!1188548) (not e!1812128))))

(assert (=> b!2862563 (= res!1188548 (is-Nil!34116 prefix!919))))

(declare-fun b!2862564 () Bool)

(declare-fun e!1812129 () Bool)

(declare-fun tp!921695 () Bool)

(assert (=> b!2862564 (= e!1812129 tp!921695)))

(declare-fun setElem!25313 () Context!5176)

(declare-fun setNonEmpty!25313 () Bool)

(declare-fun tp!921694 () Bool)

(declare-fun inv!46158 (Context!5176) Bool)

(assert (=> setNonEmpty!25313 (= setRes!25313 (and tp!921694 (inv!46158 setElem!25313) e!1812129))))

(declare-fun setRest!25313 () (Set Context!5176))

(assert (=> setNonEmpty!25313 (= z!960 (set.union (set.insert setElem!25313 (as set.empty (Set Context!5176))) setRest!25313))))

(assert (= (and start!278584 res!1188547) b!2862563))

(assert (= (and b!2862563 res!1188548) b!2862561))

(assert (= (and start!278584 condSetEmpty!25313) setIsEmpty!25313))

(assert (= (and start!278584 (not condSetEmpty!25313)) setNonEmpty!25313))

(assert (= setNonEmpty!25313 b!2862564))

(assert (= (and start!278584 (is-Cons!34116 prefix!919)) b!2862562))

(declare-fun m!3281857 () Bool)

(assert (=> b!2862561 m!3281857))

(assert (=> b!2862561 m!3281857))

(declare-fun m!3281859 () Bool)

(assert (=> b!2862561 m!3281859))

(declare-fun m!3281861 () Bool)

(assert (=> b!2862561 m!3281861))

(declare-fun m!3281863 () Bool)

(assert (=> b!2862561 m!3281863))

(declare-fun m!3281865 () Bool)

(assert (=> start!278584 m!3281865))

(declare-fun m!3281867 () Bool)

(assert (=> setNonEmpty!25313 m!3281867))

(push 1)

(assert tp_is_empty!14993)

(assert (not b!2862564))

(assert (not start!278584))

(assert (not setNonEmpty!25313))

(assert (not b!2862561))

(assert (not b!2862562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

