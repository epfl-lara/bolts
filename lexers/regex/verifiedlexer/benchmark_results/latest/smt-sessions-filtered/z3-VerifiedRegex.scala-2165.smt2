; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107672 () Bool)

(assert start!107672)

(declare-fun b!1209135 () Bool)

(declare-fun e!775614 () Bool)

(declare-fun from!777 () Int)

(declare-fun lt!413425 () Int)

(assert (=> b!1209135 (= e!775614 (and (>= from!777 0) (< from!777 lt!413425)))))

(declare-datatypes ((T!22524 0))(
  ( (T!22525 (val!3994 Int)) )
))
(declare-datatypes ((List!12223 0))(
  ( (Nil!12174) (Cons!12174 (h!17575 T!22524) (t!112616 List!12223)) )
))
(declare-fun lt!413427 () List!12223)

(declare-fun lt!413428 () List!12223)

(declare-fun tail!1754 (List!12223) List!12223)

(declare-fun drop!640 (List!12223 Int) List!12223)

(assert (=> b!1209135 (= (tail!1754 lt!413427) (drop!640 lt!413428 (+ 1 from!777)))))

(declare-datatypes ((Unit!18552 0))(
  ( (Unit!18553) )
))
(declare-fun lt!413430 () Unit!18552)

(declare-fun lemmaDropTail!385 (List!12223 Int) Unit!18552)

(assert (=> b!1209135 (= lt!413430 (lemmaDropTail!385 lt!413428 from!777))))

(declare-fun lt!413433 () List!12223)

(declare-fun head!2136 (List!12223) T!22524)

(declare-fun apply!2625 (List!12223 Int) T!22524)

(assert (=> b!1209135 (= (head!2136 (drop!640 lt!413433 from!777)) (apply!2625 lt!413433 from!777))))

(declare-fun lt!413432 () Unit!18552)

(declare-fun lemmaDropApply!405 (List!12223 Int) Unit!18552)

(assert (=> b!1209135 (= lt!413432 (lemmaDropApply!405 lt!413433 from!777))))

(assert (=> b!1209135 (= (head!2136 lt!413427) (apply!2625 lt!413428 from!777))))

(assert (=> b!1209135 (= lt!413427 (drop!640 lt!413428 from!777))))

(declare-fun lt!413426 () Unit!18552)

(assert (=> b!1209135 (= lt!413426 (lemmaDropApply!405 lt!413428 from!777))))

(declare-fun b!1209136 () Bool)

(declare-fun e!775613 () Bool)

(assert (=> b!1209136 (= e!775613 e!775614)))

(declare-fun res!543745 () Bool)

(assert (=> b!1209136 (=> res!543745 e!775614)))

(declare-fun lt!413429 () Int)

(declare-fun lt!413431 () Int)

(assert (=> b!1209136 (= res!543745 (or (not (= lt!413429 lt!413431)) (= from!777 lt!413429)))))

(assert (=> b!1209136 (= lt!413431 lt!413425)))

(declare-fun size!9716 (List!12223) Int)

(assert (=> b!1209136 (= lt!413425 (size!9716 lt!413433))))

(declare-datatypes ((IArray!8029 0) (List!12225 0) (Conc!4012 0) (BalanceConc!7948 0) (Object!2214 0))(
  ( (IArray!8030 (innerList!4072 List!12225)) )
  ( (Nil!12175) (Cons!12175 (h!17576 Object!2214) (t!112617 List!12225)) )
  ( (Node!4012 (left!10601 Conc!4012) (right!10931 Conc!4012) (csize!8254 Int) (cheight!4223 Int)) (Leaf!6178 (xs!6723 IArray!8029) (csize!8255 Int)) (Empty!4012) )
  ( (BalanceConc!7949 (c!202484 Conc!4012)) )
  ( (BalanceConc!7947 (value!68233 BalanceConc!7948)) (List!12224 (value!68234 List!12225)) (Character!48 (value!68235 (_ BitVec 16))) (Open!48 (value!68236 Int)) )
))
(declare-datatypes ((Vector!100 0))(
  ( (Vector!101 (underlying!2794 Object!2214) (overflowing!107 List!12223)) )
))
(declare-fun other!28 () Vector!100)

