; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107684 () Bool)

(assert start!107684)

(declare-fun b!1209225 () Bool)

(declare-fun e!775705 () Bool)

(declare-fun tp!342647 () Bool)

(declare-fun tp!342646 () Bool)

(assert (=> b!1209225 (= e!775705 (and tp!342647 tp!342646))))

(declare-fun b!1209226 () Bool)

(declare-fun e!775704 () Bool)

(declare-fun tp!342648 () Bool)

(declare-fun tp!342649 () Bool)

(assert (=> b!1209226 (= e!775704 (and tp!342648 tp!342649))))

(declare-fun b!1209227 () Bool)

(declare-fun e!775701 () Bool)

(declare-fun e!775703 () Bool)

(assert (=> b!1209227 (= e!775701 e!775703)))

(declare-fun res!543798 () Bool)

(assert (=> b!1209227 (=> res!543798 e!775703)))

(declare-fun lt!413624 () Int)

(declare-fun lt!413627 () Int)

(declare-fun from!777 () Int)

(assert (=> b!1209227 (= res!543798 (or (not (= lt!413627 lt!413624)) (= from!777 lt!413627)))))

(declare-datatypes ((T!22566 0))(
  ( (T!22567 (val!4000 Int)) )
))
(declare-datatypes ((List!12241 0))(
  ( (Nil!12186) (Cons!12186 (h!17587 T!22566) (t!112628 List!12241)) )
))
(declare-fun lt!413630 () List!12241)

(declare-fun size!9728 (List!12241) Int)

(assert (=> b!1209227 (= lt!413624 (size!9728 lt!413630))))

(declare-datatypes ((IArray!8041 0) (BalanceConc!7966 0) (List!12243 0) (Conc!4018 0) (Object!2220 0))(
  ( (IArray!8042 (innerList!4078 List!12243)) )
  ( (BalanceConc!7967 (c!202490 Conc!4018)) )
  ( (Nil!12187) (Cons!12187 (h!17588 Object!2220) (t!112629 List!12243)) )
  ( (Node!4018 (left!10610 Conc!4018) (right!10940 Conc!4018) (csize!8266 Int) (cheight!4229 Int)) (Leaf!6187 (xs!6729 IArray!8041) (csize!8267 Int)) (Empty!4018) )
  ( (BalanceConc!7965 (value!68266 BalanceConc!7966)) (List!12242 (value!68267 List!12243)) (Character!54 (value!68268 (_ BitVec 16))) (Open!54 (value!68269 Int)) )
))
(declare-datatypes ((Vector!112 0))(
  ( (Vector!113 (underlying!2800 Object!2220) (overflowing!113 List!12241)) )
))
(declare-fun other!28 () Vector!112)

(declare-fun list!4537 (Vector!112) List!12241)

(assert (=> b!1209227 (= lt!413630 (list!4537 other!28))))

(declare-fun size!9729 (Vector!112) Int)

(assert (=> b!1209227 (= lt!413624 (size!9729 other!28))))

(declare-fun res!543799 () Bool)

(declare-fun e!775702 () Bool)

(assert (=> start!107684 (=> (not res!543799) (not e!775702))))

(assert (=> start!107684 (= res!543799 (<= 0 from!777))))

(assert (=> start!107684 e!775702))

(assert (=> start!107684 true))

(assert (=> start!107684 e!775704))

(assert (=> start!107684 e!775705))

(declare-fun lt!413625 () T!22566)

(declare-fun lt!413637 () T!22566)

(declare-fun b!1209228 () Bool)

(assert (=> b!1209228 (= e!775703 (or (not (= lt!413625 lt!413637)) (< (- lt!413627 (+ 1 from!777)) (- lt!413627 from!777))))))

(declare-fun lt!413628 () T!22566)

(assert (=> b!1209228 (= lt!413637 lt!413628)))

(declare-fun apply!2632 (Vector!112 Int) T!22566)

(assert (=> b!1209228 (= lt!413637 (apply!2632 other!28 from!777))))

(declare-fun lt!413629 () T!22566)

(assert (=> b!1209228 (= lt!413625 lt!413629)))

(declare-fun thiss!9565 () Vector!112)

(assert (=> b!1209228 (= lt!413625 (apply!2632 thiss!9565 from!777))))

(declare-fun lt!413633 () List!12241)

(declare-fun tail!1760 (List!12241) List!12241)

(declare-fun drop!646 (List!12241 Int) List!12241)

(assert (=> b!1209228 (= (tail!1760 lt!413633) (drop!646 lt!413630 (+ 1 from!777)))))

(declare-datatypes ((Unit!18564 0))(
  ( (Unit!18565) )
))
(declare-fun lt!413635 () Unit!18564)

