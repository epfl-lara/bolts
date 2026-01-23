; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107664 () Bool)

(assert start!107664)

(declare-fun b!1209075 () Bool)

(declare-fun e!775551 () Bool)

(declare-fun from!777 () Int)

(declare-fun lt!413334 () Int)

(assert (=> b!1209075 (= e!775551 (and (>= from!777 0) (< from!777 lt!413334)))))

(declare-datatypes ((T!22496 0))(
  ( (T!22497 (val!3990 Int)) )
))
(declare-datatypes ((List!12211 0))(
  ( (Nil!12166) (Cons!12166 (h!17567 T!22496) (t!112608 List!12211)) )
))
(declare-fun lt!413335 () List!12211)

(declare-fun head!2132 (List!12211) T!22496)

(declare-fun drop!636 (List!12211 Int) List!12211)

(declare-fun apply!2621 (List!12211 Int) T!22496)

(assert (=> b!1209075 (= (head!2132 (drop!636 lt!413335 from!777)) (apply!2621 lt!413335 from!777))))

(declare-datatypes ((Unit!18544 0))(
  ( (Unit!18545) )
))
(declare-fun lt!413333 () Unit!18544)

(declare-fun lemmaDropApply!401 (List!12211 Int) Unit!18544)

(assert (=> b!1209075 (= lt!413333 (lemmaDropApply!401 lt!413335 from!777))))

(declare-fun b!1209076 () Bool)

(declare-fun e!775553 () Bool)

(declare-fun tp!342528 () Bool)

(declare-fun tp!342526 () Bool)

(assert (=> b!1209076 (= e!775553 (and tp!342528 tp!342526))))

(declare-fun b!1209077 () Bool)

(declare-fun e!775552 () Bool)

(assert (=> b!1209077 (= e!775552 e!775551)))

(declare-fun res!543708 () Bool)

(assert (=> b!1209077 (=> res!543708 e!775551)))

(declare-fun lt!413336 () Int)

(declare-fun lt!413337 () Int)

(assert (=> b!1209077 (= res!543708 (or (not (= lt!413337 lt!413336)) (= from!777 lt!413337)))))

(assert (=> b!1209077 (= lt!413336 lt!413334)))

(declare-datatypes ((Conc!4008 0) (IArray!8021 0) (List!12213 0) (BalanceConc!7936 0) (Object!2210 0))(
  ( (Node!4008 (left!10595 Conc!4008) (right!10925 Conc!4008) (csize!8246 Int) (cheight!4219 Int)) (Leaf!6172 (xs!6719 IArray!8021) (csize!8247 Int)) (Empty!4008) )
  ( (IArray!8022 (innerList!4068 List!12213)) )
  ( (Nil!12167) (Cons!12167 (h!17568 Object!2210) (t!112609 List!12213)) )
  ( (BalanceConc!7937 (c!202480 Conc!4008)) )
  ( (BalanceConc!7935 (value!68211 BalanceConc!7936)) (List!12212 (value!68212 List!12213)) (Character!44 (value!68213 (_ BitVec 16))) (Open!44 (value!68214 Int)) )
))
(declare-datatypes ((Vector!92 0))(
  ( (Vector!93 (underlying!2790 Object!2210) (overflowing!103 List!12211)) )
))
(declare-fun other!28 () Vector!92)

(declare-fun size!9708 (List!12211) Int)

(declare-fun list!4527 (Vector!92) List!12211)

(assert (=> b!1209077 (= lt!413334 (size!9708 (list!4527 other!28)))))

(declare-fun size!9709 (Vector!92) Int)

(assert (=> b!1209077 (= lt!413336 (size!9709 other!28))))

(declare-fun b!1209078 () Bool)

(declare-fun e!775555 () Bool)

(assert (=> b!1209078 (= e!775555 (not e!775552))))

(declare-fun res!543707 () Bool)

(assert (=> b!1209078 (=> res!543707 e!775552)))

(assert (=> b!1209078 (= res!543707 (> from!777 lt!413337))))

(assert (=> b!1209078 (= lt!413337 (size!9708 lt!413335))))

(declare-fun thiss!9565 () Vector!92)

(assert (=> b!1209078 (= lt!413335 (list!4527 thiss!9565))))

(assert (=> b!1209078 (= lt!413337 (size!9709 thiss!9565))))

(declare-fun res!543709 () Bool)

(assert (=> start!107664 (=> (not res!543709) (not e!775555))))

(assert (=> start!107664 (= res!543709 (<= 0 from!777))))

(assert (=> start!107664 e!775555))

(assert (=> start!107664 true))

(declare-fun e!775554 () Bool)

(assert (=> start!107664 e!775554))

(assert (=> start!107664 e!775553))

(declare-fun b!1209079 () Bool)

(declare-fun tp!342529 () Bool)

(declare-fun tp!342527 () Bool)

(assert (=> b!1209079 (= e!775554 (and tp!342529 tp!342527))))

(assert (= (and start!107664 res!543709) b!1209078))

(assert (= (and b!1209078 (not res!543707)) b!1209077))

(assert (= (and b!1209077 (not res!543708)) b!1209075))

(assert (= start!107664 b!1209079))

(assert (= start!107664 b!1209076))

(declare-fun m!1384635 () Bool)

(assert (=> b!1209075 m!1384635))

(assert (=> b!1209075 m!1384635))

(declare-fun m!1384637 () Bool)

(assert (=> b!1209075 m!1384637))

(declare-fun m!1384639 () Bool)

(assert (=> b!1209075 m!1384639))

(declare-fun m!1384641 () Bool)

(assert (=> b!1209075 m!1384641))

(declare-fun m!1384643 () Bool)

(assert (=> b!1209077 m!1384643))

(assert (=> b!1209077 m!1384643))

(declare-fun m!1384645 () Bool)

(assert (=> b!1209077 m!1384645))

(declare-fun m!1384647 () Bool)

(assert (=> b!1209077 m!1384647))

(declare-fun m!1384649 () Bool)

(assert (=> b!1209078 m!1384649))

(declare-fun m!1384651 () Bool)

(assert (=> b!1209078 m!1384651))

(declare-fun m!1384653 () Bool)

(assert (=> b!1209078 m!1384653))

(check-sat (not b!1209075) (not b!1209078) (not b!1209076) (not b!1209079) (not b!1209077))
(check-sat)
