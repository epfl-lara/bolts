; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103684 () Bool)

(assert start!103684)

(declare-fun b!1241394 () Bool)

(declare-fun res!828171 () Bool)

(declare-fun e!703664 () Bool)

(assert (=> b!1241394 (=> (not res!828171) (not e!703664))))

(declare-datatypes ((B!1848 0))(
  ( (B!1849 (val!15686 Int)) )
))
(declare-datatypes ((tuple2!20400 0))(
  ( (tuple2!20401 (_1!10210 (_ BitVec 64)) (_2!10210 B!1848)) )
))
(declare-datatypes ((List!27515 0))(
  ( (Nil!27512) (Cons!27511 (h!28720 tuple2!20400) (t!40985 List!27515)) )
))
(declare-fun l!644 () List!27515)

(declare-fun isStrictlySorted!746 (List!27515) Bool)

(assert (=> b!1241394 (= res!828171 (isStrictlySorted!746 l!644))))

(declare-fun res!828170 () Bool)

(assert (=> start!103684 (=> (not res!828170) (not e!703664))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103684 (= res!828170 (not (= key1!25 key2!15)))))

(assert (=> start!103684 e!703664))

(assert (=> start!103684 true))

(declare-fun e!703663 () Bool)

(assert (=> start!103684 e!703663))

(declare-fun b!1241395 () Bool)

(declare-fun res!828172 () Bool)

(assert (=> b!1241395 (=> (not res!828172) (not e!703664))))

(assert (=> b!1241395 (= res!828172 (not (is-Cons!27511 l!644)))))

(declare-fun b!1241397 () Bool)

(declare-fun tp_is_empty!31247 () Bool)

(declare-fun tp!92643 () Bool)

(assert (=> b!1241397 (= e!703663 (and tp_is_empty!31247 tp!92643))))

(declare-fun b!1241396 () Bool)

(declare-fun removeStrictlySorted!130 (List!27515 (_ BitVec 64)) List!27515)

(assert (=> b!1241396 (= e!703664 (not (isStrictlySorted!746 (removeStrictlySorted!130 l!644 key2!15))))))

(assert (= (and start!103684 res!828170) b!1241394))

(assert (= (and b!1241394 res!828171) b!1241395))

(assert (= (and b!1241395 res!828172) b!1241396))

(assert (= (and start!103684 (is-Cons!27511 l!644)) b!1241397))

(declare-fun m!1144499 () Bool)

(assert (=> b!1241394 m!1144499))

(declare-fun m!1144501 () Bool)

(assert (=> b!1241396 m!1144501))

(assert (=> b!1241396 m!1144501))

(declare-fun m!1144503 () Bool)

(assert (=> b!1241396 m!1144503))

(push 1)

(assert (not b!1241394))

(assert (not b!1241396))

(assert (not b!1241397))

(assert tp_is_empty!31247)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136397 () Bool)

(declare-fun res!828181 () Bool)

(declare-fun e!703673 () Bool)

(assert (=> d!136397 (=> res!828181 e!703673)))

(assert (=> d!136397 (= res!828181 (or (is-Nil!27512 l!644) (is-Nil!27512 (t!40985 l!644))))))

(assert (=> d!136397 (= (isStrictlySorted!746 l!644) e!703673)))

(declare-fun b!1241406 () Bool)

(declare-fun e!703674 () Bool)

(assert (=> b!1241406 (= e!703673 e!703674)))

(declare-fun res!828182 () Bool)

(assert (=> b!1241406 (=> (not res!828182) (not e!703674))))

(assert (=> b!1241406 (= res!828182 (bvslt (_1!10210 (h!28720 l!644)) (_1!10210 (h!28720 (t!40985 l!644)))))))

(declare-fun b!1241407 () Bool)

(assert (=> b!1241407 (= e!703674 (isStrictlySorted!746 (t!40985 l!644)))))

(assert (= (and d!136397 (not res!828181)) b!1241406))

(assert (= (and b!1241406 res!828182) b!1241407))

