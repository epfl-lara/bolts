; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!534124 () Bool)

(assert start!534124)

(declare-fun b!5049760 () Bool)

(declare-fun res!2150633 () Bool)

(declare-fun e!3152878 () Bool)

(assert (=> b!5049760 (=> (not res!2150633) (not e!3152878))))

(declare-fun i!705 () Int)

(declare-datatypes ((T!104640 0))(
  ( (T!104641 (val!23579 Int)) )
))
(declare-datatypes ((List!58489 0))(
  ( (Nil!58365) (Cons!58365 (h!64813 T!104640) (t!371128 List!58489)) )
))
(declare-fun l!2779 () List!58489)

(declare-fun size!38988 (List!58489) Int)

(assert (=> b!5049760 (= res!2150633 (<= i!705 (size!38988 l!2779)))))

(declare-fun res!2150634 () Bool)

(assert (=> start!534124 (=> (not res!2150634) (not e!3152878))))

(assert (=> start!534124 (= res!2150634 (<= 0 i!705))))

(assert (=> start!534124 e!3152878))

(assert (=> start!534124 true))

(declare-fun e!3152877 () Bool)

(assert (=> start!534124 e!3152877))

(declare-fun b!5049762 () Bool)

(assert (=> b!5049762 (= e!3152878 false)))

(declare-fun lt!2086422 () List!58489)

(declare-fun take!870 (List!58489 Int) List!58489)

(assert (=> b!5049762 (= lt!2086422 (take!870 l!2779 i!705))))

(declare-fun b!5049761 () Bool)

(declare-fun res!2150632 () Bool)

(assert (=> b!5049761 (=> (not res!2150632) (not e!3152878))))

(assert (=> b!5049761 (= res!2150632 (and (not (is-Nil!58365 l!2779)) (= i!705 0)))))

(declare-fun b!5049763 () Bool)

(declare-fun tp_is_empty!36913 () Bool)

(declare-fun tp!1412106 () Bool)

(assert (=> b!5049763 (= e!3152877 (and tp_is_empty!36913 tp!1412106))))

(assert (= (and start!534124 res!2150634) b!5049760))

(assert (= (and b!5049760 res!2150633) b!5049761))

(assert (= (and b!5049761 res!2150632) b!5049762))

(assert (= (and start!534124 (is-Cons!58365 l!2779)) b!5049763))

(declare-fun m!6084386 () Bool)

(assert (=> b!5049760 m!6084386))

(declare-fun m!6084388 () Bool)

(assert (=> b!5049762 m!6084388))

(push 1)

(assert (not b!5049762))

(assert (not b!5049760))

(assert (not b!5049763))

(assert tp_is_empty!36913)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

