; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!229530 () Bool)

(assert start!229530)

(declare-fun b!2325736 () Bool)

(declare-fun e!1490201 () Bool)

(assert (=> b!2325736 (= e!1490201 (not true))))

(declare-datatypes ((T!43992 0))(
  ( (T!43993 (val!7992 Int)) )
))
(declare-datatypes ((List!27778 0))(
  ( (Nil!27680) (Cons!27680 (h!33081 T!43992) (t!207480 List!27778)) )
))
(declare-fun l!2797 () List!27778)

(declare-fun lt!861485 () Int)

(declare-fun take!489 (List!27778 Int) List!27778)

(assert (=> b!2325736 (= (take!489 l!2797 lt!861485) l!2797)))

(declare-datatypes ((Unit!40530 0))(
  ( (Unit!40531) )
))
(declare-fun lt!861484 () Unit!40530)

(declare-fun takeFullLemma!2 (List!27778) Unit!40530)

(assert (=> b!2325736 (= lt!861484 (takeFullLemma!2 l!2797))))

(declare-fun b!2325737 () Bool)

(declare-fun e!1490199 () Bool)

(declare-fun tp_is_empty!10849 () Bool)

(declare-fun tp!737105 () Bool)

(assert (=> b!2325737 (= e!1490199 (and tp_is_empty!10849 tp!737105))))

(declare-fun b!2325734 () Bool)

(declare-fun e!1490200 () Bool)

(assert (=> b!2325734 (= e!1490200 e!1490201)))

(declare-fun res!993365 () Bool)

(assert (=> b!2325734 (=> (not res!993365) (not e!1490201))))

(declare-fun i!741 () Int)

(get-info :version)

(assert (=> b!2325734 (= res!993365 (and (<= i!741 lt!861485) (not ((_ is Nil!27680) l!2797)) (= i!741 0)))))

(declare-fun size!21956 (List!27778) Int)

(assert (=> b!2325734 (= lt!861485 (size!21956 l!2797))))

(declare-fun res!993364 () Bool)

(assert (=> start!229530 (=> (not res!993364) (not e!1490200))))

(assert (=> start!229530 (= res!993364 (<= 0 i!741))))

(assert (=> start!229530 e!1490200))

(assert (=> start!229530 true))

(assert (=> start!229530 e!1490199))

(declare-fun b!2325735 () Bool)

(declare-fun res!993366 () Bool)

(assert (=> b!2325735 (=> (not res!993366) (not e!1490201))))

(declare-fun isEmpty!15808 (List!27778) Bool)

(declare-fun slice!717 (List!27778 Int Int) List!27778)

(assert (=> b!2325735 (= res!993366 (isEmpty!15808 (slice!717 l!2797 0 i!741)))))

(assert (= (and start!229530 res!993364) b!2325734))

(assert (= (and b!2325734 res!993365) b!2325735))

(assert (= (and b!2325735 res!993366) b!2325736))

(assert (= (and start!229530 ((_ is Cons!27680) l!2797)) b!2325737))

(declare-fun m!2756961 () Bool)

(assert (=> b!2325736 m!2756961))

(declare-fun m!2756963 () Bool)

(assert (=> b!2325736 m!2756963))

(declare-fun m!2756965 () Bool)

(assert (=> b!2325734 m!2756965))

(declare-fun m!2756967 () Bool)

(assert (=> b!2325735 m!2756967))

(assert (=> b!2325735 m!2756967))

(declare-fun m!2756969 () Bool)

(assert (=> b!2325735 m!2756969))

(check-sat (not b!2325735) tp_is_empty!10849 (not b!2325734) (not b!2325736) (not b!2325737))
(check-sat)
