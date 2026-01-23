; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472168 () Bool)

(assert start!472168)

(declare-fun b!4677647 () Bool)

(declare-fun res!1970552 () Bool)

(declare-fun e!2918497 () Bool)

(assert (=> b!4677647 (=> res!1970552 e!2918497)))

(declare-fun lt!1837265 () (_ BitVec 64))

(declare-datatypes ((K!13590 0))(
  ( (K!13591 (val!19143 Int)) )
))
(declare-datatypes ((V!13836 0))(
  ( (V!13837 (val!19144 Int)) )
))
(declare-datatypes ((tuple2!53498 0))(
  ( (tuple2!53499 (_1!30043 K!13590) (_2!30043 V!13836)) )
))
(declare-datatypes ((List!52335 0))(
  ( (Nil!52211) (Cons!52211 (h!58414 tuple2!53498) (t!359481 List!52335)) )
))
(declare-datatypes ((tuple2!53500 0))(
  ( (tuple2!53501 (_1!30044 (_ BitVec 64)) (_2!30044 List!52335)) )
))
(declare-datatypes ((List!52336 0))(
  ( (Nil!52212) (Cons!52212 (h!58415 tuple2!53500) (t!359482 List!52336)) )
))
(declare-datatypes ((ListLongMap!3971 0))(
  ( (ListLongMap!3972 (toList!5441 List!52336)) )
))
(declare-fun lt!1837268 () ListLongMap!3971)

(declare-fun key!4653 () K!13590)

(declare-fun containsKey!2913 (List!52335 K!13590) Bool)

(declare-fun apply!12289 (ListLongMap!3971 (_ BitVec 64)) List!52335)

(assert (=> b!4677647 (= res!1970552 (containsKey!2913 (apply!12289 lt!1837268 lt!1837265) key!4653))))

(declare-fun b!4677648 () Bool)

(declare-fun res!1970569 () Bool)

(declare-fun e!2918495 () Bool)

(assert (=> b!4677648 (=> (not res!1970569) (not e!2918495))))

(declare-fun lm!2023 () ListLongMap!3971)

(get-info :version)

(assert (=> b!4677648 (= res!1970569 ((_ is Cons!52212) (toList!5441 lm!2023)))))

(declare-fun b!4677649 () Bool)

(declare-fun res!1970567 () Bool)

(declare-fun e!2918502 () Bool)

(assert (=> b!4677649 (=> (not res!1970567) (not e!2918502))))

(declare-datatypes ((Hashable!6145 0))(
  ( (HashableExt!6144 (__x!31848 Int)) )
))
(declare-fun hashF!1323 () Hashable!6145)

(declare-fun oldBucket!34 () List!52335)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1602 (List!52335 (_ BitVec 64) Hashable!6145) Bool)

