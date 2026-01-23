; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107668 () Bool)

(assert start!107668)

(declare-fun b!1209105 () Bool)

(declare-fun e!775581 () Bool)

(declare-fun tp!342550 () Bool)

(declare-fun tp!342553 () Bool)

(assert (=> b!1209105 (= e!775581 (and tp!342550 tp!342553))))

(declare-fun b!1209106 () Bool)

(declare-fun e!775582 () Bool)

(declare-fun e!775583 () Bool)

(assert (=> b!1209106 (= e!775582 (not e!775583))))

(declare-fun res!543725 () Bool)

(assert (=> b!1209106 (=> res!543725 e!775583)))

(declare-fun from!777 () Int)

(declare-fun lt!413375 () Int)

(assert (=> b!1209106 (= res!543725 (> from!777 lt!413375))))

(declare-fun lt!413378 () Int)

(assert (=> b!1209106 (= lt!413375 lt!413378)))

(declare-datatypes ((T!22510 0))(
  ( (T!22511 (val!3992 Int)) )
))
(declare-datatypes ((List!12217 0))(
  ( (Nil!12170) (Cons!12170 (h!17571 T!22510) (t!112612 List!12217)) )
))
(declare-fun lt!413374 () List!12217)

(declare-fun size!9712 (List!12217) Int)

(assert (=> b!1209106 (= lt!413378 (size!9712 lt!413374))))

(declare-datatypes ((Conc!4010 0) (Object!2212 0) (BalanceConc!7942 0) (List!12219 0) (IArray!8025 0))(
  ( (Node!4010 (left!10598 Conc!4010) (right!10928 Conc!4010) (csize!8250 Int) (cheight!4221 Int)) (Leaf!6175 (xs!6721 IArray!8025) (csize!8251 Int)) (Empty!4010) )
  ( (BalanceConc!7941 (value!68222 BalanceConc!7942)) (List!12218 (value!68223 List!12219)) (Character!46 (value!68224 (_ BitVec 16))) (Open!46 (value!68225 Int)) )
  ( (BalanceConc!7943 (c!202482 Conc!4010)) )
  ( (Nil!12171) (Cons!12171 (h!17572 Object!2212) (t!112613 List!12219)) )
  ( (IArray!8026 (innerList!4070 List!12219)) )
))
(declare-datatypes ((Vector!96 0))(
  ( (Vector!97 (underlying!2792 Object!2212) (overflowing!105 List!12217)) )
))
(declare-fun thiss!9565 () Vector!96)

(declare-fun list!4529 (Vector!96) List!12217)

(assert (=> b!1209106 (= lt!413374 (list!4529 thiss!9565))))

(declare-fun size!9713 (Vector!96) Int)

(assert (=> b!1209106 (= lt!413375 (size!9713 thiss!9565))))

(declare-fun b!1209107 () Bool)

(declare-fun e!775584 () Bool)

(assert (=> b!1209107 (= e!775584 (and (>= from!777 0) (< from!777 lt!413378)))))

(declare-fun lt!413376 () List!12217)

(declare-fun head!2134 (List!12217) T!22510)

(declare-fun drop!638 (List!12217 Int) List!12217)

(declare-fun apply!2623 (List!12217 Int) T!22510)

(assert (=> b!1209107 (= (head!2134 (drop!638 lt!413376 from!777)) (apply!2623 lt!413376 from!777))))

(declare-datatypes ((Unit!18548 0))(
  ( (Unit!18549) )
))
(declare-fun lt!413377 () Unit!18548)

(declare-fun lemmaDropApply!403 (List!12217 Int) Unit!18548)

(assert (=> b!1209107 (= lt!413377 (lemmaDropApply!403 lt!413376 from!777))))

(assert (=> b!1209107 (= (head!2134 (drop!638 lt!413374 from!777)) (apply!2623 lt!413374 from!777))))

(declare-fun lt!413379 () Unit!18548)

(assert (=> b!1209107 (= lt!413379 (lemmaDropApply!403 lt!413374 from!777))))

(declare-fun b!1209109 () Bool)

(declare-fun e!775585 () Bool)

(declare-fun tp!342552 () Bool)

(declare-fun tp!342551 () Bool)

(assert (=> b!1209109 (= e!775585 (and tp!342552 tp!342551))))

(declare-fun res!543726 () Bool)

(assert (=> start!107668 (=> (not res!543726) (not e!775582))))

(assert (=> start!107668 (= res!543726 (<= 0 from!777))))

(assert (=> start!107668 e!775582))

(assert (=> start!107668 true))

(assert (=> start!107668 e!775581))

(assert (=> start!107668 e!775585))

(declare-fun b!1209108 () Bool)

(assert (=> b!1209108 (= e!775583 e!775584)))

(declare-fun res!543727 () Bool)

(assert (=> b!1209108 (=> res!543727 e!775584)))

(declare-fun lt!413373 () Int)

(assert (=> b!1209108 (= res!543727 (or (not (= lt!413375 lt!413373)) (= from!777 lt!413375)))))

(assert (=> b!1209108 (= lt!413373 (size!9712 lt!413376))))

(declare-fun other!28 () Vector!96)

(assert (=> b!1209108 (= lt!413376 (list!4529 other!28))))

(assert (=> b!1209108 (= lt!413373 (size!9713 other!28))))

(assert (= (and start!107668 res!543726) b!1209106))

(assert (= (and b!1209106 (not res!543725)) b!1209108))

(assert (= (and b!1209108 (not res!543727)) b!1209107))

(assert (= start!107668 b!1209105))

(assert (= start!107668 b!1209109))

(declare-fun m!1384683 () Bool)

(assert (=> b!1209106 m!1384683))

(declare-fun m!1384685 () Bool)

(assert (=> b!1209106 m!1384685))

(declare-fun m!1384687 () Bool)

(assert (=> b!1209106 m!1384687))

(declare-fun m!1384689 () Bool)

(assert (=> b!1209107 m!1384689))

(declare-fun m!1384691 () Bool)

(assert (=> b!1209107 m!1384691))

(declare-fun m!1384693 () Bool)

(assert (=> b!1209107 m!1384693))

(assert (=> b!1209107 m!1384689))

(declare-fun m!1384695 () Bool)

(assert (=> b!1209107 m!1384695))

(declare-fun m!1384697 () Bool)

(assert (=> b!1209107 m!1384697))

(declare-fun m!1384699 () Bool)

(assert (=> b!1209107 m!1384699))

(declare-fun m!1384701 () Bool)

(assert (=> b!1209107 m!1384701))

(assert (=> b!1209107 m!1384691))

(declare-fun m!1384703 () Bool)

(assert (=> b!1209107 m!1384703))

(declare-fun m!1384705 () Bool)

(assert (=> b!1209108 m!1384705))

(declare-fun m!1384707 () Bool)

(assert (=> b!1209108 m!1384707))

(declare-fun m!1384709 () Bool)

(assert (=> b!1209108 m!1384709))

(check-sat (not b!1209106) (not b!1209107) (not b!1209109) (not b!1209105) (not b!1209108))
(check-sat)
