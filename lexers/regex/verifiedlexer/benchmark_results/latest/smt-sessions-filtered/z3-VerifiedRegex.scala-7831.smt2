; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411136 () Bool)

(assert start!411136)

(declare-fun b!4280290 () Bool)

(declare-fun e!2657229 () Bool)

(declare-fun i!561 () Int)

(declare-fun lt!1514818 () Int)

(assert (=> b!4280290 (= e!2657229 (not (and (<= 0 (- i!561 1)) (< (- i!561 1) lt!1514818))))))

(declare-datatypes ((T!80088 0))(
  ( (T!80089 (val!15286 Int)) )
))
(declare-datatypes ((List!47495 0))(
  ( (Nil!47371) (Cons!47371 (h!52791 T!80088) (t!354080 List!47495)) )
))
(declare-fun lt!1514820 () List!47495)

(declare-fun lt!1514819 () List!47495)

(declare-fun tail!6870 (List!47495) List!47495)

(declare-fun drop!2153 (List!47495 Int) List!47495)

(assert (=> b!4280290 (= (tail!6870 lt!1514820) (drop!2153 lt!1514819 (+ 1 (- i!561 1))))))

(declare-datatypes ((Unit!66329 0))(
  ( (Unit!66330) )
))
(declare-fun lt!1514821 () Unit!66329)

(declare-fun lemmaDropTail!1133 (List!47495 Int) Unit!66329)

(assert (=> b!4280290 (= lt!1514821 (lemmaDropTail!1133 lt!1514819 (- i!561 1)))))

(declare-fun head!9007 (List!47495) T!80088)

(declare-fun apply!10805 (List!47495 Int) T!80088)

(assert (=> b!4280290 (= (head!9007 lt!1514820) (apply!10805 lt!1514819 (- i!561 1)))))

(assert (=> b!4280290 (= lt!1514820 (drop!2153 lt!1514819 (- i!561 1)))))

(declare-fun lt!1514817 () Unit!66329)

(declare-fun lemmaDropApply!1251 (List!47495 Int) Unit!66329)

(assert (=> b!4280290 (= lt!1514817 (lemmaDropApply!1251 lt!1514819 (- i!561 1)))))

(declare-fun b!4280291 () Bool)

(declare-fun e!2657230 () Bool)

(declare-fun tp!1309288 () Bool)

(assert (=> b!4280291 (= e!2657230 tp!1309288)))

(declare-fun b!4280292 () Bool)

(declare-fun e!2657231 () Bool)

(assert (=> b!4280292 (= e!2657231 e!2657229)))

(declare-fun res!1756967 () Bool)

(assert (=> b!4280292 (=> (not res!1756967) (not e!2657229))))

(declare-fun acc!244 () List!47495)

(assert (=> b!4280292 (= res!1756967 (= acc!244 (drop!2153 lt!1514819 i!561)))))

(declare-datatypes ((IArray!28711 0))(
  ( (IArray!28712 (innerList!14413 List!47495)) )
))
(declare-fun arr!11 () IArray!28711)

(declare-fun list!17293 (IArray!28711) List!47495)

(assert (=> b!4280292 (= lt!1514819 (list!17293 arr!11))))

(declare-fun res!1756965 () Bool)

(declare-fun e!2657228 () Bool)

(assert (=> start!411136 (=> (not res!1756965) (not e!2657228))))

(assert (=> start!411136 (= res!1756965 (<= 0 i!561))))

(assert (=> start!411136 e!2657228))

(assert (=> start!411136 true))

(declare-fun inv!62765 (IArray!28711) Bool)

(assert (=> start!411136 (and (inv!62765 arr!11) e!2657230)))

(declare-fun e!2657227 () Bool)

(assert (=> start!411136 e!2657227))

(declare-fun b!4280293 () Bool)

(assert (=> b!4280293 (= e!2657228 e!2657231)))

(declare-fun res!1756966 () Bool)

(assert (=> b!4280293 (=> (not res!1756966) (not e!2657231))))

(assert (=> b!4280293 (= res!1756966 (<= i!561 lt!1514818))))

(declare-fun size!34697 (IArray!28711) Int)

(assert (=> b!4280293 (= lt!1514818 (size!34697 arr!11))))

(declare-fun b!4280294 () Bool)

(declare-fun tp_is_empty!22981 () Bool)

(declare-fun tp!1309287 () Bool)

(assert (=> b!4280294 (= e!2657227 (and tp_is_empty!22981 tp!1309287))))

(declare-fun b!4280295 () Bool)

(declare-fun res!1756964 () Bool)

(assert (=> b!4280295 (=> (not res!1756964) (not e!2657229))))

(assert (=> b!4280295 (= res!1756964 (> i!561 0))))

(assert (= (and start!411136 res!1756965) b!4280293))

(assert (= (and b!4280293 res!1756966) b!4280292))

(assert (= (and b!4280292 res!1756967) b!4280295))

(assert (= (and b!4280295 res!1756964) b!4280290))

(assert (= start!411136 b!4280291))

(get-info :version)

(assert (= (and start!411136 ((_ is Cons!47371) acc!244)) b!4280294))

(declare-fun m!4878069 () Bool)

(assert (=> b!4280290 m!4878069))

(declare-fun m!4878071 () Bool)

(assert (=> b!4280290 m!4878071))

(declare-fun m!4878073 () Bool)

(assert (=> b!4280290 m!4878073))

(declare-fun m!4878075 () Bool)

(assert (=> b!4280290 m!4878075))

(declare-fun m!4878077 () Bool)

(assert (=> b!4280290 m!4878077))

(declare-fun m!4878079 () Bool)

(assert (=> b!4280290 m!4878079))

(declare-fun m!4878081 () Bool)

(assert (=> b!4280290 m!4878081))

(declare-fun m!4878083 () Bool)

(assert (=> b!4280292 m!4878083))

(declare-fun m!4878085 () Bool)

(assert (=> b!4280292 m!4878085))

(declare-fun m!4878087 () Bool)

(assert (=> start!411136 m!4878087))

(declare-fun m!4878089 () Bool)

(assert (=> b!4280293 m!4878089))

(check-sat (not start!411136) tp_is_empty!22981 (not b!4280293) (not b!4280294) (not b!4280292) (not b!4280291) (not b!4280290))
(check-sat)
