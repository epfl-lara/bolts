; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!465316 () Bool)

(assert start!465316)

(declare-fun b!4633592 () Bool)

(declare-fun e!2890530 () Bool)

(declare-fun e!2890527 () Bool)

(assert (=> b!4633592 (= e!2890530 e!2890527)))

(declare-fun res!1944563 () Bool)

(assert (=> b!4633592 (=> res!1944563 e!2890527)))

(declare-datatypes ((K!13000 0))(
  ( (K!13001 (val!18671 Int)) )
))
(declare-datatypes ((V!13246 0))(
  ( (V!13247 (val!18672 Int)) )
))
(declare-datatypes ((tuple2!52606 0))(
  ( (tuple2!52607 (_1!29597 K!13000) (_2!29597 V!13246)) )
))
(declare-datatypes ((List!51756 0))(
  ( (Nil!51632) (Cons!51632 (h!57712 tuple2!52606) (t!358818 List!51756)) )
))
(declare-fun lt!1795053 () List!51756)

(declare-fun lt!1795055 () List!51756)

(declare-fun key!4968 () K!13000)

(declare-fun removePairForKey!1163 (List!51756 K!13000) List!51756)

(assert (=> b!4633592 (= res!1944563 (not (= (removePairForKey!1163 lt!1795053 key!4968) lt!1795055)))))

(declare-fun newBucket!224 () List!51756)

(declare-fun tail!8175 (List!51756) List!51756)

(assert (=> b!4633592 (= lt!1795055 (tail!8175 newBucket!224))))

(declare-fun oldBucket!40 () List!51756)

(assert (=> b!4633592 (= lt!1795053 (tail!8175 oldBucket!40))))

(declare-fun b!4633593 () Bool)

(declare-fun e!2890537 () Bool)

(assert (=> b!4633593 (= e!2890537 e!2890530)))

(declare-fun res!1944561 () Bool)

(assert (=> b!4633593 (=> res!1944561 e!2890530)))

(declare-fun containsKey!2540 (List!51756 K!13000) Bool)

(assert (=> b!4633593 (= res!1944561 (not (containsKey!2540 (t!358818 oldBucket!40) key!4968)))))

(assert (=> b!4633593 (containsKey!2540 oldBucket!40 key!4968)))

(declare-datatypes ((Hashable!5937 0))(
  ( (HashableExt!5936 (__x!31640 Int)) )
))
(declare-fun hashF!1389 () Hashable!5937)

(declare-datatypes ((Unit!113879 0))(
  ( (Unit!113880) )
))
(declare-fun lt!1795060 () Unit!113879)

(declare-fun lemmaGetPairDefinedThenContainsKey!86 (List!51756 K!13000 Hashable!5937) Unit!113879)

(assert (=> b!4633593 (= lt!1795060 (lemmaGetPairDefinedThenContainsKey!86 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1795034 () List!51756)

(declare-datatypes ((Option!11682 0))(
  ( (None!11681) (Some!11681 (v!45867 tuple2!52606)) )
))
(declare-fun isDefined!8947 (Option!11682) Bool)

(declare-fun getPair!332 (List!51756 K!13000) Option!11682)

(assert (=> b!4633593 (isDefined!8947 (getPair!332 lt!1795034 key!4968))))

(declare-fun lambda!194322 () Int)

(declare-fun lt!1795047 () Unit!113879)

(declare-datatypes ((tuple2!52608 0))(
  ( (tuple2!52609 (_1!29598 (_ BitVec 64)) (_2!29598 List!51756)) )
))
(declare-fun lt!1795042 () tuple2!52608)

(declare-datatypes ((List!51757 0))(
  ( (Nil!51633) (Cons!51633 (h!57713 tuple2!52608) (t!358819 List!51757)) )
))
(declare-fun lt!1795043 () List!51757)

(declare-fun forallContained!3114 (List!51757 Int tuple2!52608) Unit!113879)

(assert (=> b!4633593 (= lt!1795047 (forallContained!3114 lt!1795043 lambda!194322 lt!1795042))))

(declare-fun contains!14739 (List!51757 tuple2!52608) Bool)

(assert (=> b!4633593 (contains!14739 lt!1795043 lt!1795042)))

(declare-fun lt!1795037 () (_ BitVec 64))

(assert (=> b!4633593 (= lt!1795042 (tuple2!52609 lt!1795037 lt!1795034))))

(declare-fun lt!1795052 () Unit!113879)

(declare-datatypes ((ListLongMap!3635 0))(
  ( (ListLongMap!3636 (toList!5045 List!51757)) )
))
(declare-fun lt!1795033 () ListLongMap!3635)

(declare-fun lemmaGetValueImpliesTupleContained!137 (ListLongMap!3635 (_ BitVec 64) List!51756) Unit!113879)

(assert (=> b!4633593 (= lt!1795052 (lemmaGetValueImpliesTupleContained!137 lt!1795033 lt!1795037 lt!1795034))))

(declare-fun apply!12205 (ListLongMap!3635 (_ BitVec 64)) List!51756)

(assert (=> b!4633593 (= lt!1795034 (apply!12205 lt!1795033 lt!1795037))))

(declare-fun contains!14740 (ListLongMap!3635 (_ BitVec 64)) Bool)

(assert (=> b!4633593 (contains!14740 lt!1795033 lt!1795037)))

(declare-fun lt!1795036 () Unit!113879)

(declare-fun lemmaInGenMapThenLongMapContainsHash!538 (ListLongMap!3635 K!13000 Hashable!5937) Unit!113879)

(assert (=> b!4633593 (= lt!1795036 (lemmaInGenMapThenLongMapContainsHash!538 lt!1795033 key!4968 hashF!1389))))

(declare-fun lt!1795032 () Unit!113879)

(declare-fun lemmaInGenMapThenGetPairDefined!128 (ListLongMap!3635 K!13000 Hashable!5937) Unit!113879)

(assert (=> b!4633593 (= lt!1795032 (lemmaInGenMapThenGetPairDefined!128 lt!1795033 key!4968 hashF!1389))))

(assert (=> b!4633593 (= lt!1795033 (ListLongMap!3636 lt!1795043))))

(declare-fun b!4633594 () Bool)

(declare-fun e!2890534 () Bool)

(assert (=> b!4633594 (= e!2890527 e!2890534)))

(declare-fun res!1944572 () Bool)

(assert (=> b!4633594 (=> res!1944572 e!2890534)))

(declare-datatypes ((ListMap!4349 0))(
  ( (ListMap!4350 (toList!5046 List!51756)) )
))
(declare-fun lt!1795046 () ListMap!4349)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun eq!855 (ListMap!4349 ListMap!4349) Bool)

(declare-fun +!1906 (ListMap!4349 tuple2!52606) ListMap!4349)

(declare-fun extractMap!1596 (List!51757) ListMap!4349)

(assert (=> b!4633594 (= res!1944572 (not (eq!855 lt!1795046 (+!1906 (extractMap!1596 (Cons!51633 (tuple2!52609 hash!414 lt!1795053) Nil!51633)) (h!57712 oldBucket!40)))))))

(declare-fun lt!1795039 () tuple2!52606)

(declare-fun addToMapMapFromBucket!1001 (List!51756 ListMap!4349) ListMap!4349)

(assert (=> b!4633594 (eq!855 (addToMapMapFromBucket!1001 (Cons!51632 lt!1795039 lt!1795055) (ListMap!4350 Nil!51632)) (+!1906 (addToMapMapFromBucket!1001 lt!1795055 (ListMap!4350 Nil!51632)) lt!1795039))))

(declare-fun lt!1795061 () Unit!113879)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!106 (tuple2!52606 List!51756 ListMap!4349) Unit!113879)

(assert (=> b!4633594 (= lt!1795061 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!106 lt!1795039 lt!1795055 (ListMap!4350 Nil!51632)))))

(declare-fun head!9674 (List!51756) tuple2!52606)

(assert (=> b!4633594 (= lt!1795039 (head!9674 newBucket!224))))

(declare-fun lt!1795063 () tuple2!52606)

(assert (=> b!4633594 (eq!855 (addToMapMapFromBucket!1001 (Cons!51632 lt!1795063 lt!1795053) (ListMap!4350 Nil!51632)) (+!1906 (addToMapMapFromBucket!1001 lt!1795053 (ListMap!4350 Nil!51632)) lt!1795063))))

(declare-fun lt!1795049 () Unit!113879)

(assert (=> b!4633594 (= lt!1795049 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!106 lt!1795063 lt!1795053 (ListMap!4350 Nil!51632)))))

(assert (=> b!4633594 (= lt!1795063 (head!9674 oldBucket!40))))

(declare-fun lt!1795059 () ListMap!4349)

(declare-fun contains!14741 (ListMap!4349 K!13000) Bool)

(assert (=> b!4633594 (contains!14741 lt!1795059 key!4968)))

(declare-fun lt!1795065 () List!51757)

(assert (=> b!4633594 (= lt!1795059 (extractMap!1596 lt!1795065))))

(declare-fun lt!1795035 () Unit!113879)

(declare-fun lemmaListContainsThenExtractedMapContains!358 (ListLongMap!3635 K!13000 Hashable!5937) Unit!113879)

(assert (=> b!4633594 (= lt!1795035 (lemmaListContainsThenExtractedMapContains!358 (ListLongMap!3636 lt!1795065) key!4968 hashF!1389))))

(assert (=> b!4633594 (= lt!1795065 (Cons!51633 (tuple2!52609 hash!414 (t!358818 oldBucket!40)) Nil!51633))))

(declare-fun b!4633595 () Bool)

(declare-fun e!2890528 () Bool)

(declare-fun e!2890529 () Bool)

(assert (=> b!4633595 (= e!2890528 e!2890529)))

(declare-fun res!1944564 () Bool)

(assert (=> b!4633595 (=> (not res!1944564) (not e!2890529))))

(assert (=> b!4633595 (= res!1944564 (contains!14741 lt!1795046 key!4968))))

(assert (=> b!4633595 (= lt!1795046 (extractMap!1596 lt!1795043))))

(assert (=> b!4633595 (= lt!1795043 (Cons!51633 (tuple2!52609 hash!414 oldBucket!40) Nil!51633))))

(declare-fun b!4633597 () Bool)

(declare-fun res!1944565 () Bool)

(declare-fun e!2890533 () Bool)

(assert (=> b!4633597 (=> (not res!1944565) (not e!2890533))))

(declare-fun allKeysSameHash!1394 (List!51756 (_ BitVec 64) Hashable!5937) Bool)

