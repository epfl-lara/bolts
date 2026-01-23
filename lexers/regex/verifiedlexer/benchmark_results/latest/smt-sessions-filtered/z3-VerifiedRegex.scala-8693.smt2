; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!462796 () Bool)

(assert start!462796)

(declare-fun b!4621502 () Bool)

(declare-fun e!2882774 () Bool)

(declare-fun e!2882773 () Bool)

(assert (=> b!4621502 (= e!2882774 e!2882773)))

(declare-fun res!1937393 () Bool)

(assert (=> b!4621502 (=> (not res!1937393) (not e!2882773))))

(declare-fun lt!1777891 () (_ BitVec 64))

(declare-fun hash!414 () (_ BitVec 64))

(assert (=> b!4621502 (= res!1937393 (= lt!1777891 hash!414))))

(declare-datatypes ((Hashable!5885 0))(
  ( (HashableExt!5884 (__x!31588 Int)) )
))
(declare-fun hashF!1389 () Hashable!5885)

(declare-datatypes ((K!12870 0))(
  ( (K!12871 (val!18567 Int)) )
))
(declare-fun key!4968 () K!12870)

(declare-fun hash!3463 (Hashable!5885 K!12870) (_ BitVec 64))

(assert (=> b!4621502 (= lt!1777891 (hash!3463 hashF!1389 key!4968))))

(declare-fun b!4621503 () Bool)

(declare-fun res!1937390 () Bool)

(assert (=> b!4621503 (=> (not res!1937390) (not e!2882773))))

(declare-datatypes ((V!13116 0))(
  ( (V!13117 (val!18568 Int)) )
))
(declare-datatypes ((tuple2!52398 0))(
  ( (tuple2!52399 (_1!29493 K!12870) (_2!29493 V!13116)) )
))
(declare-datatypes ((List!51608 0))(
  ( (Nil!51484) (Cons!51484 (h!57520 tuple2!52398) (t!358626 List!51608)) )
))
(declare-fun newBucket!224 () List!51608)

(declare-fun allKeysSameHash!1342 (List!51608 (_ BitVec 64) Hashable!5885) Bool)

(assert (=> b!4621503 (= res!1937390 (allKeysSameHash!1342 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4621504 () Bool)

(declare-fun res!1937384 () Bool)

(declare-fun e!2882771 () Bool)

(assert (=> b!4621504 (=> res!1937384 e!2882771)))

(declare-fun oldBucket!40 () List!51608)

(declare-fun lt!1777879 () List!51608)

(declare-fun removePairForKey!1111 (List!51608 K!12870) List!51608)

(assert (=> b!4621504 (= res!1937384 (not (= (removePairForKey!1111 (t!358626 oldBucket!40) key!4968) lt!1777879)))))

(declare-fun b!4621505 () Bool)

(declare-fun e!2882776 () Bool)

(declare-datatypes ((ListMap!4245 0))(
  ( (ListMap!4246 (toList!4941 List!51608)) )
))
(declare-fun lt!1777889 () ListMap!4245)

(assert (=> b!4621505 (= e!2882776 (= lt!1777889 (ListMap!4246 Nil!51484)))))

(declare-fun e!2882777 () Bool)

(declare-fun tp!1341943 () Bool)

(declare-fun tp_is_empty!29247 () Bool)

(declare-fun b!4621506 () Bool)

(declare-fun tp_is_empty!29245 () Bool)

(assert (=> b!4621506 (= e!2882777 (and tp_is_empty!29245 tp_is_empty!29247 tp!1341943))))

(declare-fun lambda!190902 () Int)

(declare-fun b!4621507 () Bool)

(declare-fun e!2882780 () Bool)

(declare-datatypes ((tuple2!52400 0))(
  ( (tuple2!52401 (_1!29494 (_ BitVec 64)) (_2!29494 List!51608)) )
))
(declare-datatypes ((List!51609 0))(
  ( (Nil!51485) (Cons!51485 (h!57521 tuple2!52400) (t!358627 List!51609)) )
))
(declare-fun forall!10794 (List!51609 Int) Bool)

(assert (=> b!4621507 (= e!2882780 (forall!10794 (Cons!51485 (tuple2!52401 hash!414 newBucket!224) Nil!51485) lambda!190902))))

(declare-fun b!4621509 () Bool)

(assert (=> b!4621509 (= e!2882771 e!2882780)))

(declare-fun res!1937385 () Bool)

(assert (=> b!4621509 (=> res!1937385 e!2882780)))

(declare-fun lt!1777885 () List!51608)

(declare-fun lt!1777882 () ListMap!4245)

(declare-fun eq!803 (ListMap!4245 ListMap!4245) Bool)

(declare-fun +!1854 (ListMap!4245 tuple2!52398) ListMap!4245)

(declare-fun extractMap!1544 (List!51609) ListMap!4245)

(assert (=> b!4621509 (= res!1937385 (not (eq!803 lt!1777882 (+!1854 (extractMap!1544 (Cons!51485 (tuple2!52401 hash!414 lt!1777885) Nil!51485)) (h!57520 oldBucket!40)))))))

(declare-fun lt!1777881 () tuple2!52398)

(declare-fun addToMapMapFromBucket!949 (List!51608 ListMap!4245) ListMap!4245)

(assert (=> b!4621509 (eq!803 (addToMapMapFromBucket!949 (Cons!51484 lt!1777881 lt!1777879) (ListMap!4246 Nil!51484)) (+!1854 (addToMapMapFromBucket!949 lt!1777879 (ListMap!4246 Nil!51484)) lt!1777881))))

(declare-datatypes ((Unit!111145 0))(
  ( (Unit!111146) )
))
(declare-fun lt!1777878 () Unit!111145)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!54 (tuple2!52398 List!51608 ListMap!4245) Unit!111145)

(assert (=> b!4621509 (= lt!1777878 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!54 lt!1777881 lt!1777879 (ListMap!4246 Nil!51484)))))

(declare-fun head!9622 (List!51608) tuple2!52398)

(assert (=> b!4621509 (= lt!1777881 (head!9622 newBucket!224))))

(declare-fun lt!1777887 () tuple2!52398)

(assert (=> b!4621509 (eq!803 (addToMapMapFromBucket!949 (Cons!51484 lt!1777887 lt!1777885) (ListMap!4246 Nil!51484)) (+!1854 (addToMapMapFromBucket!949 lt!1777885 (ListMap!4246 Nil!51484)) lt!1777887))))

(declare-fun lt!1777890 () Unit!111145)

(assert (=> b!4621509 (= lt!1777890 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!54 lt!1777887 lt!1777885 (ListMap!4246 Nil!51484)))))

(assert (=> b!4621509 (= lt!1777887 (head!9622 oldBucket!40))))

(declare-fun lt!1777893 () List!51609)

(declare-fun contains!14495 (ListMap!4245 K!12870) Bool)

(assert (=> b!4621509 (contains!14495 (extractMap!1544 lt!1777893) key!4968)))

(declare-fun lt!1777877 () Unit!111145)