(declare-fun list!4531 (Vector!100) List!12223)

(assert (=> b!1209136 (= lt!413433 (list!4531 other!28))))

(declare-fun size!9717 (Vector!100) Int)

(assert (=> b!1209136 (= lt!413431 (size!9717 other!28))))

(declare-fun b!1209137 () Bool)

(declare-fun e!775612 () Bool)

(declare-fun tp!342575 () Bool)

(declare-fun tp!342576 () Bool)

(assert (=> b!1209137 (= e!775612 (and tp!342575 tp!342576))))

(declare-fun res!543743 () Bool)

(declare-fun e!775611 () Bool)

(assert (=> start!107672 (=> (not res!543743) (not e!775611))))

(assert (=> start!107672 (= res!543743 (<= 0 from!777))))

(assert (=> start!107672 e!775611))

(assert (=> start!107672 true))

(declare-fun e!775615 () Bool)

(assert (=> start!107672 e!775615))

(assert (=> start!107672 e!775612))

(declare-fun b!1209138 () Bool)

(assert (=> b!1209138 (= e!775611 (not e!775613))))

(declare-fun res!543744 () Bool)

(assert (=> b!1209138 (=> res!543744 e!775613)))

(assert (=> b!1209138 (= res!543744 (> from!777 lt!413429))))

(assert (=> b!1209138 (= lt!413429 (size!9716 lt!413428))))

(declare-fun thiss!9565 () Vector!100)

(assert (=> b!1209138 (= lt!413428 (list!4531 thiss!9565))))

(assert (=> b!1209138 (= lt!413429 (size!9717 thiss!9565))))

(declare-fun b!1209139 () Bool)

(declare-fun tp!342574 () Bool)

(declare-fun tp!342577 () Bool)

(assert (=> b!1209139 (= e!775615 (and tp!342574 tp!342577))))

(assert (= (and start!107672 res!543743) b!1209138))

(assert (= (and b!1209138 (not res!543744)) b!1209136))

(assert (= (and b!1209136 (not res!543745)) b!1209135))

(assert (= start!107672 b!1209139))

(assert (= start!107672 b!1209137))

(declare-fun m!1384745 () Bool)

(assert (=> b!1209135 m!1384745))

(declare-fun m!1384747 () Bool)

(assert (=> b!1209135 m!1384747))

(declare-fun m!1384749 () Bool)

(assert (=> b!1209135 m!1384749))

(declare-fun m!1384751 () Bool)

(assert (=> b!1209135 m!1384751))

(declare-fun m!1384753 () Bool)

(assert (=> b!1209135 m!1384753))

(declare-fun m!1384755 () Bool)

(assert (=> b!1209135 m!1384755))

(declare-fun m!1384757 () Bool)

(assert (=> b!1209135 m!1384757))

(declare-fun m!1384759 () Bool)

(assert (=> b!1209135 m!1384759))

(assert (=> b!1209135 m!1384749))

(declare-fun m!1384761 () Bool)

(assert (=> b!1209135 m!1384761))

(declare-fun m!1384763 () Bool)

(assert (=> b!1209135 m!1384763))

(declare-fun m!1384765 () Bool)

(assert (=> b!1209135 m!1384765))

(declare-fun m!1384767 () Bool)

(assert (=> b!1209136 m!1384767))

(declare-fun m!1384769 () Bool)

(assert (=> b!1209136 m!1384769))

(declare-fun m!1384771 () Bool)

(assert (=> b!1209136 m!1384771))

(declare-fun m!1384773 () Bool)

(assert (=> b!1209138 m!1384773))

(declare-fun m!1384775 () Bool)

(assert (=> b!1209138 m!1384775))

(declare-fun m!1384777 () Bool)

(assert (=> b!1209138 m!1384777))

(check-sat (not b!1209139) (not b!1209136) (not b!1209135) (not b!1209137) (not b!1209138))
(check-sat)
