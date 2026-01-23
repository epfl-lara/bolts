; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472544 () Bool)

(assert start!472544)

(declare-fun b!4680064 () Bool)

(declare-fun res!1972118 () Bool)

(declare-fun e!2919960 () Bool)

(assert (=> b!4680064 (=> (not res!1972118) (not e!2919960))))

(declare-datatypes ((K!13630 0))(
  ( (K!13631 (val!19175 Int)) )
))
(declare-datatypes ((V!13876 0))(
  ( (V!13877 (val!19176 Int)) )
))
(declare-datatypes ((tuple2!53562 0))(
  ( (tuple2!53563 (_1!30075 K!13630) (_2!30075 V!13876)) )
))
(declare-datatypes ((List!52375 0))(
  ( (Nil!52251) (Cons!52251 (h!58462 tuple2!53562) (t!359529 List!52375)) )
))
(declare-fun oldBucket!34 () List!52375)

(declare-fun noDuplicateKeys!1792 (List!52375) Bool)

(assert (=> b!4680064 (= res!1972118 (noDuplicateKeys!1792 oldBucket!34))))

(declare-fun b!4680065 () Bool)

(declare-fun tp_is_empty!30461 () Bool)

(declare-fun e!2919954 () Bool)

(declare-fun tp!1345017 () Bool)

(declare-fun tp_is_empty!30463 () Bool)

(assert (=> b!4680065 (= e!2919954 (and tp_is_empty!30461 tp_is_empty!30463 tp!1345017))))

(declare-fun e!2919952 () Bool)

(declare-fun tp!1345019 () Bool)

(declare-fun b!4680066 () Bool)

(assert (=> b!4680066 (= e!2919952 (and tp_is_empty!30461 tp_is_empty!30463 tp!1345019))))

(declare-fun b!4680067 () Bool)

(declare-fun res!1972134 () Bool)

(declare-fun e!2919958 () Bool)

(assert (=> b!4680067 (=> res!1972134 e!2919958)))

(declare-datatypes ((ListMap!4837 0))(
  ( (ListMap!4838 (toList!5473 List!52375)) )
))
(declare-fun lt!1839788 () ListMap!4837)

(declare-fun lt!1839787 () ListMap!4837)

(assert (=> b!4680067 (= res!1972134 (not (= lt!1839788 lt!1839787)))))

(declare-fun b!4680068 () Bool)

(declare-fun e!2919964 () Bool)

(declare-fun e!2919957 () Bool)

(assert (=> b!4680068 (= e!2919964 e!2919957)))

(declare-fun res!1972120 () Bool)

(assert (=> b!4680068 (=> res!1972120 e!2919957)))

(declare-fun lt!1839778 () List!52375)

(declare-fun newBucket!218 () List!52375)

(assert (=> b!4680068 (= res!1972120 (not (= lt!1839778 newBucket!218)))))

(declare-fun tail!8442 (List!52375) List!52375)

(assert (=> b!4680068 (= lt!1839778 (tail!8442 oldBucket!34))))

(declare-fun b!4680069 () Bool)

(declare-fun e!2919955 () Bool)

(declare-fun e!2919966 () Bool)

(assert (=> b!4680069 (= e!2919955 e!2919966)))

(declare-fun res!1972126 () Bool)

(assert (=> b!4680069 (=> res!1972126 e!2919966)))

(declare-fun lt!1839776 () ListMap!4837)

(declare-fun lt!1839781 () ListMap!4837)

(declare-fun eq!981 (ListMap!4837 ListMap!4837) Bool)

(assert (=> b!4680069 (= res!1972126 (not (eq!981 lt!1839776 lt!1839781)))))

(declare-datatypes ((tuple2!53564 0))(
  ( (tuple2!53565 (_1!30076 (_ BitVec 64)) (_2!30076 List!52375)) )
))
(declare-fun lt!1839783 () tuple2!53564)

(declare-datatypes ((List!52376 0))(
  ( (Nil!52252) (Cons!52252 (h!58463 tuple2!53564) (t!359530 List!52376)) )
))
(declare-datatypes ((ListLongMap!4003 0))(
  ( (ListLongMap!4004 (toList!5474 List!52376)) )
))
(declare-fun lm!2023 () ListLongMap!4003)

(declare-fun extractMap!1818 (List!52376) ListMap!4837)

(assert (=> b!4680069 (= lt!1839781 (extractMap!1818 (Cons!52252 lt!1839783 (t!359530 (toList!5474 lm!2023)))))))

(declare-fun b!4680070 () Bool)

(declare-fun e!2919963 () Bool)

(assert (=> b!4680070 (= e!2919966 e!2919963)))

(declare-fun res!1972131 () Bool)

(assert (=> b!4680070 (=> res!1972131 e!2919963)))

(declare-fun lt!1839786 () ListMap!4837)

(assert (=> b!4680070 (= res!1972131 (not (eq!981 lt!1839786 lt!1839787)))))

(declare-fun lt!1839784 () ListMap!4837)

(assert (=> b!4680070 (eq!981 lt!1839784 lt!1839786)))

(declare-fun key!4653 () K!13630)

(declare-fun -!656 (ListMap!4837 K!13630) ListMap!4837)

(assert (=> b!4680070 (= lt!1839786 (-!656 lt!1839781 key!4653))))

(declare-datatypes ((Unit!122493 0))(
  ( (Unit!122494) )
))
(declare-fun lt!1839789 () Unit!122493)

(declare-fun lemmaRemovePreservesEq!76 (ListMap!4837 ListMap!4837 K!13630) Unit!122493)

(assert (=> b!4680070 (= lt!1839789 (lemmaRemovePreservesEq!76 lt!1839776 lt!1839781 key!4653))))

(declare-fun b!4680071 () Bool)

(declare-fun e!2919959 () Bool)

(assert (=> b!4680071 (= e!2919959 e!2919958)))

(declare-fun res!1972119 () Bool)

(assert (=> b!4680071 (=> res!1972119 e!2919958)))

(declare-fun lt!1839775 () ListMap!4837)

(declare-fun addToMapMapFromBucket!1224 (List!52375 ListMap!4837) ListMap!4837)

(assert (=> b!4680071 (= res!1972119 (not (eq!981 lt!1839776 (addToMapMapFromBucket!1224 oldBucket!34 lt!1839775))))))

(declare-fun +!2094 (ListMap!4837 tuple2!53562) ListMap!4837)

(assert (=> b!4680071 (= lt!1839776 (+!2094 lt!1839788 (h!58462 oldBucket!34)))))

(declare-fun lt!1839774 () tuple2!53562)

(assert (=> b!4680071 (eq!981 (addToMapMapFromBucket!1224 (Cons!52251 lt!1839774 lt!1839778) lt!1839775) (+!2094 lt!1839788 lt!1839774))))

(declare-fun lt!1839779 () Unit!122493)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!230 (tuple2!53562 List!52375 ListMap!4837) Unit!122493)

(assert (=> b!4680071 (= lt!1839779 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!230 lt!1839774 lt!1839778 lt!1839775))))

(declare-fun head!9875 (List!52375) tuple2!53562)

(assert (=> b!4680071 (= lt!1839774 (head!9875 oldBucket!34))))

(declare-fun b!4680072 () Bool)

(declare-fun e!2919965 () Bool)

(declare-fun tp!1345018 () Bool)

(assert (=> b!4680072 (= e!2919965 tp!1345018)))

(declare-fun b!4680073 () Bool)

(declare-fun e!2919953 () Bool)

(assert (=> b!4680073 (= e!2919958 e!2919953)))

(declare-fun res!1972124 () Bool)

(assert (=> b!4680073 (=> res!1972124 e!2919953)))

(declare-fun contains!15384 (ListMap!4837 K!13630) Bool)

(assert (=> b!4680073 (= res!1972124 (contains!15384 lt!1839788 key!4653))))

(assert (=> b!4680073 (not (contains!15384 lt!1839787 key!4653))))

(declare-datatypes ((Hashable!6161 0))(
  ( (HashableExt!6160 (__x!31864 Int)) )
))
(declare-fun hashF!1323 () Hashable!6161)

(declare-fun lt!1839782 () List!52376)

(declare-fun lt!1839790 () Unit!122493)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!392 (ListLongMap!4003 K!13630 Hashable!6161) Unit!122493)

(assert (=> b!4680073 (= lt!1839790 (lemmaNotInItsHashBucketThenNotInMap!392 (ListLongMap!4004 lt!1839782) key!4653 hashF!1323))))

(declare-fun b!4680074 () Bool)

(declare-fun e!2919956 () Bool)

(assert (=> b!4680074 (= e!2919956 (not e!2919964))))

(declare-fun res!1972121 () Bool)

(assert (=> b!4680074 (=> res!1972121 e!2919964)))

(get-info :version)

(assert (=> b!4680074 (= res!1972121 (or (not ((_ is Cons!52251) oldBucket!34)) (not (= (_1!30075 (h!58462 oldBucket!34)) key!4653))))))

(declare-fun lt!1839785 () ListMap!4837)

(assert (=> b!4680074 (= lt!1839785 (addToMapMapFromBucket!1224 (_2!30076 (h!58463 (toList!5474 lm!2023))) lt!1839775))))

(assert (=> b!4680074 (= lt!1839775 (extractMap!1818 (t!359530 (toList!5474 lm!2023))))))

(declare-fun tail!8443 (ListLongMap!4003) ListLongMap!4003)

(assert (=> b!4680074 (= (t!359530 (toList!5474 lm!2023)) (toList!5474 (tail!8443 lm!2023)))))

(declare-fun b!4680075 () Bool)

(declare-fun res!1972115 () Bool)

(declare-fun e!2919962 () Bool)