(declare-fun m!1144505 () Bool)

(assert (=> b!1241407 m!1144505))

(assert (=> b!1241394 d!136397))

(declare-fun d!136403 () Bool)

(declare-fun res!828189 () Bool)

(declare-fun e!703681 () Bool)

(assert (=> d!136403 (=> res!828189 e!703681)))

(assert (=> d!136403 (= res!828189 (or (is-Nil!27512 (removeStrictlySorted!130 l!644 key2!15)) (is-Nil!27512 (t!40985 (removeStrictlySorted!130 l!644 key2!15)))))))

(assert (=> d!136403 (= (isStrictlySorted!746 (removeStrictlySorted!130 l!644 key2!15)) e!703681)))

(declare-fun b!1241414 () Bool)

(declare-fun e!703682 () Bool)

(assert (=> b!1241414 (= e!703681 e!703682)))

(declare-fun res!828190 () Bool)

(assert (=> b!1241414 (=> (not res!828190) (not e!703682))))

(assert (=> b!1241414 (= res!828190 (bvslt (_1!10210 (h!28720 (removeStrictlySorted!130 l!644 key2!15))) (_1!10210 (h!28720 (t!40985 (removeStrictlySorted!130 l!644 key2!15))))))))

(declare-fun b!1241415 () Bool)

(assert (=> b!1241415 (= e!703682 (isStrictlySorted!746 (t!40985 (removeStrictlySorted!130 l!644 key2!15))))))

(assert (= (and d!136403 (not res!828189)) b!1241414))

(assert (= (and b!1241414 res!828190) b!1241415))

(declare-fun m!1144509 () Bool)

(assert (=> b!1241415 m!1144509))

(assert (=> b!1241396 d!136403))

(declare-fun b!1241453 () Bool)

(declare-fun e!703707 () List!27515)

(declare-fun e!703708 () List!27515)

(assert (=> b!1241453 (= e!703707 e!703708)))

(declare-fun c!121405 () Bool)

(assert (=> b!1241453 (= c!121405 (and (is-Cons!27511 l!644) (not (= (_1!10210 (h!28720 l!644)) key2!15))))))

(declare-fun b!1241454 () Bool)

(assert (=> b!1241454 (= e!703707 (t!40985 l!644))))

(declare-fun b!1241455 () Bool)

(declare-fun $colon$colon!625 (List!27515 tuple2!20400) List!27515)

(assert (=> b!1241455 (= e!703708 ($colon$colon!625 (removeStrictlySorted!130 (t!40985 l!644) key2!15) (h!28720 l!644)))))

(declare-fun b!1241456 () Bool)

(assert (=> b!1241456 (= e!703708 Nil!27512)))

(declare-fun d!136407 () Bool)

(declare-fun e!703706 () Bool)

(assert (=> d!136407 e!703706))

(declare-fun res!828200 () Bool)

(assert (=> d!136407 (=> (not res!828200) (not e!703706))))

(declare-fun lt!562086 () List!27515)

(assert (=> d!136407 (= res!828200 (isStrictlySorted!746 lt!562086))))

(assert (=> d!136407 (= lt!562086 e!703707)))

(declare-fun c!121406 () Bool)

(assert (=> d!136407 (= c!121406 (and (is-Cons!27511 l!644) (= (_1!10210 (h!28720 l!644)) key2!15)))))

(assert (=> d!136407 (isStrictlySorted!746 l!644)))

(assert (=> d!136407 (= (removeStrictlySorted!130 l!644 key2!15) lt!562086)))

(declare-fun b!1241457 () Bool)

(declare-fun containsKey!609 (List!27515 (_ BitVec 64)) Bool)

(assert (=> b!1241457 (= e!703706 (not (containsKey!609 lt!562086 key2!15)))))

(assert (= (and d!136407 c!121406) b!1241454))

(assert (= (and d!136407 (not c!121406)) b!1241453))

(assert (= (and b!1241453 c!121405) b!1241455))

(assert (= (and b!1241453 (not c!121405)) b!1241456))

