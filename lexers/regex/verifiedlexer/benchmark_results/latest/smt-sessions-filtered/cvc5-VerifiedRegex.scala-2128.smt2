; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!107234 () Bool)

(assert start!107234)

(declare-fun res!542259 () Bool)

(declare-fun e!772373 () Bool)

(assert (=> start!107234 (=> (not res!542259) (not e!772373))))

(declare-fun from!613 () Int)

(declare-fun until!61 () Int)

(assert (=> start!107234 (= res!542259 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107234 e!772373))

(assert (=> start!107234 true))

(declare-fun e!772371 () Bool)

(assert (=> start!107234 e!772371))

(declare-fun e!772372 () Bool)

(assert (=> start!107234 e!772372))

(declare-fun b!1203868 () Bool)

(declare-fun tp_is_empty!6041 () Bool)

(declare-fun tp!341722 () Bool)

(assert (=> b!1203868 (= e!772372 (and tp_is_empty!6041 tp!341722))))

(declare-fun b!1203867 () Bool)

(declare-fun tp!341723 () Bool)

(assert (=> b!1203867 (= e!772371 (and tp_is_empty!6041 tp!341723))))

(declare-fun b!1203865 () Bool)

(declare-fun res!542260 () Bool)

(assert (=> b!1203865 (=> (not res!542260) (not e!772373))))

(declare-datatypes ((T!22004 0))(
  ( (T!22005 (val!3919 Int)) )
))
(declare-datatypes ((List!12098 0))(
  ( (Nil!12074) (Cons!12074 (h!17475 T!22004) (t!112514 List!12098)) )
))
(declare-fun r!2028 () List!12098)

(declare-fun l!2744 () List!12098)

(declare-fun size!9614 (List!12098) Int)

(assert (=> b!1203865 (= res!542260 (<= until!61 (+ (size!9614 l!2744) (size!9614 r!2028))))))

(declare-fun b!1203866 () Bool)

(assert (=> b!1203866 (= e!772373 false)))

(assert (= (and start!107234 res!542259) b!1203865))

(assert (= (and b!1203865 res!542260) b!1203866))

(assert (= (and start!107234 (is-Cons!12074 l!2744)) b!1203867))

(assert (= (and start!107234 (is-Cons!12074 r!2028)) b!1203868))

(declare-fun m!1379421 () Bool)

(assert (=> b!1203865 m!1379421))

(declare-fun m!1379423 () Bool)

(assert (=> b!1203865 m!1379423))

(push 1)

(assert (not b!1203865))

(assert (not b!1203867))

(assert (not b!1203868))

(assert tp_is_empty!6041)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

