; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107660 () Bool)

(assert start!107660)

(declare-fun res!543690 () Bool)

(declare-fun e!775522 () Bool)

(assert (=> start!107660 (=> (not res!543690) (not e!775522))))

(declare-fun from!777 () Int)

(assert (=> start!107660 (= res!543690 (<= 0 from!777))))

(assert (=> start!107660 e!775522))

(assert (=> start!107660 true))

(declare-fun e!775525 () Bool)

(assert (=> start!107660 e!775525))

(declare-fun e!775523 () Bool)

(assert (=> start!107660 e!775523))

(declare-fun lt!413307 () Int)

(declare-fun lt!413306 () Int)

(declare-fun e!775524 () Bool)

(declare-fun b!1209047 () Bool)

(declare-fun lt!413305 () Int)

(assert (=> b!1209047 (= e!775524 (or (not (= lt!413306 lt!413305)) (= from!777 lt!413306) (and (>= from!777 0) (< from!777 lt!413307))))))

(declare-datatypes ((Conc!4006 0) (List!12206 0) (IArray!8017 0) (BalanceConc!7930 0) (Object!2208 0))(
  ( (Node!4006 (left!10592 Conc!4006) (right!10922 Conc!4006) (csize!8242 Int) (cheight!4217 Int)) (Leaf!6169 (xs!6717 IArray!8017) (csize!8243 Int)) (Empty!4006) )
  ( (Nil!12162) (Cons!12162 (h!17563 Object!2208) (t!112604 List!12206)) )
  ( (IArray!8018 (innerList!4066 List!12206)) )
  ( (BalanceConc!7931 (c!202478 Conc!4006)) )
  ( (BalanceConc!7929 (value!68200 BalanceConc!7930)) (List!12205 (value!68201 List!12206)) (Character!42 (value!68202 (_ BitVec 16))) (Open!42 (value!68203 Int)) )
))
(declare-datatypes ((T!22482 0))(
  ( (T!22483 (val!3988 Int)) )
))
(declare-datatypes ((List!12207 0))(
  ( (Nil!12163) (Cons!12163 (h!17564 T!22482) (t!112605 List!12207)) )
))
(declare-datatypes ((Vector!88 0))(
  ( (Vector!89 (underlying!2788 Object!2208) (overflowing!101 List!12207)) )
))
(declare-fun other!28 () Vector!88)

(declare-fun size!9704 (List!12207) Int)

(declare-fun list!4525 (Vector!88) List!12207)

(assert (=> b!1209047 (= lt!413305 (size!9704 (list!4525 other!28)))))

(declare-fun size!9705 (Vector!88) Int)

(assert (=> b!1209047 (= lt!413305 (size!9705 other!28))))

(declare-fun b!1209049 () Bool)

(declare-fun tp!342502 () Bool)

(declare-fun tp!342505 () Bool)

(assert (=> b!1209049 (= e!775523 (and tp!342502 tp!342505))))

(declare-fun b!1209048 () Bool)

(declare-fun tp!342504 () Bool)

(declare-fun tp!342503 () Bool)

(assert (=> b!1209048 (= e!775525 (and tp!342504 tp!342503))))

(declare-fun b!1209046 () Bool)

(assert (=> b!1209046 (= e!775522 (not e!775524))))

(declare-fun res!543691 () Bool)

(assert (=> b!1209046 (=> res!543691 e!775524)))

(assert (=> b!1209046 (= res!543691 (> from!777 lt!413306))))

(assert (=> b!1209046 (= lt!413306 lt!413307)))

(declare-fun thiss!9565 () Vector!88)

(assert (=> b!1209046 (= lt!413307 (size!9704 (list!4525 thiss!9565)))))

(assert (=> b!1209046 (= lt!413306 (size!9705 thiss!9565))))

(assert (= (and start!107660 res!543690) b!1209046))

(assert (= (and b!1209046 (not res!543691)) b!1209047))

(assert (= start!107660 b!1209048))

(assert (= start!107660 b!1209049))

(declare-fun m!1384603 () Bool)

(assert (=> b!1209047 m!1384603))

(assert (=> b!1209047 m!1384603))

(declare-fun m!1384605 () Bool)

(assert (=> b!1209047 m!1384605))

(declare-fun m!1384607 () Bool)

(assert (=> b!1209047 m!1384607))

(declare-fun m!1384609 () Bool)

(assert (=> b!1209046 m!1384609))

(assert (=> b!1209046 m!1384609))

(declare-fun m!1384611 () Bool)

(assert (=> b!1209046 m!1384611))

(declare-fun m!1384613 () Bool)

(assert (=> b!1209046 m!1384613))

(check-sat (not b!1209047) (not b!1209046) (not b!1209048) (not b!1209049))
(check-sat)
