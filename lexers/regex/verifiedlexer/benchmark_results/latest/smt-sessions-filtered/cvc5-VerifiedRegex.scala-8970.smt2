; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!482510 () Bool)

(assert start!482510)

(declare-fun b!4732660 () Bool)

(declare-fun e!2951954 () Bool)

(declare-fun e!2951956 () Bool)

(assert (=> b!4732660 (= e!2951954 (not e!2951956))))

(declare-fun res!2003867 () Bool)

(assert (=> b!4732660 (=> res!2003867 e!2951956)))

(declare-datatypes ((K!14253 0))(
  ( (K!14254 (val!19673 Int)) )
))
(declare-datatypes ((V!14499 0))(
  ( (V!14500 (val!19674 Int)) )
))
(declare-datatypes ((tuple2!54558 0))(
  ( (tuple2!54559 (_1!30573 K!14253) (_2!30573 V!14499)) )
))
(declare-datatypes ((List!53029 0))(
  ( (Nil!52905) (Cons!52905 (h!59274 tuple2!54558) (t!360307 List!53029)) )
))
(declare-fun oldBucket!34 () List!53029)

(declare-fun key!4653 () K!14253)

(assert (=> b!4732660 (= res!2003867 (or (and (is-Cons!52905 oldBucket!34) (= (_1!30573 (h!59274 oldBucket!34)) key!4653)) (not (is-Cons!52905 oldBucket!34)) (= (_1!30573 (h!59274 oldBucket!34)) key!4653)))))

(declare-datatypes ((ListMap!5335 0))(
  ( (ListMap!5336 (toList!5971 List!53029)) )
))
(declare-fun lt!1895720 () ListMap!5335)

(declare-datatypes ((tuple2!54560 0))(
  ( (tuple2!54561 (_1!30574 (_ BitVec 64)) (_2!30574 List!53029)) )
))
(declare-datatypes ((List!53030 0))(
  ( (Nil!52906) (Cons!52906 (h!59275 tuple2!54560) (t!360308 List!53030)) )
))
(declare-datatypes ((ListLongMap!4501 0))(
  ( (ListLongMap!4502 (toList!5972 List!53030)) )
))
(declare-fun lm!2023 () ListLongMap!4501)

(declare-fun lt!1895722 () ListMap!5335)

(declare-fun addToMapMapFromBucket!1471 (List!53029 ListMap!5335) ListMap!5335)

(assert (=> b!4732660 (= lt!1895720 (addToMapMapFromBucket!1471 (_2!30574 (h!59275 (toList!5972 lm!2023))) lt!1895722))))

(declare-fun extractMap!2067 (List!53030) ListMap!5335)

(assert (=> b!4732660 (= lt!1895722 (extractMap!2067 (t!360308 (toList!5972 lm!2023))))))

(declare-fun tail!9068 (ListLongMap!4501) ListLongMap!4501)

(assert (=> b!4732660 (= (t!360308 (toList!5972 lm!2023)) (toList!5972 (tail!9068 lm!2023)))))

(declare-fun res!2003863 () Bool)

(declare-fun e!2951955 () Bool)

(assert (=> start!482510 (=> (not res!2003863) (not e!2951955))))

(declare-fun lambda!217567 () Int)

(declare-fun forall!11646 (List!53030 Int) Bool)

(assert (=> start!482510 (= res!2003863 (forall!11646 (toList!5972 lm!2023) lambda!217567))))

(assert (=> start!482510 e!2951955))

(declare-fun e!2951950 () Bool)

(declare-fun inv!68128 (ListLongMap!4501) Bool)

(assert (=> start!482510 (and (inv!68128 lm!2023) e!2951950)))

(declare-fun tp_is_empty!31457 () Bool)

(assert (=> start!482510 tp_is_empty!31457))

(declare-fun e!2951948 () Bool)

(assert (=> start!482510 e!2951948))

(assert (=> start!482510 true))

(declare-fun e!2951951 () Bool)

(assert (=> start!482510 e!2951951))

(declare-fun b!4732661 () Bool)

(declare-fun res!2003871 () Bool)

(assert (=> b!4732661 (=> (not res!2003871) (not e!2951954))))

(declare-datatypes ((Hashable!6410 0))(
  ( (HashableExt!6409 (__x!32113 Int)) )
))
(declare-fun hashF!1323 () Hashable!6410)

(declare-fun allKeysSameHashInMap!1955 (ListLongMap!4501 Hashable!6410) Bool)

(assert (=> b!4732661 (= res!2003871 (allKeysSameHashInMap!1955 lm!2023 hashF!1323))))

(declare-fun b!4732662 () Bool)

(declare-fun e!2951949 () Bool)

(declare-fun e!2951952 () Bool)

(assert (=> b!4732662 (= e!2951949 e!2951952)))

(declare-fun res!2003870 () Bool)

(assert (=> b!4732662 (=> res!2003870 e!2951952)))

(declare-fun lt!1895716 () List!53029)

(declare-fun noDuplicateKeys!2041 (List!53029) Bool)

(assert (=> b!4732662 (= res!2003870 (not (noDuplicateKeys!2041 lt!1895716)))))

(declare-fun lt!1895724 () tuple2!54558)

(declare-fun lt!1895715 () List!53029)

(declare-fun eq!1138 (ListMap!5335 ListMap!5335) Bool)

(declare-fun +!2289 (ListMap!5335 tuple2!54558) ListMap!5335)

(assert (=> b!4732662 (eq!1138 (addToMapMapFromBucket!1471 (Cons!52905 lt!1895724 lt!1895715) lt!1895722) (+!2289 (addToMapMapFromBucket!1471 lt!1895715 lt!1895722) lt!1895724))))

(declare-datatypes ((Unit!131653 0))(
  ( (Unit!131654) )
))
(declare-fun lt!1895727 () Unit!131653)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!387 (tuple2!54558 List!53029 ListMap!5335) Unit!131653)

(assert (=> b!4732662 (= lt!1895727 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!387 lt!1895724 lt!1895715 lt!1895722))))

(declare-fun head!10285 (List!53029) tuple2!54558)

(assert (=> b!4732662 (= lt!1895724 (head!10285 oldBucket!34))))

(declare-fun lt!1895714 () List!53030)

(declare-fun contains!16283 (ListMap!5335 K!14253) Bool)

(assert (=> b!4732662 (contains!16283 (extractMap!2067 lt!1895714) key!4653)))

(declare-fun lt!1895717 () Unit!131653)

(declare-fun lemmaListContainsThenExtractedMapContains!549 (ListLongMap!4501 K!14253 Hashable!6410) Unit!131653)

(assert (=> b!4732662 (= lt!1895717 (lemmaListContainsThenExtractedMapContains!549 (ListLongMap!4502 lt!1895714) key!4653 hashF!1323))))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4732662 (= lt!1895714 (Cons!52906 (tuple2!54561 hash!405 (t!360307 oldBucket!34)) (t!360308 (toList!5972 lm!2023))))))

(declare-fun b!4732663 () Bool)

(declare-fun res!2003873 () Bool)

(assert (=> b!4732663 (=> (not res!2003873) (not e!2951955))))

(declare-fun newBucket!218 () List!53029)

(assert (=> b!4732663 (= res!2003873 (noDuplicateKeys!2041 newBucket!218))))

(declare-fun b!4732664 () Bool)

(declare-fun res!2003868 () Bool)

(assert (=> b!4732664 (=> (not res!2003868) (not e!2951954))))

(declare-fun head!10286 (List!53030) tuple2!54560)

(assert (=> b!4732664 (= res!2003868 (= (head!10286 (toList!5972 lm!2023)) (tuple2!54561 hash!405 oldBucket!34)))))

(declare-fun b!4732665 () Bool)

(declare-fun res!2003869 () Bool)

(assert (=> b!4732665 (=> (not res!2003869) (not e!2951954))))

(assert (=> b!4732665 (= res!2003869 (is-Cons!52906 (toList!5972 lm!2023)))))

(declare-fun b!4732666 () Bool)

(declare-fun e!2951953 () Bool)

(assert (=> b!4732666 (= e!2951953 e!2951954)))

(declare-fun res!2003865 () Bool)

(assert (=> b!4732666 (=> (not res!2003865) (not e!2951954))))

(declare-fun lt!1895728 () (_ BitVec 64))

(assert (=> b!4732666 (= res!2003865 (= lt!1895728 hash!405))))

(declare-fun hash!4431 (Hashable!6410 K!14253) (_ BitVec 64))

(assert (=> b!4732666 (= lt!1895728 (hash!4431 hashF!1323 key!4653))))

(declare-fun b!4732667 () Bool)

(assert (=> b!4732667 (= e!2951955 e!2951953)))

(declare-fun res!2003864 () Bool)

(assert (=> b!4732667 (=> (not res!2003864) (not e!2951953))))

(assert (=> b!4732667 (= res!2003864 (contains!16283 lt!1895720 key!4653))))

(assert (=> b!4732667 (= lt!1895720 (extractMap!2067 (toList!5972 lm!2023)))))

(declare-fun b!4732668 () Bool)

(declare-fun e!2951947 () Bool)

(assert (=> b!4732668 (= e!2951947 e!2951949)))

(declare-fun res!2003861 () Bool)

(assert (=> b!4732668 (=> res!2003861 e!2951949)))

(declare-fun removePairForKey!1636 (List!53029 K!14253) List!53029)

(assert (=> b!4732668 (= res!2003861 (not (= (removePairForKey!1636 lt!1895715 key!4653) lt!1895716)))))

(declare-fun tail!9069 (List!53029) List!53029)

(assert (=> b!4732668 (= lt!1895716 (tail!9069 newBucket!218))))

(assert (=> b!4732668 (= lt!1895715 (tail!9069 oldBucket!34))))

(declare-fun b!4732669 () Bool)

(declare-fun res!2003875 () Bool)

(assert (=> b!4732669 (=> res!2003875 e!2951949)))

(assert (=> b!4732669 (= res!2003875 (not (= (removePairForKey!1636 (t!360307 oldBucket!34) key!4653) lt!1895716)))))

(declare-fun b!4732670 () Bool)

(declare-fun res!2003872 () Bool)

(assert (=> b!4732670 (=> (not res!2003872) (not e!2951954))))

(declare-fun allKeysSameHash!1867 (List!53029 (_ BitVec 64) Hashable!6410) Bool)

