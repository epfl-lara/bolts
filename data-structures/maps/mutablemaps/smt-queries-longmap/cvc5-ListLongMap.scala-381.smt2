; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7204 () Bool)

(assert start!7204)

(declare-fun res!26970 () Bool)

(declare-fun e!29390 () Bool)

(assert (=> start!7204 (=> (not res!26970) (not e!29390))))

(declare-datatypes ((B!866 0))(
  ( (B!867 (val!1020 Int)) )
))
(declare-datatypes ((tuple2!1692 0))(
  ( (tuple2!1693 (_1!856 (_ BitVec 64)) (_2!856 B!866)) )
))
(declare-datatypes ((List!1254 0))(
  ( (Nil!1251) (Cons!1250 (h!1830 tuple2!1692) (t!4287 List!1254)) )
))
(declare-fun l!812 () List!1254)

(declare-fun isStrictlySorted!225 (List!1254) Bool)

(assert (=> start!7204 (= res!26970 (isStrictlySorted!225 l!812))))

(assert (=> start!7204 e!29390))

(declare-fun e!29389 () Bool)

(assert (=> start!7204 e!29389))

(assert (=> start!7204 true))

(declare-fun b!46139 () Bool)

(declare-fun res!26971 () Bool)

(assert (=> b!46139 (=> (not res!26971) (not e!29390))))

(assert (=> b!46139 (= res!26971 (not (is-Cons!1250 l!812)))))

(declare-fun b!46140 () Bool)

(declare-fun key2!27 () (_ BitVec 64))

(declare-fun removeStrictlySorted!40 (List!1254 (_ BitVec 64)) List!1254)

(assert (=> b!46140 (= e!29390 (not (isStrictlySorted!225 (removeStrictlySorted!40 l!812 key2!27))))))

(declare-fun b!46141 () Bool)

(declare-fun tp_is_empty!1963 () Bool)

(declare-fun tp!6065 () Bool)

(assert (=> b!46141 (= e!29389 (and tp_is_empty!1963 tp!6065))))

(assert (= (and start!7204 res!26970) b!46139))

(assert (= (and b!46139 res!26971) b!46140))

(assert (= (and start!7204 (is-Cons!1250 l!812)) b!46141))

(declare-fun m!40647 () Bool)

(assert (=> start!7204 m!40647))

(declare-fun m!40649 () Bool)

(assert (=> b!46140 m!40649))

(assert (=> b!46140 m!40649))

(declare-fun m!40651 () Bool)

(assert (=> b!46140 m!40651))

(push 1)

(assert (not b!46140))

(assert (not start!7204))

(assert (not b!46141))

(assert tp_is_empty!1963)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9055 () Bool)

(declare-fun res!27000 () Bool)

(declare-fun e!29416 () Bool)

(assert (=> d!9055 (=> res!27000 e!29416)))

(assert (=> d!9055 (= res!27000 (or (is-Nil!1251 (removeStrictlySorted!40 l!812 key2!27)) (is-Nil!1251 (t!4287 (removeStrictlySorted!40 l!812 key2!27)))))))

(assert (=> d!9055 (= (isStrictlySorted!225 (removeStrictlySorted!40 l!812 key2!27)) e!29416)))

(declare-fun b!46176 () Bool)

(declare-fun e!29420 () Bool)

(assert (=> b!46176 (= e!29416 e!29420)))

(declare-fun res!27001 () Bool)

(assert (=> b!46176 (=> (not res!27001) (not e!29420))))

(assert (=> b!46176 (= res!27001 (bvslt (_1!856 (h!1830 (removeStrictlySorted!40 l!812 key2!27))) (_1!856 (h!1830 (t!4287 (removeStrictlySorted!40 l!812 key2!27))))))))

(declare-fun b!46177 () Bool)

(assert (=> b!46177 (= e!29420 (isStrictlySorted!225 (t!4287 (removeStrictlySorted!40 l!812 key2!27))))))

(assert (= (and d!9055 (not res!27000)) b!46176))

(assert (= (and b!46176 res!27001) b!46177))

(declare-fun m!40669 () Bool)

(assert (=> b!46177 m!40669))

(assert (=> b!46140 d!9055))

(declare-fun b!46213 () Bool)

(declare-fun e!29441 () List!1254)

(assert (=> b!46213 (= e!29441 (t!4287 l!812))))