(declare-fun lemmaDropTail!391 (List!12241 Int) Unit!18564)

(assert (=> b!1209228 (= lt!413635 (lemmaDropTail!391 lt!413630 from!777))))

(declare-fun lt!413634 () List!12241)

(declare-fun lt!413632 () List!12241)

(assert (=> b!1209228 (= (tail!1760 lt!413634) (drop!646 lt!413632 (+ 1 from!777)))))

(declare-fun lt!413631 () Unit!18564)

(assert (=> b!1209228 (= lt!413631 (lemmaDropTail!391 lt!413632 from!777))))

(declare-fun head!2142 (List!12241) T!22566)

(assert (=> b!1209228 (= (head!2142 lt!413633) lt!413628)))

(declare-fun apply!2633 (List!12241 Int) T!22566)

(assert (=> b!1209228 (= lt!413628 (apply!2633 lt!413630 from!777))))

(assert (=> b!1209228 (= lt!413633 (drop!646 lt!413630 from!777))))

(declare-fun lt!413636 () Unit!18564)

(declare-fun lemmaDropApply!411 (List!12241 Int) Unit!18564)

(assert (=> b!1209228 (= lt!413636 (lemmaDropApply!411 lt!413630 from!777))))

(assert (=> b!1209228 (= (head!2142 lt!413634) lt!413629)))

(assert (=> b!1209228 (= lt!413629 (apply!2633 lt!413632 from!777))))

(assert (=> b!1209228 (= lt!413634 (drop!646 lt!413632 from!777))))

(declare-fun lt!413626 () Unit!18564)

(assert (=> b!1209228 (= lt!413626 (lemmaDropApply!411 lt!413632 from!777))))

(declare-fun b!1209229 () Bool)

(assert (=> b!1209229 (= e!775702 (not e!775701))))

(declare-fun res!543797 () Bool)

(assert (=> b!1209229 (=> res!543797 e!775701)))

(assert (=> b!1209229 (= res!543797 (> from!777 lt!413627))))

(assert (=> b!1209229 (= lt!413627 (size!9728 lt!413632))))

(assert (=> b!1209229 (= lt!413632 (list!4537 thiss!9565))))

(assert (=> b!1209229 (= lt!413627 (size!9729 thiss!9565))))

(assert (= (and start!107684 res!543799) b!1209229))

(assert (= (and b!1209229 (not res!543797)) b!1209227))

(assert (= (and b!1209227 (not res!543798)) b!1209228))

(assert (= start!107684 b!1209226))

(assert (= start!107684 b!1209225))

(declare-fun m!1384983 () Bool)

(assert (=> b!1209227 m!1384983))

(declare-fun m!1384985 () Bool)

(assert (=> b!1209227 m!1384985))

(declare-fun m!1384987 () Bool)

(assert (=> b!1209227 m!1384987))

(declare-fun m!1384989 () Bool)

(assert (=> b!1209228 m!1384989))

(declare-fun m!1384991 () Bool)

(assert (=> b!1209228 m!1384991))

(declare-fun m!1384993 () Bool)

(assert (=> b!1209228 m!1384993))

(declare-fun m!1384995 () Bool)

(assert (=> b!1209228 m!1384995))

(declare-fun m!1384997 () Bool)

(assert (=> b!1209228 m!1384997))

(declare-fun m!1384999 () Bool)

(assert (=> b!1209228 m!1384999))

(declare-fun m!1385001 () Bool)

(assert (=> b!1209228 m!1385001))

(declare-fun m!1385003 () Bool)

(assert (=> b!1209228 m!1385003))

(declare-fun m!1385005 () Bool)

(assert (=> b!1209228 m!1385005))

(declare-fun m!1385007 () Bool)

(assert (=> b!1209228 m!1385007))

(declare-fun m!1385009 () Bool)

(assert (=> b!1209228 m!1385009))

(declare-fun m!1385011 () Bool)

(assert (=> b!1209228 m!1385011))

(declare-fun m!1385013 () Bool)

(assert (=> b!1209228 m!1385013))

(declare-fun m!1385015 () Bool)

(assert (=> b!1209228 m!1385015))

(declare-fun m!1385017 () Bool)

(assert (=> b!1209228 m!1385017))

(declare-fun m!1385019 () Bool)

(assert (=> b!1209228 m!1385019))

(declare-fun m!1385021 () Bool)

(assert (=> b!1209229 m!1385021))

(declare-fun m!1385023 () Bool)

(assert (=> b!1209229 m!1385023))

(declare-fun m!1385025 () Bool)

(assert (=> b!1209229 m!1385025))

(check-sat (not b!1209229) (not b!1209225) (not b!1209228) (not b!1209226) (not b!1209227))
(check-sat)
