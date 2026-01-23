; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!229520 () Bool)

(assert start!229520)

(declare-fun res!993327 () Bool)

(declare-fun e!1490164 () Bool)

(assert (=> start!229520 (=> (not res!993327) (not e!1490164))))

(declare-fun i!741 () Int)

(assert (=> start!229520 (= res!993327 (<= 0 i!741))))

(assert (=> start!229520 e!1490164))

(assert (=> start!229520 true))

(declare-fun e!1490165 () Bool)

(assert (=> start!229520 e!1490165))

(declare-fun b!2325682 () Bool)

(assert (=> b!2325682 (= e!1490164 false)))

(declare-fun lt!861464 () Int)

(declare-datatypes ((T!43962 0))(
  ( (T!43963 (val!7987 Int)) )
))
(declare-datatypes ((List!27773 0))(
  ( (Nil!27675) (Cons!27675 (h!33076 T!43962) (t!207475 List!27773)) )
))
(declare-fun l!2797 () List!27773)

(declare-fun size!21951 (List!27773) Int)

(assert (=> b!2325682 (= lt!861464 (size!21951 l!2797))))

(declare-fun b!2325683 () Bool)

(declare-fun tp_is_empty!10839 () Bool)

(declare-fun tp!737090 () Bool)

(assert (=> b!2325683 (= e!1490165 (and tp_is_empty!10839 tp!737090))))

(assert (= (and start!229520 res!993327) b!2325682))

(assert (= (and start!229520 (is-Cons!27675 l!2797)) b!2325683))

(declare-fun m!2756939 () Bool)

(assert (=> b!2325682 m!2756939))

(push 1)

(assert (not b!2325682))

(assert (not b!2325683))

(assert tp_is_empty!10839)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

