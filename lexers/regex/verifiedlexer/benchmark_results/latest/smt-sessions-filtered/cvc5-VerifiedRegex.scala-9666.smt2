; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!507080 () Bool)

(assert start!507080)

(declare-fun setIsEmpty!27351 () Bool)

(declare-fun setRes!27351 () Bool)

(assert (=> setIsEmpty!27351 setRes!27351))

(declare-fun b!4855120 () Bool)

(declare-fun e!3035467 () Bool)

(declare-datatypes ((C!26342 0))(
  ( (C!26343 (val!22379 Int)) )
))
(declare-datatypes ((List!55845 0))(
  ( (Nil!55721) (Cons!55721 (h!62169 C!26342) (t!363347 List!55845)) )
))
(declare-datatypes ((IArray!29075 0))(
  ( (IArray!29076 (innerList!14595 List!55845)) )
))
(declare-datatypes ((Conc!14507 0))(
  ( (Node!14507 (left!40471 Conc!14507) (right!40801 Conc!14507) (csize!29244 Int) (cheight!14718 Int)) (Leaf!24174 (xs!17813 IArray!29075) (csize!29245 Int)) (Empty!14507) )
))
(declare-datatypes ((BalanceConc!28504 0))(
  ( (BalanceConc!28505 (c!825934 Conc!14507)) )
))
(declare-fun totalInput!592 () BalanceConc!28504)

(declare-fun tp!1366016 () Bool)

(declare-fun inv!71458 (Conc!14507) Bool)

(assert (=> b!4855120 (= e!3035467 (and (inv!71458 (c!825934 totalInput!592)) tp!1366016))))

(declare-fun res!2072632 () Bool)

(declare-fun e!3035469 () Bool)

(assert (=> start!507080 (=> (not res!2072632) (not e!3035469))))

(declare-datatypes ((Regex!13072 0))(
  ( (ElementMatch!13072 (c!825935 C!26342)) (Concat!21391 (regOne!26656 Regex!13072) (regTwo!26656 Regex!13072)) (EmptyExpr!13072) (Star!13072 (reg!13401 Regex!13072)) (EmptyLang!13072) (Union!13072 (regOne!26657 Regex!13072) (regTwo!26657 Regex!13072)) )
))
(declare-datatypes ((List!55846 0))(
  ( (Nil!55722) (Cons!55722 (h!62170 Regex!13072) (t!363348 List!55846)) )
))
(declare-datatypes ((Context!5924 0))(
  ( (Context!5925 (exprs!3462 List!55846)) )
))
(declare-datatypes ((tuple2!59568 0))(
  ( (tuple2!59569 (_1!33081 (Set Context!5924)) (_2!33081 Int)) )
))
(declare-datatypes ((tuple2!59570 0))(
  ( (tuple2!59571 (_1!33082 tuple2!59568) (_2!33082 Int)) )
))
(declare-fun kv!61 () tuple2!59570)

(assert (=> start!507080 (= res!2072632 (>= (_2!33081 (_1!33082 kv!61)) 0))))

(assert (=> start!507080 e!3035469))

(declare-fun condSetEmpty!27351 () Bool)

(assert (=> start!507080 (= condSetEmpty!27351 (= (_1!33081 (_1!33082 kv!61)) (as set.empty (Set Context!5924))))))

(assert (=> start!507080 setRes!27351))

(declare-fun inv!71459 (BalanceConc!28504) Bool)

(assert (=> start!507080 (and (inv!71459 totalInput!592) e!3035467)))

(declare-fun b!4855121 () Bool)

(assert (=> b!4855121 (= e!3035469 false)))

(declare-fun lt!1991192 () Int)

(declare-fun size!36688 (BalanceConc!28504) Int)

(assert (=> b!4855121 (= lt!1991192 (size!36688 totalInput!592))))

(declare-fun setElem!27351 () Context!5924)

(declare-fun tp!1366015 () Bool)

(declare-fun setNonEmpty!27351 () Bool)

(declare-fun e!3035468 () Bool)

(declare-fun inv!71460 (Context!5924) Bool)

(assert (=> setNonEmpty!27351 (= setRes!27351 (and tp!1366015 (inv!71460 setElem!27351) e!3035468))))

(declare-fun setRest!27351 () (Set Context!5924))

(assert (=> setNonEmpty!27351 (= (_1!33081 (_1!33082 kv!61)) (set.union (set.insert setElem!27351 (as set.empty (Set Context!5924))) setRest!27351))))

(declare-fun b!4855122 () Bool)

(declare-fun tp!1366014 () Bool)

(assert (=> b!4855122 (= e!3035468 tp!1366014)))

(assert (= (and start!507080 res!2072632) b!4855121))

(assert (= (and start!507080 condSetEmpty!27351) setIsEmpty!27351))

(assert (= (and start!507080 (not condSetEmpty!27351)) setNonEmpty!27351))

(assert (= setNonEmpty!27351 b!4855122))

(assert (= start!507080 b!4855120))

(declare-fun m!5852834 () Bool)

(assert (=> b!4855120 m!5852834))

(declare-fun m!5852836 () Bool)

(assert (=> start!507080 m!5852836))

(declare-fun m!5852838 () Bool)

(assert (=> b!4855121 m!5852838))

(declare-fun m!5852840 () Bool)

(assert (=> setNonEmpty!27351 m!5852840))

(push 1)

(assert (not b!4855122))

(assert (not b!4855121))

(assert (not b!4855120))

(assert (not setNonEmpty!27351))

(assert (not start!507080))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

