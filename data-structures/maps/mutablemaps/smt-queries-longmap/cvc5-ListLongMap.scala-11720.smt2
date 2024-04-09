; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137188 () Bool)

(assert start!137188)

(declare-fun b!1580260 () Bool)

(declare-fun e!881603 () Bool)

(declare-datatypes ((B!2660 0))(
  ( (B!2661 (val!19692 Int)) )
))
(declare-datatypes ((tuple2!25674 0))(
  ( (tuple2!25675 (_1!12847 (_ BitVec 64)) (_2!12847 B!2660)) )
))
(declare-datatypes ((List!36973 0))(
  ( (Nil!36970) (Cons!36969 (h!38513 tuple2!25674) (t!51894 List!36973)) )
))
(declare-fun l!1390 () List!36973)

(declare-fun ListPrimitiveSize!193 (List!36973) Int)

(assert (=> b!1580260 (= e!881603 (< (ListPrimitiveSize!193 l!1390) 0))))

(declare-fun b!1580261 () Bool)

(declare-fun e!881604 () Bool)

(declare-fun tp_is_empty!39205 () Bool)

(declare-fun tp!114469 () Bool)

(assert (=> b!1580261 (= e!881604 (and tp_is_empty!39205 tp!114469))))

(declare-fun b!1580258 () Bool)

(declare-fun res!1079655 () Bool)

(assert (=> b!1580258 (=> (not res!1079655) (not e!881603))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!914 (List!36973 (_ BitVec 64)) Bool)

(assert (=> b!1580258 (= res!1079655 (containsKey!914 l!1390 key!405))))

(declare-fun b!1580259 () Bool)

(declare-fun res!1079656 () Bool)

(assert (=> b!1580259 (=> (not res!1079656) (not e!881603))))

(declare-fun value!194 () B!2660)

(declare-fun contains!10501 (List!36973 tuple2!25674) Bool)

(assert (=> b!1580259 (= res!1079656 (contains!10501 l!1390 (tuple2!25675 key!405 value!194)))))

(declare-fun res!1079657 () Bool)

(assert (=> start!137188 (=> (not res!1079657) (not e!881603))))

(declare-fun isStrictlySorted!1068 (List!36973) Bool)

(assert (=> start!137188 (= res!1079657 (isStrictlySorted!1068 l!1390))))

(assert (=> start!137188 e!881603))

(assert (=> start!137188 e!881604))

(assert (=> start!137188 true))

(assert (=> start!137188 tp_is_empty!39205))

(assert (= (and start!137188 res!1079657) b!1580258))

(assert (= (and b!1580258 res!1079655) b!1580259))

(assert (= (and b!1580259 res!1079656) b!1580260))

(assert (= (and start!137188 (is-Cons!36969 l!1390)) b!1580261))

(declare-fun m!1451747 () Bool)

(assert (=> b!1580260 m!1451747))

(declare-fun m!1451749 () Bool)

(assert (=> b!1580258 m!1451749))

(declare-fun m!1451751 () Bool)

(assert (=> b!1580259 m!1451751))

(declare-fun m!1451753 () Bool)

(assert (=> start!137188 m!1451753))

(push 1)

(assert (not b!1580261))

(assert tp_is_empty!39205)

(assert (not b!1580260))

(assert (not b!1580259))

(assert (not b!1580258))

(assert (not start!137188))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166343 () Bool)

(declare-fun lt!676696 () Bool)

(declare-fun content!836 (List!36973) (Set tuple2!25674))

(assert (=> d!166343 (= lt!676696 (set.member (tuple2!25675 key!405 value!194) (content!836 l!1390)))))

(declare-fun e!881631 () Bool)

(assert (=> d!166343 (= lt!676696 e!881631)))

(declare-fun res!1079686 () Bool)

(assert (=> d!166343 (=> (not res!1079686) (not e!881631))))

(assert (=> d!166343 (= res!1079686 (is-Cons!36969 l!1390))))

(assert (=> d!166343 (= (contains!10501 l!1390 (tuple2!25675 key!405 value!194)) lt!676696)))

(declare-fun b!1580302 () Bool)

(declare-fun e!881630 () Bool)

(assert (=> b!1580302 (= e!881631 e!881630)))

(declare-fun res!1079687 () Bool)

(assert (=> b!1580302 (=> res!1079687 e!881630)))

(assert (=> b!1580302 (= res!1079687 (= (h!38513 l!1390) (tuple2!25675 key!405 value!194)))))

(declare-fun b!1580303 () Bool)

(assert (=> b!1580303 (= e!881630 (contains!10501 (t!51894 l!1390) (tuple2!25675 key!405 value!194)))))

