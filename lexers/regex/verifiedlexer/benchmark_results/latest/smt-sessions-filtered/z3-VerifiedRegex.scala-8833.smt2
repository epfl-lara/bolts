; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472080 () Bool)

(assert start!472080)

(declare-fun b!4676842 () Bool)

(declare-fun res!1969983 () Bool)

(declare-fun e!2918070 () Bool)

(assert (=> b!4676842 (=> (not res!1969983) (not e!2918070))))

(declare-datatypes ((K!13570 0))(
  ( (K!13571 (val!19127 Int)) )
))
(declare-datatypes ((V!13816 0))(
  ( (V!13817 (val!19128 Int)) )
))
(declare-datatypes ((tuple2!53466 0))(
  ( (tuple2!53467 (_1!30027 K!13570) (_2!30027 V!13816)) )
))
(declare-datatypes ((List!52317 0))(
  ( (Nil!52193) (Cons!52193 (h!58394 tuple2!53466) (t!359461 List!52317)) )
))
(declare-datatypes ((tuple2!53468 0))(
  ( (tuple2!53469 (_1!30028 (_ BitVec 64)) (_2!30028 List!52317)) )
))
(declare-datatypes ((List!52318 0))(
  ( (Nil!52194) (Cons!52194 (h!58395 tuple2!53468) (t!359462 List!52318)) )
))
(declare-datatypes ((ListLongMap!3955 0))(
  ( (ListLongMap!3956 (toList!5425 List!52318)) )
))
(declare-fun lm!2023 () ListLongMap!3955)

(declare-fun oldBucket!34 () List!52317)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun head!9827 (List!52318) tuple2!53468)

(assert (=> b!4676842 (= res!1969983 (= (head!9827 (toList!5425 lm!2023)) (tuple2!53469 hash!405 oldBucket!34)))))

(declare-fun b!4676843 () Bool)

(declare-fun e!2918069 () Bool)

(declare-fun e!2918067 () Bool)

(assert (=> b!4676843 (= e!2918069 e!2918067)))

(declare-fun res!1969972 () Bool)

(assert (=> b!4676843 (=> res!1969972 e!2918067)))

(declare-datatypes ((ListMap!4789 0))(
  ( (ListMap!4790 (toList!5426 List!52317)) )
))
(declare-fun lt!1836666 () ListMap!4789)

(declare-fun newBucket!218 () List!52317)

(declare-fun lt!1836665 () ListMap!4789)

(declare-fun addToMapMapFromBucket!1200 (List!52317 ListMap!4789) ListMap!4789)

(assert (=> b!4676843 (= res!1969972 (not (= lt!1836666 (addToMapMapFromBucket!1200 newBucket!218 lt!1836665))))))

(declare-fun lt!1836664 () List!52317)

(assert (=> b!4676843 (= lt!1836666 (addToMapMapFromBucket!1200 lt!1836664 lt!1836665))))

(declare-fun b!4676844 () Bool)

(declare-fun res!1969969 () Bool)

(assert (=> b!4676844 (=> (not res!1969969) (not e!2918070))))

(declare-datatypes ((Hashable!6137 0))(
  ( (HashableExt!6136 (__x!31840 Int)) )
))
(declare-fun hashF!1323 () Hashable!6137)

(declare-fun allKeysSameHash!1594 (List!52317 (_ BitVec 64) Hashable!6137) Bool)

