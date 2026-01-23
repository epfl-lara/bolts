; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411132 () Bool)

(assert start!411132)

(declare-fun b!4280253 () Bool)

(declare-fun res!1756940 () Bool)

(declare-fun e!2657198 () Bool)

(assert (=> b!4280253 (=> (not res!1756940) (not e!2657198))))

(declare-fun i!561 () Int)

(assert (=> b!4280253 (= res!1756940 (> i!561 0))))

(declare-fun res!1756941 () Bool)

(declare-fun e!2657199 () Bool)

(assert (=> start!411132 (=> (not res!1756941) (not e!2657199))))

(assert (=> start!411132 (= res!1756941 (<= 0 i!561))))

(assert (=> start!411132 e!2657199))

(assert (=> start!411132 true))

(declare-datatypes ((T!80074 0))(
  ( (T!80075 (val!15284 Int)) )
))
(declare-datatypes ((List!47493 0))(
  ( (Nil!47369) (Cons!47369 (h!52789 T!80074) (t!354078 List!47493)) )
))
(declare-datatypes ((IArray!28707 0))(
  ( (IArray!28708 (innerList!14411 List!47493)) )
))
(declare-fun arr!11 () IArray!28707)

(declare-fun e!2657201 () Bool)

(declare-fun inv!62760 (IArray!28707) Bool)

(assert (=> start!411132 (and (inv!62760 arr!11) e!2657201)))

(declare-fun e!2657197 () Bool)

(assert (=> start!411132 e!2657197))

(declare-fun b!4280254 () Bool)

(declare-fun tp!1309275 () Bool)

(assert (=> b!4280254 (= e!2657201 tp!1309275)))

(declare-fun b!4280255 () Bool)

(declare-fun res!1756939 () Bool)

(assert (=> b!4280255 (=> (not res!1756939) (not e!2657199))))

(declare-fun size!34694 (IArray!28707) Int)

(assert (=> b!4280255 (= res!1756939 (<= i!561 (size!34694 arr!11)))))

(declare-fun b!4280256 () Bool)

(assert (=> b!4280256 (= e!2657199 e!2657198)))

(declare-fun res!1756943 () Bool)

(assert (=> b!4280256 (=> (not res!1756943) (not e!2657198))))

(declare-fun acc!244 () List!47493)

(declare-fun lt!1514791 () List!47493)

(declare-fun drop!2151 (List!47493 Int) List!47493)

(assert (=> b!4280256 (= res!1756943 (= acc!244 (drop!2151 lt!1514791 i!561)))))

(declare-fun list!17291 (IArray!28707) List!47493)

(assert (=> b!4280256 (= lt!1514791 (list!17291 arr!11))))

(declare-fun b!4280257 () Bool)

(declare-fun tp_is_empty!22977 () Bool)

(declare-fun tp!1309276 () Bool)

(assert (=> b!4280257 (= e!2657197 (and tp_is_empty!22977 tp!1309276))))

(declare-fun b!4280258 () Bool)

(declare-fun e!2657200 () Bool)

(assert (=> b!4280258 (= e!2657198 (not e!2657200))))

(declare-fun res!1756942 () Bool)

(assert (=> b!4280258 (=> res!1756942 e!2657200)))

(assert (=> b!4280258 (= res!1756942 (< (- i!561 1) 0))))

(declare-fun head!9005 (List!47493) T!80074)

(declare-fun apply!10803 (List!47493 Int) T!80074)

(assert (=> b!4280258 (= (head!9005 (drop!2151 lt!1514791 (- i!561 1))) (apply!10803 lt!1514791 (- i!561 1)))))

(declare-datatypes ((Unit!66325 0))(
  ( (Unit!66326) )
))
(declare-fun lt!1514790 () Unit!66325)

(declare-fun lemmaDropApply!1249 (List!47493 Int) Unit!66325)

(assert (=> b!4280258 (= lt!1514790 (lemmaDropApply!1249 lt!1514791 (- i!561 1)))))

(declare-fun b!4280259 () Bool)

(assert (=> b!4280259 (= e!2657200 true)))

(declare-fun lt!1514789 () Int)

(declare-fun size!34695 (List!47493) Int)

(assert (=> b!4280259 (= lt!1514789 (size!34695 lt!1514791))))

(assert (= (and start!411132 res!1756941) b!4280255))

(assert (= (and b!4280255 res!1756939) b!4280256))

(assert (= (and b!4280256 res!1756943) b!4280253))

(assert (= (and b!4280253 res!1756940) b!4280258))

(assert (= (and b!4280258 (not res!1756942)) b!4280259))

(assert (= start!411132 b!4280254))

(get-info :version)

(assert (= (and start!411132 ((_ is Cons!47369) acc!244)) b!4280257))

(declare-fun m!4878029 () Bool)

(assert (=> start!411132 m!4878029))

(declare-fun m!4878031 () Bool)

(assert (=> b!4280256 m!4878031))

(declare-fun m!4878033 () Bool)

(assert (=> b!4280256 m!4878033))

(declare-fun m!4878035 () Bool)

(assert (=> b!4280259 m!4878035))

(declare-fun m!4878037 () Bool)

(assert (=> b!4280258 m!4878037))

(assert (=> b!4280258 m!4878037))

(declare-fun m!4878039 () Bool)

(assert (=> b!4280258 m!4878039))

(declare-fun m!4878041 () Bool)

(assert (=> b!4280258 m!4878041))

(declare-fun m!4878043 () Bool)

(assert (=> b!4280258 m!4878043))

(declare-fun m!4878045 () Bool)

(assert (=> b!4280255 m!4878045))

(check-sat tp_is_empty!22977 (not b!4280257) (not start!411132) (not b!4280259) (not b!4280256) (not b!4280254) (not b!4280255) (not b!4280258))
(check-sat)
