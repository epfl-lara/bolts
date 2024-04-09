; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88694 () Bool)

(assert start!88694)

(declare-fun res!683091 () Bool)

(declare-fun e!573213 () Bool)

(assert (=> start!88694 (=> (not res!683091) (not e!573213))))

(declare-datatypes ((B!1664 0))(
  ( (B!1665 (val!11916 Int)) )
))
(declare-datatypes ((tuple2!15468 0))(
  ( (tuple2!15469 (_1!7744 (_ BitVec 64)) (_2!7744 B!1664)) )
))
(declare-datatypes ((List!21718 0))(
  ( (Nil!21715) (Cons!21714 (h!22912 tuple2!15468) (t!30730 List!21718)) )
))
(declare-fun l!996 () List!21718)

(declare-fun isStrictlySorted!665 (List!21718) Bool)

(assert (=> start!88694 (= res!683091 (isStrictlySorted!665 l!996))))

(assert (=> start!88694 e!573213))

(declare-fun e!573214 () Bool)

(assert (=> start!88694 e!573214))

(assert (=> start!88694 true))

(declare-fun b!1018616 () Bool)

(declare-fun res!683090 () Bool)

(assert (=> b!1018616 (=> (not res!683090) (not e!573213))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!530 (List!21718 (_ BitVec 64)) Bool)

(assert (=> b!1018616 (= res!683090 (containsKey!530 l!996 key!261))))

(declare-fun b!1018617 () Bool)

(declare-fun ListPrimitiveSize!133 (List!21718) Int)

(assert (=> b!1018617 (= e!573213 (< (ListPrimitiveSize!133 l!996) 0))))

(declare-fun b!1018618 () Bool)

(declare-fun tp_is_empty!23731 () Bool)

(declare-fun tp!71078 () Bool)

(assert (=> b!1018618 (= e!573214 (and tp_is_empty!23731 tp!71078))))

(assert (= (and start!88694 res!683091) b!1018616))

(assert (= (and b!1018616 res!683090) b!1018617))

(assert (= (and start!88694 (is-Cons!21714 l!996)) b!1018618))

(declare-fun m!939551 () Bool)

(assert (=> start!88694 m!939551))

(declare-fun m!939553 () Bool)

(assert (=> b!1018616 m!939553))

(declare-fun m!939555 () Bool)

(assert (=> b!1018617 m!939555))

(push 1)

(assert (not b!1018618))

(assert tp_is_empty!23731)

(assert (not start!88694))

(assert (not b!1018616))

(assert (not b!1018617))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121899 () Bool)

(declare-fun res!683120 () Bool)

(declare-fun e!573243 () Bool)

(assert (=> d!121899 (=> res!683120 e!573243)))

(assert (=> d!121899 (= res!683120 (and (is-Cons!21714 l!996) (= (_1!7744 (h!22912 l!996)) key!261)))))

(assert (=> d!121899 (= (containsKey!530 l!996 key!261) e!573243)))

(declare-fun b!1018653 () Bool)

(declare-fun e!573244 () Bool)

(assert (=> b!1018653 (= e!573243 e!573244)))

(declare-fun res!683121 () Bool)

(assert (=> b!1018653 (=> (not res!683121) (not e!573244))))

(assert (=> b!1018653 (= res!683121 (and (or (not (is-Cons!21714 l!996)) (bvsle (_1!7744 (h!22912 l!996)) key!261)) (is-Cons!21714 l!996) (bvslt (_1!7744 (h!22912 l!996)) key!261)))))

(declare-fun b!1018654 () Bool)

(assert (=> b!1018654 (= e!573244 (containsKey!530 (t!30730 l!996) key!261))))

(assert (= (and d!121899 (not res!683120)) b!1018653))

(assert (= (and b!1018653 res!683121) b!1018654))

(declare-fun m!939573 () Bool)

(assert (=> b!1018654 m!939573))

(assert (=> b!1018616 d!121899))

(declare-fun d!121907 () Bool)

(declare-fun res!683126 () Bool)

(declare-fun e!573255 () Bool)

(assert (=> d!121907 (=> res!683126 e!573255)))

(assert (=> d!121907 (= res!683126 (or (is-Nil!21715 l!996) (is-Nil!21715 (t!30730 l!996))))))

(assert (=> d!121907 (= (isStrictlySorted!665 l!996) e!573255)))

(declare-fun b!1018671 () Bool)

(declare-fun e!573256 () Bool)

(assert (=> b!1018671 (= e!573255 e!573256)))

(declare-fun res!683127 () Bool)

(assert (=> b!1018671 (=> (not res!683127) (not e!573256))))

(assert (=> b!1018671 (= res!683127 (bvslt (_1!7744 (h!22912 l!996)) (_1!7744 (h!22912 (t!30730 l!996)))))))

(declare-fun b!1018672 () Bool)

(assert (=> b!1018672 (= e!573256 (isStrictlySorted!665 (t!30730 l!996)))))

(assert (= (and d!121907 (not res!683126)) b!1018671))

(assert (= (and b!1018671 res!683127) b!1018672))

(declare-fun m!939579 () Bool)

(assert (=> b!1018672 m!939579))

(assert (=> start!88694 d!121907))

(declare-fun d!121913 () Bool)

(declare-fun lt!449571 () Int)

(assert (=> d!121913 (>= lt!449571 0)))

(declare-fun e!573271 () Int)

(assert (=> d!121913 (= lt!449571 e!573271)))

(declare-fun c!103150 () Bool)

(assert (=> d!121913 (= c!103150 (is-Nil!21715 l!996))))

(assert (=> d!121913 (= (ListPrimitiveSize!133 l!996) lt!449571)))

(declare-fun b!1018691 () Bool)

(assert (=> b!1018691 (= e!573271 0)))

(declare-fun b!1018692 () Bool)

(assert (=> b!1018692 (= e!573271 (+ 1 (ListPrimitiveSize!133 (t!30730 l!996))))))

(assert (= (and d!121913 c!103150) b!1018691))

(assert (= (and d!121913 (not c!103150)) b!1018692))

(declare-fun m!939583 () Bool)

(assert (=> b!1018692 m!939583))

(assert (=> b!1018617 d!121913))

(declare-fun b!1018704 () Bool)

(declare-fun e!573279 () Bool)

(declare-fun tp!71092 () Bool)

(assert (=> b!1018704 (= e!573279 (and tp_is_empty!23731 tp!71092))))

(assert (=> b!1018618 (= tp!71078 e!573279)))

(assert (= (and b!1018618 (is-Cons!21714 (t!30730 l!996))) b!1018704))

(push 1)