(declare-datatypes ((ListLongMap!3531 0))(
  ( (ListLongMap!3532 (toList!4942 List!51609)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!306 (ListLongMap!3531 K!12870 Hashable!5885) Unit!111145)

(assert (=> b!4621509 (= lt!1777877 (lemmaListContainsThenExtractedMapContains!306 (ListLongMap!3532 lt!1777893) key!4968 hashF!1389))))

(assert (=> b!4621509 (= lt!1777893 (Cons!51485 (tuple2!52401 hash!414 (t!358626 oldBucket!40)) Nil!51485))))

(declare-fun b!4621510 () Bool)

(declare-fun e!2882779 () Bool)

(assert (=> b!4621510 (= e!2882773 (not e!2882779))))

(declare-fun res!1937391 () Bool)

(assert (=> b!4621510 (=> res!1937391 e!2882779)))

(get-info :version)

(assert (=> b!4621510 (= res!1937391 (or (and ((_ is Cons!51484) oldBucket!40) (= (_1!29493 (h!57520 oldBucket!40)) key!4968)) (not ((_ is Cons!51484) oldBucket!40)) (= (_1!29493 (h!57520 oldBucket!40)) key!4968)))))

(assert (=> b!4621510 e!2882776))

(declare-fun res!1937394 () Bool)

(assert (=> b!4621510 (=> (not res!1937394) (not e!2882776))))

(assert (=> b!4621510 (= res!1937394 (= lt!1777882 (addToMapMapFromBucket!949 oldBucket!40 lt!1777889)))))

(assert (=> b!4621510 (= lt!1777889 (extractMap!1544 Nil!51485))))

(assert (=> b!4621510 true))

(declare-fun b!4621511 () Bool)

(declare-fun res!1937388 () Bool)

(declare-fun e!2882775 () Bool)

(assert (=> b!4621511 (=> (not res!1937388) (not e!2882775))))

(assert (=> b!4621511 (= res!1937388 (allKeysSameHash!1342 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4621512 () Bool)

(declare-fun res!1937387 () Bool)

(assert (=> b!4621512 (=> (not res!1937387) (not e!2882775))))

(assert (=> b!4621512 (= res!1937387 (= (removePairForKey!1111 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4621513 () Bool)

(declare-fun e!2882778 () Bool)

(assert (=> b!4621513 (= e!2882778 e!2882771)))

(declare-fun res!1937392 () Bool)

(assert (=> b!4621513 (=> res!1937392 e!2882771)))

(assert (=> b!4621513 (= res!1937392 (not (= (removePairForKey!1111 lt!1777885 key!4968) lt!1777879)))))

(declare-fun tail!8123 (List!51608) List!51608)

(assert (=> b!4621513 (= lt!1777879 (tail!8123 newBucket!224))))

(assert (=> b!4621513 (= lt!1777885 (tail!8123 oldBucket!40))))

(declare-fun tp!1341942 () Bool)

(declare-fun b!4621514 () Bool)

(declare-fun e!2882772 () Bool)

(assert (=> b!4621514 (= e!2882772 (and tp_is_empty!29245 tp_is_empty!29247 tp!1341942))))

(declare-fun res!1937383 () Bool)

(assert (=> start!462796 (=> (not res!1937383) (not e!2882775))))

(declare-fun noDuplicateKeys!1488 (List!51608) Bool)

(assert (=> start!462796 (= res!1937383 (noDuplicateKeys!1488 oldBucket!40))))

(assert (=> start!462796 e!2882775))

(assert (=> start!462796 true))

(assert (=> start!462796 e!2882772))

(assert (=> start!462796 tp_is_empty!29245))

(assert (=> start!462796 e!2882777))

(declare-fun b!4621508 () Bool)

(assert (=> b!4621508 (= e!2882779 e!2882778)))

(declare-fun res!1937382 () Bool)

(assert (=> b!4621508 (=> res!1937382 e!2882778)))

(declare-fun containsKey!2400 (List!51608 K!12870) Bool)

(assert (=> b!4621508 (= res!1937382 (not (containsKey!2400 (t!358626 oldBucket!40) key!4968)))))

(assert (=> b!4621508 (containsKey!2400 oldBucket!40 key!4968)))

(declare-fun lt!1777884 () Unit!111145)

(declare-fun lemmaGetPairDefinedThenContainsKey!34 (List!51608 K!12870 Hashable!5885) Unit!111145)

(assert (=> b!4621508 (= lt!1777884 (lemmaGetPairDefinedThenContainsKey!34 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1777876 () List!51608)

(declare-datatypes ((Option!11542 0))(
  ( (None!11541) (Some!11541 (v!45639 tuple2!52398)) )
))
(declare-fun isDefined!8807 (Option!11542) Bool)

(declare-fun getPair!280 (List!51608 K!12870) Option!11542)

(assert (=> b!4621508 (isDefined!8807 (getPair!280 lt!1777876 key!4968))))

(declare-fun lt!1777888 () tuple2!52400)

(declare-fun lt!1777880 () Unit!111145)

(declare-fun lt!1777886 () List!51609)

(declare-fun forallContained!3018 (List!51609 Int tuple2!52400) Unit!111145)

(assert (=> b!4621508 (= lt!1777880 (forallContained!3018 lt!1777886 lambda!190902 lt!1777888))))

(declare-fun contains!14496 (List!51609 tuple2!52400) Bool)

(assert (=> b!4621508 (contains!14496 lt!1777886 lt!1777888)))

(assert (=> b!4621508 (= lt!1777888 (tuple2!52401 lt!1777891 lt!1777876))))

(declare-fun lt!1777894 () Unit!111145)

(declare-fun lt!1777883 () ListLongMap!3531)

(declare-fun lemmaGetValueImpliesTupleContained!85 (ListLongMap!3531 (_ BitVec 64) List!51608) Unit!111145)

(assert (=> b!4621508 (= lt!1777894 (lemmaGetValueImpliesTupleContained!85 lt!1777883 lt!1777891 lt!1777876))))

(declare-fun apply!12153 (ListLongMap!3531 (_ BitVec 64)) List!51608)

(assert (=> b!4621508 (= lt!1777876 (apply!12153 lt!1777883 lt!1777891))))

(declare-fun contains!14497 (ListLongMap!3531 (_ BitVec 64)) Bool)

(assert (=> b!4621508 (contains!14497 lt!1777883 lt!1777891)))

(declare-fun lt!1777892 () Unit!111145)

(declare-fun lemmaInGenMapThenLongMapContainsHash!486 (ListLongMap!3531 K!12870 Hashable!5885) Unit!111145)

(assert (=> b!4621508 (= lt!1777892 (lemmaInGenMapThenLongMapContainsHash!486 lt!1777883 key!4968 hashF!1389))))

(declare-fun lt!1777895 () Unit!111145)

(declare-fun lemmaInGenMapThenGetPairDefined!76 (ListLongMap!3531 K!12870 Hashable!5885) Unit!111145)

(assert (=> b!4621508 (= lt!1777895 (lemmaInGenMapThenGetPairDefined!76 lt!1777883 key!4968 hashF!1389))))

(assert (=> b!4621508 (= lt!1777883 (ListLongMap!3532 lt!1777886))))

(declare-fun b!4621515 () Bool)

(declare-fun res!1937389 () Bool)

(assert (=> b!4621515 (=> (not res!1937389) (not e!2882775))))

(assert (=> b!4621515 (= res!1937389 (noDuplicateKeys!1488 newBucket!224))))

(declare-fun b!4621516 () Bool)

(assert (=> b!4621516 (= e!2882775 e!2882774)))

(declare-fun res!1937386 () Bool)

(assert (=> b!4621516 (=> (not res!1937386) (not e!2882774))))

(assert (=> b!4621516 (= res!1937386 (contains!14495 lt!1777882 key!4968))))

(assert (=> b!4621516 (= lt!1777882 (extractMap!1544 lt!1777886))))

(assert (=> b!4621516 (= lt!1777886 (Cons!51485 (tuple2!52401 hash!414 oldBucket!40) Nil!51485))))

(assert (= (and start!462796 res!1937383) b!4621515))

(assert (= (and b!4621515 res!1937389) b!4621512))

(assert (= (and b!4621512 res!1937387) b!4621511))

(assert (= (and b!4621511 res!1937388) b!4621516))

(assert (= (and b!4621516 res!1937386) b!4621502))

(assert (= (and b!4621502 res!1937393) b!4621503))

(assert (= (and b!4621503 res!1937390) b!4621510))

(assert (= (and b!4621510 res!1937394) b!4621505))

(assert (= (and b!4621510 (not res!1937391)) b!4621508))

(assert (= (and b!4621508 (not res!1937382)) b!4621513))

(assert (= (and b!4621513 (not res!1937392)) b!4621504))

(assert (= (and b!4621504 (not res!1937384)) b!4621509))

(assert (= (and b!4621509 (not res!1937385)) b!4621507))

(assert (= (and start!462796 ((_ is Cons!51484) oldBucket!40)) b!4621514))

(assert (= (and start!462796 ((_ is Cons!51484) newBucket!224)) b!4621506))

(declare-fun m!5458709 () Bool)

(assert (=> b!4621504 m!5458709))

(declare-fun m!5458711 () Bool)

(assert (=> b!4621516 m!5458711))

(declare-fun m!5458713 () Bool)

(assert (=> b!4621516 m!5458713))

(declare-fun m!5458715 () Bool)

(assert (=> b!4621503 m!5458715))

(declare-fun m!5458717 () Bool)

(assert (=> start!462796 m!5458717))

(declare-fun m!5458719 () Bool)

(assert (=> b!4621515 m!5458719))

(declare-fun m!5458721 () Bool)

(assert (=> b!4621502 m!5458721))

(declare-fun m!5458723 () Bool)

(assert (=> b!4621511 m!5458723))

(declare-fun m!5458725 () Bool)

(assert (=> b!4621513 m!5458725))

(declare-fun m!5458727 () Bool)

(assert (=> b!4621513 m!5458727))

(declare-fun m!5458729 () Bool)

(assert (=> b!4621513 m!5458729))

(declare-fun m!5458731 () Bool)

(assert (=> b!4621512 m!5458731))

(declare-fun m!5458733 () Bool)

(assert (=> b!4621508 m!5458733))

(declare-fun m!5458735 () Bool)

(assert (=> b!4621508 m!5458735))

(declare-fun m!5458737 () Bool)

(assert (=> b!4621508 m!5458737))

(declare-fun m!5458739 () Bool)

(assert (=> b!4621508 m!5458739))

(declare-fun m!5458741 () Bool)

(assert (=> b!4621508 m!5458741))

(declare-fun m!5458743 () Bool)

(assert (=> b!4621508 m!5458743))

(declare-fun m!5458745 () Bool)

(assert (=> b!4621508 m!5458745))

(declare-fun m!5458747 () Bool)

(assert (=> b!4621508 m!5458747))

(declare-fun m!5458749 () Bool)

(assert (=> b!4621508 m!5458749))

(assert (=> b!4621508 m!5458743))

(declare-fun m!5458751 () Bool)

(assert (=> b!4621508 m!5458751))

(declare-fun m!5458753 () Bool)

(assert (=> b!4621508 m!5458753))

(declare-fun m!5458755 () Bool)

(assert (=> b!4621508 m!5458755))

(declare-fun m!5458757 () Bool)

(assert (=> b!4621509 m!5458757))

(declare-fun m!5458759 () Bool)

(assert (=> b!4621509 m!5458759))

(declare-fun m!5458761 () Bool)

(assert (=> b!4621509 m!5458761))

(declare-fun m!5458763 () Bool)

(assert (=> b!4621509 m!5458763))

(declare-fun m!5458765 () Bool)

(assert (=> b!4621509 m!5458765))

(declare-fun m!5458767 () Bool)

(assert (=> b!4621509 m!5458767))

(declare-fun m!5458769 () Bool)

(assert (=> b!4621509 m!5458769))

(declare-fun m!5458771 () Bool)

(assert (=> b!4621509 m!5458771))

(declare-fun m!5458773 () Bool)

(assert (=> b!4621509 m!5458773))

(declare-fun m!5458775 () Bool)

(assert (=> b!4621509 m!5458775))

(assert (=> b!4621509 m!5458771))

(assert (=> b!4621509 m!5458757))

(assert (=> b!4621509 m!5458761))

(declare-fun m!5458777 () Bool)

(assert (=> b!4621509 m!5458777))

(assert (=> b!4621509 m!5458773))

(assert (=> b!4621509 m!5458765))

(assert (=> b!4621509 m!5458759))

(declare-fun m!5458779 () Bool)

(assert (=> b!4621509 m!5458779))

(declare-fun m!5458781 () Bool)

(assert (=> b!4621509 m!5458781))

(declare-fun m!5458783 () Bool)

(assert (=> b!4621509 m!5458783))

(declare-fun m!5458785 () Bool)

(assert (=> b!4621509 m!5458785))

(declare-fun m!5458787 () Bool)

(assert (=> b!4621509 m!5458787))

(assert (=> b!4621509 m!5458785))

(assert (=> b!4621509 m!5458763))

(declare-fun m!5458789 () Bool)

(assert (=> b!4621509 m!5458789))

(declare-fun m!5458791 () Bool)

(assert (=> b!4621509 m!5458791))

(assert (=> b!4621509 m!5458777))

(declare-fun m!5458793 () Bool)

(assert (=> b!4621510 m!5458793))

(declare-fun m!5458795 () Bool)

(assert (=> b!4621510 m!5458795))

(declare-fun m!5458797 () Bool)

(assert (=> b!4621507 m!5458797))

(check-sat (not b!4621516) (not b!4621507) tp_is_empty!29247 (not b!4621510) (not b!4621506) (not b!4621513) (not b!4621502) (not b!4621504) (not b!4621508) (not b!4621509) (not start!462796) tp_is_empty!29245 (not b!4621515) (not b!4621503) (not b!4621511) (not b!4621512) (not b!4621514))
(check-sat)
(get-model)

(declare-fun b!4621530 () Bool)

(declare-fun e!2882785 () List!51608)

(declare-fun e!2882786 () List!51608)

(assert (=> b!4621530 (= e!2882785 e!2882786)))

(declare-fun c!791072 () Bool)

(assert (=> b!4621530 (= c!791072 ((_ is Cons!51484) lt!1777885))))

(declare-fun b!4621531 () Bool)

(assert (=> b!4621531 (= e!2882786 (Cons!51484 (h!57520 lt!1777885) (removePairForKey!1111 (t!358626 lt!1777885) key!4968)))))

(declare-fun d!1455492 () Bool)

(declare-fun lt!1777898 () List!51608)

(assert (=> d!1455492 (not (containsKey!2400 lt!1777898 key!4968))))

(assert (=> d!1455492 (= lt!1777898 e!2882785)))

(declare-fun c!791071 () Bool)

(assert (=> d!1455492 (= c!791071 (and ((_ is Cons!51484) lt!1777885) (= (_1!29493 (h!57520 lt!1777885)) key!4968)))))

(assert (=> d!1455492 (noDuplicateKeys!1488 lt!1777885)))

(assert (=> d!1455492 (= (removePairForKey!1111 lt!1777885 key!4968) lt!1777898)))

(declare-fun b!4621532 () Bool)

(assert (=> b!4621532 (= e!2882786 Nil!51484)))

(declare-fun b!4621529 () Bool)

(assert (=> b!4621529 (= e!2882785 (t!358626 lt!1777885))))

(assert (= (and d!1455492 c!791071) b!4621529))

(assert (= (and d!1455492 (not c!791071)) b!4621530))

(assert (= (and b!4621530 c!791072) b!4621531))

(assert (= (and b!4621530 (not c!791072)) b!4621532))

(declare-fun m!5458803 () Bool)

(assert (=> b!4621531 m!5458803))

(declare-fun m!5458805 () Bool)

(assert (=> d!1455492 m!5458805))

(declare-fun m!5458807 () Bool)

(assert (=> d!1455492 m!5458807))

(assert (=> b!4621513 d!1455492))

(declare-fun d!1455494 () Bool)

(assert (=> d!1455494 (= (tail!8123 newBucket!224) (t!358626 newBucket!224))))

(assert (=> b!4621513 d!1455494))

(declare-fun d!1455496 () Bool)

(assert (=> d!1455496 (= (tail!8123 oldBucket!40) (t!358626 oldBucket!40))))

(assert (=> b!4621513 d!1455496))

(declare-fun d!1455498 () Bool)

(declare-fun hash!3465 (Hashable!5885 K!12870) (_ BitVec 64))

(assert (=> d!1455498 (= (hash!3463 hashF!1389 key!4968) (hash!3465 hashF!1389 key!4968))))

(declare-fun bs!1020410 () Bool)

(assert (= bs!1020410 d!1455498))

(declare-fun m!5458809 () Bool)

(assert (=> bs!1020410 m!5458809))

(assert (=> b!4621502 d!1455498))

(declare-fun b!4621534 () Bool)

(declare-fun e!2882787 () List!51608)

(declare-fun e!2882788 () List!51608)

(assert (=> b!4621534 (= e!2882787 e!2882788)))

(declare-fun c!791074 () Bool)

(assert (=> b!4621534 (= c!791074 ((_ is Cons!51484) oldBucket!40))))

(declare-fun b!4621535 () Bool)

(assert (=> b!4621535 (= e!2882788 (Cons!51484 (h!57520 oldBucket!40) (removePairForKey!1111 (t!358626 oldBucket!40) key!4968)))))

(declare-fun d!1455500 () Bool)

(declare-fun lt!1777899 () List!51608)

(assert (=> d!1455500 (not (containsKey!2400 lt!1777899 key!4968))))

(assert (=> d!1455500 (= lt!1777899 e!2882787)))

(declare-fun c!791073 () Bool)

(assert (=> d!1455500 (= c!791073 (and ((_ is Cons!51484) oldBucket!40) (= (_1!29493 (h!57520 oldBucket!40)) key!4968)))))

(assert (=> d!1455500 (noDuplicateKeys!1488 oldBucket!40)))

(assert (=> d!1455500 (= (removePairForKey!1111 oldBucket!40 key!4968) lt!1777899)))

(declare-fun b!4621536 () Bool)

(assert (=> b!4621536 (= e!2882788 Nil!51484)))

(declare-fun b!4621533 () Bool)

(assert (=> b!4621533 (= e!2882787 (t!358626 oldBucket!40))))

(assert (= (and d!1455500 c!791073) b!4621533))

(assert (= (and d!1455500 (not c!791073)) b!4621534))

(assert (= (and b!4621534 c!791074) b!4621535))

(assert (= (and b!4621534 (not c!791074)) b!4621536))

(assert (=> b!4621535 m!5458709))

(declare-fun m!5458811 () Bool)

(assert (=> d!1455500 m!5458811))

(assert (=> d!1455500 m!5458717))

(assert (=> b!4621512 d!1455500))

(declare-fun d!1455502 () Bool)

(assert (=> d!1455502 true))

(assert (=> d!1455502 true))

(declare-fun lambda!190908 () Int)

(declare-fun forall!10796 (List!51608 Int) Bool)

(assert (=> d!1455502 (= (allKeysSameHash!1342 oldBucket!40 hash!414 hashF!1389) (forall!10796 oldBucket!40 lambda!190908))))

(declare-fun bs!1020411 () Bool)

(assert (= bs!1020411 d!1455502))

(declare-fun m!5458813 () Bool)

(assert (=> bs!1020411 m!5458813))

(assert (=> b!4621511 d!1455502))

(declare-fun bs!1020496 () Bool)

(declare-fun b!4621631 () Bool)

(assert (= bs!1020496 (and b!4621631 d!1455502)))

(declare-fun lambda!190988 () Int)

(assert (=> bs!1020496 (not (= lambda!190988 lambda!190908))))

(assert (=> b!4621631 true))

(declare-fun bs!1020501 () Bool)

(declare-fun b!4621628 () Bool)

(assert (= bs!1020501 (and b!4621628 d!1455502)))

(declare-fun lambda!190989 () Int)

(assert (=> bs!1020501 (not (= lambda!190989 lambda!190908))))

(declare-fun bs!1020503 () Bool)

(assert (= bs!1020503 (and b!4621628 b!4621631)))

(assert (=> bs!1020503 (= lambda!190989 lambda!190988)))

(assert (=> b!4621628 true))

(declare-fun lambda!190990 () Int)

(assert (=> bs!1020501 (not (= lambda!190990 lambda!190908))))

(declare-fun lt!1778133 () ListMap!4245)

(assert (=> bs!1020503 (= (= lt!1778133 lt!1777889) (= lambda!190990 lambda!190988))))

(assert (=> b!4621628 (= (= lt!1778133 lt!1777889) (= lambda!190990 lambda!190989))))

(assert (=> b!4621628 true))

(declare-fun bs!1020505 () Bool)

(declare-fun d!1455504 () Bool)

(assert (= bs!1020505 (and d!1455504 d!1455502)))

(declare-fun lambda!190991 () Int)

(assert (=> bs!1020505 (not (= lambda!190991 lambda!190908))))

(declare-fun bs!1020506 () Bool)

(assert (= bs!1020506 (and d!1455504 b!4621631)))

(declare-fun lt!1778142 () ListMap!4245)

(assert (=> bs!1020506 (= (= lt!1778142 lt!1777889) (= lambda!190991 lambda!190988))))

(declare-fun bs!1020507 () Bool)

(assert (= bs!1020507 (and d!1455504 b!4621628)))

(assert (=> bs!1020507 (= (= lt!1778142 lt!1777889) (= lambda!190991 lambda!190989))))

(assert (=> bs!1020507 (= (= lt!1778142 lt!1778133) (= lambda!190991 lambda!190990))))

(assert (=> d!1455504 true))

(declare-fun bm!322275 () Bool)

(declare-fun call!322279 () Unit!111145)

(declare-fun lemmaContainsAllItsOwnKeys!492 (ListMap!4245) Unit!111145)

(assert (=> bm!322275 (= call!322279 (lemmaContainsAllItsOwnKeys!492 lt!1777889))))

(declare-fun e!2882840 () ListMap!4245)

(assert (=> b!4621628 (= e!2882840 lt!1778133)))

(declare-fun lt!1778126 () ListMap!4245)

(assert (=> b!4621628 (= lt!1778126 (+!1854 lt!1777889 (h!57520 oldBucket!40)))))

(assert (=> b!4621628 (= lt!1778133 (addToMapMapFromBucket!949 (t!358626 oldBucket!40) (+!1854 lt!1777889 (h!57520 oldBucket!40))))))

(declare-fun lt!1778140 () Unit!111145)

(assert (=> b!4621628 (= lt!1778140 call!322279)))

(assert (=> b!4621628 (forall!10796 (toList!4941 lt!1777889) lambda!190989)))

(declare-fun lt!1778134 () Unit!111145)

(assert (=> b!4621628 (= lt!1778134 lt!1778140)))

(assert (=> b!4621628 (forall!10796 (toList!4941 lt!1778126) lambda!190990)))

(declare-fun lt!1778139 () Unit!111145)

(declare-fun Unit!111180 () Unit!111145)

(assert (=> b!4621628 (= lt!1778139 Unit!111180)))

(assert (=> b!4621628 (forall!10796 (t!358626 oldBucket!40) lambda!190990)))

(declare-fun lt!1778136 () Unit!111145)

(declare-fun Unit!111181 () Unit!111145)

(assert (=> b!4621628 (= lt!1778136 Unit!111181)))

(declare-fun lt!1778137 () Unit!111145)

(declare-fun Unit!111182 () Unit!111145)

(assert (=> b!4621628 (= lt!1778137 Unit!111182)))

(declare-fun lt!1778127 () Unit!111145)

(declare-fun forallContained!3020 (List!51608 Int tuple2!52398) Unit!111145)

(assert (=> b!4621628 (= lt!1778127 (forallContained!3020 (toList!4941 lt!1778126) lambda!190990 (h!57520 oldBucket!40)))))

(assert (=> b!4621628 (contains!14495 lt!1778126 (_1!29493 (h!57520 oldBucket!40)))))

(declare-fun lt!1778128 () Unit!111145)

(declare-fun Unit!111183 () Unit!111145)

(assert (=> b!4621628 (= lt!1778128 Unit!111183)))

(assert (=> b!4621628 (contains!14495 lt!1778133 (_1!29493 (h!57520 oldBucket!40)))))

(declare-fun lt!1778130 () Unit!111145)

(declare-fun Unit!111184 () Unit!111145)

(assert (=> b!4621628 (= lt!1778130 Unit!111184)))

(assert (=> b!4621628 (forall!10796 oldBucket!40 lambda!190990)))

(declare-fun lt!1778132 () Unit!111145)

(declare-fun Unit!111185 () Unit!111145)

(assert (=> b!4621628 (= lt!1778132 Unit!111185)))

(assert (=> b!4621628 (forall!10796 (toList!4941 lt!1778126) lambda!190990)))

(declare-fun lt!1778135 () Unit!111145)

(declare-fun Unit!111186 () Unit!111145)

(assert (=> b!4621628 (= lt!1778135 Unit!111186)))

(declare-fun lt!1778123 () Unit!111145)

(declare-fun Unit!111187 () Unit!111145)

(assert (=> b!4621628 (= lt!1778123 Unit!111187)))

(declare-fun lt!1778138 () Unit!111145)

(declare-fun addForallContainsKeyThenBeforeAdding!491 (ListMap!4245 ListMap!4245 K!12870 V!13116) Unit!111145)

(assert (=> b!4621628 (= lt!1778138 (addForallContainsKeyThenBeforeAdding!491 lt!1777889 lt!1778133 (_1!29493 (h!57520 oldBucket!40)) (_2!29493 (h!57520 oldBucket!40))))))

(assert (=> b!4621628 (forall!10796 (toList!4941 lt!1777889) lambda!190990)))

(declare-fun lt!1778131 () Unit!111145)

(assert (=> b!4621628 (= lt!1778131 lt!1778138)))

(declare-fun call!322280 () Bool)

(assert (=> b!4621628 call!322280))

(declare-fun lt!1778129 () Unit!111145)

(declare-fun Unit!111188 () Unit!111145)

(assert (=> b!4621628 (= lt!1778129 Unit!111188)))

(declare-fun res!1937439 () Bool)

(assert (=> b!4621628 (= res!1937439 (forall!10796 oldBucket!40 lambda!190990))))

(declare-fun e!2882842 () Bool)

(assert (=> b!4621628 (=> (not res!1937439) (not e!2882842))))

(assert (=> b!4621628 e!2882842))

(declare-fun lt!1778124 () Unit!111145)

(declare-fun Unit!111189 () Unit!111145)

(assert (=> b!4621628 (= lt!1778124 Unit!111189)))

(declare-fun b!4621629 () Bool)

(declare-fun e!2882841 () Bool)

(declare-fun invariantList!1190 (List!51608) Bool)

(assert (=> b!4621629 (= e!2882841 (invariantList!1190 (toList!4941 lt!1778142)))))

(declare-fun b!4621630 () Bool)

(declare-fun res!1937438 () Bool)

(assert (=> b!4621630 (=> (not res!1937438) (not e!2882841))))

(assert (=> b!4621630 (= res!1937438 (forall!10796 (toList!4941 lt!1777889) lambda!190991))))

(assert (=> b!4621631 (= e!2882840 lt!1777889)))

(declare-fun lt!1778141 () Unit!111145)

(assert (=> b!4621631 (= lt!1778141 call!322279)))

(assert (=> b!4621631 call!322280))

(declare-fun lt!1778143 () Unit!111145)

(assert (=> b!4621631 (= lt!1778143 lt!1778141)))

(declare-fun call!322281 () Bool)

(assert (=> b!4621631 call!322281))

(declare-fun lt!1778125 () Unit!111145)

(declare-fun Unit!111190 () Unit!111145)

(assert (=> b!4621631 (= lt!1778125 Unit!111190)))

(declare-fun c!791096 () Bool)

(declare-fun bm!322276 () Bool)

(assert (=> bm!322276 (= call!322281 (forall!10796 (toList!4941 lt!1777889) (ite c!791096 lambda!190988 lambda!190990)))))

(declare-fun b!4621632 () Bool)

(assert (=> b!4621632 (= e!2882842 call!322281)))

(declare-fun bm!322274 () Bool)

(assert (=> bm!322274 (= call!322280 (forall!10796 (toList!4941 lt!1777889) (ite c!791096 lambda!190988 lambda!190990)))))

(assert (=> d!1455504 e!2882841))

(declare-fun res!1937440 () Bool)

(assert (=> d!1455504 (=> (not res!1937440) (not e!2882841))))

(assert (=> d!1455504 (= res!1937440 (forall!10796 oldBucket!40 lambda!190991))))

(assert (=> d!1455504 (= lt!1778142 e!2882840)))

(assert (=> d!1455504 (= c!791096 ((_ is Nil!51484) oldBucket!40))))

(assert (=> d!1455504 (noDuplicateKeys!1488 oldBucket!40)))

(assert (=> d!1455504 (= (addToMapMapFromBucket!949 oldBucket!40 lt!1777889) lt!1778142)))

(assert (= (and d!1455504 c!791096) b!4621631))

(assert (= (and d!1455504 (not c!791096)) b!4621628))

(assert (= (and b!4621628 res!1937439) b!4621632))

(assert (= (or b!4621631 b!4621628) bm!322275))

(assert (= (or b!4621631 b!4621632) bm!322276))

(assert (= (or b!4621631 b!4621628) bm!322274))

(assert (= (and d!1455504 res!1937440) b!4621630))

(assert (= (and b!4621630 res!1937438) b!4621629))

(declare-fun m!5459049 () Bool)

(assert (=> d!1455504 m!5459049))

(assert (=> d!1455504 m!5458717))

(declare-fun m!5459051 () Bool)

(assert (=> bm!322276 m!5459051))

(declare-fun m!5459053 () Bool)

(assert (=> bm!322275 m!5459053))

(declare-fun m!5459055 () Bool)

(assert (=> b!4621629 m!5459055))

(declare-fun m!5459057 () Bool)

(assert (=> b!4621630 m!5459057))

(declare-fun m!5459059 () Bool)

(assert (=> b!4621628 m!5459059))

(declare-fun m!5459061 () Bool)

(assert (=> b!4621628 m!5459061))

(declare-fun m!5459063 () Bool)

(assert (=> b!4621628 m!5459063))

(declare-fun m!5459065 () Bool)

(assert (=> b!4621628 m!5459065))

(declare-fun m!5459067 () Bool)

(assert (=> b!4621628 m!5459067))

(assert (=> b!4621628 m!5459059))

(declare-fun m!5459069 () Bool)

(assert (=> b!4621628 m!5459069))

(declare-fun m!5459071 () Bool)

(assert (=> b!4621628 m!5459071))

(declare-fun m!5459073 () Bool)

(assert (=> b!4621628 m!5459073))

(declare-fun m!5459075 () Bool)

(assert (=> b!4621628 m!5459075))

(declare-fun m!5459077 () Bool)

(assert (=> b!4621628 m!5459077))

(assert (=> b!4621628 m!5459065))

(assert (=> b!4621628 m!5459075))

(declare-fun m!5459079 () Bool)

(assert (=> b!4621628 m!5459079))

(assert (=> bm!322274 m!5459051))

(assert (=> b!4621510 d!1455504))

(declare-fun bs!1020514 () Bool)

(declare-fun d!1455542 () Bool)

(assert (= bs!1020514 (and d!1455542 b!4621508)))

(declare-fun lambda!190997 () Int)

(assert (=> bs!1020514 (= lambda!190997 lambda!190902)))

(declare-fun lt!1778154 () ListMap!4245)

(assert (=> d!1455542 (invariantList!1190 (toList!4941 lt!1778154))))

(declare-fun e!2882855 () ListMap!4245)

(assert (=> d!1455542 (= lt!1778154 e!2882855)))

(declare-fun c!791103 () Bool)

(assert (=> d!1455542 (= c!791103 ((_ is Cons!51485) Nil!51485))))

(assert (=> d!1455542 (forall!10794 Nil!51485 lambda!190997)))

(assert (=> d!1455542 (= (extractMap!1544 Nil!51485) lt!1778154)))

(declare-fun b!4621656 () Bool)

(assert (=> b!4621656 (= e!2882855 (addToMapMapFromBucket!949 (_2!29494 (h!57521 Nil!51485)) (extractMap!1544 (t!358627 Nil!51485))))))

(declare-fun b!4621657 () Bool)

(assert (=> b!4621657 (= e!2882855 (ListMap!4246 Nil!51484))))

(assert (= (and d!1455542 c!791103) b!4621656))

(assert (= (and d!1455542 (not c!791103)) b!4621657))

(declare-fun m!5459091 () Bool)

(assert (=> d!1455542 m!5459091))

(declare-fun m!5459093 () Bool)

(assert (=> d!1455542 m!5459093))

(declare-fun m!5459095 () Bool)

(assert (=> b!4621656 m!5459095))

(assert (=> b!4621656 m!5459095))

(declare-fun m!5459097 () Bool)

(assert (=> b!4621656 m!5459097))

(assert (=> b!4621510 d!1455542))

(declare-fun d!1455548 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8764 (List!51608) (InoxSet tuple2!52398))

(assert (=> d!1455548 (= (eq!803 lt!1777882 (+!1854 (extractMap!1544 (Cons!51485 (tuple2!52401 hash!414 lt!1777885) Nil!51485)) (h!57520 oldBucket!40))) (= (content!8764 (toList!4941 lt!1777882)) (content!8764 (toList!4941 (+!1854 (extractMap!1544 (Cons!51485 (tuple2!52401 hash!414 lt!1777885) Nil!51485)) (h!57520 oldBucket!40))))))))

(declare-fun bs!1020515 () Bool)

(assert (= bs!1020515 d!1455548))

(declare-fun m!5459113 () Bool)

(assert (=> bs!1020515 m!5459113))

(declare-fun m!5459115 () Bool)

(assert (=> bs!1020515 m!5459115))

(assert (=> b!4621509 d!1455548))

(declare-fun d!1455552 () Bool)

(declare-fun e!2882869 () Bool)

(assert (=> d!1455552 e!2882869))

(declare-fun res!1937464 () Bool)

(assert (=> d!1455552 (=> (not res!1937464) (not e!2882869))))

(declare-fun lt!1778170 () ListMap!4245)

(assert (=> d!1455552 (= res!1937464 (contains!14495 lt!1778170 (_1!29493 (h!57520 oldBucket!40))))))

(declare-fun lt!1778173 () List!51608)

(assert (=> d!1455552 (= lt!1778170 (ListMap!4246 lt!1778173))))

(declare-fun lt!1778172 () Unit!111145)

(declare-fun lt!1778171 () Unit!111145)

(assert (=> d!1455552 (= lt!1778172 lt!1778171)))

(declare-datatypes ((Option!11544 0))(
  ( (None!11543) (Some!11543 (v!45645 V!13116)) )
))
(declare-fun getValueByKey!1422 (List!51608 K!12870) Option!11544)

(assert (=> d!1455552 (= (getValueByKey!1422 lt!1778173 (_1!29493 (h!57520 oldBucket!40))) (Some!11543 (_2!29493 (h!57520 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!834 (List!51608 K!12870 V!13116) Unit!111145)

(assert (=> d!1455552 (= lt!1778171 (lemmaContainsTupThenGetReturnValue!834 lt!1778173 (_1!29493 (h!57520 oldBucket!40)) (_2!29493 (h!57520 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!342 (List!51608 K!12870 V!13116) List!51608)

(assert (=> d!1455552 (= lt!1778173 (insertNoDuplicatedKeys!342 (toList!4941 (extractMap!1544 (Cons!51485 (tuple2!52401 hash!414 lt!1777885) Nil!51485))) (_1!29493 (h!57520 oldBucket!40)) (_2!29493 (h!57520 oldBucket!40))))))

(assert (=> d!1455552 (= (+!1854 (extractMap!1544 (Cons!51485 (tuple2!52401 hash!414 lt!1777885) Nil!51485)) (h!57520 oldBucket!40)) lt!1778170)))

(declare-fun b!4621676 () Bool)

(declare-fun res!1937463 () Bool)

(assert (=> b!4621676 (=> (not res!1937463) (not e!2882869))))

(assert (=> b!4621676 (= res!1937463 (= (getValueByKey!1422 (toList!4941 lt!1778170) (_1!29493 (h!57520 oldBucket!40))) (Some!11543 (_2!29493 (h!57520 oldBucket!40)))))))

(declare-fun b!4621677 () Bool)

(declare-fun contains!14500 (List!51608 tuple2!52398) Bool)

(assert (=> b!4621677 (= e!2882869 (contains!14500 (toList!4941 lt!1778170) (h!57520 oldBucket!40)))))

(assert (= (and d!1455552 res!1937464) b!4621676))

(assert (= (and b!4621676 res!1937463) b!4621677))

(declare-fun m!5459127 () Bool)

(assert (=> d!1455552 m!5459127))

(declare-fun m!5459129 () Bool)

(assert (=> d!1455552 m!5459129))

(declare-fun m!5459131 () Bool)

(assert (=> d!1455552 m!5459131))

(declare-fun m!5459133 () Bool)

(assert (=> d!1455552 m!5459133))

(declare-fun m!5459135 () Bool)

(assert (=> b!4621676 m!5459135))

(declare-fun m!5459137 () Bool)

(assert (=> b!4621677 m!5459137))

(assert (=> b!4621509 d!1455552))

(declare-fun bs!1020518 () Bool)

(declare-fun b!4621687 () Bool)

(assert (= bs!1020518 (and b!4621687 b!4621628)))

(declare-fun lambda!190998 () Int)

(assert (=> bs!1020518 (= (= (ListMap!4246 Nil!51484) lt!1778133) (= lambda!190998 lambda!190990))))

(declare-fun bs!1020519 () Bool)

(assert (= bs!1020519 (and b!4621687 b!4621631)))

(assert (=> bs!1020519 (= (= (ListMap!4246 Nil!51484) lt!1777889) (= lambda!190998 lambda!190988))))

(assert (=> bs!1020518 (= (= (ListMap!4246 Nil!51484) lt!1777889) (= lambda!190998 lambda!190989))))

(declare-fun bs!1020520 () Bool)

(assert (= bs!1020520 (and b!4621687 d!1455504)))

(assert (=> bs!1020520 (= (= (ListMap!4246 Nil!51484) lt!1778142) (= lambda!190998 lambda!190991))))

(declare-fun bs!1020521 () Bool)

(assert (= bs!1020521 (and b!4621687 d!1455502)))

(assert (=> bs!1020521 (not (= lambda!190998 lambda!190908))))

(assert (=> b!4621687 true))

(declare-fun bs!1020522 () Bool)

(declare-fun b!4621684 () Bool)

(assert (= bs!1020522 (and b!4621684 b!4621628)))

(declare-fun lambda!190999 () Int)

(assert (=> bs!1020522 (= (= (ListMap!4246 Nil!51484) lt!1778133) (= lambda!190999 lambda!190990))))

(declare-fun bs!1020523 () Bool)

(assert (= bs!1020523 (and b!4621684 b!4621631)))

(assert (=> bs!1020523 (= (= (ListMap!4246 Nil!51484) lt!1777889) (= lambda!190999 lambda!190988))))

(declare-fun bs!1020524 () Bool)

(assert (= bs!1020524 (and b!4621684 b!4621687)))

(assert (=> bs!1020524 (= lambda!190999 lambda!190998)))

(assert (=> bs!1020522 (= (= (ListMap!4246 Nil!51484) lt!1777889) (= lambda!190999 lambda!190989))))

(declare-fun bs!1020525 () Bool)

(assert (= bs!1020525 (and b!4621684 d!1455504)))

(assert (=> bs!1020525 (= (= (ListMap!4246 Nil!51484) lt!1778142) (= lambda!190999 lambda!190991))))

(declare-fun bs!1020526 () Bool)

(assert (= bs!1020526 (and b!4621684 d!1455502)))

(assert (=> bs!1020526 (not (= lambda!190999 lambda!190908))))

(assert (=> b!4621684 true))

(declare-fun lt!1778192 () ListMap!4245)

(declare-fun lambda!191000 () Int)

(assert (=> b!4621684 (= (= lt!1778192 (ListMap!4246 Nil!51484)) (= lambda!191000 lambda!190999))))

(assert (=> bs!1020522 (= (= lt!1778192 lt!1778133) (= lambda!191000 lambda!190990))))

(assert (=> bs!1020523 (= (= lt!1778192 lt!1777889) (= lambda!191000 lambda!190988))))

(assert (=> bs!1020524 (= (= lt!1778192 (ListMap!4246 Nil!51484)) (= lambda!191000 lambda!190998))))

(assert (=> bs!1020522 (= (= lt!1778192 lt!1777889) (= lambda!191000 lambda!190989))))

(assert (=> bs!1020525 (= (= lt!1778192 lt!1778142) (= lambda!191000 lambda!190991))))

(assert (=> bs!1020526 (not (= lambda!191000 lambda!190908))))

(assert (=> b!4621684 true))

(declare-fun bs!1020527 () Bool)

(declare-fun d!1455560 () Bool)

(assert (= bs!1020527 (and d!1455560 b!4621684)))

(declare-fun lt!1778201 () ListMap!4245)

(declare-fun lambda!191001 () Int)

(assert (=> bs!1020527 (= (= lt!1778201 (ListMap!4246 Nil!51484)) (= lambda!191001 lambda!190999))))

(declare-fun bs!1020528 () Bool)

(assert (= bs!1020528 (and d!1455560 b!4621628)))

(assert (=> bs!1020528 (= (= lt!1778201 lt!1778133) (= lambda!191001 lambda!190990))))

(declare-fun bs!1020529 () Bool)

(assert (= bs!1020529 (and d!1455560 b!4621631)))

(assert (=> bs!1020529 (= (= lt!1778201 lt!1777889) (= lambda!191001 lambda!190988))))

(declare-fun bs!1020530 () Bool)

(assert (= bs!1020530 (and d!1455560 b!4621687)))

(assert (=> bs!1020530 (= (= lt!1778201 (ListMap!4246 Nil!51484)) (= lambda!191001 lambda!190998))))

(assert (=> bs!1020527 (= (= lt!1778201 lt!1778192) (= lambda!191001 lambda!191000))))

(assert (=> bs!1020528 (= (= lt!1778201 lt!1777889) (= lambda!191001 lambda!190989))))

(declare-fun bs!1020531 () Bool)

(assert (= bs!1020531 (and d!1455560 d!1455504)))

(assert (=> bs!1020531 (= (= lt!1778201 lt!1778142) (= lambda!191001 lambda!190991))))

(declare-fun bs!1020532 () Bool)

(assert (= bs!1020532 (and d!1455560 d!1455502)))

(assert (=> bs!1020532 (not (= lambda!191001 lambda!190908))))

(assert (=> d!1455560 true))

(declare-fun bm!322278 () Bool)

(declare-fun call!322282 () Unit!111145)

(assert (=> bm!322278 (= call!322282 (lemmaContainsAllItsOwnKeys!492 (ListMap!4246 Nil!51484)))))

(declare-fun e!2882874 () ListMap!4245)

(assert (=> b!4621684 (= e!2882874 lt!1778192)))

(declare-fun lt!1778185 () ListMap!4245)

(assert (=> b!4621684 (= lt!1778185 (+!1854 (ListMap!4246 Nil!51484) (h!57520 lt!1777879)))))

(assert (=> b!4621684 (= lt!1778192 (addToMapMapFromBucket!949 (t!358626 lt!1777879) (+!1854 (ListMap!4246 Nil!51484) (h!57520 lt!1777879))))))

(declare-fun lt!1778199 () Unit!111145)

(assert (=> b!4621684 (= lt!1778199 call!322282)))

(assert (=> b!4621684 (forall!10796 (toList!4941 (ListMap!4246 Nil!51484)) lambda!190999)))

(declare-fun lt!1778193 () Unit!111145)

(assert (=> b!4621684 (= lt!1778193 lt!1778199)))

(assert (=> b!4621684 (forall!10796 (toList!4941 lt!1778185) lambda!191000)))

(declare-fun lt!1778198 () Unit!111145)

(declare-fun Unit!111193 () Unit!111145)

(assert (=> b!4621684 (= lt!1778198 Unit!111193)))

(assert (=> b!4621684 (forall!10796 (t!358626 lt!1777879) lambda!191000)))

(declare-fun lt!1778195 () Unit!111145)

(declare-fun Unit!111194 () Unit!111145)

(assert (=> b!4621684 (= lt!1778195 Unit!111194)))

(declare-fun lt!1778196 () Unit!111145)

(declare-fun Unit!111195 () Unit!111145)

(assert (=> b!4621684 (= lt!1778196 Unit!111195)))

(declare-fun lt!1778186 () Unit!111145)

(assert (=> b!4621684 (= lt!1778186 (forallContained!3020 (toList!4941 lt!1778185) lambda!191000 (h!57520 lt!1777879)))))

(assert (=> b!4621684 (contains!14495 lt!1778185 (_1!29493 (h!57520 lt!1777879)))))

(declare-fun lt!1778187 () Unit!111145)

(declare-fun Unit!111196 () Unit!111145)

(assert (=> b!4621684 (= lt!1778187 Unit!111196)))

(assert (=> b!4621684 (contains!14495 lt!1778192 (_1!29493 (h!57520 lt!1777879)))))

(declare-fun lt!1778189 () Unit!111145)

(declare-fun Unit!111197 () Unit!111145)

(assert (=> b!4621684 (= lt!1778189 Unit!111197)))

(assert (=> b!4621684 (forall!10796 lt!1777879 lambda!191000)))

(declare-fun lt!1778191 () Unit!111145)

(declare-fun Unit!111198 () Unit!111145)

(assert (=> b!4621684 (= lt!1778191 Unit!111198)))

(assert (=> b!4621684 (forall!10796 (toList!4941 lt!1778185) lambda!191000)))

(declare-fun lt!1778194 () Unit!111145)

(declare-fun Unit!111199 () Unit!111145)

(assert (=> b!4621684 (= lt!1778194 Unit!111199)))

(declare-fun lt!1778182 () Unit!111145)

(declare-fun Unit!111200 () Unit!111145)

(assert (=> b!4621684 (= lt!1778182 Unit!111200)))

(declare-fun lt!1778197 () Unit!111145)

(assert (=> b!4621684 (= lt!1778197 (addForallContainsKeyThenBeforeAdding!491 (ListMap!4246 Nil!51484) lt!1778192 (_1!29493 (h!57520 lt!1777879)) (_2!29493 (h!57520 lt!1777879))))))

(assert (=> b!4621684 (forall!10796 (toList!4941 (ListMap!4246 Nil!51484)) lambda!191000)))

(declare-fun lt!1778190 () Unit!111145)

(assert (=> b!4621684 (= lt!1778190 lt!1778197)))

(declare-fun call!322283 () Bool)

(assert (=> b!4621684 call!322283))

(declare-fun lt!1778188 () Unit!111145)

(declare-fun Unit!111201 () Unit!111145)

(assert (=> b!4621684 (= lt!1778188 Unit!111201)))

(declare-fun res!1937468 () Bool)

(assert (=> b!4621684 (= res!1937468 (forall!10796 lt!1777879 lambda!191000))))

(declare-fun e!2882876 () Bool)

(assert (=> b!4621684 (=> (not res!1937468) (not e!2882876))))

(assert (=> b!4621684 e!2882876))

(declare-fun lt!1778183 () Unit!111145)

(declare-fun Unit!111202 () Unit!111145)

(assert (=> b!4621684 (= lt!1778183 Unit!111202)))

(declare-fun b!4621685 () Bool)

(declare-fun e!2882875 () Bool)

(assert (=> b!4621685 (= e!2882875 (invariantList!1190 (toList!4941 lt!1778201)))))

(declare-fun b!4621686 () Bool)

(declare-fun res!1937465 () Bool)

(assert (=> b!4621686 (=> (not res!1937465) (not e!2882875))))

(assert (=> b!4621686 (= res!1937465 (forall!10796 (toList!4941 (ListMap!4246 Nil!51484)) lambda!191001))))

(assert (=> b!4621687 (= e!2882874 (ListMap!4246 Nil!51484))))

(declare-fun lt!1778200 () Unit!111145)

(assert (=> b!4621687 (= lt!1778200 call!322282)))

(assert (=> b!4621687 call!322283))

(declare-fun lt!1778202 () Unit!111145)

(assert (=> b!4621687 (= lt!1778202 lt!1778200)))

(declare-fun call!322284 () Bool)

(assert (=> b!4621687 call!322284))

(declare-fun lt!1778184 () Unit!111145)

(declare-fun Unit!111203 () Unit!111145)

(assert (=> b!4621687 (= lt!1778184 Unit!111203)))

(declare-fun c!791108 () Bool)

(declare-fun bm!322279 () Bool)

(assert (=> bm!322279 (= call!322284 (forall!10796 (toList!4941 (ListMap!4246 Nil!51484)) (ite c!791108 lambda!190998 lambda!191000)))))

(declare-fun b!4621688 () Bool)

(assert (=> b!4621688 (= e!2882876 call!322284)))

(declare-fun bm!322277 () Bool)

(assert (=> bm!322277 (= call!322283 (forall!10796 (toList!4941 (ListMap!4246 Nil!51484)) (ite c!791108 lambda!190998 lambda!191000)))))

(assert (=> d!1455560 e!2882875))

(declare-fun res!1937469 () Bool)

(assert (=> d!1455560 (=> (not res!1937469) (not e!2882875))))

(assert (=> d!1455560 (= res!1937469 (forall!10796 lt!1777879 lambda!191001))))

(assert (=> d!1455560 (= lt!1778201 e!2882874)))

(assert (=> d!1455560 (= c!791108 ((_ is Nil!51484) lt!1777879))))

(assert (=> d!1455560 (noDuplicateKeys!1488 lt!1777879)))

(assert (=> d!1455560 (= (addToMapMapFromBucket!949 lt!1777879 (ListMap!4246 Nil!51484)) lt!1778201)))

(assert (= (and d!1455560 c!791108) b!4621687))

(assert (= (and d!1455560 (not c!791108)) b!4621684))

(assert (= (and b!4621684 res!1937468) b!4621688))

(assert (= (or b!4621687 b!4621684) bm!322278))

(assert (= (or b!4621687 b!4621688) bm!322279))

(assert (= (or b!4621687 b!4621684) bm!322277))

(assert (= (and d!1455560 res!1937469) b!4621686))

(assert (= (and b!4621686 res!1937465) b!4621685))

(declare-fun m!5459147 () Bool)

(assert (=> d!1455560 m!5459147))

(declare-fun m!5459149 () Bool)

(assert (=> d!1455560 m!5459149))

(declare-fun m!5459151 () Bool)

(assert (=> bm!322279 m!5459151))

(declare-fun m!5459153 () Bool)

(assert (=> bm!322278 m!5459153))

(declare-fun m!5459155 () Bool)

(assert (=> b!4621685 m!5459155))

(declare-fun m!5459157 () Bool)

(assert (=> b!4621686 m!5459157))

(declare-fun m!5459159 () Bool)

(assert (=> b!4621684 m!5459159))

(declare-fun m!5459161 () Bool)

(assert (=> b!4621684 m!5459161))

(declare-fun m!5459163 () Bool)

(assert (=> b!4621684 m!5459163))

(declare-fun m!5459165 () Bool)

(assert (=> b!4621684 m!5459165))

(declare-fun m!5459167 () Bool)

(assert (=> b!4621684 m!5459167))

(assert (=> b!4621684 m!5459159))

(declare-fun m!5459169 () Bool)

(assert (=> b!4621684 m!5459169))

(declare-fun m!5459171 () Bool)

(assert (=> b!4621684 m!5459171))

(declare-fun m!5459173 () Bool)

(assert (=> b!4621684 m!5459173))

(declare-fun m!5459175 () Bool)

(assert (=> b!4621684 m!5459175))

(declare-fun m!5459177 () Bool)

(assert (=> b!4621684 m!5459177))

(assert (=> b!4621684 m!5459165))

(assert (=> b!4621684 m!5459175))

(declare-fun m!5459179 () Bool)

(assert (=> b!4621684 m!5459179))

(assert (=> bm!322277 m!5459151))

(assert (=> b!4621509 d!1455560))

(declare-fun bm!322282 () Bool)

(declare-fun call!322287 () Bool)

(declare-datatypes ((List!51611 0))(
  ( (Nil!51487) (Cons!51487 (h!57525 K!12870) (t!358631 List!51611)) )
))
(declare-fun e!2882893 () List!51611)

(declare-fun contains!14501 (List!51611 K!12870) Bool)

(assert (=> bm!322282 (= call!322287 (contains!14501 e!2882893 key!4968))))

(declare-fun c!791116 () Bool)

(declare-fun c!791117 () Bool)

(assert (=> bm!322282 (= c!791116 c!791117)))

(declare-fun b!4621710 () Bool)

(declare-fun e!2882892 () Unit!111145)

(declare-fun e!2882896 () Unit!111145)

(assert (=> b!4621710 (= e!2882892 e!2882896)))

(declare-fun c!791118 () Bool)

(assert (=> b!4621710 (= c!791118 call!322287)))

(declare-fun b!4621711 () Bool)

(declare-fun getKeysList!641 (List!51608) List!51611)

(assert (=> b!4621711 (= e!2882893 (getKeysList!641 (toList!4941 (extractMap!1544 lt!1777893))))))

(declare-fun d!1455564 () Bool)

(declare-fun e!2882895 () Bool)

(assert (=> d!1455564 e!2882895))

(declare-fun res!1937477 () Bool)

(assert (=> d!1455564 (=> res!1937477 e!2882895)))

(declare-fun e!2882894 () Bool)

(assert (=> d!1455564 (= res!1937477 e!2882894)))

(declare-fun res!1937479 () Bool)

(assert (=> d!1455564 (=> (not res!1937479) (not e!2882894))))

(declare-fun lt!1778225 () Bool)

(assert (=> d!1455564 (= res!1937479 (not lt!1778225))))

(declare-fun lt!1778226 () Bool)

(assert (=> d!1455564 (= lt!1778225 lt!1778226)))

(declare-fun lt!1778224 () Unit!111145)

(assert (=> d!1455564 (= lt!1778224 e!2882892)))

(assert (=> d!1455564 (= c!791117 lt!1778226)))

(declare-fun containsKey!2402 (List!51608 K!12870) Bool)

(assert (=> d!1455564 (= lt!1778226 (containsKey!2402 (toList!4941 (extractMap!1544 lt!1777893)) key!4968))))

(assert (=> d!1455564 (= (contains!14495 (extractMap!1544 lt!1777893) key!4968) lt!1778225)))

(declare-fun b!4621712 () Bool)

(declare-fun Unit!111204 () Unit!111145)

(assert (=> b!4621712 (= e!2882896 Unit!111204)))

(declare-fun b!4621713 () Bool)

(declare-fun keys!18122 (ListMap!4245) List!51611)

(assert (=> b!4621713 (= e!2882894 (not (contains!14501 (keys!18122 (extractMap!1544 lt!1777893)) key!4968)))))

(declare-fun b!4621714 () Bool)

(assert (=> b!4621714 (= e!2882893 (keys!18122 (extractMap!1544 lt!1777893)))))

(declare-fun b!4621715 () Bool)

(assert (=> b!4621715 false))

(declare-fun lt!1778227 () Unit!111145)

(declare-fun lt!1778228 () Unit!111145)

(assert (=> b!4621715 (= lt!1778227 lt!1778228)))

(assert (=> b!4621715 (containsKey!2402 (toList!4941 (extractMap!1544 lt!1777893)) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!640 (List!51608 K!12870) Unit!111145)

(assert (=> b!4621715 (= lt!1778228 (lemmaInGetKeysListThenContainsKey!640 (toList!4941 (extractMap!1544 lt!1777893)) key!4968))))

(declare-fun Unit!111205 () Unit!111145)

(assert (=> b!4621715 (= e!2882896 Unit!111205)))

(declare-fun b!4621716 () Bool)

(declare-fun e!2882891 () Bool)

(assert (=> b!4621716 (= e!2882895 e!2882891)))

(declare-fun res!1937478 () Bool)

(assert (=> b!4621716 (=> (not res!1937478) (not e!2882891))))

(declare-fun isDefined!8809 (Option!11544) Bool)

(assert (=> b!4621716 (= res!1937478 (isDefined!8809 (getValueByKey!1422 (toList!4941 (extractMap!1544 lt!1777893)) key!4968)))))

(declare-fun b!4621717 () Bool)

(assert (=> b!4621717 (= e!2882891 (contains!14501 (keys!18122 (extractMap!1544 lt!1777893)) key!4968))))

(declare-fun b!4621718 () Bool)

(declare-fun lt!1778223 () Unit!111145)

(assert (=> b!4621718 (= e!2882892 lt!1778223)))

(declare-fun lt!1778229 () Unit!111145)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1324 (List!51608 K!12870) Unit!111145)

(assert (=> b!4621718 (= lt!1778229 (lemmaContainsKeyImpliesGetValueByKeyDefined!1324 (toList!4941 (extractMap!1544 lt!1777893)) key!4968))))

(assert (=> b!4621718 (isDefined!8809 (getValueByKey!1422 (toList!4941 (extractMap!1544 lt!1777893)) key!4968))))

(declare-fun lt!1778230 () Unit!111145)

(assert (=> b!4621718 (= lt!1778230 lt!1778229)))

(declare-fun lemmaInListThenGetKeysListContains!636 (List!51608 K!12870) Unit!111145)

(assert (=> b!4621718 (= lt!1778223 (lemmaInListThenGetKeysListContains!636 (toList!4941 (extractMap!1544 lt!1777893)) key!4968))))

(assert (=> b!4621718 call!322287))

(assert (= (and d!1455564 c!791117) b!4621718))

(assert (= (and d!1455564 (not c!791117)) b!4621710))

(assert (= (and b!4621710 c!791118) b!4621715))

(assert (= (and b!4621710 (not c!791118)) b!4621712))

(assert (= (or b!4621718 b!4621710) bm!322282))

(assert (= (and bm!322282 c!791116) b!4621711))

(assert (= (and bm!322282 (not c!791116)) b!4621714))

(assert (= (and d!1455564 res!1937479) b!4621713))

(assert (= (and d!1455564 (not res!1937477)) b!4621716))

(assert (= (and b!4621716 res!1937478) b!4621717))

(declare-fun m!5459181 () Bool)

(assert (=> b!4621718 m!5459181))

(declare-fun m!5459183 () Bool)

(assert (=> b!4621718 m!5459183))

(assert (=> b!4621718 m!5459183))

(declare-fun m!5459185 () Bool)

(assert (=> b!4621718 m!5459185))

(declare-fun m!5459187 () Bool)

(assert (=> b!4621718 m!5459187))

(assert (=> b!4621716 m!5459183))

(assert (=> b!4621716 m!5459183))

(assert (=> b!4621716 m!5459185))

(declare-fun m!5459189 () Bool)

(assert (=> b!4621715 m!5459189))

(declare-fun m!5459191 () Bool)

(assert (=> b!4621715 m!5459191))

(assert (=> b!4621714 m!5458785))

(declare-fun m!5459193 () Bool)

(assert (=> b!4621714 m!5459193))

(assert (=> b!4621713 m!5458785))

(assert (=> b!4621713 m!5459193))

(assert (=> b!4621713 m!5459193))

(declare-fun m!5459195 () Bool)

(assert (=> b!4621713 m!5459195))

(declare-fun m!5459197 () Bool)

(assert (=> b!4621711 m!5459197))

(declare-fun m!5459199 () Bool)

(assert (=> bm!322282 m!5459199))

(assert (=> b!4621717 m!5458785))

(assert (=> b!4621717 m!5459193))

(assert (=> b!4621717 m!5459193))

(assert (=> b!4621717 m!5459195))

(assert (=> d!1455564 m!5459189))

(assert (=> b!4621509 d!1455564))

(declare-fun d!1455566 () Bool)

(assert (=> d!1455566 (= (eq!803 (addToMapMapFromBucket!949 (Cons!51484 lt!1777887 lt!1777885) (ListMap!4246 Nil!51484)) (+!1854 (addToMapMapFromBucket!949 lt!1777885 (ListMap!4246 Nil!51484)) lt!1777887)) (= (content!8764 (toList!4941 (addToMapMapFromBucket!949 (Cons!51484 lt!1777887 lt!1777885) (ListMap!4246 Nil!51484)))) (content!8764 (toList!4941 (+!1854 (addToMapMapFromBucket!949 lt!1777885 (ListMap!4246 Nil!51484)) lt!1777887)))))))

(declare-fun bs!1020533 () Bool)

(assert (= bs!1020533 d!1455566))

(declare-fun m!5459201 () Bool)

(assert (=> bs!1020533 m!5459201))

(declare-fun m!5459203 () Bool)

(assert (=> bs!1020533 m!5459203))

(assert (=> b!4621509 d!1455566))

(declare-fun d!1455568 () Bool)

(assert (=> d!1455568 (eq!803 (addToMapMapFromBucket!949 (Cons!51484 lt!1777887 lt!1777885) (ListMap!4246 Nil!51484)) (+!1854 (addToMapMapFromBucket!949 lt!1777885 (ListMap!4246 Nil!51484)) lt!1777887))))

(declare-fun lt!1778235 () Unit!111145)

(declare-fun choose!31200 (tuple2!52398 List!51608 ListMap!4245) Unit!111145)

(assert (=> d!1455568 (= lt!1778235 (choose!31200 lt!1777887 lt!1777885 (ListMap!4246 Nil!51484)))))

(assert (=> d!1455568 (noDuplicateKeys!1488 lt!1777885)))

(assert (=> d!1455568 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!54 lt!1777887 lt!1777885 (ListMap!4246 Nil!51484)) lt!1778235)))

(declare-fun bs!1020534 () Bool)

(assert (= bs!1020534 d!1455568))

(assert (=> bs!1020534 m!5458807))

(declare-fun m!5459205 () Bool)

(assert (=> bs!1020534 m!5459205))

(assert (=> bs!1020534 m!5458765))

(assert (=> bs!1020534 m!5458759))

(assert (=> bs!1020534 m!5458779))

(assert (=> bs!1020534 m!5458757))

(assert (=> bs!1020534 m!5458759))

(assert (=> bs!1020534 m!5458765))

(assert (=> bs!1020534 m!5458757))

(assert (=> b!4621509 d!1455568))

(declare-fun d!1455570 () Bool)

(assert (=> d!1455570 (= (head!9622 oldBucket!40) (h!57520 oldBucket!40))))

(assert (=> b!4621509 d!1455570))

(declare-fun bs!1020535 () Bool)

(declare-fun b!4621730 () Bool)

(assert (= bs!1020535 (and b!4621730 b!4621684)))

(declare-fun lambda!191008 () Int)

(assert (=> bs!1020535 (= lambda!191008 lambda!190999)))

(declare-fun bs!1020536 () Bool)

(assert (= bs!1020536 (and b!4621730 b!4621628)))

(assert (=> bs!1020536 (= (= (ListMap!4246 Nil!51484) lt!1778133) (= lambda!191008 lambda!190990))))

(declare-fun bs!1020537 () Bool)

(assert (= bs!1020537 (and b!4621730 d!1455560)))

(assert (=> bs!1020537 (= (= (ListMap!4246 Nil!51484) lt!1778201) (= lambda!191008 lambda!191001))))

(declare-fun bs!1020538 () Bool)

(assert (= bs!1020538 (and b!4621730 b!4621631)))

(assert (=> bs!1020538 (= (= (ListMap!4246 Nil!51484) lt!1777889) (= lambda!191008 lambda!190988))))

(declare-fun bs!1020539 () Bool)

(assert (= bs!1020539 (and b!4621730 b!4621687)))

(assert (=> bs!1020539 (= lambda!191008 lambda!190998)))

(assert (=> bs!1020535 (= (= (ListMap!4246 Nil!51484) lt!1778192) (= lambda!191008 lambda!191000))))

(assert (=> bs!1020536 (= (= (ListMap!4246 Nil!51484) lt!1777889) (= lambda!191008 lambda!190989))))

(declare-fun bs!1020540 () Bool)

(assert (= bs!1020540 (and b!4621730 d!1455504)))

(assert (=> bs!1020540 (= (= (ListMap!4246 Nil!51484) lt!1778142) (= lambda!191008 lambda!190991))))

(declare-fun bs!1020541 () Bool)

(assert (= bs!1020541 (and b!4621730 d!1455502)))

(assert (=> bs!1020541 (not (= lambda!191008 lambda!190908))))

(assert (=> b!4621730 true))

(declare-fun bs!1020542 () Bool)

(declare-fun b!4621727 () Bool)

(assert (= bs!1020542 (and b!4621727 b!4621730)))

(declare-fun lambda!191009 () Int)

(assert (=> bs!1020542 (= lambda!191009 lambda!191008)))

(declare-fun bs!1020543 () Bool)

(assert (= bs!1020543 (and b!4621727 b!4621684)))

(assert (=> bs!1020543 (= lambda!191009 lambda!190999)))

(declare-fun bs!1020544 () Bool)

(assert (= bs!1020544 (and b!4621727 b!4621628)))

(assert (=> bs!1020544 (= (= (ListMap!4246 Nil!51484) lt!1778133) (= lambda!191009 lambda!190990))))

(declare-fun bs!1020545 () Bool)

(assert (= bs!1020545 (and b!4621727 d!1455560)))

(assert (=> bs!1020545 (= (= (ListMap!4246 Nil!51484) lt!1778201) (= lambda!191009 lambda!191001))))

(declare-fun bs!1020546 () Bool)

(assert (= bs!1020546 (and b!4621727 b!4621631)))

(assert (=> bs!1020546 (= (= (ListMap!4246 Nil!51484) lt!1777889) (= lambda!191009 lambda!190988))))

(declare-fun bs!1020547 () Bool)

(assert (= bs!1020547 (and b!4621727 b!4621687)))

(assert (=> bs!1020547 (= lambda!191009 lambda!190998)))

(assert (=> bs!1020543 (= (= (ListMap!4246 Nil!51484) lt!1778192) (= lambda!191009 lambda!191000))))

(assert (=> bs!1020544 (= (= (ListMap!4246 Nil!51484) lt!1777889) (= lambda!191009 lambda!190989))))

(declare-fun bs!1020548 () Bool)

(assert (= bs!1020548 (and b!4621727 d!1455504)))

(assert (=> bs!1020548 (= (= (ListMap!4246 Nil!51484) lt!1778142) (= lambda!191009 lambda!190991))))

(declare-fun bs!1020549 () Bool)

(assert (= bs!1020549 (and b!4621727 d!1455502)))

(assert (=> bs!1020549 (not (= lambda!191009 lambda!190908))))

(assert (=> b!4621727 true))

(declare-fun lt!1778260 () ListMap!4245)

(declare-fun lambda!191010 () Int)

(assert (=> bs!1020542 (= (= lt!1778260 (ListMap!4246 Nil!51484)) (= lambda!191010 lambda!191008))))

(assert (=> bs!1020543 (= (= lt!1778260 (ListMap!4246 Nil!51484)) (= lambda!191010 lambda!190999))))

(assert (=> bs!1020544 (= (= lt!1778260 lt!1778133) (= lambda!191010 lambda!190990))))

(assert (=> bs!1020545 (= (= lt!1778260 lt!1778201) (= lambda!191010 lambda!191001))))

(assert (=> bs!1020546 (= (= lt!1778260 lt!1777889) (= lambda!191010 lambda!190988))))

(assert (=> bs!1020547 (= (= lt!1778260 (ListMap!4246 Nil!51484)) (= lambda!191010 lambda!190998))))

(assert (=> bs!1020543 (= (= lt!1778260 lt!1778192) (= lambda!191010 lambda!191000))))

(assert (=> bs!1020544 (= (= lt!1778260 lt!1777889) (= lambda!191010 lambda!190989))))

(assert (=> bs!1020548 (= (= lt!1778260 lt!1778142) (= lambda!191010 lambda!190991))))

(assert (=> bs!1020549 (not (= lambda!191010 lambda!190908))))

(assert (=> b!4621727 (= (= lt!1778260 (ListMap!4246 Nil!51484)) (= lambda!191010 lambda!191009))))

(assert (=> b!4621727 true))

(declare-fun bs!1020555 () Bool)

(declare-fun d!1455572 () Bool)

(assert (= bs!1020555 (and d!1455572 b!4621730)))

(declare-fun lt!1778269 () ListMap!4245)

(declare-fun lambda!191012 () Int)

(assert (=> bs!1020555 (= (= lt!1778269 (ListMap!4246 Nil!51484)) (= lambda!191012 lambda!191008))))

(declare-fun bs!1020556 () Bool)

(assert (= bs!1020556 (and d!1455572 b!4621684)))

(assert (=> bs!1020556 (= (= lt!1778269 (ListMap!4246 Nil!51484)) (= lambda!191012 lambda!190999))))

(declare-fun bs!1020557 () Bool)

(assert (= bs!1020557 (and d!1455572 b!4621628)))

(assert (=> bs!1020557 (= (= lt!1778269 lt!1778133) (= lambda!191012 lambda!190990))))

(declare-fun bs!1020558 () Bool)

(assert (= bs!1020558 (and d!1455572 b!4621727)))

(assert (=> bs!1020558 (= (= lt!1778269 lt!1778260) (= lambda!191012 lambda!191010))))

(declare-fun bs!1020559 () Bool)

(assert (= bs!1020559 (and d!1455572 d!1455560)))

(assert (=> bs!1020559 (= (= lt!1778269 lt!1778201) (= lambda!191012 lambda!191001))))

(declare-fun bs!1020560 () Bool)

(assert (= bs!1020560 (and d!1455572 b!4621631)))

(assert (=> bs!1020560 (= (= lt!1778269 lt!1777889) (= lambda!191012 lambda!190988))))

(declare-fun bs!1020561 () Bool)

(assert (= bs!1020561 (and d!1455572 b!4621687)))

(assert (=> bs!1020561 (= (= lt!1778269 (ListMap!4246 Nil!51484)) (= lambda!191012 lambda!190998))))

(assert (=> bs!1020556 (= (= lt!1778269 lt!1778192) (= lambda!191012 lambda!191000))))

(assert (=> bs!1020557 (= (= lt!1778269 lt!1777889) (= lambda!191012 lambda!190989))))

(declare-fun bs!1020562 () Bool)

(assert (= bs!1020562 (and d!1455572 d!1455504)))

(assert (=> bs!1020562 (= (= lt!1778269 lt!1778142) (= lambda!191012 lambda!190991))))

(declare-fun bs!1020563 () Bool)

(assert (= bs!1020563 (and d!1455572 d!1455502)))

(assert (=> bs!1020563 (not (= lambda!191012 lambda!190908))))

(assert (=> bs!1020558 (= (= lt!1778269 (ListMap!4246 Nil!51484)) (= lambda!191012 lambda!191009))))

(assert (=> d!1455572 true))

(declare-fun bm!322284 () Bool)

(declare-fun call!322288 () Unit!111145)

(assert (=> bm!322284 (= call!322288 (lemmaContainsAllItsOwnKeys!492 (ListMap!4246 Nil!51484)))))

(declare-fun e!2882901 () ListMap!4245)

(assert (=> b!4621727 (= e!2882901 lt!1778260)))

(declare-fun lt!1778253 () ListMap!4245)

(assert (=> b!4621727 (= lt!1778253 (+!1854 (ListMap!4246 Nil!51484) (h!57520 lt!1777885)))))

(assert (=> b!4621727 (= lt!1778260 (addToMapMapFromBucket!949 (t!358626 lt!1777885) (+!1854 (ListMap!4246 Nil!51484) (h!57520 lt!1777885))))))

(declare-fun lt!1778267 () Unit!111145)

(assert (=> b!4621727 (= lt!1778267 call!322288)))

(assert (=> b!4621727 (forall!10796 (toList!4941 (ListMap!4246 Nil!51484)) lambda!191009)))

(declare-fun lt!1778261 () Unit!111145)

(assert (=> b!4621727 (= lt!1778261 lt!1778267)))

(assert (=> b!4621727 (forall!10796 (toList!4941 lt!1778253) lambda!191010)))

(declare-fun lt!1778266 () Unit!111145)

(declare-fun Unit!111217 () Unit!111145)

(assert (=> b!4621727 (= lt!1778266 Unit!111217)))

(assert (=> b!4621727 (forall!10796 (t!358626 lt!1777885) lambda!191010)))

(declare-fun lt!1778263 () Unit!111145)

(declare-fun Unit!111218 () Unit!111145)

(assert (=> b!4621727 (= lt!1778263 Unit!111218)))

(declare-fun lt!1778264 () Unit!111145)

(declare-fun Unit!111219 () Unit!111145)

(assert (=> b!4621727 (= lt!1778264 Unit!111219)))

(declare-fun lt!1778254 () Unit!111145)

(assert (=> b!4621727 (= lt!1778254 (forallContained!3020 (toList!4941 lt!1778253) lambda!191010 (h!57520 lt!1777885)))))

(assert (=> b!4621727 (contains!14495 lt!1778253 (_1!29493 (h!57520 lt!1777885)))))

(declare-fun lt!1778255 () Unit!111145)

(declare-fun Unit!111220 () Unit!111145)

(assert (=> b!4621727 (= lt!1778255 Unit!111220)))

(assert (=> b!4621727 (contains!14495 lt!1778260 (_1!29493 (h!57520 lt!1777885)))))

(declare-fun lt!1778257 () Unit!111145)

(declare-fun Unit!111221 () Unit!111145)

(assert (=> b!4621727 (= lt!1778257 Unit!111221)))

(assert (=> b!4621727 (forall!10796 lt!1777885 lambda!191010)))

(declare-fun lt!1778259 () Unit!111145)

(declare-fun Unit!111222 () Unit!111145)

(assert (=> b!4621727 (= lt!1778259 Unit!111222)))

(assert (=> b!4621727 (forall!10796 (toList!4941 lt!1778253) lambda!191010)))

(declare-fun lt!1778262 () Unit!111145)

(declare-fun Unit!111223 () Unit!111145)

(assert (=> b!4621727 (= lt!1778262 Unit!111223)))

(declare-fun lt!1778250 () Unit!111145)

(declare-fun Unit!111224 () Unit!111145)

(assert (=> b!4621727 (= lt!1778250 Unit!111224)))

(declare-fun lt!1778265 () Unit!111145)

(assert (=> b!4621727 (= lt!1778265 (addForallContainsKeyThenBeforeAdding!491 (ListMap!4246 Nil!51484) lt!1778260 (_1!29493 (h!57520 lt!1777885)) (_2!29493 (h!57520 lt!1777885))))))

(assert (=> b!4621727 (forall!10796 (toList!4941 (ListMap!4246 Nil!51484)) lambda!191010)))

(declare-fun lt!1778258 () Unit!111145)

(assert (=> b!4621727 (= lt!1778258 lt!1778265)))

(declare-fun call!322289 () Bool)

(assert (=> b!4621727 call!322289))

(declare-fun lt!1778256 () Unit!111145)

(declare-fun Unit!111225 () Unit!111145)

(assert (=> b!4621727 (= lt!1778256 Unit!111225)))

(declare-fun res!1937489 () Bool)

(assert (=> b!4621727 (= res!1937489 (forall!10796 lt!1777885 lambda!191010))))

(declare-fun e!2882903 () Bool)

(assert (=> b!4621727 (=> (not res!1937489) (not e!2882903))))

(assert (=> b!4621727 e!2882903))

(declare-fun lt!1778251 () Unit!111145)

(declare-fun Unit!111226 () Unit!111145)

(assert (=> b!4621727 (= lt!1778251 Unit!111226)))

(declare-fun b!4621728 () Bool)

(declare-fun e!2882902 () Bool)

(assert (=> b!4621728 (= e!2882902 (invariantList!1190 (toList!4941 lt!1778269)))))

(declare-fun b!4621729 () Bool)

(declare-fun res!1937488 () Bool)

(assert (=> b!4621729 (=> (not res!1937488) (not e!2882902))))

(assert (=> b!4621729 (= res!1937488 (forall!10796 (toList!4941 (ListMap!4246 Nil!51484)) lambda!191012))))

(assert (=> b!4621730 (= e!2882901 (ListMap!4246 Nil!51484))))

(declare-fun lt!1778268 () Unit!111145)

(assert (=> b!4621730 (= lt!1778268 call!322288)))

(assert (=> b!4621730 call!322289))

(declare-fun lt!1778270 () Unit!111145)

(assert (=> b!4621730 (= lt!1778270 lt!1778268)))

(declare-fun call!322290 () Bool)

(assert (=> b!4621730 call!322290))

(declare-fun lt!1778252 () Unit!111145)

(declare-fun Unit!111227 () Unit!111145)

(assert (=> b!4621730 (= lt!1778252 Unit!111227)))

(declare-fun bm!322285 () Bool)

(declare-fun c!791119 () Bool)

(assert (=> bm!322285 (= call!322290 (forall!10796 (toList!4941 (ListMap!4246 Nil!51484)) (ite c!791119 lambda!191008 lambda!191010)))))

(declare-fun b!4621731 () Bool)

(assert (=> b!4621731 (= e!2882903 call!322290)))

(declare-fun bm!322283 () Bool)

(assert (=> bm!322283 (= call!322289 (forall!10796 (toList!4941 (ListMap!4246 Nil!51484)) (ite c!791119 lambda!191008 lambda!191010)))))

(assert (=> d!1455572 e!2882902))

(declare-fun res!1937490 () Bool)

(assert (=> d!1455572 (=> (not res!1937490) (not e!2882902))))

(assert (=> d!1455572 (= res!1937490 (forall!10796 lt!1777885 lambda!191012))))

(assert (=> d!1455572 (= lt!1778269 e!2882901)))

(assert (=> d!1455572 (= c!791119 ((_ is Nil!51484) lt!1777885))))

(assert (=> d!1455572 (noDuplicateKeys!1488 lt!1777885)))

(assert (=> d!1455572 (= (addToMapMapFromBucket!949 lt!1777885 (ListMap!4246 Nil!51484)) lt!1778269)))

(assert (= (and d!1455572 c!791119) b!4621730))

(assert (= (and d!1455572 (not c!791119)) b!4621727))

(assert (= (and b!4621727 res!1937489) b!4621731))

(assert (= (or b!4621730 b!4621727) bm!322284))

(assert (= (or b!4621730 b!4621731) bm!322285))

(assert (= (or b!4621730 b!4621727) bm!322283))

(assert (= (and d!1455572 res!1937490) b!4621729))

(assert (= (and b!4621729 res!1937488) b!4621728))

(declare-fun m!5459233 () Bool)

(assert (=> d!1455572 m!5459233))

(assert (=> d!1455572 m!5458807))

(declare-fun m!5459235 () Bool)

(assert (=> bm!322285 m!5459235))

(assert (=> bm!322284 m!5459153))

(declare-fun m!5459237 () Bool)

(assert (=> b!4621728 m!5459237))

(declare-fun m!5459239 () Bool)

(assert (=> b!4621729 m!5459239))

(declare-fun m!5459241 () Bool)

(assert (=> b!4621727 m!5459241))

(declare-fun m!5459243 () Bool)

(assert (=> b!4621727 m!5459243))

(declare-fun m!5459245 () Bool)

(assert (=> b!4621727 m!5459245))

(declare-fun m!5459247 () Bool)

(assert (=> b!4621727 m!5459247))

(declare-fun m!5459249 () Bool)

(assert (=> b!4621727 m!5459249))

(assert (=> b!4621727 m!5459241))

(declare-fun m!5459251 () Bool)

(assert (=> b!4621727 m!5459251))

(declare-fun m!5459253 () Bool)

(assert (=> b!4621727 m!5459253))

(declare-fun m!5459255 () Bool)

(assert (=> b!4621727 m!5459255))

(declare-fun m!5459257 () Bool)

(assert (=> b!4621727 m!5459257))

(declare-fun m!5459259 () Bool)

(assert (=> b!4621727 m!5459259))

(assert (=> b!4621727 m!5459247))

(assert (=> b!4621727 m!5459257))

(declare-fun m!5459261 () Bool)

(assert (=> b!4621727 m!5459261))

(assert (=> bm!322283 m!5459235))

(assert (=> b!4621509 d!1455572))

(declare-fun bs!1020564 () Bool)

(declare-fun d!1455576 () Bool)

(assert (= bs!1020564 (and d!1455576 b!4621508)))

(declare-fun lambda!191013 () Int)

(assert (=> bs!1020564 (= lambda!191013 lambda!190902)))

(declare-fun bs!1020565 () Bool)

(assert (= bs!1020565 (and d!1455576 d!1455542)))

(assert (=> bs!1020565 (= lambda!191013 lambda!190997)))

(declare-fun lt!1778279 () ListMap!4245)

(assert (=> d!1455576 (invariantList!1190 (toList!4941 lt!1778279))))

(declare-fun e!2882906 () ListMap!4245)

(assert (=> d!1455576 (= lt!1778279 e!2882906)))

(declare-fun c!791120 () Bool)

(assert (=> d!1455576 (= c!791120 ((_ is Cons!51485) (Cons!51485 (tuple2!52401 hash!414 lt!1777885) Nil!51485)))))

(assert (=> d!1455576 (forall!10794 (Cons!51485 (tuple2!52401 hash!414 lt!1777885) Nil!51485) lambda!191013)))

(assert (=> d!1455576 (= (extractMap!1544 (Cons!51485 (tuple2!52401 hash!414 lt!1777885) Nil!51485)) lt!1778279)))

(declare-fun b!4621736 () Bool)

(assert (=> b!4621736 (= e!2882906 (addToMapMapFromBucket!949 (_2!29494 (h!57521 (Cons!51485 (tuple2!52401 hash!414 lt!1777885) Nil!51485))) (extractMap!1544 (t!358627 (Cons!51485 (tuple2!52401 hash!414 lt!1777885) Nil!51485)))))))

(declare-fun b!4621737 () Bool)

(assert (=> b!4621737 (= e!2882906 (ListMap!4246 Nil!51484))))

(assert (= (and d!1455576 c!791120) b!4621736))

(assert (= (and d!1455576 (not c!791120)) b!4621737))

(declare-fun m!5459263 () Bool)

(assert (=> d!1455576 m!5459263))

(declare-fun m!5459265 () Bool)

(assert (=> d!1455576 m!5459265))

(declare-fun m!5459267 () Bool)

(assert (=> b!4621736 m!5459267))

(assert (=> b!4621736 m!5459267))

(declare-fun m!5459269 () Bool)

(assert (=> b!4621736 m!5459269))

(assert (=> b!4621509 d!1455576))

(declare-fun d!1455578 () Bool)

(assert (=> d!1455578 (= (head!9622 newBucket!224) (h!57520 newBucket!224))))

(assert (=> b!4621509 d!1455578))

(declare-fun d!1455580 () Bool)

(declare-fun e!2882911 () Bool)

(assert (=> d!1455580 e!2882911))

(declare-fun res!1937500 () Bool)

(assert (=> d!1455580 (=> (not res!1937500) (not e!2882911))))

(declare-fun lt!1778280 () ListMap!4245)

(assert (=> d!1455580 (= res!1937500 (contains!14495 lt!1778280 (_1!29493 lt!1777887)))))

(declare-fun lt!1778283 () List!51608)

(assert (=> d!1455580 (= lt!1778280 (ListMap!4246 lt!1778283))))

(declare-fun lt!1778282 () Unit!111145)

(declare-fun lt!1778281 () Unit!111145)

(assert (=> d!1455580 (= lt!1778282 lt!1778281)))

(assert (=> d!1455580 (= (getValueByKey!1422 lt!1778283 (_1!29493 lt!1777887)) (Some!11543 (_2!29493 lt!1777887)))))

(assert (=> d!1455580 (= lt!1778281 (lemmaContainsTupThenGetReturnValue!834 lt!1778283 (_1!29493 lt!1777887) (_2!29493 lt!1777887)))))

(assert (=> d!1455580 (= lt!1778283 (insertNoDuplicatedKeys!342 (toList!4941 (addToMapMapFromBucket!949 lt!1777885 (ListMap!4246 Nil!51484))) (_1!29493 lt!1777887) (_2!29493 lt!1777887)))))

(assert (=> d!1455580 (= (+!1854 (addToMapMapFromBucket!949 lt!1777885 (ListMap!4246 Nil!51484)) lt!1777887) lt!1778280)))

(declare-fun b!4621742 () Bool)

(declare-fun res!1937499 () Bool)

(assert (=> b!4621742 (=> (not res!1937499) (not e!2882911))))

(assert (=> b!4621742 (= res!1937499 (= (getValueByKey!1422 (toList!4941 lt!1778280) (_1!29493 lt!1777887)) (Some!11543 (_2!29493 lt!1777887))))))

(declare-fun b!4621744 () Bool)

(assert (=> b!4621744 (= e!2882911 (contains!14500 (toList!4941 lt!1778280) lt!1777887))))

(assert (= (and d!1455580 res!1937500) b!4621742))

(assert (= (and b!4621742 res!1937499) b!4621744))

(declare-fun m!5459271 () Bool)

(assert (=> d!1455580 m!5459271))

(declare-fun m!5459273 () Bool)

(assert (=> d!1455580 m!5459273))

(declare-fun m!5459275 () Bool)

(assert (=> d!1455580 m!5459275))

(declare-fun m!5459277 () Bool)

(assert (=> d!1455580 m!5459277))

(declare-fun m!5459279 () Bool)

(assert (=> b!4621742 m!5459279))

(declare-fun m!5459281 () Bool)

(assert (=> b!4621744 m!5459281))

(assert (=> b!4621509 d!1455580))

(declare-fun bs!1020566 () Bool)

(declare-fun b!4621749 () Bool)

(assert (= bs!1020566 (and b!4621749 d!1455572)))

(declare-fun lambda!191014 () Int)

(assert (=> bs!1020566 (= (= (ListMap!4246 Nil!51484) lt!1778269) (= lambda!191014 lambda!191012))))

(declare-fun bs!1020567 () Bool)

(assert (= bs!1020567 (and b!4621749 b!4621730)))

(assert (=> bs!1020567 (= lambda!191014 lambda!191008)))

(declare-fun bs!1020568 () Bool)

(assert (= bs!1020568 (and b!4621749 b!4621684)))

(assert (=> bs!1020568 (= lambda!191014 lambda!190999)))

(declare-fun bs!1020569 () Bool)

(assert (= bs!1020569 (and b!4621749 b!4621628)))

(assert (=> bs!1020569 (= (= (ListMap!4246 Nil!51484) lt!1778133) (= lambda!191014 lambda!190990))))

(declare-fun bs!1020570 () Bool)

(assert (= bs!1020570 (and b!4621749 b!4621727)))

(assert (=> bs!1020570 (= (= (ListMap!4246 Nil!51484) lt!1778260) (= lambda!191014 lambda!191010))))

(declare-fun bs!1020571 () Bool)

(assert (= bs!1020571 (and b!4621749 d!1455560)))

(assert (=> bs!1020571 (= (= (ListMap!4246 Nil!51484) lt!1778201) (= lambda!191014 lambda!191001))))

(declare-fun bs!1020572 () Bool)

(assert (= bs!1020572 (and b!4621749 b!4621631)))

(assert (=> bs!1020572 (= (= (ListMap!4246 Nil!51484) lt!1777889) (= lambda!191014 lambda!190988))))

(declare-fun bs!1020573 () Bool)

(assert (= bs!1020573 (and b!4621749 b!4621687)))

(assert (=> bs!1020573 (= lambda!191014 lambda!190998)))

(assert (=> bs!1020568 (= (= (ListMap!4246 Nil!51484) lt!1778192) (= lambda!191014 lambda!191000))))

(assert (=> bs!1020569 (= (= (ListMap!4246 Nil!51484) lt!1777889) (= lambda!191014 lambda!190989))))

(declare-fun bs!1020574 () Bool)

(assert (= bs!1020574 (and b!4621749 d!1455504)))

(assert (=> bs!1020574 (= (= (ListMap!4246 Nil!51484) lt!1778142) (= lambda!191014 lambda!190991))))

(declare-fun bs!1020575 () Bool)

(assert (= bs!1020575 (and b!4621749 d!1455502)))

(assert (=> bs!1020575 (not (= lambda!191014 lambda!190908))))

(assert (=> bs!1020570 (= lambda!191014 lambda!191009)))

(assert (=> b!4621749 true))

(declare-fun bs!1020576 () Bool)

(declare-fun b!4621746 () Bool)

(assert (= bs!1020576 (and b!4621746 d!1455572)))

(declare-fun lambda!191015 () Int)

(assert (=> bs!1020576 (= (= (ListMap!4246 Nil!51484) lt!1778269) (= lambda!191015 lambda!191012))))

(declare-fun bs!1020577 () Bool)

(assert (= bs!1020577 (and b!4621746 b!4621749)))

(assert (=> bs!1020577 (= lambda!191015 lambda!191014)))

(declare-fun bs!1020578 () Bool)

(assert (= bs!1020578 (and b!4621746 b!4621730)))

(assert (=> bs!1020578 (= lambda!191015 lambda!191008)))

(declare-fun bs!1020579 () Bool)

(assert (= bs!1020579 (and b!4621746 b!4621684)))

(assert (=> bs!1020579 (= lambda!191015 lambda!190999)))

(declare-fun bs!1020580 () Bool)

(assert (= bs!1020580 (and b!4621746 b!4621628)))

(assert (=> bs!1020580 (= (= (ListMap!4246 Nil!51484) lt!1778133) (= lambda!191015 lambda!190990))))

(declare-fun bs!1020581 () Bool)

(assert (= bs!1020581 (and b!4621746 b!4621727)))

(assert (=> bs!1020581 (= (= (ListMap!4246 Nil!51484) lt!1778260) (= lambda!191015 lambda!191010))))

(declare-fun bs!1020582 () Bool)

(assert (= bs!1020582 (and b!4621746 d!1455560)))

(assert (=> bs!1020582 (= (= (ListMap!4246 Nil!51484) lt!1778201) (= lambda!191015 lambda!191001))))

(declare-fun bs!1020583 () Bool)

(assert (= bs!1020583 (and b!4621746 b!4621631)))

(assert (=> bs!1020583 (= (= (ListMap!4246 Nil!51484) lt!1777889) (= lambda!191015 lambda!190988))))

(declare-fun bs!1020584 () Bool)

(assert (= bs!1020584 (and b!4621746 b!4621687)))

(assert (=> bs!1020584 (= lambda!191015 lambda!190998)))

(assert (=> bs!1020579 (= (= (ListMap!4246 Nil!51484) lt!1778192) (= lambda!191015 lambda!191000))))

(assert (=> bs!1020580 (= (= (ListMap!4246 Nil!51484) lt!1777889) (= lambda!191015 lambda!190989))))

(declare-fun bs!1020585 () Bool)

(assert (= bs!1020585 (and b!4621746 d!1455504)))

(assert (=> bs!1020585 (= (= (ListMap!4246 Nil!51484) lt!1778142) (= lambda!191015 lambda!190991))))

(declare-fun bs!1020586 () Bool)

(assert (= bs!1020586 (and b!4621746 d!1455502)))

(assert (=> bs!1020586 (not (= lambda!191015 lambda!190908))))

(assert (=> bs!1020581 (= lambda!191015 lambda!191009)))

(assert (=> b!4621746 true))

(declare-fun lt!1778294 () ListMap!4245)

(declare-fun lambda!191016 () Int)

(assert (=> b!4621746 (= (= lt!1778294 (ListMap!4246 Nil!51484)) (= lambda!191016 lambda!191015))))

(assert (=> bs!1020576 (= (= lt!1778294 lt!1778269) (= lambda!191016 lambda!191012))))

(assert (=> bs!1020577 (= (= lt!1778294 (ListMap!4246 Nil!51484)) (= lambda!191016 lambda!191014))))

(assert (=> bs!1020578 (= (= lt!1778294 (ListMap!4246 Nil!51484)) (= lambda!191016 lambda!191008))))

(assert (=> bs!1020579 (= (= lt!1778294 (ListMap!4246 Nil!51484)) (= lambda!191016 lambda!190999))))

(assert (=> bs!1020580 (= (= lt!1778294 lt!1778133) (= lambda!191016 lambda!190990))))

(assert (=> bs!1020581 (= (= lt!1778294 lt!1778260) (= lambda!191016 lambda!191010))))

(assert (=> bs!1020582 (= (= lt!1778294 lt!1778201) (= lambda!191016 lambda!191001))))

(assert (=> bs!1020583 (= (= lt!1778294 lt!1777889) (= lambda!191016 lambda!190988))))

(assert (=> bs!1020584 (= (= lt!1778294 (ListMap!4246 Nil!51484)) (= lambda!191016 lambda!190998))))

(assert (=> bs!1020579 (= (= lt!1778294 lt!1778192) (= lambda!191016 lambda!191000))))

(assert (=> bs!1020580 (= (= lt!1778294 lt!1777889) (= lambda!191016 lambda!190989))))

(assert (=> bs!1020585 (= (= lt!1778294 lt!1778142) (= lambda!191016 lambda!190991))))

(assert (=> bs!1020586 (not (= lambda!191016 lambda!190908))))

(assert (=> bs!1020581 (= (= lt!1778294 (ListMap!4246 Nil!51484)) (= lambda!191016 lambda!191009))))

(assert (=> b!4621746 true))

(declare-fun bs!1020588 () Bool)

(declare-fun d!1455584 () Bool)

(assert (= bs!1020588 (and d!1455584 b!4621746)))

(declare-fun lt!1778303 () ListMap!4245)

(declare-fun lambda!191017 () Int)

(assert (=> bs!1020588 (= (= lt!1778303 (ListMap!4246 Nil!51484)) (= lambda!191017 lambda!191015))))

(declare-fun bs!1020589 () Bool)

(assert (= bs!1020589 (and d!1455584 d!1455572)))

(assert (=> bs!1020589 (= (= lt!1778303 lt!1778269) (= lambda!191017 lambda!191012))))

(declare-fun bs!1020590 () Bool)

(assert (= bs!1020590 (and d!1455584 b!4621749)))

(assert (=> bs!1020590 (= (= lt!1778303 (ListMap!4246 Nil!51484)) (= lambda!191017 lambda!191014))))

(declare-fun bs!1020591 () Bool)

(assert (= bs!1020591 (and d!1455584 b!4621730)))

(assert (=> bs!1020591 (= (= lt!1778303 (ListMap!4246 Nil!51484)) (= lambda!191017 lambda!191008))))

(declare-fun bs!1020592 () Bool)

(assert (= bs!1020592 (and d!1455584 b!4621684)))

(assert (=> bs!1020592 (= (= lt!1778303 (ListMap!4246 Nil!51484)) (= lambda!191017 lambda!190999))))

(assert (=> bs!1020588 (= (= lt!1778303 lt!1778294) (= lambda!191017 lambda!191016))))

(declare-fun bs!1020593 () Bool)

(assert (= bs!1020593 (and d!1455584 b!4621628)))

(assert (=> bs!1020593 (= (= lt!1778303 lt!1778133) (= lambda!191017 lambda!190990))))

(declare-fun bs!1020594 () Bool)

(assert (= bs!1020594 (and d!1455584 b!4621727)))

(assert (=> bs!1020594 (= (= lt!1778303 lt!1778260) (= lambda!191017 lambda!191010))))

(declare-fun bs!1020595 () Bool)

(assert (= bs!1020595 (and d!1455584 d!1455560)))

(assert (=> bs!1020595 (= (= lt!1778303 lt!1778201) (= lambda!191017 lambda!191001))))

(declare-fun bs!1020596 () Bool)

(assert (= bs!1020596 (and d!1455584 b!4621631)))

(assert (=> bs!1020596 (= (= lt!1778303 lt!1777889) (= lambda!191017 lambda!190988))))

(declare-fun bs!1020597 () Bool)

(assert (= bs!1020597 (and d!1455584 b!4621687)))

(assert (=> bs!1020597 (= (= lt!1778303 (ListMap!4246 Nil!51484)) (= lambda!191017 lambda!190998))))

(assert (=> bs!1020592 (= (= lt!1778303 lt!1778192) (= lambda!191017 lambda!191000))))

(assert (=> bs!1020593 (= (= lt!1778303 lt!1777889) (= lambda!191017 lambda!190989))))

(declare-fun bs!1020598 () Bool)

(assert (= bs!1020598 (and d!1455584 d!1455504)))

(assert (=> bs!1020598 (= (= lt!1778303 lt!1778142) (= lambda!191017 lambda!190991))))

(declare-fun bs!1020599 () Bool)

(assert (= bs!1020599 (and d!1455584 d!1455502)))

(assert (=> bs!1020599 (not (= lambda!191017 lambda!190908))))

(assert (=> bs!1020594 (= (= lt!1778303 (ListMap!4246 Nil!51484)) (= lambda!191017 lambda!191009))))

(assert (=> d!1455584 true))

(declare-fun bm!322287 () Bool)

(declare-fun call!322291 () Unit!111145)

(assert (=> bm!322287 (= call!322291 (lemmaContainsAllItsOwnKeys!492 (ListMap!4246 Nil!51484)))))

(declare-fun e!2882914 () ListMap!4245)

(assert (=> b!4621746 (= e!2882914 lt!1778294)))

(declare-fun lt!1778287 () ListMap!4245)

(assert (=> b!4621746 (= lt!1778287 (+!1854 (ListMap!4246 Nil!51484) (h!57520 (Cons!51484 lt!1777887 lt!1777885))))))

(assert (=> b!4621746 (= lt!1778294 (addToMapMapFromBucket!949 (t!358626 (Cons!51484 lt!1777887 lt!1777885)) (+!1854 (ListMap!4246 Nil!51484) (h!57520 (Cons!51484 lt!1777887 lt!1777885)))))))

(declare-fun lt!1778301 () Unit!111145)

(assert (=> b!4621746 (= lt!1778301 call!322291)))

(assert (=> b!4621746 (forall!10796 (toList!4941 (ListMap!4246 Nil!51484)) lambda!191015)))

(declare-fun lt!1778295 () Unit!111145)

(assert (=> b!4621746 (= lt!1778295 lt!1778301)))

(assert (=> b!4621746 (forall!10796 (toList!4941 lt!1778287) lambda!191016)))

(declare-fun lt!1778300 () Unit!111145)

(declare-fun Unit!111229 () Unit!111145)

(assert (=> b!4621746 (= lt!1778300 Unit!111229)))

(assert (=> b!4621746 (forall!10796 (t!358626 (Cons!51484 lt!1777887 lt!1777885)) lambda!191016)))

(declare-fun lt!1778297 () Unit!111145)

(declare-fun Unit!111230 () Unit!111145)

(assert (=> b!4621746 (= lt!1778297 Unit!111230)))

(declare-fun lt!1778298 () Unit!111145)

(declare-fun Unit!111231 () Unit!111145)

(assert (=> b!4621746 (= lt!1778298 Unit!111231)))

(declare-fun lt!1778288 () Unit!111145)

(assert (=> b!4621746 (= lt!1778288 (forallContained!3020 (toList!4941 lt!1778287) lambda!191016 (h!57520 (Cons!51484 lt!1777887 lt!1777885))))))

(assert (=> b!4621746 (contains!14495 lt!1778287 (_1!29493 (h!57520 (Cons!51484 lt!1777887 lt!1777885))))))

(declare-fun lt!1778289 () Unit!111145)

(declare-fun Unit!111232 () Unit!111145)

(assert (=> b!4621746 (= lt!1778289 Unit!111232)))

(assert (=> b!4621746 (contains!14495 lt!1778294 (_1!29493 (h!57520 (Cons!51484 lt!1777887 lt!1777885))))))

(declare-fun lt!1778291 () Unit!111145)

(declare-fun Unit!111233 () Unit!111145)

(assert (=> b!4621746 (= lt!1778291 Unit!111233)))

(assert (=> b!4621746 (forall!10796 (Cons!51484 lt!1777887 lt!1777885) lambda!191016)))

(declare-fun lt!1778293 () Unit!111145)

(declare-fun Unit!111234 () Unit!111145)

(assert (=> b!4621746 (= lt!1778293 Unit!111234)))

(assert (=> b!4621746 (forall!10796 (toList!4941 lt!1778287) lambda!191016)))

(declare-fun lt!1778296 () Unit!111145)

(declare-fun Unit!111235 () Unit!111145)

(assert (=> b!4621746 (= lt!1778296 Unit!111235)))

(declare-fun lt!1778284 () Unit!111145)

(declare-fun Unit!111236 () Unit!111145)

(assert (=> b!4621746 (= lt!1778284 Unit!111236)))

(declare-fun lt!1778299 () Unit!111145)

(assert (=> b!4621746 (= lt!1778299 (addForallContainsKeyThenBeforeAdding!491 (ListMap!4246 Nil!51484) lt!1778294 (_1!29493 (h!57520 (Cons!51484 lt!1777887 lt!1777885))) (_2!29493 (h!57520 (Cons!51484 lt!1777887 lt!1777885)))))))

(assert (=> b!4621746 (forall!10796 (toList!4941 (ListMap!4246 Nil!51484)) lambda!191016)))

(declare-fun lt!1778292 () Unit!111145)

(assert (=> b!4621746 (= lt!1778292 lt!1778299)))

(declare-fun call!322292 () Bool)

(assert (=> b!4621746 call!322292))

(declare-fun lt!1778290 () Unit!111145)

(declare-fun Unit!111237 () Unit!111145)

(assert (=> b!4621746 (= lt!1778290 Unit!111237)))

(declare-fun res!1937504 () Bool)

(assert (=> b!4621746 (= res!1937504 (forall!10796 (Cons!51484 lt!1777887 lt!1777885) lambda!191016))))

(declare-fun e!2882916 () Bool)

(assert (=> b!4621746 (=> (not res!1937504) (not e!2882916))))

(assert (=> b!4621746 e!2882916))

(declare-fun lt!1778285 () Unit!111145)

(declare-fun Unit!111238 () Unit!111145)

(assert (=> b!4621746 (= lt!1778285 Unit!111238)))

(declare-fun b!4621747 () Bool)

(declare-fun e!2882915 () Bool)

(assert (=> b!4621747 (= e!2882915 (invariantList!1190 (toList!4941 lt!1778303)))))

(declare-fun b!4621748 () Bool)

(declare-fun res!1937503 () Bool)

(assert (=> b!4621748 (=> (not res!1937503) (not e!2882915))))

(assert (=> b!4621748 (= res!1937503 (forall!10796 (toList!4941 (ListMap!4246 Nil!51484)) lambda!191017))))

(assert (=> b!4621749 (= e!2882914 (ListMap!4246 Nil!51484))))

(declare-fun lt!1778302 () Unit!111145)

(assert (=> b!4621749 (= lt!1778302 call!322291)))

(assert (=> b!4621749 call!322292))

(declare-fun lt!1778304 () Unit!111145)

(assert (=> b!4621749 (= lt!1778304 lt!1778302)))

(declare-fun call!322293 () Bool)

(assert (=> b!4621749 call!322293))

(declare-fun lt!1778286 () Unit!111145)

(declare-fun Unit!111239 () Unit!111145)

(assert (=> b!4621749 (= lt!1778286 Unit!111239)))

(declare-fun bm!322288 () Bool)

(declare-fun c!791121 () Bool)

(assert (=> bm!322288 (= call!322293 (forall!10796 (toList!4941 (ListMap!4246 Nil!51484)) (ite c!791121 lambda!191014 lambda!191016)))))

(declare-fun b!4621750 () Bool)

(assert (=> b!4621750 (= e!2882916 call!322293)))

(declare-fun bm!322286 () Bool)

(assert (=> bm!322286 (= call!322292 (forall!10796 (toList!4941 (ListMap!4246 Nil!51484)) (ite c!791121 lambda!191014 lambda!191016)))))

(assert (=> d!1455584 e!2882915))

(declare-fun res!1937505 () Bool)

(assert (=> d!1455584 (=> (not res!1937505) (not e!2882915))))

(assert (=> d!1455584 (= res!1937505 (forall!10796 (Cons!51484 lt!1777887 lt!1777885) lambda!191017))))

(assert (=> d!1455584 (= lt!1778303 e!2882914)))

(assert (=> d!1455584 (= c!791121 ((_ is Nil!51484) (Cons!51484 lt!1777887 lt!1777885)))))

(assert (=> d!1455584 (noDuplicateKeys!1488 (Cons!51484 lt!1777887 lt!1777885))))

(assert (=> d!1455584 (= (addToMapMapFromBucket!949 (Cons!51484 lt!1777887 lt!1777885) (ListMap!4246 Nil!51484)) lt!1778303)))

(assert (= (and d!1455584 c!791121) b!4621749))

(assert (= (and d!1455584 (not c!791121)) b!4621746))

(assert (= (and b!4621746 res!1937504) b!4621750))

(assert (= (or b!4621749 b!4621746) bm!322287))

(assert (= (or b!4621749 b!4621750) bm!322288))

(assert (= (or b!4621749 b!4621746) bm!322286))

(assert (= (and d!1455584 res!1937505) b!4621748))

(assert (= (and b!4621748 res!1937503) b!4621747))

(declare-fun m!5459297 () Bool)

(assert (=> d!1455584 m!5459297))

(declare-fun m!5459299 () Bool)

(assert (=> d!1455584 m!5459299))

(declare-fun m!5459301 () Bool)

(assert (=> bm!322288 m!5459301))

(assert (=> bm!322287 m!5459153))

(declare-fun m!5459303 () Bool)

(assert (=> b!4621747 m!5459303))

(declare-fun m!5459305 () Bool)

(assert (=> b!4621748 m!5459305))

(declare-fun m!5459307 () Bool)

(assert (=> b!4621746 m!5459307))

(declare-fun m!5459309 () Bool)

(assert (=> b!4621746 m!5459309))

(declare-fun m!5459311 () Bool)

(assert (=> b!4621746 m!5459311))

(declare-fun m!5459313 () Bool)

(assert (=> b!4621746 m!5459313))

(declare-fun m!5459315 () Bool)

(assert (=> b!4621746 m!5459315))

(assert (=> b!4621746 m!5459307))

(declare-fun m!5459317 () Bool)

(assert (=> b!4621746 m!5459317))

(declare-fun m!5459319 () Bool)

(assert (=> b!4621746 m!5459319))

(declare-fun m!5459321 () Bool)

(assert (=> b!4621746 m!5459321))

(declare-fun m!5459323 () Bool)

(assert (=> b!4621746 m!5459323))

(declare-fun m!5459325 () Bool)

(assert (=> b!4621746 m!5459325))

(assert (=> b!4621746 m!5459313))

(assert (=> b!4621746 m!5459323))

(declare-fun m!5459327 () Bool)

(assert (=> b!4621746 m!5459327))

(assert (=> bm!322286 m!5459301))

(assert (=> b!4621509 d!1455584))

(declare-fun bs!1020600 () Bool)

(declare-fun d!1455594 () Bool)

(assert (= bs!1020600 (and d!1455594 b!4621508)))

(declare-fun lambda!191018 () Int)

(assert (=> bs!1020600 (= lambda!191018 lambda!190902)))

(declare-fun bs!1020601 () Bool)

(assert (= bs!1020601 (and d!1455594 d!1455542)))

(assert (=> bs!1020601 (= lambda!191018 lambda!190997)))

(declare-fun bs!1020602 () Bool)

(assert (= bs!1020602 (and d!1455594 d!1455576)))

(assert (=> bs!1020602 (= lambda!191018 lambda!191013)))

(declare-fun lt!1778308 () ListMap!4245)

(assert (=> d!1455594 (invariantList!1190 (toList!4941 lt!1778308))))

(declare-fun e!2882934 () ListMap!4245)

(assert (=> d!1455594 (= lt!1778308 e!2882934)))

(declare-fun c!791122 () Bool)

(assert (=> d!1455594 (= c!791122 ((_ is Cons!51485) lt!1777893))))

(assert (=> d!1455594 (forall!10794 lt!1777893 lambda!191018)))

(assert (=> d!1455594 (= (extractMap!1544 lt!1777893) lt!1778308)))

(declare-fun b!4621768 () Bool)

(assert (=> b!4621768 (= e!2882934 (addToMapMapFromBucket!949 (_2!29494 (h!57521 lt!1777893)) (extractMap!1544 (t!358627 lt!1777893))))))

(declare-fun b!4621769 () Bool)

(assert (=> b!4621769 (= e!2882934 (ListMap!4246 Nil!51484))))

(assert (= (and d!1455594 c!791122) b!4621768))

(assert (= (and d!1455594 (not c!791122)) b!4621769))

(declare-fun m!5459333 () Bool)

(assert (=> d!1455594 m!5459333))

(declare-fun m!5459335 () Bool)

(assert (=> d!1455594 m!5459335))

(declare-fun m!5459337 () Bool)

(assert (=> b!4621768 m!5459337))

(assert (=> b!4621768 m!5459337))

(declare-fun m!5459339 () Bool)

(assert (=> b!4621768 m!5459339))

(assert (=> b!4621509 d!1455594))

(declare-fun bs!1020603 () Bool)

(declare-fun b!4621773 () Bool)

(assert (= bs!1020603 (and b!4621773 b!4621746)))

(declare-fun lambda!191019 () Int)

(assert (=> bs!1020603 (= lambda!191019 lambda!191015)))

(declare-fun bs!1020604 () Bool)

(assert (= bs!1020604 (and b!4621773 d!1455572)))

(assert (=> bs!1020604 (= (= (ListMap!4246 Nil!51484) lt!1778269) (= lambda!191019 lambda!191012))))

(declare-fun bs!1020605 () Bool)

(assert (= bs!1020605 (and b!4621773 b!4621749)))

(assert (=> bs!1020605 (= lambda!191019 lambda!191014)))

(declare-fun bs!1020606 () Bool)

(assert (= bs!1020606 (and b!4621773 b!4621730)))

(assert (=> bs!1020606 (= lambda!191019 lambda!191008)))

(declare-fun bs!1020607 () Bool)

(assert (= bs!1020607 (and b!4621773 b!4621684)))

(assert (=> bs!1020607 (= lambda!191019 lambda!190999)))

(assert (=> bs!1020603 (= (= (ListMap!4246 Nil!51484) lt!1778294) (= lambda!191019 lambda!191016))))

(declare-fun bs!1020608 () Bool)

(assert (= bs!1020608 (and b!4621773 b!4621628)))

(assert (=> bs!1020608 (= (= (ListMap!4246 Nil!51484) lt!1778133) (= lambda!191019 lambda!190990))))

(declare-fun bs!1020609 () Bool)

(assert (= bs!1020609 (and b!4621773 b!4621727)))

(assert (=> bs!1020609 (= (= (ListMap!4246 Nil!51484) lt!1778260) (= lambda!191019 lambda!191010))))

(declare-fun bs!1020610 () Bool)

(assert (= bs!1020610 (and b!4621773 d!1455560)))

(assert (=> bs!1020610 (= (= (ListMap!4246 Nil!51484) lt!1778201) (= lambda!191019 lambda!191001))))

(declare-fun bs!1020611 () Bool)

(assert (= bs!1020611 (and b!4621773 b!4621631)))

(assert (=> bs!1020611 (= (= (ListMap!4246 Nil!51484) lt!1777889) (= lambda!191019 lambda!190988))))

(assert (=> bs!1020607 (= (= (ListMap!4246 Nil!51484) lt!1778192) (= lambda!191019 lambda!191000))))

(assert (=> bs!1020608 (= (= (ListMap!4246 Nil!51484) lt!1777889) (= lambda!191019 lambda!190989))))

(declare-fun bs!1020612 () Bool)

(assert (= bs!1020612 (and b!4621773 d!1455504)))

(assert (=> bs!1020612 (= (= (ListMap!4246 Nil!51484) lt!1778142) (= lambda!191019 lambda!190991))))

(declare-fun bs!1020613 () Bool)

(assert (= bs!1020613 (and b!4621773 d!1455502)))

(assert (=> bs!1020613 (not (= lambda!191019 lambda!190908))))

(assert (=> bs!1020609 (= lambda!191019 lambda!191009)))

(declare-fun bs!1020614 () Bool)

(assert (= bs!1020614 (and b!4621773 b!4621687)))

(assert (=> bs!1020614 (= lambda!191019 lambda!190998)))

(declare-fun bs!1020615 () Bool)

(assert (= bs!1020615 (and b!4621773 d!1455584)))

(assert (=> bs!1020615 (= (= (ListMap!4246 Nil!51484) lt!1778303) (= lambda!191019 lambda!191017))))

(assert (=> b!4621773 true))

(declare-fun bs!1020616 () Bool)

(declare-fun b!4621770 () Bool)

(assert (= bs!1020616 (and b!4621770 b!4621746)))

(declare-fun lambda!191020 () Int)

(assert (=> bs!1020616 (= lambda!191020 lambda!191015)))

(declare-fun bs!1020617 () Bool)

(assert (= bs!1020617 (and b!4621770 d!1455572)))

(assert (=> bs!1020617 (= (= (ListMap!4246 Nil!51484) lt!1778269) (= lambda!191020 lambda!191012))))

(declare-fun bs!1020618 () Bool)

(assert (= bs!1020618 (and b!4621770 b!4621749)))

(assert (=> bs!1020618 (= lambda!191020 lambda!191014)))

(declare-fun bs!1020619 () Bool)

(assert (= bs!1020619 (and b!4621770 b!4621730)))

(assert (=> bs!1020619 (= lambda!191020 lambda!191008)))

(declare-fun bs!1020620 () Bool)

(assert (= bs!1020620 (and b!4621770 b!4621684)))

(assert (=> bs!1020620 (= lambda!191020 lambda!190999)))

(assert (=> bs!1020616 (= (= (ListMap!4246 Nil!51484) lt!1778294) (= lambda!191020 lambda!191016))))

(declare-fun bs!1020621 () Bool)

(assert (= bs!1020621 (and b!4621770 b!4621628)))

(assert (=> bs!1020621 (= (= (ListMap!4246 Nil!51484) lt!1778133) (= lambda!191020 lambda!190990))))

(declare-fun bs!1020622 () Bool)

(assert (= bs!1020622 (and b!4621770 b!4621727)))

(assert (=> bs!1020622 (= (= (ListMap!4246 Nil!51484) lt!1778260) (= lambda!191020 lambda!191010))))

(declare-fun bs!1020623 () Bool)

(assert (= bs!1020623 (and b!4621770 b!4621773)))

(assert (=> bs!1020623 (= lambda!191020 lambda!191019)))

(declare-fun bs!1020624 () Bool)

(assert (= bs!1020624 (and b!4621770 d!1455560)))

(assert (=> bs!1020624 (= (= (ListMap!4246 Nil!51484) lt!1778201) (= lambda!191020 lambda!191001))))

(declare-fun bs!1020625 () Bool)

(assert (= bs!1020625 (and b!4621770 b!4621631)))

(assert (=> bs!1020625 (= (= (ListMap!4246 Nil!51484) lt!1777889) (= lambda!191020 lambda!190988))))

(assert (=> bs!1020620 (= (= (ListMap!4246 Nil!51484) lt!1778192) (= lambda!191020 lambda!191000))))

(assert (=> bs!1020621 (= (= (ListMap!4246 Nil!51484) lt!1777889) (= lambda!191020 lambda!190989))))

(declare-fun bs!1020626 () Bool)

(assert (= bs!1020626 (and b!4621770 d!1455504)))

(assert (=> bs!1020626 (= (= (ListMap!4246 Nil!51484) lt!1778142) (= lambda!191020 lambda!190991))))

(declare-fun bs!1020627 () Bool)

(assert (= bs!1020627 (and b!4621770 d!1455502)))

(assert (=> bs!1020627 (not (= lambda!191020 lambda!190908))))

(assert (=> bs!1020622 (= lambda!191020 lambda!191009)))

(declare-fun bs!1020628 () Bool)

(assert (= bs!1020628 (and b!4621770 b!4621687)))

(assert (=> bs!1020628 (= lambda!191020 lambda!190998)))

(declare-fun bs!1020629 () Bool)

(assert (= bs!1020629 (and b!4621770 d!1455584)))

(assert (=> bs!1020629 (= (= (ListMap!4246 Nil!51484) lt!1778303) (= lambda!191020 lambda!191017))))

(assert (=> b!4621770 true))

(declare-fun lt!1778319 () ListMap!4245)

(declare-fun lambda!191021 () Int)

(assert (=> bs!1020616 (= (= lt!1778319 (ListMap!4246 Nil!51484)) (= lambda!191021 lambda!191015))))

(assert (=> bs!1020617 (= (= lt!1778319 lt!1778269) (= lambda!191021 lambda!191012))))

(assert (=> bs!1020618 (= (= lt!1778319 (ListMap!4246 Nil!51484)) (= lambda!191021 lambda!191014))))

(assert (=> bs!1020619 (= (= lt!1778319 (ListMap!4246 Nil!51484)) (= lambda!191021 lambda!191008))))

(assert (=> bs!1020620 (= (= lt!1778319 (ListMap!4246 Nil!51484)) (= lambda!191021 lambda!190999))))

(assert (=> bs!1020616 (= (= lt!1778319 lt!1778294) (= lambda!191021 lambda!191016))))

(assert (=> bs!1020621 (= (= lt!1778319 lt!1778133) (= lambda!191021 lambda!190990))))

(assert (=> bs!1020622 (= (= lt!1778319 lt!1778260) (= lambda!191021 lambda!191010))))

(assert (=> bs!1020623 (= (= lt!1778319 (ListMap!4246 Nil!51484)) (= lambda!191021 lambda!191019))))

(assert (=> bs!1020624 (= (= lt!1778319 lt!1778201) (= lambda!191021 lambda!191001))))

(assert (=> b!4621770 (= (= lt!1778319 (ListMap!4246 Nil!51484)) (= lambda!191021 lambda!191020))))

(assert (=> bs!1020625 (= (= lt!1778319 lt!1777889) (= lambda!191021 lambda!190988))))

(assert (=> bs!1020620 (= (= lt!1778319 lt!1778192) (= lambda!191021 lambda!191000))))

(assert (=> bs!1020621 (= (= lt!1778319 lt!1777889) (= lambda!191021 lambda!190989))))

(assert (=> bs!1020626 (= (= lt!1778319 lt!1778142) (= lambda!191021 lambda!190991))))

(assert (=> bs!1020627 (not (= lambda!191021 lambda!190908))))

(assert (=> bs!1020622 (= (= lt!1778319 (ListMap!4246 Nil!51484)) (= lambda!191021 lambda!191009))))

(assert (=> bs!1020628 (= (= lt!1778319 (ListMap!4246 Nil!51484)) (= lambda!191021 lambda!190998))))

(assert (=> bs!1020629 (= (= lt!1778319 lt!1778303) (= lambda!191021 lambda!191017))))

(assert (=> b!4621770 true))

(declare-fun bs!1020641 () Bool)

(declare-fun d!1455598 () Bool)

(assert (= bs!1020641 (and d!1455598 b!4621746)))

(declare-fun lt!1778328 () ListMap!4245)

(declare-fun lambda!191023 () Int)

(assert (=> bs!1020641 (= (= lt!1778328 (ListMap!4246 Nil!51484)) (= lambda!191023 lambda!191015))))

(declare-fun bs!1020642 () Bool)

(assert (= bs!1020642 (and d!1455598 d!1455572)))

(assert (=> bs!1020642 (= (= lt!1778328 lt!1778269) (= lambda!191023 lambda!191012))))

(declare-fun bs!1020644 () Bool)

(assert (= bs!1020644 (and d!1455598 b!4621749)))

(assert (=> bs!1020644 (= (= lt!1778328 (ListMap!4246 Nil!51484)) (= lambda!191023 lambda!191014))))

(declare-fun bs!1020646 () Bool)

(assert (= bs!1020646 (and d!1455598 b!4621730)))

(assert (=> bs!1020646 (= (= lt!1778328 (ListMap!4246 Nil!51484)) (= lambda!191023 lambda!191008))))

(declare-fun bs!1020647 () Bool)

(assert (= bs!1020647 (and d!1455598 b!4621684)))

(assert (=> bs!1020647 (= (= lt!1778328 (ListMap!4246 Nil!51484)) (= lambda!191023 lambda!190999))))

(assert (=> bs!1020641 (= (= lt!1778328 lt!1778294) (= lambda!191023 lambda!191016))))

(declare-fun bs!1020648 () Bool)

(assert (= bs!1020648 (and d!1455598 b!4621628)))

(assert (=> bs!1020648 (= (= lt!1778328 lt!1778133) (= lambda!191023 lambda!190990))))

(declare-fun bs!1020649 () Bool)

(assert (= bs!1020649 (and d!1455598 b!4621770)))

(assert (=> bs!1020649 (= (= lt!1778328 lt!1778319) (= lambda!191023 lambda!191021))))

(declare-fun bs!1020650 () Bool)

(assert (= bs!1020650 (and d!1455598 b!4621727)))

(assert (=> bs!1020650 (= (= lt!1778328 lt!1778260) (= lambda!191023 lambda!191010))))

(declare-fun bs!1020651 () Bool)

(assert (= bs!1020651 (and d!1455598 b!4621773)))

(assert (=> bs!1020651 (= (= lt!1778328 (ListMap!4246 Nil!51484)) (= lambda!191023 lambda!191019))))

(declare-fun bs!1020652 () Bool)

(assert (= bs!1020652 (and d!1455598 d!1455560)))

(assert (=> bs!1020652 (= (= lt!1778328 lt!1778201) (= lambda!191023 lambda!191001))))

(assert (=> bs!1020649 (= (= lt!1778328 (ListMap!4246 Nil!51484)) (= lambda!191023 lambda!191020))))

(declare-fun bs!1020655 () Bool)

(assert (= bs!1020655 (and d!1455598 b!4621631)))

(assert (=> bs!1020655 (= (= lt!1778328 lt!1777889) (= lambda!191023 lambda!190988))))

(assert (=> bs!1020647 (= (= lt!1778328 lt!1778192) (= lambda!191023 lambda!191000))))

(assert (=> bs!1020648 (= (= lt!1778328 lt!1777889) (= lambda!191023 lambda!190989))))

(declare-fun bs!1020659 () Bool)

(assert (= bs!1020659 (and d!1455598 d!1455504)))

(assert (=> bs!1020659 (= (= lt!1778328 lt!1778142) (= lambda!191023 lambda!190991))))

(declare-fun bs!1020661 () Bool)

(assert (= bs!1020661 (and d!1455598 d!1455502)))

(assert (=> bs!1020661 (not (= lambda!191023 lambda!190908))))

(assert (=> bs!1020650 (= (= lt!1778328 (ListMap!4246 Nil!51484)) (= lambda!191023 lambda!191009))))

(declare-fun bs!1020664 () Bool)

(assert (= bs!1020664 (and d!1455598 b!4621687)))

(assert (=> bs!1020664 (= (= lt!1778328 (ListMap!4246 Nil!51484)) (= lambda!191023 lambda!190998))))

(declare-fun bs!1020666 () Bool)

(assert (= bs!1020666 (and d!1455598 d!1455584)))

(assert (=> bs!1020666 (= (= lt!1778328 lt!1778303) (= lambda!191023 lambda!191017))))

(assert (=> d!1455598 true))

(declare-fun bm!322290 () Bool)

(declare-fun call!322294 () Unit!111145)

(assert (=> bm!322290 (= call!322294 (lemmaContainsAllItsOwnKeys!492 (ListMap!4246 Nil!51484)))))

(declare-fun e!2882935 () ListMap!4245)

(assert (=> b!4621770 (= e!2882935 lt!1778319)))

(declare-fun lt!1778312 () ListMap!4245)

(assert (=> b!4621770 (= lt!1778312 (+!1854 (ListMap!4246 Nil!51484) (h!57520 (Cons!51484 lt!1777881 lt!1777879))))))

(assert (=> b!4621770 (= lt!1778319 (addToMapMapFromBucket!949 (t!358626 (Cons!51484 lt!1777881 lt!1777879)) (+!1854 (ListMap!4246 Nil!51484) (h!57520 (Cons!51484 lt!1777881 lt!1777879)))))))

(declare-fun lt!1778326 () Unit!111145)

(assert (=> b!4621770 (= lt!1778326 call!322294)))

(assert (=> b!4621770 (forall!10796 (toList!4941 (ListMap!4246 Nil!51484)) lambda!191020)))

(declare-fun lt!1778320 () Unit!111145)

(assert (=> b!4621770 (= lt!1778320 lt!1778326)))

(assert (=> b!4621770 (forall!10796 (toList!4941 lt!1778312) lambda!191021)))

(declare-fun lt!1778325 () Unit!111145)

(declare-fun Unit!111240 () Unit!111145)

(assert (=> b!4621770 (= lt!1778325 Unit!111240)))

(assert (=> b!4621770 (forall!10796 (t!358626 (Cons!51484 lt!1777881 lt!1777879)) lambda!191021)))

(declare-fun lt!1778322 () Unit!111145)

(declare-fun Unit!111241 () Unit!111145)

(assert (=> b!4621770 (= lt!1778322 Unit!111241)))

(declare-fun lt!1778323 () Unit!111145)

(declare-fun Unit!111242 () Unit!111145)

(assert (=> b!4621770 (= lt!1778323 Unit!111242)))

(declare-fun lt!1778313 () Unit!111145)

(assert (=> b!4621770 (= lt!1778313 (forallContained!3020 (toList!4941 lt!1778312) lambda!191021 (h!57520 (Cons!51484 lt!1777881 lt!1777879))))))

(assert (=> b!4621770 (contains!14495 lt!1778312 (_1!29493 (h!57520 (Cons!51484 lt!1777881 lt!1777879))))))

(declare-fun lt!1778314 () Unit!111145)

(declare-fun Unit!111243 () Unit!111145)

(assert (=> b!4621770 (= lt!1778314 Unit!111243)))

(assert (=> b!4621770 (contains!14495 lt!1778319 (_1!29493 (h!57520 (Cons!51484 lt!1777881 lt!1777879))))))

(declare-fun lt!1778316 () Unit!111145)

(declare-fun Unit!111244 () Unit!111145)

(assert (=> b!4621770 (= lt!1778316 Unit!111244)))

(assert (=> b!4621770 (forall!10796 (Cons!51484 lt!1777881 lt!1777879) lambda!191021)))

(declare-fun lt!1778318 () Unit!111145)

(declare-fun Unit!111245 () Unit!111145)

(assert (=> b!4621770 (= lt!1778318 Unit!111245)))

(assert (=> b!4621770 (forall!10796 (toList!4941 lt!1778312) lambda!191021)))

(declare-fun lt!1778321 () Unit!111145)

(declare-fun Unit!111246 () Unit!111145)

(assert (=> b!4621770 (= lt!1778321 Unit!111246)))

(declare-fun lt!1778309 () Unit!111145)

(declare-fun Unit!111247 () Unit!111145)

(assert (=> b!4621770 (= lt!1778309 Unit!111247)))

(declare-fun lt!1778324 () Unit!111145)

(assert (=> b!4621770 (= lt!1778324 (addForallContainsKeyThenBeforeAdding!491 (ListMap!4246 Nil!51484) lt!1778319 (_1!29493 (h!57520 (Cons!51484 lt!1777881 lt!1777879))) (_2!29493 (h!57520 (Cons!51484 lt!1777881 lt!1777879)))))))

(assert (=> b!4621770 (forall!10796 (toList!4941 (ListMap!4246 Nil!51484)) lambda!191021)))

(declare-fun lt!1778317 () Unit!111145)

(assert (=> b!4621770 (= lt!1778317 lt!1778324)))

(declare-fun call!322295 () Bool)

(assert (=> b!4621770 call!322295))

(declare-fun lt!1778315 () Unit!111145)

(declare-fun Unit!111248 () Unit!111145)

(assert (=> b!4621770 (= lt!1778315 Unit!111248)))

(declare-fun res!1937524 () Bool)

(assert (=> b!4621770 (= res!1937524 (forall!10796 (Cons!51484 lt!1777881 lt!1777879) lambda!191021))))

(declare-fun e!2882937 () Bool)

(assert (=> b!4621770 (=> (not res!1937524) (not e!2882937))))

(assert (=> b!4621770 e!2882937))

(declare-fun lt!1778310 () Unit!111145)

(declare-fun Unit!111249 () Unit!111145)

(assert (=> b!4621770 (= lt!1778310 Unit!111249)))

(declare-fun b!4621771 () Bool)

(declare-fun e!2882936 () Bool)

(assert (=> b!4621771 (= e!2882936 (invariantList!1190 (toList!4941 lt!1778328)))))

(declare-fun b!4621772 () Bool)

(declare-fun res!1937523 () Bool)

(assert (=> b!4621772 (=> (not res!1937523) (not e!2882936))))

(assert (=> b!4621772 (= res!1937523 (forall!10796 (toList!4941 (ListMap!4246 Nil!51484)) lambda!191023))))

(assert (=> b!4621773 (= e!2882935 (ListMap!4246 Nil!51484))))

(declare-fun lt!1778327 () Unit!111145)

(assert (=> b!4621773 (= lt!1778327 call!322294)))

(assert (=> b!4621773 call!322295))

(declare-fun lt!1778329 () Unit!111145)

(assert (=> b!4621773 (= lt!1778329 lt!1778327)))

(declare-fun call!322296 () Bool)

(assert (=> b!4621773 call!322296))

(declare-fun lt!1778311 () Unit!111145)

(declare-fun Unit!111250 () Unit!111145)

(assert (=> b!4621773 (= lt!1778311 Unit!111250)))

(declare-fun c!791123 () Bool)

(declare-fun bm!322291 () Bool)

(assert (=> bm!322291 (= call!322296 (forall!10796 (toList!4941 (ListMap!4246 Nil!51484)) (ite c!791123 lambda!191019 lambda!191021)))))

(declare-fun b!4621774 () Bool)

(assert (=> b!4621774 (= e!2882937 call!322296)))

(declare-fun bm!322289 () Bool)

(assert (=> bm!322289 (= call!322295 (forall!10796 (toList!4941 (ListMap!4246 Nil!51484)) (ite c!791123 lambda!191019 lambda!191021)))))

(assert (=> d!1455598 e!2882936))

(declare-fun res!1937525 () Bool)

(assert (=> d!1455598 (=> (not res!1937525) (not e!2882936))))

(assert (=> d!1455598 (= res!1937525 (forall!10796 (Cons!51484 lt!1777881 lt!1777879) lambda!191023))))

(assert (=> d!1455598 (= lt!1778328 e!2882935)))

(assert (=> d!1455598 (= c!791123 ((_ is Nil!51484) (Cons!51484 lt!1777881 lt!1777879)))))

(assert (=> d!1455598 (noDuplicateKeys!1488 (Cons!51484 lt!1777881 lt!1777879))))

(assert (=> d!1455598 (= (addToMapMapFromBucket!949 (Cons!51484 lt!1777881 lt!1777879) (ListMap!4246 Nil!51484)) lt!1778328)))

(assert (= (and d!1455598 c!791123) b!4621773))

(assert (= (and d!1455598 (not c!791123)) b!4621770))

(assert (= (and b!4621770 res!1937524) b!4621774))

(assert (= (or b!4621773 b!4621770) bm!322290))

(assert (= (or b!4621773 b!4621774) bm!322291))

(assert (= (or b!4621773 b!4621770) bm!322289))

(assert (= (and d!1455598 res!1937525) b!4621772))

(assert (= (and b!4621772 res!1937523) b!4621771))

(declare-fun m!5459353 () Bool)

(assert (=> d!1455598 m!5459353))

(declare-fun m!5459355 () Bool)

(assert (=> d!1455598 m!5459355))

(declare-fun m!5459357 () Bool)

(assert (=> bm!322291 m!5459357))

(assert (=> bm!322290 m!5459153))

(declare-fun m!5459359 () Bool)

(assert (=> b!4621771 m!5459359))

(declare-fun m!5459361 () Bool)

(assert (=> b!4621772 m!5459361))

(declare-fun m!5459363 () Bool)

(assert (=> b!4621770 m!5459363))

(declare-fun m!5459365 () Bool)

(assert (=> b!4621770 m!5459365))

(declare-fun m!5459367 () Bool)

(assert (=> b!4621770 m!5459367))

(declare-fun m!5459369 () Bool)

(assert (=> b!4621770 m!5459369))

(declare-fun m!5459371 () Bool)

(assert (=> b!4621770 m!5459371))

(assert (=> b!4621770 m!5459363))

(declare-fun m!5459373 () Bool)

(assert (=> b!4621770 m!5459373))

(declare-fun m!5459375 () Bool)

(assert (=> b!4621770 m!5459375))

(declare-fun m!5459377 () Bool)

(assert (=> b!4621770 m!5459377))

(declare-fun m!5459379 () Bool)

(assert (=> b!4621770 m!5459379))

(declare-fun m!5459381 () Bool)

(assert (=> b!4621770 m!5459381))

(assert (=> b!4621770 m!5459369))

(assert (=> b!4621770 m!5459379))

(declare-fun m!5459383 () Bool)

(assert (=> b!4621770 m!5459383))

(assert (=> bm!322289 m!5459357))

(assert (=> b!4621509 d!1455598))

(declare-fun d!1455610 () Bool)

(assert (=> d!1455610 (eq!803 (addToMapMapFromBucket!949 (Cons!51484 lt!1777881 lt!1777879) (ListMap!4246 Nil!51484)) (+!1854 (addToMapMapFromBucket!949 lt!1777879 (ListMap!4246 Nil!51484)) lt!1777881))))

(declare-fun lt!1778355 () Unit!111145)

(assert (=> d!1455610 (= lt!1778355 (choose!31200 lt!1777881 lt!1777879 (ListMap!4246 Nil!51484)))))

(assert (=> d!1455610 (noDuplicateKeys!1488 lt!1777879)))

(assert (=> d!1455610 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!54 lt!1777881 lt!1777879 (ListMap!4246 Nil!51484)) lt!1778355)))

(declare-fun bs!1020672 () Bool)

(assert (= bs!1020672 d!1455610))

(assert (=> bs!1020672 m!5459149))

(declare-fun m!5459385 () Bool)

(assert (=> bs!1020672 m!5459385))

(assert (=> bs!1020672 m!5458771))

(assert (=> bs!1020672 m!5458773))

(assert (=> bs!1020672 m!5458775))

(assert (=> bs!1020672 m!5458777))

(assert (=> bs!1020672 m!5458773))

(assert (=> bs!1020672 m!5458771))

(assert (=> bs!1020672 m!5458777))

(assert (=> b!4621509 d!1455610))

(declare-fun bs!1020719 () Bool)

(declare-fun d!1455612 () Bool)

(assert (= bs!1020719 (and d!1455612 b!4621508)))

(declare-fun lambda!191032 () Int)

(assert (=> bs!1020719 (= lambda!191032 lambda!190902)))

(declare-fun bs!1020721 () Bool)

(assert (= bs!1020721 (and d!1455612 d!1455542)))

(assert (=> bs!1020721 (= lambda!191032 lambda!190997)))

(declare-fun bs!1020722 () Bool)

(assert (= bs!1020722 (and d!1455612 d!1455576)))

(assert (=> bs!1020722 (= lambda!191032 lambda!191013)))

(declare-fun bs!1020723 () Bool)

(assert (= bs!1020723 (and d!1455612 d!1455594)))

(assert (=> bs!1020723 (= lambda!191032 lambda!191018)))

(assert (=> d!1455612 (contains!14495 (extractMap!1544 (toList!4942 (ListLongMap!3532 lt!1777893))) key!4968)))

(declare-fun lt!1778369 () Unit!111145)

(declare-fun choose!31206 (ListLongMap!3531 K!12870 Hashable!5885) Unit!111145)

(assert (=> d!1455612 (= lt!1778369 (choose!31206 (ListLongMap!3532 lt!1777893) key!4968 hashF!1389))))

(assert (=> d!1455612 (forall!10794 (toList!4942 (ListLongMap!3532 lt!1777893)) lambda!191032)))

(assert (=> d!1455612 (= (lemmaListContainsThenExtractedMapContains!306 (ListLongMap!3532 lt!1777893) key!4968 hashF!1389) lt!1778369)))

(declare-fun bs!1020724 () Bool)

(assert (= bs!1020724 d!1455612))

(declare-fun m!5459465 () Bool)

(assert (=> bs!1020724 m!5459465))

(assert (=> bs!1020724 m!5459465))

(declare-fun m!5459467 () Bool)

(assert (=> bs!1020724 m!5459467))

(declare-fun m!5459469 () Bool)

(assert (=> bs!1020724 m!5459469))

(declare-fun m!5459471 () Bool)

(assert (=> bs!1020724 m!5459471))

(assert (=> b!4621509 d!1455612))

(declare-fun d!1455628 () Bool)

(assert (=> d!1455628 (= (eq!803 (addToMapMapFromBucket!949 (Cons!51484 lt!1777881 lt!1777879) (ListMap!4246 Nil!51484)) (+!1854 (addToMapMapFromBucket!949 lt!1777879 (ListMap!4246 Nil!51484)) lt!1777881)) (= (content!8764 (toList!4941 (addToMapMapFromBucket!949 (Cons!51484 lt!1777881 lt!1777879) (ListMap!4246 Nil!51484)))) (content!8764 (toList!4941 (+!1854 (addToMapMapFromBucket!949 lt!1777879 (ListMap!4246 Nil!51484)) lt!1777881)))))))

(declare-fun bs!1020725 () Bool)

(assert (= bs!1020725 d!1455628))

(declare-fun m!5459473 () Bool)

(assert (=> bs!1020725 m!5459473))

(declare-fun m!5459475 () Bool)

(assert (=> bs!1020725 m!5459475))

(assert (=> b!4621509 d!1455628))

(declare-fun d!1455630 () Bool)

(declare-fun e!2882965 () Bool)

(assert (=> d!1455630 e!2882965))

(declare-fun res!1937535 () Bool)

(assert (=> d!1455630 (=> (not res!1937535) (not e!2882965))))

(declare-fun lt!1778370 () ListMap!4245)

(assert (=> d!1455630 (= res!1937535 (contains!14495 lt!1778370 (_1!29493 lt!1777881)))))

(declare-fun lt!1778373 () List!51608)

(assert (=> d!1455630 (= lt!1778370 (ListMap!4246 lt!1778373))))

(declare-fun lt!1778372 () Unit!111145)

(declare-fun lt!1778371 () Unit!111145)

(assert (=> d!1455630 (= lt!1778372 lt!1778371)))

(assert (=> d!1455630 (= (getValueByKey!1422 lt!1778373 (_1!29493 lt!1777881)) (Some!11543 (_2!29493 lt!1777881)))))

(assert (=> d!1455630 (= lt!1778371 (lemmaContainsTupThenGetReturnValue!834 lt!1778373 (_1!29493 lt!1777881) (_2!29493 lt!1777881)))))

(assert (=> d!1455630 (= lt!1778373 (insertNoDuplicatedKeys!342 (toList!4941 (addToMapMapFromBucket!949 lt!1777879 (ListMap!4246 Nil!51484))) (_1!29493 lt!1777881) (_2!29493 lt!1777881)))))

(assert (=> d!1455630 (= (+!1854 (addToMapMapFromBucket!949 lt!1777879 (ListMap!4246 Nil!51484)) lt!1777881) lt!1778370)))

(declare-fun b!4621821 () Bool)

(declare-fun res!1937534 () Bool)

(assert (=> b!4621821 (=> (not res!1937534) (not e!2882965))))

(assert (=> b!4621821 (= res!1937534 (= (getValueByKey!1422 (toList!4941 lt!1778370) (_1!29493 lt!1777881)) (Some!11543 (_2!29493 lt!1777881))))))

(declare-fun b!4621822 () Bool)

(assert (=> b!4621822 (= e!2882965 (contains!14500 (toList!4941 lt!1778370) lt!1777881))))

(assert (= (and d!1455630 res!1937535) b!4621821))

(assert (= (and b!4621821 res!1937534) b!4621822))

(declare-fun m!5459477 () Bool)

(assert (=> d!1455630 m!5459477))

(declare-fun m!5459479 () Bool)

(assert (=> d!1455630 m!5459479))

(declare-fun m!5459481 () Bool)

(assert (=> d!1455630 m!5459481))

(declare-fun m!5459483 () Bool)

(assert (=> d!1455630 m!5459483))

(declare-fun m!5459485 () Bool)

(assert (=> b!4621821 m!5459485))

(declare-fun m!5459487 () Bool)

(assert (=> b!4621822 m!5459487))

(assert (=> b!4621509 d!1455630))

(declare-fun bs!1020726 () Bool)

(declare-fun d!1455632 () Bool)

(assert (= bs!1020726 (and d!1455632 d!1455612)))

(declare-fun lambda!191035 () Int)

(assert (=> bs!1020726 (= lambda!191035 lambda!191032)))

(declare-fun bs!1020727 () Bool)

(assert (= bs!1020727 (and d!1455632 d!1455594)))

(assert (=> bs!1020727 (= lambda!191035 lambda!191018)))

(declare-fun bs!1020728 () Bool)

(assert (= bs!1020728 (and d!1455632 d!1455542)))

(assert (=> bs!1020728 (= lambda!191035 lambda!190997)))

(declare-fun bs!1020729 () Bool)

(assert (= bs!1020729 (and d!1455632 d!1455576)))

(assert (=> bs!1020729 (= lambda!191035 lambda!191013)))

(declare-fun bs!1020730 () Bool)

(assert (= bs!1020730 (and d!1455632 b!4621508)))

(assert (=> bs!1020730 (= lambda!191035 lambda!190902)))

(assert (=> d!1455632 (contains!14497 lt!1777883 (hash!3463 hashF!1389 key!4968))))

(declare-fun lt!1778376 () Unit!111145)

(declare-fun choose!31207 (ListLongMap!3531 K!12870 Hashable!5885) Unit!111145)

(assert (=> d!1455632 (= lt!1778376 (choose!31207 lt!1777883 key!4968 hashF!1389))))

(assert (=> d!1455632 (forall!10794 (toList!4942 lt!1777883) lambda!191035)))

(assert (=> d!1455632 (= (lemmaInGenMapThenLongMapContainsHash!486 lt!1777883 key!4968 hashF!1389) lt!1778376)))

(declare-fun bs!1020731 () Bool)

(assert (= bs!1020731 d!1455632))

(assert (=> bs!1020731 m!5458721))

(assert (=> bs!1020731 m!5458721))

(declare-fun m!5459489 () Bool)

(assert (=> bs!1020731 m!5459489))

(declare-fun m!5459491 () Bool)

(assert (=> bs!1020731 m!5459491))

(declare-fun m!5459493 () Bool)

(assert (=> bs!1020731 m!5459493))

(assert (=> b!4621508 d!1455632))

(declare-fun d!1455634 () Bool)

(declare-fun e!2882970 () Bool)

(assert (=> d!1455634 e!2882970))

(declare-fun res!1937538 () Bool)

(assert (=> d!1455634 (=> res!1937538 e!2882970)))

(declare-fun lt!1778386 () Bool)

(assert (=> d!1455634 (= res!1937538 (not lt!1778386))))

(declare-fun lt!1778387 () Bool)

(assert (=> d!1455634 (= lt!1778386 lt!1778387)))

(declare-fun lt!1778385 () Unit!111145)

(declare-fun e!2882971 () Unit!111145)

(assert (=> d!1455634 (= lt!1778385 e!2882971)))

(declare-fun c!791142 () Bool)

(assert (=> d!1455634 (= c!791142 lt!1778387)))

(declare-fun containsKey!2404 (List!51609 (_ BitVec 64)) Bool)

(assert (=> d!1455634 (= lt!1778387 (containsKey!2404 (toList!4942 lt!1777883) lt!1777891))))

(assert (=> d!1455634 (= (contains!14497 lt!1777883 lt!1777891) lt!1778386)))

(declare-fun b!4621829 () Bool)

(declare-fun lt!1778388 () Unit!111145)

(assert (=> b!4621829 (= e!2882971 lt!1778388)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1326 (List!51609 (_ BitVec 64)) Unit!111145)

(assert (=> b!4621829 (= lt!1778388 (lemmaContainsKeyImpliesGetValueByKeyDefined!1326 (toList!4942 lt!1777883) lt!1777891))))

(declare-datatypes ((Option!11546 0))(
  ( (None!11545) (Some!11545 (v!45647 List!51608)) )
))
(declare-fun isDefined!8811 (Option!11546) Bool)

(declare-fun getValueByKey!1424 (List!51609 (_ BitVec 64)) Option!11546)

(assert (=> b!4621829 (isDefined!8811 (getValueByKey!1424 (toList!4942 lt!1777883) lt!1777891))))

(declare-fun b!4621830 () Bool)

(declare-fun Unit!111262 () Unit!111145)

(assert (=> b!4621830 (= e!2882971 Unit!111262)))

(declare-fun b!4621831 () Bool)

(assert (=> b!4621831 (= e!2882970 (isDefined!8811 (getValueByKey!1424 (toList!4942 lt!1777883) lt!1777891)))))

(assert (= (and d!1455634 c!791142) b!4621829))

(assert (= (and d!1455634 (not c!791142)) b!4621830))

(assert (= (and d!1455634 (not res!1937538)) b!4621831))

(declare-fun m!5459495 () Bool)

(assert (=> d!1455634 m!5459495))

(declare-fun m!5459497 () Bool)

(assert (=> b!4621829 m!5459497))

(declare-fun m!5459499 () Bool)

(assert (=> b!4621829 m!5459499))

(assert (=> b!4621829 m!5459499))

(declare-fun m!5459501 () Bool)

(assert (=> b!4621829 m!5459501))

(assert (=> b!4621831 m!5459499))

(assert (=> b!4621831 m!5459499))

(assert (=> b!4621831 m!5459501))

(assert (=> b!4621508 d!1455634))

(declare-fun b!4621849 () Bool)

(declare-fun e!2882986 () Option!11542)

(assert (=> b!4621849 (= e!2882986 (getPair!280 (t!358626 lt!1777876) key!4968))))

(declare-fun b!4621850 () Bool)

(assert (=> b!4621850 (= e!2882986 None!11541)))

(declare-fun b!4621851 () Bool)

(declare-fun e!2882983 () Bool)

(declare-fun e!2882985 () Bool)

(assert (=> b!4621851 (= e!2882983 e!2882985)))

(declare-fun res!1937547 () Bool)

(assert (=> b!4621851 (=> (not res!1937547) (not e!2882985))))

(declare-fun lt!1778391 () Option!11542)

(assert (=> b!4621851 (= res!1937547 (isDefined!8807 lt!1778391))))

(declare-fun b!4621852 () Bool)

(declare-fun e!2882982 () Option!11542)

(assert (=> b!4621852 (= e!2882982 e!2882986)))

(declare-fun c!791148 () Bool)

(assert (=> b!4621852 (= c!791148 ((_ is Cons!51484) lt!1777876))))

(declare-fun b!4621853 () Bool)

(assert (=> b!4621853 (= e!2882982 (Some!11541 (h!57520 lt!1777876)))))

(declare-fun b!4621854 () Bool)

(declare-fun e!2882984 () Bool)

(assert (=> b!4621854 (= e!2882984 (not (containsKey!2400 lt!1777876 key!4968)))))

(declare-fun b!4621855 () Bool)

(declare-fun res!1937550 () Bool)

(assert (=> b!4621855 (=> (not res!1937550) (not e!2882985))))

(declare-fun get!17040 (Option!11542) tuple2!52398)

(assert (=> b!4621855 (= res!1937550 (= (_1!29493 (get!17040 lt!1778391)) key!4968))))

(declare-fun b!4621848 () Bool)

(assert (=> b!4621848 (= e!2882985 (contains!14500 lt!1777876 (get!17040 lt!1778391)))))

(declare-fun d!1455636 () Bool)

(assert (=> d!1455636 e!2882983))

(declare-fun res!1937548 () Bool)

(assert (=> d!1455636 (=> res!1937548 e!2882983)))

(assert (=> d!1455636 (= res!1937548 e!2882984)))

(declare-fun res!1937549 () Bool)

(assert (=> d!1455636 (=> (not res!1937549) (not e!2882984))))

(declare-fun isEmpty!28916 (Option!11542) Bool)

(assert (=> d!1455636 (= res!1937549 (isEmpty!28916 lt!1778391))))

(assert (=> d!1455636 (= lt!1778391 e!2882982)))

(declare-fun c!791147 () Bool)

(assert (=> d!1455636 (= c!791147 (and ((_ is Cons!51484) lt!1777876) (= (_1!29493 (h!57520 lt!1777876)) key!4968)))))

(assert (=> d!1455636 (noDuplicateKeys!1488 lt!1777876)))

(assert (=> d!1455636 (= (getPair!280 lt!1777876 key!4968) lt!1778391)))

(assert (= (and d!1455636 c!791147) b!4621853))

(assert (= (and d!1455636 (not c!791147)) b!4621852))

(assert (= (and b!4621852 c!791148) b!4621849))

(assert (= (and b!4621852 (not c!791148)) b!4621850))

(assert (= (and d!1455636 res!1937549) b!4621854))

(assert (= (and d!1455636 (not res!1937548)) b!4621851))

(assert (= (and b!4621851 res!1937547) b!4621855))

(assert (= (and b!4621855 res!1937550) b!4621848))

(declare-fun m!5459503 () Bool)

(assert (=> d!1455636 m!5459503))

(declare-fun m!5459505 () Bool)

(assert (=> d!1455636 m!5459505))

(declare-fun m!5459507 () Bool)

(assert (=> b!4621849 m!5459507))

(declare-fun m!5459509 () Bool)

(assert (=> b!4621851 m!5459509))

(declare-fun m!5459511 () Bool)

(assert (=> b!4621854 m!5459511))

(declare-fun m!5459513 () Bool)

(assert (=> b!4621848 m!5459513))

(assert (=> b!4621848 m!5459513))

(declare-fun m!5459515 () Bool)

(assert (=> b!4621848 m!5459515))

(assert (=> b!4621855 m!5459513))

(assert (=> b!4621508 d!1455636))

(declare-fun d!1455638 () Bool)

(assert (=> d!1455638 (containsKey!2400 oldBucket!40 key!4968)))

(declare-fun lt!1778394 () Unit!111145)

(declare-fun choose!31208 (List!51608 K!12870 Hashable!5885) Unit!111145)

(assert (=> d!1455638 (= lt!1778394 (choose!31208 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1455638 (noDuplicateKeys!1488 oldBucket!40)))

(assert (=> d!1455638 (= (lemmaGetPairDefinedThenContainsKey!34 oldBucket!40 key!4968 hashF!1389) lt!1778394)))

(declare-fun bs!1020732 () Bool)

(assert (= bs!1020732 d!1455638))

(assert (=> bs!1020732 m!5458739))

(declare-fun m!5459517 () Bool)

(assert (=> bs!1020732 m!5459517))

(assert (=> bs!1020732 m!5458717))

(assert (=> b!4621508 d!1455638))

(declare-fun d!1455640 () Bool)

(assert (=> d!1455640 (= (isDefined!8807 (getPair!280 lt!1777876 key!4968)) (not (isEmpty!28916 (getPair!280 lt!1777876 key!4968))))))

(declare-fun bs!1020733 () Bool)

(assert (= bs!1020733 d!1455640))

(assert (=> bs!1020733 m!5458743))

(declare-fun m!5459519 () Bool)

(assert (=> bs!1020733 m!5459519))

(assert (=> b!4621508 d!1455640))

(declare-fun d!1455642 () Bool)

(declare-fun res!1937555 () Bool)

(declare-fun e!2882991 () Bool)

(assert (=> d!1455642 (=> res!1937555 e!2882991)))

(assert (=> d!1455642 (= res!1937555 (and ((_ is Cons!51484) (t!358626 oldBucket!40)) (= (_1!29493 (h!57520 (t!358626 oldBucket!40))) key!4968)))))

(assert (=> d!1455642 (= (containsKey!2400 (t!358626 oldBucket!40) key!4968) e!2882991)))

(declare-fun b!4621860 () Bool)

(declare-fun e!2882992 () Bool)

(assert (=> b!4621860 (= e!2882991 e!2882992)))

(declare-fun res!1937556 () Bool)

(assert (=> b!4621860 (=> (not res!1937556) (not e!2882992))))

(assert (=> b!4621860 (= res!1937556 ((_ is Cons!51484) (t!358626 oldBucket!40)))))

(declare-fun b!4621861 () Bool)

(assert (=> b!4621861 (= e!2882992 (containsKey!2400 (t!358626 (t!358626 oldBucket!40)) key!4968))))

(assert (= (and d!1455642 (not res!1937555)) b!4621860))

(assert (= (and b!4621860 res!1937556) b!4621861))

(declare-fun m!5459521 () Bool)

(assert (=> b!4621861 m!5459521))

(assert (=> b!4621508 d!1455642))

(declare-fun bs!1020734 () Bool)

(declare-fun d!1455644 () Bool)

(assert (= bs!1020734 (and d!1455644 d!1455612)))

(declare-fun lambda!191042 () Int)

(assert (=> bs!1020734 (= lambda!191042 lambda!191032)))

(declare-fun bs!1020735 () Bool)

(assert (= bs!1020735 (and d!1455644 d!1455594)))

(assert (=> bs!1020735 (= lambda!191042 lambda!191018)))

(declare-fun bs!1020736 () Bool)

(assert (= bs!1020736 (and d!1455644 d!1455576)))

(assert (=> bs!1020736 (= lambda!191042 lambda!191013)))

(declare-fun bs!1020737 () Bool)

(assert (= bs!1020737 (and d!1455644 b!4621508)))

(assert (=> bs!1020737 (= lambda!191042 lambda!190902)))

(declare-fun bs!1020738 () Bool)

(assert (= bs!1020738 (and d!1455644 d!1455542)))

(assert (=> bs!1020738 (= lambda!191042 lambda!190997)))

(declare-fun bs!1020739 () Bool)

(assert (= bs!1020739 (and d!1455644 d!1455632)))

(assert (=> bs!1020739 (= lambda!191042 lambda!191035)))

(declare-fun b!4621870 () Bool)

(declare-fun res!1937566 () Bool)

(declare-fun e!2882997 () Bool)

(assert (=> b!4621870 (=> (not res!1937566) (not e!2882997))))

(declare-fun allKeysSameHashInMap!1516 (ListLongMap!3531 Hashable!5885) Bool)

(assert (=> b!4621870 (= res!1937566 (allKeysSameHashInMap!1516 lt!1777883 hashF!1389))))

(declare-fun b!4621872 () Bool)

(assert (=> b!4621872 (= e!2882997 (isDefined!8807 (getPair!280 (apply!12153 lt!1777883 (hash!3463 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1778413 () Unit!111145)

(assert (=> b!4621872 (= lt!1778413 (forallContained!3018 (toList!4942 lt!1777883) lambda!191042 (tuple2!52401 (hash!3463 hashF!1389 key!4968) (apply!12153 lt!1777883 (hash!3463 hashF!1389 key!4968)))))))

(declare-fun lt!1778414 () Unit!111145)

(declare-fun lt!1778411 () Unit!111145)

(assert (=> b!4621872 (= lt!1778414 lt!1778411)))

(declare-fun lt!1778416 () (_ BitVec 64))

(declare-fun lt!1778415 () List!51608)

(assert (=> b!4621872 (contains!14496 (toList!4942 lt!1777883) (tuple2!52401 lt!1778416 lt!1778415))))

(assert (=> b!4621872 (= lt!1778411 (lemmaGetValueImpliesTupleContained!85 lt!1777883 lt!1778416 lt!1778415))))

(declare-fun e!2882998 () Bool)

(assert (=> b!4621872 e!2882998))

(declare-fun res!1937568 () Bool)

(assert (=> b!4621872 (=> (not res!1937568) (not e!2882998))))

(assert (=> b!4621872 (= res!1937568 (contains!14497 lt!1777883 lt!1778416))))

(assert (=> b!4621872 (= lt!1778415 (apply!12153 lt!1777883 (hash!3463 hashF!1389 key!4968)))))

(assert (=> b!4621872 (= lt!1778416 (hash!3463 hashF!1389 key!4968))))

(declare-fun lt!1778412 () Unit!111145)

(declare-fun lt!1778417 () Unit!111145)

(assert (=> b!4621872 (= lt!1778412 lt!1778417)))

(assert (=> b!4621872 (contains!14497 lt!1777883 (hash!3463 hashF!1389 key!4968))))

(assert (=> b!4621872 (= lt!1778417 (lemmaInGenMapThenLongMapContainsHash!486 lt!1777883 key!4968 hashF!1389))))

(declare-fun b!4621871 () Bool)

(declare-fun res!1937565 () Bool)

(assert (=> b!4621871 (=> (not res!1937565) (not e!2882997))))

(assert (=> b!4621871 (= res!1937565 (contains!14495 (extractMap!1544 (toList!4942 lt!1777883)) key!4968))))

(declare-fun b!4621873 () Bool)

(assert (=> b!4621873 (= e!2882998 (= (getValueByKey!1424 (toList!4942 lt!1777883) lt!1778416) (Some!11545 lt!1778415)))))

(assert (=> d!1455644 e!2882997))

(declare-fun res!1937567 () Bool)

(assert (=> d!1455644 (=> (not res!1937567) (not e!2882997))))

(assert (=> d!1455644 (= res!1937567 (forall!10794 (toList!4942 lt!1777883) lambda!191042))))

(declare-fun lt!1778418 () Unit!111145)

(declare-fun choose!31209 (ListLongMap!3531 K!12870 Hashable!5885) Unit!111145)

(assert (=> d!1455644 (= lt!1778418 (choose!31209 lt!1777883 key!4968 hashF!1389))))

(assert (=> d!1455644 (forall!10794 (toList!4942 lt!1777883) lambda!191042)))

(assert (=> d!1455644 (= (lemmaInGenMapThenGetPairDefined!76 lt!1777883 key!4968 hashF!1389) lt!1778418)))

(assert (= (and d!1455644 res!1937567) b!4621870))

(assert (= (and b!4621870 res!1937566) b!4621871))

(assert (= (and b!4621871 res!1937565) b!4621872))

(assert (= (and b!4621872 res!1937568) b!4621873))

(declare-fun m!5459523 () Bool)

(assert (=> d!1455644 m!5459523))

(declare-fun m!5459525 () Bool)

(assert (=> d!1455644 m!5459525))

(assert (=> d!1455644 m!5459523))

(declare-fun m!5459527 () Bool)

(assert (=> b!4621872 m!5459527))

(declare-fun m!5459529 () Bool)

(assert (=> b!4621872 m!5459529))

(declare-fun m!5459531 () Bool)

(assert (=> b!4621872 m!5459531))

(declare-fun m!5459533 () Bool)

(assert (=> b!4621872 m!5459533))

(assert (=> b!4621872 m!5458721))

(declare-fun m!5459535 () Bool)

(assert (=> b!4621872 m!5459535))

(assert (=> b!4621872 m!5459529))

(declare-fun m!5459537 () Bool)

(assert (=> b!4621872 m!5459537))

(declare-fun m!5459539 () Bool)

(assert (=> b!4621872 m!5459539))

(assert (=> b!4621872 m!5458721))

(assert (=> b!4621872 m!5459535))

(assert (=> b!4621872 m!5458721))

(assert (=> b!4621872 m!5459489))

(assert (=> b!4621872 m!5458735))

(declare-fun m!5459541 () Bool)

(assert (=> b!4621870 m!5459541))

(declare-fun m!5459543 () Bool)

(assert (=> b!4621871 m!5459543))

(assert (=> b!4621871 m!5459543))

(declare-fun m!5459545 () Bool)

(assert (=> b!4621871 m!5459545))

(declare-fun m!5459547 () Bool)

(assert (=> b!4621873 m!5459547))

(assert (=> b!4621508 d!1455644))

(declare-fun d!1455646 () Bool)

(declare-fun res!1937569 () Bool)

(declare-fun e!2882999 () Bool)

(assert (=> d!1455646 (=> res!1937569 e!2882999)))

(assert (=> d!1455646 (= res!1937569 (and ((_ is Cons!51484) oldBucket!40) (= (_1!29493 (h!57520 oldBucket!40)) key!4968)))))

(assert (=> d!1455646 (= (containsKey!2400 oldBucket!40 key!4968) e!2882999)))

(declare-fun b!4621874 () Bool)

(declare-fun e!2883000 () Bool)

(assert (=> b!4621874 (= e!2882999 e!2883000)))

(declare-fun res!1937570 () Bool)

(assert (=> b!4621874 (=> (not res!1937570) (not e!2883000))))

(assert (=> b!4621874 (= res!1937570 ((_ is Cons!51484) oldBucket!40))))

(declare-fun b!4621875 () Bool)

(assert (=> b!4621875 (= e!2883000 (containsKey!2400 (t!358626 oldBucket!40) key!4968))))

(assert (= (and d!1455646 (not res!1937569)) b!4621874))

(assert (= (and b!4621874 res!1937570) b!4621875))

(assert (=> b!4621875 m!5458751))

(assert (=> b!4621508 d!1455646))

(declare-fun d!1455648 () Bool)

(declare-fun lt!1778421 () Bool)

(declare-fun content!8766 (List!51609) (InoxSet tuple2!52400))

(assert (=> d!1455648 (= lt!1778421 (select (content!8766 lt!1777886) lt!1777888))))

(declare-fun e!2883006 () Bool)

(assert (=> d!1455648 (= lt!1778421 e!2883006)))

(declare-fun res!1937575 () Bool)

(assert (=> d!1455648 (=> (not res!1937575) (not e!2883006))))

(assert (=> d!1455648 (= res!1937575 ((_ is Cons!51485) lt!1777886))))

(assert (=> d!1455648 (= (contains!14496 lt!1777886 lt!1777888) lt!1778421)))

(declare-fun b!4621880 () Bool)

(declare-fun e!2883005 () Bool)

(assert (=> b!4621880 (= e!2883006 e!2883005)))

(declare-fun res!1937576 () Bool)

(assert (=> b!4621880 (=> res!1937576 e!2883005)))

(assert (=> b!4621880 (= res!1937576 (= (h!57521 lt!1777886) lt!1777888))))

(declare-fun b!4621881 () Bool)

(assert (=> b!4621881 (= e!2883005 (contains!14496 (t!358627 lt!1777886) lt!1777888))))

(assert (= (and d!1455648 res!1937575) b!4621880))

(assert (= (and b!4621880 (not res!1937576)) b!4621881))

(declare-fun m!5459549 () Bool)

(assert (=> d!1455648 m!5459549))

(declare-fun m!5459551 () Bool)

(assert (=> d!1455648 m!5459551))

(declare-fun m!5459553 () Bool)

(assert (=> b!4621881 m!5459553))

(assert (=> b!4621508 d!1455648))

(declare-fun d!1455650 () Bool)

(declare-fun dynLambda!21484 (Int tuple2!52400) Bool)

(assert (=> d!1455650 (dynLambda!21484 lambda!190902 lt!1777888)))

(declare-fun lt!1778424 () Unit!111145)

(declare-fun choose!31210 (List!51609 Int tuple2!52400) Unit!111145)

(assert (=> d!1455650 (= lt!1778424 (choose!31210 lt!1777886 lambda!190902 lt!1777888))))

(declare-fun e!2883009 () Bool)

(assert (=> d!1455650 e!2883009))

(declare-fun res!1937579 () Bool)

(assert (=> d!1455650 (=> (not res!1937579) (not e!2883009))))

(assert (=> d!1455650 (= res!1937579 (forall!10794 lt!1777886 lambda!190902))))

(assert (=> d!1455650 (= (forallContained!3018 lt!1777886 lambda!190902 lt!1777888) lt!1778424)))

(declare-fun b!4621884 () Bool)

(assert (=> b!4621884 (= e!2883009 (contains!14496 lt!1777886 lt!1777888))))

(assert (= (and d!1455650 res!1937579) b!4621884))

(declare-fun b_lambda!170653 () Bool)

(assert (=> (not b_lambda!170653) (not d!1455650)))

(declare-fun m!5459555 () Bool)

(assert (=> d!1455650 m!5459555))

(declare-fun m!5459557 () Bool)

(assert (=> d!1455650 m!5459557))

(declare-fun m!5459559 () Bool)

(assert (=> d!1455650 m!5459559))

(assert (=> b!4621884 m!5458737))

(assert (=> b!4621508 d!1455650))

(declare-fun d!1455652 () Bool)

(assert (=> d!1455652 (contains!14496 (toList!4942 lt!1777883) (tuple2!52401 lt!1777891 lt!1777876))))

(declare-fun lt!1778427 () Unit!111145)

(declare-fun choose!31211 (ListLongMap!3531 (_ BitVec 64) List!51608) Unit!111145)

(assert (=> d!1455652 (= lt!1778427 (choose!31211 lt!1777883 lt!1777891 lt!1777876))))

(assert (=> d!1455652 (contains!14497 lt!1777883 lt!1777891)))

(assert (=> d!1455652 (= (lemmaGetValueImpliesTupleContained!85 lt!1777883 lt!1777891 lt!1777876) lt!1778427)))

(declare-fun bs!1020740 () Bool)

(assert (= bs!1020740 d!1455652))

(declare-fun m!5459561 () Bool)

(assert (=> bs!1020740 m!5459561))

(declare-fun m!5459563 () Bool)

(assert (=> bs!1020740 m!5459563))

(assert (=> bs!1020740 m!5458749))

(assert (=> b!4621508 d!1455652))

(declare-fun d!1455654 () Bool)

(declare-fun get!17041 (Option!11546) List!51608)

(assert (=> d!1455654 (= (apply!12153 lt!1777883 lt!1777891) (get!17041 (getValueByKey!1424 (toList!4942 lt!1777883) lt!1777891)))))

(declare-fun bs!1020741 () Bool)

(assert (= bs!1020741 d!1455654))

(assert (=> bs!1020741 m!5459499))

(assert (=> bs!1020741 m!5459499))

(declare-fun m!5459565 () Bool)

(assert (=> bs!1020741 m!5459565))

(assert (=> b!4621508 d!1455654))

(declare-fun d!1455656 () Bool)

(declare-fun res!1937584 () Bool)

(declare-fun e!2883014 () Bool)

(assert (=> d!1455656 (=> res!1937584 e!2883014)))

(assert (=> d!1455656 (= res!1937584 ((_ is Nil!51485) (Cons!51485 (tuple2!52401 hash!414 newBucket!224) Nil!51485)))))

(assert (=> d!1455656 (= (forall!10794 (Cons!51485 (tuple2!52401 hash!414 newBucket!224) Nil!51485) lambda!190902) e!2883014)))

(declare-fun b!4621890 () Bool)

(declare-fun e!2883015 () Bool)

(assert (=> b!4621890 (= e!2883014 e!2883015)))

(declare-fun res!1937585 () Bool)

(assert (=> b!4621890 (=> (not res!1937585) (not e!2883015))))

(assert (=> b!4621890 (= res!1937585 (dynLambda!21484 lambda!190902 (h!57521 (Cons!51485 (tuple2!52401 hash!414 newBucket!224) Nil!51485))))))

(declare-fun b!4621891 () Bool)

(assert (=> b!4621891 (= e!2883015 (forall!10794 (t!358627 (Cons!51485 (tuple2!52401 hash!414 newBucket!224) Nil!51485)) lambda!190902))))

(assert (= (and d!1455656 (not res!1937584)) b!4621890))

(assert (= (and b!4621890 res!1937585) b!4621891))

(declare-fun b_lambda!170655 () Bool)

(assert (=> (not b_lambda!170655) (not b!4621890)))

(declare-fun m!5459567 () Bool)

(assert (=> b!4621890 m!5459567))

(declare-fun m!5459569 () Bool)

(assert (=> b!4621891 m!5459569))

(assert (=> b!4621507 d!1455656))

(declare-fun d!1455658 () Bool)

(declare-fun res!1937590 () Bool)

(declare-fun e!2883020 () Bool)

(assert (=> d!1455658 (=> res!1937590 e!2883020)))

(assert (=> d!1455658 (= res!1937590 (not ((_ is Cons!51484) oldBucket!40)))))

(assert (=> d!1455658 (= (noDuplicateKeys!1488 oldBucket!40) e!2883020)))

(declare-fun b!4621896 () Bool)

(declare-fun e!2883021 () Bool)

(assert (=> b!4621896 (= e!2883020 e!2883021)))

(declare-fun res!1937591 () Bool)

(assert (=> b!4621896 (=> (not res!1937591) (not e!2883021))))

(assert (=> b!4621896 (= res!1937591 (not (containsKey!2400 (t!358626 oldBucket!40) (_1!29493 (h!57520 oldBucket!40)))))))

(declare-fun b!4621897 () Bool)

(assert (=> b!4621897 (= e!2883021 (noDuplicateKeys!1488 (t!358626 oldBucket!40)))))

(assert (= (and d!1455658 (not res!1937590)) b!4621896))

(assert (= (and b!4621896 res!1937591) b!4621897))

(declare-fun m!5459571 () Bool)

(assert (=> b!4621896 m!5459571))

(declare-fun m!5459573 () Bool)

(assert (=> b!4621897 m!5459573))

(assert (=> start!462796 d!1455658))

(declare-fun bm!322296 () Bool)

(declare-fun call!322301 () Bool)

(declare-fun e!2883024 () List!51611)

(assert (=> bm!322296 (= call!322301 (contains!14501 e!2883024 key!4968))))

(declare-fun c!791149 () Bool)

(declare-fun c!791150 () Bool)

(assert (=> bm!322296 (= c!791149 c!791150)))

(declare-fun b!4621898 () Bool)

(declare-fun e!2883023 () Unit!111145)

(declare-fun e!2883027 () Unit!111145)

(assert (=> b!4621898 (= e!2883023 e!2883027)))

(declare-fun c!791151 () Bool)

(assert (=> b!4621898 (= c!791151 call!322301)))

(declare-fun b!4621899 () Bool)

(assert (=> b!4621899 (= e!2883024 (getKeysList!641 (toList!4941 lt!1777882)))))

(declare-fun d!1455660 () Bool)

(declare-fun e!2883026 () Bool)

(assert (=> d!1455660 e!2883026))

(declare-fun res!1937592 () Bool)

(assert (=> d!1455660 (=> res!1937592 e!2883026)))

(declare-fun e!2883025 () Bool)

(assert (=> d!1455660 (= res!1937592 e!2883025)))

(declare-fun res!1937594 () Bool)

(assert (=> d!1455660 (=> (not res!1937594) (not e!2883025))))

(declare-fun lt!1778430 () Bool)

(assert (=> d!1455660 (= res!1937594 (not lt!1778430))))

(declare-fun lt!1778431 () Bool)

(assert (=> d!1455660 (= lt!1778430 lt!1778431)))

(declare-fun lt!1778429 () Unit!111145)

(assert (=> d!1455660 (= lt!1778429 e!2883023)))

(assert (=> d!1455660 (= c!791150 lt!1778431)))

(assert (=> d!1455660 (= lt!1778431 (containsKey!2402 (toList!4941 lt!1777882) key!4968))))

(assert (=> d!1455660 (= (contains!14495 lt!1777882 key!4968) lt!1778430)))

(declare-fun b!4621900 () Bool)

(declare-fun Unit!111265 () Unit!111145)

(assert (=> b!4621900 (= e!2883027 Unit!111265)))

(declare-fun b!4621901 () Bool)

(assert (=> b!4621901 (= e!2883025 (not (contains!14501 (keys!18122 lt!1777882) key!4968)))))

(declare-fun b!4621902 () Bool)

(assert (=> b!4621902 (= e!2883024 (keys!18122 lt!1777882))))

(declare-fun b!4621903 () Bool)

(assert (=> b!4621903 false))

(declare-fun lt!1778432 () Unit!111145)

(declare-fun lt!1778433 () Unit!111145)

(assert (=> b!4621903 (= lt!1778432 lt!1778433)))

(assert (=> b!4621903 (containsKey!2402 (toList!4941 lt!1777882) key!4968)))

(assert (=> b!4621903 (= lt!1778433 (lemmaInGetKeysListThenContainsKey!640 (toList!4941 lt!1777882) key!4968))))

(declare-fun Unit!111266 () Unit!111145)

(assert (=> b!4621903 (= e!2883027 Unit!111266)))

(declare-fun b!4621904 () Bool)

(declare-fun e!2883022 () Bool)

(assert (=> b!4621904 (= e!2883026 e!2883022)))

(declare-fun res!1937593 () Bool)

(assert (=> b!4621904 (=> (not res!1937593) (not e!2883022))))

(assert (=> b!4621904 (= res!1937593 (isDefined!8809 (getValueByKey!1422 (toList!4941 lt!1777882) key!4968)))))

(declare-fun b!4621905 () Bool)

(assert (=> b!4621905 (= e!2883022 (contains!14501 (keys!18122 lt!1777882) key!4968))))

(declare-fun b!4621906 () Bool)

(declare-fun lt!1778428 () Unit!111145)

(assert (=> b!4621906 (= e!2883023 lt!1778428)))

(declare-fun lt!1778434 () Unit!111145)

(assert (=> b!4621906 (= lt!1778434 (lemmaContainsKeyImpliesGetValueByKeyDefined!1324 (toList!4941 lt!1777882) key!4968))))

(assert (=> b!4621906 (isDefined!8809 (getValueByKey!1422 (toList!4941 lt!1777882) key!4968))))

(declare-fun lt!1778435 () Unit!111145)

(assert (=> b!4621906 (= lt!1778435 lt!1778434)))

(assert (=> b!4621906 (= lt!1778428 (lemmaInListThenGetKeysListContains!636 (toList!4941 lt!1777882) key!4968))))

(assert (=> b!4621906 call!322301))

(assert (= (and d!1455660 c!791150) b!4621906))

(assert (= (and d!1455660 (not c!791150)) b!4621898))

(assert (= (and b!4621898 c!791151) b!4621903))

(assert (= (and b!4621898 (not c!791151)) b!4621900))

(assert (= (or b!4621906 b!4621898) bm!322296))

(assert (= (and bm!322296 c!791149) b!4621899))

(assert (= (and bm!322296 (not c!791149)) b!4621902))

(assert (= (and d!1455660 res!1937594) b!4621901))

(assert (= (and d!1455660 (not res!1937592)) b!4621904))

(assert (= (and b!4621904 res!1937593) b!4621905))

(declare-fun m!5459575 () Bool)

(assert (=> b!4621906 m!5459575))

(declare-fun m!5459577 () Bool)

(assert (=> b!4621906 m!5459577))

(assert (=> b!4621906 m!5459577))

(declare-fun m!5459579 () Bool)

(assert (=> b!4621906 m!5459579))

(declare-fun m!5459581 () Bool)

(assert (=> b!4621906 m!5459581))

(assert (=> b!4621904 m!5459577))

(assert (=> b!4621904 m!5459577))

(assert (=> b!4621904 m!5459579))

(declare-fun m!5459583 () Bool)

(assert (=> b!4621903 m!5459583))

(declare-fun m!5459585 () Bool)

(assert (=> b!4621903 m!5459585))

(declare-fun m!5459587 () Bool)

(assert (=> b!4621902 m!5459587))

(assert (=> b!4621901 m!5459587))

(assert (=> b!4621901 m!5459587))

(declare-fun m!5459589 () Bool)

(assert (=> b!4621901 m!5459589))

(declare-fun m!5459591 () Bool)

(assert (=> b!4621899 m!5459591))

(declare-fun m!5459593 () Bool)

(assert (=> bm!322296 m!5459593))

(assert (=> b!4621905 m!5459587))

(assert (=> b!4621905 m!5459587))

(assert (=> b!4621905 m!5459589))

(assert (=> d!1455660 m!5459583))

(assert (=> b!4621516 d!1455660))

(declare-fun bs!1020742 () Bool)

(declare-fun d!1455662 () Bool)

(assert (= bs!1020742 (and d!1455662 d!1455612)))

(declare-fun lambda!191043 () Int)

(assert (=> bs!1020742 (= lambda!191043 lambda!191032)))

(declare-fun bs!1020743 () Bool)

(assert (= bs!1020743 (and d!1455662 d!1455594)))

(assert (=> bs!1020743 (= lambda!191043 lambda!191018)))

(declare-fun bs!1020744 () Bool)

(assert (= bs!1020744 (and d!1455662 d!1455576)))

(assert (=> bs!1020744 (= lambda!191043 lambda!191013)))

(declare-fun bs!1020745 () Bool)

(assert (= bs!1020745 (and d!1455662 b!4621508)))

(assert (=> bs!1020745 (= lambda!191043 lambda!190902)))

(declare-fun bs!1020746 () Bool)

(assert (= bs!1020746 (and d!1455662 d!1455644)))

(assert (=> bs!1020746 (= lambda!191043 lambda!191042)))

(declare-fun bs!1020747 () Bool)

(assert (= bs!1020747 (and d!1455662 d!1455542)))

(assert (=> bs!1020747 (= lambda!191043 lambda!190997)))

(declare-fun bs!1020748 () Bool)

(assert (= bs!1020748 (and d!1455662 d!1455632)))

(assert (=> bs!1020748 (= lambda!191043 lambda!191035)))

(declare-fun lt!1778436 () ListMap!4245)

(assert (=> d!1455662 (invariantList!1190 (toList!4941 lt!1778436))))

(declare-fun e!2883028 () ListMap!4245)

(assert (=> d!1455662 (= lt!1778436 e!2883028)))

(declare-fun c!791152 () Bool)

(assert (=> d!1455662 (= c!791152 ((_ is Cons!51485) lt!1777886))))

(assert (=> d!1455662 (forall!10794 lt!1777886 lambda!191043)))

(assert (=> d!1455662 (= (extractMap!1544 lt!1777886) lt!1778436)))

(declare-fun b!4621907 () Bool)

(assert (=> b!4621907 (= e!2883028 (addToMapMapFromBucket!949 (_2!29494 (h!57521 lt!1777886)) (extractMap!1544 (t!358627 lt!1777886))))))

(declare-fun b!4621908 () Bool)

(assert (=> b!4621908 (= e!2883028 (ListMap!4246 Nil!51484))))

(assert (= (and d!1455662 c!791152) b!4621907))

(assert (= (and d!1455662 (not c!791152)) b!4621908))

(declare-fun m!5459595 () Bool)

(assert (=> d!1455662 m!5459595))

(declare-fun m!5459597 () Bool)

(assert (=> d!1455662 m!5459597))

(declare-fun m!5459599 () Bool)

(assert (=> b!4621907 m!5459599))

(assert (=> b!4621907 m!5459599))

(declare-fun m!5459601 () Bool)

(assert (=> b!4621907 m!5459601))

(assert (=> b!4621516 d!1455662))

(declare-fun d!1455664 () Bool)

(declare-fun res!1937595 () Bool)

(declare-fun e!2883029 () Bool)

(assert (=> d!1455664 (=> res!1937595 e!2883029)))

(assert (=> d!1455664 (= res!1937595 (not ((_ is Cons!51484) newBucket!224)))))

(assert (=> d!1455664 (= (noDuplicateKeys!1488 newBucket!224) e!2883029)))

(declare-fun b!4621909 () Bool)

(declare-fun e!2883030 () Bool)

(assert (=> b!4621909 (= e!2883029 e!2883030)))

(declare-fun res!1937596 () Bool)

(assert (=> b!4621909 (=> (not res!1937596) (not e!2883030))))

(assert (=> b!4621909 (= res!1937596 (not (containsKey!2400 (t!358626 newBucket!224) (_1!29493 (h!57520 newBucket!224)))))))

(declare-fun b!4621910 () Bool)

(assert (=> b!4621910 (= e!2883030 (noDuplicateKeys!1488 (t!358626 newBucket!224)))))

(assert (= (and d!1455664 (not res!1937595)) b!4621909))

(assert (= (and b!4621909 res!1937596) b!4621910))

(declare-fun m!5459603 () Bool)

(assert (=> b!4621909 m!5459603))

(declare-fun m!5459605 () Bool)

(assert (=> b!4621910 m!5459605))

(assert (=> b!4621515 d!1455664))

(declare-fun b!4621912 () Bool)

(declare-fun e!2883031 () List!51608)

(declare-fun e!2883032 () List!51608)

(assert (=> b!4621912 (= e!2883031 e!2883032)))

(declare-fun c!791154 () Bool)

(assert (=> b!4621912 (= c!791154 ((_ is Cons!51484) (t!358626 oldBucket!40)))))

(declare-fun b!4621913 () Bool)

(assert (=> b!4621913 (= e!2883032 (Cons!51484 (h!57520 (t!358626 oldBucket!40)) (removePairForKey!1111 (t!358626 (t!358626 oldBucket!40)) key!4968)))))

(declare-fun d!1455666 () Bool)

(declare-fun lt!1778437 () List!51608)

(assert (=> d!1455666 (not (containsKey!2400 lt!1778437 key!4968))))

(assert (=> d!1455666 (= lt!1778437 e!2883031)))

(declare-fun c!791153 () Bool)

(assert (=> d!1455666 (= c!791153 (and ((_ is Cons!51484) (t!358626 oldBucket!40)) (= (_1!29493 (h!57520 (t!358626 oldBucket!40))) key!4968)))))

(assert (=> d!1455666 (noDuplicateKeys!1488 (t!358626 oldBucket!40))))

(assert (=> d!1455666 (= (removePairForKey!1111 (t!358626 oldBucket!40) key!4968) lt!1778437)))

(declare-fun b!4621914 () Bool)

(assert (=> b!4621914 (= e!2883032 Nil!51484)))

(declare-fun b!4621911 () Bool)

(assert (=> b!4621911 (= e!2883031 (t!358626 (t!358626 oldBucket!40)))))

(assert (= (and d!1455666 c!791153) b!4621911))

(assert (= (and d!1455666 (not c!791153)) b!4621912))

(assert (= (and b!4621912 c!791154) b!4621913))

(assert (= (and b!4621912 (not c!791154)) b!4621914))

(declare-fun m!5459607 () Bool)

(assert (=> b!4621913 m!5459607))

(declare-fun m!5459609 () Bool)

(assert (=> d!1455666 m!5459609))

(assert (=> d!1455666 m!5459573))

(assert (=> b!4621504 d!1455666))

(declare-fun bs!1020749 () Bool)

(declare-fun d!1455668 () Bool)

(assert (= bs!1020749 (and d!1455668 b!4621746)))

(declare-fun lambda!191044 () Int)

(assert (=> bs!1020749 (not (= lambda!191044 lambda!191015))))

(declare-fun bs!1020750 () Bool)

(assert (= bs!1020750 (and d!1455668 d!1455572)))

(assert (=> bs!1020750 (not (= lambda!191044 lambda!191012))))

(declare-fun bs!1020751 () Bool)

(assert (= bs!1020751 (and d!1455668 b!4621749)))

(assert (=> bs!1020751 (not (= lambda!191044 lambda!191014))))

(declare-fun bs!1020752 () Bool)

(assert (= bs!1020752 (and d!1455668 b!4621730)))

(assert (=> bs!1020752 (not (= lambda!191044 lambda!191008))))

(declare-fun bs!1020753 () Bool)

(assert (= bs!1020753 (and d!1455668 b!4621684)))

(assert (=> bs!1020753 (not (= lambda!191044 lambda!190999))))

(assert (=> bs!1020749 (not (= lambda!191044 lambda!191016))))

(declare-fun bs!1020754 () Bool)

(assert (= bs!1020754 (and d!1455668 b!4621628)))

(assert (=> bs!1020754 (not (= lambda!191044 lambda!190990))))

(declare-fun bs!1020755 () Bool)

(assert (= bs!1020755 (and d!1455668 b!4621727)))

(assert (=> bs!1020755 (not (= lambda!191044 lambda!191010))))

(declare-fun bs!1020756 () Bool)

(assert (= bs!1020756 (and d!1455668 b!4621773)))

(assert (=> bs!1020756 (not (= lambda!191044 lambda!191019))))

(declare-fun bs!1020757 () Bool)

(assert (= bs!1020757 (and d!1455668 d!1455560)))

(assert (=> bs!1020757 (not (= lambda!191044 lambda!191001))))

(declare-fun bs!1020758 () Bool)

(assert (= bs!1020758 (and d!1455668 b!4621770)))

(assert (=> bs!1020758 (not (= lambda!191044 lambda!191020))))

(declare-fun bs!1020759 () Bool)

(assert (= bs!1020759 (and d!1455668 b!4621631)))

(assert (=> bs!1020759 (not (= lambda!191044 lambda!190988))))

(assert (=> bs!1020753 (not (= lambda!191044 lambda!191000))))

(assert (=> bs!1020754 (not (= lambda!191044 lambda!190989))))

(declare-fun bs!1020760 () Bool)

(assert (= bs!1020760 (and d!1455668 d!1455598)))

(assert (=> bs!1020760 (not (= lambda!191044 lambda!191023))))

(assert (=> bs!1020758 (not (= lambda!191044 lambda!191021))))

(declare-fun bs!1020761 () Bool)

(assert (= bs!1020761 (and d!1455668 d!1455504)))

(assert (=> bs!1020761 (not (= lambda!191044 lambda!190991))))

(declare-fun bs!1020762 () Bool)

(assert (= bs!1020762 (and d!1455668 d!1455502)))

(assert (=> bs!1020762 (= lambda!191044 lambda!190908)))

(assert (=> bs!1020755 (not (= lambda!191044 lambda!191009))))

(declare-fun bs!1020763 () Bool)

(assert (= bs!1020763 (and d!1455668 b!4621687)))

(assert (=> bs!1020763 (not (= lambda!191044 lambda!190998))))

(declare-fun bs!1020764 () Bool)

(assert (= bs!1020764 (and d!1455668 d!1455584)))

(assert (=> bs!1020764 (not (= lambda!191044 lambda!191017))))

(assert (=> d!1455668 true))

(assert (=> d!1455668 true))

(assert (=> d!1455668 (= (allKeysSameHash!1342 newBucket!224 hash!414 hashF!1389) (forall!10796 newBucket!224 lambda!191044))))

(declare-fun bs!1020765 () Bool)

(assert (= bs!1020765 d!1455668))

(declare-fun m!5459611 () Bool)

(assert (=> bs!1020765 m!5459611))

(assert (=> b!4621503 d!1455668))

(declare-fun e!2883035 () Bool)

(declare-fun b!4621919 () Bool)

(declare-fun tp!1341950 () Bool)

(assert (=> b!4621919 (= e!2883035 (and tp_is_empty!29245 tp_is_empty!29247 tp!1341950))))

(assert (=> b!4621506 (= tp!1341943 e!2883035)))

(assert (= (and b!4621506 ((_ is Cons!51484) (t!358626 newBucket!224))) b!4621919))

(declare-fun e!2883036 () Bool)

(declare-fun tp!1341951 () Bool)

(declare-fun b!4621920 () Bool)

(assert (=> b!4621920 (= e!2883036 (and tp_is_empty!29245 tp_is_empty!29247 tp!1341951))))

(assert (=> b!4621514 (= tp!1341942 e!2883036)))

(assert (= (and b!4621514 ((_ is Cons!51484) (t!358626 oldBucket!40))) b!4621920))

(declare-fun b_lambda!170657 () Bool)

(assert (= b_lambda!170653 (or b!4621508 b_lambda!170657)))

(declare-fun bs!1020766 () Bool)

(declare-fun d!1455670 () Bool)

(assert (= bs!1020766 (and d!1455670 b!4621508)))

(assert (=> bs!1020766 (= (dynLambda!21484 lambda!190902 lt!1777888) (noDuplicateKeys!1488 (_2!29494 lt!1777888)))))

(declare-fun m!5459613 () Bool)

(assert (=> bs!1020766 m!5459613))

(assert (=> d!1455650 d!1455670))

(declare-fun b_lambda!170659 () Bool)

(assert (= b_lambda!170655 (or b!4621508 b_lambda!170659)))

(declare-fun bs!1020767 () Bool)

(declare-fun d!1455672 () Bool)

(assert (= bs!1020767 (and d!1455672 b!4621508)))

(assert (=> bs!1020767 (= (dynLambda!21484 lambda!190902 (h!57521 (Cons!51485 (tuple2!52401 hash!414 newBucket!224) Nil!51485))) (noDuplicateKeys!1488 (_2!29494 (h!57521 (Cons!51485 (tuple2!52401 hash!414 newBucket!224) Nil!51485)))))))

(declare-fun m!5459615 () Bool)

(assert (=> bs!1020767 m!5459615))

(assert (=> b!4621890 d!1455672))

(check-sat (not d!1455660) (not b!4621899) (not d!1455610) (not b!4621904) (not b!4621715) (not b!4621628) (not d!1455662) (not bm!322289) (not b!4621821) (not d!1455500) (not b!4621861) (not b!4621902) (not b!4621831) (not b_lambda!170659) (not d!1455612) (not b!4621855) (not b!4621873) (not d!1455548) (not bm!322276) (not b!4621770) (not d!1455552) (not b!4621727) (not b!4621901) (not b!4621884) (not b!4621881) (not bm!322282) (not d!1455576) (not d!1455634) (not d!1455648) (not b!4621728) (not d!1455640) (not b!4621903) (not d!1455638) (not b!4621717) (not b!4621848) (not bm!322278) (not bs!1020766) (not d!1455666) (not b!4621729) (not b!4621919) (not b!4621676) (not b!4621829) (not d!1455498) (not bm!322287) (not bm!322284) (not bm!322286) (not d!1455492) (not b!4621871) (not d!1455594) (not b!4621822) (not b!4621849) (not b!4621656) tp_is_empty!29247 (not bm!322285) (not bm!322277) (not bm!322290) (not bm!322291) (not d!1455504) (not b!4621854) (not b!4621718) (not b!4621875) (not bm!322274) (not b!4621742) (not b!4621531) (not b!4621684) (not b!4621744) (not d!1455502) (not b!4621907) (not d!1455636) (not d!1455598) (not d!1455628) (not b!4621768) (not b!4621870) tp_is_empty!29245 (not b!4621748) (not b!4621535) (not d!1455632) (not b!4621913) (not d!1455668) (not b!4621897) (not d!1455580) (not b!4621714) (not d!1455568) (not bm!322275) (not d!1455542) (not d!1455566) (not b!4621711) (not b!4621686) (not d!1455572) (not b!4621630) (not b!4621896) (not d!1455644) (not b!4621629) (not b!4621685) (not b!4621772) (not b!4621906) (not bs!1020767) (not d!1455652) (not b!4621771) (not b!4621891) (not b!4621746) (not b!4621736) (not d!1455654) (not bm!322296) (not bm!322288) (not b!4621713) (not b!4621910) (not b!4621905) (not b!4621716) (not d!1455650) (not b!4621920) (not b!4621872) (not d!1455564) (not b_lambda!170657) (not d!1455560) (not b!4621909) (not d!1455584) (not b!4621747) (not b!4621851) (not d!1455630) (not bm!322279) (not bm!322283) (not b!4621677))
(check-sat)
