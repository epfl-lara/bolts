; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107592 () Bool)

(assert start!107592)

(declare-fun res!543482 () Bool)

(declare-fun e!775105 () Bool)

(assert (=> start!107592 (=> (not res!543482) (not e!775105))))

(declare-fun from!777 () Int)

(assert (=> start!107592 (= res!543482 (<= 0 from!777))))

(assert (=> start!107592 e!775105))

(assert (=> start!107592 true))

(declare-fun e!775107 () Bool)

(assert (=> start!107592 e!775107))

(declare-fun e!775103 () Bool)

(assert (=> start!107592 e!775103))

(declare-datatypes ((T!22426 0))(
  ( (T!22427 (val!3980 Int)) )
))
(declare-fun lt!413113 () T!22426)

(declare-fun lt!413114 () T!22426)

(declare-fun b!1208381 () Bool)

(declare-fun lt!413118 () Int)

(declare-fun e!775104 () Bool)

(assert (=> b!1208381 (= e!775104 (or (not (= lt!413113 lt!413114)) (and (<= 0 (+ 1 from!777)) (<= (+ 1 from!777) lt!413118))))))

(declare-fun lt!413110 () T!22426)

(assert (=> b!1208381 (= lt!413114 lt!413110)))

(declare-datatypes ((Object!2200 0) (List!12182 0) (Conc!3998 0) (IArray!8001 0) (BalanceConc!7906 0))(
  ( (BalanceConc!7905 (value!68156 BalanceConc!7906)) (List!12181 (value!68157 List!12182)) (Character!34 (value!68158 (_ BitVec 16))) (Open!34 (value!68159 Int)) )
  ( (Nil!12146) (Cons!12146 (h!17547 Object!2200) (t!112586 List!12182)) )
  ( (Node!3998 (left!10580 Conc!3998) (right!10910 Conc!3998) (csize!8226 Int) (cheight!4209 Int)) (Leaf!6157 (xs!6709 IArray!8001) (csize!8227 Int)) (Empty!3998) )
  ( (IArray!8002 (innerList!4058 List!12182)) )
  ( (BalanceConc!7907 (c!202330 Conc!3998)) )
))
(declare-datatypes ((List!12183 0))(
  ( (Nil!12147) (Cons!12147 (h!17548 T!22426) (t!112587 List!12183)) )
))
(declare-datatypes ((Vector!72 0))(
  ( (Vector!73 (underlying!2780 Object!2200) (overflowing!93 List!12183)) )
))
(declare-fun other!28 () Vector!72)

(declare-fun apply!2614 (Vector!72 Int) T!22426)

(assert (=> b!1208381 (= lt!413114 (apply!2614 other!28 from!777))))

(declare-fun lt!413116 () T!22426)

(assert (=> b!1208381 (= lt!413113 lt!413116)))

(declare-fun thiss!9565 () Vector!72)

(assert (=> b!1208381 (= lt!413113 (apply!2614 thiss!9565 from!777))))

(declare-fun lt!413115 () List!12183)

(declare-fun lt!413109 () List!12183)

(declare-fun tail!1750 (List!12183) List!12183)

(declare-fun drop!630 (List!12183 Int) List!12183)

(assert (=> b!1208381 (= (tail!1750 lt!413115) (drop!630 lt!413109 (+ 1 from!777)))))

(declare-datatypes ((Unit!18536 0))(
  ( (Unit!18537) )
))
(declare-fun lt!413108 () Unit!18536)

(declare-fun lemmaDropTail!381 (List!12183 Int) Unit!18536)

(assert (=> b!1208381 (= lt!413108 (lemmaDropTail!381 lt!413109 from!777))))

(declare-fun lt!413121 () List!12183)

(declare-fun lt!413111 () List!12183)

(assert (=> b!1208381 (= (tail!1750 lt!413121) (drop!630 lt!413111 (+ 1 from!777)))))

(declare-fun lt!413119 () Unit!18536)

(assert (=> b!1208381 (= lt!413119 (lemmaDropTail!381 lt!413111 from!777))))

(declare-fun head!2128 (List!12183) T!22426)

(assert (=> b!1208381 (= (head!2128 lt!413115) lt!413110)))

(declare-fun apply!2615 (List!12183 Int) T!22426)

(assert (=> b!1208381 (= lt!413110 (apply!2615 lt!413109 from!777))))

(assert (=> b!1208381 (= lt!413115 (drop!630 lt!413109 from!777))))

(declare-fun lt!413120 () Unit!18536)

(declare-fun lemmaDropApply!397 (List!12183 Int) Unit!18536)

(assert (=> b!1208381 (= lt!413120 (lemmaDropApply!397 lt!413109 from!777))))

(assert (=> b!1208381 (= (head!2128 lt!413121) lt!413116)))

