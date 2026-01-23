; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107680 () Bool)

(assert start!107680)

(declare-fun b!1209195 () Bool)

(declare-fun e!775671 () Bool)

(declare-fun tp!342625 () Bool)

(declare-fun tp!342623 () Bool)

(assert (=> b!1209195 (= e!775671 (and tp!342625 tp!342623))))

(declare-fun b!1209196 () Bool)

(declare-fun e!775674 () Bool)

(declare-fun from!777 () Int)

(declare-fun lt!413552 () Int)

(assert (=> b!1209196 (= e!775674 (< from!777 lt!413552))))

(declare-datatypes ((T!22552 0))(
  ( (T!22553 (val!3998 Int)) )
))
(declare-datatypes ((List!12235 0))(
  ( (Nil!12182) (Cons!12182 (h!17583 T!22552) (t!112624 List!12235)) )
))
(declare-fun lt!413547 () List!12235)

(declare-fun lt!413550 () List!12235)

(declare-fun tail!1758 (List!12235) List!12235)

(declare-fun drop!644 (List!12235 Int) List!12235)

(assert (=> b!1209196 (= (tail!1758 lt!413547) (drop!644 lt!413550 (+ 1 from!777)))))

(declare-datatypes ((Unit!18560 0))(
  ( (Unit!18561) )
))
(declare-fun lt!413553 () Unit!18560)

(declare-fun lemmaDropTail!389 (List!12235 Int) Unit!18560)

(assert (=> b!1209196 (= lt!413553 (lemmaDropTail!389 lt!413550 from!777))))

(declare-fun lt!413546 () List!12235)

(declare-fun lt!413551 () List!12235)

(assert (=> b!1209196 (= (tail!1758 lt!413546) (drop!644 lt!413551 (+ 1 from!777)))))

(declare-fun lt!413545 () Unit!18560)

(assert (=> b!1209196 (= lt!413545 (lemmaDropTail!389 lt!413551 from!777))))

(declare-fun head!2140 (List!12235) T!22552)

(declare-fun apply!2629 (List!12235 Int) T!22552)

(assert (=> b!1209196 (= (head!2140 lt!413547) (apply!2629 lt!413550 from!777))))

(assert (=> b!1209196 (= lt!413547 (drop!644 lt!413550 from!777))))

(declare-fun lt!413549 () Unit!18560)

(declare-fun lemmaDropApply!409 (List!12235 Int) Unit!18560)

(assert (=> b!1209196 (= lt!413549 (lemmaDropApply!409 lt!413550 from!777))))

(assert (=> b!1209196 (= (head!2140 lt!413546) (apply!2629 lt!413551 from!777))))

(assert (=> b!1209196 (= lt!413546 (drop!644 lt!413551 from!777))))

(declare-fun lt!413548 () Unit!18560)

(assert (=> b!1209196 (= lt!413548 (lemmaDropApply!409 lt!413551 from!777))))

(declare-fun b!1209197 () Bool)

(declare-fun e!775673 () Bool)

(declare-fun tp!342624 () Bool)

(declare-fun tp!342622 () Bool)

(assert (=> b!1209197 (= e!775673 (and tp!342624 tp!342622))))

(declare-fun b!1209198 () Bool)

(declare-fun e!775672 () Bool)

(declare-fun e!775675 () Bool)

(assert (=> b!1209198 (= e!775672 (not e!775675))))

(declare-fun res!543780 () Bool)

(assert (=> b!1209198 (=> res!543780 e!775675)))

(declare-fun lt!413544 () Int)

(assert (=> b!1209198 (= res!543780 (> from!777 lt!413544))))

(declare-fun size!9724 (List!12235) Int)

(assert (=> b!1209198 (= lt!413544 (size!9724 lt!413551))))