(assert (= (and d!166343 res!1079686) b!1580302))

(assert (= (and b!1580302 (not res!1079687)) b!1580303))

(declare-fun m!1451779 () Bool)

(assert (=> d!166343 m!1451779))

(declare-fun m!1451781 () Bool)

(assert (=> d!166343 m!1451781))

(declare-fun m!1451783 () Bool)

(assert (=> b!1580303 m!1451783))

(assert (=> b!1580259 d!166343))

(declare-fun d!166351 () Bool)

(declare-fun res!1079704 () Bool)

(declare-fun e!881648 () Bool)

(assert (=> d!166351 (=> res!1079704 e!881648)))

(assert (=> d!166351 (= res!1079704 (and (is-Cons!36969 l!1390) (= (_1!12847 (h!38513 l!1390)) key!405)))))

(assert (=> d!166351 (= (containsKey!914 l!1390 key!405) e!881648)))

(declare-fun b!1580320 () Bool)

(declare-fun e!881649 () Bool)

(assert (=> b!1580320 (= e!881648 e!881649)))

(declare-fun res!1079705 () Bool)

(assert (=> b!1580320 (=> (not res!1079705) (not e!881649))))

(assert (=> b!1580320 (= res!1079705 (and (or (not (is-Cons!36969 l!1390)) (bvsle (_1!12847 (h!38513 l!1390)) key!405)) (is-Cons!36969 l!1390) (bvslt (_1!12847 (h!38513 l!1390)) key!405)))))

(declare-fun b!1580321 () Bool)

(assert (=> b!1580321 (= e!881649 (containsKey!914 (t!51894 l!1390) key!405))))

(assert (= (and d!166351 (not res!1079704)) b!1580320))

(assert (= (and b!1580320 res!1079705) b!1580321))

(declare-fun m!1451793 () Bool)

(assert (=> b!1580321 m!1451793))

(assert (=> b!1580258 d!166351))

(declare-fun d!166357 () Bool)

(declare-fun res!1079720 () Bool)

(declare-fun e!881666 () Bool)

(assert (=> d!166357 (=> res!1079720 e!881666)))

(assert (=> d!166357 (= res!1079720 (or (is-Nil!36970 l!1390) (is-Nil!36970 (t!51894 l!1390))))))

(assert (=> d!166357 (= (isStrictlySorted!1068 l!1390) e!881666)))

(declare-fun b!1580340 () Bool)

(declare-fun e!881668 () Bool)

(assert (=> b!1580340 (= e!881666 e!881668)))

(declare-fun res!1079722 () Bool)

(assert (=> b!1580340 (=> (not res!1079722) (not e!881668))))

(assert (=> b!1580340 (= res!1079722 (bvslt (_1!12847 (h!38513 l!1390)) (_1!12847 (h!38513 (t!51894 l!1390)))))))

(declare-fun b!1580342 () Bool)

(assert (=> b!1580342 (= e!881668 (isStrictlySorted!1068 (t!51894 l!1390)))))

(assert (= (and d!166357 (not res!1079720)) b!1580340))

(assert (= (and b!1580340 res!1079722) b!1580342))

(declare-fun m!1451797 () Bool)

(assert (=> b!1580342 m!1451797))

(assert (=> start!137188 d!166357))

(declare-fun d!166361 () Bool)

(declare-fun lt!676705 () Int)

(assert (=> d!166361 (>= lt!676705 0)))

(declare-fun e!881680 () Int)

(assert (=> d!166361 (= lt!676705 e!881680)))

(declare-fun c!146466 () Bool)

(assert (=> d!166361 (= c!146466 (is-Nil!36970 l!1390))))

(assert (=> d!166361 (= (ListPrimitiveSize!193 l!1390) lt!676705)))

(declare-fun b!1580359 () Bool)

(assert (=> b!1580359 (= e!881680 0)))

(declare-fun b!1580360 () Bool)

(assert (=> b!1580360 (= e!881680 (+ 1 (ListPrimitiveSize!193 (t!51894 l!1390))))))

(assert (= (and d!166361 c!146466) b!1580359))

(assert (= (and d!166361 (not c!146466)) b!1580360))

(declare-fun m!1451803 () Bool)

(assert (=> b!1580360 m!1451803))

(assert (=> b!1580260 d!166361))

(declare-fun b!1580367 () Bool)

(declare-fun e!881685 () Bool)

(declare-fun tp!114481 () Bool)

(assert (=> b!1580367 (= e!881685 (and tp_is_empty!39205 tp!114481))))

(assert (=> b!1580261 (= tp!114469 e!881685)))

(assert (= (and b!1580261 (is-Cons!36969 (t!51894 l!1390))) b!1580367))

(push 1)