(assert (=> b!1208381 (= lt!413116 (apply!2615 lt!413111 from!777))))

(assert (=> b!1208381 (= lt!413121 (drop!630 lt!413111 from!777))))

(declare-fun lt!413117 () Unit!18536)

(assert (=> b!1208381 (= lt!413117 (lemmaDropApply!397 lt!413111 from!777))))

(declare-fun b!1208382 () Bool)

(declare-fun e!775106 () Bool)

(assert (=> b!1208382 (= e!775106 e!775104)))

(declare-fun res!543481 () Bool)

(assert (=> b!1208382 (=> res!543481 e!775104)))

(declare-fun lt!413112 () Int)

(assert (=> b!1208382 (= res!543481 (or (not (= lt!413118 lt!413112)) (= from!777 lt!413118)))))

(declare-fun size!9686 (List!12183) Int)

(assert (=> b!1208382 (= lt!413112 (size!9686 lt!413109))))

(declare-fun list!4516 (Vector!72) List!12183)

(assert (=> b!1208382 (= lt!413109 (list!4516 other!28))))

(declare-fun size!9687 (Vector!72) Int)

(assert (=> b!1208382 (= lt!413112 (size!9687 other!28))))

(declare-fun b!1208383 () Bool)

(assert (=> b!1208383 (= e!775105 (not e!775106))))

(declare-fun res!543483 () Bool)

(assert (=> b!1208383 (=> res!543483 e!775106)))

(assert (=> b!1208383 (= res!543483 (> from!777 lt!413118))))

(assert (=> b!1208383 (= lt!413118 (size!9686 lt!413111))))

(assert (=> b!1208383 (= lt!413111 (list!4516 thiss!9565))))

(assert (=> b!1208383 (= lt!413118 (size!9687 thiss!9565))))

(declare-fun b!1208384 () Bool)

(declare-fun tp!342275 () Bool)

(declare-fun tp!342274 () Bool)

(assert (=> b!1208384 (= e!775107 (and tp!342275 tp!342274))))

(declare-fun b!1208385 () Bool)

(declare-fun tp!342276 () Bool)

(declare-fun tp!342277 () Bool)

(assert (=> b!1208385 (= e!775103 (and tp!342276 tp!342277))))

(assert (= (and start!107592 res!543482) b!1208383))

(assert (= (and b!1208383 (not res!543483)) b!1208382))

(assert (= (and b!1208382 (not res!543481)) b!1208381))

(assert (= start!107592 b!1208384))

(assert (= start!107592 b!1208385))

(declare-fun m!1383899 () Bool)

(assert (=> b!1208381 m!1383899))

(declare-fun m!1383901 () Bool)

(assert (=> b!1208381 m!1383901))

(declare-fun m!1383903 () Bool)

(assert (=> b!1208381 m!1383903))

(declare-fun m!1383905 () Bool)

(assert (=> b!1208381 m!1383905))

(declare-fun m!1383907 () Bool)

(assert (=> b!1208381 m!1383907))

(declare-fun m!1383909 () Bool)

(assert (=> b!1208381 m!1383909))

(declare-fun m!1383911 () Bool)

(assert (=> b!1208381 m!1383911))

(declare-fun m!1383913 () Bool)

(assert (=> b!1208381 m!1383913))

(declare-fun m!1383915 () Bool)

(assert (=> b!1208381 m!1383915))

(declare-fun m!1383917 () Bool)

(assert (=> b!1208381 m!1383917))

(declare-fun m!1383919 () Bool)

(assert (=> b!1208381 m!1383919))

(declare-fun m!1383921 () Bool)

(assert (=> b!1208381 m!1383921))

(declare-fun m!1383923 () Bool)

(assert (=> b!1208381 m!1383923))

(declare-fun m!1383925 () Bool)

(assert (=> b!1208381 m!1383925))

(declare-fun m!1383927 () Bool)

(assert (=> b!1208381 m!1383927))

(declare-fun m!1383929 () Bool)

(assert (=> b!1208381 m!1383929))

(declare-fun m!1383931 () Bool)

(assert (=> b!1208382 m!1383931))

(declare-fun m!1383933 () Bool)

(assert (=> b!1208382 m!1383933))

(declare-fun m!1383935 () Bool)

(assert (=> b!1208382 m!1383935))

(declare-fun m!1383937 () Bool)

(assert (=> b!1208383 m!1383937))

(declare-fun m!1383939 () Bool)

(assert (=> b!1208383 m!1383939))

(declare-fun m!1383941 () Bool)

(assert (=> b!1208383 m!1383941))

(check-sat (not b!1208382) (not b!1208383) (not b!1208381) (not b!1208384) (not b!1208385))
(check-sat)
