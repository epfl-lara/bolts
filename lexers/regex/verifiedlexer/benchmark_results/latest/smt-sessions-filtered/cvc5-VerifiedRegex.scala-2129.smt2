; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!107238 () Bool)

(assert start!107238)

(declare-fun b!1203893 () Bool)

(declare-fun e!772389 () Bool)

(assert (=> b!1203893 (= e!772389 false)))

(declare-fun b!1203894 () Bool)

(declare-fun res!542276 () Bool)

(assert (=> b!1203894 (=> (not res!542276) (not e!772389))))

(declare-datatypes ((T!22018 0))(
  ( (T!22019 (val!3921 Int)) )
))
(declare-datatypes ((List!12100 0))(
  ( (Nil!12076) (Cons!12076 (h!17477 T!22018) (t!112516 List!12100)) )
))
(declare-fun l!2744 () List!12100)

(declare-fun r!2028 () List!12100)

(declare-fun tail!1703 (List!12100) List!12100)

(declare-fun ++!3100 (List!12100 List!12100) List!12100)

(assert (=> b!1203894 (= res!542276 (= (tail!1703 (++!3100 l!2744 r!2028)) (++!3100 (tail!1703 l!2744) r!2028)))))

(declare-fun b!1203895 () Bool)

(declare-fun res!542277 () Bool)

(assert (=> b!1203895 (=> (not res!542277) (not e!772389))))

(declare-fun until!61 () Int)

(assert (=> b!1203895 (= res!542277 (and (not (= l!2744 Nil!12076)) (not (= r!2028 Nil!12076)) (not (= until!61 0))))))

(declare-fun res!542275 () Bool)

(assert (=> start!107238 (=> (not res!542275) (not e!772389))))

(declare-fun from!613 () Int)

(assert (=> start!107238 (= res!542275 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107238 e!772389))

(assert (=> start!107238 true))

(declare-fun e!772391 () Bool)

(assert (=> start!107238 e!772391))

(declare-fun e!772390 () Bool)

(assert (=> start!107238 e!772390))

(declare-fun b!1203896 () Bool)

(declare-fun tp_is_empty!6045 () Bool)

(declare-fun tp!341734 () Bool)

(assert (=> b!1203896 (= e!772391 (and tp_is_empty!6045 tp!341734))))

(declare-fun b!1203897 () Bool)

(declare-fun res!542278 () Bool)

(assert (=> b!1203897 (=> (not res!542278) (not e!772389))))

(declare-fun size!9616 (List!12100) Int)

(assert (=> b!1203897 (= res!542278 (<= until!61 (+ (size!9616 l!2744) (size!9616 r!2028))))))

(declare-fun b!1203898 () Bool)

(declare-fun tp!341735 () Bool)

(assert (=> b!1203898 (= e!772390 (and tp_is_empty!6045 tp!341735))))

(assert (= (and start!107238 res!542275) b!1203897))

(assert (= (and b!1203897 res!542278) b!1203895))

(assert (= (and b!1203895 res!542277) b!1203894))

(assert (= (and b!1203894 res!542276) b!1203893))

(assert (= (and start!107238 (is-Cons!12076 l!2744)) b!1203896))

(assert (= (and start!107238 (is-Cons!12076 r!2028)) b!1203898))

(declare-fun m!1379429 () Bool)

(assert (=> b!1203894 m!1379429))

(assert (=> b!1203894 m!1379429))

(declare-fun m!1379431 () Bool)

(assert (=> b!1203894 m!1379431))

(declare-fun m!1379433 () Bool)

(assert (=> b!1203894 m!1379433))

(assert (=> b!1203894 m!1379433))

(declare-fun m!1379435 () Bool)

(assert (=> b!1203894 m!1379435))

(declare-fun m!1379437 () Bool)

(assert (=> b!1203897 m!1379437))

(declare-fun m!1379439 () Bool)

(assert (=> b!1203897 m!1379439))

(push 1)

(assert tp_is_empty!6045)

(assert (not b!1203898))

(assert (not b!1203897))

(assert (not b!1203896))

(assert (not b!1203894))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

