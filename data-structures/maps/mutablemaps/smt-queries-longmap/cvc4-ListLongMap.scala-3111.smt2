; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43772 () Bool)

(assert start!43772)

(declare-fun res!288211 () Bool)

(declare-fun e!284671 () Bool)

(assert (=> start!43772 (=> (not res!288211) (not e!284671))))

(declare-datatypes ((B!1092 0))(
  ( (B!1093 (val!6998 Int)) )
))
(declare-datatypes ((tuple2!9194 0))(
  ( (tuple2!9195 (_1!4607 (_ BitVec 64)) (_2!4607 B!1092)) )
))
(declare-datatypes ((List!9297 0))(
  ( (Nil!9294) (Cons!9293 (h!10149 tuple2!9194) (t!15527 List!9297)) )
))
(declare-fun l!956 () List!9297)

(declare-fun isStrictlySorted!397 (List!9297) Bool)

(assert (=> start!43772 (= res!288211 (isStrictlySorted!397 l!956))))

(assert (=> start!43772 e!284671))

(declare-fun e!284670 () Bool)

(assert (=> start!43772 e!284670))

(assert (=> start!43772 true))

(declare-fun tp_is_empty!13901 () Bool)

(assert (=> start!43772 tp_is_empty!13901))

(declare-fun b!483633 () Bool)

(declare-fun res!288212 () Bool)

(assert (=> b!483633 (=> (not res!288212) (not e!284671))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!363 (List!9297 (_ BitVec 64)) Bool)

(assert (=> b!483633 (= res!288212 (not (containsKey!363 l!956 key!251)))))

(declare-fun b!483634 () Bool)

(assert (=> b!483634 (= e!284671 false)))

(declare-fun value!166 () B!1092)

(declare-fun lt!219248 () List!9297)

(declare-fun insertStrictlySorted!219 (List!9297 (_ BitVec 64) B!1092) List!9297)

(assert (=> b!483634 (= lt!219248 (insertStrictlySorted!219 l!956 key!251 value!166))))

(declare-fun b!483635 () Bool)

(declare-fun tp!43441 () Bool)

(assert (=> b!483635 (= e!284670 (and tp_is_empty!13901 tp!43441))))

(assert (= (and start!43772 res!288211) b!483633))

(assert (= (and b!483633 res!288212) b!483634))

(assert (= (and start!43772 (is-Cons!9293 l!956)) b!483635))

(declare-fun m!464569 () Bool)

(assert (=> start!43772 m!464569))

(declare-fun m!464571 () Bool)

(assert (=> b!483633 m!464571))

(declare-fun m!464573 () Bool)

(assert (=> b!483634 m!464573))

(push 1)

(assert (not start!43772))

(assert (not b!483635))

(assert (not b!483633))

(assert tp_is_empty!13901)

(assert (not b!483634))

(check-sat)

