; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411304 () Bool)

(assert start!411304)

(declare-fun b!4281106 () Bool)

(declare-fun res!1757228 () Bool)

(declare-fun e!2657754 () Bool)

(assert (=> b!4281106 (=> (not res!1757228) (not e!2657754))))

(declare-fun i!561 () Int)

(assert (=> b!4281106 (= res!1757228 (> i!561 0))))

(declare-fun res!1757229 () Bool)

(declare-fun e!2657755 () Bool)

(assert (=> start!411304 (=> (not res!1757229) (not e!2657755))))

(assert (=> start!411304 (= res!1757229 (<= 0 i!561))))

(assert (=> start!411304 e!2657755))

(assert (=> start!411304 true))

(declare-datatypes ((T!80186 0))(
  ( (T!80187 (val!15300 Int)) )
))
(declare-datatypes ((List!47509 0))(
  ( (Nil!47385) (Cons!47385 (h!52805 T!80186) (t!354096 List!47509)) )
))
(declare-datatypes ((IArray!28739 0))(
  ( (IArray!28740 (innerList!14427 List!47509)) )
))
(declare-fun arr!11 () IArray!28739)

(declare-fun e!2657756 () Bool)

(declare-fun inv!62800 (IArray!28739) Bool)

(assert (=> start!411304 (and (inv!62800 arr!11) e!2657756)))

(declare-fun e!2657757 () Bool)

(assert (=> start!411304 e!2657757))

(declare-fun b!4281107 () Bool)

(assert (=> b!4281107 (= e!2657754 (not (< (- i!561 1) i!561)))))

(declare-fun lt!1515079 () T!80186)

(declare-fun apply!10818 (IArray!28739 Int) T!80186)

(assert (=> b!4281107 (= lt!1515079 (apply!10818 arr!11 (- i!561 1)))))

(declare-fun lt!1515082 () List!47509)

(declare-fun lt!1515081 () List!47509)

(declare-fun tail!6878 (List!47509) List!47509)

(declare-fun drop!2167 (List!47509 Int) List!47509)

(assert (=> b!4281107 (= (tail!6878 lt!1515082) (drop!2167 lt!1515081 (+ 1 (- i!561 1))))))

(declare-datatypes ((Unit!66345 0))(
  ( (Unit!66346) )
))
(declare-fun lt!1515083 () Unit!66345)

(declare-fun lemmaDropTail!1139 (List!47509 Int) Unit!66345)

(assert (=> b!4281107 (= lt!1515083 (lemmaDropTail!1139 lt!1515081 (- i!561 1)))))

(declare-fun head!9015 (List!47509) T!80186)

(declare-fun apply!10819 (List!47509 Int) T!80186)

(assert (=> b!4281107 (= (head!9015 lt!1515082) (apply!10819 lt!1515081 (- i!561 1)))))

(assert (=> b!4281107 (= lt!1515082 (drop!2167 lt!1515081 (- i!561 1)))))

(declare-fun lt!1515080 () Unit!66345)

(declare-fun lemmaDropApply!1259 (List!47509 Int) Unit!66345)

(assert (=> b!4281107 (= lt!1515080 (lemmaDropApply!1259 lt!1515081 (- i!561 1)))))

(declare-fun b!4281108 () Bool)

(declare-fun tp!1309407 () Bool)

(assert (=> b!4281108 (= e!2657756 tp!1309407)))

(declare-fun b!4281109 () Bool)

(declare-fun tp_is_empty!23009 () Bool)

(declare-fun tp!1309408 () Bool)

(assert (=> b!4281109 (= e!2657757 (and tp_is_empty!23009 tp!1309408))))

(declare-fun b!4281110 () Bool)

(assert (=> b!4281110 (= e!2657755 e!2657754)))

(declare-fun res!1757231 () Bool)

(assert (=> b!4281110 (=> (not res!1757231) (not e!2657754))))

(declare-fun acc!244 () List!47509)

(assert (=> b!4281110 (= res!1757231 (= acc!244 (drop!2167 lt!1515081 i!561)))))

(declare-fun list!17307 (IArray!28739) List!47509)

(assert (=> b!4281110 (= lt!1515081 (list!17307 arr!11))))

(declare-fun b!4281111 () Bool)

(declare-fun res!1757230 () Bool)

(assert (=> b!4281111 (=> (not res!1757230) (not e!2657755))))

(declare-fun size!34719 (IArray!28739) Int)

(assert (=> b!4281111 (= res!1757230 (<= i!561 (size!34719 arr!11)))))

(assert (= (and start!411304 res!1757229) b!4281111))

(assert (= (and b!4281111 res!1757230) b!4281110))

(assert (= (and b!4281110 res!1757231) b!4281106))

(assert (= (and b!4281106 res!1757228) b!4281107))

(assert (= start!411304 b!4281108))

(get-info :version)

(assert (= (and start!411304 ((_ is Cons!47385) acc!244)) b!4281109))

(declare-fun m!4878679 () Bool)

(assert (=> start!411304 m!4878679))

(declare-fun m!4878681 () Bool)

(assert (=> b!4281107 m!4878681))

(declare-fun m!4878683 () Bool)

(assert (=> b!4281107 m!4878683))

(declare-fun m!4878685 () Bool)

(assert (=> b!4281107 m!4878685))

(declare-fun m!4878687 () Bool)

(assert (=> b!4281107 m!4878687))

(declare-fun m!4878689 () Bool)

(assert (=> b!4281107 m!4878689))

(declare-fun m!4878691 () Bool)

(assert (=> b!4281107 m!4878691))

(declare-fun m!4878693 () Bool)

(assert (=> b!4281107 m!4878693))

(declare-fun m!4878695 () Bool)

(assert (=> b!4281107 m!4878695))

(declare-fun m!4878697 () Bool)

(assert (=> b!4281110 m!4878697))

(declare-fun m!4878699 () Bool)

(assert (=> b!4281110 m!4878699))

(declare-fun m!4878701 () Bool)

(assert (=> b!4281111 m!4878701))

(check-sat (not start!411304) (not b!4281108) (not b!4281111) (not b!4281110) (not b!4281107) tp_is_empty!23009 (not b!4281109))
(check-sat)
