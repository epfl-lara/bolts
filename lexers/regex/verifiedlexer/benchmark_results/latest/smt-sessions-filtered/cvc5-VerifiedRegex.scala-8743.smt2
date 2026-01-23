; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!466454 () Bool)

(assert start!466454)

(declare-fun b!4639943 () Bool)

(declare-fun res!1948539 () Bool)

(declare-fun e!2894459 () Bool)

(assert (=> b!4639943 (=> (not res!1948539) (not e!2894459))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!13118 0))(
  ( (K!13119 (val!18765 Int)) )
))
(declare-datatypes ((V!13364 0))(
  ( (V!13365 (val!18766 Int)) )
))
(declare-datatypes ((tuple2!52794 0))(
  ( (tuple2!52795 (_1!29691 K!13118) (_2!29691 V!13364)) )
))
(declare-datatypes ((List!51874 0))(
  ( (Nil!51750) (Cons!51750 (h!57854 tuple2!52794) (t!358956 List!51874)) )
))
(declare-fun newBucket!224 () List!51874)

(declare-datatypes ((Hashable!5984 0))(
  ( (HashableExt!5983 (__x!31687 Int)) )
))
(declare-fun hashF!1389 () Hashable!5984)

(declare-fun allKeysSameHash!1441 (List!51874 (_ BitVec 64) Hashable!5984) Bool)

