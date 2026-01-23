; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107576 () Bool)

(assert start!107576)

(declare-fun b!1208261 () Bool)

(declare-fun e!774986 () Bool)

(declare-fun tp!342179 () Bool)

(declare-fun tp!342178 () Bool)

(assert (=> b!1208261 (= e!774986 (and tp!342179 tp!342178))))

(declare-fun res!543410 () Bool)

(declare-fun e!774983 () Bool)

(assert (=> start!107576 (=> (not res!543410) (not e!774983))))

(declare-fun from!777 () Int)

(assert (=> start!107576 (= res!543410 (<= 0 from!777))))

(assert (=> start!107576 e!774983))

(assert (=> start!107576 true))

(assert (=> start!107576 e!774986))

(declare-fun e!774987 () Bool)

(assert (=> start!107576 e!774987))

(declare-fun b!1208262 () Bool)

(declare-fun e!774985 () Bool)

(assert (=> b!1208262 (= e!774983 (not e!774985))))

(declare-fun res!543409 () Bool)

(assert (=> b!1208262 (=> res!543409 e!774985)))

(declare-fun lt!412891 () Int)

(assert (=> b!1208262 (= res!543409 (> from!777 lt!412891))))

(declare-datatypes ((T!22370 0))(
  ( (T!22371 (val!3972 Int)) )
))
(declare-datatypes ((List!12157 0))(
  ( (Nil!12130) (Cons!12130 (h!17531 T!22370) (t!112570 List!12157)) )
))
(declare-fun lt!412893 () List!12157)

(declare-fun size!9670 (List!12157) Int)

(assert (=> b!1208262 (= lt!412891 (size!9670 lt!412893))))

(declare-datatypes ((Object!2192 0) (BalanceConc!7882 0) (IArray!7985 0) (Conc!3990 0) (List!12159 0))(
  ( (BalanceConc!7881 (value!68112 BalanceConc!7882)) (List!12158 (value!68113 List!12159)) (Character!26 (value!68114 (_ BitVec 16))) (Open!26 (value!68115 Int)) )
  ( (BalanceConc!7883 (c!202322 Conc!3990)) )
  ( (IArray!7986 (innerList!4050 List!12159)) )
  ( (Node!3990 (left!10568 Conc!3990) (right!10898 Conc!3990) (csize!8210 Int) (cheight!4201 Int)) (Leaf!6145 (xs!6701 IArray!7985) (csize!8211 Int)) (Empty!3990) )
  ( (Nil!12131) (Cons!12131 (h!17532 Object!2192) (t!112571 List!12159)) )
))
(declare-datatypes ((Vector!56 0))(
  ( (Vector!57 (underlying!2772 Object!2192) (overflowing!85 List!12157)) )
))
(declare-fun thiss!9565 () Vector!56)

(declare-fun list!4508 (Vector!56) List!12157)

(assert (=> b!1208262 (= lt!412893 (list!4508 thiss!9565))))

(declare-fun size!9671 (Vector!56) Int)

(assert (=> b!1208262 (= lt!412891 (size!9671 thiss!9565))))

(declare-fun b!1208263 () Bool)

(declare-fun tp!342180 () Bool)

(declare-fun tp!342181 () Bool)

(assert (=> b!1208263 (= e!774987 (and tp!342180 tp!342181))))

(declare-fun b!1208264 () Bool)

(declare-fun e!774984 () Bool)

(assert (=> b!1208264 (= e!774985 e!774984)))

(declare-fun res!543411 () Bool)

(assert (=> b!1208264 (=> res!543411 e!774984)))

(declare-fun lt!412892 () Int)

(assert (=> b!1208264 (= res!543411 (or (not (= lt!412891 lt!412892)) (= from!777 lt!412891)))))

(declare-fun other!28 () Vector!56)

(assert (=> b!1208264 (= lt!412892 (size!9670 (list!4508 other!28)))))

(assert (=> b!1208264 (= lt!412892 (size!9671 other!28))))

(declare-fun b!1208265 () Bool)

(assert (=> b!1208265 (= e!774984 true)))

(declare-fun head!2120 (List!12157) T!22370)

(declare-fun drop!622 (List!12157 Int) List!12157)

(declare-fun apply!2605 (List!12157 Int) T!22370)

(assert (=> b!1208265 (= (head!2120 (drop!622 lt!412893 from!777)) (apply!2605 lt!412893 from!777))))

(declare-datatypes ((Unit!18520 0))(
  ( (Unit!18521) )
))
(declare-fun lt!412890 () Unit!18520)

(declare-fun lemmaDropApply!389 (List!12157 Int) Unit!18520)

(assert (=> b!1208265 (= lt!412890 (lemmaDropApply!389 lt!412893 from!777))))

(assert (= (and start!107576 res!543410) b!1208262))

(assert (= (and b!1208262 (not res!543409)) b!1208264))

(assert (= (and b!1208264 (not res!543411)) b!1208265))

(assert (= start!107576 b!1208261))

(assert (= start!107576 b!1208263))

(declare-fun m!1383631 () Bool)

(assert (=> b!1208262 m!1383631))

(declare-fun m!1383633 () Bool)

(assert (=> b!1208262 m!1383633))

(declare-fun m!1383635 () Bool)

(assert (=> b!1208262 m!1383635))

(declare-fun m!1383637 () Bool)

(assert (=> b!1208264 m!1383637))

(assert (=> b!1208264 m!1383637))

(declare-fun m!1383639 () Bool)

(assert (=> b!1208264 m!1383639))

(declare-fun m!1383641 () Bool)

(assert (=> b!1208264 m!1383641))

(declare-fun m!1383643 () Bool)

(assert (=> b!1208265 m!1383643))

(assert (=> b!1208265 m!1383643))

(declare-fun m!1383645 () Bool)

(assert (=> b!1208265 m!1383645))

(declare-fun m!1383647 () Bool)

(assert (=> b!1208265 m!1383647))

(declare-fun m!1383649 () Bool)

(assert (=> b!1208265 m!1383649))

(check-sat (not b!1208263) (not b!1208262) (not b!1208265) (not b!1208264) (not b!1208261))
(check-sat)