(assert (=> b!4732670 (= res!2003872 (allKeysSameHash!1867 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4732671 () Bool)

(declare-fun tp_is_empty!31459 () Bool)

(declare-fun tp!1348932 () Bool)

(assert (=> b!4732671 (= e!2951948 (and tp_is_empty!31457 tp_is_empty!31459 tp!1348932))))

(declare-fun b!4732672 () Bool)

(declare-fun tp!1348931 () Bool)

(assert (=> b!4732672 (= e!2951950 tp!1348931)))

(declare-fun b!4732673 () Bool)

(declare-fun tp!1348930 () Bool)

(assert (=> b!4732673 (= e!2951951 (and tp_is_empty!31457 tp_is_empty!31459 tp!1348930))))

(declare-fun b!4732674 () Bool)

(declare-fun res!2003862 () Bool)

(assert (=> b!4732674 (=> (not res!2003862) (not e!2951955))))

(assert (=> b!4732674 (= res!2003862 (= (removePairForKey!1636 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4732675 () Bool)

(assert (=> b!4732675 (= e!2951956 e!2951947)))

(declare-fun res!2003866 () Bool)

(assert (=> b!4732675 (=> res!2003866 e!2951947)))

(declare-fun containsKey!3430 (List!53029 K!14253) Bool)

(assert (=> b!4732675 (= res!2003866 (not (containsKey!3430 (t!360307 oldBucket!34) key!4653)))))

(assert (=> b!4732675 (containsKey!3430 oldBucket!34 key!4653)))

(declare-fun lt!1895719 () Unit!131653)

(declare-fun lemmaGetPairDefinedThenContainsKey!325 (List!53029 K!14253 Hashable!6410) Unit!131653)

(assert (=> b!4732675 (= lt!1895719 (lemmaGetPairDefinedThenContainsKey!325 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1895721 () List!53029)

(declare-datatypes ((Option!12416 0))(
  ( (None!12415) (Some!12415 (v!47044 tuple2!54558)) )
))
(declare-fun isDefined!9670 (Option!12416) Bool)

(declare-fun getPair!581 (List!53029 K!14253) Option!12416)

(assert (=> b!4732675 (isDefined!9670 (getPair!581 lt!1895721 key!4653))))

(declare-fun lt!1895726 () Unit!131653)

(declare-fun lt!1895718 () tuple2!54560)

(declare-fun forallContained!3686 (List!53030 Int tuple2!54560) Unit!131653)

(assert (=> b!4732675 (= lt!1895726 (forallContained!3686 (toList!5972 lm!2023) lambda!217567 lt!1895718))))

(declare-fun contains!16284 (List!53030 tuple2!54560) Bool)

(assert (=> b!4732675 (contains!16284 (toList!5972 lm!2023) lt!1895718)))

(assert (=> b!4732675 (= lt!1895718 (tuple2!54561 lt!1895728 lt!1895721))))

(declare-fun lt!1895729 () Unit!131653)

(declare-fun lemmaGetValueImpliesTupleContained!386 (ListLongMap!4501 (_ BitVec 64) List!53029) Unit!131653)

(assert (=> b!4732675 (= lt!1895729 (lemmaGetValueImpliesTupleContained!386 lm!2023 lt!1895728 lt!1895721))))

(declare-fun apply!12466 (ListLongMap!4501 (_ BitVec 64)) List!53029)

(assert (=> b!4732675 (= lt!1895721 (apply!12466 lm!2023 lt!1895728))))

(declare-fun contains!16285 (ListLongMap!4501 (_ BitVec 64)) Bool)

(assert (=> b!4732675 (contains!16285 lm!2023 lt!1895728)))

(declare-fun lt!1895723 () Unit!131653)

(declare-fun lemmaInGenMapThenLongMapContainsHash!787 (ListLongMap!4501 K!14253 Hashable!6410) Unit!131653)

(assert (=> b!4732675 (= lt!1895723 (lemmaInGenMapThenLongMapContainsHash!787 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1895725 () Unit!131653)

(declare-fun lemmaInGenMapThenGetPairDefined!377 (ListLongMap!4501 K!14253 Hashable!6410) Unit!131653)

(assert (=> b!4732675 (= lt!1895725 (lemmaInGenMapThenGetPairDefined!377 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4732676 () Bool)

(declare-fun res!2003860 () Bool)

(assert (=> b!4732676 (=> (not res!2003860) (not e!2951955))))

(assert (=> b!4732676 (= res!2003860 (allKeysSameHash!1867 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4732677 () Bool)

(declare-fun res!2003874 () Bool)

(assert (=> b!4732677 (=> (not res!2003874) (not e!2951955))))

(assert (=> b!4732677 (= res!2003874 (noDuplicateKeys!2041 oldBucket!34))))

(declare-fun b!4732678 () Bool)

(assert (=> b!4732678 (= e!2951952 (noDuplicateKeys!2041 (Cons!52905 (head!10285 newBucket!218) lt!1895716)))))

(assert (= (and start!482510 res!2003863) b!4732677))

(assert (= (and b!4732677 res!2003874) b!4732663))

(assert (= (and b!4732663 res!2003873) b!4732674))

(assert (= (and b!4732674 res!2003862) b!4732676))

(assert (= (and b!4732676 res!2003860) b!4732667))

(assert (= (and b!4732667 res!2003864) b!4732666))

(assert (= (and b!4732666 res!2003865) b!4732670))

(assert (= (and b!4732670 res!2003872) b!4732661))

(assert (= (and b!4732661 res!2003871) b!4732664))

(assert (= (and b!4732664 res!2003868) b!4732665))

(assert (= (and b!4732665 res!2003869) b!4732660))

(assert (= (and b!4732660 (not res!2003867)) b!4732675))

(assert (= (and b!4732675 (not res!2003866)) b!4732668))

(assert (= (and b!4732668 (not res!2003861)) b!4732669))

(assert (= (and b!4732669 (not res!2003875)) b!4732662))

(assert (= (and b!4732662 (not res!2003870)) b!4732678))

(assert (= start!482510 b!4732672))

(assert (= (and start!482510 (is-Cons!52905 oldBucket!34)) b!4732671))

(assert (= (and start!482510 (is-Cons!52905 newBucket!218)) b!4732673))

(declare-fun m!5675645 () Bool)

(assert (=> b!4732669 m!5675645))

(declare-fun m!5675647 () Bool)

(assert (=> b!4732674 m!5675647))

(declare-fun m!5675649 () Bool)

(assert (=> b!4732675 m!5675649))

(declare-fun m!5675651 () Bool)

(assert (=> b!4732675 m!5675651))

(declare-fun m!5675653 () Bool)

(assert (=> b!4732675 m!5675653))

(declare-fun m!5675655 () Bool)

(assert (=> b!4732675 m!5675655))

(declare-fun m!5675657 () Bool)

(assert (=> b!4732675 m!5675657))

(declare-fun m!5675659 () Bool)

(assert (=> b!4732675 m!5675659))

(declare-fun m!5675661 () Bool)

(assert (=> b!4732675 m!5675661))

(declare-fun m!5675663 () Bool)

(assert (=> b!4732675 m!5675663))

(declare-fun m!5675665 () Bool)

(assert (=> b!4732675 m!5675665))

(declare-fun m!5675667 () Bool)

(assert (=> b!4732675 m!5675667))

(assert (=> b!4732675 m!5675651))

(declare-fun m!5675669 () Bool)

(assert (=> b!4732675 m!5675669))

(declare-fun m!5675671 () Bool)

(assert (=> b!4732675 m!5675671))

(declare-fun m!5675673 () Bool)

(assert (=> b!4732668 m!5675673))

(declare-fun m!5675675 () Bool)

(assert (=> b!4732668 m!5675675))

(declare-fun m!5675677 () Bool)

(assert (=> b!4732668 m!5675677))

(declare-fun m!5675679 () Bool)

(assert (=> start!482510 m!5675679))

(declare-fun m!5675681 () Bool)

(assert (=> start!482510 m!5675681))

(declare-fun m!5675683 () Bool)

(assert (=> b!4732663 m!5675683))

(declare-fun m!5675685 () Bool)

(assert (=> b!4732678 m!5675685))

(declare-fun m!5675687 () Bool)

(assert (=> b!4732678 m!5675687))

(declare-fun m!5675689 () Bool)

(assert (=> b!4732670 m!5675689))

(declare-fun m!5675691 () Bool)

(assert (=> b!4732661 m!5675691))

(declare-fun m!5675693 () Bool)

(assert (=> b!4732666 m!5675693))

(declare-fun m!5675695 () Bool)

(assert (=> b!4732664 m!5675695))

(declare-fun m!5675697 () Bool)

(assert (=> b!4732662 m!5675697))

(declare-fun m!5675699 () Bool)

(assert (=> b!4732662 m!5675699))

(declare-fun m!5675701 () Bool)

(assert (=> b!4732662 m!5675701))

(declare-fun m!5675703 () Bool)

(assert (=> b!4732662 m!5675703))

(declare-fun m!5675705 () Bool)

(assert (=> b!4732662 m!5675705))

(assert (=> b!4732662 m!5675701))

(declare-fun m!5675707 () Bool)

(assert (=> b!4732662 m!5675707))

(declare-fun m!5675709 () Bool)

(assert (=> b!4732662 m!5675709))

(declare-fun m!5675711 () Bool)

(assert (=> b!4732662 m!5675711))

(assert (=> b!4732662 m!5675703))

(declare-fun m!5675713 () Bool)

(assert (=> b!4732662 m!5675713))

(assert (=> b!4732662 m!5675711))

(assert (=> b!4732662 m!5675707))

(declare-fun m!5675715 () Bool)

(assert (=> b!4732662 m!5675715))

(declare-fun m!5675717 () Bool)

(assert (=> b!4732676 m!5675717))

(declare-fun m!5675719 () Bool)

(assert (=> b!4732677 m!5675719))

(declare-fun m!5675721 () Bool)

(assert (=> b!4732667 m!5675721))

(declare-fun m!5675723 () Bool)

(assert (=> b!4732667 m!5675723))

(declare-fun m!5675725 () Bool)

(assert (=> b!4732660 m!5675725))

(declare-fun m!5675727 () Bool)

(assert (=> b!4732660 m!5675727))

(declare-fun m!5675729 () Bool)

(assert (=> b!4732660 m!5675729))

(push 1)

(assert (not b!4732671))

(assert (not b!4732673))

(assert (not b!4732668))

(assert (not b!4732669))

(assert (not b!4732662))

(assert (not b!4732676))

(assert (not b!4732663))

(assert (not b!4732672))

(assert (not b!4732666))

(assert (not b!4732667))

(assert tp_is_empty!31457)

(assert (not b!4732670))

(assert (not b!4732675))

(assert (not b!4732661))

(assert (not b!4732660))

(assert (not start!482510))

(assert tp_is_empty!31459)

(assert (not b!4732674))

(assert (not b!4732664))

(assert (not b!4732678))

(assert (not b!4732677))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1509481 () Bool)

(declare-fun res!2003928 () Bool)

(declare-fun e!2951991 () Bool)

(assert (=> d!1509481 (=> res!2003928 e!2951991)))

(assert (=> d!1509481 (= res!2003928 (not (is-Cons!52905 oldBucket!34)))))

(assert (=> d!1509481 (= (noDuplicateKeys!2041 oldBucket!34) e!2951991)))

(declare-fun b!4732740 () Bool)

(declare-fun e!2951992 () Bool)

(assert (=> b!4732740 (= e!2951991 e!2951992)))

(declare-fun res!2003929 () Bool)

(assert (=> b!4732740 (=> (not res!2003929) (not e!2951992))))

(assert (=> b!4732740 (= res!2003929 (not (containsKey!3430 (t!360307 oldBucket!34) (_1!30573 (h!59274 oldBucket!34)))))))

(declare-fun b!4732741 () Bool)

(assert (=> b!4732741 (= e!2951992 (noDuplicateKeys!2041 (t!360307 oldBucket!34)))))

(assert (= (and d!1509481 (not res!2003928)) b!4732740))

(assert (= (and b!4732740 res!2003929) b!4732741))

(declare-fun m!5675819 () Bool)

(assert (=> b!4732740 m!5675819))

(declare-fun m!5675821 () Bool)

(assert (=> b!4732741 m!5675821))

(assert (=> b!4732677 d!1509481))

(declare-fun d!1509487 () Bool)

(declare-fun hash!4433 (Hashable!6410 K!14253) (_ BitVec 64))

(assert (=> d!1509487 (= (hash!4431 hashF!1323 key!4653) (hash!4433 hashF!1323 key!4653))))

(declare-fun bs!1121036 () Bool)

(assert (= bs!1121036 d!1509487))

(declare-fun m!5675823 () Bool)

(assert (=> bs!1121036 m!5675823))

(assert (=> b!4732666 d!1509487))

(declare-fun d!1509489 () Bool)

(assert (=> d!1509489 true))

(assert (=> d!1509489 true))

(declare-fun lambda!217575 () Int)

(declare-fun forall!11648 (List!53029 Int) Bool)

(assert (=> d!1509489 (= (allKeysSameHash!1867 oldBucket!34 hash!405 hashF!1323) (forall!11648 oldBucket!34 lambda!217575))))

(declare-fun bs!1121037 () Bool)

(assert (= bs!1121037 d!1509489))

(declare-fun m!5675825 () Bool)

(assert (=> bs!1121037 m!5675825))

(assert (=> b!4732676 d!1509489))

(declare-fun d!1509491 () Bool)

(declare-fun res!2003930 () Bool)

(declare-fun e!2951993 () Bool)

(assert (=> d!1509491 (=> res!2003930 e!2951993)))

(assert (=> d!1509491 (= res!2003930 (not (is-Cons!52905 (Cons!52905 (head!10285 newBucket!218) lt!1895716))))))

(assert (=> d!1509491 (= (noDuplicateKeys!2041 (Cons!52905 (head!10285 newBucket!218) lt!1895716)) e!2951993)))

(declare-fun b!4732746 () Bool)

(declare-fun e!2951994 () Bool)

(assert (=> b!4732746 (= e!2951993 e!2951994)))

(declare-fun res!2003931 () Bool)

(assert (=> b!4732746 (=> (not res!2003931) (not e!2951994))))

(assert (=> b!4732746 (= res!2003931 (not (containsKey!3430 (t!360307 (Cons!52905 (head!10285 newBucket!218) lt!1895716)) (_1!30573 (h!59274 (Cons!52905 (head!10285 newBucket!218) lt!1895716))))))))

(declare-fun b!4732747 () Bool)

(assert (=> b!4732747 (= e!2951994 (noDuplicateKeys!2041 (t!360307 (Cons!52905 (head!10285 newBucket!218) lt!1895716))))))

(assert (= (and d!1509491 (not res!2003930)) b!4732746))

(assert (= (and b!4732746 res!2003931) b!4732747))

(declare-fun m!5675827 () Bool)

(assert (=> b!4732746 m!5675827))

(declare-fun m!5675829 () Bool)

(assert (=> b!4732747 m!5675829))

(assert (=> b!4732678 d!1509491))

(declare-fun d!1509493 () Bool)

(assert (=> d!1509493 (= (head!10285 newBucket!218) (h!59274 newBucket!218))))

(assert (=> b!4732678 d!1509493))

(declare-fun b!4732766 () Bool)

(declare-fun e!2952009 () Bool)

(declare-datatypes ((List!53033 0))(
  ( (Nil!52909) (Cons!52909 (h!59280 K!14253) (t!360312 List!53033)) )
))
(declare-fun contains!16289 (List!53033 K!14253) Bool)

(declare-fun keys!19024 (ListMap!5335) List!53033)

(assert (=> b!4732766 (= e!2952009 (not (contains!16289 (keys!19024 lt!1895720) key!4653)))))

(declare-fun b!4732767 () Bool)

(declare-fun e!2952007 () List!53033)

(assert (=> b!4732767 (= e!2952007 (keys!19024 lt!1895720))))

(declare-fun b!4732768 () Bool)

(declare-fun getKeysList!971 (List!53029) List!53033)

(assert (=> b!4732768 (= e!2952007 (getKeysList!971 (toList!5971 lt!1895720)))))

(declare-fun b!4732769 () Bool)

(declare-fun e!2952008 () Unit!131653)

(declare-fun lt!1895797 () Unit!131653)

(assert (=> b!4732769 (= e!2952008 lt!1895797)))

(declare-fun lt!1895798 () Unit!131653)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1885 (List!53029 K!14253) Unit!131653)

(assert (=> b!4732769 (= lt!1895798 (lemmaContainsKeyImpliesGetValueByKeyDefined!1885 (toList!5971 lt!1895720) key!4653))))

(declare-datatypes ((Option!12418 0))(
  ( (None!12417) (Some!12417 (v!47050 V!14499)) )
))
(declare-fun isDefined!9672 (Option!12418) Bool)

(declare-fun getValueByKey!1994 (List!53029 K!14253) Option!12418)

(assert (=> b!4732769 (isDefined!9672 (getValueByKey!1994 (toList!5971 lt!1895720) key!4653))))

(declare-fun lt!1895795 () Unit!131653)

(assert (=> b!4732769 (= lt!1895795 lt!1895798)))

(declare-fun lemmaInListThenGetKeysListContains!966 (List!53029 K!14253) Unit!131653)

(assert (=> b!4732769 (= lt!1895797 (lemmaInListThenGetKeysListContains!966 (toList!5971 lt!1895720) key!4653))))

(declare-fun call!331004 () Bool)

(assert (=> b!4732769 call!331004))

(declare-fun b!4732770 () Bool)

(declare-fun e!2952010 () Unit!131653)

(assert (=> b!4732770 (= e!2952008 e!2952010)))

(declare-fun c!808244 () Bool)

(assert (=> b!4732770 (= c!808244 call!331004)))

(declare-fun b!4732771 () Bool)

(declare-fun e!2952011 () Bool)

(assert (=> b!4732771 (= e!2952011 (contains!16289 (keys!19024 lt!1895720) key!4653))))

(declare-fun b!4732772 () Bool)

(assert (=> b!4732772 false))

(declare-fun lt!1895801 () Unit!131653)

(declare-fun lt!1895800 () Unit!131653)

(assert (=> b!4732772 (= lt!1895801 lt!1895800)))

(declare-fun containsKey!3432 (List!53029 K!14253) Bool)

(assert (=> b!4732772 (containsKey!3432 (toList!5971 lt!1895720) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!970 (List!53029 K!14253) Unit!131653)

(assert (=> b!4732772 (= lt!1895800 (lemmaInGetKeysListThenContainsKey!970 (toList!5971 lt!1895720) key!4653))))

(declare-fun Unit!131657 () Unit!131653)

(assert (=> b!4732772 (= e!2952010 Unit!131657)))

(declare-fun d!1509495 () Bool)

(declare-fun e!2952012 () Bool)

(assert (=> d!1509495 e!2952012))

(declare-fun res!2003938 () Bool)

(assert (=> d!1509495 (=> res!2003938 e!2952012)))

(assert (=> d!1509495 (= res!2003938 e!2952009)))

(declare-fun res!2003939 () Bool)

(assert (=> d!1509495 (=> (not res!2003939) (not e!2952009))))

(declare-fun lt!1895796 () Bool)

(assert (=> d!1509495 (= res!2003939 (not lt!1895796))))

(declare-fun lt!1895794 () Bool)

(assert (=> d!1509495 (= lt!1895796 lt!1895794)))

(declare-fun lt!1895799 () Unit!131653)

(assert (=> d!1509495 (= lt!1895799 e!2952008)))

(declare-fun c!808246 () Bool)

(assert (=> d!1509495 (= c!808246 lt!1895794)))

(assert (=> d!1509495 (= lt!1895794 (containsKey!3432 (toList!5971 lt!1895720) key!4653))))

(assert (=> d!1509495 (= (contains!16283 lt!1895720 key!4653) lt!1895796)))

(declare-fun bm!330999 () Bool)

(assert (=> bm!330999 (= call!331004 (contains!16289 e!2952007 key!4653))))

(declare-fun c!808245 () Bool)

(assert (=> bm!330999 (= c!808245 c!808246)))

(declare-fun b!4732773 () Bool)

(assert (=> b!4732773 (= e!2952012 e!2952011)))

(declare-fun res!2003940 () Bool)

(assert (=> b!4732773 (=> (not res!2003940) (not e!2952011))))

(assert (=> b!4732773 (= res!2003940 (isDefined!9672 (getValueByKey!1994 (toList!5971 lt!1895720) key!4653)))))

(declare-fun b!4732774 () Bool)

(declare-fun Unit!131658 () Unit!131653)

(assert (=> b!4732774 (= e!2952010 Unit!131658)))

(assert (= (and d!1509495 c!808246) b!4732769))

(assert (= (and d!1509495 (not c!808246)) b!4732770))

(assert (= (and b!4732770 c!808244) b!4732772))

(assert (= (and b!4732770 (not c!808244)) b!4732774))

(assert (= (or b!4732769 b!4732770) bm!330999))

(assert (= (and bm!330999 c!808245) b!4732768))

(assert (= (and bm!330999 (not c!808245)) b!4732767))

(assert (= (and d!1509495 res!2003939) b!4732766))

(assert (= (and d!1509495 (not res!2003938)) b!4732773))

(assert (= (and b!4732773 res!2003940) b!4732771))

(declare-fun m!5675831 () Bool)

(assert (=> b!4732772 m!5675831))

(declare-fun m!5675833 () Bool)

(assert (=> b!4732772 m!5675833))

(declare-fun m!5675835 () Bool)

(assert (=> b!4732766 m!5675835))

(assert (=> b!4732766 m!5675835))

(declare-fun m!5675837 () Bool)

(assert (=> b!4732766 m!5675837))

(declare-fun m!5675839 () Bool)

(assert (=> b!4732768 m!5675839))

(declare-fun m!5675841 () Bool)

(assert (=> b!4732773 m!5675841))

(assert (=> b!4732773 m!5675841))

(declare-fun m!5675843 () Bool)

(assert (=> b!4732773 m!5675843))

(declare-fun m!5675845 () Bool)

(assert (=> bm!330999 m!5675845))

(assert (=> d!1509495 m!5675831))

(declare-fun m!5675847 () Bool)

(assert (=> b!4732769 m!5675847))

(assert (=> b!4732769 m!5675841))

(assert (=> b!4732769 m!5675841))

(assert (=> b!4732769 m!5675843))

(declare-fun m!5675849 () Bool)

(assert (=> b!4732769 m!5675849))

(assert (=> b!4732767 m!5675835))

(assert (=> b!4732771 m!5675835))

(assert (=> b!4732771 m!5675835))

(assert (=> b!4732771 m!5675837))

(assert (=> b!4732667 d!1509495))

(declare-fun bs!1121038 () Bool)

(declare-fun d!1509497 () Bool)

(assert (= bs!1121038 (and d!1509497 start!482510)))

(declare-fun lambda!217578 () Int)

(assert (=> bs!1121038 (= lambda!217578 lambda!217567)))

(declare-fun lt!1895820 () ListMap!5335)

(declare-fun invariantList!1532 (List!53029) Bool)

(assert (=> d!1509497 (invariantList!1532 (toList!5971 lt!1895820))))

(declare-fun e!2952027 () ListMap!5335)

(assert (=> d!1509497 (= lt!1895820 e!2952027)))

(declare-fun c!808255 () Bool)

(assert (=> d!1509497 (= c!808255 (is-Cons!52906 (toList!5972 lm!2023)))))

(assert (=> d!1509497 (forall!11646 (toList!5972 lm!2023) lambda!217578)))

(assert (=> d!1509497 (= (extractMap!2067 (toList!5972 lm!2023)) lt!1895820)))

(declare-fun b!4732797 () Bool)

(assert (=> b!4732797 (= e!2952027 (addToMapMapFromBucket!1471 (_2!30574 (h!59275 (toList!5972 lm!2023))) (extractMap!2067 (t!360308 (toList!5972 lm!2023)))))))

(declare-fun b!4732798 () Bool)

(assert (=> b!4732798 (= e!2952027 (ListMap!5336 Nil!52905))))

(assert (= (and d!1509497 c!808255) b!4732797))

(assert (= (and d!1509497 (not c!808255)) b!4732798))

(declare-fun m!5675851 () Bool)

(assert (=> d!1509497 m!5675851))

(declare-fun m!5675853 () Bool)

(assert (=> d!1509497 m!5675853))

(assert (=> b!4732797 m!5675727))

(assert (=> b!4732797 m!5675727))

(declare-fun m!5675855 () Bool)

(assert (=> b!4732797 m!5675855))

(assert (=> b!4732667 d!1509497))

(declare-fun b!4732810 () Bool)

(declare-fun e!2952032 () List!53029)

(assert (=> b!4732810 (= e!2952032 Nil!52905)))

(declare-fun d!1509499 () Bool)

(declare-fun lt!1895823 () List!53029)

(assert (=> d!1509499 (not (containsKey!3430 lt!1895823 key!4653))))

(declare-fun e!2952033 () List!53029)

(assert (=> d!1509499 (= lt!1895823 e!2952033)))

(declare-fun c!808260 () Bool)

(assert (=> d!1509499 (= c!808260 (and (is-Cons!52905 (t!360307 oldBucket!34)) (= (_1!30573 (h!59274 (t!360307 oldBucket!34))) key!4653)))))

(assert (=> d!1509499 (noDuplicateKeys!2041 (t!360307 oldBucket!34))))

(assert (=> d!1509499 (= (removePairForKey!1636 (t!360307 oldBucket!34) key!4653) lt!1895823)))

(declare-fun b!4732807 () Bool)

(assert (=> b!4732807 (= e!2952033 (t!360307 (t!360307 oldBucket!34)))))

(declare-fun b!4732809 () Bool)

(assert (=> b!4732809 (= e!2952032 (Cons!52905 (h!59274 (t!360307 oldBucket!34)) (removePairForKey!1636 (t!360307 (t!360307 oldBucket!34)) key!4653)))))

(declare-fun b!4732808 () Bool)

(assert (=> b!4732808 (= e!2952033 e!2952032)))

(declare-fun c!808261 () Bool)

(assert (=> b!4732808 (= c!808261 (is-Cons!52905 (t!360307 oldBucket!34)))))

(assert (= (and d!1509499 c!808260) b!4732807))

(assert (= (and d!1509499 (not c!808260)) b!4732808))

(assert (= (and b!4732808 c!808261) b!4732809))

(assert (= (and b!4732808 (not c!808261)) b!4732810))

(declare-fun m!5675857 () Bool)

(assert (=> d!1509499 m!5675857))

(assert (=> d!1509499 m!5675821))

(declare-fun m!5675859 () Bool)

(assert (=> b!4732809 m!5675859))

(assert (=> b!4732669 d!1509499))

(declare-fun b!4732814 () Bool)

(declare-fun e!2952034 () List!53029)

(assert (=> b!4732814 (= e!2952034 Nil!52905)))

(declare-fun d!1509501 () Bool)

(declare-fun lt!1895824 () List!53029)

(assert (=> d!1509501 (not (containsKey!3430 lt!1895824 key!4653))))

(declare-fun e!2952035 () List!53029)

(assert (=> d!1509501 (= lt!1895824 e!2952035)))

(declare-fun c!808262 () Bool)

(assert (=> d!1509501 (= c!808262 (and (is-Cons!52905 lt!1895715) (= (_1!30573 (h!59274 lt!1895715)) key!4653)))))

(assert (=> d!1509501 (noDuplicateKeys!2041 lt!1895715)))

(assert (=> d!1509501 (= (removePairForKey!1636 lt!1895715 key!4653) lt!1895824)))

(declare-fun b!4732811 () Bool)

(assert (=> b!4732811 (= e!2952035 (t!360307 lt!1895715))))

(declare-fun b!4732813 () Bool)

(assert (=> b!4732813 (= e!2952034 (Cons!52905 (h!59274 lt!1895715) (removePairForKey!1636 (t!360307 lt!1895715) key!4653)))))

(declare-fun b!4732812 () Bool)

(assert (=> b!4732812 (= e!2952035 e!2952034)))

(declare-fun c!808263 () Bool)

(assert (=> b!4732812 (= c!808263 (is-Cons!52905 lt!1895715))))

(assert (= (and d!1509501 c!808262) b!4732811))

(assert (= (and d!1509501 (not c!808262)) b!4732812))

(assert (= (and b!4732812 c!808263) b!4732813))

(assert (= (and b!4732812 (not c!808263)) b!4732814))

(declare-fun m!5675861 () Bool)

(assert (=> d!1509501 m!5675861))

(declare-fun m!5675863 () Bool)

(assert (=> d!1509501 m!5675863))

(declare-fun m!5675865 () Bool)

(assert (=> b!4732813 m!5675865))

(assert (=> b!4732668 d!1509501))

(declare-fun d!1509503 () Bool)

(assert (=> d!1509503 (= (tail!9069 newBucket!218) (t!360307 newBucket!218))))

(assert (=> b!4732668 d!1509503))

(declare-fun d!1509505 () Bool)

(assert (=> d!1509505 (= (tail!9069 oldBucket!34) (t!360307 oldBucket!34))))

(assert (=> b!4732668 d!1509505))

(declare-fun bs!1121039 () Bool)

(declare-fun d!1509507 () Bool)

(assert (= bs!1121039 (and d!1509507 d!1509489)))

(declare-fun lambda!217579 () Int)

(assert (=> bs!1121039 (= lambda!217579 lambda!217575)))

(assert (=> d!1509507 true))

(assert (=> d!1509507 true))

(assert (=> d!1509507 (= (allKeysSameHash!1867 newBucket!218 hash!405 hashF!1323) (forall!11648 newBucket!218 lambda!217579))))

(declare-fun bs!1121040 () Bool)

(assert (= bs!1121040 d!1509507))

(declare-fun m!5675867 () Bool)

(assert (=> bs!1121040 m!5675867))

(assert (=> b!4732670 d!1509507))

(declare-fun bs!1121041 () Bool)

(declare-fun d!1509509 () Bool)

(assert (= bs!1121041 (and d!1509509 start!482510)))

(declare-fun lambda!217582 () Int)

(assert (=> bs!1121041 (not (= lambda!217582 lambda!217567))))

(declare-fun bs!1121042 () Bool)

(assert (= bs!1121042 (and d!1509509 d!1509497)))

(assert (=> bs!1121042 (not (= lambda!217582 lambda!217578))))

(assert (=> d!1509509 true))

(assert (=> d!1509509 (= (allKeysSameHashInMap!1955 lm!2023 hashF!1323) (forall!11646 (toList!5972 lm!2023) lambda!217582))))

(declare-fun bs!1121043 () Bool)

(assert (= bs!1121043 d!1509509))

(declare-fun m!5675869 () Bool)

(assert (=> bs!1121043 m!5675869))

(assert (=> b!4732661 d!1509509))

(declare-fun d!1509511 () Bool)

(declare-fun res!2003954 () Bool)

(declare-fun e!2952046 () Bool)

(assert (=> d!1509511 (=> res!2003954 e!2952046)))

(assert (=> d!1509511 (= res!2003954 (is-Nil!52906 (toList!5972 lm!2023)))))

(assert (=> d!1509511 (= (forall!11646 (toList!5972 lm!2023) lambda!217567) e!2952046)))

(declare-fun b!4732830 () Bool)

(declare-fun e!2952047 () Bool)

(assert (=> b!4732830 (= e!2952046 e!2952047)))

(declare-fun res!2003955 () Bool)

(assert (=> b!4732830 (=> (not res!2003955) (not e!2952047))))

(declare-fun dynLambda!21854 (Int tuple2!54560) Bool)

(assert (=> b!4732830 (= res!2003955 (dynLambda!21854 lambda!217567 (h!59275 (toList!5972 lm!2023))))))

(declare-fun b!4732831 () Bool)

(assert (=> b!4732831 (= e!2952047 (forall!11646 (t!360308 (toList!5972 lm!2023)) lambda!217567))))

(assert (= (and d!1509511 (not res!2003954)) b!4732830))

(assert (= (and b!4732830 res!2003955) b!4732831))

(declare-fun b_lambda!180613 () Bool)

(assert (=> (not b_lambda!180613) (not b!4732830)))

(declare-fun m!5675891 () Bool)

(assert (=> b!4732830 m!5675891))

(declare-fun m!5675893 () Bool)

(assert (=> b!4732831 m!5675893))

(assert (=> start!482510 d!1509511))

(declare-fun d!1509515 () Bool)

(declare-fun isStrictlySorted!769 (List!53030) Bool)

(assert (=> d!1509515 (= (inv!68128 lm!2023) (isStrictlySorted!769 (toList!5972 lm!2023)))))

(declare-fun bs!1121044 () Bool)

(assert (= bs!1121044 d!1509515))

(declare-fun m!5675895 () Bool)

(assert (=> bs!1121044 m!5675895))

(assert (=> start!482510 d!1509515))

(declare-fun bs!1121054 () Bool)

(declare-fun b!4732889 () Bool)

(assert (= bs!1121054 (and b!4732889 d!1509489)))

(declare-fun lambda!217623 () Int)

(assert (=> bs!1121054 (not (= lambda!217623 lambda!217575))))

(declare-fun bs!1121055 () Bool)

(assert (= bs!1121055 (and b!4732889 d!1509507)))

(assert (=> bs!1121055 (not (= lambda!217623 lambda!217579))))

(assert (=> b!4732889 true))

(declare-fun bs!1121056 () Bool)

(declare-fun b!4732888 () Bool)

(assert (= bs!1121056 (and b!4732888 d!1509489)))

(declare-fun lambda!217624 () Int)

(assert (=> bs!1121056 (not (= lambda!217624 lambda!217575))))

(declare-fun bs!1121057 () Bool)

(assert (= bs!1121057 (and b!4732888 d!1509507)))

(assert (=> bs!1121057 (not (= lambda!217624 lambda!217579))))

(declare-fun bs!1121058 () Bool)

(assert (= bs!1121058 (and b!4732888 b!4732889)))

(assert (=> bs!1121058 (= lambda!217624 lambda!217623)))

(assert (=> b!4732888 true))

(declare-fun lambda!217625 () Int)

(assert (=> bs!1121056 (not (= lambda!217625 lambda!217575))))

(assert (=> bs!1121057 (not (= lambda!217625 lambda!217579))))

(declare-fun lt!1895912 () ListMap!5335)

(assert (=> bs!1121058 (= (= lt!1895912 lt!1895722) (= lambda!217625 lambda!217623))))

(assert (=> b!4732888 (= (= lt!1895912 lt!1895722) (= lambda!217625 lambda!217624))))

(assert (=> b!4732888 true))

(declare-fun bs!1121059 () Bool)

(declare-fun d!1509517 () Bool)

(assert (= bs!1121059 (and d!1509517 d!1509489)))

(declare-fun lambda!217626 () Int)

(assert (=> bs!1121059 (not (= lambda!217626 lambda!217575))))

(declare-fun bs!1121060 () Bool)

(assert (= bs!1121060 (and d!1509517 b!4732889)))

(declare-fun lt!1895914 () ListMap!5335)

(assert (=> bs!1121060 (= (= lt!1895914 lt!1895722) (= lambda!217626 lambda!217623))))

(declare-fun bs!1121061 () Bool)

(assert (= bs!1121061 (and d!1509517 b!4732888)))

(assert (=> bs!1121061 (= (= lt!1895914 lt!1895912) (= lambda!217626 lambda!217625))))

(assert (=> bs!1121061 (= (= lt!1895914 lt!1895722) (= lambda!217626 lambda!217624))))

(declare-fun bs!1121062 () Bool)

(assert (= bs!1121062 (and d!1509517 d!1509507)))

(assert (=> bs!1121062 (not (= lambda!217626 lambda!217579))))

(assert (=> d!1509517 true))

(declare-fun call!331016 () Bool)

(declare-fun c!808283 () Bool)

(declare-fun bm!331009 () Bool)

(assert (=> bm!331009 (= call!331016 (forall!11648 (toList!5971 lt!1895722) (ite c!808283 lambda!217623 lambda!217625)))))

(declare-fun b!4732885 () Bool)

(declare-fun res!2003971 () Bool)

(declare-fun e!2952077 () Bool)

(assert (=> b!4732885 (=> (not res!2003971) (not e!2952077))))

(assert (=> b!4732885 (= res!2003971 (forall!11648 (toList!5971 lt!1895722) lambda!217626))))

(declare-fun b!4732886 () Bool)

(declare-fun e!2952079 () Bool)

(assert (=> b!4732886 (= e!2952079 (forall!11648 (toList!5971 lt!1895722) lambda!217625))))

(assert (=> d!1509517 e!2952077))

(declare-fun res!2003973 () Bool)

(assert (=> d!1509517 (=> (not res!2003973) (not e!2952077))))

(assert (=> d!1509517 (= res!2003973 (forall!11648 (_2!30574 (h!59275 (toList!5972 lm!2023))) lambda!217626))))

(declare-fun e!2952078 () ListMap!5335)

(assert (=> d!1509517 (= lt!1895914 e!2952078)))

(assert (=> d!1509517 (= c!808283 (is-Nil!52905 (_2!30574 (h!59275 (toList!5972 lm!2023)))))))

(assert (=> d!1509517 (noDuplicateKeys!2041 (_2!30574 (h!59275 (toList!5972 lm!2023))))))

(assert (=> d!1509517 (= (addToMapMapFromBucket!1471 (_2!30574 (h!59275 (toList!5972 lm!2023))) lt!1895722) lt!1895914)))

(declare-fun b!4732887 () Bool)

(assert (=> b!4732887 (= e!2952077 (invariantList!1532 (toList!5971 lt!1895914)))))

(assert (=> b!4732888 (= e!2952078 lt!1895912)))

(declare-fun lt!1895900 () ListMap!5335)

(assert (=> b!4732888 (= lt!1895900 (+!2289 lt!1895722 (h!59274 (_2!30574 (h!59275 (toList!5972 lm!2023))))))))

(assert (=> b!4732888 (= lt!1895912 (addToMapMapFromBucket!1471 (t!360307 (_2!30574 (h!59275 (toList!5972 lm!2023)))) (+!2289 lt!1895722 (h!59274 (_2!30574 (h!59275 (toList!5972 lm!2023)))))))))

(declare-fun lt!1895901 () Unit!131653)

(declare-fun call!331014 () Unit!131653)

(assert (=> b!4732888 (= lt!1895901 call!331014)))

(assert (=> b!4732888 (forall!11648 (toList!5971 lt!1895722) lambda!217624)))

(declare-fun lt!1895904 () Unit!131653)

(assert (=> b!4732888 (= lt!1895904 lt!1895901)))

(declare-fun call!331015 () Bool)

(assert (=> b!4732888 call!331015))

(declare-fun lt!1895916 () Unit!131653)

(declare-fun Unit!131659 () Unit!131653)

(assert (=> b!4732888 (= lt!1895916 Unit!131659)))

(assert (=> b!4732888 (forall!11648 (t!360307 (_2!30574 (h!59275 (toList!5972 lm!2023)))) lambda!217625)))

(declare-fun lt!1895920 () Unit!131653)

(declare-fun Unit!131660 () Unit!131653)

(assert (=> b!4732888 (= lt!1895920 Unit!131660)))

(declare-fun lt!1895902 () Unit!131653)

(declare-fun Unit!131661 () Unit!131653)

(assert (=> b!4732888 (= lt!1895902 Unit!131661)))

(declare-fun lt!1895917 () Unit!131653)

(declare-fun forallContained!3688 (List!53029 Int tuple2!54558) Unit!131653)

(assert (=> b!4732888 (= lt!1895917 (forallContained!3688 (toList!5971 lt!1895900) lambda!217625 (h!59274 (_2!30574 (h!59275 (toList!5972 lm!2023))))))))

(assert (=> b!4732888 (contains!16283 lt!1895900 (_1!30573 (h!59274 (_2!30574 (h!59275 (toList!5972 lm!2023))))))))

(declare-fun lt!1895913 () Unit!131653)

(declare-fun Unit!131662 () Unit!131653)

(assert (=> b!4732888 (= lt!1895913 Unit!131662)))

(assert (=> b!4732888 (contains!16283 lt!1895912 (_1!30573 (h!59274 (_2!30574 (h!59275 (toList!5972 lm!2023))))))))

(declare-fun lt!1895919 () Unit!131653)

(declare-fun Unit!131663 () Unit!131653)

(assert (=> b!4732888 (= lt!1895919 Unit!131663)))

(assert (=> b!4732888 (forall!11648 (_2!30574 (h!59275 (toList!5972 lm!2023))) lambda!217625)))

(declare-fun lt!1895907 () Unit!131653)

(declare-fun Unit!131664 () Unit!131653)

(assert (=> b!4732888 (= lt!1895907 Unit!131664)))

(assert (=> b!4732888 (forall!11648 (toList!5971 lt!1895900) lambda!217625)))

(declare-fun lt!1895910 () Unit!131653)

(declare-fun Unit!131665 () Unit!131653)

(assert (=> b!4732888 (= lt!1895910 Unit!131665)))

(declare-fun lt!1895903 () Unit!131653)

(declare-fun Unit!131666 () Unit!131653)

(assert (=> b!4732888 (= lt!1895903 Unit!131666)))

(declare-fun lt!1895905 () Unit!131653)

(declare-fun addForallContainsKeyThenBeforeAdding!816 (ListMap!5335 ListMap!5335 K!14253 V!14499) Unit!131653)

(assert (=> b!4732888 (= lt!1895905 (addForallContainsKeyThenBeforeAdding!816 lt!1895722 lt!1895912 (_1!30573 (h!59274 (_2!30574 (h!59275 (toList!5972 lm!2023))))) (_2!30573 (h!59274 (_2!30574 (h!59275 (toList!5972 lm!2023)))))))))

(assert (=> b!4732888 (forall!11648 (toList!5971 lt!1895722) lambda!217625)))

(declare-fun lt!1895915 () Unit!131653)

(assert (=> b!4732888 (= lt!1895915 lt!1895905)))

(assert (=> b!4732888 call!331016))

(declare-fun lt!1895908 () Unit!131653)

(declare-fun Unit!131667 () Unit!131653)

(assert (=> b!4732888 (= lt!1895908 Unit!131667)))

(declare-fun res!2003972 () Bool)

(assert (=> b!4732888 (= res!2003972 (forall!11648 (_2!30574 (h!59275 (toList!5972 lm!2023))) lambda!217625))))

(assert (=> b!4732888 (=> (not res!2003972) (not e!2952079))))

(assert (=> b!4732888 e!2952079))

(declare-fun lt!1895909 () Unit!131653)

(declare-fun Unit!131668 () Unit!131653)

(assert (=> b!4732888 (= lt!1895909 Unit!131668)))

(declare-fun bm!331010 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!817 (ListMap!5335) Unit!131653)

(assert (=> bm!331010 (= call!331014 (lemmaContainsAllItsOwnKeys!817 lt!1895722))))

(declare-fun bm!331011 () Bool)

(assert (=> bm!331011 (= call!331015 (forall!11648 (ite c!808283 (toList!5971 lt!1895722) (toList!5971 lt!1895900)) (ite c!808283 lambda!217623 lambda!217625)))))

(assert (=> b!4732889 (= e!2952078 lt!1895722)))

(declare-fun lt!1895918 () Unit!131653)

(assert (=> b!4732889 (= lt!1895918 call!331014)))

(assert (=> b!4732889 call!331016))

(declare-fun lt!1895906 () Unit!131653)

(assert (=> b!4732889 (= lt!1895906 lt!1895918)))

(assert (=> b!4732889 call!331015))

(declare-fun lt!1895911 () Unit!131653)

(declare-fun Unit!131669 () Unit!131653)

(assert (=> b!4732889 (= lt!1895911 Unit!131669)))

(assert (= (and d!1509517 c!808283) b!4732889))

(assert (= (and d!1509517 (not c!808283)) b!4732888))

(assert (= (and b!4732888 res!2003972) b!4732886))

(assert (= (or b!4732889 b!4732888) bm!331010))

(assert (= (or b!4732889 b!4732888) bm!331011))

(assert (= (or b!4732889 b!4732888) bm!331009))

(assert (= (and d!1509517 res!2003973) b!4732885))

(assert (= (and b!4732885 res!2003971) b!4732887))

(declare-fun m!5675935 () Bool)

(assert (=> b!4732888 m!5675935))

(declare-fun m!5675937 () Bool)

(assert (=> b!4732888 m!5675937))

(declare-fun m!5675939 () Bool)

(assert (=> b!4732888 m!5675939))

(declare-fun m!5675941 () Bool)

(assert (=> b!4732888 m!5675941))

(declare-fun m!5675943 () Bool)

(assert (=> b!4732888 m!5675943))

(assert (=> b!4732888 m!5675941))

(declare-fun m!5675945 () Bool)

(assert (=> b!4732888 m!5675945))

(declare-fun m!5675947 () Bool)

(assert (=> b!4732888 m!5675947))

(declare-fun m!5675949 () Bool)

(assert (=> b!4732888 m!5675949))

(declare-fun m!5675951 () Bool)

(assert (=> b!4732888 m!5675951))

(assert (=> b!4732888 m!5675945))

(declare-fun m!5675953 () Bool)

(assert (=> b!4732888 m!5675953))

(declare-fun m!5675955 () Bool)

(assert (=> b!4732888 m!5675955))

(declare-fun m!5675957 () Bool)

(assert (=> bm!331010 m!5675957))

(declare-fun m!5675959 () Bool)

(assert (=> bm!331011 m!5675959))

(assert (=> b!4732886 m!5675943))

(declare-fun m!5675961 () Bool)

(assert (=> d!1509517 m!5675961))

(declare-fun m!5675963 () Bool)

(assert (=> d!1509517 m!5675963))

(declare-fun m!5675965 () Bool)

(assert (=> b!4732887 m!5675965))

(declare-fun m!5675967 () Bool)

(assert (=> b!4732885 m!5675967))

(declare-fun m!5675969 () Bool)

(assert (=> bm!331009 m!5675969))

(assert (=> b!4732660 d!1509517))

(declare-fun bs!1121063 () Bool)

(declare-fun d!1509537 () Bool)

(assert (= bs!1121063 (and d!1509537 start!482510)))

(declare-fun lambda!217627 () Int)

(assert (=> bs!1121063 (= lambda!217627 lambda!217567)))

(declare-fun bs!1121064 () Bool)

(assert (= bs!1121064 (and d!1509537 d!1509497)))

(assert (=> bs!1121064 (= lambda!217627 lambda!217578)))

(declare-fun bs!1121065 () Bool)

(assert (= bs!1121065 (and d!1509537 d!1509509)))

(assert (=> bs!1121065 (not (= lambda!217627 lambda!217582))))

(declare-fun lt!1895921 () ListMap!5335)

(assert (=> d!1509537 (invariantList!1532 (toList!5971 lt!1895921))))

(declare-fun e!2952080 () ListMap!5335)

(assert (=> d!1509537 (= lt!1895921 e!2952080)))

(declare-fun c!808284 () Bool)

(assert (=> d!1509537 (= c!808284 (is-Cons!52906 (t!360308 (toList!5972 lm!2023))))))

(assert (=> d!1509537 (forall!11646 (t!360308 (toList!5972 lm!2023)) lambda!217627)))

(assert (=> d!1509537 (= (extractMap!2067 (t!360308 (toList!5972 lm!2023))) lt!1895921)))

(declare-fun b!4732892 () Bool)

(assert (=> b!4732892 (= e!2952080 (addToMapMapFromBucket!1471 (_2!30574 (h!59275 (t!360308 (toList!5972 lm!2023)))) (extractMap!2067 (t!360308 (t!360308 (toList!5972 lm!2023))))))))

(declare-fun b!4732893 () Bool)

(assert (=> b!4732893 (= e!2952080 (ListMap!5336 Nil!52905))))

(assert (= (and d!1509537 c!808284) b!4732892))

(assert (= (and d!1509537 (not c!808284)) b!4732893))

(declare-fun m!5675971 () Bool)

(assert (=> d!1509537 m!5675971))

(declare-fun m!5675973 () Bool)

(assert (=> d!1509537 m!5675973))

(declare-fun m!5675975 () Bool)

(assert (=> b!4732892 m!5675975))

(assert (=> b!4732892 m!5675975))

(declare-fun m!5675977 () Bool)

(assert (=> b!4732892 m!5675977))

(assert (=> b!4732660 d!1509537))

(declare-fun d!1509539 () Bool)

(declare-fun tail!9072 (List!53030) List!53030)

(assert (=> d!1509539 (= (tail!9068 lm!2023) (ListLongMap!4502 (tail!9072 (toList!5972 lm!2023))))))

(declare-fun bs!1121066 () Bool)

(assert (= bs!1121066 d!1509539))

(declare-fun m!5675979 () Bool)

(assert (=> bs!1121066 m!5675979))

(assert (=> b!4732660 d!1509539))

(declare-fun b!4732894 () Bool)

(declare-fun e!2952083 () Bool)

(assert (=> b!4732894 (= e!2952083 (not (contains!16289 (keys!19024 (extractMap!2067 lt!1895714)) key!4653)))))

(declare-fun b!4732895 () Bool)

(declare-fun e!2952081 () List!53033)

(assert (=> b!4732895 (= e!2952081 (keys!19024 (extractMap!2067 lt!1895714)))))

(declare-fun b!4732896 () Bool)

(assert (=> b!4732896 (= e!2952081 (getKeysList!971 (toList!5971 (extractMap!2067 lt!1895714))))))

(declare-fun b!4732897 () Bool)

(declare-fun e!2952082 () Unit!131653)

(declare-fun lt!1895925 () Unit!131653)

(assert (=> b!4732897 (= e!2952082 lt!1895925)))

(declare-fun lt!1895926 () Unit!131653)

(assert (=> b!4732897 (= lt!1895926 (lemmaContainsKeyImpliesGetValueByKeyDefined!1885 (toList!5971 (extractMap!2067 lt!1895714)) key!4653))))

(assert (=> b!4732897 (isDefined!9672 (getValueByKey!1994 (toList!5971 (extractMap!2067 lt!1895714)) key!4653))))

(declare-fun lt!1895923 () Unit!131653)

(assert (=> b!4732897 (= lt!1895923 lt!1895926)))

(assert (=> b!4732897 (= lt!1895925 (lemmaInListThenGetKeysListContains!966 (toList!5971 (extractMap!2067 lt!1895714)) key!4653))))

(declare-fun call!331017 () Bool)

(assert (=> b!4732897 call!331017))

(declare-fun b!4732898 () Bool)

(declare-fun e!2952084 () Unit!131653)

(assert (=> b!4732898 (= e!2952082 e!2952084)))

(declare-fun c!808285 () Bool)

(assert (=> b!4732898 (= c!808285 call!331017)))

(declare-fun b!4732899 () Bool)

(declare-fun e!2952085 () Bool)

(assert (=> b!4732899 (= e!2952085 (contains!16289 (keys!19024 (extractMap!2067 lt!1895714)) key!4653))))

(declare-fun b!4732900 () Bool)

(assert (=> b!4732900 false))

(declare-fun lt!1895929 () Unit!131653)

(declare-fun lt!1895928 () Unit!131653)

(assert (=> b!4732900 (= lt!1895929 lt!1895928)))

(assert (=> b!4732900 (containsKey!3432 (toList!5971 (extractMap!2067 lt!1895714)) key!4653)))

(assert (=> b!4732900 (= lt!1895928 (lemmaInGetKeysListThenContainsKey!970 (toList!5971 (extractMap!2067 lt!1895714)) key!4653))))

(declare-fun Unit!131670 () Unit!131653)

(assert (=> b!4732900 (= e!2952084 Unit!131670)))

(declare-fun d!1509541 () Bool)

(declare-fun e!2952086 () Bool)

(assert (=> d!1509541 e!2952086))

(declare-fun res!2003974 () Bool)

(assert (=> d!1509541 (=> res!2003974 e!2952086)))

(assert (=> d!1509541 (= res!2003974 e!2952083)))

(declare-fun res!2003975 () Bool)

(assert (=> d!1509541 (=> (not res!2003975) (not e!2952083))))

(declare-fun lt!1895924 () Bool)

(assert (=> d!1509541 (= res!2003975 (not lt!1895924))))

(declare-fun lt!1895922 () Bool)

(assert (=> d!1509541 (= lt!1895924 lt!1895922)))

(declare-fun lt!1895927 () Unit!131653)

(assert (=> d!1509541 (= lt!1895927 e!2952082)))

(declare-fun c!808287 () Bool)

(assert (=> d!1509541 (= c!808287 lt!1895922)))

(assert (=> d!1509541 (= lt!1895922 (containsKey!3432 (toList!5971 (extractMap!2067 lt!1895714)) key!4653))))

(assert (=> d!1509541 (= (contains!16283 (extractMap!2067 lt!1895714) key!4653) lt!1895924)))

(declare-fun bm!331012 () Bool)

(assert (=> bm!331012 (= call!331017 (contains!16289 e!2952081 key!4653))))

(declare-fun c!808286 () Bool)

(assert (=> bm!331012 (= c!808286 c!808287)))

(declare-fun b!4732901 () Bool)

(assert (=> b!4732901 (= e!2952086 e!2952085)))

(declare-fun res!2003976 () Bool)

(assert (=> b!4732901 (=> (not res!2003976) (not e!2952085))))

(assert (=> b!4732901 (= res!2003976 (isDefined!9672 (getValueByKey!1994 (toList!5971 (extractMap!2067 lt!1895714)) key!4653)))))

(declare-fun b!4732902 () Bool)

(declare-fun Unit!131671 () Unit!131653)

(assert (=> b!4732902 (= e!2952084 Unit!131671)))

(assert (= (and d!1509541 c!808287) b!4732897))

(assert (= (and d!1509541 (not c!808287)) b!4732898))

(assert (= (and b!4732898 c!808285) b!4732900))

(assert (= (and b!4732898 (not c!808285)) b!4732902))

(assert (= (or b!4732897 b!4732898) bm!331012))

(assert (= (and bm!331012 c!808286) b!4732896))

(assert (= (and bm!331012 (not c!808286)) b!4732895))

(assert (= (and d!1509541 res!2003975) b!4732894))

(assert (= (and d!1509541 (not res!2003974)) b!4732901))

(assert (= (and b!4732901 res!2003976) b!4732899))

(declare-fun m!5675981 () Bool)

(assert (=> b!4732900 m!5675981))

(declare-fun m!5675983 () Bool)

(assert (=> b!4732900 m!5675983))

(assert (=> b!4732894 m!5675707))

(declare-fun m!5675985 () Bool)

(assert (=> b!4732894 m!5675985))

(assert (=> b!4732894 m!5675985))

(declare-fun m!5675987 () Bool)

(assert (=> b!4732894 m!5675987))

(declare-fun m!5675989 () Bool)

(assert (=> b!4732896 m!5675989))

(declare-fun m!5675991 () Bool)

(assert (=> b!4732901 m!5675991))

(assert (=> b!4732901 m!5675991))

(declare-fun m!5675993 () Bool)

(assert (=> b!4732901 m!5675993))

(declare-fun m!5675995 () Bool)

(assert (=> bm!331012 m!5675995))

(assert (=> d!1509541 m!5675981))

(declare-fun m!5675997 () Bool)

(assert (=> b!4732897 m!5675997))

(assert (=> b!4732897 m!5675991))

(assert (=> b!4732897 m!5675991))

(assert (=> b!4732897 m!5675993))

(declare-fun m!5675999 () Bool)

(assert (=> b!4732897 m!5675999))

(assert (=> b!4732895 m!5675707))

(assert (=> b!4732895 m!5675985))

(assert (=> b!4732899 m!5675707))

(assert (=> b!4732899 m!5675985))

(assert (=> b!4732899 m!5675985))

(assert (=> b!4732899 m!5675987))

(assert (=> b!4732662 d!1509541))

(declare-fun bs!1121067 () Bool)

(declare-fun b!4732907 () Bool)

(assert (= bs!1121067 (and b!4732907 d!1509489)))

(declare-fun lambda!217628 () Int)

(assert (=> bs!1121067 (not (= lambda!217628 lambda!217575))))

(declare-fun bs!1121068 () Bool)

(assert (= bs!1121068 (and b!4732907 b!4732889)))

(assert (=> bs!1121068 (= lambda!217628 lambda!217623)))

(declare-fun bs!1121069 () Bool)

(assert (= bs!1121069 (and b!4732907 d!1509517)))

(assert (=> bs!1121069 (= (= lt!1895722 lt!1895914) (= lambda!217628 lambda!217626))))

(declare-fun bs!1121070 () Bool)

(assert (= bs!1121070 (and b!4732907 b!4732888)))

(assert (=> bs!1121070 (= (= lt!1895722 lt!1895912) (= lambda!217628 lambda!217625))))

(assert (=> bs!1121070 (= lambda!217628 lambda!217624)))

(declare-fun bs!1121071 () Bool)

(assert (= bs!1121071 (and b!4732907 d!1509507)))

(assert (=> bs!1121071 (not (= lambda!217628 lambda!217579))))

(assert (=> b!4732907 true))

(declare-fun bs!1121072 () Bool)

(declare-fun b!4732906 () Bool)

(assert (= bs!1121072 (and b!4732906 d!1509489)))

(declare-fun lambda!217629 () Int)

(assert (=> bs!1121072 (not (= lambda!217629 lambda!217575))))

(declare-fun bs!1121073 () Bool)

(assert (= bs!1121073 (and b!4732906 b!4732907)))

(assert (=> bs!1121073 (= lambda!217629 lambda!217628)))

(declare-fun bs!1121074 () Bool)

(assert (= bs!1121074 (and b!4732906 b!4732889)))

(assert (=> bs!1121074 (= lambda!217629 lambda!217623)))

(declare-fun bs!1121075 () Bool)

(assert (= bs!1121075 (and b!4732906 d!1509517)))

(assert (=> bs!1121075 (= (= lt!1895722 lt!1895914) (= lambda!217629 lambda!217626))))

(declare-fun bs!1121076 () Bool)

(assert (= bs!1121076 (and b!4732906 b!4732888)))

(assert (=> bs!1121076 (= (= lt!1895722 lt!1895912) (= lambda!217629 lambda!217625))))

(assert (=> bs!1121076 (= lambda!217629 lambda!217624)))

(declare-fun bs!1121077 () Bool)

(assert (= bs!1121077 (and b!4732906 d!1509507)))

(assert (=> bs!1121077 (not (= lambda!217629 lambda!217579))))

(assert (=> b!4732906 true))

(declare-fun lt!1895942 () ListMap!5335)

(declare-fun lambda!217630 () Int)

(assert (=> b!4732906 (= (= lt!1895942 lt!1895722) (= lambda!217630 lambda!217629))))

(assert (=> bs!1121072 (not (= lambda!217630 lambda!217575))))

(assert (=> bs!1121073 (= (= lt!1895942 lt!1895722) (= lambda!217630 lambda!217628))))

(assert (=> bs!1121074 (= (= lt!1895942 lt!1895722) (= lambda!217630 lambda!217623))))

(assert (=> bs!1121075 (= (= lt!1895942 lt!1895914) (= lambda!217630 lambda!217626))))

(assert (=> bs!1121076 (= (= lt!1895942 lt!1895912) (= lambda!217630 lambda!217625))))

(assert (=> bs!1121076 (= (= lt!1895942 lt!1895722) (= lambda!217630 lambda!217624))))

(assert (=> bs!1121077 (not (= lambda!217630 lambda!217579))))

(assert (=> b!4732906 true))

(declare-fun bs!1121078 () Bool)

(declare-fun d!1509543 () Bool)

(assert (= bs!1121078 (and d!1509543 b!4732906)))

(declare-fun lambda!217631 () Int)

(declare-fun lt!1895944 () ListMap!5335)

(assert (=> bs!1121078 (= (= lt!1895944 lt!1895722) (= lambda!217631 lambda!217629))))

(assert (=> bs!1121078 (= (= lt!1895944 lt!1895942) (= lambda!217631 lambda!217630))))

(declare-fun bs!1121079 () Bool)

(assert (= bs!1121079 (and d!1509543 d!1509489)))

(assert (=> bs!1121079 (not (= lambda!217631 lambda!217575))))

(declare-fun bs!1121080 () Bool)

(assert (= bs!1121080 (and d!1509543 b!4732907)))

(assert (=> bs!1121080 (= (= lt!1895944 lt!1895722) (= lambda!217631 lambda!217628))))

(declare-fun bs!1121081 () Bool)

(assert (= bs!1121081 (and d!1509543 b!4732889)))

(assert (=> bs!1121081 (= (= lt!1895944 lt!1895722) (= lambda!217631 lambda!217623))))

(declare-fun bs!1121082 () Bool)

(assert (= bs!1121082 (and d!1509543 d!1509517)))

(assert (=> bs!1121082 (= (= lt!1895944 lt!1895914) (= lambda!217631 lambda!217626))))

(declare-fun bs!1121083 () Bool)

(assert (= bs!1121083 (and d!1509543 b!4732888)))

(assert (=> bs!1121083 (= (= lt!1895944 lt!1895912) (= lambda!217631 lambda!217625))))

(assert (=> bs!1121083 (= (= lt!1895944 lt!1895722) (= lambda!217631 lambda!217624))))

(declare-fun bs!1121084 () Bool)

(assert (= bs!1121084 (and d!1509543 d!1509507)))

(assert (=> bs!1121084 (not (= lambda!217631 lambda!217579))))

(assert (=> d!1509543 true))

(declare-fun call!331020 () Bool)

(declare-fun bm!331013 () Bool)

(declare-fun c!808288 () Bool)

(assert (=> bm!331013 (= call!331020 (forall!11648 (toList!5971 lt!1895722) (ite c!808288 lambda!217628 lambda!217630)))))

(declare-fun b!4732903 () Bool)

(declare-fun res!2003977 () Bool)

(declare-fun e!2952087 () Bool)

(assert (=> b!4732903 (=> (not res!2003977) (not e!2952087))))

(assert (=> b!4732903 (= res!2003977 (forall!11648 (toList!5971 lt!1895722) lambda!217631))))

(declare-fun b!4732904 () Bool)

(declare-fun e!2952089 () Bool)

(assert (=> b!4732904 (= e!2952089 (forall!11648 (toList!5971 lt!1895722) lambda!217630))))

(assert (=> d!1509543 e!2952087))

(declare-fun res!2003979 () Bool)

(assert (=> d!1509543 (=> (not res!2003979) (not e!2952087))))

(assert (=> d!1509543 (= res!2003979 (forall!11648 lt!1895715 lambda!217631))))

(declare-fun e!2952088 () ListMap!5335)

(assert (=> d!1509543 (= lt!1895944 e!2952088)))

(assert (=> d!1509543 (= c!808288 (is-Nil!52905 lt!1895715))))

(assert (=> d!1509543 (noDuplicateKeys!2041 lt!1895715)))

(assert (=> d!1509543 (= (addToMapMapFromBucket!1471 lt!1895715 lt!1895722) lt!1895944)))

(declare-fun b!4732905 () Bool)

(assert (=> b!4732905 (= e!2952087 (invariantList!1532 (toList!5971 lt!1895944)))))

(assert (=> b!4732906 (= e!2952088 lt!1895942)))

(declare-fun lt!1895930 () ListMap!5335)

(assert (=> b!4732906 (= lt!1895930 (+!2289 lt!1895722 (h!59274 lt!1895715)))))

(assert (=> b!4732906 (= lt!1895942 (addToMapMapFromBucket!1471 (t!360307 lt!1895715) (+!2289 lt!1895722 (h!59274 lt!1895715))))))

(declare-fun lt!1895931 () Unit!131653)

(declare-fun call!331018 () Unit!131653)

(assert (=> b!4732906 (= lt!1895931 call!331018)))

(assert (=> b!4732906 (forall!11648 (toList!5971 lt!1895722) lambda!217629)))

(declare-fun lt!1895934 () Unit!131653)

(assert (=> b!4732906 (= lt!1895934 lt!1895931)))

(declare-fun call!331019 () Bool)

(assert (=> b!4732906 call!331019))

(declare-fun lt!1895946 () Unit!131653)

(declare-fun Unit!131672 () Unit!131653)

(assert (=> b!4732906 (= lt!1895946 Unit!131672)))

(assert (=> b!4732906 (forall!11648 (t!360307 lt!1895715) lambda!217630)))

(declare-fun lt!1895950 () Unit!131653)

(declare-fun Unit!131673 () Unit!131653)

(assert (=> b!4732906 (= lt!1895950 Unit!131673)))

(declare-fun lt!1895932 () Unit!131653)

(declare-fun Unit!131674 () Unit!131653)

(assert (=> b!4732906 (= lt!1895932 Unit!131674)))

(declare-fun lt!1895947 () Unit!131653)

(assert (=> b!4732906 (= lt!1895947 (forallContained!3688 (toList!5971 lt!1895930) lambda!217630 (h!59274 lt!1895715)))))

(assert (=> b!4732906 (contains!16283 lt!1895930 (_1!30573 (h!59274 lt!1895715)))))

(declare-fun lt!1895943 () Unit!131653)

(declare-fun Unit!131675 () Unit!131653)

(assert (=> b!4732906 (= lt!1895943 Unit!131675)))

(assert (=> b!4732906 (contains!16283 lt!1895942 (_1!30573 (h!59274 lt!1895715)))))

(declare-fun lt!1895949 () Unit!131653)

(declare-fun Unit!131676 () Unit!131653)

(assert (=> b!4732906 (= lt!1895949 Unit!131676)))

(assert (=> b!4732906 (forall!11648 lt!1895715 lambda!217630)))

(declare-fun lt!1895937 () Unit!131653)

(declare-fun Unit!131677 () Unit!131653)

(assert (=> b!4732906 (= lt!1895937 Unit!131677)))

(assert (=> b!4732906 (forall!11648 (toList!5971 lt!1895930) lambda!217630)))

(declare-fun lt!1895940 () Unit!131653)

(declare-fun Unit!131678 () Unit!131653)

(assert (=> b!4732906 (= lt!1895940 Unit!131678)))

(declare-fun lt!1895933 () Unit!131653)

(declare-fun Unit!131679 () Unit!131653)

(assert (=> b!4732906 (= lt!1895933 Unit!131679)))

(declare-fun lt!1895935 () Unit!131653)

(assert (=> b!4732906 (= lt!1895935 (addForallContainsKeyThenBeforeAdding!816 lt!1895722 lt!1895942 (_1!30573 (h!59274 lt!1895715)) (_2!30573 (h!59274 lt!1895715))))))

(assert (=> b!4732906 (forall!11648 (toList!5971 lt!1895722) lambda!217630)))

(declare-fun lt!1895945 () Unit!131653)

(assert (=> b!4732906 (= lt!1895945 lt!1895935)))

(assert (=> b!4732906 call!331020))

(declare-fun lt!1895938 () Unit!131653)

(declare-fun Unit!131680 () Unit!131653)

(assert (=> b!4732906 (= lt!1895938 Unit!131680)))

(declare-fun res!2003978 () Bool)

(assert (=> b!4732906 (= res!2003978 (forall!11648 lt!1895715 lambda!217630))))

(assert (=> b!4732906 (=> (not res!2003978) (not e!2952089))))

(assert (=> b!4732906 e!2952089))

(declare-fun lt!1895939 () Unit!131653)

(declare-fun Unit!131681 () Unit!131653)

(assert (=> b!4732906 (= lt!1895939 Unit!131681)))

(declare-fun bm!331014 () Bool)

(assert (=> bm!331014 (= call!331018 (lemmaContainsAllItsOwnKeys!817 lt!1895722))))

(declare-fun bm!331015 () Bool)

(assert (=> bm!331015 (= call!331019 (forall!11648 (ite c!808288 (toList!5971 lt!1895722) (toList!5971 lt!1895930)) (ite c!808288 lambda!217628 lambda!217630)))))

(assert (=> b!4732907 (= e!2952088 lt!1895722)))

(declare-fun lt!1895948 () Unit!131653)

(assert (=> b!4732907 (= lt!1895948 call!331018)))

(assert (=> b!4732907 call!331020))

(declare-fun lt!1895936 () Unit!131653)

(assert (=> b!4732907 (= lt!1895936 lt!1895948)))

(assert (=> b!4732907 call!331019))

(declare-fun lt!1895941 () Unit!131653)

(declare-fun Unit!131682 () Unit!131653)

(assert (=> b!4732907 (= lt!1895941 Unit!131682)))

(assert (= (and d!1509543 c!808288) b!4732907))

(assert (= (and d!1509543 (not c!808288)) b!4732906))

(assert (= (and b!4732906 res!2003978) b!4732904))

(assert (= (or b!4732907 b!4732906) bm!331014))

(assert (= (or b!4732907 b!4732906) bm!331015))

(assert (= (or b!4732907 b!4732906) bm!331013))

(assert (= (and d!1509543 res!2003979) b!4732903))

(assert (= (and b!4732903 res!2003977) b!4732905))

(declare-fun m!5676001 () Bool)

(assert (=> b!4732906 m!5676001))

(declare-fun m!5676003 () Bool)

(assert (=> b!4732906 m!5676003))

(declare-fun m!5676005 () Bool)

(assert (=> b!4732906 m!5676005))

(declare-fun m!5676007 () Bool)

(assert (=> b!4732906 m!5676007))

(declare-fun m!5676009 () Bool)

(assert (=> b!4732906 m!5676009))

(assert (=> b!4732906 m!5676007))

(declare-fun m!5676011 () Bool)

(assert (=> b!4732906 m!5676011))

(declare-fun m!5676013 () Bool)

(assert (=> b!4732906 m!5676013))

(declare-fun m!5676015 () Bool)

(assert (=> b!4732906 m!5676015))

(declare-fun m!5676017 () Bool)

(assert (=> b!4732906 m!5676017))

(assert (=> b!4732906 m!5676011))

(declare-fun m!5676019 () Bool)

(assert (=> b!4732906 m!5676019))

(declare-fun m!5676021 () Bool)

(assert (=> b!4732906 m!5676021))

(assert (=> bm!331014 m!5675957))

(declare-fun m!5676023 () Bool)

(assert (=> bm!331015 m!5676023))

(assert (=> b!4732904 m!5676009))

(declare-fun m!5676025 () Bool)

(assert (=> d!1509543 m!5676025))

(assert (=> d!1509543 m!5675863))

(declare-fun m!5676027 () Bool)

(assert (=> b!4732905 m!5676027))

(declare-fun m!5676029 () Bool)

(assert (=> b!4732903 m!5676029))

(declare-fun m!5676031 () Bool)

(assert (=> bm!331013 m!5676031))

(assert (=> b!4732662 d!1509543))

(declare-fun d!1509545 () Bool)

(assert (=> d!1509545 (= (head!10285 oldBucket!34) (h!59274 oldBucket!34))))

(assert (=> b!4732662 d!1509545))

(declare-fun bs!1121085 () Bool)

(declare-fun d!1509547 () Bool)

(assert (= bs!1121085 (and d!1509547 start!482510)))

(declare-fun lambda!217632 () Int)

(assert (=> bs!1121085 (= lambda!217632 lambda!217567)))

(declare-fun bs!1121086 () Bool)

(assert (= bs!1121086 (and d!1509547 d!1509497)))

(assert (=> bs!1121086 (= lambda!217632 lambda!217578)))

(declare-fun bs!1121087 () Bool)

(assert (= bs!1121087 (and d!1509547 d!1509509)))

(assert (=> bs!1121087 (not (= lambda!217632 lambda!217582))))

(declare-fun bs!1121088 () Bool)

(assert (= bs!1121088 (and d!1509547 d!1509537)))

(assert (=> bs!1121088 (= lambda!217632 lambda!217627)))

(declare-fun lt!1895951 () ListMap!5335)

(assert (=> d!1509547 (invariantList!1532 (toList!5971 lt!1895951))))

(declare-fun e!2952090 () ListMap!5335)

(assert (=> d!1509547 (= lt!1895951 e!2952090)))

(declare-fun c!808289 () Bool)

(assert (=> d!1509547 (= c!808289 (is-Cons!52906 lt!1895714))))

(assert (=> d!1509547 (forall!11646 lt!1895714 lambda!217632)))

(assert (=> d!1509547 (= (extractMap!2067 lt!1895714) lt!1895951)))

(declare-fun b!4732908 () Bool)

(assert (=> b!4732908 (= e!2952090 (addToMapMapFromBucket!1471 (_2!30574 (h!59275 lt!1895714)) (extractMap!2067 (t!360308 lt!1895714))))))

(declare-fun b!4732909 () Bool)

(assert (=> b!4732909 (= e!2952090 (ListMap!5336 Nil!52905))))

(assert (= (and d!1509547 c!808289) b!4732908))

(assert (= (and d!1509547 (not c!808289)) b!4732909))

(declare-fun m!5676033 () Bool)

(assert (=> d!1509547 m!5676033))

(declare-fun m!5676035 () Bool)

(assert (=> d!1509547 m!5676035))

(declare-fun m!5676037 () Bool)

(assert (=> b!4732908 m!5676037))

(assert (=> b!4732908 m!5676037))

(declare-fun m!5676039 () Bool)

(assert (=> b!4732908 m!5676039))

(assert (=> b!4732662 d!1509547))

(declare-fun d!1509549 () Bool)

(assert (=> d!1509549 (eq!1138 (addToMapMapFromBucket!1471 (Cons!52905 lt!1895724 lt!1895715) lt!1895722) (+!2289 (addToMapMapFromBucket!1471 lt!1895715 lt!1895722) lt!1895724))))

(declare-fun lt!1895954 () Unit!131653)

(declare-fun choose!33499 (tuple2!54558 List!53029 ListMap!5335) Unit!131653)

(assert (=> d!1509549 (= lt!1895954 (choose!33499 lt!1895724 lt!1895715 lt!1895722))))

(assert (=> d!1509549 (noDuplicateKeys!2041 lt!1895715)))

(assert (=> d!1509549 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!387 lt!1895724 lt!1895715 lt!1895722) lt!1895954)))

(declare-fun bs!1121089 () Bool)

(assert (= bs!1121089 d!1509549))

(declare-fun m!5676041 () Bool)

(assert (=> bs!1121089 m!5676041))

(assert (=> bs!1121089 m!5675701))

(assert (=> bs!1121089 m!5675701))

(assert (=> bs!1121089 m!5675703))

(assert (=> bs!1121089 m!5675705))

(assert (=> bs!1121089 m!5675711))

(assert (=> bs!1121089 m!5675863))

(assert (=> bs!1121089 m!5675711))

(assert (=> bs!1121089 m!5675703))

(assert (=> b!4732662 d!1509549))

(declare-fun bs!1121090 () Bool)

(declare-fun b!4732914 () Bool)

(assert (= bs!1121090 (and b!4732914 b!4732906)))

(declare-fun lambda!217633 () Int)

(assert (=> bs!1121090 (= lambda!217633 lambda!217629)))

(assert (=> bs!1121090 (= (= lt!1895722 lt!1895942) (= lambda!217633 lambda!217630))))

(declare-fun bs!1121091 () Bool)

(assert (= bs!1121091 (and b!4732914 d!1509489)))

(assert (=> bs!1121091 (not (= lambda!217633 lambda!217575))))

(declare-fun bs!1121092 () Bool)

(assert (= bs!1121092 (and b!4732914 b!4732907)))

(assert (=> bs!1121092 (= lambda!217633 lambda!217628)))

(declare-fun bs!1121093 () Bool)

(assert (= bs!1121093 (and b!4732914 b!4732889)))

(assert (=> bs!1121093 (= lambda!217633 lambda!217623)))

(declare-fun bs!1121094 () Bool)

(assert (= bs!1121094 (and b!4732914 d!1509517)))

(assert (=> bs!1121094 (= (= lt!1895722 lt!1895914) (= lambda!217633 lambda!217626))))

(declare-fun bs!1121095 () Bool)

(assert (= bs!1121095 (and b!4732914 b!4732888)))

(assert (=> bs!1121095 (= (= lt!1895722 lt!1895912) (= lambda!217633 lambda!217625))))

(declare-fun bs!1121096 () Bool)

(assert (= bs!1121096 (and b!4732914 d!1509543)))

(assert (=> bs!1121096 (= (= lt!1895722 lt!1895944) (= lambda!217633 lambda!217631))))

(assert (=> bs!1121095 (= lambda!217633 lambda!217624)))

(declare-fun bs!1121097 () Bool)

(assert (= bs!1121097 (and b!4732914 d!1509507)))

(assert (=> bs!1121097 (not (= lambda!217633 lambda!217579))))

(assert (=> b!4732914 true))

(declare-fun bs!1121098 () Bool)

(declare-fun b!4732913 () Bool)

(assert (= bs!1121098 (and b!4732913 b!4732906)))

(declare-fun lambda!217634 () Int)

(assert (=> bs!1121098 (= lambda!217634 lambda!217629)))

(assert (=> bs!1121098 (= (= lt!1895722 lt!1895942) (= lambda!217634 lambda!217630))))

(declare-fun bs!1121099 () Bool)

(assert (= bs!1121099 (and b!4732913 d!1509489)))

(assert (=> bs!1121099 (not (= lambda!217634 lambda!217575))))

(declare-fun bs!1121100 () Bool)

(assert (= bs!1121100 (and b!4732913 b!4732889)))

(assert (=> bs!1121100 (= lambda!217634 lambda!217623)))

(declare-fun bs!1121101 () Bool)

(assert (= bs!1121101 (and b!4732913 d!1509517)))

(assert (=> bs!1121101 (= (= lt!1895722 lt!1895914) (= lambda!217634 lambda!217626))))

(declare-fun bs!1121102 () Bool)

(assert (= bs!1121102 (and b!4732913 b!4732888)))

(assert (=> bs!1121102 (= (= lt!1895722 lt!1895912) (= lambda!217634 lambda!217625))))

(declare-fun bs!1121103 () Bool)

(assert (= bs!1121103 (and b!4732913 d!1509543)))

(assert (=> bs!1121103 (= (= lt!1895722 lt!1895944) (= lambda!217634 lambda!217631))))

(assert (=> bs!1121102 (= lambda!217634 lambda!217624)))

(declare-fun bs!1121104 () Bool)

(assert (= bs!1121104 (and b!4732913 d!1509507)))

(assert (=> bs!1121104 (not (= lambda!217634 lambda!217579))))

(declare-fun bs!1121105 () Bool)

(assert (= bs!1121105 (and b!4732913 b!4732907)))

(assert (=> bs!1121105 (= lambda!217634 lambda!217628)))

(declare-fun bs!1121106 () Bool)

(assert (= bs!1121106 (and b!4732913 b!4732914)))

(assert (=> bs!1121106 (= lambda!217634 lambda!217633)))

(assert (=> b!4732913 true))

(declare-fun lt!1895967 () ListMap!5335)

(declare-fun lambda!217635 () Int)

(assert (=> bs!1121098 (= (= lt!1895967 lt!1895722) (= lambda!217635 lambda!217629))))

(assert (=> b!4732913 (= (= lt!1895967 lt!1895722) (= lambda!217635 lambda!217634))))

(assert (=> bs!1121098 (= (= lt!1895967 lt!1895942) (= lambda!217635 lambda!217630))))

(assert (=> bs!1121099 (not (= lambda!217635 lambda!217575))))

(assert (=> bs!1121100 (= (= lt!1895967 lt!1895722) (= lambda!217635 lambda!217623))))

(assert (=> bs!1121101 (= (= lt!1895967 lt!1895914) (= lambda!217635 lambda!217626))))

(assert (=> bs!1121102 (= (= lt!1895967 lt!1895912) (= lambda!217635 lambda!217625))))

(assert (=> bs!1121103 (= (= lt!1895967 lt!1895944) (= lambda!217635 lambda!217631))))

(assert (=> bs!1121102 (= (= lt!1895967 lt!1895722) (= lambda!217635 lambda!217624))))

(assert (=> bs!1121104 (not (= lambda!217635 lambda!217579))))

(assert (=> bs!1121105 (= (= lt!1895967 lt!1895722) (= lambda!217635 lambda!217628))))

(assert (=> bs!1121106 (= (= lt!1895967 lt!1895722) (= lambda!217635 lambda!217633))))

(assert (=> b!4732913 true))

(declare-fun bs!1121107 () Bool)

(declare-fun d!1509551 () Bool)

(assert (= bs!1121107 (and d!1509551 b!4732906)))

(declare-fun lt!1895969 () ListMap!5335)

(declare-fun lambda!217636 () Int)

(assert (=> bs!1121107 (= (= lt!1895969 lt!1895722) (= lambda!217636 lambda!217629))))

(declare-fun bs!1121108 () Bool)

(assert (= bs!1121108 (and d!1509551 b!4732913)))

(assert (=> bs!1121108 (= (= lt!1895969 lt!1895722) (= lambda!217636 lambda!217634))))

(assert (=> bs!1121107 (= (= lt!1895969 lt!1895942) (= lambda!217636 lambda!217630))))

(declare-fun bs!1121109 () Bool)

(assert (= bs!1121109 (and d!1509551 b!4732889)))

(assert (=> bs!1121109 (= (= lt!1895969 lt!1895722) (= lambda!217636 lambda!217623))))

(declare-fun bs!1121110 () Bool)

(assert (= bs!1121110 (and d!1509551 d!1509517)))

(assert (=> bs!1121110 (= (= lt!1895969 lt!1895914) (= lambda!217636 lambda!217626))))

(declare-fun bs!1121111 () Bool)

(assert (= bs!1121111 (and d!1509551 b!4732888)))

(assert (=> bs!1121111 (= (= lt!1895969 lt!1895912) (= lambda!217636 lambda!217625))))

(declare-fun bs!1121112 () Bool)

(assert (= bs!1121112 (and d!1509551 d!1509543)))

(assert (=> bs!1121112 (= (= lt!1895969 lt!1895944) (= lambda!217636 lambda!217631))))

(declare-fun bs!1121113 () Bool)

(assert (= bs!1121113 (and d!1509551 d!1509489)))

(assert (=> bs!1121113 (not (= lambda!217636 lambda!217575))))

(assert (=> bs!1121108 (= (= lt!1895969 lt!1895967) (= lambda!217636 lambda!217635))))

(assert (=> bs!1121111 (= (= lt!1895969 lt!1895722) (= lambda!217636 lambda!217624))))

(declare-fun bs!1121114 () Bool)

(assert (= bs!1121114 (and d!1509551 d!1509507)))

(assert (=> bs!1121114 (not (= lambda!217636 lambda!217579))))

(declare-fun bs!1121115 () Bool)

(assert (= bs!1121115 (and d!1509551 b!4732907)))

(assert (=> bs!1121115 (= (= lt!1895969 lt!1895722) (= lambda!217636 lambda!217628))))

(declare-fun bs!1121116 () Bool)

(assert (= bs!1121116 (and d!1509551 b!4732914)))

(assert (=> bs!1121116 (= (= lt!1895969 lt!1895722) (= lambda!217636 lambda!217633))))

(assert (=> d!1509551 true))

(declare-fun call!331023 () Bool)

(declare-fun c!808290 () Bool)

(declare-fun bm!331016 () Bool)

(assert (=> bm!331016 (= call!331023 (forall!11648 (toList!5971 lt!1895722) (ite c!808290 lambda!217633 lambda!217635)))))

(declare-fun b!4732910 () Bool)

(declare-fun res!2003980 () Bool)

(declare-fun e!2952091 () Bool)

(assert (=> b!4732910 (=> (not res!2003980) (not e!2952091))))

(assert (=> b!4732910 (= res!2003980 (forall!11648 (toList!5971 lt!1895722) lambda!217636))))

(declare-fun b!4732911 () Bool)

(declare-fun e!2952093 () Bool)

(assert (=> b!4732911 (= e!2952093 (forall!11648 (toList!5971 lt!1895722) lambda!217635))))

(assert (=> d!1509551 e!2952091))

(declare-fun res!2003982 () Bool)

(assert (=> d!1509551 (=> (not res!2003982) (not e!2952091))))

(assert (=> d!1509551 (= res!2003982 (forall!11648 (Cons!52905 lt!1895724 lt!1895715) lambda!217636))))

(declare-fun e!2952092 () ListMap!5335)

(assert (=> d!1509551 (= lt!1895969 e!2952092)))

(assert (=> d!1509551 (= c!808290 (is-Nil!52905 (Cons!52905 lt!1895724 lt!1895715)))))

(assert (=> d!1509551 (noDuplicateKeys!2041 (Cons!52905 lt!1895724 lt!1895715))))

(assert (=> d!1509551 (= (addToMapMapFromBucket!1471 (Cons!52905 lt!1895724 lt!1895715) lt!1895722) lt!1895969)))

(declare-fun b!4732912 () Bool)

(assert (=> b!4732912 (= e!2952091 (invariantList!1532 (toList!5971 lt!1895969)))))

(assert (=> b!4732913 (= e!2952092 lt!1895967)))

(declare-fun lt!1895955 () ListMap!5335)

(assert (=> b!4732913 (= lt!1895955 (+!2289 lt!1895722 (h!59274 (Cons!52905 lt!1895724 lt!1895715))))))

(assert (=> b!4732913 (= lt!1895967 (addToMapMapFromBucket!1471 (t!360307 (Cons!52905 lt!1895724 lt!1895715)) (+!2289 lt!1895722 (h!59274 (Cons!52905 lt!1895724 lt!1895715)))))))

(declare-fun lt!1895956 () Unit!131653)

(declare-fun call!331021 () Unit!131653)

(assert (=> b!4732913 (= lt!1895956 call!331021)))

(assert (=> b!4732913 (forall!11648 (toList!5971 lt!1895722) lambda!217634)))

(declare-fun lt!1895959 () Unit!131653)

(assert (=> b!4732913 (= lt!1895959 lt!1895956)))

(declare-fun call!331022 () Bool)

(assert (=> b!4732913 call!331022))

(declare-fun lt!1895971 () Unit!131653)

(declare-fun Unit!131685 () Unit!131653)

(assert (=> b!4732913 (= lt!1895971 Unit!131685)))

(assert (=> b!4732913 (forall!11648 (t!360307 (Cons!52905 lt!1895724 lt!1895715)) lambda!217635)))

(declare-fun lt!1895975 () Unit!131653)

(declare-fun Unit!131686 () Unit!131653)

(assert (=> b!4732913 (= lt!1895975 Unit!131686)))

(declare-fun lt!1895957 () Unit!131653)

(declare-fun Unit!131687 () Unit!131653)

(assert (=> b!4732913 (= lt!1895957 Unit!131687)))

(declare-fun lt!1895972 () Unit!131653)

(assert (=> b!4732913 (= lt!1895972 (forallContained!3688 (toList!5971 lt!1895955) lambda!217635 (h!59274 (Cons!52905 lt!1895724 lt!1895715))))))

(assert (=> b!4732913 (contains!16283 lt!1895955 (_1!30573 (h!59274 (Cons!52905 lt!1895724 lt!1895715))))))

(declare-fun lt!1895968 () Unit!131653)

(declare-fun Unit!131688 () Unit!131653)

(assert (=> b!4732913 (= lt!1895968 Unit!131688)))

(assert (=> b!4732913 (contains!16283 lt!1895967 (_1!30573 (h!59274 (Cons!52905 lt!1895724 lt!1895715))))))

(declare-fun lt!1895974 () Unit!131653)

(declare-fun Unit!131689 () Unit!131653)

(assert (=> b!4732913 (= lt!1895974 Unit!131689)))

(assert (=> b!4732913 (forall!11648 (Cons!52905 lt!1895724 lt!1895715) lambda!217635)))

(declare-fun lt!1895962 () Unit!131653)

(declare-fun Unit!131690 () Unit!131653)

(assert (=> b!4732913 (= lt!1895962 Unit!131690)))

(assert (=> b!4732913 (forall!11648 (toList!5971 lt!1895955) lambda!217635)))

(declare-fun lt!1895965 () Unit!131653)

(declare-fun Unit!131691 () Unit!131653)

(assert (=> b!4732913 (= lt!1895965 Unit!131691)))

(declare-fun lt!1895958 () Unit!131653)

(declare-fun Unit!131692 () Unit!131653)

(assert (=> b!4732913 (= lt!1895958 Unit!131692)))

(declare-fun lt!1895960 () Unit!131653)

(assert (=> b!4732913 (= lt!1895960 (addForallContainsKeyThenBeforeAdding!816 lt!1895722 lt!1895967 (_1!30573 (h!59274 (Cons!52905 lt!1895724 lt!1895715))) (_2!30573 (h!59274 (Cons!52905 lt!1895724 lt!1895715)))))))

(assert (=> b!4732913 (forall!11648 (toList!5971 lt!1895722) lambda!217635)))

(declare-fun lt!1895970 () Unit!131653)

(assert (=> b!4732913 (= lt!1895970 lt!1895960)))

(assert (=> b!4732913 call!331023))

(declare-fun lt!1895963 () Unit!131653)

(declare-fun Unit!131693 () Unit!131653)

(assert (=> b!4732913 (= lt!1895963 Unit!131693)))

(declare-fun res!2003981 () Bool)

(assert (=> b!4732913 (= res!2003981 (forall!11648 (Cons!52905 lt!1895724 lt!1895715) lambda!217635))))

(assert (=> b!4732913 (=> (not res!2003981) (not e!2952093))))

(assert (=> b!4732913 e!2952093))

(declare-fun lt!1895964 () Unit!131653)

(declare-fun Unit!131694 () Unit!131653)

(assert (=> b!4732913 (= lt!1895964 Unit!131694)))

(declare-fun bm!331017 () Bool)

(assert (=> bm!331017 (= call!331021 (lemmaContainsAllItsOwnKeys!817 lt!1895722))))

(declare-fun bm!331018 () Bool)

(assert (=> bm!331018 (= call!331022 (forall!11648 (ite c!808290 (toList!5971 lt!1895722) (toList!5971 lt!1895955)) (ite c!808290 lambda!217633 lambda!217635)))))

(assert (=> b!4732914 (= e!2952092 lt!1895722)))

(declare-fun lt!1895973 () Unit!131653)

(assert (=> b!4732914 (= lt!1895973 call!331021)))

(assert (=> b!4732914 call!331023))

(declare-fun lt!1895961 () Unit!131653)

(assert (=> b!4732914 (= lt!1895961 lt!1895973)))

(assert (=> b!4732914 call!331022))

(declare-fun lt!1895966 () Unit!131653)

(declare-fun Unit!131695 () Unit!131653)

(assert (=> b!4732914 (= lt!1895966 Unit!131695)))

(assert (= (and d!1509551 c!808290) b!4732914))

(assert (= (and d!1509551 (not c!808290)) b!4732913))

(assert (= (and b!4732913 res!2003981) b!4732911))

(assert (= (or b!4732914 b!4732913) bm!331017))

(assert (= (or b!4732914 b!4732913) bm!331018))

(assert (= (or b!4732914 b!4732913) bm!331016))

(assert (= (and d!1509551 res!2003982) b!4732910))

(assert (= (and b!4732910 res!2003980) b!4732912))

(declare-fun m!5676043 () Bool)

(assert (=> b!4732913 m!5676043))

(declare-fun m!5676045 () Bool)

(assert (=> b!4732913 m!5676045))

(declare-fun m!5676047 () Bool)

(assert (=> b!4732913 m!5676047))

(declare-fun m!5676049 () Bool)

(assert (=> b!4732913 m!5676049))

(declare-fun m!5676051 () Bool)

(assert (=> b!4732913 m!5676051))

(assert (=> b!4732913 m!5676049))

(declare-fun m!5676053 () Bool)

(assert (=> b!4732913 m!5676053))

(declare-fun m!5676055 () Bool)

(assert (=> b!4732913 m!5676055))

(declare-fun m!5676057 () Bool)

(assert (=> b!4732913 m!5676057))

(declare-fun m!5676059 () Bool)

(assert (=> b!4732913 m!5676059))

(assert (=> b!4732913 m!5676053))

(declare-fun m!5676061 () Bool)

(assert (=> b!4732913 m!5676061))

(declare-fun m!5676063 () Bool)

(assert (=> b!4732913 m!5676063))

(assert (=> bm!331017 m!5675957))

(declare-fun m!5676065 () Bool)

(assert (=> bm!331018 m!5676065))

(assert (=> b!4732911 m!5676051))

(declare-fun m!5676067 () Bool)

(assert (=> d!1509551 m!5676067))

(declare-fun m!5676069 () Bool)

(assert (=> d!1509551 m!5676069))

(declare-fun m!5676071 () Bool)

(assert (=> b!4732912 m!5676071))

(declare-fun m!5676073 () Bool)

(assert (=> b!4732910 m!5676073))

(declare-fun m!5676075 () Bool)

(assert (=> bm!331016 m!5676075))

(assert (=> b!4732662 d!1509551))

(declare-fun bs!1121117 () Bool)

(declare-fun d!1509553 () Bool)

(assert (= bs!1121117 (and d!1509553 d!1509509)))

(declare-fun lambda!217639 () Int)

(assert (=> bs!1121117 (not (= lambda!217639 lambda!217582))))

(declare-fun bs!1121118 () Bool)

(assert (= bs!1121118 (and d!1509553 d!1509537)))

(assert (=> bs!1121118 (= lambda!217639 lambda!217627)))

(declare-fun bs!1121119 () Bool)

(assert (= bs!1121119 (and d!1509553 d!1509547)))

(assert (=> bs!1121119 (= lambda!217639 lambda!217632)))

(declare-fun bs!1121120 () Bool)

(assert (= bs!1121120 (and d!1509553 d!1509497)))

(assert (=> bs!1121120 (= lambda!217639 lambda!217578)))

(declare-fun bs!1121121 () Bool)

(assert (= bs!1121121 (and d!1509553 start!482510)))

(assert (=> bs!1121121 (= lambda!217639 lambda!217567)))

(assert (=> d!1509553 (contains!16283 (extractMap!2067 (toList!5972 (ListLongMap!4502 lt!1895714))) key!4653)))

(declare-fun lt!1895978 () Unit!131653)

(declare-fun choose!33500 (ListLongMap!4501 K!14253 Hashable!6410) Unit!131653)

(assert (=> d!1509553 (= lt!1895978 (choose!33500 (ListLongMap!4502 lt!1895714) key!4653 hashF!1323))))

(assert (=> d!1509553 (forall!11646 (toList!5972 (ListLongMap!4502 lt!1895714)) lambda!217639)))

(assert (=> d!1509553 (= (lemmaListContainsThenExtractedMapContains!549 (ListLongMap!4502 lt!1895714) key!4653 hashF!1323) lt!1895978)))

(declare-fun bs!1121122 () Bool)

(assert (= bs!1121122 d!1509553))

(declare-fun m!5676077 () Bool)

(assert (=> bs!1121122 m!5676077))

(assert (=> bs!1121122 m!5676077))

(declare-fun m!5676079 () Bool)

(assert (=> bs!1121122 m!5676079))

(declare-fun m!5676081 () Bool)

(assert (=> bs!1121122 m!5676081))

(declare-fun m!5676083 () Bool)

(assert (=> bs!1121122 m!5676083))

(assert (=> b!4732662 d!1509553))

(declare-fun d!1509555 () Bool)

(declare-fun res!2003983 () Bool)

(declare-fun e!2952094 () Bool)

(assert (=> d!1509555 (=> res!2003983 e!2952094)))

(assert (=> d!1509555 (= res!2003983 (not (is-Cons!52905 lt!1895716)))))

(assert (=> d!1509555 (= (noDuplicateKeys!2041 lt!1895716) e!2952094)))

(declare-fun b!4732915 () Bool)

(declare-fun e!2952095 () Bool)

(assert (=> b!4732915 (= e!2952094 e!2952095)))

(declare-fun res!2003984 () Bool)

(assert (=> b!4732915 (=> (not res!2003984) (not e!2952095))))

(assert (=> b!4732915 (= res!2003984 (not (containsKey!3430 (t!360307 lt!1895716) (_1!30573 (h!59274 lt!1895716)))))))

(declare-fun b!4732916 () Bool)

(assert (=> b!4732916 (= e!2952095 (noDuplicateKeys!2041 (t!360307 lt!1895716)))))

(assert (= (and d!1509555 (not res!2003983)) b!4732915))

(assert (= (and b!4732915 res!2003984) b!4732916))

(declare-fun m!5676085 () Bool)

(assert (=> b!4732915 m!5676085))

(declare-fun m!5676087 () Bool)

(assert (=> b!4732916 m!5676087))

(assert (=> b!4732662 d!1509555))

(declare-fun d!1509557 () Bool)

(declare-fun e!2952102 () Bool)

(assert (=> d!1509557 e!2952102))

(declare-fun res!2003998 () Bool)

(assert (=> d!1509557 (=> (not res!2003998) (not e!2952102))))

(declare-fun lt!1896006 () ListMap!5335)

(assert (=> d!1509557 (= res!2003998 (contains!16283 lt!1896006 (_1!30573 lt!1895724)))))

(declare-fun lt!1896004 () List!53029)

(assert (=> d!1509557 (= lt!1896006 (ListMap!5336 lt!1896004))))

(declare-fun lt!1896003 () Unit!131653)

(declare-fun lt!1896005 () Unit!131653)

(assert (=> d!1509557 (= lt!1896003 lt!1896005)))

(assert (=> d!1509557 (= (getValueByKey!1994 lt!1896004 (_1!30573 lt!1895724)) (Some!12417 (_2!30573 lt!1895724)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1099 (List!53029 K!14253 V!14499) Unit!131653)

(assert (=> d!1509557 (= lt!1896005 (lemmaContainsTupThenGetReturnValue!1099 lt!1896004 (_1!30573 lt!1895724) (_2!30573 lt!1895724)))))

(declare-fun insertNoDuplicatedKeys!607 (List!53029 K!14253 V!14499) List!53029)

(assert (=> d!1509557 (= lt!1896004 (insertNoDuplicatedKeys!607 (toList!5971 (addToMapMapFromBucket!1471 lt!1895715 lt!1895722)) (_1!30573 lt!1895724) (_2!30573 lt!1895724)))))

(assert (=> d!1509557 (= (+!2289 (addToMapMapFromBucket!1471 lt!1895715 lt!1895722) lt!1895724) lt!1896006)))

(declare-fun b!4732929 () Bool)

(declare-fun res!2003997 () Bool)

(assert (=> b!4732929 (=> (not res!2003997) (not e!2952102))))

(assert (=> b!4732929 (= res!2003997 (= (getValueByKey!1994 (toList!5971 lt!1896006) (_1!30573 lt!1895724)) (Some!12417 (_2!30573 lt!1895724))))))

(declare-fun b!4732930 () Bool)

(declare-fun contains!16291 (List!53029 tuple2!54558) Bool)

(assert (=> b!4732930 (= e!2952102 (contains!16291 (toList!5971 lt!1896006) lt!1895724))))

(assert (= (and d!1509557 res!2003998) b!4732929))

(assert (= (and b!4732929 res!2003997) b!4732930))

(declare-fun m!5676089 () Bool)

(assert (=> d!1509557 m!5676089))

(declare-fun m!5676091 () Bool)

(assert (=> d!1509557 m!5676091))

(declare-fun m!5676093 () Bool)

(assert (=> d!1509557 m!5676093))

(declare-fun m!5676095 () Bool)

(assert (=> d!1509557 m!5676095))

(declare-fun m!5676097 () Bool)

(assert (=> b!4732929 m!5676097))

(declare-fun m!5676099 () Bool)

(assert (=> b!4732930 m!5676099))

(assert (=> b!4732662 d!1509557))

(declare-fun d!1509559 () Bool)

(declare-fun content!9435 (List!53029) (Set tuple2!54558))

(assert (=> d!1509559 (= (eq!1138 (addToMapMapFromBucket!1471 (Cons!52905 lt!1895724 lt!1895715) lt!1895722) (+!2289 (addToMapMapFromBucket!1471 lt!1895715 lt!1895722) lt!1895724)) (= (content!9435 (toList!5971 (addToMapMapFromBucket!1471 (Cons!52905 lt!1895724 lt!1895715) lt!1895722))) (content!9435 (toList!5971 (+!2289 (addToMapMapFromBucket!1471 lt!1895715 lt!1895722) lt!1895724)))))))

(declare-fun bs!1121127 () Bool)

(assert (= bs!1121127 d!1509559))

(declare-fun m!5676101 () Bool)

(assert (=> bs!1121127 m!5676101))

(declare-fun m!5676103 () Bool)

(assert (=> bs!1121127 m!5676103))

(assert (=> b!4732662 d!1509559))

(declare-fun b!4732938 () Bool)

(declare-fun e!2952105 () List!53029)

(assert (=> b!4732938 (= e!2952105 Nil!52905)))

(declare-fun d!1509561 () Bool)

(declare-fun lt!1896015 () List!53029)

(assert (=> d!1509561 (not (containsKey!3430 lt!1896015 key!4653))))

(declare-fun e!2952106 () List!53029)

(assert (=> d!1509561 (= lt!1896015 e!2952106)))

(declare-fun c!808291 () Bool)

(assert (=> d!1509561 (= c!808291 (and (is-Cons!52905 oldBucket!34) (= (_1!30573 (h!59274 oldBucket!34)) key!4653)))))

(assert (=> d!1509561 (noDuplicateKeys!2041 oldBucket!34)))

(assert (=> d!1509561 (= (removePairForKey!1636 oldBucket!34 key!4653) lt!1896015)))

(declare-fun b!4732935 () Bool)

(assert (=> b!4732935 (= e!2952106 (t!360307 oldBucket!34))))

(declare-fun b!4732937 () Bool)

(assert (=> b!4732937 (= e!2952105 (Cons!52905 (h!59274 oldBucket!34) (removePairForKey!1636 (t!360307 oldBucket!34) key!4653)))))

(declare-fun b!4732936 () Bool)

(assert (=> b!4732936 (= e!2952106 e!2952105)))

(declare-fun c!808292 () Bool)

(assert (=> b!4732936 (= c!808292 (is-Cons!52905 oldBucket!34))))

(assert (= (and d!1509561 c!808291) b!4732935))

(assert (= (and d!1509561 (not c!808291)) b!4732936))

(assert (= (and b!4732936 c!808292) b!4732937))

(assert (= (and b!4732936 (not c!808292)) b!4732938))

(declare-fun m!5676107 () Bool)

(assert (=> d!1509561 m!5676107))

(assert (=> d!1509561 m!5675719))

(assert (=> b!4732937 m!5675645))

(assert (=> b!4732674 d!1509561))

(declare-fun d!1509563 () Bool)

(declare-fun res!2004003 () Bool)

(declare-fun e!2952107 () Bool)

(assert (=> d!1509563 (=> res!2004003 e!2952107)))

(assert (=> d!1509563 (= res!2004003 (not (is-Cons!52905 newBucket!218)))))

(assert (=> d!1509563 (= (noDuplicateKeys!2041 newBucket!218) e!2952107)))

(declare-fun b!4732939 () Bool)

(declare-fun e!2952108 () Bool)

(assert (=> b!4732939 (= e!2952107 e!2952108)))

(declare-fun res!2004004 () Bool)

(assert (=> b!4732939 (=> (not res!2004004) (not e!2952108))))

(assert (=> b!4732939 (= res!2004004 (not (containsKey!3430 (t!360307 newBucket!218) (_1!30573 (h!59274 newBucket!218)))))))

(declare-fun b!4732940 () Bool)

(assert (=> b!4732940 (= e!2952108 (noDuplicateKeys!2041 (t!360307 newBucket!218)))))

(assert (= (and d!1509563 (not res!2004003)) b!4732939))

(assert (= (and b!4732939 res!2004004) b!4732940))

(declare-fun m!5676117 () Bool)

(assert (=> b!4732939 m!5676117))

(declare-fun m!5676119 () Bool)

(assert (=> b!4732940 m!5676119))

(assert (=> b!4732663 d!1509563))

(declare-fun d!1509565 () Bool)

(declare-fun e!2952119 () Bool)

(assert (=> d!1509565 e!2952119))

(declare-fun res!2004012 () Bool)

(assert (=> d!1509565 (=> res!2004012 e!2952119)))

(declare-fun lt!1896033 () Bool)

(assert (=> d!1509565 (= res!2004012 (not lt!1896033))))

(declare-fun lt!1896031 () Bool)

(assert (=> d!1509565 (= lt!1896033 lt!1896031)))

(declare-fun lt!1896030 () Unit!131653)

(declare-fun e!2952118 () Unit!131653)

(assert (=> d!1509565 (= lt!1896030 e!2952118)))

(declare-fun c!808295 () Bool)

(assert (=> d!1509565 (= c!808295 lt!1896031)))

(declare-fun containsKey!3435 (List!53030 (_ BitVec 64)) Bool)

(assert (=> d!1509565 (= lt!1896031 (containsKey!3435 (toList!5972 lm!2023) lt!1895728))))

(assert (=> d!1509565 (= (contains!16285 lm!2023 lt!1895728) lt!1896033)))

(declare-fun b!4732950 () Bool)

(declare-fun lt!1896032 () Unit!131653)

(assert (=> b!4732950 (= e!2952118 lt!1896032)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1888 (List!53030 (_ BitVec 64)) Unit!131653)

(assert (=> b!4732950 (= lt!1896032 (lemmaContainsKeyImpliesGetValueByKeyDefined!1888 (toList!5972 lm!2023) lt!1895728))))

(declare-datatypes ((Option!12421 0))(
  ( (None!12420) (Some!12420 (v!47053 List!53029)) )
))
(declare-fun isDefined!9675 (Option!12421) Bool)

(declare-fun getValueByKey!1997 (List!53030 (_ BitVec 64)) Option!12421)

(assert (=> b!4732950 (isDefined!9675 (getValueByKey!1997 (toList!5972 lm!2023) lt!1895728))))

(declare-fun b!4732953 () Bool)

(declare-fun Unit!131697 () Unit!131653)

(assert (=> b!4732953 (= e!2952118 Unit!131697)))

(declare-fun b!4732954 () Bool)

(assert (=> b!4732954 (= e!2952119 (isDefined!9675 (getValueByKey!1997 (toList!5972 lm!2023) lt!1895728)))))

(assert (= (and d!1509565 c!808295) b!4732950))

(assert (= (and d!1509565 (not c!808295)) b!4732953))

(assert (= (and d!1509565 (not res!2004012)) b!4732954))

(declare-fun m!5676139 () Bool)

(assert (=> d!1509565 m!5676139))

(declare-fun m!5676141 () Bool)

(assert (=> b!4732950 m!5676141))

(declare-fun m!5676143 () Bool)

(assert (=> b!4732950 m!5676143))

(assert (=> b!4732950 m!5676143))

(declare-fun m!5676145 () Bool)

(assert (=> b!4732950 m!5676145))

(assert (=> b!4732954 m!5676143))

(assert (=> b!4732954 m!5676143))

(assert (=> b!4732954 m!5676145))

(assert (=> b!4732675 d!1509565))

(declare-fun d!1509573 () Bool)

(assert (=> d!1509573 (dynLambda!21854 lambda!217567 lt!1895718)))

(declare-fun lt!1896036 () Unit!131653)

(declare-fun choose!33504 (List!53030 Int tuple2!54560) Unit!131653)

(assert (=> d!1509573 (= lt!1896036 (choose!33504 (toList!5972 lm!2023) lambda!217567 lt!1895718))))

(declare-fun e!2952126 () Bool)

(assert (=> d!1509573 e!2952126))

(declare-fun res!2004019 () Bool)

(assert (=> d!1509573 (=> (not res!2004019) (not e!2952126))))

(assert (=> d!1509573 (= res!2004019 (forall!11646 (toList!5972 lm!2023) lambda!217567))))

(assert (=> d!1509573 (= (forallContained!3686 (toList!5972 lm!2023) lambda!217567 lt!1895718) lt!1896036)))

(declare-fun b!4732961 () Bool)

(assert (=> b!4732961 (= e!2952126 (contains!16284 (toList!5972 lm!2023) lt!1895718))))

(assert (= (and d!1509573 res!2004019) b!4732961))

(declare-fun b_lambda!180617 () Bool)

(assert (=> (not b_lambda!180617) (not d!1509573)))

(declare-fun m!5676151 () Bool)

(assert (=> d!1509573 m!5676151))

(declare-fun m!5676153 () Bool)

(assert (=> d!1509573 m!5676153))

(assert (=> d!1509573 m!5675679))

(assert (=> b!4732961 m!5675663))

(assert (=> b!4732675 d!1509573))

(declare-fun d!1509579 () Bool)

(assert (=> d!1509579 (contains!16284 (toList!5972 lm!2023) (tuple2!54561 lt!1895728 lt!1895721))))

(declare-fun lt!1896042 () Unit!131653)

(declare-fun choose!33506 (ListLongMap!4501 (_ BitVec 64) List!53029) Unit!131653)

(assert (=> d!1509579 (= lt!1896042 (choose!33506 lm!2023 lt!1895728 lt!1895721))))

(assert (=> d!1509579 (contains!16285 lm!2023 lt!1895728)))

(assert (=> d!1509579 (= (lemmaGetValueImpliesTupleContained!386 lm!2023 lt!1895728 lt!1895721) lt!1896042)))

(declare-fun bs!1121131 () Bool)

(assert (= bs!1121131 d!1509579))

(declare-fun m!5676159 () Bool)

(assert (=> bs!1121131 m!5676159))

(declare-fun m!5676161 () Bool)

(assert (=> bs!1121131 m!5676161))

(assert (=> bs!1121131 m!5675665))

(assert (=> b!4732675 d!1509579))

(declare-fun bs!1121132 () Bool)

(declare-fun d!1509585 () Bool)

(assert (= bs!1121132 (and d!1509585 d!1509509)))

(declare-fun lambda!217649 () Int)

(assert (=> bs!1121132 (not (= lambda!217649 lambda!217582))))

(declare-fun bs!1121133 () Bool)

(assert (= bs!1121133 (and d!1509585 d!1509537)))

(assert (=> bs!1121133 (= lambda!217649 lambda!217627)))

(declare-fun bs!1121134 () Bool)

(assert (= bs!1121134 (and d!1509585 d!1509547)))

(assert (=> bs!1121134 (= lambda!217649 lambda!217632)))

(declare-fun bs!1121135 () Bool)

(assert (= bs!1121135 (and d!1509585 d!1509553)))

(assert (=> bs!1121135 (= lambda!217649 lambda!217639)))

(declare-fun bs!1121136 () Bool)

(assert (= bs!1121136 (and d!1509585 d!1509497)))

(assert (=> bs!1121136 (= lambda!217649 lambda!217578)))

(declare-fun bs!1121137 () Bool)

(assert (= bs!1121137 (and d!1509585 start!482510)))

(assert (=> bs!1121137 (= lambda!217649 lambda!217567)))

(assert (=> d!1509585 (contains!16285 lm!2023 (hash!4431 hashF!1323 key!4653))))

(declare-fun lt!1896047 () Unit!131653)

(declare-fun choose!33508 (ListLongMap!4501 K!14253 Hashable!6410) Unit!131653)

(assert (=> d!1509585 (= lt!1896047 (choose!33508 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1509585 (forall!11646 (toList!5972 lm!2023) lambda!217649)))

(assert (=> d!1509585 (= (lemmaInGenMapThenLongMapContainsHash!787 lm!2023 key!4653 hashF!1323) lt!1896047)))

(declare-fun bs!1121138 () Bool)

(assert (= bs!1121138 d!1509585))

(assert (=> bs!1121138 m!5675693))

(assert (=> bs!1121138 m!5675693))

(declare-fun m!5676163 () Bool)

(assert (=> bs!1121138 m!5676163))

(declare-fun m!5676165 () Bool)

(assert (=> bs!1121138 m!5676165))

(declare-fun m!5676167 () Bool)

(assert (=> bs!1121138 m!5676167))

(assert (=> b!4732675 d!1509585))

(declare-fun d!1509587 () Bool)

(declare-fun get!17768 (Option!12421) List!53029)

(assert (=> d!1509587 (= (apply!12466 lm!2023 lt!1895728) (get!17768 (getValueByKey!1997 (toList!5972 lm!2023) lt!1895728)))))

(declare-fun bs!1121139 () Bool)

(assert (= bs!1121139 d!1509587))

(assert (=> bs!1121139 m!5676143))

(assert (=> bs!1121139 m!5676143))

(declare-fun m!5676177 () Bool)

(assert (=> bs!1121139 m!5676177))

(assert (=> b!4732675 d!1509587))

(declare-fun bs!1121153 () Bool)

(declare-fun d!1509589 () Bool)

(assert (= bs!1121153 (and d!1509589 d!1509509)))

(declare-fun lambda!217660 () Int)

(assert (=> bs!1121153 (not (= lambda!217660 lambda!217582))))

(declare-fun bs!1121154 () Bool)

(assert (= bs!1121154 (and d!1509589 d!1509537)))

(assert (=> bs!1121154 (= lambda!217660 lambda!217627)))

(declare-fun bs!1121155 () Bool)

(assert (= bs!1121155 (and d!1509589 d!1509585)))

(assert (=> bs!1121155 (= lambda!217660 lambda!217649)))

(declare-fun bs!1121156 () Bool)

(assert (= bs!1121156 (and d!1509589 d!1509547)))

(assert (=> bs!1121156 (= lambda!217660 lambda!217632)))

(declare-fun bs!1121157 () Bool)

(assert (= bs!1121157 (and d!1509589 d!1509553)))

(assert (=> bs!1121157 (= lambda!217660 lambda!217639)))

(declare-fun bs!1121158 () Bool)

(assert (= bs!1121158 (and d!1509589 d!1509497)))

(assert (=> bs!1121158 (= lambda!217660 lambda!217578)))

(declare-fun bs!1121159 () Bool)

(assert (= bs!1121159 (and d!1509589 start!482510)))

(assert (=> bs!1121159 (= lambda!217660 lambda!217567)))

(declare-fun b!4733021 () Bool)

(declare-fun res!2004060 () Bool)

(declare-fun e!2952165 () Bool)

(assert (=> b!4733021 (=> (not res!2004060) (not e!2952165))))

(assert (=> b!4733021 (= res!2004060 (allKeysSameHashInMap!1955 lm!2023 hashF!1323))))

(declare-fun b!4733023 () Bool)

(assert (=> b!4733023 (= e!2952165 (isDefined!9670 (getPair!581 (apply!12466 lm!2023 (hash!4431 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1896091 () Unit!131653)

(assert (=> b!4733023 (= lt!1896091 (forallContained!3686 (toList!5972 lm!2023) lambda!217660 (tuple2!54561 (hash!4431 hashF!1323 key!4653) (apply!12466 lm!2023 (hash!4431 hashF!1323 key!4653)))))))

(declare-fun lt!1896092 () Unit!131653)

(declare-fun lt!1896096 () Unit!131653)

(assert (=> b!4733023 (= lt!1896092 lt!1896096)))

(declare-fun lt!1896095 () (_ BitVec 64))

(declare-fun lt!1896089 () List!53029)

(assert (=> b!4733023 (contains!16284 (toList!5972 lm!2023) (tuple2!54561 lt!1896095 lt!1896089))))

(assert (=> b!4733023 (= lt!1896096 (lemmaGetValueImpliesTupleContained!386 lm!2023 lt!1896095 lt!1896089))))

(declare-fun e!2952164 () Bool)

(assert (=> b!4733023 e!2952164))

(declare-fun res!2004057 () Bool)

(assert (=> b!4733023 (=> (not res!2004057) (not e!2952164))))

(assert (=> b!4733023 (= res!2004057 (contains!16285 lm!2023 lt!1896095))))

(assert (=> b!4733023 (= lt!1896089 (apply!12466 lm!2023 (hash!4431 hashF!1323 key!4653)))))

(assert (=> b!4733023 (= lt!1896095 (hash!4431 hashF!1323 key!4653))))

(declare-fun lt!1896094 () Unit!131653)

(declare-fun lt!1896093 () Unit!131653)

(assert (=> b!4733023 (= lt!1896094 lt!1896093)))

(assert (=> b!4733023 (contains!16285 lm!2023 (hash!4431 hashF!1323 key!4653))))

(assert (=> b!4733023 (= lt!1896093 (lemmaInGenMapThenLongMapContainsHash!787 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4733022 () Bool)

(declare-fun res!2004059 () Bool)

(assert (=> b!4733022 (=> (not res!2004059) (not e!2952165))))

(assert (=> b!4733022 (= res!2004059 (contains!16283 (extractMap!2067 (toList!5972 lm!2023)) key!4653))))

(assert (=> d!1509589 e!2952165))

(declare-fun res!2004058 () Bool)

(assert (=> d!1509589 (=> (not res!2004058) (not e!2952165))))

(assert (=> d!1509589 (= res!2004058 (forall!11646 (toList!5972 lm!2023) lambda!217660))))

(declare-fun lt!1896090 () Unit!131653)

(declare-fun choose!33509 (ListLongMap!4501 K!14253 Hashable!6410) Unit!131653)

(assert (=> d!1509589 (= lt!1896090 (choose!33509 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1509589 (forall!11646 (toList!5972 lm!2023) lambda!217660)))

(assert (=> d!1509589 (= (lemmaInGenMapThenGetPairDefined!377 lm!2023 key!4653 hashF!1323) lt!1896090)))

(declare-fun b!4733024 () Bool)

(assert (=> b!4733024 (= e!2952164 (= (getValueByKey!1997 (toList!5972 lm!2023) lt!1896095) (Some!12420 lt!1896089)))))

(assert (= (and d!1509589 res!2004058) b!4733021))

(assert (= (and b!4733021 res!2004060) b!4733022))

(assert (= (and b!4733022 res!2004059) b!4733023))

(assert (= (and b!4733023 res!2004057) b!4733024))

(declare-fun m!5676239 () Bool)

(assert (=> b!4733024 m!5676239))

(declare-fun m!5676241 () Bool)

(assert (=> d!1509589 m!5676241))

(declare-fun m!5676243 () Bool)

(assert (=> d!1509589 m!5676243))

(assert (=> d!1509589 m!5676241))

(assert (=> b!4733021 m!5675691))

(assert (=> b!4733022 m!5675723))

(assert (=> b!4733022 m!5675723))

(declare-fun m!5676245 () Bool)

(assert (=> b!4733022 m!5676245))

(declare-fun m!5676247 () Bool)

(assert (=> b!4733023 m!5676247))

(declare-fun m!5676249 () Bool)

(assert (=> b!4733023 m!5676249))

(declare-fun m!5676251 () Bool)

(assert (=> b!4733023 m!5676251))

(assert (=> b!4733023 m!5676251))

(declare-fun m!5676253 () Bool)

(assert (=> b!4733023 m!5676253))

(assert (=> b!4733023 m!5675693))

(assert (=> b!4733023 m!5676249))

(assert (=> b!4733023 m!5675667))

(declare-fun m!5676255 () Bool)

(assert (=> b!4733023 m!5676255))

(declare-fun m!5676257 () Bool)

(assert (=> b!4733023 m!5676257))

(assert (=> b!4733023 m!5675693))

(assert (=> b!4733023 m!5676163))

(assert (=> b!4733023 m!5675693))

(declare-fun m!5676259 () Bool)

(assert (=> b!4733023 m!5676259))

(assert (=> b!4732675 d!1509589))

(declare-fun d!1509607 () Bool)

(assert (=> d!1509607 (containsKey!3430 oldBucket!34 key!4653)))

(declare-fun lt!1896099 () Unit!131653)

(declare-fun choose!33510 (List!53029 K!14253 Hashable!6410) Unit!131653)

(assert (=> d!1509607 (= lt!1896099 (choose!33510 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1509607 (noDuplicateKeys!2041 oldBucket!34)))

(assert (=> d!1509607 (= (lemmaGetPairDefinedThenContainsKey!325 oldBucket!34 key!4653 hashF!1323) lt!1896099)))

(declare-fun bs!1121160 () Bool)

(assert (= bs!1121160 d!1509607))

(assert (=> bs!1121160 m!5675669))

(declare-fun m!5676261 () Bool)

(assert (=> bs!1121160 m!5676261))

(assert (=> bs!1121160 m!5675719))

(assert (=> b!4732675 d!1509607))

(declare-fun d!1509609 () Bool)

(declare-fun res!2004065 () Bool)

(declare-fun e!2952170 () Bool)

(assert (=> d!1509609 (=> res!2004065 e!2952170)))

(assert (=> d!1509609 (= res!2004065 (and (is-Cons!52905 (t!360307 oldBucket!34)) (= (_1!30573 (h!59274 (t!360307 oldBucket!34))) key!4653)))))

(assert (=> d!1509609 (= (containsKey!3430 (t!360307 oldBucket!34) key!4653) e!2952170)))

(declare-fun b!4733029 () Bool)

(declare-fun e!2952171 () Bool)

(assert (=> b!4733029 (= e!2952170 e!2952171)))

(declare-fun res!2004066 () Bool)

(assert (=> b!4733029 (=> (not res!2004066) (not e!2952171))))

(assert (=> b!4733029 (= res!2004066 (is-Cons!52905 (t!360307 oldBucket!34)))))

(declare-fun b!4733030 () Bool)

(assert (=> b!4733030 (= e!2952171 (containsKey!3430 (t!360307 (t!360307 oldBucket!34)) key!4653))))

(assert (= (and d!1509609 (not res!2004065)) b!4733029))

(assert (= (and b!4733029 res!2004066) b!4733030))

(declare-fun m!5676263 () Bool)

(assert (=> b!4733030 m!5676263))

(assert (=> b!4732675 d!1509609))

(declare-fun d!1509611 () Bool)

(declare-fun res!2004067 () Bool)

(declare-fun e!2952172 () Bool)

(assert (=> d!1509611 (=> res!2004067 e!2952172)))

(assert (=> d!1509611 (= res!2004067 (and (is-Cons!52905 oldBucket!34) (= (_1!30573 (h!59274 oldBucket!34)) key!4653)))))

(assert (=> d!1509611 (= (containsKey!3430 oldBucket!34 key!4653) e!2952172)))

(declare-fun b!4733031 () Bool)

(declare-fun e!2952173 () Bool)

(assert (=> b!4733031 (= e!2952172 e!2952173)))

(declare-fun res!2004068 () Bool)

(assert (=> b!4733031 (=> (not res!2004068) (not e!2952173))))

(assert (=> b!4733031 (= res!2004068 (is-Cons!52905 oldBucket!34))))

(declare-fun b!4733032 () Bool)

(assert (=> b!4733032 (= e!2952173 (containsKey!3430 (t!360307 oldBucket!34) key!4653))))

(assert (= (and d!1509611 (not res!2004067)) b!4733031))

(assert (= (and b!4733031 res!2004068) b!4733032))

(assert (=> b!4733032 m!5675655))

(assert (=> b!4732675 d!1509611))

(declare-fun d!1509613 () Bool)

(declare-fun isEmpty!29209 (Option!12416) Bool)

(assert (=> d!1509613 (= (isDefined!9670 (getPair!581 lt!1895721 key!4653)) (not (isEmpty!29209 (getPair!581 lt!1895721 key!4653))))))

(declare-fun bs!1121161 () Bool)

(assert (= bs!1121161 d!1509613))

(assert (=> bs!1121161 m!5675651))

(declare-fun m!5676265 () Bool)

(assert (=> bs!1121161 m!5676265))

(assert (=> b!4732675 d!1509613))

(declare-fun b!4733049 () Bool)

(declare-fun e!2952187 () Option!12416)

(assert (=> b!4733049 (= e!2952187 (Some!12415 (h!59274 lt!1895721)))))

(declare-fun d!1509615 () Bool)

(declare-fun e!2952184 () Bool)

(assert (=> d!1509615 e!2952184))

(declare-fun res!2004077 () Bool)

(assert (=> d!1509615 (=> res!2004077 e!2952184)))

(declare-fun e!2952186 () Bool)

(assert (=> d!1509615 (= res!2004077 e!2952186)))

(declare-fun res!2004078 () Bool)

(assert (=> d!1509615 (=> (not res!2004078) (not e!2952186))))

(declare-fun lt!1896102 () Option!12416)

(assert (=> d!1509615 (= res!2004078 (isEmpty!29209 lt!1896102))))

(assert (=> d!1509615 (= lt!1896102 e!2952187)))

(declare-fun c!808310 () Bool)

(assert (=> d!1509615 (= c!808310 (and (is-Cons!52905 lt!1895721) (= (_1!30573 (h!59274 lt!1895721)) key!4653)))))

(assert (=> d!1509615 (noDuplicateKeys!2041 lt!1895721)))

(assert (=> d!1509615 (= (getPair!581 lt!1895721 key!4653) lt!1896102)))

(declare-fun b!4733050 () Bool)

(declare-fun res!2004079 () Bool)

(declare-fun e!2952185 () Bool)

(assert (=> b!4733050 (=> (not res!2004079) (not e!2952185))))

(declare-fun get!17770 (Option!12416) tuple2!54558)

(assert (=> b!4733050 (= res!2004079 (= (_1!30573 (get!17770 lt!1896102)) key!4653))))

(declare-fun b!4733051 () Bool)

(declare-fun e!2952188 () Option!12416)

(assert (=> b!4733051 (= e!2952187 e!2952188)))

(declare-fun c!808311 () Bool)

(assert (=> b!4733051 (= c!808311 (is-Cons!52905 lt!1895721))))

(declare-fun b!4733052 () Bool)

(assert (=> b!4733052 (= e!2952184 e!2952185)))

(declare-fun res!2004080 () Bool)

(assert (=> b!4733052 (=> (not res!2004080) (not e!2952185))))

(assert (=> b!4733052 (= res!2004080 (isDefined!9670 lt!1896102))))

(declare-fun b!4733053 () Bool)

(assert (=> b!4733053 (= e!2952188 (getPair!581 (t!360307 lt!1895721) key!4653))))

(declare-fun b!4733054 () Bool)

(assert (=> b!4733054 (= e!2952188 None!12415)))

(declare-fun b!4733055 () Bool)

(assert (=> b!4733055 (= e!2952186 (not (containsKey!3430 lt!1895721 key!4653)))))

(declare-fun b!4733056 () Bool)

(assert (=> b!4733056 (= e!2952185 (contains!16291 lt!1895721 (get!17770 lt!1896102)))))

(assert (= (and d!1509615 c!808310) b!4733049))

(assert (= (and d!1509615 (not c!808310)) b!4733051))

(assert (= (and b!4733051 c!808311) b!4733053))

(assert (= (and b!4733051 (not c!808311)) b!4733054))

(assert (= (and d!1509615 res!2004078) b!4733055))

(assert (= (and d!1509615 (not res!2004077)) b!4733052))

(assert (= (and b!4733052 res!2004080) b!4733050))

(assert (= (and b!4733050 res!2004079) b!4733056))

(declare-fun m!5676267 () Bool)

(assert (=> b!4733050 m!5676267))

(declare-fun m!5676269 () Bool)

(assert (=> b!4733052 m!5676269))

(declare-fun m!5676271 () Bool)

(assert (=> b!4733053 m!5676271))

(assert (=> b!4733056 m!5676267))

(assert (=> b!4733056 m!5676267))

(declare-fun m!5676273 () Bool)

(assert (=> b!4733056 m!5676273))

(declare-fun m!5676275 () Bool)

(assert (=> b!4733055 m!5676275))

(declare-fun m!5676277 () Bool)

(assert (=> d!1509615 m!5676277))

(declare-fun m!5676279 () Bool)

(assert (=> d!1509615 m!5676279))

(assert (=> b!4732675 d!1509615))

(declare-fun d!1509617 () Bool)

(declare-fun lt!1896105 () Bool)

(declare-fun content!9436 (List!53030) (Set tuple2!54560))

(assert (=> d!1509617 (= lt!1896105 (set.member lt!1895718 (content!9436 (toList!5972 lm!2023))))))

(declare-fun e!2952193 () Bool)

(assert (=> d!1509617 (= lt!1896105 e!2952193)))

(declare-fun res!2004085 () Bool)

(assert (=> d!1509617 (=> (not res!2004085) (not e!2952193))))

(assert (=> d!1509617 (= res!2004085 (is-Cons!52906 (toList!5972 lm!2023)))))

(assert (=> d!1509617 (= (contains!16284 (toList!5972 lm!2023) lt!1895718) lt!1896105)))

(declare-fun b!4733061 () Bool)

(declare-fun e!2952194 () Bool)

(assert (=> b!4733061 (= e!2952193 e!2952194)))

(declare-fun res!2004086 () Bool)

(assert (=> b!4733061 (=> res!2004086 e!2952194)))

(assert (=> b!4733061 (= res!2004086 (= (h!59275 (toList!5972 lm!2023)) lt!1895718))))

(declare-fun b!4733062 () Bool)

(assert (=> b!4733062 (= e!2952194 (contains!16284 (t!360308 (toList!5972 lm!2023)) lt!1895718))))

(assert (= (and d!1509617 res!2004085) b!4733061))

(assert (= (and b!4733061 (not res!2004086)) b!4733062))

(declare-fun m!5676281 () Bool)

(assert (=> d!1509617 m!5676281))

(declare-fun m!5676283 () Bool)

(assert (=> d!1509617 m!5676283))

(declare-fun m!5676285 () Bool)

(assert (=> b!4733062 m!5676285))

(assert (=> b!4732675 d!1509617))

(declare-fun d!1509619 () Bool)

(assert (=> d!1509619 (= (head!10286 (toList!5972 lm!2023)) (h!59275 (toList!5972 lm!2023)))))

(assert (=> b!4732664 d!1509619))

(declare-fun b!4733067 () Bool)

(declare-fun tp!1348944 () Bool)

(declare-fun e!2952197 () Bool)

(assert (=> b!4733067 (= e!2952197 (and tp_is_empty!31457 tp_is_empty!31459 tp!1348944))))

(assert (=> b!4732671 (= tp!1348932 e!2952197)))

(assert (= (and b!4732671 (is-Cons!52905 (t!360307 oldBucket!34))) b!4733067))

(declare-fun b!4733068 () Bool)

(declare-fun tp!1348945 () Bool)

(declare-fun e!2952198 () Bool)

(assert (=> b!4733068 (= e!2952198 (and tp_is_empty!31457 tp_is_empty!31459 tp!1348945))))

(assert (=> b!4732673 (= tp!1348930 e!2952198)))

(assert (= (and b!4732673 (is-Cons!52905 (t!360307 newBucket!218))) b!4733068))

(declare-fun b!4733073 () Bool)

(declare-fun e!2952201 () Bool)

(declare-fun tp!1348950 () Bool)

(declare-fun tp!1348951 () Bool)

(assert (=> b!4733073 (= e!2952201 (and tp!1348950 tp!1348951))))

(assert (=> b!4732672 (= tp!1348931 e!2952201)))

(assert (= (and b!4732672 (is-Cons!52906 (toList!5972 lm!2023))) b!4733073))

(declare-fun b_lambda!180619 () Bool)

(assert (= b_lambda!180613 (or start!482510 b_lambda!180619)))

(declare-fun bs!1121162 () Bool)

(declare-fun d!1509621 () Bool)

(assert (= bs!1121162 (and d!1509621 start!482510)))

(assert (=> bs!1121162 (= (dynLambda!21854 lambda!217567 (h!59275 (toList!5972 lm!2023))) (noDuplicateKeys!2041 (_2!30574 (h!59275 (toList!5972 lm!2023)))))))

(assert (=> bs!1121162 m!5675963))

(assert (=> b!4732830 d!1509621))

(declare-fun b_lambda!180621 () Bool)

(assert (= b_lambda!180617 (or start!482510 b_lambda!180621)))

(declare-fun bs!1121163 () Bool)

(declare-fun d!1509623 () Bool)

(assert (= bs!1121163 (and d!1509623 start!482510)))

(assert (=> bs!1121163 (= (dynLambda!21854 lambda!217567 lt!1895718) (noDuplicateKeys!2041 (_2!30574 lt!1895718)))))

(declare-fun m!5676287 () Bool)

(assert (=> bs!1121163 m!5676287))

(assert (=> d!1509573 d!1509623))

(push 1)

(assert (not d!1509615))

(assert (not b!4733053))

(assert (not b!4733021))

(assert (not d!1509495))

(assert (not b!4733068))

(assert (not bm!331015))

(assert (not d!1509579))

(assert (not b!4732939))

(assert (not bs!1121163))

(assert (not b!4733024))

(assert (not b!4732813))

(assert (not b!4733022))

(assert (not b!4733062))

(assert (not b!4732746))

(assert (not bm!330999))

(assert (not d!1509547))

(assert (not d!1509613))

(assert (not b!4732741))

(assert (not b!4733030))

(assert (not d!1509589))

(assert (not bm!331018))

(assert (not bm!331013))

(assert (not b!4732887))

(assert tp_is_empty!31457)

(assert (not d!1509507))

(assert (not d!1509487))

(assert (not b!4732888))

(assert (not d!1509549))

(assert (not b!4732901))

(assert (not b!4732910))

(assert (not bm!331009))

(assert (not b!4732905))

(assert (not d!1509565))

(assert (not d!1509587))

(assert (not b!4732915))

(assert (not bm!331012))

(assert (not b!4733032))

(assert (not b!4733050))

(assert (not b!4732894))

(assert (not d!1509499))

(assert (not d!1509515))

(assert (not b!4732885))

(assert (not b!4732740))

(assert (not d!1509489))

(assert (not d!1509561))

(assert (not d!1509509))

(assert (not b!4733055))

(assert (not b!4732769))

(assert (not b!4732809))

(assert (not b!4732908))

(assert (not bs!1121162))

(assert (not b!4732897))

(assert (not b!4732929))

(assert (not d!1509497))

(assert (not b!4733052))

(assert (not bm!331014))

(assert (not bm!331010))

(assert (not bm!331017))

(assert (not d!1509607))

(assert (not b!4732937))

(assert tp_is_empty!31459)

(assert (not b!4732961))

(assert (not d!1509585))

(assert (not b!4732773))

(assert (not b!4732911))

(assert (not b!4732930))

(assert (not b!4732940))

(assert (not b!4732767))

(assert (not b!4733073))

(assert (not b!4733067))

(assert (not b!4732892))

(assert (not d!1509539))

(assert (not d!1509537))

(assert (not b_lambda!180619))

(assert (not b!4732906))

(assert (not bm!331016))

(assert (not b!4732899))

(assert (not d!1509573))

(assert (not b!4732831))

(assert (not d!1509553))

(assert (not b!4733056))

(assert (not b!4732900))

(assert (not d!1509559))

(assert (not d!1509543))

(assert (not b!4732895))

(assert (not b!4733023))

(assert (not d!1509617))

(assert (not b!4732766))

(assert (not b!4732747))

(assert (not bm!331011))

(assert (not b!4732771))

(assert (not b!4732912))

(assert (not b!4732896))

(assert (not b!4732797))

(assert (not d!1509557))

(assert (not b!4732886))

(assert (not d!1509551))

(assert (not b!4732954))

(assert (not d!1509501))

(assert (not b!4732768))

(assert (not b!4732913))

(assert (not b!4732950))

(assert (not b!4732903))

(assert (not b!4732904))

(assert (not b!4732916))

(assert (not b!4732772))

(assert (not b_lambda!180621))

(assert (not d!1509541))

(assert (not d!1509517))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