(assert (=> b!4633597 (= res!1944565 (allKeysSameHash!1394 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4633598 () Bool)

(declare-fun res!1944560 () Bool)

(assert (=> b!4633598 (=> res!1944560 e!2890527)))

(assert (=> b!4633598 (= res!1944560 (not (= (removePairForKey!1163 (t!358818 oldBucket!40) key!4968) lt!1795055)))))

(declare-fun b!4633599 () Bool)

(declare-fun res!1944558 () Bool)

(assert (=> b!4633599 (=> (not res!1944558) (not e!2890528))))

(declare-fun noDuplicateKeys!1540 (List!51756) Bool)

(assert (=> b!4633599 (= res!1944558 (noDuplicateKeys!1540 newBucket!224))))

(declare-fun b!4633600 () Bool)

(declare-fun res!1944569 () Bool)

(declare-fun e!2890532 () Bool)

(assert (=> b!4633600 (=> res!1944569 e!2890532)))

(assert (=> b!4633600 (= res!1944569 (not (= lt!1795039 (h!57712 oldBucket!40))))))

(declare-fun b!4633601 () Bool)

(declare-fun e!2890531 () Bool)

(declare-fun forall!10882 (List!51757 Int) Bool)

(assert (=> b!4633601 (= e!2890531 (forall!10882 lt!1795043 lambda!194322))))

(declare-fun b!4633602 () Bool)

(declare-fun tp_is_empty!29453 () Bool)

(declare-fun e!2890535 () Bool)

(declare-fun tp!1342430 () Bool)

(declare-fun tp_is_empty!29455 () Bool)

(assert (=> b!4633602 (= e!2890535 (and tp_is_empty!29453 tp_is_empty!29455 tp!1342430))))

(declare-fun b!4633603 () Bool)

(declare-fun e!2890538 () Bool)

(declare-fun lt!1795056 () ListMap!4349)

(assert (=> b!4633603 (= e!2890538 (= lt!1795056 (ListMap!4350 Nil!51632)))))

(declare-fun b!4633604 () Bool)

(declare-fun e!2890525 () Bool)

(assert (=> b!4633604 (= e!2890534 e!2890525)))

(declare-fun res!1944567 () Bool)

(assert (=> b!4633604 (=> res!1944567 e!2890525)))

(declare-fun lt!1795050 () ListMap!4349)

(declare-fun lt!1795051 () ListMap!4349)

(assert (=> b!4633604 (= res!1944567 (not (eq!855 lt!1795050 (+!1906 lt!1795051 lt!1795039))))))

(assert (=> b!4633604 (= lt!1795051 (extractMap!1596 (Cons!51633 (tuple2!52609 hash!414 lt!1795055) Nil!51633)))))

(assert (=> b!4633604 (= lt!1795050 (extractMap!1596 (Cons!51633 (tuple2!52609 hash!414 newBucket!224) Nil!51633)))))

(declare-fun b!4633605 () Bool)

(declare-fun e!2890526 () Bool)

(assert (=> b!4633605 (= e!2890525 e!2890526)))

(declare-fun res!1944574 () Bool)

(assert (=> b!4633605 (=> res!1944574 e!2890526)))

(declare-fun lt!1795044 () ListMap!4349)

(declare-fun lt!1795064 () ListMap!4349)

(assert (=> b!4633605 (= res!1944574 (not (= lt!1795044 lt!1795064)))))

(declare-fun lt!1795038 () ListMap!4349)

(assert (=> b!4633605 (= lt!1795064 (+!1906 lt!1795038 (h!57712 oldBucket!40)))))

(declare-fun lt!1795045 () ListMap!4349)

(declare-fun -!580 (ListMap!4349 K!13000) ListMap!4349)

(assert (=> b!4633605 (= lt!1795044 (-!580 lt!1795045 key!4968))))

(assert (=> b!4633605 (= lt!1795045 (+!1906 lt!1795059 (h!57712 oldBucket!40)))))

(declare-fun lt!1795057 () ListMap!4349)

(declare-fun lt!1795041 () ListMap!4349)

(assert (=> b!4633605 (= lt!1795057 lt!1795041)))

(assert (=> b!4633605 (= lt!1795041 (+!1906 lt!1795038 (h!57712 oldBucket!40)))))

(assert (=> b!4633605 (= lt!1795057 (-!580 (+!1906 lt!1795059 (h!57712 oldBucket!40)) key!4968))))

(declare-fun lt!1795048 () Unit!113879)

(declare-fun addRemoveCommutativeForDiffKeys!35 (ListMap!4349 K!13000 V!13246 K!13000) Unit!113879)

(assert (=> b!4633605 (= lt!1795048 (addRemoveCommutativeForDiffKeys!35 lt!1795059 (_1!29597 (h!57712 oldBucket!40)) (_2!29597 (h!57712 oldBucket!40)) key!4968))))

(assert (=> b!4633605 (eq!855 lt!1795051 lt!1795038)))

(assert (=> b!4633605 (= lt!1795038 (-!580 lt!1795059 key!4968))))

(declare-fun lt!1795040 () Unit!113879)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!142 ((_ BitVec 64) List!51756 List!51756 K!13000 Hashable!5937) Unit!113879)

(assert (=> b!4633605 (= lt!1795040 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!142 hash!414 (t!358818 oldBucket!40) lt!1795055 key!4968 hashF!1389))))

(declare-fun b!4633606 () Bool)

(assert (=> b!4633606 (= e!2890532 e!2890531)))

(declare-fun res!1944571 () Bool)

(assert (=> b!4633606 (=> res!1944571 e!2890531)))

(assert (=> b!4633606 (= res!1944571 (not (eq!855 lt!1795050 lt!1795064)))))

(assert (=> b!4633606 (eq!855 lt!1795041 (+!1906 lt!1795051 (h!57712 oldBucket!40)))))

(declare-fun lt!1795058 () Unit!113879)

(declare-fun lemmaAddToEqMapsPreservesEq!52 (ListMap!4349 ListMap!4349 K!13000 V!13246) Unit!113879)

(assert (=> b!4633606 (= lt!1795058 (lemmaAddToEqMapsPreservesEq!52 lt!1795038 lt!1795051 (_1!29597 (h!57712 oldBucket!40)) (_2!29597 (h!57712 oldBucket!40))))))

(declare-fun b!4633607 () Bool)

(declare-fun tp!1342431 () Bool)

(declare-fun e!2890536 () Bool)

(assert (=> b!4633607 (= e!2890536 (and tp_is_empty!29453 tp_is_empty!29455 tp!1342431))))

(declare-fun b!4633596 () Bool)

(assert (=> b!4633596 (= e!2890526 e!2890532)))

(declare-fun res!1944566 () Bool)

(assert (=> b!4633596 (=> res!1944566 e!2890532)))

(declare-fun lt!1795062 () ListMap!4349)

(assert (=> b!4633596 (= res!1944566 (not (eq!855 lt!1795062 lt!1795064)))))

(assert (=> b!4633596 (eq!855 lt!1795044 lt!1795062)))

(assert (=> b!4633596 (= lt!1795062 (-!580 lt!1795046 key!4968))))

(declare-fun lt!1795054 () Unit!113879)

(declare-fun lemmaRemovePreservesEq!36 (ListMap!4349 ListMap!4349 K!13000) Unit!113879)

(assert (=> b!4633596 (= lt!1795054 (lemmaRemovePreservesEq!36 lt!1795045 lt!1795046 key!4968))))

(declare-fun res!1944557 () Bool)

(assert (=> start!465316 (=> (not res!1944557) (not e!2890528))))

(assert (=> start!465316 (= res!1944557 (noDuplicateKeys!1540 oldBucket!40))))

(assert (=> start!465316 e!2890528))

(assert (=> start!465316 true))

(assert (=> start!465316 e!2890535))

(assert (=> start!465316 tp_is_empty!29453))

(assert (=> start!465316 e!2890536))

(declare-fun b!4633608 () Bool)

(assert (=> b!4633608 (= e!2890533 (not e!2890537))))

(declare-fun res!1944556 () Bool)

(assert (=> b!4633608 (=> res!1944556 e!2890537)))

(get-info :version)

(assert (=> b!4633608 (= res!1944556 (or (and ((_ is Cons!51632) oldBucket!40) (= (_1!29597 (h!57712 oldBucket!40)) key!4968)) (not ((_ is Cons!51632) oldBucket!40)) (= (_1!29597 (h!57712 oldBucket!40)) key!4968)))))

(assert (=> b!4633608 e!2890538))

(declare-fun res!1944570 () Bool)

(assert (=> b!4633608 (=> (not res!1944570) (not e!2890538))))

(assert (=> b!4633608 (= res!1944570 (= lt!1795046 (addToMapMapFromBucket!1001 oldBucket!40 lt!1795056)))))

(assert (=> b!4633608 (= lt!1795056 (extractMap!1596 Nil!51633))))

(assert (=> b!4633608 true))

(declare-fun b!4633609 () Bool)

(declare-fun res!1944562 () Bool)

(assert (=> b!4633609 (=> res!1944562 e!2890532)))

(assert (=> b!4633609 (= res!1944562 (not (eq!855 lt!1795050 (+!1906 lt!1795051 (h!57712 oldBucket!40)))))))

(declare-fun b!4633610 () Bool)

(declare-fun res!1944573 () Bool)

(assert (=> b!4633610 (=> (not res!1944573) (not e!2890528))))

(assert (=> b!4633610 (= res!1944573 (= (removePairForKey!1163 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4633611 () Bool)

(assert (=> b!4633611 (= e!2890529 e!2890533)))

(declare-fun res!1944568 () Bool)

(assert (=> b!4633611 (=> (not res!1944568) (not e!2890533))))

(assert (=> b!4633611 (= res!1944568 (= lt!1795037 hash!414))))

(declare-fun hash!3592 (Hashable!5937 K!13000) (_ BitVec 64))

(assert (=> b!4633611 (= lt!1795037 (hash!3592 hashF!1389 key!4968))))

(declare-fun b!4633612 () Bool)

(declare-fun res!1944559 () Bool)

(assert (=> b!4633612 (=> (not res!1944559) (not e!2890528))))

(assert (=> b!4633612 (= res!1944559 (allKeysSameHash!1394 oldBucket!40 hash!414 hashF!1389))))

(assert (= (and start!465316 res!1944557) b!4633599))

(assert (= (and b!4633599 res!1944558) b!4633610))

(assert (= (and b!4633610 res!1944573) b!4633612))

(assert (= (and b!4633612 res!1944559) b!4633595))

(assert (= (and b!4633595 res!1944564) b!4633611))

(assert (= (and b!4633611 res!1944568) b!4633597))

(assert (= (and b!4633597 res!1944565) b!4633608))

(assert (= (and b!4633608 res!1944570) b!4633603))

(assert (= (and b!4633608 (not res!1944556)) b!4633593))

(assert (= (and b!4633593 (not res!1944561)) b!4633592))

(assert (= (and b!4633592 (not res!1944563)) b!4633598))

(assert (= (and b!4633598 (not res!1944560)) b!4633594))

(assert (= (and b!4633594 (not res!1944572)) b!4633604))

(assert (= (and b!4633604 (not res!1944567)) b!4633605))

(assert (= (and b!4633605 (not res!1944574)) b!4633596))

(assert (= (and b!4633596 (not res!1944566)) b!4633600))

(assert (= (and b!4633600 (not res!1944569)) b!4633609))

(assert (= (and b!4633609 (not res!1944562)) b!4633606))

(assert (= (and b!4633606 (not res!1944571)) b!4633601))

(assert (= (and start!465316 ((_ is Cons!51632) oldBucket!40)) b!4633602))

(assert (= (and start!465316 ((_ is Cons!51632) newBucket!224)) b!4633607))

(declare-fun m!5486655 () Bool)

(assert (=> b!4633597 m!5486655))

(declare-fun m!5486657 () Bool)

(assert (=> b!4633595 m!5486657))

(declare-fun m!5486659 () Bool)

(assert (=> b!4633595 m!5486659))

(declare-fun m!5486661 () Bool)

(assert (=> b!4633608 m!5486661))

(declare-fun m!5486663 () Bool)

(assert (=> b!4633608 m!5486663))

(declare-fun m!5486665 () Bool)

(assert (=> b!4633599 m!5486665))

(declare-fun m!5486667 () Bool)

(assert (=> b!4633601 m!5486667))

(declare-fun m!5486669 () Bool)

(assert (=> b!4633592 m!5486669))

(declare-fun m!5486671 () Bool)

(assert (=> b!4633592 m!5486671))

(declare-fun m!5486673 () Bool)

(assert (=> b!4633592 m!5486673))

(declare-fun m!5486675 () Bool)

(assert (=> b!4633606 m!5486675))

(declare-fun m!5486677 () Bool)

(assert (=> b!4633606 m!5486677))

(assert (=> b!4633606 m!5486677))

(declare-fun m!5486679 () Bool)

(assert (=> b!4633606 m!5486679))

(declare-fun m!5486681 () Bool)

(assert (=> b!4633606 m!5486681))

(declare-fun m!5486683 () Bool)

(assert (=> start!465316 m!5486683))

(declare-fun m!5486685 () Bool)

(assert (=> b!4633596 m!5486685))

(declare-fun m!5486687 () Bool)

(assert (=> b!4633596 m!5486687))

(declare-fun m!5486689 () Bool)

(assert (=> b!4633596 m!5486689))

(declare-fun m!5486691 () Bool)

(assert (=> b!4633596 m!5486691))

(declare-fun m!5486693 () Bool)

(assert (=> b!4633593 m!5486693))

(declare-fun m!5486695 () Bool)

(assert (=> b!4633593 m!5486695))

(declare-fun m!5486697 () Bool)

(assert (=> b!4633593 m!5486697))

(declare-fun m!5486699 () Bool)

(assert (=> b!4633593 m!5486699))

(declare-fun m!5486701 () Bool)

(assert (=> b!4633593 m!5486701))

(declare-fun m!5486703 () Bool)

(assert (=> b!4633593 m!5486703))

(assert (=> b!4633593 m!5486697))

(declare-fun m!5486705 () Bool)

(assert (=> b!4633593 m!5486705))

(declare-fun m!5486707 () Bool)

(assert (=> b!4633593 m!5486707))

(declare-fun m!5486709 () Bool)

(assert (=> b!4633593 m!5486709))

(declare-fun m!5486711 () Bool)

(assert (=> b!4633593 m!5486711))

(declare-fun m!5486713 () Bool)

(assert (=> b!4633593 m!5486713))

(declare-fun m!5486715 () Bool)

(assert (=> b!4633593 m!5486715))

(declare-fun m!5486717 () Bool)

(assert (=> b!4633604 m!5486717))

(assert (=> b!4633604 m!5486717))

(declare-fun m!5486719 () Bool)

(assert (=> b!4633604 m!5486719))

(declare-fun m!5486721 () Bool)

(assert (=> b!4633604 m!5486721))

(declare-fun m!5486723 () Bool)

(assert (=> b!4633604 m!5486723))

(declare-fun m!5486725 () Bool)

(assert (=> b!4633598 m!5486725))

(declare-fun m!5486727 () Bool)

(assert (=> b!4633611 m!5486727))

(declare-fun m!5486729 () Bool)

(assert (=> b!4633610 m!5486729))

(declare-fun m!5486731 () Bool)

(assert (=> b!4633594 m!5486731))

(declare-fun m!5486733 () Bool)

(assert (=> b!4633594 m!5486733))

(declare-fun m!5486735 () Bool)

(assert (=> b!4633594 m!5486735))

(declare-fun m!5486737 () Bool)

(assert (=> b!4633594 m!5486737))

(declare-fun m!5486739 () Bool)

(assert (=> b!4633594 m!5486739))

(declare-fun m!5486741 () Bool)

(assert (=> b!4633594 m!5486741))

(declare-fun m!5486743 () Bool)

(assert (=> b!4633594 m!5486743))

(declare-fun m!5486745 () Bool)

(assert (=> b!4633594 m!5486745))

(declare-fun m!5486747 () Bool)

(assert (=> b!4633594 m!5486747))

(declare-fun m!5486749 () Bool)

(assert (=> b!4633594 m!5486749))

(declare-fun m!5486751 () Bool)

(assert (=> b!4633594 m!5486751))

(assert (=> b!4633594 m!5486743))

(declare-fun m!5486753 () Bool)

(assert (=> b!4633594 m!5486753))

(assert (=> b!4633594 m!5486745))

(declare-fun m!5486755 () Bool)

(assert (=> b!4633594 m!5486755))

(declare-fun m!5486757 () Bool)

(assert (=> b!4633594 m!5486757))

(assert (=> b!4633594 m!5486747))

(assert (=> b!4633594 m!5486733))

(assert (=> b!4633594 m!5486749))

(assert (=> b!4633594 m!5486753))

(declare-fun m!5486759 () Bool)

(assert (=> b!4633594 m!5486759))

(declare-fun m!5486761 () Bool)

(assert (=> b!4633594 m!5486761))

(assert (=> b!4633594 m!5486739))

(assert (=> b!4633594 m!5486755))

(declare-fun m!5486763 () Bool)

(assert (=> b!4633594 m!5486763))

(declare-fun m!5486765 () Bool)

(assert (=> b!4633594 m!5486765))

(declare-fun m!5486767 () Bool)

(assert (=> b!4633605 m!5486767))

(declare-fun m!5486769 () Bool)

(assert (=> b!4633605 m!5486769))

(declare-fun m!5486771 () Bool)

(assert (=> b!4633605 m!5486771))

(declare-fun m!5486773 () Bool)

(assert (=> b!4633605 m!5486773))

(declare-fun m!5486775 () Bool)

(assert (=> b!4633605 m!5486775))

(declare-fun m!5486777 () Bool)

(assert (=> b!4633605 m!5486777))

(declare-fun m!5486779 () Bool)

(assert (=> b!4633605 m!5486779))

(declare-fun m!5486781 () Bool)

(assert (=> b!4633605 m!5486781))

(assert (=> b!4633605 m!5486775))

(declare-fun m!5486783 () Bool)

(assert (=> b!4633612 m!5486783))

(assert (=> b!4633609 m!5486677))

(assert (=> b!4633609 m!5486677))

(declare-fun m!5486785 () Bool)

(assert (=> b!4633609 m!5486785))

(check-sat (not b!4633595) (not b!4633597) (not b!4633610) (not b!4633607) (not b!4633599) tp_is_empty!29455 (not b!4633602) (not b!4633609) (not b!4633606) (not b!4633601) (not b!4633608) (not b!4633611) (not start!465316) (not b!4633596) (not b!4633598) (not b!4633604) (not b!4633594) (not b!4633592) (not b!4633612) tp_is_empty!29453 (not b!4633605) (not b!4633593))
(check-sat)
(get-model)

(declare-fun b!4633676 () Bool)

(declare-fun e!2890581 () Unit!113879)

(declare-fun lt!1795124 () Unit!113879)

(assert (=> b!4633676 (= e!2890581 lt!1795124)))

(declare-fun lt!1795128 () Unit!113879)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1413 (List!51756 K!13000) Unit!113879)

(assert (=> b!4633676 (= lt!1795128 (lemmaContainsKeyImpliesGetValueByKeyDefined!1413 (toList!5046 lt!1795046) key!4968))))

(declare-datatypes ((Option!11685 0))(
  ( (None!11684) (Some!11684 (v!45874 V!13246)) )
))
(declare-fun isDefined!8950 (Option!11685) Bool)

(declare-fun getValueByKey!1511 (List!51756 K!13000) Option!11685)

(assert (=> b!4633676 (isDefined!8950 (getValueByKey!1511 (toList!5046 lt!1795046) key!4968))))

(declare-fun lt!1795121 () Unit!113879)

(assert (=> b!4633676 (= lt!1795121 lt!1795128)))

(declare-fun lemmaInListThenGetKeysListContains!680 (List!51756 K!13000) Unit!113879)

(assert (=> b!4633676 (= lt!1795124 (lemmaInListThenGetKeysListContains!680 (toList!5046 lt!1795046) key!4968))))

(declare-fun call!323357 () Bool)

(assert (=> b!4633676 call!323357))

(declare-fun b!4633677 () Bool)

(declare-datatypes ((List!51759 0))(
  ( (Nil!51635) (Cons!51635 (h!57717 K!13000) (t!358823 List!51759)) )
))
(declare-fun e!2890582 () List!51759)

(declare-fun getKeysList!685 (List!51756) List!51759)

(assert (=> b!4633677 (= e!2890582 (getKeysList!685 (toList!5046 lt!1795046)))))

(declare-fun b!4633679 () Bool)

(declare-fun e!2890585 () Bool)

(declare-fun contains!14744 (List!51759 K!13000) Bool)

(declare-fun keys!18218 (ListMap!4349) List!51759)

(assert (=> b!4633679 (= e!2890585 (not (contains!14744 (keys!18218 lt!1795046) key!4968)))))

(declare-fun b!4633680 () Bool)

(declare-fun e!2890586 () Unit!113879)

(declare-fun Unit!113884 () Unit!113879)

(assert (=> b!4633680 (= e!2890586 Unit!113884)))

(declare-fun b!4633681 () Bool)

(declare-fun e!2890584 () Bool)

(assert (=> b!4633681 (= e!2890584 (contains!14744 (keys!18218 lt!1795046) key!4968))))

(declare-fun b!4633682 () Bool)

(assert (=> b!4633682 (= e!2890581 e!2890586)))

(declare-fun c!793102 () Bool)

(assert (=> b!4633682 (= c!793102 call!323357)))

(declare-fun b!4633683 () Bool)

(declare-fun e!2890583 () Bool)

(assert (=> b!4633683 (= e!2890583 e!2890584)))

(declare-fun res!1944604 () Bool)

(assert (=> b!4633683 (=> (not res!1944604) (not e!2890584))))

(assert (=> b!4633683 (= res!1944604 (isDefined!8950 (getValueByKey!1511 (toList!5046 lt!1795046) key!4968)))))

(declare-fun d!1460594 () Bool)

(assert (=> d!1460594 e!2890583))

(declare-fun res!1944602 () Bool)

(assert (=> d!1460594 (=> res!1944602 e!2890583)))

(assert (=> d!1460594 (= res!1944602 e!2890585)))

(declare-fun res!1944603 () Bool)

(assert (=> d!1460594 (=> (not res!1944603) (not e!2890585))))

(declare-fun lt!1795122 () Bool)

(assert (=> d!1460594 (= res!1944603 (not lt!1795122))))

(declare-fun lt!1795125 () Bool)

(assert (=> d!1460594 (= lt!1795122 lt!1795125)))

(declare-fun lt!1795126 () Unit!113879)

(assert (=> d!1460594 (= lt!1795126 e!2890581)))

(declare-fun c!793101 () Bool)

(assert (=> d!1460594 (= c!793101 lt!1795125)))

(declare-fun containsKey!2543 (List!51756 K!13000) Bool)

(assert (=> d!1460594 (= lt!1795125 (containsKey!2543 (toList!5046 lt!1795046) key!4968))))

(assert (=> d!1460594 (= (contains!14741 lt!1795046 key!4968) lt!1795122)))

(declare-fun b!4633678 () Bool)

(assert (=> b!4633678 false))

(declare-fun lt!1795127 () Unit!113879)

(declare-fun lt!1795123 () Unit!113879)

(assert (=> b!4633678 (= lt!1795127 lt!1795123)))

(assert (=> b!4633678 (containsKey!2543 (toList!5046 lt!1795046) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!684 (List!51756 K!13000) Unit!113879)

(assert (=> b!4633678 (= lt!1795123 (lemmaInGetKeysListThenContainsKey!684 (toList!5046 lt!1795046) key!4968))))

(declare-fun Unit!113885 () Unit!113879)

(assert (=> b!4633678 (= e!2890586 Unit!113885)))

(declare-fun bm!323352 () Bool)

(assert (=> bm!323352 (= call!323357 (contains!14744 e!2890582 key!4968))))

(declare-fun c!793103 () Bool)

(assert (=> bm!323352 (= c!793103 c!793101)))

(declare-fun b!4633684 () Bool)

(assert (=> b!4633684 (= e!2890582 (keys!18218 lt!1795046))))

(assert (= (and d!1460594 c!793101) b!4633676))

(assert (= (and d!1460594 (not c!793101)) b!4633682))

(assert (= (and b!4633682 c!793102) b!4633678))

(assert (= (and b!4633682 (not c!793102)) b!4633680))

(assert (= (or b!4633676 b!4633682) bm!323352))

(assert (= (and bm!323352 c!793103) b!4633677))

(assert (= (and bm!323352 (not c!793103)) b!4633684))

(assert (= (and d!1460594 res!1944603) b!4633679))

(assert (= (and d!1460594 (not res!1944602)) b!4633683))

(assert (= (and b!4633683 res!1944604) b!4633681))

(declare-fun m!5486841 () Bool)

(assert (=> bm!323352 m!5486841))

(declare-fun m!5486843 () Bool)

(assert (=> b!4633678 m!5486843))

(declare-fun m!5486845 () Bool)

(assert (=> b!4633678 m!5486845))

(declare-fun m!5486847 () Bool)

(assert (=> b!4633684 m!5486847))

(declare-fun m!5486849 () Bool)

(assert (=> b!4633677 m!5486849))

(assert (=> b!4633679 m!5486847))

(assert (=> b!4633679 m!5486847))

(declare-fun m!5486851 () Bool)

(assert (=> b!4633679 m!5486851))

(declare-fun m!5486853 () Bool)

(assert (=> b!4633676 m!5486853))

(declare-fun m!5486855 () Bool)

(assert (=> b!4633676 m!5486855))

(assert (=> b!4633676 m!5486855))

(declare-fun m!5486857 () Bool)

(assert (=> b!4633676 m!5486857))

(declare-fun m!5486859 () Bool)

(assert (=> b!4633676 m!5486859))

(assert (=> b!4633683 m!5486855))

(assert (=> b!4633683 m!5486855))

(assert (=> b!4633683 m!5486857))

(assert (=> d!1460594 m!5486843))

(assert (=> b!4633681 m!5486847))

(assert (=> b!4633681 m!5486847))

(assert (=> b!4633681 m!5486851))

(assert (=> b!4633595 d!1460594))

(declare-fun bs!1029264 () Bool)

(declare-fun d!1460612 () Bool)

(assert (= bs!1029264 (and d!1460612 b!4633593)))

(declare-fun lambda!194328 () Int)

(assert (=> bs!1029264 (= lambda!194328 lambda!194322)))

(declare-fun lt!1795149 () ListMap!4349)

(declare-fun invariantList!1234 (List!51756) Bool)

(assert (=> d!1460612 (invariantList!1234 (toList!5046 lt!1795149))))

(declare-fun e!2890619 () ListMap!4349)

(assert (=> d!1460612 (= lt!1795149 e!2890619)))

(declare-fun c!793118 () Bool)

(assert (=> d!1460612 (= c!793118 ((_ is Cons!51633) lt!1795043))))

(assert (=> d!1460612 (forall!10882 lt!1795043 lambda!194328)))

(assert (=> d!1460612 (= (extractMap!1596 lt!1795043) lt!1795149)))

(declare-fun b!4633735 () Bool)

(assert (=> b!4633735 (= e!2890619 (addToMapMapFromBucket!1001 (_2!29598 (h!57713 lt!1795043)) (extractMap!1596 (t!358819 lt!1795043))))))

(declare-fun b!4633736 () Bool)

(assert (=> b!4633736 (= e!2890619 (ListMap!4350 Nil!51632))))

(assert (= (and d!1460612 c!793118) b!4633735))

(assert (= (and d!1460612 (not c!793118)) b!4633736))

(declare-fun m!5486909 () Bool)

(assert (=> d!1460612 m!5486909))

(declare-fun m!5486911 () Bool)

(assert (=> d!1460612 m!5486911))

(declare-fun m!5486913 () Bool)

(assert (=> b!4633735 m!5486913))

(assert (=> b!4633735 m!5486913))

(declare-fun m!5486915 () Bool)

(assert (=> b!4633735 m!5486915))

(assert (=> b!4633595 d!1460612))

(declare-fun bs!1029266 () Bool)

(declare-fun d!1460634 () Bool)

(assert (= bs!1029266 (and d!1460634 b!4633593)))

(declare-fun lambda!194329 () Int)

(assert (=> bs!1029266 (= lambda!194329 lambda!194322)))

(declare-fun bs!1029267 () Bool)

(assert (= bs!1029267 (and d!1460634 d!1460612)))

(assert (=> bs!1029267 (= lambda!194329 lambda!194328)))

(declare-fun lt!1795150 () ListMap!4349)

(assert (=> d!1460634 (invariantList!1234 (toList!5046 lt!1795150))))

(declare-fun e!2890620 () ListMap!4349)

(assert (=> d!1460634 (= lt!1795150 e!2890620)))

(declare-fun c!793119 () Bool)

(assert (=> d!1460634 (= c!793119 ((_ is Cons!51633) lt!1795065))))

(assert (=> d!1460634 (forall!10882 lt!1795065 lambda!194329)))

(assert (=> d!1460634 (= (extractMap!1596 lt!1795065) lt!1795150)))

(declare-fun b!4633737 () Bool)

(assert (=> b!4633737 (= e!2890620 (addToMapMapFromBucket!1001 (_2!29598 (h!57713 lt!1795065)) (extractMap!1596 (t!358819 lt!1795065))))))

(declare-fun b!4633738 () Bool)

(assert (=> b!4633738 (= e!2890620 (ListMap!4350 Nil!51632))))

(assert (= (and d!1460634 c!793119) b!4633737))

(assert (= (and d!1460634 (not c!793119)) b!4633738))

(declare-fun m!5486917 () Bool)

(assert (=> d!1460634 m!5486917))

(declare-fun m!5486919 () Bool)

(assert (=> d!1460634 m!5486919))

(declare-fun m!5486921 () Bool)

(assert (=> b!4633737 m!5486921))

(assert (=> b!4633737 m!5486921))

(declare-fun m!5486923 () Bool)

(assert (=> b!4633737 m!5486923))

(assert (=> b!4633594 d!1460634))

(declare-fun bs!1029268 () Bool)

(declare-fun d!1460636 () Bool)

(assert (= bs!1029268 (and d!1460636 b!4633593)))

(declare-fun lambda!194330 () Int)

(assert (=> bs!1029268 (= lambda!194330 lambda!194322)))

(declare-fun bs!1029269 () Bool)

(assert (= bs!1029269 (and d!1460636 d!1460612)))

(assert (=> bs!1029269 (= lambda!194330 lambda!194328)))

(declare-fun bs!1029270 () Bool)

(assert (= bs!1029270 (and d!1460636 d!1460634)))

(assert (=> bs!1029270 (= lambda!194330 lambda!194329)))

(declare-fun lt!1795154 () ListMap!4349)

(assert (=> d!1460636 (invariantList!1234 (toList!5046 lt!1795154))))

(declare-fun e!2890627 () ListMap!4349)

(assert (=> d!1460636 (= lt!1795154 e!2890627)))

(declare-fun c!793120 () Bool)

(assert (=> d!1460636 (= c!793120 ((_ is Cons!51633) (Cons!51633 (tuple2!52609 hash!414 lt!1795053) Nil!51633)))))

(assert (=> d!1460636 (forall!10882 (Cons!51633 (tuple2!52609 hash!414 lt!1795053) Nil!51633) lambda!194330)))

(assert (=> d!1460636 (= (extractMap!1596 (Cons!51633 (tuple2!52609 hash!414 lt!1795053) Nil!51633)) lt!1795154)))

(declare-fun b!4633745 () Bool)

(assert (=> b!4633745 (= e!2890627 (addToMapMapFromBucket!1001 (_2!29598 (h!57713 (Cons!51633 (tuple2!52609 hash!414 lt!1795053) Nil!51633))) (extractMap!1596 (t!358819 (Cons!51633 (tuple2!52609 hash!414 lt!1795053) Nil!51633)))))))

(declare-fun b!4633746 () Bool)

(assert (=> b!4633746 (= e!2890627 (ListMap!4350 Nil!51632))))

(assert (= (and d!1460636 c!793120) b!4633745))

(assert (= (and d!1460636 (not c!793120)) b!4633746))

(declare-fun m!5486931 () Bool)

(assert (=> d!1460636 m!5486931))

(declare-fun m!5486933 () Bool)

(assert (=> d!1460636 m!5486933))

(declare-fun m!5486935 () Bool)

(assert (=> b!4633745 m!5486935))

(assert (=> b!4633745 m!5486935))

(declare-fun m!5486937 () Bool)

(assert (=> b!4633745 m!5486937))

(assert (=> b!4633594 d!1460636))

(declare-fun d!1460640 () Bool)

(declare-fun e!2890630 () Bool)

(assert (=> d!1460640 e!2890630))

(declare-fun res!1944637 () Bool)

(assert (=> d!1460640 (=> (not res!1944637) (not e!2890630))))

(declare-fun lt!1795165 () ListMap!4349)

(assert (=> d!1460640 (= res!1944637 (contains!14741 lt!1795165 (_1!29597 lt!1795039)))))

(declare-fun lt!1795166 () List!51756)

(assert (=> d!1460640 (= lt!1795165 (ListMap!4350 lt!1795166))))

(declare-fun lt!1795163 () Unit!113879)

(declare-fun lt!1795164 () Unit!113879)

(assert (=> d!1460640 (= lt!1795163 lt!1795164)))

(assert (=> d!1460640 (= (getValueByKey!1511 lt!1795166 (_1!29597 lt!1795039)) (Some!11684 (_2!29597 lt!1795039)))))

(declare-fun lemmaContainsTupThenGetReturnValue!878 (List!51756 K!13000 V!13246) Unit!113879)

(assert (=> d!1460640 (= lt!1795164 (lemmaContainsTupThenGetReturnValue!878 lt!1795166 (_1!29597 lt!1795039) (_2!29597 lt!1795039)))))

(declare-fun insertNoDuplicatedKeys!386 (List!51756 K!13000 V!13246) List!51756)

(assert (=> d!1460640 (= lt!1795166 (insertNoDuplicatedKeys!386 (toList!5046 (addToMapMapFromBucket!1001 lt!1795055 (ListMap!4350 Nil!51632))) (_1!29597 lt!1795039) (_2!29597 lt!1795039)))))

(assert (=> d!1460640 (= (+!1906 (addToMapMapFromBucket!1001 lt!1795055 (ListMap!4350 Nil!51632)) lt!1795039) lt!1795165)))

(declare-fun b!4633751 () Bool)

(declare-fun res!1944636 () Bool)

(assert (=> b!4633751 (=> (not res!1944636) (not e!2890630))))

(assert (=> b!4633751 (= res!1944636 (= (getValueByKey!1511 (toList!5046 lt!1795165) (_1!29597 lt!1795039)) (Some!11684 (_2!29597 lt!1795039))))))

(declare-fun b!4633752 () Bool)

(declare-fun contains!14745 (List!51756 tuple2!52606) Bool)

(assert (=> b!4633752 (= e!2890630 (contains!14745 (toList!5046 lt!1795165) lt!1795039))))

(assert (= (and d!1460640 res!1944637) b!4633751))

(assert (= (and b!4633751 res!1944636) b!4633752))

(declare-fun m!5486939 () Bool)

(assert (=> d!1460640 m!5486939))

(declare-fun m!5486941 () Bool)

(assert (=> d!1460640 m!5486941))

(declare-fun m!5486943 () Bool)

(assert (=> d!1460640 m!5486943))

(declare-fun m!5486945 () Bool)

(assert (=> d!1460640 m!5486945))

(declare-fun m!5486947 () Bool)

(assert (=> b!4633751 m!5486947))

(declare-fun m!5486949 () Bool)

(assert (=> b!4633752 m!5486949))

(assert (=> b!4633594 d!1460640))

(declare-fun bs!1029274 () Bool)

(declare-fun d!1460642 () Bool)

(assert (= bs!1029274 (and d!1460642 b!4633593)))

(declare-fun lambda!194342 () Int)

(assert (=> bs!1029274 (= lambda!194342 lambda!194322)))

(declare-fun bs!1029275 () Bool)

(assert (= bs!1029275 (and d!1460642 d!1460612)))

(assert (=> bs!1029275 (= lambda!194342 lambda!194328)))

(declare-fun bs!1029276 () Bool)

(assert (= bs!1029276 (and d!1460642 d!1460634)))

(assert (=> bs!1029276 (= lambda!194342 lambda!194329)))

(declare-fun bs!1029277 () Bool)

(assert (= bs!1029277 (and d!1460642 d!1460636)))

(assert (=> bs!1029277 (= lambda!194342 lambda!194330)))

(assert (=> d!1460642 (contains!14741 (extractMap!1596 (toList!5045 (ListLongMap!3636 lt!1795065))) key!4968)))

(declare-fun lt!1795205 () Unit!113879)

(declare-fun choose!31598 (ListLongMap!3635 K!13000 Hashable!5937) Unit!113879)

(assert (=> d!1460642 (= lt!1795205 (choose!31598 (ListLongMap!3636 lt!1795065) key!4968 hashF!1389))))

(assert (=> d!1460642 (forall!10882 (toList!5045 (ListLongMap!3636 lt!1795065)) lambda!194342)))

(assert (=> d!1460642 (= (lemmaListContainsThenExtractedMapContains!358 (ListLongMap!3636 lt!1795065) key!4968 hashF!1389) lt!1795205)))

(declare-fun bs!1029280 () Bool)

(assert (= bs!1029280 d!1460642))

(declare-fun m!5486989 () Bool)

(assert (=> bs!1029280 m!5486989))

(assert (=> bs!1029280 m!5486989))

(declare-fun m!5486991 () Bool)

(assert (=> bs!1029280 m!5486991))

(declare-fun m!5486993 () Bool)

(assert (=> bs!1029280 m!5486993))

(declare-fun m!5486995 () Bool)

(assert (=> bs!1029280 m!5486995))

(assert (=> b!4633594 d!1460642))

(declare-fun d!1460654 () Bool)

(declare-fun e!2890651 () Bool)

(assert (=> d!1460654 e!2890651))

(declare-fun res!1944662 () Bool)

(assert (=> d!1460654 (=> (not res!1944662) (not e!2890651))))

(declare-fun lt!1795211 () ListMap!4349)

(assert (=> d!1460654 (= res!1944662 (contains!14741 lt!1795211 (_1!29597 (h!57712 oldBucket!40))))))

(declare-fun lt!1795212 () List!51756)

(assert (=> d!1460654 (= lt!1795211 (ListMap!4350 lt!1795212))))

(declare-fun lt!1795209 () Unit!113879)

(declare-fun lt!1795210 () Unit!113879)

(assert (=> d!1460654 (= lt!1795209 lt!1795210)))

(assert (=> d!1460654 (= (getValueByKey!1511 lt!1795212 (_1!29597 (h!57712 oldBucket!40))) (Some!11684 (_2!29597 (h!57712 oldBucket!40))))))

(assert (=> d!1460654 (= lt!1795210 (lemmaContainsTupThenGetReturnValue!878 lt!1795212 (_1!29597 (h!57712 oldBucket!40)) (_2!29597 (h!57712 oldBucket!40))))))

(assert (=> d!1460654 (= lt!1795212 (insertNoDuplicatedKeys!386 (toList!5046 (extractMap!1596 (Cons!51633 (tuple2!52609 hash!414 lt!1795053) Nil!51633))) (_1!29597 (h!57712 oldBucket!40)) (_2!29597 (h!57712 oldBucket!40))))))

(assert (=> d!1460654 (= (+!1906 (extractMap!1596 (Cons!51633 (tuple2!52609 hash!414 lt!1795053) Nil!51633)) (h!57712 oldBucket!40)) lt!1795211)))

(declare-fun b!4633782 () Bool)

(declare-fun res!1944661 () Bool)

(assert (=> b!4633782 (=> (not res!1944661) (not e!2890651))))

(assert (=> b!4633782 (= res!1944661 (= (getValueByKey!1511 (toList!5046 lt!1795211) (_1!29597 (h!57712 oldBucket!40))) (Some!11684 (_2!29597 (h!57712 oldBucket!40)))))))

(declare-fun b!4633783 () Bool)

(assert (=> b!4633783 (= e!2890651 (contains!14745 (toList!5046 lt!1795211) (h!57712 oldBucket!40)))))

(assert (= (and d!1460654 res!1944662) b!4633782))

(assert (= (and b!4633782 res!1944661) b!4633783))

(declare-fun m!5487005 () Bool)

(assert (=> d!1460654 m!5487005))

(declare-fun m!5487007 () Bool)

(assert (=> d!1460654 m!5487007))

(declare-fun m!5487009 () Bool)

(assert (=> d!1460654 m!5487009))

(declare-fun m!5487011 () Bool)

(assert (=> d!1460654 m!5487011))

(declare-fun m!5487013 () Bool)

(assert (=> b!4633782 m!5487013))

(declare-fun m!5487015 () Bool)

(assert (=> b!4633783 m!5487015))

(assert (=> b!4633594 d!1460654))

(declare-fun b!4633820 () Bool)

(assert (=> b!4633820 true))

(declare-fun bs!1029290 () Bool)

(declare-fun b!4633819 () Bool)

(assert (= bs!1029290 (and b!4633819 b!4633820)))

(declare-fun lambda!194394 () Int)

(declare-fun lambda!194391 () Int)

(assert (=> bs!1029290 (= lambda!194394 lambda!194391)))

(assert (=> b!4633819 true))

(declare-fun lt!1795331 () ListMap!4349)

(declare-fun lambda!194395 () Int)

(assert (=> bs!1029290 (= (= lt!1795331 (ListMap!4350 Nil!51632)) (= lambda!194395 lambda!194391))))

(assert (=> b!4633819 (= (= lt!1795331 (ListMap!4350 Nil!51632)) (= lambda!194395 lambda!194394))))

(assert (=> b!4633819 true))

(declare-fun bs!1029291 () Bool)

(declare-fun d!1460662 () Bool)

(assert (= bs!1029291 (and d!1460662 b!4633820)))

(declare-fun lt!1795327 () ListMap!4349)

(declare-fun lambda!194400 () Int)

(assert (=> bs!1029291 (= (= lt!1795327 (ListMap!4350 Nil!51632)) (= lambda!194400 lambda!194391))))

(declare-fun bs!1029292 () Bool)

(assert (= bs!1029292 (and d!1460662 b!4633819)))

(assert (=> bs!1029292 (= (= lt!1795327 (ListMap!4350 Nil!51632)) (= lambda!194400 lambda!194394))))

(assert (=> bs!1029292 (= (= lt!1795327 lt!1795331) (= lambda!194400 lambda!194395))))

(assert (=> d!1460662 true))

(declare-fun b!4633816 () Bool)

(declare-fun e!2890672 () Bool)

(declare-fun forall!10884 (List!51756 Int) Bool)

(assert (=> b!4633816 (= e!2890672 (forall!10884 (toList!5046 (ListMap!4350 Nil!51632)) lambda!194395))))

(declare-fun b!4633817 () Bool)

(declare-fun e!2890670 () Bool)

(assert (=> b!4633817 (= e!2890670 (invariantList!1234 (toList!5046 lt!1795327)))))

(declare-fun bm!323359 () Bool)

(declare-fun c!793130 () Bool)

(declare-fun call!323365 () Bool)

(assert (=> bm!323359 (= call!323365 (forall!10884 (ite c!793130 (toList!5046 (ListMap!4350 Nil!51632)) (t!358818 lt!1795055)) (ite c!793130 lambda!194391 lambda!194395)))))

(declare-fun bm!323360 () Bool)

(declare-fun call!323364 () Bool)

(assert (=> bm!323360 (= call!323364 (forall!10884 (ite c!793130 (toList!5046 (ListMap!4350 Nil!51632)) lt!1795055) (ite c!793130 lambda!194391 lambda!194395)))))

(declare-fun b!4633818 () Bool)

(declare-fun res!1944679 () Bool)

(assert (=> b!4633818 (=> (not res!1944679) (not e!2890670))))

(assert (=> b!4633818 (= res!1944679 (forall!10884 (toList!5046 (ListMap!4350 Nil!51632)) lambda!194400))))

(assert (=> d!1460662 e!2890670))

(declare-fun res!1944681 () Bool)

(assert (=> d!1460662 (=> (not res!1944681) (not e!2890670))))

(assert (=> d!1460662 (= res!1944681 (forall!10884 lt!1795055 lambda!194400))))

(declare-fun e!2890671 () ListMap!4349)

(assert (=> d!1460662 (= lt!1795327 e!2890671)))

(assert (=> d!1460662 (= c!793130 ((_ is Nil!51632) lt!1795055))))

(assert (=> d!1460662 (noDuplicateKeys!1540 lt!1795055)))

(assert (=> d!1460662 (= (addToMapMapFromBucket!1001 lt!1795055 (ListMap!4350 Nil!51632)) lt!1795327)))

(assert (=> b!4633819 (= e!2890671 lt!1795331)))

(declare-fun lt!1795314 () ListMap!4349)

(assert (=> b!4633819 (= lt!1795314 (+!1906 (ListMap!4350 Nil!51632) (h!57712 lt!1795055)))))

(assert (=> b!4633819 (= lt!1795331 (addToMapMapFromBucket!1001 (t!358818 lt!1795055) (+!1906 (ListMap!4350 Nil!51632) (h!57712 lt!1795055))))))

(declare-fun lt!1795324 () Unit!113879)

(declare-fun call!323366 () Unit!113879)

(assert (=> b!4633819 (= lt!1795324 call!323366)))

(assert (=> b!4633819 (forall!10884 (toList!5046 (ListMap!4350 Nil!51632)) lambda!194394)))

(declare-fun lt!1795330 () Unit!113879)

(assert (=> b!4633819 (= lt!1795330 lt!1795324)))

(assert (=> b!4633819 (forall!10884 (toList!5046 lt!1795314) lambda!194395)))

(declare-fun lt!1795322 () Unit!113879)

(declare-fun Unit!113897 () Unit!113879)

(assert (=> b!4633819 (= lt!1795322 Unit!113897)))

(assert (=> b!4633819 call!323365))

(declare-fun lt!1795315 () Unit!113879)

(declare-fun Unit!113898 () Unit!113879)

(assert (=> b!4633819 (= lt!1795315 Unit!113898)))

(declare-fun lt!1795311 () Unit!113879)

(declare-fun Unit!113899 () Unit!113879)

(assert (=> b!4633819 (= lt!1795311 Unit!113899)))

(declare-fun lt!1795329 () Unit!113879)

(declare-fun forallContained!3116 (List!51756 Int tuple2!52606) Unit!113879)

(assert (=> b!4633819 (= lt!1795329 (forallContained!3116 (toList!5046 lt!1795314) lambda!194395 (h!57712 lt!1795055)))))

(assert (=> b!4633819 (contains!14741 lt!1795314 (_1!29597 (h!57712 lt!1795055)))))

(declare-fun lt!1795320 () Unit!113879)

(declare-fun Unit!113900 () Unit!113879)

(assert (=> b!4633819 (= lt!1795320 Unit!113900)))

(assert (=> b!4633819 (contains!14741 lt!1795331 (_1!29597 (h!57712 lt!1795055)))))

(declare-fun lt!1795316 () Unit!113879)

(declare-fun Unit!113901 () Unit!113879)

(assert (=> b!4633819 (= lt!1795316 Unit!113901)))

(assert (=> b!4633819 call!323364))

(declare-fun lt!1795313 () Unit!113879)

(declare-fun Unit!113902 () Unit!113879)

(assert (=> b!4633819 (= lt!1795313 Unit!113902)))

(assert (=> b!4633819 (forall!10884 (toList!5046 lt!1795314) lambda!194395)))

(declare-fun lt!1795325 () Unit!113879)

(declare-fun Unit!113903 () Unit!113879)

(assert (=> b!4633819 (= lt!1795325 Unit!113903)))

(declare-fun lt!1795323 () Unit!113879)

(declare-fun Unit!113904 () Unit!113879)

(assert (=> b!4633819 (= lt!1795323 Unit!113904)))

(declare-fun lt!1795321 () Unit!113879)

(declare-fun addForallContainsKeyThenBeforeAdding!535 (ListMap!4349 ListMap!4349 K!13000 V!13246) Unit!113879)

(assert (=> b!4633819 (= lt!1795321 (addForallContainsKeyThenBeforeAdding!535 (ListMap!4350 Nil!51632) lt!1795331 (_1!29597 (h!57712 lt!1795055)) (_2!29597 (h!57712 lt!1795055))))))

(assert (=> b!4633819 (forall!10884 (toList!5046 (ListMap!4350 Nil!51632)) lambda!194395)))

(declare-fun lt!1795312 () Unit!113879)

(assert (=> b!4633819 (= lt!1795312 lt!1795321)))

(assert (=> b!4633819 (forall!10884 (toList!5046 (ListMap!4350 Nil!51632)) lambda!194395)))

(declare-fun lt!1795319 () Unit!113879)

(declare-fun Unit!113905 () Unit!113879)

(assert (=> b!4633819 (= lt!1795319 Unit!113905)))

(declare-fun res!1944680 () Bool)

(assert (=> b!4633819 (= res!1944680 (forall!10884 lt!1795055 lambda!194395))))

(assert (=> b!4633819 (=> (not res!1944680) (not e!2890672))))

(assert (=> b!4633819 e!2890672))

(declare-fun lt!1795326 () Unit!113879)

(declare-fun Unit!113906 () Unit!113879)

(assert (=> b!4633819 (= lt!1795326 Unit!113906)))

(declare-fun bm!323361 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!536 (ListMap!4349) Unit!113879)

(assert (=> bm!323361 (= call!323366 (lemmaContainsAllItsOwnKeys!536 (ListMap!4350 Nil!51632)))))

(assert (=> b!4633820 (= e!2890671 (ListMap!4350 Nil!51632))))

(declare-fun lt!1795328 () Unit!113879)

(assert (=> b!4633820 (= lt!1795328 call!323366)))

(assert (=> b!4633820 call!323365))

(declare-fun lt!1795318 () Unit!113879)

(assert (=> b!4633820 (= lt!1795318 lt!1795328)))

(assert (=> b!4633820 call!323364))

(declare-fun lt!1795317 () Unit!113879)

(declare-fun Unit!113907 () Unit!113879)

(assert (=> b!4633820 (= lt!1795317 Unit!113907)))

(assert (= (and d!1460662 c!793130) b!4633820))

(assert (= (and d!1460662 (not c!793130)) b!4633819))

(assert (= (and b!4633819 res!1944680) b!4633816))

(assert (= (or b!4633820 b!4633819) bm!323361))

(assert (= (or b!4633820 b!4633819) bm!323359))

(assert (= (or b!4633820 b!4633819) bm!323360))

(assert (= (and d!1460662 res!1944681) b!4633818))

(assert (= (and b!4633818 res!1944679) b!4633817))

(declare-fun m!5487121 () Bool)

(assert (=> b!4633818 m!5487121))

(declare-fun m!5487123 () Bool)

(assert (=> bm!323359 m!5487123))

(declare-fun m!5487125 () Bool)

(assert (=> bm!323360 m!5487125))

(declare-fun m!5487127 () Bool)

(assert (=> bm!323361 m!5487127))

(declare-fun m!5487129 () Bool)

(assert (=> d!1460662 m!5487129))

(declare-fun m!5487131 () Bool)

(assert (=> d!1460662 m!5487131))

(declare-fun m!5487133 () Bool)

(assert (=> b!4633819 m!5487133))

(declare-fun m!5487135 () Bool)

(assert (=> b!4633819 m!5487135))

(declare-fun m!5487137 () Bool)

(assert (=> b!4633819 m!5487137))

(declare-fun m!5487139 () Bool)

(assert (=> b!4633819 m!5487139))

(declare-fun m!5487141 () Bool)

(assert (=> b!4633819 m!5487141))

(assert (=> b!4633819 m!5487135))

(declare-fun m!5487143 () Bool)

(assert (=> b!4633819 m!5487143))

(declare-fun m!5487145 () Bool)

(assert (=> b!4633819 m!5487145))

(declare-fun m!5487147 () Bool)

(assert (=> b!4633819 m!5487147))

(declare-fun m!5487149 () Bool)

(assert (=> b!4633819 m!5487149))

(declare-fun m!5487151 () Bool)

(assert (=> b!4633819 m!5487151))

(assert (=> b!4633819 m!5487139))

(assert (=> b!4633819 m!5487133))

(declare-fun m!5487153 () Bool)

(assert (=> b!4633817 m!5487153))

(assert (=> b!4633816 m!5487133))

(assert (=> b!4633594 d!1460662))

(declare-fun d!1460688 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8887 (List!51756) (InoxSet tuple2!52606))

(assert (=> d!1460688 (= (eq!855 lt!1795046 (+!1906 (extractMap!1596 (Cons!51633 (tuple2!52609 hash!414 lt!1795053) Nil!51633)) (h!57712 oldBucket!40))) (= (content!8887 (toList!5046 lt!1795046)) (content!8887 (toList!5046 (+!1906 (extractMap!1596 (Cons!51633 (tuple2!52609 hash!414 lt!1795053) Nil!51633)) (h!57712 oldBucket!40))))))))

(declare-fun bs!1029293 () Bool)

(assert (= bs!1029293 d!1460688))

(declare-fun m!5487155 () Bool)

(assert (=> bs!1029293 m!5487155))

(declare-fun m!5487157 () Bool)

(assert (=> bs!1029293 m!5487157))

(assert (=> b!4633594 d!1460688))

(declare-fun bs!1029294 () Bool)

(declare-fun b!4633831 () Bool)

(assert (= bs!1029294 (and b!4633831 b!4633820)))

(declare-fun lambda!194407 () Int)

(assert (=> bs!1029294 (= lambda!194407 lambda!194391)))

(declare-fun bs!1029295 () Bool)

(assert (= bs!1029295 (and b!4633831 b!4633819)))

(assert (=> bs!1029295 (= lambda!194407 lambda!194394)))

(assert (=> bs!1029295 (= (= (ListMap!4350 Nil!51632) lt!1795331) (= lambda!194407 lambda!194395))))

(declare-fun bs!1029296 () Bool)

(assert (= bs!1029296 (and b!4633831 d!1460662)))

(assert (=> bs!1029296 (= (= (ListMap!4350 Nil!51632) lt!1795327) (= lambda!194407 lambda!194400))))

(assert (=> b!4633831 true))

(declare-fun bs!1029297 () Bool)

(declare-fun b!4633830 () Bool)

(assert (= bs!1029297 (and b!4633830 d!1460662)))

(declare-fun lambda!194408 () Int)

(assert (=> bs!1029297 (= (= (ListMap!4350 Nil!51632) lt!1795327) (= lambda!194408 lambda!194400))))

(declare-fun bs!1029298 () Bool)

(assert (= bs!1029298 (and b!4633830 b!4633819)))

(assert (=> bs!1029298 (= (= (ListMap!4350 Nil!51632) lt!1795331) (= lambda!194408 lambda!194395))))

(declare-fun bs!1029299 () Bool)

(assert (= bs!1029299 (and b!4633830 b!4633820)))

(assert (=> bs!1029299 (= lambda!194408 lambda!194391)))

(declare-fun bs!1029300 () Bool)

(assert (= bs!1029300 (and b!4633830 b!4633831)))

(assert (=> bs!1029300 (= lambda!194408 lambda!194407)))

(assert (=> bs!1029298 (= lambda!194408 lambda!194394)))

(assert (=> b!4633830 true))

(declare-fun lambda!194409 () Int)

(declare-fun lt!1795362 () ListMap!4349)

(assert (=> bs!1029297 (= (= lt!1795362 lt!1795327) (= lambda!194409 lambda!194400))))

(assert (=> bs!1029298 (= (= lt!1795362 lt!1795331) (= lambda!194409 lambda!194395))))

(assert (=> bs!1029299 (= (= lt!1795362 (ListMap!4350 Nil!51632)) (= lambda!194409 lambda!194391))))

(assert (=> bs!1029300 (= (= lt!1795362 (ListMap!4350 Nil!51632)) (= lambda!194409 lambda!194407))))

(assert (=> bs!1029298 (= (= lt!1795362 (ListMap!4350 Nil!51632)) (= lambda!194409 lambda!194394))))

(assert (=> b!4633830 (= (= lt!1795362 (ListMap!4350 Nil!51632)) (= lambda!194409 lambda!194408))))

(assert (=> b!4633830 true))

(declare-fun bs!1029301 () Bool)

(declare-fun d!1460690 () Bool)

(assert (= bs!1029301 (and d!1460690 d!1460662)))

(declare-fun lambda!194410 () Int)

(declare-fun lt!1795358 () ListMap!4349)

(assert (=> bs!1029301 (= (= lt!1795358 lt!1795327) (= lambda!194410 lambda!194400))))

(declare-fun bs!1029302 () Bool)

(assert (= bs!1029302 (and d!1460690 b!4633819)))

(assert (=> bs!1029302 (= (= lt!1795358 lt!1795331) (= lambda!194410 lambda!194395))))

(declare-fun bs!1029303 () Bool)

(assert (= bs!1029303 (and d!1460690 b!4633820)))

(assert (=> bs!1029303 (= (= lt!1795358 (ListMap!4350 Nil!51632)) (= lambda!194410 lambda!194391))))

(declare-fun bs!1029304 () Bool)

(assert (= bs!1029304 (and d!1460690 b!4633831)))

(assert (=> bs!1029304 (= (= lt!1795358 (ListMap!4350 Nil!51632)) (= lambda!194410 lambda!194407))))

(declare-fun bs!1029305 () Bool)

(assert (= bs!1029305 (and d!1460690 b!4633830)))

(assert (=> bs!1029305 (= (= lt!1795358 (ListMap!4350 Nil!51632)) (= lambda!194410 lambda!194408))))

(assert (=> bs!1029302 (= (= lt!1795358 (ListMap!4350 Nil!51632)) (= lambda!194410 lambda!194394))))

(assert (=> bs!1029305 (= (= lt!1795358 lt!1795362) (= lambda!194410 lambda!194409))))

(assert (=> d!1460690 true))

(declare-fun b!4633827 () Bool)

(declare-fun e!2890679 () Bool)

(assert (=> b!4633827 (= e!2890679 (forall!10884 (toList!5046 (ListMap!4350 Nil!51632)) lambda!194409))))

(declare-fun b!4633828 () Bool)

(declare-fun e!2890677 () Bool)

(assert (=> b!4633828 (= e!2890677 (invariantList!1234 (toList!5046 lt!1795358)))))

(declare-fun call!323374 () Bool)

(declare-fun c!793131 () Bool)

(declare-fun bm!323368 () Bool)

(assert (=> bm!323368 (= call!323374 (forall!10884 (ite c!793131 (toList!5046 (ListMap!4350 Nil!51632)) (t!358818 (Cons!51632 lt!1795063 lt!1795053))) (ite c!793131 lambda!194407 lambda!194409)))))

(declare-fun bm!323369 () Bool)

(declare-fun call!323373 () Bool)

(assert (=> bm!323369 (= call!323373 (forall!10884 (ite c!793131 (toList!5046 (ListMap!4350 Nil!51632)) (Cons!51632 lt!1795063 lt!1795053)) (ite c!793131 lambda!194407 lambda!194409)))))

(declare-fun b!4633829 () Bool)

(declare-fun res!1944688 () Bool)

(assert (=> b!4633829 (=> (not res!1944688) (not e!2890677))))

(assert (=> b!4633829 (= res!1944688 (forall!10884 (toList!5046 (ListMap!4350 Nil!51632)) lambda!194410))))

(assert (=> d!1460690 e!2890677))

(declare-fun res!1944690 () Bool)

(assert (=> d!1460690 (=> (not res!1944690) (not e!2890677))))

(assert (=> d!1460690 (= res!1944690 (forall!10884 (Cons!51632 lt!1795063 lt!1795053) lambda!194410))))

(declare-fun e!2890678 () ListMap!4349)

(assert (=> d!1460690 (= lt!1795358 e!2890678)))

(assert (=> d!1460690 (= c!793131 ((_ is Nil!51632) (Cons!51632 lt!1795063 lt!1795053)))))

(assert (=> d!1460690 (noDuplicateKeys!1540 (Cons!51632 lt!1795063 lt!1795053))))

(assert (=> d!1460690 (= (addToMapMapFromBucket!1001 (Cons!51632 lt!1795063 lt!1795053) (ListMap!4350 Nil!51632)) lt!1795358)))

(assert (=> b!4633830 (= e!2890678 lt!1795362)))

(declare-fun lt!1795345 () ListMap!4349)

(assert (=> b!4633830 (= lt!1795345 (+!1906 (ListMap!4350 Nil!51632) (h!57712 (Cons!51632 lt!1795063 lt!1795053))))))

(assert (=> b!4633830 (= lt!1795362 (addToMapMapFromBucket!1001 (t!358818 (Cons!51632 lt!1795063 lt!1795053)) (+!1906 (ListMap!4350 Nil!51632) (h!57712 (Cons!51632 lt!1795063 lt!1795053)))))))

(declare-fun lt!1795355 () Unit!113879)

(declare-fun call!323375 () Unit!113879)

(assert (=> b!4633830 (= lt!1795355 call!323375)))

(assert (=> b!4633830 (forall!10884 (toList!5046 (ListMap!4350 Nil!51632)) lambda!194408)))

(declare-fun lt!1795361 () Unit!113879)

(assert (=> b!4633830 (= lt!1795361 lt!1795355)))

(assert (=> b!4633830 (forall!10884 (toList!5046 lt!1795345) lambda!194409)))

(declare-fun lt!1795353 () Unit!113879)

(declare-fun Unit!113908 () Unit!113879)

(assert (=> b!4633830 (= lt!1795353 Unit!113908)))

(assert (=> b!4633830 call!323374))

(declare-fun lt!1795346 () Unit!113879)

(declare-fun Unit!113909 () Unit!113879)

(assert (=> b!4633830 (= lt!1795346 Unit!113909)))

(declare-fun lt!1795342 () Unit!113879)

(declare-fun Unit!113910 () Unit!113879)

(assert (=> b!4633830 (= lt!1795342 Unit!113910)))

(declare-fun lt!1795360 () Unit!113879)

(assert (=> b!4633830 (= lt!1795360 (forallContained!3116 (toList!5046 lt!1795345) lambda!194409 (h!57712 (Cons!51632 lt!1795063 lt!1795053))))))

(assert (=> b!4633830 (contains!14741 lt!1795345 (_1!29597 (h!57712 (Cons!51632 lt!1795063 lt!1795053))))))

(declare-fun lt!1795351 () Unit!113879)

(declare-fun Unit!113911 () Unit!113879)

(assert (=> b!4633830 (= lt!1795351 Unit!113911)))

(assert (=> b!4633830 (contains!14741 lt!1795362 (_1!29597 (h!57712 (Cons!51632 lt!1795063 lt!1795053))))))

(declare-fun lt!1795347 () Unit!113879)

(declare-fun Unit!113912 () Unit!113879)

(assert (=> b!4633830 (= lt!1795347 Unit!113912)))

(assert (=> b!4633830 call!323373))

(declare-fun lt!1795344 () Unit!113879)

(declare-fun Unit!113913 () Unit!113879)

(assert (=> b!4633830 (= lt!1795344 Unit!113913)))

(assert (=> b!4633830 (forall!10884 (toList!5046 lt!1795345) lambda!194409)))

(declare-fun lt!1795356 () Unit!113879)

(declare-fun Unit!113914 () Unit!113879)

(assert (=> b!4633830 (= lt!1795356 Unit!113914)))

(declare-fun lt!1795354 () Unit!113879)

(declare-fun Unit!113915 () Unit!113879)

(assert (=> b!4633830 (= lt!1795354 Unit!113915)))

(declare-fun lt!1795352 () Unit!113879)

(assert (=> b!4633830 (= lt!1795352 (addForallContainsKeyThenBeforeAdding!535 (ListMap!4350 Nil!51632) lt!1795362 (_1!29597 (h!57712 (Cons!51632 lt!1795063 lt!1795053))) (_2!29597 (h!57712 (Cons!51632 lt!1795063 lt!1795053)))))))

(assert (=> b!4633830 (forall!10884 (toList!5046 (ListMap!4350 Nil!51632)) lambda!194409)))

(declare-fun lt!1795343 () Unit!113879)

(assert (=> b!4633830 (= lt!1795343 lt!1795352)))

(assert (=> b!4633830 (forall!10884 (toList!5046 (ListMap!4350 Nil!51632)) lambda!194409)))

(declare-fun lt!1795350 () Unit!113879)

(declare-fun Unit!113916 () Unit!113879)

(assert (=> b!4633830 (= lt!1795350 Unit!113916)))

(declare-fun res!1944689 () Bool)

(assert (=> b!4633830 (= res!1944689 (forall!10884 (Cons!51632 lt!1795063 lt!1795053) lambda!194409))))

(assert (=> b!4633830 (=> (not res!1944689) (not e!2890679))))

(assert (=> b!4633830 e!2890679))

(declare-fun lt!1795357 () Unit!113879)

(declare-fun Unit!113917 () Unit!113879)

(assert (=> b!4633830 (= lt!1795357 Unit!113917)))

(declare-fun bm!323370 () Bool)

(assert (=> bm!323370 (= call!323375 (lemmaContainsAllItsOwnKeys!536 (ListMap!4350 Nil!51632)))))

(assert (=> b!4633831 (= e!2890678 (ListMap!4350 Nil!51632))))

(declare-fun lt!1795359 () Unit!113879)

(assert (=> b!4633831 (= lt!1795359 call!323375)))

(assert (=> b!4633831 call!323374))

(declare-fun lt!1795349 () Unit!113879)

(assert (=> b!4633831 (= lt!1795349 lt!1795359)))

(assert (=> b!4633831 call!323373))

(declare-fun lt!1795348 () Unit!113879)

(declare-fun Unit!113918 () Unit!113879)

(assert (=> b!4633831 (= lt!1795348 Unit!113918)))

(assert (= (and d!1460690 c!793131) b!4633831))

(assert (= (and d!1460690 (not c!793131)) b!4633830))

(assert (= (and b!4633830 res!1944689) b!4633827))

(assert (= (or b!4633831 b!4633830) bm!323370))

(assert (= (or b!4633831 b!4633830) bm!323368))

(assert (= (or b!4633831 b!4633830) bm!323369))

(assert (= (and d!1460690 res!1944690) b!4633829))

(assert (= (and b!4633829 res!1944688) b!4633828))

(declare-fun m!5487159 () Bool)

(assert (=> b!4633829 m!5487159))

(declare-fun m!5487161 () Bool)

(assert (=> bm!323368 m!5487161))

(declare-fun m!5487163 () Bool)

(assert (=> bm!323369 m!5487163))

(assert (=> bm!323370 m!5487127))

(declare-fun m!5487165 () Bool)

(assert (=> d!1460690 m!5487165))

(declare-fun m!5487167 () Bool)

(assert (=> d!1460690 m!5487167))

(declare-fun m!5487169 () Bool)

(assert (=> b!4633830 m!5487169))

(declare-fun m!5487171 () Bool)

(assert (=> b!4633830 m!5487171))

(declare-fun m!5487173 () Bool)

(assert (=> b!4633830 m!5487173))

(declare-fun m!5487175 () Bool)

(assert (=> b!4633830 m!5487175))

(declare-fun m!5487177 () Bool)

(assert (=> b!4633830 m!5487177))

(assert (=> b!4633830 m!5487171))

(declare-fun m!5487179 () Bool)

(assert (=> b!4633830 m!5487179))

(declare-fun m!5487181 () Bool)

(assert (=> b!4633830 m!5487181))

(declare-fun m!5487183 () Bool)

(assert (=> b!4633830 m!5487183))

(declare-fun m!5487185 () Bool)

(assert (=> b!4633830 m!5487185))

(declare-fun m!5487187 () Bool)

(assert (=> b!4633830 m!5487187))

(assert (=> b!4633830 m!5487175))

(assert (=> b!4633830 m!5487169))

(declare-fun m!5487189 () Bool)

(assert (=> b!4633828 m!5487189))

(assert (=> b!4633827 m!5487169))

(assert (=> b!4633594 d!1460690))

(declare-fun d!1460692 () Bool)

(assert (=> d!1460692 (eq!855 (addToMapMapFromBucket!1001 (Cons!51632 lt!1795063 lt!1795053) (ListMap!4350 Nil!51632)) (+!1906 (addToMapMapFromBucket!1001 lt!1795053 (ListMap!4350 Nil!51632)) lt!1795063))))

(declare-fun lt!1795388 () Unit!113879)

(declare-fun choose!31600 (tuple2!52606 List!51756 ListMap!4349) Unit!113879)

(assert (=> d!1460692 (= lt!1795388 (choose!31600 lt!1795063 lt!1795053 (ListMap!4350 Nil!51632)))))

(assert (=> d!1460692 (noDuplicateKeys!1540 lt!1795053)))

(assert (=> d!1460692 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!106 lt!1795063 lt!1795053 (ListMap!4350 Nil!51632)) lt!1795388)))

(declare-fun bs!1029316 () Bool)

(assert (= bs!1029316 d!1460692))

(declare-fun m!5487239 () Bool)

(assert (=> bs!1029316 m!5487239))

(assert (=> bs!1029316 m!5486739))

(assert (=> bs!1029316 m!5486755))

(assert (=> bs!1029316 m!5486763))

(declare-fun m!5487241 () Bool)

(assert (=> bs!1029316 m!5487241))

(assert (=> bs!1029316 m!5486739))

(assert (=> bs!1029316 m!5486745))

(assert (=> bs!1029316 m!5486745))

(assert (=> bs!1029316 m!5486755))

(assert (=> b!4633594 d!1460692))

(declare-fun bs!1029317 () Bool)

(declare-fun b!4633853 () Bool)

(assert (= bs!1029317 (and b!4633853 d!1460690)))

(declare-fun lambda!194416 () Int)

(assert (=> bs!1029317 (= (= (ListMap!4350 Nil!51632) lt!1795358) (= lambda!194416 lambda!194410))))

(declare-fun bs!1029318 () Bool)

(assert (= bs!1029318 (and b!4633853 d!1460662)))

(assert (=> bs!1029318 (= (= (ListMap!4350 Nil!51632) lt!1795327) (= lambda!194416 lambda!194400))))

(declare-fun bs!1029319 () Bool)

(assert (= bs!1029319 (and b!4633853 b!4633819)))

(assert (=> bs!1029319 (= (= (ListMap!4350 Nil!51632) lt!1795331) (= lambda!194416 lambda!194395))))

(declare-fun bs!1029320 () Bool)

(assert (= bs!1029320 (and b!4633853 b!4633820)))

(assert (=> bs!1029320 (= lambda!194416 lambda!194391)))

(declare-fun bs!1029321 () Bool)

(assert (= bs!1029321 (and b!4633853 b!4633831)))

(assert (=> bs!1029321 (= lambda!194416 lambda!194407)))

(declare-fun bs!1029322 () Bool)

(assert (= bs!1029322 (and b!4633853 b!4633830)))

(assert (=> bs!1029322 (= lambda!194416 lambda!194408)))

(assert (=> bs!1029319 (= lambda!194416 lambda!194394)))

(assert (=> bs!1029322 (= (= (ListMap!4350 Nil!51632) lt!1795362) (= lambda!194416 lambda!194409))))

(assert (=> b!4633853 true))

(declare-fun bs!1029323 () Bool)

(declare-fun b!4633852 () Bool)

(assert (= bs!1029323 (and b!4633852 d!1460690)))

(declare-fun lambda!194417 () Int)

(assert (=> bs!1029323 (= (= (ListMap!4350 Nil!51632) lt!1795358) (= lambda!194417 lambda!194410))))

(declare-fun bs!1029324 () Bool)

(assert (= bs!1029324 (and b!4633852 d!1460662)))

(assert (=> bs!1029324 (= (= (ListMap!4350 Nil!51632) lt!1795327) (= lambda!194417 lambda!194400))))

(declare-fun bs!1029325 () Bool)

(assert (= bs!1029325 (and b!4633852 b!4633819)))

(assert (=> bs!1029325 (= (= (ListMap!4350 Nil!51632) lt!1795331) (= lambda!194417 lambda!194395))))

(declare-fun bs!1029326 () Bool)

(assert (= bs!1029326 (and b!4633852 b!4633831)))

(assert (=> bs!1029326 (= lambda!194417 lambda!194407)))

(declare-fun bs!1029327 () Bool)

(assert (= bs!1029327 (and b!4633852 b!4633830)))

(assert (=> bs!1029327 (= lambda!194417 lambda!194408)))

(declare-fun bs!1029328 () Bool)

(assert (= bs!1029328 (and b!4633852 b!4633853)))

(assert (=> bs!1029328 (= lambda!194417 lambda!194416)))

(declare-fun bs!1029329 () Bool)

(assert (= bs!1029329 (and b!4633852 b!4633820)))

(assert (=> bs!1029329 (= lambda!194417 lambda!194391)))

(assert (=> bs!1029325 (= lambda!194417 lambda!194394)))

(assert (=> bs!1029327 (= (= (ListMap!4350 Nil!51632) lt!1795362) (= lambda!194417 lambda!194409))))

(assert (=> b!4633852 true))

(declare-fun lt!1795409 () ListMap!4349)

(declare-fun lambda!194418 () Int)

(assert (=> bs!1029324 (= (= lt!1795409 lt!1795327) (= lambda!194418 lambda!194400))))

(assert (=> bs!1029325 (= (= lt!1795409 lt!1795331) (= lambda!194418 lambda!194395))))

(assert (=> bs!1029326 (= (= lt!1795409 (ListMap!4350 Nil!51632)) (= lambda!194418 lambda!194407))))

(assert (=> bs!1029327 (= (= lt!1795409 (ListMap!4350 Nil!51632)) (= lambda!194418 lambda!194408))))

(assert (=> b!4633852 (= (= lt!1795409 (ListMap!4350 Nil!51632)) (= lambda!194418 lambda!194417))))

(assert (=> bs!1029323 (= (= lt!1795409 lt!1795358) (= lambda!194418 lambda!194410))))

(assert (=> bs!1029328 (= (= lt!1795409 (ListMap!4350 Nil!51632)) (= lambda!194418 lambda!194416))))

(assert (=> bs!1029329 (= (= lt!1795409 (ListMap!4350 Nil!51632)) (= lambda!194418 lambda!194391))))

(assert (=> bs!1029325 (= (= lt!1795409 (ListMap!4350 Nil!51632)) (= lambda!194418 lambda!194394))))

(assert (=> bs!1029327 (= (= lt!1795409 lt!1795362) (= lambda!194418 lambda!194409))))

(assert (=> b!4633852 true))

(declare-fun bs!1029330 () Bool)

(declare-fun d!1460702 () Bool)

(assert (= bs!1029330 (and d!1460702 d!1460662)))

(declare-fun lt!1795405 () ListMap!4349)

(declare-fun lambda!194419 () Int)

(assert (=> bs!1029330 (= (= lt!1795405 lt!1795327) (= lambda!194419 lambda!194400))))

(declare-fun bs!1029331 () Bool)

(assert (= bs!1029331 (and d!1460702 b!4633831)))

(assert (=> bs!1029331 (= (= lt!1795405 (ListMap!4350 Nil!51632)) (= lambda!194419 lambda!194407))))

(declare-fun bs!1029332 () Bool)

(assert (= bs!1029332 (and d!1460702 b!4633830)))

(assert (=> bs!1029332 (= (= lt!1795405 (ListMap!4350 Nil!51632)) (= lambda!194419 lambda!194408))))

(declare-fun bs!1029333 () Bool)

(assert (= bs!1029333 (and d!1460702 b!4633852)))

(assert (=> bs!1029333 (= (= lt!1795405 (ListMap!4350 Nil!51632)) (= lambda!194419 lambda!194417))))

(declare-fun bs!1029334 () Bool)

(assert (= bs!1029334 (and d!1460702 d!1460690)))

(assert (=> bs!1029334 (= (= lt!1795405 lt!1795358) (= lambda!194419 lambda!194410))))

(declare-fun bs!1029335 () Bool)

(assert (= bs!1029335 (and d!1460702 b!4633819)))

(assert (=> bs!1029335 (= (= lt!1795405 lt!1795331) (= lambda!194419 lambda!194395))))

(assert (=> bs!1029333 (= (= lt!1795405 lt!1795409) (= lambda!194419 lambda!194418))))

(declare-fun bs!1029336 () Bool)

(assert (= bs!1029336 (and d!1460702 b!4633853)))

(assert (=> bs!1029336 (= (= lt!1795405 (ListMap!4350 Nil!51632)) (= lambda!194419 lambda!194416))))

(declare-fun bs!1029337 () Bool)

(assert (= bs!1029337 (and d!1460702 b!4633820)))

(assert (=> bs!1029337 (= (= lt!1795405 (ListMap!4350 Nil!51632)) (= lambda!194419 lambda!194391))))

(assert (=> bs!1029335 (= (= lt!1795405 (ListMap!4350 Nil!51632)) (= lambda!194419 lambda!194394))))

(assert (=> bs!1029332 (= (= lt!1795405 lt!1795362) (= lambda!194419 lambda!194409))))

(assert (=> d!1460702 true))

(declare-fun b!4633849 () Bool)

(declare-fun e!2890690 () Bool)

(assert (=> b!4633849 (= e!2890690 (forall!10884 (toList!5046 (ListMap!4350 Nil!51632)) lambda!194418))))

(declare-fun b!4633850 () Bool)

(declare-fun e!2890688 () Bool)

(assert (=> b!4633850 (= e!2890688 (invariantList!1234 (toList!5046 lt!1795405)))))

(declare-fun c!793136 () Bool)

(declare-fun bm!323374 () Bool)

(declare-fun call!323380 () Bool)

(assert (=> bm!323374 (= call!323380 (forall!10884 (ite c!793136 (toList!5046 (ListMap!4350 Nil!51632)) (t!358818 (Cons!51632 lt!1795039 lt!1795055))) (ite c!793136 lambda!194416 lambda!194418)))))

(declare-fun bm!323375 () Bool)

(declare-fun call!323379 () Bool)

(assert (=> bm!323375 (= call!323379 (forall!10884 (ite c!793136 (toList!5046 (ListMap!4350 Nil!51632)) (Cons!51632 lt!1795039 lt!1795055)) (ite c!793136 lambda!194416 lambda!194418)))))

(declare-fun b!4633851 () Bool)

(declare-fun res!1944696 () Bool)

(assert (=> b!4633851 (=> (not res!1944696) (not e!2890688))))

(assert (=> b!4633851 (= res!1944696 (forall!10884 (toList!5046 (ListMap!4350 Nil!51632)) lambda!194419))))

(assert (=> d!1460702 e!2890688))

(declare-fun res!1944698 () Bool)

(assert (=> d!1460702 (=> (not res!1944698) (not e!2890688))))

(assert (=> d!1460702 (= res!1944698 (forall!10884 (Cons!51632 lt!1795039 lt!1795055) lambda!194419))))

(declare-fun e!2890689 () ListMap!4349)

(assert (=> d!1460702 (= lt!1795405 e!2890689)))

(assert (=> d!1460702 (= c!793136 ((_ is Nil!51632) (Cons!51632 lt!1795039 lt!1795055)))))

(assert (=> d!1460702 (noDuplicateKeys!1540 (Cons!51632 lt!1795039 lt!1795055))))

(assert (=> d!1460702 (= (addToMapMapFromBucket!1001 (Cons!51632 lt!1795039 lt!1795055) (ListMap!4350 Nil!51632)) lt!1795405)))

(assert (=> b!4633852 (= e!2890689 lt!1795409)))

(declare-fun lt!1795392 () ListMap!4349)

(assert (=> b!4633852 (= lt!1795392 (+!1906 (ListMap!4350 Nil!51632) (h!57712 (Cons!51632 lt!1795039 lt!1795055))))))

(assert (=> b!4633852 (= lt!1795409 (addToMapMapFromBucket!1001 (t!358818 (Cons!51632 lt!1795039 lt!1795055)) (+!1906 (ListMap!4350 Nil!51632) (h!57712 (Cons!51632 lt!1795039 lt!1795055)))))))

(declare-fun lt!1795402 () Unit!113879)

(declare-fun call!323381 () Unit!113879)

(assert (=> b!4633852 (= lt!1795402 call!323381)))

(assert (=> b!4633852 (forall!10884 (toList!5046 (ListMap!4350 Nil!51632)) lambda!194417)))

(declare-fun lt!1795408 () Unit!113879)

(assert (=> b!4633852 (= lt!1795408 lt!1795402)))

(assert (=> b!4633852 (forall!10884 (toList!5046 lt!1795392) lambda!194418)))

(declare-fun lt!1795400 () Unit!113879)

(declare-fun Unit!113930 () Unit!113879)

(assert (=> b!4633852 (= lt!1795400 Unit!113930)))

(assert (=> b!4633852 call!323380))

(declare-fun lt!1795393 () Unit!113879)

(declare-fun Unit!113931 () Unit!113879)

(assert (=> b!4633852 (= lt!1795393 Unit!113931)))

(declare-fun lt!1795389 () Unit!113879)

(declare-fun Unit!113932 () Unit!113879)

(assert (=> b!4633852 (= lt!1795389 Unit!113932)))

(declare-fun lt!1795407 () Unit!113879)

(assert (=> b!4633852 (= lt!1795407 (forallContained!3116 (toList!5046 lt!1795392) lambda!194418 (h!57712 (Cons!51632 lt!1795039 lt!1795055))))))

(assert (=> b!4633852 (contains!14741 lt!1795392 (_1!29597 (h!57712 (Cons!51632 lt!1795039 lt!1795055))))))

(declare-fun lt!1795398 () Unit!113879)

(declare-fun Unit!113933 () Unit!113879)

(assert (=> b!4633852 (= lt!1795398 Unit!113933)))

(assert (=> b!4633852 (contains!14741 lt!1795409 (_1!29597 (h!57712 (Cons!51632 lt!1795039 lt!1795055))))))

(declare-fun lt!1795394 () Unit!113879)

(declare-fun Unit!113934 () Unit!113879)

(assert (=> b!4633852 (= lt!1795394 Unit!113934)))

(assert (=> b!4633852 call!323379))

(declare-fun lt!1795391 () Unit!113879)

(declare-fun Unit!113935 () Unit!113879)

(assert (=> b!4633852 (= lt!1795391 Unit!113935)))

(assert (=> b!4633852 (forall!10884 (toList!5046 lt!1795392) lambda!194418)))

(declare-fun lt!1795403 () Unit!113879)

(declare-fun Unit!113936 () Unit!113879)

(assert (=> b!4633852 (= lt!1795403 Unit!113936)))

(declare-fun lt!1795401 () Unit!113879)

(declare-fun Unit!113937 () Unit!113879)

(assert (=> b!4633852 (= lt!1795401 Unit!113937)))

(declare-fun lt!1795399 () Unit!113879)

(assert (=> b!4633852 (= lt!1795399 (addForallContainsKeyThenBeforeAdding!535 (ListMap!4350 Nil!51632) lt!1795409 (_1!29597 (h!57712 (Cons!51632 lt!1795039 lt!1795055))) (_2!29597 (h!57712 (Cons!51632 lt!1795039 lt!1795055)))))))

(assert (=> b!4633852 (forall!10884 (toList!5046 (ListMap!4350 Nil!51632)) lambda!194418)))

(declare-fun lt!1795390 () Unit!113879)

(assert (=> b!4633852 (= lt!1795390 lt!1795399)))

(assert (=> b!4633852 (forall!10884 (toList!5046 (ListMap!4350 Nil!51632)) lambda!194418)))

(declare-fun lt!1795397 () Unit!113879)

(declare-fun Unit!113938 () Unit!113879)

(assert (=> b!4633852 (= lt!1795397 Unit!113938)))

(declare-fun res!1944697 () Bool)

(assert (=> b!4633852 (= res!1944697 (forall!10884 (Cons!51632 lt!1795039 lt!1795055) lambda!194418))))

(assert (=> b!4633852 (=> (not res!1944697) (not e!2890690))))

(assert (=> b!4633852 e!2890690))

(declare-fun lt!1795404 () Unit!113879)

(declare-fun Unit!113939 () Unit!113879)

(assert (=> b!4633852 (= lt!1795404 Unit!113939)))

(declare-fun bm!323376 () Bool)

(assert (=> bm!323376 (= call!323381 (lemmaContainsAllItsOwnKeys!536 (ListMap!4350 Nil!51632)))))

(assert (=> b!4633853 (= e!2890689 (ListMap!4350 Nil!51632))))

(declare-fun lt!1795406 () Unit!113879)

(assert (=> b!4633853 (= lt!1795406 call!323381)))

(assert (=> b!4633853 call!323380))

(declare-fun lt!1795396 () Unit!113879)

(assert (=> b!4633853 (= lt!1795396 lt!1795406)))

(assert (=> b!4633853 call!323379))

(declare-fun lt!1795395 () Unit!113879)

(declare-fun Unit!113941 () Unit!113879)

(assert (=> b!4633853 (= lt!1795395 Unit!113941)))

(assert (= (and d!1460702 c!793136) b!4633853))

(assert (= (and d!1460702 (not c!793136)) b!4633852))

(assert (= (and b!4633852 res!1944697) b!4633849))

(assert (= (or b!4633853 b!4633852) bm!323376))

(assert (= (or b!4633853 b!4633852) bm!323374))

(assert (= (or b!4633853 b!4633852) bm!323375))

(assert (= (and d!1460702 res!1944698) b!4633851))

(assert (= (and b!4633851 res!1944696) b!4633850))

(declare-fun m!5487243 () Bool)

(assert (=> b!4633851 m!5487243))

(declare-fun m!5487245 () Bool)

(assert (=> bm!323374 m!5487245))

(declare-fun m!5487247 () Bool)

(assert (=> bm!323375 m!5487247))

(assert (=> bm!323376 m!5487127))

(declare-fun m!5487249 () Bool)

(assert (=> d!1460702 m!5487249))

(declare-fun m!5487251 () Bool)

(assert (=> d!1460702 m!5487251))

(declare-fun m!5487253 () Bool)

(assert (=> b!4633852 m!5487253))

(declare-fun m!5487255 () Bool)

(assert (=> b!4633852 m!5487255))

(declare-fun m!5487257 () Bool)

(assert (=> b!4633852 m!5487257))

(declare-fun m!5487259 () Bool)

(assert (=> b!4633852 m!5487259))

(declare-fun m!5487261 () Bool)

(assert (=> b!4633852 m!5487261))

(assert (=> b!4633852 m!5487255))

(declare-fun m!5487263 () Bool)

(assert (=> b!4633852 m!5487263))

(declare-fun m!5487265 () Bool)

(assert (=> b!4633852 m!5487265))

(declare-fun m!5487267 () Bool)

(assert (=> b!4633852 m!5487267))

(declare-fun m!5487269 () Bool)

(assert (=> b!4633852 m!5487269))

(declare-fun m!5487271 () Bool)

(assert (=> b!4633852 m!5487271))

(assert (=> b!4633852 m!5487259))

(assert (=> b!4633852 m!5487253))

(declare-fun m!5487273 () Bool)

(assert (=> b!4633850 m!5487273))

(assert (=> b!4633849 m!5487253))

(assert (=> b!4633594 d!1460702))

(declare-fun d!1460704 () Bool)

(assert (=> d!1460704 (= (eq!855 (addToMapMapFromBucket!1001 (Cons!51632 lt!1795039 lt!1795055) (ListMap!4350 Nil!51632)) (+!1906 (addToMapMapFromBucket!1001 lt!1795055 (ListMap!4350 Nil!51632)) lt!1795039)) (= (content!8887 (toList!5046 (addToMapMapFromBucket!1001 (Cons!51632 lt!1795039 lt!1795055) (ListMap!4350 Nil!51632)))) (content!8887 (toList!5046 (+!1906 (addToMapMapFromBucket!1001 lt!1795055 (ListMap!4350 Nil!51632)) lt!1795039)))))))

(declare-fun bs!1029338 () Bool)

(assert (= bs!1029338 d!1460704))

(declare-fun m!5487275 () Bool)

(assert (=> bs!1029338 m!5487275))

(declare-fun m!5487277 () Bool)

(assert (=> bs!1029338 m!5487277))

(assert (=> b!4633594 d!1460704))

(declare-fun b!4633854 () Bool)

(declare-fun e!2890691 () Unit!113879)

(declare-fun lt!1795416 () Unit!113879)

(assert (=> b!4633854 (= e!2890691 lt!1795416)))

(declare-fun lt!1795420 () Unit!113879)

(assert (=> b!4633854 (= lt!1795420 (lemmaContainsKeyImpliesGetValueByKeyDefined!1413 (toList!5046 lt!1795059) key!4968))))

(assert (=> b!4633854 (isDefined!8950 (getValueByKey!1511 (toList!5046 lt!1795059) key!4968))))

(declare-fun lt!1795413 () Unit!113879)

(assert (=> b!4633854 (= lt!1795413 lt!1795420)))

(assert (=> b!4633854 (= lt!1795416 (lemmaInListThenGetKeysListContains!680 (toList!5046 lt!1795059) key!4968))))

(declare-fun call!323382 () Bool)

(assert (=> b!4633854 call!323382))

(declare-fun b!4633855 () Bool)

(declare-fun e!2890692 () List!51759)

(assert (=> b!4633855 (= e!2890692 (getKeysList!685 (toList!5046 lt!1795059)))))

(declare-fun b!4633857 () Bool)

(declare-fun e!2890695 () Bool)

(assert (=> b!4633857 (= e!2890695 (not (contains!14744 (keys!18218 lt!1795059) key!4968)))))

(declare-fun b!4633858 () Bool)

(declare-fun e!2890696 () Unit!113879)

(declare-fun Unit!113943 () Unit!113879)

(assert (=> b!4633858 (= e!2890696 Unit!113943)))

(declare-fun b!4633859 () Bool)

(declare-fun e!2890694 () Bool)

(assert (=> b!4633859 (= e!2890694 (contains!14744 (keys!18218 lt!1795059) key!4968))))

(declare-fun b!4633860 () Bool)

(assert (=> b!4633860 (= e!2890691 e!2890696)))

(declare-fun c!793138 () Bool)

(assert (=> b!4633860 (= c!793138 call!323382)))

(declare-fun b!4633861 () Bool)

(declare-fun e!2890693 () Bool)

(assert (=> b!4633861 (= e!2890693 e!2890694)))

(declare-fun res!1944701 () Bool)

(assert (=> b!4633861 (=> (not res!1944701) (not e!2890694))))

(assert (=> b!4633861 (= res!1944701 (isDefined!8950 (getValueByKey!1511 (toList!5046 lt!1795059) key!4968)))))

(declare-fun d!1460706 () Bool)

(assert (=> d!1460706 e!2890693))

(declare-fun res!1944699 () Bool)

(assert (=> d!1460706 (=> res!1944699 e!2890693)))

(assert (=> d!1460706 (= res!1944699 e!2890695)))

(declare-fun res!1944700 () Bool)

(assert (=> d!1460706 (=> (not res!1944700) (not e!2890695))))

(declare-fun lt!1795414 () Bool)

(assert (=> d!1460706 (= res!1944700 (not lt!1795414))))

(declare-fun lt!1795417 () Bool)

(assert (=> d!1460706 (= lt!1795414 lt!1795417)))

(declare-fun lt!1795418 () Unit!113879)

(assert (=> d!1460706 (= lt!1795418 e!2890691)))

(declare-fun c!793137 () Bool)

(assert (=> d!1460706 (= c!793137 lt!1795417)))

(assert (=> d!1460706 (= lt!1795417 (containsKey!2543 (toList!5046 lt!1795059) key!4968))))

(assert (=> d!1460706 (= (contains!14741 lt!1795059 key!4968) lt!1795414)))

(declare-fun b!4633856 () Bool)

(assert (=> b!4633856 false))

(declare-fun lt!1795419 () Unit!113879)

(declare-fun lt!1795415 () Unit!113879)

(assert (=> b!4633856 (= lt!1795419 lt!1795415)))

(assert (=> b!4633856 (containsKey!2543 (toList!5046 lt!1795059) key!4968)))

(assert (=> b!4633856 (= lt!1795415 (lemmaInGetKeysListThenContainsKey!684 (toList!5046 lt!1795059) key!4968))))

(declare-fun Unit!113944 () Unit!113879)

(assert (=> b!4633856 (= e!2890696 Unit!113944)))

(declare-fun bm!323377 () Bool)

(assert (=> bm!323377 (= call!323382 (contains!14744 e!2890692 key!4968))))

(declare-fun c!793139 () Bool)

(assert (=> bm!323377 (= c!793139 c!793137)))

(declare-fun b!4633862 () Bool)

(assert (=> b!4633862 (= e!2890692 (keys!18218 lt!1795059))))

(assert (= (and d!1460706 c!793137) b!4633854))

(assert (= (and d!1460706 (not c!793137)) b!4633860))

(assert (= (and b!4633860 c!793138) b!4633856))

(assert (= (and b!4633860 (not c!793138)) b!4633858))

(assert (= (or b!4633854 b!4633860) bm!323377))

(assert (= (and bm!323377 c!793139) b!4633855))

(assert (= (and bm!323377 (not c!793139)) b!4633862))

(assert (= (and d!1460706 res!1944700) b!4633857))

(assert (= (and d!1460706 (not res!1944699)) b!4633861))

(assert (= (and b!4633861 res!1944701) b!4633859))

(declare-fun m!5487285 () Bool)

(assert (=> bm!323377 m!5487285))

(declare-fun m!5487289 () Bool)

(assert (=> b!4633856 m!5487289))

(declare-fun m!5487291 () Bool)

(assert (=> b!4633856 m!5487291))

(declare-fun m!5487293 () Bool)

(assert (=> b!4633862 m!5487293))

(declare-fun m!5487295 () Bool)

(assert (=> b!4633855 m!5487295))

(assert (=> b!4633857 m!5487293))

(assert (=> b!4633857 m!5487293))

(declare-fun m!5487297 () Bool)

(assert (=> b!4633857 m!5487297))

(declare-fun m!5487299 () Bool)

(assert (=> b!4633854 m!5487299))

(declare-fun m!5487301 () Bool)

(assert (=> b!4633854 m!5487301))

(assert (=> b!4633854 m!5487301))

(declare-fun m!5487303 () Bool)

(assert (=> b!4633854 m!5487303))

(declare-fun m!5487305 () Bool)

(assert (=> b!4633854 m!5487305))

(assert (=> b!4633861 m!5487301))

(assert (=> b!4633861 m!5487301))

(assert (=> b!4633861 m!5487303))

(assert (=> d!1460706 m!5487289))

(assert (=> b!4633859 m!5487293))

(assert (=> b!4633859 m!5487293))

(assert (=> b!4633859 m!5487297))

(assert (=> b!4633594 d!1460706))

(declare-fun d!1460710 () Bool)

(assert (=> d!1460710 (= (head!9674 oldBucket!40) (h!57712 oldBucket!40))))

(assert (=> b!4633594 d!1460710))

(declare-fun d!1460712 () Bool)

(assert (=> d!1460712 (= (eq!855 (addToMapMapFromBucket!1001 (Cons!51632 lt!1795063 lt!1795053) (ListMap!4350 Nil!51632)) (+!1906 (addToMapMapFromBucket!1001 lt!1795053 (ListMap!4350 Nil!51632)) lt!1795063)) (= (content!8887 (toList!5046 (addToMapMapFromBucket!1001 (Cons!51632 lt!1795063 lt!1795053) (ListMap!4350 Nil!51632)))) (content!8887 (toList!5046 (+!1906 (addToMapMapFromBucket!1001 lt!1795053 (ListMap!4350 Nil!51632)) lt!1795063)))))))

(declare-fun bs!1029345 () Bool)

(assert (= bs!1029345 d!1460712))

(declare-fun m!5487319 () Bool)

(assert (=> bs!1029345 m!5487319))

(declare-fun m!5487321 () Bool)

(assert (=> bs!1029345 m!5487321))

(assert (=> b!4633594 d!1460712))

(declare-fun d!1460716 () Bool)

(declare-fun e!2890698 () Bool)

(assert (=> d!1460716 e!2890698))

(declare-fun res!1944705 () Bool)

(assert (=> d!1460716 (=> (not res!1944705) (not e!2890698))))

(declare-fun lt!1795427 () ListMap!4349)

(assert (=> d!1460716 (= res!1944705 (contains!14741 lt!1795427 (_1!29597 lt!1795063)))))

(declare-fun lt!1795428 () List!51756)

(assert (=> d!1460716 (= lt!1795427 (ListMap!4350 lt!1795428))))

(declare-fun lt!1795425 () Unit!113879)

(declare-fun lt!1795426 () Unit!113879)

(assert (=> d!1460716 (= lt!1795425 lt!1795426)))

(assert (=> d!1460716 (= (getValueByKey!1511 lt!1795428 (_1!29597 lt!1795063)) (Some!11684 (_2!29597 lt!1795063)))))

(assert (=> d!1460716 (= lt!1795426 (lemmaContainsTupThenGetReturnValue!878 lt!1795428 (_1!29597 lt!1795063) (_2!29597 lt!1795063)))))

(assert (=> d!1460716 (= lt!1795428 (insertNoDuplicatedKeys!386 (toList!5046 (addToMapMapFromBucket!1001 lt!1795053 (ListMap!4350 Nil!51632))) (_1!29597 lt!1795063) (_2!29597 lt!1795063)))))

(assert (=> d!1460716 (= (+!1906 (addToMapMapFromBucket!1001 lt!1795053 (ListMap!4350 Nil!51632)) lt!1795063) lt!1795427)))

(declare-fun b!4633865 () Bool)

(declare-fun res!1944704 () Bool)

(assert (=> b!4633865 (=> (not res!1944704) (not e!2890698))))

(assert (=> b!4633865 (= res!1944704 (= (getValueByKey!1511 (toList!5046 lt!1795427) (_1!29597 lt!1795063)) (Some!11684 (_2!29597 lt!1795063))))))

(declare-fun b!4633866 () Bool)

(assert (=> b!4633866 (= e!2890698 (contains!14745 (toList!5046 lt!1795427) lt!1795063))))

(assert (= (and d!1460716 res!1944705) b!4633865))

(assert (= (and b!4633865 res!1944704) b!4633866))

(declare-fun m!5487327 () Bool)

(assert (=> d!1460716 m!5487327))

(declare-fun m!5487329 () Bool)

(assert (=> d!1460716 m!5487329))

(declare-fun m!5487331 () Bool)

(assert (=> d!1460716 m!5487331))

(declare-fun m!5487333 () Bool)

(assert (=> d!1460716 m!5487333))

(declare-fun m!5487335 () Bool)

(assert (=> b!4633865 m!5487335))

(declare-fun m!5487337 () Bool)

(assert (=> b!4633866 m!5487337))

(assert (=> b!4633594 d!1460716))

(declare-fun d!1460722 () Bool)

(assert (=> d!1460722 (eq!855 (addToMapMapFromBucket!1001 (Cons!51632 lt!1795039 lt!1795055) (ListMap!4350 Nil!51632)) (+!1906 (addToMapMapFromBucket!1001 lt!1795055 (ListMap!4350 Nil!51632)) lt!1795039))))

(declare-fun lt!1795450 () Unit!113879)

(assert (=> d!1460722 (= lt!1795450 (choose!31600 lt!1795039 lt!1795055 (ListMap!4350 Nil!51632)))))

(assert (=> d!1460722 (noDuplicateKeys!1540 lt!1795055)))

(assert (=> d!1460722 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!106 lt!1795039 lt!1795055 (ListMap!4350 Nil!51632)) lt!1795450)))

(declare-fun bs!1029347 () Bool)

(assert (= bs!1029347 d!1460722))

(assert (=> bs!1029347 m!5487131))

(assert (=> bs!1029347 m!5486747))

(assert (=> bs!1029347 m!5486749))

(assert (=> bs!1029347 m!5486751))

(declare-fun m!5487339 () Bool)

(assert (=> bs!1029347 m!5487339))

(assert (=> bs!1029347 m!5486747))

(assert (=> bs!1029347 m!5486733))

(assert (=> bs!1029347 m!5486733))

(assert (=> bs!1029347 m!5486749))

(assert (=> b!4633594 d!1460722))

(declare-fun d!1460724 () Bool)

(assert (=> d!1460724 (= (head!9674 newBucket!224) (h!57712 newBucket!224))))

(assert (=> b!4633594 d!1460724))

(declare-fun bs!1029354 () Bool)

(declare-fun b!4633876 () Bool)

(assert (= bs!1029354 (and b!4633876 d!1460662)))

(declare-fun lambda!194425 () Int)

(assert (=> bs!1029354 (= (= (ListMap!4350 Nil!51632) lt!1795327) (= lambda!194425 lambda!194400))))

(declare-fun bs!1029356 () Bool)

(assert (= bs!1029356 (and b!4633876 b!4633831)))

(assert (=> bs!1029356 (= lambda!194425 lambda!194407)))

(declare-fun bs!1029358 () Bool)

(assert (= bs!1029358 (and b!4633876 b!4633852)))

(assert (=> bs!1029358 (= lambda!194425 lambda!194417)))

(declare-fun bs!1029360 () Bool)

(assert (= bs!1029360 (and b!4633876 d!1460690)))

(assert (=> bs!1029360 (= (= (ListMap!4350 Nil!51632) lt!1795358) (= lambda!194425 lambda!194410))))

(declare-fun bs!1029361 () Bool)

(assert (= bs!1029361 (and b!4633876 b!4633819)))

(assert (=> bs!1029361 (= (= (ListMap!4350 Nil!51632) lt!1795331) (= lambda!194425 lambda!194395))))

(assert (=> bs!1029358 (= (= (ListMap!4350 Nil!51632) lt!1795409) (= lambda!194425 lambda!194418))))

(declare-fun bs!1029362 () Bool)

(assert (= bs!1029362 (and b!4633876 b!4633853)))

(assert (=> bs!1029362 (= lambda!194425 lambda!194416)))

(declare-fun bs!1029363 () Bool)

(assert (= bs!1029363 (and b!4633876 b!4633820)))

(assert (=> bs!1029363 (= lambda!194425 lambda!194391)))

(assert (=> bs!1029361 (= lambda!194425 lambda!194394)))

(declare-fun bs!1029364 () Bool)

(assert (= bs!1029364 (and b!4633876 b!4633830)))

(assert (=> bs!1029364 (= (= (ListMap!4350 Nil!51632) lt!1795362) (= lambda!194425 lambda!194409))))

(declare-fun bs!1029365 () Bool)

(assert (= bs!1029365 (and b!4633876 d!1460702)))

(assert (=> bs!1029365 (= (= (ListMap!4350 Nil!51632) lt!1795405) (= lambda!194425 lambda!194419))))

(assert (=> bs!1029364 (= lambda!194425 lambda!194408)))

(assert (=> b!4633876 true))

(declare-fun bs!1029366 () Bool)

(declare-fun b!4633875 () Bool)

(assert (= bs!1029366 (and b!4633875 d!1460662)))

(declare-fun lambda!194427 () Int)

(assert (=> bs!1029366 (= (= (ListMap!4350 Nil!51632) lt!1795327) (= lambda!194427 lambda!194400))))

(declare-fun bs!1029367 () Bool)

(assert (= bs!1029367 (and b!4633875 b!4633831)))

(assert (=> bs!1029367 (= lambda!194427 lambda!194407)))

(declare-fun bs!1029368 () Bool)

(assert (= bs!1029368 (and b!4633875 b!4633852)))

(assert (=> bs!1029368 (= lambda!194427 lambda!194417)))

(declare-fun bs!1029369 () Bool)

(assert (= bs!1029369 (and b!4633875 d!1460690)))

(assert (=> bs!1029369 (= (= (ListMap!4350 Nil!51632) lt!1795358) (= lambda!194427 lambda!194410))))

(declare-fun bs!1029370 () Bool)

(assert (= bs!1029370 (and b!4633875 b!4633819)))

(assert (=> bs!1029370 (= (= (ListMap!4350 Nil!51632) lt!1795331) (= lambda!194427 lambda!194395))))

(assert (=> bs!1029368 (= (= (ListMap!4350 Nil!51632) lt!1795409) (= lambda!194427 lambda!194418))))

(declare-fun bs!1029371 () Bool)

(assert (= bs!1029371 (and b!4633875 b!4633853)))

(assert (=> bs!1029371 (= lambda!194427 lambda!194416)))

(declare-fun bs!1029372 () Bool)

(assert (= bs!1029372 (and b!4633875 b!4633820)))

(assert (=> bs!1029372 (= lambda!194427 lambda!194391)))

(assert (=> bs!1029370 (= lambda!194427 lambda!194394)))

(declare-fun bs!1029373 () Bool)

(assert (= bs!1029373 (and b!4633875 b!4633830)))

(assert (=> bs!1029373 (= (= (ListMap!4350 Nil!51632) lt!1795362) (= lambda!194427 lambda!194409))))

(declare-fun bs!1029374 () Bool)

(assert (= bs!1029374 (and b!4633875 d!1460702)))

(assert (=> bs!1029374 (= (= (ListMap!4350 Nil!51632) lt!1795405) (= lambda!194427 lambda!194419))))

(declare-fun bs!1029375 () Bool)

(assert (= bs!1029375 (and b!4633875 b!4633876)))

(assert (=> bs!1029375 (= lambda!194427 lambda!194425)))

(assert (=> bs!1029373 (= lambda!194427 lambda!194408)))

(assert (=> b!4633875 true))

(declare-fun lt!1795471 () ListMap!4349)

(declare-fun lambda!194429 () Int)

(assert (=> bs!1029366 (= (= lt!1795471 lt!1795327) (= lambda!194429 lambda!194400))))

(assert (=> bs!1029367 (= (= lt!1795471 (ListMap!4350 Nil!51632)) (= lambda!194429 lambda!194407))))

(assert (=> b!4633875 (= (= lt!1795471 (ListMap!4350 Nil!51632)) (= lambda!194429 lambda!194427))))

(assert (=> bs!1029368 (= (= lt!1795471 (ListMap!4350 Nil!51632)) (= lambda!194429 lambda!194417))))

(assert (=> bs!1029369 (= (= lt!1795471 lt!1795358) (= lambda!194429 lambda!194410))))

(assert (=> bs!1029370 (= (= lt!1795471 lt!1795331) (= lambda!194429 lambda!194395))))

(assert (=> bs!1029368 (= (= lt!1795471 lt!1795409) (= lambda!194429 lambda!194418))))

(assert (=> bs!1029371 (= (= lt!1795471 (ListMap!4350 Nil!51632)) (= lambda!194429 lambda!194416))))

(assert (=> bs!1029372 (= (= lt!1795471 (ListMap!4350 Nil!51632)) (= lambda!194429 lambda!194391))))

(assert (=> bs!1029370 (= (= lt!1795471 (ListMap!4350 Nil!51632)) (= lambda!194429 lambda!194394))))

(assert (=> bs!1029373 (= (= lt!1795471 lt!1795362) (= lambda!194429 lambda!194409))))

(assert (=> bs!1029374 (= (= lt!1795471 lt!1795405) (= lambda!194429 lambda!194419))))

(assert (=> bs!1029375 (= (= lt!1795471 (ListMap!4350 Nil!51632)) (= lambda!194429 lambda!194425))))

(assert (=> bs!1029373 (= (= lt!1795471 (ListMap!4350 Nil!51632)) (= lambda!194429 lambda!194408))))

(assert (=> b!4633875 true))

(declare-fun bs!1029382 () Bool)

(declare-fun d!1460726 () Bool)

(assert (= bs!1029382 (and d!1460726 b!4633875)))

(declare-fun lt!1795467 () ListMap!4349)

(declare-fun lambda!194430 () Int)

(assert (=> bs!1029382 (= (= lt!1795467 lt!1795471) (= lambda!194430 lambda!194429))))

(declare-fun bs!1029383 () Bool)

(assert (= bs!1029383 (and d!1460726 d!1460662)))

(assert (=> bs!1029383 (= (= lt!1795467 lt!1795327) (= lambda!194430 lambda!194400))))

(declare-fun bs!1029384 () Bool)

(assert (= bs!1029384 (and d!1460726 b!4633831)))

(assert (=> bs!1029384 (= (= lt!1795467 (ListMap!4350 Nil!51632)) (= lambda!194430 lambda!194407))))

(assert (=> bs!1029382 (= (= lt!1795467 (ListMap!4350 Nil!51632)) (= lambda!194430 lambda!194427))))

(declare-fun bs!1029385 () Bool)

(assert (= bs!1029385 (and d!1460726 b!4633852)))

(assert (=> bs!1029385 (= (= lt!1795467 (ListMap!4350 Nil!51632)) (= lambda!194430 lambda!194417))))

(declare-fun bs!1029386 () Bool)

(assert (= bs!1029386 (and d!1460726 d!1460690)))

(assert (=> bs!1029386 (= (= lt!1795467 lt!1795358) (= lambda!194430 lambda!194410))))

(declare-fun bs!1029387 () Bool)

(assert (= bs!1029387 (and d!1460726 b!4633819)))

(assert (=> bs!1029387 (= (= lt!1795467 lt!1795331) (= lambda!194430 lambda!194395))))

(assert (=> bs!1029385 (= (= lt!1795467 lt!1795409) (= lambda!194430 lambda!194418))))

(declare-fun bs!1029388 () Bool)

(assert (= bs!1029388 (and d!1460726 b!4633853)))

(assert (=> bs!1029388 (= (= lt!1795467 (ListMap!4350 Nil!51632)) (= lambda!194430 lambda!194416))))

(declare-fun bs!1029389 () Bool)

(assert (= bs!1029389 (and d!1460726 b!4633820)))

(assert (=> bs!1029389 (= (= lt!1795467 (ListMap!4350 Nil!51632)) (= lambda!194430 lambda!194391))))

(assert (=> bs!1029387 (= (= lt!1795467 (ListMap!4350 Nil!51632)) (= lambda!194430 lambda!194394))))

(declare-fun bs!1029390 () Bool)

(assert (= bs!1029390 (and d!1460726 b!4633830)))

(assert (=> bs!1029390 (= (= lt!1795467 lt!1795362) (= lambda!194430 lambda!194409))))

(declare-fun bs!1029391 () Bool)

(assert (= bs!1029391 (and d!1460726 d!1460702)))

(assert (=> bs!1029391 (= (= lt!1795467 lt!1795405) (= lambda!194430 lambda!194419))))

(declare-fun bs!1029392 () Bool)

(assert (= bs!1029392 (and d!1460726 b!4633876)))

(assert (=> bs!1029392 (= (= lt!1795467 (ListMap!4350 Nil!51632)) (= lambda!194430 lambda!194425))))

(assert (=> bs!1029390 (= (= lt!1795467 (ListMap!4350 Nil!51632)) (= lambda!194430 lambda!194408))))

(assert (=> d!1460726 true))

(declare-fun b!4633872 () Bool)

(declare-fun e!2890704 () Bool)

(assert (=> b!4633872 (= e!2890704 (forall!10884 (toList!5046 (ListMap!4350 Nil!51632)) lambda!194429))))

(declare-fun b!4633873 () Bool)

(declare-fun e!2890702 () Bool)

(assert (=> b!4633873 (= e!2890702 (invariantList!1234 (toList!5046 lt!1795467)))))

(declare-fun bm!323381 () Bool)

(declare-fun c!793141 () Bool)

(declare-fun call!323387 () Bool)

(assert (=> bm!323381 (= call!323387 (forall!10884 (ite c!793141 (toList!5046 (ListMap!4350 Nil!51632)) (t!358818 lt!1795053)) (ite c!793141 lambda!194425 lambda!194429)))))

(declare-fun bm!323382 () Bool)

(declare-fun call!323386 () Bool)

(assert (=> bm!323382 (= call!323386 (forall!10884 (ite c!793141 (toList!5046 (ListMap!4350 Nil!51632)) lt!1795053) (ite c!793141 lambda!194425 lambda!194429)))))

(declare-fun b!4633874 () Bool)

(declare-fun res!1944709 () Bool)

(assert (=> b!4633874 (=> (not res!1944709) (not e!2890702))))

(assert (=> b!4633874 (= res!1944709 (forall!10884 (toList!5046 (ListMap!4350 Nil!51632)) lambda!194430))))

(assert (=> d!1460726 e!2890702))

(declare-fun res!1944711 () Bool)

(assert (=> d!1460726 (=> (not res!1944711) (not e!2890702))))

(assert (=> d!1460726 (= res!1944711 (forall!10884 lt!1795053 lambda!194430))))

(declare-fun e!2890703 () ListMap!4349)

(assert (=> d!1460726 (= lt!1795467 e!2890703)))

(assert (=> d!1460726 (= c!793141 ((_ is Nil!51632) lt!1795053))))

(assert (=> d!1460726 (noDuplicateKeys!1540 lt!1795053)))

(assert (=> d!1460726 (= (addToMapMapFromBucket!1001 lt!1795053 (ListMap!4350 Nil!51632)) lt!1795467)))

(assert (=> b!4633875 (= e!2890703 lt!1795471)))

(declare-fun lt!1795454 () ListMap!4349)

(assert (=> b!4633875 (= lt!1795454 (+!1906 (ListMap!4350 Nil!51632) (h!57712 lt!1795053)))))

(assert (=> b!4633875 (= lt!1795471 (addToMapMapFromBucket!1001 (t!358818 lt!1795053) (+!1906 (ListMap!4350 Nil!51632) (h!57712 lt!1795053))))))

(declare-fun lt!1795464 () Unit!113879)

(declare-fun call!323388 () Unit!113879)

(assert (=> b!4633875 (= lt!1795464 call!323388)))

(assert (=> b!4633875 (forall!10884 (toList!5046 (ListMap!4350 Nil!51632)) lambda!194427)))

(declare-fun lt!1795470 () Unit!113879)

(assert (=> b!4633875 (= lt!1795470 lt!1795464)))

(assert (=> b!4633875 (forall!10884 (toList!5046 lt!1795454) lambda!194429)))

(declare-fun lt!1795462 () Unit!113879)

(declare-fun Unit!113956 () Unit!113879)

(assert (=> b!4633875 (= lt!1795462 Unit!113956)))

(assert (=> b!4633875 call!323387))

(declare-fun lt!1795455 () Unit!113879)

(declare-fun Unit!113957 () Unit!113879)

(assert (=> b!4633875 (= lt!1795455 Unit!113957)))

(declare-fun lt!1795451 () Unit!113879)

(declare-fun Unit!113958 () Unit!113879)

(assert (=> b!4633875 (= lt!1795451 Unit!113958)))

(declare-fun lt!1795469 () Unit!113879)

(assert (=> b!4633875 (= lt!1795469 (forallContained!3116 (toList!5046 lt!1795454) lambda!194429 (h!57712 lt!1795053)))))

(assert (=> b!4633875 (contains!14741 lt!1795454 (_1!29597 (h!57712 lt!1795053)))))

(declare-fun lt!1795460 () Unit!113879)

(declare-fun Unit!113959 () Unit!113879)

(assert (=> b!4633875 (= lt!1795460 Unit!113959)))

(assert (=> b!4633875 (contains!14741 lt!1795471 (_1!29597 (h!57712 lt!1795053)))))

(declare-fun lt!1795456 () Unit!113879)

(declare-fun Unit!113960 () Unit!113879)

(assert (=> b!4633875 (= lt!1795456 Unit!113960)))

(assert (=> b!4633875 call!323386))

(declare-fun lt!1795453 () Unit!113879)

(declare-fun Unit!113961 () Unit!113879)

(assert (=> b!4633875 (= lt!1795453 Unit!113961)))

(assert (=> b!4633875 (forall!10884 (toList!5046 lt!1795454) lambda!194429)))

(declare-fun lt!1795465 () Unit!113879)

(declare-fun Unit!113962 () Unit!113879)

(assert (=> b!4633875 (= lt!1795465 Unit!113962)))

(declare-fun lt!1795463 () Unit!113879)

(declare-fun Unit!113963 () Unit!113879)

(assert (=> b!4633875 (= lt!1795463 Unit!113963)))

(declare-fun lt!1795461 () Unit!113879)

(assert (=> b!4633875 (= lt!1795461 (addForallContainsKeyThenBeforeAdding!535 (ListMap!4350 Nil!51632) lt!1795471 (_1!29597 (h!57712 lt!1795053)) (_2!29597 (h!57712 lt!1795053))))))

(assert (=> b!4633875 (forall!10884 (toList!5046 (ListMap!4350 Nil!51632)) lambda!194429)))

(declare-fun lt!1795452 () Unit!113879)

(assert (=> b!4633875 (= lt!1795452 lt!1795461)))

(assert (=> b!4633875 (forall!10884 (toList!5046 (ListMap!4350 Nil!51632)) lambda!194429)))

(declare-fun lt!1795459 () Unit!113879)

(declare-fun Unit!113964 () Unit!113879)

(assert (=> b!4633875 (= lt!1795459 Unit!113964)))

(declare-fun res!1944710 () Bool)

(assert (=> b!4633875 (= res!1944710 (forall!10884 lt!1795053 lambda!194429))))

(assert (=> b!4633875 (=> (not res!1944710) (not e!2890704))))

(assert (=> b!4633875 e!2890704))

(declare-fun lt!1795466 () Unit!113879)

(declare-fun Unit!113965 () Unit!113879)

(assert (=> b!4633875 (= lt!1795466 Unit!113965)))

(declare-fun bm!323383 () Bool)

(assert (=> bm!323383 (= call!323388 (lemmaContainsAllItsOwnKeys!536 (ListMap!4350 Nil!51632)))))

(assert (=> b!4633876 (= e!2890703 (ListMap!4350 Nil!51632))))

(declare-fun lt!1795468 () Unit!113879)

(assert (=> b!4633876 (= lt!1795468 call!323388)))

(assert (=> b!4633876 call!323387))

(declare-fun lt!1795458 () Unit!113879)

(assert (=> b!4633876 (= lt!1795458 lt!1795468)))

(assert (=> b!4633876 call!323386))

(declare-fun lt!1795457 () Unit!113879)

(declare-fun Unit!113966 () Unit!113879)

(assert (=> b!4633876 (= lt!1795457 Unit!113966)))

(assert (= (and d!1460726 c!793141) b!4633876))

(assert (= (and d!1460726 (not c!793141)) b!4633875))

(assert (= (and b!4633875 res!1944710) b!4633872))

(assert (= (or b!4633876 b!4633875) bm!323383))

(assert (= (or b!4633876 b!4633875) bm!323381))

(assert (= (or b!4633876 b!4633875) bm!323382))

(assert (= (and d!1460726 res!1944711) b!4633874))

(assert (= (and b!4633874 res!1944709) b!4633873))

(declare-fun m!5487401 () Bool)

(assert (=> b!4633874 m!5487401))

(declare-fun m!5487409 () Bool)

(assert (=> bm!323381 m!5487409))

(declare-fun m!5487411 () Bool)

(assert (=> bm!323382 m!5487411))

(assert (=> bm!323383 m!5487127))

(declare-fun m!5487413 () Bool)

(assert (=> d!1460726 m!5487413))

(assert (=> d!1460726 m!5487239))

(declare-fun m!5487415 () Bool)

(assert (=> b!4633875 m!5487415))

(declare-fun m!5487417 () Bool)

(assert (=> b!4633875 m!5487417))

(declare-fun m!5487419 () Bool)

(assert (=> b!4633875 m!5487419))

(declare-fun m!5487421 () Bool)

(assert (=> b!4633875 m!5487421))

(declare-fun m!5487423 () Bool)

(assert (=> b!4633875 m!5487423))

(assert (=> b!4633875 m!5487417))

(declare-fun m!5487427 () Bool)

(assert (=> b!4633875 m!5487427))

(declare-fun m!5487429 () Bool)

(assert (=> b!4633875 m!5487429))

(declare-fun m!5487433 () Bool)

(assert (=> b!4633875 m!5487433))

(declare-fun m!5487435 () Bool)

(assert (=> b!4633875 m!5487435))

(declare-fun m!5487437 () Bool)

(assert (=> b!4633875 m!5487437))

(assert (=> b!4633875 m!5487421))

(assert (=> b!4633875 m!5487415))

(declare-fun m!5487439 () Bool)

(assert (=> b!4633873 m!5487439))

(assert (=> b!4633872 m!5487415))

(assert (=> b!4633594 d!1460726))

(declare-fun d!1460738 () Bool)

(assert (=> d!1460738 (= (-!580 (+!1906 lt!1795059 (tuple2!52607 (_1!29597 (h!57712 oldBucket!40)) (_2!29597 (h!57712 oldBucket!40)))) key!4968) (+!1906 (-!580 lt!1795059 key!4968) (tuple2!52607 (_1!29597 (h!57712 oldBucket!40)) (_2!29597 (h!57712 oldBucket!40)))))))

(declare-fun lt!1795512 () Unit!113879)

(declare-fun choose!31601 (ListMap!4349 K!13000 V!13246 K!13000) Unit!113879)

(assert (=> d!1460738 (= lt!1795512 (choose!31601 lt!1795059 (_1!29597 (h!57712 oldBucket!40)) (_2!29597 (h!57712 oldBucket!40)) key!4968))))

(assert (=> d!1460738 (not (= (_1!29597 (h!57712 oldBucket!40)) key!4968))))

(assert (=> d!1460738 (= (addRemoveCommutativeForDiffKeys!35 lt!1795059 (_1!29597 (h!57712 oldBucket!40)) (_2!29597 (h!57712 oldBucket!40)) key!4968) lt!1795512)))

(declare-fun bs!1029424 () Bool)

(assert (= bs!1029424 d!1460738))

(declare-fun m!5487495 () Bool)

(assert (=> bs!1029424 m!5487495))

(assert (=> bs!1029424 m!5487495))

(declare-fun m!5487497 () Bool)

(assert (=> bs!1029424 m!5487497))

(declare-fun m!5487499 () Bool)

(assert (=> bs!1029424 m!5487499))

(assert (=> bs!1029424 m!5486779))

(declare-fun m!5487501 () Bool)

(assert (=> bs!1029424 m!5487501))

(assert (=> bs!1029424 m!5486779))

(assert (=> b!4633605 d!1460738))

(declare-fun d!1460746 () Bool)

(declare-fun e!2890723 () Bool)

(assert (=> d!1460746 e!2890723))

(declare-fun res!1944727 () Bool)

(assert (=> d!1460746 (=> (not res!1944727) (not e!2890723))))

(declare-fun lt!1795537 () ListMap!4349)

(assert (=> d!1460746 (= res!1944727 (not (contains!14741 lt!1795537 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!283 (List!51756 K!13000) List!51756)

(assert (=> d!1460746 (= lt!1795537 (ListMap!4350 (removePresrvNoDuplicatedKeys!283 (toList!5046 lt!1795045) key!4968)))))

(assert (=> d!1460746 (= (-!580 lt!1795045 key!4968) lt!1795537)))

(declare-fun b!4633906 () Bool)

(declare-fun content!8888 (List!51759) (InoxSet K!13000))

(assert (=> b!4633906 (= e!2890723 (= ((_ map and) (content!8888 (keys!18218 lt!1795045)) ((_ map not) (store ((as const (Array K!13000 Bool)) false) key!4968 true))) (content!8888 (keys!18218 lt!1795537))))))

(assert (= (and d!1460746 res!1944727) b!4633906))

(declare-fun m!5487511 () Bool)

(assert (=> d!1460746 m!5487511))

(declare-fun m!5487513 () Bool)

(assert (=> d!1460746 m!5487513))

(declare-fun m!5487515 () Bool)

(assert (=> b!4633906 m!5487515))

(declare-fun m!5487517 () Bool)

(assert (=> b!4633906 m!5487517))

(declare-fun m!5487519 () Bool)

(assert (=> b!4633906 m!5487519))

(assert (=> b!4633906 m!5487517))

(declare-fun m!5487521 () Bool)

(assert (=> b!4633906 m!5487521))

(assert (=> b!4633906 m!5487515))

(declare-fun m!5487523 () Bool)

(assert (=> b!4633906 m!5487523))

(assert (=> b!4633605 d!1460746))

(declare-fun d!1460750 () Bool)

(declare-fun e!2890724 () Bool)

(assert (=> d!1460750 e!2890724))

(declare-fun res!1944728 () Bool)

(assert (=> d!1460750 (=> (not res!1944728) (not e!2890724))))

(declare-fun lt!1795538 () ListMap!4349)

(assert (=> d!1460750 (= res!1944728 (not (contains!14741 lt!1795538 key!4968)))))

(assert (=> d!1460750 (= lt!1795538 (ListMap!4350 (removePresrvNoDuplicatedKeys!283 (toList!5046 lt!1795059) key!4968)))))

(assert (=> d!1460750 (= (-!580 lt!1795059 key!4968) lt!1795538)))

(declare-fun b!4633907 () Bool)

(assert (=> b!4633907 (= e!2890724 (= ((_ map and) (content!8888 (keys!18218 lt!1795059)) ((_ map not) (store ((as const (Array K!13000 Bool)) false) key!4968 true))) (content!8888 (keys!18218 lt!1795538))))))

(assert (= (and d!1460750 res!1944728) b!4633907))

(declare-fun m!5487525 () Bool)

(assert (=> d!1460750 m!5487525))

(declare-fun m!5487527 () Bool)

(assert (=> d!1460750 m!5487527))

(declare-fun m!5487529 () Bool)

(assert (=> b!4633907 m!5487529))

(assert (=> b!4633907 m!5487293))

(assert (=> b!4633907 m!5487519))

(assert (=> b!4633907 m!5487293))

(declare-fun m!5487531 () Bool)

(assert (=> b!4633907 m!5487531))

(assert (=> b!4633907 m!5487529))

(declare-fun m!5487533 () Bool)

(assert (=> b!4633907 m!5487533))

(assert (=> b!4633605 d!1460750))

(declare-fun d!1460752 () Bool)

(declare-fun e!2890725 () Bool)

(assert (=> d!1460752 e!2890725))

(declare-fun res!1944730 () Bool)

(assert (=> d!1460752 (=> (not res!1944730) (not e!2890725))))

(declare-fun lt!1795541 () ListMap!4349)

(assert (=> d!1460752 (= res!1944730 (contains!14741 lt!1795541 (_1!29597 (h!57712 oldBucket!40))))))

(declare-fun lt!1795542 () List!51756)

(assert (=> d!1460752 (= lt!1795541 (ListMap!4350 lt!1795542))))

(declare-fun lt!1795539 () Unit!113879)

(declare-fun lt!1795540 () Unit!113879)

(assert (=> d!1460752 (= lt!1795539 lt!1795540)))

(assert (=> d!1460752 (= (getValueByKey!1511 lt!1795542 (_1!29597 (h!57712 oldBucket!40))) (Some!11684 (_2!29597 (h!57712 oldBucket!40))))))

(assert (=> d!1460752 (= lt!1795540 (lemmaContainsTupThenGetReturnValue!878 lt!1795542 (_1!29597 (h!57712 oldBucket!40)) (_2!29597 (h!57712 oldBucket!40))))))

(assert (=> d!1460752 (= lt!1795542 (insertNoDuplicatedKeys!386 (toList!5046 lt!1795059) (_1!29597 (h!57712 oldBucket!40)) (_2!29597 (h!57712 oldBucket!40))))))

(assert (=> d!1460752 (= (+!1906 lt!1795059 (h!57712 oldBucket!40)) lt!1795541)))

(declare-fun b!4633908 () Bool)

(declare-fun res!1944729 () Bool)

(assert (=> b!4633908 (=> (not res!1944729) (not e!2890725))))

(assert (=> b!4633908 (= res!1944729 (= (getValueByKey!1511 (toList!5046 lt!1795541) (_1!29597 (h!57712 oldBucket!40))) (Some!11684 (_2!29597 (h!57712 oldBucket!40)))))))

(declare-fun b!4633909 () Bool)

(assert (=> b!4633909 (= e!2890725 (contains!14745 (toList!5046 lt!1795541) (h!57712 oldBucket!40)))))

(assert (= (and d!1460752 res!1944730) b!4633908))

(assert (= (and b!4633908 res!1944729) b!4633909))

(declare-fun m!5487535 () Bool)

(assert (=> d!1460752 m!5487535))

(declare-fun m!5487537 () Bool)

(assert (=> d!1460752 m!5487537))

(declare-fun m!5487539 () Bool)

(assert (=> d!1460752 m!5487539))

(declare-fun m!5487541 () Bool)

(assert (=> d!1460752 m!5487541))

(declare-fun m!5487543 () Bool)

(assert (=> b!4633908 m!5487543))

(declare-fun m!5487545 () Bool)

(assert (=> b!4633909 m!5487545))

(assert (=> b!4633605 d!1460752))

(declare-fun d!1460754 () Bool)

(assert (=> d!1460754 (eq!855 (extractMap!1596 (Cons!51633 (tuple2!52609 hash!414 lt!1795055) Nil!51633)) (-!580 (extractMap!1596 (Cons!51633 (tuple2!52609 hash!414 (t!358818 oldBucket!40)) Nil!51633)) key!4968))))

(declare-fun lt!1795570 () Unit!113879)

(declare-fun choose!31602 ((_ BitVec 64) List!51756 List!51756 K!13000 Hashable!5937) Unit!113879)

(assert (=> d!1460754 (= lt!1795570 (choose!31602 hash!414 (t!358818 oldBucket!40) lt!1795055 key!4968 hashF!1389))))

(assert (=> d!1460754 (noDuplicateKeys!1540 (t!358818 oldBucket!40))))

(assert (=> d!1460754 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!142 hash!414 (t!358818 oldBucket!40) lt!1795055 key!4968 hashF!1389) lt!1795570)))

(declare-fun bs!1029471 () Bool)

(assert (= bs!1029471 d!1460754))

(declare-fun m!5487585 () Bool)

(assert (=> bs!1029471 m!5487585))

(assert (=> bs!1029471 m!5486721))

(declare-fun m!5487587 () Bool)

(assert (=> bs!1029471 m!5487587))

(declare-fun m!5487589 () Bool)

(assert (=> bs!1029471 m!5487589))

(declare-fun m!5487591 () Bool)

(assert (=> bs!1029471 m!5487591))

(assert (=> bs!1029471 m!5487587))

(declare-fun m!5487593 () Bool)

(assert (=> bs!1029471 m!5487593))

(assert (=> bs!1029471 m!5486721))

(assert (=> bs!1029471 m!5487591))

(assert (=> b!4633605 d!1460754))

(declare-fun d!1460762 () Bool)

(assert (=> d!1460762 (= (eq!855 lt!1795051 lt!1795038) (= (content!8887 (toList!5046 lt!1795051)) (content!8887 (toList!5046 lt!1795038))))))

(declare-fun bs!1029478 () Bool)

(assert (= bs!1029478 d!1460762))

(declare-fun m!5487595 () Bool)

(assert (=> bs!1029478 m!5487595))

(declare-fun m!5487597 () Bool)

(assert (=> bs!1029478 m!5487597))

(assert (=> b!4633605 d!1460762))

(declare-fun d!1460764 () Bool)

(declare-fun e!2890729 () Bool)

(assert (=> d!1460764 e!2890729))

(declare-fun res!1944735 () Bool)

(assert (=> d!1460764 (=> (not res!1944735) (not e!2890729))))

(declare-fun lt!1795573 () ListMap!4349)

(assert (=> d!1460764 (= res!1944735 (contains!14741 lt!1795573 (_1!29597 (h!57712 oldBucket!40))))))

(declare-fun lt!1795574 () List!51756)

(assert (=> d!1460764 (= lt!1795573 (ListMap!4350 lt!1795574))))

(declare-fun lt!1795571 () Unit!113879)

(declare-fun lt!1795572 () Unit!113879)

(assert (=> d!1460764 (= lt!1795571 lt!1795572)))

(assert (=> d!1460764 (= (getValueByKey!1511 lt!1795574 (_1!29597 (h!57712 oldBucket!40))) (Some!11684 (_2!29597 (h!57712 oldBucket!40))))))

(assert (=> d!1460764 (= lt!1795572 (lemmaContainsTupThenGetReturnValue!878 lt!1795574 (_1!29597 (h!57712 oldBucket!40)) (_2!29597 (h!57712 oldBucket!40))))))

(assert (=> d!1460764 (= lt!1795574 (insertNoDuplicatedKeys!386 (toList!5046 lt!1795038) (_1!29597 (h!57712 oldBucket!40)) (_2!29597 (h!57712 oldBucket!40))))))

(assert (=> d!1460764 (= (+!1906 lt!1795038 (h!57712 oldBucket!40)) lt!1795573)))

(declare-fun b!4633915 () Bool)

(declare-fun res!1944734 () Bool)

(assert (=> b!4633915 (=> (not res!1944734) (not e!2890729))))

(assert (=> b!4633915 (= res!1944734 (= (getValueByKey!1511 (toList!5046 lt!1795573) (_1!29597 (h!57712 oldBucket!40))) (Some!11684 (_2!29597 (h!57712 oldBucket!40)))))))

(declare-fun b!4633916 () Bool)

(assert (=> b!4633916 (= e!2890729 (contains!14745 (toList!5046 lt!1795573) (h!57712 oldBucket!40)))))

(assert (= (and d!1460764 res!1944735) b!4633915))

(assert (= (and b!4633915 res!1944734) b!4633916))

(declare-fun m!5487599 () Bool)

(assert (=> d!1460764 m!5487599))

(declare-fun m!5487601 () Bool)

(assert (=> d!1460764 m!5487601))

(declare-fun m!5487603 () Bool)

(assert (=> d!1460764 m!5487603))

(declare-fun m!5487605 () Bool)

(assert (=> d!1460764 m!5487605))

(declare-fun m!5487607 () Bool)

(assert (=> b!4633915 m!5487607))

(declare-fun m!5487609 () Bool)

(assert (=> b!4633916 m!5487609))

(assert (=> b!4633605 d!1460764))

(declare-fun d!1460766 () Bool)

(declare-fun e!2890730 () Bool)

(assert (=> d!1460766 e!2890730))

(declare-fun res!1944736 () Bool)

(assert (=> d!1460766 (=> (not res!1944736) (not e!2890730))))

(declare-fun lt!1795575 () ListMap!4349)

(assert (=> d!1460766 (= res!1944736 (not (contains!14741 lt!1795575 key!4968)))))

(assert (=> d!1460766 (= lt!1795575 (ListMap!4350 (removePresrvNoDuplicatedKeys!283 (toList!5046 (+!1906 lt!1795059 (h!57712 oldBucket!40))) key!4968)))))

(assert (=> d!1460766 (= (-!580 (+!1906 lt!1795059 (h!57712 oldBucket!40)) key!4968) lt!1795575)))

(declare-fun b!4633917 () Bool)

(assert (=> b!4633917 (= e!2890730 (= ((_ map and) (content!8888 (keys!18218 (+!1906 lt!1795059 (h!57712 oldBucket!40)))) ((_ map not) (store ((as const (Array K!13000 Bool)) false) key!4968 true))) (content!8888 (keys!18218 lt!1795575))))))

(assert (= (and d!1460766 res!1944736) b!4633917))

(declare-fun m!5487611 () Bool)

(assert (=> d!1460766 m!5487611))

(declare-fun m!5487613 () Bool)

(assert (=> d!1460766 m!5487613))

(declare-fun m!5487615 () Bool)

(assert (=> b!4633917 m!5487615))

(assert (=> b!4633917 m!5486775))

(declare-fun m!5487617 () Bool)

(assert (=> b!4633917 m!5487617))

(assert (=> b!4633917 m!5487519))

(assert (=> b!4633917 m!5487617))

(declare-fun m!5487619 () Bool)

(assert (=> b!4633917 m!5487619))

(assert (=> b!4633917 m!5487615))

(declare-fun m!5487621 () Bool)

(assert (=> b!4633917 m!5487621))

(assert (=> b!4633605 d!1460766))

(declare-fun d!1460768 () Bool)

(assert (=> d!1460768 (= (eq!855 lt!1795062 lt!1795064) (= (content!8887 (toList!5046 lt!1795062)) (content!8887 (toList!5046 lt!1795064))))))

(declare-fun bs!1029489 () Bool)

(assert (= bs!1029489 d!1460768))

(declare-fun m!5487623 () Bool)

(assert (=> bs!1029489 m!5487623))

(declare-fun m!5487625 () Bool)

(assert (=> bs!1029489 m!5487625))

(assert (=> b!4633596 d!1460768))

(declare-fun d!1460770 () Bool)

(assert (=> d!1460770 (= (eq!855 lt!1795044 lt!1795062) (= (content!8887 (toList!5046 lt!1795044)) (content!8887 (toList!5046 lt!1795062))))))

(declare-fun bs!1029491 () Bool)

(assert (= bs!1029491 d!1460770))

(declare-fun m!5487627 () Bool)

(assert (=> bs!1029491 m!5487627))

(assert (=> bs!1029491 m!5487623))

(assert (=> b!4633596 d!1460770))

(declare-fun d!1460772 () Bool)

(declare-fun e!2890731 () Bool)

(assert (=> d!1460772 e!2890731))

(declare-fun res!1944737 () Bool)

(assert (=> d!1460772 (=> (not res!1944737) (not e!2890731))))

(declare-fun lt!1795576 () ListMap!4349)

(assert (=> d!1460772 (= res!1944737 (not (contains!14741 lt!1795576 key!4968)))))

(assert (=> d!1460772 (= lt!1795576 (ListMap!4350 (removePresrvNoDuplicatedKeys!283 (toList!5046 lt!1795046) key!4968)))))

(assert (=> d!1460772 (= (-!580 lt!1795046 key!4968) lt!1795576)))

(declare-fun b!4633918 () Bool)

(assert (=> b!4633918 (= e!2890731 (= ((_ map and) (content!8888 (keys!18218 lt!1795046)) ((_ map not) (store ((as const (Array K!13000 Bool)) false) key!4968 true))) (content!8888 (keys!18218 lt!1795576))))))

(assert (= (and d!1460772 res!1944737) b!4633918))

(declare-fun m!5487629 () Bool)

(assert (=> d!1460772 m!5487629))

(declare-fun m!5487631 () Bool)

(assert (=> d!1460772 m!5487631))

(declare-fun m!5487633 () Bool)

(assert (=> b!4633918 m!5487633))

(assert (=> b!4633918 m!5486847))

(assert (=> b!4633918 m!5487519))

(assert (=> b!4633918 m!5486847))

(declare-fun m!5487635 () Bool)

(assert (=> b!4633918 m!5487635))

(assert (=> b!4633918 m!5487633))

(declare-fun m!5487637 () Bool)

(assert (=> b!4633918 m!5487637))

(assert (=> b!4633596 d!1460772))

(declare-fun d!1460774 () Bool)

(assert (=> d!1460774 (eq!855 (-!580 lt!1795045 key!4968) (-!580 lt!1795046 key!4968))))

(declare-fun lt!1795579 () Unit!113879)

(declare-fun choose!31603 (ListMap!4349 ListMap!4349 K!13000) Unit!113879)

(assert (=> d!1460774 (= lt!1795579 (choose!31603 lt!1795045 lt!1795046 key!4968))))

(assert (=> d!1460774 (eq!855 lt!1795045 lt!1795046)))

(assert (=> d!1460774 (= (lemmaRemovePreservesEq!36 lt!1795045 lt!1795046 key!4968) lt!1795579)))

(declare-fun bs!1029513 () Bool)

(assert (= bs!1029513 d!1460774))

(declare-fun m!5487671 () Bool)

(assert (=> bs!1029513 m!5487671))

(assert (=> bs!1029513 m!5486767))

(assert (=> bs!1029513 m!5486689))

(declare-fun m!5487675 () Bool)

(assert (=> bs!1029513 m!5487675))

(assert (=> bs!1029513 m!5486689))

(assert (=> bs!1029513 m!5486767))

(declare-fun m!5487679 () Bool)

(assert (=> bs!1029513 m!5487679))

(assert (=> b!4633596 d!1460774))

(declare-fun d!1460780 () Bool)

(declare-fun res!1944742 () Bool)

(declare-fun e!2890736 () Bool)

(assert (=> d!1460780 (=> res!1944742 e!2890736)))

(assert (=> d!1460780 (= res!1944742 (not ((_ is Cons!51632) oldBucket!40)))))

(assert (=> d!1460780 (= (noDuplicateKeys!1540 oldBucket!40) e!2890736)))

(declare-fun b!4633923 () Bool)

(declare-fun e!2890737 () Bool)

(assert (=> b!4633923 (= e!2890736 e!2890737)))

(declare-fun res!1944743 () Bool)

(assert (=> b!4633923 (=> (not res!1944743) (not e!2890737))))

(assert (=> b!4633923 (= res!1944743 (not (containsKey!2540 (t!358818 oldBucket!40) (_1!29597 (h!57712 oldBucket!40)))))))

(declare-fun b!4633924 () Bool)

(assert (=> b!4633924 (= e!2890737 (noDuplicateKeys!1540 (t!358818 oldBucket!40)))))

(assert (= (and d!1460780 (not res!1944742)) b!4633923))

(assert (= (and b!4633923 res!1944743) b!4633924))

(declare-fun m!5487685 () Bool)

(assert (=> b!4633923 m!5487685))

(assert (=> b!4633924 m!5487585))

(assert (=> start!465316 d!1460780))

(declare-fun d!1460786 () Bool)

(assert (=> d!1460786 (= (eq!855 lt!1795050 lt!1795064) (= (content!8887 (toList!5046 lt!1795050)) (content!8887 (toList!5046 lt!1795064))))))

(declare-fun bs!1029533 () Bool)

(assert (= bs!1029533 d!1460786))

(declare-fun m!5487687 () Bool)

(assert (=> bs!1029533 m!5487687))

(assert (=> bs!1029533 m!5487625))

(assert (=> b!4633606 d!1460786))

(declare-fun d!1460788 () Bool)

(assert (=> d!1460788 (= (eq!855 lt!1795041 (+!1906 lt!1795051 (h!57712 oldBucket!40))) (= (content!8887 (toList!5046 lt!1795041)) (content!8887 (toList!5046 (+!1906 lt!1795051 (h!57712 oldBucket!40))))))))

(declare-fun bs!1029534 () Bool)

(assert (= bs!1029534 d!1460788))

(declare-fun m!5487689 () Bool)

(assert (=> bs!1029534 m!5487689))

(declare-fun m!5487693 () Bool)

(assert (=> bs!1029534 m!5487693))

(assert (=> b!4633606 d!1460788))

(declare-fun d!1460790 () Bool)

(declare-fun e!2890739 () Bool)

(assert (=> d!1460790 e!2890739))

(declare-fun res!1944747 () Bool)

(assert (=> d!1460790 (=> (not res!1944747) (not e!2890739))))

(declare-fun lt!1795586 () ListMap!4349)

(assert (=> d!1460790 (= res!1944747 (contains!14741 lt!1795586 (_1!29597 (h!57712 oldBucket!40))))))

(declare-fun lt!1795587 () List!51756)

(assert (=> d!1460790 (= lt!1795586 (ListMap!4350 lt!1795587))))

(declare-fun lt!1795584 () Unit!113879)

(declare-fun lt!1795585 () Unit!113879)

(assert (=> d!1460790 (= lt!1795584 lt!1795585)))

(assert (=> d!1460790 (= (getValueByKey!1511 lt!1795587 (_1!29597 (h!57712 oldBucket!40))) (Some!11684 (_2!29597 (h!57712 oldBucket!40))))))

(assert (=> d!1460790 (= lt!1795585 (lemmaContainsTupThenGetReturnValue!878 lt!1795587 (_1!29597 (h!57712 oldBucket!40)) (_2!29597 (h!57712 oldBucket!40))))))

(assert (=> d!1460790 (= lt!1795587 (insertNoDuplicatedKeys!386 (toList!5046 lt!1795051) (_1!29597 (h!57712 oldBucket!40)) (_2!29597 (h!57712 oldBucket!40))))))

(assert (=> d!1460790 (= (+!1906 lt!1795051 (h!57712 oldBucket!40)) lt!1795586)))

(declare-fun b!4633927 () Bool)

(declare-fun res!1944746 () Bool)

(assert (=> b!4633927 (=> (not res!1944746) (not e!2890739))))

(assert (=> b!4633927 (= res!1944746 (= (getValueByKey!1511 (toList!5046 lt!1795586) (_1!29597 (h!57712 oldBucket!40))) (Some!11684 (_2!29597 (h!57712 oldBucket!40)))))))

(declare-fun b!4633928 () Bool)

(assert (=> b!4633928 (= e!2890739 (contains!14745 (toList!5046 lt!1795586) (h!57712 oldBucket!40)))))

(assert (= (and d!1460790 res!1944747) b!4633927))

(assert (= (and b!4633927 res!1944746) b!4633928))

(declare-fun m!5487705 () Bool)

(assert (=> d!1460790 m!5487705))

(declare-fun m!5487707 () Bool)

(assert (=> d!1460790 m!5487707))

(declare-fun m!5487709 () Bool)

(assert (=> d!1460790 m!5487709))

(declare-fun m!5487711 () Bool)

(assert (=> d!1460790 m!5487711))

(declare-fun m!5487713 () Bool)

(assert (=> b!4633927 m!5487713))

(declare-fun m!5487715 () Bool)

(assert (=> b!4633928 m!5487715))

(assert (=> b!4633606 d!1460790))

(declare-fun d!1460794 () Bool)

(assert (=> d!1460794 (eq!855 (+!1906 lt!1795038 (tuple2!52607 (_1!29597 (h!57712 oldBucket!40)) (_2!29597 (h!57712 oldBucket!40)))) (+!1906 lt!1795051 (tuple2!52607 (_1!29597 (h!57712 oldBucket!40)) (_2!29597 (h!57712 oldBucket!40)))))))

(declare-fun lt!1795592 () Unit!113879)

(declare-fun choose!31605 (ListMap!4349 ListMap!4349 K!13000 V!13246) Unit!113879)

(assert (=> d!1460794 (= lt!1795592 (choose!31605 lt!1795038 lt!1795051 (_1!29597 (h!57712 oldBucket!40)) (_2!29597 (h!57712 oldBucket!40))))))

(assert (=> d!1460794 (eq!855 lt!1795038 lt!1795051)))

(assert (=> d!1460794 (= (lemmaAddToEqMapsPreservesEq!52 lt!1795038 lt!1795051 (_1!29597 (h!57712 oldBucket!40)) (_2!29597 (h!57712 oldBucket!40))) lt!1795592)))

(declare-fun bs!1029554 () Bool)

(assert (= bs!1029554 d!1460794))

(declare-fun m!5487737 () Bool)

(assert (=> bs!1029554 m!5487737))

(declare-fun m!5487739 () Bool)

(assert (=> bs!1029554 m!5487739))

(declare-fun m!5487741 () Bool)

(assert (=> bs!1029554 m!5487741))

(declare-fun m!5487743 () Bool)

(assert (=> bs!1029554 m!5487743))

(assert (=> bs!1029554 m!5487737))

(assert (=> bs!1029554 m!5487739))

(declare-fun m!5487745 () Bool)

(assert (=> bs!1029554 m!5487745))

(assert (=> b!4633606 d!1460794))

(declare-fun bs!1029555 () Bool)

(declare-fun b!4633943 () Bool)

(assert (= bs!1029555 (and b!4633943 b!4633875)))

(declare-fun lambda!194448 () Int)

(assert (=> bs!1029555 (= (= lt!1795056 lt!1795471) (= lambda!194448 lambda!194429))))

(declare-fun bs!1029556 () Bool)

(assert (= bs!1029556 (and b!4633943 d!1460662)))

(assert (=> bs!1029556 (= (= lt!1795056 lt!1795327) (= lambda!194448 lambda!194400))))

(declare-fun bs!1029557 () Bool)

(assert (= bs!1029557 (and b!4633943 d!1460726)))

(assert (=> bs!1029557 (= (= lt!1795056 lt!1795467) (= lambda!194448 lambda!194430))))

(declare-fun bs!1029558 () Bool)

(assert (= bs!1029558 (and b!4633943 b!4633831)))

(assert (=> bs!1029558 (= (= lt!1795056 (ListMap!4350 Nil!51632)) (= lambda!194448 lambda!194407))))

(assert (=> bs!1029555 (= (= lt!1795056 (ListMap!4350 Nil!51632)) (= lambda!194448 lambda!194427))))

(declare-fun bs!1029559 () Bool)

(assert (= bs!1029559 (and b!4633943 b!4633852)))

(assert (=> bs!1029559 (= (= lt!1795056 (ListMap!4350 Nil!51632)) (= lambda!194448 lambda!194417))))

(declare-fun bs!1029560 () Bool)

(assert (= bs!1029560 (and b!4633943 d!1460690)))

(assert (=> bs!1029560 (= (= lt!1795056 lt!1795358) (= lambda!194448 lambda!194410))))

(declare-fun bs!1029561 () Bool)

(assert (= bs!1029561 (and b!4633943 b!4633819)))

(assert (=> bs!1029561 (= (= lt!1795056 lt!1795331) (= lambda!194448 lambda!194395))))

(assert (=> bs!1029559 (= (= lt!1795056 lt!1795409) (= lambda!194448 lambda!194418))))

(declare-fun bs!1029562 () Bool)

(assert (= bs!1029562 (and b!4633943 b!4633853)))

(assert (=> bs!1029562 (= (= lt!1795056 (ListMap!4350 Nil!51632)) (= lambda!194448 lambda!194416))))

(declare-fun bs!1029563 () Bool)

(assert (= bs!1029563 (and b!4633943 b!4633820)))

(assert (=> bs!1029563 (= (= lt!1795056 (ListMap!4350 Nil!51632)) (= lambda!194448 lambda!194391))))

(assert (=> bs!1029561 (= (= lt!1795056 (ListMap!4350 Nil!51632)) (= lambda!194448 lambda!194394))))

(declare-fun bs!1029564 () Bool)

(assert (= bs!1029564 (and b!4633943 b!4633830)))

(assert (=> bs!1029564 (= (= lt!1795056 lt!1795362) (= lambda!194448 lambda!194409))))

(declare-fun bs!1029565 () Bool)

(assert (= bs!1029565 (and b!4633943 d!1460702)))

(assert (=> bs!1029565 (= (= lt!1795056 lt!1795405) (= lambda!194448 lambda!194419))))

(declare-fun bs!1029566 () Bool)

(assert (= bs!1029566 (and b!4633943 b!4633876)))

(assert (=> bs!1029566 (= (= lt!1795056 (ListMap!4350 Nil!51632)) (= lambda!194448 lambda!194425))))

(assert (=> bs!1029564 (= (= lt!1795056 (ListMap!4350 Nil!51632)) (= lambda!194448 lambda!194408))))

(assert (=> b!4633943 true))

(declare-fun bs!1029567 () Bool)

(declare-fun b!4633942 () Bool)

(assert (= bs!1029567 (and b!4633942 b!4633875)))

(declare-fun lambda!194449 () Int)

(assert (=> bs!1029567 (= (= lt!1795056 lt!1795471) (= lambda!194449 lambda!194429))))

(declare-fun bs!1029568 () Bool)

(assert (= bs!1029568 (and b!4633942 d!1460662)))

(assert (=> bs!1029568 (= (= lt!1795056 lt!1795327) (= lambda!194449 lambda!194400))))

(declare-fun bs!1029569 () Bool)

(assert (= bs!1029569 (and b!4633942 d!1460726)))

(assert (=> bs!1029569 (= (= lt!1795056 lt!1795467) (= lambda!194449 lambda!194430))))

(assert (=> bs!1029567 (= (= lt!1795056 (ListMap!4350 Nil!51632)) (= lambda!194449 lambda!194427))))

(declare-fun bs!1029570 () Bool)

(assert (= bs!1029570 (and b!4633942 b!4633852)))

(assert (=> bs!1029570 (= (= lt!1795056 (ListMap!4350 Nil!51632)) (= lambda!194449 lambda!194417))))

(declare-fun bs!1029571 () Bool)

(assert (= bs!1029571 (and b!4633942 d!1460690)))

(assert (=> bs!1029571 (= (= lt!1795056 lt!1795358) (= lambda!194449 lambda!194410))))

(declare-fun bs!1029572 () Bool)

(assert (= bs!1029572 (and b!4633942 b!4633819)))

(assert (=> bs!1029572 (= (= lt!1795056 lt!1795331) (= lambda!194449 lambda!194395))))

(assert (=> bs!1029570 (= (= lt!1795056 lt!1795409) (= lambda!194449 lambda!194418))))

(declare-fun bs!1029573 () Bool)

(assert (= bs!1029573 (and b!4633942 b!4633853)))

(assert (=> bs!1029573 (= (= lt!1795056 (ListMap!4350 Nil!51632)) (= lambda!194449 lambda!194416))))

(declare-fun bs!1029574 () Bool)

(assert (= bs!1029574 (and b!4633942 b!4633820)))

(assert (=> bs!1029574 (= (= lt!1795056 (ListMap!4350 Nil!51632)) (= lambda!194449 lambda!194391))))

(declare-fun bs!1029575 () Bool)

(assert (= bs!1029575 (and b!4633942 b!4633943)))

(assert (=> bs!1029575 (= lambda!194449 lambda!194448)))

(declare-fun bs!1029576 () Bool)

(assert (= bs!1029576 (and b!4633942 b!4633831)))

(assert (=> bs!1029576 (= (= lt!1795056 (ListMap!4350 Nil!51632)) (= lambda!194449 lambda!194407))))

(assert (=> bs!1029572 (= (= lt!1795056 (ListMap!4350 Nil!51632)) (= lambda!194449 lambda!194394))))

(declare-fun bs!1029577 () Bool)

(assert (= bs!1029577 (and b!4633942 b!4633830)))

(assert (=> bs!1029577 (= (= lt!1795056 lt!1795362) (= lambda!194449 lambda!194409))))

(declare-fun bs!1029578 () Bool)

(assert (= bs!1029578 (and b!4633942 d!1460702)))

(assert (=> bs!1029578 (= (= lt!1795056 lt!1795405) (= lambda!194449 lambda!194419))))

(declare-fun bs!1029579 () Bool)

(assert (= bs!1029579 (and b!4633942 b!4633876)))

(assert (=> bs!1029579 (= (= lt!1795056 (ListMap!4350 Nil!51632)) (= lambda!194449 lambda!194425))))

(assert (=> bs!1029577 (= (= lt!1795056 (ListMap!4350 Nil!51632)) (= lambda!194449 lambda!194408))))

(assert (=> b!4633942 true))

(declare-fun lambda!194450 () Int)

(declare-fun lt!1795613 () ListMap!4349)

(assert (=> bs!1029567 (= (= lt!1795613 lt!1795471) (= lambda!194450 lambda!194429))))

(assert (=> bs!1029568 (= (= lt!1795613 lt!1795327) (= lambda!194450 lambda!194400))))

(assert (=> bs!1029569 (= (= lt!1795613 lt!1795467) (= lambda!194450 lambda!194430))))

(assert (=> b!4633942 (= (= lt!1795613 lt!1795056) (= lambda!194450 lambda!194449))))

(assert (=> bs!1029567 (= (= lt!1795613 (ListMap!4350 Nil!51632)) (= lambda!194450 lambda!194427))))

(assert (=> bs!1029570 (= (= lt!1795613 (ListMap!4350 Nil!51632)) (= lambda!194450 lambda!194417))))

(assert (=> bs!1029571 (= (= lt!1795613 lt!1795358) (= lambda!194450 lambda!194410))))

(assert (=> bs!1029572 (= (= lt!1795613 lt!1795331) (= lambda!194450 lambda!194395))))

(assert (=> bs!1029570 (= (= lt!1795613 lt!1795409) (= lambda!194450 lambda!194418))))

(assert (=> bs!1029573 (= (= lt!1795613 (ListMap!4350 Nil!51632)) (= lambda!194450 lambda!194416))))

(assert (=> bs!1029574 (= (= lt!1795613 (ListMap!4350 Nil!51632)) (= lambda!194450 lambda!194391))))

(assert (=> bs!1029575 (= (= lt!1795613 lt!1795056) (= lambda!194450 lambda!194448))))

(assert (=> bs!1029576 (= (= lt!1795613 (ListMap!4350 Nil!51632)) (= lambda!194450 lambda!194407))))

(assert (=> bs!1029572 (= (= lt!1795613 (ListMap!4350 Nil!51632)) (= lambda!194450 lambda!194394))))

(assert (=> bs!1029577 (= (= lt!1795613 lt!1795362) (= lambda!194450 lambda!194409))))

(assert (=> bs!1029578 (= (= lt!1795613 lt!1795405) (= lambda!194450 lambda!194419))))

(assert (=> bs!1029579 (= (= lt!1795613 (ListMap!4350 Nil!51632)) (= lambda!194450 lambda!194425))))

(assert (=> bs!1029577 (= (= lt!1795613 (ListMap!4350 Nil!51632)) (= lambda!194450 lambda!194408))))

(assert (=> b!4633942 true))

(declare-fun bs!1029580 () Bool)

(declare-fun d!1460802 () Bool)

(assert (= bs!1029580 (and d!1460802 b!4633875)))

(declare-fun lambda!194451 () Int)

(declare-fun lt!1795609 () ListMap!4349)

(assert (=> bs!1029580 (= (= lt!1795609 lt!1795471) (= lambda!194451 lambda!194429))))

(declare-fun bs!1029581 () Bool)

(assert (= bs!1029581 (and d!1460802 d!1460662)))

(assert (=> bs!1029581 (= (= lt!1795609 lt!1795327) (= lambda!194451 lambda!194400))))

(declare-fun bs!1029582 () Bool)

(assert (= bs!1029582 (and d!1460802 d!1460726)))

(assert (=> bs!1029582 (= (= lt!1795609 lt!1795467) (= lambda!194451 lambda!194430))))

(declare-fun bs!1029583 () Bool)

(assert (= bs!1029583 (and d!1460802 b!4633942)))

(assert (=> bs!1029583 (= (= lt!1795609 lt!1795056) (= lambda!194451 lambda!194449))))

(assert (=> bs!1029583 (= (= lt!1795609 lt!1795613) (= lambda!194451 lambda!194450))))

(assert (=> bs!1029580 (= (= lt!1795609 (ListMap!4350 Nil!51632)) (= lambda!194451 lambda!194427))))

(declare-fun bs!1029584 () Bool)

(assert (= bs!1029584 (and d!1460802 b!4633852)))

(assert (=> bs!1029584 (= (= lt!1795609 (ListMap!4350 Nil!51632)) (= lambda!194451 lambda!194417))))

(declare-fun bs!1029585 () Bool)

(assert (= bs!1029585 (and d!1460802 d!1460690)))

(assert (=> bs!1029585 (= (= lt!1795609 lt!1795358) (= lambda!194451 lambda!194410))))

(declare-fun bs!1029586 () Bool)

(assert (= bs!1029586 (and d!1460802 b!4633819)))

(assert (=> bs!1029586 (= (= lt!1795609 lt!1795331) (= lambda!194451 lambda!194395))))

(assert (=> bs!1029584 (= (= lt!1795609 lt!1795409) (= lambda!194451 lambda!194418))))

(declare-fun bs!1029587 () Bool)

(assert (= bs!1029587 (and d!1460802 b!4633853)))

(assert (=> bs!1029587 (= (= lt!1795609 (ListMap!4350 Nil!51632)) (= lambda!194451 lambda!194416))))

(declare-fun bs!1029588 () Bool)

(assert (= bs!1029588 (and d!1460802 b!4633820)))

(assert (=> bs!1029588 (= (= lt!1795609 (ListMap!4350 Nil!51632)) (= lambda!194451 lambda!194391))))

(declare-fun bs!1029589 () Bool)

(assert (= bs!1029589 (and d!1460802 b!4633943)))

(assert (=> bs!1029589 (= (= lt!1795609 lt!1795056) (= lambda!194451 lambda!194448))))

(declare-fun bs!1029590 () Bool)

(assert (= bs!1029590 (and d!1460802 b!4633831)))

(assert (=> bs!1029590 (= (= lt!1795609 (ListMap!4350 Nil!51632)) (= lambda!194451 lambda!194407))))

(assert (=> bs!1029586 (= (= lt!1795609 (ListMap!4350 Nil!51632)) (= lambda!194451 lambda!194394))))

(declare-fun bs!1029591 () Bool)

(assert (= bs!1029591 (and d!1460802 b!4633830)))

(assert (=> bs!1029591 (= (= lt!1795609 lt!1795362) (= lambda!194451 lambda!194409))))

(declare-fun bs!1029592 () Bool)

(assert (= bs!1029592 (and d!1460802 d!1460702)))

(assert (=> bs!1029592 (= (= lt!1795609 lt!1795405) (= lambda!194451 lambda!194419))))

(declare-fun bs!1029593 () Bool)

(assert (= bs!1029593 (and d!1460802 b!4633876)))

(assert (=> bs!1029593 (= (= lt!1795609 (ListMap!4350 Nil!51632)) (= lambda!194451 lambda!194425))))

(assert (=> bs!1029591 (= (= lt!1795609 (ListMap!4350 Nil!51632)) (= lambda!194451 lambda!194408))))

(assert (=> d!1460802 true))

(declare-fun b!4633939 () Bool)

(declare-fun e!2890748 () Bool)

(assert (=> b!4633939 (= e!2890748 (forall!10884 (toList!5046 lt!1795056) lambda!194450))))

(declare-fun b!4633940 () Bool)

(declare-fun e!2890746 () Bool)

(assert (=> b!4633940 (= e!2890746 (invariantList!1234 (toList!5046 lt!1795609)))))

(declare-fun c!793152 () Bool)

(declare-fun call!323400 () Bool)

(declare-fun bm!323394 () Bool)

(assert (=> bm!323394 (= call!323400 (forall!10884 (ite c!793152 (toList!5046 lt!1795056) (t!358818 oldBucket!40)) (ite c!793152 lambda!194448 lambda!194450)))))

(declare-fun call!323399 () Bool)

(declare-fun bm!323395 () Bool)

(assert (=> bm!323395 (= call!323399 (forall!10884 (ite c!793152 (toList!5046 lt!1795056) oldBucket!40) (ite c!793152 lambda!194448 lambda!194450)))))

(declare-fun b!4633941 () Bool)

(declare-fun res!1944748 () Bool)

(assert (=> b!4633941 (=> (not res!1944748) (not e!2890746))))

(assert (=> b!4633941 (= res!1944748 (forall!10884 (toList!5046 lt!1795056) lambda!194451))))

(assert (=> d!1460802 e!2890746))

(declare-fun res!1944750 () Bool)

(assert (=> d!1460802 (=> (not res!1944750) (not e!2890746))))

(assert (=> d!1460802 (= res!1944750 (forall!10884 oldBucket!40 lambda!194451))))

(declare-fun e!2890747 () ListMap!4349)

(assert (=> d!1460802 (= lt!1795609 e!2890747)))

(assert (=> d!1460802 (= c!793152 ((_ is Nil!51632) oldBucket!40))))

(assert (=> d!1460802 (noDuplicateKeys!1540 oldBucket!40)))

(assert (=> d!1460802 (= (addToMapMapFromBucket!1001 oldBucket!40 lt!1795056) lt!1795609)))

(assert (=> b!4633942 (= e!2890747 lt!1795613)))

(declare-fun lt!1795596 () ListMap!4349)

(assert (=> b!4633942 (= lt!1795596 (+!1906 lt!1795056 (h!57712 oldBucket!40)))))

(assert (=> b!4633942 (= lt!1795613 (addToMapMapFromBucket!1001 (t!358818 oldBucket!40) (+!1906 lt!1795056 (h!57712 oldBucket!40))))))

(declare-fun lt!1795606 () Unit!113879)

(declare-fun call!323401 () Unit!113879)

(assert (=> b!4633942 (= lt!1795606 call!323401)))

(assert (=> b!4633942 (forall!10884 (toList!5046 lt!1795056) lambda!194449)))

(declare-fun lt!1795612 () Unit!113879)

(assert (=> b!4633942 (= lt!1795612 lt!1795606)))

(assert (=> b!4633942 (forall!10884 (toList!5046 lt!1795596) lambda!194450)))

(declare-fun lt!1795604 () Unit!113879)

(declare-fun Unit!113982 () Unit!113879)

(assert (=> b!4633942 (= lt!1795604 Unit!113982)))

(assert (=> b!4633942 call!323400))

(declare-fun lt!1795597 () Unit!113879)

(declare-fun Unit!113983 () Unit!113879)

(assert (=> b!4633942 (= lt!1795597 Unit!113983)))

(declare-fun lt!1795593 () Unit!113879)

(declare-fun Unit!113985 () Unit!113879)

(assert (=> b!4633942 (= lt!1795593 Unit!113985)))

(declare-fun lt!1795611 () Unit!113879)

(assert (=> b!4633942 (= lt!1795611 (forallContained!3116 (toList!5046 lt!1795596) lambda!194450 (h!57712 oldBucket!40)))))

(assert (=> b!4633942 (contains!14741 lt!1795596 (_1!29597 (h!57712 oldBucket!40)))))

(declare-fun lt!1795602 () Unit!113879)

(declare-fun Unit!113987 () Unit!113879)

(assert (=> b!4633942 (= lt!1795602 Unit!113987)))

(assert (=> b!4633942 (contains!14741 lt!1795613 (_1!29597 (h!57712 oldBucket!40)))))

(declare-fun lt!1795598 () Unit!113879)

(declare-fun Unit!113989 () Unit!113879)

(assert (=> b!4633942 (= lt!1795598 Unit!113989)))

(assert (=> b!4633942 call!323399))

(declare-fun lt!1795595 () Unit!113879)

(declare-fun Unit!113992 () Unit!113879)

(assert (=> b!4633942 (= lt!1795595 Unit!113992)))

(assert (=> b!4633942 (forall!10884 (toList!5046 lt!1795596) lambda!194450)))

(declare-fun lt!1795607 () Unit!113879)

(declare-fun Unit!113993 () Unit!113879)

(assert (=> b!4633942 (= lt!1795607 Unit!113993)))

(declare-fun lt!1795605 () Unit!113879)

(declare-fun Unit!113994 () Unit!113879)

(assert (=> b!4633942 (= lt!1795605 Unit!113994)))

(declare-fun lt!1795603 () Unit!113879)

(assert (=> b!4633942 (= lt!1795603 (addForallContainsKeyThenBeforeAdding!535 lt!1795056 lt!1795613 (_1!29597 (h!57712 oldBucket!40)) (_2!29597 (h!57712 oldBucket!40))))))

(assert (=> b!4633942 (forall!10884 (toList!5046 lt!1795056) lambda!194450)))

(declare-fun lt!1795594 () Unit!113879)

(assert (=> b!4633942 (= lt!1795594 lt!1795603)))

(assert (=> b!4633942 (forall!10884 (toList!5046 lt!1795056) lambda!194450)))

(declare-fun lt!1795601 () Unit!113879)

(declare-fun Unit!113996 () Unit!113879)

(assert (=> b!4633942 (= lt!1795601 Unit!113996)))

(declare-fun res!1944749 () Bool)

(assert (=> b!4633942 (= res!1944749 (forall!10884 oldBucket!40 lambda!194450))))

(assert (=> b!4633942 (=> (not res!1944749) (not e!2890748))))

(assert (=> b!4633942 e!2890748))

(declare-fun lt!1795608 () Unit!113879)

(declare-fun Unit!113998 () Unit!113879)

(assert (=> b!4633942 (= lt!1795608 Unit!113998)))

(declare-fun bm!323396 () Bool)

(assert (=> bm!323396 (= call!323401 (lemmaContainsAllItsOwnKeys!536 lt!1795056))))

(assert (=> b!4633943 (= e!2890747 lt!1795056)))

(declare-fun lt!1795610 () Unit!113879)

(assert (=> b!4633943 (= lt!1795610 call!323401)))

(assert (=> b!4633943 call!323400))

(declare-fun lt!1795600 () Unit!113879)

(assert (=> b!4633943 (= lt!1795600 lt!1795610)))

(assert (=> b!4633943 call!323399))

(declare-fun lt!1795599 () Unit!113879)

(declare-fun Unit!113999 () Unit!113879)

(assert (=> b!4633943 (= lt!1795599 Unit!113999)))

(assert (= (and d!1460802 c!793152) b!4633943))

(assert (= (and d!1460802 (not c!793152)) b!4633942))

(assert (= (and b!4633942 res!1944749) b!4633939))

(assert (= (or b!4633943 b!4633942) bm!323396))

(assert (= (or b!4633943 b!4633942) bm!323394))

(assert (= (or b!4633943 b!4633942) bm!323395))

(assert (= (and d!1460802 res!1944750) b!4633941))

(assert (= (and b!4633941 res!1944748) b!4633940))

(declare-fun m!5487747 () Bool)

(assert (=> b!4633941 m!5487747))

(declare-fun m!5487749 () Bool)

(assert (=> bm!323394 m!5487749))

(declare-fun m!5487751 () Bool)

(assert (=> bm!323395 m!5487751))

(declare-fun m!5487753 () Bool)

(assert (=> bm!323396 m!5487753))

(declare-fun m!5487755 () Bool)

(assert (=> d!1460802 m!5487755))

(assert (=> d!1460802 m!5486683))

(declare-fun m!5487757 () Bool)

(assert (=> b!4633942 m!5487757))

(declare-fun m!5487759 () Bool)

(assert (=> b!4633942 m!5487759))

(declare-fun m!5487761 () Bool)

(assert (=> b!4633942 m!5487761))

(declare-fun m!5487763 () Bool)

(assert (=> b!4633942 m!5487763))

(declare-fun m!5487765 () Bool)

(assert (=> b!4633942 m!5487765))

(assert (=> b!4633942 m!5487759))

(declare-fun m!5487767 () Bool)

(assert (=> b!4633942 m!5487767))

(declare-fun m!5487769 () Bool)

(assert (=> b!4633942 m!5487769))

(declare-fun m!5487771 () Bool)

(assert (=> b!4633942 m!5487771))

(declare-fun m!5487773 () Bool)

(assert (=> b!4633942 m!5487773))

(declare-fun m!5487775 () Bool)

(assert (=> b!4633942 m!5487775))

(assert (=> b!4633942 m!5487763))

(assert (=> b!4633942 m!5487757))

(declare-fun m!5487777 () Bool)

(assert (=> b!4633940 m!5487777))

(assert (=> b!4633939 m!5487757))

(assert (=> b!4633608 d!1460802))

(declare-fun bs!1029594 () Bool)

(declare-fun d!1460804 () Bool)

(assert (= bs!1029594 (and d!1460804 d!1460634)))

(declare-fun lambda!194452 () Int)

(assert (=> bs!1029594 (= lambda!194452 lambda!194329)))

(declare-fun bs!1029595 () Bool)

(assert (= bs!1029595 (and d!1460804 d!1460642)))

(assert (=> bs!1029595 (= lambda!194452 lambda!194342)))

(declare-fun bs!1029596 () Bool)

(assert (= bs!1029596 (and d!1460804 d!1460636)))

(assert (=> bs!1029596 (= lambda!194452 lambda!194330)))

(declare-fun bs!1029597 () Bool)

(assert (= bs!1029597 (and d!1460804 b!4633593)))

(assert (=> bs!1029597 (= lambda!194452 lambda!194322)))

(declare-fun bs!1029598 () Bool)

(assert (= bs!1029598 (and d!1460804 d!1460612)))

(assert (=> bs!1029598 (= lambda!194452 lambda!194328)))

(declare-fun lt!1795614 () ListMap!4349)

(assert (=> d!1460804 (invariantList!1234 (toList!5046 lt!1795614))))

(declare-fun e!2890749 () ListMap!4349)

(assert (=> d!1460804 (= lt!1795614 e!2890749)))

(declare-fun c!793153 () Bool)

(assert (=> d!1460804 (= c!793153 ((_ is Cons!51633) Nil!51633))))

(assert (=> d!1460804 (forall!10882 Nil!51633 lambda!194452)))

(assert (=> d!1460804 (= (extractMap!1596 Nil!51633) lt!1795614)))

(declare-fun b!4633944 () Bool)

(assert (=> b!4633944 (= e!2890749 (addToMapMapFromBucket!1001 (_2!29598 (h!57713 Nil!51633)) (extractMap!1596 (t!358819 Nil!51633))))))

(declare-fun b!4633945 () Bool)

(assert (=> b!4633945 (= e!2890749 (ListMap!4350 Nil!51632))))

(assert (= (and d!1460804 c!793153) b!4633944))

(assert (= (and d!1460804 (not c!793153)) b!4633945))

(declare-fun m!5487779 () Bool)

(assert (=> d!1460804 m!5487779))

(declare-fun m!5487781 () Bool)

(assert (=> d!1460804 m!5487781))

(declare-fun m!5487783 () Bool)

(assert (=> b!4633944 m!5487783))

(assert (=> b!4633944 m!5487783))

(declare-fun m!5487785 () Bool)

(assert (=> b!4633944 m!5487785))

(assert (=> b!4633608 d!1460804))

(declare-fun bs!1029599 () Bool)

(declare-fun d!1460806 () Bool)

(assert (= bs!1029599 (and d!1460806 b!4633875)))

(declare-fun lambda!194455 () Int)

(assert (=> bs!1029599 (not (= lambda!194455 lambda!194429))))

(declare-fun bs!1029600 () Bool)

(assert (= bs!1029600 (and d!1460806 d!1460662)))

(assert (=> bs!1029600 (not (= lambda!194455 lambda!194400))))

(declare-fun bs!1029601 () Bool)

(assert (= bs!1029601 (and d!1460806 d!1460726)))

(assert (=> bs!1029601 (not (= lambda!194455 lambda!194430))))

(declare-fun bs!1029602 () Bool)

(assert (= bs!1029602 (and d!1460806 b!4633942)))

(assert (=> bs!1029602 (not (= lambda!194455 lambda!194449))))

(declare-fun bs!1029603 () Bool)

(assert (= bs!1029603 (and d!1460806 d!1460802)))

(assert (=> bs!1029603 (not (= lambda!194455 lambda!194451))))

(assert (=> bs!1029602 (not (= lambda!194455 lambda!194450))))

(assert (=> bs!1029599 (not (= lambda!194455 lambda!194427))))

(declare-fun bs!1029604 () Bool)

(assert (= bs!1029604 (and d!1460806 b!4633852)))

(assert (=> bs!1029604 (not (= lambda!194455 lambda!194417))))

(declare-fun bs!1029605 () Bool)

(assert (= bs!1029605 (and d!1460806 d!1460690)))

(assert (=> bs!1029605 (not (= lambda!194455 lambda!194410))))

(declare-fun bs!1029606 () Bool)

(assert (= bs!1029606 (and d!1460806 b!4633819)))

(assert (=> bs!1029606 (not (= lambda!194455 lambda!194395))))

(assert (=> bs!1029604 (not (= lambda!194455 lambda!194418))))

(declare-fun bs!1029607 () Bool)

(assert (= bs!1029607 (and d!1460806 b!4633853)))

(assert (=> bs!1029607 (not (= lambda!194455 lambda!194416))))

(declare-fun bs!1029608 () Bool)

(assert (= bs!1029608 (and d!1460806 b!4633820)))

(assert (=> bs!1029608 (not (= lambda!194455 lambda!194391))))

(declare-fun bs!1029609 () Bool)

(assert (= bs!1029609 (and d!1460806 b!4633943)))

(assert (=> bs!1029609 (not (= lambda!194455 lambda!194448))))

(declare-fun bs!1029610 () Bool)

(assert (= bs!1029610 (and d!1460806 b!4633831)))

(assert (=> bs!1029610 (not (= lambda!194455 lambda!194407))))

(assert (=> bs!1029606 (not (= lambda!194455 lambda!194394))))

(declare-fun bs!1029611 () Bool)

(assert (= bs!1029611 (and d!1460806 b!4633830)))

(assert (=> bs!1029611 (not (= lambda!194455 lambda!194409))))

(declare-fun bs!1029612 () Bool)

(assert (= bs!1029612 (and d!1460806 d!1460702)))

(assert (=> bs!1029612 (not (= lambda!194455 lambda!194419))))

(declare-fun bs!1029613 () Bool)

(assert (= bs!1029613 (and d!1460806 b!4633876)))

(assert (=> bs!1029613 (not (= lambda!194455 lambda!194425))))

(assert (=> bs!1029611 (not (= lambda!194455 lambda!194408))))

(assert (=> d!1460806 true))

(assert (=> d!1460806 true))

(assert (=> d!1460806 (= (allKeysSameHash!1394 newBucket!224 hash!414 hashF!1389) (forall!10884 newBucket!224 lambda!194455))))

(declare-fun bs!1029614 () Bool)

(assert (= bs!1029614 d!1460806))

(declare-fun m!5487787 () Bool)

(assert (=> bs!1029614 m!5487787))

(assert (=> b!4633597 d!1460806))

(declare-fun d!1460808 () Bool)

(declare-fun res!1944751 () Bool)

(declare-fun e!2890750 () Bool)

(assert (=> d!1460808 (=> res!1944751 e!2890750)))

(assert (=> d!1460808 (= res!1944751 (not ((_ is Cons!51632) newBucket!224)))))

(assert (=> d!1460808 (= (noDuplicateKeys!1540 newBucket!224) e!2890750)))

(declare-fun b!4633950 () Bool)

(declare-fun e!2890751 () Bool)

(assert (=> b!4633950 (= e!2890750 e!2890751)))

(declare-fun res!1944752 () Bool)

(assert (=> b!4633950 (=> (not res!1944752) (not e!2890751))))

(assert (=> b!4633950 (= res!1944752 (not (containsKey!2540 (t!358818 newBucket!224) (_1!29597 (h!57712 newBucket!224)))))))

(declare-fun b!4633951 () Bool)

(assert (=> b!4633951 (= e!2890751 (noDuplicateKeys!1540 (t!358818 newBucket!224)))))

(assert (= (and d!1460808 (not res!1944751)) b!4633950))

(assert (= (and b!4633950 res!1944752) b!4633951))

(declare-fun m!5487789 () Bool)

(assert (=> b!4633950 m!5487789))

(declare-fun m!5487791 () Bool)

(assert (=> b!4633951 m!5487791))

(assert (=> b!4633599 d!1460808))

(declare-fun b!4633962 () Bool)

(declare-fun e!2890757 () List!51756)

(assert (=> b!4633962 (= e!2890757 (Cons!51632 (h!57712 (t!358818 oldBucket!40)) (removePairForKey!1163 (t!358818 (t!358818 oldBucket!40)) key!4968)))))

(declare-fun b!4633960 () Bool)

(declare-fun e!2890756 () List!51756)

(assert (=> b!4633960 (= e!2890756 (t!358818 (t!358818 oldBucket!40)))))

(declare-fun b!4633963 () Bool)

(assert (=> b!4633963 (= e!2890757 Nil!51632)))

(declare-fun b!4633961 () Bool)

(assert (=> b!4633961 (= e!2890756 e!2890757)))

(declare-fun c!793158 () Bool)

(assert (=> b!4633961 (= c!793158 ((_ is Cons!51632) (t!358818 oldBucket!40)))))

(declare-fun d!1460810 () Bool)

(declare-fun lt!1795617 () List!51756)

(assert (=> d!1460810 (not (containsKey!2540 lt!1795617 key!4968))))

(assert (=> d!1460810 (= lt!1795617 e!2890756)))

(declare-fun c!793159 () Bool)

(assert (=> d!1460810 (= c!793159 (and ((_ is Cons!51632) (t!358818 oldBucket!40)) (= (_1!29597 (h!57712 (t!358818 oldBucket!40))) key!4968)))))

(assert (=> d!1460810 (noDuplicateKeys!1540 (t!358818 oldBucket!40))))

(assert (=> d!1460810 (= (removePairForKey!1163 (t!358818 oldBucket!40) key!4968) lt!1795617)))

(assert (= (and d!1460810 c!793159) b!4633960))

(assert (= (and d!1460810 (not c!793159)) b!4633961))

(assert (= (and b!4633961 c!793158) b!4633962))

(assert (= (and b!4633961 (not c!793158)) b!4633963))

(declare-fun m!5487793 () Bool)

(assert (=> b!4633962 m!5487793))

(declare-fun m!5487795 () Bool)

(assert (=> d!1460810 m!5487795))

(assert (=> d!1460810 m!5487585))

(assert (=> b!4633598 d!1460810))

(declare-fun d!1460812 () Bool)

(assert (=> d!1460812 (= (eq!855 lt!1795050 (+!1906 lt!1795051 (h!57712 oldBucket!40))) (= (content!8887 (toList!5046 lt!1795050)) (content!8887 (toList!5046 (+!1906 lt!1795051 (h!57712 oldBucket!40))))))))

(declare-fun bs!1029615 () Bool)

(assert (= bs!1029615 d!1460812))

(assert (=> bs!1029615 m!5487687))

(assert (=> bs!1029615 m!5487693))

(assert (=> b!4633609 d!1460812))

(assert (=> b!4633609 d!1460790))

(declare-fun d!1460814 () Bool)

(declare-fun hash!3596 (Hashable!5937 K!13000) (_ BitVec 64))

(assert (=> d!1460814 (= (hash!3592 hashF!1389 key!4968) (hash!3596 hashF!1389 key!4968))))

(declare-fun bs!1029616 () Bool)

(assert (= bs!1029616 d!1460814))

(declare-fun m!5487797 () Bool)

(assert (=> bs!1029616 m!5487797))

(assert (=> b!4633611 d!1460814))

(declare-fun b!4633966 () Bool)

(declare-fun e!2890759 () List!51756)

(assert (=> b!4633966 (= e!2890759 (Cons!51632 (h!57712 oldBucket!40) (removePairForKey!1163 (t!358818 oldBucket!40) key!4968)))))

(declare-fun b!4633964 () Bool)

(declare-fun e!2890758 () List!51756)

(assert (=> b!4633964 (= e!2890758 (t!358818 oldBucket!40))))

(declare-fun b!4633967 () Bool)

(assert (=> b!4633967 (= e!2890759 Nil!51632)))

(declare-fun b!4633965 () Bool)

(assert (=> b!4633965 (= e!2890758 e!2890759)))

(declare-fun c!793160 () Bool)

(assert (=> b!4633965 (= c!793160 ((_ is Cons!51632) oldBucket!40))))

(declare-fun d!1460816 () Bool)

(declare-fun lt!1795618 () List!51756)

(assert (=> d!1460816 (not (containsKey!2540 lt!1795618 key!4968))))

(assert (=> d!1460816 (= lt!1795618 e!2890758)))

(declare-fun c!793161 () Bool)

(assert (=> d!1460816 (= c!793161 (and ((_ is Cons!51632) oldBucket!40) (= (_1!29597 (h!57712 oldBucket!40)) key!4968)))))

(assert (=> d!1460816 (noDuplicateKeys!1540 oldBucket!40)))

(assert (=> d!1460816 (= (removePairForKey!1163 oldBucket!40 key!4968) lt!1795618)))

(assert (= (and d!1460816 c!793161) b!4633964))

(assert (= (and d!1460816 (not c!793161)) b!4633965))

(assert (= (and b!4633965 c!793160) b!4633966))

(assert (= (and b!4633965 (not c!793160)) b!4633967))

(assert (=> b!4633966 m!5486725))

(declare-fun m!5487799 () Bool)

(assert (=> d!1460816 m!5487799))

(assert (=> d!1460816 m!5486683))

(assert (=> b!4633610 d!1460816))

(declare-fun bs!1029617 () Bool)

(declare-fun d!1460818 () Bool)

(assert (= bs!1029617 (and d!1460818 b!4633875)))

(declare-fun lambda!194456 () Int)

(assert (=> bs!1029617 (not (= lambda!194456 lambda!194429))))

(declare-fun bs!1029618 () Bool)

(assert (= bs!1029618 (and d!1460818 d!1460662)))

(assert (=> bs!1029618 (not (= lambda!194456 lambda!194400))))

(declare-fun bs!1029619 () Bool)

(assert (= bs!1029619 (and d!1460818 d!1460726)))

(assert (=> bs!1029619 (not (= lambda!194456 lambda!194430))))

(declare-fun bs!1029620 () Bool)

(assert (= bs!1029620 (and d!1460818 b!4633942)))

(assert (=> bs!1029620 (not (= lambda!194456 lambda!194449))))

(declare-fun bs!1029621 () Bool)

(assert (= bs!1029621 (and d!1460818 d!1460802)))

(assert (=> bs!1029621 (not (= lambda!194456 lambda!194451))))

(declare-fun bs!1029622 () Bool)

(assert (= bs!1029622 (and d!1460818 d!1460806)))

(assert (=> bs!1029622 (= lambda!194456 lambda!194455)))

(assert (=> bs!1029620 (not (= lambda!194456 lambda!194450))))

(assert (=> bs!1029617 (not (= lambda!194456 lambda!194427))))

(declare-fun bs!1029623 () Bool)

(assert (= bs!1029623 (and d!1460818 b!4633852)))

(assert (=> bs!1029623 (not (= lambda!194456 lambda!194417))))

(declare-fun bs!1029624 () Bool)

(assert (= bs!1029624 (and d!1460818 d!1460690)))

(assert (=> bs!1029624 (not (= lambda!194456 lambda!194410))))

(declare-fun bs!1029625 () Bool)

(assert (= bs!1029625 (and d!1460818 b!4633819)))

(assert (=> bs!1029625 (not (= lambda!194456 lambda!194395))))

(assert (=> bs!1029623 (not (= lambda!194456 lambda!194418))))

(declare-fun bs!1029626 () Bool)

(assert (= bs!1029626 (and d!1460818 b!4633853)))

(assert (=> bs!1029626 (not (= lambda!194456 lambda!194416))))

(declare-fun bs!1029627 () Bool)

(assert (= bs!1029627 (and d!1460818 b!4633820)))

(assert (=> bs!1029627 (not (= lambda!194456 lambda!194391))))

(declare-fun bs!1029628 () Bool)

(assert (= bs!1029628 (and d!1460818 b!4633943)))

(assert (=> bs!1029628 (not (= lambda!194456 lambda!194448))))

(declare-fun bs!1029629 () Bool)

(assert (= bs!1029629 (and d!1460818 b!4633831)))

(assert (=> bs!1029629 (not (= lambda!194456 lambda!194407))))

(assert (=> bs!1029625 (not (= lambda!194456 lambda!194394))))

(declare-fun bs!1029630 () Bool)

(assert (= bs!1029630 (and d!1460818 b!4633830)))

(assert (=> bs!1029630 (not (= lambda!194456 lambda!194409))))

(declare-fun bs!1029631 () Bool)

(assert (= bs!1029631 (and d!1460818 d!1460702)))

(assert (=> bs!1029631 (not (= lambda!194456 lambda!194419))))

(declare-fun bs!1029632 () Bool)

(assert (= bs!1029632 (and d!1460818 b!4633876)))

(assert (=> bs!1029632 (not (= lambda!194456 lambda!194425))))

(assert (=> bs!1029630 (not (= lambda!194456 lambda!194408))))

(assert (=> d!1460818 true))

(assert (=> d!1460818 true))

(assert (=> d!1460818 (= (allKeysSameHash!1394 oldBucket!40 hash!414 hashF!1389) (forall!10884 oldBucket!40 lambda!194456))))

(declare-fun bs!1029633 () Bool)

(assert (= bs!1029633 d!1460818))

(declare-fun m!5487801 () Bool)

(assert (=> bs!1029633 m!5487801))

(assert (=> b!4633612 d!1460818))

(declare-fun d!1460820 () Bool)

(declare-fun res!1944757 () Bool)

(declare-fun e!2890764 () Bool)

(assert (=> d!1460820 (=> res!1944757 e!2890764)))

(assert (=> d!1460820 (= res!1944757 ((_ is Nil!51633) lt!1795043))))

(assert (=> d!1460820 (= (forall!10882 lt!1795043 lambda!194322) e!2890764)))

(declare-fun b!4633972 () Bool)

(declare-fun e!2890765 () Bool)

(assert (=> b!4633972 (= e!2890764 e!2890765)))

(declare-fun res!1944758 () Bool)

(assert (=> b!4633972 (=> (not res!1944758) (not e!2890765))))

(declare-fun dynLambda!21528 (Int tuple2!52608) Bool)

(assert (=> b!4633972 (= res!1944758 (dynLambda!21528 lambda!194322 (h!57713 lt!1795043)))))

(declare-fun b!4633973 () Bool)

(assert (=> b!4633973 (= e!2890765 (forall!10882 (t!358819 lt!1795043) lambda!194322))))

(assert (= (and d!1460820 (not res!1944757)) b!4633972))

(assert (= (and b!4633972 res!1944758) b!4633973))

(declare-fun b_lambda!170949 () Bool)

(assert (=> (not b_lambda!170949) (not b!4633972)))

(declare-fun m!5487803 () Bool)

(assert (=> b!4633972 m!5487803))

(declare-fun m!5487805 () Bool)

(assert (=> b!4633973 m!5487805))

(assert (=> b!4633601 d!1460820))

(declare-fun b!4633976 () Bool)

(declare-fun e!2890767 () List!51756)

(assert (=> b!4633976 (= e!2890767 (Cons!51632 (h!57712 lt!1795053) (removePairForKey!1163 (t!358818 lt!1795053) key!4968)))))

(declare-fun b!4633974 () Bool)

(declare-fun e!2890766 () List!51756)

(assert (=> b!4633974 (= e!2890766 (t!358818 lt!1795053))))

(declare-fun b!4633977 () Bool)

(assert (=> b!4633977 (= e!2890767 Nil!51632)))

(declare-fun b!4633975 () Bool)

(assert (=> b!4633975 (= e!2890766 e!2890767)))

(declare-fun c!793162 () Bool)

(assert (=> b!4633975 (= c!793162 ((_ is Cons!51632) lt!1795053))))

(declare-fun d!1460822 () Bool)

(declare-fun lt!1795619 () List!51756)

(assert (=> d!1460822 (not (containsKey!2540 lt!1795619 key!4968))))

(assert (=> d!1460822 (= lt!1795619 e!2890766)))

(declare-fun c!793163 () Bool)

(assert (=> d!1460822 (= c!793163 (and ((_ is Cons!51632) lt!1795053) (= (_1!29597 (h!57712 lt!1795053)) key!4968)))))

(assert (=> d!1460822 (noDuplicateKeys!1540 lt!1795053)))

(assert (=> d!1460822 (= (removePairForKey!1163 lt!1795053 key!4968) lt!1795619)))

(assert (= (and d!1460822 c!793163) b!4633974))

(assert (= (and d!1460822 (not c!793163)) b!4633975))

(assert (= (and b!4633975 c!793162) b!4633976))

(assert (= (and b!4633975 (not c!793162)) b!4633977))

(declare-fun m!5487807 () Bool)

(assert (=> b!4633976 m!5487807))

(declare-fun m!5487809 () Bool)

(assert (=> d!1460822 m!5487809))

(assert (=> d!1460822 m!5487239))

(assert (=> b!4633592 d!1460822))

(declare-fun d!1460824 () Bool)

(assert (=> d!1460824 (= (tail!8175 newBucket!224) (t!358818 newBucket!224))))

(assert (=> b!4633592 d!1460824))

(declare-fun d!1460826 () Bool)

(assert (=> d!1460826 (= (tail!8175 oldBucket!40) (t!358818 oldBucket!40))))

(assert (=> b!4633592 d!1460826))

(declare-fun d!1460828 () Bool)

(assert (=> d!1460828 (= (eq!855 lt!1795050 (+!1906 lt!1795051 lt!1795039)) (= (content!8887 (toList!5046 lt!1795050)) (content!8887 (toList!5046 (+!1906 lt!1795051 lt!1795039)))))))

(declare-fun bs!1029634 () Bool)

(assert (= bs!1029634 d!1460828))

(assert (=> bs!1029634 m!5487687))

(declare-fun m!5487811 () Bool)

(assert (=> bs!1029634 m!5487811))

(assert (=> b!4633604 d!1460828))

(declare-fun d!1460830 () Bool)

(declare-fun e!2890768 () Bool)

(assert (=> d!1460830 e!2890768))

(declare-fun res!1944760 () Bool)

(assert (=> d!1460830 (=> (not res!1944760) (not e!2890768))))

(declare-fun lt!1795622 () ListMap!4349)

(assert (=> d!1460830 (= res!1944760 (contains!14741 lt!1795622 (_1!29597 lt!1795039)))))

(declare-fun lt!1795623 () List!51756)

(assert (=> d!1460830 (= lt!1795622 (ListMap!4350 lt!1795623))))

(declare-fun lt!1795620 () Unit!113879)

(declare-fun lt!1795621 () Unit!113879)

(assert (=> d!1460830 (= lt!1795620 lt!1795621)))

(assert (=> d!1460830 (= (getValueByKey!1511 lt!1795623 (_1!29597 lt!1795039)) (Some!11684 (_2!29597 lt!1795039)))))

(assert (=> d!1460830 (= lt!1795621 (lemmaContainsTupThenGetReturnValue!878 lt!1795623 (_1!29597 lt!1795039) (_2!29597 lt!1795039)))))

(assert (=> d!1460830 (= lt!1795623 (insertNoDuplicatedKeys!386 (toList!5046 lt!1795051) (_1!29597 lt!1795039) (_2!29597 lt!1795039)))))

(assert (=> d!1460830 (= (+!1906 lt!1795051 lt!1795039) lt!1795622)))

(declare-fun b!4633978 () Bool)

(declare-fun res!1944759 () Bool)

(assert (=> b!4633978 (=> (not res!1944759) (not e!2890768))))

(assert (=> b!4633978 (= res!1944759 (= (getValueByKey!1511 (toList!5046 lt!1795622) (_1!29597 lt!1795039)) (Some!11684 (_2!29597 lt!1795039))))))

(declare-fun b!4633979 () Bool)

(assert (=> b!4633979 (= e!2890768 (contains!14745 (toList!5046 lt!1795622) lt!1795039))))

(assert (= (and d!1460830 res!1944760) b!4633978))

(assert (= (and b!4633978 res!1944759) b!4633979))

(declare-fun m!5487813 () Bool)

(assert (=> d!1460830 m!5487813))

(declare-fun m!5487815 () Bool)

(assert (=> d!1460830 m!5487815))

(declare-fun m!5487817 () Bool)

(assert (=> d!1460830 m!5487817))

(declare-fun m!5487819 () Bool)

(assert (=> d!1460830 m!5487819))

(declare-fun m!5487821 () Bool)

(assert (=> b!4633978 m!5487821))

(declare-fun m!5487823 () Bool)

(assert (=> b!4633979 m!5487823))

(assert (=> b!4633604 d!1460830))

(declare-fun bs!1029635 () Bool)

(declare-fun d!1460832 () Bool)

(assert (= bs!1029635 (and d!1460832 d!1460634)))

(declare-fun lambda!194457 () Int)

(assert (=> bs!1029635 (= lambda!194457 lambda!194329)))

(declare-fun bs!1029636 () Bool)

(assert (= bs!1029636 (and d!1460832 d!1460642)))

(assert (=> bs!1029636 (= lambda!194457 lambda!194342)))

(declare-fun bs!1029637 () Bool)

(assert (= bs!1029637 (and d!1460832 d!1460804)))

(assert (=> bs!1029637 (= lambda!194457 lambda!194452)))

(declare-fun bs!1029638 () Bool)

(assert (= bs!1029638 (and d!1460832 d!1460636)))

(assert (=> bs!1029638 (= lambda!194457 lambda!194330)))

(declare-fun bs!1029639 () Bool)

(assert (= bs!1029639 (and d!1460832 b!4633593)))

(assert (=> bs!1029639 (= lambda!194457 lambda!194322)))

(declare-fun bs!1029640 () Bool)

(assert (= bs!1029640 (and d!1460832 d!1460612)))

(assert (=> bs!1029640 (= lambda!194457 lambda!194328)))

(declare-fun lt!1795624 () ListMap!4349)

(assert (=> d!1460832 (invariantList!1234 (toList!5046 lt!1795624))))

(declare-fun e!2890769 () ListMap!4349)

(assert (=> d!1460832 (= lt!1795624 e!2890769)))

(declare-fun c!793164 () Bool)

(assert (=> d!1460832 (= c!793164 ((_ is Cons!51633) (Cons!51633 (tuple2!52609 hash!414 lt!1795055) Nil!51633)))))

(assert (=> d!1460832 (forall!10882 (Cons!51633 (tuple2!52609 hash!414 lt!1795055) Nil!51633) lambda!194457)))

(assert (=> d!1460832 (= (extractMap!1596 (Cons!51633 (tuple2!52609 hash!414 lt!1795055) Nil!51633)) lt!1795624)))

(declare-fun b!4633980 () Bool)

(assert (=> b!4633980 (= e!2890769 (addToMapMapFromBucket!1001 (_2!29598 (h!57713 (Cons!51633 (tuple2!52609 hash!414 lt!1795055) Nil!51633))) (extractMap!1596 (t!358819 (Cons!51633 (tuple2!52609 hash!414 lt!1795055) Nil!51633)))))))

(declare-fun b!4633981 () Bool)

(assert (=> b!4633981 (= e!2890769 (ListMap!4350 Nil!51632))))

(assert (= (and d!1460832 c!793164) b!4633980))

(assert (= (and d!1460832 (not c!793164)) b!4633981))

(declare-fun m!5487825 () Bool)

(assert (=> d!1460832 m!5487825))

(declare-fun m!5487827 () Bool)

(assert (=> d!1460832 m!5487827))

(declare-fun m!5487829 () Bool)

(assert (=> b!4633980 m!5487829))

(assert (=> b!4633980 m!5487829))

(declare-fun m!5487831 () Bool)

(assert (=> b!4633980 m!5487831))

(assert (=> b!4633604 d!1460832))

(declare-fun bs!1029641 () Bool)

(declare-fun d!1460834 () Bool)

(assert (= bs!1029641 (and d!1460834 d!1460634)))

(declare-fun lambda!194458 () Int)

(assert (=> bs!1029641 (= lambda!194458 lambda!194329)))

(declare-fun bs!1029642 () Bool)

(assert (= bs!1029642 (and d!1460834 d!1460642)))

(assert (=> bs!1029642 (= lambda!194458 lambda!194342)))

(declare-fun bs!1029643 () Bool)

(assert (= bs!1029643 (and d!1460834 d!1460804)))

(assert (=> bs!1029643 (= lambda!194458 lambda!194452)))

(declare-fun bs!1029644 () Bool)

(assert (= bs!1029644 (and d!1460834 d!1460636)))

(assert (=> bs!1029644 (= lambda!194458 lambda!194330)))

(declare-fun bs!1029645 () Bool)

(assert (= bs!1029645 (and d!1460834 b!4633593)))

(assert (=> bs!1029645 (= lambda!194458 lambda!194322)))

(declare-fun bs!1029646 () Bool)

(assert (= bs!1029646 (and d!1460834 d!1460832)))

(assert (=> bs!1029646 (= lambda!194458 lambda!194457)))

(declare-fun bs!1029647 () Bool)

(assert (= bs!1029647 (and d!1460834 d!1460612)))

(assert (=> bs!1029647 (= lambda!194458 lambda!194328)))

(declare-fun lt!1795625 () ListMap!4349)

(assert (=> d!1460834 (invariantList!1234 (toList!5046 lt!1795625))))

(declare-fun e!2890770 () ListMap!4349)

(assert (=> d!1460834 (= lt!1795625 e!2890770)))

(declare-fun c!793165 () Bool)

(assert (=> d!1460834 (= c!793165 ((_ is Cons!51633) (Cons!51633 (tuple2!52609 hash!414 newBucket!224) Nil!51633)))))

(assert (=> d!1460834 (forall!10882 (Cons!51633 (tuple2!52609 hash!414 newBucket!224) Nil!51633) lambda!194458)))

(assert (=> d!1460834 (= (extractMap!1596 (Cons!51633 (tuple2!52609 hash!414 newBucket!224) Nil!51633)) lt!1795625)))

(declare-fun b!4633982 () Bool)

(assert (=> b!4633982 (= e!2890770 (addToMapMapFromBucket!1001 (_2!29598 (h!57713 (Cons!51633 (tuple2!52609 hash!414 newBucket!224) Nil!51633))) (extractMap!1596 (t!358819 (Cons!51633 (tuple2!52609 hash!414 newBucket!224) Nil!51633)))))))

(declare-fun b!4633983 () Bool)

(assert (=> b!4633983 (= e!2890770 (ListMap!4350 Nil!51632))))

(assert (= (and d!1460834 c!793165) b!4633982))

(assert (= (and d!1460834 (not c!793165)) b!4633983))

(declare-fun m!5487833 () Bool)

(assert (=> d!1460834 m!5487833))

(declare-fun m!5487835 () Bool)

(assert (=> d!1460834 m!5487835))

(declare-fun m!5487837 () Bool)

(assert (=> b!4633982 m!5487837))

(assert (=> b!4633982 m!5487837))

(declare-fun m!5487839 () Bool)

(assert (=> b!4633982 m!5487839))

(assert (=> b!4633604 d!1460834))

(declare-fun d!1460836 () Bool)

(assert (=> d!1460836 (contains!14739 (toList!5045 lt!1795033) (tuple2!52609 lt!1795037 lt!1795034))))

(declare-fun lt!1795628 () Unit!113879)

(declare-fun choose!31606 (ListLongMap!3635 (_ BitVec 64) List!51756) Unit!113879)

(assert (=> d!1460836 (= lt!1795628 (choose!31606 lt!1795033 lt!1795037 lt!1795034))))

(assert (=> d!1460836 (contains!14740 lt!1795033 lt!1795037)))

(assert (=> d!1460836 (= (lemmaGetValueImpliesTupleContained!137 lt!1795033 lt!1795037 lt!1795034) lt!1795628)))

(declare-fun bs!1029648 () Bool)

(assert (= bs!1029648 d!1460836))

(declare-fun m!5487841 () Bool)

(assert (=> bs!1029648 m!5487841))

(declare-fun m!5487843 () Bool)

(assert (=> bs!1029648 m!5487843))

(assert (=> bs!1029648 m!5486703))

(assert (=> b!4633593 d!1460836))

(declare-fun d!1460838 () Bool)

(declare-fun lt!1795631 () Bool)

(declare-fun content!8889 (List!51757) (InoxSet tuple2!52608))

(assert (=> d!1460838 (= lt!1795631 (select (content!8889 lt!1795043) lt!1795042))))

(declare-fun e!2890775 () Bool)

(assert (=> d!1460838 (= lt!1795631 e!2890775)))

(declare-fun res!1944766 () Bool)

(assert (=> d!1460838 (=> (not res!1944766) (not e!2890775))))

(assert (=> d!1460838 (= res!1944766 ((_ is Cons!51633) lt!1795043))))

(assert (=> d!1460838 (= (contains!14739 lt!1795043 lt!1795042) lt!1795631)))

(declare-fun b!4633989 () Bool)

(declare-fun e!2890776 () Bool)

(assert (=> b!4633989 (= e!2890775 e!2890776)))

(declare-fun res!1944765 () Bool)

(assert (=> b!4633989 (=> res!1944765 e!2890776)))

(assert (=> b!4633989 (= res!1944765 (= (h!57713 lt!1795043) lt!1795042))))

(declare-fun b!4633990 () Bool)

(assert (=> b!4633990 (= e!2890776 (contains!14739 (t!358819 lt!1795043) lt!1795042))))

(assert (= (and d!1460838 res!1944766) b!4633989))

(assert (= (and b!4633989 (not res!1944765)) b!4633990))

(declare-fun m!5487845 () Bool)

(assert (=> d!1460838 m!5487845))

(declare-fun m!5487847 () Bool)

(assert (=> d!1460838 m!5487847))

(declare-fun m!5487849 () Bool)

(assert (=> b!4633990 m!5487849))

(assert (=> b!4633593 d!1460838))

(declare-fun bs!1029649 () Bool)

(declare-fun d!1460840 () Bool)

(assert (= bs!1029649 (and d!1460840 d!1460634)))

(declare-fun lambda!194461 () Int)

(assert (=> bs!1029649 (= lambda!194461 lambda!194329)))

(declare-fun bs!1029650 () Bool)

(assert (= bs!1029650 (and d!1460840 d!1460642)))

(assert (=> bs!1029650 (= lambda!194461 lambda!194342)))

(declare-fun bs!1029651 () Bool)

(assert (= bs!1029651 (and d!1460840 d!1460804)))

(assert (=> bs!1029651 (= lambda!194461 lambda!194452)))

(declare-fun bs!1029652 () Bool)

(assert (= bs!1029652 (and d!1460840 d!1460636)))

(assert (=> bs!1029652 (= lambda!194461 lambda!194330)))

(declare-fun bs!1029653 () Bool)

(assert (= bs!1029653 (and d!1460840 b!4633593)))

(assert (=> bs!1029653 (= lambda!194461 lambda!194322)))

(declare-fun bs!1029654 () Bool)

(assert (= bs!1029654 (and d!1460840 d!1460832)))

(assert (=> bs!1029654 (= lambda!194461 lambda!194457)))

(declare-fun bs!1029655 () Bool)

(assert (= bs!1029655 (and d!1460840 d!1460612)))

(assert (=> bs!1029655 (= lambda!194461 lambda!194328)))

(declare-fun bs!1029656 () Bool)

(assert (= bs!1029656 (and d!1460840 d!1460834)))

(assert (=> bs!1029656 (= lambda!194461 lambda!194458)))

(assert (=> d!1460840 (contains!14740 lt!1795033 (hash!3592 hashF!1389 key!4968))))

(declare-fun lt!1795634 () Unit!113879)

(declare-fun choose!31607 (ListLongMap!3635 K!13000 Hashable!5937) Unit!113879)

(assert (=> d!1460840 (= lt!1795634 (choose!31607 lt!1795033 key!4968 hashF!1389))))

(assert (=> d!1460840 (forall!10882 (toList!5045 lt!1795033) lambda!194461)))

(assert (=> d!1460840 (= (lemmaInGenMapThenLongMapContainsHash!538 lt!1795033 key!4968 hashF!1389) lt!1795634)))

(declare-fun bs!1029657 () Bool)

(assert (= bs!1029657 d!1460840))

(assert (=> bs!1029657 m!5486727))

(assert (=> bs!1029657 m!5486727))

(declare-fun m!5487851 () Bool)

(assert (=> bs!1029657 m!5487851))

(declare-fun m!5487853 () Bool)

(assert (=> bs!1029657 m!5487853))

(declare-fun m!5487855 () Bool)

(assert (=> bs!1029657 m!5487855))

(assert (=> b!4633593 d!1460840))

(declare-fun d!1460842 () Bool)

(assert (=> d!1460842 (containsKey!2540 oldBucket!40 key!4968)))

(declare-fun lt!1795637 () Unit!113879)

(declare-fun choose!31608 (List!51756 K!13000 Hashable!5937) Unit!113879)

(assert (=> d!1460842 (= lt!1795637 (choose!31608 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1460842 (noDuplicateKeys!1540 oldBucket!40)))

(assert (=> d!1460842 (= (lemmaGetPairDefinedThenContainsKey!86 oldBucket!40 key!4968 hashF!1389) lt!1795637)))

(declare-fun bs!1029658 () Bool)

(assert (= bs!1029658 d!1460842))

(assert (=> bs!1029658 m!5486699))

(declare-fun m!5487857 () Bool)

(assert (=> bs!1029658 m!5487857))

(assert (=> bs!1029658 m!5486683))

(assert (=> b!4633593 d!1460842))

(declare-fun d!1460844 () Bool)

(declare-fun res!1944771 () Bool)

(declare-fun e!2890781 () Bool)

(assert (=> d!1460844 (=> res!1944771 e!2890781)))

(assert (=> d!1460844 (= res!1944771 (and ((_ is Cons!51632) (t!358818 oldBucket!40)) (= (_1!29597 (h!57712 (t!358818 oldBucket!40))) key!4968)))))

(assert (=> d!1460844 (= (containsKey!2540 (t!358818 oldBucket!40) key!4968) e!2890781)))

(declare-fun b!4633995 () Bool)

(declare-fun e!2890782 () Bool)

(assert (=> b!4633995 (= e!2890781 e!2890782)))

(declare-fun res!1944772 () Bool)

(assert (=> b!4633995 (=> (not res!1944772) (not e!2890782))))

(assert (=> b!4633995 (= res!1944772 ((_ is Cons!51632) (t!358818 oldBucket!40)))))

(declare-fun b!4633996 () Bool)

(assert (=> b!4633996 (= e!2890782 (containsKey!2540 (t!358818 (t!358818 oldBucket!40)) key!4968))))

(assert (= (and d!1460844 (not res!1944771)) b!4633995))

(assert (= (and b!4633995 res!1944772) b!4633996))

(declare-fun m!5487859 () Bool)

(assert (=> b!4633996 m!5487859))

(assert (=> b!4633593 d!1460844))

(declare-fun d!1460846 () Bool)

(declare-fun isEmpty!28960 (Option!11682) Bool)

(assert (=> d!1460846 (= (isDefined!8947 (getPair!332 lt!1795034 key!4968)) (not (isEmpty!28960 (getPair!332 lt!1795034 key!4968))))))

(declare-fun bs!1029659 () Bool)

(assert (= bs!1029659 d!1460846))

(assert (=> bs!1029659 m!5486697))

(declare-fun m!5487861 () Bool)

(assert (=> bs!1029659 m!5487861))

(assert (=> b!4633593 d!1460846))

(declare-fun d!1460848 () Bool)

(declare-fun res!1944773 () Bool)

(declare-fun e!2890783 () Bool)

(assert (=> d!1460848 (=> res!1944773 e!2890783)))

(assert (=> d!1460848 (= res!1944773 (and ((_ is Cons!51632) oldBucket!40) (= (_1!29597 (h!57712 oldBucket!40)) key!4968)))))

(assert (=> d!1460848 (= (containsKey!2540 oldBucket!40 key!4968) e!2890783)))

(declare-fun b!4633997 () Bool)

(declare-fun e!2890784 () Bool)

(assert (=> b!4633997 (= e!2890783 e!2890784)))

(declare-fun res!1944774 () Bool)

(assert (=> b!4633997 (=> (not res!1944774) (not e!2890784))))

(assert (=> b!4633997 (= res!1944774 ((_ is Cons!51632) oldBucket!40))))

(declare-fun b!4633998 () Bool)

(assert (=> b!4633998 (= e!2890784 (containsKey!2540 (t!358818 oldBucket!40) key!4968))))

(assert (= (and d!1460848 (not res!1944773)) b!4633997))

(assert (= (and b!4633997 res!1944774) b!4633998))

(assert (=> b!4633998 m!5486707))

(assert (=> b!4633593 d!1460848))

(declare-fun d!1460850 () Bool)

(declare-fun e!2890789 () Bool)

(assert (=> d!1460850 e!2890789))

(declare-fun res!1944777 () Bool)

(assert (=> d!1460850 (=> res!1944777 e!2890789)))

(declare-fun lt!1795649 () Bool)

(assert (=> d!1460850 (= res!1944777 (not lt!1795649))))

(declare-fun lt!1795646 () Bool)

(assert (=> d!1460850 (= lt!1795649 lt!1795646)))

(declare-fun lt!1795647 () Unit!113879)

(declare-fun e!2890790 () Unit!113879)

(assert (=> d!1460850 (= lt!1795647 e!2890790)))

(declare-fun c!793168 () Bool)

(assert (=> d!1460850 (= c!793168 lt!1795646)))

(declare-fun containsKey!2544 (List!51757 (_ BitVec 64)) Bool)

(assert (=> d!1460850 (= lt!1795646 (containsKey!2544 (toList!5045 lt!1795033) lt!1795037))))

(assert (=> d!1460850 (= (contains!14740 lt!1795033 lt!1795037) lt!1795649)))

(declare-fun b!4634005 () Bool)

(declare-fun lt!1795648 () Unit!113879)

(assert (=> b!4634005 (= e!2890790 lt!1795648)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1414 (List!51757 (_ BitVec 64)) Unit!113879)

(assert (=> b!4634005 (= lt!1795648 (lemmaContainsKeyImpliesGetValueByKeyDefined!1414 (toList!5045 lt!1795033) lt!1795037))))

(declare-datatypes ((Option!11686 0))(
  ( (None!11685) (Some!11685 (v!45875 List!51756)) )
))
(declare-fun isDefined!8951 (Option!11686) Bool)

(declare-fun getValueByKey!1512 (List!51757 (_ BitVec 64)) Option!11686)

(assert (=> b!4634005 (isDefined!8951 (getValueByKey!1512 (toList!5045 lt!1795033) lt!1795037))))

(declare-fun b!4634006 () Bool)

(declare-fun Unit!114000 () Unit!113879)

(assert (=> b!4634006 (= e!2890790 Unit!114000)))

(declare-fun b!4634007 () Bool)

(assert (=> b!4634007 (= e!2890789 (isDefined!8951 (getValueByKey!1512 (toList!5045 lt!1795033) lt!1795037)))))

(assert (= (and d!1460850 c!793168) b!4634005))

(assert (= (and d!1460850 (not c!793168)) b!4634006))

(assert (= (and d!1460850 (not res!1944777)) b!4634007))

(declare-fun m!5487863 () Bool)

(assert (=> d!1460850 m!5487863))

(declare-fun m!5487865 () Bool)

(assert (=> b!4634005 m!5487865))

(declare-fun m!5487867 () Bool)

(assert (=> b!4634005 m!5487867))

(assert (=> b!4634005 m!5487867))

(declare-fun m!5487869 () Bool)

(assert (=> b!4634005 m!5487869))

(assert (=> b!4634007 m!5487867))

(assert (=> b!4634007 m!5487867))

(assert (=> b!4634007 m!5487869))

(assert (=> b!4633593 d!1460850))

(declare-fun d!1460852 () Bool)

(assert (=> d!1460852 (dynLambda!21528 lambda!194322 lt!1795042)))

(declare-fun lt!1795652 () Unit!113879)

(declare-fun choose!31609 (List!51757 Int tuple2!52608) Unit!113879)

(assert (=> d!1460852 (= lt!1795652 (choose!31609 lt!1795043 lambda!194322 lt!1795042))))

(declare-fun e!2890793 () Bool)

(assert (=> d!1460852 e!2890793))

(declare-fun res!1944780 () Bool)

(assert (=> d!1460852 (=> (not res!1944780) (not e!2890793))))

(assert (=> d!1460852 (= res!1944780 (forall!10882 lt!1795043 lambda!194322))))

(assert (=> d!1460852 (= (forallContained!3114 lt!1795043 lambda!194322 lt!1795042) lt!1795652)))

(declare-fun b!4634010 () Bool)

(assert (=> b!4634010 (= e!2890793 (contains!14739 lt!1795043 lt!1795042))))

(assert (= (and d!1460852 res!1944780) b!4634010))

(declare-fun b_lambda!170951 () Bool)

(assert (=> (not b_lambda!170951) (not d!1460852)))

(declare-fun m!5487871 () Bool)

(assert (=> d!1460852 m!5487871))

(declare-fun m!5487873 () Bool)

(assert (=> d!1460852 m!5487873))

(assert (=> d!1460852 m!5486667))

(assert (=> b!4634010 m!5486695))

(assert (=> b!4633593 d!1460852))

(declare-fun bs!1029660 () Bool)

(declare-fun d!1460854 () Bool)

(assert (= bs!1029660 (and d!1460854 d!1460634)))

(declare-fun lambda!194468 () Int)

(assert (=> bs!1029660 (= lambda!194468 lambda!194329)))

(declare-fun bs!1029661 () Bool)

(assert (= bs!1029661 (and d!1460854 d!1460642)))

(assert (=> bs!1029661 (= lambda!194468 lambda!194342)))

(declare-fun bs!1029662 () Bool)

(assert (= bs!1029662 (and d!1460854 d!1460804)))

(assert (=> bs!1029662 (= lambda!194468 lambda!194452)))

(declare-fun bs!1029663 () Bool)

(assert (= bs!1029663 (and d!1460854 d!1460636)))

(assert (=> bs!1029663 (= lambda!194468 lambda!194330)))

(declare-fun bs!1029664 () Bool)

(assert (= bs!1029664 (and d!1460854 b!4633593)))

(assert (=> bs!1029664 (= lambda!194468 lambda!194322)))

(declare-fun bs!1029665 () Bool)

(assert (= bs!1029665 (and d!1460854 d!1460832)))

(assert (=> bs!1029665 (= lambda!194468 lambda!194457)))

(declare-fun bs!1029666 () Bool)

(assert (= bs!1029666 (and d!1460854 d!1460612)))

(assert (=> bs!1029666 (= lambda!194468 lambda!194328)))

(declare-fun bs!1029667 () Bool)

(assert (= bs!1029667 (and d!1460854 d!1460840)))

(assert (=> bs!1029667 (= lambda!194468 lambda!194461)))

(declare-fun bs!1029668 () Bool)

(assert (= bs!1029668 (and d!1460854 d!1460834)))

(assert (=> bs!1029668 (= lambda!194468 lambda!194458)))

(declare-fun b!4634019 () Bool)

(declare-fun res!1944789 () Bool)

(declare-fun e!2890799 () Bool)

(assert (=> b!4634019 (=> (not res!1944789) (not e!2890799))))

(declare-fun allKeysSameHashInMap!1560 (ListLongMap!3635 Hashable!5937) Bool)

(assert (=> b!4634019 (= res!1944789 (allKeysSameHashInMap!1560 lt!1795033 hashF!1389))))

(declare-fun b!4634021 () Bool)

(assert (=> b!4634021 (= e!2890799 (isDefined!8947 (getPair!332 (apply!12205 lt!1795033 (hash!3592 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1795676 () Unit!113879)

(assert (=> b!4634021 (= lt!1795676 (forallContained!3114 (toList!5045 lt!1795033) lambda!194468 (tuple2!52609 (hash!3592 hashF!1389 key!4968) (apply!12205 lt!1795033 (hash!3592 hashF!1389 key!4968)))))))

(declare-fun lt!1795675 () Unit!113879)

(declare-fun lt!1795674 () Unit!113879)

(assert (=> b!4634021 (= lt!1795675 lt!1795674)))

(declare-fun lt!1795673 () (_ BitVec 64))

(declare-fun lt!1795669 () List!51756)

(assert (=> b!4634021 (contains!14739 (toList!5045 lt!1795033) (tuple2!52609 lt!1795673 lt!1795669))))

(assert (=> b!4634021 (= lt!1795674 (lemmaGetValueImpliesTupleContained!137 lt!1795033 lt!1795673 lt!1795669))))

(declare-fun e!2890798 () Bool)

(assert (=> b!4634021 e!2890798))

(declare-fun res!1944791 () Bool)

(assert (=> b!4634021 (=> (not res!1944791) (not e!2890798))))

(assert (=> b!4634021 (= res!1944791 (contains!14740 lt!1795033 lt!1795673))))

(assert (=> b!4634021 (= lt!1795669 (apply!12205 lt!1795033 (hash!3592 hashF!1389 key!4968)))))

(assert (=> b!4634021 (= lt!1795673 (hash!3592 hashF!1389 key!4968))))

(declare-fun lt!1795670 () Unit!113879)

(declare-fun lt!1795672 () Unit!113879)

(assert (=> b!4634021 (= lt!1795670 lt!1795672)))

(assert (=> b!4634021 (contains!14740 lt!1795033 (hash!3592 hashF!1389 key!4968))))

(assert (=> b!4634021 (= lt!1795672 (lemmaInGenMapThenLongMapContainsHash!538 lt!1795033 key!4968 hashF!1389))))

(declare-fun b!4634022 () Bool)

(assert (=> b!4634022 (= e!2890798 (= (getValueByKey!1512 (toList!5045 lt!1795033) lt!1795673) (Some!11685 lt!1795669)))))

(declare-fun b!4634020 () Bool)

(declare-fun res!1944790 () Bool)

(assert (=> b!4634020 (=> (not res!1944790) (not e!2890799))))

(assert (=> b!4634020 (= res!1944790 (contains!14741 (extractMap!1596 (toList!5045 lt!1795033)) key!4968))))

(assert (=> d!1460854 e!2890799))

(declare-fun res!1944792 () Bool)

(assert (=> d!1460854 (=> (not res!1944792) (not e!2890799))))

(assert (=> d!1460854 (= res!1944792 (forall!10882 (toList!5045 lt!1795033) lambda!194468))))

(declare-fun lt!1795671 () Unit!113879)

(declare-fun choose!31610 (ListLongMap!3635 K!13000 Hashable!5937) Unit!113879)

(assert (=> d!1460854 (= lt!1795671 (choose!31610 lt!1795033 key!4968 hashF!1389))))

(assert (=> d!1460854 (forall!10882 (toList!5045 lt!1795033) lambda!194468)))

(assert (=> d!1460854 (= (lemmaInGenMapThenGetPairDefined!128 lt!1795033 key!4968 hashF!1389) lt!1795671)))

(assert (= (and d!1460854 res!1944792) b!4634019))

(assert (= (and b!4634019 res!1944789) b!4634020))

(assert (= (and b!4634020 res!1944790) b!4634021))

(assert (= (and b!4634021 res!1944791) b!4634022))

(declare-fun m!5487875 () Bool)

(assert (=> d!1460854 m!5487875))

(declare-fun m!5487877 () Bool)

(assert (=> d!1460854 m!5487877))

(assert (=> d!1460854 m!5487875))

(declare-fun m!5487879 () Bool)

(assert (=> b!4634019 m!5487879))

(declare-fun m!5487881 () Bool)

(assert (=> b!4634022 m!5487881))

(declare-fun m!5487883 () Bool)

(assert (=> b!4634020 m!5487883))

(assert (=> b!4634020 m!5487883))

(declare-fun m!5487885 () Bool)

(assert (=> b!4634020 m!5487885))

(assert (=> b!4634021 m!5486727))

(declare-fun m!5487887 () Bool)

(assert (=> b!4634021 m!5487887))

(declare-fun m!5487889 () Bool)

(assert (=> b!4634021 m!5487889))

(declare-fun m!5487891 () Bool)

(assert (=> b!4634021 m!5487891))

(declare-fun m!5487893 () Bool)

(assert (=> b!4634021 m!5487893))

(declare-fun m!5487895 () Bool)

(assert (=> b!4634021 m!5487895))

(declare-fun m!5487897 () Bool)

(assert (=> b!4634021 m!5487897))

(assert (=> b!4634021 m!5486701))

(assert (=> b!4634021 m!5486727))

(declare-fun m!5487899 () Bool)

(assert (=> b!4634021 m!5487899))

(assert (=> b!4634021 m!5486727))

(assert (=> b!4634021 m!5487851))

(assert (=> b!4634021 m!5487887))

(assert (=> b!4634021 m!5487893))

(assert (=> b!4633593 d!1460854))

(declare-fun d!1460856 () Bool)

(declare-fun get!17154 (Option!11686) List!51756)

(assert (=> d!1460856 (= (apply!12205 lt!1795033 lt!1795037) (get!17154 (getValueByKey!1512 (toList!5045 lt!1795033) lt!1795037)))))

(declare-fun bs!1029669 () Bool)

(assert (= bs!1029669 d!1460856))

(assert (=> bs!1029669 m!5487867))

(assert (=> bs!1029669 m!5487867))

(declare-fun m!5487901 () Bool)

(assert (=> bs!1029669 m!5487901))

(assert (=> b!4633593 d!1460856))

(declare-fun d!1460858 () Bool)

(declare-fun e!2890811 () Bool)

(assert (=> d!1460858 e!2890811))

(declare-fun res!1944803 () Bool)

(assert (=> d!1460858 (=> res!1944803 e!2890811)))

(declare-fun e!2890810 () Bool)

(assert (=> d!1460858 (= res!1944803 e!2890810)))

(declare-fun res!1944802 () Bool)

(assert (=> d!1460858 (=> (not res!1944802) (not e!2890810))))

(declare-fun lt!1795679 () Option!11682)

(assert (=> d!1460858 (= res!1944802 (isEmpty!28960 lt!1795679))))

(declare-fun e!2890814 () Option!11682)

(assert (=> d!1460858 (= lt!1795679 e!2890814)))

(declare-fun c!793173 () Bool)

(assert (=> d!1460858 (= c!793173 (and ((_ is Cons!51632) lt!1795034) (= (_1!29597 (h!57712 lt!1795034)) key!4968)))))

(assert (=> d!1460858 (noDuplicateKeys!1540 lt!1795034)))

(assert (=> d!1460858 (= (getPair!332 lt!1795034 key!4968) lt!1795679)))

(declare-fun b!4634039 () Bool)

(declare-fun e!2890813 () Bool)

(declare-fun get!17155 (Option!11682) tuple2!52606)

(assert (=> b!4634039 (= e!2890813 (contains!14745 lt!1795034 (get!17155 lt!1795679)))))

(declare-fun b!4634040 () Bool)

(assert (=> b!4634040 (= e!2890810 (not (containsKey!2540 lt!1795034 key!4968)))))

(declare-fun b!4634041 () Bool)

(declare-fun e!2890812 () Option!11682)

(assert (=> b!4634041 (= e!2890814 e!2890812)))

(declare-fun c!793174 () Bool)

(assert (=> b!4634041 (= c!793174 ((_ is Cons!51632) lt!1795034))))

(declare-fun b!4634042 () Bool)

(assert (=> b!4634042 (= e!2890812 (getPair!332 (t!358818 lt!1795034) key!4968))))

(declare-fun b!4634043 () Bool)

(assert (=> b!4634043 (= e!2890812 None!11681)))

(declare-fun b!4634044 () Bool)

(declare-fun res!1944801 () Bool)

(assert (=> b!4634044 (=> (not res!1944801) (not e!2890813))))

(assert (=> b!4634044 (= res!1944801 (= (_1!29597 (get!17155 lt!1795679)) key!4968))))

(declare-fun b!4634045 () Bool)

(assert (=> b!4634045 (= e!2890814 (Some!11681 (h!57712 lt!1795034)))))

(declare-fun b!4634046 () Bool)

(assert (=> b!4634046 (= e!2890811 e!2890813)))

(declare-fun res!1944804 () Bool)

(assert (=> b!4634046 (=> (not res!1944804) (not e!2890813))))

(assert (=> b!4634046 (= res!1944804 (isDefined!8947 lt!1795679))))

(assert (= (and d!1460858 c!793173) b!4634045))

(assert (= (and d!1460858 (not c!793173)) b!4634041))

(assert (= (and b!4634041 c!793174) b!4634042))

(assert (= (and b!4634041 (not c!793174)) b!4634043))

(assert (= (and d!1460858 res!1944802) b!4634040))

(assert (= (and d!1460858 (not res!1944803)) b!4634046))

(assert (= (and b!4634046 res!1944804) b!4634044))

(assert (= (and b!4634044 res!1944801) b!4634039))

(declare-fun m!5487903 () Bool)

(assert (=> b!4634046 m!5487903))

(declare-fun m!5487905 () Bool)

(assert (=> b!4634042 m!5487905))

(declare-fun m!5487907 () Bool)

(assert (=> b!4634039 m!5487907))

(assert (=> b!4634039 m!5487907))

(declare-fun m!5487909 () Bool)

(assert (=> b!4634039 m!5487909))

(declare-fun m!5487911 () Bool)

(assert (=> b!4634040 m!5487911))

(assert (=> b!4634044 m!5487907))

(declare-fun m!5487913 () Bool)

(assert (=> d!1460858 m!5487913))

(declare-fun m!5487915 () Bool)

(assert (=> d!1460858 m!5487915))

(assert (=> b!4633593 d!1460858))

(declare-fun b!4634051 () Bool)

(declare-fun tp!1342438 () Bool)

(declare-fun e!2890817 () Bool)

(assert (=> b!4634051 (= e!2890817 (and tp_is_empty!29453 tp_is_empty!29455 tp!1342438))))

(assert (=> b!4633607 (= tp!1342431 e!2890817)))

(assert (= (and b!4633607 ((_ is Cons!51632) (t!358818 newBucket!224))) b!4634051))

(declare-fun b!4634052 () Bool)

(declare-fun e!2890818 () Bool)

(declare-fun tp!1342439 () Bool)

(assert (=> b!4634052 (= e!2890818 (and tp_is_empty!29453 tp_is_empty!29455 tp!1342439))))

(assert (=> b!4633602 (= tp!1342430 e!2890818)))

(assert (= (and b!4633602 ((_ is Cons!51632) (t!358818 oldBucket!40))) b!4634052))

(declare-fun b_lambda!170953 () Bool)

(assert (= b_lambda!170951 (or b!4633593 b_lambda!170953)))

(declare-fun bs!1029670 () Bool)

(declare-fun d!1460860 () Bool)

(assert (= bs!1029670 (and d!1460860 b!4633593)))

(assert (=> bs!1029670 (= (dynLambda!21528 lambda!194322 lt!1795042) (noDuplicateKeys!1540 (_2!29598 lt!1795042)))))

(declare-fun m!5487917 () Bool)

(assert (=> bs!1029670 m!5487917))

(assert (=> d!1460852 d!1460860))

(declare-fun b_lambda!170955 () Bool)

(assert (= b_lambda!170949 (or b!4633593 b_lambda!170955)))

(declare-fun bs!1029671 () Bool)

(declare-fun d!1460862 () Bool)

(assert (= bs!1029671 (and d!1460862 b!4633593)))

(assert (=> bs!1029671 (= (dynLambda!21528 lambda!194322 (h!57713 lt!1795043)) (noDuplicateKeys!1540 (_2!29598 (h!57713 lt!1795043))))))

(declare-fun m!5487919 () Bool)

(assert (=> bs!1029671 m!5487919))

(assert (=> b!4633972 d!1460862))

(check-sat (not d!1460634) (not b!4633850) (not bs!1029671) (not b!4633990) (not b!4633676) (not d!1460702) (not d!1460642) (not d!1460764) (not d!1460662) (not d!1460822) (not b!4633679) (not b!4633915) (not d!1460818) (not b!4633683) (not bs!1029670) (not bm!323368) (not b!4633854) (not bm!323383) (not b!4633941) (not bm!323369) (not b!4634021) (not b!4634005) (not bm!323377) (not bm!323381) (not b!4633782) (not b!4633681) (not d!1460832) (not b!4633962) (not d!1460712) (not d!1460858) (not bm!323375) (not d!1460810) (not b!4633859) (not d!1460768) (not b!4633973) (not b!4633942) (not d!1460786) (not d!1460842) (not b!4633855) (not b!4634042) (not b!4633849) (not d!1460788) (not b!4633927) (not bm!323370) (not d!1460852) (not b!4633857) (not b!4633818) (not d!1460830) (not b!4633827) (not d!1460636) (not b!4634040) (not d!1460790) (not d!1460688) (not b!4633909) (not d!1460840) (not b!4634022) (not b!4633874) (not bm!323359) (not d!1460692) (not b_lambda!170953) (not bm!323352) (not d!1460704) (not b!4633917) (not d!1460654) (not b!4633862) (not bm!323361) (not d!1460816) (not b!4633966) (not b!4633830) (not d!1460854) (not b!4633928) (not d!1460770) (not b!4633737) (not b!4634039) (not b!4633908) (not b!4633866) (not d!1460690) tp_is_empty!29453 (not b!4633829) (not b!4633918) (not b!4633745) (not b!4633816) (not b!4633916) (not b!4633978) (not d!1460766) (not d!1460836) (not b!4633873) (not b!4633976) (not b!4633980) (not d!1460752) (not bm!323376) (not b!4633684) (not bm!323374) (not b!4633875) (not b!4633906) (not d!1460856) (not d!1460716) (not d!1460706) (not bm!323396) (not d!1460762) (not b!4633828) (not d!1460640) (not b!4634019) (not b!4633752) (not b!4633852) (not b!4634007) (not b!4633939) (not b!4633951) (not b!4633819) (not b_lambda!170955) (not b!4634020) (not b!4634010) (not b!4633861) (not b!4633735) (not b!4633872) (not b!4633996) (not d!1460594) (not d!1460722) (not b!4634044) (not d!1460726) (not b!4633923) (not b!4633944) (not bm!323394) (not b!4633907) (not b!4633856) (not d!1460794) (not bm!323395) (not d!1460846) (not b!4633751) (not b!4633678) (not d!1460772) (not d!1460612) (not d!1460746) (not bm!323382) (not d!1460834) (not d!1460738) (not b!4633865) (not d!1460812) (not b!4633783) tp_is_empty!29455 (not b!4633982) (not d!1460802) (not d!1460754) (not d!1460774) (not b!4633851) (not b!4633950) (not b!4633979) (not d!1460806) (not b!4633998) (not b!4634051) (not d!1460838) (not d!1460804) (not b!4633677) (not b!4633940) (not b!4634046) (not d!1460814) (not d!1460850) (not d!1460828) (not d!1460750) (not b!4633924) (not b!4634052) (not bm!323360) (not b!4633817))
(check-sat)
