; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!297368 () Bool)

(assert start!297368)

(declare-fun b!3175669 () Bool)

(declare-fun e!1978053 () Bool)

(declare-datatypes ((C!19846 0))(
  ( (C!19847 (val!11959 Int)) )
))
(declare-datatypes ((List!35686 0))(
  ( (Nil!35562) (Cons!35562 (h!40982 C!19846) (t!234777 List!35686)) )
))
(declare-datatypes ((IArray!21055 0))(
  ( (IArray!21056 (innerList!10585 List!35686)) )
))
(declare-datatypes ((Conc!10525 0))(
  ( (Node!10525 (left!27661 Conc!10525) (right!27991 Conc!10525) (csize!21280 Int) (cheight!10736 Int)) (Leaf!16666 (xs!13643 IArray!21055) (csize!21281 Int)) (Empty!10525) )
))
(declare-datatypes ((BalanceConc!20688 0))(
  ( (BalanceConc!20689 (c!533623 Conc!10525)) )
))
(declare-fun totalInput!640 () BalanceConc!20688)

(declare-fun tp!1004346 () Bool)

(declare-fun inv!48318 (Conc!10525) Bool)

(assert (=> b!3175669 (= e!1978053 (and (inv!48318 (c!533623 totalInput!640)) tp!1004346))))

(declare-fun res!1290214 () Bool)

(declare-fun e!1978055 () Bool)

(assert (=> start!297368 (=> (not res!1290214) (not e!1978055))))

(declare-datatypes ((Regex!9830 0))(
  ( (ElementMatch!9830 (c!533624 C!19846)) (Concat!15151 (regOne!20172 Regex!9830) (regTwo!20172 Regex!9830)) (EmptyExpr!9830) (Star!9830 (reg!10159 Regex!9830)) (EmptyLang!9830) (Union!9830 (regOne!20173 Regex!9830) (regTwo!20173 Regex!9830)) )
))
(declare-datatypes ((List!35687 0))(
  ( (Nil!35563) (Cons!35563 (h!40983 Regex!9830) (t!234778 List!35687)) )
))
(declare-datatypes ((Context!5536 0))(
  ( (Context!5537 (exprs!3268 List!35687)) )
))
(declare-datatypes ((tuple3!5324 0))(
  ( (tuple3!5325 (_1!20631 (Set Context!5536)) (_2!20631 Int) (_3!3132 Int)) )
))
(declare-datatypes ((tuple2!34998 0))(
  ( (tuple2!34999 (_1!20632 tuple3!5324) (_2!20632 Int)) )
))
(declare-fun kv!70 () tuple2!34998)

(assert (=> start!297368 (= res!1290214 (>= (_2!20631 (_1!20632 kv!70)) 0))))

(assert (=> start!297368 e!1978055))

(declare-fun condSetEmpty!25946 () Bool)

(assert (=> start!297368 (= condSetEmpty!25946 (= (_1!20631 (_1!20632 kv!70)) (as set.empty (Set Context!5536))))))

(declare-fun setRes!25946 () Bool)

(assert (=> start!297368 setRes!25946))

(declare-fun inv!48319 (BalanceConc!20688) Bool)

(assert (=> start!297368 (and (inv!48319 totalInput!640) e!1978053)))

(declare-fun setIsEmpty!25946 () Bool)

(assert (=> setIsEmpty!25946 setRes!25946))

(declare-fun tp!1004345 () Bool)

(declare-fun e!1978054 () Bool)

(declare-fun setElem!25946 () Context!5536)

(declare-fun setNonEmpty!25946 () Bool)

(declare-fun inv!48320 (Context!5536) Bool)

(assert (=> setNonEmpty!25946 (= setRes!25946 (and tp!1004345 (inv!48320 setElem!25946) e!1978054))))

(declare-fun setRest!25946 () (Set Context!5536))

(assert (=> setNonEmpty!25946 (= (_1!20631 (_1!20632 kv!70)) (set.union (set.insert setElem!25946 (as set.empty (Set Context!5536))) setRest!25946))))

(declare-fun b!3175670 () Bool)

(declare-fun res!1290212 () Bool)

(assert (=> b!3175670 (=> (not res!1290212) (not e!1978055))))

(assert (=> b!3175670 (= res!1290212 (and (>= (_3!3132 (_1!20632 kv!70)) (- 1)) (< (_3!3132 (_1!20632 kv!70)) (_2!20631 (_1!20632 kv!70)))))))

(declare-fun b!3175671 () Bool)

(declare-fun tp!1004347 () Bool)

(assert (=> b!3175671 (= e!1978054 tp!1004347)))

(declare-fun b!3175672 () Bool)

(assert (=> b!3175672 (= e!1978055 false)))

(declare-fun lt!1067855 () Bool)

(declare-fun nullableZipper!739 ((Set Context!5536)) Bool)

(assert (=> b!3175672 (= lt!1067855 (nullableZipper!739 (_1!20631 (_1!20632 kv!70))))))

(declare-fun b!3175673 () Bool)

(declare-fun res!1290213 () Bool)

(assert (=> b!3175673 (=> (not res!1290213) (not e!1978055))))

(declare-fun size!26878 (BalanceConc!20688) Int)

(assert (=> b!3175673 (= res!1290213 (<= (_2!20631 (_1!20632 kv!70)) (size!26878 totalInput!640)))))

(assert (= (and start!297368 res!1290214) b!3175673))

(assert (= (and b!3175673 res!1290213) b!3175670))

(assert (= (and b!3175670 res!1290212) b!3175672))

(assert (= (and start!297368 condSetEmpty!25946) setIsEmpty!25946))

(assert (= (and start!297368 (not condSetEmpty!25946)) setNonEmpty!25946))

(assert (= setNonEmpty!25946 b!3175671))

(assert (= start!297368 b!3175669))

(declare-fun m!3432323 () Bool)

(assert (=> setNonEmpty!25946 m!3432323))

(declare-fun m!3432325 () Bool)

(assert (=> b!3175669 m!3432325))

(declare-fun m!3432327 () Bool)

(assert (=> b!3175672 m!3432327))

(declare-fun m!3432329 () Bool)

(assert (=> start!297368 m!3432329))

(declare-fun m!3432331 () Bool)

(assert (=> b!3175673 m!3432331))

(push 1)

(assert (not setNonEmpty!25946))

(assert (not b!3175671))

(assert (not start!297368))

(assert (not b!3175672))

(assert (not b!3175669))

(assert (not b!3175673))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

