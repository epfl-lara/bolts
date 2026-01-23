; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!422394 () Bool)

(assert start!422394)

(declare-fun b!4360525 () Bool)

(declare-fun e!2713726 () Bool)

(declare-fun e!2713727 () Bool)

(assert (=> b!4360525 (= e!2713726 e!2713727)))

(declare-fun res!1792728 () Bool)

(assert (=> b!4360525 (=> res!1792728 e!2713727)))

(declare-datatypes ((K!10323 0))(
  ( (K!10324 (val!16529 Int)) )
))
(declare-datatypes ((V!10569 0))(
  ( (V!10570 (val!16530 Int)) )
))
(declare-datatypes ((tuple2!48378 0))(
  ( (tuple2!48379 (_1!27483 K!10323) (_2!27483 V!10569)) )
))
(declare-datatypes ((List!49089 0))(
  ( (Nil!48965) (Cons!48965 (h!54524 tuple2!48378) (t!356009 List!49089)) )
))
(declare-datatypes ((ListMap!2231 0))(
  ( (ListMap!2232 (toList!2987 List!49089)) )
))
(declare-fun lt!1572857 () ListMap!2231)

(declare-fun lt!1572843 () ListMap!2231)

(declare-fun eq!272 (ListMap!2231 ListMap!2231) Bool)

(assert (=> b!4360525 (= res!1792728 (not (eq!272 lt!1572857 lt!1572843)))))

(declare-fun lt!1572860 () ListMap!2231)

(declare-datatypes ((tuple2!48380 0))(
  ( (tuple2!48381 (_1!27484 (_ BitVec 64)) (_2!27484 List!49089)) )
))
(declare-datatypes ((List!49090 0))(
  ( (Nil!48966) (Cons!48966 (h!54525 tuple2!48380) (t!356010 List!49090)) )
))
(declare-datatypes ((ListLongMap!1637 0))(
  ( (ListLongMap!1638 (toList!2988 List!49090)) )
))
(declare-fun lm!1707 () ListLongMap!1637)

(declare-fun lt!1572848 () tuple2!48378)

(declare-fun addToMapMapFromBucket!198 (List!49089 ListMap!2231) ListMap!2231)

(declare-fun +!661 (ListMap!2231 tuple2!48378) ListMap!2231)

(assert (=> b!4360525 (eq!272 (addToMapMapFromBucket!198 (_2!27484 (h!54525 (toList!2988 lm!1707))) lt!1572860) (+!661 lt!1572857 lt!1572848))))

(declare-datatypes ((Unit!72319 0))(
  ( (Unit!72320) )
))
(declare-fun lt!1572845 () Unit!72319)

(declare-fun key!3918 () K!10323)

(declare-fun newValue!99 () V!10569)

(declare-fun lt!1572859 () ListMap!2231)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!81 (ListMap!2231 K!10323 V!10569 List!49089) Unit!72319)

(assert (=> b!4360525 (= lt!1572845 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!81 lt!1572859 key!3918 newValue!99 (_2!27484 (h!54525 (toList!2988 lm!1707)))))))

(assert (=> b!4360525 (= lt!1572843 lt!1572857)))

(assert (=> b!4360525 (= lt!1572857 (addToMapMapFromBucket!198 (_2!27484 (h!54525 (toList!2988 lm!1707))) lt!1572859))))

(declare-fun e!2713728 () Bool)

(assert (=> b!4360525 e!2713728))

(declare-fun res!1792722 () Bool)

(assert (=> b!4360525 (=> (not res!1792722) (not e!2713728))))

(declare-fun lt!1572852 () ListMap!2231)

(assert (=> b!4360525 (= res!1792722 (eq!272 lt!1572852 lt!1572860))))

(assert (=> b!4360525 (= lt!1572860 (+!661 lt!1572859 lt!1572848))))

(declare-fun lt!1572850 () ListLongMap!1637)

(declare-fun lt!1572846 () tuple2!48380)

(declare-fun extractMap!561 (List!49090) ListMap!2231)

(declare-fun +!662 (ListLongMap!1637 tuple2!48380) ListLongMap!1637)

(assert (=> b!4360525 (= lt!1572852 (extractMap!561 (toList!2988 (+!662 lt!1572850 lt!1572846))))))

(declare-fun newBucket!200 () List!49089)

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4894 0))(
  ( (HashableExt!4893 (__x!30597 Int)) )
))
(declare-fun hashF!1247 () Hashable!4894)

(declare-fun lt!1572844 () Unit!72319)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!106 (ListLongMap!1637 (_ BitVec 64) List!49089 K!10323 V!10569 Hashable!4894) Unit!72319)

