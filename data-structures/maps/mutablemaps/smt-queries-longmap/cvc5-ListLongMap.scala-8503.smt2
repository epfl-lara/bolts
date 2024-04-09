; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103680 () Bool)

(assert start!103680)

(declare-fun b!1241370 () Bool)

(declare-fun res!828153 () Bool)

(declare-fun e!703651 () Bool)

(assert (=> b!1241370 (=> (not res!828153) (not e!703651))))

(declare-datatypes ((B!1844 0))(
  ( (B!1845 (val!15684 Int)) )
))
(declare-datatypes ((tuple2!20396 0))(
  ( (tuple2!20397 (_1!10208 (_ BitVec 64)) (_2!10208 B!1844)) )
))
(declare-datatypes ((List!27513 0))(
  ( (Nil!27510) (Cons!27509 (h!28718 tuple2!20396) (t!40983 List!27513)) )
))
(declare-fun l!644 () List!27513)

(declare-fun isStrictlySorted!744 (List!27513) Bool)

(assert (=> b!1241370 (= res!828153 (isStrictlySorted!744 l!644))))

(declare-fun b!1241371 () Bool)

(declare-fun res!828154 () Bool)

(assert (=> b!1241371 (=> (not res!828154) (not e!703651))))

(assert (=> b!1241371 (= res!828154 (not (is-Cons!27509 l!644)))))

(declare-fun b!1241373 () Bool)

(declare-fun e!703652 () Bool)

(declare-fun tp_is_empty!31243 () Bool)

(declare-fun tp!92637 () Bool)

(assert (=> b!1241373 (= e!703652 (and tp_is_empty!31243 tp!92637))))

(declare-fun b!1241372 () Bool)

(declare-fun key2!15 () (_ BitVec 64))

(declare-fun removeStrictlySorted!128 (List!27513 (_ BitVec 64)) List!27513)

(assert (=> b!1241372 (= e!703651 (not (isStrictlySorted!744 (removeStrictlySorted!128 l!644 key2!15))))))

(declare-fun res!828152 () Bool)

(assert (=> start!103680 (=> (not res!828152) (not e!703651))))

(declare-fun key1!25 () (_ BitVec 64))

(assert (=> start!103680 (= res!828152 (not (= key1!25 key2!15)))))

(assert (=> start!103680 e!703651))

(assert (=> start!103680 true))

(assert (=> start!103680 e!703652))

(assert (= (and start!103680 res!828152) b!1241370))

(assert (= (and b!1241370 res!828153) b!1241371))

(assert (= (and b!1241371 res!828154) b!1241372))

(assert (= (and start!103680 (is-Cons!27509 l!644)) b!1241373))

(declare-fun m!1144487 () Bool)

(assert (=> b!1241370 m!1144487))

(declare-fun m!1144489 () Bool)

(assert (=> b!1241372 m!1144489))

(assert (=> b!1241372 m!1144489))

(declare-fun m!1144491 () Bool)

(assert (=> b!1241372 m!1144491))

(push 1)

(assert (not b!1241372))

(assert (not b!1241370))

(assert (not b!1241373))

(assert tp_is_empty!31243)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136401 () Bool)

(declare-fun res!828191 () Bool)

(declare-fun e!703683 () Bool)

(assert (=> d!136401 (=> res!828191 e!703683)))

(assert (=> d!136401 (= res!828191 (or (is-Nil!27510 (removeStrictlySorted!128 l!644 key2!15)) (is-Nil!27510 (t!40983 (removeStrictlySorted!128 l!644 key2!15)))))))

(assert (=> d!136401 (= (isStrictlySorted!744 (removeStrictlySorted!128 l!644 key2!15)) e!703683)))

(declare-fun b!1241416 () Bool)

(declare-fun e!703684 () Bool)

(assert (=> b!1241416 (= e!703683 e!703684)))

(declare-fun res!828192 () Bool)

(assert (=> b!1241416 (=> (not res!828192) (not e!703684))))

(assert (=> b!1241416 (= res!828192 (bvslt (_1!10208 (h!28718 (removeStrictlySorted!128 l!644 key2!15))) (_1!10208 (h!28718 (t!40983 (removeStrictlySorted!128 l!644 key2!15))))))))

(declare-fun b!1241417 () Bool)

(assert (=> b!1241417 (= e!703684 (isStrictlySorted!744 (t!40983 (removeStrictlySorted!128 l!644 key2!15))))))

(assert (= (and d!136401 (not res!828191)) b!1241416))

(assert (= (and b!1241416 res!828192) b!1241417))

(declare-fun m!1144511 () Bool)

(assert (=> b!1241417 m!1144511))

