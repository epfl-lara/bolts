; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!548806 () Bool)

(assert start!548806)

(declare-fun b!5182156 () Bool)

(declare-fun res!2201427 () Bool)

(declare-fun e!3228688 () Bool)

(assert (=> b!5182156 (=> (not res!2201427) (not e!3228688))))

(declare-datatypes ((C!29602 0))(
  ( (C!29603 (val!24503 Int)) )
))
(declare-datatypes ((List!60311 0))(
  ( (Nil!60187) (Cons!60187 (h!66635 C!29602) (t!373464 List!60311)) )
))
(declare-fun input!5952 () List!60311)

(assert (=> b!5182156 (= res!2201427 (is-Cons!60187 input!5952))))

(declare-fun res!2201428 () Bool)

(assert (=> start!548806 (=> (not res!2201428) (not e!3228688))))

(declare-datatypes ((Regex!14666 0))(
  ( (ElementMatch!14666 (c!893207 C!29602)) (Concat!23511 (regOne!29844 Regex!14666) (regTwo!29844 Regex!14666)) (EmptyExpr!14666) (Star!14666 (reg!14995 Regex!14666)) (EmptyLang!14666) (Union!14666 (regOne!29845 Regex!14666) (regTwo!29845 Regex!14666)) )
))
(declare-datatypes ((List!60312 0))(
  ( (Nil!60188) (Cons!60188 (h!66636 Regex!14666) (t!373465 List!60312)) )
))
(declare-datatypes ((Context!8100 0))(
  ( (Context!8101 (exprs!4550 List!60312)) )
))
(declare-fun baseZ!87 () (Set Context!8100))

(declare-fun z!4835 () (Set Context!8100))

(declare-fun derivationZipper!289 ((Set Context!8100) List!60311) (Set Context!8100))

(assert (=> start!548806 (= res!2201428 (= (derivationZipper!289 baseZ!87 input!5952) z!4835))))

(assert (=> start!548806 e!3228688))

(declare-fun condSetEmpty!32456 () Bool)

(assert (=> start!548806 (= condSetEmpty!32456 (= baseZ!87 (as set.empty (Set Context!8100))))))

(declare-fun setRes!32455 () Bool)

(assert (=> start!548806 setRes!32455))

(declare-fun e!3228687 () Bool)

(assert (=> start!548806 e!3228687))

(declare-fun condSetEmpty!32455 () Bool)

(assert (=> start!548806 (= condSetEmpty!32455 (= z!4835 (as set.empty (Set Context!8100))))))

(declare-fun setRes!32456 () Bool)

(assert (=> start!548806 setRes!32456))

(declare-fun b!5182157 () Bool)

(declare-fun e!3228685 () Bool)

(declare-fun tp!1453310 () Bool)

(assert (=> b!5182157 (= e!3228685 tp!1453310)))

(declare-fun b!5182158 () Bool)

(declare-fun tp_is_empty!38585 () Bool)

(declare-fun tp!1453312 () Bool)

(assert (=> b!5182158 (= e!3228687 (and tp_is_empty!38585 tp!1453312))))

(declare-fun e!3228686 () Bool)

(declare-fun tp!1453314 () Bool)

(declare-fun setElem!32456 () Context!8100)

(declare-fun setNonEmpty!32455 () Bool)

(declare-fun inv!79913 (Context!8100) Bool)

(assert (=> setNonEmpty!32455 (= setRes!32456 (and tp!1453314 (inv!79913 setElem!32456) e!3228686))))

(declare-fun setRest!32456 () (Set Context!8100))

(assert (=> setNonEmpty!32455 (= z!4835 (set.union (set.insert setElem!32456 (as set.empty (Set Context!8100))) setRest!32456))))

(declare-fun b!5182159 () Bool)

(assert (=> b!5182159 (= e!3228688 false)))

(declare-fun lt!2136025 () (Set Context!8100))

(declare-fun derivationStepZipper!1012 ((Set Context!8100) C!29602) (Set Context!8100))

(assert (=> b!5182159 (= lt!2136025 (derivationZipper!289 (derivationStepZipper!1012 baseZ!87 (h!66635 input!5952)) (t!373464 input!5952)))))

(declare-fun setIsEmpty!32455 () Bool)

(assert (=> setIsEmpty!32455 setRes!32456))

(declare-fun b!5182160 () Bool)

(declare-fun tp!1453311 () Bool)

(assert (=> b!5182160 (= e!3228686 tp!1453311)))

(declare-fun setIsEmpty!32456 () Bool)

(assert (=> setIsEmpty!32456 setRes!32455))

(declare-fun tp!1453313 () Bool)

(declare-fun setElem!32455 () Context!8100)

(declare-fun setNonEmpty!32456 () Bool)

(assert (=> setNonEmpty!32456 (= setRes!32455 (and tp!1453313 (inv!79913 setElem!32455) e!3228685))))

(declare-fun setRest!32455 () (Set Context!8100))

(assert (=> setNonEmpty!32456 (= baseZ!87 (set.union (set.insert setElem!32455 (as set.empty (Set Context!8100))) setRest!32455))))

(assert (= (and start!548806 res!2201428) b!5182156))

(assert (= (and b!5182156 res!2201427) b!5182159))

(assert (= (and start!548806 condSetEmpty!32456) setIsEmpty!32456))

(assert (= (and start!548806 (not condSetEmpty!32456)) setNonEmpty!32456))

(assert (= setNonEmpty!32456 b!5182157))

(assert (= (and start!548806 (is-Cons!60187 input!5952)) b!5182158))

(assert (= (and start!548806 condSetEmpty!32455) setIsEmpty!32455))

(assert (= (and start!548806 (not condSetEmpty!32455)) setNonEmpty!32455))

(assert (= setNonEmpty!32455 b!5182160))

(declare-fun m!6242440 () Bool)

(assert (=> start!548806 m!6242440))

(declare-fun m!6242442 () Bool)

(assert (=> setNonEmpty!32455 m!6242442))

(declare-fun m!6242444 () Bool)

(assert (=> b!5182159 m!6242444))

(assert (=> b!5182159 m!6242444))

(declare-fun m!6242446 () Bool)

(assert (=> b!5182159 m!6242446))

(declare-fun m!6242448 () Bool)

(assert (=> setNonEmpty!32456 m!6242448))

(push 1)

(assert (not b!5182160))

(assert (not setNonEmpty!32455))

(assert tp_is_empty!38585)

(assert (not setNonEmpty!32456))

(assert (not b!5182159))

(assert (not b!5182158))

(assert (not b!5182157))

(assert (not start!548806))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

