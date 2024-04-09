; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88698 () Bool)

(assert start!88698)

(declare-fun res!683102 () Bool)

(declare-fun e!573225 () Bool)

(assert (=> start!88698 (=> (not res!683102) (not e!573225))))

(declare-datatypes ((B!1668 0))(
  ( (B!1669 (val!11918 Int)) )
))
(declare-datatypes ((tuple2!15472 0))(
  ( (tuple2!15473 (_1!7746 (_ BitVec 64)) (_2!7746 B!1668)) )
))
(declare-datatypes ((List!21720 0))(
  ( (Nil!21717) (Cons!21716 (h!22914 tuple2!15472) (t!30732 List!21720)) )
))
(declare-fun l!996 () List!21720)

(declare-fun isStrictlySorted!667 (List!21720) Bool)

(assert (=> start!88698 (= res!683102 (isStrictlySorted!667 l!996))))

(assert (=> start!88698 e!573225))

(declare-fun e!573226 () Bool)

(assert (=> start!88698 e!573226))

(assert (=> start!88698 true))

(declare-fun b!1018634 () Bool)

(declare-fun res!683103 () Bool)

(assert (=> b!1018634 (=> (not res!683103) (not e!573225))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!532 (List!21720 (_ BitVec 64)) Bool)

(assert (=> b!1018634 (= res!683103 (containsKey!532 l!996 key!261))))

(declare-fun b!1018635 () Bool)

(declare-fun ListPrimitiveSize!135 (List!21720) Int)

(assert (=> b!1018635 (= e!573225 (< (ListPrimitiveSize!135 l!996) 0))))

(declare-fun b!1018636 () Bool)

(declare-fun tp_is_empty!23735 () Bool)

(declare-fun tp!71084 () Bool)

(assert (=> b!1018636 (= e!573226 (and tp_is_empty!23735 tp!71084))))

(assert (= (and start!88698 res!683102) b!1018634))

(assert (= (and b!1018634 res!683103) b!1018635))

(assert (= (and start!88698 (is-Cons!21716 l!996)) b!1018636))

(declare-fun m!939563 () Bool)

(assert (=> start!88698 m!939563))

(declare-fun m!939565 () Bool)

(assert (=> b!1018634 m!939565))

(declare-fun m!939567 () Bool)

(assert (=> b!1018635 m!939567))

(push 1)

(assert tp_is_empty!23735)

(assert (not start!88698))

(assert (not b!1018636))

(assert (not b!1018634))

(assert (not b!1018635))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121901 () Bool)

(declare-fun res!683118 () Bool)

(declare-fun e!573241 () Bool)

(assert (=> d!121901 (=> res!683118 e!573241)))

(assert (=> d!121901 (= res!683118 (or (is-Nil!21717 l!996) (is-Nil!21717 (t!30732 l!996))))))

(assert (=> d!121901 (= (isStrictlySorted!667 l!996) e!573241)))

(declare-fun b!1018651 () Bool)

(declare-fun e!573242 () Bool)

(assert (=> b!1018651 (= e!573241 e!573242)))

(declare-fun res!683119 () Bool)

(assert (=> b!1018651 (=> (not res!683119) (not e!573242))))

(assert (=> b!1018651 (= res!683119 (bvslt (_1!7746 (h!22914 l!996)) (_1!7746 (h!22914 (t!30732 l!996)))))))

(declare-fun b!1018652 () Bool)

(assert (=> b!1018652 (= e!573242 (isStrictlySorted!667 (t!30732 l!996)))))

(assert (= (and d!121901 (not res!683118)) b!1018651))

(assert (= (and b!1018651 res!683119) b!1018652))

(declare-fun m!939571 () Bool)

(assert (=> b!1018652 m!939571))

(assert (=> start!88698 d!121901))

(declare-fun d!121905 () Bool)

(declare-fun lt!449568 () Int)

(assert (=> d!121905 (>= lt!449568 0)))

(declare-fun e!573254 () Int)

(assert (=> d!121905 (= lt!449568 e!573254)))

(declare-fun c!103147 () Bool)

(assert (=> d!121905 (= c!103147 (is-Nil!21717 l!996))))

(assert (=> d!121905 (= (ListPrimitiveSize!135 l!996) lt!449568)))

(declare-fun b!1018669 () Bool)

(assert (=> b!1018669 (= e!573254 0)))

(declare-fun b!1018670 () Bool)

(assert (=> b!1018670 (= e!573254 (+ 1 (ListPrimitiveSize!135 (t!30732 l!996))))))

(assert (= (and d!121905 c!103147) b!1018669))

(assert (= (and d!121905 (not c!103147)) b!1018670))

(declare-fun m!939577 () Bool)

(assert (=> b!1018670 m!939577))

(assert (=> b!1018635 d!121905))

(declare-fun d!121911 () Bool)

(declare-fun res!683138 () Bool)

(declare-fun e!573272 () Bool)

(assert (=> d!121911 (=> res!683138 e!573272)))

(assert (=> d!121911 (= res!683138 (and (is-Cons!21716 l!996) (= (_1!7746 (h!22914 l!996)) key!261)))))

(assert (=> d!121911 (= (containsKey!532 l!996 key!261) e!573272)))

(declare-fun b!1018693 () Bool)

(declare-fun e!573273 () Bool)

(assert (=> b!1018693 (= e!573272 e!573273)))

(declare-fun res!683139 () Bool)

(assert (=> b!1018693 (=> (not res!683139) (not e!573273))))

(assert (=> b!1018693 (= res!683139 (and (or (not (is-Cons!21716 l!996)) (bvsle (_1!7746 (h!22914 l!996)) key!261)) (is-Cons!21716 l!996) (bvslt (_1!7746 (h!22914 l!996)) key!261)))))

(declare-fun b!1018694 () Bool)

(assert (=> b!1018694 (= e!573273 (containsKey!532 (t!30732 l!996) key!261))))

(assert (= (and d!121911 (not res!683138)) b!1018693))