(assert (=> b!1241372 d!136401))

(declare-fun b!1241460 () Bool)

(declare-fun e!703711 () List!27513)

(declare-fun e!703712 () List!27513)

(assert (=> b!1241460 (= e!703711 e!703712)))

(declare-fun c!121407 () Bool)

(assert (=> b!1241460 (= c!121407 (and (is-Cons!27509 l!644) (not (= (_1!10208 (h!28718 l!644)) key2!15))))))

(declare-fun b!1241461 () Bool)

(assert (=> b!1241461 (= e!703711 (t!40983 l!644))))

(declare-fun b!1241462 () Bool)

(assert (=> b!1241462 (= e!703712 Nil!27510)))

(declare-fun b!1241463 () Bool)

(declare-fun $colon$colon!624 (List!27513 tuple2!20396) List!27513)

(assert (=> b!1241463 (= e!703712 ($colon$colon!624 (removeStrictlySorted!128 (t!40983 l!644) key2!15) (h!28718 l!644)))))

(declare-fun d!136409 () Bool)

(declare-fun e!703713 () Bool)

(assert (=> d!136409 e!703713))

(declare-fun res!828203 () Bool)

(assert (=> d!136409 (=> (not res!828203) (not e!703713))))

(declare-fun lt!562087 () List!27513)

(assert (=> d!136409 (= res!828203 (isStrictlySorted!744 lt!562087))))

(assert (=> d!136409 (= lt!562087 e!703711)))

(declare-fun c!121408 () Bool)

(assert (=> d!136409 (= c!121408 (and (is-Cons!27509 l!644) (= (_1!10208 (h!28718 l!644)) key2!15)))))

(assert (=> d!136409 (isStrictlySorted!744 l!644)))

(assert (=> d!136409 (= (removeStrictlySorted!128 l!644 key2!15) lt!562087)))

(declare-fun b!1241464 () Bool)

(declare-fun containsKey!608 (List!27513 (_ BitVec 64)) Bool)

(assert (=> b!1241464 (= e!703713 (not (containsKey!608 lt!562087 key2!15)))))

(assert (= (and d!136409 c!121408) b!1241461))

(assert (= (and d!136409 (not c!121408)) b!1241460))

(assert (= (and b!1241460 c!121407) b!1241463))

(assert (= (and b!1241460 (not c!121407)) b!1241462))

(assert (= (and d!136409 res!828203) b!1241464))

(declare-fun m!1144531 () Bool)

(assert (=> b!1241463 m!1144531))

(assert (=> b!1241463 m!1144531))

(declare-fun m!1144533 () Bool)

(assert (=> b!1241463 m!1144533))

(declare-fun m!1144535 () Bool)

(assert (=> d!136409 m!1144535))

(assert (=> d!136409 m!1144487))

(declare-fun m!1144537 () Bool)

(assert (=> b!1241464 m!1144537))

(assert (=> b!1241372 d!136409))

(declare-fun d!136413 () Bool)

(declare-fun res!828204 () Bool)

(declare-fun e!703719 () Bool)

(assert (=> d!136413 (=> res!828204 e!703719)))

(assert (=> d!136413 (= res!828204 (or (is-Nil!27510 l!644) (is-Nil!27510 (t!40983 l!644))))))

(assert (=> d!136413 (= (isStrictlySorted!744 l!644) e!703719)))

(declare-fun b!1241474 () Bool)

(declare-fun e!703720 () Bool)

(assert (=> b!1241474 (= e!703719 e!703720)))

(declare-fun res!828205 () Bool)

(assert (=> b!1241474 (=> (not res!828205) (not e!703720))))

(assert (=> b!1241474 (= res!828205 (bvslt (_1!10208 (h!28718 l!644)) (_1!10208 (h!28718 (t!40983 l!644)))))))

(declare-fun b!1241475 () Bool)

(assert (=> b!1241475 (= e!703720 (isStrictlySorted!744 (t!40983 l!644)))))

(assert (= (and d!136413 (not res!828204)) b!1241474))

(assert (= (and b!1241474 res!828205) b!1241475))

(declare-fun m!1144539 () Bool)

(assert (=> b!1241475 m!1144539))

(assert (=> b!1241370 d!136413))

(declare-fun b!1241481 () Bool)

(declare-fun e!703724 () Bool)

(declare-fun tp!92652 () Bool)

(assert (=> b!1241481 (= e!703724 (and tp_is_empty!31243 tp!92652))))

(assert (=> b!1241373 (= tp!92637 e!703724)))

(assert (= (and b!1241373 (is-Cons!27509 (t!40983 l!644))) b!1241481))

(push 1)

