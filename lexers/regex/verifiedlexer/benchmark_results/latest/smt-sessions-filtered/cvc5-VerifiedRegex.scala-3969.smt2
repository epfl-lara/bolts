; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!216574 () Bool)

(assert start!216574)

(declare-fun res!953288 () Bool)

(declare-fun e!1417729 () Bool)

(assert (=> start!216574 (=> (not res!953288) (not e!1417729))))

(declare-fun i!956 () Int)

(assert (=> start!216574 (= res!953288 (<= 0 i!956))))

(assert (=> start!216574 e!1417729))

(assert (=> start!216574 true))

(declare-fun e!1417727 () Bool)

(assert (=> start!216574 e!1417727))

(declare-fun b!2219986 () Bool)

(declare-fun e!1417728 () Bool)

(assert (=> b!2219986 (= e!1417729 (not e!1417728))))

(declare-fun res!953289 () Bool)

(assert (=> b!2219986 (=> res!953289 e!1417728)))

(declare-fun lt!827322 () Int)

(assert (=> b!2219986 (= res!953289 (>= i!956 lt!827322))))

(declare-fun lt!827324 () Int)

(assert (=> b!2219986 (= lt!827322 lt!827324)))

(declare-datatypes ((BalanceConc!16745 0) (Object!4427 0) (IArray!17025 0) (Conc!8510 0) (List!26104 0))(
  ( (BalanceConc!16746 (c!354504 Conc!8510)) )
  ( (BalanceConc!16744 (value!132509 BalanceConc!16745)) (List!26103 (value!132510 List!26104)) (Character!89 (value!132511 (_ BitVec 16))) (Open!89 (value!132512 Int)) )
  ( (IArray!17026 (innerList!8570 List!26104)) )
  ( (Node!8510 (left!20007 Conc!8510) (right!20337 Conc!8510) (csize!17250 Int) (cheight!8721 Int)) (Leaf!12480 (xs!11452 IArray!17025) (csize!17251 Int)) (Empty!8510) )
  ( (Nil!26013) (Cons!26013 (h!31414 Object!4427) (t!199503 List!26104)) )
))
(declare-datatypes ((T!41018 0))(
  ( (T!41019 (val!7449 Int)) )
))
(declare-datatypes ((List!26105 0))(
  ( (Nil!26014) (Cons!26014 (h!31415 T!41018) (t!199504 List!26105)) )
))
(declare-datatypes ((Vector!182 0))(
  ( (Vector!183 (underlying!6123 Object!4427) (overflowing!148 List!26105)) )
))
(declare-fun thiss!9308 () Vector!182)

(declare-fun size!20291 (List!26105) Int)

(declare-fun list!10096 (Vector!182) List!26105)

(assert (=> b!2219986 (= lt!827324 (size!20291 (list!10096 thiss!9308)))))

(declare-fun size!20292 (Vector!182) Int)

(assert (=> b!2219986 (= lt!827322 (size!20292 thiss!9308))))

(declare-fun b!2219987 () Bool)

(assert (=> b!2219987 (= e!1417728 (< i!956 lt!827324))))

(declare-fun lt!827323 () T!41018)

(declare-fun choose!13094 (Vector!182 Int) T!41018)

(assert (=> b!2219987 (= lt!827323 (choose!13094 thiss!9308 i!956))))

(declare-fun b!2219988 () Bool)

(declare-fun tp!691498 () Bool)

(declare-fun tp!691497 () Bool)

(assert (=> b!2219988 (= e!1417727 (and tp!691498 tp!691497))))

(assert (= (and start!216574 res!953288) b!2219986))

(assert (= (and b!2219986 (not res!953289)) b!2219987))

(assert (= start!216574 b!2219988))

(declare-fun m!2660777 () Bool)

(assert (=> b!2219986 m!2660777))

(assert (=> b!2219986 m!2660777))

(declare-fun m!2660779 () Bool)

(assert (=> b!2219986 m!2660779))

(declare-fun m!2660781 () Bool)

(assert (=> b!2219986 m!2660781))

(declare-fun m!2660783 () Bool)

(assert (=> b!2219987 m!2660783))

(push 1)

(assert (not b!2219987))

(assert (not b!2219986))

(assert (not b!2219988))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

