; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!422616 () Bool)

(assert start!422616)

(declare-fun res!1793345 () Bool)

(declare-fun e!2714389 () Bool)

(assert (=> start!422616 (=> (not res!1793345) (not e!2714389))))

(declare-datatypes ((V!10586 0))(
  ( (V!10587 (val!16543 Int)) )
))
(declare-datatypes ((K!10340 0))(
  ( (K!10341 (val!16544 Int)) )
))
(declare-datatypes ((tuple2!48406 0))(
  ( (tuple2!48407 (_1!27497 K!10340) (_2!27497 V!10586)) )
))
(declare-datatypes ((List!49107 0))(
  ( (Nil!48983) (Cons!48983 (h!54546 tuple2!48406) (t!356027 List!49107)) )
))
(declare-datatypes ((tuple2!48408 0))(
  ( (tuple2!48409 (_1!27498 (_ BitVec 64)) (_2!27498 List!49107)) )
))
(declare-datatypes ((List!49108 0))(
  ( (Nil!48984) (Cons!48984 (h!54547 tuple2!48408) (t!356028 List!49108)) )
))
(declare-datatypes ((ListLongMap!1651 0))(
  ( (ListLongMap!1652 (toList!3001 List!49108)) )
))
(declare-fun lm!1707 () ListLongMap!1651)

(declare-fun lambda!141629 () Int)

(declare-fun forall!9156 (List!49108 Int) Bool)

(assert (=> start!422616 (= res!1793345 (forall!9156 (toList!3001 lm!1707) lambda!141629))))

(assert (=> start!422616 e!2714389))

(declare-fun e!2714394 () Bool)

(assert (=> start!422616 e!2714394))

(assert (=> start!422616 true))

(declare-fun e!2714393 () Bool)

(declare-fun inv!64526 (ListLongMap!1651) Bool)

(assert (=> start!422616 (and (inv!64526 lm!1707) e!2714393)))

(declare-fun tp_is_empty!25273 () Bool)

(assert (=> start!422616 tp_is_empty!25273))

(declare-fun tp_is_empty!25275 () Bool)

(assert (=> start!422616 tp_is_empty!25275))

(declare-fun b!4361528 () Bool)

(declare-fun res!1793338 () Bool)

(declare-fun e!2714388 () Bool)

(assert (=> b!4361528 (=> (not res!1793338) (not e!2714388))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!11219 (ListLongMap!1651 (_ BitVec 64)) Bool)

(assert (=> b!4361528 (= res!1793338 (contains!11219 lm!1707 hash!377))))

(declare-fun b!4361529 () Bool)

(declare-fun tp!1330375 () Bool)

(assert (=> b!4361529 (= e!2714393 tp!1330375)))

(declare-fun b!4361530 () Bool)

(declare-fun tp!1330376 () Bool)

(assert (=> b!4361530 (= e!2714394 (and tp_is_empty!25273 tp_is_empty!25275 tp!1330376))))

(declare-fun b!4361531 () Bool)

(declare-fun e!2714385 () Bool)

(declare-fun e!2714390 () Bool)

(assert (=> b!4361531 (= e!2714385 e!2714390)))

(declare-fun res!1793343 () Bool)

(assert (=> b!4361531 (=> res!1793343 e!2714390)))

(get-info :version)

(assert (=> b!4361531 (= res!1793343 (or (and ((_ is Cons!48984) (toList!3001 lm!1707)) (= (_1!27498 (h!54547 (toList!3001 lm!1707))) hash!377)) (not ((_ is Cons!48984) (toList!3001 lm!1707))) (= (_1!27498 (h!54547 (toList!3001 lm!1707))) hash!377)))))

(declare-fun e!2714391 () Bool)

(assert (=> b!4361531 e!2714391))

(declare-fun res!1793335 () Bool)

(assert (=> b!4361531 (=> (not res!1793335) (not e!2714391))))

(declare-fun lt!1574070 () ListLongMap!1651)

(assert (=> b!4361531 (= res!1793335 (forall!9156 (toList!3001 lt!1574070) lambda!141629))))

(declare-fun lt!1574085 () tuple2!48408)

(declare-fun +!675 (ListLongMap!1651 tuple2!48408) ListLongMap!1651)

(assert (=> b!4361531 (= lt!1574070 (+!675 lm!1707 lt!1574085))))

(declare-fun newBucket!200 () List!49107)

(assert (=> b!4361531 (= lt!1574085 (tuple2!48409 hash!377 newBucket!200))))

(declare-datatypes ((Unit!72449 0))(
  ( (Unit!72450) )
))
(declare-fun lt!1574082 () Unit!72449)

(declare-fun addValidProp!163 (ListLongMap!1651 Int (_ BitVec 64) List!49107) Unit!72449)

(assert (=> b!4361531 (= lt!1574082 (addValidProp!163 lm!1707 lambda!141629 hash!377 newBucket!200))))

(assert (=> b!4361531 (forall!9156 (toList!3001 lm!1707) lambda!141629)))

(declare-fun b!4361532 () Bool)

(declare-fun res!1793346 () Bool)

(assert (=> b!4361532 (=> (not res!1793346) (not e!2714389))))

(declare-datatypes ((Hashable!4901 0))(
  ( (HashableExt!4900 (__x!30604 Int)) )
))
(declare-fun hashF!1247 () Hashable!4901)

(declare-fun key!3918 () K!10340)

(declare-fun hash!1621 (Hashable!4901 K!10340) (_ BitVec 64))

(assert (=> b!4361532 (= res!1793346 (= (hash!1621 hashF!1247 key!3918) hash!377))))

(declare-fun b!4361533 () Bool)

(declare-fun res!1793341 () Bool)

(assert (=> b!4361533 (=> res!1793341 e!2714385)))

(declare-fun noDuplicateKeys!509 (List!49107) Bool)

(assert (=> b!4361533 (= res!1793341 (not (noDuplicateKeys!509 newBucket!200)))))

(declare-fun b!4361534 () Bool)

(declare-fun e!2714387 () Bool)

(declare-fun isEmpty!28217 (ListLongMap!1651) Bool)

(assert (=> b!4361534 (= e!2714387 (not (isEmpty!28217 lm!1707)))))

(declare-datatypes ((ListMap!2245 0))(
  ( (ListMap!2246 (toList!3002 List!49107)) )
))
(declare-fun lt!1574072 () ListMap!2245)

(declare-fun lt!1574080 () tuple2!48406)

(declare-fun lt!1574067 () ListMap!2245)

(declare-fun eq!279 (ListMap!2245 ListMap!2245) Bool)

(declare-fun +!676 (ListMap!2245 tuple2!48406) ListMap!2245)

(assert (=> b!4361534 (eq!279 (+!676 lt!1574072 lt!1574080) lt!1574067)))

(declare-fun lt!1574088 () Unit!72449)

(declare-fun lt!1574075 () ListMap!2245)

(declare-fun newValue!99 () V!10586)

(declare-fun lemmaAddToEqMapsPreservesEq!2 (ListMap!2245 ListMap!2245 K!10340 V!10586) Unit!72449)

(assert (=> b!4361534 (= lt!1574088 (lemmaAddToEqMapsPreservesEq!2 lt!1574072 lt!1574075 key!3918 newValue!99))))

(declare-fun b!4361535 () Bool)

(declare-fun e!2714392 () Bool)

(declare-fun head!9080 (ListLongMap!1651) tuple2!48408)

(assert (=> b!4361535 (= e!2714392 (not (= (head!9080 lm!1707) lt!1574085)))))

(declare-fun b!4361536 () Bool)

(assert (=> b!4361536 (= e!2714388 (not e!2714385))))

(declare-fun res!1793337 () Bool)

(assert (=> b!4361536 (=> res!1793337 e!2714385)))

(declare-fun lt!1574083 () List!49107)

(declare-fun removePairForKey!479 (List!49107 K!10340) List!49107)

(assert (=> b!4361536 (= res!1793337 (not (= newBucket!200 (Cons!48983 lt!1574080 (removePairForKey!479 lt!1574083 key!3918)))))))

(assert (=> b!4361536 (= lt!1574080 (tuple2!48407 key!3918 newValue!99))))

(declare-fun lt!1574086 () tuple2!48408)

(declare-fun lt!1574081 () Unit!72449)

(declare-fun forallContained!1797 (List!49108 Int tuple2!48408) Unit!72449)

(assert (=> b!4361536 (= lt!1574081 (forallContained!1797 (toList!3001 lm!1707) lambda!141629 lt!1574086))))

(declare-fun contains!11220 (List!49108 tuple2!48408) Bool)

(assert (=> b!4361536 (contains!11220 (toList!3001 lm!1707) lt!1574086)))

(assert (=> b!4361536 (= lt!1574086 (tuple2!48409 hash!377 lt!1574083))))

(declare-fun lt!1574084 () Unit!72449)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!356 (List!49108 (_ BitVec 64) List!49107) Unit!72449)

(assert (=> b!4361536 (= lt!1574084 (lemmaGetValueByKeyImpliesContainsTuple!356 (toList!3001 lm!1707) hash!377 lt!1574083))))

(declare-fun apply!11361 (ListLongMap!1651 (_ BitVec 64)) List!49107)

(assert (=> b!4361536 (= lt!1574083 (apply!11361 lm!1707 hash!377))))

(declare-fun b!4361537 () Bool)

(declare-fun res!1793340 () Bool)

(assert (=> b!4361537 (=> (not res!1793340) (not e!2714389))))

(declare-fun allKeysSameHash!467 (List!49107 (_ BitVec 64) Hashable!4901) Bool)

(assert (=> b!4361537 (= res!1793340 (allKeysSameHash!467 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4361538 () Bool)

(declare-fun res!1793344 () Bool)

(assert (=> b!4361538 (=> (not res!1793344) (not e!2714389))))

(declare-fun allKeysSameHashInMap!613 (ListLongMap!1651 Hashable!4901) Bool)

(assert (=> b!4361538 (= res!1793344 (allKeysSameHashInMap!613 lm!1707 hashF!1247))))

(declare-fun b!4361539 () Bool)

(declare-fun e!2714386 () Bool)

(declare-fun containsKey!734 (List!49107 K!10340) Bool)

(assert (=> b!4361539 (= e!2714386 (not (containsKey!734 (_2!27498 (h!54547 (toList!3001 lm!1707))) key!3918)))))

(declare-fun b!4361540 () Bool)

(assert (=> b!4361540 (= e!2714390 e!2714387)))

(declare-fun res!1793347 () Bool)

(assert (=> b!4361540 (=> res!1793347 e!2714387)))

(assert (=> b!4361540 (= res!1793347 (not (eq!279 lt!1574075 lt!1574072)))))

(declare-fun lt!1574076 () ListMap!2245)

(assert (=> b!4361540 (eq!279 lt!1574076 lt!1574067)))

(assert (=> b!4361540 (= lt!1574067 (+!676 lt!1574075 lt!1574080))))

(declare-fun lt!1574071 () ListMap!2245)

(declare-fun addToMapMapFromBucket!205 (List!49107 ListMap!2245) ListMap!2245)

(assert (=> b!4361540 (= lt!1574076 (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 lm!1707))) lt!1574071))))

(declare-fun lt!1574078 () Unit!72449)

(declare-fun lt!1574079 () ListMap!2245)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!88 (ListMap!2245 K!10340 V!10586 List!49107) Unit!72449)

(assert (=> b!4361540 (= lt!1574078 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!88 lt!1574079 key!3918 newValue!99 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))

(assert (=> b!4361540 (= lt!1574072 lt!1574075)))

(assert (=> b!4361540 (= lt!1574075 (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 lm!1707))) lt!1574079))))

(assert (=> b!4361540 e!2714392))

(declare-fun res!1793342 () Bool)

(assert (=> b!4361540 (=> (not res!1793342) (not e!2714392))))

(declare-fun lt!1574087 () ListMap!2245)

(assert (=> b!4361540 (= res!1793342 (eq!279 lt!1574087 lt!1574071))))

(assert (=> b!4361540 (= lt!1574071 (+!676 lt!1574079 lt!1574080))))

(declare-fun lt!1574068 () ListLongMap!1651)

(declare-fun extractMap!568 (List!49108) ListMap!2245)

(assert (=> b!4361540 (= lt!1574087 (extractMap!568 (toList!3001 (+!675 lt!1574068 lt!1574085))))))

(declare-fun lt!1574073 () Unit!72449)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!113 (ListLongMap!1651 (_ BitVec 64) List!49107 K!10340 V!10586 Hashable!4901) Unit!72449)

(assert (=> b!4361540 (= lt!1574073 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!113 lt!1574068 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11221 (ListMap!2245 K!10340) Bool)

(assert (=> b!4361540 (contains!11221 lt!1574079 key!3918)))

(assert (=> b!4361540 (= lt!1574079 (extractMap!568 (toList!3001 lt!1574068)))))

(declare-fun tail!7028 (ListLongMap!1651) ListLongMap!1651)

(assert (=> b!4361540 (= lt!1574068 (tail!7028 lm!1707))))

(declare-fun lt!1574069 () ListMap!2245)

(assert (=> b!4361540 (contains!11221 lt!1574069 key!3918)))

(declare-fun lt!1574077 () Unit!72449)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!52 (List!49107 K!10340 V!10586 ListMap!2245) Unit!72449)

(assert (=> b!4361540 (= lt!1574077 (lemmaAddToMapContainsAndNotInListThenInAcc!52 (_2!27498 (h!54547 (toList!3001 lm!1707))) key!3918 newValue!99 lt!1574069))))

(assert (=> b!4361540 (= lt!1574069 (extractMap!568 (t!356028 (toList!3001 lm!1707))))))

(assert (=> b!4361540 e!2714386))

(declare-fun res!1793339 () Bool)

(assert (=> b!4361540 (=> (not res!1793339) (not e!2714386))))

(assert (=> b!4361540 (= res!1793339 (not (containsKey!734 (apply!11361 lm!1707 (_1!27498 (h!54547 (toList!3001 lm!1707)))) key!3918)))))

(declare-fun lt!1574074 () Unit!72449)

(declare-fun lemmaNotSameHashThenCannotContainKey!56 (ListLongMap!1651 K!10340 (_ BitVec 64) Hashable!4901) Unit!72449)

(assert (=> b!4361540 (= lt!1574074 (lemmaNotSameHashThenCannotContainKey!56 lm!1707 key!3918 (_1!27498 (h!54547 (toList!3001 lm!1707))) hashF!1247))))

(declare-fun b!4361541 () Bool)

(assert (=> b!4361541 (= e!2714391 (forall!9156 (toList!3001 lt!1574070) lambda!141629))))

(declare-fun b!4361542 () Bool)

(assert (=> b!4361542 (= e!2714389 e!2714388)))

(declare-fun res!1793336 () Bool)

(assert (=> b!4361542 (=> (not res!1793336) (not e!2714388))))

(assert (=> b!4361542 (= res!1793336 (contains!11221 lt!1574072 key!3918))))

(assert (=> b!4361542 (= lt!1574072 (extractMap!568 (toList!3001 lm!1707)))))

(assert (= (and start!422616 res!1793345) b!4361538))

(assert (= (and b!4361538 res!1793344) b!4361532))

(assert (= (and b!4361532 res!1793346) b!4361537))

(assert (= (and b!4361537 res!1793340) b!4361542))

(assert (= (and b!4361542 res!1793336) b!4361528))

(assert (= (and b!4361528 res!1793338) b!4361536))

(assert (= (and b!4361536 (not res!1793337)) b!4361533))

(assert (= (and b!4361533 (not res!1793341)) b!4361531))

(assert (= (and b!4361531 res!1793335) b!4361541))

(assert (= (and b!4361531 (not res!1793343)) b!4361540))

(assert (= (and b!4361540 res!1793339) b!4361539))

(assert (= (and b!4361540 res!1793342) b!4361535))

(assert (= (and b!4361540 (not res!1793347)) b!4361534))

(assert (= (and start!422616 ((_ is Cons!48983) newBucket!200)) b!4361530))

(assert (= start!422616 b!4361529))

(declare-fun m!4980325 () Bool)

(assert (=> b!4361528 m!4980325))

(declare-fun m!4980327 () Bool)

(assert (=> b!4361537 m!4980327))

(declare-fun m!4980329 () Bool)

(assert (=> b!4361535 m!4980329))

(declare-fun m!4980331 () Bool)

(assert (=> b!4361534 m!4980331))

(declare-fun m!4980333 () Bool)

(assert (=> b!4361534 m!4980333))

(assert (=> b!4361534 m!4980333))

(declare-fun m!4980335 () Bool)

(assert (=> b!4361534 m!4980335))

(declare-fun m!4980337 () Bool)

(assert (=> b!4361534 m!4980337))

(declare-fun m!4980339 () Bool)

(assert (=> b!4361541 m!4980339))

(declare-fun m!4980341 () Bool)

(assert (=> start!422616 m!4980341))

(declare-fun m!4980343 () Bool)

(assert (=> start!422616 m!4980343))

(declare-fun m!4980345 () Bool)

(assert (=> b!4361539 m!4980345))

(declare-fun m!4980347 () Bool)

(assert (=> b!4361542 m!4980347))

(declare-fun m!4980349 () Bool)

(assert (=> b!4361542 m!4980349))

(declare-fun m!4980351 () Bool)

(assert (=> b!4361536 m!4980351))

(declare-fun m!4980353 () Bool)

(assert (=> b!4361536 m!4980353))

(declare-fun m!4980355 () Bool)

(assert (=> b!4361536 m!4980355))

(declare-fun m!4980357 () Bool)

(assert (=> b!4361536 m!4980357))

(declare-fun m!4980359 () Bool)

(assert (=> b!4361536 m!4980359))

(declare-fun m!4980361 () Bool)

(assert (=> b!4361538 m!4980361))

(assert (=> b!4361531 m!4980339))

(declare-fun m!4980363 () Bool)

(assert (=> b!4361531 m!4980363))

(declare-fun m!4980365 () Bool)

(assert (=> b!4361531 m!4980365))

(assert (=> b!4361531 m!4980341))

(declare-fun m!4980367 () Bool)

(assert (=> b!4361532 m!4980367))

(declare-fun m!4980369 () Bool)

(assert (=> b!4361533 m!4980369))

(declare-fun m!4980371 () Bool)

(assert (=> b!4361540 m!4980371))

(declare-fun m!4980373 () Bool)

(assert (=> b!4361540 m!4980373))

(declare-fun m!4980375 () Bool)

(assert (=> b!4361540 m!4980375))

(declare-fun m!4980377 () Bool)

(assert (=> b!4361540 m!4980377))

(declare-fun m!4980379 () Bool)

(assert (=> b!4361540 m!4980379))

(declare-fun m!4980381 () Bool)

(assert (=> b!4361540 m!4980381))

(declare-fun m!4980383 () Bool)

(assert (=> b!4361540 m!4980383))

(declare-fun m!4980385 () Bool)

(assert (=> b!4361540 m!4980385))

(declare-fun m!4980387 () Bool)

(assert (=> b!4361540 m!4980387))

(declare-fun m!4980389 () Bool)

(assert (=> b!4361540 m!4980389))

(declare-fun m!4980391 () Bool)

(assert (=> b!4361540 m!4980391))

(declare-fun m!4980393 () Bool)

(assert (=> b!4361540 m!4980393))

(declare-fun m!4980395 () Bool)

(assert (=> b!4361540 m!4980395))

(declare-fun m!4980397 () Bool)

(assert (=> b!4361540 m!4980397))

(declare-fun m!4980399 () Bool)

(assert (=> b!4361540 m!4980399))

(declare-fun m!4980401 () Bool)

(assert (=> b!4361540 m!4980401))

(declare-fun m!4980403 () Bool)

(assert (=> b!4361540 m!4980403))

(declare-fun m!4980405 () Bool)

(assert (=> b!4361540 m!4980405))

(declare-fun m!4980407 () Bool)

(assert (=> b!4361540 m!4980407))

(assert (=> b!4361540 m!4980407))

(declare-fun m!4980409 () Bool)

(assert (=> b!4361540 m!4980409))

(check-sat (not b!4361528) (not b!4361533) tp_is_empty!25273 tp_is_empty!25275 (not b!4361531) (not b!4361537) (not b!4361529) (not b!4361541) (not start!422616) (not b!4361535) (not b!4361538) (not b!4361532) (not b!4361534) (not b!4361542) (not b!4361540) (not b!4361539) (not b!4361536) (not b!4361530))
(check-sat)
(get-model)

(declare-fun d!1290352 () Bool)

(declare-fun res!1793364 () Bool)

(declare-fun e!2714417 () Bool)

(assert (=> d!1290352 (=> res!1793364 e!2714417)))

(assert (=> d!1290352 (= res!1793364 ((_ is Nil!48984) (toList!3001 lm!1707)))))

(assert (=> d!1290352 (= (forall!9156 (toList!3001 lm!1707) lambda!141629) e!2714417)))

(declare-fun b!4361571 () Bool)

(declare-fun e!2714418 () Bool)

(assert (=> b!4361571 (= e!2714417 e!2714418)))

(declare-fun res!1793365 () Bool)

(assert (=> b!4361571 (=> (not res!1793365) (not e!2714418))))

(declare-fun dynLambda!20651 (Int tuple2!48408) Bool)

(assert (=> b!4361571 (= res!1793365 (dynLambda!20651 lambda!141629 (h!54547 (toList!3001 lm!1707))))))

(declare-fun b!4361572 () Bool)

(assert (=> b!4361572 (= e!2714418 (forall!9156 (t!356028 (toList!3001 lm!1707)) lambda!141629))))

(assert (= (and d!1290352 (not res!1793364)) b!4361571))

(assert (= (and b!4361571 res!1793365) b!4361572))

(declare-fun b_lambda!131869 () Bool)

(assert (=> (not b_lambda!131869) (not b!4361571)))

(declare-fun m!4980437 () Bool)

(assert (=> b!4361571 m!4980437))

(declare-fun m!4980439 () Bool)

(assert (=> b!4361572 m!4980439))

(assert (=> start!422616 d!1290352))

(declare-fun d!1290354 () Bool)

(declare-fun isStrictlySorted!116 (List!49108) Bool)

(assert (=> d!1290354 (= (inv!64526 lm!1707) (isStrictlySorted!116 (toList!3001 lm!1707)))))

(declare-fun bs!634846 () Bool)

(assert (= bs!634846 d!1290354))

(declare-fun m!4980441 () Bool)

(assert (=> bs!634846 m!4980441))

(assert (=> start!422616 d!1290354))

(declare-fun d!1290356 () Bool)

(declare-fun res!1793372 () Bool)

(declare-fun e!2714431 () Bool)

(assert (=> d!1290356 (=> res!1793372 e!2714431)))

(assert (=> d!1290356 (= res!1793372 ((_ is Nil!48984) (toList!3001 lt!1574070)))))

(assert (=> d!1290356 (= (forall!9156 (toList!3001 lt!1574070) lambda!141629) e!2714431)))

(declare-fun b!4361591 () Bool)

(declare-fun e!2714432 () Bool)

(assert (=> b!4361591 (= e!2714431 e!2714432)))

(declare-fun res!1793373 () Bool)

(assert (=> b!4361591 (=> (not res!1793373) (not e!2714432))))

(assert (=> b!4361591 (= res!1793373 (dynLambda!20651 lambda!141629 (h!54547 (toList!3001 lt!1574070))))))

(declare-fun b!4361592 () Bool)

(assert (=> b!4361592 (= e!2714432 (forall!9156 (t!356028 (toList!3001 lt!1574070)) lambda!141629))))

(assert (= (and d!1290356 (not res!1793372)) b!4361591))

(assert (= (and b!4361591 res!1793373) b!4361592))

(declare-fun b_lambda!131871 () Bool)

(assert (=> (not b_lambda!131871) (not b!4361591)))

(declare-fun m!4980443 () Bool)

(assert (=> b!4361591 m!4980443))

(declare-fun m!4980445 () Bool)

(assert (=> b!4361592 m!4980445))

(assert (=> b!4361541 d!1290356))

(declare-fun d!1290358 () Bool)

(declare-fun res!1793381 () Bool)

(declare-fun e!2714443 () Bool)

(assert (=> d!1290358 (=> res!1793381 e!2714443)))

(assert (=> d!1290358 (= res!1793381 (and ((_ is Cons!48983) (_2!27498 (h!54547 (toList!3001 lm!1707)))) (= (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) key!3918)))))

(assert (=> d!1290358 (= (containsKey!734 (_2!27498 (h!54547 (toList!3001 lm!1707))) key!3918) e!2714443)))

(declare-fun b!4361606 () Bool)

(declare-fun e!2714444 () Bool)

(assert (=> b!4361606 (= e!2714443 e!2714444)))

(declare-fun res!1793382 () Bool)

(assert (=> b!4361606 (=> (not res!1793382) (not e!2714444))))

(assert (=> b!4361606 (= res!1793382 ((_ is Cons!48983) (_2!27498 (h!54547 (toList!3001 lm!1707)))))))

(declare-fun b!4361607 () Bool)

(assert (=> b!4361607 (= e!2714444 (containsKey!734 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) key!3918))))

(assert (= (and d!1290358 (not res!1793381)) b!4361606))

(assert (= (and b!4361606 res!1793382) b!4361607))

(declare-fun m!4980467 () Bool)

(assert (=> b!4361607 m!4980467))

(assert (=> b!4361539 d!1290358))

(declare-fun d!1290362 () Bool)

(declare-fun e!2714450 () Bool)

(assert (=> d!1290362 e!2714450))

(declare-fun res!1793388 () Bool)

(assert (=> d!1290362 (=> (not res!1793388) (not e!2714450))))

(declare-fun lt!1574138 () ListLongMap!1651)

(assert (=> d!1290362 (= res!1793388 (contains!11219 lt!1574138 (_1!27498 lt!1574085)))))

(declare-fun lt!1574137 () List!49108)

(assert (=> d!1290362 (= lt!1574138 (ListLongMap!1652 lt!1574137))))

(declare-fun lt!1574139 () Unit!72449)

(declare-fun lt!1574136 () Unit!72449)

(assert (=> d!1290362 (= lt!1574139 lt!1574136)))

(declare-datatypes ((Option!10492 0))(
  ( (None!10491) (Some!10491 (v!43403 List!49107)) )
))
(declare-fun getValueByKey!478 (List!49108 (_ BitVec 64)) Option!10492)

(assert (=> d!1290362 (= (getValueByKey!478 lt!1574137 (_1!27498 lt!1574085)) (Some!10491 (_2!27498 lt!1574085)))))

(declare-fun lemmaContainsTupThenGetReturnValue!251 (List!49108 (_ BitVec 64) List!49107) Unit!72449)

(assert (=> d!1290362 (= lt!1574136 (lemmaContainsTupThenGetReturnValue!251 lt!1574137 (_1!27498 lt!1574085) (_2!27498 lt!1574085)))))

(declare-fun insertStrictlySorted!147 (List!49108 (_ BitVec 64) List!49107) List!49108)

(assert (=> d!1290362 (= lt!1574137 (insertStrictlySorted!147 (toList!3001 lt!1574068) (_1!27498 lt!1574085) (_2!27498 lt!1574085)))))

(assert (=> d!1290362 (= (+!675 lt!1574068 lt!1574085) lt!1574138)))

(declare-fun b!4361618 () Bool)

(declare-fun res!1793387 () Bool)

(assert (=> b!4361618 (=> (not res!1793387) (not e!2714450))))

(assert (=> b!4361618 (= res!1793387 (= (getValueByKey!478 (toList!3001 lt!1574138) (_1!27498 lt!1574085)) (Some!10491 (_2!27498 lt!1574085))))))

(declare-fun b!4361619 () Bool)

(assert (=> b!4361619 (= e!2714450 (contains!11220 (toList!3001 lt!1574138) lt!1574085))))

(assert (= (and d!1290362 res!1793388) b!4361618))

(assert (= (and b!4361618 res!1793387) b!4361619))

(declare-fun m!4980475 () Bool)

(assert (=> d!1290362 m!4980475))

(declare-fun m!4980477 () Bool)

(assert (=> d!1290362 m!4980477))

(declare-fun m!4980479 () Bool)

(assert (=> d!1290362 m!4980479))

(declare-fun m!4980481 () Bool)

(assert (=> d!1290362 m!4980481))

(declare-fun m!4980483 () Bool)

(assert (=> b!4361618 m!4980483))

(declare-fun m!4980485 () Bool)

(assert (=> b!4361619 m!4980485))

(assert (=> b!4361540 d!1290362))

(declare-fun d!1290366 () Bool)

(declare-fun get!15917 (Option!10492) List!49107)

(assert (=> d!1290366 (= (apply!11361 lm!1707 (_1!27498 (h!54547 (toList!3001 lm!1707)))) (get!15917 (getValueByKey!478 (toList!3001 lm!1707) (_1!27498 (h!54547 (toList!3001 lm!1707))))))))

(declare-fun bs!634848 () Bool)

(assert (= bs!634848 d!1290366))

(declare-fun m!4980487 () Bool)

(assert (=> bs!634848 m!4980487))

(assert (=> bs!634848 m!4980487))

(declare-fun m!4980489 () Bool)

(assert (=> bs!634848 m!4980489))

(assert (=> b!4361540 d!1290366))

(declare-fun bs!634855 () Bool)

(declare-fun d!1290368 () Bool)

(assert (= bs!634855 (and d!1290368 start!422616)))

(declare-fun lambda!141639 () Int)

(assert (=> bs!634855 (= lambda!141639 lambda!141629)))

(assert (=> d!1290368 (eq!279 (extractMap!568 (toList!3001 (+!675 lt!1574068 (tuple2!48409 hash!377 newBucket!200)))) (+!676 (extractMap!568 (toList!3001 lt!1574068)) (tuple2!48407 key!3918 newValue!99)))))

(declare-fun lt!1574183 () Unit!72449)

(declare-fun choose!27032 (ListLongMap!1651 (_ BitVec 64) List!49107 K!10340 V!10586 Hashable!4901) Unit!72449)

(assert (=> d!1290368 (= lt!1574183 (choose!27032 lt!1574068 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1290368 (forall!9156 (toList!3001 lt!1574068) lambda!141639)))

(assert (=> d!1290368 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!113 lt!1574068 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1574183)))

(declare-fun bs!634856 () Bool)

(assert (= bs!634856 d!1290368))

(declare-fun m!4980571 () Bool)

(assert (=> bs!634856 m!4980571))

(declare-fun m!4980573 () Bool)

(assert (=> bs!634856 m!4980573))

(declare-fun m!4980575 () Bool)

(assert (=> bs!634856 m!4980575))

(assert (=> bs!634856 m!4980405))

(declare-fun m!4980577 () Bool)

(assert (=> bs!634856 m!4980577))

(declare-fun m!4980579 () Bool)

(assert (=> bs!634856 m!4980579))

(declare-fun m!4980581 () Bool)

(assert (=> bs!634856 m!4980581))

(assert (=> bs!634856 m!4980405))

(assert (=> bs!634856 m!4980573))

(assert (=> bs!634856 m!4980571))

(assert (=> b!4361540 d!1290368))

(declare-fun d!1290390 () Bool)

(declare-fun e!2714481 () Bool)

(assert (=> d!1290390 e!2714481))

(declare-fun res!1793415 () Bool)

(assert (=> d!1290390 (=> (not res!1793415) (not e!2714481))))

(declare-fun lt!1574195 () ListMap!2245)

(assert (=> d!1290390 (= res!1793415 (contains!11221 lt!1574195 (_1!27497 lt!1574080)))))

(declare-fun lt!1574193 () List!49107)

(assert (=> d!1290390 (= lt!1574195 (ListMap!2246 lt!1574193))))

(declare-fun lt!1574192 () Unit!72449)

(declare-fun lt!1574194 () Unit!72449)

(assert (=> d!1290390 (= lt!1574192 lt!1574194)))

(declare-datatypes ((Option!10493 0))(
  ( (None!10492) (Some!10492 (v!43404 V!10586)) )
))
(declare-fun getValueByKey!479 (List!49107 K!10340) Option!10493)

(assert (=> d!1290390 (= (getValueByKey!479 lt!1574193 (_1!27497 lt!1574080)) (Some!10492 (_2!27497 lt!1574080)))))

(declare-fun lemmaContainsTupThenGetReturnValue!252 (List!49107 K!10340 V!10586) Unit!72449)

(assert (=> d!1290390 (= lt!1574194 (lemmaContainsTupThenGetReturnValue!252 lt!1574193 (_1!27497 lt!1574080) (_2!27497 lt!1574080)))))

(declare-fun insertNoDuplicatedKeys!113 (List!49107 K!10340 V!10586) List!49107)

(assert (=> d!1290390 (= lt!1574193 (insertNoDuplicatedKeys!113 (toList!3002 lt!1574079) (_1!27497 lt!1574080) (_2!27497 lt!1574080)))))

(assert (=> d!1290390 (= (+!676 lt!1574079 lt!1574080) lt!1574195)))

(declare-fun b!4361669 () Bool)

(declare-fun res!1793414 () Bool)

(assert (=> b!4361669 (=> (not res!1793414) (not e!2714481))))

(assert (=> b!4361669 (= res!1793414 (= (getValueByKey!479 (toList!3002 lt!1574195) (_1!27497 lt!1574080)) (Some!10492 (_2!27497 lt!1574080))))))

(declare-fun b!4361670 () Bool)

(declare-fun contains!11223 (List!49107 tuple2!48406) Bool)

(assert (=> b!4361670 (= e!2714481 (contains!11223 (toList!3002 lt!1574195) lt!1574080))))

(assert (= (and d!1290390 res!1793415) b!4361669))

(assert (= (and b!4361669 res!1793414) b!4361670))

(declare-fun m!4980583 () Bool)

(assert (=> d!1290390 m!4980583))

(declare-fun m!4980585 () Bool)

(assert (=> d!1290390 m!4980585))

(declare-fun m!4980587 () Bool)

(assert (=> d!1290390 m!4980587))

(declare-fun m!4980589 () Bool)

(assert (=> d!1290390 m!4980589))

(declare-fun m!4980591 () Bool)

(assert (=> b!4361669 m!4980591))

(declare-fun m!4980593 () Bool)

(assert (=> b!4361670 m!4980593))

(assert (=> b!4361540 d!1290390))

(declare-fun d!1290392 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7748 (List!49107) (InoxSet tuple2!48406))

(assert (=> d!1290392 (= (eq!279 lt!1574076 lt!1574067) (= (content!7748 (toList!3002 lt!1574076)) (content!7748 (toList!3002 lt!1574067))))))

(declare-fun bs!634857 () Bool)

(assert (= bs!634857 d!1290392))

(declare-fun m!4980595 () Bool)

(assert (=> bs!634857 m!4980595))

(declare-fun m!4980597 () Bool)

(assert (=> bs!634857 m!4980597))

(assert (=> b!4361540 d!1290392))

(declare-fun d!1290394 () Bool)

(assert (=> d!1290394 (= (eq!279 lt!1574087 lt!1574071) (= (content!7748 (toList!3002 lt!1574087)) (content!7748 (toList!3002 lt!1574071))))))

(declare-fun bs!634858 () Bool)

(assert (= bs!634858 d!1290394))

(declare-fun m!4980599 () Bool)

(assert (=> bs!634858 m!4980599))

(declare-fun m!4980601 () Bool)

(assert (=> bs!634858 m!4980601))

(assert (=> b!4361540 d!1290394))

(declare-fun bs!634859 () Bool)

(declare-fun d!1290396 () Bool)

(assert (= bs!634859 (and d!1290396 start!422616)))

(declare-fun lambda!141642 () Int)

(assert (=> bs!634859 (= lambda!141642 lambda!141629)))

(declare-fun bs!634860 () Bool)

(assert (= bs!634860 (and d!1290396 d!1290368)))

(assert (=> bs!634860 (= lambda!141642 lambda!141639)))

(declare-fun lt!1574198 () ListMap!2245)

(declare-fun invariantList!690 (List!49107) Bool)

(assert (=> d!1290396 (invariantList!690 (toList!3002 lt!1574198))))

(declare-fun e!2714484 () ListMap!2245)

(assert (=> d!1290396 (= lt!1574198 e!2714484)))

(declare-fun c!741633 () Bool)

(assert (=> d!1290396 (= c!741633 ((_ is Cons!48984) (toList!3001 lt!1574068)))))

(assert (=> d!1290396 (forall!9156 (toList!3001 lt!1574068) lambda!141642)))

(assert (=> d!1290396 (= (extractMap!568 (toList!3001 lt!1574068)) lt!1574198)))

(declare-fun b!4361675 () Bool)

(assert (=> b!4361675 (= e!2714484 (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 lt!1574068))) (extractMap!568 (t!356028 (toList!3001 lt!1574068)))))))

(declare-fun b!4361676 () Bool)

(assert (=> b!4361676 (= e!2714484 (ListMap!2246 Nil!48983))))

(assert (= (and d!1290396 c!741633) b!4361675))

(assert (= (and d!1290396 (not c!741633)) b!4361676))

(declare-fun m!4980603 () Bool)

(assert (=> d!1290396 m!4980603))

(declare-fun m!4980605 () Bool)

(assert (=> d!1290396 m!4980605))

(declare-fun m!4980607 () Bool)

(assert (=> b!4361675 m!4980607))

(assert (=> b!4361675 m!4980607))

(declare-fun m!4980609 () Bool)

(assert (=> b!4361675 m!4980609))

(assert (=> b!4361540 d!1290396))

(declare-fun b!4361695 () Bool)

(declare-fun e!2714502 () Unit!72449)

(declare-fun e!2714501 () Unit!72449)

(assert (=> b!4361695 (= e!2714502 e!2714501)))

(declare-fun c!741641 () Bool)

(declare-fun call!303183 () Bool)

(assert (=> b!4361695 (= c!741641 call!303183)))

(declare-fun b!4361696 () Bool)

(declare-fun Unit!72480 () Unit!72449)

(assert (=> b!4361696 (= e!2714501 Unit!72480)))

(declare-fun b!4361697 () Bool)

(declare-fun e!2714500 () Bool)

(declare-fun e!2714498 () Bool)

(assert (=> b!4361697 (= e!2714500 e!2714498)))

(declare-fun res!1793422 () Bool)

(assert (=> b!4361697 (=> (not res!1793422) (not e!2714498))))

(declare-fun isDefined!7786 (Option!10493) Bool)

(assert (=> b!4361697 (= res!1793422 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574079) key!3918)))))

(declare-fun b!4361698 () Bool)

(assert (=> b!4361698 false))

(declare-fun lt!1574215 () Unit!72449)

(declare-fun lt!1574221 () Unit!72449)

(assert (=> b!4361698 (= lt!1574215 lt!1574221)))

(declare-fun containsKey!737 (List!49107 K!10340) Bool)

(assert (=> b!4361698 (containsKey!737 (toList!3002 lt!1574079) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!136 (List!49107 K!10340) Unit!72449)

(assert (=> b!4361698 (= lt!1574221 (lemmaInGetKeysListThenContainsKey!136 (toList!3002 lt!1574079) key!3918))))

(declare-fun Unit!72481 () Unit!72449)

(assert (=> b!4361698 (= e!2714501 Unit!72481)))

(declare-fun b!4361699 () Bool)

(declare-fun e!2714497 () Bool)

(declare-datatypes ((List!49110 0))(
  ( (Nil!48986) (Cons!48986 (h!54551 K!10340) (t!356030 List!49110)) )
))
(declare-fun contains!11225 (List!49110 K!10340) Bool)

(declare-fun keys!16560 (ListMap!2245) List!49110)

(assert (=> b!4361699 (= e!2714497 (not (contains!11225 (keys!16560 lt!1574079) key!3918)))))

(declare-fun b!4361700 () Bool)

(declare-fun e!2714499 () List!49110)

(assert (=> b!4361700 (= e!2714499 (keys!16560 lt!1574079))))

(declare-fun b!4361701 () Bool)

(declare-fun getKeysList!138 (List!49107) List!49110)

(assert (=> b!4361701 (= e!2714499 (getKeysList!138 (toList!3002 lt!1574079)))))

(declare-fun bm!303178 () Bool)

(assert (=> bm!303178 (= call!303183 (contains!11225 e!2714499 key!3918))))

(declare-fun c!741642 () Bool)

(declare-fun c!741640 () Bool)

(assert (=> bm!303178 (= c!741642 c!741640)))

(declare-fun b!4361702 () Bool)

(assert (=> b!4361702 (= e!2714498 (contains!11225 (keys!16560 lt!1574079) key!3918))))

(declare-fun b!4361703 () Bool)

(declare-fun lt!1574220 () Unit!72449)

(assert (=> b!4361703 (= e!2714502 lt!1574220)))

(declare-fun lt!1574217 () Unit!72449)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!389 (List!49107 K!10340) Unit!72449)

(assert (=> b!4361703 (= lt!1574217 (lemmaContainsKeyImpliesGetValueByKeyDefined!389 (toList!3002 lt!1574079) key!3918))))

(assert (=> b!4361703 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574079) key!3918))))

(declare-fun lt!1574222 () Unit!72449)

(assert (=> b!4361703 (= lt!1574222 lt!1574217)))

(declare-fun lemmaInListThenGetKeysListContains!135 (List!49107 K!10340) Unit!72449)

(assert (=> b!4361703 (= lt!1574220 (lemmaInListThenGetKeysListContains!135 (toList!3002 lt!1574079) key!3918))))

(assert (=> b!4361703 call!303183))

(declare-fun d!1290398 () Bool)

(assert (=> d!1290398 e!2714500))

(declare-fun res!1793424 () Bool)

(assert (=> d!1290398 (=> res!1793424 e!2714500)))

(assert (=> d!1290398 (= res!1793424 e!2714497)))

(declare-fun res!1793423 () Bool)

(assert (=> d!1290398 (=> (not res!1793423) (not e!2714497))))

(declare-fun lt!1574218 () Bool)

(assert (=> d!1290398 (= res!1793423 (not lt!1574218))))

(declare-fun lt!1574219 () Bool)

(assert (=> d!1290398 (= lt!1574218 lt!1574219)))

(declare-fun lt!1574216 () Unit!72449)

(assert (=> d!1290398 (= lt!1574216 e!2714502)))

(assert (=> d!1290398 (= c!741640 lt!1574219)))

(assert (=> d!1290398 (= lt!1574219 (containsKey!737 (toList!3002 lt!1574079) key!3918))))

(assert (=> d!1290398 (= (contains!11221 lt!1574079 key!3918) lt!1574218)))

(assert (= (and d!1290398 c!741640) b!4361703))

(assert (= (and d!1290398 (not c!741640)) b!4361695))

(assert (= (and b!4361695 c!741641) b!4361698))

(assert (= (and b!4361695 (not c!741641)) b!4361696))

(assert (= (or b!4361703 b!4361695) bm!303178))

(assert (= (and bm!303178 c!741642) b!4361701))

(assert (= (and bm!303178 (not c!741642)) b!4361700))

(assert (= (and d!1290398 res!1793423) b!4361699))

(assert (= (and d!1290398 (not res!1793424)) b!4361697))

(assert (= (and b!4361697 res!1793422) b!4361702))

(declare-fun m!4980611 () Bool)

(assert (=> b!4361699 m!4980611))

(assert (=> b!4361699 m!4980611))

(declare-fun m!4980613 () Bool)

(assert (=> b!4361699 m!4980613))

(declare-fun m!4980615 () Bool)

(assert (=> bm!303178 m!4980615))

(assert (=> b!4361702 m!4980611))

(assert (=> b!4361702 m!4980611))

(assert (=> b!4361702 m!4980613))

(declare-fun m!4980617 () Bool)

(assert (=> b!4361701 m!4980617))

(declare-fun m!4980619 () Bool)

(assert (=> d!1290398 m!4980619))

(assert (=> b!4361700 m!4980611))

(declare-fun m!4980621 () Bool)

(assert (=> b!4361697 m!4980621))

(assert (=> b!4361697 m!4980621))

(declare-fun m!4980623 () Bool)

(assert (=> b!4361697 m!4980623))

(assert (=> b!4361698 m!4980619))

(declare-fun m!4980625 () Bool)

(assert (=> b!4361698 m!4980625))

(declare-fun m!4980627 () Bool)

(assert (=> b!4361703 m!4980627))

(assert (=> b!4361703 m!4980621))

(assert (=> b!4361703 m!4980621))

(assert (=> b!4361703 m!4980623))

(declare-fun m!4980629 () Bool)

(assert (=> b!4361703 m!4980629))

(assert (=> b!4361540 d!1290398))

(declare-fun d!1290400 () Bool)

(assert (=> d!1290400 (= (eq!279 lt!1574075 lt!1574072) (= (content!7748 (toList!3002 lt!1574075)) (content!7748 (toList!3002 lt!1574072))))))

(declare-fun bs!634861 () Bool)

(assert (= bs!634861 d!1290400))

(declare-fun m!4980631 () Bool)

(assert (=> bs!634861 m!4980631))

(declare-fun m!4980633 () Bool)

(assert (=> bs!634861 m!4980633))

(assert (=> b!4361540 d!1290400))

(declare-fun d!1290402 () Bool)

(declare-fun res!1793425 () Bool)

(declare-fun e!2714503 () Bool)

(assert (=> d!1290402 (=> res!1793425 e!2714503)))

(assert (=> d!1290402 (= res!1793425 (and ((_ is Cons!48983) (apply!11361 lm!1707 (_1!27498 (h!54547 (toList!3001 lm!1707))))) (= (_1!27497 (h!54546 (apply!11361 lm!1707 (_1!27498 (h!54547 (toList!3001 lm!1707)))))) key!3918)))))

(assert (=> d!1290402 (= (containsKey!734 (apply!11361 lm!1707 (_1!27498 (h!54547 (toList!3001 lm!1707)))) key!3918) e!2714503)))

(declare-fun b!4361704 () Bool)

(declare-fun e!2714504 () Bool)

(assert (=> b!4361704 (= e!2714503 e!2714504)))

(declare-fun res!1793426 () Bool)

(assert (=> b!4361704 (=> (not res!1793426) (not e!2714504))))

(assert (=> b!4361704 (= res!1793426 ((_ is Cons!48983) (apply!11361 lm!1707 (_1!27498 (h!54547 (toList!3001 lm!1707))))))))

(declare-fun b!4361705 () Bool)

(assert (=> b!4361705 (= e!2714504 (containsKey!734 (t!356027 (apply!11361 lm!1707 (_1!27498 (h!54547 (toList!3001 lm!1707))))) key!3918))))

(assert (= (and d!1290402 (not res!1793425)) b!4361704))

(assert (= (and b!4361704 res!1793426) b!4361705))

(declare-fun m!4980635 () Bool)

(assert (=> b!4361705 m!4980635))

(assert (=> b!4361540 d!1290402))

(declare-fun d!1290404 () Bool)

(assert (=> d!1290404 (contains!11221 lt!1574069 key!3918)))

(declare-fun lt!1574225 () Unit!72449)

(declare-fun choose!27036 (List!49107 K!10340 V!10586 ListMap!2245) Unit!72449)

(assert (=> d!1290404 (= lt!1574225 (choose!27036 (_2!27498 (h!54547 (toList!3001 lm!1707))) key!3918 newValue!99 lt!1574069))))

(assert (=> d!1290404 (noDuplicateKeys!509 (_2!27498 (h!54547 (toList!3001 lm!1707))))))

(assert (=> d!1290404 (= (lemmaAddToMapContainsAndNotInListThenInAcc!52 (_2!27498 (h!54547 (toList!3001 lm!1707))) key!3918 newValue!99 lt!1574069) lt!1574225)))

(declare-fun bs!634862 () Bool)

(assert (= bs!634862 d!1290404))

(assert (=> bs!634862 m!4980383))

(declare-fun m!4980637 () Bool)

(assert (=> bs!634862 m!4980637))

(declare-fun m!4980639 () Bool)

(assert (=> bs!634862 m!4980639))

(assert (=> b!4361540 d!1290404))

(declare-fun b!4361706 () Bool)

(declare-fun e!2714510 () Unit!72449)

(declare-fun e!2714509 () Unit!72449)

(assert (=> b!4361706 (= e!2714510 e!2714509)))

(declare-fun c!741644 () Bool)

(declare-fun call!303184 () Bool)

(assert (=> b!4361706 (= c!741644 call!303184)))

(declare-fun b!4361707 () Bool)

(declare-fun Unit!72482 () Unit!72449)

(assert (=> b!4361707 (= e!2714509 Unit!72482)))

(declare-fun b!4361708 () Bool)

(declare-fun e!2714508 () Bool)

(declare-fun e!2714506 () Bool)

(assert (=> b!4361708 (= e!2714508 e!2714506)))

(declare-fun res!1793427 () Bool)

(assert (=> b!4361708 (=> (not res!1793427) (not e!2714506))))

(assert (=> b!4361708 (= res!1793427 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574069) key!3918)))))

(declare-fun b!4361709 () Bool)

(assert (=> b!4361709 false))

(declare-fun lt!1574226 () Unit!72449)

(declare-fun lt!1574232 () Unit!72449)

(assert (=> b!4361709 (= lt!1574226 lt!1574232)))

(assert (=> b!4361709 (containsKey!737 (toList!3002 lt!1574069) key!3918)))

(assert (=> b!4361709 (= lt!1574232 (lemmaInGetKeysListThenContainsKey!136 (toList!3002 lt!1574069) key!3918))))

(declare-fun Unit!72483 () Unit!72449)

(assert (=> b!4361709 (= e!2714509 Unit!72483)))

(declare-fun b!4361710 () Bool)

(declare-fun e!2714505 () Bool)

(assert (=> b!4361710 (= e!2714505 (not (contains!11225 (keys!16560 lt!1574069) key!3918)))))

(declare-fun b!4361711 () Bool)

(declare-fun e!2714507 () List!49110)

(assert (=> b!4361711 (= e!2714507 (keys!16560 lt!1574069))))

(declare-fun b!4361712 () Bool)

(assert (=> b!4361712 (= e!2714507 (getKeysList!138 (toList!3002 lt!1574069)))))

(declare-fun bm!303179 () Bool)

(assert (=> bm!303179 (= call!303184 (contains!11225 e!2714507 key!3918))))

(declare-fun c!741645 () Bool)

(declare-fun c!741643 () Bool)

(assert (=> bm!303179 (= c!741645 c!741643)))

(declare-fun b!4361713 () Bool)

(assert (=> b!4361713 (= e!2714506 (contains!11225 (keys!16560 lt!1574069) key!3918))))

(declare-fun b!4361714 () Bool)

(declare-fun lt!1574231 () Unit!72449)

(assert (=> b!4361714 (= e!2714510 lt!1574231)))

(declare-fun lt!1574228 () Unit!72449)

(assert (=> b!4361714 (= lt!1574228 (lemmaContainsKeyImpliesGetValueByKeyDefined!389 (toList!3002 lt!1574069) key!3918))))

(assert (=> b!4361714 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574069) key!3918))))

(declare-fun lt!1574233 () Unit!72449)

(assert (=> b!4361714 (= lt!1574233 lt!1574228)))

(assert (=> b!4361714 (= lt!1574231 (lemmaInListThenGetKeysListContains!135 (toList!3002 lt!1574069) key!3918))))

(assert (=> b!4361714 call!303184))

(declare-fun d!1290406 () Bool)

(assert (=> d!1290406 e!2714508))

(declare-fun res!1793429 () Bool)

(assert (=> d!1290406 (=> res!1793429 e!2714508)))

(assert (=> d!1290406 (= res!1793429 e!2714505)))

(declare-fun res!1793428 () Bool)

(assert (=> d!1290406 (=> (not res!1793428) (not e!2714505))))

(declare-fun lt!1574229 () Bool)

(assert (=> d!1290406 (= res!1793428 (not lt!1574229))))

(declare-fun lt!1574230 () Bool)

(assert (=> d!1290406 (= lt!1574229 lt!1574230)))

(declare-fun lt!1574227 () Unit!72449)

(assert (=> d!1290406 (= lt!1574227 e!2714510)))

(assert (=> d!1290406 (= c!741643 lt!1574230)))

(assert (=> d!1290406 (= lt!1574230 (containsKey!737 (toList!3002 lt!1574069) key!3918))))

(assert (=> d!1290406 (= (contains!11221 lt!1574069 key!3918) lt!1574229)))

(assert (= (and d!1290406 c!741643) b!4361714))

(assert (= (and d!1290406 (not c!741643)) b!4361706))

(assert (= (and b!4361706 c!741644) b!4361709))

(assert (= (and b!4361706 (not c!741644)) b!4361707))

(assert (= (or b!4361714 b!4361706) bm!303179))

(assert (= (and bm!303179 c!741645) b!4361712))

(assert (= (and bm!303179 (not c!741645)) b!4361711))

(assert (= (and d!1290406 res!1793428) b!4361710))

(assert (= (and d!1290406 (not res!1793429)) b!4361708))

(assert (= (and b!4361708 res!1793427) b!4361713))

(declare-fun m!4980641 () Bool)

(assert (=> b!4361710 m!4980641))

(assert (=> b!4361710 m!4980641))

(declare-fun m!4980643 () Bool)

(assert (=> b!4361710 m!4980643))

(declare-fun m!4980645 () Bool)

(assert (=> bm!303179 m!4980645))

(assert (=> b!4361713 m!4980641))

(assert (=> b!4361713 m!4980641))

(assert (=> b!4361713 m!4980643))

(declare-fun m!4980647 () Bool)

(assert (=> b!4361712 m!4980647))

(declare-fun m!4980649 () Bool)

(assert (=> d!1290406 m!4980649))

(assert (=> b!4361711 m!4980641))

(declare-fun m!4980651 () Bool)

(assert (=> b!4361708 m!4980651))

(assert (=> b!4361708 m!4980651))

(declare-fun m!4980653 () Bool)

(assert (=> b!4361708 m!4980653))

(assert (=> b!4361709 m!4980649))

(declare-fun m!4980655 () Bool)

(assert (=> b!4361709 m!4980655))

(declare-fun m!4980657 () Bool)

(assert (=> b!4361714 m!4980657))

(assert (=> b!4361714 m!4980651))

(assert (=> b!4361714 m!4980651))

(assert (=> b!4361714 m!4980653))

(declare-fun m!4980659 () Bool)

(assert (=> b!4361714 m!4980659))

(assert (=> b!4361540 d!1290406))

(declare-fun b!4361792 () Bool)

(assert (=> b!4361792 true))

(declare-fun bs!634922 () Bool)

(declare-fun b!4361789 () Bool)

(assert (= bs!634922 (and b!4361789 b!4361792)))

(declare-fun lambda!141719 () Int)

(declare-fun lambda!141718 () Int)

(assert (=> bs!634922 (= lambda!141719 lambda!141718)))

(assert (=> b!4361789 true))

(declare-fun lt!1574405 () ListMap!2245)

(declare-fun lambda!141720 () Int)

(assert (=> bs!634922 (= (= lt!1574405 lt!1574079) (= lambda!141720 lambda!141718))))

(assert (=> b!4361789 (= (= lt!1574405 lt!1574079) (= lambda!141720 lambda!141719))))

(assert (=> b!4361789 true))

(declare-fun bs!634927 () Bool)

(declare-fun d!1290408 () Bool)

(assert (= bs!634927 (and d!1290408 b!4361792)))

(declare-fun lt!1574417 () ListMap!2245)

(declare-fun lambda!141721 () Int)

(assert (=> bs!634927 (= (= lt!1574417 lt!1574079) (= lambda!141721 lambda!141718))))

(declare-fun bs!634928 () Bool)

(assert (= bs!634928 (and d!1290408 b!4361789)))

(assert (=> bs!634928 (= (= lt!1574417 lt!1574079) (= lambda!141721 lambda!141719))))

(assert (=> bs!634928 (= (= lt!1574417 lt!1574405) (= lambda!141721 lambda!141720))))

(assert (=> d!1290408 true))

(declare-fun e!2714559 () Bool)

(assert (=> d!1290408 e!2714559))

(declare-fun res!1793480 () Bool)

(assert (=> d!1290408 (=> (not res!1793480) (not e!2714559))))

(declare-fun forall!9158 (List!49107 Int) Bool)

(assert (=> d!1290408 (= res!1793480 (forall!9158 (_2!27498 (h!54547 (toList!3001 lm!1707))) lambda!141721))))

(declare-fun e!2714560 () ListMap!2245)

(assert (=> d!1290408 (= lt!1574417 e!2714560)))

(declare-fun c!741654 () Bool)

(assert (=> d!1290408 (= c!741654 ((_ is Nil!48983) (_2!27498 (h!54547 (toList!3001 lm!1707)))))))

(assert (=> d!1290408 (noDuplicateKeys!509 (_2!27498 (h!54547 (toList!3001 lm!1707))))))

(assert (=> d!1290408 (= (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 lm!1707))) lt!1574079) lt!1574417)))

(assert (=> b!4361789 (= e!2714560 lt!1574405)))

(declare-fun lt!1574408 () ListMap!2245)

(assert (=> b!4361789 (= lt!1574408 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (=> b!4361789 (= lt!1574405 (addToMapMapFromBucket!205 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun lt!1574410 () Unit!72449)

(declare-fun call!303203 () Unit!72449)

(assert (=> b!4361789 (= lt!1574410 call!303203)))

(declare-fun call!303204 () Bool)

(assert (=> b!4361789 call!303204))

(declare-fun lt!1574418 () Unit!72449)

(assert (=> b!4361789 (= lt!1574418 lt!1574410)))

(declare-fun call!303205 () Bool)

(assert (=> b!4361789 call!303205))

(declare-fun lt!1574409 () Unit!72449)

(declare-fun Unit!72484 () Unit!72449)

(assert (=> b!4361789 (= lt!1574409 Unit!72484)))

(assert (=> b!4361789 (forall!9158 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) lambda!141720)))

(declare-fun lt!1574415 () Unit!72449)

(declare-fun Unit!72485 () Unit!72449)

(assert (=> b!4361789 (= lt!1574415 Unit!72485)))

(declare-fun lt!1574406 () Unit!72449)

(declare-fun Unit!72486 () Unit!72449)

(assert (=> b!4361789 (= lt!1574406 Unit!72486)))

(declare-fun lt!1574404 () Unit!72449)

(declare-fun forallContained!1799 (List!49107 Int tuple2!48406) Unit!72449)

(assert (=> b!4361789 (= lt!1574404 (forallContained!1799 (toList!3002 lt!1574408) lambda!141720 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (=> b!4361789 (contains!11221 lt!1574408 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(declare-fun lt!1574421 () Unit!72449)

(declare-fun Unit!72487 () Unit!72449)

(assert (=> b!4361789 (= lt!1574421 Unit!72487)))

(assert (=> b!4361789 (contains!11221 lt!1574405 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(declare-fun lt!1574424 () Unit!72449)

(declare-fun Unit!72488 () Unit!72449)

(assert (=> b!4361789 (= lt!1574424 Unit!72488)))

(assert (=> b!4361789 (forall!9158 (_2!27498 (h!54547 (toList!3001 lm!1707))) lambda!141720)))

(declare-fun lt!1574420 () Unit!72449)

(declare-fun Unit!72489 () Unit!72449)

(assert (=> b!4361789 (= lt!1574420 Unit!72489)))

(assert (=> b!4361789 (forall!9158 (toList!3002 lt!1574408) lambda!141720)))

(declare-fun lt!1574419 () Unit!72449)

(declare-fun Unit!72490 () Unit!72449)

(assert (=> b!4361789 (= lt!1574419 Unit!72490)))

(declare-fun lt!1574422 () Unit!72449)

(declare-fun Unit!72491 () Unit!72449)

(assert (=> b!4361789 (= lt!1574422 Unit!72491)))

(declare-fun lt!1574413 () Unit!72449)

(declare-fun addForallContainsKeyThenBeforeAdding!73 (ListMap!2245 ListMap!2245 K!10340 V!10586) Unit!72449)

(assert (=> b!4361789 (= lt!1574413 (addForallContainsKeyThenBeforeAdding!73 lt!1574079 lt!1574405 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (_2!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> b!4361789 (forall!9158 (toList!3002 lt!1574079) lambda!141720)))

(declare-fun lt!1574407 () Unit!72449)

(assert (=> b!4361789 (= lt!1574407 lt!1574413)))

(assert (=> b!4361789 (forall!9158 (toList!3002 lt!1574079) lambda!141720)))

(declare-fun lt!1574414 () Unit!72449)

(declare-fun Unit!72492 () Unit!72449)

(assert (=> b!4361789 (= lt!1574414 Unit!72492)))

(declare-fun res!1793481 () Bool)

(assert (=> b!4361789 (= res!1793481 (forall!9158 (_2!27498 (h!54547 (toList!3001 lm!1707))) lambda!141720))))

(declare-fun e!2714558 () Bool)

(assert (=> b!4361789 (=> (not res!1793481) (not e!2714558))))

(assert (=> b!4361789 e!2714558))

(declare-fun lt!1574416 () Unit!72449)

(declare-fun Unit!72493 () Unit!72449)

(assert (=> b!4361789 (= lt!1574416 Unit!72493)))

(declare-fun b!4361790 () Bool)

(assert (=> b!4361790 (= e!2714558 (forall!9158 (toList!3002 lt!1574079) lambda!141720))))

(declare-fun b!4361791 () Bool)

(assert (=> b!4361791 (= e!2714559 (invariantList!690 (toList!3002 lt!1574417)))))

(declare-fun bm!303198 () Bool)

(assert (=> bm!303198 (= call!303205 (forall!9158 (ite c!741654 (toList!3002 lt!1574079) (toList!3002 lt!1574408)) (ite c!741654 lambda!141718 lambda!141720)))))

(assert (=> b!4361792 (= e!2714560 lt!1574079)))

(declare-fun lt!1574411 () Unit!72449)

(assert (=> b!4361792 (= lt!1574411 call!303203)))

(assert (=> b!4361792 call!303204))

(declare-fun lt!1574423 () Unit!72449)

(assert (=> b!4361792 (= lt!1574423 lt!1574411)))

(assert (=> b!4361792 call!303205))

(declare-fun lt!1574412 () Unit!72449)

(declare-fun Unit!72494 () Unit!72449)

(assert (=> b!4361792 (= lt!1574412 Unit!72494)))

(declare-fun bm!303199 () Bool)

(assert (=> bm!303199 (= call!303204 (forall!9158 (toList!3002 lt!1574079) (ite c!741654 lambda!141718 lambda!141719)))))

(declare-fun bm!303200 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!73 (ListMap!2245) Unit!72449)

(assert (=> bm!303200 (= call!303203 (lemmaContainsAllItsOwnKeys!73 lt!1574079))))

(declare-fun b!4361793 () Bool)

(declare-fun res!1793479 () Bool)

(assert (=> b!4361793 (=> (not res!1793479) (not e!2714559))))

(assert (=> b!4361793 (= res!1793479 (forall!9158 (toList!3002 lt!1574079) lambda!141721))))

(assert (= (and d!1290408 c!741654) b!4361792))

(assert (= (and d!1290408 (not c!741654)) b!4361789))

(assert (= (and b!4361789 res!1793481) b!4361790))

(assert (= (or b!4361792 b!4361789) bm!303200))

(assert (= (or b!4361792 b!4361789) bm!303199))

(assert (= (or b!4361792 b!4361789) bm!303198))

(assert (= (and d!1290408 res!1793480) b!4361793))

(assert (= (and b!4361793 res!1793479) b!4361791))

(declare-fun m!4980875 () Bool)

(assert (=> b!4361791 m!4980875))

(declare-fun m!4980877 () Bool)

(assert (=> d!1290408 m!4980877))

(assert (=> d!1290408 m!4980639))

(declare-fun m!4980879 () Bool)

(assert (=> b!4361789 m!4980879))

(declare-fun m!4980881 () Bool)

(assert (=> b!4361789 m!4980881))

(declare-fun m!4980883 () Bool)

(assert (=> b!4361789 m!4980883))

(declare-fun m!4980885 () Bool)

(assert (=> b!4361789 m!4980885))

(declare-fun m!4980887 () Bool)

(assert (=> b!4361789 m!4980887))

(declare-fun m!4980889 () Bool)

(assert (=> b!4361789 m!4980889))

(assert (=> b!4361789 m!4980881))

(declare-fun m!4980891 () Bool)

(assert (=> b!4361789 m!4980891))

(declare-fun m!4980893 () Bool)

(assert (=> b!4361789 m!4980893))

(assert (=> b!4361789 m!4980891))

(declare-fun m!4980895 () Bool)

(assert (=> b!4361789 m!4980895))

(assert (=> b!4361789 m!4980895))

(declare-fun m!4980897 () Bool)

(assert (=> b!4361789 m!4980897))

(declare-fun m!4980899 () Bool)

(assert (=> b!4361793 m!4980899))

(declare-fun m!4980901 () Bool)

(assert (=> bm!303200 m!4980901))

(declare-fun m!4980903 () Bool)

(assert (=> bm!303199 m!4980903))

(declare-fun m!4980905 () Bool)

(assert (=> bm!303198 m!4980905))

(assert (=> b!4361790 m!4980881))

(assert (=> b!4361540 d!1290408))

(declare-fun bs!634929 () Bool)

(declare-fun b!4361805 () Bool)

(assert (= bs!634929 (and b!4361805 b!4361792)))

(declare-fun lambda!141722 () Int)

(assert (=> bs!634929 (= (= lt!1574071 lt!1574079) (= lambda!141722 lambda!141718))))

(declare-fun bs!634930 () Bool)

(assert (= bs!634930 (and b!4361805 b!4361789)))

(assert (=> bs!634930 (= (= lt!1574071 lt!1574079) (= lambda!141722 lambda!141719))))

(assert (=> bs!634930 (= (= lt!1574071 lt!1574405) (= lambda!141722 lambda!141720))))

(declare-fun bs!634931 () Bool)

(assert (= bs!634931 (and b!4361805 d!1290408)))

(assert (=> bs!634931 (= (= lt!1574071 lt!1574417) (= lambda!141722 lambda!141721))))

(assert (=> b!4361805 true))

(declare-fun bs!634932 () Bool)

(declare-fun b!4361802 () Bool)

(assert (= bs!634932 (and b!4361802 b!4361789)))

(declare-fun lambda!141723 () Int)

(assert (=> bs!634932 (= (= lt!1574071 lt!1574405) (= lambda!141723 lambda!141720))))

(declare-fun bs!634933 () Bool)

(assert (= bs!634933 (and b!4361802 b!4361792)))

(assert (=> bs!634933 (= (= lt!1574071 lt!1574079) (= lambda!141723 lambda!141718))))

(assert (=> bs!634932 (= (= lt!1574071 lt!1574079) (= lambda!141723 lambda!141719))))

(declare-fun bs!634934 () Bool)

(assert (= bs!634934 (and b!4361802 d!1290408)))

(assert (=> bs!634934 (= (= lt!1574071 lt!1574417) (= lambda!141723 lambda!141721))))

(declare-fun bs!634935 () Bool)

(assert (= bs!634935 (and b!4361802 b!4361805)))

(assert (=> bs!634935 (= lambda!141723 lambda!141722)))

(assert (=> b!4361802 true))

(declare-fun lambda!141724 () Int)

(declare-fun lt!1574426 () ListMap!2245)

(assert (=> bs!634932 (= (= lt!1574426 lt!1574405) (= lambda!141724 lambda!141720))))

(assert (=> bs!634933 (= (= lt!1574426 lt!1574079) (= lambda!141724 lambda!141718))))

(assert (=> b!4361802 (= (= lt!1574426 lt!1574071) (= lambda!141724 lambda!141723))))

(assert (=> bs!634932 (= (= lt!1574426 lt!1574079) (= lambda!141724 lambda!141719))))

(assert (=> bs!634934 (= (= lt!1574426 lt!1574417) (= lambda!141724 lambda!141721))))

(assert (=> bs!634935 (= (= lt!1574426 lt!1574071) (= lambda!141724 lambda!141722))))

(assert (=> b!4361802 true))

(declare-fun bs!634936 () Bool)

(declare-fun d!1290468 () Bool)

(assert (= bs!634936 (and d!1290468 b!4361789)))

(declare-fun lambda!141725 () Int)

(declare-fun lt!1574438 () ListMap!2245)

(assert (=> bs!634936 (= (= lt!1574438 lt!1574405) (= lambda!141725 lambda!141720))))

(declare-fun bs!634937 () Bool)

(assert (= bs!634937 (and d!1290468 b!4361792)))

(assert (=> bs!634937 (= (= lt!1574438 lt!1574079) (= lambda!141725 lambda!141718))))

(declare-fun bs!634938 () Bool)

(assert (= bs!634938 (and d!1290468 b!4361802)))

(assert (=> bs!634938 (= (= lt!1574438 lt!1574071) (= lambda!141725 lambda!141723))))

(assert (=> bs!634936 (= (= lt!1574438 lt!1574079) (= lambda!141725 lambda!141719))))

(assert (=> bs!634938 (= (= lt!1574438 lt!1574426) (= lambda!141725 lambda!141724))))

(declare-fun bs!634939 () Bool)

(assert (= bs!634939 (and d!1290468 d!1290408)))

(assert (=> bs!634939 (= (= lt!1574438 lt!1574417) (= lambda!141725 lambda!141721))))

(declare-fun bs!634940 () Bool)

(assert (= bs!634940 (and d!1290468 b!4361805)))

(assert (=> bs!634940 (= (= lt!1574438 lt!1574071) (= lambda!141725 lambda!141722))))

(assert (=> d!1290468 true))

(declare-fun e!2714566 () Bool)

(assert (=> d!1290468 e!2714566))

(declare-fun res!1793483 () Bool)

(assert (=> d!1290468 (=> (not res!1793483) (not e!2714566))))

(assert (=> d!1290468 (= res!1793483 (forall!9158 (_2!27498 (h!54547 (toList!3001 lm!1707))) lambda!141725))))

(declare-fun e!2714567 () ListMap!2245)

(assert (=> d!1290468 (= lt!1574438 e!2714567)))

(declare-fun c!741655 () Bool)

(assert (=> d!1290468 (= c!741655 ((_ is Nil!48983) (_2!27498 (h!54547 (toList!3001 lm!1707)))))))

(assert (=> d!1290468 (noDuplicateKeys!509 (_2!27498 (h!54547 (toList!3001 lm!1707))))))

(assert (=> d!1290468 (= (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 lm!1707))) lt!1574071) lt!1574438)))

(assert (=> b!4361802 (= e!2714567 lt!1574426)))

(declare-fun lt!1574429 () ListMap!2245)

(assert (=> b!4361802 (= lt!1574429 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (=> b!4361802 (= lt!1574426 (addToMapMapFromBucket!205 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun lt!1574431 () Unit!72449)

(declare-fun call!303206 () Unit!72449)

(assert (=> b!4361802 (= lt!1574431 call!303206)))

(declare-fun call!303207 () Bool)

(assert (=> b!4361802 call!303207))

(declare-fun lt!1574439 () Unit!72449)

(assert (=> b!4361802 (= lt!1574439 lt!1574431)))

(declare-fun call!303208 () Bool)

(assert (=> b!4361802 call!303208))

(declare-fun lt!1574430 () Unit!72449)

(declare-fun Unit!72495 () Unit!72449)

(assert (=> b!4361802 (= lt!1574430 Unit!72495)))

(assert (=> b!4361802 (forall!9158 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) lambda!141724)))

(declare-fun lt!1574436 () Unit!72449)

(declare-fun Unit!72496 () Unit!72449)

(assert (=> b!4361802 (= lt!1574436 Unit!72496)))

(declare-fun lt!1574427 () Unit!72449)

(declare-fun Unit!72497 () Unit!72449)

(assert (=> b!4361802 (= lt!1574427 Unit!72497)))

(declare-fun lt!1574425 () Unit!72449)

(assert (=> b!4361802 (= lt!1574425 (forallContained!1799 (toList!3002 lt!1574429) lambda!141724 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (=> b!4361802 (contains!11221 lt!1574429 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(declare-fun lt!1574442 () Unit!72449)

(declare-fun Unit!72498 () Unit!72449)

(assert (=> b!4361802 (= lt!1574442 Unit!72498)))

(assert (=> b!4361802 (contains!11221 lt!1574426 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(declare-fun lt!1574445 () Unit!72449)

(declare-fun Unit!72499 () Unit!72449)

(assert (=> b!4361802 (= lt!1574445 Unit!72499)))

(assert (=> b!4361802 (forall!9158 (_2!27498 (h!54547 (toList!3001 lm!1707))) lambda!141724)))

(declare-fun lt!1574441 () Unit!72449)

(declare-fun Unit!72500 () Unit!72449)

(assert (=> b!4361802 (= lt!1574441 Unit!72500)))

(assert (=> b!4361802 (forall!9158 (toList!3002 lt!1574429) lambda!141724)))

(declare-fun lt!1574440 () Unit!72449)

(declare-fun Unit!72501 () Unit!72449)

(assert (=> b!4361802 (= lt!1574440 Unit!72501)))

(declare-fun lt!1574443 () Unit!72449)

(declare-fun Unit!72502 () Unit!72449)

(assert (=> b!4361802 (= lt!1574443 Unit!72502)))

(declare-fun lt!1574434 () Unit!72449)

(assert (=> b!4361802 (= lt!1574434 (addForallContainsKeyThenBeforeAdding!73 lt!1574071 lt!1574426 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (_2!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> b!4361802 (forall!9158 (toList!3002 lt!1574071) lambda!141724)))

(declare-fun lt!1574428 () Unit!72449)

(assert (=> b!4361802 (= lt!1574428 lt!1574434)))

(assert (=> b!4361802 (forall!9158 (toList!3002 lt!1574071) lambda!141724)))

(declare-fun lt!1574435 () Unit!72449)

(declare-fun Unit!72503 () Unit!72449)

(assert (=> b!4361802 (= lt!1574435 Unit!72503)))

(declare-fun res!1793484 () Bool)

(assert (=> b!4361802 (= res!1793484 (forall!9158 (_2!27498 (h!54547 (toList!3001 lm!1707))) lambda!141724))))

(declare-fun e!2714565 () Bool)

(assert (=> b!4361802 (=> (not res!1793484) (not e!2714565))))

(assert (=> b!4361802 e!2714565))

(declare-fun lt!1574437 () Unit!72449)

(declare-fun Unit!72504 () Unit!72449)

(assert (=> b!4361802 (= lt!1574437 Unit!72504)))

(declare-fun b!4361803 () Bool)

(assert (=> b!4361803 (= e!2714565 (forall!9158 (toList!3002 lt!1574071) lambda!141724))))

(declare-fun b!4361804 () Bool)

(assert (=> b!4361804 (= e!2714566 (invariantList!690 (toList!3002 lt!1574438)))))

(declare-fun bm!303201 () Bool)

(assert (=> bm!303201 (= call!303208 (forall!9158 (ite c!741655 (toList!3002 lt!1574071) (toList!3002 lt!1574429)) (ite c!741655 lambda!141722 lambda!141724)))))

(assert (=> b!4361805 (= e!2714567 lt!1574071)))

(declare-fun lt!1574432 () Unit!72449)

(assert (=> b!4361805 (= lt!1574432 call!303206)))

(assert (=> b!4361805 call!303207))

(declare-fun lt!1574444 () Unit!72449)

(assert (=> b!4361805 (= lt!1574444 lt!1574432)))

(assert (=> b!4361805 call!303208))

(declare-fun lt!1574433 () Unit!72449)

(declare-fun Unit!72505 () Unit!72449)

(assert (=> b!4361805 (= lt!1574433 Unit!72505)))

(declare-fun bm!303202 () Bool)

(assert (=> bm!303202 (= call!303207 (forall!9158 (toList!3002 lt!1574071) (ite c!741655 lambda!141722 lambda!141723)))))

(declare-fun bm!303203 () Bool)

(assert (=> bm!303203 (= call!303206 (lemmaContainsAllItsOwnKeys!73 lt!1574071))))

(declare-fun b!4361806 () Bool)

(declare-fun res!1793482 () Bool)

(assert (=> b!4361806 (=> (not res!1793482) (not e!2714566))))

(assert (=> b!4361806 (= res!1793482 (forall!9158 (toList!3002 lt!1574071) lambda!141725))))

(assert (= (and d!1290468 c!741655) b!4361805))

(assert (= (and d!1290468 (not c!741655)) b!4361802))

(assert (= (and b!4361802 res!1793484) b!4361803))

(assert (= (or b!4361805 b!4361802) bm!303203))

(assert (= (or b!4361805 b!4361802) bm!303202))

(assert (= (or b!4361805 b!4361802) bm!303201))

(assert (= (and d!1290468 res!1793483) b!4361806))

(assert (= (and b!4361806 res!1793482) b!4361804))

(declare-fun m!4980907 () Bool)

(assert (=> b!4361804 m!4980907))

(declare-fun m!4980909 () Bool)

(assert (=> d!1290468 m!4980909))

(assert (=> d!1290468 m!4980639))

(declare-fun m!4980911 () Bool)

(assert (=> b!4361802 m!4980911))

(declare-fun m!4980913 () Bool)

(assert (=> b!4361802 m!4980913))

(declare-fun m!4980915 () Bool)

(assert (=> b!4361802 m!4980915))

(declare-fun m!4980917 () Bool)

(assert (=> b!4361802 m!4980917))

(declare-fun m!4980919 () Bool)

(assert (=> b!4361802 m!4980919))

(declare-fun m!4980921 () Bool)

(assert (=> b!4361802 m!4980921))

(assert (=> b!4361802 m!4980913))

(declare-fun m!4980923 () Bool)

(assert (=> b!4361802 m!4980923))

(declare-fun m!4980925 () Bool)

(assert (=> b!4361802 m!4980925))

(assert (=> b!4361802 m!4980923))

(declare-fun m!4980927 () Bool)

(assert (=> b!4361802 m!4980927))

(assert (=> b!4361802 m!4980927))

(declare-fun m!4980929 () Bool)

(assert (=> b!4361802 m!4980929))

(declare-fun m!4980931 () Bool)

(assert (=> b!4361806 m!4980931))

(declare-fun m!4980933 () Bool)

(assert (=> bm!303203 m!4980933))

(declare-fun m!4980935 () Bool)

(assert (=> bm!303202 m!4980935))

(declare-fun m!4980937 () Bool)

(assert (=> bm!303201 m!4980937))

(assert (=> b!4361803 m!4980913))

(assert (=> b!4361540 d!1290468))

(declare-fun d!1290470 () Bool)

(declare-fun tail!7030 (List!49108) List!49108)

(assert (=> d!1290470 (= (tail!7028 lm!1707) (ListLongMap!1652 (tail!7030 (toList!3001 lm!1707))))))

(declare-fun bs!634941 () Bool)

(assert (= bs!634941 d!1290470))

(declare-fun m!4980939 () Bool)

(assert (=> bs!634941 m!4980939))

(assert (=> b!4361540 d!1290470))

(declare-fun d!1290472 () Bool)

(assert (=> d!1290472 (eq!279 (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 lm!1707))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (+!676 (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 lm!1707))) lt!1574079) (tuple2!48407 key!3918 newValue!99)))))

(declare-fun lt!1574448 () Unit!72449)

(declare-fun choose!27038 (ListMap!2245 K!10340 V!10586 List!49107) Unit!72449)

(assert (=> d!1290472 (= lt!1574448 (choose!27038 lt!1574079 key!3918 newValue!99 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))

(assert (=> d!1290472 (not (containsKey!734 (_2!27498 (h!54547 (toList!3001 lm!1707))) key!3918))))

(assert (=> d!1290472 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!88 lt!1574079 key!3918 newValue!99 (_2!27498 (h!54547 (toList!3001 lm!1707)))) lt!1574448)))

(declare-fun bs!634942 () Bool)

(assert (= bs!634942 d!1290472))

(assert (=> bs!634942 m!4980393))

(assert (=> bs!634942 m!4980345))

(assert (=> bs!634942 m!4980393))

(declare-fun m!4980941 () Bool)

(assert (=> bs!634942 m!4980941))

(declare-fun m!4980943 () Bool)

(assert (=> bs!634942 m!4980943))

(assert (=> bs!634942 m!4980943))

(declare-fun m!4980945 () Bool)

(assert (=> bs!634942 m!4980945))

(assert (=> bs!634942 m!4980945))

(assert (=> bs!634942 m!4980941))

(declare-fun m!4980947 () Bool)

(assert (=> bs!634942 m!4980947))

(declare-fun m!4980949 () Bool)

(assert (=> bs!634942 m!4980949))

(assert (=> b!4361540 d!1290472))

(declare-fun bs!634943 () Bool)

(declare-fun d!1290474 () Bool)

(assert (= bs!634943 (and d!1290474 start!422616)))

(declare-fun lambda!141726 () Int)

(assert (=> bs!634943 (= lambda!141726 lambda!141629)))

(declare-fun bs!634944 () Bool)

(assert (= bs!634944 (and d!1290474 d!1290368)))

(assert (=> bs!634944 (= lambda!141726 lambda!141639)))

(declare-fun bs!634945 () Bool)

(assert (= bs!634945 (and d!1290474 d!1290396)))

(assert (=> bs!634945 (= lambda!141726 lambda!141642)))

(declare-fun lt!1574449 () ListMap!2245)

(assert (=> d!1290474 (invariantList!690 (toList!3002 lt!1574449))))

(declare-fun e!2714568 () ListMap!2245)

(assert (=> d!1290474 (= lt!1574449 e!2714568)))

(declare-fun c!741656 () Bool)

(assert (=> d!1290474 (= c!741656 ((_ is Cons!48984) (t!356028 (toList!3001 lm!1707))))))

(assert (=> d!1290474 (forall!9156 (t!356028 (toList!3001 lm!1707)) lambda!141726)))

(assert (=> d!1290474 (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574449)))

(declare-fun b!4361807 () Bool)

(assert (=> b!4361807 (= e!2714568 (addToMapMapFromBucket!205 (_2!27498 (h!54547 (t!356028 (toList!3001 lm!1707)))) (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))))))

(declare-fun b!4361808 () Bool)

(assert (=> b!4361808 (= e!2714568 (ListMap!2246 Nil!48983))))

(assert (= (and d!1290474 c!741656) b!4361807))

(assert (= (and d!1290474 (not c!741656)) b!4361808))

(declare-fun m!4980951 () Bool)

(assert (=> d!1290474 m!4980951))

(declare-fun m!4980953 () Bool)

(assert (=> d!1290474 m!4980953))

(declare-fun m!4980955 () Bool)

(assert (=> b!4361807 m!4980955))

(assert (=> b!4361807 m!4980955))

(declare-fun m!4980957 () Bool)

(assert (=> b!4361807 m!4980957))

(assert (=> b!4361540 d!1290474))

(declare-fun d!1290476 () Bool)

(declare-fun e!2714569 () Bool)

(assert (=> d!1290476 e!2714569))

(declare-fun res!1793486 () Bool)

(assert (=> d!1290476 (=> (not res!1793486) (not e!2714569))))

(declare-fun lt!1574453 () ListMap!2245)

(assert (=> d!1290476 (= res!1793486 (contains!11221 lt!1574453 (_1!27497 lt!1574080)))))

(declare-fun lt!1574451 () List!49107)

(assert (=> d!1290476 (= lt!1574453 (ListMap!2246 lt!1574451))))

(declare-fun lt!1574450 () Unit!72449)

(declare-fun lt!1574452 () Unit!72449)

(assert (=> d!1290476 (= lt!1574450 lt!1574452)))

(assert (=> d!1290476 (= (getValueByKey!479 lt!1574451 (_1!27497 lt!1574080)) (Some!10492 (_2!27497 lt!1574080)))))

(assert (=> d!1290476 (= lt!1574452 (lemmaContainsTupThenGetReturnValue!252 lt!1574451 (_1!27497 lt!1574080) (_2!27497 lt!1574080)))))

(assert (=> d!1290476 (= lt!1574451 (insertNoDuplicatedKeys!113 (toList!3002 lt!1574075) (_1!27497 lt!1574080) (_2!27497 lt!1574080)))))

(assert (=> d!1290476 (= (+!676 lt!1574075 lt!1574080) lt!1574453)))

(declare-fun b!4361809 () Bool)

(declare-fun res!1793485 () Bool)

(assert (=> b!4361809 (=> (not res!1793485) (not e!2714569))))

(assert (=> b!4361809 (= res!1793485 (= (getValueByKey!479 (toList!3002 lt!1574453) (_1!27497 lt!1574080)) (Some!10492 (_2!27497 lt!1574080))))))

(declare-fun b!4361810 () Bool)

(assert (=> b!4361810 (= e!2714569 (contains!11223 (toList!3002 lt!1574453) lt!1574080))))

(assert (= (and d!1290476 res!1793486) b!4361809))

(assert (= (and b!4361809 res!1793485) b!4361810))

(declare-fun m!4980959 () Bool)

(assert (=> d!1290476 m!4980959))

(declare-fun m!4980961 () Bool)

(assert (=> d!1290476 m!4980961))

(declare-fun m!4980963 () Bool)

(assert (=> d!1290476 m!4980963))

(declare-fun m!4980965 () Bool)

(assert (=> d!1290476 m!4980965))

(declare-fun m!4980967 () Bool)

(assert (=> b!4361809 m!4980967))

(declare-fun m!4980969 () Bool)

(assert (=> b!4361810 m!4980969))

(assert (=> b!4361540 d!1290476))

(declare-fun bs!634946 () Bool)

(declare-fun d!1290478 () Bool)

(assert (= bs!634946 (and d!1290478 start!422616)))

(declare-fun lambda!141727 () Int)

(assert (=> bs!634946 (= lambda!141727 lambda!141629)))

(declare-fun bs!634947 () Bool)

(assert (= bs!634947 (and d!1290478 d!1290368)))

(assert (=> bs!634947 (= lambda!141727 lambda!141639)))

(declare-fun bs!634948 () Bool)

(assert (= bs!634948 (and d!1290478 d!1290396)))

(assert (=> bs!634948 (= lambda!141727 lambda!141642)))

(declare-fun bs!634949 () Bool)

(assert (= bs!634949 (and d!1290478 d!1290474)))

(assert (=> bs!634949 (= lambda!141727 lambda!141726)))

(declare-fun lt!1574454 () ListMap!2245)

(assert (=> d!1290478 (invariantList!690 (toList!3002 lt!1574454))))

(declare-fun e!2714570 () ListMap!2245)

(assert (=> d!1290478 (= lt!1574454 e!2714570)))

(declare-fun c!741657 () Bool)

(assert (=> d!1290478 (= c!741657 ((_ is Cons!48984) (toList!3001 (+!675 lt!1574068 lt!1574085))))))

(assert (=> d!1290478 (forall!9156 (toList!3001 (+!675 lt!1574068 lt!1574085)) lambda!141727)))

(assert (=> d!1290478 (= (extractMap!568 (toList!3001 (+!675 lt!1574068 lt!1574085))) lt!1574454)))

(declare-fun b!4361811 () Bool)

(assert (=> b!4361811 (= e!2714570 (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 (+!675 lt!1574068 lt!1574085)))) (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))))))

(declare-fun b!4361812 () Bool)

(assert (=> b!4361812 (= e!2714570 (ListMap!2246 Nil!48983))))

(assert (= (and d!1290478 c!741657) b!4361811))

(assert (= (and d!1290478 (not c!741657)) b!4361812))

(declare-fun m!4980971 () Bool)

(assert (=> d!1290478 m!4980971))

(declare-fun m!4980973 () Bool)

(assert (=> d!1290478 m!4980973))

(declare-fun m!4980975 () Bool)

(assert (=> b!4361811 m!4980975))

(assert (=> b!4361811 m!4980975))

(declare-fun m!4980977 () Bool)

(assert (=> b!4361811 m!4980977))

(assert (=> b!4361540 d!1290478))

(declare-fun bs!634950 () Bool)

(declare-fun d!1290480 () Bool)

(assert (= bs!634950 (and d!1290480 d!1290478)))

(declare-fun lambda!141730 () Int)

(assert (=> bs!634950 (= lambda!141730 lambda!141727)))

(declare-fun bs!634951 () Bool)

(assert (= bs!634951 (and d!1290480 d!1290474)))

(assert (=> bs!634951 (= lambda!141730 lambda!141726)))

(declare-fun bs!634952 () Bool)

(assert (= bs!634952 (and d!1290480 start!422616)))

(assert (=> bs!634952 (= lambda!141730 lambda!141629)))

(declare-fun bs!634953 () Bool)

(assert (= bs!634953 (and d!1290480 d!1290368)))

(assert (=> bs!634953 (= lambda!141730 lambda!141639)))

(declare-fun bs!634954 () Bool)

(assert (= bs!634954 (and d!1290480 d!1290396)))

(assert (=> bs!634954 (= lambda!141730 lambda!141642)))

(assert (=> d!1290480 (not (containsKey!734 (apply!11361 lm!1707 (_1!27498 (h!54547 (toList!3001 lm!1707)))) key!3918))))

(declare-fun lt!1574457 () Unit!72449)

(declare-fun choose!27039 (ListLongMap!1651 K!10340 (_ BitVec 64) Hashable!4901) Unit!72449)

(assert (=> d!1290480 (= lt!1574457 (choose!27039 lm!1707 key!3918 (_1!27498 (h!54547 (toList!3001 lm!1707))) hashF!1247))))

(assert (=> d!1290480 (forall!9156 (toList!3001 lm!1707) lambda!141730)))

(assert (=> d!1290480 (= (lemmaNotSameHashThenCannotContainKey!56 lm!1707 key!3918 (_1!27498 (h!54547 (toList!3001 lm!1707))) hashF!1247) lt!1574457)))

(declare-fun bs!634955 () Bool)

(assert (= bs!634955 d!1290480))

(assert (=> bs!634955 m!4980407))

(assert (=> bs!634955 m!4980407))

(assert (=> bs!634955 m!4980409))

(declare-fun m!4980979 () Bool)

(assert (=> bs!634955 m!4980979))

(declare-fun m!4980981 () Bool)

(assert (=> bs!634955 m!4980981))

(assert (=> b!4361540 d!1290480))

(declare-fun d!1290482 () Bool)

(declare-fun res!1793491 () Bool)

(declare-fun e!2714575 () Bool)

(assert (=> d!1290482 (=> res!1793491 e!2714575)))

(assert (=> d!1290482 (= res!1793491 (not ((_ is Cons!48983) newBucket!200)))))

(assert (=> d!1290482 (= (noDuplicateKeys!509 newBucket!200) e!2714575)))

(declare-fun b!4361817 () Bool)

(declare-fun e!2714576 () Bool)

(assert (=> b!4361817 (= e!2714575 e!2714576)))

(declare-fun res!1793492 () Bool)

(assert (=> b!4361817 (=> (not res!1793492) (not e!2714576))))

(assert (=> b!4361817 (= res!1793492 (not (containsKey!734 (t!356027 newBucket!200) (_1!27497 (h!54546 newBucket!200)))))))

(declare-fun b!4361818 () Bool)

(assert (=> b!4361818 (= e!2714576 (noDuplicateKeys!509 (t!356027 newBucket!200)))))

(assert (= (and d!1290482 (not res!1793491)) b!4361817))

(assert (= (and b!4361817 res!1793492) b!4361818))

(declare-fun m!4980983 () Bool)

(assert (=> b!4361817 m!4980983))

(declare-fun m!4980985 () Bool)

(assert (=> b!4361818 m!4980985))

(assert (=> b!4361533 d!1290482))

(assert (=> b!4361531 d!1290356))

(declare-fun d!1290484 () Bool)

(declare-fun e!2714577 () Bool)

(assert (=> d!1290484 e!2714577))

(declare-fun res!1793494 () Bool)

(assert (=> d!1290484 (=> (not res!1793494) (not e!2714577))))

(declare-fun lt!1574460 () ListLongMap!1651)

(assert (=> d!1290484 (= res!1793494 (contains!11219 lt!1574460 (_1!27498 lt!1574085)))))

(declare-fun lt!1574459 () List!49108)

(assert (=> d!1290484 (= lt!1574460 (ListLongMap!1652 lt!1574459))))

(declare-fun lt!1574461 () Unit!72449)

(declare-fun lt!1574458 () Unit!72449)

(assert (=> d!1290484 (= lt!1574461 lt!1574458)))

(assert (=> d!1290484 (= (getValueByKey!478 lt!1574459 (_1!27498 lt!1574085)) (Some!10491 (_2!27498 lt!1574085)))))

(assert (=> d!1290484 (= lt!1574458 (lemmaContainsTupThenGetReturnValue!251 lt!1574459 (_1!27498 lt!1574085) (_2!27498 lt!1574085)))))

(assert (=> d!1290484 (= lt!1574459 (insertStrictlySorted!147 (toList!3001 lm!1707) (_1!27498 lt!1574085) (_2!27498 lt!1574085)))))

(assert (=> d!1290484 (= (+!675 lm!1707 lt!1574085) lt!1574460)))

(declare-fun b!4361819 () Bool)

(declare-fun res!1793493 () Bool)

(assert (=> b!4361819 (=> (not res!1793493) (not e!2714577))))

(assert (=> b!4361819 (= res!1793493 (= (getValueByKey!478 (toList!3001 lt!1574460) (_1!27498 lt!1574085)) (Some!10491 (_2!27498 lt!1574085))))))

(declare-fun b!4361820 () Bool)

(assert (=> b!4361820 (= e!2714577 (contains!11220 (toList!3001 lt!1574460) lt!1574085))))

(assert (= (and d!1290484 res!1793494) b!4361819))

(assert (= (and b!4361819 res!1793493) b!4361820))

(declare-fun m!4980987 () Bool)

(assert (=> d!1290484 m!4980987))

(declare-fun m!4980989 () Bool)

(assert (=> d!1290484 m!4980989))

(declare-fun m!4980991 () Bool)

(assert (=> d!1290484 m!4980991))

(declare-fun m!4980993 () Bool)

(assert (=> d!1290484 m!4980993))

(declare-fun m!4980995 () Bool)

(assert (=> b!4361819 m!4980995))

(declare-fun m!4980997 () Bool)

(assert (=> b!4361820 m!4980997))

(assert (=> b!4361531 d!1290484))

(declare-fun d!1290486 () Bool)

(assert (=> d!1290486 (forall!9156 (toList!3001 (+!675 lm!1707 (tuple2!48409 hash!377 newBucket!200))) lambda!141629)))

(declare-fun lt!1574464 () Unit!72449)

(declare-fun choose!27040 (ListLongMap!1651 Int (_ BitVec 64) List!49107) Unit!72449)

(assert (=> d!1290486 (= lt!1574464 (choose!27040 lm!1707 lambda!141629 hash!377 newBucket!200))))

(declare-fun e!2714580 () Bool)

(assert (=> d!1290486 e!2714580))

(declare-fun res!1793497 () Bool)

(assert (=> d!1290486 (=> (not res!1793497) (not e!2714580))))

(assert (=> d!1290486 (= res!1793497 (forall!9156 (toList!3001 lm!1707) lambda!141629))))

(assert (=> d!1290486 (= (addValidProp!163 lm!1707 lambda!141629 hash!377 newBucket!200) lt!1574464)))

(declare-fun b!4361824 () Bool)

(assert (=> b!4361824 (= e!2714580 (dynLambda!20651 lambda!141629 (tuple2!48409 hash!377 newBucket!200)))))

(assert (= (and d!1290486 res!1793497) b!4361824))

(declare-fun b_lambda!131887 () Bool)

(assert (=> (not b_lambda!131887) (not b!4361824)))

(declare-fun m!4980999 () Bool)

(assert (=> d!1290486 m!4980999))

(declare-fun m!4981001 () Bool)

(assert (=> d!1290486 m!4981001))

(declare-fun m!4981003 () Bool)

(assert (=> d!1290486 m!4981003))

(assert (=> d!1290486 m!4980341))

(declare-fun m!4981005 () Bool)

(assert (=> b!4361824 m!4981005))

(assert (=> b!4361531 d!1290486))

(assert (=> b!4361531 d!1290352))

(declare-fun b!4361825 () Bool)

(declare-fun e!2714586 () Unit!72449)

(declare-fun e!2714585 () Unit!72449)

(assert (=> b!4361825 (= e!2714586 e!2714585)))

(declare-fun c!741659 () Bool)

(declare-fun call!303209 () Bool)

(assert (=> b!4361825 (= c!741659 call!303209)))

(declare-fun b!4361826 () Bool)

(declare-fun Unit!72506 () Unit!72449)

(assert (=> b!4361826 (= e!2714585 Unit!72506)))

(declare-fun b!4361827 () Bool)

(declare-fun e!2714584 () Bool)

(declare-fun e!2714582 () Bool)

(assert (=> b!4361827 (= e!2714584 e!2714582)))

(declare-fun res!1793498 () Bool)

(assert (=> b!4361827 (=> (not res!1793498) (not e!2714582))))

(assert (=> b!4361827 (= res!1793498 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574072) key!3918)))))

(declare-fun b!4361828 () Bool)

(assert (=> b!4361828 false))

(declare-fun lt!1574465 () Unit!72449)

(declare-fun lt!1574471 () Unit!72449)

(assert (=> b!4361828 (= lt!1574465 lt!1574471)))

(assert (=> b!4361828 (containsKey!737 (toList!3002 lt!1574072) key!3918)))

(assert (=> b!4361828 (= lt!1574471 (lemmaInGetKeysListThenContainsKey!136 (toList!3002 lt!1574072) key!3918))))

(declare-fun Unit!72507 () Unit!72449)

(assert (=> b!4361828 (= e!2714585 Unit!72507)))

(declare-fun b!4361829 () Bool)

(declare-fun e!2714581 () Bool)

(assert (=> b!4361829 (= e!2714581 (not (contains!11225 (keys!16560 lt!1574072) key!3918)))))

(declare-fun b!4361830 () Bool)

(declare-fun e!2714583 () List!49110)

(assert (=> b!4361830 (= e!2714583 (keys!16560 lt!1574072))))

(declare-fun b!4361831 () Bool)

(assert (=> b!4361831 (= e!2714583 (getKeysList!138 (toList!3002 lt!1574072)))))

(declare-fun bm!303204 () Bool)

(assert (=> bm!303204 (= call!303209 (contains!11225 e!2714583 key!3918))))

(declare-fun c!741660 () Bool)

(declare-fun c!741658 () Bool)

(assert (=> bm!303204 (= c!741660 c!741658)))

(declare-fun b!4361832 () Bool)

(assert (=> b!4361832 (= e!2714582 (contains!11225 (keys!16560 lt!1574072) key!3918))))

(declare-fun b!4361833 () Bool)

(declare-fun lt!1574470 () Unit!72449)

(assert (=> b!4361833 (= e!2714586 lt!1574470)))

(declare-fun lt!1574467 () Unit!72449)

(assert (=> b!4361833 (= lt!1574467 (lemmaContainsKeyImpliesGetValueByKeyDefined!389 (toList!3002 lt!1574072) key!3918))))

(assert (=> b!4361833 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574072) key!3918))))

(declare-fun lt!1574472 () Unit!72449)

(assert (=> b!4361833 (= lt!1574472 lt!1574467)))

(assert (=> b!4361833 (= lt!1574470 (lemmaInListThenGetKeysListContains!135 (toList!3002 lt!1574072) key!3918))))

(assert (=> b!4361833 call!303209))

(declare-fun d!1290488 () Bool)

(assert (=> d!1290488 e!2714584))

(declare-fun res!1793500 () Bool)

(assert (=> d!1290488 (=> res!1793500 e!2714584)))

(assert (=> d!1290488 (= res!1793500 e!2714581)))

(declare-fun res!1793499 () Bool)

(assert (=> d!1290488 (=> (not res!1793499) (not e!2714581))))

(declare-fun lt!1574468 () Bool)

(assert (=> d!1290488 (= res!1793499 (not lt!1574468))))

(declare-fun lt!1574469 () Bool)

(assert (=> d!1290488 (= lt!1574468 lt!1574469)))

(declare-fun lt!1574466 () Unit!72449)

(assert (=> d!1290488 (= lt!1574466 e!2714586)))

(assert (=> d!1290488 (= c!741658 lt!1574469)))

(assert (=> d!1290488 (= lt!1574469 (containsKey!737 (toList!3002 lt!1574072) key!3918))))

(assert (=> d!1290488 (= (contains!11221 lt!1574072 key!3918) lt!1574468)))

(assert (= (and d!1290488 c!741658) b!4361833))

(assert (= (and d!1290488 (not c!741658)) b!4361825))

(assert (= (and b!4361825 c!741659) b!4361828))

(assert (= (and b!4361825 (not c!741659)) b!4361826))

(assert (= (or b!4361833 b!4361825) bm!303204))

(assert (= (and bm!303204 c!741660) b!4361831))

(assert (= (and bm!303204 (not c!741660)) b!4361830))

(assert (= (and d!1290488 res!1793499) b!4361829))

(assert (= (and d!1290488 (not res!1793500)) b!4361827))

(assert (= (and b!4361827 res!1793498) b!4361832))

(declare-fun m!4981007 () Bool)

(assert (=> b!4361829 m!4981007))

(assert (=> b!4361829 m!4981007))

(declare-fun m!4981009 () Bool)

(assert (=> b!4361829 m!4981009))

(declare-fun m!4981011 () Bool)

(assert (=> bm!303204 m!4981011))

(assert (=> b!4361832 m!4981007))

(assert (=> b!4361832 m!4981007))

(assert (=> b!4361832 m!4981009))

(declare-fun m!4981013 () Bool)

(assert (=> b!4361831 m!4981013))

(declare-fun m!4981015 () Bool)

(assert (=> d!1290488 m!4981015))

(assert (=> b!4361830 m!4981007))

(declare-fun m!4981017 () Bool)

(assert (=> b!4361827 m!4981017))

(assert (=> b!4361827 m!4981017))

(declare-fun m!4981019 () Bool)

(assert (=> b!4361827 m!4981019))

(assert (=> b!4361828 m!4981015))

(declare-fun m!4981021 () Bool)

(assert (=> b!4361828 m!4981021))

(declare-fun m!4981023 () Bool)

(assert (=> b!4361833 m!4981023))

(assert (=> b!4361833 m!4981017))

(assert (=> b!4361833 m!4981017))

(assert (=> b!4361833 m!4981019))

(declare-fun m!4981025 () Bool)

(assert (=> b!4361833 m!4981025))

(assert (=> b!4361542 d!1290488))

(declare-fun bs!634956 () Bool)

(declare-fun d!1290490 () Bool)

(assert (= bs!634956 (and d!1290490 d!1290478)))

(declare-fun lambda!141731 () Int)

(assert (=> bs!634956 (= lambda!141731 lambda!141727)))

(declare-fun bs!634957 () Bool)

(assert (= bs!634957 (and d!1290490 d!1290474)))

(assert (=> bs!634957 (= lambda!141731 lambda!141726)))

(declare-fun bs!634958 () Bool)

(assert (= bs!634958 (and d!1290490 start!422616)))

(assert (=> bs!634958 (= lambda!141731 lambda!141629)))

(declare-fun bs!634959 () Bool)

(assert (= bs!634959 (and d!1290490 d!1290368)))

(assert (=> bs!634959 (= lambda!141731 lambda!141639)))

(declare-fun bs!634960 () Bool)

(assert (= bs!634960 (and d!1290490 d!1290396)))

(assert (=> bs!634960 (= lambda!141731 lambda!141642)))

(declare-fun bs!634961 () Bool)

(assert (= bs!634961 (and d!1290490 d!1290480)))

(assert (=> bs!634961 (= lambda!141731 lambda!141730)))

(declare-fun lt!1574473 () ListMap!2245)

(assert (=> d!1290490 (invariantList!690 (toList!3002 lt!1574473))))

(declare-fun e!2714587 () ListMap!2245)

(assert (=> d!1290490 (= lt!1574473 e!2714587)))

(declare-fun c!741661 () Bool)

(assert (=> d!1290490 (= c!741661 ((_ is Cons!48984) (toList!3001 lm!1707)))))

(assert (=> d!1290490 (forall!9156 (toList!3001 lm!1707) lambda!141731)))

(assert (=> d!1290490 (= (extractMap!568 (toList!3001 lm!1707)) lt!1574473)))

(declare-fun b!4361834 () Bool)

(assert (=> b!4361834 (= e!2714587 (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 lm!1707))) (extractMap!568 (t!356028 (toList!3001 lm!1707)))))))

(declare-fun b!4361835 () Bool)

(assert (=> b!4361835 (= e!2714587 (ListMap!2246 Nil!48983))))

(assert (= (and d!1290490 c!741661) b!4361834))

(assert (= (and d!1290490 (not c!741661)) b!4361835))

(declare-fun m!4981027 () Bool)

(assert (=> d!1290490 m!4981027))

(declare-fun m!4981029 () Bool)

(assert (=> d!1290490 m!4981029))

(assert (=> b!4361834 m!4980375))

(assert (=> b!4361834 m!4980375))

(declare-fun m!4981031 () Bool)

(assert (=> b!4361834 m!4981031))

(assert (=> b!4361542 d!1290490))

(declare-fun d!1290492 () Bool)

(declare-fun hash!1627 (Hashable!4901 K!10340) (_ BitVec 64))

(assert (=> d!1290492 (= (hash!1621 hashF!1247 key!3918) (hash!1627 hashF!1247 key!3918))))

(declare-fun bs!634962 () Bool)

(assert (= bs!634962 d!1290492))

(declare-fun m!4981033 () Bool)

(assert (=> bs!634962 m!4981033))

(assert (=> b!4361532 d!1290492))

(declare-fun d!1290494 () Bool)

(declare-fun head!9082 (List!49108) tuple2!48408)

(assert (=> d!1290494 (= (head!9080 lm!1707) (head!9082 (toList!3001 lm!1707)))))

(declare-fun bs!634963 () Bool)

(assert (= bs!634963 d!1290494))

(declare-fun m!4981035 () Bool)

(assert (=> bs!634963 m!4981035))

(assert (=> b!4361535 d!1290494))

(declare-fun d!1290496 () Bool)

(assert (=> d!1290496 (= (apply!11361 lm!1707 hash!377) (get!15917 (getValueByKey!478 (toList!3001 lm!1707) hash!377)))))

(declare-fun bs!634964 () Bool)

(assert (= bs!634964 d!1290496))

(declare-fun m!4981037 () Bool)

(assert (=> bs!634964 m!4981037))

(assert (=> bs!634964 m!4981037))

(declare-fun m!4981039 () Bool)

(assert (=> bs!634964 m!4981039))

(assert (=> b!4361536 d!1290496))

(declare-fun b!4361846 () Bool)

(declare-fun e!2714592 () List!49107)

(assert (=> b!4361846 (= e!2714592 (Cons!48983 (h!54546 lt!1574083) (removePairForKey!479 (t!356027 lt!1574083) key!3918)))))

(declare-fun b!4361844 () Bool)

(declare-fun e!2714593 () List!49107)

(assert (=> b!4361844 (= e!2714593 (t!356027 lt!1574083))))

(declare-fun b!4361847 () Bool)

(assert (=> b!4361847 (= e!2714592 Nil!48983)))

(declare-fun b!4361845 () Bool)

(assert (=> b!4361845 (= e!2714593 e!2714592)))

(declare-fun c!741667 () Bool)

(assert (=> b!4361845 (= c!741667 ((_ is Cons!48983) lt!1574083))))

(declare-fun d!1290498 () Bool)

(declare-fun lt!1574476 () List!49107)

(assert (=> d!1290498 (not (containsKey!734 lt!1574476 key!3918))))

(assert (=> d!1290498 (= lt!1574476 e!2714593)))

(declare-fun c!741666 () Bool)

(assert (=> d!1290498 (= c!741666 (and ((_ is Cons!48983) lt!1574083) (= (_1!27497 (h!54546 lt!1574083)) key!3918)))))

(assert (=> d!1290498 (noDuplicateKeys!509 lt!1574083)))

(assert (=> d!1290498 (= (removePairForKey!479 lt!1574083 key!3918) lt!1574476)))

(assert (= (and d!1290498 c!741666) b!4361844))

(assert (= (and d!1290498 (not c!741666)) b!4361845))

(assert (= (and b!4361845 c!741667) b!4361846))

(assert (= (and b!4361845 (not c!741667)) b!4361847))

(declare-fun m!4981041 () Bool)

(assert (=> b!4361846 m!4981041))

(declare-fun m!4981043 () Bool)

(assert (=> d!1290498 m!4981043))

(declare-fun m!4981045 () Bool)

(assert (=> d!1290498 m!4981045))

(assert (=> b!4361536 d!1290498))

(declare-fun d!1290500 () Bool)

(assert (=> d!1290500 (contains!11220 (toList!3001 lm!1707) (tuple2!48409 hash!377 lt!1574083))))

(declare-fun lt!1574479 () Unit!72449)

(declare-fun choose!27041 (List!49108 (_ BitVec 64) List!49107) Unit!72449)

(assert (=> d!1290500 (= lt!1574479 (choose!27041 (toList!3001 lm!1707) hash!377 lt!1574083))))

(declare-fun e!2714596 () Bool)

(assert (=> d!1290500 e!2714596))

(declare-fun res!1793503 () Bool)

(assert (=> d!1290500 (=> (not res!1793503) (not e!2714596))))

(assert (=> d!1290500 (= res!1793503 (isStrictlySorted!116 (toList!3001 lm!1707)))))

(assert (=> d!1290500 (= (lemmaGetValueByKeyImpliesContainsTuple!356 (toList!3001 lm!1707) hash!377 lt!1574083) lt!1574479)))

(declare-fun b!4361850 () Bool)

(assert (=> b!4361850 (= e!2714596 (= (getValueByKey!478 (toList!3001 lm!1707) hash!377) (Some!10491 lt!1574083)))))

(assert (= (and d!1290500 res!1793503) b!4361850))

(declare-fun m!4981047 () Bool)

(assert (=> d!1290500 m!4981047))

(declare-fun m!4981049 () Bool)

(assert (=> d!1290500 m!4981049))

(assert (=> d!1290500 m!4980441))

(assert (=> b!4361850 m!4981037))

(assert (=> b!4361536 d!1290500))

(declare-fun d!1290502 () Bool)

(declare-fun lt!1574482 () Bool)

(declare-fun content!7749 (List!49108) (InoxSet tuple2!48408))

(assert (=> d!1290502 (= lt!1574482 (select (content!7749 (toList!3001 lm!1707)) lt!1574086))))

(declare-fun e!2714601 () Bool)

(assert (=> d!1290502 (= lt!1574482 e!2714601)))

(declare-fun res!1793508 () Bool)

(assert (=> d!1290502 (=> (not res!1793508) (not e!2714601))))

(assert (=> d!1290502 (= res!1793508 ((_ is Cons!48984) (toList!3001 lm!1707)))))

(assert (=> d!1290502 (= (contains!11220 (toList!3001 lm!1707) lt!1574086) lt!1574482)))

(declare-fun b!4361855 () Bool)

(declare-fun e!2714602 () Bool)

(assert (=> b!4361855 (= e!2714601 e!2714602)))

(declare-fun res!1793509 () Bool)

(assert (=> b!4361855 (=> res!1793509 e!2714602)))

(assert (=> b!4361855 (= res!1793509 (= (h!54547 (toList!3001 lm!1707)) lt!1574086))))

(declare-fun b!4361856 () Bool)

(assert (=> b!4361856 (= e!2714602 (contains!11220 (t!356028 (toList!3001 lm!1707)) lt!1574086))))

(assert (= (and d!1290502 res!1793508) b!4361855))

(assert (= (and b!4361855 (not res!1793509)) b!4361856))

(declare-fun m!4981051 () Bool)

(assert (=> d!1290502 m!4981051))

(declare-fun m!4981053 () Bool)

(assert (=> d!1290502 m!4981053))

(declare-fun m!4981055 () Bool)

(assert (=> b!4361856 m!4981055))

(assert (=> b!4361536 d!1290502))

(declare-fun d!1290504 () Bool)

(assert (=> d!1290504 (dynLambda!20651 lambda!141629 lt!1574086)))

(declare-fun lt!1574485 () Unit!72449)

(declare-fun choose!27042 (List!49108 Int tuple2!48408) Unit!72449)

(assert (=> d!1290504 (= lt!1574485 (choose!27042 (toList!3001 lm!1707) lambda!141629 lt!1574086))))

(declare-fun e!2714605 () Bool)

(assert (=> d!1290504 e!2714605))

(declare-fun res!1793512 () Bool)

(assert (=> d!1290504 (=> (not res!1793512) (not e!2714605))))

(assert (=> d!1290504 (= res!1793512 (forall!9156 (toList!3001 lm!1707) lambda!141629))))

(assert (=> d!1290504 (= (forallContained!1797 (toList!3001 lm!1707) lambda!141629 lt!1574086) lt!1574485)))

(declare-fun b!4361859 () Bool)

(assert (=> b!4361859 (= e!2714605 (contains!11220 (toList!3001 lm!1707) lt!1574086))))

(assert (= (and d!1290504 res!1793512) b!4361859))

(declare-fun b_lambda!131889 () Bool)

(assert (=> (not b_lambda!131889) (not d!1290504)))

(declare-fun m!4981057 () Bool)

(assert (=> d!1290504 m!4981057))

(declare-fun m!4981059 () Bool)

(assert (=> d!1290504 m!4981059))

(assert (=> d!1290504 m!4980341))

(assert (=> b!4361859 m!4980355))

(assert (=> b!4361536 d!1290504))

(declare-fun d!1290506 () Bool)

(declare-fun isEmpty!28219 (List!49108) Bool)

(assert (=> d!1290506 (= (isEmpty!28217 lm!1707) (isEmpty!28219 (toList!3001 lm!1707)))))

(declare-fun bs!634965 () Bool)

(assert (= bs!634965 d!1290506))

(declare-fun m!4981061 () Bool)

(assert (=> bs!634965 m!4981061))

(assert (=> b!4361534 d!1290506))

(declare-fun d!1290508 () Bool)

(assert (=> d!1290508 (= (eq!279 (+!676 lt!1574072 lt!1574080) lt!1574067) (= (content!7748 (toList!3002 (+!676 lt!1574072 lt!1574080))) (content!7748 (toList!3002 lt!1574067))))))

(declare-fun bs!634966 () Bool)

(assert (= bs!634966 d!1290508))

(declare-fun m!4981063 () Bool)

(assert (=> bs!634966 m!4981063))

(assert (=> bs!634966 m!4980597))

(assert (=> b!4361534 d!1290508))

(declare-fun d!1290510 () Bool)

(declare-fun e!2714606 () Bool)

(assert (=> d!1290510 e!2714606))

(declare-fun res!1793514 () Bool)

(assert (=> d!1290510 (=> (not res!1793514) (not e!2714606))))

(declare-fun lt!1574489 () ListMap!2245)

(assert (=> d!1290510 (= res!1793514 (contains!11221 lt!1574489 (_1!27497 lt!1574080)))))

(declare-fun lt!1574487 () List!49107)

(assert (=> d!1290510 (= lt!1574489 (ListMap!2246 lt!1574487))))

(declare-fun lt!1574486 () Unit!72449)

(declare-fun lt!1574488 () Unit!72449)

(assert (=> d!1290510 (= lt!1574486 lt!1574488)))

(assert (=> d!1290510 (= (getValueByKey!479 lt!1574487 (_1!27497 lt!1574080)) (Some!10492 (_2!27497 lt!1574080)))))

(assert (=> d!1290510 (= lt!1574488 (lemmaContainsTupThenGetReturnValue!252 lt!1574487 (_1!27497 lt!1574080) (_2!27497 lt!1574080)))))

(assert (=> d!1290510 (= lt!1574487 (insertNoDuplicatedKeys!113 (toList!3002 lt!1574072) (_1!27497 lt!1574080) (_2!27497 lt!1574080)))))

(assert (=> d!1290510 (= (+!676 lt!1574072 lt!1574080) lt!1574489)))

(declare-fun b!4361860 () Bool)

(declare-fun res!1793513 () Bool)

(assert (=> b!4361860 (=> (not res!1793513) (not e!2714606))))

(assert (=> b!4361860 (= res!1793513 (= (getValueByKey!479 (toList!3002 lt!1574489) (_1!27497 lt!1574080)) (Some!10492 (_2!27497 lt!1574080))))))

(declare-fun b!4361861 () Bool)

(assert (=> b!4361861 (= e!2714606 (contains!11223 (toList!3002 lt!1574489) lt!1574080))))

(assert (= (and d!1290510 res!1793514) b!4361860))

(assert (= (and b!4361860 res!1793513) b!4361861))

(declare-fun m!4981065 () Bool)

(assert (=> d!1290510 m!4981065))

(declare-fun m!4981067 () Bool)

(assert (=> d!1290510 m!4981067))

(declare-fun m!4981069 () Bool)

(assert (=> d!1290510 m!4981069))

(declare-fun m!4981071 () Bool)

(assert (=> d!1290510 m!4981071))

(declare-fun m!4981073 () Bool)

(assert (=> b!4361860 m!4981073))

(declare-fun m!4981075 () Bool)

(assert (=> b!4361861 m!4981075))

(assert (=> b!4361534 d!1290510))

(declare-fun d!1290512 () Bool)

(assert (=> d!1290512 (eq!279 (+!676 lt!1574072 (tuple2!48407 key!3918 newValue!99)) (+!676 lt!1574075 (tuple2!48407 key!3918 newValue!99)))))

(declare-fun lt!1574492 () Unit!72449)

(declare-fun choose!27043 (ListMap!2245 ListMap!2245 K!10340 V!10586) Unit!72449)

(assert (=> d!1290512 (= lt!1574492 (choose!27043 lt!1574072 lt!1574075 key!3918 newValue!99))))

(assert (=> d!1290512 (eq!279 lt!1574072 lt!1574075)))

(assert (=> d!1290512 (= (lemmaAddToEqMapsPreservesEq!2 lt!1574072 lt!1574075 key!3918 newValue!99) lt!1574492)))

(declare-fun bs!634967 () Bool)

(assert (= bs!634967 d!1290512))

(declare-fun m!4981077 () Bool)

(assert (=> bs!634967 m!4981077))

(declare-fun m!4981079 () Bool)

(assert (=> bs!634967 m!4981079))

(declare-fun m!4981081 () Bool)

(assert (=> bs!634967 m!4981081))

(declare-fun m!4981083 () Bool)

(assert (=> bs!634967 m!4981083))

(assert (=> bs!634967 m!4981081))

(declare-fun m!4981085 () Bool)

(assert (=> bs!634967 m!4981085))

(assert (=> bs!634967 m!4981079))

(assert (=> b!4361534 d!1290512))

(declare-fun bs!634968 () Bool)

(declare-fun d!1290514 () Bool)

(assert (= bs!634968 (and d!1290514 d!1290478)))

(declare-fun lambda!141734 () Int)

(assert (=> bs!634968 (not (= lambda!141734 lambda!141727))))

(declare-fun bs!634969 () Bool)

(assert (= bs!634969 (and d!1290514 d!1290474)))

(assert (=> bs!634969 (not (= lambda!141734 lambda!141726))))

(declare-fun bs!634970 () Bool)

(assert (= bs!634970 (and d!1290514 start!422616)))

(assert (=> bs!634970 (not (= lambda!141734 lambda!141629))))

(declare-fun bs!634971 () Bool)

(assert (= bs!634971 (and d!1290514 d!1290368)))

(assert (=> bs!634971 (not (= lambda!141734 lambda!141639))))

(declare-fun bs!634972 () Bool)

(assert (= bs!634972 (and d!1290514 d!1290396)))

(assert (=> bs!634972 (not (= lambda!141734 lambda!141642))))

(declare-fun bs!634973 () Bool)

(assert (= bs!634973 (and d!1290514 d!1290480)))

(assert (=> bs!634973 (not (= lambda!141734 lambda!141730))))

(declare-fun bs!634974 () Bool)

(assert (= bs!634974 (and d!1290514 d!1290490)))

(assert (=> bs!634974 (not (= lambda!141734 lambda!141731))))

(assert (=> d!1290514 true))

(assert (=> d!1290514 (= (allKeysSameHashInMap!613 lm!1707 hashF!1247) (forall!9156 (toList!3001 lm!1707) lambda!141734))))

(declare-fun bs!634975 () Bool)

(assert (= bs!634975 d!1290514))

(declare-fun m!4981087 () Bool)

(assert (=> bs!634975 m!4981087))

(assert (=> b!4361538 d!1290514))

(declare-fun d!1290516 () Bool)

(declare-fun e!2714612 () Bool)

(assert (=> d!1290516 e!2714612))

(declare-fun res!1793517 () Bool)

(assert (=> d!1290516 (=> res!1793517 e!2714612)))

(declare-fun lt!1574502 () Bool)

(assert (=> d!1290516 (= res!1793517 (not lt!1574502))))

(declare-fun lt!1574501 () Bool)

(assert (=> d!1290516 (= lt!1574502 lt!1574501)))

(declare-fun lt!1574503 () Unit!72449)

(declare-fun e!2714611 () Unit!72449)

(assert (=> d!1290516 (= lt!1574503 e!2714611)))

(declare-fun c!741670 () Bool)

(assert (=> d!1290516 (= c!741670 lt!1574501)))

(declare-fun containsKey!738 (List!49108 (_ BitVec 64)) Bool)

(assert (=> d!1290516 (= lt!1574501 (containsKey!738 (toList!3001 lm!1707) hash!377))))

(assert (=> d!1290516 (= (contains!11219 lm!1707 hash!377) lt!1574502)))

(declare-fun b!4361870 () Bool)

(declare-fun lt!1574504 () Unit!72449)

(assert (=> b!4361870 (= e!2714611 lt!1574504)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!390 (List!49108 (_ BitVec 64)) Unit!72449)

(assert (=> b!4361870 (= lt!1574504 (lemmaContainsKeyImpliesGetValueByKeyDefined!390 (toList!3001 lm!1707) hash!377))))

(declare-fun isDefined!7787 (Option!10492) Bool)

(assert (=> b!4361870 (isDefined!7787 (getValueByKey!478 (toList!3001 lm!1707) hash!377))))

(declare-fun b!4361871 () Bool)

(declare-fun Unit!72508 () Unit!72449)

(assert (=> b!4361871 (= e!2714611 Unit!72508)))

(declare-fun b!4361872 () Bool)

(assert (=> b!4361872 (= e!2714612 (isDefined!7787 (getValueByKey!478 (toList!3001 lm!1707) hash!377)))))

(assert (= (and d!1290516 c!741670) b!4361870))

(assert (= (and d!1290516 (not c!741670)) b!4361871))

(assert (= (and d!1290516 (not res!1793517)) b!4361872))

(declare-fun m!4981089 () Bool)

(assert (=> d!1290516 m!4981089))

(declare-fun m!4981091 () Bool)

(assert (=> b!4361870 m!4981091))

(assert (=> b!4361870 m!4981037))

(assert (=> b!4361870 m!4981037))

(declare-fun m!4981093 () Bool)

(assert (=> b!4361870 m!4981093))

(assert (=> b!4361872 m!4981037))

(assert (=> b!4361872 m!4981037))

(assert (=> b!4361872 m!4981093))

(assert (=> b!4361528 d!1290516))

(declare-fun bs!634976 () Bool)

(declare-fun d!1290518 () Bool)

(assert (= bs!634976 (and d!1290518 b!4361789)))

(declare-fun lambda!141737 () Int)

(assert (=> bs!634976 (not (= lambda!141737 lambda!141720))))

(declare-fun bs!634977 () Bool)

(assert (= bs!634977 (and d!1290518 b!4361792)))

(assert (=> bs!634977 (not (= lambda!141737 lambda!141718))))

(declare-fun bs!634978 () Bool)

(assert (= bs!634978 (and d!1290518 b!4361802)))

(assert (=> bs!634978 (not (= lambda!141737 lambda!141723))))

(assert (=> bs!634976 (not (= lambda!141737 lambda!141719))))

(declare-fun bs!634979 () Bool)

(assert (= bs!634979 (and d!1290518 d!1290468)))

(assert (=> bs!634979 (not (= lambda!141737 lambda!141725))))

(assert (=> bs!634978 (not (= lambda!141737 lambda!141724))))

(declare-fun bs!634980 () Bool)

(assert (= bs!634980 (and d!1290518 d!1290408)))

(assert (=> bs!634980 (not (= lambda!141737 lambda!141721))))

(declare-fun bs!634981 () Bool)

(assert (= bs!634981 (and d!1290518 b!4361805)))

(assert (=> bs!634981 (not (= lambda!141737 lambda!141722))))

(assert (=> d!1290518 true))

(assert (=> d!1290518 true))

(assert (=> d!1290518 (= (allKeysSameHash!467 newBucket!200 hash!377 hashF!1247) (forall!9158 newBucket!200 lambda!141737))))

(declare-fun bs!634982 () Bool)

(assert (= bs!634982 d!1290518))

(declare-fun m!4981095 () Bool)

(assert (=> bs!634982 m!4981095))

(assert (=> b!4361537 d!1290518))

(declare-fun e!2714615 () Bool)

(declare-fun tp!1330388 () Bool)

(declare-fun b!4361881 () Bool)

(assert (=> b!4361881 (= e!2714615 (and tp_is_empty!25273 tp_is_empty!25275 tp!1330388))))

(assert (=> b!4361530 (= tp!1330376 e!2714615)))

(assert (= (and b!4361530 ((_ is Cons!48983) (t!356027 newBucket!200))) b!4361881))

(declare-fun b!4361886 () Bool)

(declare-fun e!2714618 () Bool)

(declare-fun tp!1330393 () Bool)

(declare-fun tp!1330394 () Bool)

(assert (=> b!4361886 (= e!2714618 (and tp!1330393 tp!1330394))))

(assert (=> b!4361529 (= tp!1330375 e!2714618)))

(assert (= (and b!4361529 ((_ is Cons!48984) (toList!3001 lm!1707))) b!4361886))

(declare-fun b_lambda!131891 () Bool)

(assert (= b_lambda!131889 (or start!422616 b_lambda!131891)))

(declare-fun bs!634983 () Bool)

(declare-fun d!1290520 () Bool)

(assert (= bs!634983 (and d!1290520 start!422616)))

(assert (=> bs!634983 (= (dynLambda!20651 lambda!141629 lt!1574086) (noDuplicateKeys!509 (_2!27498 lt!1574086)))))

(declare-fun m!4981097 () Bool)

(assert (=> bs!634983 m!4981097))

(assert (=> d!1290504 d!1290520))

(declare-fun b_lambda!131893 () Bool)

(assert (= b_lambda!131871 (or start!422616 b_lambda!131893)))

(declare-fun bs!634984 () Bool)

(declare-fun d!1290522 () Bool)

(assert (= bs!634984 (and d!1290522 start!422616)))

(assert (=> bs!634984 (= (dynLambda!20651 lambda!141629 (h!54547 (toList!3001 lt!1574070))) (noDuplicateKeys!509 (_2!27498 (h!54547 (toList!3001 lt!1574070)))))))

(declare-fun m!4981099 () Bool)

(assert (=> bs!634984 m!4981099))

(assert (=> b!4361591 d!1290522))

(declare-fun b_lambda!131895 () Bool)

(assert (= b_lambda!131887 (or start!422616 b_lambda!131895)))

(declare-fun bs!634985 () Bool)

(declare-fun d!1290524 () Bool)

(assert (= bs!634985 (and d!1290524 start!422616)))

(assert (=> bs!634985 (= (dynLambda!20651 lambda!141629 (tuple2!48409 hash!377 newBucket!200)) (noDuplicateKeys!509 (_2!27498 (tuple2!48409 hash!377 newBucket!200))))))

(declare-fun m!4981101 () Bool)

(assert (=> bs!634985 m!4981101))

(assert (=> b!4361824 d!1290524))

(declare-fun b_lambda!131897 () Bool)

(assert (= b_lambda!131869 (or start!422616 b_lambda!131897)))

(declare-fun bs!634986 () Bool)

(declare-fun d!1290526 () Bool)

(assert (= bs!634986 (and d!1290526 start!422616)))

(assert (=> bs!634986 (= (dynLambda!20651 lambda!141629 (h!54547 (toList!3001 lm!1707))) (noDuplicateKeys!509 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))

(assert (=> bs!634986 m!4980639))

(assert (=> b!4361571 d!1290526))

(check-sat (not bs!634985) (not b!4361806) (not d!1290496) (not d!1290488) (not b!4361698) (not d!1290472) (not b!4361818) (not d!1290508) (not d!1290500) (not bm!303201) (not bm!303199) (not b_lambda!131895) (not bm!303179) (not b!4361860) (not d!1290476) (not b!4361789) (not d!1290408) (not b!4361820) (not b!4361833) (not d!1290504) (not d!1290480) (not b!4361832) (not b!4361859) (not d!1290514) (not b!4361817) (not d!1290490) (not b!4361803) (not b!4361607) (not b!4361618) (not d!1290494) (not b!4361670) (not b!4361790) tp_is_empty!25273 (not bs!634986) (not b!4361807) tp_is_empty!25275 (not b!4361708) (not b!4361592) (not b!4361701) (not b!4361804) (not bm!303198) (not d!1290510) (not d!1290398) (not b!4361856) (not b!4361872) (not d!1290498) (not b!4361700) (not b!4361834) (not d!1290512) (not b!4361712) (not bm!303200) (not d!1290400) (not b!4361703) (not d!1290392) (not b!4361810) (not b!4361861) (not d!1290486) (not d!1290366) (not bm!303203) (not b!4361829) (not d!1290478) (not d!1290368) (not b!4361713) (not d!1290468) (not b!4361850) (not b!4361710) (not b!4361669) (not bs!634983) (not b!4361819) (not d!1290506) (not d!1290474) (not b!4361809) (not d!1290362) (not d!1290516) (not b!4361619) (not bm!303178) (not b!4361709) (not bm!303202) (not d!1290518) (not d!1290492) (not bm!303204) (not b_lambda!131897) (not b!4361675) (not b!4361802) (not bs!634984) (not d!1290394) (not d!1290396) (not b!4361828) (not b!4361705) (not b!4361702) (not b!4361699) (not b!4361870) (not b!4361697) (not d!1290354) (not d!1290470) (not b!4361881) (not b_lambda!131893) (not b!4361831) (not d!1290484) (not b!4361793) (not b_lambda!131891) (not b!4361811) (not d!1290404) (not b!4361714) (not b!4361846) (not d!1290406) (not b!4361572) (not d!1290390) (not d!1290502) (not b!4361830) (not b!4361886) (not b!4361827) (not b!4361711) (not b!4361791))
(check-sat)
(get-model)

(declare-fun d!1290636 () Bool)

(assert (=> d!1290636 (= (eq!279 (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 lm!1707))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (+!676 (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 lm!1707))) lt!1574079) (tuple2!48407 key!3918 newValue!99))) (= (content!7748 (toList!3002 (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 lm!1707))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))))) (content!7748 (toList!3002 (+!676 (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 lm!1707))) lt!1574079) (tuple2!48407 key!3918 newValue!99))))))))

(declare-fun bs!635049 () Bool)

(assert (= bs!635049 d!1290636))

(declare-fun m!4981475 () Bool)

(assert (=> bs!635049 m!4981475))

(declare-fun m!4981483 () Bool)

(assert (=> bs!635049 m!4981483))

(assert (=> d!1290472 d!1290636))

(declare-fun bs!635050 () Bool)

(declare-fun b!4362144 () Bool)

(assert (= bs!635050 (and b!4362144 b!4361789)))

(declare-fun lambda!141760 () Int)

(assert (=> bs!635050 (= (= (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99)) lt!1574405) (= lambda!141760 lambda!141720))))

(declare-fun bs!635051 () Bool)

(assert (= bs!635051 (and b!4362144 b!4361792)))

(assert (=> bs!635051 (= (= (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99)) lt!1574079) (= lambda!141760 lambda!141718))))

(declare-fun bs!635052 () Bool)

(assert (= bs!635052 (and b!4362144 b!4361802)))

(assert (=> bs!635052 (= (= (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99)) lt!1574071) (= lambda!141760 lambda!141723))))

(assert (=> bs!635050 (= (= (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99)) lt!1574079) (= lambda!141760 lambda!141719))))

(declare-fun bs!635053 () Bool)

(assert (= bs!635053 (and b!4362144 d!1290518)))

(assert (=> bs!635053 (not (= lambda!141760 lambda!141737))))

(declare-fun bs!635054 () Bool)

(assert (= bs!635054 (and b!4362144 d!1290468)))

(assert (=> bs!635054 (= (= (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99)) lt!1574438) (= lambda!141760 lambda!141725))))

(assert (=> bs!635052 (= (= (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99)) lt!1574426) (= lambda!141760 lambda!141724))))

(declare-fun bs!635055 () Bool)

(assert (= bs!635055 (and b!4362144 d!1290408)))

(assert (=> bs!635055 (= (= (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99)) lt!1574417) (= lambda!141760 lambda!141721))))

(declare-fun bs!635056 () Bool)

(assert (= bs!635056 (and b!4362144 b!4361805)))

(assert (=> bs!635056 (= (= (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99)) lt!1574071) (= lambda!141760 lambda!141722))))

(assert (=> b!4362144 true))

(declare-fun bs!635057 () Bool)

(declare-fun b!4362141 () Bool)

(assert (= bs!635057 (and b!4362141 b!4361789)))

(declare-fun lambda!141761 () Int)

(assert (=> bs!635057 (= (= (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99)) lt!1574405) (= lambda!141761 lambda!141720))))

(declare-fun bs!635058 () Bool)

(assert (= bs!635058 (and b!4362141 b!4361792)))

(assert (=> bs!635058 (= (= (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99)) lt!1574079) (= lambda!141761 lambda!141718))))

(declare-fun bs!635059 () Bool)

(assert (= bs!635059 (and b!4362141 b!4361802)))

(assert (=> bs!635059 (= (= (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99)) lt!1574071) (= lambda!141761 lambda!141723))))

(assert (=> bs!635057 (= (= (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99)) lt!1574079) (= lambda!141761 lambda!141719))))

(declare-fun bs!635060 () Bool)

(assert (= bs!635060 (and b!4362141 d!1290518)))

(assert (=> bs!635060 (not (= lambda!141761 lambda!141737))))

(declare-fun bs!635061 () Bool)

(assert (= bs!635061 (and b!4362141 b!4362144)))

(assert (=> bs!635061 (= lambda!141761 lambda!141760)))

(declare-fun bs!635062 () Bool)

(assert (= bs!635062 (and b!4362141 d!1290468)))

(assert (=> bs!635062 (= (= (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99)) lt!1574438) (= lambda!141761 lambda!141725))))

(assert (=> bs!635059 (= (= (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99)) lt!1574426) (= lambda!141761 lambda!141724))))

(declare-fun bs!635063 () Bool)

(assert (= bs!635063 (and b!4362141 d!1290408)))

(assert (=> bs!635063 (= (= (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99)) lt!1574417) (= lambda!141761 lambda!141721))))

(declare-fun bs!635064 () Bool)

(assert (= bs!635064 (and b!4362141 b!4361805)))

(assert (=> bs!635064 (= (= (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99)) lt!1574071) (= lambda!141761 lambda!141722))))

(assert (=> b!4362141 true))

(declare-fun lambda!141762 () Int)

(declare-fun lt!1574649 () ListMap!2245)

(assert (=> bs!635057 (= (= lt!1574649 lt!1574405) (= lambda!141762 lambda!141720))))

(assert (=> bs!635058 (= (= lt!1574649 lt!1574079) (= lambda!141762 lambda!141718))))

(assert (=> bs!635059 (= (= lt!1574649 lt!1574071) (= lambda!141762 lambda!141723))))

(assert (=> bs!635057 (= (= lt!1574649 lt!1574079) (= lambda!141762 lambda!141719))))

(assert (=> bs!635060 (not (= lambda!141762 lambda!141737))))

(assert (=> bs!635061 (= (= lt!1574649 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141762 lambda!141760))))

(assert (=> bs!635062 (= (= lt!1574649 lt!1574438) (= lambda!141762 lambda!141725))))

(assert (=> bs!635059 (= (= lt!1574649 lt!1574426) (= lambda!141762 lambda!141724))))

(assert (=> bs!635063 (= (= lt!1574649 lt!1574417) (= lambda!141762 lambda!141721))))

(assert (=> bs!635064 (= (= lt!1574649 lt!1574071) (= lambda!141762 lambda!141722))))

(assert (=> b!4362141 (= (= lt!1574649 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141762 lambda!141761))))

(assert (=> b!4362141 true))

(declare-fun bs!635066 () Bool)

(declare-fun d!1290638 () Bool)

(assert (= bs!635066 (and d!1290638 b!4361789)))

(declare-fun lambda!141763 () Int)

(declare-fun lt!1574661 () ListMap!2245)

(assert (=> bs!635066 (= (= lt!1574661 lt!1574405) (= lambda!141763 lambda!141720))))

(declare-fun bs!635067 () Bool)

(assert (= bs!635067 (and d!1290638 b!4361802)))

(assert (=> bs!635067 (= (= lt!1574661 lt!1574071) (= lambda!141763 lambda!141723))))

(assert (=> bs!635066 (= (= lt!1574661 lt!1574079) (= lambda!141763 lambda!141719))))

(declare-fun bs!635068 () Bool)

(assert (= bs!635068 (and d!1290638 d!1290518)))

(assert (=> bs!635068 (not (= lambda!141763 lambda!141737))))

(declare-fun bs!635069 () Bool)

(assert (= bs!635069 (and d!1290638 b!4362144)))

(assert (=> bs!635069 (= (= lt!1574661 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141763 lambda!141760))))

(declare-fun bs!635070 () Bool)

(assert (= bs!635070 (and d!1290638 d!1290468)))

(assert (=> bs!635070 (= (= lt!1574661 lt!1574438) (= lambda!141763 lambda!141725))))

(assert (=> bs!635067 (= (= lt!1574661 lt!1574426) (= lambda!141763 lambda!141724))))

(declare-fun bs!635071 () Bool)

(assert (= bs!635071 (and d!1290638 d!1290408)))

(assert (=> bs!635071 (= (= lt!1574661 lt!1574417) (= lambda!141763 lambda!141721))))

(declare-fun bs!635072 () Bool)

(assert (= bs!635072 (and d!1290638 b!4361792)))

(assert (=> bs!635072 (= (= lt!1574661 lt!1574079) (= lambda!141763 lambda!141718))))

(declare-fun bs!635073 () Bool)

(assert (= bs!635073 (and d!1290638 b!4362141)))

(assert (=> bs!635073 (= (= lt!1574661 lt!1574649) (= lambda!141763 lambda!141762))))

(declare-fun bs!635074 () Bool)

(assert (= bs!635074 (and d!1290638 b!4361805)))

(assert (=> bs!635074 (= (= lt!1574661 lt!1574071) (= lambda!141763 lambda!141722))))

(assert (=> bs!635073 (= (= lt!1574661 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141763 lambda!141761))))

(assert (=> d!1290638 true))

(declare-fun e!2714779 () Bool)

(assert (=> d!1290638 e!2714779))

(declare-fun res!1793647 () Bool)

(assert (=> d!1290638 (=> (not res!1793647) (not e!2714779))))

(assert (=> d!1290638 (= res!1793647 (forall!9158 (_2!27498 (h!54547 (toList!3001 lm!1707))) lambda!141763))))

(declare-fun e!2714780 () ListMap!2245)

(assert (=> d!1290638 (= lt!1574661 e!2714780)))

(declare-fun c!741732 () Bool)

(assert (=> d!1290638 (= c!741732 ((_ is Nil!48983) (_2!27498 (h!54547 (toList!3001 lm!1707)))))))

(assert (=> d!1290638 (noDuplicateKeys!509 (_2!27498 (h!54547 (toList!3001 lm!1707))))))

(assert (=> d!1290638 (= (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 lm!1707))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) lt!1574661)))

(assert (=> b!4362141 (= e!2714780 lt!1574649)))

(declare-fun lt!1574652 () ListMap!2245)

(assert (=> b!4362141 (= lt!1574652 (+!676 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99)) (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (=> b!4362141 (= lt!1574649 (addToMapMapFromBucket!205 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) (+!676 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99)) (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun lt!1574654 () Unit!72449)

(declare-fun call!303238 () Unit!72449)

(assert (=> b!4362141 (= lt!1574654 call!303238)))

(declare-fun call!303239 () Bool)

(assert (=> b!4362141 call!303239))

(declare-fun lt!1574662 () Unit!72449)

(assert (=> b!4362141 (= lt!1574662 lt!1574654)))

(declare-fun call!303240 () Bool)

(assert (=> b!4362141 call!303240))

(declare-fun lt!1574653 () Unit!72449)

(declare-fun Unit!72525 () Unit!72449)

(assert (=> b!4362141 (= lt!1574653 Unit!72525)))

(assert (=> b!4362141 (forall!9158 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) lambda!141762)))

(declare-fun lt!1574659 () Unit!72449)

(declare-fun Unit!72526 () Unit!72449)

(assert (=> b!4362141 (= lt!1574659 Unit!72526)))

(declare-fun lt!1574650 () Unit!72449)

(declare-fun Unit!72527 () Unit!72449)

(assert (=> b!4362141 (= lt!1574650 Unit!72527)))

(declare-fun lt!1574648 () Unit!72449)

(assert (=> b!4362141 (= lt!1574648 (forallContained!1799 (toList!3002 lt!1574652) lambda!141762 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (=> b!4362141 (contains!11221 lt!1574652 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(declare-fun lt!1574665 () Unit!72449)

(declare-fun Unit!72528 () Unit!72449)

(assert (=> b!4362141 (= lt!1574665 Unit!72528)))

(assert (=> b!4362141 (contains!11221 lt!1574649 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(declare-fun lt!1574668 () Unit!72449)

(declare-fun Unit!72529 () Unit!72449)

(assert (=> b!4362141 (= lt!1574668 Unit!72529)))

(assert (=> b!4362141 (forall!9158 (_2!27498 (h!54547 (toList!3001 lm!1707))) lambda!141762)))

(declare-fun lt!1574664 () Unit!72449)

(declare-fun Unit!72530 () Unit!72449)

(assert (=> b!4362141 (= lt!1574664 Unit!72530)))

(assert (=> b!4362141 (forall!9158 (toList!3002 lt!1574652) lambda!141762)))

(declare-fun lt!1574663 () Unit!72449)

(declare-fun Unit!72531 () Unit!72449)

(assert (=> b!4362141 (= lt!1574663 Unit!72531)))

(declare-fun lt!1574666 () Unit!72449)

(declare-fun Unit!72532 () Unit!72449)

(assert (=> b!4362141 (= lt!1574666 Unit!72532)))

(declare-fun lt!1574657 () Unit!72449)

(assert (=> b!4362141 (= lt!1574657 (addForallContainsKeyThenBeforeAdding!73 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99)) lt!1574649 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (_2!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> b!4362141 (forall!9158 (toList!3002 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) lambda!141762)))

(declare-fun lt!1574651 () Unit!72449)

(assert (=> b!4362141 (= lt!1574651 lt!1574657)))

(assert (=> b!4362141 (forall!9158 (toList!3002 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) lambda!141762)))

(declare-fun lt!1574658 () Unit!72449)

(declare-fun Unit!72533 () Unit!72449)

(assert (=> b!4362141 (= lt!1574658 Unit!72533)))

(declare-fun res!1793648 () Bool)

(assert (=> b!4362141 (= res!1793648 (forall!9158 (_2!27498 (h!54547 (toList!3001 lm!1707))) lambda!141762))))

(declare-fun e!2714778 () Bool)

(assert (=> b!4362141 (=> (not res!1793648) (not e!2714778))))

(assert (=> b!4362141 e!2714778))

(declare-fun lt!1574660 () Unit!72449)

(declare-fun Unit!72534 () Unit!72449)

(assert (=> b!4362141 (= lt!1574660 Unit!72534)))

(declare-fun b!4362142 () Bool)

(assert (=> b!4362142 (= e!2714778 (forall!9158 (toList!3002 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) lambda!141762))))

(declare-fun b!4362143 () Bool)

(assert (=> b!4362143 (= e!2714779 (invariantList!690 (toList!3002 lt!1574661)))))

(declare-fun bm!303233 () Bool)

(assert (=> bm!303233 (= call!303240 (forall!9158 (ite c!741732 (toList!3002 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (toList!3002 lt!1574652)) (ite c!741732 lambda!141760 lambda!141762)))))

(assert (=> b!4362144 (= e!2714780 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99)))))

(declare-fun lt!1574655 () Unit!72449)

(assert (=> b!4362144 (= lt!1574655 call!303238)))

(assert (=> b!4362144 call!303239))

(declare-fun lt!1574667 () Unit!72449)

(assert (=> b!4362144 (= lt!1574667 lt!1574655)))

(assert (=> b!4362144 call!303240))

(declare-fun lt!1574656 () Unit!72449)

(declare-fun Unit!72535 () Unit!72449)

(assert (=> b!4362144 (= lt!1574656 Unit!72535)))

(declare-fun bm!303234 () Bool)

(assert (=> bm!303234 (= call!303239 (forall!9158 (toList!3002 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (ite c!741732 lambda!141760 lambda!141761)))))

(declare-fun bm!303235 () Bool)

(assert (=> bm!303235 (= call!303238 (lemmaContainsAllItsOwnKeys!73 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))))))

(declare-fun b!4362145 () Bool)

(declare-fun res!1793646 () Bool)

(assert (=> b!4362145 (=> (not res!1793646) (not e!2714779))))

(assert (=> b!4362145 (= res!1793646 (forall!9158 (toList!3002 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) lambda!141763))))

(assert (= (and d!1290638 c!741732) b!4362144))

(assert (= (and d!1290638 (not c!741732)) b!4362141))

(assert (= (and b!4362141 res!1793648) b!4362142))

(assert (= (or b!4362144 b!4362141) bm!303235))

(assert (= (or b!4362144 b!4362141) bm!303234))

(assert (= (or b!4362144 b!4362141) bm!303233))

(assert (= (and d!1290638 res!1793647) b!4362145))

(assert (= (and b!4362145 res!1793646) b!4362143))

(declare-fun m!4981567 () Bool)

(assert (=> b!4362143 m!4981567))

(declare-fun m!4981569 () Bool)

(assert (=> d!1290638 m!4981569))

(assert (=> d!1290638 m!4980639))

(assert (=> b!4362141 m!4980943))

(declare-fun m!4981575 () Bool)

(assert (=> b!4362141 m!4981575))

(declare-fun m!4981577 () Bool)

(assert (=> b!4362141 m!4981577))

(declare-fun m!4981579 () Bool)

(assert (=> b!4362141 m!4981579))

(declare-fun m!4981581 () Bool)

(assert (=> b!4362141 m!4981581))

(declare-fun m!4981583 () Bool)

(assert (=> b!4362141 m!4981583))

(declare-fun m!4981585 () Bool)

(assert (=> b!4362141 m!4981585))

(assert (=> b!4362141 m!4981577))

(declare-fun m!4981587 () Bool)

(assert (=> b!4362141 m!4981587))

(declare-fun m!4981591 () Bool)

(assert (=> b!4362141 m!4981591))

(assert (=> b!4362141 m!4980943))

(assert (=> b!4362141 m!4981587))

(declare-fun m!4981595 () Bool)

(assert (=> b!4362141 m!4981595))

(assert (=> b!4362141 m!4981595))

(declare-fun m!4981597 () Bool)

(assert (=> b!4362141 m!4981597))

(declare-fun m!4981599 () Bool)

(assert (=> b!4362145 m!4981599))

(assert (=> bm!303235 m!4980943))

(declare-fun m!4981601 () Bool)

(assert (=> bm!303235 m!4981601))

(declare-fun m!4981603 () Bool)

(assert (=> bm!303234 m!4981603))

(declare-fun m!4981605 () Bool)

(assert (=> bm!303233 m!4981605))

(assert (=> b!4362142 m!4981577))

(assert (=> d!1290472 d!1290638))

(declare-fun d!1290666 () Bool)

(declare-fun e!2714803 () Bool)

(assert (=> d!1290666 e!2714803))

(declare-fun res!1793668 () Bool)

(assert (=> d!1290666 (=> (not res!1793668) (not e!2714803))))

(declare-fun lt!1574688 () ListMap!2245)

(assert (=> d!1290666 (= res!1793668 (contains!11221 lt!1574688 (_1!27497 (tuple2!48407 key!3918 newValue!99))))))

(declare-fun lt!1574686 () List!49107)

(assert (=> d!1290666 (= lt!1574688 (ListMap!2246 lt!1574686))))

(declare-fun lt!1574685 () Unit!72449)

(declare-fun lt!1574687 () Unit!72449)

(assert (=> d!1290666 (= lt!1574685 lt!1574687)))

(assert (=> d!1290666 (= (getValueByKey!479 lt!1574686 (_1!27497 (tuple2!48407 key!3918 newValue!99))) (Some!10492 (_2!27497 (tuple2!48407 key!3918 newValue!99))))))

(assert (=> d!1290666 (= lt!1574687 (lemmaContainsTupThenGetReturnValue!252 lt!1574686 (_1!27497 (tuple2!48407 key!3918 newValue!99)) (_2!27497 (tuple2!48407 key!3918 newValue!99))))))

(assert (=> d!1290666 (= lt!1574686 (insertNoDuplicatedKeys!113 (toList!3002 (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 lm!1707))) lt!1574079)) (_1!27497 (tuple2!48407 key!3918 newValue!99)) (_2!27497 (tuple2!48407 key!3918 newValue!99))))))

(assert (=> d!1290666 (= (+!676 (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 lm!1707))) lt!1574079) (tuple2!48407 key!3918 newValue!99)) lt!1574688)))

(declare-fun b!4362178 () Bool)

(declare-fun res!1793667 () Bool)

(assert (=> b!4362178 (=> (not res!1793667) (not e!2714803))))

(assert (=> b!4362178 (= res!1793667 (= (getValueByKey!479 (toList!3002 lt!1574688) (_1!27497 (tuple2!48407 key!3918 newValue!99))) (Some!10492 (_2!27497 (tuple2!48407 key!3918 newValue!99)))))))

(declare-fun b!4362179 () Bool)

(assert (=> b!4362179 (= e!2714803 (contains!11223 (toList!3002 lt!1574688) (tuple2!48407 key!3918 newValue!99)))))

(assert (= (and d!1290666 res!1793668) b!4362178))

(assert (= (and b!4362178 res!1793667) b!4362179))

(declare-fun m!4981607 () Bool)

(assert (=> d!1290666 m!4981607))

(declare-fun m!4981609 () Bool)

(assert (=> d!1290666 m!4981609))

(declare-fun m!4981611 () Bool)

(assert (=> d!1290666 m!4981611))

(declare-fun m!4981613 () Bool)

(assert (=> d!1290666 m!4981613))

(declare-fun m!4981615 () Bool)

(assert (=> b!4362178 m!4981615))

(declare-fun m!4981617 () Bool)

(assert (=> b!4362179 m!4981617))

(assert (=> d!1290472 d!1290666))

(declare-fun d!1290668 () Bool)

(declare-fun e!2714804 () Bool)

(assert (=> d!1290668 e!2714804))

(declare-fun res!1793670 () Bool)

(assert (=> d!1290668 (=> (not res!1793670) (not e!2714804))))

(declare-fun lt!1574692 () ListMap!2245)

(assert (=> d!1290668 (= res!1793670 (contains!11221 lt!1574692 (_1!27497 (tuple2!48407 key!3918 newValue!99))))))

(declare-fun lt!1574690 () List!49107)

(assert (=> d!1290668 (= lt!1574692 (ListMap!2246 lt!1574690))))

(declare-fun lt!1574689 () Unit!72449)

(declare-fun lt!1574691 () Unit!72449)

(assert (=> d!1290668 (= lt!1574689 lt!1574691)))

(assert (=> d!1290668 (= (getValueByKey!479 lt!1574690 (_1!27497 (tuple2!48407 key!3918 newValue!99))) (Some!10492 (_2!27497 (tuple2!48407 key!3918 newValue!99))))))

(assert (=> d!1290668 (= lt!1574691 (lemmaContainsTupThenGetReturnValue!252 lt!1574690 (_1!27497 (tuple2!48407 key!3918 newValue!99)) (_2!27497 (tuple2!48407 key!3918 newValue!99))))))

(assert (=> d!1290668 (= lt!1574690 (insertNoDuplicatedKeys!113 (toList!3002 lt!1574079) (_1!27497 (tuple2!48407 key!3918 newValue!99)) (_2!27497 (tuple2!48407 key!3918 newValue!99))))))

(assert (=> d!1290668 (= (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99)) lt!1574692)))

(declare-fun b!4362180 () Bool)

(declare-fun res!1793669 () Bool)

(assert (=> b!4362180 (=> (not res!1793669) (not e!2714804))))

(assert (=> b!4362180 (= res!1793669 (= (getValueByKey!479 (toList!3002 lt!1574692) (_1!27497 (tuple2!48407 key!3918 newValue!99))) (Some!10492 (_2!27497 (tuple2!48407 key!3918 newValue!99)))))))

(declare-fun b!4362181 () Bool)

(assert (=> b!4362181 (= e!2714804 (contains!11223 (toList!3002 lt!1574692) (tuple2!48407 key!3918 newValue!99)))))

(assert (= (and d!1290668 res!1793670) b!4362180))

(assert (= (and b!4362180 res!1793669) b!4362181))

(declare-fun m!4981619 () Bool)

(assert (=> d!1290668 m!4981619))

(declare-fun m!4981621 () Bool)

(assert (=> d!1290668 m!4981621))

(declare-fun m!4981623 () Bool)

(assert (=> d!1290668 m!4981623))

(declare-fun m!4981625 () Bool)

(assert (=> d!1290668 m!4981625))

(declare-fun m!4981627 () Bool)

(assert (=> b!4362180 m!4981627))

(declare-fun m!4981629 () Bool)

(assert (=> b!4362181 m!4981629))

(assert (=> d!1290472 d!1290668))

(declare-fun d!1290670 () Bool)

(assert (=> d!1290670 (eq!279 (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 lm!1707))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (+!676 (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 lm!1707))) lt!1574079) (tuple2!48407 key!3918 newValue!99)))))

(assert (=> d!1290670 true))

(declare-fun _$15!556 () Unit!72449)

(assert (=> d!1290670 (= (choose!27038 lt!1574079 key!3918 newValue!99 (_2!27498 (h!54547 (toList!3001 lm!1707)))) _$15!556)))

(declare-fun bs!635107 () Bool)

(assert (= bs!635107 d!1290670))

(assert (=> bs!635107 m!4980945))

(assert (=> bs!635107 m!4980941))

(assert (=> bs!635107 m!4980947))

(assert (=> bs!635107 m!4980393))

(assert (=> bs!635107 m!4980943))

(assert (=> bs!635107 m!4980393))

(assert (=> bs!635107 m!4980941))

(assert (=> bs!635107 m!4980943))

(assert (=> bs!635107 m!4980945))

(assert (=> d!1290472 d!1290670))

(assert (=> d!1290472 d!1290358))

(assert (=> d!1290472 d!1290408))

(declare-fun d!1290676 () Bool)

(declare-fun res!1793674 () Bool)

(declare-fun e!2714810 () Bool)

(assert (=> d!1290676 (=> res!1793674 e!2714810)))

(assert (=> d!1290676 (= res!1793674 (and ((_ is Cons!48983) (t!356027 (apply!11361 lm!1707 (_1!27498 (h!54547 (toList!3001 lm!1707)))))) (= (_1!27497 (h!54546 (t!356027 (apply!11361 lm!1707 (_1!27498 (h!54547 (toList!3001 lm!1707))))))) key!3918)))))

(assert (=> d!1290676 (= (containsKey!734 (t!356027 (apply!11361 lm!1707 (_1!27498 (h!54547 (toList!3001 lm!1707))))) key!3918) e!2714810)))

(declare-fun b!4362191 () Bool)

(declare-fun e!2714811 () Bool)

(assert (=> b!4362191 (= e!2714810 e!2714811)))

(declare-fun res!1793675 () Bool)

(assert (=> b!4362191 (=> (not res!1793675) (not e!2714811))))

(assert (=> b!4362191 (= res!1793675 ((_ is Cons!48983) (t!356027 (apply!11361 lm!1707 (_1!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun b!4362192 () Bool)

(assert (=> b!4362192 (= e!2714811 (containsKey!734 (t!356027 (t!356027 (apply!11361 lm!1707 (_1!27498 (h!54547 (toList!3001 lm!1707)))))) key!3918))))

(assert (= (and d!1290676 (not res!1793674)) b!4362191))

(assert (= (and b!4362191 res!1793675) b!4362192))

(declare-fun m!4981633 () Bool)

(assert (=> b!4362192 m!4981633))

(assert (=> b!4361705 d!1290676))

(declare-fun d!1290678 () Bool)

(assert (=> d!1290678 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574072) key!3918))))

(declare-fun lt!1574716 () Unit!72449)

(declare-fun choose!27050 (List!49107 K!10340) Unit!72449)

(assert (=> d!1290678 (= lt!1574716 (choose!27050 (toList!3002 lt!1574072) key!3918))))

(assert (=> d!1290678 (invariantList!690 (toList!3002 lt!1574072))))

(assert (=> d!1290678 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!389 (toList!3002 lt!1574072) key!3918) lt!1574716)))

(declare-fun bs!635118 () Bool)

(assert (= bs!635118 d!1290678))

(assert (=> bs!635118 m!4981017))

(assert (=> bs!635118 m!4981017))

(assert (=> bs!635118 m!4981019))

(declare-fun m!4981639 () Bool)

(assert (=> bs!635118 m!4981639))

(declare-fun m!4981641 () Bool)

(assert (=> bs!635118 m!4981641))

(assert (=> b!4361833 d!1290678))

(declare-fun d!1290680 () Bool)

(declare-fun isEmpty!28222 (Option!10493) Bool)

(assert (=> d!1290680 (= (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574072) key!3918)) (not (isEmpty!28222 (getValueByKey!479 (toList!3002 lt!1574072) key!3918))))))

(declare-fun bs!635119 () Bool)

(assert (= bs!635119 d!1290680))

(assert (=> bs!635119 m!4981017))

(declare-fun m!4981669 () Bool)

(assert (=> bs!635119 m!4981669))

(assert (=> b!4361833 d!1290680))

(declare-fun b!4362206 () Bool)

(declare-fun e!2714818 () Option!10493)

(assert (=> b!4362206 (= e!2714818 None!10492)))

(declare-fun b!4362205 () Bool)

(assert (=> b!4362205 (= e!2714818 (getValueByKey!479 (t!356027 (toList!3002 lt!1574072)) key!3918))))

(declare-fun d!1290682 () Bool)

(declare-fun c!741748 () Bool)

(assert (=> d!1290682 (= c!741748 (and ((_ is Cons!48983) (toList!3002 lt!1574072)) (= (_1!27497 (h!54546 (toList!3002 lt!1574072))) key!3918)))))

(declare-fun e!2714817 () Option!10493)

(assert (=> d!1290682 (= (getValueByKey!479 (toList!3002 lt!1574072) key!3918) e!2714817)))

(declare-fun b!4362203 () Bool)

(assert (=> b!4362203 (= e!2714817 (Some!10492 (_2!27497 (h!54546 (toList!3002 lt!1574072)))))))

(declare-fun b!4362204 () Bool)

(assert (=> b!4362204 (= e!2714817 e!2714818)))

(declare-fun c!741749 () Bool)

(assert (=> b!4362204 (= c!741749 (and ((_ is Cons!48983) (toList!3002 lt!1574072)) (not (= (_1!27497 (h!54546 (toList!3002 lt!1574072))) key!3918))))))

(assert (= (and d!1290682 c!741748) b!4362203))

(assert (= (and d!1290682 (not c!741748)) b!4362204))

(assert (= (and b!4362204 c!741749) b!4362205))

(assert (= (and b!4362204 (not c!741749)) b!4362206))

(declare-fun m!4981683 () Bool)

(assert (=> b!4362205 m!4981683))

(assert (=> b!4361833 d!1290682))

(declare-fun d!1290688 () Bool)

(assert (=> d!1290688 (contains!11225 (getKeysList!138 (toList!3002 lt!1574072)) key!3918)))

(declare-fun lt!1574720 () Unit!72449)

(declare-fun choose!27052 (List!49107 K!10340) Unit!72449)

(assert (=> d!1290688 (= lt!1574720 (choose!27052 (toList!3002 lt!1574072) key!3918))))

(assert (=> d!1290688 (invariantList!690 (toList!3002 lt!1574072))))

(assert (=> d!1290688 (= (lemmaInListThenGetKeysListContains!135 (toList!3002 lt!1574072) key!3918) lt!1574720)))

(declare-fun bs!635128 () Bool)

(assert (= bs!635128 d!1290688))

(assert (=> bs!635128 m!4981013))

(assert (=> bs!635128 m!4981013))

(declare-fun m!4981685 () Bool)

(assert (=> bs!635128 m!4981685))

(declare-fun m!4981687 () Bool)

(assert (=> bs!635128 m!4981687))

(assert (=> bs!635128 m!4981641))

(assert (=> b!4361833 d!1290688))

(declare-fun d!1290690 () Bool)

(declare-fun res!1793676 () Bool)

(declare-fun e!2714819 () Bool)

(assert (=> d!1290690 (=> res!1793676 e!2714819)))

(assert (=> d!1290690 (= res!1793676 (and ((_ is Cons!48983) (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (= (_1!27497 (h!54546 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) key!3918)))))

(assert (=> d!1290690 (= (containsKey!734 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) key!3918) e!2714819)))

(declare-fun b!4362207 () Bool)

(declare-fun e!2714820 () Bool)

(assert (=> b!4362207 (= e!2714819 e!2714820)))

(declare-fun res!1793677 () Bool)

(assert (=> b!4362207 (=> (not res!1793677) (not e!2714820))))

(assert (=> b!4362207 (= res!1793677 ((_ is Cons!48983) (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(declare-fun b!4362208 () Bool)

(assert (=> b!4362208 (= e!2714820 (containsKey!734 (t!356027 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707))))) key!3918))))

(assert (= (and d!1290690 (not res!1793676)) b!4362207))

(assert (= (and b!4362207 res!1793677) b!4362208))

(declare-fun m!4981689 () Bool)

(assert (=> b!4362208 m!4981689))

(assert (=> b!4361607 d!1290690))

(declare-fun b!4362212 () Bool)

(declare-fun e!2714822 () Option!10493)

(assert (=> b!4362212 (= e!2714822 None!10492)))

(declare-fun b!4362211 () Bool)

(assert (=> b!4362211 (= e!2714822 (getValueByKey!479 (t!356027 (toList!3002 lt!1574489)) (_1!27497 lt!1574080)))))

(declare-fun d!1290692 () Bool)

(declare-fun c!741750 () Bool)

(assert (=> d!1290692 (= c!741750 (and ((_ is Cons!48983) (toList!3002 lt!1574489)) (= (_1!27497 (h!54546 (toList!3002 lt!1574489))) (_1!27497 lt!1574080))))))

(declare-fun e!2714821 () Option!10493)

(assert (=> d!1290692 (= (getValueByKey!479 (toList!3002 lt!1574489) (_1!27497 lt!1574080)) e!2714821)))

(declare-fun b!4362209 () Bool)

(assert (=> b!4362209 (= e!2714821 (Some!10492 (_2!27497 (h!54546 (toList!3002 lt!1574489)))))))

(declare-fun b!4362210 () Bool)

(assert (=> b!4362210 (= e!2714821 e!2714822)))

(declare-fun c!741751 () Bool)

(assert (=> b!4362210 (= c!741751 (and ((_ is Cons!48983) (toList!3002 lt!1574489)) (not (= (_1!27497 (h!54546 (toList!3002 lt!1574489))) (_1!27497 lt!1574080)))))))

(assert (= (and d!1290692 c!741750) b!4362209))

(assert (= (and d!1290692 (not c!741750)) b!4362210))

(assert (= (and b!4362210 c!741751) b!4362211))

(assert (= (and b!4362210 (not c!741751)) b!4362212))

(declare-fun m!4981691 () Bool)

(assert (=> b!4362211 m!4981691))

(assert (=> b!4361860 d!1290692))

(declare-fun d!1290694 () Bool)

(assert (=> d!1290694 (= (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574079) key!3918)) (not (isEmpty!28222 (getValueByKey!479 (toList!3002 lt!1574079) key!3918))))))

(declare-fun bs!635129 () Bool)

(assert (= bs!635129 d!1290694))

(assert (=> bs!635129 m!4980621))

(declare-fun m!4981693 () Bool)

(assert (=> bs!635129 m!4981693))

(assert (=> b!4361697 d!1290694))

(declare-fun b!4362216 () Bool)

(declare-fun e!2714824 () Option!10493)

(assert (=> b!4362216 (= e!2714824 None!10492)))

(declare-fun b!4362215 () Bool)

(assert (=> b!4362215 (= e!2714824 (getValueByKey!479 (t!356027 (toList!3002 lt!1574079)) key!3918))))

(declare-fun d!1290696 () Bool)

(declare-fun c!741752 () Bool)

(assert (=> d!1290696 (= c!741752 (and ((_ is Cons!48983) (toList!3002 lt!1574079)) (= (_1!27497 (h!54546 (toList!3002 lt!1574079))) key!3918)))))

(declare-fun e!2714823 () Option!10493)

(assert (=> d!1290696 (= (getValueByKey!479 (toList!3002 lt!1574079) key!3918) e!2714823)))

(declare-fun b!4362213 () Bool)

(assert (=> b!4362213 (= e!2714823 (Some!10492 (_2!27497 (h!54546 (toList!3002 lt!1574079)))))))

(declare-fun b!4362214 () Bool)

(assert (=> b!4362214 (= e!2714823 e!2714824)))

(declare-fun c!741753 () Bool)

(assert (=> b!4362214 (= c!741753 (and ((_ is Cons!48983) (toList!3002 lt!1574079)) (not (= (_1!27497 (h!54546 (toList!3002 lt!1574079))) key!3918))))))

(assert (= (and d!1290696 c!741752) b!4362213))

(assert (= (and d!1290696 (not c!741752)) b!4362214))

(assert (= (and b!4362214 c!741753) b!4362215))

(assert (= (and b!4362214 (not c!741753)) b!4362216))

(declare-fun m!4981695 () Bool)

(assert (=> b!4362215 m!4981695))

(assert (=> b!4361697 d!1290696))

(declare-fun d!1290698 () Bool)

(declare-fun noDuplicatedKeys!123 (List!49107) Bool)

(assert (=> d!1290698 (= (invariantList!690 (toList!3002 lt!1574198)) (noDuplicatedKeys!123 (toList!3002 lt!1574198)))))

(declare-fun bs!635130 () Bool)

(assert (= bs!635130 d!1290698))

(declare-fun m!4981697 () Bool)

(assert (=> bs!635130 m!4981697))

(assert (=> d!1290396 d!1290698))

(declare-fun d!1290700 () Bool)

(declare-fun res!1793678 () Bool)

(declare-fun e!2714825 () Bool)

(assert (=> d!1290700 (=> res!1793678 e!2714825)))

(assert (=> d!1290700 (= res!1793678 ((_ is Nil!48984) (toList!3001 lt!1574068)))))

(assert (=> d!1290700 (= (forall!9156 (toList!3001 lt!1574068) lambda!141642) e!2714825)))

(declare-fun b!4362217 () Bool)

(declare-fun e!2714826 () Bool)

(assert (=> b!4362217 (= e!2714825 e!2714826)))

(declare-fun res!1793679 () Bool)

(assert (=> b!4362217 (=> (not res!1793679) (not e!2714826))))

(assert (=> b!4362217 (= res!1793679 (dynLambda!20651 lambda!141642 (h!54547 (toList!3001 lt!1574068))))))

(declare-fun b!4362218 () Bool)

(assert (=> b!4362218 (= e!2714826 (forall!9156 (t!356028 (toList!3001 lt!1574068)) lambda!141642))))

(assert (= (and d!1290700 (not res!1793678)) b!4362217))

(assert (= (and b!4362217 res!1793679) b!4362218))

(declare-fun b_lambda!131921 () Bool)

(assert (=> (not b_lambda!131921) (not b!4362217)))

(declare-fun m!4981699 () Bool)

(assert (=> b!4362217 m!4981699))

(declare-fun m!4981701 () Bool)

(assert (=> b!4362218 m!4981701))

(assert (=> d!1290396 d!1290700))

(declare-fun d!1290702 () Bool)

(declare-fun res!1793680 () Bool)

(declare-fun e!2714827 () Bool)

(assert (=> d!1290702 (=> res!1793680 e!2714827)))

(assert (=> d!1290702 (= res!1793680 (and ((_ is Cons!48983) lt!1574476) (= (_1!27497 (h!54546 lt!1574476)) key!3918)))))

(assert (=> d!1290702 (= (containsKey!734 lt!1574476 key!3918) e!2714827)))

(declare-fun b!4362219 () Bool)

(declare-fun e!2714828 () Bool)

(assert (=> b!4362219 (= e!2714827 e!2714828)))

(declare-fun res!1793681 () Bool)

(assert (=> b!4362219 (=> (not res!1793681) (not e!2714828))))

(assert (=> b!4362219 (= res!1793681 ((_ is Cons!48983) lt!1574476))))

(declare-fun b!4362220 () Bool)

(assert (=> b!4362220 (= e!2714828 (containsKey!734 (t!356027 lt!1574476) key!3918))))

(assert (= (and d!1290702 (not res!1793680)) b!4362219))

(assert (= (and b!4362219 res!1793681) b!4362220))

(declare-fun m!4981703 () Bool)

(assert (=> b!4362220 m!4981703))

(assert (=> d!1290498 d!1290702))

(declare-fun d!1290704 () Bool)

(declare-fun res!1793682 () Bool)

(declare-fun e!2714829 () Bool)

(assert (=> d!1290704 (=> res!1793682 e!2714829)))

(assert (=> d!1290704 (= res!1793682 (not ((_ is Cons!48983) lt!1574083)))))

(assert (=> d!1290704 (= (noDuplicateKeys!509 lt!1574083) e!2714829)))

(declare-fun b!4362221 () Bool)

(declare-fun e!2714830 () Bool)

(assert (=> b!4362221 (= e!2714829 e!2714830)))

(declare-fun res!1793683 () Bool)

(assert (=> b!4362221 (=> (not res!1793683) (not e!2714830))))

(assert (=> b!4362221 (= res!1793683 (not (containsKey!734 (t!356027 lt!1574083) (_1!27497 (h!54546 lt!1574083)))))))

(declare-fun b!4362222 () Bool)

(assert (=> b!4362222 (= e!2714830 (noDuplicateKeys!509 (t!356027 lt!1574083)))))

(assert (= (and d!1290704 (not res!1793682)) b!4362221))

(assert (= (and b!4362221 res!1793683) b!4362222))

(declare-fun m!4981705 () Bool)

(assert (=> b!4362221 m!4981705))

(declare-fun m!4981707 () Bool)

(assert (=> b!4362222 m!4981707))

(assert (=> d!1290498 d!1290704))

(declare-fun d!1290706 () Bool)

(declare-fun e!2714831 () Bool)

(assert (=> d!1290706 e!2714831))

(declare-fun res!1793685 () Bool)

(assert (=> d!1290706 (=> (not res!1793685) (not e!2714831))))

(declare-fun lt!1574723 () ListLongMap!1651)

(assert (=> d!1290706 (= res!1793685 (contains!11219 lt!1574723 (_1!27498 (tuple2!48409 hash!377 newBucket!200))))))

(declare-fun lt!1574722 () List!49108)

(assert (=> d!1290706 (= lt!1574723 (ListLongMap!1652 lt!1574722))))

(declare-fun lt!1574724 () Unit!72449)

(declare-fun lt!1574721 () Unit!72449)

(assert (=> d!1290706 (= lt!1574724 lt!1574721)))

(assert (=> d!1290706 (= (getValueByKey!478 lt!1574722 (_1!27498 (tuple2!48409 hash!377 newBucket!200))) (Some!10491 (_2!27498 (tuple2!48409 hash!377 newBucket!200))))))

(assert (=> d!1290706 (= lt!1574721 (lemmaContainsTupThenGetReturnValue!251 lt!1574722 (_1!27498 (tuple2!48409 hash!377 newBucket!200)) (_2!27498 (tuple2!48409 hash!377 newBucket!200))))))

(assert (=> d!1290706 (= lt!1574722 (insertStrictlySorted!147 (toList!3001 lt!1574068) (_1!27498 (tuple2!48409 hash!377 newBucket!200)) (_2!27498 (tuple2!48409 hash!377 newBucket!200))))))

(assert (=> d!1290706 (= (+!675 lt!1574068 (tuple2!48409 hash!377 newBucket!200)) lt!1574723)))

(declare-fun b!4362223 () Bool)

(declare-fun res!1793684 () Bool)

(assert (=> b!4362223 (=> (not res!1793684) (not e!2714831))))

(assert (=> b!4362223 (= res!1793684 (= (getValueByKey!478 (toList!3001 lt!1574723) (_1!27498 (tuple2!48409 hash!377 newBucket!200))) (Some!10491 (_2!27498 (tuple2!48409 hash!377 newBucket!200)))))))

(declare-fun b!4362224 () Bool)

(assert (=> b!4362224 (= e!2714831 (contains!11220 (toList!3001 lt!1574723) (tuple2!48409 hash!377 newBucket!200)))))

(assert (= (and d!1290706 res!1793685) b!4362223))

(assert (= (and b!4362223 res!1793684) b!4362224))

(declare-fun m!4981709 () Bool)

(assert (=> d!1290706 m!4981709))

(declare-fun m!4981711 () Bool)

(assert (=> d!1290706 m!4981711))

(declare-fun m!4981713 () Bool)

(assert (=> d!1290706 m!4981713))

(declare-fun m!4981715 () Bool)

(assert (=> d!1290706 m!4981715))

(declare-fun m!4981717 () Bool)

(assert (=> b!4362223 m!4981717))

(declare-fun m!4981719 () Bool)

(assert (=> b!4362224 m!4981719))

(assert (=> d!1290368 d!1290706))

(declare-fun d!1290708 () Bool)

(declare-fun res!1793686 () Bool)

(declare-fun e!2714832 () Bool)

(assert (=> d!1290708 (=> res!1793686 e!2714832)))

(assert (=> d!1290708 (= res!1793686 ((_ is Nil!48984) (toList!3001 lt!1574068)))))

(assert (=> d!1290708 (= (forall!9156 (toList!3001 lt!1574068) lambda!141639) e!2714832)))

(declare-fun b!4362225 () Bool)

(declare-fun e!2714833 () Bool)

(assert (=> b!4362225 (= e!2714832 e!2714833)))

(declare-fun res!1793687 () Bool)

(assert (=> b!4362225 (=> (not res!1793687) (not e!2714833))))

(assert (=> b!4362225 (= res!1793687 (dynLambda!20651 lambda!141639 (h!54547 (toList!3001 lt!1574068))))))

(declare-fun b!4362226 () Bool)

(assert (=> b!4362226 (= e!2714833 (forall!9156 (t!356028 (toList!3001 lt!1574068)) lambda!141639))))

(assert (= (and d!1290708 (not res!1793686)) b!4362225))

(assert (= (and b!4362225 res!1793687) b!4362226))

(declare-fun b_lambda!131923 () Bool)

(assert (=> (not b_lambda!131923) (not b!4362225)))

(declare-fun m!4981721 () Bool)

(assert (=> b!4362225 m!4981721))

(declare-fun m!4981723 () Bool)

(assert (=> b!4362226 m!4981723))

(assert (=> d!1290368 d!1290708))

(assert (=> d!1290368 d!1290396))

(declare-fun d!1290710 () Bool)

(assert (=> d!1290710 (= (eq!279 (extractMap!568 (toList!3001 (+!675 lt!1574068 (tuple2!48409 hash!377 newBucket!200)))) (+!676 (extractMap!568 (toList!3001 lt!1574068)) (tuple2!48407 key!3918 newValue!99))) (= (content!7748 (toList!3002 (extractMap!568 (toList!3001 (+!675 lt!1574068 (tuple2!48409 hash!377 newBucket!200)))))) (content!7748 (toList!3002 (+!676 (extractMap!568 (toList!3001 lt!1574068)) (tuple2!48407 key!3918 newValue!99))))))))

(declare-fun bs!635131 () Bool)

(assert (= bs!635131 d!1290710))

(declare-fun m!4981725 () Bool)

(assert (=> bs!635131 m!4981725))

(declare-fun m!4981727 () Bool)

(assert (=> bs!635131 m!4981727))

(assert (=> d!1290368 d!1290710))

(declare-fun bs!635132 () Bool)

(declare-fun d!1290712 () Bool)

(assert (= bs!635132 (and d!1290712 d!1290478)))

(declare-fun lambda!141769 () Int)

(assert (=> bs!635132 (= lambda!141769 lambda!141727)))

(declare-fun bs!635133 () Bool)

(assert (= bs!635133 (and d!1290712 d!1290474)))

(assert (=> bs!635133 (= lambda!141769 lambda!141726)))

(declare-fun bs!635134 () Bool)

(assert (= bs!635134 (and d!1290712 start!422616)))

(assert (=> bs!635134 (= lambda!141769 lambda!141629)))

(declare-fun bs!635135 () Bool)

(assert (= bs!635135 (and d!1290712 d!1290368)))

(assert (=> bs!635135 (= lambda!141769 lambda!141639)))

(declare-fun bs!635136 () Bool)

(assert (= bs!635136 (and d!1290712 d!1290396)))

(assert (=> bs!635136 (= lambda!141769 lambda!141642)))

(declare-fun bs!635137 () Bool)

(assert (= bs!635137 (and d!1290712 d!1290480)))

(assert (=> bs!635137 (= lambda!141769 lambda!141730)))

(declare-fun bs!635138 () Bool)

(assert (= bs!635138 (and d!1290712 d!1290490)))

(assert (=> bs!635138 (= lambda!141769 lambda!141731)))

(declare-fun bs!635139 () Bool)

(assert (= bs!635139 (and d!1290712 d!1290514)))

(assert (=> bs!635139 (not (= lambda!141769 lambda!141734))))

(declare-fun lt!1574725 () ListMap!2245)

(assert (=> d!1290712 (invariantList!690 (toList!3002 lt!1574725))))

(declare-fun e!2714834 () ListMap!2245)

(assert (=> d!1290712 (= lt!1574725 e!2714834)))

(declare-fun c!741754 () Bool)

(assert (=> d!1290712 (= c!741754 ((_ is Cons!48984) (toList!3001 (+!675 lt!1574068 (tuple2!48409 hash!377 newBucket!200)))))))

(assert (=> d!1290712 (forall!9156 (toList!3001 (+!675 lt!1574068 (tuple2!48409 hash!377 newBucket!200))) lambda!141769)))

(assert (=> d!1290712 (= (extractMap!568 (toList!3001 (+!675 lt!1574068 (tuple2!48409 hash!377 newBucket!200)))) lt!1574725)))

(declare-fun b!4362227 () Bool)

(assert (=> b!4362227 (= e!2714834 (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 (+!675 lt!1574068 (tuple2!48409 hash!377 newBucket!200))))) (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 (tuple2!48409 hash!377 newBucket!200)))))))))

(declare-fun b!4362228 () Bool)

(assert (=> b!4362228 (= e!2714834 (ListMap!2246 Nil!48983))))

(assert (= (and d!1290712 c!741754) b!4362227))

(assert (= (and d!1290712 (not c!741754)) b!4362228))

(declare-fun m!4981729 () Bool)

(assert (=> d!1290712 m!4981729))

(declare-fun m!4981731 () Bool)

(assert (=> d!1290712 m!4981731))

(declare-fun m!4981733 () Bool)

(assert (=> b!4362227 m!4981733))

(assert (=> b!4362227 m!4981733))

(declare-fun m!4981735 () Bool)

(assert (=> b!4362227 m!4981735))

(assert (=> d!1290368 d!1290712))

(declare-fun d!1290714 () Bool)

(declare-fun e!2714835 () Bool)

(assert (=> d!1290714 e!2714835))

(declare-fun res!1793689 () Bool)

(assert (=> d!1290714 (=> (not res!1793689) (not e!2714835))))

(declare-fun lt!1574729 () ListMap!2245)

(assert (=> d!1290714 (= res!1793689 (contains!11221 lt!1574729 (_1!27497 (tuple2!48407 key!3918 newValue!99))))))

(declare-fun lt!1574727 () List!49107)

(assert (=> d!1290714 (= lt!1574729 (ListMap!2246 lt!1574727))))

(declare-fun lt!1574726 () Unit!72449)

(declare-fun lt!1574728 () Unit!72449)

(assert (=> d!1290714 (= lt!1574726 lt!1574728)))

(assert (=> d!1290714 (= (getValueByKey!479 lt!1574727 (_1!27497 (tuple2!48407 key!3918 newValue!99))) (Some!10492 (_2!27497 (tuple2!48407 key!3918 newValue!99))))))

(assert (=> d!1290714 (= lt!1574728 (lemmaContainsTupThenGetReturnValue!252 lt!1574727 (_1!27497 (tuple2!48407 key!3918 newValue!99)) (_2!27497 (tuple2!48407 key!3918 newValue!99))))))

(assert (=> d!1290714 (= lt!1574727 (insertNoDuplicatedKeys!113 (toList!3002 (extractMap!568 (toList!3001 lt!1574068))) (_1!27497 (tuple2!48407 key!3918 newValue!99)) (_2!27497 (tuple2!48407 key!3918 newValue!99))))))

(assert (=> d!1290714 (= (+!676 (extractMap!568 (toList!3001 lt!1574068)) (tuple2!48407 key!3918 newValue!99)) lt!1574729)))

(declare-fun b!4362229 () Bool)

(declare-fun res!1793688 () Bool)

(assert (=> b!4362229 (=> (not res!1793688) (not e!2714835))))

(assert (=> b!4362229 (= res!1793688 (= (getValueByKey!479 (toList!3002 lt!1574729) (_1!27497 (tuple2!48407 key!3918 newValue!99))) (Some!10492 (_2!27497 (tuple2!48407 key!3918 newValue!99)))))))

(declare-fun b!4362230 () Bool)

(assert (=> b!4362230 (= e!2714835 (contains!11223 (toList!3002 lt!1574729) (tuple2!48407 key!3918 newValue!99)))))

(assert (= (and d!1290714 res!1793689) b!4362229))

(assert (= (and b!4362229 res!1793688) b!4362230))

(declare-fun m!4981737 () Bool)

(assert (=> d!1290714 m!4981737))

(declare-fun m!4981739 () Bool)

(assert (=> d!1290714 m!4981739))

(declare-fun m!4981741 () Bool)

(assert (=> d!1290714 m!4981741))

(declare-fun m!4981743 () Bool)

(assert (=> d!1290714 m!4981743))

(declare-fun m!4981745 () Bool)

(assert (=> b!4362229 m!4981745))

(declare-fun m!4981747 () Bool)

(assert (=> b!4362230 m!4981747))

(assert (=> d!1290368 d!1290714))

(declare-fun d!1290716 () Bool)

(assert (=> d!1290716 (eq!279 (extractMap!568 (toList!3001 (+!675 lt!1574068 (tuple2!48409 hash!377 newBucket!200)))) (+!676 (extractMap!568 (toList!3001 lt!1574068)) (tuple2!48407 key!3918 newValue!99)))))

(assert (=> d!1290716 true))

(declare-fun _$10!170 () Unit!72449)

(assert (=> d!1290716 (= (choose!27032 lt!1574068 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) _$10!170)))

(declare-fun bs!635143 () Bool)

(assert (= bs!635143 d!1290716))

(assert (=> bs!635143 m!4980581))

(assert (=> bs!635143 m!4980571))

(assert (=> bs!635143 m!4980405))

(assert (=> bs!635143 m!4980571))

(assert (=> bs!635143 m!4980573))

(assert (=> bs!635143 m!4980575))

(assert (=> bs!635143 m!4980405))

(assert (=> bs!635143 m!4980573))

(assert (=> d!1290368 d!1290716))

(assert (=> d!1290404 d!1290406))

(declare-fun d!1290718 () Bool)

(assert (=> d!1290718 (contains!11221 lt!1574069 key!3918)))

(assert (=> d!1290718 true))

(declare-fun _$11!1173 () Unit!72449)

(assert (=> d!1290718 (= (choose!27036 (_2!27498 (h!54547 (toList!3001 lm!1707))) key!3918 newValue!99 lt!1574069) _$11!1173)))

(declare-fun bs!635156 () Bool)

(assert (= bs!635156 d!1290718))

(assert (=> bs!635156 m!4980383))

(assert (=> d!1290404 d!1290718))

(declare-fun d!1290722 () Bool)

(declare-fun res!1793702 () Bool)

(declare-fun e!2714851 () Bool)

(assert (=> d!1290722 (=> res!1793702 e!2714851)))

(assert (=> d!1290722 (= res!1793702 (not ((_ is Cons!48983) (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (=> d!1290722 (= (noDuplicateKeys!509 (_2!27498 (h!54547 (toList!3001 lm!1707)))) e!2714851)))

(declare-fun b!4362265 () Bool)

(declare-fun e!2714852 () Bool)

(assert (=> b!4362265 (= e!2714851 e!2714852)))

(declare-fun res!1793703 () Bool)

(assert (=> b!4362265 (=> (not res!1793703) (not e!2714852))))

(assert (=> b!4362265 (= res!1793703 (not (containsKey!734 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))))

(declare-fun b!4362266 () Bool)

(assert (=> b!4362266 (= e!2714852 (noDuplicateKeys!509 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (= (and d!1290722 (not res!1793702)) b!4362265))

(assert (= (and b!4362265 res!1793703) b!4362266))

(declare-fun m!4981773 () Bool)

(assert (=> b!4362265 m!4981773))

(declare-fun m!4981775 () Bool)

(assert (=> b!4362266 m!4981775))

(assert (=> d!1290404 d!1290722))

(declare-fun b!4362267 () Bool)

(declare-fun e!2714858 () Unit!72449)

(declare-fun e!2714857 () Unit!72449)

(assert (=> b!4362267 (= e!2714858 e!2714857)))

(declare-fun c!741766 () Bool)

(declare-fun call!303251 () Bool)

(assert (=> b!4362267 (= c!741766 call!303251)))

(declare-fun b!4362268 () Bool)

(declare-fun Unit!72542 () Unit!72449)

(assert (=> b!4362268 (= e!2714857 Unit!72542)))

(declare-fun b!4362269 () Bool)

(declare-fun e!2714856 () Bool)

(declare-fun e!2714854 () Bool)

(assert (=> b!4362269 (= e!2714856 e!2714854)))

(declare-fun res!1793704 () Bool)

(assert (=> b!4362269 (=> (not res!1793704) (not e!2714854))))

(assert (=> b!4362269 (= res!1793704 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574195) (_1!27497 lt!1574080))))))

(declare-fun b!4362270 () Bool)

(assert (=> b!4362270 false))

(declare-fun lt!1574772 () Unit!72449)

(declare-fun lt!1574778 () Unit!72449)

(assert (=> b!4362270 (= lt!1574772 lt!1574778)))

(assert (=> b!4362270 (containsKey!737 (toList!3002 lt!1574195) (_1!27497 lt!1574080))))

(assert (=> b!4362270 (= lt!1574778 (lemmaInGetKeysListThenContainsKey!136 (toList!3002 lt!1574195) (_1!27497 lt!1574080)))))

(declare-fun Unit!72543 () Unit!72449)

(assert (=> b!4362270 (= e!2714857 Unit!72543)))

(declare-fun b!4362271 () Bool)

(declare-fun e!2714853 () Bool)

(assert (=> b!4362271 (= e!2714853 (not (contains!11225 (keys!16560 lt!1574195) (_1!27497 lt!1574080))))))

(declare-fun b!4362272 () Bool)

(declare-fun e!2714855 () List!49110)

(assert (=> b!4362272 (= e!2714855 (keys!16560 lt!1574195))))

(declare-fun b!4362273 () Bool)

(assert (=> b!4362273 (= e!2714855 (getKeysList!138 (toList!3002 lt!1574195)))))

(declare-fun bm!303246 () Bool)

(assert (=> bm!303246 (= call!303251 (contains!11225 e!2714855 (_1!27497 lt!1574080)))))

(declare-fun c!741767 () Bool)

(declare-fun c!741765 () Bool)

(assert (=> bm!303246 (= c!741767 c!741765)))

(declare-fun b!4362274 () Bool)

(assert (=> b!4362274 (= e!2714854 (contains!11225 (keys!16560 lt!1574195) (_1!27497 lt!1574080)))))

(declare-fun b!4362275 () Bool)

(declare-fun lt!1574777 () Unit!72449)

(assert (=> b!4362275 (= e!2714858 lt!1574777)))

(declare-fun lt!1574774 () Unit!72449)

(assert (=> b!4362275 (= lt!1574774 (lemmaContainsKeyImpliesGetValueByKeyDefined!389 (toList!3002 lt!1574195) (_1!27497 lt!1574080)))))

(assert (=> b!4362275 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574195) (_1!27497 lt!1574080)))))

(declare-fun lt!1574779 () Unit!72449)

(assert (=> b!4362275 (= lt!1574779 lt!1574774)))

(assert (=> b!4362275 (= lt!1574777 (lemmaInListThenGetKeysListContains!135 (toList!3002 lt!1574195) (_1!27497 lt!1574080)))))

(assert (=> b!4362275 call!303251))

(declare-fun d!1290724 () Bool)

(assert (=> d!1290724 e!2714856))

(declare-fun res!1793706 () Bool)

(assert (=> d!1290724 (=> res!1793706 e!2714856)))

(assert (=> d!1290724 (= res!1793706 e!2714853)))

(declare-fun res!1793705 () Bool)

(assert (=> d!1290724 (=> (not res!1793705) (not e!2714853))))

(declare-fun lt!1574775 () Bool)

(assert (=> d!1290724 (= res!1793705 (not lt!1574775))))

(declare-fun lt!1574776 () Bool)

(assert (=> d!1290724 (= lt!1574775 lt!1574776)))

(declare-fun lt!1574773 () Unit!72449)

(assert (=> d!1290724 (= lt!1574773 e!2714858)))

(assert (=> d!1290724 (= c!741765 lt!1574776)))

(assert (=> d!1290724 (= lt!1574776 (containsKey!737 (toList!3002 lt!1574195) (_1!27497 lt!1574080)))))

(assert (=> d!1290724 (= (contains!11221 lt!1574195 (_1!27497 lt!1574080)) lt!1574775)))

(assert (= (and d!1290724 c!741765) b!4362275))

(assert (= (and d!1290724 (not c!741765)) b!4362267))

(assert (= (and b!4362267 c!741766) b!4362270))

(assert (= (and b!4362267 (not c!741766)) b!4362268))

(assert (= (or b!4362275 b!4362267) bm!303246))

(assert (= (and bm!303246 c!741767) b!4362273))

(assert (= (and bm!303246 (not c!741767)) b!4362272))

(assert (= (and d!1290724 res!1793705) b!4362271))

(assert (= (and d!1290724 (not res!1793706)) b!4362269))

(assert (= (and b!4362269 res!1793704) b!4362274))

(declare-fun m!4981777 () Bool)

(assert (=> b!4362271 m!4981777))

(assert (=> b!4362271 m!4981777))

(declare-fun m!4981779 () Bool)

(assert (=> b!4362271 m!4981779))

(declare-fun m!4981781 () Bool)

(assert (=> bm!303246 m!4981781))

(assert (=> b!4362274 m!4981777))

(assert (=> b!4362274 m!4981777))

(assert (=> b!4362274 m!4981779))

(declare-fun m!4981783 () Bool)

(assert (=> b!4362273 m!4981783))

(declare-fun m!4981785 () Bool)

(assert (=> d!1290724 m!4981785))

(assert (=> b!4362272 m!4981777))

(assert (=> b!4362269 m!4980591))

(assert (=> b!4362269 m!4980591))

(declare-fun m!4981787 () Bool)

(assert (=> b!4362269 m!4981787))

(assert (=> b!4362270 m!4981785))

(declare-fun m!4981789 () Bool)

(assert (=> b!4362270 m!4981789))

(declare-fun m!4981791 () Bool)

(assert (=> b!4362275 m!4981791))

(assert (=> b!4362275 m!4980591))

(assert (=> b!4362275 m!4980591))

(assert (=> b!4362275 m!4981787))

(declare-fun m!4981793 () Bool)

(assert (=> b!4362275 m!4981793))

(assert (=> d!1290390 d!1290724))

(declare-fun b!4362279 () Bool)

(declare-fun e!2714860 () Option!10493)

(assert (=> b!4362279 (= e!2714860 None!10492)))

(declare-fun b!4362278 () Bool)

(assert (=> b!4362278 (= e!2714860 (getValueByKey!479 (t!356027 lt!1574193) (_1!27497 lt!1574080)))))

(declare-fun d!1290726 () Bool)

(declare-fun c!741768 () Bool)

(assert (=> d!1290726 (= c!741768 (and ((_ is Cons!48983) lt!1574193) (= (_1!27497 (h!54546 lt!1574193)) (_1!27497 lt!1574080))))))

(declare-fun e!2714859 () Option!10493)

(assert (=> d!1290726 (= (getValueByKey!479 lt!1574193 (_1!27497 lt!1574080)) e!2714859)))

(declare-fun b!4362276 () Bool)

(assert (=> b!4362276 (= e!2714859 (Some!10492 (_2!27497 (h!54546 lt!1574193))))))

(declare-fun b!4362277 () Bool)

(assert (=> b!4362277 (= e!2714859 e!2714860)))

(declare-fun c!741769 () Bool)

(assert (=> b!4362277 (= c!741769 (and ((_ is Cons!48983) lt!1574193) (not (= (_1!27497 (h!54546 lt!1574193)) (_1!27497 lt!1574080)))))))

(assert (= (and d!1290726 c!741768) b!4362276))

(assert (= (and d!1290726 (not c!741768)) b!4362277))

(assert (= (and b!4362277 c!741769) b!4362278))

(assert (= (and b!4362277 (not c!741769)) b!4362279))

(declare-fun m!4981795 () Bool)

(assert (=> b!4362278 m!4981795))

(assert (=> d!1290390 d!1290726))

(declare-fun d!1290728 () Bool)

(assert (=> d!1290728 (= (getValueByKey!479 lt!1574193 (_1!27497 lt!1574080)) (Some!10492 (_2!27497 lt!1574080)))))

(declare-fun lt!1574782 () Unit!72449)

(declare-fun choose!27054 (List!49107 K!10340 V!10586) Unit!72449)

(assert (=> d!1290728 (= lt!1574782 (choose!27054 lt!1574193 (_1!27497 lt!1574080) (_2!27497 lt!1574080)))))

(declare-fun e!2714863 () Bool)

(assert (=> d!1290728 e!2714863))

(declare-fun res!1793711 () Bool)

(assert (=> d!1290728 (=> (not res!1793711) (not e!2714863))))

(assert (=> d!1290728 (= res!1793711 (invariantList!690 lt!1574193))))

(assert (=> d!1290728 (= (lemmaContainsTupThenGetReturnValue!252 lt!1574193 (_1!27497 lt!1574080) (_2!27497 lt!1574080)) lt!1574782)))

(declare-fun b!4362284 () Bool)

(declare-fun res!1793712 () Bool)

(assert (=> b!4362284 (=> (not res!1793712) (not e!2714863))))

(assert (=> b!4362284 (= res!1793712 (containsKey!737 lt!1574193 (_1!27497 lt!1574080)))))

(declare-fun b!4362285 () Bool)

(assert (=> b!4362285 (= e!2714863 (contains!11223 lt!1574193 (tuple2!48407 (_1!27497 lt!1574080) (_2!27497 lt!1574080))))))

(assert (= (and d!1290728 res!1793711) b!4362284))

(assert (= (and b!4362284 res!1793712) b!4362285))

(assert (=> d!1290728 m!4980585))

(declare-fun m!4981797 () Bool)

(assert (=> d!1290728 m!4981797))

(declare-fun m!4981799 () Bool)

(assert (=> d!1290728 m!4981799))

(declare-fun m!4981801 () Bool)

(assert (=> b!4362284 m!4981801))

(declare-fun m!4981803 () Bool)

(assert (=> b!4362285 m!4981803))

(assert (=> d!1290390 d!1290728))

(declare-fun b!4362391 () Bool)

(declare-fun e!2714930 () List!49107)

(assert (=> b!4362391 (= e!2714930 (insertNoDuplicatedKeys!113 (t!356027 (toList!3002 lt!1574079)) (_1!27497 lt!1574080) (_2!27497 lt!1574080)))))

(declare-fun b!4362392 () Bool)

(assert (=> b!4362392 false))

(declare-fun lt!1574844 () Unit!72449)

(declare-fun lt!1574843 () Unit!72449)

(assert (=> b!4362392 (= lt!1574844 lt!1574843)))

(assert (=> b!4362392 (containsKey!737 (t!356027 (toList!3002 lt!1574079)) (_1!27497 (h!54546 (toList!3002 lt!1574079))))))

(assert (=> b!4362392 (= lt!1574843 (lemmaInGetKeysListThenContainsKey!136 (t!356027 (toList!3002 lt!1574079)) (_1!27497 (h!54546 (toList!3002 lt!1574079)))))))

(declare-fun lt!1574845 () Unit!72449)

(declare-fun lt!1574846 () Unit!72449)

(assert (=> b!4362392 (= lt!1574845 lt!1574846)))

(declare-fun call!303265 () List!49110)

(assert (=> b!4362392 (contains!11225 call!303265 (_1!27497 (h!54546 (toList!3002 lt!1574079))))))

(declare-fun lt!1574841 () List!49107)

(assert (=> b!4362392 (= lt!1574846 (lemmaInListThenGetKeysListContains!135 lt!1574841 (_1!27497 (h!54546 (toList!3002 lt!1574079)))))))

(assert (=> b!4362392 (= lt!1574841 (insertNoDuplicatedKeys!113 (t!356027 (toList!3002 lt!1574079)) (_1!27497 lt!1574080) (_2!27497 lt!1574080)))))

(declare-fun e!2714934 () Unit!72449)

(declare-fun Unit!72546 () Unit!72449)

(assert (=> b!4362392 (= e!2714934 Unit!72546)))

(declare-fun b!4362393 () Bool)

(declare-fun Unit!72547 () Unit!72449)

(assert (=> b!4362393 (= e!2714934 Unit!72547)))

(declare-fun b!4362394 () Bool)

(declare-fun e!2714932 () List!49107)

(declare-fun call!303268 () List!49107)

(assert (=> b!4362394 (= e!2714932 call!303268)))

(declare-fun lt!1574842 () List!49110)

(assert (=> b!4362394 (= lt!1574842 call!303265)))

(declare-fun lt!1574837 () Unit!72449)

(declare-fun lemmaSubseqRefl!76 (List!49110) Unit!72449)

(assert (=> b!4362394 (= lt!1574837 (lemmaSubseqRefl!76 lt!1574842))))

(declare-fun subseq!592 (List!49110 List!49110) Bool)

(assert (=> b!4362394 (subseq!592 lt!1574842 lt!1574842)))

(declare-fun lt!1574840 () Unit!72449)

(assert (=> b!4362394 (= lt!1574840 lt!1574837)))

(declare-fun d!1290730 () Bool)

(declare-fun e!2714931 () Bool)

(assert (=> d!1290730 e!2714931))

(declare-fun res!1793756 () Bool)

(assert (=> d!1290730 (=> (not res!1793756) (not e!2714931))))

(declare-fun lt!1574838 () List!49107)

(assert (=> d!1290730 (= res!1793756 (invariantList!690 lt!1574838))))

(assert (=> d!1290730 (= lt!1574838 e!2714932)))

(declare-fun c!741803 () Bool)

(assert (=> d!1290730 (= c!741803 (and ((_ is Cons!48983) (toList!3002 lt!1574079)) (= (_1!27497 (h!54546 (toList!3002 lt!1574079))) (_1!27497 lt!1574080))))))

(assert (=> d!1290730 (invariantList!690 (toList!3002 lt!1574079))))

(assert (=> d!1290730 (= (insertNoDuplicatedKeys!113 (toList!3002 lt!1574079) (_1!27497 lt!1574080) (_2!27497 lt!1574080)) lt!1574838)))

(declare-fun b!4362395 () Bool)

(declare-fun c!741806 () Bool)

(assert (=> b!4362395 (= c!741806 ((_ is Cons!48983) (toList!3002 lt!1574079)))))

(declare-fun e!2714935 () List!49107)

(declare-fun e!2714936 () List!49107)

(assert (=> b!4362395 (= e!2714935 e!2714936)))

(declare-fun bm!303260 () Bool)

(assert (=> bm!303260 (= call!303265 (getKeysList!138 (ite c!741803 (toList!3002 lt!1574079) lt!1574841)))))

(declare-fun b!4362396 () Bool)

(declare-fun content!7751 (List!49110) (InoxSet K!10340))

(assert (=> b!4362396 (= e!2714931 (= (content!7751 (getKeysList!138 lt!1574838)) ((_ map or) (content!7751 (getKeysList!138 (toList!3002 lt!1574079))) (store ((as const (Array K!10340 Bool)) false) (_1!27497 lt!1574080) true))))))

(declare-fun bm!303261 () Bool)

(declare-fun call!303266 () List!49107)

(assert (=> bm!303261 (= call!303266 call!303268)))

(declare-fun b!4362397 () Bool)

(declare-fun res!1793754 () Bool)

(assert (=> b!4362397 (=> (not res!1793754) (not e!2714931))))

(assert (=> b!4362397 (= res!1793754 (contains!11223 lt!1574838 (tuple2!48407 (_1!27497 lt!1574080) (_2!27497 lt!1574080))))))

(declare-fun b!4362398 () Bool)

(assert (=> b!4362398 (= e!2714930 Nil!48983)))

(declare-fun bm!303262 () Bool)

(declare-fun call!303267 () List!49107)

(assert (=> bm!303262 (= call!303267 call!303266)))

(declare-fun c!741804 () Bool)

(assert (=> bm!303262 (= c!741804 c!741806)))

(declare-fun b!4362399 () Bool)

(assert (=> b!4362399 (= e!2714935 call!303266)))

(declare-fun b!4362400 () Bool)

(declare-fun res!1793755 () Bool)

(assert (=> b!4362400 (=> (not res!1793755) (not e!2714931))))

(assert (=> b!4362400 (= res!1793755 (containsKey!737 lt!1574838 (_1!27497 lt!1574080)))))

(declare-fun b!4362401 () Bool)

(declare-fun lt!1574847 () List!49107)

(assert (=> b!4362401 (= e!2714936 lt!1574847)))

(assert (=> b!4362401 (= lt!1574847 call!303267)))

(declare-fun c!741805 () Bool)

(assert (=> b!4362401 (= c!741805 (containsKey!737 (insertNoDuplicatedKeys!113 (t!356027 (toList!3002 lt!1574079)) (_1!27497 lt!1574080) (_2!27497 lt!1574080)) (_1!27497 (h!54546 (toList!3002 lt!1574079)))))))

(declare-fun lt!1574839 () Unit!72449)

(assert (=> b!4362401 (= lt!1574839 e!2714934)))

(declare-fun b!4362402 () Bool)

(declare-fun e!2714933 () Bool)

(assert (=> b!4362402 (= e!2714933 (not (containsKey!737 (toList!3002 lt!1574079) (_1!27497 lt!1574080))))))

(declare-fun b!4362403 () Bool)

(assert (=> b!4362403 (= e!2714936 call!303267)))

(declare-fun c!741802 () Bool)

(declare-fun bm!303263 () Bool)

(declare-fun $colon$colon!702 (List!49107 tuple2!48406) List!49107)

(assert (=> bm!303263 (= call!303268 ($colon$colon!702 (ite c!741803 (t!356027 (toList!3002 lt!1574079)) (ite c!741802 (toList!3002 lt!1574079) e!2714930)) (ite (or c!741803 c!741802) (tuple2!48407 (_1!27497 lt!1574080) (_2!27497 lt!1574080)) (ite c!741806 (h!54546 (toList!3002 lt!1574079)) (tuple2!48407 (_1!27497 lt!1574080) (_2!27497 lt!1574080))))))))

(declare-fun b!4362404 () Bool)

(assert (=> b!4362404 (= e!2714932 e!2714935)))

(declare-fun res!1793757 () Bool)

(assert (=> b!4362404 (= res!1793757 ((_ is Cons!48983) (toList!3002 lt!1574079)))))

(assert (=> b!4362404 (=> (not res!1793757) (not e!2714933))))

(assert (=> b!4362404 (= c!741802 e!2714933)))

(assert (= (and d!1290730 c!741803) b!4362394))

(assert (= (and d!1290730 (not c!741803)) b!4362404))

(assert (= (and b!4362404 res!1793757) b!4362402))

(assert (= (and b!4362404 c!741802) b!4362399))

(assert (= (and b!4362404 (not c!741802)) b!4362395))

(assert (= (and b!4362395 c!741806) b!4362401))

(assert (= (and b!4362395 (not c!741806)) b!4362403))

(assert (= (and b!4362401 c!741805) b!4362392))

(assert (= (and b!4362401 (not c!741805)) b!4362393))

(assert (= (or b!4362401 b!4362403) bm!303262))

(assert (= (and bm!303262 c!741804) b!4362391))

(assert (= (and bm!303262 (not c!741804)) b!4362398))

(assert (= (or b!4362399 bm!303262) bm!303261))

(assert (= (or b!4362394 b!4362392) bm!303260))

(assert (= (or b!4362394 bm!303261) bm!303263))

(assert (= (and d!1290730 res!1793756) b!4362400))

(assert (= (and b!4362400 res!1793755) b!4362397))

(assert (= (and b!4362397 res!1793754) b!4362396))

(declare-fun m!4981993 () Bool)

(assert (=> b!4362392 m!4981993))

(declare-fun m!4981995 () Bool)

(assert (=> b!4362392 m!4981995))

(declare-fun m!4981997 () Bool)

(assert (=> b!4362392 m!4981997))

(declare-fun m!4981999 () Bool)

(assert (=> b!4362392 m!4981999))

(declare-fun m!4982001 () Bool)

(assert (=> b!4362392 m!4982001))

(assert (=> b!4362396 m!4980617))

(assert (=> b!4362396 m!4980617))

(declare-fun m!4982003 () Bool)

(assert (=> b!4362396 m!4982003))

(declare-fun m!4982005 () Bool)

(assert (=> b!4362396 m!4982005))

(declare-fun m!4982007 () Bool)

(assert (=> b!4362396 m!4982007))

(assert (=> b!4362396 m!4982005))

(declare-fun m!4982009 () Bool)

(assert (=> b!4362396 m!4982009))

(declare-fun m!4982011 () Bool)

(assert (=> b!4362394 m!4982011))

(declare-fun m!4982013 () Bool)

(assert (=> b!4362394 m!4982013))

(declare-fun m!4982015 () Bool)

(assert (=> b!4362400 m!4982015))

(declare-fun m!4982017 () Bool)

(assert (=> d!1290730 m!4982017))

(declare-fun m!4982019 () Bool)

(assert (=> d!1290730 m!4982019))

(assert (=> b!4362391 m!4981995))

(assert (=> b!4362401 m!4981995))

(assert (=> b!4362401 m!4981995))

(declare-fun m!4982021 () Bool)

(assert (=> b!4362401 m!4982021))

(declare-fun m!4982023 () Bool)

(assert (=> bm!303260 m!4982023))

(declare-fun m!4982025 () Bool)

(assert (=> b!4362402 m!4982025))

(declare-fun m!4982029 () Bool)

(assert (=> bm!303263 m!4982029))

(declare-fun m!4982033 () Bool)

(assert (=> b!4362397 m!4982033))

(assert (=> d!1290390 d!1290730))

(declare-fun d!1290802 () Bool)

(declare-fun lt!1574874 () Bool)

(assert (=> d!1290802 (= lt!1574874 (select (content!7751 (keys!16560 lt!1574069)) key!3918))))

(declare-fun e!2714955 () Bool)

(assert (=> d!1290802 (= lt!1574874 e!2714955)))

(declare-fun res!1793769 () Bool)

(assert (=> d!1290802 (=> (not res!1793769) (not e!2714955))))

(assert (=> d!1290802 (= res!1793769 ((_ is Cons!48986) (keys!16560 lt!1574069)))))

(assert (=> d!1290802 (= (contains!11225 (keys!16560 lt!1574069) key!3918) lt!1574874)))

(declare-fun b!4362434 () Bool)

(declare-fun e!2714954 () Bool)

(assert (=> b!4362434 (= e!2714955 e!2714954)))

(declare-fun res!1793770 () Bool)

(assert (=> b!4362434 (=> res!1793770 e!2714954)))

(assert (=> b!4362434 (= res!1793770 (= (h!54551 (keys!16560 lt!1574069)) key!3918))))

(declare-fun b!4362435 () Bool)

(assert (=> b!4362435 (= e!2714954 (contains!11225 (t!356030 (keys!16560 lt!1574069)) key!3918))))

(assert (= (and d!1290802 res!1793769) b!4362434))

(assert (= (and b!4362434 (not res!1793770)) b!4362435))

(assert (=> d!1290802 m!4980641))

(declare-fun m!4982047 () Bool)

(assert (=> d!1290802 m!4982047))

(declare-fun m!4982049 () Bool)

(assert (=> d!1290802 m!4982049))

(declare-fun m!4982051 () Bool)

(assert (=> b!4362435 m!4982051))

(assert (=> b!4361710 d!1290802))

(declare-fun b!4362443 () Bool)

(assert (=> b!4362443 true))

(declare-fun d!1290808 () Bool)

(declare-fun e!2714958 () Bool)

(assert (=> d!1290808 e!2714958))

(declare-fun res!1793778 () Bool)

(assert (=> d!1290808 (=> (not res!1793778) (not e!2714958))))

(declare-fun lt!1574877 () List!49110)

(declare-fun noDuplicate!608 (List!49110) Bool)

(assert (=> d!1290808 (= res!1793778 (noDuplicate!608 lt!1574877))))

(assert (=> d!1290808 (= lt!1574877 (getKeysList!138 (toList!3002 lt!1574069)))))

(assert (=> d!1290808 (= (keys!16560 lt!1574069) lt!1574877)))

(declare-fun b!4362442 () Bool)

(declare-fun res!1793779 () Bool)

(assert (=> b!4362442 (=> (not res!1793779) (not e!2714958))))

(declare-fun length!72 (List!49110) Int)

(declare-fun length!73 (List!49107) Int)

(assert (=> b!4362442 (= res!1793779 (= (length!72 lt!1574877) (length!73 (toList!3002 lt!1574069))))))

(declare-fun res!1793777 () Bool)

(assert (=> b!4362443 (=> (not res!1793777) (not e!2714958))))

(declare-fun lambda!141795 () Int)

(declare-fun forall!9160 (List!49110 Int) Bool)

(assert (=> b!4362443 (= res!1793777 (forall!9160 lt!1574877 lambda!141795))))

(declare-fun b!4362444 () Bool)

(declare-fun lambda!141796 () Int)

(declare-fun map!10659 (List!49107 Int) List!49110)

(assert (=> b!4362444 (= e!2714958 (= (content!7751 lt!1574877) (content!7751 (map!10659 (toList!3002 lt!1574069) lambda!141796))))))

(assert (= (and d!1290808 res!1793778) b!4362442))

(assert (= (and b!4362442 res!1793779) b!4362443))

(assert (= (and b!4362443 res!1793777) b!4362444))

(declare-fun m!4982053 () Bool)

(assert (=> d!1290808 m!4982053))

(assert (=> d!1290808 m!4980647))

(declare-fun m!4982055 () Bool)

(assert (=> b!4362442 m!4982055))

(declare-fun m!4982057 () Bool)

(assert (=> b!4362442 m!4982057))

(declare-fun m!4982059 () Bool)

(assert (=> b!4362443 m!4982059))

(declare-fun m!4982061 () Bool)

(assert (=> b!4362444 m!4982061))

(declare-fun m!4982063 () Bool)

(assert (=> b!4362444 m!4982063))

(assert (=> b!4362444 m!4982063))

(declare-fun m!4982065 () Bool)

(assert (=> b!4362444 m!4982065))

(assert (=> b!4361710 d!1290808))

(declare-fun b!4362459 () Bool)

(declare-fun e!2714965 () Option!10492)

(assert (=> b!4362459 (= e!2714965 (getValueByKey!478 (t!356028 (toList!3001 lt!1574460)) (_1!27498 lt!1574085)))))

(declare-fun d!1290810 () Bool)

(declare-fun c!741821 () Bool)

(assert (=> d!1290810 (= c!741821 (and ((_ is Cons!48984) (toList!3001 lt!1574460)) (= (_1!27498 (h!54547 (toList!3001 lt!1574460))) (_1!27498 lt!1574085))))))

(declare-fun e!2714964 () Option!10492)

(assert (=> d!1290810 (= (getValueByKey!478 (toList!3001 lt!1574460) (_1!27498 lt!1574085)) e!2714964)))

(declare-fun b!4362458 () Bool)

(assert (=> b!4362458 (= e!2714964 e!2714965)))

(declare-fun c!741822 () Bool)

(assert (=> b!4362458 (= c!741822 (and ((_ is Cons!48984) (toList!3001 lt!1574460)) (not (= (_1!27498 (h!54547 (toList!3001 lt!1574460))) (_1!27498 lt!1574085)))))))

(declare-fun b!4362457 () Bool)

(assert (=> b!4362457 (= e!2714964 (Some!10491 (_2!27498 (h!54547 (toList!3001 lt!1574460)))))))

(declare-fun b!4362460 () Bool)

(assert (=> b!4362460 (= e!2714965 None!10491)))

(assert (= (and d!1290810 c!741821) b!4362457))

(assert (= (and d!1290810 (not c!741821)) b!4362458))

(assert (= (and b!4362458 c!741822) b!4362459))

(assert (= (and b!4362458 (not c!741822)) b!4362460))

(declare-fun m!4982107 () Bool)

(assert (=> b!4362459 m!4982107))

(assert (=> b!4361819 d!1290810))

(declare-fun b!4362463 () Bool)

(declare-fun e!2714967 () Option!10492)

(assert (=> b!4362463 (= e!2714967 (getValueByKey!478 (t!356028 (toList!3001 lt!1574138)) (_1!27498 lt!1574085)))))

(declare-fun d!1290814 () Bool)

(declare-fun c!741823 () Bool)

(assert (=> d!1290814 (= c!741823 (and ((_ is Cons!48984) (toList!3001 lt!1574138)) (= (_1!27498 (h!54547 (toList!3001 lt!1574138))) (_1!27498 lt!1574085))))))

(declare-fun e!2714966 () Option!10492)

(assert (=> d!1290814 (= (getValueByKey!478 (toList!3001 lt!1574138) (_1!27498 lt!1574085)) e!2714966)))

(declare-fun b!4362462 () Bool)

(assert (=> b!4362462 (= e!2714966 e!2714967)))

(declare-fun c!741824 () Bool)

(assert (=> b!4362462 (= c!741824 (and ((_ is Cons!48984) (toList!3001 lt!1574138)) (not (= (_1!27498 (h!54547 (toList!3001 lt!1574138))) (_1!27498 lt!1574085)))))))

(declare-fun b!4362461 () Bool)

(assert (=> b!4362461 (= e!2714966 (Some!10491 (_2!27498 (h!54547 (toList!3001 lt!1574138)))))))

(declare-fun b!4362464 () Bool)

(assert (=> b!4362464 (= e!2714967 None!10491)))

(assert (= (and d!1290814 c!741823) b!4362461))

(assert (= (and d!1290814 (not c!741823)) b!4362462))

(assert (= (and b!4362462 c!741824) b!4362463))

(assert (= (and b!4362462 (not c!741824)) b!4362464))

(declare-fun m!4982111 () Bool)

(assert (=> b!4362463 m!4982111))

(assert (=> b!4361618 d!1290814))

(declare-fun d!1290818 () Bool)

(declare-fun lt!1574883 () Bool)

(assert (=> d!1290818 (= lt!1574883 (select (content!7749 (t!356028 (toList!3001 lm!1707))) lt!1574086))))

(declare-fun e!2714969 () Bool)

(assert (=> d!1290818 (= lt!1574883 e!2714969)))

(declare-fun res!1793782 () Bool)

(assert (=> d!1290818 (=> (not res!1793782) (not e!2714969))))

(assert (=> d!1290818 (= res!1793782 ((_ is Cons!48984) (t!356028 (toList!3001 lm!1707))))))

(assert (=> d!1290818 (= (contains!11220 (t!356028 (toList!3001 lm!1707)) lt!1574086) lt!1574883)))

(declare-fun b!4362467 () Bool)

(declare-fun e!2714970 () Bool)

(assert (=> b!4362467 (= e!2714969 e!2714970)))

(declare-fun res!1793783 () Bool)

(assert (=> b!4362467 (=> res!1793783 e!2714970)))

(assert (=> b!4362467 (= res!1793783 (= (h!54547 (t!356028 (toList!3001 lm!1707))) lt!1574086))))

(declare-fun b!4362468 () Bool)

(assert (=> b!4362468 (= e!2714970 (contains!11220 (t!356028 (t!356028 (toList!3001 lm!1707))) lt!1574086))))

(assert (= (and d!1290818 res!1793782) b!4362467))

(assert (= (and b!4362467 (not res!1793783)) b!4362468))

(declare-fun m!4982121 () Bool)

(assert (=> d!1290818 m!4982121))

(declare-fun m!4982125 () Bool)

(assert (=> d!1290818 m!4982125))

(declare-fun m!4982129 () Bool)

(assert (=> b!4362468 m!4982129))

(assert (=> b!4361856 d!1290818))

(declare-fun bs!635336 () Bool)

(declare-fun b!4362535 () Bool)

(assert (= bs!635336 (and b!4362535 b!4362443)))

(declare-fun lambda!141809 () Int)

(assert (=> bs!635336 (= (= (t!356027 (toList!3002 lt!1574079)) (toList!3002 lt!1574069)) (= lambda!141809 lambda!141795))))

(assert (=> b!4362535 true))

(declare-fun bs!635340 () Bool)

(declare-fun b!4362528 () Bool)

(assert (= bs!635340 (and b!4362528 b!4362443)))

(declare-fun lambda!141810 () Int)

(assert (=> bs!635340 (= (= (Cons!48983 (h!54546 (toList!3002 lt!1574079)) (t!356027 (toList!3002 lt!1574079))) (toList!3002 lt!1574069)) (= lambda!141810 lambda!141795))))

(declare-fun bs!635342 () Bool)

(assert (= bs!635342 (and b!4362528 b!4362535)))

(assert (=> bs!635342 (= (= (Cons!48983 (h!54546 (toList!3002 lt!1574079)) (t!356027 (toList!3002 lt!1574079))) (t!356027 (toList!3002 lt!1574079))) (= lambda!141810 lambda!141809))))

(assert (=> b!4362528 true))

(declare-fun bs!635344 () Bool)

(declare-fun b!4362533 () Bool)

(assert (= bs!635344 (and b!4362533 b!4362443)))

(declare-fun lambda!141811 () Int)

(assert (=> bs!635344 (= (= (toList!3002 lt!1574079) (toList!3002 lt!1574069)) (= lambda!141811 lambda!141795))))

(declare-fun bs!635346 () Bool)

(assert (= bs!635346 (and b!4362533 b!4362535)))

(assert (=> bs!635346 (= (= (toList!3002 lt!1574079) (t!356027 (toList!3002 lt!1574079))) (= lambda!141811 lambda!141809))))

(declare-fun bs!635347 () Bool)

(assert (= bs!635347 (and b!4362533 b!4362528)))

(assert (=> bs!635347 (= (= (toList!3002 lt!1574079) (Cons!48983 (h!54546 (toList!3002 lt!1574079)) (t!356027 (toList!3002 lt!1574079)))) (= lambda!141811 lambda!141810))))

(assert (=> b!4362533 true))

(declare-fun bs!635349 () Bool)

(declare-fun b!4362531 () Bool)

(assert (= bs!635349 (and b!4362531 b!4362444)))

(declare-fun lambda!141812 () Int)

(assert (=> bs!635349 (= lambda!141812 lambda!141796)))

(declare-fun b!4362527 () Bool)

(assert (=> b!4362527 false))

(declare-fun e!2715009 () Unit!72449)

(declare-fun Unit!72548 () Unit!72449)

(assert (=> b!4362527 (= e!2715009 Unit!72548)))

(declare-fun d!1290822 () Bool)

(declare-fun e!2715010 () Bool)

(assert (=> d!1290822 e!2715010))

(declare-fun res!1793814 () Bool)

(assert (=> d!1290822 (=> (not res!1793814) (not e!2715010))))

(declare-fun lt!1574948 () List!49110)

(assert (=> d!1290822 (= res!1793814 (noDuplicate!608 lt!1574948))))

(declare-fun e!2715008 () List!49110)

(assert (=> d!1290822 (= lt!1574948 e!2715008)))

(declare-fun c!741841 () Bool)

(assert (=> d!1290822 (= c!741841 ((_ is Cons!48983) (toList!3002 lt!1574079)))))

(assert (=> d!1290822 (invariantList!690 (toList!3002 lt!1574079))))

(assert (=> d!1290822 (= (getKeysList!138 (toList!3002 lt!1574079)) lt!1574948)))

(assert (=> b!4362528 (= e!2715008 (Cons!48986 (_1!27497 (h!54546 (toList!3002 lt!1574079))) (getKeysList!138 (t!356027 (toList!3002 lt!1574079)))))))

(declare-fun c!741839 () Bool)

(assert (=> b!4362528 (= c!741839 (containsKey!737 (t!356027 (toList!3002 lt!1574079)) (_1!27497 (h!54546 (toList!3002 lt!1574079)))))))

(declare-fun lt!1574951 () Unit!72449)

(assert (=> b!4362528 (= lt!1574951 e!2715009)))

(declare-fun c!741840 () Bool)

(assert (=> b!4362528 (= c!741840 (contains!11225 (getKeysList!138 (t!356027 (toList!3002 lt!1574079))) (_1!27497 (h!54546 (toList!3002 lt!1574079)))))))

(declare-fun lt!1574949 () Unit!72449)

(declare-fun e!2715011 () Unit!72449)

(assert (=> b!4362528 (= lt!1574949 e!2715011)))

(declare-fun lt!1574950 () List!49110)

(assert (=> b!4362528 (= lt!1574950 (getKeysList!138 (t!356027 (toList!3002 lt!1574079))))))

(declare-fun lt!1574946 () Unit!72449)

(declare-fun lemmaForallContainsAddHeadPreserves!29 (List!49107 List!49110 tuple2!48406) Unit!72449)

(assert (=> b!4362528 (= lt!1574946 (lemmaForallContainsAddHeadPreserves!29 (t!356027 (toList!3002 lt!1574079)) lt!1574950 (h!54546 (toList!3002 lt!1574079))))))

(assert (=> b!4362528 (forall!9160 lt!1574950 lambda!141810)))

(declare-fun lt!1574952 () Unit!72449)

(assert (=> b!4362528 (= lt!1574952 lt!1574946)))

(declare-fun b!4362529 () Bool)

(assert (=> b!4362529 (= e!2715008 Nil!48986)))

(declare-fun b!4362530 () Bool)

(declare-fun Unit!72550 () Unit!72449)

(assert (=> b!4362530 (= e!2715011 Unit!72550)))

(assert (=> b!4362531 (= e!2715010 (= (content!7751 lt!1574948) (content!7751 (map!10659 (toList!3002 lt!1574079) lambda!141812))))))

(declare-fun b!4362532 () Bool)

(declare-fun Unit!72551 () Unit!72449)

(assert (=> b!4362532 (= e!2715009 Unit!72551)))

(declare-fun res!1793815 () Bool)

(assert (=> b!4362533 (=> (not res!1793815) (not e!2715010))))

(assert (=> b!4362533 (= res!1793815 (forall!9160 lt!1574948 lambda!141811))))

(declare-fun b!4362534 () Bool)

(declare-fun res!1793816 () Bool)

(assert (=> b!4362534 (=> (not res!1793816) (not e!2715010))))

(assert (=> b!4362534 (= res!1793816 (= (length!72 lt!1574948) (length!73 (toList!3002 lt!1574079))))))

(assert (=> b!4362535 false))

(declare-fun lt!1574947 () Unit!72449)

(declare-fun forallContained!1800 (List!49110 Int K!10340) Unit!72449)

(assert (=> b!4362535 (= lt!1574947 (forallContained!1800 (getKeysList!138 (t!356027 (toList!3002 lt!1574079))) lambda!141809 (_1!27497 (h!54546 (toList!3002 lt!1574079)))))))

(declare-fun Unit!72556 () Unit!72449)

(assert (=> b!4362535 (= e!2715011 Unit!72556)))

(assert (= (and d!1290822 c!741841) b!4362528))

(assert (= (and d!1290822 (not c!741841)) b!4362529))

(assert (= (and b!4362528 c!741839) b!4362527))

(assert (= (and b!4362528 (not c!741839)) b!4362532))

(assert (= (and b!4362528 c!741840) b!4362535))

(assert (= (and b!4362528 (not c!741840)) b!4362530))

(assert (= (and d!1290822 res!1793814) b!4362534))

(assert (= (and b!4362534 res!1793816) b!4362533))

(assert (= (and b!4362533 res!1793815) b!4362531))

(declare-fun m!4982239 () Bool)

(assert (=> d!1290822 m!4982239))

(assert (=> d!1290822 m!4982019))

(declare-fun m!4982241 () Bool)

(assert (=> b!4362528 m!4982241))

(assert (=> b!4362528 m!4981997))

(declare-fun m!4982243 () Bool)

(assert (=> b!4362528 m!4982243))

(assert (=> b!4362528 m!4982241))

(declare-fun m!4982245 () Bool)

(assert (=> b!4362528 m!4982245))

(declare-fun m!4982247 () Bool)

(assert (=> b!4362528 m!4982247))

(declare-fun m!4982249 () Bool)

(assert (=> b!4362534 m!4982249))

(declare-fun m!4982251 () Bool)

(assert (=> b!4362534 m!4982251))

(declare-fun m!4982253 () Bool)

(assert (=> b!4362531 m!4982253))

(declare-fun m!4982255 () Bool)

(assert (=> b!4362531 m!4982255))

(assert (=> b!4362531 m!4982255))

(declare-fun m!4982257 () Bool)

(assert (=> b!4362531 m!4982257))

(declare-fun m!4982259 () Bool)

(assert (=> b!4362533 m!4982259))

(assert (=> b!4362535 m!4982241))

(assert (=> b!4362535 m!4982241))

(declare-fun m!4982261 () Bool)

(assert (=> b!4362535 m!4982261))

(assert (=> b!4361701 d!1290822))

(declare-fun d!1290852 () Bool)

(declare-fun c!741844 () Bool)

(assert (=> d!1290852 (= c!741844 ((_ is Nil!48983) (toList!3002 lt!1574075)))))

(declare-fun e!2715014 () (InoxSet tuple2!48406))

(assert (=> d!1290852 (= (content!7748 (toList!3002 lt!1574075)) e!2715014)))

(declare-fun b!4362542 () Bool)

(assert (=> b!4362542 (= e!2715014 ((as const (Array tuple2!48406 Bool)) false))))

(declare-fun b!4362543 () Bool)

(assert (=> b!4362543 (= e!2715014 ((_ map or) (store ((as const (Array tuple2!48406 Bool)) false) (h!54546 (toList!3002 lt!1574075)) true) (content!7748 (t!356027 (toList!3002 lt!1574075)))))))

(assert (= (and d!1290852 c!741844) b!4362542))

(assert (= (and d!1290852 (not c!741844)) b!4362543))

(declare-fun m!4982263 () Bool)

(assert (=> b!4362543 m!4982263))

(declare-fun m!4982265 () Bool)

(assert (=> b!4362543 m!4982265))

(assert (=> d!1290400 d!1290852))

(declare-fun d!1290854 () Bool)

(declare-fun c!741845 () Bool)

(assert (=> d!1290854 (= c!741845 ((_ is Nil!48983) (toList!3002 lt!1574072)))))

(declare-fun e!2715015 () (InoxSet tuple2!48406))

(assert (=> d!1290854 (= (content!7748 (toList!3002 lt!1574072)) e!2715015)))

(declare-fun b!4362544 () Bool)

(assert (=> b!4362544 (= e!2715015 ((as const (Array tuple2!48406 Bool)) false))))

(declare-fun b!4362545 () Bool)

(assert (=> b!4362545 (= e!2715015 ((_ map or) (store ((as const (Array tuple2!48406 Bool)) false) (h!54546 (toList!3002 lt!1574072)) true) (content!7748 (t!356027 (toList!3002 lt!1574072)))))))

(assert (= (and d!1290854 c!741845) b!4362544))

(assert (= (and d!1290854 (not c!741845)) b!4362545))

(declare-fun m!4982267 () Bool)

(assert (=> b!4362545 m!4982267))

(declare-fun m!4982269 () Bool)

(assert (=> b!4362545 m!4982269))

(assert (=> d!1290400 d!1290854))

(declare-fun d!1290856 () Bool)

(declare-fun e!2715017 () Bool)

(assert (=> d!1290856 e!2715017))

(declare-fun res!1793817 () Bool)

(assert (=> d!1290856 (=> res!1793817 e!2715017)))

(declare-fun lt!1574954 () Bool)

(assert (=> d!1290856 (= res!1793817 (not lt!1574954))))

(declare-fun lt!1574953 () Bool)

(assert (=> d!1290856 (= lt!1574954 lt!1574953)))

(declare-fun lt!1574955 () Unit!72449)

(declare-fun e!2715016 () Unit!72449)

(assert (=> d!1290856 (= lt!1574955 e!2715016)))

(declare-fun c!741846 () Bool)

(assert (=> d!1290856 (= c!741846 lt!1574953)))

(assert (=> d!1290856 (= lt!1574953 (containsKey!738 (toList!3001 lt!1574138) (_1!27498 lt!1574085)))))

(assert (=> d!1290856 (= (contains!11219 lt!1574138 (_1!27498 lt!1574085)) lt!1574954)))

(declare-fun b!4362546 () Bool)

(declare-fun lt!1574956 () Unit!72449)

(assert (=> b!4362546 (= e!2715016 lt!1574956)))

(assert (=> b!4362546 (= lt!1574956 (lemmaContainsKeyImpliesGetValueByKeyDefined!390 (toList!3001 lt!1574138) (_1!27498 lt!1574085)))))

(assert (=> b!4362546 (isDefined!7787 (getValueByKey!478 (toList!3001 lt!1574138) (_1!27498 lt!1574085)))))

(declare-fun b!4362547 () Bool)

(declare-fun Unit!72563 () Unit!72449)

(assert (=> b!4362547 (= e!2715016 Unit!72563)))

(declare-fun b!4362548 () Bool)

(assert (=> b!4362548 (= e!2715017 (isDefined!7787 (getValueByKey!478 (toList!3001 lt!1574138) (_1!27498 lt!1574085))))))

(assert (= (and d!1290856 c!741846) b!4362546))

(assert (= (and d!1290856 (not c!741846)) b!4362547))

(assert (= (and d!1290856 (not res!1793817)) b!4362548))

(declare-fun m!4982271 () Bool)

(assert (=> d!1290856 m!4982271))

(declare-fun m!4982273 () Bool)

(assert (=> b!4362546 m!4982273))

(assert (=> b!4362546 m!4980483))

(assert (=> b!4362546 m!4980483))

(declare-fun m!4982275 () Bool)

(assert (=> b!4362546 m!4982275))

(assert (=> b!4362548 m!4980483))

(assert (=> b!4362548 m!4980483))

(assert (=> b!4362548 m!4982275))

(assert (=> d!1290362 d!1290856))

(declare-fun b!4362551 () Bool)

(declare-fun e!2715019 () Option!10492)

(assert (=> b!4362551 (= e!2715019 (getValueByKey!478 (t!356028 lt!1574137) (_1!27498 lt!1574085)))))

(declare-fun d!1290858 () Bool)

(declare-fun c!741847 () Bool)

(assert (=> d!1290858 (= c!741847 (and ((_ is Cons!48984) lt!1574137) (= (_1!27498 (h!54547 lt!1574137)) (_1!27498 lt!1574085))))))

(declare-fun e!2715018 () Option!10492)

(assert (=> d!1290858 (= (getValueByKey!478 lt!1574137 (_1!27498 lt!1574085)) e!2715018)))

(declare-fun b!4362550 () Bool)

(assert (=> b!4362550 (= e!2715018 e!2715019)))

(declare-fun c!741848 () Bool)

(assert (=> b!4362550 (= c!741848 (and ((_ is Cons!48984) lt!1574137) (not (= (_1!27498 (h!54547 lt!1574137)) (_1!27498 lt!1574085)))))))

(declare-fun b!4362549 () Bool)

(assert (=> b!4362549 (= e!2715018 (Some!10491 (_2!27498 (h!54547 lt!1574137))))))

(declare-fun b!4362552 () Bool)

(assert (=> b!4362552 (= e!2715019 None!10491)))

(assert (= (and d!1290858 c!741847) b!4362549))

(assert (= (and d!1290858 (not c!741847)) b!4362550))

(assert (= (and b!4362550 c!741848) b!4362551))

(assert (= (and b!4362550 (not c!741848)) b!4362552))

(declare-fun m!4982277 () Bool)

(assert (=> b!4362551 m!4982277))

(assert (=> d!1290362 d!1290858))

(declare-fun d!1290860 () Bool)

(assert (=> d!1290860 (= (getValueByKey!478 lt!1574137 (_1!27498 lt!1574085)) (Some!10491 (_2!27498 lt!1574085)))))

(declare-fun lt!1574959 () Unit!72449)

(declare-fun choose!27056 (List!49108 (_ BitVec 64) List!49107) Unit!72449)

(assert (=> d!1290860 (= lt!1574959 (choose!27056 lt!1574137 (_1!27498 lt!1574085) (_2!27498 lt!1574085)))))

(declare-fun e!2715022 () Bool)

(assert (=> d!1290860 e!2715022))

(declare-fun res!1793822 () Bool)

(assert (=> d!1290860 (=> (not res!1793822) (not e!2715022))))

(assert (=> d!1290860 (= res!1793822 (isStrictlySorted!116 lt!1574137))))

(assert (=> d!1290860 (= (lemmaContainsTupThenGetReturnValue!251 lt!1574137 (_1!27498 lt!1574085) (_2!27498 lt!1574085)) lt!1574959)))

(declare-fun b!4362557 () Bool)

(declare-fun res!1793823 () Bool)

(assert (=> b!4362557 (=> (not res!1793823) (not e!2715022))))

(assert (=> b!4362557 (= res!1793823 (containsKey!738 lt!1574137 (_1!27498 lt!1574085)))))

(declare-fun b!4362558 () Bool)

(assert (=> b!4362558 (= e!2715022 (contains!11220 lt!1574137 (tuple2!48409 (_1!27498 lt!1574085) (_2!27498 lt!1574085))))))

(assert (= (and d!1290860 res!1793822) b!4362557))

(assert (= (and b!4362557 res!1793823) b!4362558))

(assert (=> d!1290860 m!4980477))

(declare-fun m!4982279 () Bool)

(assert (=> d!1290860 m!4982279))

(declare-fun m!4982281 () Bool)

(assert (=> d!1290860 m!4982281))

(declare-fun m!4982283 () Bool)

(assert (=> b!4362557 m!4982283))

(declare-fun m!4982285 () Bool)

(assert (=> b!4362558 m!4982285))

(assert (=> d!1290362 d!1290860))

(declare-fun b!4362586 () Bool)

(declare-fun e!2715038 () List!49108)

(declare-fun call!303291 () List!49108)

(assert (=> b!4362586 (= e!2715038 call!303291)))

(declare-fun b!4362587 () Bool)

(declare-fun e!2715039 () List!49108)

(declare-fun call!303290 () List!49108)

(assert (=> b!4362587 (= e!2715039 call!303290)))

(declare-fun bm!303284 () Bool)

(declare-fun call!303289 () List!49108)

(assert (=> bm!303284 (= call!303290 call!303289)))

(declare-fun b!4362588 () Bool)

(declare-fun e!2715041 () List!49108)

(assert (=> b!4362588 (= e!2715041 call!303289)))

(declare-fun b!4362589 () Bool)

(declare-fun e!2715042 () List!49108)

(assert (=> b!4362589 (= e!2715042 (insertStrictlySorted!147 (t!356028 (toList!3001 lt!1574068)) (_1!27498 lt!1574085) (_2!27498 lt!1574085)))))

(declare-fun b!4362590 () Bool)

(assert (=> b!4362590 (= e!2715038 call!303291)))

(declare-fun b!4362591 () Bool)

(declare-fun e!2715040 () Bool)

(declare-fun lt!1574984 () List!49108)

(assert (=> b!4362591 (= e!2715040 (contains!11220 lt!1574984 (tuple2!48409 (_1!27498 lt!1574085) (_2!27498 lt!1574085))))))

(declare-fun b!4362592 () Bool)

(assert (=> b!4362592 (= e!2715041 e!2715039)))

(declare-fun c!741858 () Bool)

(assert (=> b!4362592 (= c!741858 (and ((_ is Cons!48984) (toList!3001 lt!1574068)) (= (_1!27498 (h!54547 (toList!3001 lt!1574068))) (_1!27498 lt!1574085))))))

(declare-fun bm!303285 () Bool)

(assert (=> bm!303285 (= call!303291 call!303290)))

(declare-fun d!1290862 () Bool)

(assert (=> d!1290862 e!2715040))

(declare-fun res!1793833 () Bool)

(assert (=> d!1290862 (=> (not res!1793833) (not e!2715040))))

(assert (=> d!1290862 (= res!1793833 (isStrictlySorted!116 lt!1574984))))

(assert (=> d!1290862 (= lt!1574984 e!2715041)))

(declare-fun c!741861 () Bool)

(assert (=> d!1290862 (= c!741861 (and ((_ is Cons!48984) (toList!3001 lt!1574068)) (bvslt (_1!27498 (h!54547 (toList!3001 lt!1574068))) (_1!27498 lt!1574085))))))

(assert (=> d!1290862 (isStrictlySorted!116 (toList!3001 lt!1574068))))

(assert (=> d!1290862 (= (insertStrictlySorted!147 (toList!3001 lt!1574068) (_1!27498 lt!1574085) (_2!27498 lt!1574085)) lt!1574984)))

(declare-fun b!4362593 () Bool)

(declare-fun c!741859 () Bool)

(assert (=> b!4362593 (= e!2715042 (ite c!741858 (t!356028 (toList!3001 lt!1574068)) (ite c!741859 (Cons!48984 (h!54547 (toList!3001 lt!1574068)) (t!356028 (toList!3001 lt!1574068))) Nil!48984)))))

(declare-fun bm!303286 () Bool)

(declare-fun $colon$colon!703 (List!49108 tuple2!48408) List!49108)

(assert (=> bm!303286 (= call!303289 ($colon$colon!703 e!2715042 (ite c!741861 (h!54547 (toList!3001 lt!1574068)) (tuple2!48409 (_1!27498 lt!1574085) (_2!27498 lt!1574085)))))))

(declare-fun c!741860 () Bool)

(assert (=> bm!303286 (= c!741860 c!741861)))

(declare-fun b!4362594 () Bool)

(assert (=> b!4362594 (= c!741859 (and ((_ is Cons!48984) (toList!3001 lt!1574068)) (bvsgt (_1!27498 (h!54547 (toList!3001 lt!1574068))) (_1!27498 lt!1574085))))))

(assert (=> b!4362594 (= e!2715039 e!2715038)))

(declare-fun b!4362595 () Bool)

(declare-fun res!1793834 () Bool)

(assert (=> b!4362595 (=> (not res!1793834) (not e!2715040))))

(assert (=> b!4362595 (= res!1793834 (containsKey!738 lt!1574984 (_1!27498 lt!1574085)))))

(assert (= (and d!1290862 c!741861) b!4362588))

(assert (= (and d!1290862 (not c!741861)) b!4362592))

(assert (= (and b!4362592 c!741858) b!4362587))

(assert (= (and b!4362592 (not c!741858)) b!4362594))

(assert (= (and b!4362594 c!741859) b!4362586))

(assert (= (and b!4362594 (not c!741859)) b!4362590))

(assert (= (or b!4362586 b!4362590) bm!303285))

(assert (= (or b!4362587 bm!303285) bm!303284))

(assert (= (or b!4362588 bm!303284) bm!303286))

(assert (= (and bm!303286 c!741860) b!4362589))

(assert (= (and bm!303286 (not c!741860)) b!4362593))

(assert (= (and d!1290862 res!1793833) b!4362595))

(assert (= (and b!4362595 res!1793834) b!4362591))

(declare-fun m!4982325 () Bool)

(assert (=> d!1290862 m!4982325))

(declare-fun m!4982327 () Bool)

(assert (=> d!1290862 m!4982327))

(declare-fun m!4982329 () Bool)

(assert (=> b!4362589 m!4982329))

(declare-fun m!4982331 () Bool)

(assert (=> b!4362591 m!4982331))

(declare-fun m!4982333 () Bool)

(assert (=> b!4362595 m!4982333))

(declare-fun m!4982335 () Bool)

(assert (=> bm!303286 m!4982335))

(assert (=> d!1290362 d!1290862))

(declare-fun d!1290868 () Bool)

(declare-fun res!1793839 () Bool)

(declare-fun e!2715047 () Bool)

(assert (=> d!1290868 (=> res!1793839 e!2715047)))

(assert (=> d!1290868 (= res!1793839 ((_ is Nil!48983) (ite c!741654 (toList!3002 lt!1574079) (toList!3002 lt!1574408))))))

(assert (=> d!1290868 (= (forall!9158 (ite c!741654 (toList!3002 lt!1574079) (toList!3002 lt!1574408)) (ite c!741654 lambda!141718 lambda!141720)) e!2715047)))

(declare-fun b!4362600 () Bool)

(declare-fun e!2715048 () Bool)

(assert (=> b!4362600 (= e!2715047 e!2715048)))

(declare-fun res!1793840 () Bool)

(assert (=> b!4362600 (=> (not res!1793840) (not e!2715048))))

(declare-fun dynLambda!20653 (Int tuple2!48406) Bool)

(assert (=> b!4362600 (= res!1793840 (dynLambda!20653 (ite c!741654 lambda!141718 lambda!141720) (h!54546 (ite c!741654 (toList!3002 lt!1574079) (toList!3002 lt!1574408)))))))

(declare-fun b!4362601 () Bool)

(assert (=> b!4362601 (= e!2715048 (forall!9158 (t!356027 (ite c!741654 (toList!3002 lt!1574079) (toList!3002 lt!1574408))) (ite c!741654 lambda!141718 lambda!141720)))))

(assert (= (and d!1290868 (not res!1793839)) b!4362600))

(assert (= (and b!4362600 res!1793840) b!4362601))

(declare-fun b_lambda!131947 () Bool)

(assert (=> (not b_lambda!131947) (not b!4362600)))

(declare-fun m!4982337 () Bool)

(assert (=> b!4362600 m!4982337))

(declare-fun m!4982339 () Bool)

(assert (=> b!4362601 m!4982339))

(assert (=> bm!303198 d!1290868))

(assert (=> b!4361713 d!1290802))

(assert (=> b!4361713 d!1290808))

(assert (=> b!4361859 d!1290502))

(declare-fun b!4362605 () Bool)

(declare-fun e!2715050 () Option!10493)

(assert (=> b!4362605 (= e!2715050 None!10492)))

(declare-fun b!4362604 () Bool)

(assert (=> b!4362604 (= e!2715050 (getValueByKey!479 (t!356027 (toList!3002 lt!1574195)) (_1!27497 lt!1574080)))))

(declare-fun d!1290870 () Bool)

(declare-fun c!741862 () Bool)

(assert (=> d!1290870 (= c!741862 (and ((_ is Cons!48983) (toList!3002 lt!1574195)) (= (_1!27497 (h!54546 (toList!3002 lt!1574195))) (_1!27497 lt!1574080))))))

(declare-fun e!2715049 () Option!10493)

(assert (=> d!1290870 (= (getValueByKey!479 (toList!3002 lt!1574195) (_1!27497 lt!1574080)) e!2715049)))

(declare-fun b!4362602 () Bool)

(assert (=> b!4362602 (= e!2715049 (Some!10492 (_2!27497 (h!54546 (toList!3002 lt!1574195)))))))

(declare-fun b!4362603 () Bool)

(assert (=> b!4362603 (= e!2715049 e!2715050)))

(declare-fun c!741863 () Bool)

(assert (=> b!4362603 (= c!741863 (and ((_ is Cons!48983) (toList!3002 lt!1574195)) (not (= (_1!27497 (h!54546 (toList!3002 lt!1574195))) (_1!27497 lt!1574080)))))))

(assert (= (and d!1290870 c!741862) b!4362602))

(assert (= (and d!1290870 (not c!741862)) b!4362603))

(assert (= (and b!4362603 c!741863) b!4362604))

(assert (= (and b!4362603 (not c!741863)) b!4362605))

(declare-fun m!4982341 () Bool)

(assert (=> b!4362604 m!4982341))

(assert (=> b!4361669 d!1290870))

(declare-fun b!4362608 () Bool)

(declare-fun e!2715051 () List!49107)

(assert (=> b!4362608 (= e!2715051 (Cons!48983 (h!54546 (t!356027 lt!1574083)) (removePairForKey!479 (t!356027 (t!356027 lt!1574083)) key!3918)))))

(declare-fun b!4362606 () Bool)

(declare-fun e!2715052 () List!49107)

(assert (=> b!4362606 (= e!2715052 (t!356027 (t!356027 lt!1574083)))))

(declare-fun b!4362609 () Bool)

(assert (=> b!4362609 (= e!2715051 Nil!48983)))

(declare-fun b!4362607 () Bool)

(assert (=> b!4362607 (= e!2715052 e!2715051)))

(declare-fun c!741865 () Bool)

(assert (=> b!4362607 (= c!741865 ((_ is Cons!48983) (t!356027 lt!1574083)))))

(declare-fun d!1290872 () Bool)

(declare-fun lt!1574985 () List!49107)

(assert (=> d!1290872 (not (containsKey!734 lt!1574985 key!3918))))

(assert (=> d!1290872 (= lt!1574985 e!2715052)))

(declare-fun c!741864 () Bool)

(assert (=> d!1290872 (= c!741864 (and ((_ is Cons!48983) (t!356027 lt!1574083)) (= (_1!27497 (h!54546 (t!356027 lt!1574083))) key!3918)))))

(assert (=> d!1290872 (noDuplicateKeys!509 (t!356027 lt!1574083))))

(assert (=> d!1290872 (= (removePairForKey!479 (t!356027 lt!1574083) key!3918) lt!1574985)))

(assert (= (and d!1290872 c!741864) b!4362606))

(assert (= (and d!1290872 (not c!741864)) b!4362607))

(assert (= (and b!4362607 c!741865) b!4362608))

(assert (= (and b!4362607 (not c!741865)) b!4362609))

(declare-fun m!4982343 () Bool)

(assert (=> b!4362608 m!4982343))

(declare-fun m!4982345 () Bool)

(assert (=> d!1290872 m!4982345))

(assert (=> d!1290872 m!4981707))

(assert (=> b!4361846 d!1290872))

(declare-fun d!1290874 () Bool)

(declare-fun res!1793841 () Bool)

(declare-fun e!2715053 () Bool)

(assert (=> d!1290874 (=> res!1793841 e!2715053)))

(assert (=> d!1290874 (= res!1793841 ((_ is Nil!48983) newBucket!200))))

(assert (=> d!1290874 (= (forall!9158 newBucket!200 lambda!141737) e!2715053)))

(declare-fun b!4362610 () Bool)

(declare-fun e!2715054 () Bool)

(assert (=> b!4362610 (= e!2715053 e!2715054)))

(declare-fun res!1793842 () Bool)

(assert (=> b!4362610 (=> (not res!1793842) (not e!2715054))))

(assert (=> b!4362610 (= res!1793842 (dynLambda!20653 lambda!141737 (h!54546 newBucket!200)))))

(declare-fun b!4362611 () Bool)

(assert (=> b!4362611 (= e!2715054 (forall!9158 (t!356027 newBucket!200) lambda!141737))))

(assert (= (and d!1290874 (not res!1793841)) b!4362610))

(assert (= (and b!4362610 res!1793842) b!4362611))

(declare-fun b_lambda!131949 () Bool)

(assert (=> (not b_lambda!131949) (not b!4362610)))

(declare-fun m!4982347 () Bool)

(assert (=> b!4362610 m!4982347))

(declare-fun m!4982349 () Bool)

(assert (=> b!4362611 m!4982349))

(assert (=> d!1290518 d!1290874))

(declare-fun d!1290876 () Bool)

(assert (=> d!1290876 (= (tail!7030 (toList!3001 lm!1707)) (t!356028 (toList!3001 lm!1707)))))

(assert (=> d!1290470 d!1290876))

(declare-fun b!4362612 () Bool)

(declare-fun e!2715060 () Unit!72449)

(declare-fun e!2715059 () Unit!72449)

(assert (=> b!4362612 (= e!2715060 e!2715059)))

(declare-fun c!741867 () Bool)

(declare-fun call!303292 () Bool)

(assert (=> b!4362612 (= c!741867 call!303292)))

(declare-fun b!4362613 () Bool)

(declare-fun Unit!72568 () Unit!72449)

(assert (=> b!4362613 (= e!2715059 Unit!72568)))

(declare-fun b!4362614 () Bool)

(declare-fun e!2715058 () Bool)

(declare-fun e!2715056 () Bool)

(assert (=> b!4362614 (= e!2715058 e!2715056)))

(declare-fun res!1793843 () Bool)

(assert (=> b!4362614 (=> (not res!1793843) (not e!2715056))))

(assert (=> b!4362614 (= res!1793843 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574489) (_1!27497 lt!1574080))))))

(declare-fun b!4362615 () Bool)

(assert (=> b!4362615 false))

(declare-fun lt!1574986 () Unit!72449)

(declare-fun lt!1574992 () Unit!72449)

(assert (=> b!4362615 (= lt!1574986 lt!1574992)))

(assert (=> b!4362615 (containsKey!737 (toList!3002 lt!1574489) (_1!27497 lt!1574080))))

(assert (=> b!4362615 (= lt!1574992 (lemmaInGetKeysListThenContainsKey!136 (toList!3002 lt!1574489) (_1!27497 lt!1574080)))))

(declare-fun Unit!72569 () Unit!72449)

(assert (=> b!4362615 (= e!2715059 Unit!72569)))

(declare-fun b!4362616 () Bool)

(declare-fun e!2715055 () Bool)

(assert (=> b!4362616 (= e!2715055 (not (contains!11225 (keys!16560 lt!1574489) (_1!27497 lt!1574080))))))

(declare-fun b!4362617 () Bool)

(declare-fun e!2715057 () List!49110)

(assert (=> b!4362617 (= e!2715057 (keys!16560 lt!1574489))))

(declare-fun b!4362618 () Bool)

(assert (=> b!4362618 (= e!2715057 (getKeysList!138 (toList!3002 lt!1574489)))))

(declare-fun bm!303287 () Bool)

(assert (=> bm!303287 (= call!303292 (contains!11225 e!2715057 (_1!27497 lt!1574080)))))

(declare-fun c!741868 () Bool)

(declare-fun c!741866 () Bool)

(assert (=> bm!303287 (= c!741868 c!741866)))

(declare-fun b!4362619 () Bool)

(assert (=> b!4362619 (= e!2715056 (contains!11225 (keys!16560 lt!1574489) (_1!27497 lt!1574080)))))

(declare-fun b!4362620 () Bool)

(declare-fun lt!1574991 () Unit!72449)

(assert (=> b!4362620 (= e!2715060 lt!1574991)))

(declare-fun lt!1574988 () Unit!72449)

(assert (=> b!4362620 (= lt!1574988 (lemmaContainsKeyImpliesGetValueByKeyDefined!389 (toList!3002 lt!1574489) (_1!27497 lt!1574080)))))

(assert (=> b!4362620 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574489) (_1!27497 lt!1574080)))))

(declare-fun lt!1574993 () Unit!72449)

(assert (=> b!4362620 (= lt!1574993 lt!1574988)))

(assert (=> b!4362620 (= lt!1574991 (lemmaInListThenGetKeysListContains!135 (toList!3002 lt!1574489) (_1!27497 lt!1574080)))))

(assert (=> b!4362620 call!303292))

(declare-fun d!1290878 () Bool)

(assert (=> d!1290878 e!2715058))

(declare-fun res!1793845 () Bool)

(assert (=> d!1290878 (=> res!1793845 e!2715058)))

(assert (=> d!1290878 (= res!1793845 e!2715055)))

(declare-fun res!1793844 () Bool)

(assert (=> d!1290878 (=> (not res!1793844) (not e!2715055))))

(declare-fun lt!1574989 () Bool)

(assert (=> d!1290878 (= res!1793844 (not lt!1574989))))

(declare-fun lt!1574990 () Bool)

(assert (=> d!1290878 (= lt!1574989 lt!1574990)))

(declare-fun lt!1574987 () Unit!72449)

(assert (=> d!1290878 (= lt!1574987 e!2715060)))

(assert (=> d!1290878 (= c!741866 lt!1574990)))

(assert (=> d!1290878 (= lt!1574990 (containsKey!737 (toList!3002 lt!1574489) (_1!27497 lt!1574080)))))

(assert (=> d!1290878 (= (contains!11221 lt!1574489 (_1!27497 lt!1574080)) lt!1574989)))

(assert (= (and d!1290878 c!741866) b!4362620))

(assert (= (and d!1290878 (not c!741866)) b!4362612))

(assert (= (and b!4362612 c!741867) b!4362615))

(assert (= (and b!4362612 (not c!741867)) b!4362613))

(assert (= (or b!4362620 b!4362612) bm!303287))

(assert (= (and bm!303287 c!741868) b!4362618))

(assert (= (and bm!303287 (not c!741868)) b!4362617))

(assert (= (and d!1290878 res!1793844) b!4362616))

(assert (= (and d!1290878 (not res!1793845)) b!4362614))

(assert (= (and b!4362614 res!1793843) b!4362619))

(declare-fun m!4982351 () Bool)

(assert (=> b!4362616 m!4982351))

(assert (=> b!4362616 m!4982351))

(declare-fun m!4982353 () Bool)

(assert (=> b!4362616 m!4982353))

(declare-fun m!4982355 () Bool)

(assert (=> bm!303287 m!4982355))

(assert (=> b!4362619 m!4982351))

(assert (=> b!4362619 m!4982351))

(assert (=> b!4362619 m!4982353))

(declare-fun m!4982361 () Bool)

(assert (=> b!4362618 m!4982361))

(declare-fun m!4982363 () Bool)

(assert (=> d!1290878 m!4982363))

(assert (=> b!4362617 m!4982351))

(assert (=> b!4362614 m!4981073))

(assert (=> b!4362614 m!4981073))

(declare-fun m!4982369 () Bool)

(assert (=> b!4362614 m!4982369))

(assert (=> b!4362615 m!4982363))

(declare-fun m!4982373 () Bool)

(assert (=> b!4362615 m!4982373))

(declare-fun m!4982375 () Bool)

(assert (=> b!4362620 m!4982375))

(assert (=> b!4362620 m!4981073))

(assert (=> b!4362620 m!4981073))

(assert (=> b!4362620 m!4982369))

(declare-fun m!4982383 () Bool)

(assert (=> b!4362620 m!4982383))

(assert (=> d!1290510 d!1290878))

(declare-fun b!4362624 () Bool)

(declare-fun e!2715062 () Option!10493)

(assert (=> b!4362624 (= e!2715062 None!10492)))

(declare-fun b!4362623 () Bool)

(assert (=> b!4362623 (= e!2715062 (getValueByKey!479 (t!356027 lt!1574487) (_1!27497 lt!1574080)))))

(declare-fun d!1290880 () Bool)

(declare-fun c!741869 () Bool)

(assert (=> d!1290880 (= c!741869 (and ((_ is Cons!48983) lt!1574487) (= (_1!27497 (h!54546 lt!1574487)) (_1!27497 lt!1574080))))))

(declare-fun e!2715061 () Option!10493)

(assert (=> d!1290880 (= (getValueByKey!479 lt!1574487 (_1!27497 lt!1574080)) e!2715061)))

(declare-fun b!4362621 () Bool)

(assert (=> b!4362621 (= e!2715061 (Some!10492 (_2!27497 (h!54546 lt!1574487))))))

(declare-fun b!4362622 () Bool)

(assert (=> b!4362622 (= e!2715061 e!2715062)))

(declare-fun c!741870 () Bool)

(assert (=> b!4362622 (= c!741870 (and ((_ is Cons!48983) lt!1574487) (not (= (_1!27497 (h!54546 lt!1574487)) (_1!27497 lt!1574080)))))))

(assert (= (and d!1290880 c!741869) b!4362621))

(assert (= (and d!1290880 (not c!741869)) b!4362622))

(assert (= (and b!4362622 c!741870) b!4362623))

(assert (= (and b!4362622 (not c!741870)) b!4362624))

(declare-fun m!4982397 () Bool)

(assert (=> b!4362623 m!4982397))

(assert (=> d!1290510 d!1290880))

(declare-fun d!1290882 () Bool)

(assert (=> d!1290882 (= (getValueByKey!479 lt!1574487 (_1!27497 lt!1574080)) (Some!10492 (_2!27497 lt!1574080)))))

(declare-fun lt!1574994 () Unit!72449)

(assert (=> d!1290882 (= lt!1574994 (choose!27054 lt!1574487 (_1!27497 lt!1574080) (_2!27497 lt!1574080)))))

(declare-fun e!2715063 () Bool)

(assert (=> d!1290882 e!2715063))

(declare-fun res!1793846 () Bool)

(assert (=> d!1290882 (=> (not res!1793846) (not e!2715063))))

(assert (=> d!1290882 (= res!1793846 (invariantList!690 lt!1574487))))

(assert (=> d!1290882 (= (lemmaContainsTupThenGetReturnValue!252 lt!1574487 (_1!27497 lt!1574080) (_2!27497 lt!1574080)) lt!1574994)))

(declare-fun b!4362625 () Bool)

(declare-fun res!1793847 () Bool)

(assert (=> b!4362625 (=> (not res!1793847) (not e!2715063))))

(assert (=> b!4362625 (= res!1793847 (containsKey!737 lt!1574487 (_1!27497 lt!1574080)))))

(declare-fun b!4362626 () Bool)

(assert (=> b!4362626 (= e!2715063 (contains!11223 lt!1574487 (tuple2!48407 (_1!27497 lt!1574080) (_2!27497 lt!1574080))))))

(assert (= (and d!1290882 res!1793846) b!4362625))

(assert (= (and b!4362625 res!1793847) b!4362626))

(assert (=> d!1290882 m!4981067))

(declare-fun m!4982403 () Bool)

(assert (=> d!1290882 m!4982403))

(declare-fun m!4982405 () Bool)

(assert (=> d!1290882 m!4982405))

(declare-fun m!4982407 () Bool)

(assert (=> b!4362625 m!4982407))

(declare-fun m!4982409 () Bool)

(assert (=> b!4362626 m!4982409))

(assert (=> d!1290510 d!1290882))

(declare-fun b!4362629 () Bool)

(declare-fun e!2715066 () List!49107)

(assert (=> b!4362629 (= e!2715066 (insertNoDuplicatedKeys!113 (t!356027 (toList!3002 lt!1574072)) (_1!27497 lt!1574080) (_2!27497 lt!1574080)))))

(declare-fun b!4362630 () Bool)

(assert (=> b!4362630 false))

(declare-fun lt!1575002 () Unit!72449)

(declare-fun lt!1575001 () Unit!72449)

(assert (=> b!4362630 (= lt!1575002 lt!1575001)))

(assert (=> b!4362630 (containsKey!737 (t!356027 (toList!3002 lt!1574072)) (_1!27497 (h!54546 (toList!3002 lt!1574072))))))

(assert (=> b!4362630 (= lt!1575001 (lemmaInGetKeysListThenContainsKey!136 (t!356027 (toList!3002 lt!1574072)) (_1!27497 (h!54546 (toList!3002 lt!1574072)))))))

(declare-fun lt!1575003 () Unit!72449)

(declare-fun lt!1575004 () Unit!72449)

(assert (=> b!4362630 (= lt!1575003 lt!1575004)))

(declare-fun call!303293 () List!49110)

(assert (=> b!4362630 (contains!11225 call!303293 (_1!27497 (h!54546 (toList!3002 lt!1574072))))))

(declare-fun lt!1574999 () List!49107)

(assert (=> b!4362630 (= lt!1575004 (lemmaInListThenGetKeysListContains!135 lt!1574999 (_1!27497 (h!54546 (toList!3002 lt!1574072)))))))

(assert (=> b!4362630 (= lt!1574999 (insertNoDuplicatedKeys!113 (t!356027 (toList!3002 lt!1574072)) (_1!27497 lt!1574080) (_2!27497 lt!1574080)))))

(declare-fun e!2715070 () Unit!72449)

(declare-fun Unit!72579 () Unit!72449)

(assert (=> b!4362630 (= e!2715070 Unit!72579)))

(declare-fun b!4362631 () Bool)

(declare-fun Unit!72580 () Unit!72449)

(assert (=> b!4362631 (= e!2715070 Unit!72580)))

(declare-fun b!4362632 () Bool)

(declare-fun e!2715068 () List!49107)

(declare-fun call!303296 () List!49107)

(assert (=> b!4362632 (= e!2715068 call!303296)))

(declare-fun lt!1575000 () List!49110)

(assert (=> b!4362632 (= lt!1575000 call!303293)))

(declare-fun lt!1574995 () Unit!72449)

(assert (=> b!4362632 (= lt!1574995 (lemmaSubseqRefl!76 lt!1575000))))

(assert (=> b!4362632 (subseq!592 lt!1575000 lt!1575000)))

(declare-fun lt!1574998 () Unit!72449)

(assert (=> b!4362632 (= lt!1574998 lt!1574995)))

(declare-fun d!1290886 () Bool)

(declare-fun e!2715067 () Bool)

(assert (=> d!1290886 e!2715067))

(declare-fun res!1793852 () Bool)

(assert (=> d!1290886 (=> (not res!1793852) (not e!2715067))))

(declare-fun lt!1574996 () List!49107)

(assert (=> d!1290886 (= res!1793852 (invariantList!690 lt!1574996))))

(assert (=> d!1290886 (= lt!1574996 e!2715068)))

(declare-fun c!741872 () Bool)

(assert (=> d!1290886 (= c!741872 (and ((_ is Cons!48983) (toList!3002 lt!1574072)) (= (_1!27497 (h!54546 (toList!3002 lt!1574072))) (_1!27497 lt!1574080))))))

(assert (=> d!1290886 (invariantList!690 (toList!3002 lt!1574072))))

(assert (=> d!1290886 (= (insertNoDuplicatedKeys!113 (toList!3002 lt!1574072) (_1!27497 lt!1574080) (_2!27497 lt!1574080)) lt!1574996)))

(declare-fun b!4362633 () Bool)

(declare-fun c!741875 () Bool)

(assert (=> b!4362633 (= c!741875 ((_ is Cons!48983) (toList!3002 lt!1574072)))))

(declare-fun e!2715071 () List!49107)

(declare-fun e!2715072 () List!49107)

(assert (=> b!4362633 (= e!2715071 e!2715072)))

(declare-fun bm!303288 () Bool)

(assert (=> bm!303288 (= call!303293 (getKeysList!138 (ite c!741872 (toList!3002 lt!1574072) lt!1574999)))))

(declare-fun b!4362634 () Bool)

(assert (=> b!4362634 (= e!2715067 (= (content!7751 (getKeysList!138 lt!1574996)) ((_ map or) (content!7751 (getKeysList!138 (toList!3002 lt!1574072))) (store ((as const (Array K!10340 Bool)) false) (_1!27497 lt!1574080) true))))))

(declare-fun bm!303289 () Bool)

(declare-fun call!303294 () List!49107)

(assert (=> bm!303289 (= call!303294 call!303296)))

(declare-fun b!4362635 () Bool)

(declare-fun res!1793850 () Bool)

(assert (=> b!4362635 (=> (not res!1793850) (not e!2715067))))

(assert (=> b!4362635 (= res!1793850 (contains!11223 lt!1574996 (tuple2!48407 (_1!27497 lt!1574080) (_2!27497 lt!1574080))))))

(declare-fun b!4362636 () Bool)

(assert (=> b!4362636 (= e!2715066 Nil!48983)))

(declare-fun bm!303290 () Bool)

(declare-fun call!303295 () List!49107)

(assert (=> bm!303290 (= call!303295 call!303294)))

(declare-fun c!741873 () Bool)

(assert (=> bm!303290 (= c!741873 c!741875)))

(declare-fun b!4362637 () Bool)

(assert (=> b!4362637 (= e!2715071 call!303294)))

(declare-fun b!4362638 () Bool)

(declare-fun res!1793851 () Bool)

(assert (=> b!4362638 (=> (not res!1793851) (not e!2715067))))

(assert (=> b!4362638 (= res!1793851 (containsKey!737 lt!1574996 (_1!27497 lt!1574080)))))

(declare-fun b!4362639 () Bool)

(declare-fun lt!1575005 () List!49107)

(assert (=> b!4362639 (= e!2715072 lt!1575005)))

(assert (=> b!4362639 (= lt!1575005 call!303295)))

(declare-fun c!741874 () Bool)

(assert (=> b!4362639 (= c!741874 (containsKey!737 (insertNoDuplicatedKeys!113 (t!356027 (toList!3002 lt!1574072)) (_1!27497 lt!1574080) (_2!27497 lt!1574080)) (_1!27497 (h!54546 (toList!3002 lt!1574072)))))))

(declare-fun lt!1574997 () Unit!72449)

(assert (=> b!4362639 (= lt!1574997 e!2715070)))

(declare-fun b!4362640 () Bool)

(declare-fun e!2715069 () Bool)

(assert (=> b!4362640 (= e!2715069 (not (containsKey!737 (toList!3002 lt!1574072) (_1!27497 lt!1574080))))))

(declare-fun b!4362641 () Bool)

(assert (=> b!4362641 (= e!2715072 call!303295)))

(declare-fun bm!303291 () Bool)

(declare-fun c!741871 () Bool)

(assert (=> bm!303291 (= call!303296 ($colon$colon!702 (ite c!741872 (t!356027 (toList!3002 lt!1574072)) (ite c!741871 (toList!3002 lt!1574072) e!2715066)) (ite (or c!741872 c!741871) (tuple2!48407 (_1!27497 lt!1574080) (_2!27497 lt!1574080)) (ite c!741875 (h!54546 (toList!3002 lt!1574072)) (tuple2!48407 (_1!27497 lt!1574080) (_2!27497 lt!1574080))))))))

(declare-fun b!4362642 () Bool)

(assert (=> b!4362642 (= e!2715068 e!2715071)))

(declare-fun res!1793853 () Bool)

(assert (=> b!4362642 (= res!1793853 ((_ is Cons!48983) (toList!3002 lt!1574072)))))

(assert (=> b!4362642 (=> (not res!1793853) (not e!2715069))))

(assert (=> b!4362642 (= c!741871 e!2715069)))

(assert (= (and d!1290886 c!741872) b!4362632))

(assert (= (and d!1290886 (not c!741872)) b!4362642))

(assert (= (and b!4362642 res!1793853) b!4362640))

(assert (= (and b!4362642 c!741871) b!4362637))

(assert (= (and b!4362642 (not c!741871)) b!4362633))

(assert (= (and b!4362633 c!741875) b!4362639))

(assert (= (and b!4362633 (not c!741875)) b!4362641))

(assert (= (and b!4362639 c!741874) b!4362630))

(assert (= (and b!4362639 (not c!741874)) b!4362631))

(assert (= (or b!4362639 b!4362641) bm!303290))

(assert (= (and bm!303290 c!741873) b!4362629))

(assert (= (and bm!303290 (not c!741873)) b!4362636))

(assert (= (or b!4362637 bm!303290) bm!303289))

(assert (= (or b!4362632 b!4362630) bm!303288))

(assert (= (or b!4362632 bm!303289) bm!303291))

(assert (= (and d!1290886 res!1793852) b!4362638))

(assert (= (and b!4362638 res!1793851) b!4362635))

(assert (= (and b!4362635 res!1793850) b!4362634))

(declare-fun m!4982415 () Bool)

(assert (=> b!4362630 m!4982415))

(declare-fun m!4982417 () Bool)

(assert (=> b!4362630 m!4982417))

(declare-fun m!4982419 () Bool)

(assert (=> b!4362630 m!4982419))

(declare-fun m!4982421 () Bool)

(assert (=> b!4362630 m!4982421))

(declare-fun m!4982423 () Bool)

(assert (=> b!4362630 m!4982423))

(assert (=> b!4362634 m!4981013))

(assert (=> b!4362634 m!4981013))

(declare-fun m!4982425 () Bool)

(assert (=> b!4362634 m!4982425))

(declare-fun m!4982427 () Bool)

(assert (=> b!4362634 m!4982427))

(declare-fun m!4982429 () Bool)

(assert (=> b!4362634 m!4982429))

(assert (=> b!4362634 m!4982427))

(assert (=> b!4362634 m!4982009))

(declare-fun m!4982431 () Bool)

(assert (=> b!4362632 m!4982431))

(declare-fun m!4982433 () Bool)

(assert (=> b!4362632 m!4982433))

(declare-fun m!4982435 () Bool)

(assert (=> b!4362638 m!4982435))

(declare-fun m!4982437 () Bool)

(assert (=> d!1290886 m!4982437))

(assert (=> d!1290886 m!4981641))

(assert (=> b!4362629 m!4982417))

(assert (=> b!4362639 m!4982417))

(assert (=> b!4362639 m!4982417))

(declare-fun m!4982439 () Bool)

(assert (=> b!4362639 m!4982439))

(declare-fun m!4982441 () Bool)

(assert (=> bm!303288 m!4982441))

(declare-fun m!4982443 () Bool)

(assert (=> b!4362640 m!4982443))

(declare-fun m!4982445 () Bool)

(assert (=> bm!303291 m!4982445))

(declare-fun m!4982447 () Bool)

(assert (=> b!4362635 m!4982447))

(assert (=> d!1290510 d!1290886))

(declare-fun d!1290892 () Bool)

(declare-fun res!1793856 () Bool)

(declare-fun e!2715075 () Bool)

(assert (=> d!1290892 (=> res!1793856 e!2715075)))

(assert (=> d!1290892 (= res!1793856 (not ((_ is Cons!48983) (_2!27498 (tuple2!48409 hash!377 newBucket!200)))))))

(assert (=> d!1290892 (= (noDuplicateKeys!509 (_2!27498 (tuple2!48409 hash!377 newBucket!200))) e!2715075)))

(declare-fun b!4362645 () Bool)

(declare-fun e!2715076 () Bool)

(assert (=> b!4362645 (= e!2715075 e!2715076)))

(declare-fun res!1793857 () Bool)

(assert (=> b!4362645 (=> (not res!1793857) (not e!2715076))))

(assert (=> b!4362645 (= res!1793857 (not (containsKey!734 (t!356027 (_2!27498 (tuple2!48409 hash!377 newBucket!200))) (_1!27497 (h!54546 (_2!27498 (tuple2!48409 hash!377 newBucket!200)))))))))

(declare-fun b!4362646 () Bool)

(assert (=> b!4362646 (= e!2715076 (noDuplicateKeys!509 (t!356027 (_2!27498 (tuple2!48409 hash!377 newBucket!200)))))))

(assert (= (and d!1290892 (not res!1793856)) b!4362645))

(assert (= (and b!4362645 res!1793857) b!4362646))

(declare-fun m!4982451 () Bool)

(assert (=> b!4362645 m!4982451))

(declare-fun m!4982455 () Bool)

(assert (=> b!4362646 m!4982455))

(assert (=> bs!634985 d!1290892))

(declare-fun bs!635480 () Bool)

(declare-fun b!4362648 () Bool)

(assert (= bs!635480 (and b!4362648 b!4362443)))

(declare-fun lambda!141821 () Int)

(assert (=> bs!635480 (= (= (toList!3002 lt!1574072) (toList!3002 lt!1574069)) (= lambda!141821 lambda!141795))))

(declare-fun bs!635483 () Bool)

(assert (= bs!635483 (and b!4362648 b!4362535)))

(assert (=> bs!635483 (= (= (toList!3002 lt!1574072) (t!356027 (toList!3002 lt!1574079))) (= lambda!141821 lambda!141809))))

(declare-fun bs!635485 () Bool)

(assert (= bs!635485 (and b!4362648 b!4362528)))

(assert (=> bs!635485 (= (= (toList!3002 lt!1574072) (Cons!48983 (h!54546 (toList!3002 lt!1574079)) (t!356027 (toList!3002 lt!1574079)))) (= lambda!141821 lambda!141810))))

(declare-fun bs!635487 () Bool)

(assert (= bs!635487 (and b!4362648 b!4362533)))

(assert (=> bs!635487 (= (= (toList!3002 lt!1574072) (toList!3002 lt!1574079)) (= lambda!141821 lambda!141811))))

(assert (=> b!4362648 true))

(declare-fun bs!635490 () Bool)

(declare-fun b!4362649 () Bool)

(assert (= bs!635490 (and b!4362649 b!4362444)))

(declare-fun lambda!141822 () Int)

(assert (=> bs!635490 (= lambda!141822 lambda!141796)))

(declare-fun bs!635492 () Bool)

(assert (= bs!635492 (and b!4362649 b!4362531)))

(assert (=> bs!635492 (= lambda!141822 lambda!141812)))

(declare-fun d!1290894 () Bool)

(declare-fun e!2715077 () Bool)

(assert (=> d!1290894 e!2715077))

(declare-fun res!1793859 () Bool)

(assert (=> d!1290894 (=> (not res!1793859) (not e!2715077))))

(declare-fun lt!1575007 () List!49110)

(assert (=> d!1290894 (= res!1793859 (noDuplicate!608 lt!1575007))))

(assert (=> d!1290894 (= lt!1575007 (getKeysList!138 (toList!3002 lt!1574072)))))

(assert (=> d!1290894 (= (keys!16560 lt!1574072) lt!1575007)))

(declare-fun b!4362647 () Bool)

(declare-fun res!1793860 () Bool)

(assert (=> b!4362647 (=> (not res!1793860) (not e!2715077))))

(assert (=> b!4362647 (= res!1793860 (= (length!72 lt!1575007) (length!73 (toList!3002 lt!1574072))))))

(declare-fun res!1793858 () Bool)

(assert (=> b!4362648 (=> (not res!1793858) (not e!2715077))))

(assert (=> b!4362648 (= res!1793858 (forall!9160 lt!1575007 lambda!141821))))

(assert (=> b!4362649 (= e!2715077 (= (content!7751 lt!1575007) (content!7751 (map!10659 (toList!3002 lt!1574072) lambda!141822))))))

(assert (= (and d!1290894 res!1793859) b!4362647))

(assert (= (and b!4362647 res!1793860) b!4362648))

(assert (= (and b!4362648 res!1793858) b!4362649))

(declare-fun m!4982459 () Bool)

(assert (=> d!1290894 m!4982459))

(assert (=> d!1290894 m!4981013))

(declare-fun m!4982461 () Bool)

(assert (=> b!4362647 m!4982461))

(declare-fun m!4982463 () Bool)

(assert (=> b!4362647 m!4982463))

(declare-fun m!4982465 () Bool)

(assert (=> b!4362648 m!4982465))

(declare-fun m!4982467 () Bool)

(assert (=> b!4362649 m!4982467))

(declare-fun m!4982469 () Bool)

(assert (=> b!4362649 m!4982469))

(assert (=> b!4362649 m!4982469))

(declare-fun m!4982471 () Bool)

(assert (=> b!4362649 m!4982471))

(assert (=> b!4361830 d!1290894))

(declare-fun d!1290898 () Bool)

(declare-fun e!2715079 () Bool)

(assert (=> d!1290898 e!2715079))

(declare-fun res!1793861 () Bool)

(assert (=> d!1290898 (=> res!1793861 e!2715079)))

(declare-fun lt!1575010 () Bool)

(assert (=> d!1290898 (= res!1793861 (not lt!1575010))))

(declare-fun lt!1575009 () Bool)

(assert (=> d!1290898 (= lt!1575010 lt!1575009)))

(declare-fun lt!1575011 () Unit!72449)

(declare-fun e!2715078 () Unit!72449)

(assert (=> d!1290898 (= lt!1575011 e!2715078)))

(declare-fun c!741876 () Bool)

(assert (=> d!1290898 (= c!741876 lt!1575009)))

(assert (=> d!1290898 (= lt!1575009 (containsKey!738 (toList!3001 lt!1574460) (_1!27498 lt!1574085)))))

(assert (=> d!1290898 (= (contains!11219 lt!1574460 (_1!27498 lt!1574085)) lt!1575010)))

(declare-fun b!4362650 () Bool)

(declare-fun lt!1575012 () Unit!72449)

(assert (=> b!4362650 (= e!2715078 lt!1575012)))

(assert (=> b!4362650 (= lt!1575012 (lemmaContainsKeyImpliesGetValueByKeyDefined!390 (toList!3001 lt!1574460) (_1!27498 lt!1574085)))))

(assert (=> b!4362650 (isDefined!7787 (getValueByKey!478 (toList!3001 lt!1574460) (_1!27498 lt!1574085)))))

(declare-fun b!4362651 () Bool)

(declare-fun Unit!72583 () Unit!72449)

(assert (=> b!4362651 (= e!2715078 Unit!72583)))

(declare-fun b!4362652 () Bool)

(assert (=> b!4362652 (= e!2715079 (isDefined!7787 (getValueByKey!478 (toList!3001 lt!1574460) (_1!27498 lt!1574085))))))

(assert (= (and d!1290898 c!741876) b!4362650))

(assert (= (and d!1290898 (not c!741876)) b!4362651))

(assert (= (and d!1290898 (not res!1793861)) b!4362652))

(declare-fun m!4982473 () Bool)

(assert (=> d!1290898 m!4982473))

(declare-fun m!4982475 () Bool)

(assert (=> b!4362650 m!4982475))

(assert (=> b!4362650 m!4980995))

(assert (=> b!4362650 m!4980995))

(declare-fun m!4982477 () Bool)

(assert (=> b!4362650 m!4982477))

(assert (=> b!4362652 m!4980995))

(assert (=> b!4362652 m!4980995))

(assert (=> b!4362652 m!4982477))

(assert (=> d!1290484 d!1290898))

(declare-fun b!4362655 () Bool)

(declare-fun e!2715081 () Option!10492)

(assert (=> b!4362655 (= e!2715081 (getValueByKey!478 (t!356028 lt!1574459) (_1!27498 lt!1574085)))))

(declare-fun d!1290900 () Bool)

(declare-fun c!741877 () Bool)

(assert (=> d!1290900 (= c!741877 (and ((_ is Cons!48984) lt!1574459) (= (_1!27498 (h!54547 lt!1574459)) (_1!27498 lt!1574085))))))

(declare-fun e!2715080 () Option!10492)

(assert (=> d!1290900 (= (getValueByKey!478 lt!1574459 (_1!27498 lt!1574085)) e!2715080)))

(declare-fun b!4362654 () Bool)

(assert (=> b!4362654 (= e!2715080 e!2715081)))

(declare-fun c!741878 () Bool)

(assert (=> b!4362654 (= c!741878 (and ((_ is Cons!48984) lt!1574459) (not (= (_1!27498 (h!54547 lt!1574459)) (_1!27498 lt!1574085)))))))

(declare-fun b!4362653 () Bool)

(assert (=> b!4362653 (= e!2715080 (Some!10491 (_2!27498 (h!54547 lt!1574459))))))

(declare-fun b!4362656 () Bool)

(assert (=> b!4362656 (= e!2715081 None!10491)))

(assert (= (and d!1290900 c!741877) b!4362653))

(assert (= (and d!1290900 (not c!741877)) b!4362654))

(assert (= (and b!4362654 c!741878) b!4362655))

(assert (= (and b!4362654 (not c!741878)) b!4362656))

(declare-fun m!4982479 () Bool)

(assert (=> b!4362655 m!4982479))

(assert (=> d!1290484 d!1290900))

(declare-fun d!1290902 () Bool)

(assert (=> d!1290902 (= (getValueByKey!478 lt!1574459 (_1!27498 lt!1574085)) (Some!10491 (_2!27498 lt!1574085)))))

(declare-fun lt!1575013 () Unit!72449)

(assert (=> d!1290902 (= lt!1575013 (choose!27056 lt!1574459 (_1!27498 lt!1574085) (_2!27498 lt!1574085)))))

(declare-fun e!2715082 () Bool)

(assert (=> d!1290902 e!2715082))

(declare-fun res!1793862 () Bool)

(assert (=> d!1290902 (=> (not res!1793862) (not e!2715082))))

(assert (=> d!1290902 (= res!1793862 (isStrictlySorted!116 lt!1574459))))

(assert (=> d!1290902 (= (lemmaContainsTupThenGetReturnValue!251 lt!1574459 (_1!27498 lt!1574085) (_2!27498 lt!1574085)) lt!1575013)))

(declare-fun b!4362657 () Bool)

(declare-fun res!1793863 () Bool)

(assert (=> b!4362657 (=> (not res!1793863) (not e!2715082))))

(assert (=> b!4362657 (= res!1793863 (containsKey!738 lt!1574459 (_1!27498 lt!1574085)))))

(declare-fun b!4362658 () Bool)

(assert (=> b!4362658 (= e!2715082 (contains!11220 lt!1574459 (tuple2!48409 (_1!27498 lt!1574085) (_2!27498 lt!1574085))))))

(assert (= (and d!1290902 res!1793862) b!4362657))

(assert (= (and b!4362657 res!1793863) b!4362658))

(assert (=> d!1290902 m!4980989))

(declare-fun m!4982481 () Bool)

(assert (=> d!1290902 m!4982481))

(declare-fun m!4982483 () Bool)

(assert (=> d!1290902 m!4982483))

(declare-fun m!4982485 () Bool)

(assert (=> b!4362657 m!4982485))

(declare-fun m!4982487 () Bool)

(assert (=> b!4362658 m!4982487))

(assert (=> d!1290484 d!1290902))

(declare-fun b!4362659 () Bool)

(declare-fun e!2715083 () List!49108)

(declare-fun call!303299 () List!49108)

(assert (=> b!4362659 (= e!2715083 call!303299)))

(declare-fun b!4362660 () Bool)

(declare-fun e!2715084 () List!49108)

(declare-fun call!303298 () List!49108)

(assert (=> b!4362660 (= e!2715084 call!303298)))

(declare-fun bm!303292 () Bool)

(declare-fun call!303297 () List!49108)

(assert (=> bm!303292 (= call!303298 call!303297)))

(declare-fun b!4362661 () Bool)

(declare-fun e!2715086 () List!49108)

(assert (=> b!4362661 (= e!2715086 call!303297)))

(declare-fun b!4362662 () Bool)

(declare-fun e!2715087 () List!49108)

(assert (=> b!4362662 (= e!2715087 (insertStrictlySorted!147 (t!356028 (toList!3001 lm!1707)) (_1!27498 lt!1574085) (_2!27498 lt!1574085)))))

(declare-fun b!4362663 () Bool)

(assert (=> b!4362663 (= e!2715083 call!303299)))

(declare-fun b!4362664 () Bool)

(declare-fun e!2715085 () Bool)

(declare-fun lt!1575014 () List!49108)

(assert (=> b!4362664 (= e!2715085 (contains!11220 lt!1575014 (tuple2!48409 (_1!27498 lt!1574085) (_2!27498 lt!1574085))))))

(declare-fun b!4362665 () Bool)

(assert (=> b!4362665 (= e!2715086 e!2715084)))

(declare-fun c!741879 () Bool)

(assert (=> b!4362665 (= c!741879 (and ((_ is Cons!48984) (toList!3001 lm!1707)) (= (_1!27498 (h!54547 (toList!3001 lm!1707))) (_1!27498 lt!1574085))))))

(declare-fun bm!303293 () Bool)

(assert (=> bm!303293 (= call!303299 call!303298)))

(declare-fun d!1290904 () Bool)

(assert (=> d!1290904 e!2715085))

(declare-fun res!1793864 () Bool)

(assert (=> d!1290904 (=> (not res!1793864) (not e!2715085))))

(assert (=> d!1290904 (= res!1793864 (isStrictlySorted!116 lt!1575014))))

(assert (=> d!1290904 (= lt!1575014 e!2715086)))

(declare-fun c!741882 () Bool)

(assert (=> d!1290904 (= c!741882 (and ((_ is Cons!48984) (toList!3001 lm!1707)) (bvslt (_1!27498 (h!54547 (toList!3001 lm!1707))) (_1!27498 lt!1574085))))))

(assert (=> d!1290904 (isStrictlySorted!116 (toList!3001 lm!1707))))

(assert (=> d!1290904 (= (insertStrictlySorted!147 (toList!3001 lm!1707) (_1!27498 lt!1574085) (_2!27498 lt!1574085)) lt!1575014)))

(declare-fun b!4362666 () Bool)

(declare-fun c!741880 () Bool)

(assert (=> b!4362666 (= e!2715087 (ite c!741879 (t!356028 (toList!3001 lm!1707)) (ite c!741880 (Cons!48984 (h!54547 (toList!3001 lm!1707)) (t!356028 (toList!3001 lm!1707))) Nil!48984)))))

(declare-fun bm!303294 () Bool)

(assert (=> bm!303294 (= call!303297 ($colon$colon!703 e!2715087 (ite c!741882 (h!54547 (toList!3001 lm!1707)) (tuple2!48409 (_1!27498 lt!1574085) (_2!27498 lt!1574085)))))))

(declare-fun c!741881 () Bool)

(assert (=> bm!303294 (= c!741881 c!741882)))

(declare-fun b!4362667 () Bool)

(assert (=> b!4362667 (= c!741880 (and ((_ is Cons!48984) (toList!3001 lm!1707)) (bvsgt (_1!27498 (h!54547 (toList!3001 lm!1707))) (_1!27498 lt!1574085))))))

(assert (=> b!4362667 (= e!2715084 e!2715083)))

(declare-fun b!4362668 () Bool)

(declare-fun res!1793865 () Bool)

(assert (=> b!4362668 (=> (not res!1793865) (not e!2715085))))

(assert (=> b!4362668 (= res!1793865 (containsKey!738 lt!1575014 (_1!27498 lt!1574085)))))

(assert (= (and d!1290904 c!741882) b!4362661))

(assert (= (and d!1290904 (not c!741882)) b!4362665))

(assert (= (and b!4362665 c!741879) b!4362660))

(assert (= (and b!4362665 (not c!741879)) b!4362667))

(assert (= (and b!4362667 c!741880) b!4362659))

(assert (= (and b!4362667 (not c!741880)) b!4362663))

(assert (= (or b!4362659 b!4362663) bm!303293))

(assert (= (or b!4362660 bm!303293) bm!303292))

(assert (= (or b!4362661 bm!303292) bm!303294))

(assert (= (and bm!303294 c!741881) b!4362662))

(assert (= (and bm!303294 (not c!741881)) b!4362666))

(assert (= (and d!1290904 res!1793864) b!4362668))

(assert (= (and b!4362668 res!1793865) b!4362664))

(declare-fun m!4982495 () Bool)

(assert (=> d!1290904 m!4982495))

(assert (=> d!1290904 m!4980441))

(declare-fun m!4982497 () Bool)

(assert (=> b!4362662 m!4982497))

(declare-fun m!4982499 () Bool)

(assert (=> b!4362664 m!4982499))

(declare-fun m!4982501 () Bool)

(assert (=> b!4362668 m!4982501))

(declare-fun m!4982505 () Bool)

(assert (=> bm!303294 m!4982505))

(assert (=> d!1290484 d!1290904))

(declare-fun d!1290910 () Bool)

(declare-fun e!2715090 () Bool)

(assert (=> d!1290910 e!2715090))

(declare-fun res!1793869 () Bool)

(assert (=> d!1290910 (=> (not res!1793869) (not e!2715090))))

(declare-fun lt!1575020 () ListMap!2245)

(assert (=> d!1290910 (= res!1793869 (contains!11221 lt!1575020 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun lt!1575018 () List!49107)

(assert (=> d!1290910 (= lt!1575020 (ListMap!2246 lt!1575018))))

(declare-fun lt!1575017 () Unit!72449)

(declare-fun lt!1575019 () Unit!72449)

(assert (=> d!1290910 (= lt!1575017 lt!1575019)))

(assert (=> d!1290910 (= (getValueByKey!479 lt!1575018 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (Some!10492 (_2!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> d!1290910 (= lt!1575019 (lemmaContainsTupThenGetReturnValue!252 lt!1575018 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (_2!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> d!1290910 (= lt!1575018 (insertNoDuplicatedKeys!113 (toList!3002 lt!1574071) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (_2!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> d!1290910 (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1575020)))

(declare-fun b!4362671 () Bool)

(declare-fun res!1793868 () Bool)

(assert (=> b!4362671 (=> (not res!1793868) (not e!2715090))))

(assert (=> b!4362671 (= res!1793868 (= (getValueByKey!479 (toList!3002 lt!1575020) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (Some!10492 (_2!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))))

(declare-fun b!4362672 () Bool)

(assert (=> b!4362672 (= e!2715090 (contains!11223 (toList!3002 lt!1575020) (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (= (and d!1290910 res!1793869) b!4362671))

(assert (= (and b!4362671 res!1793868) b!4362672))

(declare-fun m!4982511 () Bool)

(assert (=> d!1290910 m!4982511))

(declare-fun m!4982513 () Bool)

(assert (=> d!1290910 m!4982513))

(declare-fun m!4982515 () Bool)

(assert (=> d!1290910 m!4982515))

(declare-fun m!4982517 () Bool)

(assert (=> d!1290910 m!4982517))

(declare-fun m!4982519 () Bool)

(assert (=> b!4362671 m!4982519))

(declare-fun m!4982521 () Bool)

(assert (=> b!4362672 m!4982521))

(assert (=> b!4361802 d!1290910))

(declare-fun bs!635516 () Bool)

(declare-fun b!4362676 () Bool)

(assert (= bs!635516 (and b!4362676 b!4361789)))

(declare-fun lambda!141823 () Int)

(assert (=> bs!635516 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574405) (= lambda!141823 lambda!141720))))

(declare-fun bs!635517 () Bool)

(assert (= bs!635517 (and b!4362676 b!4361802)))

(assert (=> bs!635517 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574071) (= lambda!141823 lambda!141723))))

(assert (=> bs!635516 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574079) (= lambda!141823 lambda!141719))))

(declare-fun bs!635518 () Bool)

(assert (= bs!635518 (and b!4362676 d!1290518)))

(assert (=> bs!635518 (not (= lambda!141823 lambda!141737))))

(declare-fun bs!635519 () Bool)

(assert (= bs!635519 (and b!4362676 b!4362144)))

(assert (=> bs!635519 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141823 lambda!141760))))

(declare-fun bs!635520 () Bool)

(assert (= bs!635520 (and b!4362676 d!1290468)))

(assert (=> bs!635520 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574438) (= lambda!141823 lambda!141725))))

(assert (=> bs!635517 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574426) (= lambda!141823 lambda!141724))))

(declare-fun bs!635521 () Bool)

(assert (= bs!635521 (and b!4362676 d!1290408)))

(assert (=> bs!635521 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574417) (= lambda!141823 lambda!141721))))

(declare-fun bs!635522 () Bool)

(assert (= bs!635522 (and b!4362676 d!1290638)))

(assert (=> bs!635522 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574661) (= lambda!141823 lambda!141763))))

(declare-fun bs!635523 () Bool)

(assert (= bs!635523 (and b!4362676 b!4361792)))

(assert (=> bs!635523 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574079) (= lambda!141823 lambda!141718))))

(declare-fun bs!635524 () Bool)

(assert (= bs!635524 (and b!4362676 b!4362141)))

(assert (=> bs!635524 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574649) (= lambda!141823 lambda!141762))))

(declare-fun bs!635525 () Bool)

(assert (= bs!635525 (and b!4362676 b!4361805)))

(assert (=> bs!635525 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574071) (= lambda!141823 lambda!141722))))

(assert (=> bs!635524 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141823 lambda!141761))))

(assert (=> b!4362676 true))

(declare-fun bs!635526 () Bool)

(declare-fun b!4362673 () Bool)

(assert (= bs!635526 (and b!4362673 b!4361789)))

(declare-fun lambda!141824 () Int)

(assert (=> bs!635526 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574405) (= lambda!141824 lambda!141720))))

(declare-fun bs!635527 () Bool)

(assert (= bs!635527 (and b!4362673 b!4361802)))

(assert (=> bs!635527 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574071) (= lambda!141824 lambda!141723))))

(assert (=> bs!635526 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574079) (= lambda!141824 lambda!141719))))

(declare-fun bs!635529 () Bool)

(assert (= bs!635529 (and b!4362673 d!1290518)))

(assert (=> bs!635529 (not (= lambda!141824 lambda!141737))))

(declare-fun bs!635530 () Bool)

(assert (= bs!635530 (and b!4362673 b!4362144)))

(assert (=> bs!635530 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141824 lambda!141760))))

(declare-fun bs!635531 () Bool)

(assert (= bs!635531 (and b!4362673 d!1290468)))

(assert (=> bs!635531 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574438) (= lambda!141824 lambda!141725))))

(assert (=> bs!635527 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574426) (= lambda!141824 lambda!141724))))

(declare-fun bs!635532 () Bool)

(assert (= bs!635532 (and b!4362673 d!1290638)))

(assert (=> bs!635532 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574661) (= lambda!141824 lambda!141763))))

(declare-fun bs!635533 () Bool)

(assert (= bs!635533 (and b!4362673 b!4361792)))

(assert (=> bs!635533 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574079) (= lambda!141824 lambda!141718))))

(declare-fun bs!635534 () Bool)

(assert (= bs!635534 (and b!4362673 b!4362141)))

(assert (=> bs!635534 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574649) (= lambda!141824 lambda!141762))))

(declare-fun bs!635535 () Bool)

(assert (= bs!635535 (and b!4362673 b!4362676)))

(assert (=> bs!635535 (= lambda!141824 lambda!141823)))

(declare-fun bs!635536 () Bool)

(assert (= bs!635536 (and b!4362673 d!1290408)))

(assert (=> bs!635536 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574417) (= lambda!141824 lambda!141721))))

(declare-fun bs!635538 () Bool)

(assert (= bs!635538 (and b!4362673 b!4361805)))

(assert (=> bs!635538 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574071) (= lambda!141824 lambda!141722))))

(assert (=> bs!635534 (= (= (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141824 lambda!141761))))

(assert (=> b!4362673 true))

(declare-fun lt!1575022 () ListMap!2245)

(declare-fun lambda!141826 () Int)

(assert (=> bs!635526 (= (= lt!1575022 lt!1574405) (= lambda!141826 lambda!141720))))

(assert (=> bs!635527 (= (= lt!1575022 lt!1574071) (= lambda!141826 lambda!141723))))

(assert (=> bs!635526 (= (= lt!1575022 lt!1574079) (= lambda!141826 lambda!141719))))

(assert (=> bs!635529 (not (= lambda!141826 lambda!141737))))

(assert (=> bs!635530 (= (= lt!1575022 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141826 lambda!141760))))

(assert (=> bs!635531 (= (= lt!1575022 lt!1574438) (= lambda!141826 lambda!141725))))

(assert (=> bs!635527 (= (= lt!1575022 lt!1574426) (= lambda!141826 lambda!141724))))

(assert (=> bs!635532 (= (= lt!1575022 lt!1574661) (= lambda!141826 lambda!141763))))

(assert (=> b!4362673 (= (= lt!1575022 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141826 lambda!141824))))

(assert (=> bs!635533 (= (= lt!1575022 lt!1574079) (= lambda!141826 lambda!141718))))

(assert (=> bs!635534 (= (= lt!1575022 lt!1574649) (= lambda!141826 lambda!141762))))

(assert (=> bs!635535 (= (= lt!1575022 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141826 lambda!141823))))

(assert (=> bs!635536 (= (= lt!1575022 lt!1574417) (= lambda!141826 lambda!141721))))

(assert (=> bs!635538 (= (= lt!1575022 lt!1574071) (= lambda!141826 lambda!141722))))

(assert (=> bs!635534 (= (= lt!1575022 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141826 lambda!141761))))

(assert (=> b!4362673 true))

(declare-fun bs!635563 () Bool)

(declare-fun d!1290916 () Bool)

(assert (= bs!635563 (and d!1290916 b!4361789)))

(declare-fun lambda!141830 () Int)

(declare-fun lt!1575034 () ListMap!2245)

(assert (=> bs!635563 (= (= lt!1575034 lt!1574405) (= lambda!141830 lambda!141720))))

(declare-fun bs!635564 () Bool)

(assert (= bs!635564 (and d!1290916 b!4362673)))

(assert (=> bs!635564 (= (= lt!1575034 lt!1575022) (= lambda!141830 lambda!141826))))

(declare-fun bs!635565 () Bool)

(assert (= bs!635565 (and d!1290916 b!4361802)))

(assert (=> bs!635565 (= (= lt!1575034 lt!1574071) (= lambda!141830 lambda!141723))))

(assert (=> bs!635563 (= (= lt!1575034 lt!1574079) (= lambda!141830 lambda!141719))))

(declare-fun bs!635566 () Bool)

(assert (= bs!635566 (and d!1290916 d!1290518)))

(assert (=> bs!635566 (not (= lambda!141830 lambda!141737))))

(declare-fun bs!635567 () Bool)

(assert (= bs!635567 (and d!1290916 b!4362144)))

(assert (=> bs!635567 (= (= lt!1575034 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141830 lambda!141760))))

(declare-fun bs!635568 () Bool)

(assert (= bs!635568 (and d!1290916 d!1290468)))

(assert (=> bs!635568 (= (= lt!1575034 lt!1574438) (= lambda!141830 lambda!141725))))

(assert (=> bs!635565 (= (= lt!1575034 lt!1574426) (= lambda!141830 lambda!141724))))

(declare-fun bs!635569 () Bool)

(assert (= bs!635569 (and d!1290916 d!1290638)))

(assert (=> bs!635569 (= (= lt!1575034 lt!1574661) (= lambda!141830 lambda!141763))))

(assert (=> bs!635564 (= (= lt!1575034 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141830 lambda!141824))))

(declare-fun bs!635570 () Bool)

(assert (= bs!635570 (and d!1290916 b!4361792)))

(assert (=> bs!635570 (= (= lt!1575034 lt!1574079) (= lambda!141830 lambda!141718))))

(declare-fun bs!635571 () Bool)

(assert (= bs!635571 (and d!1290916 b!4362141)))

(assert (=> bs!635571 (= (= lt!1575034 lt!1574649) (= lambda!141830 lambda!141762))))

(declare-fun bs!635572 () Bool)

(assert (= bs!635572 (and d!1290916 b!4362676)))

(assert (=> bs!635572 (= (= lt!1575034 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141830 lambda!141823))))

(declare-fun bs!635573 () Bool)

(assert (= bs!635573 (and d!1290916 d!1290408)))

(assert (=> bs!635573 (= (= lt!1575034 lt!1574417) (= lambda!141830 lambda!141721))))

(declare-fun bs!635575 () Bool)

(assert (= bs!635575 (and d!1290916 b!4361805)))

(assert (=> bs!635575 (= (= lt!1575034 lt!1574071) (= lambda!141830 lambda!141722))))

(assert (=> bs!635571 (= (= lt!1575034 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141830 lambda!141761))))

(assert (=> d!1290916 true))

(declare-fun e!2715092 () Bool)

(assert (=> d!1290916 e!2715092))

(declare-fun res!1793871 () Bool)

(assert (=> d!1290916 (=> (not res!1793871) (not e!2715092))))

(assert (=> d!1290916 (= res!1793871 (forall!9158 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) lambda!141830))))

(declare-fun e!2715093 () ListMap!2245)

(assert (=> d!1290916 (= lt!1575034 e!2715093)))

(declare-fun c!741883 () Bool)

(assert (=> d!1290916 (= c!741883 ((_ is Nil!48983) (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (=> d!1290916 (noDuplicateKeys!509 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))

(assert (=> d!1290916 (= (addToMapMapFromBucket!205 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) lt!1575034)))

(assert (=> b!4362673 (= e!2715093 lt!1575022)))

(declare-fun lt!1575025 () ListMap!2245)

(assert (=> b!4362673 (= lt!1575025 (+!676 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (h!54546 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> b!4362673 (= lt!1575022 (addToMapMapFromBucket!205 (t!356027 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (+!676 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (h!54546 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))))

(declare-fun lt!1575027 () Unit!72449)

(declare-fun call!303300 () Unit!72449)

(assert (=> b!4362673 (= lt!1575027 call!303300)))

(declare-fun call!303301 () Bool)

(assert (=> b!4362673 call!303301))

(declare-fun lt!1575035 () Unit!72449)

(assert (=> b!4362673 (= lt!1575035 lt!1575027)))

(declare-fun call!303302 () Bool)

(assert (=> b!4362673 call!303302))

(declare-fun lt!1575026 () Unit!72449)

(declare-fun Unit!72588 () Unit!72449)

(assert (=> b!4362673 (= lt!1575026 Unit!72588)))

(assert (=> b!4362673 (forall!9158 (t!356027 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lambda!141826)))

(declare-fun lt!1575032 () Unit!72449)

(declare-fun Unit!72589 () Unit!72449)

(assert (=> b!4362673 (= lt!1575032 Unit!72589)))

(declare-fun lt!1575023 () Unit!72449)

(declare-fun Unit!72590 () Unit!72449)

(assert (=> b!4362673 (= lt!1575023 Unit!72590)))

(declare-fun lt!1575021 () Unit!72449)

(assert (=> b!4362673 (= lt!1575021 (forallContained!1799 (toList!3002 lt!1575025) lambda!141826 (h!54546 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> b!4362673 (contains!11221 lt!1575025 (_1!27497 (h!54546 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun lt!1575038 () Unit!72449)

(declare-fun Unit!72591 () Unit!72449)

(assert (=> b!4362673 (= lt!1575038 Unit!72591)))

(assert (=> b!4362673 (contains!11221 lt!1575022 (_1!27497 (h!54546 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun lt!1575041 () Unit!72449)

(declare-fun Unit!72592 () Unit!72449)

(assert (=> b!4362673 (= lt!1575041 Unit!72592)))

(assert (=> b!4362673 (forall!9158 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) lambda!141826)))

(declare-fun lt!1575037 () Unit!72449)

(declare-fun Unit!72593 () Unit!72449)

(assert (=> b!4362673 (= lt!1575037 Unit!72593)))

(assert (=> b!4362673 (forall!9158 (toList!3002 lt!1575025) lambda!141826)))

(declare-fun lt!1575036 () Unit!72449)

(declare-fun Unit!72594 () Unit!72449)

(assert (=> b!4362673 (= lt!1575036 Unit!72594)))

(declare-fun lt!1575039 () Unit!72449)

(declare-fun Unit!72595 () Unit!72449)

(assert (=> b!4362673 (= lt!1575039 Unit!72595)))

(declare-fun lt!1575030 () Unit!72449)

(assert (=> b!4362673 (= lt!1575030 (addForallContainsKeyThenBeforeAdding!73 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1575022 (_1!27497 (h!54546 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (_2!27497 (h!54546 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))))

(assert (=> b!4362673 (forall!9158 (toList!3002 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) lambda!141826)))

(declare-fun lt!1575024 () Unit!72449)

(assert (=> b!4362673 (= lt!1575024 lt!1575030)))

(assert (=> b!4362673 (forall!9158 (toList!3002 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) lambda!141826)))

(declare-fun lt!1575031 () Unit!72449)

(declare-fun Unit!72596 () Unit!72449)

(assert (=> b!4362673 (= lt!1575031 Unit!72596)))

(declare-fun res!1793872 () Bool)

(assert (=> b!4362673 (= res!1793872 (forall!9158 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) lambda!141826))))

(declare-fun e!2715091 () Bool)

(assert (=> b!4362673 (=> (not res!1793872) (not e!2715091))))

(assert (=> b!4362673 e!2715091))

(declare-fun lt!1575033 () Unit!72449)

(declare-fun Unit!72597 () Unit!72449)

(assert (=> b!4362673 (= lt!1575033 Unit!72597)))

(declare-fun b!4362674 () Bool)

(assert (=> b!4362674 (= e!2715091 (forall!9158 (toList!3002 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) lambda!141826))))

(declare-fun b!4362675 () Bool)

(assert (=> b!4362675 (= e!2715092 (invariantList!690 (toList!3002 lt!1575034)))))

(declare-fun bm!303295 () Bool)

(assert (=> bm!303295 (= call!303302 (forall!9158 (ite c!741883 (toList!3002 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (toList!3002 lt!1575025)) (ite c!741883 lambda!141823 lambda!141826)))))

(assert (=> b!4362676 (= e!2715093 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(declare-fun lt!1575028 () Unit!72449)

(assert (=> b!4362676 (= lt!1575028 call!303300)))

(assert (=> b!4362676 call!303301))

(declare-fun lt!1575040 () Unit!72449)

(assert (=> b!4362676 (= lt!1575040 lt!1575028)))

(assert (=> b!4362676 call!303302))

(declare-fun lt!1575029 () Unit!72449)

(declare-fun Unit!72598 () Unit!72449)

(assert (=> b!4362676 (= lt!1575029 Unit!72598)))

(declare-fun bm!303296 () Bool)

(assert (=> bm!303296 (= call!303301 (forall!9158 (toList!3002 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (ite c!741883 lambda!141823 lambda!141824)))))

(declare-fun bm!303297 () Bool)

(assert (=> bm!303297 (= call!303300 (lemmaContainsAllItsOwnKeys!73 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun b!4362677 () Bool)

(declare-fun res!1793870 () Bool)

(assert (=> b!4362677 (=> (not res!1793870) (not e!2715092))))

(assert (=> b!4362677 (= res!1793870 (forall!9158 (toList!3002 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) lambda!141830))))

(assert (= (and d!1290916 c!741883) b!4362676))

(assert (= (and d!1290916 (not c!741883)) b!4362673))

(assert (= (and b!4362673 res!1793872) b!4362674))

(assert (= (or b!4362676 b!4362673) bm!303297))

(assert (= (or b!4362676 b!4362673) bm!303296))

(assert (= (or b!4362676 b!4362673) bm!303295))

(assert (= (and d!1290916 res!1793871) b!4362677))

(assert (= (and b!4362677 res!1793870) b!4362675))

(declare-fun m!4982573 () Bool)

(assert (=> b!4362675 m!4982573))

(declare-fun m!4982575 () Bool)

(assert (=> d!1290916 m!4982575))

(assert (=> d!1290916 m!4981775))

(assert (=> b!4362673 m!4980923))

(declare-fun m!4982577 () Bool)

(assert (=> b!4362673 m!4982577))

(declare-fun m!4982579 () Bool)

(assert (=> b!4362673 m!4982579))

(declare-fun m!4982581 () Bool)

(assert (=> b!4362673 m!4982581))

(declare-fun m!4982583 () Bool)

(assert (=> b!4362673 m!4982583))

(declare-fun m!4982585 () Bool)

(assert (=> b!4362673 m!4982585))

(declare-fun m!4982587 () Bool)

(assert (=> b!4362673 m!4982587))

(assert (=> b!4362673 m!4982579))

(declare-fun m!4982589 () Bool)

(assert (=> b!4362673 m!4982589))

(declare-fun m!4982591 () Bool)

(assert (=> b!4362673 m!4982591))

(assert (=> b!4362673 m!4980923))

(assert (=> b!4362673 m!4982589))

(declare-fun m!4982593 () Bool)

(assert (=> b!4362673 m!4982593))

(assert (=> b!4362673 m!4982593))

(declare-fun m!4982595 () Bool)

(assert (=> b!4362673 m!4982595))

(declare-fun m!4982597 () Bool)

(assert (=> b!4362677 m!4982597))

(assert (=> bm!303297 m!4980923))

(declare-fun m!4982599 () Bool)

(assert (=> bm!303297 m!4982599))

(declare-fun m!4982601 () Bool)

(assert (=> bm!303296 m!4982601))

(declare-fun m!4982603 () Bool)

(assert (=> bm!303295 m!4982603))

(assert (=> b!4362674 m!4982579))

(assert (=> b!4361802 d!1290916))

(declare-fun d!1290936 () Bool)

(declare-fun res!1793887 () Bool)

(declare-fun e!2715112 () Bool)

(assert (=> d!1290936 (=> res!1793887 e!2715112)))

(assert (=> d!1290936 (= res!1793887 ((_ is Nil!48983) (toList!3002 lt!1574071)))))

(assert (=> d!1290936 (= (forall!9158 (toList!3002 lt!1574071) lambda!141724) e!2715112)))

(declare-fun b!4362706 () Bool)

(declare-fun e!2715113 () Bool)

(assert (=> b!4362706 (= e!2715112 e!2715113)))

(declare-fun res!1793888 () Bool)

(assert (=> b!4362706 (=> (not res!1793888) (not e!2715113))))

(assert (=> b!4362706 (= res!1793888 (dynLambda!20653 lambda!141724 (h!54546 (toList!3002 lt!1574071))))))

(declare-fun b!4362707 () Bool)

(assert (=> b!4362707 (= e!2715113 (forall!9158 (t!356027 (toList!3002 lt!1574071)) lambda!141724))))

(assert (= (and d!1290936 (not res!1793887)) b!4362706))

(assert (= (and b!4362706 res!1793888) b!4362707))

(declare-fun b_lambda!131961 () Bool)

(assert (=> (not b_lambda!131961) (not b!4362706)))

(declare-fun m!4982605 () Bool)

(assert (=> b!4362706 m!4982605))

(declare-fun m!4982607 () Bool)

(assert (=> b!4362707 m!4982607))

(assert (=> b!4361802 d!1290936))

(declare-fun d!1290938 () Bool)

(declare-fun res!1793889 () Bool)

(declare-fun e!2715114 () Bool)

(assert (=> d!1290938 (=> res!1793889 e!2715114)))

(assert (=> d!1290938 (= res!1793889 ((_ is Nil!48983) (_2!27498 (h!54547 (toList!3001 lm!1707)))))))

(assert (=> d!1290938 (= (forall!9158 (_2!27498 (h!54547 (toList!3001 lm!1707))) lambda!141724) e!2715114)))

(declare-fun b!4362708 () Bool)

(declare-fun e!2715115 () Bool)

(assert (=> b!4362708 (= e!2715114 e!2715115)))

(declare-fun res!1793890 () Bool)

(assert (=> b!4362708 (=> (not res!1793890) (not e!2715115))))

(assert (=> b!4362708 (= res!1793890 (dynLambda!20653 lambda!141724 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(declare-fun b!4362709 () Bool)

(assert (=> b!4362709 (= e!2715115 (forall!9158 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) lambda!141724))))

(assert (= (and d!1290938 (not res!1793889)) b!4362708))

(assert (= (and b!4362708 res!1793890) b!4362709))

(declare-fun b_lambda!131963 () Bool)

(assert (=> (not b_lambda!131963) (not b!4362708)))

(declare-fun m!4982609 () Bool)

(assert (=> b!4362708 m!4982609))

(assert (=> b!4362709 m!4980929))

(assert (=> b!4361802 d!1290938))

(declare-fun d!1290940 () Bool)

(assert (=> d!1290940 (dynLambda!20653 lambda!141724 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))

(declare-fun lt!1575074 () Unit!72449)

(declare-fun choose!27058 (List!49107 Int tuple2!48406) Unit!72449)

(assert (=> d!1290940 (= lt!1575074 (choose!27058 (toList!3002 lt!1574429) lambda!141724 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(declare-fun e!2715118 () Bool)

(assert (=> d!1290940 e!2715118))

(declare-fun res!1793893 () Bool)

(assert (=> d!1290940 (=> (not res!1793893) (not e!2715118))))

(assert (=> d!1290940 (= res!1793893 (forall!9158 (toList!3002 lt!1574429) lambda!141724))))

(assert (=> d!1290940 (= (forallContained!1799 (toList!3002 lt!1574429) lambda!141724 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1575074)))

(declare-fun b!4362712 () Bool)

(assert (=> b!4362712 (= e!2715118 (contains!11223 (toList!3002 lt!1574429) (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (= (and d!1290940 res!1793893) b!4362712))

(declare-fun b_lambda!131965 () Bool)

(assert (=> (not b_lambda!131965) (not d!1290940)))

(assert (=> d!1290940 m!4982609))

(declare-fun m!4982611 () Bool)

(assert (=> d!1290940 m!4982611))

(assert (=> d!1290940 m!4980915))

(declare-fun m!4982613 () Bool)

(assert (=> b!4362712 m!4982613))

(assert (=> b!4361802 d!1290940))

(declare-fun bs!635650 () Bool)

(declare-fun d!1290942 () Bool)

(assert (= bs!635650 (and d!1290942 b!4361789)))

(declare-fun lambda!141839 () Int)

(assert (=> bs!635650 (= (= lt!1574426 lt!1574405) (= lambda!141839 lambda!141720))))

(declare-fun bs!635652 () Bool)

(assert (= bs!635652 (and d!1290942 b!4362673)))

(assert (=> bs!635652 (= (= lt!1574426 lt!1575022) (= lambda!141839 lambda!141826))))

(declare-fun bs!635654 () Bool)

(assert (= bs!635654 (and d!1290942 b!4361802)))

(assert (=> bs!635654 (= (= lt!1574426 lt!1574071) (= lambda!141839 lambda!141723))))

(assert (=> bs!635650 (= (= lt!1574426 lt!1574079) (= lambda!141839 lambda!141719))))

(declare-fun bs!635656 () Bool)

(assert (= bs!635656 (and d!1290942 d!1290518)))

(assert (=> bs!635656 (not (= lambda!141839 lambda!141737))))

(declare-fun bs!635658 () Bool)

(assert (= bs!635658 (and d!1290942 b!4362144)))

(assert (=> bs!635658 (= (= lt!1574426 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141839 lambda!141760))))

(assert (=> bs!635654 (= lambda!141839 lambda!141724)))

(declare-fun bs!635661 () Bool)

(assert (= bs!635661 (and d!1290942 d!1290638)))

(assert (=> bs!635661 (= (= lt!1574426 lt!1574661) (= lambda!141839 lambda!141763))))

(assert (=> bs!635652 (= (= lt!1574426 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141839 lambda!141824))))

(declare-fun bs!635664 () Bool)

(assert (= bs!635664 (and d!1290942 b!4361792)))

(assert (=> bs!635664 (= (= lt!1574426 lt!1574079) (= lambda!141839 lambda!141718))))

(declare-fun bs!635666 () Bool)

(assert (= bs!635666 (and d!1290942 b!4362141)))

(assert (=> bs!635666 (= (= lt!1574426 lt!1574649) (= lambda!141839 lambda!141762))))

(declare-fun bs!635668 () Bool)

(assert (= bs!635668 (and d!1290942 d!1290916)))

(assert (=> bs!635668 (= (= lt!1574426 lt!1575034) (= lambda!141839 lambda!141830))))

(declare-fun bs!635669 () Bool)

(assert (= bs!635669 (and d!1290942 d!1290468)))

(assert (=> bs!635669 (= (= lt!1574426 lt!1574438) (= lambda!141839 lambda!141725))))

(declare-fun bs!635671 () Bool)

(assert (= bs!635671 (and d!1290942 b!4362676)))

(assert (=> bs!635671 (= (= lt!1574426 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141839 lambda!141823))))

(declare-fun bs!635672 () Bool)

(assert (= bs!635672 (and d!1290942 d!1290408)))

(assert (=> bs!635672 (= (= lt!1574426 lt!1574417) (= lambda!141839 lambda!141721))))

(declare-fun bs!635673 () Bool)

(assert (= bs!635673 (and d!1290942 b!4361805)))

(assert (=> bs!635673 (= (= lt!1574426 lt!1574071) (= lambda!141839 lambda!141722))))

(assert (=> bs!635666 (= (= lt!1574426 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141839 lambda!141761))))

(assert (=> d!1290942 true))

(assert (=> d!1290942 (forall!9158 (toList!3002 lt!1574071) lambda!141839)))

(declare-fun lt!1575077 () Unit!72449)

(declare-fun choose!27059 (ListMap!2245 ListMap!2245 K!10340 V!10586) Unit!72449)

(assert (=> d!1290942 (= lt!1575077 (choose!27059 lt!1574071 lt!1574426 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (_2!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> d!1290942 (forall!9158 (toList!3002 (+!676 lt!1574071 (tuple2!48407 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (_2!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))) lambda!141839)))

(assert (=> d!1290942 (= (addForallContainsKeyThenBeforeAdding!73 lt!1574071 lt!1574426 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (_2!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) lt!1575077)))

(declare-fun bs!635680 () Bool)

(assert (= bs!635680 d!1290942))

(declare-fun m!4982615 () Bool)

(assert (=> bs!635680 m!4982615))

(declare-fun m!4982617 () Bool)

(assert (=> bs!635680 m!4982617))

(declare-fun m!4982619 () Bool)

(assert (=> bs!635680 m!4982619))

(declare-fun m!4982621 () Bool)

(assert (=> bs!635680 m!4982621))

(assert (=> b!4361802 d!1290942))

(declare-fun b!4362714 () Bool)

(declare-fun e!2715124 () Unit!72449)

(declare-fun e!2715123 () Unit!72449)

(assert (=> b!4362714 (= e!2715124 e!2715123)))

(declare-fun c!741892 () Bool)

(declare-fun call!303306 () Bool)

(assert (=> b!4362714 (= c!741892 call!303306)))

(declare-fun b!4362715 () Bool)

(declare-fun Unit!72600 () Unit!72449)

(assert (=> b!4362715 (= e!2715123 Unit!72600)))

(declare-fun b!4362716 () Bool)

(declare-fun e!2715122 () Bool)

(declare-fun e!2715120 () Bool)

(assert (=> b!4362716 (= e!2715122 e!2715120)))

(declare-fun res!1793894 () Bool)

(assert (=> b!4362716 (=> (not res!1793894) (not e!2715120))))

(assert (=> b!4362716 (= res!1793894 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574429) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))))

(declare-fun b!4362717 () Bool)

(assert (=> b!4362717 false))

(declare-fun lt!1575078 () Unit!72449)

(declare-fun lt!1575084 () Unit!72449)

(assert (=> b!4362717 (= lt!1575078 lt!1575084)))

(assert (=> b!4362717 (containsKey!737 (toList!3002 lt!1574429) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (=> b!4362717 (= lt!1575084 (lemmaInGetKeysListThenContainsKey!136 (toList!3002 lt!1574429) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun Unit!72601 () Unit!72449)

(assert (=> b!4362717 (= e!2715123 Unit!72601)))

(declare-fun b!4362718 () Bool)

(declare-fun e!2715119 () Bool)

(assert (=> b!4362718 (= e!2715119 (not (contains!11225 (keys!16560 lt!1574429) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))))

(declare-fun b!4362719 () Bool)

(declare-fun e!2715121 () List!49110)

(assert (=> b!4362719 (= e!2715121 (keys!16560 lt!1574429))))

(declare-fun b!4362720 () Bool)

(assert (=> b!4362720 (= e!2715121 (getKeysList!138 (toList!3002 lt!1574429)))))

(declare-fun bm!303301 () Bool)

(assert (=> bm!303301 (= call!303306 (contains!11225 e!2715121 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun c!741893 () Bool)

(declare-fun c!741891 () Bool)

(assert (=> bm!303301 (= c!741893 c!741891)))

(declare-fun b!4362721 () Bool)

(assert (=> b!4362721 (= e!2715120 (contains!11225 (keys!16560 lt!1574429) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun b!4362722 () Bool)

(declare-fun lt!1575083 () Unit!72449)

(assert (=> b!4362722 (= e!2715124 lt!1575083)))

(declare-fun lt!1575080 () Unit!72449)

(assert (=> b!4362722 (= lt!1575080 (lemmaContainsKeyImpliesGetValueByKeyDefined!389 (toList!3002 lt!1574429) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> b!4362722 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574429) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun lt!1575085 () Unit!72449)

(assert (=> b!4362722 (= lt!1575085 lt!1575080)))

(assert (=> b!4362722 (= lt!1575083 (lemmaInListThenGetKeysListContains!135 (toList!3002 lt!1574429) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> b!4362722 call!303306))

(declare-fun d!1290944 () Bool)

(assert (=> d!1290944 e!2715122))

(declare-fun res!1793896 () Bool)

(assert (=> d!1290944 (=> res!1793896 e!2715122)))

(assert (=> d!1290944 (= res!1793896 e!2715119)))

(declare-fun res!1793895 () Bool)

(assert (=> d!1290944 (=> (not res!1793895) (not e!2715119))))

(declare-fun lt!1575081 () Bool)

(assert (=> d!1290944 (= res!1793895 (not lt!1575081))))

(declare-fun lt!1575082 () Bool)

(assert (=> d!1290944 (= lt!1575081 lt!1575082)))

(declare-fun lt!1575079 () Unit!72449)

(assert (=> d!1290944 (= lt!1575079 e!2715124)))

(assert (=> d!1290944 (= c!741891 lt!1575082)))

(assert (=> d!1290944 (= lt!1575082 (containsKey!737 (toList!3002 lt!1574429) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> d!1290944 (= (contains!11221 lt!1574429 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) lt!1575081)))

(assert (= (and d!1290944 c!741891) b!4362722))

(assert (= (and d!1290944 (not c!741891)) b!4362714))

(assert (= (and b!4362714 c!741892) b!4362717))

(assert (= (and b!4362714 (not c!741892)) b!4362715))

(assert (= (or b!4362722 b!4362714) bm!303301))

(assert (= (and bm!303301 c!741893) b!4362720))

(assert (= (and bm!303301 (not c!741893)) b!4362719))

(assert (= (and d!1290944 res!1793895) b!4362718))

(assert (= (and d!1290944 (not res!1793896)) b!4362716))

(assert (= (and b!4362716 res!1793894) b!4362721))

(declare-fun m!4982623 () Bool)

(assert (=> b!4362718 m!4982623))

(assert (=> b!4362718 m!4982623))

(declare-fun m!4982625 () Bool)

(assert (=> b!4362718 m!4982625))

(declare-fun m!4982627 () Bool)

(assert (=> bm!303301 m!4982627))

(assert (=> b!4362721 m!4982623))

(assert (=> b!4362721 m!4982623))

(assert (=> b!4362721 m!4982625))

(declare-fun m!4982629 () Bool)

(assert (=> b!4362720 m!4982629))

(declare-fun m!4982631 () Bool)

(assert (=> d!1290944 m!4982631))

(assert (=> b!4362719 m!4982623))

(declare-fun m!4982633 () Bool)

(assert (=> b!4362716 m!4982633))

(assert (=> b!4362716 m!4982633))

(declare-fun m!4982635 () Bool)

(assert (=> b!4362716 m!4982635))

(assert (=> b!4362717 m!4982631))

(declare-fun m!4982639 () Bool)

(assert (=> b!4362717 m!4982639))

(declare-fun m!4982643 () Bool)

(assert (=> b!4362722 m!4982643))

(assert (=> b!4362722 m!4982633))

(assert (=> b!4362722 m!4982633))

(assert (=> b!4362722 m!4982635))

(declare-fun m!4982647 () Bool)

(assert (=> b!4362722 m!4982647))

(assert (=> b!4361802 d!1290944))

(declare-fun d!1290946 () Bool)

(declare-fun res!1793897 () Bool)

(declare-fun e!2715125 () Bool)

(assert (=> d!1290946 (=> res!1793897 e!2715125)))

(assert (=> d!1290946 (= res!1793897 ((_ is Nil!48983) (toList!3002 lt!1574429)))))

(assert (=> d!1290946 (= (forall!9158 (toList!3002 lt!1574429) lambda!141724) e!2715125)))

(declare-fun b!4362723 () Bool)

(declare-fun e!2715126 () Bool)

(assert (=> b!4362723 (= e!2715125 e!2715126)))

(declare-fun res!1793898 () Bool)

(assert (=> b!4362723 (=> (not res!1793898) (not e!2715126))))

(assert (=> b!4362723 (= res!1793898 (dynLambda!20653 lambda!141724 (h!54546 (toList!3002 lt!1574429))))))

(declare-fun b!4362724 () Bool)

(assert (=> b!4362724 (= e!2715126 (forall!9158 (t!356027 (toList!3002 lt!1574429)) lambda!141724))))

(assert (= (and d!1290946 (not res!1793897)) b!4362723))

(assert (= (and b!4362723 res!1793898) b!4362724))

(declare-fun b_lambda!131967 () Bool)

(assert (=> (not b_lambda!131967) (not b!4362723)))

(declare-fun m!4982669 () Bool)

(assert (=> b!4362723 m!4982669))

(declare-fun m!4982671 () Bool)

(assert (=> b!4362724 m!4982671))

(assert (=> b!4361802 d!1290946))

(declare-fun b!4362725 () Bool)

(declare-fun e!2715132 () Unit!72449)

(declare-fun e!2715131 () Unit!72449)

(assert (=> b!4362725 (= e!2715132 e!2715131)))

(declare-fun c!741895 () Bool)

(declare-fun call!303307 () Bool)

(assert (=> b!4362725 (= c!741895 call!303307)))

(declare-fun b!4362726 () Bool)

(declare-fun Unit!72602 () Unit!72449)

(assert (=> b!4362726 (= e!2715131 Unit!72602)))

(declare-fun b!4362727 () Bool)

(declare-fun e!2715130 () Bool)

(declare-fun e!2715128 () Bool)

(assert (=> b!4362727 (= e!2715130 e!2715128)))

(declare-fun res!1793899 () Bool)

(assert (=> b!4362727 (=> (not res!1793899) (not e!2715128))))

(assert (=> b!4362727 (= res!1793899 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574426) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))))

(declare-fun b!4362728 () Bool)

(assert (=> b!4362728 false))

(declare-fun lt!1575086 () Unit!72449)

(declare-fun lt!1575092 () Unit!72449)

(assert (=> b!4362728 (= lt!1575086 lt!1575092)))

(assert (=> b!4362728 (containsKey!737 (toList!3002 lt!1574426) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (=> b!4362728 (= lt!1575092 (lemmaInGetKeysListThenContainsKey!136 (toList!3002 lt!1574426) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun Unit!72603 () Unit!72449)

(assert (=> b!4362728 (= e!2715131 Unit!72603)))

(declare-fun b!4362729 () Bool)

(declare-fun e!2715127 () Bool)

(assert (=> b!4362729 (= e!2715127 (not (contains!11225 (keys!16560 lt!1574426) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))))

(declare-fun b!4362730 () Bool)

(declare-fun e!2715129 () List!49110)

(assert (=> b!4362730 (= e!2715129 (keys!16560 lt!1574426))))

(declare-fun b!4362731 () Bool)

(assert (=> b!4362731 (= e!2715129 (getKeysList!138 (toList!3002 lt!1574426)))))

(declare-fun bm!303302 () Bool)

(assert (=> bm!303302 (= call!303307 (contains!11225 e!2715129 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun c!741896 () Bool)

(declare-fun c!741894 () Bool)

(assert (=> bm!303302 (= c!741896 c!741894)))

(declare-fun b!4362732 () Bool)

(assert (=> b!4362732 (= e!2715128 (contains!11225 (keys!16560 lt!1574426) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun b!4362733 () Bool)

(declare-fun lt!1575091 () Unit!72449)

(assert (=> b!4362733 (= e!2715132 lt!1575091)))

(declare-fun lt!1575088 () Unit!72449)

(assert (=> b!4362733 (= lt!1575088 (lemmaContainsKeyImpliesGetValueByKeyDefined!389 (toList!3002 lt!1574426) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> b!4362733 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574426) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun lt!1575093 () Unit!72449)

(assert (=> b!4362733 (= lt!1575093 lt!1575088)))

(assert (=> b!4362733 (= lt!1575091 (lemmaInListThenGetKeysListContains!135 (toList!3002 lt!1574426) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> b!4362733 call!303307))

(declare-fun d!1290948 () Bool)

(assert (=> d!1290948 e!2715130))

(declare-fun res!1793901 () Bool)

(assert (=> d!1290948 (=> res!1793901 e!2715130)))

(assert (=> d!1290948 (= res!1793901 e!2715127)))

(declare-fun res!1793900 () Bool)

(assert (=> d!1290948 (=> (not res!1793900) (not e!2715127))))

(declare-fun lt!1575089 () Bool)

(assert (=> d!1290948 (= res!1793900 (not lt!1575089))))

(declare-fun lt!1575090 () Bool)

(assert (=> d!1290948 (= lt!1575089 lt!1575090)))

(declare-fun lt!1575087 () Unit!72449)

(assert (=> d!1290948 (= lt!1575087 e!2715132)))

(assert (=> d!1290948 (= c!741894 lt!1575090)))

(assert (=> d!1290948 (= lt!1575090 (containsKey!737 (toList!3002 lt!1574426) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> d!1290948 (= (contains!11221 lt!1574426 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) lt!1575089)))

(assert (= (and d!1290948 c!741894) b!4362733))

(assert (= (and d!1290948 (not c!741894)) b!4362725))

(assert (= (and b!4362725 c!741895) b!4362728))

(assert (= (and b!4362725 (not c!741895)) b!4362726))

(assert (= (or b!4362733 b!4362725) bm!303302))

(assert (= (and bm!303302 c!741896) b!4362731))

(assert (= (and bm!303302 (not c!741896)) b!4362730))

(assert (= (and d!1290948 res!1793900) b!4362729))

(assert (= (and d!1290948 (not res!1793901)) b!4362727))

(assert (= (and b!4362727 res!1793899) b!4362732))

(declare-fun m!4982679 () Bool)

(assert (=> b!4362729 m!4982679))

(assert (=> b!4362729 m!4982679))

(declare-fun m!4982681 () Bool)

(assert (=> b!4362729 m!4982681))

(declare-fun m!4982683 () Bool)

(assert (=> bm!303302 m!4982683))

(assert (=> b!4362732 m!4982679))

(assert (=> b!4362732 m!4982679))

(assert (=> b!4362732 m!4982681))

(declare-fun m!4982685 () Bool)

(assert (=> b!4362731 m!4982685))

(declare-fun m!4982687 () Bool)

(assert (=> d!1290948 m!4982687))

(assert (=> b!4362730 m!4982679))

(declare-fun m!4982689 () Bool)

(assert (=> b!4362727 m!4982689))

(assert (=> b!4362727 m!4982689))

(declare-fun m!4982691 () Bool)

(assert (=> b!4362727 m!4982691))

(assert (=> b!4362728 m!4982687))

(declare-fun m!4982693 () Bool)

(assert (=> b!4362728 m!4982693))

(declare-fun m!4982695 () Bool)

(assert (=> b!4362733 m!4982695))

(assert (=> b!4362733 m!4982689))

(assert (=> b!4362733 m!4982689))

(assert (=> b!4362733 m!4982691))

(declare-fun m!4982697 () Bool)

(assert (=> b!4362733 m!4982697))

(assert (=> b!4361802 d!1290948))

(declare-fun d!1290952 () Bool)

(declare-fun res!1793902 () Bool)

(declare-fun e!2715133 () Bool)

(assert (=> d!1290952 (=> res!1793902 e!2715133)))

(assert (=> d!1290952 (= res!1793902 ((_ is Nil!48983) (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (=> d!1290952 (= (forall!9158 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) lambda!141724) e!2715133)))

(declare-fun b!4362734 () Bool)

(declare-fun e!2715134 () Bool)

(assert (=> b!4362734 (= e!2715133 e!2715134)))

(declare-fun res!1793903 () Bool)

(assert (=> b!4362734 (=> (not res!1793903) (not e!2715134))))

(assert (=> b!4362734 (= res!1793903 (dynLambda!20653 lambda!141724 (h!54546 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun b!4362735 () Bool)

(assert (=> b!4362735 (= e!2715134 (forall!9158 (t!356027 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lambda!141724))))

(assert (= (and d!1290952 (not res!1793902)) b!4362734))

(assert (= (and b!4362734 res!1793903) b!4362735))

(declare-fun b_lambda!131969 () Bool)

(assert (=> (not b_lambda!131969) (not b!4362734)))

(declare-fun m!4982699 () Bool)

(assert (=> b!4362734 m!4982699))

(declare-fun m!4982701 () Bool)

(assert (=> b!4362735 m!4982701))

(assert (=> b!4361802 d!1290952))

(declare-fun d!1290954 () Bool)

(declare-fun res!1793908 () Bool)

(declare-fun e!2715139 () Bool)

(assert (=> d!1290954 (=> res!1793908 e!2715139)))

(assert (=> d!1290954 (= res!1793908 (and ((_ is Cons!48983) (toList!3002 lt!1574069)) (= (_1!27497 (h!54546 (toList!3002 lt!1574069))) key!3918)))))

(assert (=> d!1290954 (= (containsKey!737 (toList!3002 lt!1574069) key!3918) e!2715139)))

(declare-fun b!4362740 () Bool)

(declare-fun e!2715140 () Bool)

(assert (=> b!4362740 (= e!2715139 e!2715140)))

(declare-fun res!1793909 () Bool)

(assert (=> b!4362740 (=> (not res!1793909) (not e!2715140))))

(assert (=> b!4362740 (= res!1793909 ((_ is Cons!48983) (toList!3002 lt!1574069)))))

(declare-fun b!4362741 () Bool)

(assert (=> b!4362741 (= e!2715140 (containsKey!737 (t!356027 (toList!3002 lt!1574069)) key!3918))))

(assert (= (and d!1290954 (not res!1793908)) b!4362740))

(assert (= (and b!4362740 res!1793909) b!4362741))

(declare-fun m!4982703 () Bool)

(assert (=> b!4362741 m!4982703))

(assert (=> d!1290406 d!1290954))

(declare-fun d!1290956 () Bool)

(declare-fun lt!1575094 () Bool)

(assert (=> d!1290956 (= lt!1575094 (select (content!7751 (keys!16560 lt!1574072)) key!3918))))

(declare-fun e!2715142 () Bool)

(assert (=> d!1290956 (= lt!1575094 e!2715142)))

(declare-fun res!1793910 () Bool)

(assert (=> d!1290956 (=> (not res!1793910) (not e!2715142))))

(assert (=> d!1290956 (= res!1793910 ((_ is Cons!48986) (keys!16560 lt!1574072)))))

(assert (=> d!1290956 (= (contains!11225 (keys!16560 lt!1574072) key!3918) lt!1575094)))

(declare-fun b!4362742 () Bool)

(declare-fun e!2715141 () Bool)

(assert (=> b!4362742 (= e!2715142 e!2715141)))

(declare-fun res!1793911 () Bool)

(assert (=> b!4362742 (=> res!1793911 e!2715141)))

(assert (=> b!4362742 (= res!1793911 (= (h!54551 (keys!16560 lt!1574072)) key!3918))))

(declare-fun b!4362743 () Bool)

(assert (=> b!4362743 (= e!2715141 (contains!11225 (t!356030 (keys!16560 lt!1574072)) key!3918))))

(assert (= (and d!1290956 res!1793910) b!4362742))

(assert (= (and b!4362742 (not res!1793911)) b!4362743))

(assert (=> d!1290956 m!4981007))

(declare-fun m!4982705 () Bool)

(assert (=> d!1290956 m!4982705))

(declare-fun m!4982707 () Bool)

(assert (=> d!1290956 m!4982707))

(declare-fun m!4982709 () Bool)

(assert (=> b!4362743 m!4982709))

(assert (=> b!4361832 d!1290956))

(assert (=> b!4361832 d!1290894))

(declare-fun d!1290958 () Bool)

(declare-fun res!1793912 () Bool)

(declare-fun e!2715143 () Bool)

(assert (=> d!1290958 (=> res!1793912 e!2715143)))

(assert (=> d!1290958 (= res!1793912 ((_ is Nil!48984) (toList!3001 (+!675 lm!1707 (tuple2!48409 hash!377 newBucket!200)))))))

(assert (=> d!1290958 (= (forall!9156 (toList!3001 (+!675 lm!1707 (tuple2!48409 hash!377 newBucket!200))) lambda!141629) e!2715143)))

(declare-fun b!4362744 () Bool)

(declare-fun e!2715144 () Bool)

(assert (=> b!4362744 (= e!2715143 e!2715144)))

(declare-fun res!1793913 () Bool)

(assert (=> b!4362744 (=> (not res!1793913) (not e!2715144))))

(assert (=> b!4362744 (= res!1793913 (dynLambda!20651 lambda!141629 (h!54547 (toList!3001 (+!675 lm!1707 (tuple2!48409 hash!377 newBucket!200))))))))

(declare-fun b!4362745 () Bool)

(assert (=> b!4362745 (= e!2715144 (forall!9156 (t!356028 (toList!3001 (+!675 lm!1707 (tuple2!48409 hash!377 newBucket!200)))) lambda!141629))))

(assert (= (and d!1290958 (not res!1793912)) b!4362744))

(assert (= (and b!4362744 res!1793913) b!4362745))

(declare-fun b_lambda!131971 () Bool)

(assert (=> (not b_lambda!131971) (not b!4362744)))

(declare-fun m!4982711 () Bool)

(assert (=> b!4362744 m!4982711))

(declare-fun m!4982713 () Bool)

(assert (=> b!4362745 m!4982713))

(assert (=> d!1290486 d!1290958))

(declare-fun d!1290960 () Bool)

(declare-fun e!2715145 () Bool)

(assert (=> d!1290960 e!2715145))

(declare-fun res!1793915 () Bool)

(assert (=> d!1290960 (=> (not res!1793915) (not e!2715145))))

(declare-fun lt!1575097 () ListLongMap!1651)

(assert (=> d!1290960 (= res!1793915 (contains!11219 lt!1575097 (_1!27498 (tuple2!48409 hash!377 newBucket!200))))))

(declare-fun lt!1575096 () List!49108)

(assert (=> d!1290960 (= lt!1575097 (ListLongMap!1652 lt!1575096))))

(declare-fun lt!1575098 () Unit!72449)

(declare-fun lt!1575095 () Unit!72449)

(assert (=> d!1290960 (= lt!1575098 lt!1575095)))

(assert (=> d!1290960 (= (getValueByKey!478 lt!1575096 (_1!27498 (tuple2!48409 hash!377 newBucket!200))) (Some!10491 (_2!27498 (tuple2!48409 hash!377 newBucket!200))))))

(assert (=> d!1290960 (= lt!1575095 (lemmaContainsTupThenGetReturnValue!251 lt!1575096 (_1!27498 (tuple2!48409 hash!377 newBucket!200)) (_2!27498 (tuple2!48409 hash!377 newBucket!200))))))

(assert (=> d!1290960 (= lt!1575096 (insertStrictlySorted!147 (toList!3001 lm!1707) (_1!27498 (tuple2!48409 hash!377 newBucket!200)) (_2!27498 (tuple2!48409 hash!377 newBucket!200))))))

(assert (=> d!1290960 (= (+!675 lm!1707 (tuple2!48409 hash!377 newBucket!200)) lt!1575097)))

(declare-fun b!4362746 () Bool)

(declare-fun res!1793914 () Bool)

(assert (=> b!4362746 (=> (not res!1793914) (not e!2715145))))

(assert (=> b!4362746 (= res!1793914 (= (getValueByKey!478 (toList!3001 lt!1575097) (_1!27498 (tuple2!48409 hash!377 newBucket!200))) (Some!10491 (_2!27498 (tuple2!48409 hash!377 newBucket!200)))))))

(declare-fun b!4362747 () Bool)

(assert (=> b!4362747 (= e!2715145 (contains!11220 (toList!3001 lt!1575097) (tuple2!48409 hash!377 newBucket!200)))))

(assert (= (and d!1290960 res!1793915) b!4362746))

(assert (= (and b!4362746 res!1793914) b!4362747))

(declare-fun m!4982715 () Bool)

(assert (=> d!1290960 m!4982715))

(declare-fun m!4982717 () Bool)

(assert (=> d!1290960 m!4982717))

(declare-fun m!4982719 () Bool)

(assert (=> d!1290960 m!4982719))

(declare-fun m!4982721 () Bool)

(assert (=> d!1290960 m!4982721))

(declare-fun m!4982723 () Bool)

(assert (=> b!4362746 m!4982723))

(declare-fun m!4982725 () Bool)

(assert (=> b!4362747 m!4982725))

(assert (=> d!1290486 d!1290960))

(declare-fun d!1290962 () Bool)

(assert (=> d!1290962 (forall!9156 (toList!3001 (+!675 lm!1707 (tuple2!48409 hash!377 newBucket!200))) lambda!141629)))

(assert (=> d!1290962 true))

(declare-fun _$31!244 () Unit!72449)

(assert (=> d!1290962 (= (choose!27040 lm!1707 lambda!141629 hash!377 newBucket!200) _$31!244)))

(declare-fun bs!635681 () Bool)

(assert (= bs!635681 d!1290962))

(assert (=> bs!635681 m!4980999))

(assert (=> bs!635681 m!4981001))

(assert (=> d!1290486 d!1290962))

(assert (=> d!1290486 d!1290352))

(declare-fun d!1290964 () Bool)

(declare-fun res!1793916 () Bool)

(declare-fun e!2715146 () Bool)

(assert (=> d!1290964 (=> res!1793916 e!2715146)))

(assert (=> d!1290964 (= res!1793916 ((_ is Nil!48983) (ite c!741655 (toList!3002 lt!1574071) (toList!3002 lt!1574429))))))

(assert (=> d!1290964 (= (forall!9158 (ite c!741655 (toList!3002 lt!1574071) (toList!3002 lt!1574429)) (ite c!741655 lambda!141722 lambda!141724)) e!2715146)))

(declare-fun b!4362749 () Bool)

(declare-fun e!2715147 () Bool)

(assert (=> b!4362749 (= e!2715146 e!2715147)))

(declare-fun res!1793917 () Bool)

(assert (=> b!4362749 (=> (not res!1793917) (not e!2715147))))

(assert (=> b!4362749 (= res!1793917 (dynLambda!20653 (ite c!741655 lambda!141722 lambda!141724) (h!54546 (ite c!741655 (toList!3002 lt!1574071) (toList!3002 lt!1574429)))))))

(declare-fun b!4362750 () Bool)

(assert (=> b!4362750 (= e!2715147 (forall!9158 (t!356027 (ite c!741655 (toList!3002 lt!1574071) (toList!3002 lt!1574429))) (ite c!741655 lambda!141722 lambda!141724)))))

(assert (= (and d!1290964 (not res!1793916)) b!4362749))

(assert (= (and b!4362749 res!1793917) b!4362750))

(declare-fun b_lambda!131973 () Bool)

(assert (=> (not b_lambda!131973) (not b!4362749)))

(declare-fun m!4982727 () Bool)

(assert (=> b!4362749 m!4982727))

(declare-fun m!4982729 () Bool)

(assert (=> b!4362750 m!4982729))

(assert (=> bm!303201 d!1290964))

(declare-fun d!1290966 () Bool)

(declare-fun c!741899 () Bool)

(assert (=> d!1290966 (= c!741899 ((_ is Nil!48984) (toList!3001 lm!1707)))))

(declare-fun e!2715152 () (InoxSet tuple2!48408))

(assert (=> d!1290966 (= (content!7749 (toList!3001 lm!1707)) e!2715152)))

(declare-fun b!4362759 () Bool)

(assert (=> b!4362759 (= e!2715152 ((as const (Array tuple2!48408 Bool)) false))))

(declare-fun b!4362760 () Bool)

(assert (=> b!4362760 (= e!2715152 ((_ map or) (store ((as const (Array tuple2!48408 Bool)) false) (h!54547 (toList!3001 lm!1707)) true) (content!7749 (t!356028 (toList!3001 lm!1707)))))))

(assert (= (and d!1290966 c!741899) b!4362759))

(assert (= (and d!1290966 (not c!741899)) b!4362760))

(declare-fun m!4982755 () Bool)

(assert (=> b!4362760 m!4982755))

(assert (=> b!4362760 m!4982121))

(assert (=> d!1290502 d!1290966))

(declare-fun d!1290974 () Bool)

(assert (=> d!1290974 (= (invariantList!690 (toList!3002 lt!1574454)) (noDuplicatedKeys!123 (toList!3002 lt!1574454)))))

(declare-fun bs!635683 () Bool)

(assert (= bs!635683 d!1290974))

(declare-fun m!4982761 () Bool)

(assert (=> bs!635683 m!4982761))

(assert (=> d!1290478 d!1290974))

(declare-fun d!1290978 () Bool)

(declare-fun res!1793922 () Bool)

(declare-fun e!2715155 () Bool)

(assert (=> d!1290978 (=> res!1793922 e!2715155)))

(assert (=> d!1290978 (= res!1793922 ((_ is Nil!48984) (toList!3001 (+!675 lt!1574068 lt!1574085))))))

(assert (=> d!1290978 (= (forall!9156 (toList!3001 (+!675 lt!1574068 lt!1574085)) lambda!141727) e!2715155)))

(declare-fun b!4362765 () Bool)

(declare-fun e!2715156 () Bool)

(assert (=> b!4362765 (= e!2715155 e!2715156)))

(declare-fun res!1793923 () Bool)

(assert (=> b!4362765 (=> (not res!1793923) (not e!2715156))))

(assert (=> b!4362765 (= res!1793923 (dynLambda!20651 lambda!141727 (h!54547 (toList!3001 (+!675 lt!1574068 lt!1574085)))))))

(declare-fun b!4362766 () Bool)

(assert (=> b!4362766 (= e!2715156 (forall!9156 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))) lambda!141727))))

(assert (= (and d!1290978 (not res!1793922)) b!4362765))

(assert (= (and b!4362765 res!1793923) b!4362766))

(declare-fun b_lambda!131975 () Bool)

(assert (=> (not b_lambda!131975) (not b!4362765)))

(declare-fun m!4982767 () Bool)

(assert (=> b!4362765 m!4982767))

(declare-fun m!4982769 () Bool)

(assert (=> b!4362766 m!4982769))

(assert (=> d!1290478 d!1290978))

(declare-fun d!1290982 () Bool)

(assert (=> d!1290982 (isDefined!7787 (getValueByKey!478 (toList!3001 lm!1707) hash!377))))

(declare-fun lt!1575117 () Unit!72449)

(declare-fun choose!27060 (List!49108 (_ BitVec 64)) Unit!72449)

(assert (=> d!1290982 (= lt!1575117 (choose!27060 (toList!3001 lm!1707) hash!377))))

(declare-fun e!2715165 () Bool)

(assert (=> d!1290982 e!2715165))

(declare-fun res!1793931 () Bool)

(assert (=> d!1290982 (=> (not res!1793931) (not e!2715165))))

(assert (=> d!1290982 (= res!1793931 (isStrictlySorted!116 (toList!3001 lm!1707)))))

(assert (=> d!1290982 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!390 (toList!3001 lm!1707) hash!377) lt!1575117)))

(declare-fun b!4362780 () Bool)

(assert (=> b!4362780 (= e!2715165 (containsKey!738 (toList!3001 lm!1707) hash!377))))

(assert (= (and d!1290982 res!1793931) b!4362780))

(assert (=> d!1290982 m!4981037))

(assert (=> d!1290982 m!4981037))

(assert (=> d!1290982 m!4981093))

(declare-fun m!4982777 () Bool)

(assert (=> d!1290982 m!4982777))

(assert (=> d!1290982 m!4980441))

(assert (=> b!4362780 m!4981089))

(assert (=> b!4361870 d!1290982))

(declare-fun d!1290986 () Bool)

(declare-fun isEmpty!28223 (Option!10492) Bool)

(assert (=> d!1290986 (= (isDefined!7787 (getValueByKey!478 (toList!3001 lm!1707) hash!377)) (not (isEmpty!28223 (getValueByKey!478 (toList!3001 lm!1707) hash!377))))))

(declare-fun bs!635718 () Bool)

(assert (= bs!635718 d!1290986))

(assert (=> bs!635718 m!4981037))

(declare-fun m!4982779 () Bool)

(assert (=> bs!635718 m!4982779))

(assert (=> b!4361870 d!1290986))

(declare-fun b!4362783 () Bool)

(declare-fun e!2715167 () Option!10492)

(assert (=> b!4362783 (= e!2715167 (getValueByKey!478 (t!356028 (toList!3001 lm!1707)) hash!377))))

(declare-fun d!1290988 () Bool)

(declare-fun c!741905 () Bool)

(assert (=> d!1290988 (= c!741905 (and ((_ is Cons!48984) (toList!3001 lm!1707)) (= (_1!27498 (h!54547 (toList!3001 lm!1707))) hash!377)))))

(declare-fun e!2715166 () Option!10492)

(assert (=> d!1290988 (= (getValueByKey!478 (toList!3001 lm!1707) hash!377) e!2715166)))

(declare-fun b!4362782 () Bool)

(assert (=> b!4362782 (= e!2715166 e!2715167)))

(declare-fun c!741906 () Bool)

(assert (=> b!4362782 (= c!741906 (and ((_ is Cons!48984) (toList!3001 lm!1707)) (not (= (_1!27498 (h!54547 (toList!3001 lm!1707))) hash!377))))))

(declare-fun b!4362781 () Bool)

(assert (=> b!4362781 (= e!2715166 (Some!10491 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))

(declare-fun b!4362784 () Bool)

(assert (=> b!4362784 (= e!2715167 None!10491)))

(assert (= (and d!1290988 c!741905) b!4362781))

(assert (= (and d!1290988 (not c!741905)) b!4362782))

(assert (= (and b!4362782 c!741906) b!4362783))

(assert (= (and b!4362782 (not c!741906)) b!4362784))

(declare-fun m!4982781 () Bool)

(assert (=> b!4362783 m!4982781))

(assert (=> b!4361870 d!1290988))

(assert (=> b!4361709 d!1290954))

(declare-fun d!1290990 () Bool)

(assert (=> d!1290990 (containsKey!737 (toList!3002 lt!1574069) key!3918)))

(declare-fun lt!1575120 () Unit!72449)

(declare-fun choose!27061 (List!49107 K!10340) Unit!72449)

(assert (=> d!1290990 (= lt!1575120 (choose!27061 (toList!3002 lt!1574069) key!3918))))

(assert (=> d!1290990 (invariantList!690 (toList!3002 lt!1574069))))

(assert (=> d!1290990 (= (lemmaInGetKeysListThenContainsKey!136 (toList!3002 lt!1574069) key!3918) lt!1575120)))

(declare-fun bs!635720 () Bool)

(assert (= bs!635720 d!1290990))

(assert (=> bs!635720 m!4980649))

(declare-fun m!4982811 () Bool)

(assert (=> bs!635720 m!4982811))

(declare-fun m!4982813 () Bool)

(assert (=> bs!635720 m!4982813))

(assert (=> b!4361709 d!1290990))

(declare-fun d!1291000 () Bool)

(declare-fun res!1793932 () Bool)

(declare-fun e!2715173 () Bool)

(assert (=> d!1291000 (=> res!1793932 e!2715173)))

(assert (=> d!1291000 (= res!1793932 ((_ is Nil!48984) (toList!3001 lm!1707)))))

(assert (=> d!1291000 (= (forall!9156 (toList!3001 lm!1707) lambda!141734) e!2715173)))

(declare-fun b!4362795 () Bool)

(declare-fun e!2715174 () Bool)

(assert (=> b!4362795 (= e!2715173 e!2715174)))

(declare-fun res!1793933 () Bool)

(assert (=> b!4362795 (=> (not res!1793933) (not e!2715174))))

(assert (=> b!4362795 (= res!1793933 (dynLambda!20651 lambda!141734 (h!54547 (toList!3001 lm!1707))))))

(declare-fun b!4362796 () Bool)

(assert (=> b!4362796 (= e!2715174 (forall!9156 (t!356028 (toList!3001 lm!1707)) lambda!141734))))

(assert (= (and d!1291000 (not res!1793932)) b!4362795))

(assert (= (and b!4362795 res!1793933) b!4362796))

(declare-fun b_lambda!131977 () Bool)

(assert (=> (not b_lambda!131977) (not b!4362795)))

(declare-fun m!4982817 () Bool)

(assert (=> b!4362795 m!4982817))

(declare-fun m!4982819 () Bool)

(assert (=> b!4362796 m!4982819))

(assert (=> d!1290514 d!1291000))

(declare-fun d!1291004 () Bool)

(assert (=> d!1291004 (= (invariantList!690 (toList!3002 lt!1574449)) (noDuplicatedKeys!123 (toList!3002 lt!1574449)))))

(declare-fun bs!635721 () Bool)

(assert (= bs!635721 d!1291004))

(declare-fun m!4982821 () Bool)

(assert (=> bs!635721 m!4982821))

(assert (=> d!1290474 d!1291004))

(declare-fun d!1291006 () Bool)

(declare-fun res!1793936 () Bool)

(declare-fun e!2715177 () Bool)

(assert (=> d!1291006 (=> res!1793936 e!2715177)))

(assert (=> d!1291006 (= res!1793936 ((_ is Nil!48984) (t!356028 (toList!3001 lm!1707))))))

(assert (=> d!1291006 (= (forall!9156 (t!356028 (toList!3001 lm!1707)) lambda!141726) e!2715177)))

(declare-fun b!4362799 () Bool)

(declare-fun e!2715178 () Bool)

(assert (=> b!4362799 (= e!2715177 e!2715178)))

(declare-fun res!1793937 () Bool)

(assert (=> b!4362799 (=> (not res!1793937) (not e!2715178))))

(assert (=> b!4362799 (= res!1793937 (dynLambda!20651 lambda!141726 (h!54547 (t!356028 (toList!3001 lm!1707)))))))

(declare-fun b!4362800 () Bool)

(assert (=> b!4362800 (= e!2715178 (forall!9156 (t!356028 (t!356028 (toList!3001 lm!1707))) lambda!141726))))

(assert (= (and d!1291006 (not res!1793936)) b!4362799))

(assert (= (and b!4362799 res!1793937) b!4362800))

(declare-fun b_lambda!131979 () Bool)

(assert (=> (not b_lambda!131979) (not b!4362799)))

(declare-fun m!4982831 () Bool)

(assert (=> b!4362799 m!4982831))

(declare-fun m!4982833 () Bool)

(assert (=> b!4362800 m!4982833))

(assert (=> d!1290474 d!1291006))

(declare-fun d!1291012 () Bool)

(declare-fun res!1793940 () Bool)

(declare-fun e!2715181 () Bool)

(assert (=> d!1291012 (=> res!1793940 e!2715181)))

(assert (=> d!1291012 (= res!1793940 ((_ is Nil!48983) (toList!3002 lt!1574071)))))

(assert (=> d!1291012 (= (forall!9158 (toList!3002 lt!1574071) lambda!141725) e!2715181)))

(declare-fun b!4362803 () Bool)

(declare-fun e!2715182 () Bool)

(assert (=> b!4362803 (= e!2715181 e!2715182)))

(declare-fun res!1793941 () Bool)

(assert (=> b!4362803 (=> (not res!1793941) (not e!2715182))))

(assert (=> b!4362803 (= res!1793941 (dynLambda!20653 lambda!141725 (h!54546 (toList!3002 lt!1574071))))))

(declare-fun b!4362804 () Bool)

(assert (=> b!4362804 (= e!2715182 (forall!9158 (t!356027 (toList!3002 lt!1574071)) lambda!141725))))

(assert (= (and d!1291012 (not res!1793940)) b!4362803))

(assert (= (and b!4362803 res!1793941) b!4362804))

(declare-fun b_lambda!131981 () Bool)

(assert (=> (not b_lambda!131981) (not b!4362803)))

(declare-fun m!4982839 () Bool)

(assert (=> b!4362803 m!4982839))

(declare-fun m!4982841 () Bool)

(assert (=> b!4362804 m!4982841))

(assert (=> b!4361806 d!1291012))

(declare-fun bs!635723 () Bool)

(declare-fun b!4362806 () Bool)

(assert (= bs!635723 (and b!4362806 b!4362648)))

(declare-fun lambda!141844 () Int)

(assert (=> bs!635723 (= (= (toList!3002 lt!1574079) (toList!3002 lt!1574072)) (= lambda!141844 lambda!141821))))

(declare-fun bs!635724 () Bool)

(assert (= bs!635724 (and b!4362806 b!4362533)))

(assert (=> bs!635724 (= lambda!141844 lambda!141811)))

(declare-fun bs!635725 () Bool)

(assert (= bs!635725 (and b!4362806 b!4362443)))

(assert (=> bs!635725 (= (= (toList!3002 lt!1574079) (toList!3002 lt!1574069)) (= lambda!141844 lambda!141795))))

(declare-fun bs!635726 () Bool)

(assert (= bs!635726 (and b!4362806 b!4362535)))

(assert (=> bs!635726 (= (= (toList!3002 lt!1574079) (t!356027 (toList!3002 lt!1574079))) (= lambda!141844 lambda!141809))))

(declare-fun bs!635727 () Bool)

(assert (= bs!635727 (and b!4362806 b!4362528)))

(assert (=> bs!635727 (= (= (toList!3002 lt!1574079) (Cons!48983 (h!54546 (toList!3002 lt!1574079)) (t!356027 (toList!3002 lt!1574079)))) (= lambda!141844 lambda!141810))))

(assert (=> b!4362806 true))

(declare-fun bs!635728 () Bool)

(declare-fun b!4362807 () Bool)

(assert (= bs!635728 (and b!4362807 b!4362444)))

(declare-fun lambda!141845 () Int)

(assert (=> bs!635728 (= lambda!141845 lambda!141796)))

(declare-fun bs!635730 () Bool)

(assert (= bs!635730 (and b!4362807 b!4362531)))

(assert (=> bs!635730 (= lambda!141845 lambda!141812)))

(declare-fun bs!635731 () Bool)

(assert (= bs!635731 (and b!4362807 b!4362649)))

(assert (=> bs!635731 (= lambda!141845 lambda!141822)))

(declare-fun d!1291016 () Bool)

(declare-fun e!2715183 () Bool)

(assert (=> d!1291016 e!2715183))

(declare-fun res!1793943 () Bool)

(assert (=> d!1291016 (=> (not res!1793943) (not e!2715183))))

(declare-fun lt!1575123 () List!49110)

(assert (=> d!1291016 (= res!1793943 (noDuplicate!608 lt!1575123))))

(assert (=> d!1291016 (= lt!1575123 (getKeysList!138 (toList!3002 lt!1574079)))))

(assert (=> d!1291016 (= (keys!16560 lt!1574079) lt!1575123)))

(declare-fun b!4362805 () Bool)

(declare-fun res!1793944 () Bool)

(assert (=> b!4362805 (=> (not res!1793944) (not e!2715183))))

(assert (=> b!4362805 (= res!1793944 (= (length!72 lt!1575123) (length!73 (toList!3002 lt!1574079))))))

(declare-fun res!1793942 () Bool)

(assert (=> b!4362806 (=> (not res!1793942) (not e!2715183))))

(assert (=> b!4362806 (= res!1793942 (forall!9160 lt!1575123 lambda!141844))))

(assert (=> b!4362807 (= e!2715183 (= (content!7751 lt!1575123) (content!7751 (map!10659 (toList!3002 lt!1574079) lambda!141845))))))

(assert (= (and d!1291016 res!1793943) b!4362805))

(assert (= (and b!4362805 res!1793944) b!4362806))

(assert (= (and b!4362806 res!1793942) b!4362807))

(declare-fun m!4982845 () Bool)

(assert (=> d!1291016 m!4982845))

(assert (=> d!1291016 m!4980617))

(declare-fun m!4982847 () Bool)

(assert (=> b!4362805 m!4982847))

(assert (=> b!4362805 m!4982251))

(declare-fun m!4982849 () Bool)

(assert (=> b!4362806 m!4982849))

(declare-fun m!4982851 () Bool)

(assert (=> b!4362807 m!4982851))

(declare-fun m!4982853 () Bool)

(assert (=> b!4362807 m!4982853))

(assert (=> b!4362807 m!4982853))

(declare-fun m!4982855 () Bool)

(assert (=> b!4362807 m!4982855))

(assert (=> b!4361700 d!1291016))

(declare-fun bs!635732 () Bool)

(declare-fun b!4362819 () Bool)

(assert (= bs!635732 (and b!4362819 b!4361789)))

(declare-fun lambda!141846 () Int)

(assert (=> bs!635732 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574405) (= lambda!141846 lambda!141720))))

(declare-fun bs!635733 () Bool)

(assert (= bs!635733 (and b!4362819 b!4362673)))

(assert (=> bs!635733 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1575022) (= lambda!141846 lambda!141826))))

(assert (=> bs!635732 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574079) (= lambda!141846 lambda!141719))))

(declare-fun bs!635734 () Bool)

(assert (= bs!635734 (and b!4362819 d!1290518)))

(assert (=> bs!635734 (not (= lambda!141846 lambda!141737))))

(declare-fun bs!635735 () Bool)

(assert (= bs!635735 (and b!4362819 b!4362144)))

(assert (=> bs!635735 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141846 lambda!141760))))

(declare-fun bs!635736 () Bool)

(assert (= bs!635736 (and b!4362819 b!4361802)))

(assert (=> bs!635736 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574426) (= lambda!141846 lambda!141724))))

(declare-fun bs!635737 () Bool)

(assert (= bs!635737 (and b!4362819 d!1290638)))

(assert (=> bs!635737 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574661) (= lambda!141846 lambda!141763))))

(assert (=> bs!635733 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141846 lambda!141824))))

(declare-fun bs!635738 () Bool)

(assert (= bs!635738 (and b!4362819 b!4361792)))

(assert (=> bs!635738 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574079) (= lambda!141846 lambda!141718))))

(declare-fun bs!635739 () Bool)

(assert (= bs!635739 (and b!4362819 b!4362141)))

(assert (=> bs!635739 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574649) (= lambda!141846 lambda!141762))))

(assert (=> bs!635736 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574071) (= lambda!141846 lambda!141723))))

(declare-fun bs!635740 () Bool)

(assert (= bs!635740 (and b!4362819 d!1290942)))

(assert (=> bs!635740 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574426) (= lambda!141846 lambda!141839))))

(declare-fun bs!635741 () Bool)

(assert (= bs!635741 (and b!4362819 d!1290916)))

(assert (=> bs!635741 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1575034) (= lambda!141846 lambda!141830))))

(declare-fun bs!635742 () Bool)

(assert (= bs!635742 (and b!4362819 d!1290468)))

(assert (=> bs!635742 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574438) (= lambda!141846 lambda!141725))))

(declare-fun bs!635743 () Bool)

(assert (= bs!635743 (and b!4362819 b!4362676)))

(assert (=> bs!635743 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141846 lambda!141823))))

(declare-fun bs!635744 () Bool)

(assert (= bs!635744 (and b!4362819 d!1290408)))

(assert (=> bs!635744 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574417) (= lambda!141846 lambda!141721))))

(declare-fun bs!635745 () Bool)

(assert (= bs!635745 (and b!4362819 b!4361805)))

(assert (=> bs!635745 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574071) (= lambda!141846 lambda!141722))))

(assert (=> bs!635739 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141846 lambda!141761))))

(assert (=> b!4362819 true))

(declare-fun bs!635746 () Bool)

(declare-fun b!4362816 () Bool)

(assert (= bs!635746 (and b!4362816 b!4361789)))

(declare-fun lambda!141847 () Int)

(assert (=> bs!635746 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574405) (= lambda!141847 lambda!141720))))

(declare-fun bs!635747 () Bool)

(assert (= bs!635747 (and b!4362816 b!4362673)))

(assert (=> bs!635747 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1575022) (= lambda!141847 lambda!141826))))

(assert (=> bs!635746 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574079) (= lambda!141847 lambda!141719))))

(declare-fun bs!635748 () Bool)

(assert (= bs!635748 (and b!4362816 d!1290518)))

(assert (=> bs!635748 (not (= lambda!141847 lambda!141737))))

(declare-fun bs!635749 () Bool)

(assert (= bs!635749 (and b!4362816 b!4362144)))

(assert (=> bs!635749 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141847 lambda!141760))))

(declare-fun bs!635750 () Bool)

(assert (= bs!635750 (and b!4362816 b!4361802)))

(assert (=> bs!635750 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574426) (= lambda!141847 lambda!141724))))

(declare-fun bs!635751 () Bool)

(assert (= bs!635751 (and b!4362816 b!4362819)))

(assert (=> bs!635751 (= lambda!141847 lambda!141846)))

(declare-fun bs!635752 () Bool)

(assert (= bs!635752 (and b!4362816 d!1290638)))

(assert (=> bs!635752 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574661) (= lambda!141847 lambda!141763))))

(assert (=> bs!635747 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141847 lambda!141824))))

(declare-fun bs!635753 () Bool)

(assert (= bs!635753 (and b!4362816 b!4361792)))

(assert (=> bs!635753 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574079) (= lambda!141847 lambda!141718))))

(declare-fun bs!635754 () Bool)

(assert (= bs!635754 (and b!4362816 b!4362141)))

(assert (=> bs!635754 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574649) (= lambda!141847 lambda!141762))))

(assert (=> bs!635750 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574071) (= lambda!141847 lambda!141723))))

(declare-fun bs!635755 () Bool)

(assert (= bs!635755 (and b!4362816 d!1290942)))

(assert (=> bs!635755 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574426) (= lambda!141847 lambda!141839))))

(declare-fun bs!635756 () Bool)

(assert (= bs!635756 (and b!4362816 d!1290916)))

(assert (=> bs!635756 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1575034) (= lambda!141847 lambda!141830))))

(declare-fun bs!635757 () Bool)

(assert (= bs!635757 (and b!4362816 d!1290468)))

(assert (=> bs!635757 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574438) (= lambda!141847 lambda!141725))))

(declare-fun bs!635758 () Bool)

(assert (= bs!635758 (and b!4362816 b!4362676)))

(assert (=> bs!635758 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141847 lambda!141823))))

(declare-fun bs!635759 () Bool)

(assert (= bs!635759 (and b!4362816 d!1290408)))

(assert (=> bs!635759 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574417) (= lambda!141847 lambda!141721))))

(declare-fun bs!635760 () Bool)

(assert (= bs!635760 (and b!4362816 b!4361805)))

(assert (=> bs!635760 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1574071) (= lambda!141847 lambda!141722))))

(assert (=> bs!635754 (= (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141847 lambda!141761))))

(assert (=> b!4362816 true))

(declare-fun lt!1575125 () ListMap!2245)

(declare-fun lambda!141848 () Int)

(assert (=> bs!635746 (= (= lt!1575125 lt!1574405) (= lambda!141848 lambda!141720))))

(assert (=> bs!635747 (= (= lt!1575125 lt!1575022) (= lambda!141848 lambda!141826))))

(assert (=> bs!635746 (= (= lt!1575125 lt!1574079) (= lambda!141848 lambda!141719))))

(assert (=> bs!635748 (not (= lambda!141848 lambda!141737))))

(assert (=> bs!635749 (= (= lt!1575125 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141848 lambda!141760))))

(assert (=> bs!635750 (= (= lt!1575125 lt!1574426) (= lambda!141848 lambda!141724))))

(assert (=> bs!635751 (= (= lt!1575125 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141848 lambda!141846))))

(assert (=> bs!635752 (= (= lt!1575125 lt!1574661) (= lambda!141848 lambda!141763))))

(assert (=> bs!635747 (= (= lt!1575125 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141848 lambda!141824))))

(assert (=> bs!635753 (= (= lt!1575125 lt!1574079) (= lambda!141848 lambda!141718))))

(assert (=> bs!635754 (= (= lt!1575125 lt!1574649) (= lambda!141848 lambda!141762))))

(assert (=> bs!635750 (= (= lt!1575125 lt!1574071) (= lambda!141848 lambda!141723))))

(assert (=> bs!635755 (= (= lt!1575125 lt!1574426) (= lambda!141848 lambda!141839))))

(assert (=> bs!635756 (= (= lt!1575125 lt!1575034) (= lambda!141848 lambda!141830))))

(assert (=> bs!635757 (= (= lt!1575125 lt!1574438) (= lambda!141848 lambda!141725))))

(assert (=> bs!635758 (= (= lt!1575125 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141848 lambda!141823))))

(assert (=> bs!635759 (= (= lt!1575125 lt!1574417) (= lambda!141848 lambda!141721))))

(assert (=> bs!635760 (= (= lt!1575125 lt!1574071) (= lambda!141848 lambda!141722))))

(assert (=> bs!635754 (= (= lt!1575125 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141848 lambda!141761))))

(assert (=> b!4362816 (= (= lt!1575125 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141848 lambda!141847))))

(assert (=> b!4362816 true))

(declare-fun bs!635779 () Bool)

(declare-fun d!1291022 () Bool)

(assert (= bs!635779 (and d!1291022 b!4361789)))

(declare-fun lambda!141849 () Int)

(declare-fun lt!1575137 () ListMap!2245)

(assert (=> bs!635779 (= (= lt!1575137 lt!1574405) (= lambda!141849 lambda!141720))))

(declare-fun bs!635781 () Bool)

(assert (= bs!635781 (and d!1291022 b!4362673)))

(assert (=> bs!635781 (= (= lt!1575137 lt!1575022) (= lambda!141849 lambda!141826))))

(assert (=> bs!635779 (= (= lt!1575137 lt!1574079) (= lambda!141849 lambda!141719))))

(declare-fun bs!635784 () Bool)

(assert (= bs!635784 (and d!1291022 d!1290518)))

(assert (=> bs!635784 (not (= lambda!141849 lambda!141737))))

(declare-fun bs!635786 () Bool)

(assert (= bs!635786 (and d!1291022 b!4362144)))

(assert (=> bs!635786 (= (= lt!1575137 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141849 lambda!141760))))

(declare-fun bs!635788 () Bool)

(assert (= bs!635788 (and d!1291022 b!4362819)))

(assert (=> bs!635788 (= (= lt!1575137 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141849 lambda!141846))))

(declare-fun bs!635789 () Bool)

(assert (= bs!635789 (and d!1291022 d!1290638)))

(assert (=> bs!635789 (= (= lt!1575137 lt!1574661) (= lambda!141849 lambda!141763))))

(assert (=> bs!635781 (= (= lt!1575137 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141849 lambda!141824))))

(declare-fun bs!635790 () Bool)

(assert (= bs!635790 (and d!1291022 b!4361792)))

(assert (=> bs!635790 (= (= lt!1575137 lt!1574079) (= lambda!141849 lambda!141718))))

(declare-fun bs!635791 () Bool)

(assert (= bs!635791 (and d!1291022 b!4362141)))

(assert (=> bs!635791 (= (= lt!1575137 lt!1574649) (= lambda!141849 lambda!141762))))

(declare-fun bs!635792 () Bool)

(assert (= bs!635792 (and d!1291022 b!4361802)))

(assert (=> bs!635792 (= (= lt!1575137 lt!1574071) (= lambda!141849 lambda!141723))))

(declare-fun bs!635793 () Bool)

(assert (= bs!635793 (and d!1291022 d!1290942)))

(assert (=> bs!635793 (= (= lt!1575137 lt!1574426) (= lambda!141849 lambda!141839))))

(declare-fun bs!635794 () Bool)

(assert (= bs!635794 (and d!1291022 d!1290916)))

(assert (=> bs!635794 (= (= lt!1575137 lt!1575034) (= lambda!141849 lambda!141830))))

(declare-fun bs!635795 () Bool)

(assert (= bs!635795 (and d!1291022 d!1290468)))

(assert (=> bs!635795 (= (= lt!1575137 lt!1574438) (= lambda!141849 lambda!141725))))

(assert (=> bs!635792 (= (= lt!1575137 lt!1574426) (= lambda!141849 lambda!141724))))

(declare-fun bs!635796 () Bool)

(assert (= bs!635796 (and d!1291022 b!4362816)))

(assert (=> bs!635796 (= (= lt!1575137 lt!1575125) (= lambda!141849 lambda!141848))))

(declare-fun bs!635797 () Bool)

(assert (= bs!635797 (and d!1291022 b!4362676)))

(assert (=> bs!635797 (= (= lt!1575137 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141849 lambda!141823))))

(declare-fun bs!635798 () Bool)

(assert (= bs!635798 (and d!1291022 d!1290408)))

(assert (=> bs!635798 (= (= lt!1575137 lt!1574417) (= lambda!141849 lambda!141721))))

(declare-fun bs!635799 () Bool)

(assert (= bs!635799 (and d!1291022 b!4361805)))

(assert (=> bs!635799 (= (= lt!1575137 lt!1574071) (= lambda!141849 lambda!141722))))

(assert (=> bs!635791 (= (= lt!1575137 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141849 lambda!141761))))

(assert (=> bs!635796 (= (= lt!1575137 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141849 lambda!141847))))

(assert (=> d!1291022 true))

(declare-fun e!2715191 () Bool)

(assert (=> d!1291022 e!2715191))

(declare-fun res!1793950 () Bool)

(assert (=> d!1291022 (=> (not res!1793950) (not e!2715191))))

(assert (=> d!1291022 (= res!1793950 (forall!9158 (_2!27498 (h!54547 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lambda!141849))))

(declare-fun e!2715192 () ListMap!2245)

(assert (=> d!1291022 (= lt!1575137 e!2715192)))

(declare-fun c!741914 () Bool)

(assert (=> d!1291022 (= c!741914 ((_ is Nil!48983) (_2!27498 (h!54547 (toList!3001 (+!675 lt!1574068 lt!1574085))))))))

(assert (=> d!1291022 (noDuplicateKeys!509 (_2!27498 (h!54547 (toList!3001 (+!675 lt!1574068 lt!1574085)))))))

(assert (=> d!1291022 (= (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 (+!675 lt!1574068 lt!1574085)))) (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) lt!1575137)))

(assert (=> b!4362816 (= e!2715192 lt!1575125)))

(declare-fun lt!1575128 () ListMap!2245)

(assert (=> b!4362816 (= lt!1575128 (+!676 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) (h!54546 (_2!27498 (h!54547 (toList!3001 (+!675 lt!1574068 lt!1574085)))))))))

(assert (=> b!4362816 (= lt!1575125 (addToMapMapFromBucket!205 (t!356027 (_2!27498 (h!54547 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (+!676 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) (h!54546 (_2!27498 (h!54547 (toList!3001 (+!675 lt!1574068 lt!1574085))))))))))

(declare-fun lt!1575130 () Unit!72449)

(declare-fun call!303308 () Unit!72449)

(assert (=> b!4362816 (= lt!1575130 call!303308)))

(declare-fun call!303309 () Bool)

(assert (=> b!4362816 call!303309))

(declare-fun lt!1575138 () Unit!72449)

(assert (=> b!4362816 (= lt!1575138 lt!1575130)))

(declare-fun call!303310 () Bool)

(assert (=> b!4362816 call!303310))

(declare-fun lt!1575129 () Unit!72449)

(declare-fun Unit!72617 () Unit!72449)

(assert (=> b!4362816 (= lt!1575129 Unit!72617)))

(assert (=> b!4362816 (forall!9158 (t!356027 (_2!27498 (h!54547 (toList!3001 (+!675 lt!1574068 lt!1574085))))) lambda!141848)))

(declare-fun lt!1575135 () Unit!72449)

(declare-fun Unit!72618 () Unit!72449)

(assert (=> b!4362816 (= lt!1575135 Unit!72618)))

(declare-fun lt!1575126 () Unit!72449)

(declare-fun Unit!72619 () Unit!72449)

(assert (=> b!4362816 (= lt!1575126 Unit!72619)))

(declare-fun lt!1575124 () Unit!72449)

(assert (=> b!4362816 (= lt!1575124 (forallContained!1799 (toList!3002 lt!1575128) lambda!141848 (h!54546 (_2!27498 (h!54547 (toList!3001 (+!675 lt!1574068 lt!1574085)))))))))

(assert (=> b!4362816 (contains!11221 lt!1575128 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 (+!675 lt!1574068 lt!1574085)))))))))

(declare-fun lt!1575141 () Unit!72449)

(declare-fun Unit!72620 () Unit!72449)

(assert (=> b!4362816 (= lt!1575141 Unit!72620)))

(assert (=> b!4362816 (contains!11221 lt!1575125 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 (+!675 lt!1574068 lt!1574085)))))))))

(declare-fun lt!1575144 () Unit!72449)

(declare-fun Unit!72621 () Unit!72449)

(assert (=> b!4362816 (= lt!1575144 Unit!72621)))

(assert (=> b!4362816 (forall!9158 (_2!27498 (h!54547 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lambda!141848)))

(declare-fun lt!1575140 () Unit!72449)

(declare-fun Unit!72622 () Unit!72449)

(assert (=> b!4362816 (= lt!1575140 Unit!72622)))

(assert (=> b!4362816 (forall!9158 (toList!3002 lt!1575128) lambda!141848)))

(declare-fun lt!1575139 () Unit!72449)

(declare-fun Unit!72623 () Unit!72449)

(assert (=> b!4362816 (= lt!1575139 Unit!72623)))

(declare-fun lt!1575142 () Unit!72449)

(declare-fun Unit!72624 () Unit!72449)

(assert (=> b!4362816 (= lt!1575142 Unit!72624)))

(declare-fun lt!1575133 () Unit!72449)

(assert (=> b!4362816 (= lt!1575133 (addForallContainsKeyThenBeforeAdding!73 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1575125 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 (+!675 lt!1574068 lt!1574085)))))) (_2!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 (+!675 lt!1574068 lt!1574085))))))))))

(assert (=> b!4362816 (forall!9158 (toList!3002 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) lambda!141848)))

(declare-fun lt!1575127 () Unit!72449)

(assert (=> b!4362816 (= lt!1575127 lt!1575133)))

(assert (=> b!4362816 (forall!9158 (toList!3002 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) lambda!141848)))

(declare-fun lt!1575134 () Unit!72449)

(declare-fun Unit!72626 () Unit!72449)

(assert (=> b!4362816 (= lt!1575134 Unit!72626)))

(declare-fun res!1793951 () Bool)

(assert (=> b!4362816 (= res!1793951 (forall!9158 (_2!27498 (h!54547 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lambda!141848))))

(declare-fun e!2715190 () Bool)

(assert (=> b!4362816 (=> (not res!1793951) (not e!2715190))))

(assert (=> b!4362816 e!2715190))

(declare-fun lt!1575136 () Unit!72449)

(declare-fun Unit!72627 () Unit!72449)

(assert (=> b!4362816 (= lt!1575136 Unit!72627)))

(declare-fun b!4362817 () Bool)

(assert (=> b!4362817 (= e!2715190 (forall!9158 (toList!3002 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) lambda!141848))))

(declare-fun b!4362818 () Bool)

(assert (=> b!4362818 (= e!2715191 (invariantList!690 (toList!3002 lt!1575137)))))

(declare-fun bm!303303 () Bool)

(assert (=> bm!303303 (= call!303310 (forall!9158 (ite c!741914 (toList!3002 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (toList!3002 lt!1575128)) (ite c!741914 lambda!141846 lambda!141848)))))

(assert (=> b!4362819 (= e!2715192 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))))))

(declare-fun lt!1575131 () Unit!72449)

(assert (=> b!4362819 (= lt!1575131 call!303308)))

(assert (=> b!4362819 call!303309))

(declare-fun lt!1575143 () Unit!72449)

(assert (=> b!4362819 (= lt!1575143 lt!1575131)))

(assert (=> b!4362819 call!303310))

(declare-fun lt!1575132 () Unit!72449)

(declare-fun Unit!72628 () Unit!72449)

(assert (=> b!4362819 (= lt!1575132 Unit!72628)))

(declare-fun bm!303304 () Bool)

(assert (=> bm!303304 (= call!303309 (forall!9158 (toList!3002 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (ite c!741914 lambda!141846 lambda!141847)))))

(declare-fun bm!303305 () Bool)

(assert (=> bm!303305 (= call!303308 (lemmaContainsAllItsOwnKeys!73 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))))))

(declare-fun b!4362820 () Bool)

(declare-fun res!1793949 () Bool)

(assert (=> b!4362820 (=> (not res!1793949) (not e!2715191))))

(assert (=> b!4362820 (= res!1793949 (forall!9158 (toList!3002 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) lambda!141849))))

(assert (= (and d!1291022 c!741914) b!4362819))

(assert (= (and d!1291022 (not c!741914)) b!4362816))

(assert (= (and b!4362816 res!1793951) b!4362817))

(assert (= (or b!4362819 b!4362816) bm!303305))

(assert (= (or b!4362819 b!4362816) bm!303304))

(assert (= (or b!4362819 b!4362816) bm!303303))

(assert (= (and d!1291022 res!1793950) b!4362820))

(assert (= (and b!4362820 res!1793949) b!4362818))

(declare-fun m!4982911 () Bool)

(assert (=> b!4362818 m!4982911))

(declare-fun m!4982913 () Bool)

(assert (=> d!1291022 m!4982913))

(declare-fun m!4982915 () Bool)

(assert (=> d!1291022 m!4982915))

(assert (=> b!4362816 m!4980975))

(declare-fun m!4982917 () Bool)

(assert (=> b!4362816 m!4982917))

(declare-fun m!4982919 () Bool)

(assert (=> b!4362816 m!4982919))

(declare-fun m!4982921 () Bool)

(assert (=> b!4362816 m!4982921))

(declare-fun m!4982923 () Bool)

(assert (=> b!4362816 m!4982923))

(declare-fun m!4982925 () Bool)

(assert (=> b!4362816 m!4982925))

(declare-fun m!4982927 () Bool)

(assert (=> b!4362816 m!4982927))

(assert (=> b!4362816 m!4982919))

(declare-fun m!4982929 () Bool)

(assert (=> b!4362816 m!4982929))

(declare-fun m!4982931 () Bool)

(assert (=> b!4362816 m!4982931))

(assert (=> b!4362816 m!4980975))

(assert (=> b!4362816 m!4982929))

(declare-fun m!4982933 () Bool)

(assert (=> b!4362816 m!4982933))

(assert (=> b!4362816 m!4982933))

(declare-fun m!4982935 () Bool)

(assert (=> b!4362816 m!4982935))

(declare-fun m!4982937 () Bool)

(assert (=> b!4362820 m!4982937))

(assert (=> bm!303305 m!4980975))

(declare-fun m!4982939 () Bool)

(assert (=> bm!303305 m!4982939))

(declare-fun m!4982941 () Bool)

(assert (=> bm!303304 m!4982941))

(declare-fun m!4982943 () Bool)

(assert (=> bm!303303 m!4982943))

(assert (=> b!4362817 m!4982919))

(assert (=> b!4361811 d!1291022))

(declare-fun bs!635800 () Bool)

(declare-fun d!1291082 () Bool)

(assert (= bs!635800 (and d!1291082 d!1290478)))

(declare-fun lambda!141850 () Int)

(assert (=> bs!635800 (= lambda!141850 lambda!141727)))

(declare-fun bs!635801 () Bool)

(assert (= bs!635801 (and d!1291082 d!1290474)))

(assert (=> bs!635801 (= lambda!141850 lambda!141726)))

(declare-fun bs!635802 () Bool)

(assert (= bs!635802 (and d!1291082 start!422616)))

(assert (=> bs!635802 (= lambda!141850 lambda!141629)))

(declare-fun bs!635803 () Bool)

(assert (= bs!635803 (and d!1291082 d!1290712)))

(assert (=> bs!635803 (= lambda!141850 lambda!141769)))

(declare-fun bs!635804 () Bool)

(assert (= bs!635804 (and d!1291082 d!1290368)))

(assert (=> bs!635804 (= lambda!141850 lambda!141639)))

(declare-fun bs!635805 () Bool)

(assert (= bs!635805 (and d!1291082 d!1290396)))

(assert (=> bs!635805 (= lambda!141850 lambda!141642)))

(declare-fun bs!635806 () Bool)

(assert (= bs!635806 (and d!1291082 d!1290480)))

(assert (=> bs!635806 (= lambda!141850 lambda!141730)))

(declare-fun bs!635807 () Bool)

(assert (= bs!635807 (and d!1291082 d!1290490)))

(assert (=> bs!635807 (= lambda!141850 lambda!141731)))

(declare-fun bs!635808 () Bool)

(assert (= bs!635808 (and d!1291082 d!1290514)))

(assert (=> bs!635808 (not (= lambda!141850 lambda!141734))))

(declare-fun lt!1575146 () ListMap!2245)

(assert (=> d!1291082 (invariantList!690 (toList!3002 lt!1575146))))

(declare-fun e!2715206 () ListMap!2245)

(assert (=> d!1291082 (= lt!1575146 e!2715206)))

(declare-fun c!741915 () Bool)

(assert (=> d!1291082 (= c!741915 ((_ is Cons!48984) (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))))))

(assert (=> d!1291082 (forall!9156 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))) lambda!141850)))

(assert (=> d!1291082 (= (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))) lt!1575146)))

(declare-fun b!4362834 () Bool)

(assert (=> b!4362834 (= e!2715206 (addToMapMapFromBucket!205 (_2!27498 (h!54547 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (extractMap!568 (t!356028 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085)))))))))

(declare-fun b!4362835 () Bool)

(assert (=> b!4362835 (= e!2715206 (ListMap!2246 Nil!48983))))

(assert (= (and d!1291082 c!741915) b!4362834))

(assert (= (and d!1291082 (not c!741915)) b!4362835))

(declare-fun m!4982945 () Bool)

(assert (=> d!1291082 m!4982945))

(declare-fun m!4982947 () Bool)

(assert (=> d!1291082 m!4982947))

(declare-fun m!4982949 () Bool)

(assert (=> b!4362834 m!4982949))

(assert (=> b!4362834 m!4982949))

(declare-fun m!4982951 () Bool)

(assert (=> b!4362834 m!4982951))

(assert (=> b!4361811 d!1291082))

(declare-fun d!1291084 () Bool)

(declare-fun res!1793962 () Bool)

(declare-fun e!2715207 () Bool)

(assert (=> d!1291084 (=> res!1793962 e!2715207)))

(assert (=> d!1291084 (= res!1793962 (not ((_ is Cons!48983) (_2!27498 lt!1574086))))))

(assert (=> d!1291084 (= (noDuplicateKeys!509 (_2!27498 lt!1574086)) e!2715207)))

(declare-fun b!4362836 () Bool)

(declare-fun e!2715208 () Bool)

(assert (=> b!4362836 (= e!2715207 e!2715208)))

(declare-fun res!1793963 () Bool)

(assert (=> b!4362836 (=> (not res!1793963) (not e!2715208))))

(assert (=> b!4362836 (= res!1793963 (not (containsKey!734 (t!356027 (_2!27498 lt!1574086)) (_1!27497 (h!54546 (_2!27498 lt!1574086))))))))

(declare-fun b!4362837 () Bool)

(assert (=> b!4362837 (= e!2715208 (noDuplicateKeys!509 (t!356027 (_2!27498 lt!1574086))))))

(assert (= (and d!1291084 (not res!1793962)) b!4362836))

(assert (= (and b!4362836 res!1793963) b!4362837))

(declare-fun m!4982953 () Bool)

(assert (=> b!4362836 m!4982953))

(declare-fun m!4982955 () Bool)

(assert (=> b!4362837 m!4982955))

(assert (=> bs!634983 d!1291084))

(declare-fun d!1291086 () Bool)

(declare-fun lt!1575147 () Bool)

(assert (=> d!1291086 (= lt!1575147 (select (content!7751 e!2714507) key!3918))))

(declare-fun e!2715210 () Bool)

(assert (=> d!1291086 (= lt!1575147 e!2715210)))

(declare-fun res!1793964 () Bool)

(assert (=> d!1291086 (=> (not res!1793964) (not e!2715210))))

(assert (=> d!1291086 (= res!1793964 ((_ is Cons!48986) e!2714507))))

(assert (=> d!1291086 (= (contains!11225 e!2714507 key!3918) lt!1575147)))

(declare-fun b!4362838 () Bool)

(declare-fun e!2715209 () Bool)

(assert (=> b!4362838 (= e!2715210 e!2715209)))

(declare-fun res!1793965 () Bool)

(assert (=> b!4362838 (=> res!1793965 e!2715209)))

(assert (=> b!4362838 (= res!1793965 (= (h!54551 e!2714507) key!3918))))

(declare-fun b!4362839 () Bool)

(assert (=> b!4362839 (= e!2715209 (contains!11225 (t!356030 e!2714507) key!3918))))

(assert (= (and d!1291086 res!1793964) b!4362838))

(assert (= (and b!4362838 (not res!1793965)) b!4362839))

(declare-fun m!4982957 () Bool)

(assert (=> d!1291086 m!4982957))

(declare-fun m!4982959 () Bool)

(assert (=> d!1291086 m!4982959))

(declare-fun m!4982961 () Bool)

(assert (=> b!4362839 m!4982961))

(assert (=> bm!303179 d!1291086))

(declare-fun d!1291088 () Bool)

(declare-fun c!741916 () Bool)

(assert (=> d!1291088 (= c!741916 ((_ is Nil!48983) (toList!3002 lt!1574076)))))

(declare-fun e!2715211 () (InoxSet tuple2!48406))

(assert (=> d!1291088 (= (content!7748 (toList!3002 lt!1574076)) e!2715211)))

(declare-fun b!4362840 () Bool)

(assert (=> b!4362840 (= e!2715211 ((as const (Array tuple2!48406 Bool)) false))))

(declare-fun b!4362841 () Bool)

(assert (=> b!4362841 (= e!2715211 ((_ map or) (store ((as const (Array tuple2!48406 Bool)) false) (h!54546 (toList!3002 lt!1574076)) true) (content!7748 (t!356027 (toList!3002 lt!1574076)))))))

(assert (= (and d!1291088 c!741916) b!4362840))

(assert (= (and d!1291088 (not c!741916)) b!4362841))

(declare-fun m!4982963 () Bool)

(assert (=> b!4362841 m!4982963))

(declare-fun m!4982965 () Bool)

(assert (=> b!4362841 m!4982965))

(assert (=> d!1290392 d!1291088))

(declare-fun d!1291090 () Bool)

(declare-fun c!741917 () Bool)

(assert (=> d!1291090 (= c!741917 ((_ is Nil!48983) (toList!3002 lt!1574067)))))

(declare-fun e!2715212 () (InoxSet tuple2!48406))

(assert (=> d!1291090 (= (content!7748 (toList!3002 lt!1574067)) e!2715212)))

(declare-fun b!4362842 () Bool)

(assert (=> b!4362842 (= e!2715212 ((as const (Array tuple2!48406 Bool)) false))))

(declare-fun b!4362843 () Bool)

(assert (=> b!4362843 (= e!2715212 ((_ map or) (store ((as const (Array tuple2!48406 Bool)) false) (h!54546 (toList!3002 lt!1574067)) true) (content!7748 (t!356027 (toList!3002 lt!1574067)))))))

(assert (= (and d!1291090 c!741917) b!4362842))

(assert (= (and d!1291090 (not c!741917)) b!4362843))

(declare-fun m!4982967 () Bool)

(assert (=> b!4362843 m!4982967))

(declare-fun m!4982969 () Bool)

(assert (=> b!4362843 m!4982969))

(assert (=> d!1290392 d!1291090))

(declare-fun bs!635809 () Bool)

(declare-fun b!4362847 () Bool)

(assert (= bs!635809 (and b!4362847 d!1291022)))

(declare-fun lambda!141851 () Int)

(assert (=> bs!635809 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1575137) (= lambda!141851 lambda!141849))))

(declare-fun bs!635810 () Bool)

(assert (= bs!635810 (and b!4362847 b!4361789)))

(assert (=> bs!635810 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574405) (= lambda!141851 lambda!141720))))

(declare-fun bs!635811 () Bool)

(assert (= bs!635811 (and b!4362847 b!4362673)))

(assert (=> bs!635811 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1575022) (= lambda!141851 lambda!141826))))

(assert (=> bs!635810 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574079) (= lambda!141851 lambda!141719))))

(declare-fun bs!635812 () Bool)

(assert (= bs!635812 (and b!4362847 d!1290518)))

(assert (=> bs!635812 (not (= lambda!141851 lambda!141737))))

(declare-fun bs!635813 () Bool)

(assert (= bs!635813 (and b!4362847 b!4362144)))

(assert (=> bs!635813 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141851 lambda!141760))))

(declare-fun bs!635814 () Bool)

(assert (= bs!635814 (and b!4362847 b!4362819)))

(assert (=> bs!635814 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141851 lambda!141846))))

(declare-fun bs!635815 () Bool)

(assert (= bs!635815 (and b!4362847 d!1290638)))

(assert (=> bs!635815 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574661) (= lambda!141851 lambda!141763))))

(assert (=> bs!635811 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141851 lambda!141824))))

(declare-fun bs!635816 () Bool)

(assert (= bs!635816 (and b!4362847 b!4361792)))

(assert (=> bs!635816 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574079) (= lambda!141851 lambda!141718))))

(declare-fun bs!635817 () Bool)

(assert (= bs!635817 (and b!4362847 b!4362141)))

(assert (=> bs!635817 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574649) (= lambda!141851 lambda!141762))))

(declare-fun bs!635818 () Bool)

(assert (= bs!635818 (and b!4362847 b!4361802)))

(assert (=> bs!635818 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574071) (= lambda!141851 lambda!141723))))

(declare-fun bs!635819 () Bool)

(assert (= bs!635819 (and b!4362847 d!1290942)))

(assert (=> bs!635819 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574426) (= lambda!141851 lambda!141839))))

(declare-fun bs!635820 () Bool)

(assert (= bs!635820 (and b!4362847 d!1290916)))

(assert (=> bs!635820 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1575034) (= lambda!141851 lambda!141830))))

(declare-fun bs!635821 () Bool)

(assert (= bs!635821 (and b!4362847 d!1290468)))

(assert (=> bs!635821 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574438) (= lambda!141851 lambda!141725))))

(assert (=> bs!635818 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574426) (= lambda!141851 lambda!141724))))

(declare-fun bs!635822 () Bool)

(assert (= bs!635822 (and b!4362847 b!4362816)))

(assert (=> bs!635822 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1575125) (= lambda!141851 lambda!141848))))

(declare-fun bs!635823 () Bool)

(assert (= bs!635823 (and b!4362847 b!4362676)))

(assert (=> bs!635823 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141851 lambda!141823))))

(declare-fun bs!635824 () Bool)

(assert (= bs!635824 (and b!4362847 d!1290408)))

(assert (=> bs!635824 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574417) (= lambda!141851 lambda!141721))))

(declare-fun bs!635825 () Bool)

(assert (= bs!635825 (and b!4362847 b!4361805)))

(assert (=> bs!635825 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574071) (= lambda!141851 lambda!141722))))

(assert (=> bs!635817 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141851 lambda!141761))))

(assert (=> bs!635822 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141851 lambda!141847))))

(assert (=> b!4362847 true))

(declare-fun bs!635826 () Bool)

(declare-fun b!4362844 () Bool)

(assert (= bs!635826 (and b!4362844 b!4362847)))

(declare-fun lambda!141852 () Int)

(assert (=> bs!635826 (= lambda!141852 lambda!141851)))

(declare-fun bs!635827 () Bool)

(assert (= bs!635827 (and b!4362844 d!1291022)))

(assert (=> bs!635827 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1575137) (= lambda!141852 lambda!141849))))

(declare-fun bs!635828 () Bool)

(assert (= bs!635828 (and b!4362844 b!4361789)))

(assert (=> bs!635828 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574405) (= lambda!141852 lambda!141720))))

(declare-fun bs!635829 () Bool)

(assert (= bs!635829 (and b!4362844 b!4362673)))

(assert (=> bs!635829 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1575022) (= lambda!141852 lambda!141826))))

(assert (=> bs!635828 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574079) (= lambda!141852 lambda!141719))))

(declare-fun bs!635830 () Bool)

(assert (= bs!635830 (and b!4362844 d!1290518)))

(assert (=> bs!635830 (not (= lambda!141852 lambda!141737))))

(declare-fun bs!635831 () Bool)

(assert (= bs!635831 (and b!4362844 b!4362144)))

(assert (=> bs!635831 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141852 lambda!141760))))

(declare-fun bs!635832 () Bool)

(assert (= bs!635832 (and b!4362844 b!4362819)))

(assert (=> bs!635832 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141852 lambda!141846))))

(declare-fun bs!635833 () Bool)

(assert (= bs!635833 (and b!4362844 d!1290638)))

(assert (=> bs!635833 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574661) (= lambda!141852 lambda!141763))))

(assert (=> bs!635829 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141852 lambda!141824))))

(declare-fun bs!635834 () Bool)

(assert (= bs!635834 (and b!4362844 b!4361792)))

(assert (=> bs!635834 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574079) (= lambda!141852 lambda!141718))))

(declare-fun bs!635835 () Bool)

(assert (= bs!635835 (and b!4362844 b!4362141)))

(assert (=> bs!635835 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574649) (= lambda!141852 lambda!141762))))

(declare-fun bs!635836 () Bool)

(assert (= bs!635836 (and b!4362844 b!4361802)))

(assert (=> bs!635836 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574071) (= lambda!141852 lambda!141723))))

(declare-fun bs!635837 () Bool)

(assert (= bs!635837 (and b!4362844 d!1290942)))

(assert (=> bs!635837 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574426) (= lambda!141852 lambda!141839))))

(declare-fun bs!635838 () Bool)

(assert (= bs!635838 (and b!4362844 d!1290916)))

(assert (=> bs!635838 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1575034) (= lambda!141852 lambda!141830))))

(declare-fun bs!635839 () Bool)

(assert (= bs!635839 (and b!4362844 d!1290468)))

(assert (=> bs!635839 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574438) (= lambda!141852 lambda!141725))))

(assert (=> bs!635836 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574426) (= lambda!141852 lambda!141724))))

(declare-fun bs!635840 () Bool)

(assert (= bs!635840 (and b!4362844 b!4362816)))

(assert (=> bs!635840 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1575125) (= lambda!141852 lambda!141848))))

(declare-fun bs!635841 () Bool)

(assert (= bs!635841 (and b!4362844 b!4362676)))

(assert (=> bs!635841 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141852 lambda!141823))))

(declare-fun bs!635842 () Bool)

(assert (= bs!635842 (and b!4362844 d!1290408)))

(assert (=> bs!635842 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574417) (= lambda!141852 lambda!141721))))

(declare-fun bs!635843 () Bool)

(assert (= bs!635843 (and b!4362844 b!4361805)))

(assert (=> bs!635843 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1574071) (= lambda!141852 lambda!141722))))

(assert (=> bs!635835 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141852 lambda!141761))))

(assert (=> bs!635840 (= (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141852 lambda!141847))))

(assert (=> b!4362844 true))

(declare-fun lt!1575149 () ListMap!2245)

(declare-fun lambda!141853 () Int)

(assert (=> bs!635826 (= (= lt!1575149 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141853 lambda!141851))))

(assert (=> bs!635827 (= (= lt!1575149 lt!1575137) (= lambda!141853 lambda!141849))))

(assert (=> bs!635828 (= (= lt!1575149 lt!1574405) (= lambda!141853 lambda!141720))))

(assert (=> bs!635829 (= (= lt!1575149 lt!1575022) (= lambda!141853 lambda!141826))))

(assert (=> bs!635828 (= (= lt!1575149 lt!1574079) (= lambda!141853 lambda!141719))))

(assert (=> bs!635830 (not (= lambda!141853 lambda!141737))))

(assert (=> bs!635831 (= (= lt!1575149 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141853 lambda!141760))))

(assert (=> bs!635832 (= (= lt!1575149 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141853 lambda!141846))))

(assert (=> bs!635833 (= (= lt!1575149 lt!1574661) (= lambda!141853 lambda!141763))))

(assert (=> bs!635829 (= (= lt!1575149 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141853 lambda!141824))))

(assert (=> bs!635834 (= (= lt!1575149 lt!1574079) (= lambda!141853 lambda!141718))))

(assert (=> bs!635835 (= (= lt!1575149 lt!1574649) (= lambda!141853 lambda!141762))))

(assert (=> bs!635836 (= (= lt!1575149 lt!1574071) (= lambda!141853 lambda!141723))))

(assert (=> bs!635837 (= (= lt!1575149 lt!1574426) (= lambda!141853 lambda!141839))))

(assert (=> b!4362844 (= (= lt!1575149 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141853 lambda!141852))))

(assert (=> bs!635838 (= (= lt!1575149 lt!1575034) (= lambda!141853 lambda!141830))))

(assert (=> bs!635839 (= (= lt!1575149 lt!1574438) (= lambda!141853 lambda!141725))))

(assert (=> bs!635836 (= (= lt!1575149 lt!1574426) (= lambda!141853 lambda!141724))))

(assert (=> bs!635840 (= (= lt!1575149 lt!1575125) (= lambda!141853 lambda!141848))))

(assert (=> bs!635841 (= (= lt!1575149 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141853 lambda!141823))))

(assert (=> bs!635842 (= (= lt!1575149 lt!1574417) (= lambda!141853 lambda!141721))))

(assert (=> bs!635843 (= (= lt!1575149 lt!1574071) (= lambda!141853 lambda!141722))))

(assert (=> bs!635835 (= (= lt!1575149 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141853 lambda!141761))))

(assert (=> bs!635840 (= (= lt!1575149 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141853 lambda!141847))))

(assert (=> b!4362844 true))

(declare-fun bs!635844 () Bool)

(declare-fun d!1291092 () Bool)

(assert (= bs!635844 (and d!1291092 b!4362847)))

(declare-fun lt!1575161 () ListMap!2245)

(declare-fun lambda!141854 () Int)

(assert (=> bs!635844 (= (= lt!1575161 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141854 lambda!141851))))

(declare-fun bs!635845 () Bool)

(assert (= bs!635845 (and d!1291092 d!1291022)))

(assert (=> bs!635845 (= (= lt!1575161 lt!1575137) (= lambda!141854 lambda!141849))))

(declare-fun bs!635846 () Bool)

(assert (= bs!635846 (and d!1291092 b!4361789)))

(assert (=> bs!635846 (= (= lt!1575161 lt!1574405) (= lambda!141854 lambda!141720))))

(declare-fun bs!635847 () Bool)

(assert (= bs!635847 (and d!1291092 b!4362673)))

(assert (=> bs!635847 (= (= lt!1575161 lt!1575022) (= lambda!141854 lambda!141826))))

(assert (=> bs!635846 (= (= lt!1575161 lt!1574079) (= lambda!141854 lambda!141719))))

(declare-fun bs!635848 () Bool)

(assert (= bs!635848 (and d!1291092 d!1290518)))

(assert (=> bs!635848 (not (= lambda!141854 lambda!141737))))

(declare-fun bs!635849 () Bool)

(assert (= bs!635849 (and d!1291092 b!4362144)))

(assert (=> bs!635849 (= (= lt!1575161 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141854 lambda!141760))))

(declare-fun bs!635850 () Bool)

(assert (= bs!635850 (and d!1291092 b!4362844)))

(assert (=> bs!635850 (= (= lt!1575161 lt!1575149) (= lambda!141854 lambda!141853))))

(declare-fun bs!635851 () Bool)

(assert (= bs!635851 (and d!1291092 b!4362819)))

(assert (=> bs!635851 (= (= lt!1575161 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141854 lambda!141846))))

(declare-fun bs!635852 () Bool)

(assert (= bs!635852 (and d!1291092 d!1290638)))

(assert (=> bs!635852 (= (= lt!1575161 lt!1574661) (= lambda!141854 lambda!141763))))

(assert (=> bs!635847 (= (= lt!1575161 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141854 lambda!141824))))

(declare-fun bs!635853 () Bool)

(assert (= bs!635853 (and d!1291092 b!4361792)))

(assert (=> bs!635853 (= (= lt!1575161 lt!1574079) (= lambda!141854 lambda!141718))))

(declare-fun bs!635854 () Bool)

(assert (= bs!635854 (and d!1291092 b!4362141)))

(assert (=> bs!635854 (= (= lt!1575161 lt!1574649) (= lambda!141854 lambda!141762))))

(declare-fun bs!635855 () Bool)

(assert (= bs!635855 (and d!1291092 b!4361802)))

(assert (=> bs!635855 (= (= lt!1575161 lt!1574071) (= lambda!141854 lambda!141723))))

(declare-fun bs!635856 () Bool)

(assert (= bs!635856 (and d!1291092 d!1290942)))

(assert (=> bs!635856 (= (= lt!1575161 lt!1574426) (= lambda!141854 lambda!141839))))

(assert (=> bs!635850 (= (= lt!1575161 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141854 lambda!141852))))

(declare-fun bs!635857 () Bool)

(assert (= bs!635857 (and d!1291092 d!1290916)))

(assert (=> bs!635857 (= (= lt!1575161 lt!1575034) (= lambda!141854 lambda!141830))))

(declare-fun bs!635858 () Bool)

(assert (= bs!635858 (and d!1291092 d!1290468)))

(assert (=> bs!635858 (= (= lt!1575161 lt!1574438) (= lambda!141854 lambda!141725))))

(assert (=> bs!635855 (= (= lt!1575161 lt!1574426) (= lambda!141854 lambda!141724))))

(declare-fun bs!635859 () Bool)

(assert (= bs!635859 (and d!1291092 b!4362816)))

(assert (=> bs!635859 (= (= lt!1575161 lt!1575125) (= lambda!141854 lambda!141848))))

(declare-fun bs!635860 () Bool)

(assert (= bs!635860 (and d!1291092 b!4362676)))

(assert (=> bs!635860 (= (= lt!1575161 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141854 lambda!141823))))

(declare-fun bs!635861 () Bool)

(assert (= bs!635861 (and d!1291092 d!1290408)))

(assert (=> bs!635861 (= (= lt!1575161 lt!1574417) (= lambda!141854 lambda!141721))))

(declare-fun bs!635862 () Bool)

(assert (= bs!635862 (and d!1291092 b!4361805)))

(assert (=> bs!635862 (= (= lt!1575161 lt!1574071) (= lambda!141854 lambda!141722))))

(assert (=> bs!635854 (= (= lt!1575161 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141854 lambda!141761))))

(assert (=> bs!635859 (= (= lt!1575161 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141854 lambda!141847))))

(assert (=> d!1291092 true))

(declare-fun e!2715214 () Bool)

(assert (=> d!1291092 e!2715214))

(declare-fun res!1793967 () Bool)

(assert (=> d!1291092 (=> (not res!1793967) (not e!2715214))))

(assert (=> d!1291092 (= res!1793967 (forall!9158 (_2!27498 (h!54547 (t!356028 (toList!3001 lm!1707)))) lambda!141854))))

(declare-fun e!2715215 () ListMap!2245)

(assert (=> d!1291092 (= lt!1575161 e!2715215)))

(declare-fun c!741918 () Bool)

(assert (=> d!1291092 (= c!741918 ((_ is Nil!48983) (_2!27498 (h!54547 (t!356028 (toList!3001 lm!1707))))))))

(assert (=> d!1291092 (noDuplicateKeys!509 (_2!27498 (h!54547 (t!356028 (toList!3001 lm!1707)))))))

(assert (=> d!1291092 (= (addToMapMapFromBucket!205 (_2!27498 (h!54547 (t!356028 (toList!3001 lm!1707)))) (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) lt!1575161)))

(assert (=> b!4362844 (= e!2715215 lt!1575149)))

(declare-fun lt!1575152 () ListMap!2245)

(assert (=> b!4362844 (= lt!1575152 (+!676 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) (h!54546 (_2!27498 (h!54547 (t!356028 (toList!3001 lm!1707)))))))))

(assert (=> b!4362844 (= lt!1575149 (addToMapMapFromBucket!205 (t!356027 (_2!27498 (h!54547 (t!356028 (toList!3001 lm!1707))))) (+!676 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) (h!54546 (_2!27498 (h!54547 (t!356028 (toList!3001 lm!1707))))))))))

(declare-fun lt!1575154 () Unit!72449)

(declare-fun call!303311 () Unit!72449)

(assert (=> b!4362844 (= lt!1575154 call!303311)))

(declare-fun call!303312 () Bool)

(assert (=> b!4362844 call!303312))

(declare-fun lt!1575162 () Unit!72449)

(assert (=> b!4362844 (= lt!1575162 lt!1575154)))

(declare-fun call!303313 () Bool)

(assert (=> b!4362844 call!303313))

(declare-fun lt!1575153 () Unit!72449)

(declare-fun Unit!72641 () Unit!72449)

(assert (=> b!4362844 (= lt!1575153 Unit!72641)))

(assert (=> b!4362844 (forall!9158 (t!356027 (_2!27498 (h!54547 (t!356028 (toList!3001 lm!1707))))) lambda!141853)))

(declare-fun lt!1575159 () Unit!72449)

(declare-fun Unit!72642 () Unit!72449)

(assert (=> b!4362844 (= lt!1575159 Unit!72642)))

(declare-fun lt!1575150 () Unit!72449)

(declare-fun Unit!72643 () Unit!72449)

(assert (=> b!4362844 (= lt!1575150 Unit!72643)))

(declare-fun lt!1575148 () Unit!72449)

(assert (=> b!4362844 (= lt!1575148 (forallContained!1799 (toList!3002 lt!1575152) lambda!141853 (h!54546 (_2!27498 (h!54547 (t!356028 (toList!3001 lm!1707)))))))))

(assert (=> b!4362844 (contains!11221 lt!1575152 (_1!27497 (h!54546 (_2!27498 (h!54547 (t!356028 (toList!3001 lm!1707)))))))))

(declare-fun lt!1575165 () Unit!72449)

(declare-fun Unit!72644 () Unit!72449)

(assert (=> b!4362844 (= lt!1575165 Unit!72644)))

(assert (=> b!4362844 (contains!11221 lt!1575149 (_1!27497 (h!54546 (_2!27498 (h!54547 (t!356028 (toList!3001 lm!1707)))))))))

(declare-fun lt!1575168 () Unit!72449)

(declare-fun Unit!72645 () Unit!72449)

(assert (=> b!4362844 (= lt!1575168 Unit!72645)))

(assert (=> b!4362844 (forall!9158 (_2!27498 (h!54547 (t!356028 (toList!3001 lm!1707)))) lambda!141853)))

(declare-fun lt!1575164 () Unit!72449)

(declare-fun Unit!72646 () Unit!72449)

(assert (=> b!4362844 (= lt!1575164 Unit!72646)))

(assert (=> b!4362844 (forall!9158 (toList!3002 lt!1575152) lambda!141853)))

(declare-fun lt!1575163 () Unit!72449)

(declare-fun Unit!72647 () Unit!72449)

(assert (=> b!4362844 (= lt!1575163 Unit!72647)))

(declare-fun lt!1575166 () Unit!72449)

(declare-fun Unit!72648 () Unit!72449)

(assert (=> b!4362844 (= lt!1575166 Unit!72648)))

(declare-fun lt!1575157 () Unit!72449)

(assert (=> b!4362844 (= lt!1575157 (addForallContainsKeyThenBeforeAdding!73 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1575149 (_1!27497 (h!54546 (_2!27498 (h!54547 (t!356028 (toList!3001 lm!1707)))))) (_2!27497 (h!54546 (_2!27498 (h!54547 (t!356028 (toList!3001 lm!1707))))))))))

(assert (=> b!4362844 (forall!9158 (toList!3002 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) lambda!141853)))

(declare-fun lt!1575151 () Unit!72449)

(assert (=> b!4362844 (= lt!1575151 lt!1575157)))

(assert (=> b!4362844 (forall!9158 (toList!3002 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) lambda!141853)))

(declare-fun lt!1575158 () Unit!72449)

(declare-fun Unit!72649 () Unit!72449)

(assert (=> b!4362844 (= lt!1575158 Unit!72649)))

(declare-fun res!1793968 () Bool)

(assert (=> b!4362844 (= res!1793968 (forall!9158 (_2!27498 (h!54547 (t!356028 (toList!3001 lm!1707)))) lambda!141853))))

(declare-fun e!2715213 () Bool)

(assert (=> b!4362844 (=> (not res!1793968) (not e!2715213))))

(assert (=> b!4362844 e!2715213))

(declare-fun lt!1575160 () Unit!72449)

(declare-fun Unit!72650 () Unit!72449)

(assert (=> b!4362844 (= lt!1575160 Unit!72650)))

(declare-fun b!4362845 () Bool)

(assert (=> b!4362845 (= e!2715213 (forall!9158 (toList!3002 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) lambda!141853))))

(declare-fun b!4362846 () Bool)

(assert (=> b!4362846 (= e!2715214 (invariantList!690 (toList!3002 lt!1575161)))))

(declare-fun bm!303306 () Bool)

(assert (=> bm!303306 (= call!303313 (forall!9158 (ite c!741918 (toList!3002 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (toList!3002 lt!1575152)) (ite c!741918 lambda!141851 lambda!141853)))))

(assert (=> b!4362847 (= e!2715215 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))))))

(declare-fun lt!1575155 () Unit!72449)

(assert (=> b!4362847 (= lt!1575155 call!303311)))

(assert (=> b!4362847 call!303312))

(declare-fun lt!1575167 () Unit!72449)

(assert (=> b!4362847 (= lt!1575167 lt!1575155)))

(assert (=> b!4362847 call!303313))

(declare-fun lt!1575156 () Unit!72449)

(declare-fun Unit!72651 () Unit!72449)

(assert (=> b!4362847 (= lt!1575156 Unit!72651)))

(declare-fun bm!303307 () Bool)

(assert (=> bm!303307 (= call!303312 (forall!9158 (toList!3002 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (ite c!741918 lambda!141851 lambda!141852)))))

(declare-fun bm!303308 () Bool)

(assert (=> bm!303308 (= call!303311 (lemmaContainsAllItsOwnKeys!73 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))))))

(declare-fun b!4362848 () Bool)

(declare-fun res!1793966 () Bool)

(assert (=> b!4362848 (=> (not res!1793966) (not e!2715214))))

(assert (=> b!4362848 (= res!1793966 (forall!9158 (toList!3002 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) lambda!141854))))

(assert (= (and d!1291092 c!741918) b!4362847))

(assert (= (and d!1291092 (not c!741918)) b!4362844))

(assert (= (and b!4362844 res!1793968) b!4362845))

(assert (= (or b!4362847 b!4362844) bm!303308))

(assert (= (or b!4362847 b!4362844) bm!303307))

(assert (= (or b!4362847 b!4362844) bm!303306))

(assert (= (and d!1291092 res!1793967) b!4362848))

(assert (= (and b!4362848 res!1793966) b!4362846))

(declare-fun m!4982971 () Bool)

(assert (=> b!4362846 m!4982971))

(declare-fun m!4982973 () Bool)

(assert (=> d!1291092 m!4982973))

(declare-fun m!4982975 () Bool)

(assert (=> d!1291092 m!4982975))

(assert (=> b!4362844 m!4980955))

(declare-fun m!4982977 () Bool)

(assert (=> b!4362844 m!4982977))

(declare-fun m!4982979 () Bool)

(assert (=> b!4362844 m!4982979))

(declare-fun m!4982981 () Bool)

(assert (=> b!4362844 m!4982981))

(declare-fun m!4982983 () Bool)

(assert (=> b!4362844 m!4982983))

(declare-fun m!4982985 () Bool)

(assert (=> b!4362844 m!4982985))

(declare-fun m!4982987 () Bool)

(assert (=> b!4362844 m!4982987))

(assert (=> b!4362844 m!4982979))

(declare-fun m!4982989 () Bool)

(assert (=> b!4362844 m!4982989))

(declare-fun m!4982991 () Bool)

(assert (=> b!4362844 m!4982991))

(assert (=> b!4362844 m!4980955))

(assert (=> b!4362844 m!4982989))

(declare-fun m!4982993 () Bool)

(assert (=> b!4362844 m!4982993))

(assert (=> b!4362844 m!4982993))

(declare-fun m!4982995 () Bool)

(assert (=> b!4362844 m!4982995))

(declare-fun m!4982997 () Bool)

(assert (=> b!4362848 m!4982997))

(assert (=> bm!303308 m!4980955))

(declare-fun m!4982999 () Bool)

(assert (=> bm!303308 m!4982999))

(declare-fun m!4983001 () Bool)

(assert (=> bm!303307 m!4983001))

(declare-fun m!4983003 () Bool)

(assert (=> bm!303306 m!4983003))

(assert (=> b!4362845 m!4982979))

(assert (=> b!4361807 d!1291092))

(declare-fun bs!635863 () Bool)

(declare-fun d!1291094 () Bool)

(assert (= bs!635863 (and d!1291094 d!1290478)))

(declare-fun lambda!141855 () Int)

(assert (=> bs!635863 (= lambda!141855 lambda!141727)))

(declare-fun bs!635864 () Bool)

(assert (= bs!635864 (and d!1291094 start!422616)))

(assert (=> bs!635864 (= lambda!141855 lambda!141629)))

(declare-fun bs!635865 () Bool)

(assert (= bs!635865 (and d!1291094 d!1290712)))

(assert (=> bs!635865 (= lambda!141855 lambda!141769)))

(declare-fun bs!635866 () Bool)

(assert (= bs!635866 (and d!1291094 d!1290368)))

(assert (=> bs!635866 (= lambda!141855 lambda!141639)))

(declare-fun bs!635867 () Bool)

(assert (= bs!635867 (and d!1291094 d!1290396)))

(assert (=> bs!635867 (= lambda!141855 lambda!141642)))

(declare-fun bs!635868 () Bool)

(assert (= bs!635868 (and d!1291094 d!1290480)))

(assert (=> bs!635868 (= lambda!141855 lambda!141730)))

(declare-fun bs!635869 () Bool)

(assert (= bs!635869 (and d!1291094 d!1290474)))

(assert (=> bs!635869 (= lambda!141855 lambda!141726)))

(declare-fun bs!635870 () Bool)

(assert (= bs!635870 (and d!1291094 d!1291082)))

(assert (=> bs!635870 (= lambda!141855 lambda!141850)))

(declare-fun bs!635871 () Bool)

(assert (= bs!635871 (and d!1291094 d!1290490)))

(assert (=> bs!635871 (= lambda!141855 lambda!141731)))

(declare-fun bs!635872 () Bool)

(assert (= bs!635872 (and d!1291094 d!1290514)))

(assert (=> bs!635872 (not (= lambda!141855 lambda!141734))))

(declare-fun lt!1575169 () ListMap!2245)

(assert (=> d!1291094 (invariantList!690 (toList!3002 lt!1575169))))

(declare-fun e!2715216 () ListMap!2245)

(assert (=> d!1291094 (= lt!1575169 e!2715216)))

(declare-fun c!741919 () Bool)

(assert (=> d!1291094 (= c!741919 ((_ is Cons!48984) (t!356028 (t!356028 (toList!3001 lm!1707)))))))

(assert (=> d!1291094 (forall!9156 (t!356028 (t!356028 (toList!3001 lm!1707))) lambda!141855)))

(assert (=> d!1291094 (= (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707)))) lt!1575169)))

(declare-fun b!4362849 () Bool)

(assert (=> b!4362849 (= e!2715216 (addToMapMapFromBucket!205 (_2!27498 (h!54547 (t!356028 (t!356028 (toList!3001 lm!1707))))) (extractMap!568 (t!356028 (t!356028 (t!356028 (toList!3001 lm!1707)))))))))

(declare-fun b!4362850 () Bool)

(assert (=> b!4362850 (= e!2715216 (ListMap!2246 Nil!48983))))

(assert (= (and d!1291094 c!741919) b!4362849))

(assert (= (and d!1291094 (not c!741919)) b!4362850))

(declare-fun m!4983005 () Bool)

(assert (=> d!1291094 m!4983005))

(declare-fun m!4983007 () Bool)

(assert (=> d!1291094 m!4983007))

(declare-fun m!4983009 () Bool)

(assert (=> b!4362849 m!4983009))

(assert (=> b!4362849 m!4983009))

(declare-fun m!4983011 () Bool)

(assert (=> b!4362849 m!4983011))

(assert (=> b!4361807 d!1291094))

(declare-fun d!1291096 () Bool)

(assert (=> d!1291096 (= (invariantList!690 (toList!3002 lt!1574417)) (noDuplicatedKeys!123 (toList!3002 lt!1574417)))))

(declare-fun bs!635873 () Bool)

(assert (= bs!635873 d!1291096))

(declare-fun m!4983013 () Bool)

(assert (=> bs!635873 m!4983013))

(assert (=> b!4361791 d!1291096))

(declare-fun d!1291098 () Bool)

(assert (=> d!1291098 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574079) key!3918))))

(declare-fun lt!1575170 () Unit!72449)

(assert (=> d!1291098 (= lt!1575170 (choose!27050 (toList!3002 lt!1574079) key!3918))))

(assert (=> d!1291098 (invariantList!690 (toList!3002 lt!1574079))))

(assert (=> d!1291098 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!389 (toList!3002 lt!1574079) key!3918) lt!1575170)))

(declare-fun bs!635874 () Bool)

(assert (= bs!635874 d!1291098))

(assert (=> bs!635874 m!4980621))

(assert (=> bs!635874 m!4980621))

(assert (=> bs!635874 m!4980623))

(declare-fun m!4983015 () Bool)

(assert (=> bs!635874 m!4983015))

(assert (=> bs!635874 m!4982019))

(assert (=> b!4361703 d!1291098))

(assert (=> b!4361703 d!1290694))

(assert (=> b!4361703 d!1290696))

(declare-fun d!1291100 () Bool)

(assert (=> d!1291100 (contains!11225 (getKeysList!138 (toList!3002 lt!1574079)) key!3918)))

(declare-fun lt!1575171 () Unit!72449)

(assert (=> d!1291100 (= lt!1575171 (choose!27052 (toList!3002 lt!1574079) key!3918))))

(assert (=> d!1291100 (invariantList!690 (toList!3002 lt!1574079))))

(assert (=> d!1291100 (= (lemmaInListThenGetKeysListContains!135 (toList!3002 lt!1574079) key!3918) lt!1575171)))

(declare-fun bs!635875 () Bool)

(assert (= bs!635875 d!1291100))

(assert (=> bs!635875 m!4980617))

(assert (=> bs!635875 m!4980617))

(declare-fun m!4983017 () Bool)

(assert (=> bs!635875 m!4983017))

(declare-fun m!4983019 () Bool)

(assert (=> bs!635875 m!4983019))

(assert (=> bs!635875 m!4982019))

(assert (=> b!4361703 d!1291100))

(declare-fun d!1291102 () Bool)

(declare-fun c!741920 () Bool)

(assert (=> d!1291102 (= c!741920 ((_ is Nil!48983) (toList!3002 (+!676 lt!1574072 lt!1574080))))))

(declare-fun e!2715217 () (InoxSet tuple2!48406))

(assert (=> d!1291102 (= (content!7748 (toList!3002 (+!676 lt!1574072 lt!1574080))) e!2715217)))

(declare-fun b!4362851 () Bool)

(assert (=> b!4362851 (= e!2715217 ((as const (Array tuple2!48406 Bool)) false))))

(declare-fun b!4362852 () Bool)

(assert (=> b!4362852 (= e!2715217 ((_ map or) (store ((as const (Array tuple2!48406 Bool)) false) (h!54546 (toList!3002 (+!676 lt!1574072 lt!1574080))) true) (content!7748 (t!356027 (toList!3002 (+!676 lt!1574072 lt!1574080))))))))

(assert (= (and d!1291102 c!741920) b!4362851))

(assert (= (and d!1291102 (not c!741920)) b!4362852))

(declare-fun m!4983021 () Bool)

(assert (=> b!4362852 m!4983021))

(declare-fun m!4983023 () Bool)

(assert (=> b!4362852 m!4983023))

(assert (=> d!1290508 d!1291102))

(assert (=> d!1290508 d!1291090))

(declare-fun d!1291104 () Bool)

(declare-fun res!1793969 () Bool)

(declare-fun e!2715218 () Bool)

(assert (=> d!1291104 (=> res!1793969 e!2715218)))

(assert (=> d!1291104 (= res!1793969 (not ((_ is Cons!48983) (_2!27498 (h!54547 (toList!3001 lt!1574070))))))))

(assert (=> d!1291104 (= (noDuplicateKeys!509 (_2!27498 (h!54547 (toList!3001 lt!1574070)))) e!2715218)))

(declare-fun b!4362853 () Bool)

(declare-fun e!2715219 () Bool)

(assert (=> b!4362853 (= e!2715218 e!2715219)))

(declare-fun res!1793970 () Bool)

(assert (=> b!4362853 (=> (not res!1793970) (not e!2715219))))

(assert (=> b!4362853 (= res!1793970 (not (containsKey!734 (t!356027 (_2!27498 (h!54547 (toList!3001 lt!1574070)))) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lt!1574070))))))))))

(declare-fun b!4362854 () Bool)

(assert (=> b!4362854 (= e!2715219 (noDuplicateKeys!509 (t!356027 (_2!27498 (h!54547 (toList!3001 lt!1574070))))))))

(assert (= (and d!1291104 (not res!1793969)) b!4362853))

(assert (= (and b!4362853 res!1793970) b!4362854))

(declare-fun m!4983025 () Bool)

(assert (=> b!4362853 m!4983025))

(declare-fun m!4983027 () Bool)

(assert (=> b!4362854 m!4983027))

(assert (=> bs!634984 d!1291104))

(declare-fun d!1291106 () Bool)

(declare-fun res!1793971 () Bool)

(declare-fun e!2715220 () Bool)

(assert (=> d!1291106 (=> res!1793971 e!2715220)))

(assert (=> d!1291106 (= res!1793971 ((_ is Nil!48983) (toList!3002 lt!1574079)))))

(assert (=> d!1291106 (= (forall!9158 (toList!3002 lt!1574079) lambda!141721) e!2715220)))

(declare-fun b!4362855 () Bool)

(declare-fun e!2715221 () Bool)

(assert (=> b!4362855 (= e!2715220 e!2715221)))

(declare-fun res!1793972 () Bool)

(assert (=> b!4362855 (=> (not res!1793972) (not e!2715221))))

(assert (=> b!4362855 (= res!1793972 (dynLambda!20653 lambda!141721 (h!54546 (toList!3002 lt!1574079))))))

(declare-fun b!4362856 () Bool)

(assert (=> b!4362856 (= e!2715221 (forall!9158 (t!356027 (toList!3002 lt!1574079)) lambda!141721))))

(assert (= (and d!1291106 (not res!1793971)) b!4362855))

(assert (= (and b!4362855 res!1793972) b!4362856))

(declare-fun b_lambda!132041 () Bool)

(assert (=> (not b_lambda!132041) (not b!4362855)))

(declare-fun m!4983029 () Bool)

(assert (=> b!4362855 m!4983029))

(declare-fun m!4983031 () Bool)

(assert (=> b!4362856 m!4983031))

(assert (=> b!4361793 d!1291106))

(declare-fun d!1291108 () Bool)

(assert (=> d!1291108 (dynLambda!20651 lambda!141629 lt!1574086)))

(assert (=> d!1291108 true))

(declare-fun _$7!1489 () Unit!72449)

(assert (=> d!1291108 (= (choose!27042 (toList!3001 lm!1707) lambda!141629 lt!1574086) _$7!1489)))

(declare-fun b_lambda!132043 () Bool)

(assert (=> (not b_lambda!132043) (not d!1291108)))

(declare-fun bs!635876 () Bool)

(assert (= bs!635876 d!1291108))

(assert (=> bs!635876 m!4981057))

(assert (=> d!1290504 d!1291108))

(assert (=> d!1290504 d!1290352))

(assert (=> b!4361829 d!1290956))

(assert (=> b!4361829 d!1290894))

(declare-fun d!1291110 () Bool)

(assert (=> d!1291110 (eq!279 (+!676 lt!1574072 (tuple2!48407 key!3918 newValue!99)) (+!676 lt!1574075 (tuple2!48407 key!3918 newValue!99)))))

(assert (=> d!1291110 true))

(declare-fun _$65!1656 () Unit!72449)

(assert (=> d!1291110 (= (choose!27043 lt!1574072 lt!1574075 key!3918 newValue!99) _$65!1656)))

(declare-fun bs!635877 () Bool)

(assert (= bs!635877 d!1291110))

(assert (=> bs!635877 m!4981079))

(assert (=> bs!635877 m!4981081))

(assert (=> bs!635877 m!4981079))

(assert (=> bs!635877 m!4981081))

(assert (=> bs!635877 m!4981083))

(assert (=> d!1290512 d!1291110))

(declare-fun d!1291112 () Bool)

(declare-fun e!2715222 () Bool)

(assert (=> d!1291112 e!2715222))

(declare-fun res!1793974 () Bool)

(assert (=> d!1291112 (=> (not res!1793974) (not e!2715222))))

(declare-fun lt!1575175 () ListMap!2245)

(assert (=> d!1291112 (= res!1793974 (contains!11221 lt!1575175 (_1!27497 (tuple2!48407 key!3918 newValue!99))))))

(declare-fun lt!1575173 () List!49107)

(assert (=> d!1291112 (= lt!1575175 (ListMap!2246 lt!1575173))))

(declare-fun lt!1575172 () Unit!72449)

(declare-fun lt!1575174 () Unit!72449)

(assert (=> d!1291112 (= lt!1575172 lt!1575174)))

(assert (=> d!1291112 (= (getValueByKey!479 lt!1575173 (_1!27497 (tuple2!48407 key!3918 newValue!99))) (Some!10492 (_2!27497 (tuple2!48407 key!3918 newValue!99))))))

(assert (=> d!1291112 (= lt!1575174 (lemmaContainsTupThenGetReturnValue!252 lt!1575173 (_1!27497 (tuple2!48407 key!3918 newValue!99)) (_2!27497 (tuple2!48407 key!3918 newValue!99))))))

(assert (=> d!1291112 (= lt!1575173 (insertNoDuplicatedKeys!113 (toList!3002 lt!1574075) (_1!27497 (tuple2!48407 key!3918 newValue!99)) (_2!27497 (tuple2!48407 key!3918 newValue!99))))))

(assert (=> d!1291112 (= (+!676 lt!1574075 (tuple2!48407 key!3918 newValue!99)) lt!1575175)))

(declare-fun b!4362857 () Bool)

(declare-fun res!1793973 () Bool)

(assert (=> b!4362857 (=> (not res!1793973) (not e!2715222))))

(assert (=> b!4362857 (= res!1793973 (= (getValueByKey!479 (toList!3002 lt!1575175) (_1!27497 (tuple2!48407 key!3918 newValue!99))) (Some!10492 (_2!27497 (tuple2!48407 key!3918 newValue!99)))))))

(declare-fun b!4362858 () Bool)

(assert (=> b!4362858 (= e!2715222 (contains!11223 (toList!3002 lt!1575175) (tuple2!48407 key!3918 newValue!99)))))

(assert (= (and d!1291112 res!1793974) b!4362857))

(assert (= (and b!4362857 res!1793973) b!4362858))

(declare-fun m!4983033 () Bool)

(assert (=> d!1291112 m!4983033))

(declare-fun m!4983035 () Bool)

(assert (=> d!1291112 m!4983035))

(declare-fun m!4983037 () Bool)

(assert (=> d!1291112 m!4983037))

(declare-fun m!4983039 () Bool)

(assert (=> d!1291112 m!4983039))

(declare-fun m!4983041 () Bool)

(assert (=> b!4362857 m!4983041))

(declare-fun m!4983043 () Bool)

(assert (=> b!4362858 m!4983043))

(assert (=> d!1290512 d!1291112))

(declare-fun d!1291114 () Bool)

(assert (=> d!1291114 (= (eq!279 lt!1574072 lt!1574075) (= (content!7748 (toList!3002 lt!1574072)) (content!7748 (toList!3002 lt!1574075))))))

(declare-fun bs!635878 () Bool)

(assert (= bs!635878 d!1291114))

(assert (=> bs!635878 m!4980633))

(assert (=> bs!635878 m!4980631))

(assert (=> d!1290512 d!1291114))

(declare-fun d!1291116 () Bool)

(declare-fun e!2715223 () Bool)

(assert (=> d!1291116 e!2715223))

(declare-fun res!1793976 () Bool)

(assert (=> d!1291116 (=> (not res!1793976) (not e!2715223))))

(declare-fun lt!1575179 () ListMap!2245)

(assert (=> d!1291116 (= res!1793976 (contains!11221 lt!1575179 (_1!27497 (tuple2!48407 key!3918 newValue!99))))))

(declare-fun lt!1575177 () List!49107)

(assert (=> d!1291116 (= lt!1575179 (ListMap!2246 lt!1575177))))

(declare-fun lt!1575176 () Unit!72449)

(declare-fun lt!1575178 () Unit!72449)

(assert (=> d!1291116 (= lt!1575176 lt!1575178)))

(assert (=> d!1291116 (= (getValueByKey!479 lt!1575177 (_1!27497 (tuple2!48407 key!3918 newValue!99))) (Some!10492 (_2!27497 (tuple2!48407 key!3918 newValue!99))))))

(assert (=> d!1291116 (= lt!1575178 (lemmaContainsTupThenGetReturnValue!252 lt!1575177 (_1!27497 (tuple2!48407 key!3918 newValue!99)) (_2!27497 (tuple2!48407 key!3918 newValue!99))))))

(assert (=> d!1291116 (= lt!1575177 (insertNoDuplicatedKeys!113 (toList!3002 lt!1574072) (_1!27497 (tuple2!48407 key!3918 newValue!99)) (_2!27497 (tuple2!48407 key!3918 newValue!99))))))

(assert (=> d!1291116 (= (+!676 lt!1574072 (tuple2!48407 key!3918 newValue!99)) lt!1575179)))

(declare-fun b!4362859 () Bool)

(declare-fun res!1793975 () Bool)

(assert (=> b!4362859 (=> (not res!1793975) (not e!2715223))))

(assert (=> b!4362859 (= res!1793975 (= (getValueByKey!479 (toList!3002 lt!1575179) (_1!27497 (tuple2!48407 key!3918 newValue!99))) (Some!10492 (_2!27497 (tuple2!48407 key!3918 newValue!99)))))))

(declare-fun b!4362860 () Bool)

(assert (=> b!4362860 (= e!2715223 (contains!11223 (toList!3002 lt!1575179) (tuple2!48407 key!3918 newValue!99)))))

(assert (= (and d!1291116 res!1793976) b!4362859))

(assert (= (and b!4362859 res!1793975) b!4362860))

(declare-fun m!4983045 () Bool)

(assert (=> d!1291116 m!4983045))

(declare-fun m!4983047 () Bool)

(assert (=> d!1291116 m!4983047))

(declare-fun m!4983049 () Bool)

(assert (=> d!1291116 m!4983049))

(declare-fun m!4983051 () Bool)

(assert (=> d!1291116 m!4983051))

(declare-fun m!4983053 () Bool)

(assert (=> b!4362859 m!4983053))

(declare-fun m!4983055 () Bool)

(assert (=> b!4362860 m!4983055))

(assert (=> d!1290512 d!1291116))

(declare-fun d!1291118 () Bool)

(assert (=> d!1291118 (= (eq!279 (+!676 lt!1574072 (tuple2!48407 key!3918 newValue!99)) (+!676 lt!1574075 (tuple2!48407 key!3918 newValue!99))) (= (content!7748 (toList!3002 (+!676 lt!1574072 (tuple2!48407 key!3918 newValue!99)))) (content!7748 (toList!3002 (+!676 lt!1574075 (tuple2!48407 key!3918 newValue!99))))))))

(declare-fun bs!635879 () Bool)

(assert (= bs!635879 d!1291118))

(declare-fun m!4983057 () Bool)

(assert (=> bs!635879 m!4983057))

(declare-fun m!4983059 () Bool)

(assert (=> bs!635879 m!4983059))

(assert (=> d!1290512 d!1291118))

(declare-fun d!1291120 () Bool)

(assert (=> d!1291120 (= (get!15917 (getValueByKey!478 (toList!3001 lm!1707) (_1!27498 (h!54547 (toList!3001 lm!1707))))) (v!43403 (getValueByKey!478 (toList!3001 lm!1707) (_1!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (=> d!1290366 d!1291120))

(declare-fun b!4362863 () Bool)

(declare-fun e!2715225 () Option!10492)

(assert (=> b!4362863 (= e!2715225 (getValueByKey!478 (t!356028 (toList!3001 lm!1707)) (_1!27498 (h!54547 (toList!3001 lm!1707)))))))

(declare-fun d!1291122 () Bool)

(declare-fun c!741921 () Bool)

(assert (=> d!1291122 (= c!741921 (and ((_ is Cons!48984) (toList!3001 lm!1707)) (= (_1!27498 (h!54547 (toList!3001 lm!1707))) (_1!27498 (h!54547 (toList!3001 lm!1707))))))))

(declare-fun e!2715224 () Option!10492)

(assert (=> d!1291122 (= (getValueByKey!478 (toList!3001 lm!1707) (_1!27498 (h!54547 (toList!3001 lm!1707)))) e!2715224)))

(declare-fun b!4362862 () Bool)

(assert (=> b!4362862 (= e!2715224 e!2715225)))

(declare-fun c!741922 () Bool)

(assert (=> b!4362862 (= c!741922 (and ((_ is Cons!48984) (toList!3001 lm!1707)) (not (= (_1!27498 (h!54547 (toList!3001 lm!1707))) (_1!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun b!4362861 () Bool)

(assert (=> b!4362861 (= e!2715224 (Some!10491 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))

(declare-fun b!4362864 () Bool)

(assert (=> b!4362864 (= e!2715225 None!10491)))

(assert (= (and d!1291122 c!741921) b!4362861))

(assert (= (and d!1291122 (not c!741921)) b!4362862))

(assert (= (and b!4362862 c!741922) b!4362863))

(assert (= (and b!4362862 (not c!741922)) b!4362864))

(declare-fun m!4983061 () Bool)

(assert (=> b!4362863 m!4983061))

(assert (=> d!1290366 d!1291122))

(declare-fun d!1291124 () Bool)

(assert (=> d!1291124 (= (invariantList!690 (toList!3002 lt!1574438)) (noDuplicatedKeys!123 (toList!3002 lt!1574438)))))

(declare-fun bs!635880 () Bool)

(assert (= bs!635880 d!1291124))

(declare-fun m!4983063 () Bool)

(assert (=> bs!635880 m!4983063))

(assert (=> b!4361804 d!1291124))

(declare-fun d!1291126 () Bool)

(declare-fun lt!1575180 () Bool)

(assert (=> d!1291126 (= lt!1575180 (select (content!7751 e!2714583) key!3918))))

(declare-fun e!2715227 () Bool)

(assert (=> d!1291126 (= lt!1575180 e!2715227)))

(declare-fun res!1793977 () Bool)

(assert (=> d!1291126 (=> (not res!1793977) (not e!2715227))))

(assert (=> d!1291126 (= res!1793977 ((_ is Cons!48986) e!2714583))))

(assert (=> d!1291126 (= (contains!11225 e!2714583 key!3918) lt!1575180)))

(declare-fun b!4362865 () Bool)

(declare-fun e!2715226 () Bool)

(assert (=> b!4362865 (= e!2715227 e!2715226)))

(declare-fun res!1793978 () Bool)

(assert (=> b!4362865 (=> res!1793978 e!2715226)))

(assert (=> b!4362865 (= res!1793978 (= (h!54551 e!2714583) key!3918))))

(declare-fun b!4362866 () Bool)

(assert (=> b!4362866 (= e!2715226 (contains!11225 (t!356030 e!2714583) key!3918))))

(assert (= (and d!1291126 res!1793977) b!4362865))

(assert (= (and b!4362865 (not res!1793978)) b!4362866))

(declare-fun m!4983065 () Bool)

(assert (=> d!1291126 m!4983065))

(declare-fun m!4983067 () Bool)

(assert (=> d!1291126 m!4983067))

(declare-fun m!4983069 () Bool)

(assert (=> b!4362866 m!4983069))

(assert (=> bm!303204 d!1291126))

(declare-fun d!1291128 () Bool)

(declare-fun res!1793983 () Bool)

(declare-fun e!2715232 () Bool)

(assert (=> d!1291128 (=> res!1793983 e!2715232)))

(assert (=> d!1291128 (= res!1793983 (or ((_ is Nil!48984) (toList!3001 lm!1707)) ((_ is Nil!48984) (t!356028 (toList!3001 lm!1707)))))))

(assert (=> d!1291128 (= (isStrictlySorted!116 (toList!3001 lm!1707)) e!2715232)))

(declare-fun b!4362871 () Bool)

(declare-fun e!2715233 () Bool)

(assert (=> b!4362871 (= e!2715232 e!2715233)))

(declare-fun res!1793984 () Bool)

(assert (=> b!4362871 (=> (not res!1793984) (not e!2715233))))

(assert (=> b!4362871 (= res!1793984 (bvslt (_1!27498 (h!54547 (toList!3001 lm!1707))) (_1!27498 (h!54547 (t!356028 (toList!3001 lm!1707))))))))

(declare-fun b!4362872 () Bool)

(assert (=> b!4362872 (= e!2715233 (isStrictlySorted!116 (t!356028 (toList!3001 lm!1707))))))

(assert (= (and d!1291128 (not res!1793983)) b!4362871))

(assert (= (and b!4362871 res!1793984) b!4362872))

(declare-fun m!4983071 () Bool)

(assert (=> b!4362872 m!4983071))

(assert (=> d!1290354 d!1291128))

(declare-fun d!1291130 () Bool)

(assert (=> d!1291130 (= (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574069) key!3918)) (not (isEmpty!28222 (getValueByKey!479 (toList!3002 lt!1574069) key!3918))))))

(declare-fun bs!635881 () Bool)

(assert (= bs!635881 d!1291130))

(assert (=> bs!635881 m!4980651))

(declare-fun m!4983073 () Bool)

(assert (=> bs!635881 m!4983073))

(assert (=> b!4361708 d!1291130))

(declare-fun b!4362876 () Bool)

(declare-fun e!2715235 () Option!10493)

(assert (=> b!4362876 (= e!2715235 None!10492)))

(declare-fun b!4362875 () Bool)

(assert (=> b!4362875 (= e!2715235 (getValueByKey!479 (t!356027 (toList!3002 lt!1574069)) key!3918))))

(declare-fun d!1291132 () Bool)

(declare-fun c!741923 () Bool)

(assert (=> d!1291132 (= c!741923 (and ((_ is Cons!48983) (toList!3002 lt!1574069)) (= (_1!27497 (h!54546 (toList!3002 lt!1574069))) key!3918)))))

(declare-fun e!2715234 () Option!10493)

(assert (=> d!1291132 (= (getValueByKey!479 (toList!3002 lt!1574069) key!3918) e!2715234)))

(declare-fun b!4362873 () Bool)

(assert (=> b!4362873 (= e!2715234 (Some!10492 (_2!27497 (h!54546 (toList!3002 lt!1574069)))))))

(declare-fun b!4362874 () Bool)

(assert (=> b!4362874 (= e!2715234 e!2715235)))

(declare-fun c!741924 () Bool)

(assert (=> b!4362874 (= c!741924 (and ((_ is Cons!48983) (toList!3002 lt!1574069)) (not (= (_1!27497 (h!54546 (toList!3002 lt!1574069))) key!3918))))))

(assert (= (and d!1291132 c!741923) b!4362873))

(assert (= (and d!1291132 (not c!741923)) b!4362874))

(assert (= (and b!4362874 c!741924) b!4362875))

(assert (= (and b!4362874 (not c!741924)) b!4362876))

(declare-fun m!4983075 () Bool)

(assert (=> b!4362875 m!4983075))

(assert (=> b!4361708 d!1291132))

(declare-fun d!1291134 () Bool)

(declare-fun lt!1575181 () Bool)

(assert (=> d!1291134 (= lt!1575181 (select (content!7751 (keys!16560 lt!1574079)) key!3918))))

(declare-fun e!2715237 () Bool)

(assert (=> d!1291134 (= lt!1575181 e!2715237)))

(declare-fun res!1793985 () Bool)

(assert (=> d!1291134 (=> (not res!1793985) (not e!2715237))))

(assert (=> d!1291134 (= res!1793985 ((_ is Cons!48986) (keys!16560 lt!1574079)))))

(assert (=> d!1291134 (= (contains!11225 (keys!16560 lt!1574079) key!3918) lt!1575181)))

(declare-fun b!4362877 () Bool)

(declare-fun e!2715236 () Bool)

(assert (=> b!4362877 (= e!2715237 e!2715236)))

(declare-fun res!1793986 () Bool)

(assert (=> b!4362877 (=> res!1793986 e!2715236)))

(assert (=> b!4362877 (= res!1793986 (= (h!54551 (keys!16560 lt!1574079)) key!3918))))

(declare-fun b!4362878 () Bool)

(assert (=> b!4362878 (= e!2715236 (contains!11225 (t!356030 (keys!16560 lt!1574079)) key!3918))))

(assert (= (and d!1291134 res!1793985) b!4362877))

(assert (= (and b!4362877 (not res!1793986)) b!4362878))

(assert (=> d!1291134 m!4980611))

(declare-fun m!4983077 () Bool)

(assert (=> d!1291134 m!4983077))

(declare-fun m!4983079 () Bool)

(assert (=> d!1291134 m!4983079))

(declare-fun m!4983081 () Bool)

(assert (=> b!4362878 m!4983081))

(assert (=> b!4361699 d!1291134))

(assert (=> b!4361699 d!1291016))

(declare-fun bs!635882 () Bool)

(declare-fun d!1291136 () Bool)

(assert (= bs!635882 (and d!1291136 b!4362847)))

(declare-fun lambda!141858 () Int)

(assert (=> bs!635882 (= (= lt!1574071 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141858 lambda!141851))))

(declare-fun bs!635883 () Bool)

(assert (= bs!635883 (and d!1291136 d!1291022)))

(assert (=> bs!635883 (= (= lt!1574071 lt!1575137) (= lambda!141858 lambda!141849))))

(declare-fun bs!635884 () Bool)

(assert (= bs!635884 (and d!1291136 b!4361789)))

(assert (=> bs!635884 (= (= lt!1574071 lt!1574405) (= lambda!141858 lambda!141720))))

(declare-fun bs!635885 () Bool)

(assert (= bs!635885 (and d!1291136 b!4362673)))

(assert (=> bs!635885 (= (= lt!1574071 lt!1575022) (= lambda!141858 lambda!141826))))

(assert (=> bs!635884 (= (= lt!1574071 lt!1574079) (= lambda!141858 lambda!141719))))

(declare-fun bs!635886 () Bool)

(assert (= bs!635886 (and d!1291136 b!4362144)))

(assert (=> bs!635886 (= (= lt!1574071 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141858 lambda!141760))))

(declare-fun bs!635887 () Bool)

(assert (= bs!635887 (and d!1291136 b!4362844)))

(assert (=> bs!635887 (= (= lt!1574071 lt!1575149) (= lambda!141858 lambda!141853))))

(declare-fun bs!635888 () Bool)

(assert (= bs!635888 (and d!1291136 b!4362819)))

(assert (=> bs!635888 (= (= lt!1574071 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141858 lambda!141846))))

(declare-fun bs!635889 () Bool)

(assert (= bs!635889 (and d!1291136 d!1290638)))

(assert (=> bs!635889 (= (= lt!1574071 lt!1574661) (= lambda!141858 lambda!141763))))

(assert (=> bs!635885 (= (= lt!1574071 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141858 lambda!141824))))

(declare-fun bs!635890 () Bool)

(assert (= bs!635890 (and d!1291136 b!4361792)))

(assert (=> bs!635890 (= (= lt!1574071 lt!1574079) (= lambda!141858 lambda!141718))))

(declare-fun bs!635891 () Bool)

(assert (= bs!635891 (and d!1291136 b!4362141)))

(assert (=> bs!635891 (= (= lt!1574071 lt!1574649) (= lambda!141858 lambda!141762))))

(declare-fun bs!635892 () Bool)

(assert (= bs!635892 (and d!1291136 b!4361802)))

(assert (=> bs!635892 (= lambda!141858 lambda!141723)))

(declare-fun bs!635893 () Bool)

(assert (= bs!635893 (and d!1291136 d!1290942)))

(assert (=> bs!635893 (= (= lt!1574071 lt!1574426) (= lambda!141858 lambda!141839))))

(declare-fun bs!635894 () Bool)

(assert (= bs!635894 (and d!1291136 d!1291092)))

(assert (=> bs!635894 (= (= lt!1574071 lt!1575161) (= lambda!141858 lambda!141854))))

(declare-fun bs!635895 () Bool)

(assert (= bs!635895 (and d!1291136 d!1290518)))

(assert (=> bs!635895 (not (= lambda!141858 lambda!141737))))

(assert (=> bs!635887 (= (= lt!1574071 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141858 lambda!141852))))

(declare-fun bs!635896 () Bool)

(assert (= bs!635896 (and d!1291136 d!1290916)))

(assert (=> bs!635896 (= (= lt!1574071 lt!1575034) (= lambda!141858 lambda!141830))))

(declare-fun bs!635897 () Bool)

(assert (= bs!635897 (and d!1291136 d!1290468)))

(assert (=> bs!635897 (= (= lt!1574071 lt!1574438) (= lambda!141858 lambda!141725))))

(assert (=> bs!635892 (= (= lt!1574071 lt!1574426) (= lambda!141858 lambda!141724))))

(declare-fun bs!635898 () Bool)

(assert (= bs!635898 (and d!1291136 b!4362816)))

(assert (=> bs!635898 (= (= lt!1574071 lt!1575125) (= lambda!141858 lambda!141848))))

(declare-fun bs!635899 () Bool)

(assert (= bs!635899 (and d!1291136 b!4362676)))

(assert (=> bs!635899 (= (= lt!1574071 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141858 lambda!141823))))

(declare-fun bs!635900 () Bool)

(assert (= bs!635900 (and d!1291136 d!1290408)))

(assert (=> bs!635900 (= (= lt!1574071 lt!1574417) (= lambda!141858 lambda!141721))))

(declare-fun bs!635901 () Bool)

(assert (= bs!635901 (and d!1291136 b!4361805)))

(assert (=> bs!635901 (= lambda!141858 lambda!141722)))

(assert (=> bs!635891 (= (= lt!1574071 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141858 lambda!141761))))

(assert (=> bs!635898 (= (= lt!1574071 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141858 lambda!141847))))

(assert (=> d!1291136 true))

(assert (=> d!1291136 (forall!9158 (toList!3002 lt!1574071) lambda!141858)))

(declare-fun lt!1575184 () Unit!72449)

(declare-fun choose!27062 (ListMap!2245) Unit!72449)

(assert (=> d!1291136 (= lt!1575184 (choose!27062 lt!1574071))))

(assert (=> d!1291136 (= (lemmaContainsAllItsOwnKeys!73 lt!1574071) lt!1575184)))

(declare-fun bs!635902 () Bool)

(assert (= bs!635902 d!1291136))

(declare-fun m!4983083 () Bool)

(assert (=> bs!635902 m!4983083))

(declare-fun m!4983085 () Bool)

(assert (=> bs!635902 m!4983085))

(assert (=> bm!303203 d!1291136))

(assert (=> d!1290480 d!1290402))

(assert (=> d!1290480 d!1290366))

(declare-fun d!1291138 () Bool)

(assert (=> d!1291138 (not (containsKey!734 (apply!11361 lm!1707 (_1!27498 (h!54547 (toList!3001 lm!1707)))) key!3918))))

(assert (=> d!1291138 true))

(declare-fun _$39!292 () Unit!72449)

(assert (=> d!1291138 (= (choose!27039 lm!1707 key!3918 (_1!27498 (h!54547 (toList!3001 lm!1707))) hashF!1247) _$39!292)))

(declare-fun bs!635903 () Bool)

(assert (= bs!635903 d!1291138))

(assert (=> bs!635903 m!4980407))

(assert (=> bs!635903 m!4980407))

(assert (=> bs!635903 m!4980409))

(assert (=> d!1290480 d!1291138))

(declare-fun d!1291140 () Bool)

(declare-fun res!1793987 () Bool)

(declare-fun e!2715238 () Bool)

(assert (=> d!1291140 (=> res!1793987 e!2715238)))

(assert (=> d!1291140 (= res!1793987 ((_ is Nil!48984) (toList!3001 lm!1707)))))

(assert (=> d!1291140 (= (forall!9156 (toList!3001 lm!1707) lambda!141730) e!2715238)))

(declare-fun b!4362879 () Bool)

(declare-fun e!2715239 () Bool)

(assert (=> b!4362879 (= e!2715238 e!2715239)))

(declare-fun res!1793988 () Bool)

(assert (=> b!4362879 (=> (not res!1793988) (not e!2715239))))

(assert (=> b!4362879 (= res!1793988 (dynLambda!20651 lambda!141730 (h!54547 (toList!3001 lm!1707))))))

(declare-fun b!4362880 () Bool)

(assert (=> b!4362880 (= e!2715239 (forall!9156 (t!356028 (toList!3001 lm!1707)) lambda!141730))))

(assert (= (and d!1291140 (not res!1793987)) b!4362879))

(assert (= (and b!4362879 res!1793988) b!4362880))

(declare-fun b_lambda!132045 () Bool)

(assert (=> (not b_lambda!132045) (not b!4362879)))

(declare-fun m!4983087 () Bool)

(assert (=> b!4362879 m!4983087))

(declare-fun m!4983089 () Bool)

(assert (=> b!4362880 m!4983089))

(assert (=> d!1290480 d!1291140))

(declare-fun d!1291142 () Bool)

(declare-fun res!1793989 () Bool)

(declare-fun e!2715240 () Bool)

(assert (=> d!1291142 (=> res!1793989 e!2715240)))

(assert (=> d!1291142 (= res!1793989 ((_ is Nil!48983) (toList!3002 lt!1574079)))))

(assert (=> d!1291142 (= (forall!9158 (toList!3002 lt!1574079) lambda!141720) e!2715240)))

(declare-fun b!4362881 () Bool)

(declare-fun e!2715241 () Bool)

(assert (=> b!4362881 (= e!2715240 e!2715241)))

(declare-fun res!1793990 () Bool)

(assert (=> b!4362881 (=> (not res!1793990) (not e!2715241))))

(assert (=> b!4362881 (= res!1793990 (dynLambda!20653 lambda!141720 (h!54546 (toList!3002 lt!1574079))))))

(declare-fun b!4362882 () Bool)

(assert (=> b!4362882 (= e!2715241 (forall!9158 (t!356027 (toList!3002 lt!1574079)) lambda!141720))))

(assert (= (and d!1291142 (not res!1793989)) b!4362881))

(assert (= (and b!4362881 res!1793990) b!4362882))

(declare-fun b_lambda!132047 () Bool)

(assert (=> (not b_lambda!132047) (not b!4362881)))

(declare-fun m!4983091 () Bool)

(assert (=> b!4362881 m!4983091))

(declare-fun m!4983093 () Bool)

(assert (=> b!4362882 m!4983093))

(assert (=> b!4361790 d!1291142))

(declare-fun bs!635904 () Bool)

(declare-fun b!4362891 () Bool)

(assert (= bs!635904 (and b!4362891 b!4362648)))

(declare-fun lambda!141859 () Int)

(assert (=> bs!635904 (= (= (t!356027 (toList!3002 lt!1574069)) (toList!3002 lt!1574072)) (= lambda!141859 lambda!141821))))

(declare-fun bs!635905 () Bool)

(assert (= bs!635905 (and b!4362891 b!4362533)))

(assert (=> bs!635905 (= (= (t!356027 (toList!3002 lt!1574069)) (toList!3002 lt!1574079)) (= lambda!141859 lambda!141811))))

(declare-fun bs!635906 () Bool)

(assert (= bs!635906 (and b!4362891 b!4362443)))

(assert (=> bs!635906 (= (= (t!356027 (toList!3002 lt!1574069)) (toList!3002 lt!1574069)) (= lambda!141859 lambda!141795))))

(declare-fun bs!635907 () Bool)

(assert (= bs!635907 (and b!4362891 b!4362806)))

(assert (=> bs!635907 (= (= (t!356027 (toList!3002 lt!1574069)) (toList!3002 lt!1574079)) (= lambda!141859 lambda!141844))))

(declare-fun bs!635908 () Bool)

(assert (= bs!635908 (and b!4362891 b!4362535)))

(assert (=> bs!635908 (= (= (t!356027 (toList!3002 lt!1574069)) (t!356027 (toList!3002 lt!1574079))) (= lambda!141859 lambda!141809))))

(declare-fun bs!635909 () Bool)

(assert (= bs!635909 (and b!4362891 b!4362528)))

(assert (=> bs!635909 (= (= (t!356027 (toList!3002 lt!1574069)) (Cons!48983 (h!54546 (toList!3002 lt!1574079)) (t!356027 (toList!3002 lt!1574079)))) (= lambda!141859 lambda!141810))))

(assert (=> b!4362891 true))

(declare-fun bs!635910 () Bool)

(declare-fun b!4362884 () Bool)

(assert (= bs!635910 (and b!4362884 b!4362891)))

(declare-fun lambda!141860 () Int)

(assert (=> bs!635910 (= (= (Cons!48983 (h!54546 (toList!3002 lt!1574069)) (t!356027 (toList!3002 lt!1574069))) (t!356027 (toList!3002 lt!1574069))) (= lambda!141860 lambda!141859))))

(declare-fun bs!635911 () Bool)

(assert (= bs!635911 (and b!4362884 b!4362648)))

(assert (=> bs!635911 (= (= (Cons!48983 (h!54546 (toList!3002 lt!1574069)) (t!356027 (toList!3002 lt!1574069))) (toList!3002 lt!1574072)) (= lambda!141860 lambda!141821))))

(declare-fun bs!635912 () Bool)

(assert (= bs!635912 (and b!4362884 b!4362533)))

(assert (=> bs!635912 (= (= (Cons!48983 (h!54546 (toList!3002 lt!1574069)) (t!356027 (toList!3002 lt!1574069))) (toList!3002 lt!1574079)) (= lambda!141860 lambda!141811))))

(declare-fun bs!635913 () Bool)

(assert (= bs!635913 (and b!4362884 b!4362443)))

(assert (=> bs!635913 (= (= (Cons!48983 (h!54546 (toList!3002 lt!1574069)) (t!356027 (toList!3002 lt!1574069))) (toList!3002 lt!1574069)) (= lambda!141860 lambda!141795))))

(declare-fun bs!635914 () Bool)

(assert (= bs!635914 (and b!4362884 b!4362806)))

(assert (=> bs!635914 (= (= (Cons!48983 (h!54546 (toList!3002 lt!1574069)) (t!356027 (toList!3002 lt!1574069))) (toList!3002 lt!1574079)) (= lambda!141860 lambda!141844))))

(declare-fun bs!635915 () Bool)

(assert (= bs!635915 (and b!4362884 b!4362535)))

(assert (=> bs!635915 (= (= (Cons!48983 (h!54546 (toList!3002 lt!1574069)) (t!356027 (toList!3002 lt!1574069))) (t!356027 (toList!3002 lt!1574079))) (= lambda!141860 lambda!141809))))

(declare-fun bs!635916 () Bool)

(assert (= bs!635916 (and b!4362884 b!4362528)))

(assert (=> bs!635916 (= (= (Cons!48983 (h!54546 (toList!3002 lt!1574069)) (t!356027 (toList!3002 lt!1574069))) (Cons!48983 (h!54546 (toList!3002 lt!1574079)) (t!356027 (toList!3002 lt!1574079)))) (= lambda!141860 lambda!141810))))

(assert (=> b!4362884 true))

(declare-fun bs!635917 () Bool)

(declare-fun b!4362889 () Bool)

(assert (= bs!635917 (and b!4362889 b!4362891)))

(declare-fun lambda!141861 () Int)

(assert (=> bs!635917 (= (= (toList!3002 lt!1574069) (t!356027 (toList!3002 lt!1574069))) (= lambda!141861 lambda!141859))))

(declare-fun bs!635918 () Bool)

(assert (= bs!635918 (and b!4362889 b!4362648)))

(assert (=> bs!635918 (= (= (toList!3002 lt!1574069) (toList!3002 lt!1574072)) (= lambda!141861 lambda!141821))))

(declare-fun bs!635919 () Bool)

(assert (= bs!635919 (and b!4362889 b!4362533)))

(assert (=> bs!635919 (= (= (toList!3002 lt!1574069) (toList!3002 lt!1574079)) (= lambda!141861 lambda!141811))))

(declare-fun bs!635920 () Bool)

(assert (= bs!635920 (and b!4362889 b!4362443)))

(assert (=> bs!635920 (= lambda!141861 lambda!141795)))

(declare-fun bs!635921 () Bool)

(assert (= bs!635921 (and b!4362889 b!4362806)))

(assert (=> bs!635921 (= (= (toList!3002 lt!1574069) (toList!3002 lt!1574079)) (= lambda!141861 lambda!141844))))

(declare-fun bs!635922 () Bool)

(assert (= bs!635922 (and b!4362889 b!4362535)))

(assert (=> bs!635922 (= (= (toList!3002 lt!1574069) (t!356027 (toList!3002 lt!1574079))) (= lambda!141861 lambda!141809))))

(declare-fun bs!635923 () Bool)

(assert (= bs!635923 (and b!4362889 b!4362528)))

(assert (=> bs!635923 (= (= (toList!3002 lt!1574069) (Cons!48983 (h!54546 (toList!3002 lt!1574079)) (t!356027 (toList!3002 lt!1574079)))) (= lambda!141861 lambda!141810))))

(declare-fun bs!635924 () Bool)

(assert (= bs!635924 (and b!4362889 b!4362884)))

(assert (=> bs!635924 (= (= (toList!3002 lt!1574069) (Cons!48983 (h!54546 (toList!3002 lt!1574069)) (t!356027 (toList!3002 lt!1574069)))) (= lambda!141861 lambda!141860))))

(assert (=> b!4362889 true))

(declare-fun bs!635925 () Bool)

(declare-fun b!4362887 () Bool)

(assert (= bs!635925 (and b!4362887 b!4362444)))

(declare-fun lambda!141862 () Int)

(assert (=> bs!635925 (= lambda!141862 lambda!141796)))

(declare-fun bs!635926 () Bool)

(assert (= bs!635926 (and b!4362887 b!4362531)))

(assert (=> bs!635926 (= lambda!141862 lambda!141812)))

(declare-fun bs!635927 () Bool)

(assert (= bs!635927 (and b!4362887 b!4362649)))

(assert (=> bs!635927 (= lambda!141862 lambda!141822)))

(declare-fun bs!635928 () Bool)

(assert (= bs!635928 (and b!4362887 b!4362807)))

(assert (=> bs!635928 (= lambda!141862 lambda!141845)))

(declare-fun b!4362883 () Bool)

(assert (=> b!4362883 false))

(declare-fun e!2715243 () Unit!72449)

(declare-fun Unit!72663 () Unit!72449)

(assert (=> b!4362883 (= e!2715243 Unit!72663)))

(declare-fun d!1291144 () Bool)

(declare-fun e!2715244 () Bool)

(assert (=> d!1291144 e!2715244))

(declare-fun res!1793991 () Bool)

(assert (=> d!1291144 (=> (not res!1793991) (not e!2715244))))

(declare-fun lt!1575187 () List!49110)

(assert (=> d!1291144 (= res!1793991 (noDuplicate!608 lt!1575187))))

(declare-fun e!2715242 () List!49110)

(assert (=> d!1291144 (= lt!1575187 e!2715242)))

(declare-fun c!741927 () Bool)

(assert (=> d!1291144 (= c!741927 ((_ is Cons!48983) (toList!3002 lt!1574069)))))

(assert (=> d!1291144 (invariantList!690 (toList!3002 lt!1574069))))

(assert (=> d!1291144 (= (getKeysList!138 (toList!3002 lt!1574069)) lt!1575187)))

(assert (=> b!4362884 (= e!2715242 (Cons!48986 (_1!27497 (h!54546 (toList!3002 lt!1574069))) (getKeysList!138 (t!356027 (toList!3002 lt!1574069)))))))

(declare-fun c!741925 () Bool)

(assert (=> b!4362884 (= c!741925 (containsKey!737 (t!356027 (toList!3002 lt!1574069)) (_1!27497 (h!54546 (toList!3002 lt!1574069)))))))

(declare-fun lt!1575190 () Unit!72449)

(assert (=> b!4362884 (= lt!1575190 e!2715243)))

(declare-fun c!741926 () Bool)

(assert (=> b!4362884 (= c!741926 (contains!11225 (getKeysList!138 (t!356027 (toList!3002 lt!1574069))) (_1!27497 (h!54546 (toList!3002 lt!1574069)))))))

(declare-fun lt!1575188 () Unit!72449)

(declare-fun e!2715245 () Unit!72449)

(assert (=> b!4362884 (= lt!1575188 e!2715245)))

(declare-fun lt!1575189 () List!49110)

(assert (=> b!4362884 (= lt!1575189 (getKeysList!138 (t!356027 (toList!3002 lt!1574069))))))

(declare-fun lt!1575185 () Unit!72449)

(assert (=> b!4362884 (= lt!1575185 (lemmaForallContainsAddHeadPreserves!29 (t!356027 (toList!3002 lt!1574069)) lt!1575189 (h!54546 (toList!3002 lt!1574069))))))

(assert (=> b!4362884 (forall!9160 lt!1575189 lambda!141860)))

(declare-fun lt!1575191 () Unit!72449)

(assert (=> b!4362884 (= lt!1575191 lt!1575185)))

(declare-fun b!4362885 () Bool)

(assert (=> b!4362885 (= e!2715242 Nil!48986)))

(declare-fun b!4362886 () Bool)

(declare-fun Unit!72664 () Unit!72449)

(assert (=> b!4362886 (= e!2715245 Unit!72664)))

(assert (=> b!4362887 (= e!2715244 (= (content!7751 lt!1575187) (content!7751 (map!10659 (toList!3002 lt!1574069) lambda!141862))))))

(declare-fun b!4362888 () Bool)

(declare-fun Unit!72665 () Unit!72449)

(assert (=> b!4362888 (= e!2715243 Unit!72665)))

(declare-fun res!1793992 () Bool)

(assert (=> b!4362889 (=> (not res!1793992) (not e!2715244))))

(assert (=> b!4362889 (= res!1793992 (forall!9160 lt!1575187 lambda!141861))))

(declare-fun b!4362890 () Bool)

(declare-fun res!1793993 () Bool)

(assert (=> b!4362890 (=> (not res!1793993) (not e!2715244))))

(assert (=> b!4362890 (= res!1793993 (= (length!72 lt!1575187) (length!73 (toList!3002 lt!1574069))))))

(assert (=> b!4362891 false))

(declare-fun lt!1575186 () Unit!72449)

(assert (=> b!4362891 (= lt!1575186 (forallContained!1800 (getKeysList!138 (t!356027 (toList!3002 lt!1574069))) lambda!141859 (_1!27497 (h!54546 (toList!3002 lt!1574069)))))))

(declare-fun Unit!72666 () Unit!72449)

(assert (=> b!4362891 (= e!2715245 Unit!72666)))

(assert (= (and d!1291144 c!741927) b!4362884))

(assert (= (and d!1291144 (not c!741927)) b!4362885))

(assert (= (and b!4362884 c!741925) b!4362883))

(assert (= (and b!4362884 (not c!741925)) b!4362888))

(assert (= (and b!4362884 c!741926) b!4362891))

(assert (= (and b!4362884 (not c!741926)) b!4362886))

(assert (= (and d!1291144 res!1793991) b!4362890))

(assert (= (and b!4362890 res!1793993) b!4362889))

(assert (= (and b!4362889 res!1793992) b!4362887))

(declare-fun m!4983095 () Bool)

(assert (=> d!1291144 m!4983095))

(assert (=> d!1291144 m!4982813))

(declare-fun m!4983097 () Bool)

(assert (=> b!4362884 m!4983097))

(declare-fun m!4983099 () Bool)

(assert (=> b!4362884 m!4983099))

(declare-fun m!4983101 () Bool)

(assert (=> b!4362884 m!4983101))

(assert (=> b!4362884 m!4983097))

(declare-fun m!4983103 () Bool)

(assert (=> b!4362884 m!4983103))

(declare-fun m!4983105 () Bool)

(assert (=> b!4362884 m!4983105))

(declare-fun m!4983107 () Bool)

(assert (=> b!4362890 m!4983107))

(assert (=> b!4362890 m!4982057))

(declare-fun m!4983109 () Bool)

(assert (=> b!4362887 m!4983109))

(declare-fun m!4983111 () Bool)

(assert (=> b!4362887 m!4983111))

(assert (=> b!4362887 m!4983111))

(declare-fun m!4983113 () Bool)

(assert (=> b!4362887 m!4983113))

(declare-fun m!4983115 () Bool)

(assert (=> b!4362889 m!4983115))

(assert (=> b!4362891 m!4983097))

(assert (=> b!4362891 m!4983097))

(declare-fun m!4983117 () Bool)

(assert (=> b!4362891 m!4983117))

(assert (=> b!4361712 d!1291144))

(assert (=> b!4361702 d!1291134))

(assert (=> b!4361702 d!1291016))

(declare-fun d!1291146 () Bool)

(declare-fun res!1793994 () Bool)

(declare-fun e!2715246 () Bool)

(assert (=> d!1291146 (=> res!1793994 e!2715246)))

(assert (=> d!1291146 (= res!1793994 ((_ is Nil!48983) (_2!27498 (h!54547 (toList!3001 lm!1707)))))))

(assert (=> d!1291146 (= (forall!9158 (_2!27498 (h!54547 (toList!3001 lm!1707))) lambda!141725) e!2715246)))

(declare-fun b!4362892 () Bool)

(declare-fun e!2715247 () Bool)

(assert (=> b!4362892 (= e!2715246 e!2715247)))

(declare-fun res!1793995 () Bool)

(assert (=> b!4362892 (=> (not res!1793995) (not e!2715247))))

(assert (=> b!4362892 (= res!1793995 (dynLambda!20653 lambda!141725 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(declare-fun b!4362893 () Bool)

(assert (=> b!4362893 (= e!2715247 (forall!9158 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) lambda!141725))))

(assert (= (and d!1291146 (not res!1793994)) b!4362892))

(assert (= (and b!4362892 res!1793995) b!4362893))

(declare-fun b_lambda!132049 () Bool)

(assert (=> (not b_lambda!132049) (not b!4362892)))

(declare-fun m!4983119 () Bool)

(assert (=> b!4362892 m!4983119))

(declare-fun m!4983121 () Bool)

(assert (=> b!4362893 m!4983121))

(assert (=> d!1290468 d!1291146))

(assert (=> d!1290468 d!1290722))

(declare-fun bs!635929 () Bool)

(declare-fun d!1291148 () Bool)

(assert (= bs!635929 (and d!1291148 b!4362847)))

(declare-fun lambda!141863 () Int)

(assert (=> bs!635929 (= (= lt!1574079 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141863 lambda!141851))))

(declare-fun bs!635930 () Bool)

(assert (= bs!635930 (and d!1291148 d!1291022)))

(assert (=> bs!635930 (= (= lt!1574079 lt!1575137) (= lambda!141863 lambda!141849))))

(declare-fun bs!635931 () Bool)

(assert (= bs!635931 (and d!1291148 b!4361789)))

(assert (=> bs!635931 (= (= lt!1574079 lt!1574405) (= lambda!141863 lambda!141720))))

(declare-fun bs!635932 () Bool)

(assert (= bs!635932 (and d!1291148 b!4362673)))

(assert (=> bs!635932 (= (= lt!1574079 lt!1575022) (= lambda!141863 lambda!141826))))

(assert (=> bs!635931 (= lambda!141863 lambda!141719)))

(declare-fun bs!635933 () Bool)

(assert (= bs!635933 (and d!1291148 d!1291136)))

(assert (=> bs!635933 (= (= lt!1574079 lt!1574071) (= lambda!141863 lambda!141858))))

(declare-fun bs!635934 () Bool)

(assert (= bs!635934 (and d!1291148 b!4362144)))

(assert (=> bs!635934 (= (= lt!1574079 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141863 lambda!141760))))

(declare-fun bs!635935 () Bool)

(assert (= bs!635935 (and d!1291148 b!4362844)))

(assert (=> bs!635935 (= (= lt!1574079 lt!1575149) (= lambda!141863 lambda!141853))))

(declare-fun bs!635936 () Bool)

(assert (= bs!635936 (and d!1291148 b!4362819)))

(assert (=> bs!635936 (= (= lt!1574079 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141863 lambda!141846))))

(declare-fun bs!635937 () Bool)

(assert (= bs!635937 (and d!1291148 d!1290638)))

(assert (=> bs!635937 (= (= lt!1574079 lt!1574661) (= lambda!141863 lambda!141763))))

(assert (=> bs!635932 (= (= lt!1574079 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141863 lambda!141824))))

(declare-fun bs!635938 () Bool)

(assert (= bs!635938 (and d!1291148 b!4361792)))

(assert (=> bs!635938 (= lambda!141863 lambda!141718)))

(declare-fun bs!635939 () Bool)

(assert (= bs!635939 (and d!1291148 b!4362141)))

(assert (=> bs!635939 (= (= lt!1574079 lt!1574649) (= lambda!141863 lambda!141762))))

(declare-fun bs!635940 () Bool)

(assert (= bs!635940 (and d!1291148 b!4361802)))

(assert (=> bs!635940 (= (= lt!1574079 lt!1574071) (= lambda!141863 lambda!141723))))

(declare-fun bs!635941 () Bool)

(assert (= bs!635941 (and d!1291148 d!1290942)))

(assert (=> bs!635941 (= (= lt!1574079 lt!1574426) (= lambda!141863 lambda!141839))))

(declare-fun bs!635942 () Bool)

(assert (= bs!635942 (and d!1291148 d!1291092)))

(assert (=> bs!635942 (= (= lt!1574079 lt!1575161) (= lambda!141863 lambda!141854))))

(declare-fun bs!635943 () Bool)

(assert (= bs!635943 (and d!1291148 d!1290518)))

(assert (=> bs!635943 (not (= lambda!141863 lambda!141737))))

(assert (=> bs!635935 (= (= lt!1574079 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141863 lambda!141852))))

(declare-fun bs!635944 () Bool)

(assert (= bs!635944 (and d!1291148 d!1290916)))

(assert (=> bs!635944 (= (= lt!1574079 lt!1575034) (= lambda!141863 lambda!141830))))

(declare-fun bs!635945 () Bool)

(assert (= bs!635945 (and d!1291148 d!1290468)))

(assert (=> bs!635945 (= (= lt!1574079 lt!1574438) (= lambda!141863 lambda!141725))))

(assert (=> bs!635940 (= (= lt!1574079 lt!1574426) (= lambda!141863 lambda!141724))))

(declare-fun bs!635946 () Bool)

(assert (= bs!635946 (and d!1291148 b!4362816)))

(assert (=> bs!635946 (= (= lt!1574079 lt!1575125) (= lambda!141863 lambda!141848))))

(declare-fun bs!635947 () Bool)

(assert (= bs!635947 (and d!1291148 b!4362676)))

(assert (=> bs!635947 (= (= lt!1574079 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141863 lambda!141823))))

(declare-fun bs!635948 () Bool)

(assert (= bs!635948 (and d!1291148 d!1290408)))

(assert (=> bs!635948 (= (= lt!1574079 lt!1574417) (= lambda!141863 lambda!141721))))

(declare-fun bs!635949 () Bool)

(assert (= bs!635949 (and d!1291148 b!4361805)))

(assert (=> bs!635949 (= (= lt!1574079 lt!1574071) (= lambda!141863 lambda!141722))))

(assert (=> bs!635939 (= (= lt!1574079 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141863 lambda!141761))))

(assert (=> bs!635946 (= (= lt!1574079 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141863 lambda!141847))))

(assert (=> d!1291148 true))

(assert (=> d!1291148 (forall!9158 (toList!3002 lt!1574079) lambda!141863)))

(declare-fun lt!1575192 () Unit!72449)

(assert (=> d!1291148 (= lt!1575192 (choose!27062 lt!1574079))))

(assert (=> d!1291148 (= (lemmaContainsAllItsOwnKeys!73 lt!1574079) lt!1575192)))

(declare-fun bs!635950 () Bool)

(assert (= bs!635950 d!1291148))

(declare-fun m!4983123 () Bool)

(assert (=> bs!635950 m!4983123))

(declare-fun m!4983125 () Bool)

(assert (=> bs!635950 m!4983125))

(assert (=> bm!303200 d!1291148))

(declare-fun d!1291150 () Bool)

(declare-fun res!1793996 () Bool)

(declare-fun e!2715248 () Bool)

(assert (=> d!1291150 (=> res!1793996 e!2715248)))

(assert (=> d!1291150 (= res!1793996 (and ((_ is Cons!48983) (toList!3002 lt!1574072)) (= (_1!27497 (h!54546 (toList!3002 lt!1574072))) key!3918)))))

(assert (=> d!1291150 (= (containsKey!737 (toList!3002 lt!1574072) key!3918) e!2715248)))

(declare-fun b!4362894 () Bool)

(declare-fun e!2715249 () Bool)

(assert (=> b!4362894 (= e!2715248 e!2715249)))

(declare-fun res!1793997 () Bool)

(assert (=> b!4362894 (=> (not res!1793997) (not e!2715249))))

(assert (=> b!4362894 (= res!1793997 ((_ is Cons!48983) (toList!3002 lt!1574072)))))

(declare-fun b!4362895 () Bool)

(assert (=> b!4362895 (= e!2715249 (containsKey!737 (t!356027 (toList!3002 lt!1574072)) key!3918))))

(assert (= (and d!1291150 (not res!1793996)) b!4362894))

(assert (= (and b!4362894 res!1793997) b!4362895))

(declare-fun m!4983127 () Bool)

(assert (=> b!4362895 m!4983127))

(assert (=> d!1290488 d!1291150))

(declare-fun d!1291152 () Bool)

(declare-fun res!1793998 () Bool)

(declare-fun e!2715250 () Bool)

(assert (=> d!1291152 (=> res!1793998 e!2715250)))

(assert (=> d!1291152 (= res!1793998 (not ((_ is Cons!48983) (t!356027 newBucket!200))))))

(assert (=> d!1291152 (= (noDuplicateKeys!509 (t!356027 newBucket!200)) e!2715250)))

(declare-fun b!4362896 () Bool)

(declare-fun e!2715251 () Bool)

(assert (=> b!4362896 (= e!2715250 e!2715251)))

(declare-fun res!1793999 () Bool)

(assert (=> b!4362896 (=> (not res!1793999) (not e!2715251))))

(assert (=> b!4362896 (= res!1793999 (not (containsKey!734 (t!356027 (t!356027 newBucket!200)) (_1!27497 (h!54546 (t!356027 newBucket!200))))))))

(declare-fun b!4362897 () Bool)

(assert (=> b!4362897 (= e!2715251 (noDuplicateKeys!509 (t!356027 (t!356027 newBucket!200))))))

(assert (= (and d!1291152 (not res!1793998)) b!4362896))

(assert (= (and b!4362896 res!1793999) b!4362897))

(declare-fun m!4983129 () Bool)

(assert (=> b!4362896 m!4983129))

(declare-fun m!4983131 () Bool)

(assert (=> b!4362897 m!4983131))

(assert (=> b!4361818 d!1291152))

(assert (=> b!4361828 d!1291150))

(declare-fun d!1291154 () Bool)

(assert (=> d!1291154 (containsKey!737 (toList!3002 lt!1574072) key!3918)))

(declare-fun lt!1575193 () Unit!72449)

(assert (=> d!1291154 (= lt!1575193 (choose!27061 (toList!3002 lt!1574072) key!3918))))

(assert (=> d!1291154 (invariantList!690 (toList!3002 lt!1574072))))

(assert (=> d!1291154 (= (lemmaInGetKeysListThenContainsKey!136 (toList!3002 lt!1574072) key!3918) lt!1575193)))

(declare-fun bs!635951 () Bool)

(assert (= bs!635951 d!1291154))

(assert (=> bs!635951 m!4981015))

(declare-fun m!4983133 () Bool)

(assert (=> bs!635951 m!4983133))

(assert (=> bs!635951 m!4981641))

(assert (=> b!4361828 d!1291154))

(declare-fun d!1291156 () Bool)

(declare-fun res!1794000 () Bool)

(declare-fun e!2715252 () Bool)

(assert (=> d!1291156 (=> res!1794000 e!2715252)))

(assert (=> d!1291156 (= res!1794000 (and ((_ is Cons!48983) (toList!3002 lt!1574079)) (= (_1!27497 (h!54546 (toList!3002 lt!1574079))) key!3918)))))

(assert (=> d!1291156 (= (containsKey!737 (toList!3002 lt!1574079) key!3918) e!2715252)))

(declare-fun b!4362898 () Bool)

(declare-fun e!2715253 () Bool)

(assert (=> b!4362898 (= e!2715252 e!2715253)))

(declare-fun res!1794001 () Bool)

(assert (=> b!4362898 (=> (not res!1794001) (not e!2715253))))

(assert (=> b!4362898 (= res!1794001 ((_ is Cons!48983) (toList!3002 lt!1574079)))))

(declare-fun b!4362899 () Bool)

(assert (=> b!4362899 (= e!2715253 (containsKey!737 (t!356027 (toList!3002 lt!1574079)) key!3918))))

(assert (= (and d!1291156 (not res!1794000)) b!4362898))

(assert (= (and b!4362898 res!1794001) b!4362899))

(declare-fun m!4983135 () Bool)

(assert (=> b!4362899 m!4983135))

(assert (=> d!1290398 d!1291156))

(assert (=> bs!634986 d!1290722))

(declare-fun d!1291158 () Bool)

(assert (=> d!1291158 (= (isEmpty!28219 (toList!3001 lm!1707)) ((_ is Nil!48984) (toList!3001 lm!1707)))))

(assert (=> d!1290506 d!1291158))

(assert (=> b!4361803 d!1290936))

(declare-fun b!4362900 () Bool)

(declare-fun e!2715259 () Unit!72449)

(declare-fun e!2715258 () Unit!72449)

(assert (=> b!4362900 (= e!2715259 e!2715258)))

(declare-fun c!741929 () Bool)

(declare-fun call!303314 () Bool)

(assert (=> b!4362900 (= c!741929 call!303314)))

(declare-fun b!4362901 () Bool)

(declare-fun Unit!72671 () Unit!72449)

(assert (=> b!4362901 (= e!2715258 Unit!72671)))

(declare-fun b!4362902 () Bool)

(declare-fun e!2715257 () Bool)

(declare-fun e!2715255 () Bool)

(assert (=> b!4362902 (= e!2715257 e!2715255)))

(declare-fun res!1794002 () Bool)

(assert (=> b!4362902 (=> (not res!1794002) (not e!2715255))))

(assert (=> b!4362902 (= res!1794002 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574453) (_1!27497 lt!1574080))))))

(declare-fun b!4362903 () Bool)

(assert (=> b!4362903 false))

(declare-fun lt!1575194 () Unit!72449)

(declare-fun lt!1575200 () Unit!72449)

(assert (=> b!4362903 (= lt!1575194 lt!1575200)))

(assert (=> b!4362903 (containsKey!737 (toList!3002 lt!1574453) (_1!27497 lt!1574080))))

(assert (=> b!4362903 (= lt!1575200 (lemmaInGetKeysListThenContainsKey!136 (toList!3002 lt!1574453) (_1!27497 lt!1574080)))))

(declare-fun Unit!72672 () Unit!72449)

(assert (=> b!4362903 (= e!2715258 Unit!72672)))

(declare-fun b!4362904 () Bool)

(declare-fun e!2715254 () Bool)

(assert (=> b!4362904 (= e!2715254 (not (contains!11225 (keys!16560 lt!1574453) (_1!27497 lt!1574080))))))

(declare-fun b!4362905 () Bool)

(declare-fun e!2715256 () List!49110)

(assert (=> b!4362905 (= e!2715256 (keys!16560 lt!1574453))))

(declare-fun b!4362906 () Bool)

(assert (=> b!4362906 (= e!2715256 (getKeysList!138 (toList!3002 lt!1574453)))))

(declare-fun bm!303309 () Bool)

(assert (=> bm!303309 (= call!303314 (contains!11225 e!2715256 (_1!27497 lt!1574080)))))

(declare-fun c!741930 () Bool)

(declare-fun c!741928 () Bool)

(assert (=> bm!303309 (= c!741930 c!741928)))

(declare-fun b!4362907 () Bool)

(assert (=> b!4362907 (= e!2715255 (contains!11225 (keys!16560 lt!1574453) (_1!27497 lt!1574080)))))

(declare-fun b!4362908 () Bool)

(declare-fun lt!1575199 () Unit!72449)

(assert (=> b!4362908 (= e!2715259 lt!1575199)))

(declare-fun lt!1575196 () Unit!72449)

(assert (=> b!4362908 (= lt!1575196 (lemmaContainsKeyImpliesGetValueByKeyDefined!389 (toList!3002 lt!1574453) (_1!27497 lt!1574080)))))

(assert (=> b!4362908 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574453) (_1!27497 lt!1574080)))))

(declare-fun lt!1575201 () Unit!72449)

(assert (=> b!4362908 (= lt!1575201 lt!1575196)))

(assert (=> b!4362908 (= lt!1575199 (lemmaInListThenGetKeysListContains!135 (toList!3002 lt!1574453) (_1!27497 lt!1574080)))))

(assert (=> b!4362908 call!303314))

(declare-fun d!1291160 () Bool)

(assert (=> d!1291160 e!2715257))

(declare-fun res!1794004 () Bool)

(assert (=> d!1291160 (=> res!1794004 e!2715257)))

(assert (=> d!1291160 (= res!1794004 e!2715254)))

(declare-fun res!1794003 () Bool)

(assert (=> d!1291160 (=> (not res!1794003) (not e!2715254))))

(declare-fun lt!1575197 () Bool)

(assert (=> d!1291160 (= res!1794003 (not lt!1575197))))

(declare-fun lt!1575198 () Bool)

(assert (=> d!1291160 (= lt!1575197 lt!1575198)))

(declare-fun lt!1575195 () Unit!72449)

(assert (=> d!1291160 (= lt!1575195 e!2715259)))

(assert (=> d!1291160 (= c!741928 lt!1575198)))

(assert (=> d!1291160 (= lt!1575198 (containsKey!737 (toList!3002 lt!1574453) (_1!27497 lt!1574080)))))

(assert (=> d!1291160 (= (contains!11221 lt!1574453 (_1!27497 lt!1574080)) lt!1575197)))

(assert (= (and d!1291160 c!741928) b!4362908))

(assert (= (and d!1291160 (not c!741928)) b!4362900))

(assert (= (and b!4362900 c!741929) b!4362903))

(assert (= (and b!4362900 (not c!741929)) b!4362901))

(assert (= (or b!4362908 b!4362900) bm!303309))

(assert (= (and bm!303309 c!741930) b!4362906))

(assert (= (and bm!303309 (not c!741930)) b!4362905))

(assert (= (and d!1291160 res!1794003) b!4362904))

(assert (= (and d!1291160 (not res!1794004)) b!4362902))

(assert (= (and b!4362902 res!1794002) b!4362907))

(declare-fun m!4983137 () Bool)

(assert (=> b!4362904 m!4983137))

(assert (=> b!4362904 m!4983137))

(declare-fun m!4983139 () Bool)

(assert (=> b!4362904 m!4983139))

(declare-fun m!4983141 () Bool)

(assert (=> bm!303309 m!4983141))

(assert (=> b!4362907 m!4983137))

(assert (=> b!4362907 m!4983137))

(assert (=> b!4362907 m!4983139))

(declare-fun m!4983143 () Bool)

(assert (=> b!4362906 m!4983143))

(declare-fun m!4983145 () Bool)

(assert (=> d!1291160 m!4983145))

(assert (=> b!4362905 m!4983137))

(assert (=> b!4362902 m!4980967))

(assert (=> b!4362902 m!4980967))

(declare-fun m!4983147 () Bool)

(assert (=> b!4362902 m!4983147))

(assert (=> b!4362903 m!4983145))

(declare-fun m!4983149 () Bool)

(assert (=> b!4362903 m!4983149))

(declare-fun m!4983151 () Bool)

(assert (=> b!4362908 m!4983151))

(assert (=> b!4362908 m!4980967))

(assert (=> b!4362908 m!4980967))

(assert (=> b!4362908 m!4983147))

(declare-fun m!4983153 () Bool)

(assert (=> b!4362908 m!4983153))

(assert (=> d!1290476 d!1291160))

(declare-fun b!4362912 () Bool)

(declare-fun e!2715261 () Option!10493)

(assert (=> b!4362912 (= e!2715261 None!10492)))

(declare-fun b!4362911 () Bool)

(assert (=> b!4362911 (= e!2715261 (getValueByKey!479 (t!356027 lt!1574451) (_1!27497 lt!1574080)))))

(declare-fun d!1291162 () Bool)

(declare-fun c!741931 () Bool)

(assert (=> d!1291162 (= c!741931 (and ((_ is Cons!48983) lt!1574451) (= (_1!27497 (h!54546 lt!1574451)) (_1!27497 lt!1574080))))))

(declare-fun e!2715260 () Option!10493)

(assert (=> d!1291162 (= (getValueByKey!479 lt!1574451 (_1!27497 lt!1574080)) e!2715260)))

(declare-fun b!4362909 () Bool)

(assert (=> b!4362909 (= e!2715260 (Some!10492 (_2!27497 (h!54546 lt!1574451))))))

(declare-fun b!4362910 () Bool)

(assert (=> b!4362910 (= e!2715260 e!2715261)))

(declare-fun c!741932 () Bool)

(assert (=> b!4362910 (= c!741932 (and ((_ is Cons!48983) lt!1574451) (not (= (_1!27497 (h!54546 lt!1574451)) (_1!27497 lt!1574080)))))))

(assert (= (and d!1291162 c!741931) b!4362909))

(assert (= (and d!1291162 (not c!741931)) b!4362910))

(assert (= (and b!4362910 c!741932) b!4362911))

(assert (= (and b!4362910 (not c!741932)) b!4362912))

(declare-fun m!4983155 () Bool)

(assert (=> b!4362911 m!4983155))

(assert (=> d!1290476 d!1291162))

(declare-fun d!1291164 () Bool)

(assert (=> d!1291164 (= (getValueByKey!479 lt!1574451 (_1!27497 lt!1574080)) (Some!10492 (_2!27497 lt!1574080)))))

(declare-fun lt!1575202 () Unit!72449)

(assert (=> d!1291164 (= lt!1575202 (choose!27054 lt!1574451 (_1!27497 lt!1574080) (_2!27497 lt!1574080)))))

(declare-fun e!2715262 () Bool)

(assert (=> d!1291164 e!2715262))

(declare-fun res!1794005 () Bool)

(assert (=> d!1291164 (=> (not res!1794005) (not e!2715262))))

(assert (=> d!1291164 (= res!1794005 (invariantList!690 lt!1574451))))

(assert (=> d!1291164 (= (lemmaContainsTupThenGetReturnValue!252 lt!1574451 (_1!27497 lt!1574080) (_2!27497 lt!1574080)) lt!1575202)))

(declare-fun b!4362913 () Bool)

(declare-fun res!1794006 () Bool)

(assert (=> b!4362913 (=> (not res!1794006) (not e!2715262))))

(assert (=> b!4362913 (= res!1794006 (containsKey!737 lt!1574451 (_1!27497 lt!1574080)))))

(declare-fun b!4362914 () Bool)

(assert (=> b!4362914 (= e!2715262 (contains!11223 lt!1574451 (tuple2!48407 (_1!27497 lt!1574080) (_2!27497 lt!1574080))))))

(assert (= (and d!1291164 res!1794005) b!4362913))

(assert (= (and b!4362913 res!1794006) b!4362914))

(assert (=> d!1291164 m!4980961))

(declare-fun m!4983157 () Bool)

(assert (=> d!1291164 m!4983157))

(declare-fun m!4983159 () Bool)

(assert (=> d!1291164 m!4983159))

(declare-fun m!4983161 () Bool)

(assert (=> b!4362913 m!4983161))

(declare-fun m!4983163 () Bool)

(assert (=> b!4362914 m!4983163))

(assert (=> d!1290476 d!1291164))

(declare-fun b!4362915 () Bool)

(declare-fun e!2715263 () List!49107)

(assert (=> b!4362915 (= e!2715263 (insertNoDuplicatedKeys!113 (t!356027 (toList!3002 lt!1574075)) (_1!27497 lt!1574080) (_2!27497 lt!1574080)))))

(declare-fun b!4362916 () Bool)

(assert (=> b!4362916 false))

(declare-fun lt!1575210 () Unit!72449)

(declare-fun lt!1575209 () Unit!72449)

(assert (=> b!4362916 (= lt!1575210 lt!1575209)))

(assert (=> b!4362916 (containsKey!737 (t!356027 (toList!3002 lt!1574075)) (_1!27497 (h!54546 (toList!3002 lt!1574075))))))

(assert (=> b!4362916 (= lt!1575209 (lemmaInGetKeysListThenContainsKey!136 (t!356027 (toList!3002 lt!1574075)) (_1!27497 (h!54546 (toList!3002 lt!1574075)))))))

(declare-fun lt!1575211 () Unit!72449)

(declare-fun lt!1575212 () Unit!72449)

(assert (=> b!4362916 (= lt!1575211 lt!1575212)))

(declare-fun call!303315 () List!49110)

(assert (=> b!4362916 (contains!11225 call!303315 (_1!27497 (h!54546 (toList!3002 lt!1574075))))))

(declare-fun lt!1575207 () List!49107)

(assert (=> b!4362916 (= lt!1575212 (lemmaInListThenGetKeysListContains!135 lt!1575207 (_1!27497 (h!54546 (toList!3002 lt!1574075)))))))

(assert (=> b!4362916 (= lt!1575207 (insertNoDuplicatedKeys!113 (t!356027 (toList!3002 lt!1574075)) (_1!27497 lt!1574080) (_2!27497 lt!1574080)))))

(declare-fun e!2715267 () Unit!72449)

(declare-fun Unit!72673 () Unit!72449)

(assert (=> b!4362916 (= e!2715267 Unit!72673)))

(declare-fun b!4362917 () Bool)

(declare-fun Unit!72674 () Unit!72449)

(assert (=> b!4362917 (= e!2715267 Unit!72674)))

(declare-fun b!4362918 () Bool)

(declare-fun e!2715265 () List!49107)

(declare-fun call!303318 () List!49107)

(assert (=> b!4362918 (= e!2715265 call!303318)))

(declare-fun lt!1575208 () List!49110)

(assert (=> b!4362918 (= lt!1575208 call!303315)))

(declare-fun lt!1575203 () Unit!72449)

(assert (=> b!4362918 (= lt!1575203 (lemmaSubseqRefl!76 lt!1575208))))

(assert (=> b!4362918 (subseq!592 lt!1575208 lt!1575208)))

(declare-fun lt!1575206 () Unit!72449)

(assert (=> b!4362918 (= lt!1575206 lt!1575203)))

(declare-fun d!1291166 () Bool)

(declare-fun e!2715264 () Bool)

(assert (=> d!1291166 e!2715264))

(declare-fun res!1794009 () Bool)

(assert (=> d!1291166 (=> (not res!1794009) (not e!2715264))))

(declare-fun lt!1575204 () List!49107)

(assert (=> d!1291166 (= res!1794009 (invariantList!690 lt!1575204))))

(assert (=> d!1291166 (= lt!1575204 e!2715265)))

(declare-fun c!741934 () Bool)

(assert (=> d!1291166 (= c!741934 (and ((_ is Cons!48983) (toList!3002 lt!1574075)) (= (_1!27497 (h!54546 (toList!3002 lt!1574075))) (_1!27497 lt!1574080))))))

(assert (=> d!1291166 (invariantList!690 (toList!3002 lt!1574075))))

(assert (=> d!1291166 (= (insertNoDuplicatedKeys!113 (toList!3002 lt!1574075) (_1!27497 lt!1574080) (_2!27497 lt!1574080)) lt!1575204)))

(declare-fun b!4362919 () Bool)

(declare-fun c!741937 () Bool)

(assert (=> b!4362919 (= c!741937 ((_ is Cons!48983) (toList!3002 lt!1574075)))))

(declare-fun e!2715268 () List!49107)

(declare-fun e!2715269 () List!49107)

(assert (=> b!4362919 (= e!2715268 e!2715269)))

(declare-fun bm!303310 () Bool)

(assert (=> bm!303310 (= call!303315 (getKeysList!138 (ite c!741934 (toList!3002 lt!1574075) lt!1575207)))))

(declare-fun b!4362920 () Bool)

(assert (=> b!4362920 (= e!2715264 (= (content!7751 (getKeysList!138 lt!1575204)) ((_ map or) (content!7751 (getKeysList!138 (toList!3002 lt!1574075))) (store ((as const (Array K!10340 Bool)) false) (_1!27497 lt!1574080) true))))))

(declare-fun bm!303311 () Bool)

(declare-fun call!303316 () List!49107)

(assert (=> bm!303311 (= call!303316 call!303318)))

(declare-fun b!4362921 () Bool)

(declare-fun res!1794007 () Bool)

(assert (=> b!4362921 (=> (not res!1794007) (not e!2715264))))

(assert (=> b!4362921 (= res!1794007 (contains!11223 lt!1575204 (tuple2!48407 (_1!27497 lt!1574080) (_2!27497 lt!1574080))))))

(declare-fun b!4362922 () Bool)

(assert (=> b!4362922 (= e!2715263 Nil!48983)))

(declare-fun bm!303312 () Bool)

(declare-fun call!303317 () List!49107)

(assert (=> bm!303312 (= call!303317 call!303316)))

(declare-fun c!741935 () Bool)

(assert (=> bm!303312 (= c!741935 c!741937)))

(declare-fun b!4362923 () Bool)

(assert (=> b!4362923 (= e!2715268 call!303316)))

(declare-fun b!4362924 () Bool)

(declare-fun res!1794008 () Bool)

(assert (=> b!4362924 (=> (not res!1794008) (not e!2715264))))

(assert (=> b!4362924 (= res!1794008 (containsKey!737 lt!1575204 (_1!27497 lt!1574080)))))

(declare-fun b!4362925 () Bool)

(declare-fun lt!1575213 () List!49107)

(assert (=> b!4362925 (= e!2715269 lt!1575213)))

(assert (=> b!4362925 (= lt!1575213 call!303317)))

(declare-fun c!741936 () Bool)

(assert (=> b!4362925 (= c!741936 (containsKey!737 (insertNoDuplicatedKeys!113 (t!356027 (toList!3002 lt!1574075)) (_1!27497 lt!1574080) (_2!27497 lt!1574080)) (_1!27497 (h!54546 (toList!3002 lt!1574075)))))))

(declare-fun lt!1575205 () Unit!72449)

(assert (=> b!4362925 (= lt!1575205 e!2715267)))

(declare-fun b!4362926 () Bool)

(declare-fun e!2715266 () Bool)

(assert (=> b!4362926 (= e!2715266 (not (containsKey!737 (toList!3002 lt!1574075) (_1!27497 lt!1574080))))))

(declare-fun b!4362927 () Bool)

(assert (=> b!4362927 (= e!2715269 call!303317)))

(declare-fun bm!303313 () Bool)

(declare-fun c!741933 () Bool)

(assert (=> bm!303313 (= call!303318 ($colon$colon!702 (ite c!741934 (t!356027 (toList!3002 lt!1574075)) (ite c!741933 (toList!3002 lt!1574075) e!2715263)) (ite (or c!741934 c!741933) (tuple2!48407 (_1!27497 lt!1574080) (_2!27497 lt!1574080)) (ite c!741937 (h!54546 (toList!3002 lt!1574075)) (tuple2!48407 (_1!27497 lt!1574080) (_2!27497 lt!1574080))))))))

(declare-fun b!4362928 () Bool)

(assert (=> b!4362928 (= e!2715265 e!2715268)))

(declare-fun res!1794010 () Bool)

(assert (=> b!4362928 (= res!1794010 ((_ is Cons!48983) (toList!3002 lt!1574075)))))

(assert (=> b!4362928 (=> (not res!1794010) (not e!2715266))))

(assert (=> b!4362928 (= c!741933 e!2715266)))

(assert (= (and d!1291166 c!741934) b!4362918))

(assert (= (and d!1291166 (not c!741934)) b!4362928))

(assert (= (and b!4362928 res!1794010) b!4362926))

(assert (= (and b!4362928 c!741933) b!4362923))

(assert (= (and b!4362928 (not c!741933)) b!4362919))

(assert (= (and b!4362919 c!741937) b!4362925))

(assert (= (and b!4362919 (not c!741937)) b!4362927))

(assert (= (and b!4362925 c!741936) b!4362916))

(assert (= (and b!4362925 (not c!741936)) b!4362917))

(assert (= (or b!4362925 b!4362927) bm!303312))

(assert (= (and bm!303312 c!741935) b!4362915))

(assert (= (and bm!303312 (not c!741935)) b!4362922))

(assert (= (or b!4362923 bm!303312) bm!303311))

(assert (= (or b!4362918 b!4362916) bm!303310))

(assert (= (or b!4362918 bm!303311) bm!303313))

(assert (= (and d!1291166 res!1794009) b!4362924))

(assert (= (and b!4362924 res!1794008) b!4362921))

(assert (= (and b!4362921 res!1794007) b!4362920))

(declare-fun m!4983165 () Bool)

(assert (=> b!4362916 m!4983165))

(declare-fun m!4983167 () Bool)

(assert (=> b!4362916 m!4983167))

(declare-fun m!4983169 () Bool)

(assert (=> b!4362916 m!4983169))

(declare-fun m!4983171 () Bool)

(assert (=> b!4362916 m!4983171))

(declare-fun m!4983173 () Bool)

(assert (=> b!4362916 m!4983173))

(declare-fun m!4983175 () Bool)

(assert (=> b!4362920 m!4983175))

(assert (=> b!4362920 m!4983175))

(declare-fun m!4983177 () Bool)

(assert (=> b!4362920 m!4983177))

(declare-fun m!4983179 () Bool)

(assert (=> b!4362920 m!4983179))

(declare-fun m!4983181 () Bool)

(assert (=> b!4362920 m!4983181))

(assert (=> b!4362920 m!4983179))

(assert (=> b!4362920 m!4982009))

(declare-fun m!4983183 () Bool)

(assert (=> b!4362918 m!4983183))

(declare-fun m!4983185 () Bool)

(assert (=> b!4362918 m!4983185))

(declare-fun m!4983187 () Bool)

(assert (=> b!4362924 m!4983187))

(declare-fun m!4983189 () Bool)

(assert (=> d!1291166 m!4983189))

(declare-fun m!4983191 () Bool)

(assert (=> d!1291166 m!4983191))

(assert (=> b!4362915 m!4983167))

(assert (=> b!4362925 m!4983167))

(assert (=> b!4362925 m!4983167))

(declare-fun m!4983193 () Bool)

(assert (=> b!4362925 m!4983193))

(declare-fun m!4983195 () Bool)

(assert (=> bm!303310 m!4983195))

(declare-fun m!4983197 () Bool)

(assert (=> b!4362926 m!4983197))

(declare-fun m!4983199 () Bool)

(assert (=> bm!303313 m!4983199))

(declare-fun m!4983201 () Bool)

(assert (=> b!4362921 m!4983201))

(assert (=> d!1290476 d!1291166))

(declare-fun lt!1575214 () Bool)

(declare-fun d!1291168 () Bool)

(assert (=> d!1291168 (= lt!1575214 (select (content!7749 (toList!3001 lm!1707)) (tuple2!48409 hash!377 lt!1574083)))))

(declare-fun e!2715270 () Bool)

(assert (=> d!1291168 (= lt!1575214 e!2715270)))

(declare-fun res!1794011 () Bool)

(assert (=> d!1291168 (=> (not res!1794011) (not e!2715270))))

(assert (=> d!1291168 (= res!1794011 ((_ is Cons!48984) (toList!3001 lm!1707)))))

(assert (=> d!1291168 (= (contains!11220 (toList!3001 lm!1707) (tuple2!48409 hash!377 lt!1574083)) lt!1575214)))

(declare-fun b!4362929 () Bool)

(declare-fun e!2715271 () Bool)

(assert (=> b!4362929 (= e!2715270 e!2715271)))

(declare-fun res!1794012 () Bool)

(assert (=> b!4362929 (=> res!1794012 e!2715271)))

(assert (=> b!4362929 (= res!1794012 (= (h!54547 (toList!3001 lm!1707)) (tuple2!48409 hash!377 lt!1574083)))))

(declare-fun b!4362930 () Bool)

(assert (=> b!4362930 (= e!2715271 (contains!11220 (t!356028 (toList!3001 lm!1707)) (tuple2!48409 hash!377 lt!1574083)))))

(assert (= (and d!1291168 res!1794011) b!4362929))

(assert (= (and b!4362929 (not res!1794012)) b!4362930))

(assert (=> d!1291168 m!4981051))

(declare-fun m!4983203 () Bool)

(assert (=> d!1291168 m!4983203))

(declare-fun m!4983205 () Bool)

(assert (=> b!4362930 m!4983205))

(assert (=> d!1290500 d!1291168))

(declare-fun d!1291170 () Bool)

(assert (=> d!1291170 (contains!11220 (toList!3001 lm!1707) (tuple2!48409 hash!377 lt!1574083))))

(assert (=> d!1291170 true))

(declare-fun _$14!774 () Unit!72449)

(assert (=> d!1291170 (= (choose!27041 (toList!3001 lm!1707) hash!377 lt!1574083) _$14!774)))

(declare-fun bs!635952 () Bool)

(assert (= bs!635952 d!1291170))

(assert (=> bs!635952 m!4981047))

(assert (=> d!1290500 d!1291170))

(assert (=> d!1290500 d!1291128))

(declare-fun d!1291172 () Bool)

(declare-fun choose!27063 (Hashable!4901 K!10340) (_ BitVec 64))

(assert (=> d!1291172 (= (hash!1627 hashF!1247 key!3918) (choose!27063 hashF!1247 key!3918))))

(declare-fun bs!635953 () Bool)

(assert (= bs!635953 d!1291172))

(declare-fun m!4983207 () Bool)

(assert (=> bs!635953 m!4983207))

(assert (=> d!1290492 d!1291172))

(declare-fun d!1291174 () Bool)

(declare-fun res!1794013 () Bool)

(declare-fun e!2715272 () Bool)

(assert (=> d!1291174 (=> res!1794013 e!2715272)))

(assert (=> d!1291174 (= res!1794013 ((_ is Nil!48984) (t!356028 (toList!3001 lm!1707))))))

(assert (=> d!1291174 (= (forall!9156 (t!356028 (toList!3001 lm!1707)) lambda!141629) e!2715272)))

(declare-fun b!4362931 () Bool)

(declare-fun e!2715273 () Bool)

(assert (=> b!4362931 (= e!2715272 e!2715273)))

(declare-fun res!1794014 () Bool)

(assert (=> b!4362931 (=> (not res!1794014) (not e!2715273))))

(assert (=> b!4362931 (= res!1794014 (dynLambda!20651 lambda!141629 (h!54547 (t!356028 (toList!3001 lm!1707)))))))

(declare-fun b!4362932 () Bool)

(assert (=> b!4362932 (= e!2715273 (forall!9156 (t!356028 (t!356028 (toList!3001 lm!1707))) lambda!141629))))

(assert (= (and d!1291174 (not res!1794013)) b!4362931))

(assert (= (and b!4362931 res!1794014) b!4362932))

(declare-fun b_lambda!132051 () Bool)

(assert (=> (not b_lambda!132051) (not b!4362931)))

(declare-fun m!4983209 () Bool)

(assert (=> b!4362931 m!4983209))

(declare-fun m!4983211 () Bool)

(assert (=> b!4362932 m!4983211))

(assert (=> b!4361572 d!1291174))

(assert (=> b!4361698 d!1291156))

(declare-fun d!1291176 () Bool)

(assert (=> d!1291176 (containsKey!737 (toList!3002 lt!1574079) key!3918)))

(declare-fun lt!1575215 () Unit!72449)

(assert (=> d!1291176 (= lt!1575215 (choose!27061 (toList!3002 lt!1574079) key!3918))))

(assert (=> d!1291176 (invariantList!690 (toList!3002 lt!1574079))))

(assert (=> d!1291176 (= (lemmaInGetKeysListThenContainsKey!136 (toList!3002 lt!1574079) key!3918) lt!1575215)))

(declare-fun bs!635954 () Bool)

(assert (= bs!635954 d!1291176))

(assert (=> bs!635954 m!4980619))

(declare-fun m!4983213 () Bool)

(assert (=> bs!635954 m!4983213))

(assert (=> bs!635954 m!4982019))

(assert (=> b!4361698 d!1291176))

(declare-fun d!1291178 () Bool)

(assert (=> d!1291178 (= (invariantList!690 (toList!3002 lt!1574473)) (noDuplicatedKeys!123 (toList!3002 lt!1574473)))))

(declare-fun bs!635955 () Bool)

(assert (= bs!635955 d!1291178))

(declare-fun m!4983215 () Bool)

(assert (=> bs!635955 m!4983215))

(assert (=> d!1290490 d!1291178))

(declare-fun d!1291180 () Bool)

(declare-fun res!1794015 () Bool)

(declare-fun e!2715274 () Bool)

(assert (=> d!1291180 (=> res!1794015 e!2715274)))

(assert (=> d!1291180 (= res!1794015 ((_ is Nil!48984) (toList!3001 lm!1707)))))

(assert (=> d!1291180 (= (forall!9156 (toList!3001 lm!1707) lambda!141731) e!2715274)))

(declare-fun b!4362933 () Bool)

(declare-fun e!2715275 () Bool)

(assert (=> b!4362933 (= e!2715274 e!2715275)))

(declare-fun res!1794016 () Bool)

(assert (=> b!4362933 (=> (not res!1794016) (not e!2715275))))

(assert (=> b!4362933 (= res!1794016 (dynLambda!20651 lambda!141731 (h!54547 (toList!3001 lm!1707))))))

(declare-fun b!4362934 () Bool)

(assert (=> b!4362934 (= e!2715275 (forall!9156 (t!356028 (toList!3001 lm!1707)) lambda!141731))))

(assert (= (and d!1291180 (not res!1794015)) b!4362933))

(assert (= (and b!4362933 res!1794016) b!4362934))

(declare-fun b_lambda!132053 () Bool)

(assert (=> (not b_lambda!132053) (not b!4362933)))

(declare-fun m!4983217 () Bool)

(assert (=> b!4362933 m!4983217))

(declare-fun m!4983219 () Bool)

(assert (=> b!4362934 m!4983219))

(assert (=> d!1290490 d!1291180))

(declare-fun d!1291182 () Bool)

(declare-fun lt!1575218 () Bool)

(assert (=> d!1291182 (= lt!1575218 (select (content!7748 (toList!3002 lt!1574489)) lt!1574080))))

(declare-fun e!2715280 () Bool)

(assert (=> d!1291182 (= lt!1575218 e!2715280)))

(declare-fun res!1794021 () Bool)

(assert (=> d!1291182 (=> (not res!1794021) (not e!2715280))))

(assert (=> d!1291182 (= res!1794021 ((_ is Cons!48983) (toList!3002 lt!1574489)))))

(assert (=> d!1291182 (= (contains!11223 (toList!3002 lt!1574489) lt!1574080) lt!1575218)))

(declare-fun b!4362939 () Bool)

(declare-fun e!2715281 () Bool)

(assert (=> b!4362939 (= e!2715280 e!2715281)))

(declare-fun res!1794022 () Bool)

(assert (=> b!4362939 (=> res!1794022 e!2715281)))

(assert (=> b!4362939 (= res!1794022 (= (h!54546 (toList!3002 lt!1574489)) lt!1574080))))

(declare-fun b!4362940 () Bool)

(assert (=> b!4362940 (= e!2715281 (contains!11223 (t!356027 (toList!3002 lt!1574489)) lt!1574080))))

(assert (= (and d!1291182 res!1794021) b!4362939))

(assert (= (and b!4362939 (not res!1794022)) b!4362940))

(declare-fun m!4983221 () Bool)

(assert (=> d!1291182 m!4983221))

(declare-fun m!4983223 () Bool)

(assert (=> d!1291182 m!4983223))

(declare-fun m!4983225 () Bool)

(assert (=> b!4362940 m!4983225))

(assert (=> b!4361861 d!1291182))

(declare-fun d!1291184 () Bool)

(declare-fun res!1794023 () Bool)

(declare-fun e!2715282 () Bool)

(assert (=> d!1291184 (=> res!1794023 e!2715282)))

(assert (=> d!1291184 (= res!1794023 ((_ is Nil!48983) (toList!3002 lt!1574071)))))

(assert (=> d!1291184 (= (forall!9158 (toList!3002 lt!1574071) (ite c!741655 lambda!141722 lambda!141723)) e!2715282)))

(declare-fun b!4362941 () Bool)

(declare-fun e!2715283 () Bool)

(assert (=> b!4362941 (= e!2715282 e!2715283)))

(declare-fun res!1794024 () Bool)

(assert (=> b!4362941 (=> (not res!1794024) (not e!2715283))))

(assert (=> b!4362941 (= res!1794024 (dynLambda!20653 (ite c!741655 lambda!141722 lambda!141723) (h!54546 (toList!3002 lt!1574071))))))

(declare-fun b!4362942 () Bool)

(assert (=> b!4362942 (= e!2715283 (forall!9158 (t!356027 (toList!3002 lt!1574071)) (ite c!741655 lambda!141722 lambda!141723)))))

(assert (= (and d!1291184 (not res!1794023)) b!4362941))

(assert (= (and b!4362941 res!1794024) b!4362942))

(declare-fun b_lambda!132055 () Bool)

(assert (=> (not b_lambda!132055) (not b!4362941)))

(declare-fun m!4983227 () Bool)

(assert (=> b!4362941 m!4983227))

(declare-fun m!4983229 () Bool)

(assert (=> b!4362942 m!4983229))

(assert (=> bm!303202 d!1291184))

(declare-fun d!1291186 () Bool)

(declare-fun res!1794025 () Bool)

(declare-fun e!2715284 () Bool)

(assert (=> d!1291186 (=> res!1794025 e!2715284)))

(assert (=> d!1291186 (= res!1794025 ((_ is Nil!48984) (t!356028 (toList!3001 lt!1574070))))))

(assert (=> d!1291186 (= (forall!9156 (t!356028 (toList!3001 lt!1574070)) lambda!141629) e!2715284)))

(declare-fun b!4362943 () Bool)

(declare-fun e!2715285 () Bool)

(assert (=> b!4362943 (= e!2715284 e!2715285)))

(declare-fun res!1794026 () Bool)

(assert (=> b!4362943 (=> (not res!1794026) (not e!2715285))))

(assert (=> b!4362943 (= res!1794026 (dynLambda!20651 lambda!141629 (h!54547 (t!356028 (toList!3001 lt!1574070)))))))

(declare-fun b!4362944 () Bool)

(assert (=> b!4362944 (= e!2715285 (forall!9156 (t!356028 (t!356028 (toList!3001 lt!1574070))) lambda!141629))))

(assert (= (and d!1291186 (not res!1794025)) b!4362943))

(assert (= (and b!4362943 res!1794026) b!4362944))

(declare-fun b_lambda!132057 () Bool)

(assert (=> (not b_lambda!132057) (not b!4362943)))

(declare-fun m!4983231 () Bool)

(assert (=> b!4362943 m!4983231))

(declare-fun m!4983233 () Bool)

(assert (=> b!4362944 m!4983233))

(assert (=> b!4361592 d!1291186))

(assert (=> b!4361711 d!1290808))

(declare-fun d!1291188 () Bool)

(assert (=> d!1291188 (dynLambda!20653 lambda!141720 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))

(declare-fun lt!1575219 () Unit!72449)

(assert (=> d!1291188 (= lt!1575219 (choose!27058 (toList!3002 lt!1574408) lambda!141720 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(declare-fun e!2715286 () Bool)

(assert (=> d!1291188 e!2715286))

(declare-fun res!1794027 () Bool)

(assert (=> d!1291188 (=> (not res!1794027) (not e!2715286))))

(assert (=> d!1291188 (= res!1794027 (forall!9158 (toList!3002 lt!1574408) lambda!141720))))

(assert (=> d!1291188 (= (forallContained!1799 (toList!3002 lt!1574408) lambda!141720 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1575219)))

(declare-fun b!4362945 () Bool)

(assert (=> b!4362945 (= e!2715286 (contains!11223 (toList!3002 lt!1574408) (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (= (and d!1291188 res!1794027) b!4362945))

(declare-fun b_lambda!132059 () Bool)

(assert (=> (not b_lambda!132059) (not d!1291188)))

(declare-fun m!4983235 () Bool)

(assert (=> d!1291188 m!4983235))

(declare-fun m!4983237 () Bool)

(assert (=> d!1291188 m!4983237))

(assert (=> d!1291188 m!4980883))

(declare-fun m!4983239 () Bool)

(assert (=> b!4362945 m!4983239))

(assert (=> b!4361789 d!1291188))

(declare-fun bs!635956 () Bool)

(declare-fun d!1291190 () Bool)

(assert (= bs!635956 (and d!1291190 b!4362847)))

(declare-fun lambda!141864 () Int)

(assert (=> bs!635956 (= (= lt!1574405 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141864 lambda!141851))))

(declare-fun bs!635957 () Bool)

(assert (= bs!635957 (and d!1291190 d!1291022)))

(assert (=> bs!635957 (= (= lt!1574405 lt!1575137) (= lambda!141864 lambda!141849))))

(declare-fun bs!635958 () Bool)

(assert (= bs!635958 (and d!1291190 b!4361789)))

(assert (=> bs!635958 (= lambda!141864 lambda!141720)))

(declare-fun bs!635959 () Bool)

(assert (= bs!635959 (and d!1291190 b!4362673)))

(assert (=> bs!635959 (= (= lt!1574405 lt!1575022) (= lambda!141864 lambda!141826))))

(assert (=> bs!635958 (= (= lt!1574405 lt!1574079) (= lambda!141864 lambda!141719))))

(declare-fun bs!635960 () Bool)

(assert (= bs!635960 (and d!1291190 d!1291136)))

(assert (=> bs!635960 (= (= lt!1574405 lt!1574071) (= lambda!141864 lambda!141858))))

(declare-fun bs!635961 () Bool)

(assert (= bs!635961 (and d!1291190 b!4362144)))

(assert (=> bs!635961 (= (= lt!1574405 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141864 lambda!141760))))

(declare-fun bs!635962 () Bool)

(assert (= bs!635962 (and d!1291190 b!4362844)))

(assert (=> bs!635962 (= (= lt!1574405 lt!1575149) (= lambda!141864 lambda!141853))))

(declare-fun bs!635963 () Bool)

(assert (= bs!635963 (and d!1291190 d!1291148)))

(assert (=> bs!635963 (= (= lt!1574405 lt!1574079) (= lambda!141864 lambda!141863))))

(declare-fun bs!635964 () Bool)

(assert (= bs!635964 (and d!1291190 b!4362819)))

(assert (=> bs!635964 (= (= lt!1574405 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141864 lambda!141846))))

(declare-fun bs!635965 () Bool)

(assert (= bs!635965 (and d!1291190 d!1290638)))

(assert (=> bs!635965 (= (= lt!1574405 lt!1574661) (= lambda!141864 lambda!141763))))

(assert (=> bs!635959 (= (= lt!1574405 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141864 lambda!141824))))

(declare-fun bs!635966 () Bool)

(assert (= bs!635966 (and d!1291190 b!4361792)))

(assert (=> bs!635966 (= (= lt!1574405 lt!1574079) (= lambda!141864 lambda!141718))))

(declare-fun bs!635967 () Bool)

(assert (= bs!635967 (and d!1291190 b!4362141)))

(assert (=> bs!635967 (= (= lt!1574405 lt!1574649) (= lambda!141864 lambda!141762))))

(declare-fun bs!635968 () Bool)

(assert (= bs!635968 (and d!1291190 b!4361802)))

(assert (=> bs!635968 (= (= lt!1574405 lt!1574071) (= lambda!141864 lambda!141723))))

(declare-fun bs!635969 () Bool)

(assert (= bs!635969 (and d!1291190 d!1290942)))

(assert (=> bs!635969 (= (= lt!1574405 lt!1574426) (= lambda!141864 lambda!141839))))

(declare-fun bs!635970 () Bool)

(assert (= bs!635970 (and d!1291190 d!1291092)))

(assert (=> bs!635970 (= (= lt!1574405 lt!1575161) (= lambda!141864 lambda!141854))))

(declare-fun bs!635971 () Bool)

(assert (= bs!635971 (and d!1291190 d!1290518)))

(assert (=> bs!635971 (not (= lambda!141864 lambda!141737))))

(assert (=> bs!635962 (= (= lt!1574405 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141864 lambda!141852))))

(declare-fun bs!635972 () Bool)

(assert (= bs!635972 (and d!1291190 d!1290916)))

(assert (=> bs!635972 (= (= lt!1574405 lt!1575034) (= lambda!141864 lambda!141830))))

(declare-fun bs!635973 () Bool)

(assert (= bs!635973 (and d!1291190 d!1290468)))

(assert (=> bs!635973 (= (= lt!1574405 lt!1574438) (= lambda!141864 lambda!141725))))

(assert (=> bs!635968 (= (= lt!1574405 lt!1574426) (= lambda!141864 lambda!141724))))

(declare-fun bs!635974 () Bool)

(assert (= bs!635974 (and d!1291190 b!4362816)))

(assert (=> bs!635974 (= (= lt!1574405 lt!1575125) (= lambda!141864 lambda!141848))))

(declare-fun bs!635975 () Bool)

(assert (= bs!635975 (and d!1291190 b!4362676)))

(assert (=> bs!635975 (= (= lt!1574405 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141864 lambda!141823))))

(declare-fun bs!635976 () Bool)

(assert (= bs!635976 (and d!1291190 d!1290408)))

(assert (=> bs!635976 (= (= lt!1574405 lt!1574417) (= lambda!141864 lambda!141721))))

(declare-fun bs!635977 () Bool)

(assert (= bs!635977 (and d!1291190 b!4361805)))

(assert (=> bs!635977 (= (= lt!1574405 lt!1574071) (= lambda!141864 lambda!141722))))

(assert (=> bs!635967 (= (= lt!1574405 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141864 lambda!141761))))

(assert (=> bs!635974 (= (= lt!1574405 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141864 lambda!141847))))

(assert (=> d!1291190 true))

(assert (=> d!1291190 (forall!9158 (toList!3002 lt!1574079) lambda!141864)))

(declare-fun lt!1575220 () Unit!72449)

(assert (=> d!1291190 (= lt!1575220 (choose!27059 lt!1574079 lt!1574405 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (_2!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> d!1291190 (forall!9158 (toList!3002 (+!676 lt!1574079 (tuple2!48407 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (_2!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))) lambda!141864)))

(assert (=> d!1291190 (= (addForallContainsKeyThenBeforeAdding!73 lt!1574079 lt!1574405 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (_2!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) lt!1575220)))

(declare-fun bs!635978 () Bool)

(assert (= bs!635978 d!1291190))

(declare-fun m!4983241 () Bool)

(assert (=> bs!635978 m!4983241))

(declare-fun m!4983243 () Bool)

(assert (=> bs!635978 m!4983243))

(declare-fun m!4983245 () Bool)

(assert (=> bs!635978 m!4983245))

(declare-fun m!4983247 () Bool)

(assert (=> bs!635978 m!4983247))

(assert (=> b!4361789 d!1291190))

(declare-fun b!4362946 () Bool)

(declare-fun e!2715292 () Unit!72449)

(declare-fun e!2715291 () Unit!72449)

(assert (=> b!4362946 (= e!2715292 e!2715291)))

(declare-fun c!741939 () Bool)

(declare-fun call!303319 () Bool)

(assert (=> b!4362946 (= c!741939 call!303319)))

(declare-fun b!4362947 () Bool)

(declare-fun Unit!72686 () Unit!72449)

(assert (=> b!4362947 (= e!2715291 Unit!72686)))

(declare-fun b!4362948 () Bool)

(declare-fun e!2715290 () Bool)

(declare-fun e!2715288 () Bool)

(assert (=> b!4362948 (= e!2715290 e!2715288)))

(declare-fun res!1794028 () Bool)

(assert (=> b!4362948 (=> (not res!1794028) (not e!2715288))))

(assert (=> b!4362948 (= res!1794028 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574408) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))))

(declare-fun b!4362949 () Bool)

(assert (=> b!4362949 false))

(declare-fun lt!1575221 () Unit!72449)

(declare-fun lt!1575227 () Unit!72449)

(assert (=> b!4362949 (= lt!1575221 lt!1575227)))

(assert (=> b!4362949 (containsKey!737 (toList!3002 lt!1574408) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (=> b!4362949 (= lt!1575227 (lemmaInGetKeysListThenContainsKey!136 (toList!3002 lt!1574408) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun Unit!72687 () Unit!72449)

(assert (=> b!4362949 (= e!2715291 Unit!72687)))

(declare-fun b!4362950 () Bool)

(declare-fun e!2715287 () Bool)

(assert (=> b!4362950 (= e!2715287 (not (contains!11225 (keys!16560 lt!1574408) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))))

(declare-fun b!4362951 () Bool)

(declare-fun e!2715289 () List!49110)

(assert (=> b!4362951 (= e!2715289 (keys!16560 lt!1574408))))

(declare-fun b!4362952 () Bool)

(assert (=> b!4362952 (= e!2715289 (getKeysList!138 (toList!3002 lt!1574408)))))

(declare-fun bm!303314 () Bool)

(assert (=> bm!303314 (= call!303319 (contains!11225 e!2715289 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun c!741940 () Bool)

(declare-fun c!741938 () Bool)

(assert (=> bm!303314 (= c!741940 c!741938)))

(declare-fun b!4362953 () Bool)

(assert (=> b!4362953 (= e!2715288 (contains!11225 (keys!16560 lt!1574408) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun b!4362954 () Bool)

(declare-fun lt!1575226 () Unit!72449)

(assert (=> b!4362954 (= e!2715292 lt!1575226)))

(declare-fun lt!1575223 () Unit!72449)

(assert (=> b!4362954 (= lt!1575223 (lemmaContainsKeyImpliesGetValueByKeyDefined!389 (toList!3002 lt!1574408) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> b!4362954 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574408) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun lt!1575228 () Unit!72449)

(assert (=> b!4362954 (= lt!1575228 lt!1575223)))

(assert (=> b!4362954 (= lt!1575226 (lemmaInListThenGetKeysListContains!135 (toList!3002 lt!1574408) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> b!4362954 call!303319))

(declare-fun d!1291192 () Bool)

(assert (=> d!1291192 e!2715290))

(declare-fun res!1794030 () Bool)

(assert (=> d!1291192 (=> res!1794030 e!2715290)))

(assert (=> d!1291192 (= res!1794030 e!2715287)))

(declare-fun res!1794029 () Bool)

(assert (=> d!1291192 (=> (not res!1794029) (not e!2715287))))

(declare-fun lt!1575224 () Bool)

(assert (=> d!1291192 (= res!1794029 (not lt!1575224))))

(declare-fun lt!1575225 () Bool)

(assert (=> d!1291192 (= lt!1575224 lt!1575225)))

(declare-fun lt!1575222 () Unit!72449)

(assert (=> d!1291192 (= lt!1575222 e!2715292)))

(assert (=> d!1291192 (= c!741938 lt!1575225)))

(assert (=> d!1291192 (= lt!1575225 (containsKey!737 (toList!3002 lt!1574408) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> d!1291192 (= (contains!11221 lt!1574408 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) lt!1575224)))

(assert (= (and d!1291192 c!741938) b!4362954))

(assert (= (and d!1291192 (not c!741938)) b!4362946))

(assert (= (and b!4362946 c!741939) b!4362949))

(assert (= (and b!4362946 (not c!741939)) b!4362947))

(assert (= (or b!4362954 b!4362946) bm!303314))

(assert (= (and bm!303314 c!741940) b!4362952))

(assert (= (and bm!303314 (not c!741940)) b!4362951))

(assert (= (and d!1291192 res!1794029) b!4362950))

(assert (= (and d!1291192 (not res!1794030)) b!4362948))

(assert (= (and b!4362948 res!1794028) b!4362953))

(declare-fun m!4983249 () Bool)

(assert (=> b!4362950 m!4983249))

(assert (=> b!4362950 m!4983249))

(declare-fun m!4983251 () Bool)

(assert (=> b!4362950 m!4983251))

(declare-fun m!4983253 () Bool)

(assert (=> bm!303314 m!4983253))

(assert (=> b!4362953 m!4983249))

(assert (=> b!4362953 m!4983249))

(assert (=> b!4362953 m!4983251))

(declare-fun m!4983255 () Bool)

(assert (=> b!4362952 m!4983255))

(declare-fun m!4983257 () Bool)

(assert (=> d!1291192 m!4983257))

(assert (=> b!4362951 m!4983249))

(declare-fun m!4983259 () Bool)

(assert (=> b!4362948 m!4983259))

(assert (=> b!4362948 m!4983259))

(declare-fun m!4983261 () Bool)

(assert (=> b!4362948 m!4983261))

(assert (=> b!4362949 m!4983257))

(declare-fun m!4983263 () Bool)

(assert (=> b!4362949 m!4983263))

(declare-fun m!4983265 () Bool)

(assert (=> b!4362954 m!4983265))

(assert (=> b!4362954 m!4983259))

(assert (=> b!4362954 m!4983259))

(assert (=> b!4362954 m!4983261))

(declare-fun m!4983267 () Bool)

(assert (=> b!4362954 m!4983267))

(assert (=> b!4361789 d!1291192))

(declare-fun d!1291194 () Bool)

(declare-fun e!2715293 () Bool)

(assert (=> d!1291194 e!2715293))

(declare-fun res!1794032 () Bool)

(assert (=> d!1291194 (=> (not res!1794032) (not e!2715293))))

(declare-fun lt!1575232 () ListMap!2245)

(assert (=> d!1291194 (= res!1794032 (contains!11221 lt!1575232 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun lt!1575230 () List!49107)

(assert (=> d!1291194 (= lt!1575232 (ListMap!2246 lt!1575230))))

(declare-fun lt!1575229 () Unit!72449)

(declare-fun lt!1575231 () Unit!72449)

(assert (=> d!1291194 (= lt!1575229 lt!1575231)))

(assert (=> d!1291194 (= (getValueByKey!479 lt!1575230 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (Some!10492 (_2!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> d!1291194 (= lt!1575231 (lemmaContainsTupThenGetReturnValue!252 lt!1575230 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (_2!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> d!1291194 (= lt!1575230 (insertNoDuplicatedKeys!113 (toList!3002 lt!1574079) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (_2!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> d!1291194 (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1575232)))

(declare-fun b!4362955 () Bool)

(declare-fun res!1794031 () Bool)

(assert (=> b!4362955 (=> (not res!1794031) (not e!2715293))))

(assert (=> b!4362955 (= res!1794031 (= (getValueByKey!479 (toList!3002 lt!1575232) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (Some!10492 (_2!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))))

(declare-fun b!4362956 () Bool)

(assert (=> b!4362956 (= e!2715293 (contains!11223 (toList!3002 lt!1575232) (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (= (and d!1291194 res!1794032) b!4362955))

(assert (= (and b!4362955 res!1794031) b!4362956))

(declare-fun m!4983269 () Bool)

(assert (=> d!1291194 m!4983269))

(declare-fun m!4983271 () Bool)

(assert (=> d!1291194 m!4983271))

(declare-fun m!4983273 () Bool)

(assert (=> d!1291194 m!4983273))

(declare-fun m!4983275 () Bool)

(assert (=> d!1291194 m!4983275))

(declare-fun m!4983277 () Bool)

(assert (=> b!4362955 m!4983277))

(declare-fun m!4983279 () Bool)

(assert (=> b!4362956 m!4983279))

(assert (=> b!4361789 d!1291194))

(assert (=> b!4361789 d!1291142))

(declare-fun bs!635979 () Bool)

(declare-fun b!4362960 () Bool)

(assert (= bs!635979 (and b!4362960 b!4362847)))

(declare-fun lambda!141865 () Int)

(assert (=> bs!635979 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141865 lambda!141851))))

(declare-fun bs!635980 () Bool)

(assert (= bs!635980 (and b!4362960 d!1291022)))

(assert (=> bs!635980 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1575137) (= lambda!141865 lambda!141849))))

(declare-fun bs!635981 () Bool)

(assert (= bs!635981 (and b!4362960 b!4361789)))

(assert (=> bs!635981 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574405) (= lambda!141865 lambda!141720))))

(declare-fun bs!635982 () Bool)

(assert (= bs!635982 (and b!4362960 b!4362673)))

(assert (=> bs!635982 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1575022) (= lambda!141865 lambda!141826))))

(assert (=> bs!635981 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574079) (= lambda!141865 lambda!141719))))

(declare-fun bs!635983 () Bool)

(assert (= bs!635983 (and b!4362960 d!1291136)))

(assert (=> bs!635983 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574071) (= lambda!141865 lambda!141858))))

(declare-fun bs!635984 () Bool)

(assert (= bs!635984 (and b!4362960 b!4362144)))

(assert (=> bs!635984 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141865 lambda!141760))))

(declare-fun bs!635985 () Bool)

(assert (= bs!635985 (and b!4362960 b!4362844)))

(assert (=> bs!635985 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1575149) (= lambda!141865 lambda!141853))))

(declare-fun bs!635986 () Bool)

(assert (= bs!635986 (and b!4362960 d!1291148)))

(assert (=> bs!635986 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574079) (= lambda!141865 lambda!141863))))

(declare-fun bs!635987 () Bool)

(assert (= bs!635987 (and b!4362960 b!4362819)))

(assert (=> bs!635987 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141865 lambda!141846))))

(assert (=> bs!635982 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141865 lambda!141824))))

(declare-fun bs!635988 () Bool)

(assert (= bs!635988 (and b!4362960 b!4361792)))

(assert (=> bs!635988 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574079) (= lambda!141865 lambda!141718))))

(declare-fun bs!635989 () Bool)

(assert (= bs!635989 (and b!4362960 b!4362141)))

(assert (=> bs!635989 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574649) (= lambda!141865 lambda!141762))))

(declare-fun bs!635990 () Bool)

(assert (= bs!635990 (and b!4362960 b!4361802)))

(assert (=> bs!635990 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574071) (= lambda!141865 lambda!141723))))

(declare-fun bs!635991 () Bool)

(assert (= bs!635991 (and b!4362960 d!1290942)))

(assert (=> bs!635991 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574426) (= lambda!141865 lambda!141839))))

(declare-fun bs!635992 () Bool)

(assert (= bs!635992 (and b!4362960 d!1291092)))

(assert (=> bs!635992 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1575161) (= lambda!141865 lambda!141854))))

(declare-fun bs!635993 () Bool)

(assert (= bs!635993 (and b!4362960 d!1290518)))

(assert (=> bs!635993 (not (= lambda!141865 lambda!141737))))

(assert (=> bs!635985 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141865 lambda!141852))))

(declare-fun bs!635994 () Bool)

(assert (= bs!635994 (and b!4362960 d!1290916)))

(assert (=> bs!635994 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1575034) (= lambda!141865 lambda!141830))))

(declare-fun bs!635995 () Bool)

(assert (= bs!635995 (and b!4362960 d!1290468)))

(assert (=> bs!635995 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574438) (= lambda!141865 lambda!141725))))

(assert (=> bs!635990 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574426) (= lambda!141865 lambda!141724))))

(declare-fun bs!635996 () Bool)

(assert (= bs!635996 (and b!4362960 b!4362816)))

(assert (=> bs!635996 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1575125) (= lambda!141865 lambda!141848))))

(declare-fun bs!635997 () Bool)

(assert (= bs!635997 (and b!4362960 b!4362676)))

(assert (=> bs!635997 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141865 lambda!141823))))

(declare-fun bs!635998 () Bool)

(assert (= bs!635998 (and b!4362960 d!1290408)))

(assert (=> bs!635998 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574417) (= lambda!141865 lambda!141721))))

(declare-fun bs!635999 () Bool)

(assert (= bs!635999 (and b!4362960 d!1291190)))

(assert (=> bs!635999 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574405) (= lambda!141865 lambda!141864))))

(declare-fun bs!636000 () Bool)

(assert (= bs!636000 (and b!4362960 d!1290638)))

(assert (=> bs!636000 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574661) (= lambda!141865 lambda!141763))))

(declare-fun bs!636001 () Bool)

(assert (= bs!636001 (and b!4362960 b!4361805)))

(assert (=> bs!636001 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574071) (= lambda!141865 lambda!141722))))

(assert (=> bs!635989 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141865 lambda!141761))))

(assert (=> bs!635996 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141865 lambda!141847))))

(assert (=> b!4362960 true))

(declare-fun bs!636002 () Bool)

(declare-fun b!4362957 () Bool)

(assert (= bs!636002 (and b!4362957 b!4362847)))

(declare-fun lambda!141866 () Int)

(assert (=> bs!636002 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141866 lambda!141851))))

(declare-fun bs!636003 () Bool)

(assert (= bs!636003 (and b!4362957 d!1291022)))

(assert (=> bs!636003 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1575137) (= lambda!141866 lambda!141849))))

(declare-fun bs!636004 () Bool)

(assert (= bs!636004 (and b!4362957 b!4361789)))

(assert (=> bs!636004 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574405) (= lambda!141866 lambda!141720))))

(declare-fun bs!636005 () Bool)

(assert (= bs!636005 (and b!4362957 b!4362673)))

(assert (=> bs!636005 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1575022) (= lambda!141866 lambda!141826))))

(assert (=> bs!636004 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574079) (= lambda!141866 lambda!141719))))

(declare-fun bs!636006 () Bool)

(assert (= bs!636006 (and b!4362957 d!1291136)))

(assert (=> bs!636006 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574071) (= lambda!141866 lambda!141858))))

(declare-fun bs!636007 () Bool)

(assert (= bs!636007 (and b!4362957 b!4362144)))

(assert (=> bs!636007 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141866 lambda!141760))))

(declare-fun bs!636008 () Bool)

(assert (= bs!636008 (and b!4362957 b!4362844)))

(assert (=> bs!636008 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1575149) (= lambda!141866 lambda!141853))))

(declare-fun bs!636009 () Bool)

(assert (= bs!636009 (and b!4362957 d!1291148)))

(assert (=> bs!636009 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574079) (= lambda!141866 lambda!141863))))

(declare-fun bs!636010 () Bool)

(assert (= bs!636010 (and b!4362957 b!4362819)))

(assert (=> bs!636010 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141866 lambda!141846))))

(assert (=> bs!636005 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141866 lambda!141824))))

(declare-fun bs!636011 () Bool)

(assert (= bs!636011 (and b!4362957 b!4361792)))

(assert (=> bs!636011 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574079) (= lambda!141866 lambda!141718))))

(declare-fun bs!636012 () Bool)

(assert (= bs!636012 (and b!4362957 b!4362141)))

(assert (=> bs!636012 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574649) (= lambda!141866 lambda!141762))))

(declare-fun bs!636013 () Bool)

(assert (= bs!636013 (and b!4362957 b!4361802)))

(assert (=> bs!636013 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574071) (= lambda!141866 lambda!141723))))

(declare-fun bs!636014 () Bool)

(assert (= bs!636014 (and b!4362957 d!1290942)))

(assert (=> bs!636014 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574426) (= lambda!141866 lambda!141839))))

(declare-fun bs!636015 () Bool)

(assert (= bs!636015 (and b!4362957 d!1291092)))

(assert (=> bs!636015 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1575161) (= lambda!141866 lambda!141854))))

(declare-fun bs!636016 () Bool)

(assert (= bs!636016 (and b!4362957 d!1290518)))

(assert (=> bs!636016 (not (= lambda!141866 lambda!141737))))

(assert (=> bs!636008 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141866 lambda!141852))))

(declare-fun bs!636017 () Bool)

(assert (= bs!636017 (and b!4362957 d!1290916)))

(assert (=> bs!636017 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1575034) (= lambda!141866 lambda!141830))))

(declare-fun bs!636018 () Bool)

(assert (= bs!636018 (and b!4362957 d!1290468)))

(assert (=> bs!636018 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574438) (= lambda!141866 lambda!141725))))

(declare-fun bs!636019 () Bool)

(assert (= bs!636019 (and b!4362957 b!4362960)))

(assert (=> bs!636019 (= lambda!141866 lambda!141865)))

(assert (=> bs!636013 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574426) (= lambda!141866 lambda!141724))))

(declare-fun bs!636020 () Bool)

(assert (= bs!636020 (and b!4362957 b!4362816)))

(assert (=> bs!636020 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1575125) (= lambda!141866 lambda!141848))))

(declare-fun bs!636021 () Bool)

(assert (= bs!636021 (and b!4362957 b!4362676)))

(assert (=> bs!636021 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141866 lambda!141823))))

(declare-fun bs!636022 () Bool)

(assert (= bs!636022 (and b!4362957 d!1290408)))

(assert (=> bs!636022 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574417) (= lambda!141866 lambda!141721))))

(declare-fun bs!636023 () Bool)

(assert (= bs!636023 (and b!4362957 d!1291190)))

(assert (=> bs!636023 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574405) (= lambda!141866 lambda!141864))))

(declare-fun bs!636024 () Bool)

(assert (= bs!636024 (and b!4362957 d!1290638)))

(assert (=> bs!636024 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574661) (= lambda!141866 lambda!141763))))

(declare-fun bs!636025 () Bool)

(assert (= bs!636025 (and b!4362957 b!4361805)))

(assert (=> bs!636025 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1574071) (= lambda!141866 lambda!141722))))

(assert (=> bs!636012 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141866 lambda!141761))))

(assert (=> bs!636020 (= (= (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141866 lambda!141847))))

(assert (=> b!4362957 true))

(declare-fun lambda!141867 () Int)

(declare-fun lt!1575234 () ListMap!2245)

(assert (=> bs!636002 (= (= lt!1575234 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141867 lambda!141851))))

(assert (=> bs!636003 (= (= lt!1575234 lt!1575137) (= lambda!141867 lambda!141849))))

(assert (=> bs!636005 (= (= lt!1575234 lt!1575022) (= lambda!141867 lambda!141826))))

(assert (=> bs!636004 (= (= lt!1575234 lt!1574079) (= lambda!141867 lambda!141719))))

(assert (=> bs!636006 (= (= lt!1575234 lt!1574071) (= lambda!141867 lambda!141858))))

(assert (=> bs!636007 (= (= lt!1575234 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141867 lambda!141760))))

(assert (=> bs!636008 (= (= lt!1575234 lt!1575149) (= lambda!141867 lambda!141853))))

(assert (=> bs!636009 (= (= lt!1575234 lt!1574079) (= lambda!141867 lambda!141863))))

(assert (=> bs!636010 (= (= lt!1575234 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141867 lambda!141846))))

(assert (=> bs!636004 (= (= lt!1575234 lt!1574405) (= lambda!141867 lambda!141720))))

(assert (=> b!4362957 (= (= lt!1575234 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141867 lambda!141866))))

(assert (=> bs!636005 (= (= lt!1575234 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141867 lambda!141824))))

(assert (=> bs!636011 (= (= lt!1575234 lt!1574079) (= lambda!141867 lambda!141718))))

(assert (=> bs!636012 (= (= lt!1575234 lt!1574649) (= lambda!141867 lambda!141762))))

(assert (=> bs!636013 (= (= lt!1575234 lt!1574071) (= lambda!141867 lambda!141723))))

(assert (=> bs!636014 (= (= lt!1575234 lt!1574426) (= lambda!141867 lambda!141839))))

(assert (=> bs!636015 (= (= lt!1575234 lt!1575161) (= lambda!141867 lambda!141854))))

(assert (=> bs!636016 (not (= lambda!141867 lambda!141737))))

(assert (=> bs!636008 (= (= lt!1575234 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141867 lambda!141852))))

(assert (=> bs!636017 (= (= lt!1575234 lt!1575034) (= lambda!141867 lambda!141830))))

(assert (=> bs!636018 (= (= lt!1575234 lt!1574438) (= lambda!141867 lambda!141725))))

(assert (=> bs!636019 (= (= lt!1575234 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141867 lambda!141865))))

(assert (=> bs!636013 (= (= lt!1575234 lt!1574426) (= lambda!141867 lambda!141724))))

(assert (=> bs!636020 (= (= lt!1575234 lt!1575125) (= lambda!141867 lambda!141848))))

(assert (=> bs!636021 (= (= lt!1575234 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141867 lambda!141823))))

(assert (=> bs!636022 (= (= lt!1575234 lt!1574417) (= lambda!141867 lambda!141721))))

(assert (=> bs!636023 (= (= lt!1575234 lt!1574405) (= lambda!141867 lambda!141864))))

(assert (=> bs!636024 (= (= lt!1575234 lt!1574661) (= lambda!141867 lambda!141763))))

(assert (=> bs!636025 (= (= lt!1575234 lt!1574071) (= lambda!141867 lambda!141722))))

(assert (=> bs!636012 (= (= lt!1575234 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141867 lambda!141761))))

(assert (=> bs!636020 (= (= lt!1575234 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141867 lambda!141847))))

(assert (=> b!4362957 true))

(declare-fun bs!636026 () Bool)

(declare-fun d!1291196 () Bool)

(assert (= bs!636026 (and d!1291196 d!1291022)))

(declare-fun lt!1575246 () ListMap!2245)

(declare-fun lambda!141868 () Int)

(assert (=> bs!636026 (= (= lt!1575246 lt!1575137) (= lambda!141868 lambda!141849))))

(declare-fun bs!636027 () Bool)

(assert (= bs!636027 (and d!1291196 b!4362673)))

(assert (=> bs!636027 (= (= lt!1575246 lt!1575022) (= lambda!141868 lambda!141826))))

(declare-fun bs!636028 () Bool)

(assert (= bs!636028 (and d!1291196 b!4361789)))

(assert (=> bs!636028 (= (= lt!1575246 lt!1574079) (= lambda!141868 lambda!141719))))

(declare-fun bs!636029 () Bool)

(assert (= bs!636029 (and d!1291196 d!1291136)))

(assert (=> bs!636029 (= (= lt!1575246 lt!1574071) (= lambda!141868 lambda!141858))))

(declare-fun bs!636030 () Bool)

(assert (= bs!636030 (and d!1291196 b!4362144)))

(assert (=> bs!636030 (= (= lt!1575246 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141868 lambda!141760))))

(declare-fun bs!636031 () Bool)

(assert (= bs!636031 (and d!1291196 b!4362844)))

(assert (=> bs!636031 (= (= lt!1575246 lt!1575149) (= lambda!141868 lambda!141853))))

(declare-fun bs!636032 () Bool)

(assert (= bs!636032 (and d!1291196 d!1291148)))

(assert (=> bs!636032 (= (= lt!1575246 lt!1574079) (= lambda!141868 lambda!141863))))

(declare-fun bs!636033 () Bool)

(assert (= bs!636033 (and d!1291196 b!4362819)))

(assert (=> bs!636033 (= (= lt!1575246 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141868 lambda!141846))))

(declare-fun bs!636034 () Bool)

(assert (= bs!636034 (and d!1291196 b!4362957)))

(assert (=> bs!636034 (= (= lt!1575246 lt!1575234) (= lambda!141868 lambda!141867))))

(declare-fun bs!636035 () Bool)

(assert (= bs!636035 (and d!1291196 b!4362847)))

(assert (=> bs!636035 (= (= lt!1575246 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141868 lambda!141851))))

(assert (=> bs!636028 (= (= lt!1575246 lt!1574405) (= lambda!141868 lambda!141720))))

(assert (=> bs!636034 (= (= lt!1575246 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141868 lambda!141866))))

(assert (=> bs!636027 (= (= lt!1575246 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141868 lambda!141824))))

(declare-fun bs!636036 () Bool)

(assert (= bs!636036 (and d!1291196 b!4361792)))

(assert (=> bs!636036 (= (= lt!1575246 lt!1574079) (= lambda!141868 lambda!141718))))

(declare-fun bs!636037 () Bool)

(assert (= bs!636037 (and d!1291196 b!4362141)))

(assert (=> bs!636037 (= (= lt!1575246 lt!1574649) (= lambda!141868 lambda!141762))))

(declare-fun bs!636038 () Bool)

(assert (= bs!636038 (and d!1291196 b!4361802)))

(assert (=> bs!636038 (= (= lt!1575246 lt!1574071) (= lambda!141868 lambda!141723))))

(declare-fun bs!636039 () Bool)

(assert (= bs!636039 (and d!1291196 d!1290942)))

(assert (=> bs!636039 (= (= lt!1575246 lt!1574426) (= lambda!141868 lambda!141839))))

(declare-fun bs!636040 () Bool)

(assert (= bs!636040 (and d!1291196 d!1291092)))

(assert (=> bs!636040 (= (= lt!1575246 lt!1575161) (= lambda!141868 lambda!141854))))

(declare-fun bs!636041 () Bool)

(assert (= bs!636041 (and d!1291196 d!1290518)))

(assert (=> bs!636041 (not (= lambda!141868 lambda!141737))))

(assert (=> bs!636031 (= (= lt!1575246 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141868 lambda!141852))))

(declare-fun bs!636042 () Bool)

(assert (= bs!636042 (and d!1291196 d!1290916)))

(assert (=> bs!636042 (= (= lt!1575246 lt!1575034) (= lambda!141868 lambda!141830))))

(declare-fun bs!636043 () Bool)

(assert (= bs!636043 (and d!1291196 d!1290468)))

(assert (=> bs!636043 (= (= lt!1575246 lt!1574438) (= lambda!141868 lambda!141725))))

(declare-fun bs!636044 () Bool)

(assert (= bs!636044 (and d!1291196 b!4362960)))

(assert (=> bs!636044 (= (= lt!1575246 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141868 lambda!141865))))

(assert (=> bs!636038 (= (= lt!1575246 lt!1574426) (= lambda!141868 lambda!141724))))

(declare-fun bs!636045 () Bool)

(assert (= bs!636045 (and d!1291196 b!4362816)))

(assert (=> bs!636045 (= (= lt!1575246 lt!1575125) (= lambda!141868 lambda!141848))))

(declare-fun bs!636046 () Bool)

(assert (= bs!636046 (and d!1291196 b!4362676)))

(assert (=> bs!636046 (= (= lt!1575246 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141868 lambda!141823))))

(declare-fun bs!636047 () Bool)

(assert (= bs!636047 (and d!1291196 d!1290408)))

(assert (=> bs!636047 (= (= lt!1575246 lt!1574417) (= lambda!141868 lambda!141721))))

(declare-fun bs!636048 () Bool)

(assert (= bs!636048 (and d!1291196 d!1291190)))

(assert (=> bs!636048 (= (= lt!1575246 lt!1574405) (= lambda!141868 lambda!141864))))

(declare-fun bs!636049 () Bool)

(assert (= bs!636049 (and d!1291196 d!1290638)))

(assert (=> bs!636049 (= (= lt!1575246 lt!1574661) (= lambda!141868 lambda!141763))))

(declare-fun bs!636050 () Bool)

(assert (= bs!636050 (and d!1291196 b!4361805)))

(assert (=> bs!636050 (= (= lt!1575246 lt!1574071) (= lambda!141868 lambda!141722))))

(assert (=> bs!636037 (= (= lt!1575246 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141868 lambda!141761))))

(assert (=> bs!636045 (= (= lt!1575246 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141868 lambda!141847))))

(assert (=> d!1291196 true))

(declare-fun e!2715295 () Bool)

(assert (=> d!1291196 e!2715295))

(declare-fun res!1794034 () Bool)

(assert (=> d!1291196 (=> (not res!1794034) (not e!2715295))))

(assert (=> d!1291196 (= res!1794034 (forall!9158 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) lambda!141868))))

(declare-fun e!2715296 () ListMap!2245)

(assert (=> d!1291196 (= lt!1575246 e!2715296)))

(declare-fun c!741941 () Bool)

(assert (=> d!1291196 (= c!741941 ((_ is Nil!48983) (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (=> d!1291196 (noDuplicateKeys!509 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))

(assert (=> d!1291196 (= (addToMapMapFromBucket!205 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) lt!1575246)))

(assert (=> b!4362957 (= e!2715296 lt!1575234)))

(declare-fun lt!1575237 () ListMap!2245)

(assert (=> b!4362957 (= lt!1575237 (+!676 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (h!54546 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> b!4362957 (= lt!1575234 (addToMapMapFromBucket!205 (t!356027 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (+!676 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (h!54546 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))))

(declare-fun lt!1575239 () Unit!72449)

(declare-fun call!303320 () Unit!72449)

(assert (=> b!4362957 (= lt!1575239 call!303320)))

(declare-fun call!303321 () Bool)

(assert (=> b!4362957 call!303321))

(declare-fun lt!1575247 () Unit!72449)

(assert (=> b!4362957 (= lt!1575247 lt!1575239)))

(declare-fun call!303322 () Bool)

(assert (=> b!4362957 call!303322))

(declare-fun lt!1575238 () Unit!72449)

(declare-fun Unit!72692 () Unit!72449)

(assert (=> b!4362957 (= lt!1575238 Unit!72692)))

(assert (=> b!4362957 (forall!9158 (t!356027 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lambda!141867)))

(declare-fun lt!1575244 () Unit!72449)

(declare-fun Unit!72693 () Unit!72449)

(assert (=> b!4362957 (= lt!1575244 Unit!72693)))

(declare-fun lt!1575235 () Unit!72449)

(declare-fun Unit!72694 () Unit!72449)

(assert (=> b!4362957 (= lt!1575235 Unit!72694)))

(declare-fun lt!1575233 () Unit!72449)

(assert (=> b!4362957 (= lt!1575233 (forallContained!1799 (toList!3002 lt!1575237) lambda!141867 (h!54546 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> b!4362957 (contains!11221 lt!1575237 (_1!27497 (h!54546 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun lt!1575250 () Unit!72449)

(declare-fun Unit!72695 () Unit!72449)

(assert (=> b!4362957 (= lt!1575250 Unit!72695)))

(assert (=> b!4362957 (contains!11221 lt!1575234 (_1!27497 (h!54546 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun lt!1575253 () Unit!72449)

(declare-fun Unit!72696 () Unit!72449)

(assert (=> b!4362957 (= lt!1575253 Unit!72696)))

(assert (=> b!4362957 (forall!9158 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) lambda!141867)))

(declare-fun lt!1575249 () Unit!72449)

(declare-fun Unit!72697 () Unit!72449)

(assert (=> b!4362957 (= lt!1575249 Unit!72697)))

(assert (=> b!4362957 (forall!9158 (toList!3002 lt!1575237) lambda!141867)))

(declare-fun lt!1575248 () Unit!72449)

(declare-fun Unit!72698 () Unit!72449)

(assert (=> b!4362957 (= lt!1575248 Unit!72698)))

(declare-fun lt!1575251 () Unit!72449)

(declare-fun Unit!72699 () Unit!72449)

(assert (=> b!4362957 (= lt!1575251 Unit!72699)))

(declare-fun lt!1575242 () Unit!72449)

(assert (=> b!4362957 (= lt!1575242 (addForallContainsKeyThenBeforeAdding!73 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lt!1575234 (_1!27497 (h!54546 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (_2!27497 (h!54546 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))))

(assert (=> b!4362957 (forall!9158 (toList!3002 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) lambda!141867)))

(declare-fun lt!1575236 () Unit!72449)

(assert (=> b!4362957 (= lt!1575236 lt!1575242)))

(assert (=> b!4362957 (forall!9158 (toList!3002 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) lambda!141867)))

(declare-fun lt!1575243 () Unit!72449)

(declare-fun Unit!72700 () Unit!72449)

(assert (=> b!4362957 (= lt!1575243 Unit!72700)))

(declare-fun res!1794035 () Bool)

(assert (=> b!4362957 (= res!1794035 (forall!9158 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) lambda!141867))))

(declare-fun e!2715294 () Bool)

(assert (=> b!4362957 (=> (not res!1794035) (not e!2715294))))

(assert (=> b!4362957 e!2715294))

(declare-fun lt!1575245 () Unit!72449)

(declare-fun Unit!72701 () Unit!72449)

(assert (=> b!4362957 (= lt!1575245 Unit!72701)))

(declare-fun b!4362958 () Bool)

(assert (=> b!4362958 (= e!2715294 (forall!9158 (toList!3002 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) lambda!141867))))

(declare-fun b!4362959 () Bool)

(assert (=> b!4362959 (= e!2715295 (invariantList!690 (toList!3002 lt!1575246)))))

(declare-fun bm!303315 () Bool)

(assert (=> bm!303315 (= call!303322 (forall!9158 (ite c!741941 (toList!3002 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (toList!3002 lt!1575237)) (ite c!741941 lambda!141865 lambda!141867)))))

(assert (=> b!4362960 (= e!2715296 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(declare-fun lt!1575240 () Unit!72449)

(assert (=> b!4362960 (= lt!1575240 call!303320)))

(assert (=> b!4362960 call!303321))

(declare-fun lt!1575252 () Unit!72449)

(assert (=> b!4362960 (= lt!1575252 lt!1575240)))

(assert (=> b!4362960 call!303322))

(declare-fun lt!1575241 () Unit!72449)

(declare-fun Unit!72702 () Unit!72449)

(assert (=> b!4362960 (= lt!1575241 Unit!72702)))

(declare-fun bm!303316 () Bool)

(assert (=> bm!303316 (= call!303321 (forall!9158 (toList!3002 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (ite c!741941 lambda!141865 lambda!141866)))))

(declare-fun bm!303317 () Bool)

(assert (=> bm!303317 (= call!303320 (lemmaContainsAllItsOwnKeys!73 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun b!4362961 () Bool)

(declare-fun res!1794033 () Bool)

(assert (=> b!4362961 (=> (not res!1794033) (not e!2715295))))

(assert (=> b!4362961 (= res!1794033 (forall!9158 (toList!3002 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) lambda!141868))))

(assert (= (and d!1291196 c!741941) b!4362960))

(assert (= (and d!1291196 (not c!741941)) b!4362957))

(assert (= (and b!4362957 res!1794035) b!4362958))

(assert (= (or b!4362960 b!4362957) bm!303317))

(assert (= (or b!4362960 b!4362957) bm!303316))

(assert (= (or b!4362960 b!4362957) bm!303315))

(assert (= (and d!1291196 res!1794034) b!4362961))

(assert (= (and b!4362961 res!1794033) b!4362959))

(declare-fun m!4983281 () Bool)

(assert (=> b!4362959 m!4983281))

(declare-fun m!4983283 () Bool)

(assert (=> d!1291196 m!4983283))

(assert (=> d!1291196 m!4981775))

(assert (=> b!4362957 m!4980891))

(declare-fun m!4983285 () Bool)

(assert (=> b!4362957 m!4983285))

(declare-fun m!4983287 () Bool)

(assert (=> b!4362957 m!4983287))

(declare-fun m!4983289 () Bool)

(assert (=> b!4362957 m!4983289))

(declare-fun m!4983291 () Bool)

(assert (=> b!4362957 m!4983291))

(declare-fun m!4983293 () Bool)

(assert (=> b!4362957 m!4983293))

(declare-fun m!4983295 () Bool)

(assert (=> b!4362957 m!4983295))

(assert (=> b!4362957 m!4983287))

(declare-fun m!4983297 () Bool)

(assert (=> b!4362957 m!4983297))

(declare-fun m!4983299 () Bool)

(assert (=> b!4362957 m!4983299))

(assert (=> b!4362957 m!4980891))

(assert (=> b!4362957 m!4983297))

(declare-fun m!4983301 () Bool)

(assert (=> b!4362957 m!4983301))

(assert (=> b!4362957 m!4983301))

(declare-fun m!4983303 () Bool)

(assert (=> b!4362957 m!4983303))

(declare-fun m!4983305 () Bool)

(assert (=> b!4362961 m!4983305))

(assert (=> bm!303317 m!4980891))

(declare-fun m!4983307 () Bool)

(assert (=> bm!303317 m!4983307))

(declare-fun m!4983309 () Bool)

(assert (=> bm!303316 m!4983309))

(declare-fun m!4983311 () Bool)

(assert (=> bm!303315 m!4983311))

(assert (=> b!4362958 m!4983287))

(assert (=> b!4361789 d!1291196))

(declare-fun d!1291198 () Bool)

(declare-fun res!1794036 () Bool)

(declare-fun e!2715297 () Bool)

(assert (=> d!1291198 (=> res!1794036 e!2715297)))

(assert (=> d!1291198 (= res!1794036 ((_ is Nil!48983) (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (=> d!1291198 (= (forall!9158 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) lambda!141720) e!2715297)))

(declare-fun b!4362962 () Bool)

(declare-fun e!2715298 () Bool)

(assert (=> b!4362962 (= e!2715297 e!2715298)))

(declare-fun res!1794037 () Bool)

(assert (=> b!4362962 (=> (not res!1794037) (not e!2715298))))

(assert (=> b!4362962 (= res!1794037 (dynLambda!20653 lambda!141720 (h!54546 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun b!4362963 () Bool)

(assert (=> b!4362963 (= e!2715298 (forall!9158 (t!356027 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707))))) lambda!141720))))

(assert (= (and d!1291198 (not res!1794036)) b!4362962))

(assert (= (and b!4362962 res!1794037) b!4362963))

(declare-fun b_lambda!132061 () Bool)

(assert (=> (not b_lambda!132061) (not b!4362962)))

(declare-fun m!4983313 () Bool)

(assert (=> b!4362962 m!4983313))

(declare-fun m!4983315 () Bool)

(assert (=> b!4362963 m!4983315))

(assert (=> b!4361789 d!1291198))

(declare-fun d!1291200 () Bool)

(declare-fun res!1794038 () Bool)

(declare-fun e!2715299 () Bool)

(assert (=> d!1291200 (=> res!1794038 e!2715299)))

(assert (=> d!1291200 (= res!1794038 ((_ is Nil!48983) (_2!27498 (h!54547 (toList!3001 lm!1707)))))))

(assert (=> d!1291200 (= (forall!9158 (_2!27498 (h!54547 (toList!3001 lm!1707))) lambda!141720) e!2715299)))

(declare-fun b!4362964 () Bool)

(declare-fun e!2715300 () Bool)

(assert (=> b!4362964 (= e!2715299 e!2715300)))

(declare-fun res!1794039 () Bool)

(assert (=> b!4362964 (=> (not res!1794039) (not e!2715300))))

(assert (=> b!4362964 (= res!1794039 (dynLambda!20653 lambda!141720 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(declare-fun b!4362965 () Bool)

(assert (=> b!4362965 (= e!2715300 (forall!9158 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) lambda!141720))))

(assert (= (and d!1291200 (not res!1794038)) b!4362964))

(assert (= (and b!4362964 res!1794039) b!4362965))

(declare-fun b_lambda!132063 () Bool)

(assert (=> (not b_lambda!132063) (not b!4362964)))

(assert (=> b!4362964 m!4983235))

(assert (=> b!4362965 m!4980897))

(assert (=> b!4361789 d!1291200))

(declare-fun d!1291202 () Bool)

(declare-fun res!1794040 () Bool)

(declare-fun e!2715301 () Bool)

(assert (=> d!1291202 (=> res!1794040 e!2715301)))

(assert (=> d!1291202 (= res!1794040 ((_ is Nil!48983) (toList!3002 lt!1574408)))))

(assert (=> d!1291202 (= (forall!9158 (toList!3002 lt!1574408) lambda!141720) e!2715301)))

(declare-fun b!4362966 () Bool)

(declare-fun e!2715302 () Bool)

(assert (=> b!4362966 (= e!2715301 e!2715302)))

(declare-fun res!1794041 () Bool)

(assert (=> b!4362966 (=> (not res!1794041) (not e!2715302))))

(assert (=> b!4362966 (= res!1794041 (dynLambda!20653 lambda!141720 (h!54546 (toList!3002 lt!1574408))))))

(declare-fun b!4362967 () Bool)

(assert (=> b!4362967 (= e!2715302 (forall!9158 (t!356027 (toList!3002 lt!1574408)) lambda!141720))))

(assert (= (and d!1291202 (not res!1794040)) b!4362966))

(assert (= (and b!4362966 res!1794041) b!4362967))

(declare-fun b_lambda!132065 () Bool)

(assert (=> (not b_lambda!132065) (not b!4362966)))

(declare-fun m!4983317 () Bool)

(assert (=> b!4362966 m!4983317))

(declare-fun m!4983319 () Bool)

(assert (=> b!4362967 m!4983319))

(assert (=> b!4361789 d!1291202))

(declare-fun b!4362968 () Bool)

(declare-fun e!2715308 () Unit!72449)

(declare-fun e!2715307 () Unit!72449)

(assert (=> b!4362968 (= e!2715308 e!2715307)))

(declare-fun c!741943 () Bool)

(declare-fun call!303323 () Bool)

(assert (=> b!4362968 (= c!741943 call!303323)))

(declare-fun b!4362969 () Bool)

(declare-fun Unit!72703 () Unit!72449)

(assert (=> b!4362969 (= e!2715307 Unit!72703)))

(declare-fun b!4362970 () Bool)

(declare-fun e!2715306 () Bool)

(declare-fun e!2715304 () Bool)

(assert (=> b!4362970 (= e!2715306 e!2715304)))

(declare-fun res!1794042 () Bool)

(assert (=> b!4362970 (=> (not res!1794042) (not e!2715304))))

(assert (=> b!4362970 (= res!1794042 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574405) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))))

(declare-fun b!4362971 () Bool)

(assert (=> b!4362971 false))

(declare-fun lt!1575254 () Unit!72449)

(declare-fun lt!1575260 () Unit!72449)

(assert (=> b!4362971 (= lt!1575254 lt!1575260)))

(assert (=> b!4362971 (containsKey!737 (toList!3002 lt!1574405) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (=> b!4362971 (= lt!1575260 (lemmaInGetKeysListThenContainsKey!136 (toList!3002 lt!1574405) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun Unit!72704 () Unit!72449)

(assert (=> b!4362971 (= e!2715307 Unit!72704)))

(declare-fun b!4362972 () Bool)

(declare-fun e!2715303 () Bool)

(assert (=> b!4362972 (= e!2715303 (not (contains!11225 (keys!16560 lt!1574405) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))))

(declare-fun b!4362973 () Bool)

(declare-fun e!2715305 () List!49110)

(assert (=> b!4362973 (= e!2715305 (keys!16560 lt!1574405))))

(declare-fun b!4362974 () Bool)

(assert (=> b!4362974 (= e!2715305 (getKeysList!138 (toList!3002 lt!1574405)))))

(declare-fun bm!303318 () Bool)

(assert (=> bm!303318 (= call!303323 (contains!11225 e!2715305 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun c!741944 () Bool)

(declare-fun c!741942 () Bool)

(assert (=> bm!303318 (= c!741944 c!741942)))

(declare-fun b!4362975 () Bool)

(assert (=> b!4362975 (= e!2715304 (contains!11225 (keys!16560 lt!1574405) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun b!4362976 () Bool)

(declare-fun lt!1575259 () Unit!72449)

(assert (=> b!4362976 (= e!2715308 lt!1575259)))

(declare-fun lt!1575256 () Unit!72449)

(assert (=> b!4362976 (= lt!1575256 (lemmaContainsKeyImpliesGetValueByKeyDefined!389 (toList!3002 lt!1574405) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> b!4362976 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574405) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun lt!1575261 () Unit!72449)

(assert (=> b!4362976 (= lt!1575261 lt!1575256)))

(assert (=> b!4362976 (= lt!1575259 (lemmaInListThenGetKeysListContains!135 (toList!3002 lt!1574405) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> b!4362976 call!303323))

(declare-fun d!1291204 () Bool)

(assert (=> d!1291204 e!2715306))

(declare-fun res!1794044 () Bool)

(assert (=> d!1291204 (=> res!1794044 e!2715306)))

(assert (=> d!1291204 (= res!1794044 e!2715303)))

(declare-fun res!1794043 () Bool)

(assert (=> d!1291204 (=> (not res!1794043) (not e!2715303))))

(declare-fun lt!1575257 () Bool)

(assert (=> d!1291204 (= res!1794043 (not lt!1575257))))

(declare-fun lt!1575258 () Bool)

(assert (=> d!1291204 (= lt!1575257 lt!1575258)))

(declare-fun lt!1575255 () Unit!72449)

(assert (=> d!1291204 (= lt!1575255 e!2715308)))

(assert (=> d!1291204 (= c!741942 lt!1575258)))

(assert (=> d!1291204 (= lt!1575258 (containsKey!737 (toList!3002 lt!1574405) (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> d!1291204 (= (contains!11221 lt!1574405 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) lt!1575257)))

(assert (= (and d!1291204 c!741942) b!4362976))

(assert (= (and d!1291204 (not c!741942)) b!4362968))

(assert (= (and b!4362968 c!741943) b!4362971))

(assert (= (and b!4362968 (not c!741943)) b!4362969))

(assert (= (or b!4362976 b!4362968) bm!303318))

(assert (= (and bm!303318 c!741944) b!4362974))

(assert (= (and bm!303318 (not c!741944)) b!4362973))

(assert (= (and d!1291204 res!1794043) b!4362972))

(assert (= (and d!1291204 (not res!1794044)) b!4362970))

(assert (= (and b!4362970 res!1794042) b!4362975))

(declare-fun m!4983321 () Bool)

(assert (=> b!4362972 m!4983321))

(assert (=> b!4362972 m!4983321))

(declare-fun m!4983323 () Bool)

(assert (=> b!4362972 m!4983323))

(declare-fun m!4983325 () Bool)

(assert (=> bm!303318 m!4983325))

(assert (=> b!4362975 m!4983321))

(assert (=> b!4362975 m!4983321))

(assert (=> b!4362975 m!4983323))

(declare-fun m!4983327 () Bool)

(assert (=> b!4362974 m!4983327))

(declare-fun m!4983329 () Bool)

(assert (=> d!1291204 m!4983329))

(assert (=> b!4362973 m!4983321))

(declare-fun m!4983331 () Bool)

(assert (=> b!4362970 m!4983331))

(assert (=> b!4362970 m!4983331))

(declare-fun m!4983333 () Bool)

(assert (=> b!4362970 m!4983333))

(assert (=> b!4362971 m!4983329))

(declare-fun m!4983335 () Bool)

(assert (=> b!4362971 m!4983335))

(declare-fun m!4983337 () Bool)

(assert (=> b!4362976 m!4983337))

(assert (=> b!4362976 m!4983331))

(assert (=> b!4362976 m!4983331))

(assert (=> b!4362976 m!4983333))

(declare-fun m!4983339 () Bool)

(assert (=> b!4362976 m!4983339))

(assert (=> b!4361789 d!1291204))

(declare-fun bs!636051 () Bool)

(declare-fun b!4362980 () Bool)

(assert (= bs!636051 (and b!4362980 d!1291022)))

(declare-fun lambda!141869 () Int)

(assert (=> bs!636051 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1575137) (= lambda!141869 lambda!141849))))

(declare-fun bs!636052 () Bool)

(assert (= bs!636052 (and b!4362980 b!4362673)))

(assert (=> bs!636052 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1575022) (= lambda!141869 lambda!141826))))

(declare-fun bs!636053 () Bool)

(assert (= bs!636053 (and b!4362980 b!4361789)))

(assert (=> bs!636053 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574079) (= lambda!141869 lambda!141719))))

(declare-fun bs!636054 () Bool)

(assert (= bs!636054 (and b!4362980 d!1291136)))

(assert (=> bs!636054 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574071) (= lambda!141869 lambda!141858))))

(declare-fun bs!636055 () Bool)

(assert (= bs!636055 (and b!4362980 b!4362144)))

(assert (=> bs!636055 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141869 lambda!141760))))

(declare-fun bs!636056 () Bool)

(assert (= bs!636056 (and b!4362980 b!4362844)))

(assert (=> bs!636056 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1575149) (= lambda!141869 lambda!141853))))

(declare-fun bs!636057 () Bool)

(assert (= bs!636057 (and b!4362980 d!1291148)))

(assert (=> bs!636057 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574079) (= lambda!141869 lambda!141863))))

(declare-fun bs!636058 () Bool)

(assert (= bs!636058 (and b!4362980 b!4362819)))

(assert (=> bs!636058 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141869 lambda!141846))))

(declare-fun bs!636059 () Bool)

(assert (= bs!636059 (and b!4362980 b!4362957)))

(assert (=> bs!636059 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1575234) (= lambda!141869 lambda!141867))))

(declare-fun bs!636060 () Bool)

(assert (= bs!636060 (and b!4362980 b!4362847)))

(assert (=> bs!636060 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141869 lambda!141851))))

(assert (=> bs!636053 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574405) (= lambda!141869 lambda!141720))))

(assert (=> bs!636059 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141869 lambda!141866))))

(declare-fun bs!636061 () Bool)

(assert (= bs!636061 (and b!4362980 d!1291196)))

(assert (=> bs!636061 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1575246) (= lambda!141869 lambda!141868))))

(assert (=> bs!636052 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141869 lambda!141824))))

(declare-fun bs!636062 () Bool)

(assert (= bs!636062 (and b!4362980 b!4361792)))

(assert (=> bs!636062 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574079) (= lambda!141869 lambda!141718))))

(declare-fun bs!636063 () Bool)

(assert (= bs!636063 (and b!4362980 b!4362141)))

(assert (=> bs!636063 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574649) (= lambda!141869 lambda!141762))))

(declare-fun bs!636064 () Bool)

(assert (= bs!636064 (and b!4362980 b!4361802)))

(assert (=> bs!636064 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574071) (= lambda!141869 lambda!141723))))

(declare-fun bs!636065 () Bool)

(assert (= bs!636065 (and b!4362980 d!1290942)))

(assert (=> bs!636065 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574426) (= lambda!141869 lambda!141839))))

(declare-fun bs!636066 () Bool)

(assert (= bs!636066 (and b!4362980 d!1291092)))

(assert (=> bs!636066 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1575161) (= lambda!141869 lambda!141854))))

(declare-fun bs!636067 () Bool)

(assert (= bs!636067 (and b!4362980 d!1290518)))

(assert (=> bs!636067 (not (= lambda!141869 lambda!141737))))

(assert (=> bs!636056 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141869 lambda!141852))))

(declare-fun bs!636068 () Bool)

(assert (= bs!636068 (and b!4362980 d!1290916)))

(assert (=> bs!636068 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1575034) (= lambda!141869 lambda!141830))))

(declare-fun bs!636069 () Bool)

(assert (= bs!636069 (and b!4362980 d!1290468)))

(assert (=> bs!636069 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574438) (= lambda!141869 lambda!141725))))

(declare-fun bs!636070 () Bool)

(assert (= bs!636070 (and b!4362980 b!4362960)))

(assert (=> bs!636070 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141869 lambda!141865))))

(assert (=> bs!636064 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574426) (= lambda!141869 lambda!141724))))

(declare-fun bs!636071 () Bool)

(assert (= bs!636071 (and b!4362980 b!4362816)))

(assert (=> bs!636071 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1575125) (= lambda!141869 lambda!141848))))

(declare-fun bs!636072 () Bool)

(assert (= bs!636072 (and b!4362980 b!4362676)))

(assert (=> bs!636072 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141869 lambda!141823))))

(declare-fun bs!636073 () Bool)

(assert (= bs!636073 (and b!4362980 d!1290408)))

(assert (=> bs!636073 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574417) (= lambda!141869 lambda!141721))))

(declare-fun bs!636074 () Bool)

(assert (= bs!636074 (and b!4362980 d!1291190)))

(assert (=> bs!636074 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574405) (= lambda!141869 lambda!141864))))

(declare-fun bs!636075 () Bool)

(assert (= bs!636075 (and b!4362980 d!1290638)))

(assert (=> bs!636075 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574661) (= lambda!141869 lambda!141763))))

(declare-fun bs!636076 () Bool)

(assert (= bs!636076 (and b!4362980 b!4361805)))

(assert (=> bs!636076 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574071) (= lambda!141869 lambda!141722))))

(assert (=> bs!636063 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141869 lambda!141761))))

(assert (=> bs!636071 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141869 lambda!141847))))

(assert (=> b!4362980 true))

(declare-fun bs!636077 () Bool)

(declare-fun b!4362977 () Bool)

(assert (= bs!636077 (and b!4362977 d!1291022)))

(declare-fun lambda!141870 () Int)

(assert (=> bs!636077 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1575137) (= lambda!141870 lambda!141849))))

(declare-fun bs!636078 () Bool)

(assert (= bs!636078 (and b!4362977 b!4362673)))

(assert (=> bs!636078 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1575022) (= lambda!141870 lambda!141826))))

(declare-fun bs!636079 () Bool)

(assert (= bs!636079 (and b!4362977 b!4361789)))

(assert (=> bs!636079 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574079) (= lambda!141870 lambda!141719))))

(declare-fun bs!636080 () Bool)

(assert (= bs!636080 (and b!4362977 d!1291136)))

(assert (=> bs!636080 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574071) (= lambda!141870 lambda!141858))))

(declare-fun bs!636081 () Bool)

(assert (= bs!636081 (and b!4362977 b!4362144)))

(assert (=> bs!636081 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141870 lambda!141760))))

(declare-fun bs!636082 () Bool)

(assert (= bs!636082 (and b!4362977 b!4362844)))

(assert (=> bs!636082 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1575149) (= lambda!141870 lambda!141853))))

(declare-fun bs!636083 () Bool)

(assert (= bs!636083 (and b!4362977 b!4362819)))

(assert (=> bs!636083 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141870 lambda!141846))))

(declare-fun bs!636084 () Bool)

(assert (= bs!636084 (and b!4362977 b!4362957)))

(assert (=> bs!636084 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1575234) (= lambda!141870 lambda!141867))))

(declare-fun bs!636085 () Bool)

(assert (= bs!636085 (and b!4362977 b!4362847)))

(assert (=> bs!636085 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141870 lambda!141851))))

(assert (=> bs!636079 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574405) (= lambda!141870 lambda!141720))))

(assert (=> bs!636084 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141870 lambda!141866))))

(declare-fun bs!636086 () Bool)

(assert (= bs!636086 (and b!4362977 d!1291196)))

(assert (=> bs!636086 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1575246) (= lambda!141870 lambda!141868))))

(assert (=> bs!636078 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141870 lambda!141824))))

(declare-fun bs!636087 () Bool)

(assert (= bs!636087 (and b!4362977 b!4361792)))

(assert (=> bs!636087 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574079) (= lambda!141870 lambda!141718))))

(declare-fun bs!636088 () Bool)

(assert (= bs!636088 (and b!4362977 b!4362141)))

(assert (=> bs!636088 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574649) (= lambda!141870 lambda!141762))))

(declare-fun bs!636089 () Bool)

(assert (= bs!636089 (and b!4362977 b!4361802)))

(assert (=> bs!636089 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574071) (= lambda!141870 lambda!141723))))

(declare-fun bs!636090 () Bool)

(assert (= bs!636090 (and b!4362977 d!1290942)))

(assert (=> bs!636090 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574426) (= lambda!141870 lambda!141839))))

(declare-fun bs!636091 () Bool)

(assert (= bs!636091 (and b!4362977 d!1291092)))

(assert (=> bs!636091 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1575161) (= lambda!141870 lambda!141854))))

(declare-fun bs!636092 () Bool)

(assert (= bs!636092 (and b!4362977 d!1290518)))

(assert (=> bs!636092 (not (= lambda!141870 lambda!141737))))

(declare-fun bs!636093 () Bool)

(assert (= bs!636093 (and b!4362977 b!4362980)))

(assert (=> bs!636093 (= lambda!141870 lambda!141869)))

(declare-fun bs!636094 () Bool)

(assert (= bs!636094 (and b!4362977 d!1291148)))

(assert (=> bs!636094 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574079) (= lambda!141870 lambda!141863))))

(assert (=> bs!636082 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141870 lambda!141852))))

(declare-fun bs!636095 () Bool)

(assert (= bs!636095 (and b!4362977 d!1290916)))

(assert (=> bs!636095 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1575034) (= lambda!141870 lambda!141830))))

(declare-fun bs!636096 () Bool)

(assert (= bs!636096 (and b!4362977 d!1290468)))

(assert (=> bs!636096 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574438) (= lambda!141870 lambda!141725))))

(declare-fun bs!636097 () Bool)

(assert (= bs!636097 (and b!4362977 b!4362960)))

(assert (=> bs!636097 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141870 lambda!141865))))

(assert (=> bs!636089 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574426) (= lambda!141870 lambda!141724))))

(declare-fun bs!636098 () Bool)

(assert (= bs!636098 (and b!4362977 b!4362816)))

(assert (=> bs!636098 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1575125) (= lambda!141870 lambda!141848))))

(declare-fun bs!636099 () Bool)

(assert (= bs!636099 (and b!4362977 b!4362676)))

(assert (=> bs!636099 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141870 lambda!141823))))

(declare-fun bs!636100 () Bool)

(assert (= bs!636100 (and b!4362977 d!1290408)))

(assert (=> bs!636100 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574417) (= lambda!141870 lambda!141721))))

(declare-fun bs!636101 () Bool)

(assert (= bs!636101 (and b!4362977 d!1291190)))

(assert (=> bs!636101 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574405) (= lambda!141870 lambda!141864))))

(declare-fun bs!636102 () Bool)

(assert (= bs!636102 (and b!4362977 d!1290638)))

(assert (=> bs!636102 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574661) (= lambda!141870 lambda!141763))))

(declare-fun bs!636103 () Bool)

(assert (= bs!636103 (and b!4362977 b!4361805)))

(assert (=> bs!636103 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1574071) (= lambda!141870 lambda!141722))))

(assert (=> bs!636088 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141870 lambda!141761))))

(assert (=> bs!636098 (= (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141870 lambda!141847))))

(assert (=> b!4362977 true))

(declare-fun lt!1575263 () ListMap!2245)

(declare-fun lambda!141871 () Int)

(assert (=> bs!636077 (= (= lt!1575263 lt!1575137) (= lambda!141871 lambda!141849))))

(assert (=> bs!636078 (= (= lt!1575263 lt!1575022) (= lambda!141871 lambda!141826))))

(assert (=> bs!636079 (= (= lt!1575263 lt!1574079) (= lambda!141871 lambda!141719))))

(assert (=> bs!636081 (= (= lt!1575263 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141871 lambda!141760))))

(assert (=> bs!636082 (= (= lt!1575263 lt!1575149) (= lambda!141871 lambda!141853))))

(assert (=> bs!636083 (= (= lt!1575263 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141871 lambda!141846))))

(assert (=> bs!636084 (= (= lt!1575263 lt!1575234) (= lambda!141871 lambda!141867))))

(assert (=> bs!636085 (= (= lt!1575263 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141871 lambda!141851))))

(assert (=> bs!636079 (= (= lt!1575263 lt!1574405) (= lambda!141871 lambda!141720))))

(assert (=> bs!636084 (= (= lt!1575263 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141871 lambda!141866))))

(assert (=> bs!636086 (= (= lt!1575263 lt!1575246) (= lambda!141871 lambda!141868))))

(assert (=> bs!636078 (= (= lt!1575263 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141871 lambda!141824))))

(assert (=> bs!636087 (= (= lt!1575263 lt!1574079) (= lambda!141871 lambda!141718))))

(assert (=> bs!636088 (= (= lt!1575263 lt!1574649) (= lambda!141871 lambda!141762))))

(assert (=> bs!636089 (= (= lt!1575263 lt!1574071) (= lambda!141871 lambda!141723))))

(assert (=> bs!636090 (= (= lt!1575263 lt!1574426) (= lambda!141871 lambda!141839))))

(assert (=> bs!636091 (= (= lt!1575263 lt!1575161) (= lambda!141871 lambda!141854))))

(assert (=> bs!636092 (not (= lambda!141871 lambda!141737))))

(assert (=> bs!636080 (= (= lt!1575263 lt!1574071) (= lambda!141871 lambda!141858))))

(assert (=> b!4362977 (= (= lt!1575263 (extractMap!568 (t!356028 (toList!3001 lt!1574068)))) (= lambda!141871 lambda!141870))))

(assert (=> bs!636093 (= (= lt!1575263 (extractMap!568 (t!356028 (toList!3001 lt!1574068)))) (= lambda!141871 lambda!141869))))

(assert (=> bs!636094 (= (= lt!1575263 lt!1574079) (= lambda!141871 lambda!141863))))

(assert (=> bs!636082 (= (= lt!1575263 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141871 lambda!141852))))

(assert (=> bs!636095 (= (= lt!1575263 lt!1575034) (= lambda!141871 lambda!141830))))

(assert (=> bs!636096 (= (= lt!1575263 lt!1574438) (= lambda!141871 lambda!141725))))

(assert (=> bs!636097 (= (= lt!1575263 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141871 lambda!141865))))

(assert (=> bs!636089 (= (= lt!1575263 lt!1574426) (= lambda!141871 lambda!141724))))

(assert (=> bs!636098 (= (= lt!1575263 lt!1575125) (= lambda!141871 lambda!141848))))

(assert (=> bs!636099 (= (= lt!1575263 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141871 lambda!141823))))

(assert (=> bs!636100 (= (= lt!1575263 lt!1574417) (= lambda!141871 lambda!141721))))

(assert (=> bs!636101 (= (= lt!1575263 lt!1574405) (= lambda!141871 lambda!141864))))

(assert (=> bs!636102 (= (= lt!1575263 lt!1574661) (= lambda!141871 lambda!141763))))

(assert (=> bs!636103 (= (= lt!1575263 lt!1574071) (= lambda!141871 lambda!141722))))

(assert (=> bs!636088 (= (= lt!1575263 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141871 lambda!141761))))

(assert (=> bs!636098 (= (= lt!1575263 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141871 lambda!141847))))

(assert (=> b!4362977 true))

(declare-fun bs!636104 () Bool)

(declare-fun d!1291206 () Bool)

(assert (= bs!636104 (and d!1291206 d!1291022)))

(declare-fun lambda!141872 () Int)

(declare-fun lt!1575275 () ListMap!2245)

(assert (=> bs!636104 (= (= lt!1575275 lt!1575137) (= lambda!141872 lambda!141849))))

(declare-fun bs!636105 () Bool)

(assert (= bs!636105 (and d!1291206 b!4362673)))

(assert (=> bs!636105 (= (= lt!1575275 lt!1575022) (= lambda!141872 lambda!141826))))

(declare-fun bs!636106 () Bool)

(assert (= bs!636106 (and d!1291206 b!4362977)))

(assert (=> bs!636106 (= (= lt!1575275 lt!1575263) (= lambda!141872 lambda!141871))))

(declare-fun bs!636107 () Bool)

(assert (= bs!636107 (and d!1291206 b!4361789)))

(assert (=> bs!636107 (= (= lt!1575275 lt!1574079) (= lambda!141872 lambda!141719))))

(declare-fun bs!636108 () Bool)

(assert (= bs!636108 (and d!1291206 b!4362144)))

(assert (=> bs!636108 (= (= lt!1575275 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141872 lambda!141760))))

(declare-fun bs!636109 () Bool)

(assert (= bs!636109 (and d!1291206 b!4362844)))

(assert (=> bs!636109 (= (= lt!1575275 lt!1575149) (= lambda!141872 lambda!141853))))

(declare-fun bs!636110 () Bool)

(assert (= bs!636110 (and d!1291206 b!4362819)))

(assert (=> bs!636110 (= (= lt!1575275 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141872 lambda!141846))))

(declare-fun bs!636111 () Bool)

(assert (= bs!636111 (and d!1291206 b!4362957)))

(assert (=> bs!636111 (= (= lt!1575275 lt!1575234) (= lambda!141872 lambda!141867))))

(declare-fun bs!636112 () Bool)

(assert (= bs!636112 (and d!1291206 b!4362847)))

(assert (=> bs!636112 (= (= lt!1575275 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141872 lambda!141851))))

(assert (=> bs!636107 (= (= lt!1575275 lt!1574405) (= lambda!141872 lambda!141720))))

(assert (=> bs!636111 (= (= lt!1575275 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141872 lambda!141866))))

(declare-fun bs!636113 () Bool)

(assert (= bs!636113 (and d!1291206 d!1291196)))

(assert (=> bs!636113 (= (= lt!1575275 lt!1575246) (= lambda!141872 lambda!141868))))

(assert (=> bs!636105 (= (= lt!1575275 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141872 lambda!141824))))

(declare-fun bs!636114 () Bool)

(assert (= bs!636114 (and d!1291206 b!4361792)))

(assert (=> bs!636114 (= (= lt!1575275 lt!1574079) (= lambda!141872 lambda!141718))))

(declare-fun bs!636115 () Bool)

(assert (= bs!636115 (and d!1291206 b!4362141)))

(assert (=> bs!636115 (= (= lt!1575275 lt!1574649) (= lambda!141872 lambda!141762))))

(declare-fun bs!636116 () Bool)

(assert (= bs!636116 (and d!1291206 b!4361802)))

(assert (=> bs!636116 (= (= lt!1575275 lt!1574071) (= lambda!141872 lambda!141723))))

(declare-fun bs!636117 () Bool)

(assert (= bs!636117 (and d!1291206 d!1290942)))

(assert (=> bs!636117 (= (= lt!1575275 lt!1574426) (= lambda!141872 lambda!141839))))

(declare-fun bs!636118 () Bool)

(assert (= bs!636118 (and d!1291206 d!1291092)))

(assert (=> bs!636118 (= (= lt!1575275 lt!1575161) (= lambda!141872 lambda!141854))))

(declare-fun bs!636119 () Bool)

(assert (= bs!636119 (and d!1291206 d!1290518)))

(assert (=> bs!636119 (not (= lambda!141872 lambda!141737))))

(declare-fun bs!636120 () Bool)

(assert (= bs!636120 (and d!1291206 d!1291136)))

(assert (=> bs!636120 (= (= lt!1575275 lt!1574071) (= lambda!141872 lambda!141858))))

(assert (=> bs!636106 (= (= lt!1575275 (extractMap!568 (t!356028 (toList!3001 lt!1574068)))) (= lambda!141872 lambda!141870))))

(declare-fun bs!636121 () Bool)

(assert (= bs!636121 (and d!1291206 b!4362980)))

(assert (=> bs!636121 (= (= lt!1575275 (extractMap!568 (t!356028 (toList!3001 lt!1574068)))) (= lambda!141872 lambda!141869))))

(declare-fun bs!636122 () Bool)

(assert (= bs!636122 (and d!1291206 d!1291148)))

(assert (=> bs!636122 (= (= lt!1575275 lt!1574079) (= lambda!141872 lambda!141863))))

(assert (=> bs!636109 (= (= lt!1575275 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141872 lambda!141852))))

(declare-fun bs!636123 () Bool)

(assert (= bs!636123 (and d!1291206 d!1290916)))

(assert (=> bs!636123 (= (= lt!1575275 lt!1575034) (= lambda!141872 lambda!141830))))

(declare-fun bs!636124 () Bool)

(assert (= bs!636124 (and d!1291206 d!1290468)))

(assert (=> bs!636124 (= (= lt!1575275 lt!1574438) (= lambda!141872 lambda!141725))))

(declare-fun bs!636125 () Bool)

(assert (= bs!636125 (and d!1291206 b!4362960)))

(assert (=> bs!636125 (= (= lt!1575275 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141872 lambda!141865))))

(assert (=> bs!636116 (= (= lt!1575275 lt!1574426) (= lambda!141872 lambda!141724))))

(declare-fun bs!636126 () Bool)

(assert (= bs!636126 (and d!1291206 b!4362816)))

(assert (=> bs!636126 (= (= lt!1575275 lt!1575125) (= lambda!141872 lambda!141848))))

(declare-fun bs!636127 () Bool)

(assert (= bs!636127 (and d!1291206 b!4362676)))

(assert (=> bs!636127 (= (= lt!1575275 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141872 lambda!141823))))

(declare-fun bs!636128 () Bool)

(assert (= bs!636128 (and d!1291206 d!1290408)))

(assert (=> bs!636128 (= (= lt!1575275 lt!1574417) (= lambda!141872 lambda!141721))))

(declare-fun bs!636129 () Bool)

(assert (= bs!636129 (and d!1291206 d!1291190)))

(assert (=> bs!636129 (= (= lt!1575275 lt!1574405) (= lambda!141872 lambda!141864))))

(declare-fun bs!636130 () Bool)

(assert (= bs!636130 (and d!1291206 d!1290638)))

(assert (=> bs!636130 (= (= lt!1575275 lt!1574661) (= lambda!141872 lambda!141763))))

(declare-fun bs!636131 () Bool)

(assert (= bs!636131 (and d!1291206 b!4361805)))

(assert (=> bs!636131 (= (= lt!1575275 lt!1574071) (= lambda!141872 lambda!141722))))

(assert (=> bs!636115 (= (= lt!1575275 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141872 lambda!141761))))

(assert (=> bs!636126 (= (= lt!1575275 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141872 lambda!141847))))

(assert (=> d!1291206 true))

(declare-fun e!2715310 () Bool)

(assert (=> d!1291206 e!2715310))

(declare-fun res!1794046 () Bool)

(assert (=> d!1291206 (=> (not res!1794046) (not e!2715310))))

(assert (=> d!1291206 (= res!1794046 (forall!9158 (_2!27498 (h!54547 (toList!3001 lt!1574068))) lambda!141872))))

(declare-fun e!2715311 () ListMap!2245)

(assert (=> d!1291206 (= lt!1575275 e!2715311)))

(declare-fun c!741945 () Bool)

(assert (=> d!1291206 (= c!741945 ((_ is Nil!48983) (_2!27498 (h!54547 (toList!3001 lt!1574068)))))))

(assert (=> d!1291206 (noDuplicateKeys!509 (_2!27498 (h!54547 (toList!3001 lt!1574068))))))

(assert (=> d!1291206 (= (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 lt!1574068))) (extractMap!568 (t!356028 (toList!3001 lt!1574068)))) lt!1575275)))

(assert (=> b!4362977 (= e!2715311 lt!1575263)))

(declare-fun lt!1575266 () ListMap!2245)

(assert (=> b!4362977 (= lt!1575266 (+!676 (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (h!54546 (_2!27498 (h!54547 (toList!3001 lt!1574068))))))))

(assert (=> b!4362977 (= lt!1575263 (addToMapMapFromBucket!205 (t!356027 (_2!27498 (h!54547 (toList!3001 lt!1574068)))) (+!676 (extractMap!568 (t!356028 (toList!3001 lt!1574068))) (h!54546 (_2!27498 (h!54547 (toList!3001 lt!1574068)))))))))

(declare-fun lt!1575268 () Unit!72449)

(declare-fun call!303324 () Unit!72449)

(assert (=> b!4362977 (= lt!1575268 call!303324)))

(declare-fun call!303325 () Bool)

(assert (=> b!4362977 call!303325))

(declare-fun lt!1575276 () Unit!72449)

(assert (=> b!4362977 (= lt!1575276 lt!1575268)))

(declare-fun call!303326 () Bool)

(assert (=> b!4362977 call!303326))

(declare-fun lt!1575267 () Unit!72449)

(declare-fun Unit!72705 () Unit!72449)

(assert (=> b!4362977 (= lt!1575267 Unit!72705)))

(assert (=> b!4362977 (forall!9158 (t!356027 (_2!27498 (h!54547 (toList!3001 lt!1574068)))) lambda!141871)))

(declare-fun lt!1575273 () Unit!72449)

(declare-fun Unit!72706 () Unit!72449)

(assert (=> b!4362977 (= lt!1575273 Unit!72706)))

(declare-fun lt!1575264 () Unit!72449)

(declare-fun Unit!72707 () Unit!72449)

(assert (=> b!4362977 (= lt!1575264 Unit!72707)))

(declare-fun lt!1575262 () Unit!72449)

(assert (=> b!4362977 (= lt!1575262 (forallContained!1799 (toList!3002 lt!1575266) lambda!141871 (h!54546 (_2!27498 (h!54547 (toList!3001 lt!1574068))))))))

(assert (=> b!4362977 (contains!11221 lt!1575266 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lt!1574068))))))))

(declare-fun lt!1575279 () Unit!72449)

(declare-fun Unit!72708 () Unit!72449)

(assert (=> b!4362977 (= lt!1575279 Unit!72708)))

(assert (=> b!4362977 (contains!11221 lt!1575263 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lt!1574068))))))))

(declare-fun lt!1575282 () Unit!72449)

(declare-fun Unit!72709 () Unit!72449)

(assert (=> b!4362977 (= lt!1575282 Unit!72709)))

(assert (=> b!4362977 (forall!9158 (_2!27498 (h!54547 (toList!3001 lt!1574068))) lambda!141871)))

(declare-fun lt!1575278 () Unit!72449)

(declare-fun Unit!72710 () Unit!72449)

(assert (=> b!4362977 (= lt!1575278 Unit!72710)))

(assert (=> b!4362977 (forall!9158 (toList!3002 lt!1575266) lambda!141871)))

(declare-fun lt!1575277 () Unit!72449)

(declare-fun Unit!72711 () Unit!72449)

(assert (=> b!4362977 (= lt!1575277 Unit!72711)))

(declare-fun lt!1575280 () Unit!72449)

(declare-fun Unit!72712 () Unit!72449)

(assert (=> b!4362977 (= lt!1575280 Unit!72712)))

(declare-fun lt!1575271 () Unit!72449)

(assert (=> b!4362977 (= lt!1575271 (addForallContainsKeyThenBeforeAdding!73 (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1575263 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lt!1574068))))) (_2!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lt!1574068)))))))))

(assert (=> b!4362977 (forall!9158 (toList!3002 (extractMap!568 (t!356028 (toList!3001 lt!1574068)))) lambda!141871)))

(declare-fun lt!1575265 () Unit!72449)

(assert (=> b!4362977 (= lt!1575265 lt!1575271)))

(assert (=> b!4362977 (forall!9158 (toList!3002 (extractMap!568 (t!356028 (toList!3001 lt!1574068)))) lambda!141871)))

(declare-fun lt!1575272 () Unit!72449)

(declare-fun Unit!72713 () Unit!72449)

(assert (=> b!4362977 (= lt!1575272 Unit!72713)))

(declare-fun res!1794047 () Bool)

(assert (=> b!4362977 (= res!1794047 (forall!9158 (_2!27498 (h!54547 (toList!3001 lt!1574068))) lambda!141871))))

(declare-fun e!2715309 () Bool)

(assert (=> b!4362977 (=> (not res!1794047) (not e!2715309))))

(assert (=> b!4362977 e!2715309))

(declare-fun lt!1575274 () Unit!72449)

(declare-fun Unit!72714 () Unit!72449)

(assert (=> b!4362977 (= lt!1575274 Unit!72714)))

(declare-fun b!4362978 () Bool)

(assert (=> b!4362978 (= e!2715309 (forall!9158 (toList!3002 (extractMap!568 (t!356028 (toList!3001 lt!1574068)))) lambda!141871))))

(declare-fun b!4362979 () Bool)

(assert (=> b!4362979 (= e!2715310 (invariantList!690 (toList!3002 lt!1575275)))))

(declare-fun bm!303319 () Bool)

(assert (=> bm!303319 (= call!303326 (forall!9158 (ite c!741945 (toList!3002 (extractMap!568 (t!356028 (toList!3001 lt!1574068)))) (toList!3002 lt!1575266)) (ite c!741945 lambda!141869 lambda!141871)))))

(assert (=> b!4362980 (= e!2715311 (extractMap!568 (t!356028 (toList!3001 lt!1574068))))))

(declare-fun lt!1575269 () Unit!72449)

(assert (=> b!4362980 (= lt!1575269 call!303324)))

(assert (=> b!4362980 call!303325))

(declare-fun lt!1575281 () Unit!72449)

(assert (=> b!4362980 (= lt!1575281 lt!1575269)))

(assert (=> b!4362980 call!303326))

(declare-fun lt!1575270 () Unit!72449)

(declare-fun Unit!72715 () Unit!72449)

(assert (=> b!4362980 (= lt!1575270 Unit!72715)))

(declare-fun bm!303320 () Bool)

(assert (=> bm!303320 (= call!303325 (forall!9158 (toList!3002 (extractMap!568 (t!356028 (toList!3001 lt!1574068)))) (ite c!741945 lambda!141869 lambda!141870)))))

(declare-fun bm!303321 () Bool)

(assert (=> bm!303321 (= call!303324 (lemmaContainsAllItsOwnKeys!73 (extractMap!568 (t!356028 (toList!3001 lt!1574068)))))))

(declare-fun b!4362981 () Bool)

(declare-fun res!1794045 () Bool)

(assert (=> b!4362981 (=> (not res!1794045) (not e!2715310))))

(assert (=> b!4362981 (= res!1794045 (forall!9158 (toList!3002 (extractMap!568 (t!356028 (toList!3001 lt!1574068)))) lambda!141872))))

(assert (= (and d!1291206 c!741945) b!4362980))

(assert (= (and d!1291206 (not c!741945)) b!4362977))

(assert (= (and b!4362977 res!1794047) b!4362978))

(assert (= (or b!4362980 b!4362977) bm!303321))

(assert (= (or b!4362980 b!4362977) bm!303320))

(assert (= (or b!4362980 b!4362977) bm!303319))

(assert (= (and d!1291206 res!1794046) b!4362981))

(assert (= (and b!4362981 res!1794045) b!4362979))

(declare-fun m!4983341 () Bool)

(assert (=> b!4362979 m!4983341))

(declare-fun m!4983343 () Bool)

(assert (=> d!1291206 m!4983343))

(declare-fun m!4983345 () Bool)

(assert (=> d!1291206 m!4983345))

(assert (=> b!4362977 m!4980607))

(declare-fun m!4983347 () Bool)

(assert (=> b!4362977 m!4983347))

(declare-fun m!4983349 () Bool)

(assert (=> b!4362977 m!4983349))

(declare-fun m!4983351 () Bool)

(assert (=> b!4362977 m!4983351))

(declare-fun m!4983353 () Bool)

(assert (=> b!4362977 m!4983353))

(declare-fun m!4983355 () Bool)

(assert (=> b!4362977 m!4983355))

(declare-fun m!4983357 () Bool)

(assert (=> b!4362977 m!4983357))

(assert (=> b!4362977 m!4983349))

(declare-fun m!4983359 () Bool)

(assert (=> b!4362977 m!4983359))

(declare-fun m!4983361 () Bool)

(assert (=> b!4362977 m!4983361))

(assert (=> b!4362977 m!4980607))

(assert (=> b!4362977 m!4983359))

(declare-fun m!4983363 () Bool)

(assert (=> b!4362977 m!4983363))

(assert (=> b!4362977 m!4983363))

(declare-fun m!4983365 () Bool)

(assert (=> b!4362977 m!4983365))

(declare-fun m!4983367 () Bool)

(assert (=> b!4362981 m!4983367))

(assert (=> bm!303321 m!4980607))

(declare-fun m!4983369 () Bool)

(assert (=> bm!303321 m!4983369))

(declare-fun m!4983371 () Bool)

(assert (=> bm!303320 m!4983371))

(declare-fun m!4983373 () Bool)

(assert (=> bm!303319 m!4983373))

(assert (=> b!4362978 m!4983349))

(assert (=> b!4361675 d!1291206))

(declare-fun bs!636132 () Bool)

(declare-fun d!1291208 () Bool)

(assert (= bs!636132 (and d!1291208 d!1290478)))

(declare-fun lambda!141873 () Int)

(assert (=> bs!636132 (= lambda!141873 lambda!141727)))

(declare-fun bs!636133 () Bool)

(assert (= bs!636133 (and d!1291208 start!422616)))

(assert (=> bs!636133 (= lambda!141873 lambda!141629)))

(declare-fun bs!636134 () Bool)

(assert (= bs!636134 (and d!1291208 d!1290368)))

(assert (=> bs!636134 (= lambda!141873 lambda!141639)))

(declare-fun bs!636135 () Bool)

(assert (= bs!636135 (and d!1291208 d!1290396)))

(assert (=> bs!636135 (= lambda!141873 lambda!141642)))

(declare-fun bs!636136 () Bool)

(assert (= bs!636136 (and d!1291208 d!1290480)))

(assert (=> bs!636136 (= lambda!141873 lambda!141730)))

(declare-fun bs!636137 () Bool)

(assert (= bs!636137 (and d!1291208 d!1290474)))

(assert (=> bs!636137 (= lambda!141873 lambda!141726)))

(declare-fun bs!636138 () Bool)

(assert (= bs!636138 (and d!1291208 d!1291082)))

(assert (=> bs!636138 (= lambda!141873 lambda!141850)))

(declare-fun bs!636139 () Bool)

(assert (= bs!636139 (and d!1291208 d!1291094)))

(assert (=> bs!636139 (= lambda!141873 lambda!141855)))

(declare-fun bs!636140 () Bool)

(assert (= bs!636140 (and d!1291208 d!1290712)))

(assert (=> bs!636140 (= lambda!141873 lambda!141769)))

(declare-fun bs!636141 () Bool)

(assert (= bs!636141 (and d!1291208 d!1290490)))

(assert (=> bs!636141 (= lambda!141873 lambda!141731)))

(declare-fun bs!636142 () Bool)

(assert (= bs!636142 (and d!1291208 d!1290514)))

(assert (=> bs!636142 (not (= lambda!141873 lambda!141734))))

(declare-fun lt!1575283 () ListMap!2245)

(assert (=> d!1291208 (invariantList!690 (toList!3002 lt!1575283))))

(declare-fun e!2715312 () ListMap!2245)

(assert (=> d!1291208 (= lt!1575283 e!2715312)))

(declare-fun c!741946 () Bool)

(assert (=> d!1291208 (= c!741946 ((_ is Cons!48984) (t!356028 (toList!3001 lt!1574068))))))

(assert (=> d!1291208 (forall!9156 (t!356028 (toList!3001 lt!1574068)) lambda!141873)))

(assert (=> d!1291208 (= (extractMap!568 (t!356028 (toList!3001 lt!1574068))) lt!1575283)))

(declare-fun b!4362982 () Bool)

(assert (=> b!4362982 (= e!2715312 (addToMapMapFromBucket!205 (_2!27498 (h!54547 (t!356028 (toList!3001 lt!1574068)))) (extractMap!568 (t!356028 (t!356028 (toList!3001 lt!1574068))))))))

(declare-fun b!4362983 () Bool)

(assert (=> b!4362983 (= e!2715312 (ListMap!2246 Nil!48983))))

(assert (= (and d!1291208 c!741946) b!4362982))

(assert (= (and d!1291208 (not c!741946)) b!4362983))

(declare-fun m!4983375 () Bool)

(assert (=> d!1291208 m!4983375))

(declare-fun m!4983377 () Bool)

(assert (=> d!1291208 m!4983377))

(declare-fun m!4983379 () Bool)

(assert (=> b!4362982 m!4983379))

(assert (=> b!4362982 m!4983379))

(declare-fun m!4983381 () Bool)

(assert (=> b!4362982 m!4983381))

(assert (=> b!4361675 d!1291208))

(assert (=> b!4361872 d!1290986))

(assert (=> b!4361872 d!1290988))

(declare-fun d!1291210 () Bool)

(declare-fun lt!1575284 () Bool)

(assert (=> d!1291210 (= lt!1575284 (select (content!7751 e!2714499) key!3918))))

(declare-fun e!2715314 () Bool)

(assert (=> d!1291210 (= lt!1575284 e!2715314)))

(declare-fun res!1794048 () Bool)

(assert (=> d!1291210 (=> (not res!1794048) (not e!2715314))))

(assert (=> d!1291210 (= res!1794048 ((_ is Cons!48986) e!2714499))))

(assert (=> d!1291210 (= (contains!11225 e!2714499 key!3918) lt!1575284)))

(declare-fun b!4362984 () Bool)

(declare-fun e!2715313 () Bool)

(assert (=> b!4362984 (= e!2715314 e!2715313)))

(declare-fun res!1794049 () Bool)

(assert (=> b!4362984 (=> res!1794049 e!2715313)))

(assert (=> b!4362984 (= res!1794049 (= (h!54551 e!2714499) key!3918))))

(declare-fun b!4362985 () Bool)

(assert (=> b!4362985 (= e!2715313 (contains!11225 (t!356030 e!2714499) key!3918))))

(assert (= (and d!1291210 res!1794048) b!4362984))

(assert (= (and b!4362984 (not res!1794049)) b!4362985))

(declare-fun m!4983383 () Bool)

(assert (=> d!1291210 m!4983383))

(declare-fun m!4983385 () Bool)

(assert (=> d!1291210 m!4983385))

(declare-fun m!4983387 () Bool)

(assert (=> b!4362985 m!4983387))

(assert (=> bm!303178 d!1291210))

(declare-fun bs!636143 () Bool)

(declare-fun b!4362989 () Bool)

(assert (= bs!636143 (and b!4362989 d!1291022)))

(declare-fun lambda!141874 () Int)

(assert (=> bs!636143 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1575137) (= lambda!141874 lambda!141849))))

(declare-fun bs!636144 () Bool)

(assert (= bs!636144 (and b!4362989 b!4362673)))

(assert (=> bs!636144 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1575022) (= lambda!141874 lambda!141826))))

(declare-fun bs!636145 () Bool)

(assert (= bs!636145 (and b!4362989 b!4362977)))

(assert (=> bs!636145 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1575263) (= lambda!141874 lambda!141871))))

(declare-fun bs!636146 () Bool)

(assert (= bs!636146 (and b!4362989 b!4361789)))

(assert (=> bs!636146 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574079) (= lambda!141874 lambda!141719))))

(declare-fun bs!636147 () Bool)

(assert (= bs!636147 (and b!4362989 b!4362144)))

(assert (=> bs!636147 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141874 lambda!141760))))

(declare-fun bs!636148 () Bool)

(assert (= bs!636148 (and b!4362989 b!4362844)))

(assert (=> bs!636148 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1575149) (= lambda!141874 lambda!141853))))

(declare-fun bs!636149 () Bool)

(assert (= bs!636149 (and b!4362989 b!4362819)))

(assert (=> bs!636149 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141874 lambda!141846))))

(declare-fun bs!636150 () Bool)

(assert (= bs!636150 (and b!4362989 b!4362957)))

(assert (=> bs!636150 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1575234) (= lambda!141874 lambda!141867))))

(declare-fun bs!636151 () Bool)

(assert (= bs!636151 (and b!4362989 b!4362847)))

(assert (=> bs!636151 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141874 lambda!141851))))

(assert (=> bs!636146 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574405) (= lambda!141874 lambda!141720))))

(assert (=> bs!636150 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141874 lambda!141866))))

(declare-fun bs!636152 () Bool)

(assert (= bs!636152 (and b!4362989 d!1291196)))

(assert (=> bs!636152 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1575246) (= lambda!141874 lambda!141868))))

(assert (=> bs!636144 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141874 lambda!141824))))

(declare-fun bs!636153 () Bool)

(assert (= bs!636153 (and b!4362989 b!4361792)))

(assert (=> bs!636153 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574079) (= lambda!141874 lambda!141718))))

(declare-fun bs!636154 () Bool)

(assert (= bs!636154 (and b!4362989 b!4362141)))

(assert (=> bs!636154 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574649) (= lambda!141874 lambda!141762))))

(declare-fun bs!636155 () Bool)

(assert (= bs!636155 (and b!4362989 d!1291206)))

(assert (=> bs!636155 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1575275) (= lambda!141874 lambda!141872))))

(declare-fun bs!636156 () Bool)

(assert (= bs!636156 (and b!4362989 b!4361802)))

(assert (=> bs!636156 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574071) (= lambda!141874 lambda!141723))))

(declare-fun bs!636157 () Bool)

(assert (= bs!636157 (and b!4362989 d!1290942)))

(assert (=> bs!636157 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574426) (= lambda!141874 lambda!141839))))

(declare-fun bs!636158 () Bool)

(assert (= bs!636158 (and b!4362989 d!1291092)))

(assert (=> bs!636158 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1575161) (= lambda!141874 lambda!141854))))

(declare-fun bs!636159 () Bool)

(assert (= bs!636159 (and b!4362989 d!1290518)))

(assert (=> bs!636159 (not (= lambda!141874 lambda!141737))))

(declare-fun bs!636160 () Bool)

(assert (= bs!636160 (and b!4362989 d!1291136)))

(assert (=> bs!636160 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574071) (= lambda!141874 lambda!141858))))

(assert (=> bs!636145 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (extractMap!568 (t!356028 (toList!3001 lt!1574068)))) (= lambda!141874 lambda!141870))))

(declare-fun bs!636161 () Bool)

(assert (= bs!636161 (and b!4362989 b!4362980)))

(assert (=> bs!636161 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (extractMap!568 (t!356028 (toList!3001 lt!1574068)))) (= lambda!141874 lambda!141869))))

(declare-fun bs!636162 () Bool)

(assert (= bs!636162 (and b!4362989 d!1291148)))

(assert (=> bs!636162 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574079) (= lambda!141874 lambda!141863))))

(assert (=> bs!636148 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141874 lambda!141852))))

(declare-fun bs!636163 () Bool)

(assert (= bs!636163 (and b!4362989 d!1290916)))

(assert (=> bs!636163 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1575034) (= lambda!141874 lambda!141830))))

(declare-fun bs!636164 () Bool)

(assert (= bs!636164 (and b!4362989 d!1290468)))

(assert (=> bs!636164 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574438) (= lambda!141874 lambda!141725))))

(declare-fun bs!636165 () Bool)

(assert (= bs!636165 (and b!4362989 b!4362960)))

(assert (=> bs!636165 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141874 lambda!141865))))

(assert (=> bs!636156 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574426) (= lambda!141874 lambda!141724))))

(declare-fun bs!636166 () Bool)

(assert (= bs!636166 (and b!4362989 b!4362816)))

(assert (=> bs!636166 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1575125) (= lambda!141874 lambda!141848))))

(declare-fun bs!636167 () Bool)

(assert (= bs!636167 (and b!4362989 b!4362676)))

(assert (=> bs!636167 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141874 lambda!141823))))

(declare-fun bs!636168 () Bool)

(assert (= bs!636168 (and b!4362989 d!1290408)))

(assert (=> bs!636168 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574417) (= lambda!141874 lambda!141721))))

(declare-fun bs!636169 () Bool)

(assert (= bs!636169 (and b!4362989 d!1291190)))

(assert (=> bs!636169 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574405) (= lambda!141874 lambda!141864))))

(declare-fun bs!636170 () Bool)

(assert (= bs!636170 (and b!4362989 d!1290638)))

(assert (=> bs!636170 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574661) (= lambda!141874 lambda!141763))))

(declare-fun bs!636171 () Bool)

(assert (= bs!636171 (and b!4362989 b!4361805)))

(assert (=> bs!636171 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574071) (= lambda!141874 lambda!141722))))

(assert (=> bs!636154 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141874 lambda!141761))))

(assert (=> bs!636166 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141874 lambda!141847))))

(assert (=> b!4362989 true))

(declare-fun bs!636172 () Bool)

(declare-fun b!4362986 () Bool)

(assert (= bs!636172 (and b!4362986 d!1291022)))

(declare-fun lambda!141875 () Int)

(assert (=> bs!636172 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1575137) (= lambda!141875 lambda!141849))))

(declare-fun bs!636173 () Bool)

(assert (= bs!636173 (and b!4362986 b!4362673)))

(assert (=> bs!636173 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1575022) (= lambda!141875 lambda!141826))))

(declare-fun bs!636174 () Bool)

(assert (= bs!636174 (and b!4362986 b!4362977)))

(assert (=> bs!636174 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1575263) (= lambda!141875 lambda!141871))))

(declare-fun bs!636175 () Bool)

(assert (= bs!636175 (and b!4362986 b!4361789)))

(assert (=> bs!636175 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574079) (= lambda!141875 lambda!141719))))

(declare-fun bs!636176 () Bool)

(assert (= bs!636176 (and b!4362986 b!4362144)))

(assert (=> bs!636176 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141875 lambda!141760))))

(declare-fun bs!636177 () Bool)

(assert (= bs!636177 (and b!4362986 b!4362819)))

(assert (=> bs!636177 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141875 lambda!141846))))

(declare-fun bs!636178 () Bool)

(assert (= bs!636178 (and b!4362986 b!4362957)))

(assert (=> bs!636178 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1575234) (= lambda!141875 lambda!141867))))

(declare-fun bs!636179 () Bool)

(assert (= bs!636179 (and b!4362986 b!4362847)))

(assert (=> bs!636179 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141875 lambda!141851))))

(assert (=> bs!636175 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574405) (= lambda!141875 lambda!141720))))

(assert (=> bs!636178 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141875 lambda!141866))))

(declare-fun bs!636180 () Bool)

(assert (= bs!636180 (and b!4362986 d!1291196)))

(assert (=> bs!636180 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1575246) (= lambda!141875 lambda!141868))))

(assert (=> bs!636173 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141875 lambda!141824))))

(declare-fun bs!636181 () Bool)

(assert (= bs!636181 (and b!4362986 b!4361792)))

(assert (=> bs!636181 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574079) (= lambda!141875 lambda!141718))))

(declare-fun bs!636182 () Bool)

(assert (= bs!636182 (and b!4362986 b!4362141)))

(assert (=> bs!636182 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574649) (= lambda!141875 lambda!141762))))

(declare-fun bs!636183 () Bool)

(assert (= bs!636183 (and b!4362986 d!1291206)))

(assert (=> bs!636183 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1575275) (= lambda!141875 lambda!141872))))

(declare-fun bs!636184 () Bool)

(assert (= bs!636184 (and b!4362986 b!4361802)))

(assert (=> bs!636184 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574071) (= lambda!141875 lambda!141723))))

(declare-fun bs!636185 () Bool)

(assert (= bs!636185 (and b!4362986 d!1290942)))

(assert (=> bs!636185 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574426) (= lambda!141875 lambda!141839))))

(declare-fun bs!636186 () Bool)

(assert (= bs!636186 (and b!4362986 d!1291092)))

(assert (=> bs!636186 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1575161) (= lambda!141875 lambda!141854))))

(declare-fun bs!636187 () Bool)

(assert (= bs!636187 (and b!4362986 d!1290518)))

(assert (=> bs!636187 (not (= lambda!141875 lambda!141737))))

(declare-fun bs!636188 () Bool)

(assert (= bs!636188 (and b!4362986 d!1291136)))

(assert (=> bs!636188 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574071) (= lambda!141875 lambda!141858))))

(assert (=> bs!636174 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (extractMap!568 (t!356028 (toList!3001 lt!1574068)))) (= lambda!141875 lambda!141870))))

(declare-fun bs!636189 () Bool)

(assert (= bs!636189 (and b!4362986 b!4362844)))

(assert (=> bs!636189 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1575149) (= lambda!141875 lambda!141853))))

(declare-fun bs!636190 () Bool)

(assert (= bs!636190 (and b!4362986 b!4362989)))

(assert (=> bs!636190 (= lambda!141875 lambda!141874)))

(declare-fun bs!636191 () Bool)

(assert (= bs!636191 (and b!4362986 b!4362980)))

(assert (=> bs!636191 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (extractMap!568 (t!356028 (toList!3001 lt!1574068)))) (= lambda!141875 lambda!141869))))

(declare-fun bs!636192 () Bool)

(assert (= bs!636192 (and b!4362986 d!1291148)))

(assert (=> bs!636192 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574079) (= lambda!141875 lambda!141863))))

(assert (=> bs!636189 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141875 lambda!141852))))

(declare-fun bs!636193 () Bool)

(assert (= bs!636193 (and b!4362986 d!1290916)))

(assert (=> bs!636193 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1575034) (= lambda!141875 lambda!141830))))

(declare-fun bs!636194 () Bool)

(assert (= bs!636194 (and b!4362986 d!1290468)))

(assert (=> bs!636194 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574438) (= lambda!141875 lambda!141725))))

(declare-fun bs!636195 () Bool)

(assert (= bs!636195 (and b!4362986 b!4362960)))

(assert (=> bs!636195 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141875 lambda!141865))))

(assert (=> bs!636184 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574426) (= lambda!141875 lambda!141724))))

(declare-fun bs!636196 () Bool)

(assert (= bs!636196 (and b!4362986 b!4362816)))

(assert (=> bs!636196 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1575125) (= lambda!141875 lambda!141848))))

(declare-fun bs!636197 () Bool)

(assert (= bs!636197 (and b!4362986 b!4362676)))

(assert (=> bs!636197 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141875 lambda!141823))))

(declare-fun bs!636198 () Bool)

(assert (= bs!636198 (and b!4362986 d!1290408)))

(assert (=> bs!636198 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574417) (= lambda!141875 lambda!141721))))

(declare-fun bs!636199 () Bool)

(assert (= bs!636199 (and b!4362986 d!1291190)))

(assert (=> bs!636199 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574405) (= lambda!141875 lambda!141864))))

(declare-fun bs!636200 () Bool)

(assert (= bs!636200 (and b!4362986 d!1290638)))

(assert (=> bs!636200 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574661) (= lambda!141875 lambda!141763))))

(declare-fun bs!636201 () Bool)

(assert (= bs!636201 (and b!4362986 b!4361805)))

(assert (=> bs!636201 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1574071) (= lambda!141875 lambda!141722))))

(assert (=> bs!636182 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141875 lambda!141761))))

(assert (=> bs!636196 (= (= (extractMap!568 (t!356028 (toList!3001 lm!1707))) (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141875 lambda!141847))))

(assert (=> b!4362986 true))

(declare-fun lt!1575286 () ListMap!2245)

(declare-fun lambda!141876 () Int)

(assert (=> bs!636172 (= (= lt!1575286 lt!1575137) (= lambda!141876 lambda!141849))))

(assert (=> bs!636173 (= (= lt!1575286 lt!1575022) (= lambda!141876 lambda!141826))))

(assert (=> bs!636174 (= (= lt!1575286 lt!1575263) (= lambda!141876 lambda!141871))))

(assert (=> bs!636175 (= (= lt!1575286 lt!1574079) (= lambda!141876 lambda!141719))))

(assert (=> bs!636176 (= (= lt!1575286 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141876 lambda!141760))))

(assert (=> bs!636177 (= (= lt!1575286 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141876 lambda!141846))))

(assert (=> bs!636178 (= (= lt!1575286 lt!1575234) (= lambda!141876 lambda!141867))))

(assert (=> bs!636179 (= (= lt!1575286 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141876 lambda!141851))))

(assert (=> bs!636175 (= (= lt!1575286 lt!1574405) (= lambda!141876 lambda!141720))))

(assert (=> bs!636178 (= (= lt!1575286 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141876 lambda!141866))))

(assert (=> bs!636180 (= (= lt!1575286 lt!1575246) (= lambda!141876 lambda!141868))))

(assert (=> bs!636173 (= (= lt!1575286 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141876 lambda!141824))))

(assert (=> bs!636181 (= (= lt!1575286 lt!1574079) (= lambda!141876 lambda!141718))))

(assert (=> bs!636182 (= (= lt!1575286 lt!1574649) (= lambda!141876 lambda!141762))))

(assert (=> bs!636183 (= (= lt!1575286 lt!1575275) (= lambda!141876 lambda!141872))))

(assert (=> bs!636184 (= (= lt!1575286 lt!1574071) (= lambda!141876 lambda!141723))))

(assert (=> bs!636185 (= (= lt!1575286 lt!1574426) (= lambda!141876 lambda!141839))))

(assert (=> bs!636186 (= (= lt!1575286 lt!1575161) (= lambda!141876 lambda!141854))))

(assert (=> bs!636187 (not (= lambda!141876 lambda!141737))))

(assert (=> bs!636188 (= (= lt!1575286 lt!1574071) (= lambda!141876 lambda!141858))))

(assert (=> bs!636174 (= (= lt!1575286 (extractMap!568 (t!356028 (toList!3001 lt!1574068)))) (= lambda!141876 lambda!141870))))

(assert (=> bs!636189 (= (= lt!1575286 lt!1575149) (= lambda!141876 lambda!141853))))

(assert (=> b!4362986 (= (= lt!1575286 (extractMap!568 (t!356028 (toList!3001 lm!1707)))) (= lambda!141876 lambda!141875))))

(assert (=> bs!636190 (= (= lt!1575286 (extractMap!568 (t!356028 (toList!3001 lm!1707)))) (= lambda!141876 lambda!141874))))

(assert (=> bs!636191 (= (= lt!1575286 (extractMap!568 (t!356028 (toList!3001 lt!1574068)))) (= lambda!141876 lambda!141869))))

(assert (=> bs!636192 (= (= lt!1575286 lt!1574079) (= lambda!141876 lambda!141863))))

(assert (=> bs!636189 (= (= lt!1575286 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141876 lambda!141852))))

(assert (=> bs!636193 (= (= lt!1575286 lt!1575034) (= lambda!141876 lambda!141830))))

(assert (=> bs!636194 (= (= lt!1575286 lt!1574438) (= lambda!141876 lambda!141725))))

(assert (=> bs!636195 (= (= lt!1575286 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141876 lambda!141865))))

(assert (=> bs!636184 (= (= lt!1575286 lt!1574426) (= lambda!141876 lambda!141724))))

(assert (=> bs!636196 (= (= lt!1575286 lt!1575125) (= lambda!141876 lambda!141848))))

(assert (=> bs!636197 (= (= lt!1575286 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141876 lambda!141823))))

(assert (=> bs!636198 (= (= lt!1575286 lt!1574417) (= lambda!141876 lambda!141721))))

(assert (=> bs!636199 (= (= lt!1575286 lt!1574405) (= lambda!141876 lambda!141864))))

(assert (=> bs!636200 (= (= lt!1575286 lt!1574661) (= lambda!141876 lambda!141763))))

(assert (=> bs!636201 (= (= lt!1575286 lt!1574071) (= lambda!141876 lambda!141722))))

(assert (=> bs!636182 (= (= lt!1575286 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141876 lambda!141761))))

(assert (=> bs!636196 (= (= lt!1575286 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141876 lambda!141847))))

(assert (=> b!4362986 true))

(declare-fun bs!636202 () Bool)

(declare-fun d!1291212 () Bool)

(assert (= bs!636202 (and d!1291212 d!1291022)))

(declare-fun lt!1575298 () ListMap!2245)

(declare-fun lambda!141877 () Int)

(assert (=> bs!636202 (= (= lt!1575298 lt!1575137) (= lambda!141877 lambda!141849))))

(declare-fun bs!636203 () Bool)

(assert (= bs!636203 (and d!1291212 b!4362986)))

(assert (=> bs!636203 (= (= lt!1575298 lt!1575286) (= lambda!141877 lambda!141876))))

(declare-fun bs!636204 () Bool)

(assert (= bs!636204 (and d!1291212 b!4362673)))

(assert (=> bs!636204 (= (= lt!1575298 lt!1575022) (= lambda!141877 lambda!141826))))

(declare-fun bs!636205 () Bool)

(assert (= bs!636205 (and d!1291212 b!4362977)))

(assert (=> bs!636205 (= (= lt!1575298 lt!1575263) (= lambda!141877 lambda!141871))))

(declare-fun bs!636206 () Bool)

(assert (= bs!636206 (and d!1291212 b!4361789)))

(assert (=> bs!636206 (= (= lt!1575298 lt!1574079) (= lambda!141877 lambda!141719))))

(declare-fun bs!636207 () Bool)

(assert (= bs!636207 (and d!1291212 b!4362144)))

(assert (=> bs!636207 (= (= lt!1575298 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141877 lambda!141760))))

(declare-fun bs!636208 () Bool)

(assert (= bs!636208 (and d!1291212 b!4362819)))

(assert (=> bs!636208 (= (= lt!1575298 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141877 lambda!141846))))

(declare-fun bs!636209 () Bool)

(assert (= bs!636209 (and d!1291212 b!4362957)))

(assert (=> bs!636209 (= (= lt!1575298 lt!1575234) (= lambda!141877 lambda!141867))))

(declare-fun bs!636210 () Bool)

(assert (= bs!636210 (and d!1291212 b!4362847)))

(assert (=> bs!636210 (= (= lt!1575298 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141877 lambda!141851))))

(assert (=> bs!636206 (= (= lt!1575298 lt!1574405) (= lambda!141877 lambda!141720))))

(assert (=> bs!636209 (= (= lt!1575298 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141877 lambda!141866))))

(declare-fun bs!636211 () Bool)

(assert (= bs!636211 (and d!1291212 d!1291196)))

(assert (=> bs!636211 (= (= lt!1575298 lt!1575246) (= lambda!141877 lambda!141868))))

(assert (=> bs!636204 (= (= lt!1575298 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141877 lambda!141824))))

(declare-fun bs!636212 () Bool)

(assert (= bs!636212 (and d!1291212 b!4361792)))

(assert (=> bs!636212 (= (= lt!1575298 lt!1574079) (= lambda!141877 lambda!141718))))

(declare-fun bs!636213 () Bool)

(assert (= bs!636213 (and d!1291212 b!4362141)))

(assert (=> bs!636213 (= (= lt!1575298 lt!1574649) (= lambda!141877 lambda!141762))))

(declare-fun bs!636214 () Bool)

(assert (= bs!636214 (and d!1291212 d!1291206)))

(assert (=> bs!636214 (= (= lt!1575298 lt!1575275) (= lambda!141877 lambda!141872))))

(declare-fun bs!636215 () Bool)

(assert (= bs!636215 (and d!1291212 b!4361802)))

(assert (=> bs!636215 (= (= lt!1575298 lt!1574071) (= lambda!141877 lambda!141723))))

(declare-fun bs!636216 () Bool)

(assert (= bs!636216 (and d!1291212 d!1290942)))

(assert (=> bs!636216 (= (= lt!1575298 lt!1574426) (= lambda!141877 lambda!141839))))

(declare-fun bs!636217 () Bool)

(assert (= bs!636217 (and d!1291212 d!1291092)))

(assert (=> bs!636217 (= (= lt!1575298 lt!1575161) (= lambda!141877 lambda!141854))))

(declare-fun bs!636218 () Bool)

(assert (= bs!636218 (and d!1291212 d!1290518)))

(assert (=> bs!636218 (not (= lambda!141877 lambda!141737))))

(declare-fun bs!636219 () Bool)

(assert (= bs!636219 (and d!1291212 d!1291136)))

(assert (=> bs!636219 (= (= lt!1575298 lt!1574071) (= lambda!141877 lambda!141858))))

(assert (=> bs!636205 (= (= lt!1575298 (extractMap!568 (t!356028 (toList!3001 lt!1574068)))) (= lambda!141877 lambda!141870))))

(declare-fun bs!636220 () Bool)

(assert (= bs!636220 (and d!1291212 b!4362844)))

(assert (=> bs!636220 (= (= lt!1575298 lt!1575149) (= lambda!141877 lambda!141853))))

(assert (=> bs!636203 (= (= lt!1575298 (extractMap!568 (t!356028 (toList!3001 lm!1707)))) (= lambda!141877 lambda!141875))))

(declare-fun bs!636221 () Bool)

(assert (= bs!636221 (and d!1291212 b!4362989)))

(assert (=> bs!636221 (= (= lt!1575298 (extractMap!568 (t!356028 (toList!3001 lm!1707)))) (= lambda!141877 lambda!141874))))

(declare-fun bs!636222 () Bool)

(assert (= bs!636222 (and d!1291212 b!4362980)))

(assert (=> bs!636222 (= (= lt!1575298 (extractMap!568 (t!356028 (toList!3001 lt!1574068)))) (= lambda!141877 lambda!141869))))

(declare-fun bs!636223 () Bool)

(assert (= bs!636223 (and d!1291212 d!1291148)))

(assert (=> bs!636223 (= (= lt!1575298 lt!1574079) (= lambda!141877 lambda!141863))))

(assert (=> bs!636220 (= (= lt!1575298 (extractMap!568 (t!356028 (t!356028 (toList!3001 lm!1707))))) (= lambda!141877 lambda!141852))))

(declare-fun bs!636224 () Bool)

(assert (= bs!636224 (and d!1291212 d!1290916)))

(assert (=> bs!636224 (= (= lt!1575298 lt!1575034) (= lambda!141877 lambda!141830))))

(declare-fun bs!636225 () Bool)

(assert (= bs!636225 (and d!1291212 d!1290468)))

(assert (=> bs!636225 (= (= lt!1575298 lt!1574438) (= lambda!141877 lambda!141725))))

(declare-fun bs!636226 () Bool)

(assert (= bs!636226 (and d!1291212 b!4362960)))

(assert (=> bs!636226 (= (= lt!1575298 (+!676 lt!1574079 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141877 lambda!141865))))

(assert (=> bs!636215 (= (= lt!1575298 lt!1574426) (= lambda!141877 lambda!141724))))

(declare-fun bs!636227 () Bool)

(assert (= bs!636227 (and d!1291212 b!4362816)))

(assert (=> bs!636227 (= (= lt!1575298 lt!1575125) (= lambda!141877 lambda!141848))))

(declare-fun bs!636228 () Bool)

(assert (= bs!636228 (and d!1291212 b!4362676)))

(assert (=> bs!636228 (= (= lt!1575298 (+!676 lt!1574071 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (= lambda!141877 lambda!141823))))

(declare-fun bs!636229 () Bool)

(assert (= bs!636229 (and d!1291212 d!1290408)))

(assert (=> bs!636229 (= (= lt!1575298 lt!1574417) (= lambda!141877 lambda!141721))))

(declare-fun bs!636230 () Bool)

(assert (= bs!636230 (and d!1291212 d!1291190)))

(assert (=> bs!636230 (= (= lt!1575298 lt!1574405) (= lambda!141877 lambda!141864))))

(declare-fun bs!636231 () Bool)

(assert (= bs!636231 (and d!1291212 d!1290638)))

(assert (=> bs!636231 (= (= lt!1575298 lt!1574661) (= lambda!141877 lambda!141763))))

(declare-fun bs!636232 () Bool)

(assert (= bs!636232 (and d!1291212 b!4361805)))

(assert (=> bs!636232 (= (= lt!1575298 lt!1574071) (= lambda!141877 lambda!141722))))

(assert (=> bs!636213 (= (= lt!1575298 (+!676 lt!1574079 (tuple2!48407 key!3918 newValue!99))) (= lambda!141877 lambda!141761))))

(assert (=> bs!636227 (= (= lt!1575298 (extractMap!568 (t!356028 (toList!3001 (+!675 lt!1574068 lt!1574085))))) (= lambda!141877 lambda!141847))))

(assert (=> d!1291212 true))

(declare-fun e!2715316 () Bool)

(assert (=> d!1291212 e!2715316))

(declare-fun res!1794051 () Bool)

(assert (=> d!1291212 (=> (not res!1794051) (not e!2715316))))

(assert (=> d!1291212 (= res!1794051 (forall!9158 (_2!27498 (h!54547 (toList!3001 lm!1707))) lambda!141877))))

(declare-fun e!2715317 () ListMap!2245)

(assert (=> d!1291212 (= lt!1575298 e!2715317)))

(declare-fun c!741947 () Bool)

(assert (=> d!1291212 (= c!741947 ((_ is Nil!48983) (_2!27498 (h!54547 (toList!3001 lm!1707)))))))

(assert (=> d!1291212 (noDuplicateKeys!509 (_2!27498 (h!54547 (toList!3001 lm!1707))))))

(assert (=> d!1291212 (= (addToMapMapFromBucket!205 (_2!27498 (h!54547 (toList!3001 lm!1707))) (extractMap!568 (t!356028 (toList!3001 lm!1707)))) lt!1575298)))

(assert (=> b!4362986 (= e!2715317 lt!1575286)))

(declare-fun lt!1575289 () ListMap!2245)

(assert (=> b!4362986 (= lt!1575289 (+!676 (extractMap!568 (t!356028 (toList!3001 lm!1707))) (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (=> b!4362986 (= lt!1575286 (addToMapMapFromBucket!205 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) (+!676 (extractMap!568 (t!356028 (toList!3001 lm!1707))) (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun lt!1575291 () Unit!72449)

(declare-fun call!303327 () Unit!72449)

(assert (=> b!4362986 (= lt!1575291 call!303327)))

(declare-fun call!303328 () Bool)

(assert (=> b!4362986 call!303328))

(declare-fun lt!1575299 () Unit!72449)

(assert (=> b!4362986 (= lt!1575299 lt!1575291)))

(declare-fun call!303329 () Bool)

(assert (=> b!4362986 call!303329))

(declare-fun lt!1575290 () Unit!72449)

(declare-fun Unit!72716 () Unit!72449)

(assert (=> b!4362986 (= lt!1575290 Unit!72716)))

(assert (=> b!4362986 (forall!9158 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) lambda!141876)))

(declare-fun lt!1575296 () Unit!72449)

(declare-fun Unit!72717 () Unit!72449)

(assert (=> b!4362986 (= lt!1575296 Unit!72717)))

(declare-fun lt!1575287 () Unit!72449)

(declare-fun Unit!72718 () Unit!72449)

(assert (=> b!4362986 (= lt!1575287 Unit!72718)))

(declare-fun lt!1575285 () Unit!72449)

(assert (=> b!4362986 (= lt!1575285 (forallContained!1799 (toList!3002 lt!1575289) lambda!141876 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(assert (=> b!4362986 (contains!11221 lt!1575289 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(declare-fun lt!1575302 () Unit!72449)

(declare-fun Unit!72719 () Unit!72449)

(assert (=> b!4362986 (= lt!1575302 Unit!72719)))

(assert (=> b!4362986 (contains!11221 lt!1575286 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(declare-fun lt!1575305 () Unit!72449)

(declare-fun Unit!72720 () Unit!72449)

(assert (=> b!4362986 (= lt!1575305 Unit!72720)))

(assert (=> b!4362986 (forall!9158 (_2!27498 (h!54547 (toList!3001 lm!1707))) lambda!141876)))

(declare-fun lt!1575301 () Unit!72449)

(declare-fun Unit!72721 () Unit!72449)

(assert (=> b!4362986 (= lt!1575301 Unit!72721)))

(assert (=> b!4362986 (forall!9158 (toList!3002 lt!1575289) lambda!141876)))

(declare-fun lt!1575300 () Unit!72449)

(declare-fun Unit!72722 () Unit!72449)

(assert (=> b!4362986 (= lt!1575300 Unit!72722)))

(declare-fun lt!1575303 () Unit!72449)

(declare-fun Unit!72723 () Unit!72449)

(assert (=> b!4362986 (= lt!1575303 Unit!72723)))

(declare-fun lt!1575294 () Unit!72449)

(assert (=> b!4362986 (= lt!1575294 (addForallContainsKeyThenBeforeAdding!73 (extractMap!568 (t!356028 (toList!3001 lm!1707))) lt!1575286 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (_2!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> b!4362986 (forall!9158 (toList!3002 (extractMap!568 (t!356028 (toList!3001 lm!1707)))) lambda!141876)))

(declare-fun lt!1575288 () Unit!72449)

(assert (=> b!4362986 (= lt!1575288 lt!1575294)))

(assert (=> b!4362986 (forall!9158 (toList!3002 (extractMap!568 (t!356028 (toList!3001 lm!1707)))) lambda!141876)))

(declare-fun lt!1575295 () Unit!72449)

(declare-fun Unit!72724 () Unit!72449)

(assert (=> b!4362986 (= lt!1575295 Unit!72724)))

(declare-fun res!1794052 () Bool)

(assert (=> b!4362986 (= res!1794052 (forall!9158 (_2!27498 (h!54547 (toList!3001 lm!1707))) lambda!141876))))

(declare-fun e!2715315 () Bool)

(assert (=> b!4362986 (=> (not res!1794052) (not e!2715315))))

(assert (=> b!4362986 e!2715315))

(declare-fun lt!1575297 () Unit!72449)

(declare-fun Unit!72725 () Unit!72449)

(assert (=> b!4362986 (= lt!1575297 Unit!72725)))

(declare-fun b!4362987 () Bool)

(assert (=> b!4362987 (= e!2715315 (forall!9158 (toList!3002 (extractMap!568 (t!356028 (toList!3001 lm!1707)))) lambda!141876))))

(declare-fun b!4362988 () Bool)

(assert (=> b!4362988 (= e!2715316 (invariantList!690 (toList!3002 lt!1575298)))))

(declare-fun bm!303322 () Bool)

(assert (=> bm!303322 (= call!303329 (forall!9158 (ite c!741947 (toList!3002 (extractMap!568 (t!356028 (toList!3001 lm!1707)))) (toList!3002 lt!1575289)) (ite c!741947 lambda!141874 lambda!141876)))))

(assert (=> b!4362989 (= e!2715317 (extractMap!568 (t!356028 (toList!3001 lm!1707))))))

(declare-fun lt!1575292 () Unit!72449)

(assert (=> b!4362989 (= lt!1575292 call!303327)))

(assert (=> b!4362989 call!303328))

(declare-fun lt!1575304 () Unit!72449)

(assert (=> b!4362989 (= lt!1575304 lt!1575292)))

(assert (=> b!4362989 call!303329))

(declare-fun lt!1575293 () Unit!72449)

(declare-fun Unit!72726 () Unit!72449)

(assert (=> b!4362989 (= lt!1575293 Unit!72726)))

(declare-fun bm!303323 () Bool)

(assert (=> bm!303323 (= call!303328 (forall!9158 (toList!3002 (extractMap!568 (t!356028 (toList!3001 lm!1707)))) (ite c!741947 lambda!141874 lambda!141875)))))

(declare-fun bm!303324 () Bool)

(assert (=> bm!303324 (= call!303327 (lemmaContainsAllItsOwnKeys!73 (extractMap!568 (t!356028 (toList!3001 lm!1707)))))))

(declare-fun b!4362990 () Bool)

(declare-fun res!1794050 () Bool)

(assert (=> b!4362990 (=> (not res!1794050) (not e!2715316))))

(assert (=> b!4362990 (= res!1794050 (forall!9158 (toList!3002 (extractMap!568 (t!356028 (toList!3001 lm!1707)))) lambda!141877))))

(assert (= (and d!1291212 c!741947) b!4362989))

(assert (= (and d!1291212 (not c!741947)) b!4362986))

(assert (= (and b!4362986 res!1794052) b!4362987))

(assert (= (or b!4362989 b!4362986) bm!303324))

(assert (= (or b!4362989 b!4362986) bm!303323))

(assert (= (or b!4362989 b!4362986) bm!303322))

(assert (= (and d!1291212 res!1794051) b!4362990))

(assert (= (and b!4362990 res!1794050) b!4362988))

(declare-fun m!4983389 () Bool)

(assert (=> b!4362988 m!4983389))

(declare-fun m!4983391 () Bool)

(assert (=> d!1291212 m!4983391))

(assert (=> d!1291212 m!4980639))

(assert (=> b!4362986 m!4980375))

(declare-fun m!4983393 () Bool)

(assert (=> b!4362986 m!4983393))

(declare-fun m!4983395 () Bool)

(assert (=> b!4362986 m!4983395))

(declare-fun m!4983397 () Bool)

(assert (=> b!4362986 m!4983397))

(declare-fun m!4983399 () Bool)

(assert (=> b!4362986 m!4983399))

(declare-fun m!4983401 () Bool)

(assert (=> b!4362986 m!4983401))

(declare-fun m!4983403 () Bool)

(assert (=> b!4362986 m!4983403))

(assert (=> b!4362986 m!4983395))

(declare-fun m!4983405 () Bool)

(assert (=> b!4362986 m!4983405))

(declare-fun m!4983407 () Bool)

(assert (=> b!4362986 m!4983407))

(assert (=> b!4362986 m!4980375))

(assert (=> b!4362986 m!4983405))

(declare-fun m!4983409 () Bool)

(assert (=> b!4362986 m!4983409))

(assert (=> b!4362986 m!4983409))

(declare-fun m!4983411 () Bool)

(assert (=> b!4362986 m!4983411))

(declare-fun m!4983413 () Bool)

(assert (=> b!4362990 m!4983413))

(assert (=> bm!303324 m!4980375))

(declare-fun m!4983415 () Bool)

(assert (=> bm!303324 m!4983415))

(declare-fun m!4983417 () Bool)

(assert (=> bm!303323 m!4983417))

(declare-fun m!4983419 () Bool)

(assert (=> bm!303322 m!4983419))

(assert (=> b!4362987 m!4983395))

(assert (=> b!4361834 d!1291212))

(assert (=> b!4361834 d!1290474))

(declare-fun d!1291214 () Bool)

(declare-fun lt!1575306 () Bool)

(assert (=> d!1291214 (= lt!1575306 (select (content!7749 (toList!3001 lt!1574138)) lt!1574085))))

(declare-fun e!2715318 () Bool)

(assert (=> d!1291214 (= lt!1575306 e!2715318)))

(declare-fun res!1794053 () Bool)

(assert (=> d!1291214 (=> (not res!1794053) (not e!2715318))))

(assert (=> d!1291214 (= res!1794053 ((_ is Cons!48984) (toList!3001 lt!1574138)))))

(assert (=> d!1291214 (= (contains!11220 (toList!3001 lt!1574138) lt!1574085) lt!1575306)))

(declare-fun b!4362991 () Bool)

(declare-fun e!2715319 () Bool)

(assert (=> b!4362991 (= e!2715318 e!2715319)))

(declare-fun res!1794054 () Bool)

(assert (=> b!4362991 (=> res!1794054 e!2715319)))

(assert (=> b!4362991 (= res!1794054 (= (h!54547 (toList!3001 lt!1574138)) lt!1574085))))

(declare-fun b!4362992 () Bool)

(assert (=> b!4362992 (= e!2715319 (contains!11220 (t!356028 (toList!3001 lt!1574138)) lt!1574085))))

(assert (= (and d!1291214 res!1794053) b!4362991))

(assert (= (and b!4362991 (not res!1794054)) b!4362992))

(declare-fun m!4983421 () Bool)

(assert (=> d!1291214 m!4983421))

(declare-fun m!4983423 () Bool)

(assert (=> d!1291214 m!4983423))

(declare-fun m!4983425 () Bool)

(assert (=> b!4362992 m!4983425))

(assert (=> b!4361619 d!1291214))

(declare-fun d!1291216 () Bool)

(declare-fun lt!1575307 () Bool)

(assert (=> d!1291216 (= lt!1575307 (select (content!7749 (toList!3001 lt!1574460)) lt!1574085))))

(declare-fun e!2715320 () Bool)

(assert (=> d!1291216 (= lt!1575307 e!2715320)))

(declare-fun res!1794055 () Bool)

(assert (=> d!1291216 (=> (not res!1794055) (not e!2715320))))

(assert (=> d!1291216 (= res!1794055 ((_ is Cons!48984) (toList!3001 lt!1574460)))))

(assert (=> d!1291216 (= (contains!11220 (toList!3001 lt!1574460) lt!1574085) lt!1575307)))

(declare-fun b!4362993 () Bool)

(declare-fun e!2715321 () Bool)

(assert (=> b!4362993 (= e!2715320 e!2715321)))

(declare-fun res!1794056 () Bool)

(assert (=> b!4362993 (=> res!1794056 e!2715321)))

(assert (=> b!4362993 (= res!1794056 (= (h!54547 (toList!3001 lt!1574460)) lt!1574085))))

(declare-fun b!4362994 () Bool)

(assert (=> b!4362994 (= e!2715321 (contains!11220 (t!356028 (toList!3001 lt!1574460)) lt!1574085))))

(assert (= (and d!1291216 res!1794055) b!4362993))

(assert (= (and b!4362993 (not res!1794056)) b!4362994))

(declare-fun m!4983427 () Bool)

(assert (=> d!1291216 m!4983427))

(declare-fun m!4983429 () Bool)

(assert (=> d!1291216 m!4983429))

(declare-fun m!4983431 () Bool)

(assert (=> b!4362994 m!4983431))

(assert (=> b!4361820 d!1291216))

(declare-fun d!1291218 () Bool)

(assert (=> d!1291218 (isDefined!7786 (getValueByKey!479 (toList!3002 lt!1574069) key!3918))))

(declare-fun lt!1575308 () Unit!72449)

(assert (=> d!1291218 (= lt!1575308 (choose!27050 (toList!3002 lt!1574069) key!3918))))

(assert (=> d!1291218 (invariantList!690 (toList!3002 lt!1574069))))

(assert (=> d!1291218 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!389 (toList!3002 lt!1574069) key!3918) lt!1575308)))

(declare-fun bs!636233 () Bool)

(assert (= bs!636233 d!1291218))

(assert (=> bs!636233 m!4980651))

(assert (=> bs!636233 m!4980651))

(assert (=> bs!636233 m!4980653))

(declare-fun m!4983433 () Bool)

(assert (=> bs!636233 m!4983433))

(assert (=> bs!636233 m!4982813))

(assert (=> b!4361714 d!1291218))

(assert (=> b!4361714 d!1291130))

(assert (=> b!4361714 d!1291132))

(declare-fun d!1291220 () Bool)

(assert (=> d!1291220 (contains!11225 (getKeysList!138 (toList!3002 lt!1574069)) key!3918)))

(declare-fun lt!1575309 () Unit!72449)

(assert (=> d!1291220 (= lt!1575309 (choose!27052 (toList!3002 lt!1574069) key!3918))))

(assert (=> d!1291220 (invariantList!690 (toList!3002 lt!1574069))))

(assert (=> d!1291220 (= (lemmaInListThenGetKeysListContains!135 (toList!3002 lt!1574069) key!3918) lt!1575309)))

(declare-fun bs!636234 () Bool)

(assert (= bs!636234 d!1291220))

(assert (=> bs!636234 m!4980647))

(assert (=> bs!636234 m!4980647))

(declare-fun m!4983435 () Bool)

(assert (=> bs!636234 m!4983435))

(declare-fun m!4983437 () Bool)

(assert (=> bs!636234 m!4983437))

(assert (=> bs!636234 m!4982813))

(assert (=> b!4361714 d!1291220))

(declare-fun b!4362998 () Bool)

(declare-fun e!2715323 () Option!10493)

(assert (=> b!4362998 (= e!2715323 None!10492)))

(declare-fun b!4362997 () Bool)

(assert (=> b!4362997 (= e!2715323 (getValueByKey!479 (t!356027 (toList!3002 lt!1574453)) (_1!27497 lt!1574080)))))

(declare-fun d!1291222 () Bool)

(declare-fun c!741948 () Bool)

(assert (=> d!1291222 (= c!741948 (and ((_ is Cons!48983) (toList!3002 lt!1574453)) (= (_1!27497 (h!54546 (toList!3002 lt!1574453))) (_1!27497 lt!1574080))))))

(declare-fun e!2715322 () Option!10493)

(assert (=> d!1291222 (= (getValueByKey!479 (toList!3002 lt!1574453) (_1!27497 lt!1574080)) e!2715322)))

(declare-fun b!4362995 () Bool)

(assert (=> b!4362995 (= e!2715322 (Some!10492 (_2!27497 (h!54546 (toList!3002 lt!1574453)))))))

(declare-fun b!4362996 () Bool)

(assert (=> b!4362996 (= e!2715322 e!2715323)))

(declare-fun c!741949 () Bool)

(assert (=> b!4362996 (= c!741949 (and ((_ is Cons!48983) (toList!3002 lt!1574453)) (not (= (_1!27497 (h!54546 (toList!3002 lt!1574453))) (_1!27497 lt!1574080)))))))

(assert (= (and d!1291222 c!741948) b!4362995))

(assert (= (and d!1291222 (not c!741948)) b!4362996))

(assert (= (and b!4362996 c!741949) b!4362997))

(assert (= (and b!4362996 (not c!741949)) b!4362998))

(declare-fun m!4983439 () Bool)

(assert (=> b!4362997 m!4983439))

(assert (=> b!4361809 d!1291222))

(declare-fun d!1291224 () Bool)

(declare-fun res!1794057 () Bool)

(declare-fun e!2715324 () Bool)

(assert (=> d!1291224 (=> res!1794057 e!2715324)))

(assert (=> d!1291224 (= res!1794057 ((_ is Nil!48983) (toList!3002 lt!1574079)))))

(assert (=> d!1291224 (= (forall!9158 (toList!3002 lt!1574079) (ite c!741654 lambda!141718 lambda!141719)) e!2715324)))

(declare-fun b!4362999 () Bool)

(declare-fun e!2715325 () Bool)

(assert (=> b!4362999 (= e!2715324 e!2715325)))

(declare-fun res!1794058 () Bool)

(assert (=> b!4362999 (=> (not res!1794058) (not e!2715325))))

(assert (=> b!4362999 (= res!1794058 (dynLambda!20653 (ite c!741654 lambda!141718 lambda!141719) (h!54546 (toList!3002 lt!1574079))))))

(declare-fun b!4363000 () Bool)

(assert (=> b!4363000 (= e!2715325 (forall!9158 (t!356027 (toList!3002 lt!1574079)) (ite c!741654 lambda!141718 lambda!141719)))))

(assert (= (and d!1291224 (not res!1794057)) b!4362999))

(assert (= (and b!4362999 res!1794058) b!4363000))

(declare-fun b_lambda!132067 () Bool)

(assert (=> (not b_lambda!132067) (not b!4362999)))

(declare-fun m!4983441 () Bool)

(assert (=> b!4362999 m!4983441))

(declare-fun m!4983443 () Bool)

(assert (=> b!4363000 m!4983443))

(assert (=> bm!303199 d!1291224))

(declare-fun d!1291226 () Bool)

(declare-fun res!1794063 () Bool)

(declare-fun e!2715330 () Bool)

(assert (=> d!1291226 (=> res!1794063 e!2715330)))

(assert (=> d!1291226 (= res!1794063 (and ((_ is Cons!48984) (toList!3001 lm!1707)) (= (_1!27498 (h!54547 (toList!3001 lm!1707))) hash!377)))))

(assert (=> d!1291226 (= (containsKey!738 (toList!3001 lm!1707) hash!377) e!2715330)))

(declare-fun b!4363005 () Bool)

(declare-fun e!2715331 () Bool)

(assert (=> b!4363005 (= e!2715330 e!2715331)))

(declare-fun res!1794064 () Bool)

(assert (=> b!4363005 (=> (not res!1794064) (not e!2715331))))

(assert (=> b!4363005 (= res!1794064 (and (or (not ((_ is Cons!48984) (toList!3001 lm!1707))) (bvsle (_1!27498 (h!54547 (toList!3001 lm!1707))) hash!377)) ((_ is Cons!48984) (toList!3001 lm!1707)) (bvslt (_1!27498 (h!54547 (toList!3001 lm!1707))) hash!377)))))

(declare-fun b!4363006 () Bool)

(assert (=> b!4363006 (= e!2715331 (containsKey!738 (t!356028 (toList!3001 lm!1707)) hash!377))))

(assert (= (and d!1291226 (not res!1794063)) b!4363005))

(assert (= (and b!4363005 res!1794064) b!4363006))

(declare-fun m!4983445 () Bool)

(assert (=> b!4363006 m!4983445))

(assert (=> d!1290516 d!1291226))

(declare-fun d!1291228 () Bool)

(declare-fun lt!1575310 () Bool)

(assert (=> d!1291228 (= lt!1575310 (select (content!7748 (toList!3002 lt!1574453)) lt!1574080))))

(declare-fun e!2715332 () Bool)

(assert (=> d!1291228 (= lt!1575310 e!2715332)))

(declare-fun res!1794065 () Bool)

(assert (=> d!1291228 (=> (not res!1794065) (not e!2715332))))

(assert (=> d!1291228 (= res!1794065 ((_ is Cons!48983) (toList!3002 lt!1574453)))))

(assert (=> d!1291228 (= (contains!11223 (toList!3002 lt!1574453) lt!1574080) lt!1575310)))

(declare-fun b!4363007 () Bool)

(declare-fun e!2715333 () Bool)

(assert (=> b!4363007 (= e!2715332 e!2715333)))

(declare-fun res!1794066 () Bool)

(assert (=> b!4363007 (=> res!1794066 e!2715333)))

(assert (=> b!4363007 (= res!1794066 (= (h!54546 (toList!3002 lt!1574453)) lt!1574080))))

(declare-fun b!4363008 () Bool)

(assert (=> b!4363008 (= e!2715333 (contains!11223 (t!356027 (toList!3002 lt!1574453)) lt!1574080))))

(assert (= (and d!1291228 res!1794065) b!4363007))

(assert (= (and b!4363007 (not res!1794066)) b!4363008))

(declare-fun m!4983447 () Bool)

(assert (=> d!1291228 m!4983447))

(declare-fun m!4983449 () Bool)

(assert (=> d!1291228 m!4983449))

(declare-fun m!4983451 () Bool)

(assert (=> b!4363008 m!4983451))

(assert (=> b!4361810 d!1291228))

(declare-fun d!1291230 () Bool)

(assert (=> d!1291230 (= (head!9082 (toList!3001 lm!1707)) (h!54547 (toList!3001 lm!1707)))))

(assert (=> d!1290494 d!1291230))

(declare-fun d!1291232 () Bool)

(declare-fun res!1794067 () Bool)

(declare-fun e!2715334 () Bool)

(assert (=> d!1291232 (=> res!1794067 e!2715334)))

(assert (=> d!1291232 (= res!1794067 (and ((_ is Cons!48983) (t!356027 newBucket!200)) (= (_1!27497 (h!54546 (t!356027 newBucket!200))) (_1!27497 (h!54546 newBucket!200)))))))

(assert (=> d!1291232 (= (containsKey!734 (t!356027 newBucket!200) (_1!27497 (h!54546 newBucket!200))) e!2715334)))

(declare-fun b!4363009 () Bool)

(declare-fun e!2715335 () Bool)

(assert (=> b!4363009 (= e!2715334 e!2715335)))

(declare-fun res!1794068 () Bool)

(assert (=> b!4363009 (=> (not res!1794068) (not e!2715335))))

(assert (=> b!4363009 (= res!1794068 ((_ is Cons!48983) (t!356027 newBucket!200)))))

(declare-fun b!4363010 () Bool)

(assert (=> b!4363010 (= e!2715335 (containsKey!734 (t!356027 (t!356027 newBucket!200)) (_1!27497 (h!54546 newBucket!200))))))

(assert (= (and d!1291232 (not res!1794067)) b!4363009))

(assert (= (and b!4363009 res!1794068) b!4363010))

(declare-fun m!4983453 () Bool)

(assert (=> b!4363010 m!4983453))

(assert (=> b!4361817 d!1291232))

(declare-fun d!1291234 () Bool)

(declare-fun lt!1575311 () Bool)

(assert (=> d!1291234 (= lt!1575311 (select (content!7748 (toList!3002 lt!1574195)) lt!1574080))))

(declare-fun e!2715336 () Bool)

(assert (=> d!1291234 (= lt!1575311 e!2715336)))

(declare-fun res!1794069 () Bool)

(assert (=> d!1291234 (=> (not res!1794069) (not e!2715336))))

(assert (=> d!1291234 (= res!1794069 ((_ is Cons!48983) (toList!3002 lt!1574195)))))

(assert (=> d!1291234 (= (contains!11223 (toList!3002 lt!1574195) lt!1574080) lt!1575311)))

(declare-fun b!4363011 () Bool)

(declare-fun e!2715337 () Bool)

(assert (=> b!4363011 (= e!2715336 e!2715337)))

(declare-fun res!1794070 () Bool)

(assert (=> b!4363011 (=> res!1794070 e!2715337)))

(assert (=> b!4363011 (= res!1794070 (= (h!54546 (toList!3002 lt!1574195)) lt!1574080))))

(declare-fun b!4363012 () Bool)

(assert (=> b!4363012 (= e!2715337 (contains!11223 (t!356027 (toList!3002 lt!1574195)) lt!1574080))))

(assert (= (and d!1291234 res!1794069) b!4363011))

(assert (= (and b!4363011 (not res!1794070)) b!4363012))

(declare-fun m!4983455 () Bool)

(assert (=> d!1291234 m!4983455))

(declare-fun m!4983457 () Bool)

(assert (=> d!1291234 m!4983457))

(declare-fun m!4983459 () Bool)

(assert (=> b!4363012 m!4983459))

(assert (=> b!4361670 d!1291234))

(declare-fun d!1291236 () Bool)

(declare-fun res!1794071 () Bool)

(declare-fun e!2715338 () Bool)

(assert (=> d!1291236 (=> res!1794071 e!2715338)))

(assert (=> d!1291236 (= res!1794071 ((_ is Nil!48983) (_2!27498 (h!54547 (toList!3001 lm!1707)))))))

(assert (=> d!1291236 (= (forall!9158 (_2!27498 (h!54547 (toList!3001 lm!1707))) lambda!141721) e!2715338)))

(declare-fun b!4363013 () Bool)

(declare-fun e!2715339 () Bool)

(assert (=> b!4363013 (= e!2715338 e!2715339)))

(declare-fun res!1794072 () Bool)

(assert (=> b!4363013 (=> (not res!1794072) (not e!2715339))))

(assert (=> b!4363013 (= res!1794072 (dynLambda!20653 lambda!141721 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))

(declare-fun b!4363014 () Bool)

(assert (=> b!4363014 (= e!2715339 (forall!9158 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))) lambda!141721))))

(assert (= (and d!1291236 (not res!1794071)) b!4363013))

(assert (= (and b!4363013 res!1794072) b!4363014))

(declare-fun b_lambda!132069 () Bool)

(assert (=> (not b_lambda!132069) (not b!4363013)))

(declare-fun m!4983461 () Bool)

(assert (=> b!4363013 m!4983461))

(declare-fun m!4983463 () Bool)

(assert (=> b!4363014 m!4983463))

(assert (=> d!1290408 d!1291236))

(assert (=> d!1290408 d!1290722))

(assert (=> b!4361827 d!1290680))

(assert (=> b!4361827 d!1290682))

(assert (=> b!4361850 d!1290988))

(declare-fun d!1291238 () Bool)

(declare-fun c!741950 () Bool)

(assert (=> d!1291238 (= c!741950 ((_ is Nil!48983) (toList!3002 lt!1574087)))))

(declare-fun e!2715340 () (InoxSet tuple2!48406))

(assert (=> d!1291238 (= (content!7748 (toList!3002 lt!1574087)) e!2715340)))

(declare-fun b!4363015 () Bool)

(assert (=> b!4363015 (= e!2715340 ((as const (Array tuple2!48406 Bool)) false))))

(declare-fun b!4363016 () Bool)

(assert (=> b!4363016 (= e!2715340 ((_ map or) (store ((as const (Array tuple2!48406 Bool)) false) (h!54546 (toList!3002 lt!1574087)) true) (content!7748 (t!356027 (toList!3002 lt!1574087)))))))

(assert (= (and d!1291238 c!741950) b!4363015))

(assert (= (and d!1291238 (not c!741950)) b!4363016))

(declare-fun m!4983465 () Bool)

(assert (=> b!4363016 m!4983465))

(declare-fun m!4983467 () Bool)

(assert (=> b!4363016 m!4983467))

(assert (=> d!1290394 d!1291238))

(declare-fun d!1291240 () Bool)

(declare-fun c!741951 () Bool)

(assert (=> d!1291240 (= c!741951 ((_ is Nil!48983) (toList!3002 lt!1574071)))))

(declare-fun e!2715341 () (InoxSet tuple2!48406))

(assert (=> d!1291240 (= (content!7748 (toList!3002 lt!1574071)) e!2715341)))

(declare-fun b!4363017 () Bool)

(assert (=> b!4363017 (= e!2715341 ((as const (Array tuple2!48406 Bool)) false))))

(declare-fun b!4363018 () Bool)

(assert (=> b!4363018 (= e!2715341 ((_ map or) (store ((as const (Array tuple2!48406 Bool)) false) (h!54546 (toList!3002 lt!1574071)) true) (content!7748 (t!356027 (toList!3002 lt!1574071)))))))

(assert (= (and d!1291240 c!741951) b!4363017))

(assert (= (and d!1291240 (not c!741951)) b!4363018))

(declare-fun m!4983469 () Bool)

(assert (=> b!4363018 m!4983469))

(declare-fun m!4983471 () Bool)

(assert (=> b!4363018 m!4983471))

(assert (=> d!1290394 d!1291240))

(declare-fun d!1291242 () Bool)

(assert (=> d!1291242 (= (get!15917 (getValueByKey!478 (toList!3001 lm!1707) hash!377)) (v!43403 (getValueByKey!478 (toList!3001 lm!1707) hash!377)))))

(assert (=> d!1290496 d!1291242))

(assert (=> d!1290496 d!1290988))

(declare-fun bs!636235 () Bool)

(declare-fun b!4363027 () Bool)

(assert (= bs!636235 (and b!4363027 b!4362891)))

(declare-fun lambda!141878 () Int)

(assert (=> bs!636235 (= (= (t!356027 (toList!3002 lt!1574072)) (t!356027 (toList!3002 lt!1574069))) (= lambda!141878 lambda!141859))))

(declare-fun bs!636236 () Bool)

(assert (= bs!636236 (and b!4363027 b!4362648)))

(assert (=> bs!636236 (= (= (t!356027 (toList!3002 lt!1574072)) (toList!3002 lt!1574072)) (= lambda!141878 lambda!141821))))

(declare-fun bs!636237 () Bool)

(assert (= bs!636237 (and b!4363027 b!4362533)))

(assert (=> bs!636237 (= (= (t!356027 (toList!3002 lt!1574072)) (toList!3002 lt!1574079)) (= lambda!141878 lambda!141811))))

(declare-fun bs!636238 () Bool)

(assert (= bs!636238 (and b!4363027 b!4362443)))

(assert (=> bs!636238 (= (= (t!356027 (toList!3002 lt!1574072)) (toList!3002 lt!1574069)) (= lambda!141878 lambda!141795))))

(declare-fun bs!636239 () Bool)

(assert (= bs!636239 (and b!4363027 b!4362889)))

(assert (=> bs!636239 (= (= (t!356027 (toList!3002 lt!1574072)) (toList!3002 lt!1574069)) (= lambda!141878 lambda!141861))))

(declare-fun bs!636240 () Bool)

(assert (= bs!636240 (and b!4363027 b!4362806)))

(assert (=> bs!636240 (= (= (t!356027 (toList!3002 lt!1574072)) (toList!3002 lt!1574079)) (= lambda!141878 lambda!141844))))

(declare-fun bs!636241 () Bool)

(assert (= bs!636241 (and b!4363027 b!4362535)))

(assert (=> bs!636241 (= (= (t!356027 (toList!3002 lt!1574072)) (t!356027 (toList!3002 lt!1574079))) (= lambda!141878 lambda!141809))))

(declare-fun bs!636242 () Bool)

(assert (= bs!636242 (and b!4363027 b!4362528)))

(assert (=> bs!636242 (= (= (t!356027 (toList!3002 lt!1574072)) (Cons!48983 (h!54546 (toList!3002 lt!1574079)) (t!356027 (toList!3002 lt!1574079)))) (= lambda!141878 lambda!141810))))

(declare-fun bs!636243 () Bool)

(assert (= bs!636243 (and b!4363027 b!4362884)))

(assert (=> bs!636243 (= (= (t!356027 (toList!3002 lt!1574072)) (Cons!48983 (h!54546 (toList!3002 lt!1574069)) (t!356027 (toList!3002 lt!1574069)))) (= lambda!141878 lambda!141860))))

(assert (=> b!4363027 true))

(declare-fun bs!636244 () Bool)

(declare-fun b!4363020 () Bool)

(assert (= bs!636244 (and b!4363020 b!4362891)))

(declare-fun lambda!141879 () Int)

(assert (=> bs!636244 (= (= (Cons!48983 (h!54546 (toList!3002 lt!1574072)) (t!356027 (toList!3002 lt!1574072))) (t!356027 (toList!3002 lt!1574069))) (= lambda!141879 lambda!141859))))

(declare-fun bs!636245 () Bool)

(assert (= bs!636245 (and b!4363020 b!4362648)))

(assert (=> bs!636245 (= (= (Cons!48983 (h!54546 (toList!3002 lt!1574072)) (t!356027 (toList!3002 lt!1574072))) (toList!3002 lt!1574072)) (= lambda!141879 lambda!141821))))

(declare-fun bs!636246 () Bool)

(assert (= bs!636246 (and b!4363020 b!4362533)))

(assert (=> bs!636246 (= (= (Cons!48983 (h!54546 (toList!3002 lt!1574072)) (t!356027 (toList!3002 lt!1574072))) (toList!3002 lt!1574079)) (= lambda!141879 lambda!141811))))

(declare-fun bs!636247 () Bool)

(assert (= bs!636247 (and b!4363020 b!4362443)))

(assert (=> bs!636247 (= (= (Cons!48983 (h!54546 (toList!3002 lt!1574072)) (t!356027 (toList!3002 lt!1574072))) (toList!3002 lt!1574069)) (= lambda!141879 lambda!141795))))

(declare-fun bs!636248 () Bool)

(assert (= bs!636248 (and b!4363020 b!4362889)))

(assert (=> bs!636248 (= (= (Cons!48983 (h!54546 (toList!3002 lt!1574072)) (t!356027 (toList!3002 lt!1574072))) (toList!3002 lt!1574069)) (= lambda!141879 lambda!141861))))

(declare-fun bs!636249 () Bool)

(assert (= bs!636249 (and b!4363020 b!4362806)))

(assert (=> bs!636249 (= (= (Cons!48983 (h!54546 (toList!3002 lt!1574072)) (t!356027 (toList!3002 lt!1574072))) (toList!3002 lt!1574079)) (= lambda!141879 lambda!141844))))

(declare-fun bs!636250 () Bool)

(assert (= bs!636250 (and b!4363020 b!4362535)))

(assert (=> bs!636250 (= (= (Cons!48983 (h!54546 (toList!3002 lt!1574072)) (t!356027 (toList!3002 lt!1574072))) (t!356027 (toList!3002 lt!1574079))) (= lambda!141879 lambda!141809))))

(declare-fun bs!636251 () Bool)

(assert (= bs!636251 (and b!4363020 b!4362528)))

(assert (=> bs!636251 (= (= (Cons!48983 (h!54546 (toList!3002 lt!1574072)) (t!356027 (toList!3002 lt!1574072))) (Cons!48983 (h!54546 (toList!3002 lt!1574079)) (t!356027 (toList!3002 lt!1574079)))) (= lambda!141879 lambda!141810))))

(declare-fun bs!636252 () Bool)

(assert (= bs!636252 (and b!4363020 b!4363027)))

(assert (=> bs!636252 (= (= (Cons!48983 (h!54546 (toList!3002 lt!1574072)) (t!356027 (toList!3002 lt!1574072))) (t!356027 (toList!3002 lt!1574072))) (= lambda!141879 lambda!141878))))

(declare-fun bs!636253 () Bool)

(assert (= bs!636253 (and b!4363020 b!4362884)))

(assert (=> bs!636253 (= (= (Cons!48983 (h!54546 (toList!3002 lt!1574072)) (t!356027 (toList!3002 lt!1574072))) (Cons!48983 (h!54546 (toList!3002 lt!1574069)) (t!356027 (toList!3002 lt!1574069)))) (= lambda!141879 lambda!141860))))

(assert (=> b!4363020 true))

(declare-fun bs!636254 () Bool)

(declare-fun b!4363025 () Bool)

(assert (= bs!636254 (and b!4363025 b!4362891)))

(declare-fun lambda!141880 () Int)

(assert (=> bs!636254 (= (= (toList!3002 lt!1574072) (t!356027 (toList!3002 lt!1574069))) (= lambda!141880 lambda!141859))))

(declare-fun bs!636255 () Bool)

(assert (= bs!636255 (and b!4363025 b!4362648)))

(assert (=> bs!636255 (= lambda!141880 lambda!141821)))

(declare-fun bs!636256 () Bool)

(assert (= bs!636256 (and b!4363025 b!4362533)))

(assert (=> bs!636256 (= (= (toList!3002 lt!1574072) (toList!3002 lt!1574079)) (= lambda!141880 lambda!141811))))

(declare-fun bs!636257 () Bool)

(assert (= bs!636257 (and b!4363025 b!4362443)))

(assert (=> bs!636257 (= (= (toList!3002 lt!1574072) (toList!3002 lt!1574069)) (= lambda!141880 lambda!141795))))

(declare-fun bs!636258 () Bool)

(assert (= bs!636258 (and b!4363025 b!4362889)))

(assert (=> bs!636258 (= (= (toList!3002 lt!1574072) (toList!3002 lt!1574069)) (= lambda!141880 lambda!141861))))

(declare-fun bs!636259 () Bool)

(assert (= bs!636259 (and b!4363025 b!4362535)))

(assert (=> bs!636259 (= (= (toList!3002 lt!1574072) (t!356027 (toList!3002 lt!1574079))) (= lambda!141880 lambda!141809))))

(declare-fun bs!636260 () Bool)

(assert (= bs!636260 (and b!4363025 b!4362528)))

(assert (=> bs!636260 (= (= (toList!3002 lt!1574072) (Cons!48983 (h!54546 (toList!3002 lt!1574079)) (t!356027 (toList!3002 lt!1574079)))) (= lambda!141880 lambda!141810))))

(declare-fun bs!636261 () Bool)

(assert (= bs!636261 (and b!4363025 b!4363020)))

(assert (=> bs!636261 (= (= (toList!3002 lt!1574072) (Cons!48983 (h!54546 (toList!3002 lt!1574072)) (t!356027 (toList!3002 lt!1574072)))) (= lambda!141880 lambda!141879))))

(declare-fun bs!636262 () Bool)

(assert (= bs!636262 (and b!4363025 b!4362806)))

(assert (=> bs!636262 (= (= (toList!3002 lt!1574072) (toList!3002 lt!1574079)) (= lambda!141880 lambda!141844))))

(declare-fun bs!636263 () Bool)

(assert (= bs!636263 (and b!4363025 b!4363027)))

(assert (=> bs!636263 (= (= (toList!3002 lt!1574072) (t!356027 (toList!3002 lt!1574072))) (= lambda!141880 lambda!141878))))

(declare-fun bs!636264 () Bool)

(assert (= bs!636264 (and b!4363025 b!4362884)))

(assert (=> bs!636264 (= (= (toList!3002 lt!1574072) (Cons!48983 (h!54546 (toList!3002 lt!1574069)) (t!356027 (toList!3002 lt!1574069)))) (= lambda!141880 lambda!141860))))

(assert (=> b!4363025 true))

(declare-fun bs!636265 () Bool)

(declare-fun b!4363023 () Bool)

(assert (= bs!636265 (and b!4363023 b!4362531)))

(declare-fun lambda!141881 () Int)

(assert (=> bs!636265 (= lambda!141881 lambda!141812)))

(declare-fun bs!636266 () Bool)

(assert (= bs!636266 (and b!4363023 b!4362807)))

(assert (=> bs!636266 (= lambda!141881 lambda!141845)))

(declare-fun bs!636267 () Bool)

(assert (= bs!636267 (and b!4363023 b!4362444)))

(assert (=> bs!636267 (= lambda!141881 lambda!141796)))

(declare-fun bs!636268 () Bool)

(assert (= bs!636268 (and b!4363023 b!4362887)))

(assert (=> bs!636268 (= lambda!141881 lambda!141862)))

(declare-fun bs!636269 () Bool)

(assert (= bs!636269 (and b!4363023 b!4362649)))

(assert (=> bs!636269 (= lambda!141881 lambda!141822)))

(declare-fun b!4363019 () Bool)

(assert (=> b!4363019 false))

(declare-fun e!2715343 () Unit!72449)

(declare-fun Unit!72727 () Unit!72449)

(assert (=> b!4363019 (= e!2715343 Unit!72727)))

(declare-fun d!1291244 () Bool)

(declare-fun e!2715344 () Bool)

(assert (=> d!1291244 e!2715344))

(declare-fun res!1794073 () Bool)

(assert (=> d!1291244 (=> (not res!1794073) (not e!2715344))))

(declare-fun lt!1575314 () List!49110)

(assert (=> d!1291244 (= res!1794073 (noDuplicate!608 lt!1575314))))

(declare-fun e!2715342 () List!49110)

(assert (=> d!1291244 (= lt!1575314 e!2715342)))

(declare-fun c!741954 () Bool)

(assert (=> d!1291244 (= c!741954 ((_ is Cons!48983) (toList!3002 lt!1574072)))))

(assert (=> d!1291244 (invariantList!690 (toList!3002 lt!1574072))))

(assert (=> d!1291244 (= (getKeysList!138 (toList!3002 lt!1574072)) lt!1575314)))

(assert (=> b!4363020 (= e!2715342 (Cons!48986 (_1!27497 (h!54546 (toList!3002 lt!1574072))) (getKeysList!138 (t!356027 (toList!3002 lt!1574072)))))))

(declare-fun c!741952 () Bool)

(assert (=> b!4363020 (= c!741952 (containsKey!737 (t!356027 (toList!3002 lt!1574072)) (_1!27497 (h!54546 (toList!3002 lt!1574072)))))))

(declare-fun lt!1575317 () Unit!72449)

(assert (=> b!4363020 (= lt!1575317 e!2715343)))

(declare-fun c!741953 () Bool)

(assert (=> b!4363020 (= c!741953 (contains!11225 (getKeysList!138 (t!356027 (toList!3002 lt!1574072))) (_1!27497 (h!54546 (toList!3002 lt!1574072)))))))

(declare-fun lt!1575315 () Unit!72449)

(declare-fun e!2715345 () Unit!72449)

(assert (=> b!4363020 (= lt!1575315 e!2715345)))

(declare-fun lt!1575316 () List!49110)

(assert (=> b!4363020 (= lt!1575316 (getKeysList!138 (t!356027 (toList!3002 lt!1574072))))))

(declare-fun lt!1575312 () Unit!72449)

(assert (=> b!4363020 (= lt!1575312 (lemmaForallContainsAddHeadPreserves!29 (t!356027 (toList!3002 lt!1574072)) lt!1575316 (h!54546 (toList!3002 lt!1574072))))))

(assert (=> b!4363020 (forall!9160 lt!1575316 lambda!141879)))

(declare-fun lt!1575318 () Unit!72449)

(assert (=> b!4363020 (= lt!1575318 lt!1575312)))

(declare-fun b!4363021 () Bool)

(assert (=> b!4363021 (= e!2715342 Nil!48986)))

(declare-fun b!4363022 () Bool)

(declare-fun Unit!72728 () Unit!72449)

(assert (=> b!4363022 (= e!2715345 Unit!72728)))

(assert (=> b!4363023 (= e!2715344 (= (content!7751 lt!1575314) (content!7751 (map!10659 (toList!3002 lt!1574072) lambda!141881))))))

(declare-fun b!4363024 () Bool)

(declare-fun Unit!72729 () Unit!72449)

(assert (=> b!4363024 (= e!2715343 Unit!72729)))

(declare-fun res!1794074 () Bool)

(assert (=> b!4363025 (=> (not res!1794074) (not e!2715344))))

(assert (=> b!4363025 (= res!1794074 (forall!9160 lt!1575314 lambda!141880))))

(declare-fun b!4363026 () Bool)

(declare-fun res!1794075 () Bool)

(assert (=> b!4363026 (=> (not res!1794075) (not e!2715344))))

(assert (=> b!4363026 (= res!1794075 (= (length!72 lt!1575314) (length!73 (toList!3002 lt!1574072))))))

(assert (=> b!4363027 false))

(declare-fun lt!1575313 () Unit!72449)

(assert (=> b!4363027 (= lt!1575313 (forallContained!1800 (getKeysList!138 (t!356027 (toList!3002 lt!1574072))) lambda!141878 (_1!27497 (h!54546 (toList!3002 lt!1574072)))))))

(declare-fun Unit!72730 () Unit!72449)

(assert (=> b!4363027 (= e!2715345 Unit!72730)))

(assert (= (and d!1291244 c!741954) b!4363020))

(assert (= (and d!1291244 (not c!741954)) b!4363021))

(assert (= (and b!4363020 c!741952) b!4363019))

(assert (= (and b!4363020 (not c!741952)) b!4363024))

(assert (= (and b!4363020 c!741953) b!4363027))

(assert (= (and b!4363020 (not c!741953)) b!4363022))

(assert (= (and d!1291244 res!1794073) b!4363026))

(assert (= (and b!4363026 res!1794075) b!4363025))

(assert (= (and b!4363025 res!1794074) b!4363023))

(declare-fun m!4983473 () Bool)

(assert (=> d!1291244 m!4983473))

(assert (=> d!1291244 m!4981641))

(declare-fun m!4983475 () Bool)

(assert (=> b!4363020 m!4983475))

(assert (=> b!4363020 m!4982419))

(declare-fun m!4983477 () Bool)

(assert (=> b!4363020 m!4983477))

(assert (=> b!4363020 m!4983475))

(declare-fun m!4983479 () Bool)

(assert (=> b!4363020 m!4983479))

(declare-fun m!4983481 () Bool)

(assert (=> b!4363020 m!4983481))

(declare-fun m!4983483 () Bool)

(assert (=> b!4363026 m!4983483))

(assert (=> b!4363026 m!4982463))

(declare-fun m!4983485 () Bool)

(assert (=> b!4363023 m!4983485))

(declare-fun m!4983487 () Bool)

(assert (=> b!4363023 m!4983487))

(assert (=> b!4363023 m!4983487))

(declare-fun m!4983489 () Bool)

(assert (=> b!4363023 m!4983489))

(declare-fun m!4983491 () Bool)

(assert (=> b!4363025 m!4983491))

(assert (=> b!4363027 m!4983475))

(assert (=> b!4363027 m!4983475))

(declare-fun m!4983493 () Bool)

(assert (=> b!4363027 m!4983493))

(assert (=> b!4361831 d!1291244))

(declare-fun e!2715346 () Bool)

(declare-fun b!4363028 () Bool)

(declare-fun tp!1330399 () Bool)

(assert (=> b!4363028 (= e!2715346 (and tp_is_empty!25273 tp_is_empty!25275 tp!1330399))))

(assert (=> b!4361886 (= tp!1330393 e!2715346)))

(assert (= (and b!4361886 ((_ is Cons!48983) (_2!27498 (h!54547 (toList!3001 lm!1707))))) b!4363028))

(declare-fun b!4363029 () Bool)

(declare-fun e!2715347 () Bool)

(declare-fun tp!1330400 () Bool)

(declare-fun tp!1330401 () Bool)

(assert (=> b!4363029 (= e!2715347 (and tp!1330400 tp!1330401))))

(assert (=> b!4361886 (= tp!1330394 e!2715347)))

(assert (= (and b!4361886 ((_ is Cons!48984) (t!356028 (toList!3001 lm!1707)))) b!4363029))

(declare-fun e!2715348 () Bool)

(declare-fun tp!1330402 () Bool)

(declare-fun b!4363030 () Bool)

(assert (=> b!4363030 (= e!2715348 (and tp_is_empty!25273 tp_is_empty!25275 tp!1330402))))

(assert (=> b!4361881 (= tp!1330388 e!2715348)))

(assert (= (and b!4361881 ((_ is Cons!48983) (t!356027 (t!356027 newBucket!200)))) b!4363030))

(declare-fun b_lambda!132071 () Bool)

(assert (= b_lambda!132047 (or b!4361789 b_lambda!132071)))

(declare-fun bs!636270 () Bool)

(declare-fun d!1291246 () Bool)

(assert (= bs!636270 (and d!1291246 b!4361789)))

(assert (=> bs!636270 (= (dynLambda!20653 lambda!141720 (h!54546 (toList!3002 lt!1574079))) (contains!11221 lt!1574405 (_1!27497 (h!54546 (toList!3002 lt!1574079)))))))

(declare-fun m!4983495 () Bool)

(assert (=> bs!636270 m!4983495))

(assert (=> b!4362881 d!1291246))

(declare-fun b_lambda!132073 () Bool)

(assert (= b_lambda!132043 (or start!422616 b_lambda!132073)))

(assert (=> d!1291108 d!1290520))

(declare-fun b_lambda!132075 () Bool)

(assert (= b_lambda!132041 (or d!1290408 b_lambda!132075)))

(declare-fun bs!636271 () Bool)

(declare-fun d!1291248 () Bool)

(assert (= bs!636271 (and d!1291248 d!1290408)))

(assert (=> bs!636271 (= (dynLambda!20653 lambda!141721 (h!54546 (toList!3002 lt!1574079))) (contains!11221 lt!1574417 (_1!27497 (h!54546 (toList!3002 lt!1574079)))))))

(declare-fun m!4983497 () Bool)

(assert (=> bs!636271 m!4983497))

(assert (=> b!4362855 d!1291248))

(declare-fun b_lambda!132077 () Bool)

(assert (= b_lambda!131969 (or b!4361802 b_lambda!132077)))

(declare-fun bs!636272 () Bool)

(declare-fun d!1291250 () Bool)

(assert (= bs!636272 (and d!1291250 b!4361802)))

(assert (=> bs!636272 (= (dynLambda!20653 lambda!141724 (h!54546 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (contains!11221 lt!1574426 (_1!27497 (h!54546 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))))

(declare-fun m!4983499 () Bool)

(assert (=> bs!636272 m!4983499))

(assert (=> b!4362734 d!1291250))

(declare-fun b_lambda!132079 () Bool)

(assert (= b_lambda!131975 (or d!1290478 b_lambda!132079)))

(declare-fun bs!636273 () Bool)

(declare-fun d!1291252 () Bool)

(assert (= bs!636273 (and d!1291252 d!1290478)))

(assert (=> bs!636273 (= (dynLambda!20651 lambda!141727 (h!54547 (toList!3001 (+!675 lt!1574068 lt!1574085)))) (noDuplicateKeys!509 (_2!27498 (h!54547 (toList!3001 (+!675 lt!1574068 lt!1574085))))))))

(assert (=> bs!636273 m!4982915))

(assert (=> b!4362765 d!1291252))

(declare-fun b_lambda!132081 () Bool)

(assert (= b_lambda!132059 (or b!4361789 b_lambda!132081)))

(declare-fun bs!636274 () Bool)

(declare-fun d!1291254 () Bool)

(assert (= bs!636274 (and d!1291254 b!4361789)))

(assert (=> bs!636274 (= (dynLambda!20653 lambda!141720 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (contains!11221 lt!1574405 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> bs!636274 m!4980887))

(assert (=> d!1291188 d!1291254))

(declare-fun b_lambda!132083 () Bool)

(assert (= b_lambda!131949 (or d!1290518 b_lambda!132083)))

(declare-fun bs!636275 () Bool)

(declare-fun d!1291256 () Bool)

(assert (= bs!636275 (and d!1291256 d!1290518)))

(assert (=> bs!636275 (= (dynLambda!20653 lambda!141737 (h!54546 newBucket!200)) (= (hash!1621 hashF!1247 (_1!27497 (h!54546 newBucket!200))) hash!377))))

(declare-fun m!4983501 () Bool)

(assert (=> bs!636275 m!4983501))

(assert (=> b!4362610 d!1291256))

(declare-fun b_lambda!132085 () Bool)

(assert (= b_lambda!132061 (or b!4361789 b_lambda!132085)))

(declare-fun bs!636276 () Bool)

(declare-fun d!1291258 () Bool)

(assert (= bs!636276 (and d!1291258 b!4361789)))

(assert (=> bs!636276 (= (dynLambda!20653 lambda!141720 (h!54546 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707)))))) (contains!11221 lt!1574405 (_1!27497 (h!54546 (t!356027 (_2!27498 (h!54547 (toList!3001 lm!1707))))))))))

(declare-fun m!4983503 () Bool)

(assert (=> bs!636276 m!4983503))

(assert (=> b!4362962 d!1291258))

(declare-fun b_lambda!132087 () Bool)

(assert (= b_lambda!131971 (or start!422616 b_lambda!132087)))

(declare-fun bs!636277 () Bool)

(declare-fun d!1291260 () Bool)

(assert (= bs!636277 (and d!1291260 start!422616)))

(assert (=> bs!636277 (= (dynLambda!20651 lambda!141629 (h!54547 (toList!3001 (+!675 lm!1707 (tuple2!48409 hash!377 newBucket!200))))) (noDuplicateKeys!509 (_2!27498 (h!54547 (toList!3001 (+!675 lm!1707 (tuple2!48409 hash!377 newBucket!200)))))))))

(declare-fun m!4983505 () Bool)

(assert (=> bs!636277 m!4983505))

(assert (=> b!4362744 d!1291260))

(declare-fun b_lambda!132089 () Bool)

(assert (= b_lambda!132063 (or b!4361789 b_lambda!132089)))

(assert (=> b!4362964 d!1291254))

(declare-fun b_lambda!132091 () Bool)

(assert (= b_lambda!131963 (or b!4361802 b_lambda!132091)))

(declare-fun bs!636278 () Bool)

(declare-fun d!1291262 () Bool)

(assert (= bs!636278 (and d!1291262 b!4361802)))

(assert (=> bs!636278 (= (dynLambda!20653 lambda!141724 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (contains!11221 lt!1574426 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(assert (=> bs!636278 m!4980919))

(assert (=> b!4362708 d!1291262))

(declare-fun b_lambda!132093 () Bool)

(assert (= b_lambda!132065 (or b!4361789 b_lambda!132093)))

(declare-fun bs!636279 () Bool)

(declare-fun d!1291264 () Bool)

(assert (= bs!636279 (and d!1291264 b!4361789)))

(assert (=> bs!636279 (= (dynLambda!20653 lambda!141720 (h!54546 (toList!3002 lt!1574408))) (contains!11221 lt!1574405 (_1!27497 (h!54546 (toList!3002 lt!1574408)))))))

(declare-fun m!4983507 () Bool)

(assert (=> bs!636279 m!4983507))

(assert (=> b!4362966 d!1291264))

(declare-fun b_lambda!132095 () Bool)

(assert (= b_lambda!131923 (or d!1290368 b_lambda!132095)))

(declare-fun bs!636280 () Bool)

(declare-fun d!1291266 () Bool)

(assert (= bs!636280 (and d!1291266 d!1290368)))

(assert (=> bs!636280 (= (dynLambda!20651 lambda!141639 (h!54547 (toList!3001 lt!1574068))) (noDuplicateKeys!509 (_2!27498 (h!54547 (toList!3001 lt!1574068)))))))

(assert (=> bs!636280 m!4983345))

(assert (=> b!4362225 d!1291266))

(declare-fun b_lambda!132097 () Bool)

(assert (= b_lambda!131981 (or d!1290468 b_lambda!132097)))

(declare-fun bs!636281 () Bool)

(declare-fun d!1291268 () Bool)

(assert (= bs!636281 (and d!1291268 d!1290468)))

(assert (=> bs!636281 (= (dynLambda!20653 lambda!141725 (h!54546 (toList!3002 lt!1574071))) (contains!11221 lt!1574438 (_1!27497 (h!54546 (toList!3002 lt!1574071)))))))

(declare-fun m!4983509 () Bool)

(assert (=> bs!636281 m!4983509))

(assert (=> b!4362803 d!1291268))

(declare-fun b_lambda!132099 () Bool)

(assert (= b_lambda!132053 (or d!1290490 b_lambda!132099)))

(declare-fun bs!636282 () Bool)

(declare-fun d!1291270 () Bool)

(assert (= bs!636282 (and d!1291270 d!1290490)))

(assert (=> bs!636282 (= (dynLambda!20651 lambda!141731 (h!54547 (toList!3001 lm!1707))) (noDuplicateKeys!509 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))

(assert (=> bs!636282 m!4980639))

(assert (=> b!4362933 d!1291270))

(declare-fun b_lambda!132101 () Bool)

(assert (= b_lambda!132049 (or d!1290468 b_lambda!132101)))

(declare-fun bs!636283 () Bool)

(declare-fun d!1291272 () Bool)

(assert (= bs!636283 (and d!1291272 d!1290468)))

(assert (=> bs!636283 (= (dynLambda!20653 lambda!141725 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (contains!11221 lt!1574438 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun m!4983511 () Bool)

(assert (=> bs!636283 m!4983511))

(assert (=> b!4362892 d!1291272))

(declare-fun b_lambda!132103 () Bool)

(assert (= b_lambda!131965 (or b!4361802 b_lambda!132103)))

(assert (=> d!1290940 d!1291262))

(declare-fun b_lambda!132105 () Bool)

(assert (= b_lambda!131979 (or d!1290474 b_lambda!132105)))

(declare-fun bs!636284 () Bool)

(declare-fun d!1291274 () Bool)

(assert (= bs!636284 (and d!1291274 d!1290474)))

(assert (=> bs!636284 (= (dynLambda!20651 lambda!141726 (h!54547 (t!356028 (toList!3001 lm!1707)))) (noDuplicateKeys!509 (_2!27498 (h!54547 (t!356028 (toList!3001 lm!1707))))))))

(assert (=> bs!636284 m!4982975))

(assert (=> b!4362799 d!1291274))

(declare-fun b_lambda!132107 () Bool)

(assert (= b_lambda!132051 (or start!422616 b_lambda!132107)))

(declare-fun bs!636285 () Bool)

(declare-fun d!1291276 () Bool)

(assert (= bs!636285 (and d!1291276 start!422616)))

(assert (=> bs!636285 (= (dynLambda!20651 lambda!141629 (h!54547 (t!356028 (toList!3001 lm!1707)))) (noDuplicateKeys!509 (_2!27498 (h!54547 (t!356028 (toList!3001 lm!1707))))))))

(assert (=> bs!636285 m!4982975))

(assert (=> b!4362931 d!1291276))

(declare-fun b_lambda!132109 () Bool)

(assert (= b_lambda!131967 (or b!4361802 b_lambda!132109)))

(declare-fun bs!636286 () Bool)

(declare-fun d!1291278 () Bool)

(assert (= bs!636286 (and d!1291278 b!4361802)))

(assert (=> bs!636286 (= (dynLambda!20653 lambda!141724 (h!54546 (toList!3002 lt!1574429))) (contains!11221 lt!1574426 (_1!27497 (h!54546 (toList!3002 lt!1574429)))))))

(declare-fun m!4983513 () Bool)

(assert (=> bs!636286 m!4983513))

(assert (=> b!4362723 d!1291278))

(declare-fun b_lambda!132111 () Bool)

(assert (= b_lambda!132069 (or d!1290408 b_lambda!132111)))

(declare-fun bs!636287 () Bool)

(declare-fun d!1291280 () Bool)

(assert (= bs!636287 (and d!1291280 d!1290408)))

(assert (=> bs!636287 (= (dynLambda!20653 lambda!141721 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707))))) (contains!11221 lt!1574417 (_1!27497 (h!54546 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))))

(declare-fun m!4983515 () Bool)

(assert (=> bs!636287 m!4983515))

(assert (=> b!4363013 d!1291280))

(declare-fun b_lambda!132113 () Bool)

(assert (= b_lambda!131977 (or d!1290514 b_lambda!132113)))

(declare-fun bs!636288 () Bool)

(declare-fun d!1291282 () Bool)

(assert (= bs!636288 (and d!1291282 d!1290514)))

(assert (=> bs!636288 (= (dynLambda!20651 lambda!141734 (h!54547 (toList!3001 lm!1707))) (allKeysSameHash!467 (_2!27498 (h!54547 (toList!3001 lm!1707))) (_1!27498 (h!54547 (toList!3001 lm!1707))) hashF!1247))))

(declare-fun m!4983517 () Bool)

(assert (=> bs!636288 m!4983517))

(assert (=> b!4362795 d!1291282))

(declare-fun b_lambda!132115 () Bool)

(assert (= b_lambda!131921 (or d!1290396 b_lambda!132115)))

(declare-fun bs!636289 () Bool)

(declare-fun d!1291284 () Bool)

(assert (= bs!636289 (and d!1291284 d!1290396)))

(assert (=> bs!636289 (= (dynLambda!20651 lambda!141642 (h!54547 (toList!3001 lt!1574068))) (noDuplicateKeys!509 (_2!27498 (h!54547 (toList!3001 lt!1574068)))))))

(assert (=> bs!636289 m!4983345))

(assert (=> b!4362217 d!1291284))

(declare-fun b_lambda!132117 () Bool)

(assert (= b_lambda!131961 (or b!4361802 b_lambda!132117)))

(declare-fun bs!636290 () Bool)

(declare-fun d!1291286 () Bool)

(assert (= bs!636290 (and d!1291286 b!4361802)))

(assert (=> bs!636290 (= (dynLambda!20653 lambda!141724 (h!54546 (toList!3002 lt!1574071))) (contains!11221 lt!1574426 (_1!27497 (h!54546 (toList!3002 lt!1574071)))))))

(declare-fun m!4983519 () Bool)

(assert (=> bs!636290 m!4983519))

(assert (=> b!4362706 d!1291286))

(declare-fun b_lambda!132119 () Bool)

(assert (= b_lambda!132045 (or d!1290480 b_lambda!132119)))

(declare-fun bs!636291 () Bool)

(declare-fun d!1291288 () Bool)

(assert (= bs!636291 (and d!1291288 d!1290480)))

(assert (=> bs!636291 (= (dynLambda!20651 lambda!141730 (h!54547 (toList!3001 lm!1707))) (noDuplicateKeys!509 (_2!27498 (h!54547 (toList!3001 lm!1707)))))))

(assert (=> bs!636291 m!4980639))

(assert (=> b!4362879 d!1291288))

(declare-fun b_lambda!132121 () Bool)

(assert (= b_lambda!132057 (or start!422616 b_lambda!132121)))

(declare-fun bs!636292 () Bool)

(declare-fun d!1291290 () Bool)

(assert (= bs!636292 (and d!1291290 start!422616)))

(assert (=> bs!636292 (= (dynLambda!20651 lambda!141629 (h!54547 (t!356028 (toList!3001 lt!1574070)))) (noDuplicateKeys!509 (_2!27498 (h!54547 (t!356028 (toList!3001 lt!1574070))))))))

(declare-fun m!4983521 () Bool)

(assert (=> bs!636292 m!4983521))

(assert (=> b!4362943 d!1291290))

(check-sat (not b!4362591) (not b!4362558) (not bs!636283) (not b!4362720) (not b!4362783) (not b!4362976) (not b!4362271) (not b!4362647) (not b!4362899) (not b!4362965) (not b!4362223) (not b!4362179) (not bm!303234) (not b!4362844) (not b!4362400) (not d!1290856) (not bm!303318) (not b!4362942) (not b!4362994) (not b!4362589) (not b_lambda!132103) (not bm!303322) (not d!1291244) (not b!4362970) (not b!4362463) (not d!1291166) (not b!4363010) (not b!4362954) (not b_lambda!132111) (not b_lambda!132085) (not b!4362890) (not b!4362858) (not b!4362620) (not b!4362959) (not d!1291092) (not b_lambda!131895) (not b!4362630) (not d!1291100) (not bm!303320) (not b!4362721) (not b!4362918) (not d!1291138) (not d!1291194) (not b!4362664) (not d!1291124) (not b!4362727) (not bs!636277) (not d!1291228) (not b!4362265) (not d!1290678) (not b!4362531) (not b!4362893) (not d!1290860) (not d!1291212) (not d!1290818) (not b!4362557) (not bs!636286) (not d!1291168) (not b!4362875) (not b!4362747) (not b!4362655) (not d!1290638) (not b_lambda!132101) (not b!4362940) (not b!4362816) (not b!4362836) (not b!4362224) (not d!1290962) (not d!1291204) (not bs!636287) (not bm!303235) (not b!4362273) (not b!4362854) (not b!4363012) (not b!4362925) (not bm!303309) (not b!4362178) (not b!4362891) (not b!4362859) (not bm!303323) (not b!4362974) (not d!1291176) (not b!4362884) (not bm!303294) (not d!1291220) (not bs!636281) (not b!4362657) (not b!4362921) (not b!4362926) (not b!4362640) (not d!1291172) (not bm!303296) tp_is_empty!25273 (not bm!303302) (not b!4362646) (not b!4362222) (not d!1290990) (not b!4362990) (not b!4362908) (not d!1290694) (not b_lambda!131973) (not b!4362707) (not b!4362468) (not b!4362853) (not d!1291210) tp_is_empty!25275 (not d!1290666) (not bm!303314) (not b!4362916) (not b!4362285) (not b!4363006) (not b!4362730) (not b!4362634) (not b!4362817) (not b!4362528) (not b!4362724) (not b!4362221) (not d!1290698) (not d!1290808) (not d!1290904) (not b!4362673) (not b!4362951) (not b!4362745) (not bm!303291) (not d!1291098) (not b!4362977) (not d!1291136) (not bm!303297) (not d!1290862) (not b!4362860) (not b!4362443) (not d!1290916) (not bm!303324) (not b!4362626) (not b!4362750) (not bs!636282) (not bs!636275) (not b_lambda!132105) (not b!4362632) (not b!4362837) (not d!1290960) (not d!1291214) (not b!4362652) (not b!4362658) (not b!4362863) (not d!1291160) (not bm!303304) (not b!4362872) (not b!4362270) (not b!4363020) (not bs!636292) (not b!4362674) (not b!4362848) (not b!4362979) (not b_lambda!132079) (not b!4362982) (not d!1291144) (not b!4362442) (not b!4362208) (not b!4362988) (not b_lambda!132055) (not d!1290882) (not b!4362397) (not bm!303305) (not b!4362930) (not b!4362766) (not b!4362882) (not b!4362806) (not bs!636273) (not b!4362266) (not b!4362846) (not b!4362675) (not d!1291114) (not bm!303321) (not b!4362896) (not b!4362834) (not b!4362533) (not b!4362934) (not b!4362914) (not b_lambda!132087) (not b!4362391) (not b!4362915) (not b!4362818) (not b!4362950) (not b!4362608) (not b!4362392) (not b!4362617) (not d!1291218) (not bs!636289) (not bm!303319) (not b!4362843) (not bm!303310) (not b!4362945) (not b!4362717) (not b_lambda!132093) (not d!1291216) (not b!4362760) (not b!4362668) (not b!4362548) (not b_lambda!132097) (not d!1290942) (not d!1290724) (not b!4362211) (not bm!303308) (not b!4362728) (not d!1291206) (not b!4362274) (not b!4362975) (not b!4362614) (not b!4362534) (not b_lambda!132113) (not b!4362913) (not b!4362985) (not b!4362192) (not b!4362275) (not b!4362820) (not d!1290822) (not b_lambda!132077) (not b!4363014) (not b!4362957) (not d!1290948) (not b!4362972) (not b!4362718) (not bs!636279) (not b_lambda!132083) (not b!4362856) (not b_lambda!132081) (not d!1291182) (not d!1291190) (not b!4362907) (not b!4362625) (not bs!636270) (not b!4362944) (not b!4362743) (not bm!303315) (not d!1290878) (not bm!303307) (not b!4362973) (not b!4362229) (not d!1290940) (not b_lambda!132099) (not b!4362986) (not d!1290710) (not b!4362852) (not bs!636274) (not b!4362987) (not d!1290636) (not d!1290898) (not b!4362905) (not d!1291022) (not d!1290706) (not bm!303301) (not b!4363023) (not bs!636290) (not b!4362981) (not b!4363029) (not d!1291134) (not b!4362978) (not b!4362648) (not d!1290668) (not d!1291234) (not b!4362662) (not b_lambda!132095) (not b!4362716) (not d!1291082) (not b!4362902) (not b!4362807) (not b!4362181) (not b!4363018) (not d!1290730) (not b_lambda!132107) (not b!4362887) (not d!1291096) (not b!4362895) (not b!4362924) (not b!4362615) (not d!1290872) (not b!4362444) (not b!4362396) (not b!4362394) (not b!4362611) (not d!1291126) (not d!1291110) (not b!4363000) (not b!4362857) (not b!4362733) (not d!1291016) (not b!4362143) (not b!4363028) (not d!1291192) (not b_lambda!132089) (not b!4362604) (not d!1291178) (not d!1291154) (not b!4362889) (not d!1291188) (not b!4362839) (not b!4363030) (not b!4362459) (not b!4363025) (not b!4362932) (not b!4362800) (not b!4363008) (not b!4362616) (not bs!636271) (not b_lambda!131897) (not b!4362796) (not b!4362535) (not b!4362650) (not d!1290886) (not bs!636272) (not b_lambda!132071) (not d!1290986) (not b!4362897) (not b!4362639) (not bs!636278) (not b!4362180) (not b_lambda!132067) (not b!4362638) (not d!1291004) (not bm!303303) (not b!4363016) (not b!4362997) (not bs!636276) (not b!4362961) (not b!4362141) (not b!4362618) (not d!1290716) (not bm!303317) (not bm!303286) (not d!1290910) (not bm!303287) (not bs!636280) (not d!1291164) (not b!4362971) (not d!1290728) (not bm!303263) (not b!4362546) (not b!4363027) (not b_lambda!132073) (not b!4362729) (not d!1290680) (not d!1291170) (not d!1290718) (not b!4362709) (not b!4362722) (not bm!303313) (not bs!636288) (not d!1291118) (not b!4362402) (not b!4362849) (not b_lambda!132121) (not d!1290894) (not b!4362904) (not b!4362619) (not b!4362920) (not bm!303316) (not b!4362712) (not b!4362142) (not b!4362958) (not d!1291196) (not d!1291130) (not bm!303288) (not b!4362272) (not d!1290982) (not b_lambda!132109) (not d!1290944) (not d!1290714) (not d!1290902) (not bm!303306) (not d!1290956) (not b!4362719) (not b!4362401) (not b!4362551) (not b!4362218) (not b!4362215) (not d!1290802) (not b!4362780) (not b!4362804) (not b!4362543) (not b!4362880) (not b!4362629) (not b_lambda!131893) (not b!4362545) (not b!4362732) (not bs!636284) (not b!4362746) (not bm!303233) (not b!4362226) (not bm!303295) (not b!4362435) (not b!4362230) (not d!1290712) (not b_lambda!131891) (not b!4362805) (not b!4362284) (not b!4363026) (not b!4362911) (not b!4362649) (not b_lambda!131947) (not d!1291086) (not b!4362841) (not b!4362741) (not b!4362906) (not b!4362955) (not b!4362645) (not b!4362878) (not b!4362949) (not b!4362963) (not b!4362145) (not b!4362595) (not b!4362956) (not b!4362866) (not b!4362903) (not b_lambda!132119) (not b!4362952) (not d!1290670) (not d!1291116) (not b!4362227) (not d!1291112) (not b_lambda!132075) (not b!4362623) (not b!4362845) (not bs!636285) (not d!1291208) (not d!1291148) (not b!4362220) (not b!4362635) (not b!4362953) (not b_lambda!132117) (not bm!303246) (not b!4362677) (not d!1290974) (not b!4362735) (not b!4362671) (not b!4362205) (not b!4362269) (not b!4362672) (not b!4362278) (not bm!303260) (not d!1291094) (not b!4362601) (not bs!636291) (not b_lambda!132091) (not b!4362948) (not b!4362992) (not b!4362731) (not b!4362967) (not d!1290688) (not b_lambda!132115))
(check-sat)