(assert (=> b!4360525 (= lt!1572844 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!106 lt!1572850 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11190 (ListMap!2231 K!10323) Bool)

(assert (=> b!4360525 (contains!11190 lt!1572859 key!3918)))

(assert (=> b!4360525 (= lt!1572859 (extractMap!561 (toList!2988 lt!1572850)))))

(declare-fun tail!7017 (ListLongMap!1637) ListLongMap!1637)

(assert (=> b!4360525 (= lt!1572850 (tail!7017 lm!1707))))

(declare-fun lt!1572858 () ListMap!2231)

(assert (=> b!4360525 (contains!11190 lt!1572858 key!3918)))

(declare-fun lt!1572854 () Unit!72319)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!45 (List!49089 K!10323 V!10569 ListMap!2231) Unit!72319)

(assert (=> b!4360525 (= lt!1572854 (lemmaAddToMapContainsAndNotInListThenInAcc!45 (_2!27484 (h!54525 (toList!2988 lm!1707))) key!3918 newValue!99 lt!1572858))))

(assert (=> b!4360525 (= lt!1572858 (extractMap!561 (t!356010 (toList!2988 lm!1707))))))

(declare-fun e!2713730 () Bool)

(assert (=> b!4360525 e!2713730))

(declare-fun res!1792723 () Bool)

(assert (=> b!4360525 (=> (not res!1792723) (not e!2713730))))

(declare-fun containsKey!719 (List!49089 K!10323) Bool)

(declare-fun apply!11354 (ListLongMap!1637 (_ BitVec 64)) List!49089)

(assert (=> b!4360525 (= res!1792723 (not (containsKey!719 (apply!11354 lm!1707 (_1!27484 (h!54525 (toList!2988 lm!1707)))) key!3918)))))

(declare-fun lt!1572855 () Unit!72319)

(declare-fun lemmaNotSameHashThenCannotContainKey!49 (ListLongMap!1637 K!10323 (_ BitVec 64) Hashable!4894) Unit!72319)

(assert (=> b!4360525 (= lt!1572855 (lemmaNotSameHashThenCannotContainKey!49 lm!1707 key!3918 (_1!27484 (h!54525 (toList!2988 lm!1707))) hashF!1247))))

(declare-fun b!4360526 () Bool)

(declare-fun e!2713724 () Bool)

(assert (=> b!4360526 (= e!2713724 e!2713726)))

(declare-fun res!1792730 () Bool)

(assert (=> b!4360526 (=> res!1792730 e!2713726)))

(assert (=> b!4360526 (= res!1792730 (or (and (is-Cons!48966 (toList!2988 lm!1707)) (= (_1!27484 (h!54525 (toList!2988 lm!1707))) hash!377)) (not (is-Cons!48966 (toList!2988 lm!1707))) (= (_1!27484 (h!54525 (toList!2988 lm!1707))) hash!377)))))

(declare-fun e!2713732 () Bool)

(assert (=> b!4360526 e!2713732))

(declare-fun res!1792727 () Bool)

(assert (=> b!4360526 (=> (not res!1792727) (not e!2713732))))

(declare-fun lt!1572849 () ListLongMap!1637)

(declare-fun lambda!141334 () Int)

(declare-fun forall!9145 (List!49090 Int) Bool)

(assert (=> b!4360526 (= res!1792727 (forall!9145 (toList!2988 lt!1572849) lambda!141334))))

(assert (=> b!4360526 (= lt!1572849 (+!662 lm!1707 lt!1572846))))

(assert (=> b!4360526 (= lt!1572846 (tuple2!48381 hash!377 newBucket!200))))

(declare-fun lt!1572851 () Unit!72319)

(declare-fun addValidProp!156 (ListLongMap!1637 Int (_ BitVec 64) List!49089) Unit!72319)

(assert (=> b!4360526 (= lt!1572851 (addValidProp!156 lm!1707 lambda!141334 hash!377 newBucket!200))))

(assert (=> b!4360526 (forall!9145 (toList!2988 lm!1707) lambda!141334)))

(declare-fun b!4360527 () Bool)

(declare-fun res!1792726 () Bool)

(declare-fun e!2713731 () Bool)

(assert (=> b!4360527 (=> (not res!1792726) (not e!2713731))))

(declare-fun allKeysSameHash!460 (List!49089 (_ BitVec 64) Hashable!4894) Bool)

(assert (=> b!4360527 (= res!1792726 (allKeysSameHash!460 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4360528 () Bool)

(declare-fun e!2713723 () Bool)

(declare-fun tp!1330297 () Bool)

(assert (=> b!4360528 (= e!2713723 tp!1330297)))

(declare-fun b!4360529 () Bool)

(declare-fun head!9069 (ListLongMap!1637) tuple2!48380)

(assert (=> b!4360529 (= e!2713728 (not (= (head!9069 lm!1707) lt!1572846)))))

(declare-fun res!1792731 () Bool)

(assert (=> start!422394 (=> (not res!1792731) (not e!2713731))))

(assert (=> start!422394 (= res!1792731 (forall!9145 (toList!2988 lm!1707) lambda!141334))))

(assert (=> start!422394 e!2713731))

(declare-fun e!2713729 () Bool)

(assert (=> start!422394 e!2713729))

(assert (=> start!422394 true))

(declare-fun inv!64510 (ListLongMap!1637) Bool)

(assert (=> start!422394 (and (inv!64510 lm!1707) e!2713723)))

(declare-fun tp_is_empty!25245 () Bool)

(assert (=> start!422394 tp_is_empty!25245))

(declare-fun tp_is_empty!25247 () Bool)

(assert (=> start!422394 tp_is_empty!25247))

(declare-fun b!4360530 () Bool)

(declare-fun res!1792725 () Bool)

(assert (=> b!4360530 (=> res!1792725 e!2713724)))

(declare-fun noDuplicateKeys!502 (List!49089) Bool)

(assert (=> b!4360530 (= res!1792725 (not (noDuplicateKeys!502 newBucket!200)))))

(declare-fun b!4360531 () Bool)

(declare-fun e!2713725 () Bool)

(assert (=> b!4360531 (= e!2713731 e!2713725)))

(declare-fun res!1792733 () Bool)

(assert (=> b!4360531 (=> (not res!1792733) (not e!2713725))))

(assert (=> b!4360531 (= res!1792733 (contains!11190 lt!1572843 key!3918))))

(assert (=> b!4360531 (= lt!1572843 (extractMap!561 (toList!2988 lm!1707)))))

(declare-fun b!4360532 () Bool)

(assert (=> b!4360532 (= e!2713730 (not (containsKey!719 (_2!27484 (h!54525 (toList!2988 lm!1707))) key!3918)))))

(declare-fun b!4360533 () Bool)

(assert (=> b!4360533 (= e!2713727 (forall!9145 (toList!2988 lt!1572850) lambda!141334))))

(declare-fun b!4360534 () Bool)

(declare-fun res!1792732 () Bool)

(assert (=> b!4360534 (=> (not res!1792732) (not e!2713731))))

(declare-fun allKeysSameHashInMap!606 (ListLongMap!1637 Hashable!4894) Bool)

(assert (=> b!4360534 (= res!1792732 (allKeysSameHashInMap!606 lm!1707 hashF!1247))))

(declare-fun b!4360535 () Bool)

(assert (=> b!4360535 (= e!2713725 (not e!2713724))))

(declare-fun res!1792729 () Bool)

(assert (=> b!4360535 (=> res!1792729 e!2713724)))

(declare-fun lt!1572847 () List!49089)

(declare-fun removePairForKey!472 (List!49089 K!10323) List!49089)

(assert (=> b!4360535 (= res!1792729 (not (= newBucket!200 (Cons!48965 lt!1572848 (removePairForKey!472 lt!1572847 key!3918)))))))

(assert (=> b!4360535 (= lt!1572848 (tuple2!48379 key!3918 newValue!99))))

(declare-fun lt!1572853 () Unit!72319)

(declare-fun lt!1572861 () tuple2!48380)

(declare-fun forallContained!1786 (List!49090 Int tuple2!48380) Unit!72319)

(assert (=> b!4360535 (= lt!1572853 (forallContained!1786 (toList!2988 lm!1707) lambda!141334 lt!1572861))))

(declare-fun contains!11191 (List!49090 tuple2!48380) Bool)

(assert (=> b!4360535 (contains!11191 (toList!2988 lm!1707) lt!1572861)))

(assert (=> b!4360535 (= lt!1572861 (tuple2!48381 hash!377 lt!1572847))))

(declare-fun lt!1572856 () Unit!72319)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!349 (List!49090 (_ BitVec 64) List!49089) Unit!72319)

(assert (=> b!4360535 (= lt!1572856 (lemmaGetValueByKeyImpliesContainsTuple!349 (toList!2988 lm!1707) hash!377 lt!1572847))))

(assert (=> b!4360535 (= lt!1572847 (apply!11354 lm!1707 hash!377))))

(declare-fun b!4360536 () Bool)

(assert (=> b!4360536 (= e!2713732 (forall!9145 (toList!2988 lt!1572849) lambda!141334))))

(declare-fun b!4360537 () Bool)

(declare-fun res!1792734 () Bool)

(assert (=> b!4360537 (=> (not res!1792734) (not e!2713725))))

(declare-fun contains!11192 (ListLongMap!1637 (_ BitVec 64)) Bool)

(assert (=> b!4360537 (= res!1792734 (contains!11192 lm!1707 hash!377))))

(declare-fun b!4360538 () Bool)

(declare-fun res!1792724 () Bool)

(assert (=> b!4360538 (=> (not res!1792724) (not e!2713731))))

(declare-fun hash!1602 (Hashable!4894 K!10323) (_ BitVec 64))

(assert (=> b!4360538 (= res!1792724 (= (hash!1602 hashF!1247 key!3918) hash!377))))

(declare-fun b!4360539 () Bool)

(declare-fun tp!1330298 () Bool)

(assert (=> b!4360539 (= e!2713729 (and tp_is_empty!25245 tp_is_empty!25247 tp!1330298))))

(assert (= (and start!422394 res!1792731) b!4360534))

(assert (= (and b!4360534 res!1792732) b!4360538))

(assert (= (and b!4360538 res!1792724) b!4360527))

(assert (= (and b!4360527 res!1792726) b!4360531))

(assert (= (and b!4360531 res!1792733) b!4360537))

(assert (= (and b!4360537 res!1792734) b!4360535))

(assert (= (and b!4360535 (not res!1792729)) b!4360530))

(assert (= (and b!4360530 (not res!1792725)) b!4360526))

(assert (= (and b!4360526 res!1792727) b!4360536))

(assert (= (and b!4360526 (not res!1792730)) b!4360525))

(assert (= (and b!4360525 res!1792723) b!4360532))

(assert (= (and b!4360525 res!1792722) b!4360529))

(assert (= (and b!4360525 (not res!1792728)) b!4360533))

(assert (= (and start!422394 (is-Cons!48965 newBucket!200)) b!4360539))

(assert (= start!422394 b!4360528))

(declare-fun m!4978459 () Bool)

(assert (=> b!4360530 m!4978459))

(declare-fun m!4978461 () Bool)

(assert (=> start!422394 m!4978461))

(declare-fun m!4978463 () Bool)

(assert (=> start!422394 m!4978463))

(declare-fun m!4978465 () Bool)

(assert (=> b!4360535 m!4978465))

(declare-fun m!4978467 () Bool)

(assert (=> b!4360535 m!4978467))

(declare-fun m!4978469 () Bool)

(assert (=> b!4360535 m!4978469))

(declare-fun m!4978471 () Bool)

(assert (=> b!4360535 m!4978471))

(declare-fun m!4978473 () Bool)

(assert (=> b!4360535 m!4978473))

(declare-fun m!4978475 () Bool)

(assert (=> b!4360531 m!4978475))

(declare-fun m!4978477 () Bool)

(assert (=> b!4360531 m!4978477))

(declare-fun m!4978479 () Bool)

(assert (=> b!4360532 m!4978479))

(declare-fun m!4978481 () Bool)

(assert (=> b!4360533 m!4978481))

(declare-fun m!4978483 () Bool)

(assert (=> b!4360536 m!4978483))

(declare-fun m!4978485 () Bool)

(assert (=> b!4360527 m!4978485))

(declare-fun m!4978487 () Bool)

(assert (=> b!4360534 m!4978487))

(declare-fun m!4978489 () Bool)

(assert (=> b!4360537 m!4978489))

(declare-fun m!4978491 () Bool)

(assert (=> b!4360525 m!4978491))

(declare-fun m!4978493 () Bool)

(assert (=> b!4360525 m!4978493))

(declare-fun m!4978495 () Bool)

(assert (=> b!4360525 m!4978495))

(declare-fun m!4978497 () Bool)

(assert (=> b!4360525 m!4978497))

(declare-fun m!4978499 () Bool)

(assert (=> b!4360525 m!4978499))

(declare-fun m!4978501 () Bool)

(assert (=> b!4360525 m!4978501))

(declare-fun m!4978503 () Bool)

(assert (=> b!4360525 m!4978503))

(declare-fun m!4978505 () Bool)

(assert (=> b!4360525 m!4978505))

(declare-fun m!4978507 () Bool)

(assert (=> b!4360525 m!4978507))

(declare-fun m!4978509 () Bool)

(assert (=> b!4360525 m!4978509))

(declare-fun m!4978511 () Bool)

(assert (=> b!4360525 m!4978511))

(declare-fun m!4978513 () Bool)

(assert (=> b!4360525 m!4978513))

(declare-fun m!4978515 () Bool)

(assert (=> b!4360525 m!4978515))

(declare-fun m!4978517 () Bool)

(assert (=> b!4360525 m!4978517))

(declare-fun m!4978519 () Bool)

(assert (=> b!4360525 m!4978519))

(declare-fun m!4978521 () Bool)

(assert (=> b!4360525 m!4978521))

(assert (=> b!4360525 m!4978503))

(assert (=> b!4360525 m!4978505))

(declare-fun m!4978523 () Bool)

(assert (=> b!4360525 m!4978523))

(declare-fun m!4978525 () Bool)

(assert (=> b!4360525 m!4978525))

(declare-fun m!4978527 () Bool)

(assert (=> b!4360525 m!4978527))

(declare-fun m!4978529 () Bool)

(assert (=> b!4360525 m!4978529))

(assert (=> b!4360525 m!4978525))

(assert (=> b!4360526 m!4978483))

(declare-fun m!4978531 () Bool)

(assert (=> b!4360526 m!4978531))

(declare-fun m!4978533 () Bool)

(assert (=> b!4360526 m!4978533))

(assert (=> b!4360526 m!4978461))

(declare-fun m!4978535 () Bool)

(assert (=> b!4360529 m!4978535))

(declare-fun m!4978537 () Bool)

(assert (=> b!4360538 m!4978537))

(push 1)

(assert (not b!4360531))

(assert (not b!4360533))

(assert (not b!4360529))

(assert (not b!4360535))

(assert (not b!4360527))

(assert (not b!4360539))

(assert (not start!422394))

(assert (not b!4360537))

(assert (not b!4360536))

(assert (not b!4360530))

(assert tp_is_empty!25245)

(assert (not b!4360534))

(assert (not b!4360526))

(assert (not b!4360525))

(assert (not b!4360538))

(assert (not b!4360532))

(assert (not b!4360528))

(assert tp_is_empty!25247)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1289981 () Bool)

(declare-fun head!9071 (List!49090) tuple2!48380)

(assert (=> d!1289981 (= (head!9069 lm!1707) (head!9071 (toList!2988 lm!1707)))))

(declare-fun bs!634565 () Bool)

(assert (= bs!634565 d!1289981))

(declare-fun m!4978619 () Bool)

(assert (=> bs!634565 m!4978619))

(assert (=> b!4360529 d!1289981))

(declare-fun d!1289983 () Bool)

(assert (=> d!1289983 true))

(assert (=> d!1289983 true))

(declare-fun lambda!141350 () Int)

(declare-fun forall!9147 (List!49089 Int) Bool)

(assert (=> d!1289983 (= (allKeysSameHash!460 newBucket!200 hash!377 hashF!1247) (forall!9147 newBucket!200 lambda!141350))))

(declare-fun bs!634566 () Bool)

(assert (= bs!634566 d!1289983))

(declare-fun m!4978621 () Bool)

(assert (=> bs!634566 m!4978621))

(assert (=> b!4360527 d!1289983))

(declare-fun d!1289985 () Bool)

(declare-fun hash!1607 (Hashable!4894 K!10323) (_ BitVec 64))

(assert (=> d!1289985 (= (hash!1602 hashF!1247 key!3918) (hash!1607 hashF!1247 key!3918))))

(declare-fun bs!634567 () Bool)

(assert (= bs!634567 d!1289985))

(declare-fun m!4978623 () Bool)

(assert (=> bs!634567 m!4978623))

(assert (=> b!4360538 d!1289985))

(declare-fun d!1289987 () Bool)

(declare-fun res!1792778 () Bool)

(declare-fun e!2713767 () Bool)

(assert (=> d!1289987 (=> res!1792778 e!2713767)))

(assert (=> d!1289987 (= res!1792778 (is-Nil!48966 (toList!2988 lt!1572849)))))

(assert (=> d!1289987 (= (forall!9145 (toList!2988 lt!1572849) lambda!141334) e!2713767)))

(declare-fun b!4360593 () Bool)

(declare-fun e!2713768 () Bool)

(assert (=> b!4360593 (= e!2713767 e!2713768)))

(declare-fun res!1792779 () Bool)

(assert (=> b!4360593 (=> (not res!1792779) (not e!2713768))))

(declare-fun dynLambda!20646 (Int tuple2!48380) Bool)

(assert (=> b!4360593 (= res!1792779 (dynLambda!20646 lambda!141334 (h!54525 (toList!2988 lt!1572849))))))

(declare-fun b!4360594 () Bool)

(assert (=> b!4360594 (= e!2713768 (forall!9145 (t!356010 (toList!2988 lt!1572849)) lambda!141334))))

(assert (= (and d!1289987 (not res!1792778)) b!4360593))

(assert (= (and b!4360593 res!1792779) b!4360594))

(declare-fun b_lambda!131795 () Bool)

(assert (=> (not b_lambda!131795) (not b!4360593)))

(declare-fun m!4978625 () Bool)

(assert (=> b!4360593 m!4978625))

(declare-fun m!4978627 () Bool)

(assert (=> b!4360594 m!4978627))

(assert (=> b!4360536 d!1289987))

(assert (=> b!4360526 d!1289987))

(declare-fun d!1289989 () Bool)

(declare-fun e!2713771 () Bool)

(assert (=> d!1289989 e!2713771))

(declare-fun res!1792784 () Bool)

(assert (=> d!1289989 (=> (not res!1792784) (not e!2713771))))

(declare-fun lt!1572928 () ListLongMap!1637)

(assert (=> d!1289989 (= res!1792784 (contains!11192 lt!1572928 (_1!27484 lt!1572846)))))

(declare-fun lt!1572930 () List!49090)

(assert (=> d!1289989 (= lt!1572928 (ListLongMap!1638 lt!1572930))))

(declare-fun lt!1572927 () Unit!72319)

(declare-fun lt!1572929 () Unit!72319)

(assert (=> d!1289989 (= lt!1572927 lt!1572929)))

(declare-datatypes ((Option!10482 0))(
  ( (None!10481) (Some!10481 (v!43385 List!49089)) )
))
(declare-fun getValueByKey!468 (List!49090 (_ BitVec 64)) Option!10482)

(assert (=> d!1289989 (= (getValueByKey!468 lt!1572930 (_1!27484 lt!1572846)) (Some!10481 (_2!27484 lt!1572846)))))

(declare-fun lemmaContainsTupThenGetReturnValue!242 (List!49090 (_ BitVec 64) List!49089) Unit!72319)

(assert (=> d!1289989 (= lt!1572929 (lemmaContainsTupThenGetReturnValue!242 lt!1572930 (_1!27484 lt!1572846) (_2!27484 lt!1572846)))))

(declare-fun insertStrictlySorted!142 (List!49090 (_ BitVec 64) List!49089) List!49090)

(assert (=> d!1289989 (= lt!1572930 (insertStrictlySorted!142 (toList!2988 lm!1707) (_1!27484 lt!1572846) (_2!27484 lt!1572846)))))

(assert (=> d!1289989 (= (+!662 lm!1707 lt!1572846) lt!1572928)))

(declare-fun b!4360599 () Bool)

(declare-fun res!1792785 () Bool)

(assert (=> b!4360599 (=> (not res!1792785) (not e!2713771))))

(assert (=> b!4360599 (= res!1792785 (= (getValueByKey!468 (toList!2988 lt!1572928) (_1!27484 lt!1572846)) (Some!10481 (_2!27484 lt!1572846))))))

(declare-fun b!4360600 () Bool)

(assert (=> b!4360600 (= e!2713771 (contains!11191 (toList!2988 lt!1572928) lt!1572846))))

(assert (= (and d!1289989 res!1792784) b!4360599))

(assert (= (and b!4360599 res!1792785) b!4360600))

(declare-fun m!4978629 () Bool)

(assert (=> d!1289989 m!4978629))

(declare-fun m!4978631 () Bool)

(assert (=> d!1289989 m!4978631))

(declare-fun m!4978633 () Bool)

(assert (=> d!1289989 m!4978633))

(declare-fun m!4978635 () Bool)

(assert (=> d!1289989 m!4978635))

(declare-fun m!4978637 () Bool)

(assert (=> b!4360599 m!4978637))

(declare-fun m!4978639 () Bool)

(assert (=> b!4360600 m!4978639))

(assert (=> b!4360526 d!1289989))

(declare-fun d!1289991 () Bool)

(assert (=> d!1289991 (forall!9145 (toList!2988 (+!662 lm!1707 (tuple2!48381 hash!377 newBucket!200))) lambda!141334)))

(declare-fun lt!1572933 () Unit!72319)

(declare-fun choose!27000 (ListLongMap!1637 Int (_ BitVec 64) List!49089) Unit!72319)

(assert (=> d!1289991 (= lt!1572933 (choose!27000 lm!1707 lambda!141334 hash!377 newBucket!200))))

(declare-fun e!2713774 () Bool)

(assert (=> d!1289991 e!2713774))

(declare-fun res!1792788 () Bool)

(assert (=> d!1289991 (=> (not res!1792788) (not e!2713774))))

(assert (=> d!1289991 (= res!1792788 (forall!9145 (toList!2988 lm!1707) lambda!141334))))

(assert (=> d!1289991 (= (addValidProp!156 lm!1707 lambda!141334 hash!377 newBucket!200) lt!1572933)))

(declare-fun b!4360604 () Bool)

(assert (=> b!4360604 (= e!2713774 (dynLambda!20646 lambda!141334 (tuple2!48381 hash!377 newBucket!200)))))

(assert (= (and d!1289991 res!1792788) b!4360604))

(declare-fun b_lambda!131797 () Bool)

(assert (=> (not b_lambda!131797) (not b!4360604)))

(declare-fun m!4978641 () Bool)

(assert (=> d!1289991 m!4978641))

(declare-fun m!4978643 () Bool)

(assert (=> d!1289991 m!4978643))

(declare-fun m!4978645 () Bool)

(assert (=> d!1289991 m!4978645))

(assert (=> d!1289991 m!4978461))

(declare-fun m!4978647 () Bool)

(assert (=> b!4360604 m!4978647))

(assert (=> b!4360526 d!1289991))

(declare-fun d!1289993 () Bool)

(declare-fun res!1792789 () Bool)

(declare-fun e!2713775 () Bool)

(assert (=> d!1289993 (=> res!1792789 e!2713775)))

(assert (=> d!1289993 (= res!1792789 (is-Nil!48966 (toList!2988 lm!1707)))))

(assert (=> d!1289993 (= (forall!9145 (toList!2988 lm!1707) lambda!141334) e!2713775)))

(declare-fun b!4360605 () Bool)

(declare-fun e!2713776 () Bool)

(assert (=> b!4360605 (= e!2713775 e!2713776)))

(declare-fun res!1792790 () Bool)

(assert (=> b!4360605 (=> (not res!1792790) (not e!2713776))))

(assert (=> b!4360605 (= res!1792790 (dynLambda!20646 lambda!141334 (h!54525 (toList!2988 lm!1707))))))

(declare-fun b!4360606 () Bool)

(assert (=> b!4360606 (= e!2713776 (forall!9145 (t!356010 (toList!2988 lm!1707)) lambda!141334))))

(assert (= (and d!1289993 (not res!1792789)) b!4360605))

(assert (= (and b!4360605 res!1792790) b!4360606))

(declare-fun b_lambda!131799 () Bool)

(assert (=> (not b_lambda!131799) (not b!4360605)))

(declare-fun m!4978649 () Bool)

(assert (=> b!4360605 m!4978649))

(declare-fun m!4978651 () Bool)

(assert (=> b!4360606 m!4978651))

(assert (=> b!4360526 d!1289993))

(declare-fun d!1289995 () Bool)

(declare-fun e!2713782 () Bool)

(assert (=> d!1289995 e!2713782))

(declare-fun res!1792793 () Bool)

(assert (=> d!1289995 (=> res!1792793 e!2713782)))

(declare-fun lt!1572943 () Bool)

(assert (=> d!1289995 (= res!1792793 (not lt!1572943))))

(declare-fun lt!1572945 () Bool)

(assert (=> d!1289995 (= lt!1572943 lt!1572945)))

(declare-fun lt!1572942 () Unit!72319)

(declare-fun e!2713781 () Unit!72319)

(assert (=> d!1289995 (= lt!1572942 e!2713781)))

(declare-fun c!741469 () Bool)

(assert (=> d!1289995 (= c!741469 lt!1572945)))

(declare-fun containsKey!721 (List!49090 (_ BitVec 64)) Bool)

(assert (=> d!1289995 (= lt!1572945 (containsKey!721 (toList!2988 lm!1707) hash!377))))

(assert (=> d!1289995 (= (contains!11192 lm!1707 hash!377) lt!1572943)))

(declare-fun b!4360613 () Bool)

(declare-fun lt!1572944 () Unit!72319)

(assert (=> b!4360613 (= e!2713781 lt!1572944)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!379 (List!49090 (_ BitVec 64)) Unit!72319)

(assert (=> b!4360613 (= lt!1572944 (lemmaContainsKeyImpliesGetValueByKeyDefined!379 (toList!2988 lm!1707) hash!377))))

(declare-fun isDefined!7776 (Option!10482) Bool)

(assert (=> b!4360613 (isDefined!7776 (getValueByKey!468 (toList!2988 lm!1707) hash!377))))

(declare-fun b!4360614 () Bool)

(declare-fun Unit!72323 () Unit!72319)

(assert (=> b!4360614 (= e!2713781 Unit!72323)))

(declare-fun b!4360615 () Bool)

(assert (=> b!4360615 (= e!2713782 (isDefined!7776 (getValueByKey!468 (toList!2988 lm!1707) hash!377)))))

(assert (= (and d!1289995 c!741469) b!4360613))

(assert (= (and d!1289995 (not c!741469)) b!4360614))

(assert (= (and d!1289995 (not res!1792793)) b!4360615))

(declare-fun m!4978653 () Bool)

(assert (=> d!1289995 m!4978653))

(declare-fun m!4978655 () Bool)

(assert (=> b!4360613 m!4978655))

(declare-fun m!4978657 () Bool)

(assert (=> b!4360613 m!4978657))

(assert (=> b!4360613 m!4978657))

(declare-fun m!4978659 () Bool)

(assert (=> b!4360613 m!4978659))

(assert (=> b!4360615 m!4978657))

(assert (=> b!4360615 m!4978657))

(assert (=> b!4360615 m!4978659))

(assert (=> b!4360537 d!1289995))

(declare-fun d!1289997 () Bool)

(declare-fun get!15909 (Option!10482) List!49089)

(assert (=> d!1289997 (= (apply!11354 lm!1707 hash!377) (get!15909 (getValueByKey!468 (toList!2988 lm!1707) hash!377)))))

(declare-fun bs!634568 () Bool)

(assert (= bs!634568 d!1289997))

(assert (=> bs!634568 m!4978657))

(assert (=> bs!634568 m!4978657))

(declare-fun m!4978661 () Bool)

(assert (=> bs!634568 m!4978661))

(assert (=> b!4360535 d!1289997))

(declare-fun d!1289999 () Bool)

(assert (=> d!1289999 (contains!11191 (toList!2988 lm!1707) (tuple2!48381 hash!377 lt!1572847))))

(declare-fun lt!1572948 () Unit!72319)

(declare-fun choose!27001 (List!49090 (_ BitVec 64) List!49089) Unit!72319)

(assert (=> d!1289999 (= lt!1572948 (choose!27001 (toList!2988 lm!1707) hash!377 lt!1572847))))

(declare-fun e!2713785 () Bool)

(assert (=> d!1289999 e!2713785))

(declare-fun res!1792796 () Bool)

(assert (=> d!1289999 (=> (not res!1792796) (not e!2713785))))

(declare-fun isStrictlySorted!111 (List!49090) Bool)

(assert (=> d!1289999 (= res!1792796 (isStrictlySorted!111 (toList!2988 lm!1707)))))

(assert (=> d!1289999 (= (lemmaGetValueByKeyImpliesContainsTuple!349 (toList!2988 lm!1707) hash!377 lt!1572847) lt!1572948)))

(declare-fun b!4360618 () Bool)

(assert (=> b!4360618 (= e!2713785 (= (getValueByKey!468 (toList!2988 lm!1707) hash!377) (Some!10481 lt!1572847)))))

(assert (= (and d!1289999 res!1792796) b!4360618))

(declare-fun m!4978663 () Bool)

(assert (=> d!1289999 m!4978663))

(declare-fun m!4978665 () Bool)

(assert (=> d!1289999 m!4978665))

(declare-fun m!4978667 () Bool)

(assert (=> d!1289999 m!4978667))

(assert (=> b!4360618 m!4978657))

(assert (=> b!4360535 d!1289999))

(declare-fun d!1290001 () Bool)

(declare-fun lt!1572951 () Bool)

(declare-fun content!7738 (List!49090) (Set tuple2!48380))

(assert (=> d!1290001 (= lt!1572951 (set.member lt!1572861 (content!7738 (toList!2988 lm!1707))))))

(declare-fun e!2713790 () Bool)

(assert (=> d!1290001 (= lt!1572951 e!2713790)))

(declare-fun res!1792801 () Bool)

(assert (=> d!1290001 (=> (not res!1792801) (not e!2713790))))

(assert (=> d!1290001 (= res!1792801 (is-Cons!48966 (toList!2988 lm!1707)))))

(assert (=> d!1290001 (= (contains!11191 (toList!2988 lm!1707) lt!1572861) lt!1572951)))

(declare-fun b!4360623 () Bool)

(declare-fun e!2713791 () Bool)

(assert (=> b!4360623 (= e!2713790 e!2713791)))

(declare-fun res!1792802 () Bool)

(assert (=> b!4360623 (=> res!1792802 e!2713791)))

(assert (=> b!4360623 (= res!1792802 (= (h!54525 (toList!2988 lm!1707)) lt!1572861))))

(declare-fun b!4360624 () Bool)

(assert (=> b!4360624 (= e!2713791 (contains!11191 (t!356010 (toList!2988 lm!1707)) lt!1572861))))

(assert (= (and d!1290001 res!1792801) b!4360623))

(assert (= (and b!4360623 (not res!1792802)) b!4360624))

(declare-fun m!4978669 () Bool)

(assert (=> d!1290001 m!4978669))

(declare-fun m!4978671 () Bool)

(assert (=> d!1290001 m!4978671))

(declare-fun m!4978673 () Bool)

(assert (=> b!4360624 m!4978673))

(assert (=> b!4360535 d!1290001))

(declare-fun d!1290005 () Bool)

(assert (=> d!1290005 (dynLambda!20646 lambda!141334 lt!1572861)))

(declare-fun lt!1572954 () Unit!72319)

(declare-fun choose!27002 (List!49090 Int tuple2!48380) Unit!72319)

(assert (=> d!1290005 (= lt!1572954 (choose!27002 (toList!2988 lm!1707) lambda!141334 lt!1572861))))

(declare-fun e!2713794 () Bool)

(assert (=> d!1290005 e!2713794))

(declare-fun res!1792805 () Bool)

(assert (=> d!1290005 (=> (not res!1792805) (not e!2713794))))

(assert (=> d!1290005 (= res!1792805 (forall!9145 (toList!2988 lm!1707) lambda!141334))))

(assert (=> d!1290005 (= (forallContained!1786 (toList!2988 lm!1707) lambda!141334 lt!1572861) lt!1572954)))

(declare-fun b!4360627 () Bool)

(assert (=> b!4360627 (= e!2713794 (contains!11191 (toList!2988 lm!1707) lt!1572861))))

(assert (= (and d!1290005 res!1792805) b!4360627))

(declare-fun b_lambda!131801 () Bool)

(assert (=> (not b_lambda!131801) (not d!1290005)))

(declare-fun m!4978677 () Bool)

(assert (=> d!1290005 m!4978677))

(declare-fun m!4978679 () Bool)

(assert (=> d!1290005 m!4978679))

(assert (=> d!1290005 m!4978461))

(assert (=> b!4360627 m!4978465))

(assert (=> b!4360535 d!1290005))

(declare-fun b!4360639 () Bool)

(declare-fun e!2713800 () List!49089)

(assert (=> b!4360639 (= e!2713800 Nil!48965)))

(declare-fun b!4360636 () Bool)

(declare-fun e!2713799 () List!49089)

(assert (=> b!4360636 (= e!2713799 (t!356009 lt!1572847))))

(declare-fun b!4360638 () Bool)

(assert (=> b!4360638 (= e!2713800 (Cons!48965 (h!54524 lt!1572847) (removePairForKey!472 (t!356009 lt!1572847) key!3918)))))

(declare-fun d!1290007 () Bool)

(declare-fun lt!1572957 () List!49089)

(assert (=> d!1290007 (not (containsKey!719 lt!1572957 key!3918))))

(assert (=> d!1290007 (= lt!1572957 e!2713799)))

(declare-fun c!741474 () Bool)

(assert (=> d!1290007 (= c!741474 (and (is-Cons!48965 lt!1572847) (= (_1!27483 (h!54524 lt!1572847)) key!3918)))))

(assert (=> d!1290007 (noDuplicateKeys!502 lt!1572847)))

(assert (=> d!1290007 (= (removePairForKey!472 lt!1572847 key!3918) lt!1572957)))

(declare-fun b!4360637 () Bool)

(assert (=> b!4360637 (= e!2713799 e!2713800)))

(declare-fun c!741475 () Bool)

(assert (=> b!4360637 (= c!741475 (is-Cons!48965 lt!1572847))))

(assert (= (and d!1290007 c!741474) b!4360636))

(assert (= (and d!1290007 (not c!741474)) b!4360637))

(assert (= (and b!4360637 c!741475) b!4360638))

(assert (= (and b!4360637 (not c!741475)) b!4360639))

(declare-fun m!4978683 () Bool)

(assert (=> b!4360638 m!4978683))

(declare-fun m!4978685 () Bool)

(assert (=> d!1290007 m!4978685))

(declare-fun m!4978687 () Bool)

(assert (=> d!1290007 m!4978687))

(assert (=> b!4360535 d!1290007))

(declare-fun d!1290011 () Bool)

(assert (=> d!1290011 (contains!11190 lt!1572858 key!3918)))

(declare-fun lt!1572963 () Unit!72319)

(declare-fun choose!27003 (List!49089 K!10323 V!10569 ListMap!2231) Unit!72319)

(assert (=> d!1290011 (= lt!1572963 (choose!27003 (_2!27484 (h!54525 (toList!2988 lm!1707))) key!3918 newValue!99 lt!1572858))))

(assert (=> d!1290011 (noDuplicateKeys!502 (_2!27484 (h!54525 (toList!2988 lm!1707))))))

(assert (=> d!1290011 (= (lemmaAddToMapContainsAndNotInListThenInAcc!45 (_2!27484 (h!54525 (toList!2988 lm!1707))) key!3918 newValue!99 lt!1572858) lt!1572963)))

(declare-fun bs!634570 () Bool)

(assert (= bs!634570 d!1290011))

(assert (=> bs!634570 m!4978521))

(declare-fun m!4978693 () Bool)

(assert (=> bs!634570 m!4978693))

(declare-fun m!4978695 () Bool)

(assert (=> bs!634570 m!4978695))

(assert (=> b!4360525 d!1290011))

(declare-fun bs!634571 () Bool)

(declare-fun d!1290015 () Bool)

(assert (= bs!634571 (and d!1290015 start!422394)))

(declare-fun lambda!141353 () Int)

(assert (=> bs!634571 (= lambda!141353 lambda!141334)))

(assert (=> d!1290015 (eq!272 (extractMap!561 (toList!2988 (+!662 lt!1572850 (tuple2!48381 hash!377 newBucket!200)))) (+!661 (extractMap!561 (toList!2988 lt!1572850)) (tuple2!48379 key!3918 newValue!99)))))

(declare-fun lt!1572969 () Unit!72319)

(declare-fun choose!27004 (ListLongMap!1637 (_ BitVec 64) List!49089 K!10323 V!10569 Hashable!4894) Unit!72319)

(assert (=> d!1290015 (= lt!1572969 (choose!27004 lt!1572850 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1290015 (forall!9145 (toList!2988 lt!1572850) lambda!141353)))

(assert (=> d!1290015 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!106 lt!1572850 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1572969)))

(declare-fun bs!634572 () Bool)

(assert (= bs!634572 d!1290015))

(declare-fun m!4978703 () Bool)

(assert (=> bs!634572 m!4978703))

(declare-fun m!4978705 () Bool)

(assert (=> bs!634572 m!4978705))

(declare-fun m!4978707 () Bool)

(assert (=> bs!634572 m!4978707))

(assert (=> bs!634572 m!4978495))

(assert (=> bs!634572 m!4978705))

(declare-fun m!4978709 () Bool)

(assert (=> bs!634572 m!4978709))

(assert (=> bs!634572 m!4978495))

(declare-fun m!4978711 () Bool)

(assert (=> bs!634572 m!4978711))

(assert (=> bs!634572 m!4978703))

(declare-fun m!4978713 () Bool)

(assert (=> bs!634572 m!4978713))

(assert (=> b!4360525 d!1290015))

(declare-fun bm!303105 () Bool)

(declare-fun call!303110 () Bool)

(declare-datatypes ((List!49093 0))(
  ( (Nil!48969) (Cons!48969 (h!54530 K!10323) (t!356013 List!49093)) )
))
(declare-fun e!2713832 () List!49093)

(declare-fun contains!11196 (List!49093 K!10323) Bool)

(assert (=> bm!303105 (= call!303110 (contains!11196 e!2713832 key!3918))))

(declare-fun c!741488 () Bool)

(declare-fun c!741489 () Bool)

(assert (=> bm!303105 (= c!741488 c!741489)))

(declare-fun b!4360684 () Bool)

(declare-fun e!2713836 () Bool)

(declare-fun e!2713831 () Bool)

(assert (=> b!4360684 (= e!2713836 e!2713831)))

(declare-fun res!1792826 () Bool)

(assert (=> b!4360684 (=> (not res!1792826) (not e!2713831))))

(declare-datatypes ((Option!10483 0))(
  ( (None!10482) (Some!10482 (v!43386 V!10569)) )
))
(declare-fun isDefined!7777 (Option!10483) Bool)

(declare-fun getValueByKey!469 (List!49089 K!10323) Option!10483)

(assert (=> b!4360684 (= res!1792826 (isDefined!7777 (getValueByKey!469 (toList!2987 lt!1572859) key!3918)))))

(declare-fun b!4360685 () Bool)

(declare-fun keys!16549 (ListMap!2231) List!49093)

(assert (=> b!4360685 (= e!2713832 (keys!16549 lt!1572859))))

(declare-fun b!4360686 () Bool)

(declare-fun e!2713833 () Unit!72319)

(declare-fun Unit!72324 () Unit!72319)

(assert (=> b!4360686 (= e!2713833 Unit!72324)))

(declare-fun d!1290019 () Bool)

(assert (=> d!1290019 e!2713836))

(declare-fun res!1792824 () Bool)

(assert (=> d!1290019 (=> res!1792824 e!2713836)))

(declare-fun e!2713835 () Bool)

(assert (=> d!1290019 (= res!1792824 e!2713835)))

(declare-fun res!1792825 () Bool)

(assert (=> d!1290019 (=> (not res!1792825) (not e!2713835))))

(declare-fun lt!1572995 () Bool)

(assert (=> d!1290019 (= res!1792825 (not lt!1572995))))

(declare-fun lt!1572999 () Bool)

(assert (=> d!1290019 (= lt!1572995 lt!1572999)))

(declare-fun lt!1572998 () Unit!72319)

(declare-fun e!2713834 () Unit!72319)

(assert (=> d!1290019 (= lt!1572998 e!2713834)))

(assert (=> d!1290019 (= c!741489 lt!1572999)))

(declare-fun containsKey!722 (List!49089 K!10323) Bool)

(assert (=> d!1290019 (= lt!1572999 (containsKey!722 (toList!2987 lt!1572859) key!3918))))

(assert (=> d!1290019 (= (contains!11190 lt!1572859 key!3918) lt!1572995)))

(declare-fun b!4360687 () Bool)

(assert (=> b!4360687 false))

(declare-fun lt!1572996 () Unit!72319)

(declare-fun lt!1572994 () Unit!72319)

(assert (=> b!4360687 (= lt!1572996 lt!1572994)))

(assert (=> b!4360687 (containsKey!722 (toList!2987 lt!1572859) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!131 (List!49089 K!10323) Unit!72319)

(assert (=> b!4360687 (= lt!1572994 (lemmaInGetKeysListThenContainsKey!131 (toList!2987 lt!1572859) key!3918))))

(declare-fun Unit!72325 () Unit!72319)

(assert (=> b!4360687 (= e!2713833 Unit!72325)))

(declare-fun b!4360688 () Bool)

(declare-fun getKeysList!133 (List!49089) List!49093)

(assert (=> b!4360688 (= e!2713832 (getKeysList!133 (toList!2987 lt!1572859)))))

(declare-fun b!4360689 () Bool)

(assert (=> b!4360689 (= e!2713831 (contains!11196 (keys!16549 lt!1572859) key!3918))))

(declare-fun b!4360690 () Bool)

(declare-fun lt!1572993 () Unit!72319)

(assert (=> b!4360690 (= e!2713834 lt!1572993)))

(declare-fun lt!1572992 () Unit!72319)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!380 (List!49089 K!10323) Unit!72319)

(assert (=> b!4360690 (= lt!1572992 (lemmaContainsKeyImpliesGetValueByKeyDefined!380 (toList!2987 lt!1572859) key!3918))))

(assert (=> b!4360690 (isDefined!7777 (getValueByKey!469 (toList!2987 lt!1572859) key!3918))))

(declare-fun lt!1572997 () Unit!72319)

(assert (=> b!4360690 (= lt!1572997 lt!1572992)))

(declare-fun lemmaInListThenGetKeysListContains!130 (List!49089 K!10323) Unit!72319)

(assert (=> b!4360690 (= lt!1572993 (lemmaInListThenGetKeysListContains!130 (toList!2987 lt!1572859) key!3918))))

(assert (=> b!4360690 call!303110))

(declare-fun b!4360691 () Bool)

(assert (=> b!4360691 (= e!2713835 (not (contains!11196 (keys!16549 lt!1572859) key!3918)))))

(declare-fun b!4360692 () Bool)

(assert (=> b!4360692 (= e!2713834 e!2713833)))

(declare-fun c!741490 () Bool)

(assert (=> b!4360692 (= c!741490 call!303110)))

(assert (= (and d!1290019 c!741489) b!4360690))

(assert (= (and d!1290019 (not c!741489)) b!4360692))

(assert (= (and b!4360692 c!741490) b!4360687))

(assert (= (and b!4360692 (not c!741490)) b!4360686))

(assert (= (or b!4360690 b!4360692) bm!303105))

(assert (= (and bm!303105 c!741488) b!4360688))

(assert (= (and bm!303105 (not c!741488)) b!4360685))

(assert (= (and d!1290019 res!1792825) b!4360691))

(assert (= (and d!1290019 (not res!1792824)) b!4360684))

(assert (= (and b!4360684 res!1792826) b!4360689))

(declare-fun m!4978729 () Bool)

(assert (=> b!4360687 m!4978729))

(declare-fun m!4978731 () Bool)

(assert (=> b!4360687 m!4978731))

(declare-fun m!4978733 () Bool)

(assert (=> b!4360691 m!4978733))

(assert (=> b!4360691 m!4978733))

(declare-fun m!4978735 () Bool)

(assert (=> b!4360691 m!4978735))

(declare-fun m!4978737 () Bool)

(assert (=> b!4360688 m!4978737))

(assert (=> b!4360689 m!4978733))

(assert (=> b!4360689 m!4978733))

(assert (=> b!4360689 m!4978735))

(assert (=> d!1290019 m!4978729))

(assert (=> b!4360685 m!4978733))

(declare-fun m!4978739 () Bool)

(assert (=> b!4360684 m!4978739))

(assert (=> b!4360684 m!4978739))

(declare-fun m!4978741 () Bool)

(assert (=> b!4360684 m!4978741))

(declare-fun m!4978743 () Bool)

(assert (=> bm!303105 m!4978743))

(declare-fun m!4978745 () Bool)

(assert (=> b!4360690 m!4978745))

(assert (=> b!4360690 m!4978739))

(assert (=> b!4360690 m!4978739))

(assert (=> b!4360690 m!4978741))

(declare-fun m!4978747 () Bool)

(assert (=> b!4360690 m!4978747))

(assert (=> b!4360525 d!1290019))

(declare-fun bs!634576 () Bool)

(declare-fun d!1290027 () Bool)

(assert (= bs!634576 (and d!1290027 start!422394)))

(declare-fun lambda!141362 () Int)

(assert (=> bs!634576 (= lambda!141362 lambda!141334)))

(declare-fun bs!634577 () Bool)

(assert (= bs!634577 (and d!1290027 d!1290015)))

(assert (=> bs!634577 (= lambda!141362 lambda!141353)))

(declare-fun lt!1573002 () ListMap!2231)

(declare-fun invariantList!685 (List!49089) Bool)

(assert (=> d!1290027 (invariantList!685 (toList!2987 lt!1573002))))

(declare-fun e!2713839 () ListMap!2231)

(assert (=> d!1290027 (= lt!1573002 e!2713839)))

(declare-fun c!741493 () Bool)

(assert (=> d!1290027 (= c!741493 (is-Cons!48966 (toList!2988 lt!1572850)))))

(assert (=> d!1290027 (forall!9145 (toList!2988 lt!1572850) lambda!141362)))

(assert (=> d!1290027 (= (extractMap!561 (toList!2988 lt!1572850)) lt!1573002)))

(declare-fun b!4360701 () Bool)

(assert (=> b!4360701 (= e!2713839 (addToMapMapFromBucket!198 (_2!27484 (h!54525 (toList!2988 lt!1572850))) (extractMap!561 (t!356010 (toList!2988 lt!1572850)))))))

(declare-fun b!4360702 () Bool)

(assert (=> b!4360702 (= e!2713839 (ListMap!2232 Nil!48965))))

(assert (= (and d!1290027 c!741493) b!4360701))

(assert (= (and d!1290027 (not c!741493)) b!4360702))

(declare-fun m!4978751 () Bool)

(assert (=> d!1290027 m!4978751))

(declare-fun m!4978753 () Bool)

(assert (=> d!1290027 m!4978753))

(declare-fun m!4978755 () Bool)

(assert (=> b!4360701 m!4978755))

(assert (=> b!4360701 m!4978755))

(declare-fun m!4978757 () Bool)

(assert (=> b!4360701 m!4978757))

(assert (=> b!4360525 d!1290027))

(declare-fun bs!634578 () Bool)

(declare-fun d!1290031 () Bool)

(assert (= bs!634578 (and d!1290031 start!422394)))

(declare-fun lambda!141363 () Int)

(assert (=> bs!634578 (= lambda!141363 lambda!141334)))

(declare-fun bs!634579 () Bool)

(assert (= bs!634579 (and d!1290031 d!1290015)))

(assert (=> bs!634579 (= lambda!141363 lambda!141353)))

(declare-fun bs!634580 () Bool)

(assert (= bs!634580 (and d!1290031 d!1290027)))

(assert (=> bs!634580 (= lambda!141363 lambda!141362)))

(declare-fun lt!1573009 () ListMap!2231)

(assert (=> d!1290031 (invariantList!685 (toList!2987 lt!1573009))))

(declare-fun e!2713842 () ListMap!2231)

(assert (=> d!1290031 (= lt!1573009 e!2713842)))

(declare-fun c!741496 () Bool)

(assert (=> d!1290031 (= c!741496 (is-Cons!48966 (toList!2988 (+!662 lt!1572850 lt!1572846))))))

(assert (=> d!1290031 (forall!9145 (toList!2988 (+!662 lt!1572850 lt!1572846)) lambda!141363)))

(assert (=> d!1290031 (= (extractMap!561 (toList!2988 (+!662 lt!1572850 lt!1572846))) lt!1573009)))

(declare-fun b!4360707 () Bool)

(assert (=> b!4360707 (= e!2713842 (addToMapMapFromBucket!198 (_2!27484 (h!54525 (toList!2988 (+!662 lt!1572850 lt!1572846)))) (extractMap!561 (t!356010 (toList!2988 (+!662 lt!1572850 lt!1572846))))))))

(declare-fun b!4360708 () Bool)

(assert (=> b!4360708 (= e!2713842 (ListMap!2232 Nil!48965))))

(assert (= (and d!1290031 c!741496) b!4360707))

(assert (= (and d!1290031 (not c!741496)) b!4360708))

(declare-fun m!4978759 () Bool)

(assert (=> d!1290031 m!4978759))

(declare-fun m!4978761 () Bool)

(assert (=> d!1290031 m!4978761))

(declare-fun m!4978763 () Bool)

(assert (=> b!4360707 m!4978763))

(assert (=> b!4360707 m!4978763))

(declare-fun m!4978765 () Bool)

(assert (=> b!4360707 m!4978765))

(assert (=> b!4360525 d!1290031))

(declare-fun d!1290033 () Bool)

(declare-fun tail!7019 (List!49090) List!49090)

(assert (=> d!1290033 (= (tail!7017 lm!1707) (ListLongMap!1638 (tail!7019 (toList!2988 lm!1707))))))

(declare-fun bs!634581 () Bool)

(assert (= bs!634581 d!1290033))

(declare-fun m!4978767 () Bool)

(assert (=> bs!634581 m!4978767))

(assert (=> b!4360525 d!1290033))

(declare-fun d!1290035 () Bool)

(declare-fun content!7739 (List!49089) (Set tuple2!48378))

(assert (=> d!1290035 (= (eq!272 (addToMapMapFromBucket!198 (_2!27484 (h!54525 (toList!2988 lm!1707))) lt!1572860) (+!661 lt!1572857 lt!1572848)) (= (content!7739 (toList!2987 (addToMapMapFromBucket!198 (_2!27484 (h!54525 (toList!2988 lm!1707))) lt!1572860))) (content!7739 (toList!2987 (+!661 lt!1572857 lt!1572848)))))))

(declare-fun bs!634582 () Bool)

(assert (= bs!634582 d!1290035))

(declare-fun m!4978769 () Bool)

(assert (=> bs!634582 m!4978769))

(declare-fun m!4978771 () Bool)

(assert (=> bs!634582 m!4978771))

(assert (=> b!4360525 d!1290035))

(declare-fun bm!303106 () Bool)

(declare-fun call!303111 () Bool)

(declare-fun e!2713846 () List!49093)

(assert (=> bm!303106 (= call!303111 (contains!11196 e!2713846 key!3918))))

(declare-fun c!741497 () Bool)

(declare-fun c!741498 () Bool)

(assert (=> bm!303106 (= c!741497 c!741498)))

(declare-fun b!4360711 () Bool)

(declare-fun e!2713850 () Bool)

(declare-fun e!2713845 () Bool)

(assert (=> b!4360711 (= e!2713850 e!2713845)))

(declare-fun res!1792831 () Bool)

(assert (=> b!4360711 (=> (not res!1792831) (not e!2713845))))

(assert (=> b!4360711 (= res!1792831 (isDefined!7777 (getValueByKey!469 (toList!2987 lt!1572858) key!3918)))))

(declare-fun b!4360712 () Bool)

(assert (=> b!4360712 (= e!2713846 (keys!16549 lt!1572858))))

(declare-fun b!4360713 () Bool)

(declare-fun e!2713847 () Unit!72319)

(declare-fun Unit!72326 () Unit!72319)

(assert (=> b!4360713 (= e!2713847 Unit!72326)))

(declare-fun d!1290037 () Bool)

(assert (=> d!1290037 e!2713850))

(declare-fun res!1792829 () Bool)

(assert (=> d!1290037 (=> res!1792829 e!2713850)))

(declare-fun e!2713849 () Bool)

(assert (=> d!1290037 (= res!1792829 e!2713849)))

(declare-fun res!1792830 () Bool)

(assert (=> d!1290037 (=> (not res!1792830) (not e!2713849))))

(declare-fun lt!1573015 () Bool)

(assert (=> d!1290037 (= res!1792830 (not lt!1573015))))

(declare-fun lt!1573019 () Bool)

(assert (=> d!1290037 (= lt!1573015 lt!1573019)))

(declare-fun lt!1573018 () Unit!72319)

(declare-fun e!2713848 () Unit!72319)

(assert (=> d!1290037 (= lt!1573018 e!2713848)))

(assert (=> d!1290037 (= c!741498 lt!1573019)))

(assert (=> d!1290037 (= lt!1573019 (containsKey!722 (toList!2987 lt!1572858) key!3918))))

(assert (=> d!1290037 (= (contains!11190 lt!1572858 key!3918) lt!1573015)))

(declare-fun b!4360714 () Bool)

(assert (=> b!4360714 false))

(declare-fun lt!1573016 () Unit!72319)

(declare-fun lt!1573014 () Unit!72319)

(assert (=> b!4360714 (= lt!1573016 lt!1573014)))

(assert (=> b!4360714 (containsKey!722 (toList!2987 lt!1572858) key!3918)))

(assert (=> b!4360714 (= lt!1573014 (lemmaInGetKeysListThenContainsKey!131 (toList!2987 lt!1572858) key!3918))))

(declare-fun Unit!72327 () Unit!72319)

(assert (=> b!4360714 (= e!2713847 Unit!72327)))

(declare-fun b!4360715 () Bool)

(assert (=> b!4360715 (= e!2713846 (getKeysList!133 (toList!2987 lt!1572858)))))

(declare-fun b!4360716 () Bool)

(assert (=> b!4360716 (= e!2713845 (contains!11196 (keys!16549 lt!1572858) key!3918))))

(declare-fun b!4360717 () Bool)

(declare-fun lt!1573013 () Unit!72319)

(assert (=> b!4360717 (= e!2713848 lt!1573013)))

(declare-fun lt!1573012 () Unit!72319)

(assert (=> b!4360717 (= lt!1573012 (lemmaContainsKeyImpliesGetValueByKeyDefined!380 (toList!2987 lt!1572858) key!3918))))

(assert (=> b!4360717 (isDefined!7777 (getValueByKey!469 (toList!2987 lt!1572858) key!3918))))

(declare-fun lt!1573017 () Unit!72319)

(assert (=> b!4360717 (= lt!1573017 lt!1573012)))

(assert (=> b!4360717 (= lt!1573013 (lemmaInListThenGetKeysListContains!130 (toList!2987 lt!1572858) key!3918))))

(assert (=> b!4360717 call!303111))

(declare-fun b!4360718 () Bool)

(assert (=> b!4360718 (= e!2713849 (not (contains!11196 (keys!16549 lt!1572858) key!3918)))))

(declare-fun b!4360719 () Bool)

(assert (=> b!4360719 (= e!2713848 e!2713847)))

(declare-fun c!741499 () Bool)

(assert (=> b!4360719 (= c!741499 call!303111)))

(assert (= (and d!1290037 c!741498) b!4360717))

(assert (= (and d!1290037 (not c!741498)) b!4360719))

(assert (= (and b!4360719 c!741499) b!4360714))

(assert (= (and b!4360719 (not c!741499)) b!4360713))

(assert (= (or b!4360717 b!4360719) bm!303106))

(assert (= (and bm!303106 c!741497) b!4360715))

(assert (= (and bm!303106 (not c!741497)) b!4360712))

(assert (= (and d!1290037 res!1792830) b!4360718))

(assert (= (and d!1290037 (not res!1792829)) b!4360711))

(assert (= (and b!4360711 res!1792831) b!4360716))

(declare-fun m!4978773 () Bool)

(assert (=> b!4360714 m!4978773))

(declare-fun m!4978775 () Bool)

(assert (=> b!4360714 m!4978775))

(declare-fun m!4978777 () Bool)

(assert (=> b!4360718 m!4978777))

(assert (=> b!4360718 m!4978777))

(declare-fun m!4978779 () Bool)

(assert (=> b!4360718 m!4978779))

(declare-fun m!4978781 () Bool)

(assert (=> b!4360715 m!4978781))

(assert (=> b!4360716 m!4978777))

(assert (=> b!4360716 m!4978777))

(assert (=> b!4360716 m!4978779))

(assert (=> d!1290037 m!4978773))

(assert (=> b!4360712 m!4978777))

(declare-fun m!4978783 () Bool)

(assert (=> b!4360711 m!4978783))

(assert (=> b!4360711 m!4978783))

(declare-fun m!4978785 () Bool)

(assert (=> b!4360711 m!4978785))

(declare-fun m!4978787 () Bool)

(assert (=> bm!303106 m!4978787))

(declare-fun m!4978789 () Bool)

(assert (=> b!4360717 m!4978789))

(assert (=> b!4360717 m!4978783))

(assert (=> b!4360717 m!4978783))

(assert (=> b!4360717 m!4978785))

(declare-fun m!4978791 () Bool)

(assert (=> b!4360717 m!4978791))

(assert (=> b!4360525 d!1290037))

(declare-fun d!1290039 () Bool)

(assert (=> d!1290039 (= (apply!11354 lm!1707 (_1!27484 (h!54525 (toList!2988 lm!1707)))) (get!15909 (getValueByKey!468 (toList!2988 lm!1707) (_1!27484 (h!54525 (toList!2988 lm!1707))))))))

(declare-fun bs!634583 () Bool)

(assert (= bs!634583 d!1290039))

(declare-fun m!4978793 () Bool)

(assert (=> bs!634583 m!4978793))

(assert (=> bs!634583 m!4978793))

(declare-fun m!4978795 () Bool)

(assert (=> bs!634583 m!4978795))

(assert (=> b!4360525 d!1290039))

(declare-fun d!1290041 () Bool)

(declare-fun e!2713855 () Bool)

(assert (=> d!1290041 e!2713855))

(declare-fun res!1792837 () Bool)

(assert (=> d!1290041 (=> (not res!1792837) (not e!2713855))))

(declare-fun lt!1573035 () ListMap!2231)

(assert (=> d!1290041 (= res!1792837 (contains!11190 lt!1573035 (_1!27483 lt!1572848)))))

(declare-fun lt!1573033 () List!49089)

(assert (=> d!1290041 (= lt!1573035 (ListMap!2232 lt!1573033))))

(declare-fun lt!1573034 () Unit!72319)

(declare-fun lt!1573032 () Unit!72319)

(assert (=> d!1290041 (= lt!1573034 lt!1573032)))

(assert (=> d!1290041 (= (getValueByKey!469 lt!1573033 (_1!27483 lt!1572848)) (Some!10482 (_2!27483 lt!1572848)))))

(declare-fun lemmaContainsTupThenGetReturnValue!243 (List!49089 K!10323 V!10569) Unit!72319)

(assert (=> d!1290041 (= lt!1573032 (lemmaContainsTupThenGetReturnValue!243 lt!1573033 (_1!27483 lt!1572848) (_2!27483 lt!1572848)))))

(declare-fun insertNoDuplicatedKeys!109 (List!49089 K!10323 V!10569) List!49089)

(assert (=> d!1290041 (= lt!1573033 (insertNoDuplicatedKeys!109 (toList!2987 lt!1572857) (_1!27483 lt!1572848) (_2!27483 lt!1572848)))))

(assert (=> d!1290041 (= (+!661 lt!1572857 lt!1572848) lt!1573035)))

(declare-fun b!4360727 () Bool)

(declare-fun res!1792838 () Bool)

(assert (=> b!4360727 (=> (not res!1792838) (not e!2713855))))

(assert (=> b!4360727 (= res!1792838 (= (getValueByKey!469 (toList!2987 lt!1573035) (_1!27483 lt!1572848)) (Some!10482 (_2!27483 lt!1572848))))))

(declare-fun b!4360728 () Bool)

(declare-fun contains!11197 (List!49089 tuple2!48378) Bool)

(assert (=> b!4360728 (= e!2713855 (contains!11197 (toList!2987 lt!1573035) lt!1572848))))

(assert (= (and d!1290041 res!1792837) b!4360727))

(assert (= (and b!4360727 res!1792838) b!4360728))

(declare-fun m!4978805 () Bool)

(assert (=> d!1290041 m!4978805))

(declare-fun m!4978807 () Bool)

(assert (=> d!1290041 m!4978807))

(declare-fun m!4978809 () Bool)

(assert (=> d!1290041 m!4978809))

(declare-fun m!4978811 () Bool)

(assert (=> d!1290041 m!4978811))

(declare-fun m!4978813 () Bool)

(assert (=> b!4360727 m!4978813))

(declare-fun m!4978815 () Bool)

(assert (=> b!4360728 m!4978815))

(assert (=> b!4360525 d!1290041))

(declare-fun d!1290047 () Bool)

(declare-fun e!2713856 () Bool)

(assert (=> d!1290047 e!2713856))

(declare-fun res!1792839 () Bool)

(assert (=> d!1290047 (=> (not res!1792839) (not e!2713856))))

(declare-fun lt!1573037 () ListLongMap!1637)

(assert (=> d!1290047 (= res!1792839 (contains!11192 lt!1573037 (_1!27484 lt!1572846)))))

(declare-fun lt!1573039 () List!49090)

(assert (=> d!1290047 (= lt!1573037 (ListLongMap!1638 lt!1573039))))

(declare-fun lt!1573036 () Unit!72319)

(declare-fun lt!1573038 () Unit!72319)

(assert (=> d!1290047 (= lt!1573036 lt!1573038)))

(assert (=> d!1290047 (= (getValueByKey!468 lt!1573039 (_1!27484 lt!1572846)) (Some!10481 (_2!27484 lt!1572846)))))

(assert (=> d!1290047 (= lt!1573038 (lemmaContainsTupThenGetReturnValue!242 lt!1573039 (_1!27484 lt!1572846) (_2!27484 lt!1572846)))))

(assert (=> d!1290047 (= lt!1573039 (insertStrictlySorted!142 (toList!2988 lt!1572850) (_1!27484 lt!1572846) (_2!27484 lt!1572846)))))

(assert (=> d!1290047 (= (+!662 lt!1572850 lt!1572846) lt!1573037)))

(declare-fun b!4360729 () Bool)

(declare-fun res!1792840 () Bool)

(assert (=> b!4360729 (=> (not res!1792840) (not e!2713856))))

(assert (=> b!4360729 (= res!1792840 (= (getValueByKey!468 (toList!2988 lt!1573037) (_1!27484 lt!1572846)) (Some!10481 (_2!27484 lt!1572846))))))

(declare-fun b!4360730 () Bool)

(assert (=> b!4360730 (= e!2713856 (contains!11191 (toList!2988 lt!1573037) lt!1572846))))

(assert (= (and d!1290047 res!1792839) b!4360729))

(assert (= (and b!4360729 res!1792840) b!4360730))

(declare-fun m!4978817 () Bool)

(assert (=> d!1290047 m!4978817))

(declare-fun m!4978819 () Bool)

(assert (=> d!1290047 m!4978819))

(declare-fun m!4978821 () Bool)

(assert (=> d!1290047 m!4978821))

(declare-fun m!4978823 () Bool)

(assert (=> d!1290047 m!4978823))

(declare-fun m!4978825 () Bool)

(assert (=> b!4360729 m!4978825))

(declare-fun m!4978827 () Bool)

(assert (=> b!4360730 m!4978827))

(assert (=> b!4360525 d!1290047))

(declare-fun d!1290049 () Bool)

(declare-fun res!1792845 () Bool)

(declare-fun e!2713861 () Bool)

(assert (=> d!1290049 (=> res!1792845 e!2713861)))

(assert (=> d!1290049 (= res!1792845 (and (is-Cons!48965 (apply!11354 lm!1707 (_1!27484 (h!54525 (toList!2988 lm!1707))))) (= (_1!27483 (h!54524 (apply!11354 lm!1707 (_1!27484 (h!54525 (toList!2988 lm!1707)))))) key!3918)))))

(assert (=> d!1290049 (= (containsKey!719 (apply!11354 lm!1707 (_1!27484 (h!54525 (toList!2988 lm!1707)))) key!3918) e!2713861)))

(declare-fun b!4360735 () Bool)

(declare-fun e!2713862 () Bool)

(assert (=> b!4360735 (= e!2713861 e!2713862)))

(declare-fun res!1792846 () Bool)

(assert (=> b!4360735 (=> (not res!1792846) (not e!2713862))))

(assert (=> b!4360735 (= res!1792846 (is-Cons!48965 (apply!11354 lm!1707 (_1!27484 (h!54525 (toList!2988 lm!1707))))))))

(declare-fun b!4360736 () Bool)

(assert (=> b!4360736 (= e!2713862 (containsKey!719 (t!356009 (apply!11354 lm!1707 (_1!27484 (h!54525 (toList!2988 lm!1707))))) key!3918))))

(assert (= (and d!1290049 (not res!1792845)) b!4360735))

(assert (= (and b!4360735 res!1792846) b!4360736))

(declare-fun m!4978829 () Bool)

(assert (=> b!4360736 m!4978829))

(assert (=> b!4360525 d!1290049))

(declare-fun bs!634590 () Bool)

(declare-fun b!4360816 () Bool)

(assert (= bs!634590 (and b!4360816 d!1289983)))

(declare-fun lambda!141395 () Int)

(assert (=> bs!634590 (not (= lambda!141395 lambda!141350))))

(assert (=> b!4360816 true))

(declare-fun bs!634591 () Bool)

(declare-fun b!4360817 () Bool)

(assert (= bs!634591 (and b!4360817 d!1289983)))

(declare-fun lambda!141396 () Int)

(assert (=> bs!634591 (not (= lambda!141396 lambda!141350))))

(declare-fun bs!634592 () Bool)

(assert (= bs!634592 (and b!4360817 b!4360816)))

(assert (=> bs!634592 (= lambda!141396 lambda!141395)))

(assert (=> b!4360817 true))

(declare-fun lambda!141397 () Int)

(assert (=> bs!634591 (not (= lambda!141397 lambda!141350))))

(declare-fun lt!1573136 () ListMap!2231)

(assert (=> bs!634592 (= (= lt!1573136 lt!1572859) (= lambda!141397 lambda!141395))))

(assert (=> b!4360817 (= (= lt!1573136 lt!1572859) (= lambda!141397 lambda!141396))))

(assert (=> b!4360817 true))

(declare-fun bs!634593 () Bool)

(declare-fun d!1290051 () Bool)

(assert (= bs!634593 (and d!1290051 d!1289983)))

(declare-fun lambda!141398 () Int)

(assert (=> bs!634593 (not (= lambda!141398 lambda!141350))))

(declare-fun bs!634594 () Bool)

(assert (= bs!634594 (and d!1290051 b!4360816)))

(declare-fun lt!1573124 () ListMap!2231)

(assert (=> bs!634594 (= (= lt!1573124 lt!1572859) (= lambda!141398 lambda!141395))))

(declare-fun bs!634595 () Bool)

(assert (= bs!634595 (and d!1290051 b!4360817)))

(assert (=> bs!634595 (= (= lt!1573124 lt!1572859) (= lambda!141398 lambda!141396))))

(assert (=> bs!634595 (= (= lt!1573124 lt!1573136) (= lambda!141398 lambda!141397))))

(assert (=> d!1290051 true))

(declare-fun b!4360814 () Bool)

(declare-fun res!1792896 () Bool)

(declare-fun e!2713921 () Bool)

(assert (=> b!4360814 (=> (not res!1792896) (not e!2713921))))

(assert (=> b!4360814 (= res!1792896 (forall!9147 (toList!2987 lt!1572859) lambda!141398))))

(declare-fun b!4360815 () Bool)

(assert (=> b!4360815 (= e!2713921 (invariantList!685 (toList!2987 lt!1573124)))))

(assert (=> d!1290051 e!2713921))

(declare-fun res!1792895 () Bool)

(assert (=> d!1290051 (=> (not res!1792895) (not e!2713921))))

(assert (=> d!1290051 (= res!1792895 (forall!9147 (_2!27484 (h!54525 (toList!2988 lm!1707))) lambda!141398))))

(declare-fun e!2713922 () ListMap!2231)

(assert (=> d!1290051 (= lt!1573124 e!2713922)))

(declare-fun c!741515 () Bool)

(assert (=> d!1290051 (= c!741515 (is-Nil!48965 (_2!27484 (h!54525 (toList!2988 lm!1707)))))))

(assert (=> d!1290051 (noDuplicateKeys!502 (_2!27484 (h!54525 (toList!2988 lm!1707))))))

(assert (=> d!1290051 (= (addToMapMapFromBucket!198 (_2!27484 (h!54525 (toList!2988 lm!1707))) lt!1572859) lt!1573124)))

(declare-fun bm!303116 () Bool)

(declare-fun call!303122 () Unit!72319)

(declare-fun lemmaContainsAllItsOwnKeys!68 (ListMap!2231) Unit!72319)

(assert (=> bm!303116 (= call!303122 (lemmaContainsAllItsOwnKeys!68 lt!1572859))))

(declare-fun bm!303117 () Bool)

(declare-fun call!303123 () Bool)

(assert (=> bm!303117 (= call!303123 (forall!9147 (ite c!741515 (toList!2987 lt!1572859) (t!356009 (_2!27484 (h!54525 (toList!2988 lm!1707))))) (ite c!741515 lambda!141395 lambda!141397)))))

(declare-fun bm!303118 () Bool)

(declare-fun call!303121 () Bool)

(assert (=> bm!303118 (= call!303121 (forall!9147 (toList!2987 lt!1572859) (ite c!741515 lambda!141395 lambda!141397)))))

(assert (=> b!4360816 (= e!2713922 lt!1572859)))

(declare-fun lt!1573135 () Unit!72319)

(assert (=> b!4360816 (= lt!1573135 call!303122)))

(assert (=> b!4360816 call!303121))

(declare-fun lt!1573132 () Unit!72319)

(assert (=> b!4360816 (= lt!1573132 lt!1573135)))

(assert (=> b!4360816 call!303123))

(declare-fun lt!1573138 () Unit!72319)

(declare-fun Unit!72328 () Unit!72319)

(assert (=> b!4360816 (= lt!1573138 Unit!72328)))

(assert (=> b!4360817 (= e!2713922 lt!1573136)))

(declare-fun lt!1573140 () ListMap!2231)

(assert (=> b!4360817 (= lt!1573140 (+!661 lt!1572859 (h!54524 (_2!27484 (h!54525 (toList!2988 lm!1707))))))))

(assert (=> b!4360817 (= lt!1573136 (addToMapMapFromBucket!198 (t!356009 (_2!27484 (h!54525 (toList!2988 lm!1707)))) (+!661 lt!1572859 (h!54524 (_2!27484 (h!54525 (toList!2988 lm!1707)))))))))

(declare-fun lt!1573130 () Unit!72319)

(assert (=> b!4360817 (= lt!1573130 call!303122)))

(assert (=> b!4360817 (forall!9147 (toList!2987 lt!1572859) lambda!141396)))

(declare-fun lt!1573133 () Unit!72319)

(assert (=> b!4360817 (= lt!1573133 lt!1573130)))

(assert (=> b!4360817 (forall!9147 (toList!2987 lt!1573140) lambda!141397)))

(declare-fun lt!1573128 () Unit!72319)

(declare-fun Unit!72329 () Unit!72319)

(assert (=> b!4360817 (= lt!1573128 Unit!72329)))

(assert (=> b!4360817 call!303123))

(declare-fun lt!1573139 () Unit!72319)

(declare-fun Unit!72330 () Unit!72319)

(assert (=> b!4360817 (= lt!1573139 Unit!72330)))

(declare-fun lt!1573143 () Unit!72319)

(declare-fun Unit!72331 () Unit!72319)

(assert (=> b!4360817 (= lt!1573143 Unit!72331)))

(declare-fun lt!1573131 () Unit!72319)

(declare-fun forallContained!1788 (List!49089 Int tuple2!48378) Unit!72319)

(assert (=> b!4360817 (= lt!1573131 (forallContained!1788 (toList!2987 lt!1573140) lambda!141397 (h!54524 (_2!27484 (h!54525 (toList!2988 lm!1707))))))))

(assert (=> b!4360817 (contains!11190 lt!1573140 (_1!27483 (h!54524 (_2!27484 (h!54525 (toList!2988 lm!1707))))))))

(declare-fun lt!1573137 () Unit!72319)

(declare-fun Unit!72332 () Unit!72319)

(assert (=> b!4360817 (= lt!1573137 Unit!72332)))

(assert (=> b!4360817 (contains!11190 lt!1573136 (_1!27483 (h!54524 (_2!27484 (h!54525 (toList!2988 lm!1707))))))))

(declare-fun lt!1573126 () Unit!72319)

(declare-fun Unit!72333 () Unit!72319)

(assert (=> b!4360817 (= lt!1573126 Unit!72333)))

(assert (=> b!4360817 (forall!9147 (_2!27484 (h!54525 (toList!2988 lm!1707))) lambda!141397)))

(declare-fun lt!1573129 () Unit!72319)

(declare-fun Unit!72334 () Unit!72319)

(assert (=> b!4360817 (= lt!1573129 Unit!72334)))

(assert (=> b!4360817 (forall!9147 (toList!2987 lt!1573140) lambda!141397)))

(declare-fun lt!1573144 () Unit!72319)

(declare-fun Unit!72335 () Unit!72319)

(assert (=> b!4360817 (= lt!1573144 Unit!72335)))

(declare-fun lt!1573127 () Unit!72319)

(declare-fun Unit!72336 () Unit!72319)

(assert (=> b!4360817 (= lt!1573127 Unit!72336)))

(declare-fun lt!1573142 () Unit!72319)

(declare-fun addForallContainsKeyThenBeforeAdding!68 (ListMap!2231 ListMap!2231 K!10323 V!10569) Unit!72319)

(assert (=> b!4360817 (= lt!1573142 (addForallContainsKeyThenBeforeAdding!68 lt!1572859 lt!1573136 (_1!27483 (h!54524 (_2!27484 (h!54525 (toList!2988 lm!1707))))) (_2!27483 (h!54524 (_2!27484 (h!54525 (toList!2988 lm!1707)))))))))

(assert (=> b!4360817 call!303121))

(declare-fun lt!1573134 () Unit!72319)

(assert (=> b!4360817 (= lt!1573134 lt!1573142)))

(assert (=> b!4360817 (forall!9147 (toList!2987 lt!1572859) lambda!141397)))

(declare-fun lt!1573125 () Unit!72319)

(declare-fun Unit!72337 () Unit!72319)

(assert (=> b!4360817 (= lt!1573125 Unit!72337)))

(declare-fun res!1792897 () Bool)

(assert (=> b!4360817 (= res!1792897 (forall!9147 (_2!27484 (h!54525 (toList!2988 lm!1707))) lambda!141397))))

(declare-fun e!2713920 () Bool)

(assert (=> b!4360817 (=> (not res!1792897) (not e!2713920))))

(assert (=> b!4360817 e!2713920))

(declare-fun lt!1573141 () Unit!72319)

(declare-fun Unit!72338 () Unit!72319)

(assert (=> b!4360817 (= lt!1573141 Unit!72338)))

(declare-fun b!4360818 () Bool)

(assert (=> b!4360818 (= e!2713920 (forall!9147 (toList!2987 lt!1572859) lambda!141397))))

(assert (= (and d!1290051 c!741515) b!4360816))

(assert (= (and d!1290051 (not c!741515)) b!4360817))

(assert (= (and b!4360817 res!1792897) b!4360818))

(assert (= (or b!4360816 b!4360817) bm!303116))

(assert (= (or b!4360816 b!4360817) bm!303117))

(assert (= (or b!4360816 b!4360817) bm!303118))

(assert (= (and d!1290051 res!1792895) b!4360814))

(assert (= (and b!4360814 res!1792896) b!4360815))

(declare-fun m!4978903 () Bool)

(assert (=> b!4360815 m!4978903))

(declare-fun m!4978905 () Bool)

(assert (=> d!1290051 m!4978905))

(assert (=> d!1290051 m!4978695))

(declare-fun m!4978907 () Bool)

(assert (=> b!4360818 m!4978907))

(declare-fun m!4978909 () Bool)

(assert (=> b!4360817 m!4978909))

(assert (=> b!4360817 m!4978907))

(declare-fun m!4978911 () Bool)

(assert (=> b!4360817 m!4978911))

(declare-fun m!4978913 () Bool)

(assert (=> b!4360817 m!4978913))

(declare-fun m!4978915 () Bool)

(assert (=> b!4360817 m!4978915))

(declare-fun m!4978917 () Bool)

(assert (=> b!4360817 m!4978917))

(declare-fun m!4978919 () Bool)

(assert (=> b!4360817 m!4978919))

(declare-fun m!4978921 () Bool)

(assert (=> b!4360817 m!4978921))

(assert (=> b!4360817 m!4978921))

(declare-fun m!4978923 () Bool)

(assert (=> b!4360817 m!4978923))

(declare-fun m!4978925 () Bool)

(assert (=> b!4360817 m!4978925))

(assert (=> b!4360817 m!4978909))

(assert (=> b!4360817 m!4978913))

(declare-fun m!4978927 () Bool)

(assert (=> bm!303117 m!4978927))

(declare-fun m!4978929 () Bool)

(assert (=> bm!303116 m!4978929))

(declare-fun m!4978931 () Bool)

(assert (=> b!4360814 m!4978931))

(declare-fun m!4978933 () Bool)

(assert (=> bm!303118 m!4978933))

(assert (=> b!4360525 d!1290051))

(declare-fun d!1290079 () Bool)

(assert (=> d!1290079 (= (eq!272 lt!1572857 lt!1572843) (= (content!7739 (toList!2987 lt!1572857)) (content!7739 (toList!2987 lt!1572843))))))

(declare-fun bs!634596 () Bool)

(assert (= bs!634596 d!1290079))

(declare-fun m!4978935 () Bool)

(assert (=> bs!634596 m!4978935))

(declare-fun m!4978937 () Bool)

(assert (=> bs!634596 m!4978937))

(assert (=> b!4360525 d!1290079))

(declare-fun bs!634597 () Bool)

(declare-fun d!1290081 () Bool)

(assert (= bs!634597 (and d!1290081 start!422394)))

(declare-fun lambda!141399 () Int)

(assert (=> bs!634597 (= lambda!141399 lambda!141334)))

(declare-fun bs!634598 () Bool)

(assert (= bs!634598 (and d!1290081 d!1290015)))

(assert (=> bs!634598 (= lambda!141399 lambda!141353)))

(declare-fun bs!634599 () Bool)

(assert (= bs!634599 (and d!1290081 d!1290027)))

(assert (=> bs!634599 (= lambda!141399 lambda!141362)))

(declare-fun bs!634600 () Bool)

(assert (= bs!634600 (and d!1290081 d!1290031)))

(assert (=> bs!634600 (= lambda!141399 lambda!141363)))

(declare-fun lt!1573145 () ListMap!2231)

(assert (=> d!1290081 (invariantList!685 (toList!2987 lt!1573145))))

(declare-fun e!2713923 () ListMap!2231)

(assert (=> d!1290081 (= lt!1573145 e!2713923)))

(declare-fun c!741516 () Bool)

(assert (=> d!1290081 (= c!741516 (is-Cons!48966 (t!356010 (toList!2988 lm!1707))))))

(assert (=> d!1290081 (forall!9145 (t!356010 (toList!2988 lm!1707)) lambda!141399)))

(assert (=> d!1290081 (= (extractMap!561 (t!356010 (toList!2988 lm!1707))) lt!1573145)))

(declare-fun b!4360821 () Bool)

(assert (=> b!4360821 (= e!2713923 (addToMapMapFromBucket!198 (_2!27484 (h!54525 (t!356010 (toList!2988 lm!1707)))) (extractMap!561 (t!356010 (t!356010 (toList!2988 lm!1707))))))))

(declare-fun b!4360822 () Bool)

(assert (=> b!4360822 (= e!2713923 (ListMap!2232 Nil!48965))))

(assert (= (and d!1290081 c!741516) b!4360821))

(assert (= (and d!1290081 (not c!741516)) b!4360822))

(declare-fun m!4978939 () Bool)

(assert (=> d!1290081 m!4978939))

(declare-fun m!4978941 () Bool)

(assert (=> d!1290081 m!4978941))

(declare-fun m!4978943 () Bool)

(assert (=> b!4360821 m!4978943))

(assert (=> b!4360821 m!4978943))

(declare-fun m!4978945 () Bool)

(assert (=> b!4360821 m!4978945))

(assert (=> b!4360525 d!1290081))

(declare-fun d!1290083 () Bool)

(assert (=> d!1290083 (eq!272 (addToMapMapFromBucket!198 (_2!27484 (h!54525 (toList!2988 lm!1707))) (+!661 lt!1572859 (tuple2!48379 key!3918 newValue!99))) (+!661 (addToMapMapFromBucket!198 (_2!27484 (h!54525 (toList!2988 lm!1707))) lt!1572859) (tuple2!48379 key!3918 newValue!99)))))

(declare-fun lt!1573148 () Unit!72319)

(declare-fun choose!27005 (ListMap!2231 K!10323 V!10569 List!49089) Unit!72319)

(assert (=> d!1290083 (= lt!1573148 (choose!27005 lt!1572859 key!3918 newValue!99 (_2!27484 (h!54525 (toList!2988 lm!1707)))))))

(assert (=> d!1290083 (not (containsKey!719 (_2!27484 (h!54525 (toList!2988 lm!1707))) key!3918))))

(assert (=> d!1290083 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!81 lt!1572859 key!3918 newValue!99 (_2!27484 (h!54525 (toList!2988 lm!1707)))) lt!1573148)))

(declare-fun bs!634601 () Bool)

(assert (= bs!634601 d!1290083))

(declare-fun m!4978947 () Bool)

(assert (=> bs!634601 m!4978947))

(assert (=> bs!634601 m!4978493))

(declare-fun m!4978949 () Bool)

(assert (=> bs!634601 m!4978949))

(assert (=> bs!634601 m!4978479))

(assert (=> bs!634601 m!4978947))

(declare-fun m!4978951 () Bool)

(assert (=> bs!634601 m!4978951))

(assert (=> bs!634601 m!4978951))

(assert (=> bs!634601 m!4978949))

(declare-fun m!4978953 () Bool)

(assert (=> bs!634601 m!4978953))

(declare-fun m!4978955 () Bool)

(assert (=> bs!634601 m!4978955))

(assert (=> bs!634601 m!4978493))

(assert (=> b!4360525 d!1290083))

(declare-fun d!1290085 () Bool)

(assert (=> d!1290085 (= (eq!272 lt!1572852 lt!1572860) (= (content!7739 (toList!2987 lt!1572852)) (content!7739 (toList!2987 lt!1572860))))))

(declare-fun bs!634602 () Bool)

(assert (= bs!634602 d!1290085))

(declare-fun m!4978957 () Bool)

(assert (=> bs!634602 m!4978957))

(declare-fun m!4978959 () Bool)

(assert (=> bs!634602 m!4978959))

(assert (=> b!4360525 d!1290085))

(declare-fun bs!634603 () Bool)

(declare-fun d!1290087 () Bool)

(assert (= bs!634603 (and d!1290087 d!1290081)))

(declare-fun lambda!141404 () Int)

(assert (=> bs!634603 (= lambda!141404 lambda!141399)))

(declare-fun bs!634604 () Bool)

(assert (= bs!634604 (and d!1290087 start!422394)))

(assert (=> bs!634604 (= lambda!141404 lambda!141334)))

(declare-fun bs!634605 () Bool)

(assert (= bs!634605 (and d!1290087 d!1290015)))

(assert (=> bs!634605 (= lambda!141404 lambda!141353)))

(declare-fun bs!634606 () Bool)

(assert (= bs!634606 (and d!1290087 d!1290027)))

(assert (=> bs!634606 (= lambda!141404 lambda!141362)))

(declare-fun bs!634607 () Bool)

(assert (= bs!634607 (and d!1290087 d!1290031)))

(assert (=> bs!634607 (= lambda!141404 lambda!141363)))

(assert (=> d!1290087 (not (containsKey!719 (apply!11354 lm!1707 (_1!27484 (h!54525 (toList!2988 lm!1707)))) key!3918))))

(declare-fun lt!1573153 () Unit!72319)

(declare-fun choose!27007 (ListLongMap!1637 K!10323 (_ BitVec 64) Hashable!4894) Unit!72319)

(assert (=> d!1290087 (= lt!1573153 (choose!27007 lm!1707 key!3918 (_1!27484 (h!54525 (toList!2988 lm!1707))) hashF!1247))))

(assert (=> d!1290087 (forall!9145 (toList!2988 lm!1707) lambda!141404)))

(assert (=> d!1290087 (= (lemmaNotSameHashThenCannotContainKey!49 lm!1707 key!3918 (_1!27484 (h!54525 (toList!2988 lm!1707))) hashF!1247) lt!1573153)))

(declare-fun bs!634608 () Bool)

(assert (= bs!634608 d!1290087))

(assert (=> bs!634608 m!4978525))

(assert (=> bs!634608 m!4978525))

(assert (=> bs!634608 m!4978527))

(declare-fun m!4978961 () Bool)

(assert (=> bs!634608 m!4978961))

(declare-fun m!4978963 () Bool)

(assert (=> bs!634608 m!4978963))

(assert (=> b!4360525 d!1290087))

(declare-fun bs!634609 () Bool)

(declare-fun b!4360825 () Bool)

(assert (= bs!634609 (and b!4360825 d!1290051)))

(declare-fun lambda!141405 () Int)

(assert (=> bs!634609 (= (= lt!1572860 lt!1573124) (= lambda!141405 lambda!141398))))

(declare-fun bs!634610 () Bool)

(assert (= bs!634610 (and b!4360825 b!4360817)))

(assert (=> bs!634610 (= (= lt!1572860 lt!1572859) (= lambda!141405 lambda!141396))))

(assert (=> bs!634610 (= (= lt!1572860 lt!1573136) (= lambda!141405 lambda!141397))))

(declare-fun bs!634611 () Bool)

(assert (= bs!634611 (and b!4360825 d!1289983)))

(assert (=> bs!634611 (not (= lambda!141405 lambda!141350))))

(declare-fun bs!634612 () Bool)

(assert (= bs!634612 (and b!4360825 b!4360816)))

(assert (=> bs!634612 (= (= lt!1572860 lt!1572859) (= lambda!141405 lambda!141395))))

(assert (=> b!4360825 true))

(declare-fun bs!634613 () Bool)

(declare-fun b!4360826 () Bool)

(assert (= bs!634613 (and b!4360826 d!1290051)))

(declare-fun lambda!141406 () Int)

(assert (=> bs!634613 (= (= lt!1572860 lt!1573124) (= lambda!141406 lambda!141398))))

(declare-fun bs!634614 () Bool)

(assert (= bs!634614 (and b!4360826 b!4360817)))

(assert (=> bs!634614 (= (= lt!1572860 lt!1573136) (= lambda!141406 lambda!141397))))

(declare-fun bs!634615 () Bool)

(assert (= bs!634615 (and b!4360826 d!1289983)))

(assert (=> bs!634615 (not (= lambda!141406 lambda!141350))))

(declare-fun bs!634616 () Bool)

(assert (= bs!634616 (and b!4360826 b!4360816)))

(assert (=> bs!634616 (= (= lt!1572860 lt!1572859) (= lambda!141406 lambda!141395))))

(assert (=> bs!634614 (= (= lt!1572860 lt!1572859) (= lambda!141406 lambda!141396))))

(declare-fun bs!634617 () Bool)

(assert (= bs!634617 (and b!4360826 b!4360825)))

(assert (=> bs!634617 (= lambda!141406 lambda!141405)))

(assert (=> b!4360826 true))

(declare-fun lt!1573166 () ListMap!2231)

(declare-fun lambda!141408 () Int)

(assert (=> bs!634613 (= (= lt!1573166 lt!1573124) (= lambda!141408 lambda!141398))))

(assert (=> bs!634614 (= (= lt!1573166 lt!1573136) (= lambda!141408 lambda!141397))))

(assert (=> b!4360826 (= (= lt!1573166 lt!1572860) (= lambda!141408 lambda!141406))))

(assert (=> bs!634615 (not (= lambda!141408 lambda!141350))))

(assert (=> bs!634616 (= (= lt!1573166 lt!1572859) (= lambda!141408 lambda!141395))))

(assert (=> bs!634614 (= (= lt!1573166 lt!1572859) (= lambda!141408 lambda!141396))))

(assert (=> bs!634617 (= (= lt!1573166 lt!1572860) (= lambda!141408 lambda!141405))))

(assert (=> b!4360826 true))

(declare-fun bs!634622 () Bool)

(declare-fun d!1290089 () Bool)

(assert (= bs!634622 (and d!1290089 d!1290051)))

(declare-fun lt!1573154 () ListMap!2231)

(declare-fun lambda!141409 () Int)

(assert (=> bs!634622 (= (= lt!1573154 lt!1573124) (= lambda!141409 lambda!141398))))

(declare-fun bs!634623 () Bool)

(assert (= bs!634623 (and d!1290089 b!4360817)))

(assert (=> bs!634623 (= (= lt!1573154 lt!1573136) (= lambda!141409 lambda!141397))))

(declare-fun bs!634624 () Bool)

(assert (= bs!634624 (and d!1290089 d!1289983)))

(assert (=> bs!634624 (not (= lambda!141409 lambda!141350))))

(declare-fun bs!634625 () Bool)

(assert (= bs!634625 (and d!1290089 b!4360816)))

(assert (=> bs!634625 (= (= lt!1573154 lt!1572859) (= lambda!141409 lambda!141395))))

(assert (=> bs!634623 (= (= lt!1573154 lt!1572859) (= lambda!141409 lambda!141396))))

(declare-fun bs!634626 () Bool)

(assert (= bs!634626 (and d!1290089 b!4360825)))

(assert (=> bs!634626 (= (= lt!1573154 lt!1572860) (= lambda!141409 lambda!141405))))

(declare-fun bs!634627 () Bool)

(assert (= bs!634627 (and d!1290089 b!4360826)))

(assert (=> bs!634627 (= (= lt!1573154 lt!1572860) (= lambda!141409 lambda!141406))))

(assert (=> bs!634627 (= (= lt!1573154 lt!1573166) (= lambda!141409 lambda!141408))))

(assert (=> d!1290089 true))

(declare-fun b!4360823 () Bool)

(declare-fun res!1792899 () Bool)

(declare-fun e!2713925 () Bool)

(assert (=> b!4360823 (=> (not res!1792899) (not e!2713925))))

(assert (=> b!4360823 (= res!1792899 (forall!9147 (toList!2987 lt!1572860) lambda!141409))))

(declare-fun b!4360824 () Bool)

(assert (=> b!4360824 (= e!2713925 (invariantList!685 (toList!2987 lt!1573154)))))

(assert (=> d!1290089 e!2713925))

(declare-fun res!1792898 () Bool)

(assert (=> d!1290089 (=> (not res!1792898) (not e!2713925))))

(assert (=> d!1290089 (= res!1792898 (forall!9147 (_2!27484 (h!54525 (toList!2988 lm!1707))) lambda!141409))))

(declare-fun e!2713926 () ListMap!2231)

(assert (=> d!1290089 (= lt!1573154 e!2713926)))

(declare-fun c!741517 () Bool)

(assert (=> d!1290089 (= c!741517 (is-Nil!48965 (_2!27484 (h!54525 (toList!2988 lm!1707)))))))

(assert (=> d!1290089 (noDuplicateKeys!502 (_2!27484 (h!54525 (toList!2988 lm!1707))))))

(assert (=> d!1290089 (= (addToMapMapFromBucket!198 (_2!27484 (h!54525 (toList!2988 lm!1707))) lt!1572860) lt!1573154)))

(declare-fun bm!303119 () Bool)

(declare-fun call!303125 () Unit!72319)

(assert (=> bm!303119 (= call!303125 (lemmaContainsAllItsOwnKeys!68 lt!1572860))))

(declare-fun call!303126 () Bool)

(declare-fun bm!303120 () Bool)

(assert (=> bm!303120 (= call!303126 (forall!9147 (ite c!741517 (toList!2987 lt!1572860) (t!356009 (_2!27484 (h!54525 (toList!2988 lm!1707))))) (ite c!741517 lambda!141405 lambda!141408)))))

(declare-fun bm!303121 () Bool)

(declare-fun call!303124 () Bool)

(assert (=> bm!303121 (= call!303124 (forall!9147 (toList!2987 lt!1572860) (ite c!741517 lambda!141405 lambda!141408)))))

(assert (=> b!4360825 (= e!2713926 lt!1572860)))

(declare-fun lt!1573165 () Unit!72319)

(assert (=> b!4360825 (= lt!1573165 call!303125)))

(assert (=> b!4360825 call!303124))

(declare-fun lt!1573162 () Unit!72319)

(assert (=> b!4360825 (= lt!1573162 lt!1573165)))

(assert (=> b!4360825 call!303126))

(declare-fun lt!1573168 () Unit!72319)

(declare-fun Unit!72339 () Unit!72319)

(assert (=> b!4360825 (= lt!1573168 Unit!72339)))

(assert (=> b!4360826 (= e!2713926 lt!1573166)))

(declare-fun lt!1573170 () ListMap!2231)

(assert (=> b!4360826 (= lt!1573170 (+!661 lt!1572860 (h!54524 (_2!27484 (h!54525 (toList!2988 lm!1707))))))))

(assert (=> b!4360826 (= lt!1573166 (addToMapMapFromBucket!198 (t!356009 (_2!27484 (h!54525 (toList!2988 lm!1707)))) (+!661 lt!1572860 (h!54524 (_2!27484 (h!54525 (toList!2988 lm!1707)))))))))

(declare-fun lt!1573160 () Unit!72319)

(assert (=> b!4360826 (= lt!1573160 call!303125)))

(assert (=> b!4360826 (forall!9147 (toList!2987 lt!1572860) lambda!141406)))

(declare-fun lt!1573163 () Unit!72319)

(assert (=> b!4360826 (= lt!1573163 lt!1573160)))

(assert (=> b!4360826 (forall!9147 (toList!2987 lt!1573170) lambda!141408)))

(declare-fun lt!1573158 () Unit!72319)

(declare-fun Unit!72341 () Unit!72319)

(assert (=> b!4360826 (= lt!1573158 Unit!72341)))

(assert (=> b!4360826 call!303126))

(declare-fun lt!1573169 () Unit!72319)

(declare-fun Unit!72342 () Unit!72319)

(assert (=> b!4360826 (= lt!1573169 Unit!72342)))

(declare-fun lt!1573173 () Unit!72319)

(declare-fun Unit!72343 () Unit!72319)

(assert (=> b!4360826 (= lt!1573173 Unit!72343)))

(declare-fun lt!1573161 () Unit!72319)

(assert (=> b!4360826 (= lt!1573161 (forallContained!1788 (toList!2987 lt!1573170) lambda!141408 (h!54524 (_2!27484 (h!54525 (toList!2988 lm!1707))))))))

(assert (=> b!4360826 (contains!11190 lt!1573170 (_1!27483 (h!54524 (_2!27484 (h!54525 (toList!2988 lm!1707))))))))

(declare-fun lt!1573167 () Unit!72319)

(declare-fun Unit!72344 () Unit!72319)

(assert (=> b!4360826 (= lt!1573167 Unit!72344)))

(assert (=> b!4360826 (contains!11190 lt!1573166 (_1!27483 (h!54524 (_2!27484 (h!54525 (toList!2988 lm!1707))))))))

(declare-fun lt!1573156 () Unit!72319)

(declare-fun Unit!72345 () Unit!72319)

(assert (=> b!4360826 (= lt!1573156 Unit!72345)))

(assert (=> b!4360826 (forall!9147 (_2!27484 (h!54525 (toList!2988 lm!1707))) lambda!141408)))

(declare-fun lt!1573159 () Unit!72319)

(declare-fun Unit!72346 () Unit!72319)

(assert (=> b!4360826 (= lt!1573159 Unit!72346)))

(assert (=> b!4360826 (forall!9147 (toList!2987 lt!1573170) lambda!141408)))

(declare-fun lt!1573174 () Unit!72319)

(declare-fun Unit!72348 () Unit!72319)

(assert (=> b!4360826 (= lt!1573174 Unit!72348)))

(declare-fun lt!1573157 () Unit!72319)

(declare-fun Unit!72349 () Unit!72319)

(assert (=> b!4360826 (= lt!1573157 Unit!72349)))

(declare-fun lt!1573172 () Unit!72319)

(assert (=> b!4360826 (= lt!1573172 (addForallContainsKeyThenBeforeAdding!68 lt!1572860 lt!1573166 (_1!27483 (h!54524 (_2!27484 (h!54525 (toList!2988 lm!1707))))) (_2!27483 (h!54524 (_2!27484 (h!54525 (toList!2988 lm!1707)))))))))

(assert (=> b!4360826 call!303124))

(declare-fun lt!1573164 () Unit!72319)

(assert (=> b!4360826 (= lt!1573164 lt!1573172)))

(assert (=> b!4360826 (forall!9147 (toList!2987 lt!1572860) lambda!141408)))

(declare-fun lt!1573155 () Unit!72319)

(declare-fun Unit!72350 () Unit!72319)

(assert (=> b!4360826 (= lt!1573155 Unit!72350)))

(declare-fun res!1792900 () Bool)

(assert (=> b!4360826 (= res!1792900 (forall!9147 (_2!27484 (h!54525 (toList!2988 lm!1707))) lambda!141408))))

(declare-fun e!2713924 () Bool)

(assert (=> b!4360826 (=> (not res!1792900) (not e!2713924))))

(assert (=> b!4360826 e!2713924))

(declare-fun lt!1573171 () Unit!72319)

(declare-fun Unit!72351 () Unit!72319)

(assert (=> b!4360826 (= lt!1573171 Unit!72351)))

(declare-fun b!4360827 () Bool)

(assert (=> b!4360827 (= e!2713924 (forall!9147 (toList!2987 lt!1572860) lambda!141408))))

(assert (= (and d!1290089 c!741517) b!4360825))

(assert (= (and d!1290089 (not c!741517)) b!4360826))

(assert (= (and b!4360826 res!1792900) b!4360827))

(assert (= (or b!4360825 b!4360826) bm!303119))

(assert (= (or b!4360825 b!4360826) bm!303120))

(assert (= (or b!4360825 b!4360826) bm!303121))

(assert (= (and d!1290089 res!1792898) b!4360823))

(assert (= (and b!4360823 res!1792899) b!4360824))

(declare-fun m!4978981 () Bool)

(assert (=> b!4360824 m!4978981))

(declare-fun m!4978983 () Bool)

(assert (=> d!1290089 m!4978983))

(assert (=> d!1290089 m!4978695))

(declare-fun m!4978987 () Bool)

(assert (=> b!4360827 m!4978987))

(declare-fun m!4978989 () Bool)

(assert (=> b!4360826 m!4978989))

(assert (=> b!4360826 m!4978987))

(declare-fun m!4978993 () Bool)

(assert (=> b!4360826 m!4978993))

(declare-fun m!4978995 () Bool)

(assert (=> b!4360826 m!4978995))

(declare-fun m!4978997 () Bool)

(assert (=> b!4360826 m!4978997))

(declare-fun m!4978999 () Bool)

(assert (=> b!4360826 m!4978999))

(declare-fun m!4979001 () Bool)

(assert (=> b!4360826 m!4979001))

(declare-fun m!4979003 () Bool)

(assert (=> b!4360826 m!4979003))

(assert (=> b!4360826 m!4979003))

(declare-fun m!4979007 () Bool)

(assert (=> b!4360826 m!4979007))

(declare-fun m!4979011 () Bool)

(assert (=> b!4360826 m!4979011))

(assert (=> b!4360826 m!4978989))

(assert (=> b!4360826 m!4978995))

(declare-fun m!4979013 () Bool)

(assert (=> bm!303120 m!4979013))

(declare-fun m!4979015 () Bool)

(assert (=> bm!303119 m!4979015))

(declare-fun m!4979017 () Bool)

(assert (=> b!4360823 m!4979017))

(declare-fun m!4979019 () Bool)

(assert (=> bm!303121 m!4979019))

(assert (=> b!4360525 d!1290089))

(declare-fun d!1290097 () Bool)

(declare-fun e!2713928 () Bool)

(assert (=> d!1290097 e!2713928))

(declare-fun res!1792901 () Bool)

(assert (=> d!1290097 (=> (not res!1792901) (not e!2713928))))

(declare-fun lt!1573180 () ListMap!2231)

(assert (=> d!1290097 (= res!1792901 (contains!11190 lt!1573180 (_1!27483 lt!1572848)))))

(declare-fun lt!1573178 () List!49089)

(assert (=> d!1290097 (= lt!1573180 (ListMap!2232 lt!1573178))))

(declare-fun lt!1573179 () Unit!72319)

(declare-fun lt!1573177 () Unit!72319)

(assert (=> d!1290097 (= lt!1573179 lt!1573177)))

(assert (=> d!1290097 (= (getValueByKey!469 lt!1573178 (_1!27483 lt!1572848)) (Some!10482 (_2!27483 lt!1572848)))))

(assert (=> d!1290097 (= lt!1573177 (lemmaContainsTupThenGetReturnValue!243 lt!1573178 (_1!27483 lt!1572848) (_2!27483 lt!1572848)))))

(assert (=> d!1290097 (= lt!1573178 (insertNoDuplicatedKeys!109 (toList!2987 lt!1572859) (_1!27483 lt!1572848) (_2!27483 lt!1572848)))))

(assert (=> d!1290097 (= (+!661 lt!1572859 lt!1572848) lt!1573180)))

(declare-fun b!4360830 () Bool)

(declare-fun res!1792902 () Bool)

(assert (=> b!4360830 (=> (not res!1792902) (not e!2713928))))

(assert (=> b!4360830 (= res!1792902 (= (getValueByKey!469 (toList!2987 lt!1573180) (_1!27483 lt!1572848)) (Some!10482 (_2!27483 lt!1572848))))))

(declare-fun b!4360831 () Bool)

(assert (=> b!4360831 (= e!2713928 (contains!11197 (toList!2987 lt!1573180) lt!1572848))))

(assert (= (and d!1290097 res!1792901) b!4360830))

(assert (= (and b!4360830 res!1792902) b!4360831))

(declare-fun m!4979021 () Bool)

(assert (=> d!1290097 m!4979021))

(declare-fun m!4979023 () Bool)

(assert (=> d!1290097 m!4979023))

(declare-fun m!4979025 () Bool)

(assert (=> d!1290097 m!4979025))

(declare-fun m!4979027 () Bool)

(assert (=> d!1290097 m!4979027))

(declare-fun m!4979029 () Bool)

(assert (=> b!4360830 m!4979029))

(declare-fun m!4979031 () Bool)

(assert (=> b!4360831 m!4979031))

(assert (=> b!4360525 d!1290097))

(declare-fun bs!634633 () Bool)

(declare-fun d!1290099 () Bool)

(assert (= bs!634633 (and d!1290099 start!422394)))

(declare-fun lambda!141413 () Int)

(assert (=> bs!634633 (not (= lambda!141413 lambda!141334))))

(declare-fun bs!634634 () Bool)

(assert (= bs!634634 (and d!1290099 d!1290015)))

(assert (=> bs!634634 (not (= lambda!141413 lambda!141353))))

(declare-fun bs!634635 () Bool)

(assert (= bs!634635 (and d!1290099 d!1290027)))

(assert (=> bs!634635 (not (= lambda!141413 lambda!141362))))

(declare-fun bs!634636 () Bool)

(assert (= bs!634636 (and d!1290099 d!1290031)))

(assert (=> bs!634636 (not (= lambda!141413 lambda!141363))))

(declare-fun bs!634637 () Bool)

(assert (= bs!634637 (and d!1290099 d!1290087)))

(assert (=> bs!634637 (not (= lambda!141413 lambda!141404))))

(declare-fun bs!634638 () Bool)

(assert (= bs!634638 (and d!1290099 d!1290081)))

(assert (=> bs!634638 (not (= lambda!141413 lambda!141399))))

(assert (=> d!1290099 true))

(assert (=> d!1290099 (= (allKeysSameHashInMap!606 lm!1707 hashF!1247) (forall!9145 (toList!2988 lm!1707) lambda!141413))))

(declare-fun bs!634639 () Bool)

(assert (= bs!634639 d!1290099))

(declare-fun m!4979033 () Bool)

(assert (=> bs!634639 m!4979033))

(assert (=> b!4360534 d!1290099))

(declare-fun d!1290101 () Bool)

(declare-fun res!1792903 () Bool)

(declare-fun e!2713929 () Bool)

(assert (=> d!1290101 (=> res!1792903 e!2713929)))

(assert (=> d!1290101 (= res!1792903 (and (is-Cons!48965 (_2!27484 (h!54525 (toList!2988 lm!1707)))) (= (_1!27483 (h!54524 (_2!27484 (h!54525 (toList!2988 lm!1707))))) key!3918)))))

(assert (=> d!1290101 (= (containsKey!719 (_2!27484 (h!54525 (toList!2988 lm!1707))) key!3918) e!2713929)))

(declare-fun b!4360834 () Bool)

(declare-fun e!2713930 () Bool)

(assert (=> b!4360834 (= e!2713929 e!2713930)))

(declare-fun res!1792904 () Bool)

(assert (=> b!4360834 (=> (not res!1792904) (not e!2713930))))

(assert (=> b!4360834 (= res!1792904 (is-Cons!48965 (_2!27484 (h!54525 (toList!2988 lm!1707)))))))

(declare-fun b!4360835 () Bool)

(assert (=> b!4360835 (= e!2713930 (containsKey!719 (t!356009 (_2!27484 (h!54525 (toList!2988 lm!1707)))) key!3918))))

(assert (= (and d!1290101 (not res!1792903)) b!4360834))

(assert (= (and b!4360834 res!1792904) b!4360835))

(declare-fun m!4979035 () Bool)

(assert (=> b!4360835 m!4979035))

(assert (=> b!4360532 d!1290101))

(declare-fun d!1290103 () Bool)

(declare-fun res!1792905 () Bool)

(declare-fun e!2713931 () Bool)

(assert (=> d!1290103 (=> res!1792905 e!2713931)))

(assert (=> d!1290103 (= res!1792905 (is-Nil!48966 (toList!2988 lt!1572850)))))

(assert (=> d!1290103 (= (forall!9145 (toList!2988 lt!1572850) lambda!141334) e!2713931)))

(declare-fun b!4360836 () Bool)

(declare-fun e!2713932 () Bool)

(assert (=> b!4360836 (= e!2713931 e!2713932)))

(declare-fun res!1792906 () Bool)

(assert (=> b!4360836 (=> (not res!1792906) (not e!2713932))))

(assert (=> b!4360836 (= res!1792906 (dynLambda!20646 lambda!141334 (h!54525 (toList!2988 lt!1572850))))))

(declare-fun b!4360837 () Bool)

(assert (=> b!4360837 (= e!2713932 (forall!9145 (t!356010 (toList!2988 lt!1572850)) lambda!141334))))

(assert (= (and d!1290103 (not res!1792905)) b!4360836))

(assert (= (and b!4360836 res!1792906) b!4360837))

(declare-fun b_lambda!131813 () Bool)

(assert (=> (not b_lambda!131813) (not b!4360836)))

(declare-fun m!4979037 () Bool)

(assert (=> b!4360836 m!4979037))

(declare-fun m!4979039 () Bool)

(assert (=> b!4360837 m!4979039))

(assert (=> b!4360533 d!1290103))

(declare-fun bm!303122 () Bool)

(declare-fun call!303127 () Bool)

(declare-fun e!2713934 () List!49093)

(assert (=> bm!303122 (= call!303127 (contains!11196 e!2713934 key!3918))))

(declare-fun c!741519 () Bool)

(declare-fun c!741520 () Bool)

(assert (=> bm!303122 (= c!741519 c!741520)))

(declare-fun b!4360838 () Bool)

(declare-fun e!2713938 () Bool)

(declare-fun e!2713933 () Bool)

(assert (=> b!4360838 (= e!2713938 e!2713933)))

(declare-fun res!1792909 () Bool)

(assert (=> b!4360838 (=> (not res!1792909) (not e!2713933))))

(assert (=> b!4360838 (= res!1792909 (isDefined!7777 (getValueByKey!469 (toList!2987 lt!1572843) key!3918)))))

(declare-fun b!4360839 () Bool)

(assert (=> b!4360839 (= e!2713934 (keys!16549 lt!1572843))))

(declare-fun b!4360840 () Bool)

(declare-fun e!2713935 () Unit!72319)

(declare-fun Unit!72353 () Unit!72319)

(assert (=> b!4360840 (= e!2713935 Unit!72353)))

(declare-fun d!1290105 () Bool)

(assert (=> d!1290105 e!2713938))

(declare-fun res!1792907 () Bool)

(assert (=> d!1290105 (=> res!1792907 e!2713938)))

(declare-fun e!2713937 () Bool)

(assert (=> d!1290105 (= res!1792907 e!2713937)))

(declare-fun res!1792908 () Bool)

(assert (=> d!1290105 (=> (not res!1792908) (not e!2713937))))

(declare-fun lt!1573184 () Bool)

(assert (=> d!1290105 (= res!1792908 (not lt!1573184))))

(declare-fun lt!1573188 () Bool)

(assert (=> d!1290105 (= lt!1573184 lt!1573188)))

(declare-fun lt!1573187 () Unit!72319)

(declare-fun e!2713936 () Unit!72319)

(assert (=> d!1290105 (= lt!1573187 e!2713936)))

(assert (=> d!1290105 (= c!741520 lt!1573188)))

(assert (=> d!1290105 (= lt!1573188 (containsKey!722 (toList!2987 lt!1572843) key!3918))))

(assert (=> d!1290105 (= (contains!11190 lt!1572843 key!3918) lt!1573184)))

(declare-fun b!4360841 () Bool)

(assert (=> b!4360841 false))

(declare-fun lt!1573185 () Unit!72319)

(declare-fun lt!1573183 () Unit!72319)

(assert (=> b!4360841 (= lt!1573185 lt!1573183)))

(assert (=> b!4360841 (containsKey!722 (toList!2987 lt!1572843) key!3918)))

(assert (=> b!4360841 (= lt!1573183 (lemmaInGetKeysListThenContainsKey!131 (toList!2987 lt!1572843) key!3918))))

(declare-fun Unit!72354 () Unit!72319)

(assert (=> b!4360841 (= e!2713935 Unit!72354)))

(declare-fun b!4360842 () Bool)

(assert (=> b!4360842 (= e!2713934 (getKeysList!133 (toList!2987 lt!1572843)))))

(declare-fun b!4360843 () Bool)

(assert (=> b!4360843 (= e!2713933 (contains!11196 (keys!16549 lt!1572843) key!3918))))

(declare-fun b!4360844 () Bool)

(declare-fun lt!1573182 () Unit!72319)

(assert (=> b!4360844 (= e!2713936 lt!1573182)))

(declare-fun lt!1573181 () Unit!72319)

(assert (=> b!4360844 (= lt!1573181 (lemmaContainsKeyImpliesGetValueByKeyDefined!380 (toList!2987 lt!1572843) key!3918))))

(assert (=> b!4360844 (isDefined!7777 (getValueByKey!469 (toList!2987 lt!1572843) key!3918))))

(declare-fun lt!1573186 () Unit!72319)

(assert (=> b!4360844 (= lt!1573186 lt!1573181)))

(assert (=> b!4360844 (= lt!1573182 (lemmaInListThenGetKeysListContains!130 (toList!2987 lt!1572843) key!3918))))

(assert (=> b!4360844 call!303127))

(declare-fun b!4360845 () Bool)

(assert (=> b!4360845 (= e!2713937 (not (contains!11196 (keys!16549 lt!1572843) key!3918)))))

(declare-fun b!4360846 () Bool)

(assert (=> b!4360846 (= e!2713936 e!2713935)))

(declare-fun c!741521 () Bool)

(assert (=> b!4360846 (= c!741521 call!303127)))

(assert (= (and d!1290105 c!741520) b!4360844))

(assert (= (and d!1290105 (not c!741520)) b!4360846))

(assert (= (and b!4360846 c!741521) b!4360841))

(assert (= (and b!4360846 (not c!741521)) b!4360840))

(assert (= (or b!4360844 b!4360846) bm!303122))

(assert (= (and bm!303122 c!741519) b!4360842))

(assert (= (and bm!303122 (not c!741519)) b!4360839))

(assert (= (and d!1290105 res!1792908) b!4360845))

(assert (= (and d!1290105 (not res!1792907)) b!4360838))

(assert (= (and b!4360838 res!1792909) b!4360843))

(declare-fun m!4979041 () Bool)

(assert (=> b!4360841 m!4979041))

(declare-fun m!4979043 () Bool)

(assert (=> b!4360841 m!4979043))

(declare-fun m!4979045 () Bool)

(assert (=> b!4360845 m!4979045))

(assert (=> b!4360845 m!4979045))

(declare-fun m!4979047 () Bool)

(assert (=> b!4360845 m!4979047))

(declare-fun m!4979049 () Bool)

(assert (=> b!4360842 m!4979049))

(assert (=> b!4360843 m!4979045))

(assert (=> b!4360843 m!4979045))

(assert (=> b!4360843 m!4979047))

(assert (=> d!1290105 m!4979041))

(assert (=> b!4360839 m!4979045))

(declare-fun m!4979051 () Bool)

(assert (=> b!4360838 m!4979051))

(assert (=> b!4360838 m!4979051))

(declare-fun m!4979053 () Bool)

(assert (=> b!4360838 m!4979053))

(declare-fun m!4979055 () Bool)

(assert (=> bm!303122 m!4979055))

(declare-fun m!4979057 () Bool)

(assert (=> b!4360844 m!4979057))

(assert (=> b!4360844 m!4979051))

(assert (=> b!4360844 m!4979051))

(assert (=> b!4360844 m!4979053))

(declare-fun m!4979059 () Bool)

(assert (=> b!4360844 m!4979059))

(assert (=> b!4360531 d!1290105))

(declare-fun bs!634640 () Bool)

(declare-fun d!1290107 () Bool)

(assert (= bs!634640 (and d!1290107 start!422394)))

(declare-fun lambda!141414 () Int)

(assert (=> bs!634640 (= lambda!141414 lambda!141334)))

(declare-fun bs!634641 () Bool)

(assert (= bs!634641 (and d!1290107 d!1290015)))

(assert (=> bs!634641 (= lambda!141414 lambda!141353)))

(declare-fun bs!634642 () Bool)

(assert (= bs!634642 (and d!1290107 d!1290099)))

(assert (=> bs!634642 (not (= lambda!141414 lambda!141413))))

(declare-fun bs!634643 () Bool)

(assert (= bs!634643 (and d!1290107 d!1290027)))

(assert (=> bs!634643 (= lambda!141414 lambda!141362)))

(declare-fun bs!634644 () Bool)

(assert (= bs!634644 (and d!1290107 d!1290031)))

(assert (=> bs!634644 (= lambda!141414 lambda!141363)))

(declare-fun bs!634645 () Bool)

(assert (= bs!634645 (and d!1290107 d!1290087)))

(assert (=> bs!634645 (= lambda!141414 lambda!141404)))

(declare-fun bs!634646 () Bool)

(assert (= bs!634646 (and d!1290107 d!1290081)))

(assert (=> bs!634646 (= lambda!141414 lambda!141399)))

(declare-fun lt!1573189 () ListMap!2231)

(assert (=> d!1290107 (invariantList!685 (toList!2987 lt!1573189))))

(declare-fun e!2713939 () ListMap!2231)

(assert (=> d!1290107 (= lt!1573189 e!2713939)))

(declare-fun c!741522 () Bool)

(assert (=> d!1290107 (= c!741522 (is-Cons!48966 (toList!2988 lm!1707)))))

(assert (=> d!1290107 (forall!9145 (toList!2988 lm!1707) lambda!141414)))

(assert (=> d!1290107 (= (extractMap!561 (toList!2988 lm!1707)) lt!1573189)))

(declare-fun b!4360847 () Bool)

(assert (=> b!4360847 (= e!2713939 (addToMapMapFromBucket!198 (_2!27484 (h!54525 (toList!2988 lm!1707))) (extractMap!561 (t!356010 (toList!2988 lm!1707)))))))

(declare-fun b!4360848 () Bool)

(assert (=> b!4360848 (= e!2713939 (ListMap!2232 Nil!48965))))

(assert (= (and d!1290107 c!741522) b!4360847))

(assert (= (and d!1290107 (not c!741522)) b!4360848))

(declare-fun m!4979061 () Bool)

(assert (=> d!1290107 m!4979061))

(declare-fun m!4979063 () Bool)

(assert (=> d!1290107 m!4979063))

(assert (=> b!4360847 m!4978515))

(assert (=> b!4360847 m!4978515))

(declare-fun m!4979065 () Bool)

(assert (=> b!4360847 m!4979065))

(assert (=> b!4360531 d!1290107))

(assert (=> start!422394 d!1289993))

(declare-fun d!1290109 () Bool)

(assert (=> d!1290109 (= (inv!64510 lm!1707) (isStrictlySorted!111 (toList!2988 lm!1707)))))

(declare-fun bs!634647 () Bool)

(assert (= bs!634647 d!1290109))

(assert (=> bs!634647 m!4978667))

(assert (=> start!422394 d!1290109))

(declare-fun d!1290111 () Bool)

(declare-fun res!1792914 () Bool)

(declare-fun e!2713944 () Bool)

(assert (=> d!1290111 (=> res!1792914 e!2713944)))

(assert (=> d!1290111 (= res!1792914 (not (is-Cons!48965 newBucket!200)))))

(assert (=> d!1290111 (= (noDuplicateKeys!502 newBucket!200) e!2713944)))

(declare-fun b!4360853 () Bool)

(declare-fun e!2713945 () Bool)

(assert (=> b!4360853 (= e!2713944 e!2713945)))

(declare-fun res!1792915 () Bool)

(assert (=> b!4360853 (=> (not res!1792915) (not e!2713945))))

(assert (=> b!4360853 (= res!1792915 (not (containsKey!719 (t!356009 newBucket!200) (_1!27483 (h!54524 newBucket!200)))))))

(declare-fun b!4360854 () Bool)

(assert (=> b!4360854 (= e!2713945 (noDuplicateKeys!502 (t!356009 newBucket!200)))))

(assert (= (and d!1290111 (not res!1792914)) b!4360853))

(assert (= (and b!4360853 res!1792915) b!4360854))

(declare-fun m!4979067 () Bool)

(assert (=> b!4360853 m!4979067))

(declare-fun m!4979069 () Bool)

(assert (=> b!4360854 m!4979069))

(assert (=> b!4360530 d!1290111))

(declare-fun b!4360859 () Bool)

(declare-fun e!2713948 () Bool)

(declare-fun tp!1330309 () Bool)

(declare-fun tp!1330310 () Bool)

(assert (=> b!4360859 (= e!2713948 (and tp!1330309 tp!1330310))))

(assert (=> b!4360528 (= tp!1330297 e!2713948)))

(assert (= (and b!4360528 (is-Cons!48966 (toList!2988 lm!1707))) b!4360859))

(declare-fun tp!1330313 () Bool)

(declare-fun b!4360864 () Bool)

(declare-fun e!2713951 () Bool)

(assert (=> b!4360864 (= e!2713951 (and tp_is_empty!25245 tp_is_empty!25247 tp!1330313))))

(assert (=> b!4360539 (= tp!1330298 e!2713951)))

(assert (= (and b!4360539 (is-Cons!48965 (t!356009 newBucket!200))) b!4360864))

(declare-fun b_lambda!131815 () Bool)

(assert (= b_lambda!131795 (or start!422394 b_lambda!131815)))

(declare-fun bs!634648 () Bool)

(declare-fun d!1290113 () Bool)

(assert (= bs!634648 (and d!1290113 start!422394)))

(assert (=> bs!634648 (= (dynLambda!20646 lambda!141334 (h!54525 (toList!2988 lt!1572849))) (noDuplicateKeys!502 (_2!27484 (h!54525 (toList!2988 lt!1572849)))))))

(declare-fun m!4979071 () Bool)

(assert (=> bs!634648 m!4979071))

(assert (=> b!4360593 d!1290113))

(declare-fun b_lambda!131817 () Bool)

(assert (= b_lambda!131799 (or start!422394 b_lambda!131817)))

(declare-fun bs!634649 () Bool)

(declare-fun d!1290115 () Bool)

(assert (= bs!634649 (and d!1290115 start!422394)))

(assert (=> bs!634649 (= (dynLambda!20646 lambda!141334 (h!54525 (toList!2988 lm!1707))) (noDuplicateKeys!502 (_2!27484 (h!54525 (toList!2988 lm!1707)))))))

(assert (=> bs!634649 m!4978695))

(assert (=> b!4360605 d!1290115))

(declare-fun b_lambda!131819 () Bool)

(assert (= b_lambda!131801 (or start!422394 b_lambda!131819)))

(declare-fun bs!634650 () Bool)

(declare-fun d!1290117 () Bool)

(assert (= bs!634650 (and d!1290117 start!422394)))

(assert (=> bs!634650 (= (dynLambda!20646 lambda!141334 lt!1572861) (noDuplicateKeys!502 (_2!27484 lt!1572861)))))

(declare-fun m!4979073 () Bool)

(assert (=> bs!634650 m!4979073))

(assert (=> d!1290005 d!1290117))

(declare-fun b_lambda!131821 () Bool)

(assert (= b_lambda!131813 (or start!422394 b_lambda!131821)))

(declare-fun bs!634651 () Bool)

(declare-fun d!1290119 () Bool)

(assert (= bs!634651 (and d!1290119 start!422394)))

(assert (=> bs!634651 (= (dynLambda!20646 lambda!141334 (h!54525 (toList!2988 lt!1572850))) (noDuplicateKeys!502 (_2!27484 (h!54525 (toList!2988 lt!1572850)))))))

(declare-fun m!4979075 () Bool)

(assert (=> bs!634651 m!4979075))

(assert (=> b!4360836 d!1290119))

(declare-fun b_lambda!131823 () Bool)

(assert (= b_lambda!131797 (or start!422394 b_lambda!131823)))

(declare-fun bs!634652 () Bool)

(declare-fun d!1290121 () Bool)

(assert (= bs!634652 (and d!1290121 start!422394)))

(assert (=> bs!634652 (= (dynLambda!20646 lambda!141334 (tuple2!48381 hash!377 newBucket!200)) (noDuplicateKeys!502 (_2!27484 (tuple2!48381 hash!377 newBucket!200))))))

(declare-fun m!4979077 () Bool)

(assert (=> bs!634652 m!4979077))

(assert (=> b!4360604 d!1290121))

(push 1)

(assert (not b!4360821))

(assert (not b!4360842))

(assert (not b!4360824))

(assert (not bs!634649))

(assert (not d!1290015))

(assert (not b!4360837))

(assert (not bs!634651))

(assert (not b!4360843))

(assert (not b!4360685))

(assert (not b!4360684))

(assert (not d!1290027))

(assert (not b!4360688))

(assert (not d!1290089))

(assert (not b!4360847))

(assert (not b!4360727))

(assert (not bm!303116))

(assert (not d!1290083))

(assert (not b!4360728))

(assert (not b!4360817))

(assert (not d!1289997))

(assert (not b!4360701))

(assert (not d!1289995))

(assert (not bm!303120))

(assert (not b!4360853))

(assert (not b!4360730))

(assert (not d!1289991))

(assert (not d!1290005))

(assert (not b!4360615))

(assert (not d!1290001))

(assert (not d!1289981))

(assert (not b!4360826))

(assert (not bm!303117))

(assert (not b!4360716))

(assert (not b!4360823))

(assert (not d!1290011))

(assert (not b!4360627))

(assert (not d!1290033))

(assert (not b_lambda!131819))

(assert (not bm!303119))

(assert (not d!1290087))

(assert (not b!4360844))

(assert (not b!4360600))

(assert (not b!4360691))

(assert (not b_lambda!131815))

(assert (not d!1290039))

(assert (not d!1290079))

(assert (not d!1290031))

(assert (not d!1289985))

(assert (not b!4360814))

(assert (not b!4360859))

(assert (not b!4360717))

(assert (not d!1290107))

(assert (not b!4360729))

(assert (not d!1290041))

(assert (not bs!634648))

(assert (not d!1290019))

(assert (not d!1290109))

(assert (not b_lambda!131817))

(assert (not b!4360638))

(assert (not b!4360690))

(assert (not b!4360841))

(assert (not d!1289983))

(assert (not b!4360835))

(assert (not d!1289989))

(assert (not d!1290081))

(assert (not b!4360707))

(assert (not d!1290035))

(assert (not b!4360613))

(assert (not b!4360845))

(assert (not d!1289999))

(assert (not b!4360714))

(assert (not d!1290037))

(assert (not d!1290007))

(assert (not b!4360687))

(assert (not bm!303118))

(assert (not b!4360854))

(assert (not b!4360818))

(assert (not b!4360830))

(assert (not b!4360864))

(assert (not b!4360839))

(assert (not b!4360815))

(assert (not bm!303106))

(assert (not d!1290047))

(assert (not b!4360715))

(assert (not b!4360624))

(assert (not b!4360689))

(assert (not bm!303122))

(assert (not b!4360712))

(assert (not d!1290105))

(assert (not b!4360827))

(assert tp_is_empty!25245)

(assert (not b!4360736))

(assert (not bs!634650))

(assert (not b!4360711))

(assert (not d!1290099))

(assert (not d!1290085))

(assert (not bm!303121))

(assert (not b!4360718))

(assert (not b!4360606))

(assert (not b!4360838))

(assert (not d!1290097))

(assert (not b!4360599))

(assert (not bm!303105))

(assert (not d!1290051))

(assert (not b_lambda!131821))

(assert (not b!4360618))

(assert (not b!4360831))

(assert (not bs!634652))

(assert (not b!4360594))

(assert (not b_lambda!131823))

(assert tp_is_empty!25247)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

