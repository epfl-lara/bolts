; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277244 () Bool)

(assert start!277244)

(declare-fun setNonEmpty!24949 () Bool)

(declare-fun e!1803842 () Bool)

(declare-fun setRes!24949 () Bool)

(declare-datatypes ((C!17144 0))(
  ( (C!17145 (val!10606 Int)) )
))
(declare-datatypes ((Regex!8481 0))(
  ( (ElementMatch!8481 (c!459378 C!17144)) (Concat!13784 (regOne!17474 Regex!8481) (regTwo!17474 Regex!8481)) (EmptyExpr!8481) (Star!8481 (reg!8810 Regex!8481)) (EmptyLang!8481) (Union!8481 (regOne!17475 Regex!8481) (regTwo!17475 Regex!8481)) )
))
(declare-datatypes ((List!33904 0))(
  ( (Nil!33780) (Cons!33780 (h!39200 Regex!8481) (t!232929 List!33904)) )
))
(declare-datatypes ((Context!5018 0))(
  ( (Context!5019 (exprs!3009 List!33904)) )
))
(declare-fun setElem!24949 () Context!5018)

(declare-fun tp!913380 () Bool)

(declare-fun inv!45808 (Context!5018) Bool)

(assert (=> setNonEmpty!24949 (= setRes!24949 (and tp!913380 (inv!45808 setElem!24949) e!1803842))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!632 () (InoxSet Context!5018))

(declare-fun setRest!24949 () (InoxSet Context!5018))

(assert (=> setNonEmpty!24949 (= z!632 ((_ map or) (store ((as const (Array Context!5018 Bool)) false) setElem!24949 true) setRest!24949))))

(declare-fun b!2846974 () Bool)

(declare-fun tp!913379 () Bool)

(assert (=> b!2846974 (= e!1803842 tp!913379)))

(declare-fun res!1183781 () Bool)

(declare-fun e!1803843 () Bool)

(assert (=> start!277244 (=> (not res!1183781) (not e!1803843))))

(declare-fun i!1868 () Int)

(assert (=> start!277244 (= res!1183781 (>= i!1868 0))))

(assert (=> start!277244 e!1803843))

(assert (=> start!277244 true))

(declare-datatypes ((List!33905 0))(
  ( (Nil!33781) (Cons!33781 (h!39201 C!17144) (t!232930 List!33905)) )
))
(declare-datatypes ((IArray!20955 0))(
  ( (IArray!20956 (innerList!10535 List!33905)) )
))
(declare-datatypes ((Conc!10475 0))(
  ( (Node!10475 (left!25434 Conc!10475) (right!25764 Conc!10475) (csize!21180 Int) (cheight!10686 Int)) (Leaf!15939 (xs!13593 IArray!20955) (csize!21181 Int)) (Empty!10475) )
))
(declare-datatypes ((BalanceConc!20588 0))(
  ( (BalanceConc!20589 (c!459379 Conc!10475)) )
))
(declare-fun input!3762 () BalanceConc!20588)

(declare-fun e!1803844 () Bool)

(declare-fun inv!45809 (BalanceConc!20588) Bool)

(assert (=> start!277244 (and (inv!45809 input!3762) e!1803844)))

(declare-fun condSetEmpty!24949 () Bool)

(assert (=> start!277244 (= condSetEmpty!24949 (= z!632 ((as const (Array Context!5018 Bool)) false)))))

(assert (=> start!277244 setRes!24949))

(declare-fun b!2846975 () Bool)

(declare-fun tp!913381 () Bool)

(declare-fun inv!45810 (Conc!10475) Bool)

(assert (=> b!2846975 (= e!1803844 (and (inv!45810 (c!459379 input!3762)) tp!913381))))

(declare-fun b!2846976 () Bool)

(declare-fun e!1803845 () Bool)

(assert (=> b!2846976 (= e!1803845 false)))

(declare-fun lt!1012808 () Bool)

(declare-fun lostCauseZipper!524 ((InoxSet Context!5018)) Bool)

(assert (=> b!2846976 (= lt!1012808 (lostCauseZipper!524 z!632))))

(declare-fun setIsEmpty!24949 () Bool)

(assert (=> setIsEmpty!24949 setRes!24949))

(declare-fun b!2846977 () Bool)

(assert (=> b!2846977 (= e!1803843 e!1803845)))

(declare-fun res!1183780 () Bool)

(assert (=> b!2846977 (=> (not res!1183780) (not e!1803845))))

(declare-fun lt!1012807 () Int)

(assert (=> b!2846977 (= res!1183780 (and (<= i!1868 lt!1012807) (= i!1868 lt!1012807)))))

(declare-fun size!26229 (BalanceConc!20588) Int)

(assert (=> b!2846977 (= lt!1012807 (size!26229 input!3762))))

(assert (= (and start!277244 res!1183781) b!2846977))

(assert (= (and b!2846977 res!1183780) b!2846976))

(assert (= start!277244 b!2846975))

(assert (= (and start!277244 condSetEmpty!24949) setIsEmpty!24949))

(assert (= (and start!277244 (not condSetEmpty!24949)) setNonEmpty!24949))

(assert (= setNonEmpty!24949 b!2846974))

(declare-fun m!3274595 () Bool)

(assert (=> b!2846977 m!3274595))

(declare-fun m!3274597 () Bool)

(assert (=> b!2846976 m!3274597))

(declare-fun m!3274599 () Bool)

(assert (=> setNonEmpty!24949 m!3274599))

(declare-fun m!3274601 () Bool)

(assert (=> start!277244 m!3274601))

(declare-fun m!3274603 () Bool)

(assert (=> b!2846975 m!3274603))

(check-sat (not b!2846977) (not b!2846976) (not b!2846974) (not b!2846975) (not start!277244) (not setNonEmpty!24949))
(check-sat)