(assert (=> b!4639943 (= res!1948539 (allKeysSameHash!1441 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4639944 () Bool)

(declare-fun e!2894456 () Bool)

(declare-fun e!2894460 () Bool)

(assert (=> b!4639944 (= e!2894456 e!2894460)))

(declare-fun res!1948544 () Bool)

(assert (=> b!4639944 (=> res!1948544 e!2894460)))

(declare-fun oldBucket!40 () List!51874)

(declare-fun key!4968 () K!13118)

(declare-fun containsKey!2613 (List!51874 K!13118) Bool)

(assert (=> b!4639944 (= res!1948544 (not (containsKey!2613 (t!358956 oldBucket!40) key!4968)))))

(assert (=> b!4639944 (containsKey!2613 oldBucket!40 key!4968)))

(declare-datatypes ((Unit!115187 0))(
  ( (Unit!115188) )
))
(declare-fun lt!1802757 () Unit!115187)

(declare-fun lemmaGetPairDefinedThenContainsKey!101 (List!51874 K!13118 Hashable!5984) Unit!115187)

(assert (=> b!4639944 (= lt!1802757 (lemmaGetPairDefinedThenContainsKey!101 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1802758 () List!51874)

(declare-datatypes ((Option!11735 0))(
  ( (None!11734) (Some!11734 (v!45948 tuple2!52794)) )
))
(declare-fun isDefined!9000 (Option!11735) Bool)

(declare-fun getPair!347 (List!51874 K!13118) Option!11735)

(assert (=> b!4639944 (isDefined!9000 (getPair!347 lt!1802758 key!4968))))

(declare-fun lt!1802761 () Unit!115187)

(declare-datatypes ((tuple2!52796 0))(
  ( (tuple2!52797 (_1!29692 (_ BitVec 64)) (_2!29692 List!51874)) )
))
(declare-fun lt!1802756 () tuple2!52796)

(declare-datatypes ((List!51875 0))(
  ( (Nil!51751) (Cons!51751 (h!57855 tuple2!52796) (t!358957 List!51875)) )
))
(declare-fun lt!1802755 () List!51875)

(declare-fun lambda!195925 () Int)

(declare-fun forallContained!3153 (List!51875 Int tuple2!52796) Unit!115187)

(assert (=> b!4639944 (= lt!1802761 (forallContained!3153 lt!1802755 lambda!195925 lt!1802756))))

(declare-fun contains!14862 (List!51875 tuple2!52796) Bool)

(assert (=> b!4639944 (contains!14862 lt!1802755 lt!1802756)))

(declare-fun lt!1802759 () (_ BitVec 64))

(assert (=> b!4639944 (= lt!1802756 (tuple2!52797 lt!1802759 lt!1802758))))

(declare-datatypes ((ListLongMap!3689 0))(
  ( (ListLongMap!3690 (toList!5119 List!51875)) )
))
(declare-fun lt!1802754 () ListLongMap!3689)

(declare-fun lt!1802762 () Unit!115187)

(declare-fun lemmaGetValueImpliesTupleContained!152 (ListLongMap!3689 (_ BitVec 64) List!51874) Unit!115187)

(assert (=> b!4639944 (= lt!1802762 (lemmaGetValueImpliesTupleContained!152 lt!1802754 lt!1802759 lt!1802758))))

(declare-fun apply!12220 (ListLongMap!3689 (_ BitVec 64)) List!51874)

(assert (=> b!4639944 (= lt!1802758 (apply!12220 lt!1802754 lt!1802759))))

(declare-fun contains!14863 (ListLongMap!3689 (_ BitVec 64)) Bool)

(assert (=> b!4639944 (contains!14863 lt!1802754 lt!1802759)))

(declare-fun lt!1802760 () Unit!115187)

(declare-fun lemmaInGenMapThenLongMapContainsHash!553 (ListLongMap!3689 K!13118 Hashable!5984) Unit!115187)

(assert (=> b!4639944 (= lt!1802760 (lemmaInGenMapThenLongMapContainsHash!553 lt!1802754 key!4968 hashF!1389))))

(declare-fun lt!1802763 () Unit!115187)

(declare-fun lemmaInGenMapThenGetPairDefined!143 (ListLongMap!3689 K!13118 Hashable!5984) Unit!115187)

(assert (=> b!4639944 (= lt!1802763 (lemmaInGenMapThenGetPairDefined!143 lt!1802754 key!4968 hashF!1389))))

(assert (=> b!4639944 (= lt!1802754 (ListLongMap!3690 lt!1802755))))

(declare-fun b!4639945 () Bool)

(declare-fun removePairForKey!1210 (List!51874 K!13118) List!51874)

(declare-fun tail!8210 (List!51874) List!51874)

(assert (=> b!4639945 (= e!2894460 (= (removePairForKey!1210 (tail!8210 oldBucket!40) key!4968) (tail!8210 newBucket!224)))))

(declare-fun b!4639946 () Bool)

(declare-fun res!1948538 () Bool)

(declare-fun e!2894455 () Bool)

(assert (=> b!4639946 (=> (not res!1948538) (not e!2894455))))

(assert (=> b!4639946 (= res!1948538 (= (removePairForKey!1210 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4639948 () Bool)

(declare-fun e!2894453 () Bool)

(assert (=> b!4639948 (= e!2894455 e!2894453)))

(declare-fun res!1948543 () Bool)

(assert (=> b!4639948 (=> (not res!1948543) (not e!2894453))))

(declare-datatypes ((ListMap!4443 0))(
  ( (ListMap!4444 (toList!5120 List!51874)) )
))
(declare-fun lt!1802764 () ListMap!4443)

(declare-fun contains!14864 (ListMap!4443 K!13118) Bool)

(assert (=> b!4639948 (= res!1948543 (contains!14864 lt!1802764 key!4968))))

(declare-fun extractMap!1643 (List!51875) ListMap!4443)

(assert (=> b!4639948 (= lt!1802764 (extractMap!1643 lt!1802755))))

(assert (=> b!4639948 (= lt!1802755 (Cons!51751 (tuple2!52797 hash!414 oldBucket!40) Nil!51751))))

(declare-fun b!4639949 () Bool)

(declare-fun res!1948541 () Bool)

(assert (=> b!4639949 (=> (not res!1948541) (not e!2894455))))

(assert (=> b!4639949 (= res!1948541 (allKeysSameHash!1441 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4639950 () Bool)

(declare-fun tp_is_empty!29643 () Bool)

(declare-fun e!2894457 () Bool)

(declare-fun tp!1342808 () Bool)

(declare-fun tp_is_empty!29641 () Bool)

(assert (=> b!4639950 (= e!2894457 (and tp_is_empty!29641 tp_is_empty!29643 tp!1342808))))

(declare-fun b!4639951 () Bool)

(declare-fun e!2894458 () Bool)

(declare-fun lt!1802765 () ListMap!4443)

(assert (=> b!4639951 (= e!2894458 (= lt!1802765 (ListMap!4444 Nil!51750)))))

(declare-fun b!4639952 () Bool)

(assert (=> b!4639952 (= e!2894453 e!2894459)))

(declare-fun res!1948535 () Bool)

(assert (=> b!4639952 (=> (not res!1948535) (not e!2894459))))

(assert (=> b!4639952 (= res!1948535 (= lt!1802759 hash!414))))

(declare-fun hash!3675 (Hashable!5984 K!13118) (_ BitVec 64))

(assert (=> b!4639952 (= lt!1802759 (hash!3675 hashF!1389 key!4968))))

(declare-fun tp!1342809 () Bool)

(declare-fun e!2894454 () Bool)

(declare-fun b!4639947 () Bool)

(assert (=> b!4639947 (= e!2894454 (and tp_is_empty!29641 tp_is_empty!29643 tp!1342809))))

(declare-fun res!1948540 () Bool)

(assert (=> start!466454 (=> (not res!1948540) (not e!2894455))))

(declare-fun noDuplicateKeys!1587 (List!51874) Bool)

(assert (=> start!466454 (= res!1948540 (noDuplicateKeys!1587 oldBucket!40))))

(assert (=> start!466454 e!2894455))

(assert (=> start!466454 true))

(assert (=> start!466454 e!2894454))

(assert (=> start!466454 tp_is_empty!29641))

(assert (=> start!466454 e!2894457))

(declare-fun b!4639953 () Bool)

(declare-fun res!1948542 () Bool)

(assert (=> b!4639953 (=> (not res!1948542) (not e!2894455))))

(assert (=> b!4639953 (= res!1948542 (noDuplicateKeys!1587 newBucket!224))))

(declare-fun b!4639954 () Bool)

(assert (=> b!4639954 (= e!2894459 (not e!2894456))))

(declare-fun res!1948537 () Bool)

(assert (=> b!4639954 (=> res!1948537 e!2894456)))

(assert (=> b!4639954 (= res!1948537 (or (and (is-Cons!51750 oldBucket!40) (= (_1!29691 (h!57854 oldBucket!40)) key!4968)) (not (is-Cons!51750 oldBucket!40)) (= (_1!29691 (h!57854 oldBucket!40)) key!4968)))))

(assert (=> b!4639954 e!2894458))

(declare-fun res!1948536 () Bool)

(assert (=> b!4639954 (=> (not res!1948536) (not e!2894458))))

(declare-fun addToMapMapFromBucket!1046 (List!51874 ListMap!4443) ListMap!4443)

(assert (=> b!4639954 (= res!1948536 (= lt!1802764 (addToMapMapFromBucket!1046 oldBucket!40 lt!1802765)))))

(assert (=> b!4639954 (= lt!1802765 (extractMap!1643 Nil!51751))))

(assert (=> b!4639954 true))

(assert (= (and start!466454 res!1948540) b!4639953))

(assert (= (and b!4639953 res!1948542) b!4639946))

(assert (= (and b!4639946 res!1948538) b!4639949))

(assert (= (and b!4639949 res!1948541) b!4639948))

(assert (= (and b!4639948 res!1948543) b!4639952))

(assert (= (and b!4639952 res!1948535) b!4639943))

(assert (= (and b!4639943 res!1948539) b!4639954))

(assert (= (and b!4639954 res!1948536) b!4639951))

(assert (= (and b!4639954 (not res!1948537)) b!4639944))

(assert (= (and b!4639944 (not res!1948544)) b!4639945))

(assert (= (and start!466454 (is-Cons!51750 oldBucket!40)) b!4639947))

(assert (= (and start!466454 (is-Cons!51750 newBucket!224)) b!4639950))

(declare-fun m!5499417 () Bool)

(assert (=> b!4639943 m!5499417))

(declare-fun m!5499419 () Bool)

(assert (=> b!4639948 m!5499419))

(declare-fun m!5499421 () Bool)

(assert (=> b!4639948 m!5499421))

(declare-fun m!5499423 () Bool)

(assert (=> b!4639945 m!5499423))

(assert (=> b!4639945 m!5499423))

(declare-fun m!5499425 () Bool)

(assert (=> b!4639945 m!5499425))

(declare-fun m!5499427 () Bool)

(assert (=> b!4639945 m!5499427))

(declare-fun m!5499429 () Bool)

(assert (=> b!4639954 m!5499429))

(declare-fun m!5499431 () Bool)

(assert (=> b!4639954 m!5499431))

(declare-fun m!5499433 () Bool)

(assert (=> start!466454 m!5499433))

(declare-fun m!5499435 () Bool)

(assert (=> b!4639946 m!5499435))

(declare-fun m!5499437 () Bool)

(assert (=> b!4639949 m!5499437))

(declare-fun m!5499439 () Bool)

(assert (=> b!4639952 m!5499439))

(declare-fun m!5499441 () Bool)

(assert (=> b!4639944 m!5499441))

(declare-fun m!5499443 () Bool)

(assert (=> b!4639944 m!5499443))

(declare-fun m!5499445 () Bool)

(assert (=> b!4639944 m!5499445))

(declare-fun m!5499447 () Bool)

(assert (=> b!4639944 m!5499447))

(declare-fun m!5499449 () Bool)

(assert (=> b!4639944 m!5499449))

(declare-fun m!5499451 () Bool)

(assert (=> b!4639944 m!5499451))

(declare-fun m!5499453 () Bool)

(assert (=> b!4639944 m!5499453))

(declare-fun m!5499455 () Bool)

(assert (=> b!4639944 m!5499455))

(declare-fun m!5499457 () Bool)

(assert (=> b!4639944 m!5499457))

(declare-fun m!5499459 () Bool)

(assert (=> b!4639944 m!5499459))

(assert (=> b!4639944 m!5499451))

(declare-fun m!5499461 () Bool)

(assert (=> b!4639944 m!5499461))

(declare-fun m!5499463 () Bool)

(assert (=> b!4639944 m!5499463))

(declare-fun m!5499465 () Bool)

(assert (=> b!4639953 m!5499465))

(push 1)

(assert (not b!4639954))

(assert (not b!4639947))

(assert (not b!4639952))

(assert tp_is_empty!29643)

(assert (not b!4639946))

(assert (not b!4639948))

(assert (not b!4639943))

(assert (not b!4639949))

(assert (not b!4639953))

(assert (not start!466454))

(assert tp_is_empty!29641)

(assert (not b!4639944))

(assert (not b!4639950))

(assert (not b!4639945))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4640002 () Bool)

(declare-fun e!2894490 () List!51874)

(assert (=> b!4640002 (= e!2894490 Nil!51750)))

(declare-fun b!4640000 () Bool)

(declare-fun e!2894489 () List!51874)

(assert (=> b!4640000 (= e!2894489 e!2894490)))

(declare-fun c!793981 () Bool)

(assert (=> b!4640000 (= c!793981 (is-Cons!51750 oldBucket!40))))

(declare-fun b!4639999 () Bool)

(assert (=> b!4639999 (= e!2894489 (t!358956 oldBucket!40))))

(declare-fun b!4640001 () Bool)

(assert (=> b!4640001 (= e!2894490 (Cons!51750 (h!57854 oldBucket!40) (removePairForKey!1210 (t!358956 oldBucket!40) key!4968)))))

(declare-fun d!1462836 () Bool)

(declare-fun lt!1802804 () List!51874)

(assert (=> d!1462836 (not (containsKey!2613 lt!1802804 key!4968))))

(assert (=> d!1462836 (= lt!1802804 e!2894489)))

(declare-fun c!793982 () Bool)

(assert (=> d!1462836 (= c!793982 (and (is-Cons!51750 oldBucket!40) (= (_1!29691 (h!57854 oldBucket!40)) key!4968)))))

(assert (=> d!1462836 (noDuplicateKeys!1587 oldBucket!40)))

(assert (=> d!1462836 (= (removePairForKey!1210 oldBucket!40 key!4968) lt!1802804)))

(assert (= (and d!1462836 c!793982) b!4639999))

(assert (= (and d!1462836 (not c!793982)) b!4640000))

(assert (= (and b!4640000 c!793981) b!4640001))

(assert (= (and b!4640000 (not c!793981)) b!4640002))

(declare-fun m!5499517 () Bool)

(assert (=> b!4640001 m!5499517))

(declare-fun m!5499519 () Bool)

(assert (=> d!1462836 m!5499519))

(assert (=> d!1462836 m!5499433))

(assert (=> b!4639946 d!1462836))

(declare-fun d!1462838 () Bool)

(declare-fun hash!3677 (Hashable!5984 K!13118) (_ BitVec 64))

(assert (=> d!1462838 (= (hash!3675 hashF!1389 key!4968) (hash!3677 hashF!1389 key!4968))))

(declare-fun bs!1033102 () Bool)

(assert (= bs!1033102 d!1462838))

(declare-fun m!5499521 () Bool)

(assert (=> bs!1033102 m!5499521))

(assert (=> b!4639952 d!1462838))

(declare-fun b!4640006 () Bool)

(declare-fun e!2894492 () List!51874)

(assert (=> b!4640006 (= e!2894492 Nil!51750)))

(declare-fun b!4640004 () Bool)

(declare-fun e!2894491 () List!51874)

(assert (=> b!4640004 (= e!2894491 e!2894492)))

(declare-fun c!793983 () Bool)

(assert (=> b!4640004 (= c!793983 (is-Cons!51750 (tail!8210 oldBucket!40)))))

(declare-fun b!4640003 () Bool)

(assert (=> b!4640003 (= e!2894491 (t!358956 (tail!8210 oldBucket!40)))))

(declare-fun b!4640005 () Bool)

(assert (=> b!4640005 (= e!2894492 (Cons!51750 (h!57854 (tail!8210 oldBucket!40)) (removePairForKey!1210 (t!358956 (tail!8210 oldBucket!40)) key!4968)))))

(declare-fun d!1462840 () Bool)

(declare-fun lt!1802805 () List!51874)

(assert (=> d!1462840 (not (containsKey!2613 lt!1802805 key!4968))))

(assert (=> d!1462840 (= lt!1802805 e!2894491)))

(declare-fun c!793984 () Bool)

(assert (=> d!1462840 (= c!793984 (and (is-Cons!51750 (tail!8210 oldBucket!40)) (= (_1!29691 (h!57854 (tail!8210 oldBucket!40))) key!4968)))))

(assert (=> d!1462840 (noDuplicateKeys!1587 (tail!8210 oldBucket!40))))

(assert (=> d!1462840 (= (removePairForKey!1210 (tail!8210 oldBucket!40) key!4968) lt!1802805)))

(assert (= (and d!1462840 c!793984) b!4640003))

(assert (= (and d!1462840 (not c!793984)) b!4640004))

(assert (= (and b!4640004 c!793983) b!4640005))

(assert (= (and b!4640004 (not c!793983)) b!4640006))

(declare-fun m!5499523 () Bool)

(assert (=> b!4640005 m!5499523))

(declare-fun m!5499525 () Bool)

(assert (=> d!1462840 m!5499525))

(assert (=> d!1462840 m!5499423))

(declare-fun m!5499527 () Bool)

(assert (=> d!1462840 m!5499527))

(assert (=> b!4639945 d!1462840))

(declare-fun d!1462842 () Bool)

(assert (=> d!1462842 (= (tail!8210 oldBucket!40) (t!358956 oldBucket!40))))

(assert (=> b!4639945 d!1462842))

(declare-fun d!1462844 () Bool)

(assert (=> d!1462844 (= (tail!8210 newBucket!224) (t!358956 newBucket!224))))

(assert (=> b!4639945 d!1462844))

(declare-fun b!4640029 () Bool)

(assert (=> b!4640029 true))

(declare-fun bs!1033106 () Bool)

(declare-fun b!4640027 () Bool)

(assert (= bs!1033106 (and b!4640027 b!4640029)))

(declare-fun lambda!195961 () Int)

(declare-fun lambda!195960 () Int)

(assert (=> bs!1033106 (= lambda!195961 lambda!195960)))

(assert (=> b!4640027 true))

(declare-fun lt!1802861 () ListMap!4443)

(declare-fun lambda!195962 () Int)

(assert (=> bs!1033106 (= (= lt!1802861 lt!1802765) (= lambda!195962 lambda!195960))))

(assert (=> b!4640027 (= (= lt!1802861 lt!1802765) (= lambda!195962 lambda!195961))))

(assert (=> b!4640027 true))

(declare-fun bs!1033107 () Bool)

(declare-fun d!1462846 () Bool)

(assert (= bs!1033107 (and d!1462846 b!4640029)))

(declare-fun lambda!195963 () Int)

(declare-fun lt!1802865 () ListMap!4443)

(assert (=> bs!1033107 (= (= lt!1802865 lt!1802765) (= lambda!195963 lambda!195960))))

(declare-fun bs!1033108 () Bool)

(assert (= bs!1033108 (and d!1462846 b!4640027)))

(assert (=> bs!1033108 (= (= lt!1802865 lt!1802765) (= lambda!195963 lambda!195961))))

(assert (=> bs!1033108 (= (= lt!1802865 lt!1802861) (= lambda!195963 lambda!195962))))

(assert (=> d!1462846 true))

(declare-fun b!4640026 () Bool)

(declare-fun res!1948591 () Bool)

(declare-fun e!2894508 () Bool)

(assert (=> b!4640026 (=> (not res!1948591) (not e!2894508))))

(declare-fun forall!10933 (List!51874 Int) Bool)

(assert (=> b!4640026 (= res!1948591 (forall!10933 (toList!5120 lt!1802765) lambda!195963))))

(declare-fun bm!323897 () Bool)

(declare-fun call!323902 () Unit!115187)

(declare-fun lemmaContainsAllItsOwnKeys!559 (ListMap!4443) Unit!115187)

(assert (=> bm!323897 (= call!323902 (lemmaContainsAllItsOwnKeys!559 lt!1802765))))

(declare-fun e!2894509 () ListMap!4443)

(assert (=> b!4640027 (= e!2894509 lt!1802861)))

(declare-fun lt!1802864 () ListMap!4443)

(declare-fun +!1939 (ListMap!4443 tuple2!52794) ListMap!4443)

(assert (=> b!4640027 (= lt!1802864 (+!1939 lt!1802765 (h!57854 oldBucket!40)))))

(assert (=> b!4640027 (= lt!1802861 (addToMapMapFromBucket!1046 (t!358956 oldBucket!40) (+!1939 lt!1802765 (h!57854 oldBucket!40))))))

(declare-fun lt!1802874 () Unit!115187)

(assert (=> b!4640027 (= lt!1802874 call!323902)))

(assert (=> b!4640027 (forall!10933 (toList!5120 lt!1802765) lambda!195961)))

(declare-fun lt!1802870 () Unit!115187)

(assert (=> b!4640027 (= lt!1802870 lt!1802874)))

(assert (=> b!4640027 (forall!10933 (toList!5120 lt!1802864) lambda!195962)))

(declare-fun lt!1802863 () Unit!115187)

(declare-fun Unit!115191 () Unit!115187)

(assert (=> b!4640027 (= lt!1802863 Unit!115191)))

(assert (=> b!4640027 (forall!10933 (t!358956 oldBucket!40) lambda!195962)))

(declare-fun lt!1802862 () Unit!115187)

(declare-fun Unit!115192 () Unit!115187)

(assert (=> b!4640027 (= lt!1802862 Unit!115192)))

(declare-fun lt!1802869 () Unit!115187)

(declare-fun Unit!115193 () Unit!115187)

(assert (=> b!4640027 (= lt!1802869 Unit!115193)))

(declare-fun lt!1802854 () Unit!115187)

(declare-fun forallContained!3155 (List!51874 Int tuple2!52794) Unit!115187)

(assert (=> b!4640027 (= lt!1802854 (forallContained!3155 (toList!5120 lt!1802864) lambda!195962 (h!57854 oldBucket!40)))))

(assert (=> b!4640027 (contains!14864 lt!1802864 (_1!29691 (h!57854 oldBucket!40)))))

(declare-fun lt!1802871 () Unit!115187)

(declare-fun Unit!115194 () Unit!115187)

(assert (=> b!4640027 (= lt!1802871 Unit!115194)))

(assert (=> b!4640027 (contains!14864 lt!1802861 (_1!29691 (h!57854 oldBucket!40)))))

(declare-fun lt!1802866 () Unit!115187)

(declare-fun Unit!115195 () Unit!115187)

(assert (=> b!4640027 (= lt!1802866 Unit!115195)))

(assert (=> b!4640027 (forall!10933 oldBucket!40 lambda!195962)))

(declare-fun lt!1802857 () Unit!115187)

(declare-fun Unit!115196 () Unit!115187)

(assert (=> b!4640027 (= lt!1802857 Unit!115196)))

(assert (=> b!4640027 (forall!10933 (toList!5120 lt!1802864) lambda!195962)))

(declare-fun lt!1802856 () Unit!115187)

(declare-fun Unit!115197 () Unit!115187)

(assert (=> b!4640027 (= lt!1802856 Unit!115197)))

(declare-fun lt!1802860 () Unit!115187)

(declare-fun Unit!115198 () Unit!115187)

(assert (=> b!4640027 (= lt!1802860 Unit!115198)))

(declare-fun lt!1802873 () Unit!115187)

(declare-fun addForallContainsKeyThenBeforeAdding!558 (ListMap!4443 ListMap!4443 K!13118 V!13364) Unit!115187)

(assert (=> b!4640027 (= lt!1802873 (addForallContainsKeyThenBeforeAdding!558 lt!1802765 lt!1802861 (_1!29691 (h!57854 oldBucket!40)) (_2!29691 (h!57854 oldBucket!40))))))

(assert (=> b!4640027 (forall!10933 (toList!5120 lt!1802765) lambda!195962)))

(declare-fun lt!1802855 () Unit!115187)

(assert (=> b!4640027 (= lt!1802855 lt!1802873)))

(declare-fun call!323903 () Bool)

(assert (=> b!4640027 call!323903))

(declare-fun lt!1802868 () Unit!115187)

(declare-fun Unit!115199 () Unit!115187)

(assert (=> b!4640027 (= lt!1802868 Unit!115199)))

(declare-fun res!1948592 () Bool)

(assert (=> b!4640027 (= res!1948592 (forall!10933 oldBucket!40 lambda!195962))))

(declare-fun e!2894510 () Bool)

(assert (=> b!4640027 (=> (not res!1948592) (not e!2894510))))

(assert (=> b!4640027 e!2894510))

(declare-fun lt!1802872 () Unit!115187)

(declare-fun Unit!115200 () Unit!115187)

(assert (=> b!4640027 (= lt!1802872 Unit!115200)))

(declare-fun b!4640028 () Bool)

(declare-fun call!323904 () Bool)

(assert (=> b!4640028 (= e!2894510 call!323904)))

(declare-fun b!4640030 () Bool)

(declare-fun invariantList!1257 (List!51874) Bool)

(assert (=> b!4640030 (= e!2894508 (invariantList!1257 (toList!5120 lt!1802865)))))

(assert (=> b!4640029 (= e!2894509 lt!1802765)))

(declare-fun lt!1802858 () Unit!115187)

(assert (=> b!4640029 (= lt!1802858 call!323902)))

(assert (=> b!4640029 call!323904))

(declare-fun lt!1802867 () Unit!115187)

(assert (=> b!4640029 (= lt!1802867 lt!1802858)))

(assert (=> b!4640029 call!323903))

(declare-fun lt!1802859 () Unit!115187)

(declare-fun Unit!115201 () Unit!115187)

(assert (=> b!4640029 (= lt!1802859 Unit!115201)))

(assert (=> d!1462846 e!2894508))

(declare-fun res!1948590 () Bool)

(assert (=> d!1462846 (=> (not res!1948590) (not e!2894508))))

(assert (=> d!1462846 (= res!1948590 (forall!10933 oldBucket!40 lambda!195963))))

(assert (=> d!1462846 (= lt!1802865 e!2894509)))

(declare-fun c!793987 () Bool)

(assert (=> d!1462846 (= c!793987 (is-Nil!51750 oldBucket!40))))

(assert (=> d!1462846 (noDuplicateKeys!1587 oldBucket!40)))

(assert (=> d!1462846 (= (addToMapMapFromBucket!1046 oldBucket!40 lt!1802765) lt!1802865)))

(declare-fun bm!323898 () Bool)

(assert (=> bm!323898 (= call!323903 (forall!10933 (toList!5120 lt!1802765) (ite c!793987 lambda!195960 lambda!195962)))))

(declare-fun bm!323899 () Bool)

(assert (=> bm!323899 (= call!323904 (forall!10933 (toList!5120 lt!1802765) (ite c!793987 lambda!195960 lambda!195962)))))

(assert (= (and d!1462846 c!793987) b!4640029))

(assert (= (and d!1462846 (not c!793987)) b!4640027))

(assert (= (and b!4640027 res!1948592) b!4640028))

(assert (= (or b!4640029 b!4640027) bm!323897))

(assert (= (or b!4640029 b!4640027) bm!323898))

(assert (= (or b!4640029 b!4640028) bm!323899))

(assert (= (and d!1462846 res!1948590) b!4640026))

(assert (= (and b!4640026 res!1948591) b!4640030))

(declare-fun m!5499547 () Bool)

(assert (=> b!4640030 m!5499547))

(declare-fun m!5499549 () Bool)

(assert (=> b!4640027 m!5499549))

(declare-fun m!5499551 () Bool)

(assert (=> b!4640027 m!5499551))

(declare-fun m!5499553 () Bool)

(assert (=> b!4640027 m!5499553))

(declare-fun m!5499555 () Bool)

(assert (=> b!4640027 m!5499555))

(assert (=> b!4640027 m!5499549))

(declare-fun m!5499557 () Bool)

(assert (=> b!4640027 m!5499557))

(declare-fun m!5499559 () Bool)

(assert (=> b!4640027 m!5499559))

(declare-fun m!5499561 () Bool)

(assert (=> b!4640027 m!5499561))

(assert (=> b!4640027 m!5499557))

(assert (=> b!4640027 m!5499555))

(declare-fun m!5499563 () Bool)

(assert (=> b!4640027 m!5499563))

(declare-fun m!5499565 () Bool)

(assert (=> b!4640027 m!5499565))

(declare-fun m!5499567 () Bool)

(assert (=> b!4640027 m!5499567))

(declare-fun m!5499569 () Bool)

(assert (=> b!4640027 m!5499569))

(declare-fun m!5499571 () Bool)

(assert (=> bm!323898 m!5499571))

(declare-fun m!5499573 () Bool)

(assert (=> bm!323897 m!5499573))

(declare-fun m!5499575 () Bool)

(assert (=> b!4640026 m!5499575))

(assert (=> bm!323899 m!5499571))

(declare-fun m!5499577 () Bool)

(assert (=> d!1462846 m!5499577))

(assert (=> d!1462846 m!5499433))

(assert (=> b!4639954 d!1462846))

(declare-fun bs!1033109 () Bool)

(declare-fun d!1462858 () Bool)

(assert (= bs!1033109 (and d!1462858 b!4639944)))

(declare-fun lambda!195966 () Int)

(assert (=> bs!1033109 (= lambda!195966 lambda!195925)))

(declare-fun lt!1802877 () ListMap!4443)

(assert (=> d!1462858 (invariantList!1257 (toList!5120 lt!1802877))))

(declare-fun e!2894513 () ListMap!4443)

(assert (=> d!1462858 (= lt!1802877 e!2894513)))

(declare-fun c!793990 () Bool)

(assert (=> d!1462858 (= c!793990 (is-Cons!51751 Nil!51751))))

(declare-fun forall!10934 (List!51875 Int) Bool)

(assert (=> d!1462858 (forall!10934 Nil!51751 lambda!195966)))

(assert (=> d!1462858 (= (extractMap!1643 Nil!51751) lt!1802877)))

(declare-fun b!4640037 () Bool)

(assert (=> b!4640037 (= e!2894513 (addToMapMapFromBucket!1046 (_2!29692 (h!57855 Nil!51751)) (extractMap!1643 (t!358957 Nil!51751))))))

(declare-fun b!4640038 () Bool)

(assert (=> b!4640038 (= e!2894513 (ListMap!4444 Nil!51750))))

(assert (= (and d!1462858 c!793990) b!4640037))

(assert (= (and d!1462858 (not c!793990)) b!4640038))

(declare-fun m!5499579 () Bool)

(assert (=> d!1462858 m!5499579))

(declare-fun m!5499581 () Bool)

(assert (=> d!1462858 m!5499581))

(declare-fun m!5499583 () Bool)

(assert (=> b!4640037 m!5499583))

(assert (=> b!4640037 m!5499583))

(declare-fun m!5499585 () Bool)

(assert (=> b!4640037 m!5499585))

(assert (=> b!4639954 d!1462858))

(declare-fun bs!1033110 () Bool)

(declare-fun d!1462860 () Bool)

(assert (= bs!1033110 (and d!1462860 b!4640029)))

(declare-fun lambda!195969 () Int)

(assert (=> bs!1033110 (not (= lambda!195969 lambda!195960))))

(declare-fun bs!1033111 () Bool)

(assert (= bs!1033111 (and d!1462860 b!4640027)))

(assert (=> bs!1033111 (not (= lambda!195969 lambda!195961))))

(assert (=> bs!1033111 (not (= lambda!195969 lambda!195962))))

(declare-fun bs!1033112 () Bool)

(assert (= bs!1033112 (and d!1462860 d!1462846)))

(assert (=> bs!1033112 (not (= lambda!195969 lambda!195963))))

(assert (=> d!1462860 true))

(assert (=> d!1462860 true))

(assert (=> d!1462860 (= (allKeysSameHash!1441 newBucket!224 hash!414 hashF!1389) (forall!10933 newBucket!224 lambda!195969))))

(declare-fun bs!1033113 () Bool)

(assert (= bs!1033113 d!1462860))

(declare-fun m!5499587 () Bool)

(assert (=> bs!1033113 m!5499587))

(assert (=> b!4639943 d!1462860))

(declare-fun d!1462862 () Bool)

(assert (=> d!1462862 (containsKey!2613 oldBucket!40 key!4968)))

(declare-fun lt!1802880 () Unit!115187)

(declare-fun choose!31745 (List!51874 K!13118 Hashable!5984) Unit!115187)

(assert (=> d!1462862 (= lt!1802880 (choose!31745 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1462862 (noDuplicateKeys!1587 oldBucket!40)))

(assert (=> d!1462862 (= (lemmaGetPairDefinedThenContainsKey!101 oldBucket!40 key!4968 hashF!1389) lt!1802880)))

(declare-fun bs!1033114 () Bool)

(assert (= bs!1033114 d!1462862))

(assert (=> bs!1033114 m!5499449))

(declare-fun m!5499589 () Bool)

(assert (=> bs!1033114 m!5499589))

(assert (=> bs!1033114 m!5499433))

(assert (=> b!4639944 d!1462862))

(declare-fun d!1462864 () Bool)

(declare-fun res!1948599 () Bool)

(declare-fun e!2894520 () Bool)

(assert (=> d!1462864 (=> res!1948599 e!2894520)))

(assert (=> d!1462864 (= res!1948599 (and (is-Cons!51750 (t!358956 oldBucket!40)) (= (_1!29691 (h!57854 (t!358956 oldBucket!40))) key!4968)))))

(assert (=> d!1462864 (= (containsKey!2613 (t!358956 oldBucket!40) key!4968) e!2894520)))

(declare-fun b!4640047 () Bool)

(declare-fun e!2894521 () Bool)

(assert (=> b!4640047 (= e!2894520 e!2894521)))

(declare-fun res!1948600 () Bool)

(assert (=> b!4640047 (=> (not res!1948600) (not e!2894521))))

(assert (=> b!4640047 (= res!1948600 (is-Cons!51750 (t!358956 oldBucket!40)))))

(declare-fun b!4640048 () Bool)

(assert (=> b!4640048 (= e!2894521 (containsKey!2613 (t!358956 (t!358956 oldBucket!40)) key!4968))))

(assert (= (and d!1462864 (not res!1948599)) b!4640047))

(assert (= (and b!4640047 res!1948600) b!4640048))

(declare-fun m!5499591 () Bool)

(assert (=> b!4640048 m!5499591))

(assert (=> b!4639944 d!1462864))

(declare-fun d!1462866 () Bool)

(declare-datatypes ((Option!11737 0))(
  ( (None!11736) (Some!11736 (v!45954 List!51874)) )
))
(declare-fun get!17204 (Option!11737) List!51874)

(declare-fun getValueByKey!1547 (List!51875 (_ BitVec 64)) Option!11737)

(assert (=> d!1462866 (= (apply!12220 lt!1802754 lt!1802759) (get!17204 (getValueByKey!1547 (toList!5119 lt!1802754) lt!1802759)))))

(declare-fun bs!1033115 () Bool)

(assert (= bs!1033115 d!1462866))

(declare-fun m!5499593 () Bool)

(assert (=> bs!1033115 m!5499593))

(assert (=> bs!1033115 m!5499593))

(declare-fun m!5499595 () Bool)

(assert (=> bs!1033115 m!5499595))

(assert (=> b!4639944 d!1462866))

(declare-fun d!1462868 () Bool)

(declare-fun lt!1802899 () Bool)

(declare-fun content!8932 (List!51875) (Set tuple2!52796))

(assert (=> d!1462868 (= lt!1802899 (set.member lt!1802756 (content!8932 lt!1802755)))))

(declare-fun e!2894528 () Bool)

(assert (=> d!1462868 (= lt!1802899 e!2894528)))

(declare-fun res!1948612 () Bool)

(assert (=> d!1462868 (=> (not res!1948612) (not e!2894528))))

(assert (=> d!1462868 (= res!1948612 (is-Cons!51751 lt!1802755))))

(assert (=> d!1462868 (= (contains!14862 lt!1802755 lt!1802756) lt!1802899)))

(declare-fun b!4640061 () Bool)

(declare-fun e!2894529 () Bool)

(assert (=> b!4640061 (= e!2894528 e!2894529)))

(declare-fun res!1948611 () Bool)

(assert (=> b!4640061 (=> res!1948611 e!2894529)))

(assert (=> b!4640061 (= res!1948611 (= (h!57855 lt!1802755) lt!1802756))))

(declare-fun b!4640062 () Bool)

(assert (=> b!4640062 (= e!2894529 (contains!14862 (t!358957 lt!1802755) lt!1802756))))

(assert (= (and d!1462868 res!1948612) b!4640061))

(assert (= (and b!4640061 (not res!1948611)) b!4640062))

(declare-fun m!5499597 () Bool)

(assert (=> d!1462868 m!5499597))

(declare-fun m!5499599 () Bool)

(assert (=> d!1462868 m!5499599))

(declare-fun m!5499601 () Bool)

(assert (=> b!4640062 m!5499601))

(assert (=> b!4639944 d!1462868))

(declare-fun d!1462870 () Bool)

(declare-fun dynLambda!21541 (Int tuple2!52796) Bool)

(assert (=> d!1462870 (dynLambda!21541 lambda!195925 lt!1802756)))

(declare-fun lt!1802902 () Unit!115187)

(declare-fun choose!31746 (List!51875 Int tuple2!52796) Unit!115187)

(assert (=> d!1462870 (= lt!1802902 (choose!31746 lt!1802755 lambda!195925 lt!1802756))))

(declare-fun e!2894532 () Bool)

(assert (=> d!1462870 e!2894532))

(declare-fun res!1948615 () Bool)

(assert (=> d!1462870 (=> (not res!1948615) (not e!2894532))))

(assert (=> d!1462870 (= res!1948615 (forall!10934 lt!1802755 lambda!195925))))

(assert (=> d!1462870 (= (forallContained!3153 lt!1802755 lambda!195925 lt!1802756) lt!1802902)))

(declare-fun b!4640065 () Bool)

(assert (=> b!4640065 (= e!2894532 (contains!14862 lt!1802755 lt!1802756))))

(assert (= (and d!1462870 res!1948615) b!4640065))

(declare-fun b_lambda!171047 () Bool)

(assert (=> (not b_lambda!171047) (not d!1462870)))

(declare-fun m!5499603 () Bool)

(assert (=> d!1462870 m!5499603))

(declare-fun m!5499605 () Bool)

(assert (=> d!1462870 m!5499605))

(declare-fun m!5499607 () Bool)

(assert (=> d!1462870 m!5499607))

(assert (=> b!4640065 m!5499461))

(assert (=> b!4639944 d!1462870))

(declare-fun d!1462872 () Bool)

(declare-fun res!1948616 () Bool)

(declare-fun e!2894533 () Bool)

(assert (=> d!1462872 (=> res!1948616 e!2894533)))

(assert (=> d!1462872 (= res!1948616 (and (is-Cons!51750 oldBucket!40) (= (_1!29691 (h!57854 oldBucket!40)) key!4968)))))

(assert (=> d!1462872 (= (containsKey!2613 oldBucket!40 key!4968) e!2894533)))

(declare-fun b!4640066 () Bool)

(declare-fun e!2894534 () Bool)

(assert (=> b!4640066 (= e!2894533 e!2894534)))

(declare-fun res!1948617 () Bool)

(assert (=> b!4640066 (=> (not res!1948617) (not e!2894534))))

(assert (=> b!4640066 (= res!1948617 (is-Cons!51750 oldBucket!40))))

(declare-fun b!4640067 () Bool)

(assert (=> b!4640067 (= e!2894534 (containsKey!2613 (t!358956 oldBucket!40) key!4968))))

(assert (= (and d!1462872 (not res!1948616)) b!4640066))

(assert (= (and b!4640066 res!1948617) b!4640067))

(assert (=> b!4640067 m!5499457))

(assert (=> b!4639944 d!1462872))

(declare-fun d!1462874 () Bool)

(declare-fun isEmpty!28973 (Option!11735) Bool)

(assert (=> d!1462874 (= (isDefined!9000 (getPair!347 lt!1802758 key!4968)) (not (isEmpty!28973 (getPair!347 lt!1802758 key!4968))))))

(declare-fun bs!1033116 () Bool)

(assert (= bs!1033116 d!1462874))

(assert (=> bs!1033116 m!5499451))

(declare-fun m!5499609 () Bool)

(assert (=> bs!1033116 m!5499609))

(assert (=> b!4639944 d!1462874))

(declare-fun bs!1033119 () Bool)

(declare-fun d!1462876 () Bool)

(assert (= bs!1033119 (and d!1462876 b!4639944)))

(declare-fun lambda!195983 () Int)

(assert (=> bs!1033119 (= lambda!195983 lambda!195925)))

(declare-fun bs!1033120 () Bool)

(assert (= bs!1033120 (and d!1462876 d!1462858)))

(assert (=> bs!1033120 (= lambda!195983 lambda!195966)))

(declare-fun b!4640114 () Bool)

(declare-fun res!1948648 () Bool)

(declare-fun e!2894563 () Bool)

(assert (=> b!4640114 (=> (not res!1948648) (not e!2894563))))

(assert (=> b!4640114 (= res!1948648 (contains!14864 (extractMap!1643 (toList!5119 lt!1802754)) key!4968))))

(declare-fun lt!1802944 () List!51874)

(declare-fun e!2894562 () Bool)

(declare-fun lt!1802947 () (_ BitVec 64))

(declare-fun b!4640116 () Bool)

(assert (=> b!4640116 (= e!2894562 (= (getValueByKey!1547 (toList!5119 lt!1802754) lt!1802947) (Some!11736 lt!1802944)))))

(declare-fun b!4640113 () Bool)

(declare-fun res!1948647 () Bool)

(assert (=> b!4640113 (=> (not res!1948647) (not e!2894563))))

(declare-fun allKeysSameHashInMap!1573 (ListLongMap!3689 Hashable!5984) Bool)

(assert (=> b!4640113 (= res!1948647 (allKeysSameHashInMap!1573 lt!1802754 hashF!1389))))

(assert (=> d!1462876 e!2894563))

(declare-fun res!1948646 () Bool)

(assert (=> d!1462876 (=> (not res!1948646) (not e!2894563))))

(assert (=> d!1462876 (= res!1948646 (forall!10934 (toList!5119 lt!1802754) lambda!195983))))

(declare-fun lt!1802943 () Unit!115187)

(declare-fun choose!31747 (ListLongMap!3689 K!13118 Hashable!5984) Unit!115187)

(assert (=> d!1462876 (= lt!1802943 (choose!31747 lt!1802754 key!4968 hashF!1389))))

(assert (=> d!1462876 (forall!10934 (toList!5119 lt!1802754) lambda!195983)))

(assert (=> d!1462876 (= (lemmaInGenMapThenGetPairDefined!143 lt!1802754 key!4968 hashF!1389) lt!1802943)))

(declare-fun b!4640115 () Bool)

(assert (=> b!4640115 (= e!2894563 (isDefined!9000 (getPair!347 (apply!12220 lt!1802754 (hash!3675 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1802949 () Unit!115187)

(assert (=> b!4640115 (= lt!1802949 (forallContained!3153 (toList!5119 lt!1802754) lambda!195983 (tuple2!52797 (hash!3675 hashF!1389 key!4968) (apply!12220 lt!1802754 (hash!3675 hashF!1389 key!4968)))))))

(declare-fun lt!1802948 () Unit!115187)

(declare-fun lt!1802946 () Unit!115187)

(assert (=> b!4640115 (= lt!1802948 lt!1802946)))

(assert (=> b!4640115 (contains!14862 (toList!5119 lt!1802754) (tuple2!52797 lt!1802947 lt!1802944))))

(assert (=> b!4640115 (= lt!1802946 (lemmaGetValueImpliesTupleContained!152 lt!1802754 lt!1802947 lt!1802944))))

(assert (=> b!4640115 e!2894562))

(declare-fun res!1948645 () Bool)

(assert (=> b!4640115 (=> (not res!1948645) (not e!2894562))))

(assert (=> b!4640115 (= res!1948645 (contains!14863 lt!1802754 lt!1802947))))

(assert (=> b!4640115 (= lt!1802944 (apply!12220 lt!1802754 (hash!3675 hashF!1389 key!4968)))))

(assert (=> b!4640115 (= lt!1802947 (hash!3675 hashF!1389 key!4968))))

(declare-fun lt!1802945 () Unit!115187)

(declare-fun lt!1802942 () Unit!115187)

(assert (=> b!4640115 (= lt!1802945 lt!1802942)))

(assert (=> b!4640115 (contains!14863 lt!1802754 (hash!3675 hashF!1389 key!4968))))

(assert (=> b!4640115 (= lt!1802942 (lemmaInGenMapThenLongMapContainsHash!553 lt!1802754 key!4968 hashF!1389))))

(assert (= (and d!1462876 res!1948646) b!4640113))

(assert (= (and b!4640113 res!1948647) b!4640114))

(assert (= (and b!4640114 res!1948648) b!4640115))

(assert (= (and b!4640115 res!1948645) b!4640116))

(declare-fun m!5499657 () Bool)

(assert (=> b!4640114 m!5499657))

(assert (=> b!4640114 m!5499657))

(declare-fun m!5499659 () Bool)

(assert (=> b!4640114 m!5499659))

(declare-fun m!5499661 () Bool)

(assert (=> d!1462876 m!5499661))

(declare-fun m!5499663 () Bool)

(assert (=> d!1462876 m!5499663))

(assert (=> d!1462876 m!5499661))

(declare-fun m!5499665 () Bool)

(assert (=> b!4640113 m!5499665))

(declare-fun m!5499667 () Bool)

(assert (=> b!4640116 m!5499667))

(declare-fun m!5499669 () Bool)

(assert (=> b!4640115 m!5499669))

(declare-fun m!5499671 () Bool)

(assert (=> b!4640115 m!5499671))

(declare-fun m!5499673 () Bool)

(assert (=> b!4640115 m!5499673))

(declare-fun m!5499675 () Bool)

(assert (=> b!4640115 m!5499675))

(declare-fun m!5499677 () Bool)

(assert (=> b!4640115 m!5499677))

(declare-fun m!5499679 () Bool)

(assert (=> b!4640115 m!5499679))

(assert (=> b!4640115 m!5499675))

(assert (=> b!4640115 m!5499439))

(declare-fun m!5499681 () Bool)

(assert (=> b!4640115 m!5499681))

(assert (=> b!4640115 m!5499439))

(assert (=> b!4640115 m!5499679))

(assert (=> b!4640115 m!5499439))

(declare-fun m!5499683 () Bool)

(assert (=> b!4640115 m!5499683))

(assert (=> b!4640115 m!5499463))

(assert (=> b!4639944 d!1462876))

(declare-fun bs!1033121 () Bool)

(declare-fun d!1462884 () Bool)

(assert (= bs!1033121 (and d!1462884 b!4639944)))

(declare-fun lambda!195986 () Int)

(assert (=> bs!1033121 (= lambda!195986 lambda!195925)))

(declare-fun bs!1033122 () Bool)

(assert (= bs!1033122 (and d!1462884 d!1462858)))

(assert (=> bs!1033122 (= lambda!195986 lambda!195966)))

(declare-fun bs!1033123 () Bool)

(assert (= bs!1033123 (and d!1462884 d!1462876)))

(assert (=> bs!1033123 (= lambda!195986 lambda!195983)))

(assert (=> d!1462884 (contains!14863 lt!1802754 (hash!3675 hashF!1389 key!4968))))

(declare-fun lt!1802955 () Unit!115187)

(declare-fun choose!31748 (ListLongMap!3689 K!13118 Hashable!5984) Unit!115187)

(assert (=> d!1462884 (= lt!1802955 (choose!31748 lt!1802754 key!4968 hashF!1389))))

(assert (=> d!1462884 (forall!10934 (toList!5119 lt!1802754) lambda!195986)))

(assert (=> d!1462884 (= (lemmaInGenMapThenLongMapContainsHash!553 lt!1802754 key!4968 hashF!1389) lt!1802955)))

(declare-fun bs!1033124 () Bool)

(assert (= bs!1033124 d!1462884))

(assert (=> bs!1033124 m!5499439))

(assert (=> bs!1033124 m!5499439))

(assert (=> bs!1033124 m!5499683))

(declare-fun m!5499691 () Bool)

(assert (=> bs!1033124 m!5499691))

(declare-fun m!5499693 () Bool)

(assert (=> bs!1033124 m!5499693))

(assert (=> b!4639944 d!1462884))

(declare-fun b!4640141 () Bool)

(declare-fun e!2894583 () Bool)

(assert (=> b!4640141 (= e!2894583 (not (containsKey!2613 lt!1802758 key!4968)))))

(declare-fun b!4640142 () Bool)

(declare-fun e!2894584 () Bool)

(declare-fun e!2894585 () Bool)

(assert (=> b!4640142 (= e!2894584 e!2894585)))

(declare-fun res!1948667 () Bool)

(assert (=> b!4640142 (=> (not res!1948667) (not e!2894585))))

(declare-fun lt!1802961 () Option!11735)

(assert (=> b!4640142 (= res!1948667 (isDefined!9000 lt!1802961))))

(declare-fun d!1462888 () Bool)

(assert (=> d!1462888 e!2894584))

(declare-fun res!1948665 () Bool)

(assert (=> d!1462888 (=> res!1948665 e!2894584)))

(assert (=> d!1462888 (= res!1948665 e!2894583)))

(declare-fun res!1948666 () Bool)

(assert (=> d!1462888 (=> (not res!1948666) (not e!2894583))))

(assert (=> d!1462888 (= res!1948666 (isEmpty!28973 lt!1802961))))

(declare-fun e!2894586 () Option!11735)

(assert (=> d!1462888 (= lt!1802961 e!2894586)))

(declare-fun c!794004 () Bool)

(assert (=> d!1462888 (= c!794004 (and (is-Cons!51750 lt!1802758) (= (_1!29691 (h!57854 lt!1802758)) key!4968)))))

(assert (=> d!1462888 (noDuplicateKeys!1587 lt!1802758)))

(assert (=> d!1462888 (= (getPair!347 lt!1802758 key!4968) lt!1802961)))

(declare-fun b!4640143 () Bool)

(assert (=> b!4640143 (= e!2894586 (Some!11734 (h!57854 lt!1802758)))))

(declare-fun b!4640144 () Bool)

(declare-fun e!2894582 () Option!11735)

(assert (=> b!4640144 (= e!2894582 (getPair!347 (t!358956 lt!1802758) key!4968))))

(declare-fun b!4640145 () Bool)

(assert (=> b!4640145 (= e!2894582 None!11734)))

(declare-fun b!4640146 () Bool)

(declare-fun res!1948668 () Bool)

(assert (=> b!4640146 (=> (not res!1948668) (not e!2894585))))

(declare-fun get!17205 (Option!11735) tuple2!52794)

(assert (=> b!4640146 (= res!1948668 (= (_1!29691 (get!17205 lt!1802961)) key!4968))))

(declare-fun b!4640147 () Bool)

(assert (=> b!4640147 (= e!2894586 e!2894582)))

(declare-fun c!794005 () Bool)

(assert (=> b!4640147 (= c!794005 (is-Cons!51750 lt!1802758))))

(declare-fun b!4640148 () Bool)

(declare-fun contains!14868 (List!51874 tuple2!52794) Bool)

(assert (=> b!4640148 (= e!2894585 (contains!14868 lt!1802758 (get!17205 lt!1802961)))))

(assert (= (and d!1462888 c!794004) b!4640143))

(assert (= (and d!1462888 (not c!794004)) b!4640147))

(assert (= (and b!4640147 c!794005) b!4640144))

(assert (= (and b!4640147 (not c!794005)) b!4640145))

(assert (= (and d!1462888 res!1948666) b!4640141))

(assert (= (and d!1462888 (not res!1948665)) b!4640142))

(assert (= (and b!4640142 res!1948667) b!4640146))

(assert (= (and b!4640146 res!1948668) b!4640148))

(declare-fun m!5499699 () Bool)

(assert (=> b!4640141 m!5499699))

(declare-fun m!5499701 () Bool)

(assert (=> b!4640146 m!5499701))

(assert (=> b!4640148 m!5499701))

(assert (=> b!4640148 m!5499701))

(declare-fun m!5499703 () Bool)

(assert (=> b!4640148 m!5499703))

(declare-fun m!5499705 () Bool)

(assert (=> d!1462888 m!5499705))

(declare-fun m!5499707 () Bool)

(assert (=> d!1462888 m!5499707))

(declare-fun m!5499709 () Bool)

(assert (=> b!4640142 m!5499709))

(declare-fun m!5499711 () Bool)

(assert (=> b!4640144 m!5499711))

(assert (=> b!4639944 d!1462888))

(declare-fun d!1462896 () Bool)

(declare-fun e!2894592 () Bool)

(assert (=> d!1462896 e!2894592))

(declare-fun res!1948671 () Bool)

(assert (=> d!1462896 (=> res!1948671 e!2894592)))

(declare-fun lt!1802976 () Bool)

(assert (=> d!1462896 (= res!1948671 (not lt!1802976))))

(declare-fun lt!1802974 () Bool)

(assert (=> d!1462896 (= lt!1802976 lt!1802974)))

(declare-fun lt!1802973 () Unit!115187)

(declare-fun e!2894591 () Unit!115187)

(assert (=> d!1462896 (= lt!1802973 e!2894591)))

(declare-fun c!794008 () Bool)

(assert (=> d!1462896 (= c!794008 lt!1802974)))

(declare-fun containsKey!2615 (List!51875 (_ BitVec 64)) Bool)

(assert (=> d!1462896 (= lt!1802974 (containsKey!2615 (toList!5119 lt!1802754) lt!1802759))))

(assert (=> d!1462896 (= (contains!14863 lt!1802754 lt!1802759) lt!1802976)))

(declare-fun b!4640156 () Bool)

(declare-fun lt!1802975 () Unit!115187)

(assert (=> b!4640156 (= e!2894591 lt!1802975)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1449 (List!51875 (_ BitVec 64)) Unit!115187)

(assert (=> b!4640156 (= lt!1802975 (lemmaContainsKeyImpliesGetValueByKeyDefined!1449 (toList!5119 lt!1802754) lt!1802759))))

(declare-fun isDefined!9002 (Option!11737) Bool)

(assert (=> b!4640156 (isDefined!9002 (getValueByKey!1547 (toList!5119 lt!1802754) lt!1802759))))

(declare-fun b!4640157 () Bool)

(declare-fun Unit!115202 () Unit!115187)

(assert (=> b!4640157 (= e!2894591 Unit!115202)))

(declare-fun b!4640158 () Bool)

(assert (=> b!4640158 (= e!2894592 (isDefined!9002 (getValueByKey!1547 (toList!5119 lt!1802754) lt!1802759)))))

(assert (= (and d!1462896 c!794008) b!4640156))

(assert (= (and d!1462896 (not c!794008)) b!4640157))

(assert (= (and d!1462896 (not res!1948671)) b!4640158))

(declare-fun m!5499717 () Bool)

(assert (=> d!1462896 m!5499717))

(declare-fun m!5499719 () Bool)

(assert (=> b!4640156 m!5499719))

(assert (=> b!4640156 m!5499593))

(assert (=> b!4640156 m!5499593))

(declare-fun m!5499721 () Bool)

(assert (=> b!4640156 m!5499721))

(assert (=> b!4640158 m!5499593))

(assert (=> b!4640158 m!5499593))

(assert (=> b!4640158 m!5499721))

(assert (=> b!4639944 d!1462896))

(declare-fun d!1462900 () Bool)

(assert (=> d!1462900 (contains!14862 (toList!5119 lt!1802754) (tuple2!52797 lt!1802759 lt!1802758))))

(declare-fun lt!1802981 () Unit!115187)

(declare-fun choose!31749 (ListLongMap!3689 (_ BitVec 64) List!51874) Unit!115187)

(assert (=> d!1462900 (= lt!1802981 (choose!31749 lt!1802754 lt!1802759 lt!1802758))))

(assert (=> d!1462900 (contains!14863 lt!1802754 lt!1802759)))

(assert (=> d!1462900 (= (lemmaGetValueImpliesTupleContained!152 lt!1802754 lt!1802759 lt!1802758) lt!1802981)))

(declare-fun bs!1033128 () Bool)

(assert (= bs!1033128 d!1462900))

(declare-fun m!5499723 () Bool)

(assert (=> bs!1033128 m!5499723))

(declare-fun m!5499725 () Bool)

(assert (=> bs!1033128 m!5499725))

(assert (=> bs!1033128 m!5499445))

(assert (=> b!4639944 d!1462900))

(declare-fun bs!1033129 () Bool)

(declare-fun d!1462902 () Bool)

(assert (= bs!1033129 (and d!1462902 b!4640027)))

(declare-fun lambda!195987 () Int)

(assert (=> bs!1033129 (not (= lambda!195987 lambda!195962))))

(assert (=> bs!1033129 (not (= lambda!195987 lambda!195961))))

(declare-fun bs!1033130 () Bool)

(assert (= bs!1033130 (and d!1462902 b!4640029)))

(assert (=> bs!1033130 (not (= lambda!195987 lambda!195960))))

(declare-fun bs!1033131 () Bool)

(assert (= bs!1033131 (and d!1462902 d!1462860)))

(assert (=> bs!1033131 (= lambda!195987 lambda!195969)))

(declare-fun bs!1033132 () Bool)

(assert (= bs!1033132 (and d!1462902 d!1462846)))

(assert (=> bs!1033132 (not (= lambda!195987 lambda!195963))))

(assert (=> d!1462902 true))

(assert (=> d!1462902 true))

(assert (=> d!1462902 (= (allKeysSameHash!1441 oldBucket!40 hash!414 hashF!1389) (forall!10933 oldBucket!40 lambda!195987))))

(declare-fun bs!1033133 () Bool)

(assert (= bs!1033133 d!1462902))

(declare-fun m!5499731 () Bool)

(assert (=> bs!1033133 m!5499731))

(assert (=> b!4639949 d!1462902))

(declare-fun b!4640190 () Bool)

(declare-fun e!2894612 () Unit!115187)

(declare-fun lt!1803005 () Unit!115187)

(assert (=> b!4640190 (= e!2894612 lt!1803005)))

(declare-fun lt!1803002 () Unit!115187)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1450 (List!51874 K!13118) Unit!115187)

(assert (=> b!4640190 (= lt!1803002 (lemmaContainsKeyImpliesGetValueByKeyDefined!1450 (toList!5120 lt!1802764) key!4968))))

(declare-datatypes ((Option!11738 0))(
  ( (None!11737) (Some!11737 (v!45955 V!13364)) )
))
(declare-fun isDefined!9003 (Option!11738) Bool)

(declare-fun getValueByKey!1548 (List!51874 K!13118) Option!11738)

(assert (=> b!4640190 (isDefined!9003 (getValueByKey!1548 (toList!5120 lt!1802764) key!4968))))

(declare-fun lt!1803003 () Unit!115187)

(assert (=> b!4640190 (= lt!1803003 lt!1803002)))

(declare-fun lemmaInListThenGetKeysListContains!703 (List!51874 K!13118) Unit!115187)

(assert (=> b!4640190 (= lt!1803005 (lemmaInListThenGetKeysListContains!703 (toList!5120 lt!1802764) key!4968))))

(declare-fun call!323907 () Bool)

(assert (=> b!4640190 call!323907))

(declare-fun bm!323902 () Bool)

(declare-datatypes ((List!51878 0))(
  ( (Nil!51754) (Cons!51754 (h!57859 K!13118) (t!358960 List!51878)) )
))
(declare-fun e!2894616 () List!51878)

(declare-fun contains!14869 (List!51878 K!13118) Bool)

(assert (=> bm!323902 (= call!323907 (contains!14869 e!2894616 key!4968))))

(declare-fun c!794021 () Bool)

(declare-fun c!794023 () Bool)

(assert (=> bm!323902 (= c!794021 c!794023)))

(declare-fun b!4640191 () Bool)

(declare-fun e!2894611 () Unit!115187)

(assert (=> b!4640191 (= e!2894612 e!2894611)))

(declare-fun c!794022 () Bool)

(assert (=> b!4640191 (= c!794022 call!323907)))

(declare-fun b!4640192 () Bool)

(declare-fun Unit!115203 () Unit!115187)

(assert (=> b!4640192 (= e!2894611 Unit!115203)))

(declare-fun b!4640193 () Bool)

(declare-fun e!2894615 () Bool)

(declare-fun e!2894613 () Bool)

(assert (=> b!4640193 (= e!2894615 e!2894613)))

(declare-fun res!1948680 () Bool)

(assert (=> b!4640193 (=> (not res!1948680) (not e!2894613))))

(assert (=> b!4640193 (= res!1948680 (isDefined!9003 (getValueByKey!1548 (toList!5120 lt!1802764) key!4968)))))

(declare-fun b!4640194 () Bool)

(declare-fun keys!18289 (ListMap!4443) List!51878)

(assert (=> b!4640194 (= e!2894613 (contains!14869 (keys!18289 lt!1802764) key!4968))))

(declare-fun d!1462906 () Bool)

(assert (=> d!1462906 e!2894615))

(declare-fun res!1948679 () Bool)

(assert (=> d!1462906 (=> res!1948679 e!2894615)))

(declare-fun e!2894614 () Bool)

(assert (=> d!1462906 (= res!1948679 e!2894614)))

(declare-fun res!1948678 () Bool)

(assert (=> d!1462906 (=> (not res!1948678) (not e!2894614))))

(declare-fun lt!1803000 () Bool)

(assert (=> d!1462906 (= res!1948678 (not lt!1803000))))

(declare-fun lt!1803001 () Bool)

(assert (=> d!1462906 (= lt!1803000 lt!1803001)))

(declare-fun lt!1803004 () Unit!115187)

(assert (=> d!1462906 (= lt!1803004 e!2894612)))

(assert (=> d!1462906 (= c!794023 lt!1803001)))

(declare-fun containsKey!2616 (List!51874 K!13118) Bool)

(assert (=> d!1462906 (= lt!1803001 (containsKey!2616 (toList!5120 lt!1802764) key!4968))))

(assert (=> d!1462906 (= (contains!14864 lt!1802764 key!4968) lt!1803000)))

(declare-fun b!4640195 () Bool)

(assert (=> b!4640195 (= e!2894614 (not (contains!14869 (keys!18289 lt!1802764) key!4968)))))

(declare-fun b!4640196 () Bool)

(assert (=> b!4640196 false))

(declare-fun lt!1802999 () Unit!115187)

(declare-fun lt!1803006 () Unit!115187)

(assert (=> b!4640196 (= lt!1802999 lt!1803006)))

(assert (=> b!4640196 (containsKey!2616 (toList!5120 lt!1802764) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!707 (List!51874 K!13118) Unit!115187)

(assert (=> b!4640196 (= lt!1803006 (lemmaInGetKeysListThenContainsKey!707 (toList!5120 lt!1802764) key!4968))))

(declare-fun Unit!115204 () Unit!115187)

(assert (=> b!4640196 (= e!2894611 Unit!115204)))

(declare-fun b!4640197 () Bool)

(declare-fun getKeysList!708 (List!51874) List!51878)

(assert (=> b!4640197 (= e!2894616 (getKeysList!708 (toList!5120 lt!1802764)))))

(declare-fun b!4640198 () Bool)

(assert (=> b!4640198 (= e!2894616 (keys!18289 lt!1802764))))

(assert (= (and d!1462906 c!794023) b!4640190))

(assert (= (and d!1462906 (not c!794023)) b!4640191))

(assert (= (and b!4640191 c!794022) b!4640196))

(assert (= (and b!4640191 (not c!794022)) b!4640192))

(assert (= (or b!4640190 b!4640191) bm!323902))

(assert (= (and bm!323902 c!794021) b!4640197))

(assert (= (and bm!323902 (not c!794021)) b!4640198))

(assert (= (and d!1462906 res!1948678) b!4640195))

(assert (= (and d!1462906 (not res!1948679)) b!4640193))

(assert (= (and b!4640193 res!1948680) b!4640194))

(declare-fun m!5499733 () Bool)

(assert (=> b!4640190 m!5499733))

(declare-fun m!5499735 () Bool)

(assert (=> b!4640190 m!5499735))

(assert (=> b!4640190 m!5499735))

(declare-fun m!5499737 () Bool)

(assert (=> b!4640190 m!5499737))

(declare-fun m!5499739 () Bool)

(assert (=> b!4640190 m!5499739))

(declare-fun m!5499741 () Bool)

(assert (=> bm!323902 m!5499741))

(declare-fun m!5499743 () Bool)

(assert (=> d!1462906 m!5499743))

(assert (=> b!4640196 m!5499743))

(declare-fun m!5499745 () Bool)

(assert (=> b!4640196 m!5499745))

(assert (=> b!4640193 m!5499735))

(assert (=> b!4640193 m!5499735))

(assert (=> b!4640193 m!5499737))

(declare-fun m!5499747 () Bool)

(assert (=> b!4640198 m!5499747))

(assert (=> b!4640195 m!5499747))

(assert (=> b!4640195 m!5499747))

(declare-fun m!5499749 () Bool)

(assert (=> b!4640195 m!5499749))

(declare-fun m!5499751 () Bool)

(assert (=> b!4640197 m!5499751))

(assert (=> b!4640194 m!5499747))

(assert (=> b!4640194 m!5499747))

(assert (=> b!4640194 m!5499749))

(assert (=> b!4639948 d!1462906))

(declare-fun bs!1033134 () Bool)

(declare-fun d!1462908 () Bool)

(assert (= bs!1033134 (and d!1462908 b!4639944)))

(declare-fun lambda!195988 () Int)

(assert (=> bs!1033134 (= lambda!195988 lambda!195925)))

(declare-fun bs!1033135 () Bool)

(assert (= bs!1033135 (and d!1462908 d!1462858)))

(assert (=> bs!1033135 (= lambda!195988 lambda!195966)))

(declare-fun bs!1033136 () Bool)

(assert (= bs!1033136 (and d!1462908 d!1462876)))

(assert (=> bs!1033136 (= lambda!195988 lambda!195983)))

(declare-fun bs!1033137 () Bool)

(assert (= bs!1033137 (and d!1462908 d!1462884)))

(assert (=> bs!1033137 (= lambda!195988 lambda!195986)))

(declare-fun lt!1803007 () ListMap!4443)

(assert (=> d!1462908 (invariantList!1257 (toList!5120 lt!1803007))))

(declare-fun e!2894617 () ListMap!4443)

(assert (=> d!1462908 (= lt!1803007 e!2894617)))

(declare-fun c!794024 () Bool)

(assert (=> d!1462908 (= c!794024 (is-Cons!51751 lt!1802755))))

(assert (=> d!1462908 (forall!10934 lt!1802755 lambda!195988)))

(assert (=> d!1462908 (= (extractMap!1643 lt!1802755) lt!1803007)))

(declare-fun b!4640199 () Bool)

(assert (=> b!4640199 (= e!2894617 (addToMapMapFromBucket!1046 (_2!29692 (h!57855 lt!1802755)) (extractMap!1643 (t!358957 lt!1802755))))))

(declare-fun b!4640200 () Bool)

(assert (=> b!4640200 (= e!2894617 (ListMap!4444 Nil!51750))))

(assert (= (and d!1462908 c!794024) b!4640199))

(assert (= (and d!1462908 (not c!794024)) b!4640200))

(declare-fun m!5499753 () Bool)

(assert (=> d!1462908 m!5499753))

(declare-fun m!5499755 () Bool)

(assert (=> d!1462908 m!5499755))

(declare-fun m!5499757 () Bool)

(assert (=> b!4640199 m!5499757))

(assert (=> b!4640199 m!5499757))

(declare-fun m!5499759 () Bool)

(assert (=> b!4640199 m!5499759))

(assert (=> b!4639948 d!1462908))

(declare-fun d!1462910 () Bool)

(declare-fun res!1948685 () Bool)

(declare-fun e!2894622 () Bool)

(assert (=> d!1462910 (=> res!1948685 e!2894622)))

(assert (=> d!1462910 (= res!1948685 (not (is-Cons!51750 oldBucket!40)))))

(assert (=> d!1462910 (= (noDuplicateKeys!1587 oldBucket!40) e!2894622)))

(declare-fun b!4640205 () Bool)

(declare-fun e!2894623 () Bool)

(assert (=> b!4640205 (= e!2894622 e!2894623)))

(declare-fun res!1948686 () Bool)

(assert (=> b!4640205 (=> (not res!1948686) (not e!2894623))))

(assert (=> b!4640205 (= res!1948686 (not (containsKey!2613 (t!358956 oldBucket!40) (_1!29691 (h!57854 oldBucket!40)))))))

(declare-fun b!4640206 () Bool)

(assert (=> b!4640206 (= e!2894623 (noDuplicateKeys!1587 (t!358956 oldBucket!40)))))

(assert (= (and d!1462910 (not res!1948685)) b!4640205))

(assert (= (and b!4640205 res!1948686) b!4640206))

(declare-fun m!5499761 () Bool)

(assert (=> b!4640205 m!5499761))

(declare-fun m!5499763 () Bool)

(assert (=> b!4640206 m!5499763))

(assert (=> start!466454 d!1462910))

(declare-fun d!1462912 () Bool)

(declare-fun res!1948687 () Bool)

(declare-fun e!2894624 () Bool)

(assert (=> d!1462912 (=> res!1948687 e!2894624)))

(assert (=> d!1462912 (= res!1948687 (not (is-Cons!51750 newBucket!224)))))

(assert (=> d!1462912 (= (noDuplicateKeys!1587 newBucket!224) e!2894624)))

(declare-fun b!4640207 () Bool)

(declare-fun e!2894625 () Bool)

(assert (=> b!4640207 (= e!2894624 e!2894625)))

(declare-fun res!1948688 () Bool)

(assert (=> b!4640207 (=> (not res!1948688) (not e!2894625))))

(assert (=> b!4640207 (= res!1948688 (not (containsKey!2613 (t!358956 newBucket!224) (_1!29691 (h!57854 newBucket!224)))))))

(declare-fun b!4640208 () Bool)

(assert (=> b!4640208 (= e!2894625 (noDuplicateKeys!1587 (t!358956 newBucket!224)))))

(assert (= (and d!1462912 (not res!1948687)) b!4640207))

(assert (= (and b!4640207 res!1948688) b!4640208))

(declare-fun m!5499765 () Bool)

(assert (=> b!4640207 m!5499765))

(declare-fun m!5499767 () Bool)

(assert (=> b!4640208 m!5499767))

(assert (=> b!4639953 d!1462912))

(declare-fun b!4640213 () Bool)

(declare-fun e!2894628 () Bool)

(declare-fun tp!1342818 () Bool)

(assert (=> b!4640213 (= e!2894628 (and tp_is_empty!29641 tp_is_empty!29643 tp!1342818))))

(assert (=> b!4639950 (= tp!1342808 e!2894628)))

(assert (= (and b!4639950 (is-Cons!51750 (t!358956 newBucket!224))) b!4640213))

(declare-fun b!4640214 () Bool)

(declare-fun tp!1342819 () Bool)

(declare-fun e!2894629 () Bool)

(assert (=> b!4640214 (= e!2894629 (and tp_is_empty!29641 tp_is_empty!29643 tp!1342819))))

(assert (=> b!4639947 (= tp!1342809 e!2894629)))

(assert (= (and b!4639947 (is-Cons!51750 (t!358956 oldBucket!40))) b!4640214))

(declare-fun b_lambda!171049 () Bool)

(assert (= b_lambda!171047 (or b!4639944 b_lambda!171049)))

(declare-fun bs!1033138 () Bool)

(declare-fun d!1462914 () Bool)

(assert (= bs!1033138 (and d!1462914 b!4639944)))

(assert (=> bs!1033138 (= (dynLambda!21541 lambda!195925 lt!1802756) (noDuplicateKeys!1587 (_2!29692 lt!1802756)))))

(declare-fun m!5499769 () Bool)

(assert (=> bs!1033138 m!5499769))

(assert (=> d!1462870 d!1462914))

(push 1)

(assert (not b!4640195))

(assert (not b!4640205))

(assert (not d!1462862))

(assert (not d!1462900))

(assert (not d!1462836))

(assert (not b!4640027))

(assert (not b!4640206))

(assert (not d!1462840))

(assert (not b!4640158))

(assert (not d!1462908))

(assert (not b!4640116))

(assert (not d!1462874))

(assert (not d!1462876))

(assert (not b!4640144))

(assert (not bm!323899))

(assert (not b!4640148))

(assert (not b!4640026))

(assert (not b!4640197))

(assert (not b!4640065))

(assert (not bm!323897))

(assert (not b!4640067))

(assert (not d!1462884))

(assert (not b!4640141))

(assert (not d!1462902))

(assert (not b!4640199))

(assert (not b!4640037))

(assert (not b!4640115))

(assert (not d!1462866))

(assert (not b_lambda!171049))

(assert (not b!4640208))

(assert (not b!4640001))

(assert tp_is_empty!29643)

(assert (not d!1462838))

(assert (not bs!1033138))

(assert (not b!4640142))

(assert (not d!1462846))

(assert (not b!4640198))

(assert (not b!4640194))

(assert (not b!4640114))

(assert (not d!1462888))

(assert (not b!4640146))

(assert (not d!1462858))

(assert (not b!4640193))

(assert (not b!4640048))

(assert (not b!4640213))

(assert (not b!4640156))

(assert (not b!4640207))

(assert (not bm!323898))

(assert (not b!4640214))

(assert (not b!4640062))

(assert tp_is_empty!29641)

(assert (not d!1462870))

(assert (not b!4640030))

(assert (not d!1462868))

(assert (not d!1462896))

(assert (not d!1462860))

(assert (not d!1462906))

(assert (not bm!323902))

(assert (not b!4640190))

(assert (not b!4640196))

(assert (not b!4640005))

(assert (not b!4640113))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

