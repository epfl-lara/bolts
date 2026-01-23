; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!229796 () Bool)

(assert start!229796)

(declare-fun setRes!20893 () Bool)

(declare-fun tp!737433 () Bool)

(declare-fun setNonEmpty!20893 () Bool)

(declare-fun e!1491399 () Bool)

(declare-datatypes ((C!13738 0))(
  ( (C!13739 (val!8025 Int)) )
))
(declare-datatypes ((Regex!6790 0))(
  ( (ElementMatch!6790 (c!369844 C!13738)) (Concat!11380 (regOne!14092 Regex!6790) (regTwo!14092 Regex!6790)) (EmptyExpr!6790) (Star!6790 (reg!7119 Regex!6790)) (EmptyLang!6790) (Union!6790 (regOne!14093 Regex!6790) (regTwo!14093 Regex!6790)) )
))
(declare-datatypes ((List!27817 0))(
  ( (Nil!27719) (Cons!27719 (h!33120 Regex!6790) (t!207539 List!27817)) )
))
(declare-datatypes ((Context!4220 0))(
  ( (Context!4221 (exprs!2610 List!27817)) )
))
(declare-fun setElem!20893 () Context!4220)

(declare-fun inv!37742 (Context!4220) Bool)

(assert (=> setNonEmpty!20893 (= setRes!20893 (and tp!737433 (inv!37742 setElem!20893) e!1491399))))

(declare-datatypes ((List!27818 0))(
  ( (Nil!27720) (Cons!27720 (h!33121 C!13738) (t!207540 List!27818)) )
))
(declare-datatypes ((IArray!18169 0))(
  ( (IArray!18170 (innerList!9142 List!27818)) )
))
(declare-datatypes ((Conc!9082 0))(
  ( (Node!9082 (left!21038 Conc!9082) (right!21368 Conc!9082) (csize!18394 Int) (cheight!9293 Int)) (Leaf!13351 (xs!12062 IArray!18169) (csize!18395 Int)) (Empty!9082) )
))
(declare-datatypes ((BalanceConc!17776 0))(
  ( (BalanceConc!17777 (c!369845 Conc!9082)) )
))
(declare-datatypes ((StackFrame!396 0))(
  ( (StackFrame!397 (z!6508 (Set Context!4220)) (from!3080 Int) (lastNullablePos!694 Int) (res!993888 Int) (totalInput!3689 BalanceConc!17776)) )
))
(declare-fun thiss!33933 () StackFrame!396)

(declare-fun setRest!20893 () (Set Context!4220))

(assert (=> setNonEmpty!20893 (= (z!6508 thiss!33933) (set.union (set.insert setElem!20893 (as set.empty (Set Context!4220))) setRest!20893))))

(declare-fun b!2327758 () Bool)

(declare-fun e!1491397 () Bool)

(assert (=> b!2327758 (= e!1491397 false)))

(declare-fun lt!861928 () Bool)

(declare-fun nullableZipper!597 ((Set Context!4220)) Bool)

(assert (=> b!2327758 (= lt!861928 (nullableZipper!597 (z!6508 thiss!33933)))))

(declare-fun b!2327759 () Bool)

(declare-fun res!993886 () Bool)

(assert (=> b!2327759 (=> (not res!993886) (not e!1491397))))

(assert (=> b!2327759 (= res!993886 (and (>= (lastNullablePos!694 thiss!33933) (- 1)) (< (lastNullablePos!694 thiss!33933) (from!3080 thiss!33933))))))

(declare-fun b!2327760 () Bool)

(declare-fun e!1491398 () Bool)

(declare-fun tp!737434 () Bool)

(declare-fun inv!37743 (Conc!9082) Bool)

(assert (=> b!2327760 (= e!1491398 (and (inv!37743 (c!369845 (totalInput!3689 thiss!33933))) tp!737434))))

(declare-fun e!1491396 () Bool)

(declare-fun b!2327761 () Bool)

(declare-fun inv!37744 (BalanceConc!17776) Bool)

(assert (=> b!2327761 (= e!1491396 (and setRes!20893 (inv!37744 (totalInput!3689 thiss!33933)) e!1491398))))

(declare-fun condSetEmpty!20893 () Bool)

(assert (=> b!2327761 (= condSetEmpty!20893 (= (z!6508 thiss!33933) (as set.empty (Set Context!4220))))))

(declare-fun b!2327762 () Bool)

(declare-fun tp!737432 () Bool)

(assert (=> b!2327762 (= e!1491399 tp!737432)))

(declare-fun b!2327763 () Bool)

(declare-fun res!993887 () Bool)

(assert (=> b!2327763 (=> (not res!993887) (not e!1491397))))

(declare-fun size!21991 (BalanceConc!17776) Int)

(assert (=> b!2327763 (= res!993887 (<= (from!3080 thiss!33933) (size!21991 (totalInput!3689 thiss!33933))))))

(declare-fun res!993885 () Bool)

(assert (=> start!229796 (=> (not res!993885) (not e!1491397))))

(assert (=> start!229796 (= res!993885 (>= (from!3080 thiss!33933) 0))))

(assert (=> start!229796 e!1491397))

(declare-fun inv!37745 (StackFrame!396) Bool)

(assert (=> start!229796 (and (inv!37745 thiss!33933) e!1491396)))

(declare-fun setIsEmpty!20893 () Bool)

(assert (=> setIsEmpty!20893 setRes!20893))

(assert (= (and start!229796 res!993885) b!2327763))

(assert (= (and b!2327763 res!993887) b!2327759))

(assert (= (and b!2327759 res!993886) b!2327758))

(assert (= (and b!2327761 condSetEmpty!20893) setIsEmpty!20893))

(assert (= (and b!2327761 (not condSetEmpty!20893)) setNonEmpty!20893))

(assert (= setNonEmpty!20893 b!2327762))

(assert (= b!2327761 b!2327760))

(assert (= start!229796 b!2327761))

(declare-fun m!2758599 () Bool)

(assert (=> b!2327758 m!2758599))

(declare-fun m!2758601 () Bool)

(assert (=> setNonEmpty!20893 m!2758601))

(declare-fun m!2758603 () Bool)

(assert (=> b!2327760 m!2758603))

(declare-fun m!2758605 () Bool)

(assert (=> b!2327763 m!2758605))

(declare-fun m!2758607 () Bool)

(assert (=> b!2327761 m!2758607))

(declare-fun m!2758609 () Bool)

(assert (=> start!229796 m!2758609))

(push 1)

(assert (not setNonEmpty!20893))

(assert (not b!2327760))

(assert (not b!2327761))

(assert (not b!2327762))

(assert (not start!229796))

(assert (not b!2327763))

(assert (not b!2327758))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

