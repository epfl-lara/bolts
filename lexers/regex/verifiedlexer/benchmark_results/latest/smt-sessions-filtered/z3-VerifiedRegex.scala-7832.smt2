; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411140 () Bool)

(assert start!411140)

(declare-fun b!4280326 () Bool)

(declare-fun e!2657258 () Bool)

(declare-fun tp!1309300 () Bool)

(assert (=> b!4280326 (= e!2657258 tp!1309300)))

(declare-fun b!4280327 () Bool)

(declare-fun e!2657260 () Bool)

(declare-fun tp_is_empty!22985 () Bool)

(declare-fun tp!1309299 () Bool)

(assert (=> b!4280327 (= e!2657260 (and tp_is_empty!22985 tp!1309299))))

(declare-fun res!1756991 () Bool)

(declare-fun e!2657261 () Bool)

(assert (=> start!411140 (=> (not res!1756991) (not e!2657261))))

(declare-fun i!561 () Int)

(assert (=> start!411140 (= res!1756991 (<= 0 i!561))))

(assert (=> start!411140 e!2657261))

(assert (=> start!411140 true))

(declare-datatypes ((T!80102 0))(
  ( (T!80103 (val!15288 Int)) )
))
(declare-datatypes ((List!47497 0))(
  ( (Nil!47373) (Cons!47373 (h!52793 T!80102) (t!354082 List!47497)) )
))
(declare-datatypes ((IArray!28715 0))(
  ( (IArray!28716 (innerList!14415 List!47497)) )
))
(declare-fun arr!11 () IArray!28715)

(declare-fun inv!62770 (IArray!28715) Bool)

(assert (=> start!411140 (and (inv!62770 arr!11) e!2657258)))

(assert (=> start!411140 e!2657260))

(declare-fun b!4280328 () Bool)

(declare-fun res!1756990 () Bool)

(declare-fun e!2657259 () Bool)

(assert (=> b!4280328 (=> (not res!1756990) (not e!2657259))))

(assert (=> b!4280328 (= res!1756990 (> i!561 0))))

(declare-fun b!4280329 () Bool)

(declare-fun e!2657257 () Bool)

(assert (=> b!4280329 (= e!2657257 e!2657259)))

(declare-fun res!1756988 () Bool)

(assert (=> b!4280329 (=> (not res!1756988) (not e!2657259))))

(declare-fun acc!244 () List!47497)

(declare-fun lt!1514853 () List!47497)

(declare-fun drop!2155 (List!47497 Int) List!47497)

(assert (=> b!4280329 (= res!1756988 (= acc!244 (drop!2155 lt!1514853 i!561)))))

(declare-fun list!17295 (IArray!28715) List!47497)

(assert (=> b!4280329 (= lt!1514853 (list!17295 arr!11))))

(declare-fun b!4280330 () Bool)

(declare-fun lt!1514852 () Int)

(assert (=> b!4280330 (= e!2657259 (not (and (<= 0 (- i!561 1)) (<= (- i!561 1) lt!1514852))))))

(declare-fun lt!1514857 () T!80102)

(declare-fun apply!10808 (IArray!28715 Int) T!80102)

(assert (=> b!4280330 (= lt!1514857 (apply!10808 arr!11 (- i!561 1)))))

(declare-fun lt!1514856 () List!47497)

(declare-fun tail!6872 (List!47497) List!47497)

(assert (=> b!4280330 (= (tail!6872 lt!1514856) (drop!2155 lt!1514853 (+ 1 (- i!561 1))))))

(declare-datatypes ((Unit!66333 0))(
  ( (Unit!66334) )
))
(declare-fun lt!1514854 () Unit!66333)

(declare-fun lemmaDropTail!1135 (List!47497 Int) Unit!66333)

(assert (=> b!4280330 (= lt!1514854 (lemmaDropTail!1135 lt!1514853 (- i!561 1)))))

(declare-fun head!9009 (List!47497) T!80102)

(declare-fun apply!10809 (List!47497 Int) T!80102)

(assert (=> b!4280330 (= (head!9009 lt!1514856) (apply!10809 lt!1514853 (- i!561 1)))))

(assert (=> b!4280330 (= lt!1514856 (drop!2155 lt!1514853 (- i!561 1)))))

(declare-fun lt!1514855 () Unit!66333)

(declare-fun lemmaDropApply!1253 (List!47497 Int) Unit!66333)

(assert (=> b!4280330 (= lt!1514855 (lemmaDropApply!1253 lt!1514853 (- i!561 1)))))

(declare-fun b!4280331 () Bool)

(assert (=> b!4280331 (= e!2657261 e!2657257)))

(declare-fun res!1756989 () Bool)

(assert (=> b!4280331 (=> (not res!1756989) (not e!2657257))))

(assert (=> b!4280331 (= res!1756989 (<= i!561 lt!1514852))))

(declare-fun size!34699 (IArray!28715) Int)

(assert (=> b!4280331 (= lt!1514852 (size!34699 arr!11))))

(assert (= (and start!411140 res!1756991) b!4280331))

(assert (= (and b!4280331 res!1756989) b!4280329))

(assert (= (and b!4280329 res!1756988) b!4280328))

(assert (= (and b!4280328 res!1756990) b!4280330))

(assert (= start!411140 b!4280326))

(get-info :version)

(assert (= (and start!411140 ((_ is Cons!47373) acc!244)) b!4280327))

(declare-fun m!4878115 () Bool)

(assert (=> start!411140 m!4878115))

(declare-fun m!4878117 () Bool)

(assert (=> b!4280329 m!4878117))

(declare-fun m!4878119 () Bool)

(assert (=> b!4280329 m!4878119))

(declare-fun m!4878121 () Bool)

(assert (=> b!4280330 m!4878121))

(declare-fun m!4878123 () Bool)

(assert (=> b!4280330 m!4878123))

(declare-fun m!4878125 () Bool)

(assert (=> b!4280330 m!4878125))

(declare-fun m!4878127 () Bool)

(assert (=> b!4280330 m!4878127))

(declare-fun m!4878129 () Bool)

(assert (=> b!4280330 m!4878129))

(declare-fun m!4878131 () Bool)

(assert (=> b!4280330 m!4878131))

(declare-fun m!4878133 () Bool)

(assert (=> b!4280330 m!4878133))

(declare-fun m!4878135 () Bool)

(assert (=> b!4280330 m!4878135))

(declare-fun m!4878137 () Bool)

(assert (=> b!4280331 m!4878137))

(check-sat (not b!4280330) (not b!4280331) tp_is_empty!22985 (not b!4280329) (not b!4280327) (not b!4280326) (not start!411140))
(check-sat)
