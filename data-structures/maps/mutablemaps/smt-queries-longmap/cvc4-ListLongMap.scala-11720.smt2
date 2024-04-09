; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137192 () Bool)

(assert start!137192)

(declare-fun b!1580283 () Bool)

(declare-fun res!1079674 () Bool)

(declare-fun e!881615 () Bool)

(assert (=> b!1580283 (=> (not res!1079674) (not e!881615))))

(declare-fun key!405 () (_ BitVec 64))

(declare-datatypes ((B!2664 0))(
  ( (B!2665 (val!19694 Int)) )
))
(declare-fun value!194 () B!2664)

(declare-datatypes ((tuple2!25678 0))(
  ( (tuple2!25679 (_1!12849 (_ BitVec 64)) (_2!12849 B!2664)) )
))
(declare-datatypes ((List!36975 0))(
  ( (Nil!36972) (Cons!36971 (h!38515 tuple2!25678) (t!51896 List!36975)) )
))
(declare-fun l!1390 () List!36975)

(declare-fun contains!10503 (List!36975 tuple2!25678) Bool)

(assert (=> b!1580283 (= res!1079674 (contains!10503 l!1390 (tuple2!25679 key!405 value!194)))))

(declare-fun b!1580284 () Bool)

(declare-fun ListPrimitiveSize!195 (List!36975) Int)

(assert (=> b!1580284 (= e!881615 (< (ListPrimitiveSize!195 l!1390) 0))))

(declare-fun res!1079673 () Bool)

(assert (=> start!137192 (=> (not res!1079673) (not e!881615))))

(declare-fun isStrictlySorted!1070 (List!36975) Bool)

(assert (=> start!137192 (= res!1079673 (isStrictlySorted!1070 l!1390))))

(assert (=> start!137192 e!881615))

(declare-fun e!881616 () Bool)

(assert (=> start!137192 e!881616))

(assert (=> start!137192 true))

(declare-fun tp_is_empty!39209 () Bool)

(assert (=> start!137192 tp_is_empty!39209))

(declare-fun b!1580282 () Bool)

(declare-fun res!1079675 () Bool)

(assert (=> b!1580282 (=> (not res!1079675) (not e!881615))))

(declare-fun containsKey!916 (List!36975 (_ BitVec 64)) Bool)

(assert (=> b!1580282 (= res!1079675 (containsKey!916 l!1390 key!405))))

(declare-fun b!1580285 () Bool)

(declare-fun tp!114475 () Bool)

(assert (=> b!1580285 (= e!881616 (and tp_is_empty!39209 tp!114475))))

(assert (= (and start!137192 res!1079673) b!1580282))

(assert (= (and b!1580282 res!1079675) b!1580283))

(assert (= (and b!1580283 res!1079674) b!1580284))

(assert (= (and start!137192 (is-Cons!36971 l!1390)) b!1580285))

(declare-fun m!1451763 () Bool)

(assert (=> b!1580283 m!1451763))

(declare-fun m!1451765 () Bool)

(assert (=> b!1580284 m!1451765))

(declare-fun m!1451767 () Bool)

(assert (=> start!137192 m!1451767))

(declare-fun m!1451769 () Bool)

(assert (=> b!1580282 m!1451769))

(push 1)

(assert (not b!1580283))

(assert (not start!137192))

(assert (not b!1580282))

(assert (not b!1580285))

(assert (not b!1580284))

(assert tp_is_empty!39209)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166345 () Bool)

(declare-fun lt!676695 () Int)

(assert (=> d!166345 (>= lt!676695 0)))

(declare-fun e!881629 () Int)

(assert (=> d!166345 (= lt!676695 e!881629)))

(declare-fun c!146460 () Bool)

(assert (=> d!166345 (= c!146460 (is-Nil!36972 l!1390))))

(assert (=> d!166345 (= (ListPrimitiveSize!195 l!1390) lt!676695)))

(declare-fun b!1580300 () Bool)

