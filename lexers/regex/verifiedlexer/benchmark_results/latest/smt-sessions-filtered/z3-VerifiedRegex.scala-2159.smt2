; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107596 () Bool)

(assert start!107596)

(declare-fun res!543512 () Bool)

(declare-fun e!775143 () Bool)

(assert (=> start!107596 (=> (not res!543512) (not e!775143))))

(declare-fun from!777 () Int)

(assert (=> start!107596 (= res!543512 (<= 0 from!777))))

(assert (=> start!107596 e!775143))

(assert (=> start!107596 true))

(declare-fun e!775139 () Bool)

(assert (=> start!107596 e!775139))

(declare-fun e!775140 () Bool)

(assert (=> start!107596 e!775140))

(declare-fun b!1208421 () Bool)

(declare-fun e!775142 () Bool)

(assert (=> b!1208421 (= e!775142 true)))

(declare-fun e!775141 () Bool)

(assert (=> b!1208421 e!775141))

(declare-fun res!543509 () Bool)

(assert (=> b!1208421 (=> (not res!543509) (not e!775141))))

(declare-datatypes ((T!22440 0))(
  ( (T!22441 (val!3982 Int)) )
))
(declare-datatypes ((List!12187 0))(
  ( (Nil!12150) (Cons!12150 (h!17551 T!22440) (t!112590 List!12187)) )
))
(declare-fun lt!413188 () List!12187)

(declare-fun lt!413185 () List!12187)

(declare-fun tail!1752 (List!12187) List!12187)

(declare-fun drop!632 (List!12187 Int) List!12187)

(assert (=> b!1208421 (= res!543509 (= (tail!1752 lt!413185) (drop!632 lt!413188 (+ 1 from!777))))))

(declare-datatypes ((Unit!18540 0))(
  ( (Unit!18541) )
))
(declare-fun lt!413182 () Unit!18540)

(declare-fun lemmaDropTail!383 (List!12187 Int) Unit!18540)

(assert (=> b!1208421 (= lt!413182 (lemmaDropTail!383 lt!413188 from!777))))

(declare-fun lt!413192 () List!12187)

(declare-fun lt!413193 () List!12187)

(assert (=> b!1208421 (= (tail!1752 lt!413192) (drop!632 lt!413193 (+ 1 from!777)))))

(declare-fun lt!413187 () Unit!18540)

(assert (=> b!1208421 (= lt!413187 (lemmaDropTail!383 lt!413193 from!777))))

(declare-fun lt!413183 () T!22440)

(declare-fun head!2130 (List!12187) T!22440)

(assert (=> b!1208421 (= (head!2130 lt!413185) lt!413183)))

(declare-fun apply!2618 (List!12187 Int) T!22440)

(assert (=> b!1208421 (= lt!413183 (apply!2618 lt!413188 from!777))))

(assert (=> b!1208421 (= lt!413185 (drop!632 lt!413188 from!777))))

(declare-fun lt!413191 () Unit!18540)

(declare-fun lemmaDropApply!399 (List!12187 Int) Unit!18540)

(assert (=> b!1208421 (= lt!413191 (lemmaDropApply!399 lt!413188 from!777))))

(declare-fun lt!413186 () T!22440)

(assert (=> b!1208421 (= (head!2130 lt!413192) lt!413186)))

(assert (=> b!1208421 (= lt!413186 (apply!2618 lt!413193 from!777))))

(assert (=> b!1208421 (= lt!413192 (drop!632 lt!413193 from!777))))

(declare-fun lt!413189 () Unit!18540)

(assert (=> b!1208421 (= lt!413189 (lemmaDropApply!399 lt!413193 from!777))))

(declare-fun b!1208422 () Bool)

(declare-datatypes ((BalanceConc!7912 0) (Object!2202 0) (List!12189 0) (Conc!4000 0) (IArray!8005 0))(
  ( (BalanceConc!7913 (c!202332 Conc!4000)) )
  ( (BalanceConc!7911 (value!68167 BalanceConc!7912)) (List!12188 (value!68168 List!12189)) (Character!36 (value!68169 (_ BitVec 16))) (Open!36 (value!68170 Int)) )
  ( (Nil!12151) (Cons!12151 (h!17552 Object!2202) (t!112591 List!12189)) )
  ( (Node!4000 (left!10583 Conc!4000) (right!10913 Conc!4000) (csize!8230 Int) (cheight!4211 Int)) (Leaf!6160 (xs!6711 IArray!8005) (csize!8231 Int)) (Empty!4000) )
  ( (IArray!8006 (innerList!4060 List!12189)) )
))
(declare-datatypes ((Vector!76 0))(
  ( (Vector!77 (underlying!2782 Object!2202) (overflowing!95 List!12187)) )
))
(declare-fun other!28 () Vector!76)

(declare-fun apply!2619 (Vector!76 Int) T!22440)

(assert (=> b!1208422 (= e!775141 (= (apply!2619 other!28 from!777) lt!413183))))

