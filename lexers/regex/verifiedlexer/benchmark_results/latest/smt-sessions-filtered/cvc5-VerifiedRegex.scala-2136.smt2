; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!107286 () Bool)

(assert start!107286)

(declare-fun res!542512 () Bool)

(declare-fun e!772742 () Bool)

(assert (=> start!107286 (=> (not res!542512) (not e!772742))))

(declare-fun from!613 () Int)

(declare-fun until!61 () Int)

(assert (=> start!107286 (= res!542512 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107286 e!772742))

(assert (=> start!107286 true))

(declare-fun e!772743 () Bool)

(assert (=> start!107286 e!772743))

(declare-fun e!772741 () Bool)

(assert (=> start!107286 e!772741))

(declare-fun b!1204425 () Bool)

(declare-fun res!542513 () Bool)

(assert (=> b!1204425 (=> (not res!542513) (not e!772742))))

(declare-datatypes ((T!22116 0))(
  ( (T!22117 (val!3935 Int)) )
))
(declare-datatypes ((List!12114 0))(
  ( (Nil!12090) (Cons!12090 (h!17491 T!22116) (t!112530 List!12114)) )
))
(declare-fun l!2744 () List!12114)

(declare-fun r!2028 () List!12114)

(declare-fun tail!1717 (List!12114) List!12114)

(declare-fun ++!3114 (List!12114 List!12114) List!12114)

(assert (=> b!1204425 (= res!542513 (= (tail!1717 (++!3114 l!2744 r!2028)) (++!3114 (tail!1717 l!2744) r!2028)))))

(declare-fun b!1204426 () Bool)

(assert (=> b!1204426 (= e!772742 false)))

(declare-fun b!1204427 () Bool)

(declare-fun tp_is_empty!6073 () Bool)

(declare-fun tp!341827 () Bool)

(assert (=> b!1204427 (= e!772743 (and tp_is_empty!6073 tp!341827))))

(declare-fun b!1204428 () Bool)

(declare-fun res!542511 () Bool)

(assert (=> b!1204428 (=> (not res!542511) (not e!772742))))

(assert (=> b!1204428 (= res!542511 (and (not (= l!2744 Nil!12090)) (not (= r!2028 Nil!12090)) (not (= until!61 0))))))

(declare-fun b!1204429 () Bool)

(declare-fun tp!341826 () Bool)

(assert (=> b!1204429 (= e!772741 (and tp_is_empty!6073 tp!341826))))

(declare-fun b!1204430 () Bool)

(declare-fun res!542514 () Bool)

(assert (=> b!1204430 (=> (not res!542514) (not e!772742))))

(declare-fun size!9630 (List!12114) Int)

(assert (=> b!1204430 (= res!542514 (<= until!61 (+ (size!9630 l!2744) (size!9630 r!2028))))))

(assert (= (and start!107286 res!542512) b!1204430))

(assert (= (and b!1204430 res!542514) b!1204428))

(assert (= (and b!1204428 res!542511) b!1204425))

(assert (= (and b!1204425 res!542513) b!1204426))

(assert (= (and start!107286 (is-Cons!12090 l!2744)) b!1204427))

(assert (= (and start!107286 (is-Cons!12090 r!2028)) b!1204429))

(declare-fun m!1379853 () Bool)

(assert (=> b!1204425 m!1379853))

(assert (=> b!1204425 m!1379853))

(declare-fun m!1379855 () Bool)

(assert (=> b!1204425 m!1379855))

(declare-fun m!1379857 () Bool)

(assert (=> b!1204425 m!1379857))

(assert (=> b!1204425 m!1379857))

(declare-fun m!1379859 () Bool)

(assert (=> b!1204425 m!1379859))

(declare-fun m!1379861 () Bool)

(assert (=> b!1204430 m!1379861))

(declare-fun m!1379863 () Bool)

(assert (=> b!1204430 m!1379863))

(push 1)

(assert (not b!1204427))

(assert (not b!1204429))

(assert (not b!1204425))

(assert tp_is_empty!6073)

(assert (not b!1204430))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