(assert (=> b!1580300 (= e!881629 0)))

(declare-fun b!1580301 () Bool)

(assert (=> b!1580301 (= e!881629 (+ 1 (ListPrimitiveSize!195 (t!51896 l!1390))))))

(assert (= (and d!166345 c!146460) b!1580300))

(assert (= (and d!166345 (not c!146460)) b!1580301))

(declare-fun m!1451777 () Bool)

(assert (=> b!1580301 m!1451777))

(assert (=> b!1580284 d!166345))

(declare-fun d!166349 () Bool)

(declare-fun lt!676699 () Bool)

(declare-fun content!837 (List!36975) (Set tuple2!25678))

(assert (=> d!166349 (= lt!676699 (member (tuple2!25679 key!405 value!194) (content!837 l!1390)))))

(declare-fun e!881647 () Bool)

(assert (=> d!166349 (= lt!676699 e!881647)))

(declare-fun res!1079703 () Bool)

(assert (=> d!166349 (=> (not res!1079703) (not e!881647))))

(assert (=> d!166349 (= res!1079703 (is-Cons!36971 l!1390))))

(assert (=> d!166349 (= (contains!10503 l!1390 (tuple2!25679 key!405 value!194)) lt!676699)))

(declare-fun b!1580318 () Bool)

(declare-fun e!881646 () Bool)

(assert (=> b!1580318 (= e!881647 e!881646)))

(declare-fun res!1079702 () Bool)

(assert (=> b!1580318 (=> res!1079702 e!881646)))

(assert (=> b!1580318 (= res!1079702 (= (h!38515 l!1390) (tuple2!25679 key!405 value!194)))))

(declare-fun b!1580319 () Bool)

(assert (=> b!1580319 (= e!881646 (contains!10503 (t!51896 l!1390) (tuple2!25679 key!405 value!194)))))

(assert (= (and d!166349 res!1079703) b!1580318))

(assert (= (and b!1580318 (not res!1079702)) b!1580319))

(declare-fun m!1451787 () Bool)

(assert (=> d!166349 m!1451787))

(declare-fun m!1451789 () Bool)

(assert (=> d!166349 m!1451789))

(declare-fun m!1451791 () Bool)

(assert (=> b!1580319 m!1451791))

(assert (=> b!1580283 d!166349))

(declare-fun d!166355 () Bool)

(declare-fun res!1079721 () Bool)

(declare-fun e!881667 () Bool)

(assert (=> d!166355 (=> res!1079721 e!881667)))

(assert (=> d!166355 (= res!1079721 (and (is-Cons!36971 l!1390) (= (_1!12849 (h!38515 l!1390)) key!405)))))

(assert (=> d!166355 (= (containsKey!916 l!1390 key!405) e!881667)))

(declare-fun b!1580341 () Bool)

(declare-fun e!881669 () Bool)

(assert (=> b!1580341 (= e!881667 e!881669)))

(declare-fun res!1079723 () Bool)

(assert (=> b!1580341 (=> (not res!1079723) (not e!881669))))

(assert (=> b!1580341 (= res!1079723 (and (or (not (is-Cons!36971 l!1390)) (bvsle (_1!12849 (h!38515 l!1390)) key!405)) (is-Cons!36971 l!1390) (bvslt (_1!12849 (h!38515 l!1390)) key!405)))))

(declare-fun b!1580343 () Bool)

(assert (=> b!1580343 (= e!881669 (containsKey!916 (t!51896 l!1390) key!405))))

(assert (= (and d!166355 (not res!1079721)) b!1580341))

(assert (= (and b!1580341 res!1079723) b!1580343))

(declare-fun m!1451799 () Bool)

(assert (=> b!1580343 m!1451799))

(assert (=> b!1580282 d!166355))

(declare-fun d!166363 () Bool)

(declare-fun res!1079728 () Bool)

(declare-fun e!881683 () Bool)

(assert (=> d!166363 (=> res!1079728 e!881683)))

