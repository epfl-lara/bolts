; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216484 () Bool)

(assert start!216484)

(declare-fun res!953214 () Bool)

(declare-fun e!1417500 () Bool)

(assert (=> start!216484 (=> (not res!953214) (not e!1417500))))

(declare-fun from!770 () Int)

(declare-fun to!262 () Int)

(assert (=> start!216484 (= res!953214 (and (<= 0 from!770) (<= from!770 to!262)))))

(assert (=> start!216484 e!1417500))

(assert (=> start!216484 true))

(declare-fun e!1417502 () Bool)

(assert (=> start!216484 e!1417502))

(declare-fun b!2219629 () Bool)

(declare-fun e!1417501 () Bool)

(assert (=> b!2219629 (= e!1417500 (not e!1417501))))

(declare-fun res!953215 () Bool)

(assert (=> b!2219629 (=> res!953215 e!1417501)))

(declare-fun lt!827245 () Int)

(assert (=> b!2219629 (= res!953215 (> to!262 lt!827245))))

(declare-fun lt!827246 () Int)

(assert (=> b!2219629 (= lt!827245 lt!827246)))

(declare-datatypes ((Object!4422 0) (IArray!17015 0) (List!26089 0) (BalanceConc!16730 0) (Conc!8505 0))(
  ( (BalanceConc!16729 (value!132480 BalanceConc!16730)) (List!26088 (value!132481 List!26089)) (Character!84 (value!132482 (_ BitVec 16))) (Open!84 (value!132483 Int)) )
  ( (IArray!17016 (innerList!8565 List!26089)) )
  ( (Nil!26003) (Cons!26003 (h!31404 Object!4422) (t!199493 List!26089)) )
  ( (BalanceConc!16731 (c!354425 Conc!8505)) )
  ( (Node!8505 (left!19999 Conc!8505) (right!20329 Conc!8505) (csize!17240 Int) (cheight!8716 Int)) (Leaf!12472 (xs!11447 IArray!17015) (csize!17241 Int)) (Empty!8505) )
))
(declare-datatypes ((T!40978 0))(
  ( (T!40979 (val!7444 Int)) )
))
(declare-datatypes ((List!26090 0))(
  ( (Nil!26004) (Cons!26004 (h!31405 T!40978) (t!199494 List!26090)) )
))
(declare-datatypes ((Vector!172 0))(
  ( (Vector!173 (underlying!6118 Object!4422) (overflowing!143 List!26090)) )
))
(declare-fun thiss!9390 () Vector!172)

(declare-fun size!20281 (List!26090) Int)

(declare-fun list!10091 (Vector!172) List!26090)

(assert (=> b!2219629 (= lt!827246 (size!20281 (list!10091 thiss!9390)))))

(declare-fun size!20282 (Vector!172) Int)

(assert (=> b!2219629 (= lt!827245 (size!20282 thiss!9390))))

(declare-fun b!2219630 () Bool)

(assert (=> b!2219630 (= e!1417501 (<= to!262 lt!827246))))

(declare-fun lt!827247 () Vector!172)

(declare-fun choose!13081 (Vector!172 Int Int) Vector!172)

(assert (=> b!2219630 (= lt!827247 (choose!13081 thiss!9390 from!770 to!262))))

(declare-fun b!2219631 () Bool)

(declare-fun tp!691341 () Bool)

(declare-fun tp!691342 () Bool)

(assert (=> b!2219631 (= e!1417502 (and tp!691341 tp!691342))))

(assert (= (and start!216484 res!953214) b!2219629))

(assert (= (and b!2219629 (not res!953215)) b!2219630))

(assert (= start!216484 b!2219631))

(declare-fun m!2660557 () Bool)

(assert (=> b!2219629 m!2660557))

(assert (=> b!2219629 m!2660557))

(declare-fun m!2660559 () Bool)

(assert (=> b!2219629 m!2660559))

(declare-fun m!2660561 () Bool)

(assert (=> b!2219629 m!2660561))

(declare-fun m!2660563 () Bool)

(assert (=> b!2219630 m!2660563))

(check-sat (not b!2219629) (not b!2219630) (not b!2219631))
(check-sat)
