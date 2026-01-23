; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!229564 () Bool)

(assert start!229564)

(declare-fun res!993459 () Bool)

(declare-fun e!1490280 () Bool)

(assert (=> start!229564 (=> (not res!993459) (not e!1490280))))

(declare-fun i!741 () Int)

(assert (=> start!229564 (= res!993459 (<= 0 i!741))))

(assert (=> start!229564 e!1490280))

(assert (=> start!229564 true))

(declare-fun e!1490281 () Bool)

(assert (=> start!229564 e!1490281))

(declare-fun b!2325893 () Bool)

(declare-fun res!993457 () Bool)

(assert (=> b!2325893 (=> (not res!993457) (not e!1490280))))

(declare-datatypes ((T!44060 0))(
  ( (T!44061 (val!8001 Int)) )
))
(declare-datatypes ((List!27787 0))(
  ( (Nil!27689) (Cons!27689 (h!33090 T!44060) (t!207489 List!27787)) )
))
(declare-fun l!2797 () List!27787)

(assert (=> b!2325893 (= res!993457 (and (not (is-Nil!27689 l!2797)) (not (= i!741 0)) (<= i!741 0)))))

(declare-fun b!2325894 () Bool)

(assert (=> b!2325894 (= e!1490280 false)))

(declare-fun lt!861562 () List!27787)

(declare-fun slice!724 (List!27787 Int Int) List!27787)

(assert (=> b!2325894 (= lt!861562 (slice!724 l!2797 0 i!741))))

(declare-fun b!2325892 () Bool)

(declare-fun res!993458 () Bool)

(assert (=> b!2325892 (=> (not res!993458) (not e!1490280))))

(declare-fun size!21965 (List!27787) Int)

(assert (=> b!2325892 (= res!993458 (<= i!741 (size!21965 l!2797)))))

(declare-fun b!2325895 () Bool)

(declare-fun tp_is_empty!10867 () Bool)

(declare-fun tp!737138 () Bool)

(assert (=> b!2325895 (= e!1490281 (and tp_is_empty!10867 tp!737138))))

(assert (= (and start!229564 res!993459) b!2325892))

(assert (= (and b!2325892 res!993458) b!2325893))

(assert (= (and b!2325893 res!993457) b!2325894))

(assert (= (and start!229564 (is-Cons!27689 l!2797)) b!2325895))

(declare-fun m!2757119 () Bool)

(assert (=> b!2325894 m!2757119))

(declare-fun m!2757121 () Bool)

(assert (=> b!2325892 m!2757121))

(push 1)

(assert (not b!2325894))

(assert (not b!2325892))

(assert (not b!2325895))

(assert tp_is_empty!10867)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

