; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!229560 () Bool)

(assert start!229560)

(declare-fun b!2325871 () Bool)

(declare-fun e!1490268 () Bool)

(declare-fun tp_is_empty!10863 () Bool)

(declare-fun tp!737132 () Bool)

(assert (=> b!2325871 (= e!1490268 (and tp_is_empty!10863 tp!737132))))

(declare-fun b!2325870 () Bool)

(declare-fun e!1490269 () Bool)

(assert (=> b!2325870 (= e!1490269 (not true))))

(declare-datatypes ((T!44046 0))(
  ( (T!44047 (val!7999 Int)) )
))
(declare-datatypes ((List!27785 0))(
  ( (Nil!27687) (Cons!27687 (h!33088 T!44046) (t!207487 List!27785)) )
))
(declare-fun lt!861545 () List!27785)

(declare-fun l!2797 () List!27785)

(declare-fun i!741 () Int)

(declare-fun slice!722 (List!27785 Int Int) List!27785)

(assert (=> b!2325870 (= lt!861545 (slice!722 l!2797 0 i!741))))

(declare-fun lt!861547 () List!27785)

(declare-fun lt!861544 () List!27785)

(declare-fun ++!6841 (List!27785 List!27785) List!27785)

(assert (=> b!2325870 (= lt!861547 (++!6841 (Cons!27687 (h!33088 l!2797) Nil!27687) lt!861544))))

(declare-fun size!21963 (List!27785) Int)

(assert (=> b!2325870 (= (++!6841 lt!861544 (slice!722 (t!207487 l!2797) (- i!741 1) (size!21963 (t!207487 l!2797)))) (t!207487 l!2797))))

(assert (=> b!2325870 (= lt!861544 (slice!722 (t!207487 l!2797) 0 (- i!741 1)))))

(declare-datatypes ((Unit!40540 0))(
  ( (Unit!40541) )
))
(declare-fun lt!861546 () Unit!40540)

(declare-fun sliceSplit!31 (List!27785 Int) Unit!40540)

(assert (=> b!2325870 (= lt!861546 (sliceSplit!31 (t!207487 l!2797) (- i!741 1)))))

(declare-fun b!2325869 () Bool)

(declare-fun res!993439 () Bool)

(assert (=> b!2325869 (=> (not res!993439) (not e!1490269))))

(assert (=> b!2325869 (= res!993439 (and (not (is-Nil!27687 l!2797)) (not (= i!741 0)) (> i!741 0)))))

(declare-fun res!993440 () Bool)

(assert (=> start!229560 (=> (not res!993440) (not e!1490269))))

(assert (=> start!229560 (= res!993440 (<= 0 i!741))))

(assert (=> start!229560 e!1490269))

(assert (=> start!229560 true))

(assert (=> start!229560 e!1490268))

(declare-fun b!2325868 () Bool)

(declare-fun res!993441 () Bool)

(assert (=> b!2325868 (=> (not res!993441) (not e!1490269))))

(assert (=> b!2325868 (= res!993441 (<= i!741 (size!21963 l!2797)))))

(assert (= (and start!229560 res!993440) b!2325868))

(assert (= (and b!2325868 res!993441) b!2325869))

(assert (= (and b!2325869 res!993439) b!2325870))

(assert (= (and start!229560 (is-Cons!27687 l!2797)) b!2325871))

(declare-fun m!2757087 () Bool)

(assert (=> b!2325870 m!2757087))

(declare-fun m!2757089 () Bool)

(assert (=> b!2325870 m!2757089))

(declare-fun m!2757091 () Bool)

(assert (=> b!2325870 m!2757091))

(declare-fun m!2757093 () Bool)

(assert (=> b!2325870 m!2757093))

(declare-fun m!2757095 () Bool)

(assert (=> b!2325870 m!2757095))

(declare-fun m!2757097 () Bool)

(assert (=> b!2325870 m!2757097))

(assert (=> b!2325870 m!2757087))

(assert (=> b!2325870 m!2757089))

(declare-fun m!2757099 () Bool)

(assert (=> b!2325870 m!2757099))

(declare-fun m!2757101 () Bool)

(assert (=> b!2325868 m!2757101))

(push 1)

(assert (not b!2325868))

(assert (not b!2325870))

(assert (not b!2325871))

(assert tp_is_empty!10863)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