(declare-datatypes ((List!12237 0) (Conc!4016 0) (Object!2218 0) (BalanceConc!7960 0) (IArray!8037 0))(
  ( (Nil!12183) (Cons!12183 (h!17584 Object!2218) (t!112625 List!12237)) )
  ( (Node!4016 (left!10607 Conc!4016) (right!10937 Conc!4016) (csize!8262 Int) (cheight!4227 Int)) (Leaf!6184 (xs!6727 IArray!8037) (csize!8263 Int)) (Empty!4016) )
  ( (BalanceConc!7959 (value!68255 BalanceConc!7960)) (List!12236 (value!68256 List!12237)) (Character!52 (value!68257 (_ BitVec 16))) (Open!52 (value!68258 Int)) )
  ( (BalanceConc!7961 (c!202488 Conc!4016)) )
  ( (IArray!8038 (innerList!4076 List!12237)) )
))
(declare-datatypes ((Vector!108 0))(
  ( (Vector!109 (underlying!2798 Object!2218) (overflowing!111 List!12235)) )
))
(declare-fun thiss!9565 () Vector!108)

(declare-fun list!4535 (Vector!108) List!12235)

(assert (=> b!1209198 (= lt!413551 (list!4535 thiss!9565))))

(declare-fun size!9725 (Vector!108) Int)

(assert (=> b!1209198 (= lt!413544 (size!9725 thiss!9565))))

(declare-fun res!543781 () Bool)

(assert (=> start!107680 (=> (not res!543781) (not e!775672))))

(assert (=> start!107680 (= res!543781 (<= 0 from!777))))

(assert (=> start!107680 e!775672))

(assert (=> start!107680 true))

(assert (=> start!107680 e!775671))

(assert (=> start!107680 e!775673))

(declare-fun b!1209199 () Bool)

(assert (=> b!1209199 (= e!775675 e!775674)))

(declare-fun res!543779 () Bool)

(assert (=> b!1209199 (=> res!543779 e!775674)))

(assert (=> b!1209199 (= res!543779 (or (not (= lt!413544 lt!413552)) (= from!777 lt!413544)))))

(assert (=> b!1209199 (= lt!413552 (size!9724 lt!413550))))

(declare-fun other!28 () Vector!108)

(assert (=> b!1209199 (= lt!413550 (list!4535 other!28))))

(assert (=> b!1209199 (= lt!413552 (size!9725 other!28))))

(assert (= (and start!107680 res!543781) b!1209198))

(assert (= (and b!1209198 (not res!543780)) b!1209199))

(assert (= (and b!1209199 (not res!543779)) b!1209196))

(assert (= start!107680 b!1209195))

(assert (= start!107680 b!1209197))

(declare-fun m!1384899 () Bool)

(assert (=> b!1209196 m!1384899))

(declare-fun m!1384901 () Bool)

(assert (=> b!1209196 m!1384901))

(declare-fun m!1384903 () Bool)

(assert (=> b!1209196 m!1384903))

(declare-fun m!1384905 () Bool)

(assert (=> b!1209196 m!1384905))

(declare-fun m!1384907 () Bool)

(assert (=> b!1209196 m!1384907))

(declare-fun m!1384909 () Bool)

(assert (=> b!1209196 m!1384909))

(declare-fun m!1384911 () Bool)

(assert (=> b!1209196 m!1384911))

(declare-fun m!1384913 () Bool)

(assert (=> b!1209196 m!1384913))

(declare-fun m!1384915 () Bool)

(assert (=> b!1209196 m!1384915))

(declare-fun m!1384917 () Bool)

(assert (=> b!1209196 m!1384917))

(declare-fun m!1384919 () Bool)

(assert (=> b!1209196 m!1384919))

(declare-fun m!1384921 () Bool)

(assert (=> b!1209196 m!1384921))

(declare-fun m!1384923 () Bool)

(assert (=> b!1209196 m!1384923))

(declare-fun m!1384925 () Bool)

(assert (=> b!1209196 m!1384925))

(declare-fun m!1384927 () Bool)

(assert (=> b!1209198 m!1384927))

(declare-fun m!1384929 () Bool)

(assert (=> b!1209198 m!1384929))

(declare-fun m!1384931 () Bool)

(assert (=> b!1209198 m!1384931))

(declare-fun m!1384933 () Bool)

(assert (=> b!1209199 m!1384933))

(declare-fun m!1384935 () Bool)

(assert (=> b!1209199 m!1384935))

(declare-fun m!1384937 () Bool)

(assert (=> b!1209199 m!1384937))

(check-sat (not b!1209197) (not b!1209199) (not b!1209198) (not b!1209196) (not b!1209195))
(check-sat)