(assert (=> b!4677649 (= res!1970567 (allKeysSameHash!1602 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4677650 () Bool)

(declare-fun res!1970561 () Bool)

(assert (=> b!4677650 (=> (not res!1970561) (not e!2918495))))

(declare-fun newBucket!218 () List!52335)

(assert (=> b!4677650 (= res!1970561 (allKeysSameHash!1602 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4677651 () Bool)

(declare-fun res!1970555 () Bool)

(assert (=> b!4677651 (=> (not res!1970555) (not e!2918495))))

(declare-fun head!9843 (List!52336) tuple2!53500)

(assert (=> b!4677651 (= res!1970555 (= (head!9843 (toList!5441 lm!2023)) (tuple2!53501 hash!405 oldBucket!34)))))

(declare-fun b!4677652 () Bool)

(declare-fun res!1970551 () Bool)

(assert (=> b!4677652 (=> res!1970551 e!2918497)))

(declare-fun allKeysSameHashInMap!1690 (ListLongMap!3971 Hashable!6145) Bool)

(assert (=> b!4677652 (= res!1970551 (not (allKeysSameHashInMap!1690 lt!1837268 hashF!1323)))))

(declare-fun b!4677653 () Bool)

(declare-fun e!2918505 () Bool)

(declare-fun e!2918498 () Bool)

(assert (=> b!4677653 (= e!2918505 e!2918498)))

(declare-fun res!1970566 () Bool)

(assert (=> b!4677653 (=> res!1970566 e!2918498)))

(declare-datatypes ((ListMap!4805 0))(
  ( (ListMap!4806 (toList!5442 List!52335)) )
))
(declare-fun lt!1837267 () ListMap!4805)

(declare-fun lt!1837270 () ListMap!4805)

(declare-fun eq!965 (ListMap!4805 ListMap!4805) Bool)

(declare-fun +!2078 (ListMap!4805 tuple2!53498) ListMap!4805)

(declare-fun addToMapMapFromBucket!1208 (List!52335 ListMap!4805) ListMap!4805)

(assert (=> b!4677653 (= res!1970566 (not (eq!965 (+!2078 lt!1837270 (h!58414 oldBucket!34)) (addToMapMapFromBucket!1208 oldBucket!34 lt!1837267))))))

(declare-fun lt!1837262 () tuple2!53498)

(declare-fun lt!1837264 () List!52335)

(assert (=> b!4677653 (eq!965 (addToMapMapFromBucket!1208 (Cons!52211 lt!1837262 lt!1837264) lt!1837267) (+!2078 lt!1837270 lt!1837262))))

(declare-datatypes ((Unit!121973 0))(
  ( (Unit!121974) )
))
(declare-fun lt!1837269 () Unit!121973)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!214 (tuple2!53498 List!52335 ListMap!4805) Unit!121973)

(assert (=> b!4677653 (= lt!1837269 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!214 lt!1837262 lt!1837264 lt!1837267))))

(declare-fun head!9844 (List!52335) tuple2!53498)

(assert (=> b!4677653 (= lt!1837262 (head!9844 oldBucket!34))))

(declare-fun b!4677654 () Bool)

(assert (=> b!4677654 (= e!2918498 e!2918497)))

(declare-fun res!1970562 () Bool)

(assert (=> b!4677654 (=> res!1970562 e!2918497)))

(declare-fun lt!1837261 () List!52336)

(declare-fun lambda!203997 () Int)

(declare-fun forall!11201 (List!52336 Int) Bool)

(assert (=> b!4677654 (= res!1970562 (not (forall!11201 lt!1837261 lambda!203997)))))

(assert (=> b!4677654 (= lt!1837268 (ListLongMap!3972 lt!1837261))))

(declare-fun b!4677655 () Bool)

(declare-fun res!1970553 () Bool)

(assert (=> b!4677655 (=> res!1970553 e!2918498)))

(declare-fun lt!1837263 () ListMap!4805)

(assert (=> b!4677655 (= res!1970553 (not (= lt!1837270 lt!1837263)))))

(declare-fun b!4677656 () Bool)

(declare-fun e!2918496 () Bool)

(assert (=> b!4677656 (= e!2918495 (not e!2918496))))

(declare-fun res!1970550 () Bool)

(assert (=> b!4677656 (=> res!1970550 e!2918496)))

(assert (=> b!4677656 (= res!1970550 (or (not ((_ is Cons!52211) oldBucket!34)) (not (= (_1!30043 (h!58414 oldBucket!34)) key!4653))))))

(declare-fun lt!1837266 () ListMap!4805)

(assert (=> b!4677656 (= lt!1837266 (addToMapMapFromBucket!1208 (_2!30044 (h!58415 (toList!5441 lm!2023))) lt!1837267))))

(declare-fun extractMap!1802 (List!52336) ListMap!4805)

(assert (=> b!4677656 (= lt!1837267 (extractMap!1802 (t!359482 (toList!5441 lm!2023))))))

(declare-fun tail!8402 (ListLongMap!3971) ListLongMap!3971)

(assert (=> b!4677656 (= (t!359482 (toList!5441 lm!2023)) (toList!5441 (tail!8402 lm!2023)))))

(declare-fun b!4677657 () Bool)

(declare-fun res!1970559 () Bool)

(assert (=> b!4677657 (=> (not res!1970559) (not e!2918502))))

(declare-fun removePairForKey!1371 (List!52335 K!13590) List!52335)

(assert (=> b!4677657 (= res!1970559 (= (removePairForKey!1371 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4677658 () Bool)

(declare-fun res!1970570 () Bool)

(assert (=> b!4677658 (=> res!1970570 e!2918498)))

(assert (=> b!4677658 (= res!1970570 (containsKey!2913 lt!1837264 key!4653))))

(declare-fun b!4677659 () Bool)

(declare-fun res!1970558 () Bool)

(assert (=> b!4677659 (=> (not res!1970558) (not e!2918502))))

(declare-fun noDuplicateKeys!1776 (List!52335) Bool)

(assert (=> b!4677659 (= res!1970558 (noDuplicateKeys!1776 newBucket!218))))

(declare-fun tp!1344793 () Bool)

(declare-fun b!4677660 () Bool)

(declare-fun tp_is_empty!30399 () Bool)

(declare-fun tp_is_empty!30397 () Bool)

(declare-fun e!2918500 () Bool)

(assert (=> b!4677660 (= e!2918500 (and tp_is_empty!30397 tp_is_empty!30399 tp!1344793))))

(declare-fun b!4677661 () Bool)

(declare-fun e!2918499 () Bool)

(declare-fun tp!1344795 () Bool)

(assert (=> b!4677661 (= e!2918499 (and tp_is_empty!30397 tp_is_empty!30399 tp!1344795))))

(declare-fun b!4677662 () Bool)

(declare-fun res!1970554 () Bool)

(assert (=> b!4677662 (=> (not res!1970554) (not e!2918495))))

(assert (=> b!4677662 (= res!1970554 (allKeysSameHashInMap!1690 lm!2023 hashF!1323))))

(declare-fun b!4677663 () Bool)

(declare-fun e!2918506 () Bool)

(assert (=> b!4677663 (= e!2918506 e!2918495)))

(declare-fun res!1970556 () Bool)

(assert (=> b!4677663 (=> (not res!1970556) (not e!2918495))))

(assert (=> b!4677663 (= res!1970556 (= lt!1837265 hash!405))))

(declare-fun hash!3946 (Hashable!6145 K!13590) (_ BitVec 64))

(assert (=> b!4677663 (= lt!1837265 (hash!3946 hashF!1323 key!4653))))

(declare-fun b!4677664 () Bool)

(declare-fun e!2918501 () Bool)

(declare-fun tp!1344794 () Bool)

(assert (=> b!4677664 (= e!2918501 tp!1344794)))

(declare-fun b!4677665 () Bool)

(declare-fun e!2918504 () Bool)

(assert (=> b!4677665 (= e!2918504 e!2918505)))

(declare-fun res!1970564 () Bool)

(assert (=> b!4677665 (=> res!1970564 e!2918505)))

(assert (=> b!4677665 (= res!1970564 (not (= lt!1837270 (addToMapMapFromBucket!1208 newBucket!218 lt!1837267))))))

(assert (=> b!4677665 (= lt!1837270 (addToMapMapFromBucket!1208 lt!1837264 lt!1837267))))

(declare-fun b!4677666 () Bool)

(assert (=> b!4677666 (= e!2918497 true)))

(declare-fun b!4677667 () Bool)

(declare-fun e!2918503 () Bool)

(assert (=> b!4677667 (= e!2918496 e!2918503)))

(declare-fun res!1970565 () Bool)

(assert (=> b!4677667 (=> res!1970565 e!2918503)))

(assert (=> b!4677667 (= res!1970565 (not (= lt!1837264 newBucket!218)))))

(declare-fun tail!8403 (List!52335) List!52335)

(assert (=> b!4677667 (= lt!1837264 (tail!8403 oldBucket!34))))

(declare-fun b!4677668 () Bool)

(declare-fun res!1970571 () Bool)

(assert (=> b!4677668 (=> (not res!1970571) (not e!2918502))))

(assert (=> b!4677668 (= res!1970571 (noDuplicateKeys!1776 oldBucket!34))))

(declare-fun b!4677669 () Bool)

(assert (=> b!4677669 (= e!2918502 e!2918506)))

(declare-fun res!1970557 () Bool)

(assert (=> b!4677669 (=> (not res!1970557) (not e!2918506))))

(declare-fun contains!15351 (ListMap!4805 K!13590) Bool)

(assert (=> b!4677669 (= res!1970557 (contains!15351 lt!1837266 key!4653))))

(assert (=> b!4677669 (= lt!1837266 (extractMap!1802 (toList!5441 lm!2023)))))

(declare-fun b!4677670 () Bool)

(assert (=> b!4677670 (= e!2918503 e!2918504)))

(declare-fun res!1970560 () Bool)

(assert (=> b!4677670 (=> res!1970560 e!2918504)))

(assert (=> b!4677670 (= res!1970560 (not (= lt!1837263 (extractMap!1802 (Cons!52212 (tuple2!53501 hash!405 newBucket!218) (t!359482 (toList!5441 lm!2023)))))))))

(assert (=> b!4677670 (= lt!1837263 (extractMap!1802 lt!1837261))))

(assert (=> b!4677670 (= lt!1837261 (Cons!52212 (tuple2!53501 hash!405 lt!1837264) (t!359482 (toList!5441 lm!2023))))))

(declare-fun b!4677671 () Bool)

(declare-fun res!1970568 () Bool)

(assert (=> b!4677671 (=> res!1970568 e!2918497)))

(declare-fun contains!15352 (ListLongMap!3971 (_ BitVec 64)) Bool)

(assert (=> b!4677671 (= res!1970568 (not (contains!15352 lt!1837268 lt!1837265)))))

(declare-fun res!1970563 () Bool)

(assert (=> start!472168 (=> (not res!1970563) (not e!2918502))))

(assert (=> start!472168 (= res!1970563 (forall!11201 (toList!5441 lm!2023) lambda!203997))))

(assert (=> start!472168 e!2918502))

(declare-fun inv!67464 (ListLongMap!3971) Bool)

(assert (=> start!472168 (and (inv!67464 lm!2023) e!2918501)))

(assert (=> start!472168 tp_is_empty!30397))

(assert (=> start!472168 e!2918499))

(assert (=> start!472168 true))

(assert (=> start!472168 e!2918500))

(assert (= (and start!472168 res!1970563) b!4677668))

(assert (= (and b!4677668 res!1970571) b!4677659))

(assert (= (and b!4677659 res!1970558) b!4677657))

(assert (= (and b!4677657 res!1970559) b!4677649))

(assert (= (and b!4677649 res!1970567) b!4677669))

(assert (= (and b!4677669 res!1970557) b!4677663))

(assert (= (and b!4677663 res!1970556) b!4677650))

(assert (= (and b!4677650 res!1970561) b!4677662))

(assert (= (and b!4677662 res!1970554) b!4677651))

(assert (= (and b!4677651 res!1970555) b!4677648))

(assert (= (and b!4677648 res!1970569) b!4677656))

(assert (= (and b!4677656 (not res!1970550)) b!4677667))

(assert (= (and b!4677667 (not res!1970565)) b!4677670))

(assert (= (and b!4677670 (not res!1970560)) b!4677665))

(assert (= (and b!4677665 (not res!1970564)) b!4677653))

(assert (= (and b!4677653 (not res!1970566)) b!4677658))

(assert (= (and b!4677658 (not res!1970570)) b!4677655))

(assert (= (and b!4677655 (not res!1970553)) b!4677654))

(assert (= (and b!4677654 (not res!1970562)) b!4677652))

(assert (= (and b!4677652 (not res!1970551)) b!4677671))

(assert (= (and b!4677671 (not res!1970568)) b!4677647))

(assert (= (and b!4677647 (not res!1970552)) b!4677666))

(assert (= start!472168 b!4677664))

(assert (= (and start!472168 ((_ is Cons!52211) oldBucket!34)) b!4677661))

(assert (= (and start!472168 ((_ is Cons!52211) newBucket!218)) b!4677660))

(declare-fun m!5572071 () Bool)

(assert (=> b!4677669 m!5572071))

(declare-fun m!5572073 () Bool)

(assert (=> b!4677669 m!5572073))

(declare-fun m!5572075 () Bool)

(assert (=> b!4677662 m!5572075))

(declare-fun m!5572077 () Bool)

(assert (=> b!4677665 m!5572077))

(declare-fun m!5572079 () Bool)

(assert (=> b!4677665 m!5572079))

(declare-fun m!5572081 () Bool)

(assert (=> b!4677658 m!5572081))

(declare-fun m!5572083 () Bool)

(assert (=> start!472168 m!5572083))

(declare-fun m!5572085 () Bool)

(assert (=> start!472168 m!5572085))

(declare-fun m!5572087 () Bool)

(assert (=> b!4677652 m!5572087))

(declare-fun m!5572089 () Bool)

(assert (=> b!4677667 m!5572089))

(declare-fun m!5572091 () Bool)

(assert (=> b!4677668 m!5572091))

(declare-fun m!5572093 () Bool)

(assert (=> b!4677653 m!5572093))

(declare-fun m!5572095 () Bool)

(assert (=> b!4677653 m!5572095))

(declare-fun m!5572097 () Bool)

(assert (=> b!4677653 m!5572097))

(declare-fun m!5572099 () Bool)

(assert (=> b!4677653 m!5572099))

(declare-fun m!5572101 () Bool)

(assert (=> b!4677653 m!5572101))

(assert (=> b!4677653 m!5572093))

(declare-fun m!5572103 () Bool)

(assert (=> b!4677653 m!5572103))

(assert (=> b!4677653 m!5572101))

(declare-fun m!5572105 () Bool)

(assert (=> b!4677653 m!5572105))

(assert (=> b!4677653 m!5572097))

(assert (=> b!4677653 m!5572095))

(declare-fun m!5572107 () Bool)

(assert (=> b!4677653 m!5572107))

(declare-fun m!5572109 () Bool)

(assert (=> b!4677670 m!5572109))

(declare-fun m!5572111 () Bool)

(assert (=> b!4677670 m!5572111))

(declare-fun m!5572113 () Bool)

(assert (=> b!4677654 m!5572113))

(declare-fun m!5572115 () Bool)

(assert (=> b!4677649 m!5572115))

(declare-fun m!5572117 () Bool)

(assert (=> b!4677657 m!5572117))

(declare-fun m!5572119 () Bool)

(assert (=> b!4677650 m!5572119))

(declare-fun m!5572121 () Bool)

(assert (=> b!4677663 m!5572121))

(declare-fun m!5572123 () Bool)

(assert (=> b!4677656 m!5572123))

(declare-fun m!5572125 () Bool)

(assert (=> b!4677656 m!5572125))

(declare-fun m!5572127 () Bool)

(assert (=> b!4677656 m!5572127))

(declare-fun m!5572129 () Bool)

(assert (=> b!4677651 m!5572129))

(declare-fun m!5572131 () Bool)

(assert (=> b!4677659 m!5572131))

(declare-fun m!5572133 () Bool)

(assert (=> b!4677647 m!5572133))

(assert (=> b!4677647 m!5572133))

(declare-fun m!5572135 () Bool)

(assert (=> b!4677647 m!5572135))

(declare-fun m!5572137 () Bool)

(assert (=> b!4677671 m!5572137))

(check-sat (not b!4677668) (not b!4677651) (not b!4677658) (not b!4677665) (not b!4677654) tp_is_empty!30397 (not b!4677671) (not start!472168) (not b!4677664) (not b!4677669) tp_is_empty!30399 (not b!4677649) (not b!4677657) (not b!4677656) (not b!4677670) (not b!4677647) (not b!4677660) (not b!4677650) (not b!4677659) (not b!4677662) (not b!4677663) (not b!4677661) (not b!4677667) (not b!4677652) (not b!4677653))
(check-sat)
