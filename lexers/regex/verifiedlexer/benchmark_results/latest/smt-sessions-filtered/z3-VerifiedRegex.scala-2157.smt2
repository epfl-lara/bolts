; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107588 () Bool)

(assert start!107588)

(declare-fun b!1208351 () Bool)

(declare-fun e!775076 () Bool)

(declare-fun e!775075 () Bool)

(assert (=> b!1208351 (= e!775076 e!775075)))

(declare-fun res!543464 () Bool)

(assert (=> b!1208351 (=> res!543464 e!775075)))

(declare-fun lt!413030 () Int)

(declare-fun lt!413035 () Int)

(declare-fun from!777 () Int)

(assert (=> b!1208351 (= res!543464 (or (not (= lt!413035 lt!413030)) (= from!777 lt!413035)))))

(declare-datatypes ((T!22412 0))(
  ( (T!22413 (val!3978 Int)) )
))
(declare-datatypes ((List!12175 0))(
  ( (Nil!12142) (Cons!12142 (h!17543 T!22412) (t!112582 List!12175)) )
))
(declare-fun lt!413036 () List!12175)

(declare-fun size!9682 (List!12175) Int)

(assert (=> b!1208351 (= lt!413030 (size!9682 lt!413036))))

(declare-datatypes ((Conc!3996 0) (Object!2198 0) (List!12177 0) (IArray!7997 0) (BalanceConc!7900 0))(
  ( (Node!3996 (left!10577 Conc!3996) (right!10907 Conc!3996) (csize!8222 Int) (cheight!4207 Int)) (Leaf!6154 (xs!6707 IArray!7997) (csize!8223 Int)) (Empty!3996) )
  ( (BalanceConc!7899 (value!68145 BalanceConc!7900)) (List!12176 (value!68146 List!12177)) (Character!32 (value!68147 (_ BitVec 16))) (Open!32 (value!68148 Int)) )
  ( (Nil!12143) (Cons!12143 (h!17544 Object!2198) (t!112583 List!12177)) )
  ( (IArray!7998 (innerList!4056 List!12177)) )
  ( (BalanceConc!7901 (c!202328 Conc!3996)) )
))
(declare-datatypes ((Vector!68 0))(
  ( (Vector!69 (underlying!2778 Object!2198) (overflowing!91 List!12175)) )
))
(declare-fun other!28 () Vector!68)

(declare-fun list!4514 (Vector!68) List!12175)

(assert (=> b!1208351 (= lt!413036 (list!4514 other!28))))

(declare-fun size!9683 (Vector!68) Int)

(assert (=> b!1208351 (= lt!413030 (size!9683 other!28))))

(declare-fun b!1208352 () Bool)

(declare-fun e!775073 () Bool)

(declare-fun tp!342251 () Bool)

(declare-fun tp!342252 () Bool)

(assert (=> b!1208352 (= e!775073 (and tp!342251 tp!342252))))

(declare-fun b!1208353 () Bool)

(declare-fun e!775077 () Bool)

(declare-fun tp!342250 () Bool)

(declare-fun tp!342253 () Bool)

(assert (=> b!1208353 (= e!775077 (and tp!342250 tp!342253))))

(declare-fun b!1208354 () Bool)

(declare-fun e!775074 () Bool)

(assert (=> b!1208354 (= e!775074 (not e!775076))))

(declare-fun res!543463 () Bool)

(assert (=> b!1208354 (=> res!543463 e!775076)))

(assert (=> b!1208354 (= res!543463 (> from!777 lt!413035))))

(declare-fun lt!413031 () List!12175)

(assert (=> b!1208354 (= lt!413035 (size!9682 lt!413031))))

(declare-fun thiss!9565 () Vector!68)

(assert (=> b!1208354 (= lt!413031 (list!4514 thiss!9565))))

(assert (=> b!1208354 (= lt!413035 (size!9683 thiss!9565))))

(declare-fun res!543465 () Bool)

(assert (=> start!107588 (=> (not res!543465) (not e!775074))))

(assert (=> start!107588 (= res!543465 (<= 0 from!777))))

(assert (=> start!107588 e!775074))

(assert (=> start!107588 true))

(assert (=> start!107588 e!775077))

(assert (=> start!107588 e!775073))

(declare-fun b!1208355 () Bool)