(assert (=> b!4680075 (=> (not res!1972115) (not e!2919962))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun hash!3970 (Hashable!6161 K!13630) (_ BitVec 64))

(assert (=> b!4680075 (= res!1972115 (= (hash!3970 hashF!1323 key!4653) hash!405))))

(declare-fun b!4680063 () Bool)

(declare-fun res!1972128 () Bool)

(assert (=> b!4680063 (=> (not res!1972128) (not e!2919960))))

(declare-fun removePairForKey!1387 (List!52375 K!13630) List!52375)

(assert (=> b!4680063 (= res!1972128 (= (removePairForKey!1387 oldBucket!34 key!4653) newBucket!218))))

(declare-fun res!1972133 () Bool)

(assert (=> start!472544 (=> (not res!1972133) (not e!2919960))))

(declare-fun lambda!204583 () Int)

(declare-fun forall!11225 (List!52376 Int) Bool)

(assert (=> start!472544 (= res!1972133 (forall!11225 (toList!5474 lm!2023) lambda!204583))))

(assert (=> start!472544 e!2919960))

(declare-fun inv!67504 (ListLongMap!4003) Bool)

(assert (=> start!472544 (and (inv!67504 lm!2023) e!2919965)))

(assert (=> start!472544 tp_is_empty!30461))

(assert (=> start!472544 e!2919952))

(assert (=> start!472544 true))

(assert (=> start!472544 e!2919954))

(declare-fun b!4680076 () Bool)

(declare-fun res!1972122 () Bool)

(assert (=> b!4680076 (=> (not res!1972122) (not e!2919956))))

(assert (=> b!4680076 (= res!1972122 ((_ is Cons!52252) (toList!5474 lm!2023)))))

(declare-fun b!4680077 () Bool)

(declare-fun res!1972117 () Bool)

(assert (=> b!4680077 (=> (not res!1972117) (not e!2919962))))

(declare-fun allKeysSameHash!1618 (List!52375 (_ BitVec 64) Hashable!6161) Bool)

(assert (=> b!4680077 (= res!1972117 (allKeysSameHash!1618 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4680078 () Bool)

(assert (=> b!4680078 (= e!2919953 e!2919955)))

(declare-fun res!1972129 () Bool)

(assert (=> b!4680078 (=> res!1972129 e!2919955)))

(assert (=> b!4680078 (= res!1972129 (not (= lt!1839784 lt!1839788)))))

(assert (=> b!4680078 (= lt!1839784 (-!656 lt!1839776 key!4653))))

(assert (=> b!4680078 (= (-!656 (+!2094 lt!1839788 (tuple2!53563 key!4653 (_2!30075 (h!58462 oldBucket!34)))) key!4653) lt!1839788)))

(declare-fun lt!1839777 () Unit!122493)

(declare-fun addThenRemoveForNewKeyIsSame!47 (ListMap!4837 K!13630 V!13876) Unit!122493)

(assert (=> b!4680078 (= lt!1839777 (addThenRemoveForNewKeyIsSame!47 lt!1839788 key!4653 (_2!30075 (h!58462 oldBucket!34))))))

(declare-fun b!4680079 () Bool)

(declare-fun lt!1839780 () List!52376)

(assert (=> b!4680079 (= e!2919963 (forall!11225 lt!1839780 lambda!204583))))

(declare-fun b!4680080 () Bool)

(assert (=> b!4680080 (= e!2919960 e!2919962)))

(declare-fun res!1972114 () Bool)

(assert (=> b!4680080 (=> (not res!1972114) (not e!2919962))))

(assert (=> b!4680080 (= res!1972114 (contains!15384 lt!1839785 key!4653))))

(assert (=> b!4680080 (= lt!1839785 (extractMap!1818 (toList!5474 lm!2023)))))

(declare-fun b!4680081 () Bool)

(declare-fun res!1972125 () Bool)

(assert (=> b!4680081 (=> (not res!1972125) (not e!2919960))))

(assert (=> b!4680081 (= res!1972125 (noDuplicateKeys!1792 newBucket!218))))

(declare-fun b!4680082 () Bool)

(declare-fun res!1972135 () Bool)

(assert (=> b!4680082 (=> (not res!1972135) (not e!2919960))))

(assert (=> b!4680082 (= res!1972135 (allKeysSameHash!1618 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4680083 () Bool)

(declare-fun e!2919961 () Bool)

(assert (=> b!4680083 (= e!2919961 e!2919959)))

(declare-fun res!1972123 () Bool)

(assert (=> b!4680083 (=> res!1972123 e!2919959)))

(assert (=> b!4680083 (= res!1972123 (not (= lt!1839788 (addToMapMapFromBucket!1224 newBucket!218 lt!1839775))))))

(assert (=> b!4680083 (= lt!1839788 (addToMapMapFromBucket!1224 lt!1839778 lt!1839775))))

(declare-fun b!4680084 () Bool)

(declare-fun res!1972130 () Bool)

(assert (=> b!4680084 (=> (not res!1972130) (not e!2919962))))

(declare-fun allKeysSameHashInMap!1706 (ListLongMap!4003 Hashable!6161) Bool)

(assert (=> b!4680084 (= res!1972130 (allKeysSameHashInMap!1706 lm!2023 hashF!1323))))

(declare-fun b!4680085 () Bool)

(declare-fun res!1972132 () Bool)

(assert (=> b!4680085 (=> res!1972132 e!2919958)))

(declare-fun containsKey!2937 (List!52375 K!13630) Bool)

(assert (=> b!4680085 (= res!1972132 (containsKey!2937 lt!1839778 key!4653))))

(declare-fun b!4680086 () Bool)

(assert (=> b!4680086 (= e!2919962 e!2919956)))

(declare-fun res!1972127 () Bool)

(assert (=> b!4680086 (=> (not res!1972127) (not e!2919956))))

(declare-fun head!9876 (List!52376) tuple2!53564)

(assert (=> b!4680086 (= res!1972127 (= (head!9876 (toList!5474 lm!2023)) lt!1839783))))

(assert (=> b!4680086 (= lt!1839783 (tuple2!53565 hash!405 oldBucket!34))))

(declare-fun b!4680087 () Bool)

(assert (=> b!4680087 (= e!2919957 e!2919961)))

(declare-fun res!1972116 () Bool)

(assert (=> b!4680087 (=> res!1972116 e!2919961)))

(assert (=> b!4680087 (= res!1972116 (not (= lt!1839787 (extractMap!1818 lt!1839780))))))

(assert (=> b!4680087 (= lt!1839787 (extractMap!1818 lt!1839782))))

(assert (=> b!4680087 (= lt!1839780 (Cons!52252 (tuple2!53565 hash!405 newBucket!218) (t!359530 (toList!5474 lm!2023))))))

(assert (=> b!4680087 (= lt!1839782 (Cons!52252 (tuple2!53565 hash!405 lt!1839778) (t!359530 (toList!5474 lm!2023))))))

(assert (= (and start!472544 res!1972133) b!4680064))

(assert (= (and b!4680064 res!1972118) b!4680081))

(assert (= (and b!4680081 res!1972125) b!4680063))

(assert (= (and b!4680063 res!1972128) b!4680082))

(assert (= (and b!4680082 res!1972135) b!4680080))

(assert (= (and b!4680080 res!1972114) b!4680075))

(assert (= (and b!4680075 res!1972115) b!4680077))

(assert (= (and b!4680077 res!1972117) b!4680084))

(assert (= (and b!4680084 res!1972130) b!4680086))

(assert (= (and b!4680086 res!1972127) b!4680076))

(assert (= (and b!4680076 res!1972122) b!4680074))

(assert (= (and b!4680074 (not res!1972121)) b!4680068))

(assert (= (and b!4680068 (not res!1972120)) b!4680087))

(assert (= (and b!4680087 (not res!1972116)) b!4680083))

(assert (= (and b!4680083 (not res!1972123)) b!4680071))

(assert (= (and b!4680071 (not res!1972119)) b!4680085))

(assert (= (and b!4680085 (not res!1972132)) b!4680067))

(assert (= (and b!4680067 (not res!1972134)) b!4680073))

(assert (= (and b!4680073 (not res!1972124)) b!4680078))

(assert (= (and b!4680078 (not res!1972129)) b!4680069))

(assert (= (and b!4680069 (not res!1972126)) b!4680070))

(assert (= (and b!4680070 (not res!1972131)) b!4680079))

(assert (= start!472544 b!4680072))

(assert (= (and start!472544 ((_ is Cons!52251) oldBucket!34)) b!4680066))

(assert (= (and start!472544 ((_ is Cons!52251) newBucket!218)) b!4680065))

(declare-fun m!5576459 () Bool)

(assert (=> b!4680084 m!5576459))

(declare-fun m!5576461 () Bool)

(assert (=> b!4680063 m!5576461))

(declare-fun m!5576463 () Bool)

(assert (=> b!4680081 m!5576463))

(declare-fun m!5576465 () Bool)

(assert (=> b!4680068 m!5576465))

(declare-fun m!5576467 () Bool)

(assert (=> b!4680085 m!5576467))

(declare-fun m!5576469 () Bool)

(assert (=> b!4680073 m!5576469))

(declare-fun m!5576471 () Bool)

(assert (=> b!4680073 m!5576471))

(declare-fun m!5576473 () Bool)

(assert (=> b!4680073 m!5576473))

(declare-fun m!5576475 () Bool)

(assert (=> b!4680086 m!5576475))

(declare-fun m!5576477 () Bool)

(assert (=> b!4680064 m!5576477))

(declare-fun m!5576479 () Bool)

(assert (=> start!472544 m!5576479))

(declare-fun m!5576481 () Bool)

(assert (=> start!472544 m!5576481))

(declare-fun m!5576483 () Bool)

(assert (=> b!4680079 m!5576483))

(declare-fun m!5576485 () Bool)

(assert (=> b!4680082 m!5576485))

(declare-fun m!5576487 () Bool)

(assert (=> b!4680075 m!5576487))

(declare-fun m!5576489 () Bool)

(assert (=> b!4680087 m!5576489))

(declare-fun m!5576491 () Bool)

(assert (=> b!4680087 m!5576491))

(declare-fun m!5576493 () Bool)

(assert (=> b!4680071 m!5576493))

(declare-fun m!5576495 () Bool)

(assert (=> b!4680071 m!5576495))

(declare-fun m!5576497 () Bool)

(assert (=> b!4680071 m!5576497))

(declare-fun m!5576499 () Bool)

(assert (=> b!4680071 m!5576499))

(declare-fun m!5576501 () Bool)

(assert (=> b!4680071 m!5576501))

(assert (=> b!4680071 m!5576497))

(declare-fun m!5576503 () Bool)

(assert (=> b!4680071 m!5576503))

(declare-fun m!5576505 () Bool)

(assert (=> b!4680071 m!5576505))

(assert (=> b!4680071 m!5576499))

(assert (=> b!4680071 m!5576495))

(declare-fun m!5576507 () Bool)

(assert (=> b!4680071 m!5576507))

(declare-fun m!5576509 () Bool)

(assert (=> b!4680069 m!5576509))

(declare-fun m!5576511 () Bool)

(assert (=> b!4680069 m!5576511))

(declare-fun m!5576513 () Bool)

(assert (=> b!4680074 m!5576513))

(declare-fun m!5576515 () Bool)

(assert (=> b!4680074 m!5576515))

(declare-fun m!5576517 () Bool)

(assert (=> b!4680074 m!5576517))

(declare-fun m!5576519 () Bool)

(assert (=> b!4680083 m!5576519))

(declare-fun m!5576521 () Bool)

(assert (=> b!4680083 m!5576521))

(declare-fun m!5576523 () Bool)

(assert (=> b!4680077 m!5576523))

(declare-fun m!5576525 () Bool)

(assert (=> b!4680078 m!5576525))

(declare-fun m!5576527 () Bool)

(assert (=> b!4680078 m!5576527))

(assert (=> b!4680078 m!5576527))

(declare-fun m!5576529 () Bool)

(assert (=> b!4680078 m!5576529))

(declare-fun m!5576531 () Bool)

(assert (=> b!4680078 m!5576531))

(declare-fun m!5576533 () Bool)

(assert (=> b!4680080 m!5576533))

(declare-fun m!5576535 () Bool)

(assert (=> b!4680080 m!5576535))

(declare-fun m!5576537 () Bool)

(assert (=> b!4680070 m!5576537))

(declare-fun m!5576539 () Bool)

(assert (=> b!4680070 m!5576539))

(declare-fun m!5576541 () Bool)

(assert (=> b!4680070 m!5576541))

(declare-fun m!5576543 () Bool)

(assert (=> b!4680070 m!5576543))

(check-sat (not b!4680079) (not b!4680074) tp_is_empty!30461 (not b!4680072) (not b!4680085) (not b!4680070) (not b!4680063) (not b!4680083) (not b!4680087) (not b!4680086) (not b!4680069) (not b!4680078) (not b!4680071) tp_is_empty!30463 (not b!4680081) (not b!4680065) (not b!4680075) (not b!4680077) (not start!472544) (not b!4680064) (not b!4680082) (not b!4680066) (not b!4680068) (not b!4680084) (not b!4680080) (not b!4680073))
(check-sat)
(get-model)

(declare-fun d!1487494 () Bool)

(assert (=> d!1487494 true))

(assert (=> d!1487494 true))

(declare-fun lambda!204586 () Int)

(declare-fun forall!11226 (List!52375 Int) Bool)

(assert (=> d!1487494 (= (allKeysSameHash!1618 newBucket!218 hash!405 hashF!1323) (forall!11226 newBucket!218 lambda!204586))))

(declare-fun bs!1082132 () Bool)

(assert (= bs!1082132 d!1487494))

(declare-fun m!5576545 () Bool)

(assert (=> bs!1082132 m!5576545))

(assert (=> b!4680077 d!1487494))

(declare-fun d!1487496 () Bool)

(declare-fun e!2919969 () Bool)

(assert (=> d!1487496 e!2919969))

(declare-fun res!1972138 () Bool)

(assert (=> d!1487496 (=> (not res!1972138) (not e!2919969))))

(declare-fun lt!1839793 () ListMap!4837)

(assert (=> d!1487496 (= res!1972138 (not (contains!15384 lt!1839793 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!328 (List!52375 K!13630) List!52375)

(assert (=> d!1487496 (= lt!1839793 (ListMap!4838 (removePresrvNoDuplicatedKeys!328 (toList!5473 lt!1839776) key!4653)))))

(assert (=> d!1487496 (= (-!656 lt!1839776 key!4653) lt!1839793)))

(declare-fun b!4680094 () Bool)

(declare-datatypes ((List!52377 0))(
  ( (Nil!52253) (Cons!52253 (h!58466 K!13630) (t!359533 List!52377)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9107 (List!52377) (InoxSet K!13630))

(declare-fun keys!18616 (ListMap!4837) List!52377)

(assert (=> b!4680094 (= e!2919969 (= ((_ map and) (content!9107 (keys!18616 lt!1839776)) ((_ map not) (store ((as const (Array K!13630 Bool)) false) key!4653 true))) (content!9107 (keys!18616 lt!1839793))))))

(assert (= (and d!1487496 res!1972138) b!4680094))

(declare-fun m!5576547 () Bool)

(assert (=> d!1487496 m!5576547))

(declare-fun m!5576549 () Bool)

(assert (=> d!1487496 m!5576549))

(declare-fun m!5576551 () Bool)

(assert (=> b!4680094 m!5576551))

(declare-fun m!5576553 () Bool)

(assert (=> b!4680094 m!5576553))

(declare-fun m!5576555 () Bool)

(assert (=> b!4680094 m!5576555))

(assert (=> b!4680094 m!5576551))

(assert (=> b!4680094 m!5576555))

(declare-fun m!5576557 () Bool)

(assert (=> b!4680094 m!5576557))

(declare-fun m!5576559 () Bool)

(assert (=> b!4680094 m!5576559))

(assert (=> b!4680078 d!1487496))

(declare-fun d!1487500 () Bool)

(declare-fun e!2919970 () Bool)

(assert (=> d!1487500 e!2919970))

(declare-fun res!1972139 () Bool)

(assert (=> d!1487500 (=> (not res!1972139) (not e!2919970))))

(declare-fun lt!1839794 () ListMap!4837)

(assert (=> d!1487500 (= res!1972139 (not (contains!15384 lt!1839794 key!4653)))))

(assert (=> d!1487500 (= lt!1839794 (ListMap!4838 (removePresrvNoDuplicatedKeys!328 (toList!5473 (+!2094 lt!1839788 (tuple2!53563 key!4653 (_2!30075 (h!58462 oldBucket!34))))) key!4653)))))

(assert (=> d!1487500 (= (-!656 (+!2094 lt!1839788 (tuple2!53563 key!4653 (_2!30075 (h!58462 oldBucket!34)))) key!4653) lt!1839794)))

(declare-fun b!4680095 () Bool)

(assert (=> b!4680095 (= e!2919970 (= ((_ map and) (content!9107 (keys!18616 (+!2094 lt!1839788 (tuple2!53563 key!4653 (_2!30075 (h!58462 oldBucket!34)))))) ((_ map not) (store ((as const (Array K!13630 Bool)) false) key!4653 true))) (content!9107 (keys!18616 lt!1839794))))))

(assert (= (and d!1487500 res!1972139) b!4680095))

(declare-fun m!5576561 () Bool)

(assert (=> d!1487500 m!5576561))

(declare-fun m!5576563 () Bool)

(assert (=> d!1487500 m!5576563))

(declare-fun m!5576565 () Bool)

(assert (=> b!4680095 m!5576565))

(declare-fun m!5576567 () Bool)

(assert (=> b!4680095 m!5576567))

(declare-fun m!5576569 () Bool)

(assert (=> b!4680095 m!5576569))

(assert (=> b!4680095 m!5576527))

(assert (=> b!4680095 m!5576565))

(assert (=> b!4680095 m!5576569))

(declare-fun m!5576571 () Bool)

(assert (=> b!4680095 m!5576571))

(assert (=> b!4680095 m!5576559))

(assert (=> b!4680078 d!1487500))

(declare-fun d!1487502 () Bool)

(declare-fun e!2919973 () Bool)

(assert (=> d!1487502 e!2919973))

(declare-fun res!1972144 () Bool)

(assert (=> d!1487502 (=> (not res!1972144) (not e!2919973))))

(declare-fun lt!1839812 () ListMap!4837)

(assert (=> d!1487502 (= res!1972144 (contains!15384 lt!1839812 (_1!30075 (tuple2!53563 key!4653 (_2!30075 (h!58462 oldBucket!34))))))))

(declare-fun lt!1839814 () List!52375)

(assert (=> d!1487502 (= lt!1839812 (ListMap!4838 lt!1839814))))

(declare-fun lt!1839813 () Unit!122493)

(declare-fun lt!1839811 () Unit!122493)

(assert (=> d!1487502 (= lt!1839813 lt!1839811)))

(declare-datatypes ((Option!11970 0))(
  ( (None!11969) (Some!11969 (v!46332 V!13876)) )
))
(declare-fun getValueByKey!1718 (List!52375 K!13630) Option!11970)

(assert (=> d!1487502 (= (getValueByKey!1718 lt!1839814 (_1!30075 (tuple2!53563 key!4653 (_2!30075 (h!58462 oldBucket!34))))) (Some!11969 (_2!30075 (tuple2!53563 key!4653 (_2!30075 (h!58462 oldBucket!34))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!977 (List!52375 K!13630 V!13876) Unit!122493)

(assert (=> d!1487502 (= lt!1839811 (lemmaContainsTupThenGetReturnValue!977 lt!1839814 (_1!30075 (tuple2!53563 key!4653 (_2!30075 (h!58462 oldBucket!34)))) (_2!30075 (tuple2!53563 key!4653 (_2!30075 (h!58462 oldBucket!34))))))))

(declare-fun insertNoDuplicatedKeys!485 (List!52375 K!13630 V!13876) List!52375)

(assert (=> d!1487502 (= lt!1839814 (insertNoDuplicatedKeys!485 (toList!5473 lt!1839788) (_1!30075 (tuple2!53563 key!4653 (_2!30075 (h!58462 oldBucket!34)))) (_2!30075 (tuple2!53563 key!4653 (_2!30075 (h!58462 oldBucket!34))))))))

(assert (=> d!1487502 (= (+!2094 lt!1839788 (tuple2!53563 key!4653 (_2!30075 (h!58462 oldBucket!34)))) lt!1839812)))

(declare-fun b!4680104 () Bool)

(declare-fun res!1972145 () Bool)

(assert (=> b!4680104 (=> (not res!1972145) (not e!2919973))))

(assert (=> b!4680104 (= res!1972145 (= (getValueByKey!1718 (toList!5473 lt!1839812) (_1!30075 (tuple2!53563 key!4653 (_2!30075 (h!58462 oldBucket!34))))) (Some!11969 (_2!30075 (tuple2!53563 key!4653 (_2!30075 (h!58462 oldBucket!34)))))))))

(declare-fun b!4680105 () Bool)

(declare-fun contains!15385 (List!52375 tuple2!53562) Bool)

(assert (=> b!4680105 (= e!2919973 (contains!15385 (toList!5473 lt!1839812) (tuple2!53563 key!4653 (_2!30075 (h!58462 oldBucket!34)))))))

(assert (= (and d!1487502 res!1972144) b!4680104))

(assert (= (and b!4680104 res!1972145) b!4680105))

(declare-fun m!5576575 () Bool)

(assert (=> d!1487502 m!5576575))

(declare-fun m!5576577 () Bool)

(assert (=> d!1487502 m!5576577))

(declare-fun m!5576579 () Bool)

(assert (=> d!1487502 m!5576579))

(declare-fun m!5576581 () Bool)

(assert (=> d!1487502 m!5576581))

(declare-fun m!5576583 () Bool)

(assert (=> b!4680104 m!5576583))

(declare-fun m!5576585 () Bool)

(assert (=> b!4680105 m!5576585))

(assert (=> b!4680078 d!1487502))

(declare-fun d!1487508 () Bool)

(assert (=> d!1487508 (= (-!656 (+!2094 lt!1839788 (tuple2!53563 key!4653 (_2!30075 (h!58462 oldBucket!34)))) key!4653) lt!1839788)))

(declare-fun lt!1839821 () Unit!122493)

(declare-fun choose!32384 (ListMap!4837 K!13630 V!13876) Unit!122493)

(assert (=> d!1487508 (= lt!1839821 (choose!32384 lt!1839788 key!4653 (_2!30075 (h!58462 oldBucket!34))))))

(assert (=> d!1487508 (not (contains!15384 lt!1839788 key!4653))))

(assert (=> d!1487508 (= (addThenRemoveForNewKeyIsSame!47 lt!1839788 key!4653 (_2!30075 (h!58462 oldBucket!34))) lt!1839821)))

(declare-fun bs!1082134 () Bool)

(assert (= bs!1082134 d!1487508))

(assert (=> bs!1082134 m!5576527))

(assert (=> bs!1082134 m!5576527))

(assert (=> bs!1082134 m!5576529))

(declare-fun m!5576599 () Bool)

(assert (=> bs!1082134 m!5576599))

(assert (=> bs!1082134 m!5576469))

(assert (=> b!4680078 d!1487508))

(declare-fun d!1487514 () Bool)

(declare-fun res!1972156 () Bool)

(declare-fun e!2919981 () Bool)

(assert (=> d!1487514 (=> res!1972156 e!2919981)))

(assert (=> d!1487514 (= res!1972156 ((_ is Nil!52252) lt!1839780))))

(assert (=> d!1487514 (= (forall!11225 lt!1839780 lambda!204583) e!2919981)))

(declare-fun b!4680116 () Bool)

(declare-fun e!2919982 () Bool)

(assert (=> b!4680116 (= e!2919981 e!2919982)))

(declare-fun res!1972157 () Bool)

(assert (=> b!4680116 (=> (not res!1972157) (not e!2919982))))

(declare-fun dynLambda!21678 (Int tuple2!53564) Bool)

(assert (=> b!4680116 (= res!1972157 (dynLambda!21678 lambda!204583 (h!58463 lt!1839780)))))

(declare-fun b!4680117 () Bool)

(assert (=> b!4680117 (= e!2919982 (forall!11225 (t!359530 lt!1839780) lambda!204583))))

(assert (= (and d!1487514 (not res!1972156)) b!4680116))

(assert (= (and b!4680116 res!1972157) b!4680117))

(declare-fun b_lambda!176661 () Bool)

(assert (=> (not b_lambda!176661) (not b!4680116)))

(declare-fun m!5576601 () Bool)

(assert (=> b!4680116 m!5576601))

(declare-fun m!5576603 () Bool)

(assert (=> b!4680117 m!5576603))

(assert (=> b!4680079 d!1487514))

(declare-fun d!1487516 () Bool)

(assert (=> d!1487516 (= (tail!8442 oldBucket!34) (t!359529 oldBucket!34))))

(assert (=> b!4680068 d!1487516))

(declare-fun d!1487518 () Bool)

(declare-fun res!1972162 () Bool)

(declare-fun e!2919987 () Bool)

(assert (=> d!1487518 (=> res!1972162 e!2919987)))

(assert (=> d!1487518 (= res!1972162 (and ((_ is Cons!52251) lt!1839778) (= (_1!30075 (h!58462 lt!1839778)) key!4653)))))

(assert (=> d!1487518 (= (containsKey!2937 lt!1839778 key!4653) e!2919987)))

(declare-fun b!4680122 () Bool)

(declare-fun e!2919988 () Bool)

(assert (=> b!4680122 (= e!2919987 e!2919988)))

(declare-fun res!1972163 () Bool)

(assert (=> b!4680122 (=> (not res!1972163) (not e!2919988))))

(assert (=> b!4680122 (= res!1972163 ((_ is Cons!52251) lt!1839778))))

(declare-fun b!4680123 () Bool)

(assert (=> b!4680123 (= e!2919988 (containsKey!2937 (t!359529 lt!1839778) key!4653))))

(assert (= (and d!1487518 (not res!1972162)) b!4680122))

(assert (= (and b!4680122 res!1972163) b!4680123))

(declare-fun m!5576607 () Bool)

(assert (=> b!4680123 m!5576607))

(assert (=> b!4680085 d!1487518))

(declare-fun bs!1082136 () Bool)

(declare-fun b!4680145 () Bool)

(assert (= bs!1082136 (and b!4680145 d!1487494)))

(declare-fun lambda!204646 () Int)

(assert (=> bs!1082136 (not (= lambda!204646 lambda!204586))))

(assert (=> b!4680145 true))

(declare-fun bs!1082137 () Bool)

(declare-fun b!4680146 () Bool)

(assert (= bs!1082137 (and b!4680146 d!1487494)))

(declare-fun lambda!204647 () Int)

(assert (=> bs!1082137 (not (= lambda!204647 lambda!204586))))

(declare-fun bs!1082138 () Bool)

(assert (= bs!1082138 (and b!4680146 b!4680145)))

(assert (=> bs!1082138 (= lambda!204647 lambda!204646)))

(assert (=> b!4680146 true))

(declare-fun lambda!204649 () Int)

(assert (=> bs!1082137 (not (= lambda!204649 lambda!204586))))

(declare-fun lt!1839916 () ListMap!4837)

(assert (=> bs!1082138 (= (= lt!1839916 lt!1839775) (= lambda!204649 lambda!204646))))

(assert (=> b!4680146 (= (= lt!1839916 lt!1839775) (= lambda!204649 lambda!204647))))

(assert (=> b!4680146 true))

(declare-fun bs!1082142 () Bool)

(declare-fun d!1487520 () Bool)

(assert (= bs!1082142 (and d!1487520 d!1487494)))

(declare-fun lambda!204652 () Int)

(assert (=> bs!1082142 (not (= lambda!204652 lambda!204586))))

(declare-fun bs!1082143 () Bool)

(assert (= bs!1082143 (and d!1487520 b!4680145)))

(declare-fun lt!1839925 () ListMap!4837)

(assert (=> bs!1082143 (= (= lt!1839925 lt!1839775) (= lambda!204652 lambda!204646))))

(declare-fun bs!1082144 () Bool)

(assert (= bs!1082144 (and d!1487520 b!4680146)))

(assert (=> bs!1082144 (= (= lt!1839925 lt!1839775) (= lambda!204652 lambda!204647))))

(assert (=> bs!1082144 (= (= lt!1839925 lt!1839916) (= lambda!204652 lambda!204649))))

(assert (=> d!1487520 true))

(declare-fun b!4680144 () Bool)

(declare-fun e!2920003 () Bool)

(assert (=> b!4680144 (= e!2920003 (forall!11226 (toList!5473 lt!1839775) lambda!204649))))

(declare-fun c!800574 () Bool)

(declare-fun call!327090 () Bool)

(declare-fun bm!327083 () Bool)

(assert (=> bm!327083 (= call!327090 (forall!11226 (ite c!800574 (toList!5473 lt!1839775) (_2!30076 (h!58463 (toList!5474 lm!2023)))) (ite c!800574 lambda!204646 lambda!204649)))))

(declare-fun e!2920002 () ListMap!4837)

(assert (=> b!4680145 (= e!2920002 lt!1839775)))

(declare-fun lt!1839920 () Unit!122493)

(declare-fun call!327088 () Unit!122493)

(assert (=> b!4680145 (= lt!1839920 call!327088)))

(declare-fun call!327089 () Bool)

(assert (=> b!4680145 call!327089))

(declare-fun lt!1839917 () Unit!122493)

(assert (=> b!4680145 (= lt!1839917 lt!1839920)))

(assert (=> b!4680145 call!327090))

(declare-fun lt!1839926 () Unit!122493)

(declare-fun Unit!122497 () Unit!122493)

(assert (=> b!4680145 (= lt!1839926 Unit!122497)))

(assert (=> b!4680146 (= e!2920002 lt!1839916)))

(declare-fun lt!1839915 () ListMap!4837)

(assert (=> b!4680146 (= lt!1839915 (+!2094 lt!1839775 (h!58462 (_2!30076 (h!58463 (toList!5474 lm!2023))))))))

(assert (=> b!4680146 (= lt!1839916 (addToMapMapFromBucket!1224 (t!359529 (_2!30076 (h!58463 (toList!5474 lm!2023)))) (+!2094 lt!1839775 (h!58462 (_2!30076 (h!58463 (toList!5474 lm!2023)))))))))

(declare-fun lt!1839928 () Unit!122493)

(assert (=> b!4680146 (= lt!1839928 call!327088)))

(assert (=> b!4680146 call!327089))

(declare-fun lt!1839924 () Unit!122493)

(assert (=> b!4680146 (= lt!1839924 lt!1839928)))

(assert (=> b!4680146 (forall!11226 (toList!5473 lt!1839915) lambda!204649)))

(declare-fun lt!1839927 () Unit!122493)

(declare-fun Unit!122500 () Unit!122493)

(assert (=> b!4680146 (= lt!1839927 Unit!122500)))

(assert (=> b!4680146 (forall!11226 (t!359529 (_2!30076 (h!58463 (toList!5474 lm!2023)))) lambda!204649)))

(declare-fun lt!1839919 () Unit!122493)

(declare-fun Unit!122502 () Unit!122493)

(assert (=> b!4680146 (= lt!1839919 Unit!122502)))

(declare-fun lt!1839923 () Unit!122493)

(declare-fun Unit!122504 () Unit!122493)

(assert (=> b!4680146 (= lt!1839923 Unit!122504)))

(declare-fun lt!1839911 () Unit!122493)

(declare-fun forallContained!3348 (List!52375 Int tuple2!53562) Unit!122493)

(assert (=> b!4680146 (= lt!1839911 (forallContained!3348 (toList!5473 lt!1839915) lambda!204649 (h!58462 (_2!30076 (h!58463 (toList!5474 lm!2023))))))))

(assert (=> b!4680146 (contains!15384 lt!1839915 (_1!30075 (h!58462 (_2!30076 (h!58463 (toList!5474 lm!2023))))))))

(declare-fun lt!1839918 () Unit!122493)

(declare-fun Unit!122507 () Unit!122493)

(assert (=> b!4680146 (= lt!1839918 Unit!122507)))

(assert (=> b!4680146 (contains!15384 lt!1839916 (_1!30075 (h!58462 (_2!30076 (h!58463 (toList!5474 lm!2023))))))))

(declare-fun lt!1839921 () Unit!122493)

(declare-fun Unit!122508 () Unit!122493)

(assert (=> b!4680146 (= lt!1839921 Unit!122508)))

(assert (=> b!4680146 call!327090))

(declare-fun lt!1839913 () Unit!122493)

(declare-fun Unit!122509 () Unit!122493)

(assert (=> b!4680146 (= lt!1839913 Unit!122509)))

(assert (=> b!4680146 (forall!11226 (toList!5473 lt!1839915) lambda!204649)))

(declare-fun lt!1839910 () Unit!122493)

(declare-fun Unit!122511 () Unit!122493)

(assert (=> b!4680146 (= lt!1839910 Unit!122511)))

(declare-fun lt!1839922 () Unit!122493)

(declare-fun Unit!122512 () Unit!122493)

(assert (=> b!4680146 (= lt!1839922 Unit!122512)))

(declare-fun lt!1839914 () Unit!122493)

(declare-fun addForallContainsKeyThenBeforeAdding!663 (ListMap!4837 ListMap!4837 K!13630 V!13876) Unit!122493)

(assert (=> b!4680146 (= lt!1839914 (addForallContainsKeyThenBeforeAdding!663 lt!1839775 lt!1839916 (_1!30075 (h!58462 (_2!30076 (h!58463 (toList!5474 lm!2023))))) (_2!30075 (h!58462 (_2!30076 (h!58463 (toList!5474 lm!2023)))))))))

(assert (=> b!4680146 (forall!11226 (toList!5473 lt!1839775) lambda!204649)))

(declare-fun lt!1839929 () Unit!122493)

(assert (=> b!4680146 (= lt!1839929 lt!1839914)))

(assert (=> b!4680146 (forall!11226 (toList!5473 lt!1839775) lambda!204649)))

(declare-fun lt!1839909 () Unit!122493)

(declare-fun Unit!122514 () Unit!122493)

(assert (=> b!4680146 (= lt!1839909 Unit!122514)))

(declare-fun res!1972177 () Bool)

(assert (=> b!4680146 (= res!1972177 (forall!11226 (_2!30076 (h!58463 (toList!5474 lm!2023))) lambda!204649))))

(assert (=> b!4680146 (=> (not res!1972177) (not e!2920003))))

(assert (=> b!4680146 e!2920003))

(declare-fun lt!1839912 () Unit!122493)

(declare-fun Unit!122516 () Unit!122493)

(assert (=> b!4680146 (= lt!1839912 Unit!122516)))

(declare-fun b!4680147 () Bool)

(declare-fun res!1972176 () Bool)

(declare-fun e!2920001 () Bool)

(assert (=> b!4680147 (=> (not res!1972176) (not e!2920001))))

(assert (=> b!4680147 (= res!1972176 (forall!11226 (toList!5473 lt!1839775) lambda!204652))))

(assert (=> d!1487520 e!2920001))

(declare-fun res!1972178 () Bool)

(assert (=> d!1487520 (=> (not res!1972178) (not e!2920001))))

(assert (=> d!1487520 (= res!1972178 (forall!11226 (_2!30076 (h!58463 (toList!5474 lm!2023))) lambda!204652))))

(assert (=> d!1487520 (= lt!1839925 e!2920002)))

(assert (=> d!1487520 (= c!800574 ((_ is Nil!52251) (_2!30076 (h!58463 (toList!5474 lm!2023)))))))

(assert (=> d!1487520 (noDuplicateKeys!1792 (_2!30076 (h!58463 (toList!5474 lm!2023))))))

(assert (=> d!1487520 (= (addToMapMapFromBucket!1224 (_2!30076 (h!58463 (toList!5474 lm!2023))) lt!1839775) lt!1839925)))

(declare-fun b!4680148 () Bool)

(declare-fun invariantList!1376 (List!52375) Bool)

(assert (=> b!4680148 (= e!2920001 (invariantList!1376 (toList!5473 lt!1839925)))))

(declare-fun bm!327084 () Bool)

(assert (=> bm!327084 (= call!327089 (forall!11226 (toList!5473 lt!1839775) (ite c!800574 lambda!204646 lambda!204647)))))

(declare-fun bm!327085 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!664 (ListMap!4837) Unit!122493)

(assert (=> bm!327085 (= call!327088 (lemmaContainsAllItsOwnKeys!664 lt!1839775))))

(assert (= (and d!1487520 c!800574) b!4680145))

(assert (= (and d!1487520 (not c!800574)) b!4680146))

(assert (= (and b!4680146 res!1972177) b!4680144))

(assert (= (or b!4680145 b!4680146) bm!327085))

(assert (= (or b!4680145 b!4680146) bm!327084))

(assert (= (or b!4680145 b!4680146) bm!327083))

(assert (= (and d!1487520 res!1972178) b!4680147))

(assert (= (and b!4680147 res!1972176) b!4680148))

(declare-fun m!5576615 () Bool)

(assert (=> b!4680146 m!5576615))

(declare-fun m!5576617 () Bool)

(assert (=> b!4680146 m!5576617))

(declare-fun m!5576619 () Bool)

(assert (=> b!4680146 m!5576619))

(assert (=> b!4680146 m!5576619))

(declare-fun m!5576621 () Bool)

(assert (=> b!4680146 m!5576621))

(declare-fun m!5576623 () Bool)

(assert (=> b!4680146 m!5576623))

(declare-fun m!5576625 () Bool)

(assert (=> b!4680146 m!5576625))

(assert (=> b!4680146 m!5576623))

(declare-fun m!5576627 () Bool)

(assert (=> b!4680146 m!5576627))

(declare-fun m!5576629 () Bool)

(assert (=> b!4680146 m!5576629))

(declare-fun m!5576631 () Bool)

(assert (=> b!4680146 m!5576631))

(assert (=> b!4680146 m!5576615))

(declare-fun m!5576633 () Bool)

(assert (=> b!4680146 m!5576633))

(assert (=> b!4680144 m!5576619))

(declare-fun m!5576635 () Bool)

(assert (=> d!1487520 m!5576635))

(declare-fun m!5576637 () Bool)

(assert (=> d!1487520 m!5576637))

(declare-fun m!5576639 () Bool)

(assert (=> b!4680147 m!5576639))

(declare-fun m!5576641 () Bool)

(assert (=> bm!327085 m!5576641))

(declare-fun m!5576643 () Bool)

(assert (=> b!4680148 m!5576643))

(declare-fun m!5576645 () Bool)

(assert (=> bm!327084 m!5576645))

(declare-fun m!5576647 () Bool)

(assert (=> bm!327083 m!5576647))

(assert (=> b!4680074 d!1487520))

(declare-fun bs!1082165 () Bool)

(declare-fun d!1487524 () Bool)

(assert (= bs!1082165 (and d!1487524 start!472544)))

(declare-fun lambda!204660 () Int)

(assert (=> bs!1082165 (= lambda!204660 lambda!204583)))

(declare-fun lt!1839978 () ListMap!4837)

(assert (=> d!1487524 (invariantList!1376 (toList!5473 lt!1839978))))

(declare-fun e!2920019 () ListMap!4837)

(assert (=> d!1487524 (= lt!1839978 e!2920019)))

(declare-fun c!800579 () Bool)

(assert (=> d!1487524 (= c!800579 ((_ is Cons!52252) (t!359530 (toList!5474 lm!2023))))))

(assert (=> d!1487524 (forall!11225 (t!359530 (toList!5474 lm!2023)) lambda!204660)))

(assert (=> d!1487524 (= (extractMap!1818 (t!359530 (toList!5474 lm!2023))) lt!1839978)))

(declare-fun b!4680175 () Bool)

(assert (=> b!4680175 (= e!2920019 (addToMapMapFromBucket!1224 (_2!30076 (h!58463 (t!359530 (toList!5474 lm!2023)))) (extractMap!1818 (t!359530 (t!359530 (toList!5474 lm!2023))))))))

(declare-fun b!4680176 () Bool)

(assert (=> b!4680176 (= e!2920019 (ListMap!4838 Nil!52251))))

(assert (= (and d!1487524 c!800579) b!4680175))

(assert (= (and d!1487524 (not c!800579)) b!4680176))

(declare-fun m!5576735 () Bool)

(assert (=> d!1487524 m!5576735))

(declare-fun m!5576737 () Bool)

(assert (=> d!1487524 m!5576737))

(declare-fun m!5576739 () Bool)

(assert (=> b!4680175 m!5576739))

(assert (=> b!4680175 m!5576739))

(declare-fun m!5576741 () Bool)

(assert (=> b!4680175 m!5576741))

(assert (=> b!4680074 d!1487524))

(declare-fun d!1487538 () Bool)

(declare-fun tail!8444 (List!52376) List!52376)

(assert (=> d!1487538 (= (tail!8443 lm!2023) (ListLongMap!4004 (tail!8444 (toList!5474 lm!2023))))))

(declare-fun bs!1082166 () Bool)

(assert (= bs!1082166 d!1487538))

(declare-fun m!5576743 () Bool)

(assert (=> bs!1082166 m!5576743))

(assert (=> b!4680074 d!1487538))

(declare-fun d!1487540 () Bool)

(declare-fun hash!3971 (Hashable!6161 K!13630) (_ BitVec 64))

(assert (=> d!1487540 (= (hash!3970 hashF!1323 key!4653) (hash!3971 hashF!1323 key!4653))))

(declare-fun bs!1082167 () Bool)

(assert (= bs!1082167 d!1487540))

(declare-fun m!5576749 () Bool)

(assert (=> bs!1082167 m!5576749))

(assert (=> b!4680075 d!1487540))

(declare-fun d!1487544 () Bool)

(declare-fun res!1972205 () Bool)

(declare-fun e!2920032 () Bool)

(assert (=> d!1487544 (=> res!1972205 e!2920032)))

(assert (=> d!1487544 (= res!1972205 (not ((_ is Cons!52251) oldBucket!34)))))

(assert (=> d!1487544 (= (noDuplicateKeys!1792 oldBucket!34) e!2920032)))

(declare-fun b!4680189 () Bool)

(declare-fun e!2920033 () Bool)

(assert (=> b!4680189 (= e!2920032 e!2920033)))

(declare-fun res!1972206 () Bool)

(assert (=> b!4680189 (=> (not res!1972206) (not e!2920033))))

(assert (=> b!4680189 (= res!1972206 (not (containsKey!2937 (t!359529 oldBucket!34) (_1!30075 (h!58462 oldBucket!34)))))))

(declare-fun b!4680190 () Bool)

(assert (=> b!4680190 (= e!2920033 (noDuplicateKeys!1792 (t!359529 oldBucket!34)))))

(assert (= (and d!1487544 (not res!1972205)) b!4680189))

(assert (= (and b!4680189 res!1972206) b!4680190))

(declare-fun m!5576757 () Bool)

(assert (=> b!4680189 m!5576757))

(declare-fun m!5576759 () Bool)

(assert (=> b!4680190 m!5576759))

(assert (=> b!4680064 d!1487544))

(declare-fun d!1487550 () Bool)

(assert (=> d!1487550 (= (head!9876 (toList!5474 lm!2023)) (h!58463 (toList!5474 lm!2023)))))

(assert (=> b!4680086 d!1487550))

(declare-fun bs!1082169 () Bool)

(declare-fun d!1487552 () Bool)

(assert (= bs!1082169 (and d!1487552 start!472544)))

(declare-fun lambda!204661 () Int)

(assert (=> bs!1082169 (= lambda!204661 lambda!204583)))

(declare-fun bs!1082170 () Bool)

(assert (= bs!1082170 (and d!1487552 d!1487524)))

(assert (=> bs!1082170 (= lambda!204661 lambda!204660)))

(declare-fun lt!1839979 () ListMap!4837)

(assert (=> d!1487552 (invariantList!1376 (toList!5473 lt!1839979))))

(declare-fun e!2920038 () ListMap!4837)

(assert (=> d!1487552 (= lt!1839979 e!2920038)))

(declare-fun c!800580 () Bool)

(assert (=> d!1487552 (= c!800580 ((_ is Cons!52252) lt!1839780))))

(assert (=> d!1487552 (forall!11225 lt!1839780 lambda!204661)))

(assert (=> d!1487552 (= (extractMap!1818 lt!1839780) lt!1839979)))

(declare-fun b!4680195 () Bool)

(assert (=> b!4680195 (= e!2920038 (addToMapMapFromBucket!1224 (_2!30076 (h!58463 lt!1839780)) (extractMap!1818 (t!359530 lt!1839780))))))

(declare-fun b!4680196 () Bool)

(assert (=> b!4680196 (= e!2920038 (ListMap!4838 Nil!52251))))

(assert (= (and d!1487552 c!800580) b!4680195))

(assert (= (and d!1487552 (not c!800580)) b!4680196))

(declare-fun m!5576761 () Bool)

(assert (=> d!1487552 m!5576761))

(declare-fun m!5576763 () Bool)

(assert (=> d!1487552 m!5576763))

(declare-fun m!5576765 () Bool)

(assert (=> b!4680195 m!5576765))

(assert (=> b!4680195 m!5576765))

(declare-fun m!5576767 () Bool)

(assert (=> b!4680195 m!5576767))

(assert (=> b!4680087 d!1487552))

(declare-fun bs!1082171 () Bool)

(declare-fun d!1487554 () Bool)

(assert (= bs!1082171 (and d!1487554 start!472544)))

(declare-fun lambda!204662 () Int)

(assert (=> bs!1082171 (= lambda!204662 lambda!204583)))

(declare-fun bs!1082172 () Bool)

(assert (= bs!1082172 (and d!1487554 d!1487524)))

(assert (=> bs!1082172 (= lambda!204662 lambda!204660)))

(declare-fun bs!1082173 () Bool)

(assert (= bs!1082173 (and d!1487554 d!1487552)))

(assert (=> bs!1082173 (= lambda!204662 lambda!204661)))

(declare-fun lt!1839980 () ListMap!4837)

(assert (=> d!1487554 (invariantList!1376 (toList!5473 lt!1839980))))

(declare-fun e!2920041 () ListMap!4837)

(assert (=> d!1487554 (= lt!1839980 e!2920041)))

(declare-fun c!800581 () Bool)

(assert (=> d!1487554 (= c!800581 ((_ is Cons!52252) lt!1839782))))

(assert (=> d!1487554 (forall!11225 lt!1839782 lambda!204662)))

(assert (=> d!1487554 (= (extractMap!1818 lt!1839782) lt!1839980)))

(declare-fun b!4680199 () Bool)

(assert (=> b!4680199 (= e!2920041 (addToMapMapFromBucket!1224 (_2!30076 (h!58463 lt!1839782)) (extractMap!1818 (t!359530 lt!1839782))))))

(declare-fun b!4680200 () Bool)

(assert (=> b!4680200 (= e!2920041 (ListMap!4838 Nil!52251))))

(assert (= (and d!1487554 c!800581) b!4680199))

(assert (= (and d!1487554 (not c!800581)) b!4680200))

(declare-fun m!5576773 () Bool)

(assert (=> d!1487554 m!5576773))

(declare-fun m!5576775 () Bool)

(assert (=> d!1487554 m!5576775))

(declare-fun m!5576777 () Bool)

(assert (=> b!4680199 m!5576777))

(assert (=> b!4680199 m!5576777))

(declare-fun m!5576779 () Bool)

(assert (=> b!4680199 m!5576779))

(assert (=> b!4680087 d!1487554))

(declare-fun bs!1082174 () Bool)

(declare-fun d!1487558 () Bool)

(assert (= bs!1082174 (and d!1487558 b!4680145)))

(declare-fun lambda!204663 () Int)

(assert (=> bs!1082174 (not (= lambda!204663 lambda!204646))))

(declare-fun bs!1082175 () Bool)

(assert (= bs!1082175 (and d!1487558 b!4680146)))

(assert (=> bs!1082175 (not (= lambda!204663 lambda!204649))))

(assert (=> bs!1082175 (not (= lambda!204663 lambda!204647))))

(declare-fun bs!1082176 () Bool)

(assert (= bs!1082176 (and d!1487558 d!1487520)))

(assert (=> bs!1082176 (not (= lambda!204663 lambda!204652))))

(declare-fun bs!1082177 () Bool)

(assert (= bs!1082177 (and d!1487558 d!1487494)))

(assert (=> bs!1082177 (= lambda!204663 lambda!204586)))

(assert (=> d!1487558 true))

(assert (=> d!1487558 true))

(assert (=> d!1487558 (= (allKeysSameHash!1618 oldBucket!34 hash!405 hashF!1323) (forall!11226 oldBucket!34 lambda!204663))))

(declare-fun bs!1082178 () Bool)

(assert (= bs!1082178 d!1487558))

(declare-fun m!5576781 () Bool)

(assert (=> bs!1082178 m!5576781))

(assert (=> b!4680082 d!1487558))

(declare-fun bs!1082179 () Bool)

(declare-fun b!4680202 () Bool)

(assert (= bs!1082179 (and b!4680202 b!4680145)))

(declare-fun lambda!204666 () Int)

(assert (=> bs!1082179 (= lambda!204666 lambda!204646)))

(declare-fun bs!1082180 () Bool)

(assert (= bs!1082180 (and b!4680202 d!1487558)))

(assert (=> bs!1082180 (not (= lambda!204666 lambda!204663))))

(declare-fun bs!1082181 () Bool)

(assert (= bs!1082181 (and b!4680202 b!4680146)))

(assert (=> bs!1082181 (= (= lt!1839775 lt!1839916) (= lambda!204666 lambda!204649))))

(assert (=> bs!1082181 (= lambda!204666 lambda!204647)))

(declare-fun bs!1082182 () Bool)

(assert (= bs!1082182 (and b!4680202 d!1487520)))

(assert (=> bs!1082182 (= (= lt!1839775 lt!1839925) (= lambda!204666 lambda!204652))))

(declare-fun bs!1082183 () Bool)

(assert (= bs!1082183 (and b!4680202 d!1487494)))

(assert (=> bs!1082183 (not (= lambda!204666 lambda!204586))))

(assert (=> b!4680202 true))

(declare-fun bs!1082186 () Bool)

(declare-fun b!4680203 () Bool)

(assert (= bs!1082186 (and b!4680203 b!4680145)))

(declare-fun lambda!204668 () Int)

(assert (=> bs!1082186 (= lambda!204668 lambda!204646)))

(declare-fun bs!1082187 () Bool)

(assert (= bs!1082187 (and b!4680203 b!4680202)))

(assert (=> bs!1082187 (= lambda!204668 lambda!204666)))

(declare-fun bs!1082188 () Bool)

(assert (= bs!1082188 (and b!4680203 d!1487558)))

(assert (=> bs!1082188 (not (= lambda!204668 lambda!204663))))

(declare-fun bs!1082189 () Bool)

(assert (= bs!1082189 (and b!4680203 b!4680146)))

(assert (=> bs!1082189 (= (= lt!1839775 lt!1839916) (= lambda!204668 lambda!204649))))

(assert (=> bs!1082189 (= lambda!204668 lambda!204647)))

(declare-fun bs!1082190 () Bool)

(assert (= bs!1082190 (and b!4680203 d!1487520)))

(assert (=> bs!1082190 (= (= lt!1839775 lt!1839925) (= lambda!204668 lambda!204652))))

(declare-fun bs!1082191 () Bool)

(assert (= bs!1082191 (and b!4680203 d!1487494)))

(assert (=> bs!1082191 (not (= lambda!204668 lambda!204586))))

(assert (=> b!4680203 true))

(declare-fun lt!1839988 () ListMap!4837)

(declare-fun lambda!204669 () Int)

(assert (=> b!4680203 (= (= lt!1839988 lt!1839775) (= lambda!204669 lambda!204668))))

(assert (=> bs!1082186 (= (= lt!1839988 lt!1839775) (= lambda!204669 lambda!204646))))

(assert (=> bs!1082187 (= (= lt!1839988 lt!1839775) (= lambda!204669 lambda!204666))))

(assert (=> bs!1082188 (not (= lambda!204669 lambda!204663))))

(assert (=> bs!1082189 (= (= lt!1839988 lt!1839916) (= lambda!204669 lambda!204649))))

(assert (=> bs!1082189 (= (= lt!1839988 lt!1839775) (= lambda!204669 lambda!204647))))

(assert (=> bs!1082190 (= (= lt!1839988 lt!1839925) (= lambda!204669 lambda!204652))))

(assert (=> bs!1082191 (not (= lambda!204669 lambda!204586))))

(assert (=> b!4680203 true))

(declare-fun bs!1082203 () Bool)

(declare-fun d!1487560 () Bool)

(assert (= bs!1082203 (and d!1487560 b!4680203)))

(declare-fun lambda!204672 () Int)

(declare-fun lt!1839997 () ListMap!4837)

(assert (=> bs!1082203 (= (= lt!1839997 lt!1839775) (= lambda!204672 lambda!204668))))

(declare-fun bs!1082205 () Bool)

(assert (= bs!1082205 (and d!1487560 b!4680145)))

(assert (=> bs!1082205 (= (= lt!1839997 lt!1839775) (= lambda!204672 lambda!204646))))

(declare-fun bs!1082207 () Bool)

(assert (= bs!1082207 (and d!1487560 b!4680202)))

(assert (=> bs!1082207 (= (= lt!1839997 lt!1839775) (= lambda!204672 lambda!204666))))

(declare-fun bs!1082209 () Bool)

(assert (= bs!1082209 (and d!1487560 d!1487558)))

(assert (=> bs!1082209 (not (= lambda!204672 lambda!204663))))

(declare-fun bs!1082211 () Bool)

(assert (= bs!1082211 (and d!1487560 b!4680146)))

(assert (=> bs!1082211 (= (= lt!1839997 lt!1839916) (= lambda!204672 lambda!204649))))

(assert (=> bs!1082211 (= (= lt!1839997 lt!1839775) (= lambda!204672 lambda!204647))))

(assert (=> bs!1082203 (= (= lt!1839997 lt!1839988) (= lambda!204672 lambda!204669))))

(declare-fun bs!1082212 () Bool)

(assert (= bs!1082212 (and d!1487560 d!1487520)))

(assert (=> bs!1082212 (= (= lt!1839997 lt!1839925) (= lambda!204672 lambda!204652))))

(declare-fun bs!1082213 () Bool)

(assert (= bs!1082213 (and d!1487560 d!1487494)))

(assert (=> bs!1082213 (not (= lambda!204672 lambda!204586))))

(assert (=> d!1487560 true))

(declare-fun b!4680201 () Bool)

(declare-fun e!2920044 () Bool)

(assert (=> b!4680201 (= e!2920044 (forall!11226 (toList!5473 lt!1839775) lambda!204669))))

(declare-fun call!327099 () Bool)

(declare-fun bm!327092 () Bool)

(declare-fun c!800582 () Bool)

(assert (=> bm!327092 (= call!327099 (forall!11226 (ite c!800582 (toList!5473 lt!1839775) newBucket!218) (ite c!800582 lambda!204666 lambda!204669)))))

(declare-fun e!2920043 () ListMap!4837)

(assert (=> b!4680202 (= e!2920043 lt!1839775)))

(declare-fun lt!1839992 () Unit!122493)

(declare-fun call!327097 () Unit!122493)

(assert (=> b!4680202 (= lt!1839992 call!327097)))

(declare-fun call!327098 () Bool)

(assert (=> b!4680202 call!327098))

(declare-fun lt!1839989 () Unit!122493)

(assert (=> b!4680202 (= lt!1839989 lt!1839992)))

(assert (=> b!4680202 call!327099))

(declare-fun lt!1839998 () Unit!122493)

(declare-fun Unit!122528 () Unit!122493)

(assert (=> b!4680202 (= lt!1839998 Unit!122528)))

(assert (=> b!4680203 (= e!2920043 lt!1839988)))

(declare-fun lt!1839987 () ListMap!4837)

(assert (=> b!4680203 (= lt!1839987 (+!2094 lt!1839775 (h!58462 newBucket!218)))))

(assert (=> b!4680203 (= lt!1839988 (addToMapMapFromBucket!1224 (t!359529 newBucket!218) (+!2094 lt!1839775 (h!58462 newBucket!218))))))

(declare-fun lt!1840000 () Unit!122493)

(assert (=> b!4680203 (= lt!1840000 call!327097)))

(assert (=> b!4680203 call!327098))

(declare-fun lt!1839996 () Unit!122493)

(assert (=> b!4680203 (= lt!1839996 lt!1840000)))

(assert (=> b!4680203 (forall!11226 (toList!5473 lt!1839987) lambda!204669)))

(declare-fun lt!1839999 () Unit!122493)

(declare-fun Unit!122529 () Unit!122493)

(assert (=> b!4680203 (= lt!1839999 Unit!122529)))

(assert (=> b!4680203 (forall!11226 (t!359529 newBucket!218) lambda!204669)))

(declare-fun lt!1839991 () Unit!122493)

(declare-fun Unit!122530 () Unit!122493)

(assert (=> b!4680203 (= lt!1839991 Unit!122530)))

(declare-fun lt!1839995 () Unit!122493)

(declare-fun Unit!122531 () Unit!122493)

(assert (=> b!4680203 (= lt!1839995 Unit!122531)))

(declare-fun lt!1839983 () Unit!122493)

(assert (=> b!4680203 (= lt!1839983 (forallContained!3348 (toList!5473 lt!1839987) lambda!204669 (h!58462 newBucket!218)))))

(assert (=> b!4680203 (contains!15384 lt!1839987 (_1!30075 (h!58462 newBucket!218)))))

(declare-fun lt!1839990 () Unit!122493)

(declare-fun Unit!122532 () Unit!122493)

(assert (=> b!4680203 (= lt!1839990 Unit!122532)))

(assert (=> b!4680203 (contains!15384 lt!1839988 (_1!30075 (h!58462 newBucket!218)))))

(declare-fun lt!1839993 () Unit!122493)

(declare-fun Unit!122533 () Unit!122493)

(assert (=> b!4680203 (= lt!1839993 Unit!122533)))

(assert (=> b!4680203 call!327099))

(declare-fun lt!1839985 () Unit!122493)

(declare-fun Unit!122534 () Unit!122493)

(assert (=> b!4680203 (= lt!1839985 Unit!122534)))

(assert (=> b!4680203 (forall!11226 (toList!5473 lt!1839987) lambda!204669)))

(declare-fun lt!1839982 () Unit!122493)

(declare-fun Unit!122535 () Unit!122493)

(assert (=> b!4680203 (= lt!1839982 Unit!122535)))

(declare-fun lt!1839994 () Unit!122493)

(declare-fun Unit!122536 () Unit!122493)

(assert (=> b!4680203 (= lt!1839994 Unit!122536)))

(declare-fun lt!1839986 () Unit!122493)

(assert (=> b!4680203 (= lt!1839986 (addForallContainsKeyThenBeforeAdding!663 lt!1839775 lt!1839988 (_1!30075 (h!58462 newBucket!218)) (_2!30075 (h!58462 newBucket!218))))))

(assert (=> b!4680203 (forall!11226 (toList!5473 lt!1839775) lambda!204669)))

(declare-fun lt!1840001 () Unit!122493)

(assert (=> b!4680203 (= lt!1840001 lt!1839986)))

(assert (=> b!4680203 (forall!11226 (toList!5473 lt!1839775) lambda!204669)))

(declare-fun lt!1839981 () Unit!122493)

(declare-fun Unit!122537 () Unit!122493)

(assert (=> b!4680203 (= lt!1839981 Unit!122537)))

(declare-fun res!1972214 () Bool)

(assert (=> b!4680203 (= res!1972214 (forall!11226 newBucket!218 lambda!204669))))

(assert (=> b!4680203 (=> (not res!1972214) (not e!2920044))))

(assert (=> b!4680203 e!2920044))

(declare-fun lt!1839984 () Unit!122493)

(declare-fun Unit!122538 () Unit!122493)

(assert (=> b!4680203 (= lt!1839984 Unit!122538)))

(declare-fun b!4680204 () Bool)

(declare-fun res!1972213 () Bool)

(declare-fun e!2920042 () Bool)

(assert (=> b!4680204 (=> (not res!1972213) (not e!2920042))))

(assert (=> b!4680204 (= res!1972213 (forall!11226 (toList!5473 lt!1839775) lambda!204672))))

(assert (=> d!1487560 e!2920042))

(declare-fun res!1972215 () Bool)

(assert (=> d!1487560 (=> (not res!1972215) (not e!2920042))))

(assert (=> d!1487560 (= res!1972215 (forall!11226 newBucket!218 lambda!204672))))

(assert (=> d!1487560 (= lt!1839997 e!2920043)))

(assert (=> d!1487560 (= c!800582 ((_ is Nil!52251) newBucket!218))))

(assert (=> d!1487560 (noDuplicateKeys!1792 newBucket!218)))

(assert (=> d!1487560 (= (addToMapMapFromBucket!1224 newBucket!218 lt!1839775) lt!1839997)))

(declare-fun b!4680205 () Bool)

(assert (=> b!4680205 (= e!2920042 (invariantList!1376 (toList!5473 lt!1839997)))))

(declare-fun bm!327093 () Bool)

(assert (=> bm!327093 (= call!327098 (forall!11226 (toList!5473 lt!1839775) (ite c!800582 lambda!204666 lambda!204668)))))

(declare-fun bm!327094 () Bool)

(assert (=> bm!327094 (= call!327097 (lemmaContainsAllItsOwnKeys!664 lt!1839775))))

(assert (= (and d!1487560 c!800582) b!4680202))

(assert (= (and d!1487560 (not c!800582)) b!4680203))

(assert (= (and b!4680203 res!1972214) b!4680201))

(assert (= (or b!4680202 b!4680203) bm!327094))

(assert (= (or b!4680202 b!4680203) bm!327093))

(assert (= (or b!4680202 b!4680203) bm!327092))

(assert (= (and d!1487560 res!1972215) b!4680204))

(assert (= (and b!4680204 res!1972213) b!4680205))

(declare-fun m!5576785 () Bool)

(assert (=> b!4680203 m!5576785))

(declare-fun m!5576787 () Bool)

(assert (=> b!4680203 m!5576787))

(declare-fun m!5576789 () Bool)

(assert (=> b!4680203 m!5576789))

(assert (=> b!4680203 m!5576789))

(declare-fun m!5576791 () Bool)

(assert (=> b!4680203 m!5576791))

(declare-fun m!5576793 () Bool)

(assert (=> b!4680203 m!5576793))

(declare-fun m!5576795 () Bool)

(assert (=> b!4680203 m!5576795))

(assert (=> b!4680203 m!5576793))

(declare-fun m!5576797 () Bool)

(assert (=> b!4680203 m!5576797))

(declare-fun m!5576799 () Bool)

(assert (=> b!4680203 m!5576799))

(declare-fun m!5576801 () Bool)

(assert (=> b!4680203 m!5576801))

(assert (=> b!4680203 m!5576785))

(declare-fun m!5576803 () Bool)

(assert (=> b!4680203 m!5576803))

(assert (=> b!4680201 m!5576789))

(declare-fun m!5576805 () Bool)

(assert (=> d!1487560 m!5576805))

(assert (=> d!1487560 m!5576463))

(declare-fun m!5576807 () Bool)

(assert (=> b!4680204 m!5576807))

(assert (=> bm!327094 m!5576641))

(declare-fun m!5576809 () Bool)

(assert (=> b!4680205 m!5576809))

(declare-fun m!5576811 () Bool)

(assert (=> bm!327093 m!5576811))

(declare-fun m!5576813 () Bool)

(assert (=> bm!327092 m!5576813))

(assert (=> b!4680083 d!1487560))

(declare-fun bs!1082219 () Bool)

(declare-fun b!4680214 () Bool)

(assert (= bs!1082219 (and b!4680214 b!4680203)))

(declare-fun lambda!204675 () Int)

(assert (=> bs!1082219 (= lambda!204675 lambda!204668)))

(declare-fun bs!1082221 () Bool)

(assert (= bs!1082221 (and b!4680214 b!4680145)))

(assert (=> bs!1082221 (= lambda!204675 lambda!204646)))

(declare-fun bs!1082223 () Bool)

(assert (= bs!1082223 (and b!4680214 b!4680202)))

(assert (=> bs!1082223 (= lambda!204675 lambda!204666)))

(declare-fun bs!1082225 () Bool)

(assert (= bs!1082225 (and b!4680214 d!1487558)))

(assert (=> bs!1082225 (not (= lambda!204675 lambda!204663))))

(declare-fun bs!1082227 () Bool)

(assert (= bs!1082227 (and b!4680214 b!4680146)))

(assert (=> bs!1082227 (= (= lt!1839775 lt!1839916) (= lambda!204675 lambda!204649))))

(declare-fun bs!1082228 () Bool)

(assert (= bs!1082228 (and b!4680214 d!1487560)))

(assert (=> bs!1082228 (= (= lt!1839775 lt!1839997) (= lambda!204675 lambda!204672))))

(assert (=> bs!1082227 (= lambda!204675 lambda!204647)))

(assert (=> bs!1082219 (= (= lt!1839775 lt!1839988) (= lambda!204675 lambda!204669))))

(declare-fun bs!1082229 () Bool)

(assert (= bs!1082229 (and b!4680214 d!1487520)))

(assert (=> bs!1082229 (= (= lt!1839775 lt!1839925) (= lambda!204675 lambda!204652))))

(declare-fun bs!1082230 () Bool)

(assert (= bs!1082230 (and b!4680214 d!1487494)))

(assert (=> bs!1082230 (not (= lambda!204675 lambda!204586))))

(assert (=> b!4680214 true))

(declare-fun bs!1082231 () Bool)

(declare-fun b!4680215 () Bool)

(assert (= bs!1082231 (and b!4680215 b!4680203)))

(declare-fun lambda!204676 () Int)

(assert (=> bs!1082231 (= lambda!204676 lambda!204668)))

(declare-fun bs!1082232 () Bool)

(assert (= bs!1082232 (and b!4680215 b!4680145)))

(assert (=> bs!1082232 (= lambda!204676 lambda!204646)))

(declare-fun bs!1082233 () Bool)

(assert (= bs!1082233 (and b!4680215 b!4680202)))

(assert (=> bs!1082233 (= lambda!204676 lambda!204666)))

(declare-fun bs!1082234 () Bool)

(assert (= bs!1082234 (and b!4680215 d!1487558)))

(assert (=> bs!1082234 (not (= lambda!204676 lambda!204663))))

(declare-fun bs!1082235 () Bool)

(assert (= bs!1082235 (and b!4680215 b!4680146)))

(assert (=> bs!1082235 (= (= lt!1839775 lt!1839916) (= lambda!204676 lambda!204649))))

(declare-fun bs!1082236 () Bool)

(assert (= bs!1082236 (and b!4680215 d!1487560)))

(assert (=> bs!1082236 (= (= lt!1839775 lt!1839997) (= lambda!204676 lambda!204672))))

(assert (=> bs!1082235 (= lambda!204676 lambda!204647)))

(assert (=> bs!1082231 (= (= lt!1839775 lt!1839988) (= lambda!204676 lambda!204669))))

(declare-fun bs!1082237 () Bool)

(assert (= bs!1082237 (and b!4680215 d!1487520)))

(assert (=> bs!1082237 (= (= lt!1839775 lt!1839925) (= lambda!204676 lambda!204652))))

(declare-fun bs!1082238 () Bool)

(assert (= bs!1082238 (and b!4680215 d!1487494)))

(assert (=> bs!1082238 (not (= lambda!204676 lambda!204586))))

(declare-fun bs!1082239 () Bool)

(assert (= bs!1082239 (and b!4680215 b!4680214)))

(assert (=> bs!1082239 (= lambda!204676 lambda!204675)))

(assert (=> b!4680215 true))

(declare-fun lambda!204677 () Int)

(declare-fun lt!1840030 () ListMap!4837)

(assert (=> bs!1082231 (= (= lt!1840030 lt!1839775) (= lambda!204677 lambda!204668))))

(assert (=> bs!1082232 (= (= lt!1840030 lt!1839775) (= lambda!204677 lambda!204646))))

(assert (=> bs!1082233 (= (= lt!1840030 lt!1839775) (= lambda!204677 lambda!204666))))

(assert (=> bs!1082234 (not (= lambda!204677 lambda!204663))))

(assert (=> bs!1082235 (= (= lt!1840030 lt!1839916) (= lambda!204677 lambda!204649))))

(assert (=> bs!1082236 (= (= lt!1840030 lt!1839997) (= lambda!204677 lambda!204672))))

(assert (=> bs!1082235 (= (= lt!1840030 lt!1839775) (= lambda!204677 lambda!204647))))

(assert (=> bs!1082231 (= (= lt!1840030 lt!1839988) (= lambda!204677 lambda!204669))))

(assert (=> bs!1082237 (= (= lt!1840030 lt!1839925) (= lambda!204677 lambda!204652))))

(assert (=> bs!1082239 (= (= lt!1840030 lt!1839775) (= lambda!204677 lambda!204675))))

(assert (=> b!4680215 (= (= lt!1840030 lt!1839775) (= lambda!204677 lambda!204676))))

(assert (=> bs!1082238 (not (= lambda!204677 lambda!204586))))

(assert (=> b!4680215 true))

(declare-fun bs!1082240 () Bool)

(declare-fun d!1487566 () Bool)

(assert (= bs!1082240 (and d!1487566 b!4680203)))

(declare-fun lambda!204678 () Int)

(declare-fun lt!1840039 () ListMap!4837)

(assert (=> bs!1082240 (= (= lt!1840039 lt!1839775) (= lambda!204678 lambda!204668))))

(declare-fun bs!1082241 () Bool)

(assert (= bs!1082241 (and d!1487566 b!4680145)))

(assert (=> bs!1082241 (= (= lt!1840039 lt!1839775) (= lambda!204678 lambda!204646))))

(declare-fun bs!1082242 () Bool)

(assert (= bs!1082242 (and d!1487566 b!4680202)))

(assert (=> bs!1082242 (= (= lt!1840039 lt!1839775) (= lambda!204678 lambda!204666))))

(declare-fun bs!1082243 () Bool)

(assert (= bs!1082243 (and d!1487566 d!1487558)))

(assert (=> bs!1082243 (not (= lambda!204678 lambda!204663))))

(declare-fun bs!1082244 () Bool)

(assert (= bs!1082244 (and d!1487566 b!4680146)))

(assert (=> bs!1082244 (= (= lt!1840039 lt!1839916) (= lambda!204678 lambda!204649))))

(declare-fun bs!1082245 () Bool)

(assert (= bs!1082245 (and d!1487566 d!1487560)))

(assert (=> bs!1082245 (= (= lt!1840039 lt!1839997) (= lambda!204678 lambda!204672))))

(assert (=> bs!1082244 (= (= lt!1840039 lt!1839775) (= lambda!204678 lambda!204647))))

(assert (=> bs!1082240 (= (= lt!1840039 lt!1839988) (= lambda!204678 lambda!204669))))

(declare-fun bs!1082246 () Bool)

(assert (= bs!1082246 (and d!1487566 d!1487520)))

(assert (=> bs!1082246 (= (= lt!1840039 lt!1839925) (= lambda!204678 lambda!204652))))

(declare-fun bs!1082247 () Bool)

(assert (= bs!1082247 (and d!1487566 b!4680215)))

(assert (=> bs!1082247 (= (= lt!1840039 lt!1839775) (= lambda!204678 lambda!204676))))

(declare-fun bs!1082248 () Bool)

(assert (= bs!1082248 (and d!1487566 d!1487494)))

(assert (=> bs!1082248 (not (= lambda!204678 lambda!204586))))

(declare-fun bs!1082249 () Bool)

(assert (= bs!1082249 (and d!1487566 b!4680214)))

(assert (=> bs!1082249 (= (= lt!1840039 lt!1839775) (= lambda!204678 lambda!204675))))

(assert (=> bs!1082247 (= (= lt!1840039 lt!1840030) (= lambda!204678 lambda!204677))))

(assert (=> d!1487566 true))

(declare-fun b!4680213 () Bool)

(declare-fun e!2920050 () Bool)

(assert (=> b!4680213 (= e!2920050 (forall!11226 (toList!5473 lt!1839775) lambda!204677))))

(declare-fun call!327105 () Bool)

(declare-fun c!800584 () Bool)

(declare-fun bm!327098 () Bool)

(assert (=> bm!327098 (= call!327105 (forall!11226 (ite c!800584 (toList!5473 lt!1839775) lt!1839778) (ite c!800584 lambda!204675 lambda!204677)))))

(declare-fun e!2920049 () ListMap!4837)

(assert (=> b!4680214 (= e!2920049 lt!1839775)))

(declare-fun lt!1840034 () Unit!122493)

(declare-fun call!327103 () Unit!122493)

(assert (=> b!4680214 (= lt!1840034 call!327103)))

(declare-fun call!327104 () Bool)

(assert (=> b!4680214 call!327104))

(declare-fun lt!1840031 () Unit!122493)

(assert (=> b!4680214 (= lt!1840031 lt!1840034)))

(assert (=> b!4680214 call!327105))

(declare-fun lt!1840040 () Unit!122493)

(declare-fun Unit!122539 () Unit!122493)

(assert (=> b!4680214 (= lt!1840040 Unit!122539)))

(assert (=> b!4680215 (= e!2920049 lt!1840030)))

(declare-fun lt!1840029 () ListMap!4837)

(assert (=> b!4680215 (= lt!1840029 (+!2094 lt!1839775 (h!58462 lt!1839778)))))

(assert (=> b!4680215 (= lt!1840030 (addToMapMapFromBucket!1224 (t!359529 lt!1839778) (+!2094 lt!1839775 (h!58462 lt!1839778))))))

(declare-fun lt!1840042 () Unit!122493)

(assert (=> b!4680215 (= lt!1840042 call!327103)))

(assert (=> b!4680215 call!327104))

(declare-fun lt!1840038 () Unit!122493)

(assert (=> b!4680215 (= lt!1840038 lt!1840042)))

(assert (=> b!4680215 (forall!11226 (toList!5473 lt!1840029) lambda!204677)))

(declare-fun lt!1840041 () Unit!122493)

(declare-fun Unit!122540 () Unit!122493)

(assert (=> b!4680215 (= lt!1840041 Unit!122540)))

(assert (=> b!4680215 (forall!11226 (t!359529 lt!1839778) lambda!204677)))

(declare-fun lt!1840033 () Unit!122493)

(declare-fun Unit!122541 () Unit!122493)

(assert (=> b!4680215 (= lt!1840033 Unit!122541)))

(declare-fun lt!1840037 () Unit!122493)

(declare-fun Unit!122542 () Unit!122493)

(assert (=> b!4680215 (= lt!1840037 Unit!122542)))

(declare-fun lt!1840025 () Unit!122493)

(assert (=> b!4680215 (= lt!1840025 (forallContained!3348 (toList!5473 lt!1840029) lambda!204677 (h!58462 lt!1839778)))))

(assert (=> b!4680215 (contains!15384 lt!1840029 (_1!30075 (h!58462 lt!1839778)))))

(declare-fun lt!1840032 () Unit!122493)

(declare-fun Unit!122543 () Unit!122493)

(assert (=> b!4680215 (= lt!1840032 Unit!122543)))

(assert (=> b!4680215 (contains!15384 lt!1840030 (_1!30075 (h!58462 lt!1839778)))))

(declare-fun lt!1840035 () Unit!122493)

(declare-fun Unit!122544 () Unit!122493)

(assert (=> b!4680215 (= lt!1840035 Unit!122544)))

(assert (=> b!4680215 call!327105))

(declare-fun lt!1840027 () Unit!122493)

(declare-fun Unit!122545 () Unit!122493)

(assert (=> b!4680215 (= lt!1840027 Unit!122545)))

(assert (=> b!4680215 (forall!11226 (toList!5473 lt!1840029) lambda!204677)))

(declare-fun lt!1840024 () Unit!122493)

(declare-fun Unit!122546 () Unit!122493)

(assert (=> b!4680215 (= lt!1840024 Unit!122546)))

(declare-fun lt!1840036 () Unit!122493)

(declare-fun Unit!122547 () Unit!122493)

(assert (=> b!4680215 (= lt!1840036 Unit!122547)))

(declare-fun lt!1840028 () Unit!122493)

(assert (=> b!4680215 (= lt!1840028 (addForallContainsKeyThenBeforeAdding!663 lt!1839775 lt!1840030 (_1!30075 (h!58462 lt!1839778)) (_2!30075 (h!58462 lt!1839778))))))

(assert (=> b!4680215 (forall!11226 (toList!5473 lt!1839775) lambda!204677)))

(declare-fun lt!1840043 () Unit!122493)

(assert (=> b!4680215 (= lt!1840043 lt!1840028)))

(assert (=> b!4680215 (forall!11226 (toList!5473 lt!1839775) lambda!204677)))

(declare-fun lt!1840023 () Unit!122493)

(declare-fun Unit!122550 () Unit!122493)

(assert (=> b!4680215 (= lt!1840023 Unit!122550)))

(declare-fun res!1972220 () Bool)

(assert (=> b!4680215 (= res!1972220 (forall!11226 lt!1839778 lambda!204677))))

(assert (=> b!4680215 (=> (not res!1972220) (not e!2920050))))

(assert (=> b!4680215 e!2920050))

(declare-fun lt!1840026 () Unit!122493)

(declare-fun Unit!122552 () Unit!122493)

(assert (=> b!4680215 (= lt!1840026 Unit!122552)))

(declare-fun b!4680216 () Bool)

(declare-fun res!1972219 () Bool)

(declare-fun e!2920048 () Bool)

(assert (=> b!4680216 (=> (not res!1972219) (not e!2920048))))

(assert (=> b!4680216 (= res!1972219 (forall!11226 (toList!5473 lt!1839775) lambda!204678))))

(assert (=> d!1487566 e!2920048))

(declare-fun res!1972221 () Bool)

(assert (=> d!1487566 (=> (not res!1972221) (not e!2920048))))

(assert (=> d!1487566 (= res!1972221 (forall!11226 lt!1839778 lambda!204678))))

(assert (=> d!1487566 (= lt!1840039 e!2920049)))

(assert (=> d!1487566 (= c!800584 ((_ is Nil!52251) lt!1839778))))

(assert (=> d!1487566 (noDuplicateKeys!1792 lt!1839778)))

(assert (=> d!1487566 (= (addToMapMapFromBucket!1224 lt!1839778 lt!1839775) lt!1840039)))

(declare-fun b!4680217 () Bool)

(assert (=> b!4680217 (= e!2920048 (invariantList!1376 (toList!5473 lt!1840039)))))

(declare-fun bm!327099 () Bool)

(assert (=> bm!327099 (= call!327104 (forall!11226 (toList!5473 lt!1839775) (ite c!800584 lambda!204675 lambda!204676)))))

(declare-fun bm!327100 () Bool)

(assert (=> bm!327100 (= call!327103 (lemmaContainsAllItsOwnKeys!664 lt!1839775))))

(assert (= (and d!1487566 c!800584) b!4680214))

(assert (= (and d!1487566 (not c!800584)) b!4680215))

(assert (= (and b!4680215 res!1972220) b!4680213))

(assert (= (or b!4680214 b!4680215) bm!327100))

(assert (= (or b!4680214 b!4680215) bm!327099))

(assert (= (or b!4680214 b!4680215) bm!327098))

(assert (= (and d!1487566 res!1972221) b!4680216))

(assert (= (and b!4680216 res!1972219) b!4680217))

(declare-fun m!5576847 () Bool)

(assert (=> b!4680215 m!5576847))

(declare-fun m!5576849 () Bool)

(assert (=> b!4680215 m!5576849))

(declare-fun m!5576851 () Bool)

(assert (=> b!4680215 m!5576851))

(assert (=> b!4680215 m!5576851))

(declare-fun m!5576853 () Bool)

(assert (=> b!4680215 m!5576853))

(declare-fun m!5576855 () Bool)

(assert (=> b!4680215 m!5576855))

(declare-fun m!5576857 () Bool)

(assert (=> b!4680215 m!5576857))

(assert (=> b!4680215 m!5576855))

(declare-fun m!5576859 () Bool)

(assert (=> b!4680215 m!5576859))

(declare-fun m!5576861 () Bool)

(assert (=> b!4680215 m!5576861))

(declare-fun m!5576863 () Bool)

(assert (=> b!4680215 m!5576863))

(assert (=> b!4680215 m!5576847))

(declare-fun m!5576865 () Bool)

(assert (=> b!4680215 m!5576865))

(assert (=> b!4680213 m!5576851))

(declare-fun m!5576867 () Bool)

(assert (=> d!1487566 m!5576867))

(declare-fun m!5576869 () Bool)

(assert (=> d!1487566 m!5576869))

(declare-fun m!5576871 () Bool)

(assert (=> b!4680216 m!5576871))

(assert (=> bm!327100 m!5576641))

(declare-fun m!5576873 () Bool)

(assert (=> b!4680217 m!5576873))

(declare-fun m!5576875 () Bool)

(assert (=> bm!327099 m!5576875))

(declare-fun m!5576877 () Bool)

(assert (=> bm!327098 m!5576877))

(assert (=> b!4680083 d!1487566))

(declare-fun b!4680261 () Bool)

(assert (=> b!4680261 false))

(declare-fun lt!1840092 () Unit!122493)

(declare-fun lt!1840088 () Unit!122493)

(assert (=> b!4680261 (= lt!1840092 lt!1840088)))

(declare-fun containsKey!2938 (List!52375 K!13630) Bool)

(assert (=> b!4680261 (containsKey!2938 (toList!5473 lt!1839788) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!814 (List!52375 K!13630) Unit!122493)

(assert (=> b!4680261 (= lt!1840088 (lemmaInGetKeysListThenContainsKey!814 (toList!5473 lt!1839788) key!4653))))

(declare-fun e!2920081 () Unit!122493)

(declare-fun Unit!122561 () Unit!122493)

(assert (=> b!4680261 (= e!2920081 Unit!122561)))

(declare-fun b!4680262 () Bool)

(declare-fun e!2920078 () Unit!122493)

(declare-fun lt!1840094 () Unit!122493)

(assert (=> b!4680262 (= e!2920078 lt!1840094)))

(declare-fun lt!1840090 () Unit!122493)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1610 (List!52375 K!13630) Unit!122493)

(assert (=> b!4680262 (= lt!1840090 (lemmaContainsKeyImpliesGetValueByKeyDefined!1610 (toList!5473 lt!1839788) key!4653))))

(declare-fun isDefined!9225 (Option!11970) Bool)

(assert (=> b!4680262 (isDefined!9225 (getValueByKey!1718 (toList!5473 lt!1839788) key!4653))))

(declare-fun lt!1840093 () Unit!122493)

(assert (=> b!4680262 (= lt!1840093 lt!1840090)))

(declare-fun lemmaInListThenGetKeysListContains!810 (List!52375 K!13630) Unit!122493)

(assert (=> b!4680262 (= lt!1840094 (lemmaInListThenGetKeysListContains!810 (toList!5473 lt!1839788) key!4653))))

(declare-fun call!327111 () Bool)

(assert (=> b!4680262 call!327111))

(declare-fun bm!327106 () Bool)

(declare-fun e!2920082 () List!52377)

(declare-fun contains!15387 (List!52377 K!13630) Bool)

(assert (=> bm!327106 (= call!327111 (contains!15387 e!2920082 key!4653))))

(declare-fun c!800601 () Bool)

(declare-fun c!800603 () Bool)

(assert (=> bm!327106 (= c!800601 c!800603)))

(declare-fun b!4680264 () Bool)

(declare-fun getKeysList!815 (List!52375) List!52377)

(assert (=> b!4680264 (= e!2920082 (getKeysList!815 (toList!5473 lt!1839788)))))

(declare-fun b!4680265 () Bool)

(declare-fun e!2920080 () Bool)

(declare-fun e!2920077 () Bool)

(assert (=> b!4680265 (= e!2920080 e!2920077)))

(declare-fun res!1972234 () Bool)

(assert (=> b!4680265 (=> (not res!1972234) (not e!2920077))))

(assert (=> b!4680265 (= res!1972234 (isDefined!9225 (getValueByKey!1718 (toList!5473 lt!1839788) key!4653)))))

(declare-fun b!4680266 () Bool)

(declare-fun e!2920079 () Bool)

(assert (=> b!4680266 (= e!2920079 (not (contains!15387 (keys!18616 lt!1839788) key!4653)))))

(declare-fun b!4680267 () Bool)

(declare-fun Unit!122562 () Unit!122493)

(assert (=> b!4680267 (= e!2920081 Unit!122562)))

(declare-fun b!4680268 () Bool)

(assert (=> b!4680268 (= e!2920078 e!2920081)))

(declare-fun c!800602 () Bool)

(assert (=> b!4680268 (= c!800602 call!327111)))

(declare-fun b!4680269 () Bool)

(assert (=> b!4680269 (= e!2920082 (keys!18616 lt!1839788))))

(declare-fun b!4680263 () Bool)

(assert (=> b!4680263 (= e!2920077 (contains!15387 (keys!18616 lt!1839788) key!4653))))

(declare-fun d!1487570 () Bool)

(assert (=> d!1487570 e!2920080))

(declare-fun res!1972233 () Bool)

(assert (=> d!1487570 (=> res!1972233 e!2920080)))

(assert (=> d!1487570 (= res!1972233 e!2920079)))

(declare-fun res!1972235 () Bool)

(assert (=> d!1487570 (=> (not res!1972235) (not e!2920079))))

(declare-fun lt!1840087 () Bool)

(assert (=> d!1487570 (= res!1972235 (not lt!1840087))))

(declare-fun lt!1840091 () Bool)

(assert (=> d!1487570 (= lt!1840087 lt!1840091)))

(declare-fun lt!1840089 () Unit!122493)

(assert (=> d!1487570 (= lt!1840089 e!2920078)))

(assert (=> d!1487570 (= c!800603 lt!1840091)))

(assert (=> d!1487570 (= lt!1840091 (containsKey!2938 (toList!5473 lt!1839788) key!4653))))

(assert (=> d!1487570 (= (contains!15384 lt!1839788 key!4653) lt!1840087)))

(assert (= (and d!1487570 c!800603) b!4680262))

(assert (= (and d!1487570 (not c!800603)) b!4680268))

(assert (= (and b!4680268 c!800602) b!4680261))

(assert (= (and b!4680268 (not c!800602)) b!4680267))

(assert (= (or b!4680262 b!4680268) bm!327106))

(assert (= (and bm!327106 c!800601) b!4680264))

(assert (= (and bm!327106 (not c!800601)) b!4680269))

(assert (= (and d!1487570 res!1972235) b!4680266))

(assert (= (and d!1487570 (not res!1972233)) b!4680265))

(assert (= (and b!4680265 res!1972234) b!4680263))

(declare-fun m!5576897 () Bool)

(assert (=> bm!327106 m!5576897))

(declare-fun m!5576899 () Bool)

(assert (=> b!4680263 m!5576899))

(assert (=> b!4680263 m!5576899))

(declare-fun m!5576901 () Bool)

(assert (=> b!4680263 m!5576901))

(declare-fun m!5576903 () Bool)

(assert (=> b!4680265 m!5576903))

(assert (=> b!4680265 m!5576903))

(declare-fun m!5576905 () Bool)

(assert (=> b!4680265 m!5576905))

(declare-fun m!5576907 () Bool)

(assert (=> b!4680261 m!5576907))

(declare-fun m!5576909 () Bool)

(assert (=> b!4680261 m!5576909))

(declare-fun m!5576911 () Bool)

(assert (=> b!4680264 m!5576911))

(assert (=> d!1487570 m!5576907))

(assert (=> b!4680266 m!5576899))

(assert (=> b!4680266 m!5576899))

(assert (=> b!4680266 m!5576901))

(assert (=> b!4680269 m!5576899))

(declare-fun m!5576913 () Bool)

(assert (=> b!4680262 m!5576913))

(assert (=> b!4680262 m!5576903))

(assert (=> b!4680262 m!5576903))

(assert (=> b!4680262 m!5576905))

(declare-fun m!5576915 () Bool)

(assert (=> b!4680262 m!5576915))

(assert (=> b!4680073 d!1487570))

(declare-fun b!4680270 () Bool)

(assert (=> b!4680270 false))

(declare-fun lt!1840100 () Unit!122493)

(declare-fun lt!1840096 () Unit!122493)

(assert (=> b!4680270 (= lt!1840100 lt!1840096)))

(assert (=> b!4680270 (containsKey!2938 (toList!5473 lt!1839787) key!4653)))

(assert (=> b!4680270 (= lt!1840096 (lemmaInGetKeysListThenContainsKey!814 (toList!5473 lt!1839787) key!4653))))

(declare-fun e!2920087 () Unit!122493)

(declare-fun Unit!122563 () Unit!122493)

(assert (=> b!4680270 (= e!2920087 Unit!122563)))

(declare-fun b!4680271 () Bool)

(declare-fun e!2920084 () Unit!122493)

(declare-fun lt!1840102 () Unit!122493)

(assert (=> b!4680271 (= e!2920084 lt!1840102)))

(declare-fun lt!1840098 () Unit!122493)

(assert (=> b!4680271 (= lt!1840098 (lemmaContainsKeyImpliesGetValueByKeyDefined!1610 (toList!5473 lt!1839787) key!4653))))

(assert (=> b!4680271 (isDefined!9225 (getValueByKey!1718 (toList!5473 lt!1839787) key!4653))))

(declare-fun lt!1840101 () Unit!122493)

(assert (=> b!4680271 (= lt!1840101 lt!1840098)))

(assert (=> b!4680271 (= lt!1840102 (lemmaInListThenGetKeysListContains!810 (toList!5473 lt!1839787) key!4653))))

(declare-fun call!327112 () Bool)

(assert (=> b!4680271 call!327112))

(declare-fun bm!327107 () Bool)

(declare-fun e!2920088 () List!52377)

(assert (=> bm!327107 (= call!327112 (contains!15387 e!2920088 key!4653))))

(declare-fun c!800604 () Bool)

(declare-fun c!800606 () Bool)

(assert (=> bm!327107 (= c!800604 c!800606)))

(declare-fun b!4680273 () Bool)

(assert (=> b!4680273 (= e!2920088 (getKeysList!815 (toList!5473 lt!1839787)))))

(declare-fun b!4680274 () Bool)

(declare-fun e!2920086 () Bool)

(declare-fun e!2920083 () Bool)

(assert (=> b!4680274 (= e!2920086 e!2920083)))

(declare-fun res!1972237 () Bool)

(assert (=> b!4680274 (=> (not res!1972237) (not e!2920083))))

(assert (=> b!4680274 (= res!1972237 (isDefined!9225 (getValueByKey!1718 (toList!5473 lt!1839787) key!4653)))))

(declare-fun b!4680275 () Bool)

(declare-fun e!2920085 () Bool)

(assert (=> b!4680275 (= e!2920085 (not (contains!15387 (keys!18616 lt!1839787) key!4653)))))

(declare-fun b!4680276 () Bool)

(declare-fun Unit!122564 () Unit!122493)

(assert (=> b!4680276 (= e!2920087 Unit!122564)))

(declare-fun b!4680277 () Bool)

(assert (=> b!4680277 (= e!2920084 e!2920087)))

(declare-fun c!800605 () Bool)

(assert (=> b!4680277 (= c!800605 call!327112)))

(declare-fun b!4680278 () Bool)

(assert (=> b!4680278 (= e!2920088 (keys!18616 lt!1839787))))

(declare-fun b!4680272 () Bool)

(assert (=> b!4680272 (= e!2920083 (contains!15387 (keys!18616 lt!1839787) key!4653))))

(declare-fun d!1487580 () Bool)

(assert (=> d!1487580 e!2920086))

(declare-fun res!1972236 () Bool)

(assert (=> d!1487580 (=> res!1972236 e!2920086)))

(assert (=> d!1487580 (= res!1972236 e!2920085)))

(declare-fun res!1972238 () Bool)

(assert (=> d!1487580 (=> (not res!1972238) (not e!2920085))))

(declare-fun lt!1840095 () Bool)

(assert (=> d!1487580 (= res!1972238 (not lt!1840095))))

(declare-fun lt!1840099 () Bool)

(assert (=> d!1487580 (= lt!1840095 lt!1840099)))

(declare-fun lt!1840097 () Unit!122493)

(assert (=> d!1487580 (= lt!1840097 e!2920084)))

(assert (=> d!1487580 (= c!800606 lt!1840099)))

(assert (=> d!1487580 (= lt!1840099 (containsKey!2938 (toList!5473 lt!1839787) key!4653))))

(assert (=> d!1487580 (= (contains!15384 lt!1839787 key!4653) lt!1840095)))

(assert (= (and d!1487580 c!800606) b!4680271))

(assert (= (and d!1487580 (not c!800606)) b!4680277))

(assert (= (and b!4680277 c!800605) b!4680270))

(assert (= (and b!4680277 (not c!800605)) b!4680276))

(assert (= (or b!4680271 b!4680277) bm!327107))

(assert (= (and bm!327107 c!800604) b!4680273))

(assert (= (and bm!327107 (not c!800604)) b!4680278))

(assert (= (and d!1487580 res!1972238) b!4680275))

(assert (= (and d!1487580 (not res!1972236)) b!4680274))

(assert (= (and b!4680274 res!1972237) b!4680272))

(declare-fun m!5576917 () Bool)

(assert (=> bm!327107 m!5576917))

(declare-fun m!5576919 () Bool)

(assert (=> b!4680272 m!5576919))

(assert (=> b!4680272 m!5576919))

(declare-fun m!5576921 () Bool)

(assert (=> b!4680272 m!5576921))

(declare-fun m!5576923 () Bool)

(assert (=> b!4680274 m!5576923))

(assert (=> b!4680274 m!5576923))

(declare-fun m!5576925 () Bool)

(assert (=> b!4680274 m!5576925))

(declare-fun m!5576927 () Bool)

(assert (=> b!4680270 m!5576927))

(declare-fun m!5576929 () Bool)

(assert (=> b!4680270 m!5576929))

(declare-fun m!5576931 () Bool)

(assert (=> b!4680273 m!5576931))

(assert (=> d!1487580 m!5576927))

(assert (=> b!4680275 m!5576919))

(assert (=> b!4680275 m!5576919))

(assert (=> b!4680275 m!5576921))

(assert (=> b!4680278 m!5576919))

(declare-fun m!5576933 () Bool)

(assert (=> b!4680271 m!5576933))

(assert (=> b!4680271 m!5576923))

(assert (=> b!4680271 m!5576923))

(assert (=> b!4680271 m!5576925))

(declare-fun m!5576935 () Bool)

(assert (=> b!4680271 m!5576935))

(assert (=> b!4680073 d!1487580))

(declare-fun bs!1082328 () Bool)

(declare-fun d!1487582 () Bool)

(assert (= bs!1082328 (and d!1487582 start!472544)))

(declare-fun lambda!204692 () Int)

(assert (=> bs!1082328 (= lambda!204692 lambda!204583)))

(declare-fun bs!1082329 () Bool)

(assert (= bs!1082329 (and d!1487582 d!1487524)))

(assert (=> bs!1082329 (= lambda!204692 lambda!204660)))

(declare-fun bs!1082330 () Bool)

(assert (= bs!1082330 (and d!1487582 d!1487552)))

(assert (=> bs!1082330 (= lambda!204692 lambda!204661)))

(declare-fun bs!1082331 () Bool)

(assert (= bs!1082331 (and d!1487582 d!1487554)))

(assert (=> bs!1082331 (= lambda!204692 lambda!204662)))

(assert (=> d!1487582 (not (contains!15384 (extractMap!1818 (toList!5474 (ListLongMap!4004 lt!1839782))) key!4653))))

(declare-fun lt!1840126 () Unit!122493)

(declare-fun choose!32386 (ListLongMap!4003 K!13630 Hashable!6161) Unit!122493)

(assert (=> d!1487582 (= lt!1840126 (choose!32386 (ListLongMap!4004 lt!1839782) key!4653 hashF!1323))))

(assert (=> d!1487582 (forall!11225 (toList!5474 (ListLongMap!4004 lt!1839782)) lambda!204692)))

(assert (=> d!1487582 (= (lemmaNotInItsHashBucketThenNotInMap!392 (ListLongMap!4004 lt!1839782) key!4653 hashF!1323) lt!1840126)))

(declare-fun bs!1082332 () Bool)

(assert (= bs!1082332 d!1487582))

(declare-fun m!5576997 () Bool)

(assert (=> bs!1082332 m!5576997))

(assert (=> bs!1082332 m!5576997))

(declare-fun m!5576999 () Bool)

(assert (=> bs!1082332 m!5576999))

(declare-fun m!5577001 () Bool)

(assert (=> bs!1082332 m!5577001))

(declare-fun m!5577003 () Bool)

(assert (=> bs!1082332 m!5577003))

(assert (=> b!4680073 d!1487582))

(declare-fun d!1487588 () Bool)

(declare-fun lt!1840129 () List!52375)

(assert (=> d!1487588 (not (containsKey!2937 lt!1840129 key!4653))))

(declare-fun e!2920097 () List!52375)

(assert (=> d!1487588 (= lt!1840129 e!2920097)))

(declare-fun c!800612 () Bool)

(assert (=> d!1487588 (= c!800612 (and ((_ is Cons!52251) oldBucket!34) (= (_1!30075 (h!58462 oldBucket!34)) key!4653)))))

(assert (=> d!1487588 (noDuplicateKeys!1792 oldBucket!34)))

(assert (=> d!1487588 (= (removePairForKey!1387 oldBucket!34 key!4653) lt!1840129)))

(declare-fun b!4680293 () Bool)

(declare-fun e!2920096 () List!52375)

(assert (=> b!4680293 (= e!2920097 e!2920096)))

(declare-fun c!800613 () Bool)

(assert (=> b!4680293 (= c!800613 ((_ is Cons!52251) oldBucket!34))))

(declare-fun b!4680292 () Bool)

(assert (=> b!4680292 (= e!2920097 (t!359529 oldBucket!34))))

(declare-fun b!4680294 () Bool)

(assert (=> b!4680294 (= e!2920096 (Cons!52251 (h!58462 oldBucket!34) (removePairForKey!1387 (t!359529 oldBucket!34) key!4653)))))

(declare-fun b!4680295 () Bool)

(assert (=> b!4680295 (= e!2920096 Nil!52251)))

(assert (= (and d!1487588 c!800612) b!4680292))

(assert (= (and d!1487588 (not c!800612)) b!4680293))

(assert (= (and b!4680293 c!800613) b!4680294))

(assert (= (and b!4680293 (not c!800613)) b!4680295))

(declare-fun m!5577013 () Bool)

(assert (=> d!1487588 m!5577013))

(assert (=> d!1487588 m!5576477))

(declare-fun m!5577015 () Bool)

(assert (=> b!4680294 m!5577015))

(assert (=> b!4680063 d!1487588))

(declare-fun bs!1082336 () Bool)

(declare-fun d!1487596 () Bool)

(assert (= bs!1082336 (and d!1487596 start!472544)))

(declare-fun lambda!204695 () Int)

(assert (=> bs!1082336 (not (= lambda!204695 lambda!204583))))

(declare-fun bs!1082337 () Bool)

(assert (= bs!1082337 (and d!1487596 d!1487524)))

(assert (=> bs!1082337 (not (= lambda!204695 lambda!204660))))

(declare-fun bs!1082338 () Bool)

(assert (= bs!1082338 (and d!1487596 d!1487554)))

(assert (=> bs!1082338 (not (= lambda!204695 lambda!204662))))

(declare-fun bs!1082339 () Bool)

(assert (= bs!1082339 (and d!1487596 d!1487582)))

(assert (=> bs!1082339 (not (= lambda!204695 lambda!204692))))

(declare-fun bs!1082340 () Bool)

(assert (= bs!1082340 (and d!1487596 d!1487552)))

(assert (=> bs!1082340 (not (= lambda!204695 lambda!204661))))

(assert (=> d!1487596 true))

(assert (=> d!1487596 (= (allKeysSameHashInMap!1706 lm!2023 hashF!1323) (forall!11225 (toList!5474 lm!2023) lambda!204695))))

(declare-fun bs!1082341 () Bool)

(assert (= bs!1082341 d!1487596))

(declare-fun m!5577017 () Bool)

(assert (=> bs!1082341 m!5577017))

(assert (=> b!4680084 d!1487596))

(declare-fun d!1487598 () Bool)

(declare-fun content!9109 (List!52375) (InoxSet tuple2!53562))

(assert (=> d!1487598 (= (eq!981 lt!1839776 lt!1839781) (= (content!9109 (toList!5473 lt!1839776)) (content!9109 (toList!5473 lt!1839781))))))

(declare-fun bs!1082342 () Bool)

(assert (= bs!1082342 d!1487598))

(declare-fun m!5577033 () Bool)

(assert (=> bs!1082342 m!5577033))

(declare-fun m!5577035 () Bool)

(assert (=> bs!1082342 m!5577035))

(assert (=> b!4680069 d!1487598))

(declare-fun bs!1082343 () Bool)

(declare-fun d!1487602 () Bool)

(assert (= bs!1082343 (and d!1487602 start!472544)))

(declare-fun lambda!204696 () Int)

(assert (=> bs!1082343 (= lambda!204696 lambda!204583)))

(declare-fun bs!1082344 () Bool)

(assert (= bs!1082344 (and d!1487602 d!1487524)))

(assert (=> bs!1082344 (= lambda!204696 lambda!204660)))

(declare-fun bs!1082345 () Bool)

(assert (= bs!1082345 (and d!1487602 d!1487554)))

(assert (=> bs!1082345 (= lambda!204696 lambda!204662)))

(declare-fun bs!1082346 () Bool)

(assert (= bs!1082346 (and d!1487602 d!1487582)))

(assert (=> bs!1082346 (= lambda!204696 lambda!204692)))

(declare-fun bs!1082347 () Bool)

(assert (= bs!1082347 (and d!1487602 d!1487596)))

(assert (=> bs!1082347 (not (= lambda!204696 lambda!204695))))

(declare-fun bs!1082348 () Bool)

(assert (= bs!1082348 (and d!1487602 d!1487552)))

(assert (=> bs!1082348 (= lambda!204696 lambda!204661)))

(declare-fun lt!1840133 () ListMap!4837)

(assert (=> d!1487602 (invariantList!1376 (toList!5473 lt!1840133))))

(declare-fun e!2920101 () ListMap!4837)

(assert (=> d!1487602 (= lt!1840133 e!2920101)))

(declare-fun c!800614 () Bool)

(assert (=> d!1487602 (= c!800614 ((_ is Cons!52252) (Cons!52252 lt!1839783 (t!359530 (toList!5474 lm!2023)))))))

(assert (=> d!1487602 (forall!11225 (Cons!52252 lt!1839783 (t!359530 (toList!5474 lm!2023))) lambda!204696)))

(assert (=> d!1487602 (= (extractMap!1818 (Cons!52252 lt!1839783 (t!359530 (toList!5474 lm!2023)))) lt!1840133)))

(declare-fun b!4680301 () Bool)

(assert (=> b!4680301 (= e!2920101 (addToMapMapFromBucket!1224 (_2!30076 (h!58463 (Cons!52252 lt!1839783 (t!359530 (toList!5474 lm!2023))))) (extractMap!1818 (t!359530 (Cons!52252 lt!1839783 (t!359530 (toList!5474 lm!2023)))))))))

(declare-fun b!4680302 () Bool)

(assert (=> b!4680302 (= e!2920101 (ListMap!4838 Nil!52251))))

(assert (= (and d!1487602 c!800614) b!4680301))

(assert (= (and d!1487602 (not c!800614)) b!4680302))

(declare-fun m!5577037 () Bool)

(assert (=> d!1487602 m!5577037))

(declare-fun m!5577039 () Bool)

(assert (=> d!1487602 m!5577039))

(declare-fun m!5577041 () Bool)

(assert (=> b!4680301 m!5577041))

(assert (=> b!4680301 m!5577041))

(declare-fun m!5577043 () Bool)

(assert (=> b!4680301 m!5577043))

(assert (=> b!4680069 d!1487602))

(declare-fun b!4680303 () Bool)

(assert (=> b!4680303 false))

(declare-fun lt!1840139 () Unit!122493)

(declare-fun lt!1840135 () Unit!122493)

(assert (=> b!4680303 (= lt!1840139 lt!1840135)))

(assert (=> b!4680303 (containsKey!2938 (toList!5473 lt!1839785) key!4653)))

(assert (=> b!4680303 (= lt!1840135 (lemmaInGetKeysListThenContainsKey!814 (toList!5473 lt!1839785) key!4653))))

(declare-fun e!2920106 () Unit!122493)

(declare-fun Unit!122572 () Unit!122493)

(assert (=> b!4680303 (= e!2920106 Unit!122572)))

(declare-fun b!4680304 () Bool)

(declare-fun e!2920103 () Unit!122493)

(declare-fun lt!1840141 () Unit!122493)

(assert (=> b!4680304 (= e!2920103 lt!1840141)))

(declare-fun lt!1840137 () Unit!122493)

(assert (=> b!4680304 (= lt!1840137 (lemmaContainsKeyImpliesGetValueByKeyDefined!1610 (toList!5473 lt!1839785) key!4653))))

(assert (=> b!4680304 (isDefined!9225 (getValueByKey!1718 (toList!5473 lt!1839785) key!4653))))

(declare-fun lt!1840140 () Unit!122493)

(assert (=> b!4680304 (= lt!1840140 lt!1840137)))

(assert (=> b!4680304 (= lt!1840141 (lemmaInListThenGetKeysListContains!810 (toList!5473 lt!1839785) key!4653))))

(declare-fun call!327116 () Bool)

(assert (=> b!4680304 call!327116))

(declare-fun bm!327111 () Bool)

(declare-fun e!2920107 () List!52377)

(assert (=> bm!327111 (= call!327116 (contains!15387 e!2920107 key!4653))))

(declare-fun c!800615 () Bool)

(declare-fun c!800617 () Bool)

(assert (=> bm!327111 (= c!800615 c!800617)))

(declare-fun b!4680306 () Bool)

(assert (=> b!4680306 (= e!2920107 (getKeysList!815 (toList!5473 lt!1839785)))))

(declare-fun b!4680307 () Bool)

(declare-fun e!2920105 () Bool)

(declare-fun e!2920102 () Bool)

(assert (=> b!4680307 (= e!2920105 e!2920102)))

(declare-fun res!1972246 () Bool)

(assert (=> b!4680307 (=> (not res!1972246) (not e!2920102))))

(assert (=> b!4680307 (= res!1972246 (isDefined!9225 (getValueByKey!1718 (toList!5473 lt!1839785) key!4653)))))

(declare-fun b!4680308 () Bool)

(declare-fun e!2920104 () Bool)

(assert (=> b!4680308 (= e!2920104 (not (contains!15387 (keys!18616 lt!1839785) key!4653)))))

(declare-fun b!4680309 () Bool)

(declare-fun Unit!122577 () Unit!122493)

(assert (=> b!4680309 (= e!2920106 Unit!122577)))

(declare-fun b!4680310 () Bool)

(assert (=> b!4680310 (= e!2920103 e!2920106)))

(declare-fun c!800616 () Bool)

(assert (=> b!4680310 (= c!800616 call!327116)))

(declare-fun b!4680311 () Bool)

(assert (=> b!4680311 (= e!2920107 (keys!18616 lt!1839785))))

(declare-fun b!4680305 () Bool)

(assert (=> b!4680305 (= e!2920102 (contains!15387 (keys!18616 lt!1839785) key!4653))))

(declare-fun d!1487604 () Bool)

(assert (=> d!1487604 e!2920105))

(declare-fun res!1972245 () Bool)

(assert (=> d!1487604 (=> res!1972245 e!2920105)))

(assert (=> d!1487604 (= res!1972245 e!2920104)))

(declare-fun res!1972247 () Bool)

(assert (=> d!1487604 (=> (not res!1972247) (not e!2920104))))

(declare-fun lt!1840134 () Bool)

(assert (=> d!1487604 (= res!1972247 (not lt!1840134))))

(declare-fun lt!1840138 () Bool)

(assert (=> d!1487604 (= lt!1840134 lt!1840138)))

(declare-fun lt!1840136 () Unit!122493)

(assert (=> d!1487604 (= lt!1840136 e!2920103)))

(assert (=> d!1487604 (= c!800617 lt!1840138)))

(assert (=> d!1487604 (= lt!1840138 (containsKey!2938 (toList!5473 lt!1839785) key!4653))))

(assert (=> d!1487604 (= (contains!15384 lt!1839785 key!4653) lt!1840134)))

(assert (= (and d!1487604 c!800617) b!4680304))

(assert (= (and d!1487604 (not c!800617)) b!4680310))

(assert (= (and b!4680310 c!800616) b!4680303))

(assert (= (and b!4680310 (not c!800616)) b!4680309))

(assert (= (or b!4680304 b!4680310) bm!327111))

(assert (= (and bm!327111 c!800615) b!4680306))

(assert (= (and bm!327111 (not c!800615)) b!4680311))

(assert (= (and d!1487604 res!1972247) b!4680308))

(assert (= (and d!1487604 (not res!1972245)) b!4680307))

(assert (= (and b!4680307 res!1972246) b!4680305))

(declare-fun m!5577045 () Bool)

(assert (=> bm!327111 m!5577045))

(declare-fun m!5577047 () Bool)

(assert (=> b!4680305 m!5577047))

(assert (=> b!4680305 m!5577047))

(declare-fun m!5577049 () Bool)

(assert (=> b!4680305 m!5577049))

(declare-fun m!5577051 () Bool)

(assert (=> b!4680307 m!5577051))

(assert (=> b!4680307 m!5577051))

(declare-fun m!5577053 () Bool)

(assert (=> b!4680307 m!5577053))

(declare-fun m!5577055 () Bool)

(assert (=> b!4680303 m!5577055))

(declare-fun m!5577057 () Bool)

(assert (=> b!4680303 m!5577057))

(declare-fun m!5577059 () Bool)

(assert (=> b!4680306 m!5577059))

(assert (=> d!1487604 m!5577055))

(assert (=> b!4680308 m!5577047))

(assert (=> b!4680308 m!5577047))

(assert (=> b!4680308 m!5577049))

(assert (=> b!4680311 m!5577047))

(declare-fun m!5577061 () Bool)

(assert (=> b!4680304 m!5577061))

(assert (=> b!4680304 m!5577051))

(assert (=> b!4680304 m!5577051))

(assert (=> b!4680304 m!5577053))

(declare-fun m!5577063 () Bool)

(assert (=> b!4680304 m!5577063))

(assert (=> b!4680080 d!1487604))

(declare-fun bs!1082349 () Bool)

(declare-fun d!1487606 () Bool)

(assert (= bs!1082349 (and d!1487606 d!1487524)))

(declare-fun lambda!204697 () Int)

(assert (=> bs!1082349 (= lambda!204697 lambda!204660)))

(declare-fun bs!1082350 () Bool)

(assert (= bs!1082350 (and d!1487606 d!1487554)))

(assert (=> bs!1082350 (= lambda!204697 lambda!204662)))

(declare-fun bs!1082351 () Bool)

(assert (= bs!1082351 (and d!1487606 d!1487582)))

(assert (=> bs!1082351 (= lambda!204697 lambda!204692)))

(declare-fun bs!1082352 () Bool)

(assert (= bs!1082352 (and d!1487606 d!1487596)))

(assert (=> bs!1082352 (not (= lambda!204697 lambda!204695))))

(declare-fun bs!1082353 () Bool)

(assert (= bs!1082353 (and d!1487606 d!1487552)))

(assert (=> bs!1082353 (= lambda!204697 lambda!204661)))

(declare-fun bs!1082354 () Bool)

(assert (= bs!1082354 (and d!1487606 start!472544)))

(assert (=> bs!1082354 (= lambda!204697 lambda!204583)))

(declare-fun bs!1082355 () Bool)

(assert (= bs!1082355 (and d!1487606 d!1487602)))

(assert (=> bs!1082355 (= lambda!204697 lambda!204696)))

(declare-fun lt!1840142 () ListMap!4837)

(assert (=> d!1487606 (invariantList!1376 (toList!5473 lt!1840142))))

(declare-fun e!2920108 () ListMap!4837)

(assert (=> d!1487606 (= lt!1840142 e!2920108)))

(declare-fun c!800618 () Bool)

(assert (=> d!1487606 (= c!800618 ((_ is Cons!52252) (toList!5474 lm!2023)))))

(assert (=> d!1487606 (forall!11225 (toList!5474 lm!2023) lambda!204697)))

(assert (=> d!1487606 (= (extractMap!1818 (toList!5474 lm!2023)) lt!1840142)))

(declare-fun b!4680312 () Bool)

(assert (=> b!4680312 (= e!2920108 (addToMapMapFromBucket!1224 (_2!30076 (h!58463 (toList!5474 lm!2023))) (extractMap!1818 (t!359530 (toList!5474 lm!2023)))))))

(declare-fun b!4680313 () Bool)

(assert (=> b!4680313 (= e!2920108 (ListMap!4838 Nil!52251))))

(assert (= (and d!1487606 c!800618) b!4680312))

(assert (= (and d!1487606 (not c!800618)) b!4680313))

(declare-fun m!5577065 () Bool)

(assert (=> d!1487606 m!5577065))

(declare-fun m!5577067 () Bool)

(assert (=> d!1487606 m!5577067))

(assert (=> b!4680312 m!5576515))

(assert (=> b!4680312 m!5576515))

(declare-fun m!5577069 () Bool)

(assert (=> b!4680312 m!5577069))

(assert (=> b!4680080 d!1487606))

(declare-fun d!1487608 () Bool)

(declare-fun res!1972248 () Bool)

(declare-fun e!2920109 () Bool)

(assert (=> d!1487608 (=> res!1972248 e!2920109)))

(assert (=> d!1487608 (= res!1972248 (not ((_ is Cons!52251) newBucket!218)))))

(assert (=> d!1487608 (= (noDuplicateKeys!1792 newBucket!218) e!2920109)))

(declare-fun b!4680314 () Bool)

(declare-fun e!2920110 () Bool)

(assert (=> b!4680314 (= e!2920109 e!2920110)))

(declare-fun res!1972249 () Bool)

(assert (=> b!4680314 (=> (not res!1972249) (not e!2920110))))

(assert (=> b!4680314 (= res!1972249 (not (containsKey!2937 (t!359529 newBucket!218) (_1!30075 (h!58462 newBucket!218)))))))

(declare-fun b!4680315 () Bool)

(assert (=> b!4680315 (= e!2920110 (noDuplicateKeys!1792 (t!359529 newBucket!218)))))

(assert (= (and d!1487608 (not res!1972248)) b!4680314))

(assert (= (and b!4680314 res!1972249) b!4680315))

(declare-fun m!5577071 () Bool)

(assert (=> b!4680314 m!5577071))

(declare-fun m!5577073 () Bool)

(assert (=> b!4680315 m!5577073))

(assert (=> b!4680081 d!1487608))

(declare-fun d!1487610 () Bool)

(declare-fun res!1972250 () Bool)

(declare-fun e!2920111 () Bool)

(assert (=> d!1487610 (=> res!1972250 e!2920111)))

(assert (=> d!1487610 (= res!1972250 ((_ is Nil!52252) (toList!5474 lm!2023)))))

(assert (=> d!1487610 (= (forall!11225 (toList!5474 lm!2023) lambda!204583) e!2920111)))

(declare-fun b!4680316 () Bool)

(declare-fun e!2920112 () Bool)

(assert (=> b!4680316 (= e!2920111 e!2920112)))

(declare-fun res!1972251 () Bool)

(assert (=> b!4680316 (=> (not res!1972251) (not e!2920112))))

(assert (=> b!4680316 (= res!1972251 (dynLambda!21678 lambda!204583 (h!58463 (toList!5474 lm!2023))))))

(declare-fun b!4680317 () Bool)

(assert (=> b!4680317 (= e!2920112 (forall!11225 (t!359530 (toList!5474 lm!2023)) lambda!204583))))

(assert (= (and d!1487610 (not res!1972250)) b!4680316))

(assert (= (and b!4680316 res!1972251) b!4680317))

(declare-fun b_lambda!176667 () Bool)

(assert (=> (not b_lambda!176667) (not b!4680316)))

(declare-fun m!5577075 () Bool)

(assert (=> b!4680316 m!5577075))

(declare-fun m!5577077 () Bool)

(assert (=> b!4680317 m!5577077))

(assert (=> start!472544 d!1487610))

(declare-fun d!1487612 () Bool)

(declare-fun isStrictlySorted!616 (List!52376) Bool)

(assert (=> d!1487612 (= (inv!67504 lm!2023) (isStrictlySorted!616 (toList!5474 lm!2023)))))

(declare-fun bs!1082356 () Bool)

(assert (= bs!1082356 d!1487612))

(declare-fun m!5577079 () Bool)

(assert (=> bs!1082356 m!5577079))

(assert (=> start!472544 d!1487612))

(declare-fun d!1487614 () Bool)

(assert (=> d!1487614 (= (eq!981 lt!1839786 lt!1839787) (= (content!9109 (toList!5473 lt!1839786)) (content!9109 (toList!5473 lt!1839787))))))

(declare-fun bs!1082357 () Bool)

(assert (= bs!1082357 d!1487614))

(declare-fun m!5577081 () Bool)

(assert (=> bs!1082357 m!5577081))

(declare-fun m!5577083 () Bool)

(assert (=> bs!1082357 m!5577083))

(assert (=> b!4680070 d!1487614))

(declare-fun d!1487616 () Bool)

(assert (=> d!1487616 (= (eq!981 lt!1839784 lt!1839786) (= (content!9109 (toList!5473 lt!1839784)) (content!9109 (toList!5473 lt!1839786))))))

(declare-fun bs!1082358 () Bool)

(assert (= bs!1082358 d!1487616))

(declare-fun m!5577085 () Bool)

(assert (=> bs!1082358 m!5577085))

(assert (=> bs!1082358 m!5577081))

(assert (=> b!4680070 d!1487616))

(declare-fun d!1487618 () Bool)

(declare-fun e!2920113 () Bool)

(assert (=> d!1487618 e!2920113))

(declare-fun res!1972252 () Bool)

(assert (=> d!1487618 (=> (not res!1972252) (not e!2920113))))

(declare-fun lt!1840146 () ListMap!4837)

(assert (=> d!1487618 (= res!1972252 (not (contains!15384 lt!1840146 key!4653)))))

(assert (=> d!1487618 (= lt!1840146 (ListMap!4838 (removePresrvNoDuplicatedKeys!328 (toList!5473 lt!1839781) key!4653)))))

(assert (=> d!1487618 (= (-!656 lt!1839781 key!4653) lt!1840146)))

(declare-fun b!4680318 () Bool)

(assert (=> b!4680318 (= e!2920113 (= ((_ map and) (content!9107 (keys!18616 lt!1839781)) ((_ map not) (store ((as const (Array K!13630 Bool)) false) key!4653 true))) (content!9107 (keys!18616 lt!1840146))))))

(assert (= (and d!1487618 res!1972252) b!4680318))

(declare-fun m!5577091 () Bool)

(assert (=> d!1487618 m!5577091))

(declare-fun m!5577093 () Bool)

(assert (=> d!1487618 m!5577093))

(declare-fun m!5577095 () Bool)

(assert (=> b!4680318 m!5577095))

(declare-fun m!5577097 () Bool)

(assert (=> b!4680318 m!5577097))

(declare-fun m!5577099 () Bool)

(assert (=> b!4680318 m!5577099))

(assert (=> b!4680318 m!5577095))

(assert (=> b!4680318 m!5577099))

(declare-fun m!5577101 () Bool)

(assert (=> b!4680318 m!5577101))

(assert (=> b!4680318 m!5576559))

(assert (=> b!4680070 d!1487618))

(declare-fun d!1487622 () Bool)

(assert (=> d!1487622 (eq!981 (-!656 lt!1839776 key!4653) (-!656 lt!1839781 key!4653))))

(declare-fun lt!1840155 () Unit!122493)

(declare-fun choose!32387 (ListMap!4837 ListMap!4837 K!13630) Unit!122493)

(assert (=> d!1487622 (= lt!1840155 (choose!32387 lt!1839776 lt!1839781 key!4653))))

(assert (=> d!1487622 (eq!981 lt!1839776 lt!1839781)))

(assert (=> d!1487622 (= (lemmaRemovePreservesEq!76 lt!1839776 lt!1839781 key!4653) lt!1840155)))

(declare-fun bs!1082360 () Bool)

(assert (= bs!1082360 d!1487622))

(assert (=> bs!1082360 m!5576509))

(assert (=> bs!1082360 m!5576525))

(assert (=> bs!1082360 m!5576541))

(declare-fun m!5577139 () Bool)

(assert (=> bs!1082360 m!5577139))

(assert (=> bs!1082360 m!5576541))

(declare-fun m!5577141 () Bool)

(assert (=> bs!1082360 m!5577141))

(assert (=> bs!1082360 m!5576525))

(assert (=> b!4680070 d!1487622))

(declare-fun d!1487630 () Bool)

(declare-fun e!2920117 () Bool)

(assert (=> d!1487630 e!2920117))

(declare-fun res!1972257 () Bool)

(assert (=> d!1487630 (=> (not res!1972257) (not e!2920117))))

(declare-fun lt!1840157 () ListMap!4837)

(assert (=> d!1487630 (= res!1972257 (contains!15384 lt!1840157 (_1!30075 (h!58462 oldBucket!34))))))

(declare-fun lt!1840159 () List!52375)

(assert (=> d!1487630 (= lt!1840157 (ListMap!4838 lt!1840159))))

(declare-fun lt!1840158 () Unit!122493)

(declare-fun lt!1840156 () Unit!122493)

(assert (=> d!1487630 (= lt!1840158 lt!1840156)))

(assert (=> d!1487630 (= (getValueByKey!1718 lt!1840159 (_1!30075 (h!58462 oldBucket!34))) (Some!11969 (_2!30075 (h!58462 oldBucket!34))))))

(assert (=> d!1487630 (= lt!1840156 (lemmaContainsTupThenGetReturnValue!977 lt!1840159 (_1!30075 (h!58462 oldBucket!34)) (_2!30075 (h!58462 oldBucket!34))))))

(assert (=> d!1487630 (= lt!1840159 (insertNoDuplicatedKeys!485 (toList!5473 lt!1839788) (_1!30075 (h!58462 oldBucket!34)) (_2!30075 (h!58462 oldBucket!34))))))

(assert (=> d!1487630 (= (+!2094 lt!1839788 (h!58462 oldBucket!34)) lt!1840157)))

(declare-fun b!4680323 () Bool)

(declare-fun res!1972258 () Bool)

(assert (=> b!4680323 (=> (not res!1972258) (not e!2920117))))

(assert (=> b!4680323 (= res!1972258 (= (getValueByKey!1718 (toList!5473 lt!1840157) (_1!30075 (h!58462 oldBucket!34))) (Some!11969 (_2!30075 (h!58462 oldBucket!34)))))))

(declare-fun b!4680324 () Bool)

(assert (=> b!4680324 (= e!2920117 (contains!15385 (toList!5473 lt!1840157) (h!58462 oldBucket!34)))))

(assert (= (and d!1487630 res!1972257) b!4680323))

(assert (= (and b!4680323 res!1972258) b!4680324))

(declare-fun m!5577143 () Bool)

(assert (=> d!1487630 m!5577143))

(declare-fun m!5577145 () Bool)

(assert (=> d!1487630 m!5577145))

(declare-fun m!5577147 () Bool)

(assert (=> d!1487630 m!5577147))

(declare-fun m!5577149 () Bool)

(assert (=> d!1487630 m!5577149))

(declare-fun m!5577151 () Bool)

(assert (=> b!4680323 m!5577151))

(declare-fun m!5577153 () Bool)

(assert (=> b!4680324 m!5577153))

(assert (=> b!4680071 d!1487630))

(declare-fun d!1487632 () Bool)

(declare-fun e!2920118 () Bool)

(assert (=> d!1487632 e!2920118))

(declare-fun res!1972259 () Bool)

(assert (=> d!1487632 (=> (not res!1972259) (not e!2920118))))

(declare-fun lt!1840161 () ListMap!4837)

(assert (=> d!1487632 (= res!1972259 (contains!15384 lt!1840161 (_1!30075 lt!1839774)))))

(declare-fun lt!1840163 () List!52375)

(assert (=> d!1487632 (= lt!1840161 (ListMap!4838 lt!1840163))))

(declare-fun lt!1840162 () Unit!122493)

(declare-fun lt!1840160 () Unit!122493)

(assert (=> d!1487632 (= lt!1840162 lt!1840160)))

(assert (=> d!1487632 (= (getValueByKey!1718 lt!1840163 (_1!30075 lt!1839774)) (Some!11969 (_2!30075 lt!1839774)))))

(assert (=> d!1487632 (= lt!1840160 (lemmaContainsTupThenGetReturnValue!977 lt!1840163 (_1!30075 lt!1839774) (_2!30075 lt!1839774)))))

(assert (=> d!1487632 (= lt!1840163 (insertNoDuplicatedKeys!485 (toList!5473 lt!1839788) (_1!30075 lt!1839774) (_2!30075 lt!1839774)))))

(assert (=> d!1487632 (= (+!2094 lt!1839788 lt!1839774) lt!1840161)))

(declare-fun b!4680325 () Bool)

(declare-fun res!1972260 () Bool)

(assert (=> b!4680325 (=> (not res!1972260) (not e!2920118))))

(assert (=> b!4680325 (= res!1972260 (= (getValueByKey!1718 (toList!5473 lt!1840161) (_1!30075 lt!1839774)) (Some!11969 (_2!30075 lt!1839774))))))

(declare-fun b!4680326 () Bool)

(assert (=> b!4680326 (= e!2920118 (contains!15385 (toList!5473 lt!1840161) lt!1839774))))

(assert (= (and d!1487632 res!1972259) b!4680325))

(assert (= (and b!4680325 res!1972260) b!4680326))

(declare-fun m!5577155 () Bool)

(assert (=> d!1487632 m!5577155))

(declare-fun m!5577157 () Bool)

(assert (=> d!1487632 m!5577157))

(declare-fun m!5577159 () Bool)

(assert (=> d!1487632 m!5577159))

(declare-fun m!5577161 () Bool)

(assert (=> d!1487632 m!5577161))

(declare-fun m!5577163 () Bool)

(assert (=> b!4680325 m!5577163))

(declare-fun m!5577165 () Bool)

(assert (=> b!4680326 m!5577165))

(assert (=> b!4680071 d!1487632))

(declare-fun d!1487634 () Bool)

(assert (=> d!1487634 (= (head!9875 oldBucket!34) (h!58462 oldBucket!34))))

(assert (=> b!4680071 d!1487634))

(declare-fun d!1487636 () Bool)

(assert (=> d!1487636 (= (eq!981 (addToMapMapFromBucket!1224 (Cons!52251 lt!1839774 lt!1839778) lt!1839775) (+!2094 lt!1839788 lt!1839774)) (= (content!9109 (toList!5473 (addToMapMapFromBucket!1224 (Cons!52251 lt!1839774 lt!1839778) lt!1839775))) (content!9109 (toList!5473 (+!2094 lt!1839788 lt!1839774)))))))

(declare-fun bs!1082361 () Bool)

(assert (= bs!1082361 d!1487636))

(declare-fun m!5577167 () Bool)

(assert (=> bs!1082361 m!5577167))

(declare-fun m!5577169 () Bool)

(assert (=> bs!1082361 m!5577169))

(assert (=> b!4680071 d!1487636))

(declare-fun bs!1082363 () Bool)

(declare-fun b!4680328 () Bool)

(assert (= bs!1082363 (and b!4680328 b!4680145)))

(declare-fun lambda!204698 () Int)

(assert (=> bs!1082363 (= lambda!204698 lambda!204646)))

(declare-fun bs!1082364 () Bool)

(assert (= bs!1082364 (and b!4680328 b!4680202)))

(assert (=> bs!1082364 (= lambda!204698 lambda!204666)))

(declare-fun bs!1082365 () Bool)

(assert (= bs!1082365 (and b!4680328 d!1487558)))

(assert (=> bs!1082365 (not (= lambda!204698 lambda!204663))))

(declare-fun bs!1082367 () Bool)

(assert (= bs!1082367 (and b!4680328 b!4680146)))

(assert (=> bs!1082367 (= (= lt!1839775 lt!1839916) (= lambda!204698 lambda!204649))))

(declare-fun bs!1082368 () Bool)

(assert (= bs!1082368 (and b!4680328 d!1487560)))

(assert (=> bs!1082368 (= (= lt!1839775 lt!1839997) (= lambda!204698 lambda!204672))))

(assert (=> bs!1082367 (= lambda!204698 lambda!204647)))

(declare-fun bs!1082371 () Bool)

(assert (= bs!1082371 (and b!4680328 b!4680203)))

(assert (=> bs!1082371 (= (= lt!1839775 lt!1839988) (= lambda!204698 lambda!204669))))

(declare-fun bs!1082372 () Bool)

(assert (= bs!1082372 (and b!4680328 d!1487520)))

(assert (=> bs!1082372 (= (= lt!1839775 lt!1839925) (= lambda!204698 lambda!204652))))

(assert (=> bs!1082371 (= lambda!204698 lambda!204668)))

(declare-fun bs!1082373 () Bool)

(assert (= bs!1082373 (and b!4680328 d!1487566)))

(assert (=> bs!1082373 (= (= lt!1839775 lt!1840039) (= lambda!204698 lambda!204678))))

(declare-fun bs!1082374 () Bool)

(assert (= bs!1082374 (and b!4680328 b!4680215)))

(assert (=> bs!1082374 (= lambda!204698 lambda!204676)))

(declare-fun bs!1082375 () Bool)

(assert (= bs!1082375 (and b!4680328 d!1487494)))

(assert (=> bs!1082375 (not (= lambda!204698 lambda!204586))))

(declare-fun bs!1082376 () Bool)

(assert (= bs!1082376 (and b!4680328 b!4680214)))

(assert (=> bs!1082376 (= lambda!204698 lambda!204675)))

(assert (=> bs!1082374 (= (= lt!1839775 lt!1840030) (= lambda!204698 lambda!204677))))

(assert (=> b!4680328 true))

(declare-fun bs!1082380 () Bool)

(declare-fun b!4680329 () Bool)

(assert (= bs!1082380 (and b!4680329 b!4680145)))

(declare-fun lambda!204701 () Int)

(assert (=> bs!1082380 (= lambda!204701 lambda!204646)))

(declare-fun bs!1082382 () Bool)

(assert (= bs!1082382 (and b!4680329 b!4680202)))

(assert (=> bs!1082382 (= lambda!204701 lambda!204666)))

(declare-fun bs!1082383 () Bool)

(assert (= bs!1082383 (and b!4680329 d!1487558)))

(assert (=> bs!1082383 (not (= lambda!204701 lambda!204663))))

(declare-fun bs!1082384 () Bool)

(assert (= bs!1082384 (and b!4680329 b!4680146)))

(assert (=> bs!1082384 (= (= lt!1839775 lt!1839916) (= lambda!204701 lambda!204649))))

(declare-fun bs!1082385 () Bool)

(assert (= bs!1082385 (and b!4680329 d!1487560)))

(assert (=> bs!1082385 (= (= lt!1839775 lt!1839997) (= lambda!204701 lambda!204672))))

(assert (=> bs!1082384 (= lambda!204701 lambda!204647)))

(declare-fun bs!1082386 () Bool)

(assert (= bs!1082386 (and b!4680329 b!4680203)))

(assert (=> bs!1082386 (= (= lt!1839775 lt!1839988) (= lambda!204701 lambda!204669))))

(declare-fun bs!1082387 () Bool)

(assert (= bs!1082387 (and b!4680329 d!1487520)))

(assert (=> bs!1082387 (= (= lt!1839775 lt!1839925) (= lambda!204701 lambda!204652))))

(declare-fun bs!1082388 () Bool)

(assert (= bs!1082388 (and b!4680329 b!4680328)))

(assert (=> bs!1082388 (= lambda!204701 lambda!204698)))

(assert (=> bs!1082386 (= lambda!204701 lambda!204668)))

(declare-fun bs!1082389 () Bool)

(assert (= bs!1082389 (and b!4680329 d!1487566)))

(assert (=> bs!1082389 (= (= lt!1839775 lt!1840039) (= lambda!204701 lambda!204678))))

(declare-fun bs!1082390 () Bool)

(assert (= bs!1082390 (and b!4680329 b!4680215)))

(assert (=> bs!1082390 (= lambda!204701 lambda!204676)))

(declare-fun bs!1082391 () Bool)

(assert (= bs!1082391 (and b!4680329 d!1487494)))

(assert (=> bs!1082391 (not (= lambda!204701 lambda!204586))))

(declare-fun bs!1082392 () Bool)

(assert (= bs!1082392 (and b!4680329 b!4680214)))

(assert (=> bs!1082392 (= lambda!204701 lambda!204675)))

(assert (=> bs!1082390 (= (= lt!1839775 lt!1840030) (= lambda!204701 lambda!204677))))

(assert (=> b!4680329 true))

(declare-fun lambda!204702 () Int)

(declare-fun lt!1840174 () ListMap!4837)

(assert (=> bs!1082380 (= (= lt!1840174 lt!1839775) (= lambda!204702 lambda!204646))))

(assert (=> bs!1082382 (= (= lt!1840174 lt!1839775) (= lambda!204702 lambda!204666))))

(assert (=> bs!1082384 (= (= lt!1840174 lt!1839916) (= lambda!204702 lambda!204649))))

(assert (=> bs!1082385 (= (= lt!1840174 lt!1839997) (= lambda!204702 lambda!204672))))

(assert (=> bs!1082384 (= (= lt!1840174 lt!1839775) (= lambda!204702 lambda!204647))))

(assert (=> bs!1082386 (= (= lt!1840174 lt!1839988) (= lambda!204702 lambda!204669))))

(assert (=> bs!1082387 (= (= lt!1840174 lt!1839925) (= lambda!204702 lambda!204652))))

(assert (=> bs!1082388 (= (= lt!1840174 lt!1839775) (= lambda!204702 lambda!204698))))

(assert (=> bs!1082386 (= (= lt!1840174 lt!1839775) (= lambda!204702 lambda!204668))))

(assert (=> bs!1082389 (= (= lt!1840174 lt!1840039) (= lambda!204702 lambda!204678))))

(assert (=> b!4680329 (= (= lt!1840174 lt!1839775) (= lambda!204702 lambda!204701))))

(assert (=> bs!1082383 (not (= lambda!204702 lambda!204663))))

(assert (=> bs!1082390 (= (= lt!1840174 lt!1839775) (= lambda!204702 lambda!204676))))

(assert (=> bs!1082391 (not (= lambda!204702 lambda!204586))))

(assert (=> bs!1082392 (= (= lt!1840174 lt!1839775) (= lambda!204702 lambda!204675))))

(assert (=> bs!1082390 (= (= lt!1840174 lt!1840030) (= lambda!204702 lambda!204677))))

(assert (=> b!4680329 true))

(declare-fun bs!1082393 () Bool)

(declare-fun d!1487638 () Bool)

(assert (= bs!1082393 (and d!1487638 b!4680145)))

(declare-fun lambda!204703 () Int)

(declare-fun lt!1840183 () ListMap!4837)

(assert (=> bs!1082393 (= (= lt!1840183 lt!1839775) (= lambda!204703 lambda!204646))))

(declare-fun bs!1082394 () Bool)

(assert (= bs!1082394 (and d!1487638 b!4680202)))

(assert (=> bs!1082394 (= (= lt!1840183 lt!1839775) (= lambda!204703 lambda!204666))))

(declare-fun bs!1082395 () Bool)

(assert (= bs!1082395 (and d!1487638 b!4680146)))

(assert (=> bs!1082395 (= (= lt!1840183 lt!1839916) (= lambda!204703 lambda!204649))))

(declare-fun bs!1082396 () Bool)

(assert (= bs!1082396 (and d!1487638 b!4680329)))

(assert (=> bs!1082396 (= (= lt!1840183 lt!1840174) (= lambda!204703 lambda!204702))))

(declare-fun bs!1082397 () Bool)

(assert (= bs!1082397 (and d!1487638 d!1487560)))

(assert (=> bs!1082397 (= (= lt!1840183 lt!1839997) (= lambda!204703 lambda!204672))))

(assert (=> bs!1082395 (= (= lt!1840183 lt!1839775) (= lambda!204703 lambda!204647))))

(declare-fun bs!1082398 () Bool)

(assert (= bs!1082398 (and d!1487638 b!4680203)))

(assert (=> bs!1082398 (= (= lt!1840183 lt!1839988) (= lambda!204703 lambda!204669))))

(declare-fun bs!1082399 () Bool)

(assert (= bs!1082399 (and d!1487638 d!1487520)))

(assert (=> bs!1082399 (= (= lt!1840183 lt!1839925) (= lambda!204703 lambda!204652))))

(declare-fun bs!1082400 () Bool)

(assert (= bs!1082400 (and d!1487638 b!4680328)))

(assert (=> bs!1082400 (= (= lt!1840183 lt!1839775) (= lambda!204703 lambda!204698))))

(assert (=> bs!1082398 (= (= lt!1840183 lt!1839775) (= lambda!204703 lambda!204668))))

(declare-fun bs!1082401 () Bool)

(assert (= bs!1082401 (and d!1487638 d!1487566)))

(assert (=> bs!1082401 (= (= lt!1840183 lt!1840039) (= lambda!204703 lambda!204678))))

(assert (=> bs!1082396 (= (= lt!1840183 lt!1839775) (= lambda!204703 lambda!204701))))

(declare-fun bs!1082402 () Bool)

(assert (= bs!1082402 (and d!1487638 d!1487558)))

(assert (=> bs!1082402 (not (= lambda!204703 lambda!204663))))

(declare-fun bs!1082403 () Bool)

(assert (= bs!1082403 (and d!1487638 b!4680215)))

(assert (=> bs!1082403 (= (= lt!1840183 lt!1839775) (= lambda!204703 lambda!204676))))

(declare-fun bs!1082404 () Bool)

(assert (= bs!1082404 (and d!1487638 d!1487494)))

(assert (=> bs!1082404 (not (= lambda!204703 lambda!204586))))

(declare-fun bs!1082405 () Bool)

(assert (= bs!1082405 (and d!1487638 b!4680214)))

(assert (=> bs!1082405 (= (= lt!1840183 lt!1839775) (= lambda!204703 lambda!204675))))

(assert (=> bs!1082403 (= (= lt!1840183 lt!1840030) (= lambda!204703 lambda!204677))))

(assert (=> d!1487638 true))

(declare-fun b!4680327 () Bool)

(declare-fun e!2920121 () Bool)

(assert (=> b!4680327 (= e!2920121 (forall!11226 (toList!5473 lt!1839775) lambda!204702))))

(declare-fun bm!327112 () Bool)

(declare-fun call!327119 () Bool)

(declare-fun c!800619 () Bool)

(assert (=> bm!327112 (= call!327119 (forall!11226 (ite c!800619 (toList!5473 lt!1839775) oldBucket!34) (ite c!800619 lambda!204698 lambda!204702)))))

(declare-fun e!2920120 () ListMap!4837)

(assert (=> b!4680328 (= e!2920120 lt!1839775)))

(declare-fun lt!1840178 () Unit!122493)

(declare-fun call!327117 () Unit!122493)

(assert (=> b!4680328 (= lt!1840178 call!327117)))

(declare-fun call!327118 () Bool)

(assert (=> b!4680328 call!327118))

(declare-fun lt!1840175 () Unit!122493)

(assert (=> b!4680328 (= lt!1840175 lt!1840178)))

(assert (=> b!4680328 call!327119))

(declare-fun lt!1840184 () Unit!122493)

(declare-fun Unit!122589 () Unit!122493)

(assert (=> b!4680328 (= lt!1840184 Unit!122589)))

(assert (=> b!4680329 (= e!2920120 lt!1840174)))

(declare-fun lt!1840173 () ListMap!4837)

(assert (=> b!4680329 (= lt!1840173 (+!2094 lt!1839775 (h!58462 oldBucket!34)))))

(assert (=> b!4680329 (= lt!1840174 (addToMapMapFromBucket!1224 (t!359529 oldBucket!34) (+!2094 lt!1839775 (h!58462 oldBucket!34))))))

(declare-fun lt!1840186 () Unit!122493)

(assert (=> b!4680329 (= lt!1840186 call!327117)))

(assert (=> b!4680329 call!327118))

(declare-fun lt!1840182 () Unit!122493)

(assert (=> b!4680329 (= lt!1840182 lt!1840186)))

(assert (=> b!4680329 (forall!11226 (toList!5473 lt!1840173) lambda!204702)))

(declare-fun lt!1840185 () Unit!122493)

(declare-fun Unit!122590 () Unit!122493)

(assert (=> b!4680329 (= lt!1840185 Unit!122590)))

(assert (=> b!4680329 (forall!11226 (t!359529 oldBucket!34) lambda!204702)))

(declare-fun lt!1840177 () Unit!122493)

(declare-fun Unit!122591 () Unit!122493)

(assert (=> b!4680329 (= lt!1840177 Unit!122591)))

(declare-fun lt!1840181 () Unit!122493)

(declare-fun Unit!122592 () Unit!122493)

(assert (=> b!4680329 (= lt!1840181 Unit!122592)))

(declare-fun lt!1840169 () Unit!122493)

(assert (=> b!4680329 (= lt!1840169 (forallContained!3348 (toList!5473 lt!1840173) lambda!204702 (h!58462 oldBucket!34)))))

(assert (=> b!4680329 (contains!15384 lt!1840173 (_1!30075 (h!58462 oldBucket!34)))))

(declare-fun lt!1840176 () Unit!122493)

(declare-fun Unit!122593 () Unit!122493)

(assert (=> b!4680329 (= lt!1840176 Unit!122593)))

(assert (=> b!4680329 (contains!15384 lt!1840174 (_1!30075 (h!58462 oldBucket!34)))))

(declare-fun lt!1840179 () Unit!122493)

(declare-fun Unit!122594 () Unit!122493)

(assert (=> b!4680329 (= lt!1840179 Unit!122594)))

(assert (=> b!4680329 call!327119))

(declare-fun lt!1840171 () Unit!122493)

(declare-fun Unit!122595 () Unit!122493)

(assert (=> b!4680329 (= lt!1840171 Unit!122595)))

(assert (=> b!4680329 (forall!11226 (toList!5473 lt!1840173) lambda!204702)))

(declare-fun lt!1840168 () Unit!122493)

(declare-fun Unit!122596 () Unit!122493)

(assert (=> b!4680329 (= lt!1840168 Unit!122596)))

(declare-fun lt!1840180 () Unit!122493)

(declare-fun Unit!122597 () Unit!122493)

(assert (=> b!4680329 (= lt!1840180 Unit!122597)))

(declare-fun lt!1840172 () Unit!122493)

(assert (=> b!4680329 (= lt!1840172 (addForallContainsKeyThenBeforeAdding!663 lt!1839775 lt!1840174 (_1!30075 (h!58462 oldBucket!34)) (_2!30075 (h!58462 oldBucket!34))))))

(assert (=> b!4680329 (forall!11226 (toList!5473 lt!1839775) lambda!204702)))

(declare-fun lt!1840187 () Unit!122493)

(assert (=> b!4680329 (= lt!1840187 lt!1840172)))

(assert (=> b!4680329 (forall!11226 (toList!5473 lt!1839775) lambda!204702)))

(declare-fun lt!1840167 () Unit!122493)

(declare-fun Unit!122598 () Unit!122493)

(assert (=> b!4680329 (= lt!1840167 Unit!122598)))

(declare-fun res!1972262 () Bool)

(assert (=> b!4680329 (= res!1972262 (forall!11226 oldBucket!34 lambda!204702))))

(assert (=> b!4680329 (=> (not res!1972262) (not e!2920121))))

(assert (=> b!4680329 e!2920121))

(declare-fun lt!1840170 () Unit!122493)

(declare-fun Unit!122599 () Unit!122493)

(assert (=> b!4680329 (= lt!1840170 Unit!122599)))

(declare-fun b!4680330 () Bool)

(declare-fun res!1972261 () Bool)

(declare-fun e!2920119 () Bool)

(assert (=> b!4680330 (=> (not res!1972261) (not e!2920119))))

(assert (=> b!4680330 (= res!1972261 (forall!11226 (toList!5473 lt!1839775) lambda!204703))))

(assert (=> d!1487638 e!2920119))

(declare-fun res!1972263 () Bool)

(assert (=> d!1487638 (=> (not res!1972263) (not e!2920119))))

(assert (=> d!1487638 (= res!1972263 (forall!11226 oldBucket!34 lambda!204703))))

(assert (=> d!1487638 (= lt!1840183 e!2920120)))

(assert (=> d!1487638 (= c!800619 ((_ is Nil!52251) oldBucket!34))))

(assert (=> d!1487638 (noDuplicateKeys!1792 oldBucket!34)))

(assert (=> d!1487638 (= (addToMapMapFromBucket!1224 oldBucket!34 lt!1839775) lt!1840183)))

(declare-fun b!4680331 () Bool)

(assert (=> b!4680331 (= e!2920119 (invariantList!1376 (toList!5473 lt!1840183)))))

(declare-fun bm!327113 () Bool)

(assert (=> bm!327113 (= call!327118 (forall!11226 (toList!5473 lt!1839775) (ite c!800619 lambda!204698 lambda!204701)))))

(declare-fun bm!327114 () Bool)

(assert (=> bm!327114 (= call!327117 (lemmaContainsAllItsOwnKeys!664 lt!1839775))))

(assert (= (and d!1487638 c!800619) b!4680328))

(assert (= (and d!1487638 (not c!800619)) b!4680329))

(assert (= (and b!4680329 res!1972262) b!4680327))

(assert (= (or b!4680328 b!4680329) bm!327114))

(assert (= (or b!4680328 b!4680329) bm!327113))

(assert (= (or b!4680328 b!4680329) bm!327112))

(assert (= (and d!1487638 res!1972263) b!4680330))

(assert (= (and b!4680330 res!1972261) b!4680331))

(declare-fun m!5577189 () Bool)

(assert (=> b!4680329 m!5577189))

(declare-fun m!5577191 () Bool)

(assert (=> b!4680329 m!5577191))

(declare-fun m!5577193 () Bool)

(assert (=> b!4680329 m!5577193))

(assert (=> b!4680329 m!5577193))

(declare-fun m!5577195 () Bool)

(assert (=> b!4680329 m!5577195))

(declare-fun m!5577197 () Bool)

(assert (=> b!4680329 m!5577197))

(declare-fun m!5577199 () Bool)

(assert (=> b!4680329 m!5577199))

(assert (=> b!4680329 m!5577197))

(declare-fun m!5577201 () Bool)

(assert (=> b!4680329 m!5577201))

(declare-fun m!5577203 () Bool)

(assert (=> b!4680329 m!5577203))

(declare-fun m!5577205 () Bool)

(assert (=> b!4680329 m!5577205))

(assert (=> b!4680329 m!5577189))

(declare-fun m!5577207 () Bool)

(assert (=> b!4680329 m!5577207))

(assert (=> b!4680327 m!5577193))

(declare-fun m!5577209 () Bool)

(assert (=> d!1487638 m!5577209))

(assert (=> d!1487638 m!5576477))

(declare-fun m!5577211 () Bool)

(assert (=> b!4680330 m!5577211))

(assert (=> bm!327114 m!5576641))

(declare-fun m!5577213 () Bool)

(assert (=> b!4680331 m!5577213))

(declare-fun m!5577215 () Bool)

(assert (=> bm!327113 m!5577215))

(declare-fun m!5577217 () Bool)

(assert (=> bm!327112 m!5577217))

(assert (=> b!4680071 d!1487638))

(declare-fun d!1487646 () Bool)

(assert (=> d!1487646 (eq!981 (addToMapMapFromBucket!1224 (Cons!52251 lt!1839774 lt!1839778) lt!1839775) (+!2094 (addToMapMapFromBucket!1224 lt!1839778 lt!1839775) lt!1839774))))

(declare-fun lt!1840208 () Unit!122493)

(declare-fun choose!32389 (tuple2!53562 List!52375 ListMap!4837) Unit!122493)

(assert (=> d!1487646 (= lt!1840208 (choose!32389 lt!1839774 lt!1839778 lt!1839775))))

(assert (=> d!1487646 (noDuplicateKeys!1792 lt!1839778)))

(assert (=> d!1487646 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!230 lt!1839774 lt!1839778 lt!1839775) lt!1840208)))

(declare-fun bs!1082406 () Bool)

(assert (= bs!1082406 d!1487646))

(assert (=> bs!1082406 m!5576521))

(declare-fun m!5577219 () Bool)

(assert (=> bs!1082406 m!5577219))

(assert (=> bs!1082406 m!5576497))

(assert (=> bs!1082406 m!5576521))

(assert (=> bs!1082406 m!5576869))

(declare-fun m!5577221 () Bool)

(assert (=> bs!1082406 m!5577221))

(assert (=> bs!1082406 m!5576497))

(assert (=> bs!1082406 m!5577219))

(declare-fun m!5577223 () Bool)

(assert (=> bs!1082406 m!5577223))

(assert (=> b!4680071 d!1487646))

(declare-fun d!1487648 () Bool)

(assert (=> d!1487648 (= (eq!981 lt!1839776 (addToMapMapFromBucket!1224 oldBucket!34 lt!1839775)) (= (content!9109 (toList!5473 lt!1839776)) (content!9109 (toList!5473 (addToMapMapFromBucket!1224 oldBucket!34 lt!1839775)))))))

(declare-fun bs!1082407 () Bool)

(assert (= bs!1082407 d!1487648))

(assert (=> bs!1082407 m!5577033))

(declare-fun m!5577225 () Bool)

(assert (=> bs!1082407 m!5577225))

(assert (=> b!4680071 d!1487648))

(declare-fun bs!1082408 () Bool)

(declare-fun b!4680355 () Bool)

(assert (= bs!1082408 (and b!4680355 b!4680145)))

(declare-fun lambda!204704 () Int)

(assert (=> bs!1082408 (= lambda!204704 lambda!204646)))

(declare-fun bs!1082409 () Bool)

(assert (= bs!1082409 (and b!4680355 b!4680202)))

(assert (=> bs!1082409 (= lambda!204704 lambda!204666)))

(declare-fun bs!1082410 () Bool)

(assert (= bs!1082410 (and b!4680355 b!4680146)))

(assert (=> bs!1082410 (= (= lt!1839775 lt!1839916) (= lambda!204704 lambda!204649))))

(declare-fun bs!1082411 () Bool)

(assert (= bs!1082411 (and b!4680355 d!1487560)))

(assert (=> bs!1082411 (= (= lt!1839775 lt!1839997) (= lambda!204704 lambda!204672))))

(assert (=> bs!1082410 (= lambda!204704 lambda!204647)))

(declare-fun bs!1082412 () Bool)

(assert (= bs!1082412 (and b!4680355 b!4680203)))

(assert (=> bs!1082412 (= (= lt!1839775 lt!1839988) (= lambda!204704 lambda!204669))))

(declare-fun bs!1082413 () Bool)

(assert (= bs!1082413 (and b!4680355 d!1487520)))

(assert (=> bs!1082413 (= (= lt!1839775 lt!1839925) (= lambda!204704 lambda!204652))))

(declare-fun bs!1082414 () Bool)

(assert (= bs!1082414 (and b!4680355 b!4680328)))

(assert (=> bs!1082414 (= lambda!204704 lambda!204698)))

(assert (=> bs!1082412 (= lambda!204704 lambda!204668)))

(declare-fun bs!1082415 () Bool)

(assert (= bs!1082415 (and b!4680355 d!1487566)))

(assert (=> bs!1082415 (= (= lt!1839775 lt!1840039) (= lambda!204704 lambda!204678))))

(declare-fun bs!1082416 () Bool)

(assert (= bs!1082416 (and b!4680355 b!4680329)))

(assert (=> bs!1082416 (= lambda!204704 lambda!204701)))

(declare-fun bs!1082417 () Bool)

(assert (= bs!1082417 (and b!4680355 d!1487558)))

(assert (=> bs!1082417 (not (= lambda!204704 lambda!204663))))

(assert (=> bs!1082416 (= (= lt!1839775 lt!1840174) (= lambda!204704 lambda!204702))))

(declare-fun bs!1082418 () Bool)

(assert (= bs!1082418 (and b!4680355 d!1487638)))

(assert (=> bs!1082418 (= (= lt!1839775 lt!1840183) (= lambda!204704 lambda!204703))))

(declare-fun bs!1082419 () Bool)

(assert (= bs!1082419 (and b!4680355 b!4680215)))

(assert (=> bs!1082419 (= lambda!204704 lambda!204676)))

(declare-fun bs!1082420 () Bool)

(assert (= bs!1082420 (and b!4680355 d!1487494)))

(assert (=> bs!1082420 (not (= lambda!204704 lambda!204586))))

(declare-fun bs!1082421 () Bool)

(assert (= bs!1082421 (and b!4680355 b!4680214)))

(assert (=> bs!1082421 (= lambda!204704 lambda!204675)))

(assert (=> bs!1082419 (= (= lt!1839775 lt!1840030) (= lambda!204704 lambda!204677))))

(assert (=> b!4680355 true))

(declare-fun bs!1082422 () Bool)

(declare-fun b!4680356 () Bool)

(assert (= bs!1082422 (and b!4680356 b!4680145)))

(declare-fun lambda!204705 () Int)

(assert (=> bs!1082422 (= lambda!204705 lambda!204646)))

(declare-fun bs!1082423 () Bool)

(assert (= bs!1082423 (and b!4680356 b!4680202)))

(assert (=> bs!1082423 (= lambda!204705 lambda!204666)))

(declare-fun bs!1082424 () Bool)

(assert (= bs!1082424 (and b!4680356 b!4680146)))

(assert (=> bs!1082424 (= (= lt!1839775 lt!1839916) (= lambda!204705 lambda!204649))))

(declare-fun bs!1082425 () Bool)

(assert (= bs!1082425 (and b!4680356 d!1487560)))

(assert (=> bs!1082425 (= (= lt!1839775 lt!1839997) (= lambda!204705 lambda!204672))))

(assert (=> bs!1082424 (= lambda!204705 lambda!204647)))

(declare-fun bs!1082426 () Bool)

(assert (= bs!1082426 (and b!4680356 b!4680203)))

(assert (=> bs!1082426 (= (= lt!1839775 lt!1839988) (= lambda!204705 lambda!204669))))

(declare-fun bs!1082427 () Bool)

(assert (= bs!1082427 (and b!4680356 d!1487520)))

(assert (=> bs!1082427 (= (= lt!1839775 lt!1839925) (= lambda!204705 lambda!204652))))

(declare-fun bs!1082428 () Bool)

(assert (= bs!1082428 (and b!4680356 b!4680328)))

(assert (=> bs!1082428 (= lambda!204705 lambda!204698)))

(assert (=> bs!1082426 (= lambda!204705 lambda!204668)))

(declare-fun bs!1082429 () Bool)

(assert (= bs!1082429 (and b!4680356 d!1487566)))

(assert (=> bs!1082429 (= (= lt!1839775 lt!1840039) (= lambda!204705 lambda!204678))))

(declare-fun bs!1082430 () Bool)

(assert (= bs!1082430 (and b!4680356 b!4680329)))

(assert (=> bs!1082430 (= lambda!204705 lambda!204701)))

(declare-fun bs!1082431 () Bool)

(assert (= bs!1082431 (and b!4680356 d!1487558)))

(assert (=> bs!1082431 (not (= lambda!204705 lambda!204663))))

(assert (=> bs!1082430 (= (= lt!1839775 lt!1840174) (= lambda!204705 lambda!204702))))

(declare-fun bs!1082432 () Bool)

(assert (= bs!1082432 (and b!4680356 d!1487638)))

(assert (=> bs!1082432 (= (= lt!1839775 lt!1840183) (= lambda!204705 lambda!204703))))

(declare-fun bs!1082433 () Bool)

(assert (= bs!1082433 (and b!4680356 b!4680215)))

(assert (=> bs!1082433 (= lambda!204705 lambda!204676)))

(declare-fun bs!1082434 () Bool)

(assert (= bs!1082434 (and b!4680356 d!1487494)))

(assert (=> bs!1082434 (not (= lambda!204705 lambda!204586))))

(declare-fun bs!1082435 () Bool)

(assert (= bs!1082435 (and b!4680356 b!4680355)))

(assert (=> bs!1082435 (= lambda!204705 lambda!204704)))

(declare-fun bs!1082436 () Bool)

(assert (= bs!1082436 (and b!4680356 b!4680214)))

(assert (=> bs!1082436 (= lambda!204705 lambda!204675)))

(assert (=> bs!1082433 (= (= lt!1839775 lt!1840030) (= lambda!204705 lambda!204677))))

(assert (=> b!4680356 true))

(declare-fun lambda!204706 () Int)

(declare-fun lt!1840216 () ListMap!4837)

(assert (=> bs!1082422 (= (= lt!1840216 lt!1839775) (= lambda!204706 lambda!204646))))

(assert (=> bs!1082423 (= (= lt!1840216 lt!1839775) (= lambda!204706 lambda!204666))))

(assert (=> bs!1082424 (= (= lt!1840216 lt!1839916) (= lambda!204706 lambda!204649))))

(assert (=> bs!1082425 (= (= lt!1840216 lt!1839997) (= lambda!204706 lambda!204672))))

(assert (=> b!4680356 (= (= lt!1840216 lt!1839775) (= lambda!204706 lambda!204705))))

(assert (=> bs!1082424 (= (= lt!1840216 lt!1839775) (= lambda!204706 lambda!204647))))

(assert (=> bs!1082426 (= (= lt!1840216 lt!1839988) (= lambda!204706 lambda!204669))))

(assert (=> bs!1082427 (= (= lt!1840216 lt!1839925) (= lambda!204706 lambda!204652))))

(assert (=> bs!1082428 (= (= lt!1840216 lt!1839775) (= lambda!204706 lambda!204698))))

(assert (=> bs!1082426 (= (= lt!1840216 lt!1839775) (= lambda!204706 lambda!204668))))

(assert (=> bs!1082429 (= (= lt!1840216 lt!1840039) (= lambda!204706 lambda!204678))))

(assert (=> bs!1082430 (= (= lt!1840216 lt!1839775) (= lambda!204706 lambda!204701))))

(assert (=> bs!1082431 (not (= lambda!204706 lambda!204663))))

(assert (=> bs!1082430 (= (= lt!1840216 lt!1840174) (= lambda!204706 lambda!204702))))

(assert (=> bs!1082432 (= (= lt!1840216 lt!1840183) (= lambda!204706 lambda!204703))))

(assert (=> bs!1082433 (= (= lt!1840216 lt!1839775) (= lambda!204706 lambda!204676))))

(assert (=> bs!1082434 (not (= lambda!204706 lambda!204586))))

(assert (=> bs!1082435 (= (= lt!1840216 lt!1839775) (= lambda!204706 lambda!204704))))

(assert (=> bs!1082436 (= (= lt!1840216 lt!1839775) (= lambda!204706 lambda!204675))))

(assert (=> bs!1082433 (= (= lt!1840216 lt!1840030) (= lambda!204706 lambda!204677))))

(assert (=> b!4680356 true))

(declare-fun bs!1082437 () Bool)

(declare-fun d!1487650 () Bool)

(assert (= bs!1082437 (and d!1487650 b!4680356)))

(declare-fun lt!1840225 () ListMap!4837)

(declare-fun lambda!204707 () Int)

(assert (=> bs!1082437 (= (= lt!1840225 lt!1840216) (= lambda!204707 lambda!204706))))

(declare-fun bs!1082438 () Bool)

(assert (= bs!1082438 (and d!1487650 b!4680145)))

(assert (=> bs!1082438 (= (= lt!1840225 lt!1839775) (= lambda!204707 lambda!204646))))

(declare-fun bs!1082439 () Bool)

(assert (= bs!1082439 (and d!1487650 b!4680202)))

(assert (=> bs!1082439 (= (= lt!1840225 lt!1839775) (= lambda!204707 lambda!204666))))

(declare-fun bs!1082440 () Bool)

(assert (= bs!1082440 (and d!1487650 b!4680146)))

(assert (=> bs!1082440 (= (= lt!1840225 lt!1839916) (= lambda!204707 lambda!204649))))

(declare-fun bs!1082441 () Bool)

(assert (= bs!1082441 (and d!1487650 d!1487560)))

(assert (=> bs!1082441 (= (= lt!1840225 lt!1839997) (= lambda!204707 lambda!204672))))

(assert (=> bs!1082437 (= (= lt!1840225 lt!1839775) (= lambda!204707 lambda!204705))))

(assert (=> bs!1082440 (= (= lt!1840225 lt!1839775) (= lambda!204707 lambda!204647))))

(declare-fun bs!1082442 () Bool)

(assert (= bs!1082442 (and d!1487650 b!4680203)))

(assert (=> bs!1082442 (= (= lt!1840225 lt!1839988) (= lambda!204707 lambda!204669))))

(declare-fun bs!1082443 () Bool)

(assert (= bs!1082443 (and d!1487650 d!1487520)))

(assert (=> bs!1082443 (= (= lt!1840225 lt!1839925) (= lambda!204707 lambda!204652))))

(declare-fun bs!1082444 () Bool)

(assert (= bs!1082444 (and d!1487650 b!4680328)))

(assert (=> bs!1082444 (= (= lt!1840225 lt!1839775) (= lambda!204707 lambda!204698))))

(assert (=> bs!1082442 (= (= lt!1840225 lt!1839775) (= lambda!204707 lambda!204668))))

(declare-fun bs!1082445 () Bool)

(assert (= bs!1082445 (and d!1487650 d!1487566)))

(assert (=> bs!1082445 (= (= lt!1840225 lt!1840039) (= lambda!204707 lambda!204678))))

(declare-fun bs!1082446 () Bool)

(assert (= bs!1082446 (and d!1487650 b!4680329)))

(assert (=> bs!1082446 (= (= lt!1840225 lt!1839775) (= lambda!204707 lambda!204701))))

(declare-fun bs!1082447 () Bool)

(assert (= bs!1082447 (and d!1487650 d!1487558)))

(assert (=> bs!1082447 (not (= lambda!204707 lambda!204663))))

(assert (=> bs!1082446 (= (= lt!1840225 lt!1840174) (= lambda!204707 lambda!204702))))

(declare-fun bs!1082448 () Bool)

(assert (= bs!1082448 (and d!1487650 d!1487638)))

(assert (=> bs!1082448 (= (= lt!1840225 lt!1840183) (= lambda!204707 lambda!204703))))

(declare-fun bs!1082449 () Bool)

(assert (= bs!1082449 (and d!1487650 b!4680215)))

(assert (=> bs!1082449 (= (= lt!1840225 lt!1839775) (= lambda!204707 lambda!204676))))

(declare-fun bs!1082450 () Bool)

(assert (= bs!1082450 (and d!1487650 d!1487494)))

(assert (=> bs!1082450 (not (= lambda!204707 lambda!204586))))

(declare-fun bs!1082451 () Bool)

(assert (= bs!1082451 (and d!1487650 b!4680355)))

(assert (=> bs!1082451 (= (= lt!1840225 lt!1839775) (= lambda!204707 lambda!204704))))

(declare-fun bs!1082452 () Bool)

(assert (= bs!1082452 (and d!1487650 b!4680214)))

(assert (=> bs!1082452 (= (= lt!1840225 lt!1839775) (= lambda!204707 lambda!204675))))

(assert (=> bs!1082449 (= (= lt!1840225 lt!1840030) (= lambda!204707 lambda!204677))))

(assert (=> d!1487650 true))

(declare-fun b!4680354 () Bool)

(declare-fun e!2920138 () Bool)

(assert (=> b!4680354 (= e!2920138 (forall!11226 (toList!5473 lt!1839775) lambda!204706))))

(declare-fun call!327124 () Bool)

(declare-fun c!800628 () Bool)

(declare-fun bm!327117 () Bool)

(assert (=> bm!327117 (= call!327124 (forall!11226 (ite c!800628 (toList!5473 lt!1839775) (Cons!52251 lt!1839774 lt!1839778)) (ite c!800628 lambda!204704 lambda!204706)))))

(declare-fun e!2920137 () ListMap!4837)

(assert (=> b!4680355 (= e!2920137 lt!1839775)))

(declare-fun lt!1840220 () Unit!122493)

(declare-fun call!327122 () Unit!122493)

(assert (=> b!4680355 (= lt!1840220 call!327122)))

(declare-fun call!327123 () Bool)

(assert (=> b!4680355 call!327123))

(declare-fun lt!1840217 () Unit!122493)

(assert (=> b!4680355 (= lt!1840217 lt!1840220)))

(assert (=> b!4680355 call!327124))

(declare-fun lt!1840226 () Unit!122493)

(declare-fun Unit!122602 () Unit!122493)

(assert (=> b!4680355 (= lt!1840226 Unit!122602)))

(assert (=> b!4680356 (= e!2920137 lt!1840216)))

(declare-fun lt!1840215 () ListMap!4837)

(assert (=> b!4680356 (= lt!1840215 (+!2094 lt!1839775 (h!58462 (Cons!52251 lt!1839774 lt!1839778))))))

(assert (=> b!4680356 (= lt!1840216 (addToMapMapFromBucket!1224 (t!359529 (Cons!52251 lt!1839774 lt!1839778)) (+!2094 lt!1839775 (h!58462 (Cons!52251 lt!1839774 lt!1839778)))))))

(declare-fun lt!1840228 () Unit!122493)

(assert (=> b!4680356 (= lt!1840228 call!327122)))

(assert (=> b!4680356 call!327123))

(declare-fun lt!1840224 () Unit!122493)

(assert (=> b!4680356 (= lt!1840224 lt!1840228)))

(assert (=> b!4680356 (forall!11226 (toList!5473 lt!1840215) lambda!204706)))

(declare-fun lt!1840227 () Unit!122493)

(declare-fun Unit!122603 () Unit!122493)

(assert (=> b!4680356 (= lt!1840227 Unit!122603)))

(assert (=> b!4680356 (forall!11226 (t!359529 (Cons!52251 lt!1839774 lt!1839778)) lambda!204706)))

(declare-fun lt!1840219 () Unit!122493)

(declare-fun Unit!122605 () Unit!122493)

(assert (=> b!4680356 (= lt!1840219 Unit!122605)))

(declare-fun lt!1840223 () Unit!122493)

(declare-fun Unit!122606 () Unit!122493)

(assert (=> b!4680356 (= lt!1840223 Unit!122606)))

(declare-fun lt!1840211 () Unit!122493)

(assert (=> b!4680356 (= lt!1840211 (forallContained!3348 (toList!5473 lt!1840215) lambda!204706 (h!58462 (Cons!52251 lt!1839774 lt!1839778))))))

(assert (=> b!4680356 (contains!15384 lt!1840215 (_1!30075 (h!58462 (Cons!52251 lt!1839774 lt!1839778))))))

(declare-fun lt!1840218 () Unit!122493)

(declare-fun Unit!122607 () Unit!122493)

(assert (=> b!4680356 (= lt!1840218 Unit!122607)))

(assert (=> b!4680356 (contains!15384 lt!1840216 (_1!30075 (h!58462 (Cons!52251 lt!1839774 lt!1839778))))))

(declare-fun lt!1840221 () Unit!122493)

(declare-fun Unit!122609 () Unit!122493)

(assert (=> b!4680356 (= lt!1840221 Unit!122609)))

(assert (=> b!4680356 call!327124))

(declare-fun lt!1840213 () Unit!122493)

(declare-fun Unit!122610 () Unit!122493)

(assert (=> b!4680356 (= lt!1840213 Unit!122610)))

(assert (=> b!4680356 (forall!11226 (toList!5473 lt!1840215) lambda!204706)))

(declare-fun lt!1840210 () Unit!122493)

(declare-fun Unit!122611 () Unit!122493)

(assert (=> b!4680356 (= lt!1840210 Unit!122611)))

(declare-fun lt!1840222 () Unit!122493)

(declare-fun Unit!122612 () Unit!122493)

(assert (=> b!4680356 (= lt!1840222 Unit!122612)))

(declare-fun lt!1840214 () Unit!122493)

(assert (=> b!4680356 (= lt!1840214 (addForallContainsKeyThenBeforeAdding!663 lt!1839775 lt!1840216 (_1!30075 (h!58462 (Cons!52251 lt!1839774 lt!1839778))) (_2!30075 (h!58462 (Cons!52251 lt!1839774 lt!1839778)))))))

(assert (=> b!4680356 (forall!11226 (toList!5473 lt!1839775) lambda!204706)))

(declare-fun lt!1840229 () Unit!122493)

(assert (=> b!4680356 (= lt!1840229 lt!1840214)))

(assert (=> b!4680356 (forall!11226 (toList!5473 lt!1839775) lambda!204706)))

(declare-fun lt!1840209 () Unit!122493)

(declare-fun Unit!122613 () Unit!122493)

(assert (=> b!4680356 (= lt!1840209 Unit!122613)))

(declare-fun res!1972271 () Bool)

(assert (=> b!4680356 (= res!1972271 (forall!11226 (Cons!52251 lt!1839774 lt!1839778) lambda!204706))))

(assert (=> b!4680356 (=> (not res!1972271) (not e!2920138))))

(assert (=> b!4680356 e!2920138))

(declare-fun lt!1840212 () Unit!122493)

(declare-fun Unit!122614 () Unit!122493)

(assert (=> b!4680356 (= lt!1840212 Unit!122614)))

(declare-fun b!4680357 () Bool)

(declare-fun res!1972270 () Bool)

(declare-fun e!2920136 () Bool)

(assert (=> b!4680357 (=> (not res!1972270) (not e!2920136))))

(assert (=> b!4680357 (= res!1972270 (forall!11226 (toList!5473 lt!1839775) lambda!204707))))

(assert (=> d!1487650 e!2920136))

(declare-fun res!1972272 () Bool)

(assert (=> d!1487650 (=> (not res!1972272) (not e!2920136))))

(assert (=> d!1487650 (= res!1972272 (forall!11226 (Cons!52251 lt!1839774 lt!1839778) lambda!204707))))

(assert (=> d!1487650 (= lt!1840225 e!2920137)))

(assert (=> d!1487650 (= c!800628 ((_ is Nil!52251) (Cons!52251 lt!1839774 lt!1839778)))))

(assert (=> d!1487650 (noDuplicateKeys!1792 (Cons!52251 lt!1839774 lt!1839778))))

(assert (=> d!1487650 (= (addToMapMapFromBucket!1224 (Cons!52251 lt!1839774 lt!1839778) lt!1839775) lt!1840225)))

(declare-fun b!4680358 () Bool)

(assert (=> b!4680358 (= e!2920136 (invariantList!1376 (toList!5473 lt!1840225)))))

(declare-fun bm!327118 () Bool)

(assert (=> bm!327118 (= call!327123 (forall!11226 (toList!5473 lt!1839775) (ite c!800628 lambda!204704 lambda!204705)))))

(declare-fun bm!327119 () Bool)

(assert (=> bm!327119 (= call!327122 (lemmaContainsAllItsOwnKeys!664 lt!1839775))))

(assert (= (and d!1487650 c!800628) b!4680355))

(assert (= (and d!1487650 (not c!800628)) b!4680356))

(assert (= (and b!4680356 res!1972271) b!4680354))

(assert (= (or b!4680355 b!4680356) bm!327119))

(assert (= (or b!4680355 b!4680356) bm!327118))

(assert (= (or b!4680355 b!4680356) bm!327117))

(assert (= (and d!1487650 res!1972272) b!4680357))

(assert (= (and b!4680357 res!1972270) b!4680358))

(declare-fun m!5577267 () Bool)

(assert (=> b!4680356 m!5577267))

(declare-fun m!5577269 () Bool)

(assert (=> b!4680356 m!5577269))

(declare-fun m!5577271 () Bool)

(assert (=> b!4680356 m!5577271))

(assert (=> b!4680356 m!5577271))

(declare-fun m!5577273 () Bool)

(assert (=> b!4680356 m!5577273))

(declare-fun m!5577275 () Bool)

(assert (=> b!4680356 m!5577275))

(declare-fun m!5577277 () Bool)

(assert (=> b!4680356 m!5577277))

(assert (=> b!4680356 m!5577275))

(declare-fun m!5577279 () Bool)

(assert (=> b!4680356 m!5577279))

(declare-fun m!5577281 () Bool)

(assert (=> b!4680356 m!5577281))

(declare-fun m!5577283 () Bool)

(assert (=> b!4680356 m!5577283))

(assert (=> b!4680356 m!5577267))

(declare-fun m!5577285 () Bool)

(assert (=> b!4680356 m!5577285))

(assert (=> b!4680354 m!5577271))

(declare-fun m!5577287 () Bool)

(assert (=> d!1487650 m!5577287))

(declare-fun m!5577289 () Bool)

(assert (=> d!1487650 m!5577289))

(declare-fun m!5577291 () Bool)

(assert (=> b!4680357 m!5577291))

(assert (=> bm!327119 m!5576641))

(declare-fun m!5577293 () Bool)

(assert (=> b!4680358 m!5577293))

(declare-fun m!5577295 () Bool)

(assert (=> bm!327118 m!5577295))

(declare-fun m!5577297 () Bool)

(assert (=> bm!327117 m!5577297))

(assert (=> b!4680071 d!1487650))

(declare-fun tp!1345022 () Bool)

(declare-fun e!2920153 () Bool)

(declare-fun b!4680381 () Bool)

(assert (=> b!4680381 (= e!2920153 (and tp_is_empty!30461 tp_is_empty!30463 tp!1345022))))

(assert (=> b!4680066 (= tp!1345019 e!2920153)))

(assert (= (and b!4680066 ((_ is Cons!52251) (t!359529 oldBucket!34))) b!4680381))

(declare-fun b!4680386 () Bool)

(declare-fun e!2920156 () Bool)

(declare-fun tp!1345027 () Bool)

(declare-fun tp!1345028 () Bool)

(assert (=> b!4680386 (= e!2920156 (and tp!1345027 tp!1345028))))

(assert (=> b!4680072 (= tp!1345018 e!2920156)))

(assert (= (and b!4680072 ((_ is Cons!52252) (toList!5474 lm!2023))) b!4680386))

(declare-fun e!2920157 () Bool)

(declare-fun tp!1345029 () Bool)

(declare-fun b!4680387 () Bool)

(assert (=> b!4680387 (= e!2920157 (and tp_is_empty!30461 tp_is_empty!30463 tp!1345029))))

(assert (=> b!4680065 (= tp!1345017 e!2920157)))

(assert (= (and b!4680065 ((_ is Cons!52251) (t!359529 newBucket!218))) b!4680387))

(declare-fun b_lambda!176669 () Bool)

(assert (= b_lambda!176667 (or start!472544 b_lambda!176669)))

(declare-fun bs!1082453 () Bool)

(declare-fun d!1487656 () Bool)

(assert (= bs!1082453 (and d!1487656 start!472544)))

(assert (=> bs!1082453 (= (dynLambda!21678 lambda!204583 (h!58463 (toList!5474 lm!2023))) (noDuplicateKeys!1792 (_2!30076 (h!58463 (toList!5474 lm!2023)))))))

(assert (=> bs!1082453 m!5576637))

(assert (=> b!4680316 d!1487656))

(declare-fun b_lambda!176671 () Bool)

(assert (= b_lambda!176661 (or start!472544 b_lambda!176671)))

(declare-fun bs!1082454 () Bool)

(declare-fun d!1487658 () Bool)

(assert (= bs!1082454 (and d!1487658 start!472544)))

(assert (=> bs!1082454 (= (dynLambda!21678 lambda!204583 (h!58463 lt!1839780)) (noDuplicateKeys!1792 (_2!30076 (h!58463 lt!1839780))))))

(declare-fun m!5577299 () Bool)

(assert (=> bs!1082454 m!5577299))

(assert (=> b!4680116 d!1487658))

(check-sat (not d!1487500) (not d!1487582) (not b!4680117) (not bm!327111) (not d!1487604) (not b!4680329) (not b!4680269) (not b!4680330) (not bm!327113) (not b!4680278) (not b!4680199) (not d!1487648) (not d!1487538) (not b!4680325) (not d!1487650) (not b!4680356) (not b!4680323) (not b!4680270) (not d!1487616) (not b!4680315) (not bm!327099) (not b!4680381) (not b!4680203) (not b!4680301) (not bm!327100) (not b_lambda!176669) (not b!4680261) (not b!4680094) (not b!4680357) (not bm!327106) (not d!1487580) (not bm!327107) (not b!4680318) (not b!4680144) (not b!4680324) (not b!4680386) (not b!4680205) (not b!4680273) (not d!1487622) (not d!1487602) (not d!1487566) (not d!1487630) (not b!4680266) (not bm!327117) (not d!1487520) (not b!4680272) (not bm!327112) (not b!4680304) (not b!4680264) (not b!4680305) (not bm!327114) tp_is_empty!30461 (not b!4680311) (not b_lambda!176671) (not b!4680195) (not b!4680104) (not d!1487632) (not b!4680312) (not b!4680326) (not d!1487558) (not bm!327094) (not b!4680148) (not b!4680263) (not d!1487496) (not bm!327098) (not bm!327085) (not b!4680271) (not b!4680274) (not bm!327119) (not b!4680387) (not d!1487570) (not b!4680307) (not b!4680217) (not d!1487636) (not d!1487598) (not b!4680265) (not d!1487494) (not b!4680105) (not d!1487508) (not b!4680314) (not d!1487606) (not b!4680190) (not b!4680216) (not d!1487552) (not b!4680189) (not d!1487502) (not bm!327083) (not b!4680317) (not b!4680213) tp_is_empty!30463 (not b!4680358) (not bm!327084) (not b!4680275) (not b!4680306) (not bm!327118) (not bs!1082454) (not bm!327092) (not d!1487554) (not d!1487524) (not b!4680262) (not b!4680327) (not b!4680147) (not b!4680354) (not b!4680331) (not d!1487560) (not b!4680308) (not b!4680095) (not d!1487540) (not b!4680175) (not d!1487612) (not d!1487618) (not d!1487646) (not bm!327093) (not b!4680294) (not b!4680303) (not d!1487638) (not bs!1082453) (not b!4680123) (not b!4680215) (not d!1487614) (not b!4680204) (not b!4680146) (not d!1487588) (not b!4680201) (not d!1487596))
(check-sat)
