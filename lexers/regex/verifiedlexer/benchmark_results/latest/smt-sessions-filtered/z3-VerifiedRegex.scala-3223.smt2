; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187364 () Bool)

(assert start!187364)

(declare-fun res!837727 () Bool)

(declare-fun e!1193797 () Bool)

(assert (=> start!187364 (=> (not res!837727) (not e!1193797))))

(declare-fun lt!719378 () Int)

(declare-datatypes ((T!33396 0))(
  ( (T!33397 (val!5982 Int)) )
))
(declare-datatypes ((List!20799 0))(
  ( (Nil!20717) (Cons!20717 (h!26118 T!33396) (t!173016 List!20799)) )
))
(declare-fun l!2791 () List!20799)

(get-info :version)

(assert (=> start!187364 (= res!837727 (and (> lt!719378 0) (not ((_ is Nil!20717) l!2791))))))

(declare-fun size!16450 (List!20799) Int)

(assert (=> start!187364 (= lt!719378 (size!16450 l!2791))))

(assert (=> start!187364 e!1193797))

(declare-fun e!1193799 () Bool)

(assert (=> start!187364 e!1193799))

(declare-fun b!1871222 () Bool)

(declare-fun e!1193798 () Bool)

(assert (=> b!1871222 (= e!1193797 e!1193798)))

(declare-fun res!837725 () Bool)

(assert (=> b!1871222 (=> (not res!837725) (not e!1193798))))

(declare-fun lt!719379 () Int)

(declare-fun slice!597 (List!20799 Int Int) List!20799)

(assert (=> b!1871222 (= res!837725 (= (slice!597 l!2791 1 lt!719378) (slice!597 (t!173016 l!2791) 0 lt!719379)))))

(assert (=> b!1871222 (= lt!719379 (size!16450 (t!173016 l!2791)))))

(declare-fun b!1871223 () Bool)

(assert (=> b!1871223 (= e!1193798 (and (<= lt!719379 0) (= l!2791 Nil!20717)))))

(declare-fun b!1871224 () Bool)

(declare-fun tp_is_empty!8743 () Bool)

(declare-fun tp!532325 () Bool)

(assert (=> b!1871224 (= e!1193799 (and tp_is_empty!8743 tp!532325))))

(declare-fun b!1871221 () Bool)

(declare-fun res!837726 () Bool)

(assert (=> b!1871221 (=> (not res!837726) (not e!1193797))))

(declare-fun tail!2857 (List!20799) List!20799)

(assert (=> b!1871221 (= res!837726 (= (tail!2857 l!2791) (t!173016 l!2791)))))

(assert (= (and start!187364 res!837727) b!1871221))

(assert (= (and b!1871221 res!837726) b!1871222))

(assert (= (and b!1871222 res!837725) b!1871223))

(assert (= (and start!187364 ((_ is Cons!20717) l!2791)) b!1871224))

(declare-fun m!2297281 () Bool)

(assert (=> start!187364 m!2297281))

(declare-fun m!2297283 () Bool)

(assert (=> b!1871222 m!2297283))

(declare-fun m!2297285 () Bool)

(assert (=> b!1871222 m!2297285))

(declare-fun m!2297287 () Bool)

(assert (=> b!1871222 m!2297287))

(declare-fun m!2297289 () Bool)

(assert (=> b!1871221 m!2297289))

(check-sat (not b!1871221) (not b!1871224) tp_is_empty!8743 (not b!1871222) (not start!187364))
(check-sat)
