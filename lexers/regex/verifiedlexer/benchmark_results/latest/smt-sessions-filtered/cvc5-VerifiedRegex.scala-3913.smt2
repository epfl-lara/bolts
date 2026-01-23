; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!214720 () Bool)

(assert start!214720)

(declare-fun setIsEmpty!19265 () Bool)

(declare-fun setRes!19265 () Bool)

(assert (=> setIsEmpty!19265 setRes!19265))

(declare-fun res!948910 () Bool)

(declare-fun e!1410126 () Bool)

(assert (=> start!214720 (=> (not res!948910) (not e!1410126))))

(declare-datatypes ((C!12730 0))(
  ( (C!12731 (val!7351 Int)) )
))
(declare-datatypes ((List!25893 0))(
  ( (Nil!25809) (Cons!25809 (h!31210 C!12730) (t!198543 List!25893)) )
))
(declare-datatypes ((IArray!16861 0))(
  ( (IArray!16862 (innerList!8488 List!25893)) )
))
(declare-datatypes ((Conc!8428 0))(
  ( (Node!8428 (left!19837 Conc!8428) (right!20167 Conc!8428) (csize!17086 Int) (cheight!8639 Int)) (Leaf!12342 (xs!11370 IArray!16861) (csize!17087 Int)) (Empty!8428) )
))
(declare-datatypes ((BalanceConc!16618 0))(
  ( (BalanceConc!16619 (c!352612 Conc!8428)) )
))
(declare-fun input!5506 () BalanceConc!16618)

(declare-fun totalInput!846 () BalanceConc!16618)

(declare-fun isSuffix!729 (List!25893 List!25893) Bool)

(declare-fun list!9979 (BalanceConc!16618) List!25893)

(assert (=> start!214720 (= res!948910 (isSuffix!729 (list!9979 input!5506) (list!9979 totalInput!846)))))

(assert (=> start!214720 e!1410126))

(declare-fun e!1410129 () Bool)

(declare-fun inv!34843 (BalanceConc!16618) Bool)

(assert (=> start!214720 (and (inv!34843 input!5506) e!1410129)))

(declare-fun e!1410127 () Bool)

(assert (=> start!214720 (and (inv!34843 totalInput!846) e!1410127)))

(declare-fun condSetEmpty!19265 () Bool)

(declare-datatypes ((Regex!6292 0))(
  ( (ElementMatch!6292 (c!352613 C!12730)) (Concat!10594 (regOne!13096 Regex!6292) (regTwo!13096 Regex!6292)) (EmptyExpr!6292) (Star!6292 (reg!6621 Regex!6292)) (EmptyLang!6292) (Union!6292 (regOne!13097 Regex!6292) (regTwo!13097 Regex!6292)) )
))
(declare-datatypes ((List!25894 0))(
  ( (Nil!25810) (Cons!25810 (h!31211 Regex!6292) (t!198544 List!25894)) )
))
(declare-datatypes ((Context!3724 0))(
  ( (Context!3725 (exprs!2362 List!25894)) )
))
(declare-fun z!3830 () (Set Context!3724))

(assert (=> start!214720 (= condSetEmpty!19265 (= z!3830 (as set.empty (Set Context!3724))))))

(assert (=> start!214720 setRes!19265))

(declare-fun setElem!19265 () Context!3724)

(declare-fun tp!686257 () Bool)

(declare-fun setNonEmpty!19265 () Bool)

(declare-fun e!1410128 () Bool)

(declare-fun inv!34844 (Context!3724) Bool)

(assert (=> setNonEmpty!19265 (= setRes!19265 (and tp!686257 (inv!34844 setElem!19265) e!1410128))))

(declare-fun setRest!19265 () (Set Context!3724))

(assert (=> setNonEmpty!19265 (= z!3830 (set.union (set.insert setElem!19265 (as set.empty (Set Context!3724))) setRest!19265))))

(declare-fun b!2207436 () Bool)

(declare-fun tp!686255 () Bool)

(declare-fun inv!34845 (Conc!8428) Bool)

(assert (=> b!2207436 (= e!1410127 (and (inv!34845 (c!352612 totalInput!846)) tp!686255))))

(declare-fun b!2207437 () Bool)

(declare-fun tp!686256 () Bool)

(assert (=> b!2207437 (= e!1410129 (and (inv!34845 (c!352612 input!5506)) tp!686256))))

(declare-fun b!2207438 () Bool)

(assert (=> b!2207438 (= e!1410126 false)))

(declare-fun lt!825546 () Bool)

(declare-fun nullableZipper!572 ((Set Context!3724)) Bool)

(assert (=> b!2207438 (= lt!825546 (nullableZipper!572 z!3830))))

(declare-fun lt!825545 () Int)

(declare-fun size!20106 (BalanceConc!16618) Int)

(assert (=> b!2207438 (= lt!825545 (size!20106 input!5506))))

(declare-fun lt!825547 () Int)

(assert (=> b!2207438 (= lt!825547 (size!20106 totalInput!846))))

(declare-fun b!2207439 () Bool)

(declare-fun tp!686258 () Bool)

(assert (=> b!2207439 (= e!1410128 tp!686258)))

(assert (= (and start!214720 res!948910) b!2207438))

(assert (= start!214720 b!2207437))

(assert (= start!214720 b!2207436))

(assert (= (and start!214720 condSetEmpty!19265) setIsEmpty!19265))

(assert (= (and start!214720 (not condSetEmpty!19265)) setNonEmpty!19265))

(assert (= setNonEmpty!19265 b!2207439))

(declare-fun m!2649071 () Bool)

(assert (=> setNonEmpty!19265 m!2649071))

(declare-fun m!2649073 () Bool)

(assert (=> b!2207436 m!2649073))

(declare-fun m!2649075 () Bool)

(assert (=> b!2207438 m!2649075))

(declare-fun m!2649077 () Bool)

(assert (=> b!2207438 m!2649077))

(declare-fun m!2649079 () Bool)

(assert (=> b!2207438 m!2649079))

(declare-fun m!2649081 () Bool)

(assert (=> start!214720 m!2649081))

(declare-fun m!2649083 () Bool)

(assert (=> start!214720 m!2649083))

(declare-fun m!2649085 () Bool)

(assert (=> start!214720 m!2649085))

(declare-fun m!2649087 () Bool)

(assert (=> start!214720 m!2649087))

(assert (=> start!214720 m!2649081))

(assert (=> start!214720 m!2649083))

(declare-fun m!2649089 () Bool)

(assert (=> start!214720 m!2649089))

(declare-fun m!2649091 () Bool)

(assert (=> b!2207437 m!2649091))

(push 1)

(assert (not b!2207437))

(assert (not b!2207439))

(assert (not b!2207436))

(assert (not b!2207438))

(assert (not start!214720))

(assert (not setNonEmpty!19265))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

