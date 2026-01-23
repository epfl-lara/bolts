; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!107578 () Bool)

(assert start!107578)

(declare-fun res!543420 () Bool)

(declare-fun e!774999 () Bool)

(assert (=> start!107578 (=> (not res!543420) (not e!774999))))

(declare-fun from!777 () Int)

(assert (=> start!107578 (= res!543420 (<= 0 from!777))))

(assert (=> start!107578 e!774999))

(assert (=> start!107578 true))

(declare-fun e!775000 () Bool)

(assert (=> start!107578 e!775000))

(declare-fun e!775002 () Bool)

(assert (=> start!107578 e!775002))

(declare-fun b!1208276 () Bool)

(declare-fun e!774998 () Bool)

(assert (=> b!1208276 (= e!774999 (not e!774998))))

(declare-fun res!543419 () Bool)

(assert (=> b!1208276 (=> res!543419 e!774998)))

(declare-fun lt!412911 () Int)

(assert (=> b!1208276 (= res!543419 (> from!777 lt!412911))))

(declare-datatypes ((T!22382 0))(
  ( (T!22383 (val!3973 Int)) )
))
(declare-datatypes ((List!12160 0))(
  ( (Nil!12132) (Cons!12132 (h!17533 T!22382) (t!112572 List!12160)) )
))
(declare-fun lt!412907 () List!12160)

(declare-fun size!9672 (List!12160) Int)

(assert (=> b!1208276 (= lt!412911 (size!9672 lt!412907))))

(declare-datatypes ((List!12162 0) (IArray!7987 0) (Object!2193 0) (Conc!3991 0) (BalanceConc!7885 0))(
  ( (Nil!12133) (Cons!12133 (h!17534 Object!2193) (t!112573 List!12162)) )
  ( (IArray!7988 (innerList!4051 List!12162)) )
  ( (BalanceConc!7884 (value!68119 BalanceConc!7885)) (List!12161 (value!68120 List!12162)) (Character!27 (value!68121 (_ BitVec 16))) (Open!27 (value!68122 Int)) )
  ( (Node!3991 (left!10570 Conc!3991) (right!10900 Conc!3991) (csize!8212 Int) (cheight!4202 Int)) (Leaf!6147 (xs!6702 IArray!7987) (csize!8213 Int)) (Empty!3991) )
  ( (BalanceConc!7886 (c!202323 Conc!3991)) )
))
(declare-datatypes ((Vector!58 0))(
  ( (Vector!59 (underlying!2773 Object!2193) (overflowing!86 List!12160)) )
))
(declare-fun thiss!9565 () Vector!58)

(declare-fun list!4509 (Vector!58) List!12160)

(assert (=> b!1208276 (= lt!412907 (list!4509 thiss!9565))))

(declare-fun size!9673 (Vector!58) Int)

(assert (=> b!1208276 (= lt!412911 (size!9673 thiss!9565))))

(declare-fun b!1208277 () Bool)

(declare-fun e!775001 () Bool)

(assert (=> b!1208277 (= e!775001 true)))

(declare-fun lt!412910 () List!12160)

(declare-fun head!2121 (List!12160) T!22382)

(declare-fun drop!623 (List!12160 Int) List!12160)

(declare-fun apply!2606 (List!12160 Int) T!22382)

(assert (=> b!1208277 (= (head!2121 (drop!623 lt!412910 from!777)) (apply!2606 lt!412910 from!777))))

(declare-datatypes ((Unit!18522 0))(
  ( (Unit!18523) )
))
(declare-fun lt!412908 () Unit!18522)

(declare-fun lemmaDropApply!390 (List!12160 Int) Unit!18522)

(assert (=> b!1208277 (= lt!412908 (lemmaDropApply!390 lt!412910 from!777))))

(assert (=> b!1208277 (= (head!2121 (drop!623 lt!412907 from!777)) (apply!2606 lt!412907 from!777))))

(declare-fun lt!412909 () Unit!18522)

(assert (=> b!1208277 (= lt!412909 (lemmaDropApply!390 lt!412907 from!777))))

(declare-fun b!1208278 () Bool)

(assert (=> b!1208278 (= e!774998 e!775001)))

(declare-fun res!543418 () Bool)

(assert (=> b!1208278 (=> res!543418 e!775001)))

(declare-fun lt!412906 () Int)

(assert (=> b!1208278 (= res!543418 (or (not (= lt!412911 lt!412906)) (= from!777 lt!412911)))))

(assert (=> b!1208278 (= lt!412906 (size!9672 lt!412910))))

(declare-fun other!28 () Vector!58)

(assert (=> b!1208278 (= lt!412910 (list!4509 other!28))))

(assert (=> b!1208278 (= lt!412906 (size!9673 other!28))))

(declare-fun b!1208279 () Bool)

(declare-fun tp!342193 () Bool)

(declare-fun tp!342191 () Bool)

(assert (=> b!1208279 (= e!775000 (and tp!342193 tp!342191))))

(declare-fun b!1208280 () Bool)

(declare-fun tp!342190 () Bool)

(declare-fun tp!342192 () Bool)

(assert (=> b!1208280 (= e!775002 (and tp!342190 tp!342192))))

(assert (= (and start!107578 res!543420) b!1208276))

(assert (= (and b!1208276 (not res!543419)) b!1208278))

(assert (= (and b!1208278 (not res!543418)) b!1208277))

(assert (= start!107578 b!1208279))

(assert (= start!107578 b!1208280))

(declare-fun m!1383651 () Bool)

(assert (=> b!1208276 m!1383651))

(declare-fun m!1383653 () Bool)

(assert (=> b!1208276 m!1383653))

(declare-fun m!1383655 () Bool)

(assert (=> b!1208276 m!1383655))

(declare-fun m!1383657 () Bool)

(assert (=> b!1208277 m!1383657))

(declare-fun m!1383659 () Bool)

(assert (=> b!1208277 m!1383659))

(declare-fun m!1383661 () Bool)

(assert (=> b!1208277 m!1383661))

(assert (=> b!1208277 m!1383659))

(declare-fun m!1383663 () Bool)

(assert (=> b!1208277 m!1383663))

(declare-fun m!1383665 () Bool)

(assert (=> b!1208277 m!1383665))

(declare-fun m!1383667 () Bool)

(assert (=> b!1208277 m!1383667))

(declare-fun m!1383669 () Bool)

(assert (=> b!1208277 m!1383669))

(declare-fun m!1383671 () Bool)

(assert (=> b!1208277 m!1383671))

(assert (=> b!1208277 m!1383669))

(declare-fun m!1383673 () Bool)

(assert (=> b!1208278 m!1383673))

(declare-fun m!1383675 () Bool)

(assert (=> b!1208278 m!1383675))

(declare-fun m!1383677 () Bool)

(assert (=> b!1208278 m!1383677))

(push 1)

(assert (not b!1208280))

(assert (not b!1208276))

(assert (not b!1208278))

(assert (not b!1208279))

(assert (not b!1208277))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