(declare-fun b!1208423 () Bool)

(declare-fun e!775138 () Bool)

(assert (=> b!1208423 (= e!775138 e!775142)))

(declare-fun res!543513 () Bool)

(assert (=> b!1208423 (=> res!543513 e!775142)))

(declare-fun lt!413190 () Int)

(declare-fun lt!413184 () Int)

(assert (=> b!1208423 (= res!543513 (or (not (= lt!413184 lt!413190)) (= from!777 lt!413184)))))

(declare-fun size!9690 (List!12187) Int)

(assert (=> b!1208423 (= lt!413190 (size!9690 lt!413188))))

(declare-fun list!4518 (Vector!76) List!12187)

(assert (=> b!1208423 (= lt!413188 (list!4518 other!28))))

(declare-fun size!9691 (Vector!76) Int)

(assert (=> b!1208423 (= lt!413190 (size!9691 other!28))))

(declare-fun b!1208424 () Bool)

(declare-fun tp!342298 () Bool)

(declare-fun tp!342299 () Bool)

(assert (=> b!1208424 (= e!775140 (and tp!342298 tp!342299))))

(declare-fun b!1208425 () Bool)

(declare-fun res!543510 () Bool)

(assert (=> b!1208425 (=> (not res!543510) (not e!775141))))

(declare-fun thiss!9565 () Vector!76)

(assert (=> b!1208425 (= res!543510 (= (apply!2619 thiss!9565 from!777) lt!413186))))

(declare-fun b!1208426 () Bool)

(assert (=> b!1208426 (= e!775143 (not e!775138))))

(declare-fun res!543511 () Bool)

(assert (=> b!1208426 (=> res!543511 e!775138)))

(assert (=> b!1208426 (= res!543511 (> from!777 lt!413184))))

(assert (=> b!1208426 (= lt!413184 (size!9690 lt!413193))))

(assert (=> b!1208426 (= lt!413193 (list!4518 thiss!9565))))

(assert (=> b!1208426 (= lt!413184 (size!9691 thiss!9565))))

(declare-fun b!1208427 () Bool)

(declare-fun tp!342300 () Bool)

(declare-fun tp!342301 () Bool)

(assert (=> b!1208427 (= e!775139 (and tp!342300 tp!342301))))

(assert (= (and start!107596 res!543512) b!1208426))

(assert (= (and b!1208426 (not res!543511)) b!1208423))

(assert (= (and b!1208423 (not res!543513)) b!1208421))

(assert (= (and b!1208421 res!543509) b!1208425))

(assert (= (and b!1208425 res!543510) b!1208422))

(assert (= start!107596 b!1208427))

(assert (= start!107596 b!1208424))

(declare-fun m!1383987 () Bool)

(assert (=> b!1208425 m!1383987))

(declare-fun m!1383989 () Bool)

(assert (=> b!1208423 m!1383989))

(declare-fun m!1383991 () Bool)

(assert (=> b!1208423 m!1383991))

(declare-fun m!1383993 () Bool)

(assert (=> b!1208423 m!1383993))

(declare-fun m!1383995 () Bool)

(assert (=> b!1208422 m!1383995))

(declare-fun m!1383997 () Bool)

(assert (=> b!1208426 m!1383997))

(declare-fun m!1383999 () Bool)

(assert (=> b!1208426 m!1383999))

(declare-fun m!1384001 () Bool)

(assert (=> b!1208426 m!1384001))

(declare-fun m!1384003 () Bool)

(assert (=> b!1208421 m!1384003))

(declare-fun m!1384005 () Bool)

(assert (=> b!1208421 m!1384005))

(declare-fun m!1384007 () Bool)

(assert (=> b!1208421 m!1384007))

(declare-fun m!1384009 () Bool)

(assert (=> b!1208421 m!1384009))

(declare-fun m!1384011 () Bool)

(assert (=> b!1208421 m!1384011))

(declare-fun m!1384013 () Bool)

(assert (=> b!1208421 m!1384013))

(declare-fun m!1384015 () Bool)

(assert (=> b!1208421 m!1384015))

(declare-fun m!1384017 () Bool)

(assert (=> b!1208421 m!1384017))

(declare-fun m!1384019 () Bool)

(assert (=> b!1208421 m!1384019))

(declare-fun m!1384021 () Bool)

(assert (=> b!1208421 m!1384021))

(declare-fun m!1384023 () Bool)

(assert (=> b!1208421 m!1384023))

(declare-fun m!1384025 () Bool)

(assert (=> b!1208421 m!1384025))

(declare-fun m!1384027 () Bool)

(assert (=> b!1208421 m!1384027))

(declare-fun m!1384029 () Bool)

(assert (=> b!1208421 m!1384029))

(check-sat (not b!1208421) (not b!1208426) (not b!1208422) (not b!1208425) (not b!1208423) (not b!1208424) (not b!1208427))
(check-sat)
