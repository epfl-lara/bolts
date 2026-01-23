; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!229770 () Bool)

(assert start!229770)

(declare-fun res!993825 () Bool)

(declare-fun e!1491201 () Bool)

(assert (=> start!229770 (=> (not res!993825) (not e!1491201))))

(declare-fun i!741 () Int)

(assert (=> start!229770 (= res!993825 (<= 0 i!741))))

(assert (=> start!229770 e!1491201))

(assert (=> start!229770 true))

(declare-fun e!1491199 () Bool)

(assert (=> start!229770 e!1491199))

(declare-fun b!2327517 () Bool)

(declare-fun e!1491200 () Bool)

(assert (=> b!2327517 (= e!1491201 e!1491200)))

(declare-fun res!993826 () Bool)

(assert (=> b!2327517 (=> (not res!993826) (not e!1491200))))

(declare-datatypes ((T!44202 0))(
  ( (T!44203 (val!8022 Int)) )
))
(declare-datatypes ((List!27808 0))(
  ( (Nil!27710) (Cons!27710 (h!33111 T!44202) (t!207510 List!27808)) )
))
(declare-fun l!2797 () List!27808)

(declare-fun lt!861917 () Int)

(get-info :version)

(assert (=> b!2327517 (= res!993826 (and (<= i!741 lt!861917) (not ((_ is Nil!27710) l!2797)) (not (= i!741 0)) (<= i!741 0)))))

(declare-fun size!21986 (List!27808) Int)

(assert (=> b!2327517 (= lt!861917 (size!21986 l!2797))))

(declare-fun b!2327518 () Bool)

(declare-fun ++!6852 (List!27808 List!27808) List!27808)

(declare-fun slice!737 (List!27808 Int Int) List!27808)

(assert (=> b!2327518 (= e!1491200 (not (= (++!6852 (slice!737 l!2797 0 i!741) (slice!737 l!2797 i!741 lt!861917)) l!2797)))))

(declare-fun b!2327519 () Bool)

(declare-fun tp_is_empty!10909 () Bool)

(declare-fun tp!737259 () Bool)

(assert (=> b!2327519 (= e!1491199 (and tp_is_empty!10909 tp!737259))))

(assert (= (and start!229770 res!993825) b!2327517))

(assert (= (and b!2327517 res!993826) b!2327518))

(assert (= (and start!229770 ((_ is Cons!27710) l!2797)) b!2327519))

(declare-fun m!2758475 () Bool)

(assert (=> b!2327517 m!2758475))

(declare-fun m!2758477 () Bool)

(assert (=> b!2327518 m!2758477))

(declare-fun m!2758479 () Bool)

(assert (=> b!2327518 m!2758479))

(assert (=> b!2327518 m!2758477))

(assert (=> b!2327518 m!2758479))

(declare-fun m!2758481 () Bool)

(assert (=> b!2327518 m!2758481))

(check-sat (not b!2327518) (not b!2327517) (not b!2327519) tp_is_empty!10909)
(check-sat)