(assert (=> b!4676844 (= res!1969969 (allKeysSameHash!1594 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4676845 () Bool)

(declare-fun res!1969982 () Bool)

(declare-fun e!2918066 () Bool)

(assert (=> b!4676845 (=> (not res!1969982) (not e!2918066))))

(declare-fun noDuplicateKeys!1768 (List!52317) Bool)

(assert (=> b!4676845 (= res!1969982 (noDuplicateKeys!1768 newBucket!218))))

(declare-fun b!4676846 () Bool)

(declare-fun res!1969979 () Bool)

(assert (=> b!4676846 (=> (not res!1969979) (not e!2918066))))

(declare-fun key!4653 () K!13570)

(declare-fun removePairForKey!1363 (List!52317 K!13570) List!52317)

(assert (=> b!4676846 (= res!1969979 (= (removePairForKey!1363 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4676847 () Bool)

(declare-fun e!2918072 () Bool)

(declare-fun tp!1344702 () Bool)

(declare-fun tp_is_empty!30365 () Bool)

(declare-fun tp_is_empty!30367 () Bool)

(assert (=> b!4676847 (= e!2918072 (and tp_is_empty!30365 tp_is_empty!30367 tp!1344702))))

(declare-fun b!4676848 () Bool)

(declare-fun res!1969971 () Bool)

(assert (=> b!4676848 (=> res!1969971 e!2918069)))

(declare-fun extractMap!1794 (List!52318) ListMap!4789)

(assert (=> b!4676848 (= res!1969971 (not (= (extractMap!1794 (Cons!52194 (tuple2!53469 hash!405 lt!1836664) (t!359462 (toList!5425 lm!2023)))) (extractMap!1794 (Cons!52194 (tuple2!53469 hash!405 newBucket!218) (t!359462 (toList!5425 lm!2023)))))))))

(declare-fun b!4676849 () Bool)

(declare-fun res!1969968 () Bool)

(assert (=> b!4676849 (=> (not res!1969968) (not e!2918070))))

(declare-fun allKeysSameHashInMap!1682 (ListLongMap!3955 Hashable!6137) Bool)

(assert (=> b!4676849 (= res!1969968 (allKeysSameHashInMap!1682 lm!2023 hashF!1323))))

(declare-fun b!4676851 () Bool)

(assert (=> b!4676851 (= e!2918066 e!2918070)))

(declare-fun res!1969973 () Bool)

(assert (=> b!4676851 (=> (not res!1969973) (not e!2918070))))

(declare-fun lt!1836667 () ListMap!4789)

(declare-fun contains!15336 (ListMap!4789 K!13570) Bool)

(assert (=> b!4676851 (= res!1969973 (contains!15336 lt!1836667 key!4653))))

(assert (=> b!4676851 (= lt!1836667 (extractMap!1794 (toList!5425 lm!2023)))))

(declare-fun b!4676852 () Bool)

(declare-fun res!1969980 () Bool)

(declare-fun e!2918074 () Bool)

(assert (=> b!4676852 (=> res!1969980 e!2918074)))

(declare-fun containsKey!2903 (List!52317 K!13570) Bool)

(assert (=> b!4676852 (= res!1969980 (containsKey!2903 lt!1836664 key!4653))))

(declare-fun b!4676853 () Bool)

(declare-fun res!1969981 () Bool)

(assert (=> b!4676853 (=> (not res!1969981) (not e!2918070))))

(declare-fun hash!3936 (Hashable!6137 K!13570) (_ BitVec 64))

(assert (=> b!4676853 (= res!1969981 (= (hash!3936 hashF!1323 key!4653) hash!405))))

(declare-fun b!4676854 () Bool)

(assert (=> b!4676854 (= e!2918074 (noDuplicateKeys!1768 lt!1836664))))

(declare-fun b!4676855 () Bool)

(declare-fun e!2918073 () Bool)

(assert (=> b!4676855 (= e!2918073 e!2918069)))

(declare-fun res!1969970 () Bool)

(assert (=> b!4676855 (=> res!1969970 e!2918069)))

(assert (=> b!4676855 (= res!1969970 (not (= lt!1836664 newBucket!218)))))

(declare-fun tail!8384 (List!52317) List!52317)

(assert (=> b!4676855 (= lt!1836664 (tail!8384 oldBucket!34))))

(declare-fun res!1969974 () Bool)

(assert (=> start!472080 (=> (not res!1969974) (not e!2918066))))

(declare-fun lambda!203835 () Int)

(declare-fun forall!11191 (List!52318 Int) Bool)

(assert (=> start!472080 (= res!1969974 (forall!11191 (toList!5425 lm!2023) lambda!203835))))

(assert (=> start!472080 e!2918066))

(declare-fun e!2918068 () Bool)

(declare-fun inv!67444 (ListLongMap!3955) Bool)

(assert (=> start!472080 (and (inv!67444 lm!2023) e!2918068)))

(assert (=> start!472080 tp_is_empty!30365))

(declare-fun e!2918071 () Bool)

(assert (=> start!472080 e!2918071))

(assert (=> start!472080 true))

(assert (=> start!472080 e!2918072))

(declare-fun b!4676850 () Bool)

(declare-fun res!1969977 () Bool)

(assert (=> b!4676850 (=> (not res!1969977) (not e!2918066))))

(assert (=> b!4676850 (= res!1969977 (allKeysSameHash!1594 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4676856 () Bool)

(declare-fun tp!1344701 () Bool)

(assert (=> b!4676856 (= e!2918068 tp!1344701)))

(declare-fun b!4676857 () Bool)

(assert (=> b!4676857 (= e!2918070 (not e!2918073))))

(declare-fun res!1969975 () Bool)

(assert (=> b!4676857 (=> res!1969975 e!2918073)))

(get-info :version)

(assert (=> b!4676857 (= res!1969975 (or (not ((_ is Cons!52193) oldBucket!34)) (not (= (_1!30027 (h!58394 oldBucket!34)) key!4653))))))

(assert (=> b!4676857 (= lt!1836667 (addToMapMapFromBucket!1200 (_2!30028 (h!58395 (toList!5425 lm!2023))) lt!1836665))))

(assert (=> b!4676857 (= lt!1836665 (extractMap!1794 (t!359462 (toList!5425 lm!2023))))))

(declare-fun tail!8385 (ListLongMap!3955) ListLongMap!3955)

(assert (=> b!4676857 (= (t!359462 (toList!5425 lm!2023)) (toList!5425 (tail!8385 lm!2023)))))

(declare-fun b!4676858 () Bool)

(declare-fun res!1969978 () Bool)

(assert (=> b!4676858 (=> (not res!1969978) (not e!2918070))))

(assert (=> b!4676858 (= res!1969978 ((_ is Cons!52194) (toList!5425 lm!2023)))))

(declare-fun b!4676859 () Bool)

(declare-fun res!1969976 () Bool)

(assert (=> b!4676859 (=> (not res!1969976) (not e!2918066))))

(assert (=> b!4676859 (= res!1969976 (noDuplicateKeys!1768 oldBucket!34))))

(declare-fun tp!1344703 () Bool)

(declare-fun b!4676860 () Bool)

(assert (=> b!4676860 (= e!2918071 (and tp_is_empty!30365 tp_is_empty!30367 tp!1344703))))

(declare-fun b!4676861 () Bool)

(assert (=> b!4676861 (= e!2918067 e!2918074)))

(declare-fun res!1969967 () Bool)

(assert (=> b!4676861 (=> res!1969967 e!2918074)))

(declare-fun eq!957 (ListMap!4789 ListMap!4789) Bool)

(declare-fun +!2070 (ListMap!4789 tuple2!53466) ListMap!4789)

(assert (=> b!4676861 (= res!1969967 (not (eq!957 (+!2070 lt!1836666 (h!58394 oldBucket!34)) (addToMapMapFromBucket!1200 oldBucket!34 lt!1836665))))))

(declare-fun lt!1836668 () tuple2!53466)

(assert (=> b!4676861 (eq!957 (addToMapMapFromBucket!1200 (Cons!52193 lt!1836668 lt!1836664) lt!1836665) (+!2070 lt!1836666 lt!1836668))))

(declare-datatypes ((Unit!121843 0))(
  ( (Unit!121844) )
))
(declare-fun lt!1836663 () Unit!121843)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!206 (tuple2!53466 List!52317 ListMap!4789) Unit!121843)

(assert (=> b!4676861 (= lt!1836663 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!206 lt!1836668 lt!1836664 lt!1836665))))

(declare-fun head!9828 (List!52317) tuple2!53466)

(assert (=> b!4676861 (= lt!1836668 (head!9828 oldBucket!34))))

(assert (= (and start!472080 res!1969974) b!4676859))

(assert (= (and b!4676859 res!1969976) b!4676845))

(assert (= (and b!4676845 res!1969982) b!4676846))

(assert (= (and b!4676846 res!1969979) b!4676850))

(assert (= (and b!4676850 res!1969977) b!4676851))

(assert (= (and b!4676851 res!1969973) b!4676853))

(assert (= (and b!4676853 res!1969981) b!4676844))

(assert (= (and b!4676844 res!1969969) b!4676849))

(assert (= (and b!4676849 res!1969968) b!4676842))

(assert (= (and b!4676842 res!1969983) b!4676858))

(assert (= (and b!4676858 res!1969978) b!4676857))

(assert (= (and b!4676857 (not res!1969975)) b!4676855))

(assert (= (and b!4676855 (not res!1969970)) b!4676848))

(assert (= (and b!4676848 (not res!1969971)) b!4676843))

(assert (= (and b!4676843 (not res!1969972)) b!4676861))

(assert (= (and b!4676861 (not res!1969967)) b!4676852))

(assert (= (and b!4676852 (not res!1969980)) b!4676854))

(assert (= start!472080 b!4676856))

(assert (= (and start!472080 ((_ is Cons!52193) oldBucket!34)) b!4676860))

(assert (= (and start!472080 ((_ is Cons!52193) newBucket!218)) b!4676847))

(declare-fun m!5571017 () Bool)

(assert (=> b!4676854 m!5571017))

(declare-fun m!5571019 () Bool)

(assert (=> b!4676852 m!5571019))

(declare-fun m!5571021 () Bool)

(assert (=> b!4676843 m!5571021))

(declare-fun m!5571023 () Bool)

(assert (=> b!4676843 m!5571023))

(declare-fun m!5571025 () Bool)

(assert (=> b!4676851 m!5571025))

(declare-fun m!5571027 () Bool)

(assert (=> b!4676851 m!5571027))

(declare-fun m!5571029 () Bool)

(assert (=> b!4676857 m!5571029))

(declare-fun m!5571031 () Bool)

(assert (=> b!4676857 m!5571031))

(declare-fun m!5571033 () Bool)

(assert (=> b!4676857 m!5571033))

(declare-fun m!5571035 () Bool)

(assert (=> b!4676844 m!5571035))

(declare-fun m!5571037 () Bool)

(assert (=> b!4676848 m!5571037))

(declare-fun m!5571039 () Bool)

(assert (=> b!4676848 m!5571039))

(declare-fun m!5571041 () Bool)

(assert (=> b!4676845 m!5571041))

(declare-fun m!5571043 () Bool)

(assert (=> b!4676861 m!5571043))

(declare-fun m!5571045 () Bool)

(assert (=> b!4676861 m!5571045))

(declare-fun m!5571047 () Bool)

(assert (=> b!4676861 m!5571047))

(declare-fun m!5571049 () Bool)

(assert (=> b!4676861 m!5571049))

(assert (=> b!4676861 m!5571047))

(declare-fun m!5571051 () Bool)

(assert (=> b!4676861 m!5571051))

(assert (=> b!4676861 m!5571043))

(declare-fun m!5571053 () Bool)

(assert (=> b!4676861 m!5571053))

(declare-fun m!5571055 () Bool)

(assert (=> b!4676861 m!5571055))

(declare-fun m!5571057 () Bool)

(assert (=> b!4676861 m!5571057))

(assert (=> b!4676861 m!5571045))

(assert (=> b!4676861 m!5571051))

(declare-fun m!5571059 () Bool)

(assert (=> b!4676850 m!5571059))

(declare-fun m!5571061 () Bool)

(assert (=> b!4676853 m!5571061))

(declare-fun m!5571063 () Bool)

(assert (=> b!4676855 m!5571063))

(declare-fun m!5571065 () Bool)

(assert (=> b!4676846 m!5571065))

(declare-fun m!5571067 () Bool)

(assert (=> start!472080 m!5571067))

(declare-fun m!5571069 () Bool)

(assert (=> start!472080 m!5571069))

(declare-fun m!5571071 () Bool)

(assert (=> b!4676859 m!5571071))

(declare-fun m!5571073 () Bool)

(assert (=> b!4676849 m!5571073))

(declare-fun m!5571075 () Bool)

(assert (=> b!4676842 m!5571075))

(check-sat (not b!4676859) (not b!4676844) (not start!472080) (not b!4676853) (not b!4676845) (not b!4676855) (not b!4676842) (not b!4676848) tp_is_empty!30365 (not b!4676846) (not b!4676847) tp_is_empty!30367 (not b!4676851) (not b!4676861) (not b!4676850) (not b!4676860) (not b!4676854) (not b!4676849) (not b!4676852) (not b!4676856) (not b!4676843) (not b!4676857))
(check-sat)
