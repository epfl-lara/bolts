; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!229764 () Bool)

(assert start!229764)

(declare-fun res!993807 () Bool)

(declare-fun e!1491177 () Bool)

(assert (=> start!229764 (=> (not res!993807) (not e!1491177))))

(declare-fun i!741 () Int)

(assert (=> start!229764 (= res!993807 (<= 0 i!741))))

(assert (=> start!229764 e!1491177))

(assert (=> start!229764 true))

(declare-fun e!1491176 () Bool)

(assert (=> start!229764 e!1491176))

(declare-fun b!2327490 () Bool)

(declare-fun res!993808 () Bool)

(assert (=> b!2327490 (=> (not res!993808) (not e!1491177))))

(declare-datatypes ((T!44186 0))(
  ( (T!44187 (val!8019 Int)) )
))
(declare-datatypes ((List!27805 0))(
  ( (Nil!27707) (Cons!27707 (h!33108 T!44186) (t!207507 List!27805)) )
))
(declare-fun l!2797 () List!27805)

(declare-fun size!21983 (List!27805) Int)

(assert (=> b!2327490 (= res!993808 (<= i!741 (size!21983 l!2797)))))

(declare-fun b!2327491 () Bool)

(assert (=> b!2327491 (= e!1491177 (and (not (is-Nil!27707 l!2797)) (not (= i!741 0)) (<= i!741 0)))))

(declare-fun b!2327492 () Bool)

(declare-fun tp_is_empty!10903 () Bool)

(declare-fun tp!737250 () Bool)

(assert (=> b!2327492 (= e!1491176 (and tp_is_empty!10903 tp!737250))))

(assert (= (and start!229764 res!993807) b!2327490))

(assert (= (and b!2327490 res!993808) b!2327491))

(assert (= (and start!229764 (is-Cons!27707 l!2797)) b!2327492))

(declare-fun m!2758463 () Bool)

(assert (=> b!2327490 m!2758463))

(push 1)

(assert (not b!2327490))

(assert (not b!2327492))

(assert tp_is_empty!10903)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