(assert (=> b!1208355 (= e!775075 true)))

(declare-fun lt!413034 () List!12175)

(declare-fun tail!1748 (List!12175) List!12175)

(declare-fun drop!628 (List!12175 Int) List!12175)

(assert (=> b!1208355 (= (tail!1748 lt!413034) (drop!628 lt!413036 (+ 1 from!777)))))

(declare-datatypes ((Unit!18532 0))(
  ( (Unit!18533) )
))
(declare-fun lt!413032 () Unit!18532)

(declare-fun lemmaDropTail!379 (List!12175 Int) Unit!18532)

(assert (=> b!1208355 (= lt!413032 (lemmaDropTail!379 lt!413036 from!777))))

(declare-fun lt!413037 () List!12175)

(assert (=> b!1208355 (= (tail!1748 lt!413037) (drop!628 lt!413031 (+ 1 from!777)))))

(declare-fun lt!413029 () Unit!18532)

(assert (=> b!1208355 (= lt!413029 (lemmaDropTail!379 lt!413031 from!777))))

(declare-fun head!2126 (List!12175) T!22412)

(declare-fun apply!2611 (List!12175 Int) T!22412)

(assert (=> b!1208355 (= (head!2126 lt!413034) (apply!2611 lt!413036 from!777))))

(assert (=> b!1208355 (= lt!413034 (drop!628 lt!413036 from!777))))

(declare-fun lt!413028 () Unit!18532)

(declare-fun lemmaDropApply!395 (List!12175 Int) Unit!18532)

(assert (=> b!1208355 (= lt!413028 (lemmaDropApply!395 lt!413036 from!777))))

(assert (=> b!1208355 (= (head!2126 lt!413037) (apply!2611 lt!413031 from!777))))

(assert (=> b!1208355 (= lt!413037 (drop!628 lt!413031 from!777))))

(declare-fun lt!413033 () Unit!18532)

(assert (=> b!1208355 (= lt!413033 (lemmaDropApply!395 lt!413031 from!777))))

(assert (= (and start!107588 res!543465) b!1208354))

(assert (= (and b!1208354 (not res!543463)) b!1208351))

(assert (= (and b!1208351 (not res!543464)) b!1208355))

(assert (= start!107588 b!1208353))

(assert (= start!107588 b!1208352))

(declare-fun m!1383815 () Bool)

(assert (=> b!1208351 m!1383815))

(declare-fun m!1383817 () Bool)

(assert (=> b!1208351 m!1383817))

(declare-fun m!1383819 () Bool)

(assert (=> b!1208351 m!1383819))

(declare-fun m!1383821 () Bool)

(assert (=> b!1208354 m!1383821))

(declare-fun m!1383823 () Bool)

(assert (=> b!1208354 m!1383823))

(declare-fun m!1383825 () Bool)

(assert (=> b!1208354 m!1383825))

(declare-fun m!1383827 () Bool)

(assert (=> b!1208355 m!1383827))

(declare-fun m!1383829 () Bool)

(assert (=> b!1208355 m!1383829))

(declare-fun m!1383831 () Bool)

(assert (=> b!1208355 m!1383831))

(declare-fun m!1383833 () Bool)

(assert (=> b!1208355 m!1383833))

(declare-fun m!1383835 () Bool)

(assert (=> b!1208355 m!1383835))

(declare-fun m!1383837 () Bool)

(assert (=> b!1208355 m!1383837))

(declare-fun m!1383839 () Bool)

(assert (=> b!1208355 m!1383839))

(declare-fun m!1383841 () Bool)

(assert (=> b!1208355 m!1383841))

(declare-fun m!1383843 () Bool)

(assert (=> b!1208355 m!1383843))

(declare-fun m!1383845 () Bool)

(assert (=> b!1208355 m!1383845))

(declare-fun m!1383847 () Bool)

(assert (=> b!1208355 m!1383847))

(declare-fun m!1383849 () Bool)

(assert (=> b!1208355 m!1383849))

(declare-fun m!1383851 () Bool)

(assert (=> b!1208355 m!1383851))

(declare-fun m!1383853 () Bool)

(assert (=> b!1208355 m!1383853))

(check-sat (not b!1208354) (not b!1208351) (not b!1208355) (not b!1208353) (not b!1208352))
(check-sat)