(declare-fun d!9063 () Bool)

(declare-fun e!29443 () Bool)

(assert (=> d!9063 e!29443))

(declare-fun res!27009 () Bool)

(assert (=> d!9063 (=> (not res!27009) (not e!29443))))

(declare-fun lt!20287 () List!1254)

(assert (=> d!9063 (= res!27009 (isStrictlySorted!225 lt!20287))))

(assert (=> d!9063 (= lt!20287 e!29441)))

(declare-fun c!6257 () Bool)

(assert (=> d!9063 (= c!6257 (and (is-Cons!1250 l!812) (= (_1!856 (h!1830 l!812)) key2!27)))))

(assert (=> d!9063 (isStrictlySorted!225 l!812)))

(assert (=> d!9063 (= (removeStrictlySorted!40 l!812 key2!27) lt!20287)))

(declare-fun b!46214 () Bool)

(declare-fun containsKey!88 (List!1254 (_ BitVec 64)) Bool)

(assert (=> b!46214 (= e!29443 (not (containsKey!88 lt!20287 key2!27)))))

(declare-fun b!46215 () Bool)

(declare-fun e!29444 () List!1254)

(assert (=> b!46215 (= e!29444 Nil!1251)))

(declare-fun b!46216 () Bool)

(declare-fun $colon$colon!41 (List!1254 tuple2!1692) List!1254)

(assert (=> b!46216 (= e!29444 ($colon$colon!41 (removeStrictlySorted!40 (t!4287 l!812) key2!27) (h!1830 l!812)))))

(declare-fun b!46217 () Bool)

(assert (=> b!46217 (= e!29441 e!29444)))

(declare-fun c!6259 () Bool)

(assert (=> b!46217 (= c!6259 (and (is-Cons!1250 l!812) (not (= (_1!856 (h!1830 l!812)) key2!27))))))

(assert (= (and d!9063 c!6257) b!46213))

(assert (= (and d!9063 (not c!6257)) b!46217))

(assert (= (and b!46217 c!6259) b!46216))

(assert (= (and b!46217 (not c!6259)) b!46215))

(assert (= (and d!9063 res!27009) b!46214))

(declare-fun m!40671 () Bool)

(assert (=> d!9063 m!40671))

(assert (=> d!9063 m!40647))

(declare-fun m!40677 () Bool)

(assert (=> b!46214 m!40677))

(declare-fun m!40683 () Bool)

(assert (=> b!46216 m!40683))

(assert (=> b!46216 m!40683))

(declare-fun m!40691 () Bool)

(assert (=> b!46216 m!40691))

(assert (=> b!46140 d!9063))

(declare-fun d!9066 () Bool)

(declare-fun res!27011 () Bool)

(declare-fun e!29448 () Bool)

(assert (=> d!9066 (=> res!27011 e!29448)))

(assert (=> d!9066 (= res!27011 (or (is-Nil!1251 l!812) (is-Nil!1251 (t!4287 l!812))))))

(assert (=> d!9066 (= (isStrictlySorted!225 l!812) e!29448)))

(declare-fun b!46223 () Bool)

(declare-fun e!29450 () Bool)

(assert (=> b!46223 (= e!29448 e!29450)))

(declare-fun res!27013 () Bool)

(assert (=> b!46223 (=> (not res!27013) (not e!29450))))

(assert (=> b!46223 (= res!27013 (bvslt (_1!856 (h!1830 l!812)) (_1!856 (h!1830 (t!4287 l!812)))))))

(declare-fun b!46225 () Bool)

(assert (=> b!46225 (= e!29450 (isStrictlySorted!225 (t!4287 l!812)))))

(assert (= (and d!9066 (not res!27011)) b!46223))

(assert (= (and b!46223 res!27013) b!46225))

(declare-fun m!40695 () Bool)

(assert (=> b!46225 m!40695))

(assert (=> start!7204 d!9066))

(declare-fun b!46243 () Bool)

(declare-fun e!29462 () Bool)

(declare-fun tp!6080 () Bool)

(assert (=> b!46243 (= e!29462 (and tp_is_empty!1963 tp!6080))))

(assert (=> b!46141 (= tp!6065 e!29462)))

(assert (= (and b!46141 (is-Cons!1250 (t!4287 l!812))) b!46243))

(push 1)

