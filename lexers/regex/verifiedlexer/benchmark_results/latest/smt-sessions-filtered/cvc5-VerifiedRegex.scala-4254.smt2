; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!229556 () Bool)

(assert start!229556)

(declare-fun res!993421 () Bool)

(declare-fun e!1490256 () Bool)

(assert (=> start!229556 (=> (not res!993421) (not e!1490256))))

(declare-fun i!741 () Int)

(assert (=> start!229556 (= res!993421 (<= 0 i!741))))

(assert (=> start!229556 e!1490256))

(assert (=> start!229556 true))

(declare-fun e!1490257 () Bool)

(assert (=> start!229556 e!1490257))

(declare-fun b!2325846 () Bool)

(assert (=> b!2325846 (= e!1490256 (not true))))

(declare-datatypes ((T!44032 0))(
  ( (T!44033 (val!7997 Int)) )
))
(declare-datatypes ((List!27783 0))(
  ( (Nil!27685) (Cons!27685 (h!33086 T!44032) (t!207485 List!27783)) )
))
(declare-fun l!2797 () List!27783)

(declare-fun ++!6839 (List!27783 List!27783) List!27783)

(declare-fun slice!720 (List!27783 Int Int) List!27783)

(declare-fun size!21961 (List!27783) Int)

(assert (=> b!2325846 (= (++!6839 (slice!720 (t!207485 l!2797) 0 (- i!741 1)) (slice!720 (t!207485 l!2797) (- i!741 1) (size!21961 (t!207485 l!2797)))) (t!207485 l!2797))))

(declare-datatypes ((Unit!40536 0))(
  ( (Unit!40537) )
))
(declare-fun lt!861532 () Unit!40536)

(declare-fun sliceSplit!29 (List!27783 Int) Unit!40536)

(assert (=> b!2325846 (= lt!861532 (sliceSplit!29 (t!207485 l!2797) (- i!741 1)))))

(declare-fun b!2325847 () Bool)

(declare-fun tp_is_empty!10859 () Bool)

(declare-fun tp!737126 () Bool)

(assert (=> b!2325847 (= e!1490257 (and tp_is_empty!10859 tp!737126))))

(declare-fun b!2325844 () Bool)

(declare-fun res!993423 () Bool)

(assert (=> b!2325844 (=> (not res!993423) (not e!1490256))))

(assert (=> b!2325844 (= res!993423 (<= i!741 (size!21961 l!2797)))))

(declare-fun b!2325845 () Bool)

(declare-fun res!993422 () Bool)

(assert (=> b!2325845 (=> (not res!993422) (not e!1490256))))

(assert (=> b!2325845 (= res!993422 (and (not (is-Nil!27685 l!2797)) (not (= i!741 0)) (> i!741 0)))))

(assert (= (and start!229556 res!993421) b!2325844))

(assert (= (and b!2325844 res!993423) b!2325845))

(assert (= (and b!2325845 res!993422) b!2325846))

(assert (= (and start!229556 (is-Cons!27685 l!2797)) b!2325847))

(declare-fun m!2757063 () Bool)

(assert (=> b!2325846 m!2757063))

(declare-fun m!2757065 () Bool)

(assert (=> b!2325846 m!2757065))

(declare-fun m!2757067 () Bool)

(assert (=> b!2325846 m!2757067))

(declare-fun m!2757069 () Bool)

(assert (=> b!2325846 m!2757069))

(declare-fun m!2757071 () Bool)

(assert (=> b!2325846 m!2757071))

(assert (=> b!2325846 m!2757063))

(assert (=> b!2325846 m!2757069))

(assert (=> b!2325846 m!2757067))

(declare-fun m!2757073 () Bool)

(assert (=> b!2325844 m!2757073))

(push 1)

(assert (not b!2325846))

(assert (not b!2325844))

(assert (not b!2325847))

(assert tp_is_empty!10859)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

