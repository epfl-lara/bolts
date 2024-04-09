; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43784 () Bool)

(assert start!43784)

(declare-fun b!483711 () Bool)

(declare-fun e!284714 () Bool)

(declare-fun tp_is_empty!13913 () Bool)

(declare-fun tp!43459 () Bool)

(assert (=> b!483711 (= e!284714 (and tp_is_empty!13913 tp!43459))))

(declare-fun b!483712 () Bool)

(declare-fun res!288271 () Bool)

(declare-fun e!284715 () Bool)

(assert (=> b!483712 (=> (not res!288271) (not e!284715))))

(declare-datatypes ((B!1104 0))(
  ( (B!1105 (val!7004 Int)) )
))
(declare-datatypes ((tuple2!9206 0))(
  ( (tuple2!9207 (_1!4613 (_ BitVec 64)) (_2!4613 B!1104)) )
))
(declare-datatypes ((List!9303 0))(
  ( (Nil!9300) (Cons!9299 (h!10155 tuple2!9206) (t!15533 List!9303)) )
))
(declare-fun l!956 () List!9303)

(declare-fun isStrictlySorted!403 (List!9303) Bool)

(assert (=> b!483712 (= res!288271 (isStrictlySorted!403 (t!15533 l!956)))))

(declare-fun b!483713 () Bool)

(declare-fun res!288272 () Bool)

(assert (=> b!483713 (=> (not res!288272) (not e!284715))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!369 (List!9303 (_ BitVec 64)) Bool)

(assert (=> b!483713 (= res!288272 (not (containsKey!369 (t!15533 l!956) key!251)))))

(declare-fun b!483714 () Bool)

(declare-fun e!284716 () Bool)

(assert (=> b!483714 (= e!284716 e!284715)))

(declare-fun res!288274 () Bool)

(assert (=> b!483714 (=> (not res!288274) (not e!284715))))

(assert (=> b!483714 (= res!288274 (and (is-Cons!9299 l!956) (bvslt (_1!4613 (h!10155 l!956)) key!251)))))

(declare-fun value!166 () B!1104)

(declare-fun lt!219274 () List!9303)

(declare-fun insertStrictlySorted!225 (List!9303 (_ BitVec 64) B!1104) List!9303)

(assert (=> b!483714 (= lt!219274 (insertStrictlySorted!225 l!956 key!251 value!166))))

(declare-fun b!483715 () Bool)

(declare-fun res!288275 () Bool)

(assert (=> b!483715 (=> (not res!288275) (not e!284716))))

(assert (=> b!483715 (= res!288275 (not (containsKey!369 l!956 key!251)))))

(declare-fun res!288273 () Bool)

(assert (=> start!43784 (=> (not res!288273) (not e!284716))))

(assert (=> start!43784 (= res!288273 (isStrictlySorted!403 l!956))))

(assert (=> start!43784 e!284716))

(assert (=> start!43784 e!284714))

(assert (=> start!43784 true))

(assert (=> start!43784 tp_is_empty!13913))

(declare-fun b!483716 () Bool)

(assert (=> b!483716 (= e!284715 (not true))))

(declare-fun length!10 (List!9303) Int)

(assert (=> b!483716 (= (length!10 (insertStrictlySorted!225 (t!15533 l!956) key!251 value!166)) (+ 1 (length!10 (t!15533 l!956))))))

(declare-datatypes ((Unit!14148 0))(
  ( (Unit!14149) )
))
(declare-fun lt!219275 () Unit!14148)

(declare-fun lemmaAddNewKeyIncrementSize!3 (List!9303 (_ BitVec 64) B!1104) Unit!14148)

(assert (=> b!483716 (= lt!219275 (lemmaAddNewKeyIncrementSize!3 (t!15533 l!956) key!251 value!166))))

(assert (= (and start!43784 res!288273) b!483715))

(assert (= (and b!483715 res!288275) b!483714))

(assert (= (and b!483714 res!288274) b!483712))

(assert (= (and b!483712 res!288271) b!483713))

(assert (= (and b!483713 res!288272) b!483716))

(assert (= (and start!43784 (is-Cons!9299 l!956)) b!483711))

(declare-fun m!464629 () Bool)

(assert (=> b!483715 m!464629))

(declare-fun m!464631 () Bool)

(assert (=> b!483714 m!464631))

(declare-fun m!464633 () Bool)

(assert (=> b!483716 m!464633))

(assert (=> b!483716 m!464633))

(declare-fun m!464635 () Bool)

(assert (=> b!483716 m!464635))

(declare-fun m!464637 () Bool)

(assert (=> b!483716 m!464637))

(declare-fun m!464639 () Bool)

(assert (=> b!483716 m!464639))

(declare-fun m!464641 () Bool)

(assert (=> b!483713 m!464641))

(declare-fun m!464643 () Bool)

(assert (=> b!483712 m!464643))

(declare-fun m!464645 () Bool)

(assert (=> start!43784 m!464645))

(push 1)

