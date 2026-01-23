; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242846 () Bool)

(assert start!242846)

(declare-fun b!2485947 () Bool)

(declare-fun b_free!72521 () Bool)

(declare-fun b_next!73225 () Bool)

(assert (=> b!2485947 (= b_free!72521 (not b_next!73225))))

(declare-fun tp!795807 () Bool)

(declare-fun b_and!188803 () Bool)

(assert (=> b!2485947 (= tp!795807 b_and!188803)))

(declare-fun b!2485954 () Bool)

(declare-fun b_free!72523 () Bool)

(declare-fun b_next!73227 () Bool)

(assert (=> b!2485954 (= b_free!72523 (not b_next!73227))))

(declare-fun tp!795805 () Bool)

(declare-fun b_and!188805 () Bool)

(assert (=> b!2485954 (= tp!795805 b_and!188805)))

(declare-fun b!2485940 () Bool)

(declare-fun e!1578452 () Bool)

(declare-fun e!1578458 () Bool)

(declare-datatypes ((K!5625 0))(
  ( (K!5626 (val!8975 Int)) )
))
(declare-datatypes ((V!5827 0))(
  ( (V!5828 (val!8976 Int)) )
))
(declare-datatypes ((tuple2!29190 0))(
  ( (tuple2!29191 (_1!17137 K!5625) (_2!17137 V!5827)) )
))
(declare-datatypes ((List!29309 0))(
  ( (Nil!29209) (Cons!29209 (h!34625 tuple2!29190) (t!210996 List!29309)) )
))
(declare-datatypes ((array!12155 0))(
  ( (array!12156 (arr!5422 (Array (_ BitVec 32) List!29309)) (size!22841 (_ BitVec 32))) )
))
(declare-datatypes ((array!12157 0))(
  ( (array!12158 (arr!5423 (Array (_ BitVec 32) (_ BitVec 64))) (size!22842 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6832 0))(
  ( (LongMapFixedSize!6833 (defaultEntry!3790 Int) (mask!8613 (_ BitVec 32)) (extraKeys!3664 (_ BitVec 32)) (zeroValue!3674 List!29309) (minValue!3674 List!29309) (_size!6879 (_ BitVec 32)) (_keys!3713 array!12157) (_values!3696 array!12155) (_vacant!3477 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13481 0))(
  ( (Cell!13482 (v!31645 LongMapFixedSize!6832)) )
))
(declare-datatypes ((MutLongMap!3416 0))(
  ( (LongMap!3416 (underlying!7039 Cell!13481)) (MutLongMapExt!3415 (__x!19154 Int)) )
))
(declare-fun lt!892061 () MutLongMap!3416)

(get-info :version)

(assert (=> b!2485940 (= e!1578452 (and e!1578458 ((_ is LongMap!3416) lt!892061)))))

(declare-datatypes ((Hashable!3326 0))(
  ( (HashableExt!3325 (__x!19155 Int)) )
))
(declare-datatypes ((Cell!13483 0))(
  ( (Cell!13484 (v!31646 MutLongMap!3416)) )
))
(declare-datatypes ((MutableMap!3326 0))(
  ( (MutableMapExt!3325 (__x!19156 Int)) (HashMap!3326 (underlying!7040 Cell!13483) (hashF!5332 Hashable!3326) (_size!6880 (_ BitVec 32)) (defaultValue!3488 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3326)

(assert (=> b!2485940 (= lt!892061 (v!31646 (underlying!7040 thiss!42540)))))

(declare-fun b!2485941 () Bool)

(declare-fun e!1578456 () Bool)

(declare-fun e!1578454 () Bool)

(assert (=> b!2485941 (= e!1578456 e!1578454)))

(declare-fun b!2485942 () Bool)

(declare-fun res!1052251 () Bool)

(declare-fun e!1578459 () Bool)

(assert (=> b!2485942 (=> res!1052251 e!1578459)))

(declare-datatypes ((tuple2!29192 0))(
  ( (tuple2!29193 (_1!17138 (_ BitVec 64)) (_2!17138 List!29309)) )
))
(declare-datatypes ((List!29310 0))(
  ( (Nil!29210) (Cons!29210 (h!34626 tuple2!29192) (t!210997 List!29310)) )
))
(declare-datatypes ((ListLongMap!617 0))(
  ( (ListLongMap!618 (toList!1666 List!29310)) )
))
(declare-fun lt!892063 () ListLongMap!617)

(declare-datatypes ((Unit!42858 0))(
  ( (Unit!42859) )
))
(declare-datatypes ((tuple2!29194 0))(
  ( (tuple2!29195 (_1!17139 Unit!42858) (_2!17139 MutableMap!3326)) )
))
(declare-fun lt!892072 () tuple2!29194)

(declare-fun allKeysSameHashInMap!193 (ListLongMap!617 Hashable!3326) Bool)

(assert (=> b!2485942 (= res!1052251 (not (allKeysSameHashInMap!193 lt!892063 (hashF!5332 (_2!17139 lt!892072)))))))

(declare-fun b!2485943 () Bool)

(declare-fun e!1578451 () Bool)

(declare-fun e!1578449 () Bool)

(assert (=> b!2485943 (= e!1578451 (not e!1578449))))

(declare-fun res!1052246 () Bool)

(assert (=> b!2485943 (=> res!1052246 e!1578449)))

(declare-datatypes ((tuple2!29196 0))(
  ( (tuple2!29197 (_1!17140 Bool) (_2!17140 MutLongMap!3416)) )
))
(declare-fun lt!892068 () tuple2!29196)

(assert (=> b!2485943 (= res!1052246 (not (_1!17140 lt!892068)))))

(declare-fun lt!892073 () List!29309)

(declare-fun noDuplicateKeys!118 (List!29309) Bool)

(assert (=> b!2485943 (noDuplicateKeys!118 lt!892073)))

(declare-fun lt!892070 () Unit!42858)

(declare-fun lt!892069 () List!29309)

(declare-fun key!2246 () K!5625)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!98 (List!29309 K!5625) Unit!42858)

(assert (=> b!2485943 (= lt!892070 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!98 lt!892069 key!2246))))

(declare-fun lt!892062 () Cell!13483)

(declare-fun Unit!42860 () Unit!42858)

(declare-fun Unit!42861 () Unit!42858)

(assert (=> b!2485943 (= lt!892072 (ite (_1!17140 lt!892068) (tuple2!29195 Unit!42860 (HashMap!3326 lt!892062 (hashF!5332 thiss!42540) (bvsub (_size!6880 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3488 thiss!42540))) (tuple2!29195 Unit!42861 (HashMap!3326 lt!892062 (hashF!5332 thiss!42540) (_size!6880 thiss!42540) (defaultValue!3488 thiss!42540)))))))

(assert (=> b!2485943 (= lt!892062 (Cell!13484 (_2!17140 lt!892068)))))

(declare-fun lt!892066 () (_ BitVec 64))

(declare-fun update!238 (MutLongMap!3416 (_ BitVec 64) List!29309) tuple2!29196)

(assert (=> b!2485943 (= lt!892068 (update!238 (v!31646 (underlying!7040 thiss!42540)) lt!892066 lt!892073))))

(declare-fun removePairForKey!110 (List!29309 K!5625) List!29309)

(assert (=> b!2485943 (= lt!892073 (removePairForKey!110 lt!892069 key!2246))))

(declare-datatypes ((ListMap!1145 0))(
  ( (ListMap!1146 (toList!1667 List!29309)) )
))
(declare-fun lt!892071 () ListMap!1145)

(declare-fun map!6322 (MutableMap!3326) ListMap!1145)

(assert (=> b!2485943 (= lt!892071 (map!6322 thiss!42540))))

(declare-fun lambda!94536 () Int)

(declare-fun lt!892074 () Unit!42858)

(declare-fun forallContained!899 (List!29310 Int tuple2!29192) Unit!42858)

(assert (=> b!2485943 (= lt!892074 (forallContained!899 (toList!1666 lt!892063) lambda!94536 (tuple2!29193 lt!892066 lt!892069)))))

(declare-fun map!6323 (MutLongMap!3416) ListLongMap!617)

(assert (=> b!2485943 (= lt!892063 (map!6323 (v!31646 (underlying!7040 thiss!42540))))))

(declare-fun apply!6987 (MutLongMap!3416 (_ BitVec 64)) List!29309)

(assert (=> b!2485943 (= lt!892069 (apply!6987 (v!31646 (underlying!7040 thiss!42540)) lt!892066))))

(declare-fun hash!768 (Hashable!3326 K!5625) (_ BitVec 64))

(assert (=> b!2485943 (= lt!892066 (hash!768 (hashF!5332 thiss!42540) key!2246))))

(declare-fun b!2485944 () Bool)

(declare-fun res!1052249 () Bool)

(declare-fun e!1578450 () Bool)

(assert (=> b!2485944 (=> (not res!1052249) (not e!1578450))))

(declare-fun lt!892075 () ListLongMap!617)

(assert (=> b!2485944 (= res!1052249 (allKeysSameHashInMap!193 lt!892075 (hashF!5332 (_2!17139 lt!892072))))))

(declare-fun b!2485945 () Bool)

(assert (=> b!2485945 (= e!1578458 e!1578456)))

(declare-fun b!2485946 () Bool)

(declare-fun res!1052250 () Bool)

(assert (=> b!2485946 (=> (not res!1052250) (not e!1578451))))

(declare-fun contains!5215 (MutableMap!3326 K!5625) Bool)

(assert (=> b!2485946 (= res!1052250 (contains!5215 thiss!42540 key!2246))))

(declare-fun tp!795809 () Bool)

(declare-fun tp!795808 () Bool)

(declare-fun e!1578460 () Bool)

(declare-fun array_inv!3899 (array!12157) Bool)

(declare-fun array_inv!3900 (array!12155) Bool)

(assert (=> b!2485947 (= e!1578454 (and tp!795807 tp!795809 tp!795808 (array_inv!3899 (_keys!3713 (v!31645 (underlying!7039 (v!31646 (underlying!7040 thiss!42540)))))) (array_inv!3900 (_values!3696 (v!31645 (underlying!7039 (v!31646 (underlying!7040 thiss!42540)))))) e!1578460))))

(declare-fun b!2485948 () Bool)

(assert (=> b!2485948 (= e!1578449 e!1578459)))

(declare-fun res!1052255 () Bool)

(assert (=> b!2485948 (=> res!1052255 e!1578459)))

(declare-fun forall!6010 (List!29310 Int) Bool)

(assert (=> b!2485948 (= res!1052255 (not (forall!6010 (toList!1666 lt!892063) lambda!94536)))))

(assert (=> b!2485948 e!1578450))

(declare-fun res!1052254 () Bool)

(assert (=> b!2485948 (=> (not res!1052254) (not e!1578450))))

(assert (=> b!2485948 (= res!1052254 (forall!6010 (toList!1666 lt!892075) lambda!94536))))

(assert (=> b!2485948 (= lt!892075 (map!6323 (v!31646 (underlying!7040 (_2!17139 lt!892072)))))))

(declare-fun e!1578453 () Bool)

(assert (=> b!2485948 e!1578453))

(declare-fun res!1052248 () Bool)

(assert (=> b!2485948 (=> (not res!1052248) (not e!1578453))))

(declare-fun lt!892067 () ListLongMap!617)

(assert (=> b!2485948 (= res!1052248 (forall!6010 (toList!1666 lt!892067) lambda!94536))))

(declare-fun +!109 (ListLongMap!617 tuple2!29192) ListLongMap!617)

(assert (=> b!2485948 (= lt!892067 (+!109 lt!892063 (tuple2!29193 lt!892066 lt!892073)))))

(declare-fun lt!892065 () Unit!42858)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!72 (ListLongMap!617 (_ BitVec 64) List!29309 Hashable!3326) Unit!42858)

(assert (=> b!2485948 (= lt!892065 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!72 lt!892063 lt!892066 lt!892073 (hashF!5332 (_2!17139 lt!892072))))))

(declare-fun allKeysSameHash!92 (List!29309 (_ BitVec 64) Hashable!3326) Bool)

(assert (=> b!2485948 (allKeysSameHash!92 lt!892073 lt!892066 (hashF!5332 (_2!17139 lt!892072)))))

(declare-fun lt!892076 () Unit!42858)

(declare-fun lemmaRemovePairForKeyPreservesHash!81 (List!29309 K!5625 (_ BitVec 64) Hashable!3326) Unit!42858)

(assert (=> b!2485948 (= lt!892076 (lemmaRemovePairForKeyPreservesHash!81 lt!892069 key!2246 lt!892066 (hashF!5332 (_2!17139 lt!892072))))))

(assert (=> b!2485948 (allKeysSameHash!92 lt!892069 lt!892066 (hashF!5332 (_2!17139 lt!892072)))))

(declare-fun lt!892064 () Unit!42858)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!85 (List!29310 (_ BitVec 64) List!29309 Hashable!3326) Unit!42858)

(assert (=> b!2485948 (= lt!892064 (lemmaInLongMapAllKeySameHashThenForTuple!85 (toList!1666 lt!892063) lt!892066 lt!892069 (hashF!5332 (_2!17139 lt!892072))))))

(declare-fun res!1052247 () Bool)

(assert (=> start!242846 (=> (not res!1052247) (not e!1578451))))

(assert (=> start!242846 (= res!1052247 ((_ is HashMap!3326) thiss!42540))))

(assert (=> start!242846 e!1578451))

(declare-fun e!1578457 () Bool)

(assert (=> start!242846 e!1578457))

(declare-fun tp_is_empty!12389 () Bool)

(assert (=> start!242846 tp_is_empty!12389))

(declare-fun b!2485949 () Bool)

(declare-fun contains!5216 (ListMap!1145 K!5625) Bool)

(declare-fun extractMap!190 (List!29310) ListMap!1145)

(assert (=> b!2485949 (= e!1578459 (contains!5216 (extractMap!190 (toList!1666 lt!892063)) key!2246))))

(declare-fun mapNonEmpty!15759 () Bool)

(declare-fun mapRes!15759 () Bool)

(declare-fun tp!795804 () Bool)

(declare-fun tp!795810 () Bool)

(assert (=> mapNonEmpty!15759 (= mapRes!15759 (and tp!795804 tp!795810))))

(declare-fun mapKey!15759 () (_ BitVec 32))

(declare-fun mapValue!15759 () List!29309)

(declare-fun mapRest!15759 () (Array (_ BitVec 32) List!29309))

(assert (=> mapNonEmpty!15759 (= (arr!5422 (_values!3696 (v!31645 (underlying!7039 (v!31646 (underlying!7040 thiss!42540)))))) (store mapRest!15759 mapKey!15759 mapValue!15759))))

(declare-fun b!2485950 () Bool)

(declare-fun res!1052252 () Bool)

(assert (=> b!2485950 (=> (not res!1052252) (not e!1578451))))

(declare-fun valid!2627 (MutableMap!3326) Bool)

(assert (=> b!2485950 (= res!1052252 (valid!2627 thiss!42540))))

(declare-fun b!2485951 () Bool)

(declare-fun res!1052253 () Bool)

(assert (=> b!2485951 (=> (not res!1052253) (not e!1578450))))

(assert (=> b!2485951 (= res!1052253 (valid!2627 (_2!17139 lt!892072)))))

(declare-fun b!2485952 () Bool)

(assert (=> b!2485952 (= e!1578450 (contains!5216 lt!892071 key!2246))))

(declare-fun b!2485953 () Bool)

(assert (=> b!2485953 (= e!1578453 (allKeysSameHashInMap!193 lt!892067 (hashF!5332 (_2!17139 lt!892072))))))

(assert (=> b!2485954 (= e!1578457 (and e!1578452 tp!795805))))

(declare-fun b!2485955 () Bool)

(declare-fun tp!795806 () Bool)

(assert (=> b!2485955 (= e!1578460 (and tp!795806 mapRes!15759))))

(declare-fun condMapEmpty!15759 () Bool)

(declare-fun mapDefault!15759 () List!29309)

(assert (=> b!2485955 (= condMapEmpty!15759 (= (arr!5422 (_values!3696 (v!31645 (underlying!7039 (v!31646 (underlying!7040 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29309)) mapDefault!15759)))))

(declare-fun mapIsEmpty!15759 () Bool)

(assert (=> mapIsEmpty!15759 mapRes!15759))

(assert (= (and start!242846 res!1052247) b!2485950))

(assert (= (and b!2485950 res!1052252) b!2485946))

(assert (= (and b!2485946 res!1052250) b!2485943))

(assert (= (and b!2485943 (not res!1052246)) b!2485948))

(assert (= (and b!2485948 res!1052248) b!2485953))

(assert (= (and b!2485948 res!1052254) b!2485944))

(assert (= (and b!2485944 res!1052249) b!2485951))

(assert (= (and b!2485951 res!1052253) b!2485952))

(assert (= (and b!2485948 (not res!1052255)) b!2485942))

(assert (= (and b!2485942 (not res!1052251)) b!2485949))

(assert (= (and b!2485955 condMapEmpty!15759) mapIsEmpty!15759))

(assert (= (and b!2485955 (not condMapEmpty!15759)) mapNonEmpty!15759))

(assert (= b!2485947 b!2485955))

(assert (= b!2485941 b!2485947))

(assert (= b!2485945 b!2485941))

(assert (= (and b!2485940 ((_ is LongMap!3416) (v!31646 (underlying!7040 thiss!42540)))) b!2485945))

(assert (= b!2485954 b!2485940))

(assert (= (and start!242846 ((_ is HashMap!3326) thiss!42540)) b!2485954))

(declare-fun m!2854287 () Bool)

(assert (=> b!2485942 m!2854287))

(declare-fun m!2854289 () Bool)

(assert (=> b!2485949 m!2854289))

(assert (=> b!2485949 m!2854289))

(declare-fun m!2854291 () Bool)

(assert (=> b!2485949 m!2854291))

(declare-fun m!2854293 () Bool)

(assert (=> b!2485948 m!2854293))

(declare-fun m!2854295 () Bool)

(assert (=> b!2485948 m!2854295))

(declare-fun m!2854297 () Bool)

(assert (=> b!2485948 m!2854297))

(declare-fun m!2854299 () Bool)

(assert (=> b!2485948 m!2854299))

(declare-fun m!2854301 () Bool)

(assert (=> b!2485948 m!2854301))

(declare-fun m!2854303 () Bool)

(assert (=> b!2485948 m!2854303))

(declare-fun m!2854305 () Bool)

(assert (=> b!2485948 m!2854305))

(declare-fun m!2854307 () Bool)

(assert (=> b!2485948 m!2854307))

(declare-fun m!2854309 () Bool)

(assert (=> b!2485948 m!2854309))

(declare-fun m!2854311 () Bool)

(assert (=> b!2485948 m!2854311))

(declare-fun m!2854313 () Bool)

(assert (=> b!2485952 m!2854313))

(declare-fun m!2854315 () Bool)

(assert (=> b!2485951 m!2854315))

(declare-fun m!2854317 () Bool)

(assert (=> b!2485953 m!2854317))

(declare-fun m!2854319 () Bool)

(assert (=> b!2485950 m!2854319))

(declare-fun m!2854321 () Bool)

(assert (=> mapNonEmpty!15759 m!2854321))

(declare-fun m!2854323 () Bool)

(assert (=> b!2485944 m!2854323))

(declare-fun m!2854325 () Bool)

(assert (=> b!2485947 m!2854325))

(declare-fun m!2854327 () Bool)

(assert (=> b!2485947 m!2854327))

(declare-fun m!2854329 () Bool)

(assert (=> b!2485943 m!2854329))

(declare-fun m!2854331 () Bool)

(assert (=> b!2485943 m!2854331))

(declare-fun m!2854333 () Bool)

(assert (=> b!2485943 m!2854333))

(declare-fun m!2854335 () Bool)

(assert (=> b!2485943 m!2854335))

(declare-fun m!2854337 () Bool)

(assert (=> b!2485943 m!2854337))

(declare-fun m!2854339 () Bool)

(assert (=> b!2485943 m!2854339))

(declare-fun m!2854341 () Bool)

(assert (=> b!2485943 m!2854341))

(declare-fun m!2854343 () Bool)

(assert (=> b!2485943 m!2854343))

(declare-fun m!2854345 () Bool)

(assert (=> b!2485943 m!2854345))

(declare-fun m!2854347 () Bool)

(assert (=> b!2485946 m!2854347))

(check-sat (not b!2485944) b_and!188803 (not b!2485950) (not mapNonEmpty!15759) tp_is_empty!12389 (not b_next!73225) (not b!2485943) (not b_next!73227) (not b!2485953) (not b!2485948) (not b!2485952) (not b!2485949) (not b!2485951) (not b!2485942) b_and!188805 (not b!2485955) (not b!2485946) (not b!2485947))
(check-sat b_and!188805 b_and!188803 (not b_next!73225) (not b_next!73227))
(get-model)

(declare-fun b!2485975 () Bool)

(declare-fun e!1578476 () Bool)

(declare-datatypes ((List!29311 0))(
  ( (Nil!29211) (Cons!29211 (h!34628 K!5625) (t!211000 List!29311)) )
))
(declare-fun contains!5217 (List!29311 K!5625) Bool)

(declare-fun keys!9372 (ListMap!1145) List!29311)

(assert (=> b!2485975 (= e!1578476 (not (contains!5217 (keys!9372 (extractMap!190 (toList!1666 lt!892063))) key!2246)))))

(declare-fun b!2485976 () Bool)

(declare-fun e!1578474 () Bool)

(assert (=> b!2485976 (= e!1578474 (contains!5217 (keys!9372 (extractMap!190 (toList!1666 lt!892063))) key!2246))))

(declare-fun b!2485977 () Bool)

(declare-fun e!1578478 () List!29311)

(assert (=> b!2485977 (= e!1578478 (keys!9372 (extractMap!190 (toList!1666 lt!892063))))))

(declare-fun b!2485978 () Bool)

(declare-fun e!1578477 () Unit!42858)

(declare-fun lt!892097 () Unit!42858)

(assert (=> b!2485978 (= e!1578477 lt!892097)))

(declare-fun lt!892095 () Unit!42858)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!113 (List!29309 K!5625) Unit!42858)

(assert (=> b!2485978 (= lt!892095 (lemmaContainsKeyImpliesGetValueByKeyDefined!113 (toList!1667 (extractMap!190 (toList!1666 lt!892063))) key!2246))))

(declare-datatypes ((Option!5783 0))(
  ( (None!5782) (Some!5782 (v!31651 V!5827)) )
))
(declare-fun isDefined!4605 (Option!5783) Bool)

(declare-fun getValueByKey!156 (List!29309 K!5625) Option!5783)

(assert (=> b!2485978 (isDefined!4605 (getValueByKey!156 (toList!1667 (extractMap!190 (toList!1666 lt!892063))) key!2246))))

(declare-fun lt!892094 () Unit!42858)

(assert (=> b!2485978 (= lt!892094 lt!892095)))

(declare-fun lemmaInListThenGetKeysListContains!19 (List!29309 K!5625) Unit!42858)

(assert (=> b!2485978 (= lt!892097 (lemmaInListThenGetKeysListContains!19 (toList!1667 (extractMap!190 (toList!1666 lt!892063))) key!2246))))

(declare-fun call!152442 () Bool)

(assert (=> b!2485978 call!152442))

(declare-fun b!2485979 () Bool)

(declare-fun e!1578475 () Unit!42858)

(declare-fun Unit!42862 () Unit!42858)

(assert (=> b!2485979 (= e!1578475 Unit!42862)))

(declare-fun d!713679 () Bool)

(declare-fun e!1578473 () Bool)

(assert (=> d!713679 e!1578473))

(declare-fun res!1052263 () Bool)

(assert (=> d!713679 (=> res!1052263 e!1578473)))

(assert (=> d!713679 (= res!1052263 e!1578476)))

(declare-fun res!1052264 () Bool)

(assert (=> d!713679 (=> (not res!1052264) (not e!1578476))))

(declare-fun lt!892100 () Bool)

(assert (=> d!713679 (= res!1052264 (not lt!892100))))

(declare-fun lt!892093 () Bool)

(assert (=> d!713679 (= lt!892100 lt!892093)))

(declare-fun lt!892098 () Unit!42858)

(assert (=> d!713679 (= lt!892098 e!1578477)))

(declare-fun c!395128 () Bool)

(assert (=> d!713679 (= c!395128 lt!892093)))

(declare-fun containsKey!167 (List!29309 K!5625) Bool)

(assert (=> d!713679 (= lt!892093 (containsKey!167 (toList!1667 (extractMap!190 (toList!1666 lt!892063))) key!2246))))

(assert (=> d!713679 (= (contains!5216 (extractMap!190 (toList!1666 lt!892063)) key!2246) lt!892100)))

(declare-fun b!2485974 () Bool)

(assert (=> b!2485974 (= e!1578477 e!1578475)))

(declare-fun c!395129 () Bool)

(assert (=> b!2485974 (= c!395129 call!152442)))

(declare-fun bm!152437 () Bool)

(assert (=> bm!152437 (= call!152442 (contains!5217 e!1578478 key!2246))))

(declare-fun c!395127 () Bool)

(assert (=> bm!152437 (= c!395127 c!395128)))

(declare-fun b!2485980 () Bool)

(assert (=> b!2485980 false))

(declare-fun lt!892096 () Unit!42858)

(declare-fun lt!892099 () Unit!42858)

(assert (=> b!2485980 (= lt!892096 lt!892099)))

(assert (=> b!2485980 (containsKey!167 (toList!1667 (extractMap!190 (toList!1666 lt!892063))) key!2246)))

(declare-fun lemmaInGetKeysListThenContainsKey!19 (List!29309 K!5625) Unit!42858)

(assert (=> b!2485980 (= lt!892099 (lemmaInGetKeysListThenContainsKey!19 (toList!1667 (extractMap!190 (toList!1666 lt!892063))) key!2246))))

(declare-fun Unit!42863 () Unit!42858)

(assert (=> b!2485980 (= e!1578475 Unit!42863)))

(declare-fun b!2485981 () Bool)

(assert (=> b!2485981 (= e!1578473 e!1578474)))

(declare-fun res!1052262 () Bool)

(assert (=> b!2485981 (=> (not res!1052262) (not e!1578474))))

(assert (=> b!2485981 (= res!1052262 (isDefined!4605 (getValueByKey!156 (toList!1667 (extractMap!190 (toList!1666 lt!892063))) key!2246)))))

(declare-fun b!2485982 () Bool)

(declare-fun getKeysList!22 (List!29309) List!29311)

(assert (=> b!2485982 (= e!1578478 (getKeysList!22 (toList!1667 (extractMap!190 (toList!1666 lt!892063)))))))

(assert (= (and d!713679 c!395128) b!2485978))

(assert (= (and d!713679 (not c!395128)) b!2485974))

(assert (= (and b!2485974 c!395129) b!2485980))

(assert (= (and b!2485974 (not c!395129)) b!2485979))

(assert (= (or b!2485978 b!2485974) bm!152437))

(assert (= (and bm!152437 c!395127) b!2485982))

(assert (= (and bm!152437 (not c!395127)) b!2485977))

(assert (= (and d!713679 res!1052264) b!2485975))

(assert (= (and d!713679 (not res!1052263)) b!2485981))

(assert (= (and b!2485981 res!1052262) b!2485976))

(declare-fun m!2854349 () Bool)

(assert (=> b!2485980 m!2854349))

(declare-fun m!2854351 () Bool)

(assert (=> b!2485980 m!2854351))

(declare-fun m!2854353 () Bool)

(assert (=> b!2485978 m!2854353))

(declare-fun m!2854355 () Bool)

(assert (=> b!2485978 m!2854355))

(assert (=> b!2485978 m!2854355))

(declare-fun m!2854357 () Bool)

(assert (=> b!2485978 m!2854357))

(declare-fun m!2854359 () Bool)

(assert (=> b!2485978 m!2854359))

(assert (=> b!2485975 m!2854289))

(declare-fun m!2854361 () Bool)

(assert (=> b!2485975 m!2854361))

(assert (=> b!2485975 m!2854361))

(declare-fun m!2854363 () Bool)

(assert (=> b!2485975 m!2854363))

(declare-fun m!2854365 () Bool)

(assert (=> b!2485982 m!2854365))

(assert (=> b!2485976 m!2854289))

(assert (=> b!2485976 m!2854361))

(assert (=> b!2485976 m!2854361))

(assert (=> b!2485976 m!2854363))

(assert (=> b!2485977 m!2854289))

(assert (=> b!2485977 m!2854361))

(assert (=> b!2485981 m!2854355))

(assert (=> b!2485981 m!2854355))

(assert (=> b!2485981 m!2854357))

(assert (=> d!713679 m!2854349))

(declare-fun m!2854367 () Bool)

(assert (=> bm!152437 m!2854367))

(assert (=> b!2485949 d!713679))

(declare-fun bs!467970 () Bool)

(declare-fun d!713681 () Bool)

(assert (= bs!467970 (and d!713681 b!2485943)))

(declare-fun lambda!94539 () Int)

(assert (=> bs!467970 (= lambda!94539 lambda!94536)))

(declare-fun lt!892103 () ListMap!1145)

(declare-fun invariantList!423 (List!29309) Bool)

(assert (=> d!713681 (invariantList!423 (toList!1667 lt!892103))))

(declare-fun e!1578481 () ListMap!1145)

(assert (=> d!713681 (= lt!892103 e!1578481)))

(declare-fun c!395132 () Bool)

(assert (=> d!713681 (= c!395132 ((_ is Cons!29210) (toList!1666 lt!892063)))))

(assert (=> d!713681 (forall!6010 (toList!1666 lt!892063) lambda!94539)))

(assert (=> d!713681 (= (extractMap!190 (toList!1666 lt!892063)) lt!892103)))

(declare-fun b!2485987 () Bool)

(declare-fun addToMapMapFromBucket!17 (List!29309 ListMap!1145) ListMap!1145)

(assert (=> b!2485987 (= e!1578481 (addToMapMapFromBucket!17 (_2!17138 (h!34626 (toList!1666 lt!892063))) (extractMap!190 (t!210997 (toList!1666 lt!892063)))))))

(declare-fun b!2485988 () Bool)

(assert (=> b!2485988 (= e!1578481 (ListMap!1146 Nil!29209))))

(assert (= (and d!713681 c!395132) b!2485987))

(assert (= (and d!713681 (not c!395132)) b!2485988))

(declare-fun m!2854369 () Bool)

(assert (=> d!713681 m!2854369))

(declare-fun m!2854371 () Bool)

(assert (=> d!713681 m!2854371))

(declare-fun m!2854373 () Bool)

(assert (=> b!2485987 m!2854373))

(assert (=> b!2485987 m!2854373))

(declare-fun m!2854375 () Bool)

(assert (=> b!2485987 m!2854375))

(assert (=> b!2485949 d!713681))

(declare-fun d!713683 () Bool)

(declare-fun res!1052269 () Bool)

(declare-fun e!1578486 () Bool)

(assert (=> d!713683 (=> res!1052269 e!1578486)))

(assert (=> d!713683 (= res!1052269 ((_ is Nil!29210) (toList!1666 lt!892063)))))

(assert (=> d!713683 (= (forall!6010 (toList!1666 lt!892063) lambda!94536) e!1578486)))

(declare-fun b!2485993 () Bool)

(declare-fun e!1578487 () Bool)

(assert (=> b!2485993 (= e!1578486 e!1578487)))

(declare-fun res!1052270 () Bool)

(assert (=> b!2485993 (=> (not res!1052270) (not e!1578487))))

(declare-fun dynLambda!12504 (Int tuple2!29192) Bool)

(assert (=> b!2485993 (= res!1052270 (dynLambda!12504 lambda!94536 (h!34626 (toList!1666 lt!892063))))))

(declare-fun b!2485994 () Bool)

(assert (=> b!2485994 (= e!1578487 (forall!6010 (t!210997 (toList!1666 lt!892063)) lambda!94536))))

(assert (= (and d!713683 (not res!1052269)) b!2485993))

(assert (= (and b!2485993 res!1052270) b!2485994))

(declare-fun b_lambda!76343 () Bool)

(assert (=> (not b_lambda!76343) (not b!2485993)))

(declare-fun m!2854377 () Bool)

(assert (=> b!2485993 m!2854377))

(declare-fun m!2854379 () Bool)

(assert (=> b!2485994 m!2854379))

(assert (=> b!2485948 d!713683))

(declare-fun d!713685 () Bool)

(declare-fun map!6324 (LongMapFixedSize!6832) ListLongMap!617)

(assert (=> d!713685 (= (map!6323 (v!31646 (underlying!7040 (_2!17139 lt!892072)))) (map!6324 (v!31645 (underlying!7039 (v!31646 (underlying!7040 (_2!17139 lt!892072)))))))))

(declare-fun bs!467971 () Bool)

(assert (= bs!467971 d!713685))

(declare-fun m!2854381 () Bool)

(assert (=> bs!467971 m!2854381))

(assert (=> b!2485948 d!713685))

(declare-fun bs!467972 () Bool)

(declare-fun d!713687 () Bool)

(assert (= bs!467972 (and d!713687 b!2485943)))

(declare-fun lambda!94544 () Int)

(assert (=> bs!467972 (= lambda!94544 lambda!94536)))

(declare-fun bs!467973 () Bool)

(assert (= bs!467973 (and d!713687 d!713681)))

(assert (=> bs!467973 (= lambda!94544 lambda!94539)))

(declare-fun e!1578490 () Bool)

(assert (=> d!713687 e!1578490))

(declare-fun res!1052273 () Bool)

(assert (=> d!713687 (=> (not res!1052273) (not e!1578490))))

(declare-fun lt!892109 () ListLongMap!617)

(assert (=> d!713687 (= res!1052273 (forall!6010 (toList!1666 lt!892109) lambda!94544))))

(assert (=> d!713687 (= lt!892109 (+!109 lt!892063 (tuple2!29193 lt!892066 lt!892073)))))

(declare-fun lt!892108 () Unit!42858)

(declare-fun choose!14701 (ListLongMap!617 (_ BitVec 64) List!29309 Hashable!3326) Unit!42858)

(assert (=> d!713687 (= lt!892108 (choose!14701 lt!892063 lt!892066 lt!892073 (hashF!5332 (_2!17139 lt!892072))))))

(assert (=> d!713687 (forall!6010 (toList!1666 lt!892063) lambda!94544)))

(assert (=> d!713687 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!72 lt!892063 lt!892066 lt!892073 (hashF!5332 (_2!17139 lt!892072))) lt!892108)))

(declare-fun b!2485997 () Bool)

(assert (=> b!2485997 (= e!1578490 (allKeysSameHashInMap!193 lt!892109 (hashF!5332 (_2!17139 lt!892072))))))

(assert (= (and d!713687 res!1052273) b!2485997))

(declare-fun m!2854383 () Bool)

(assert (=> d!713687 m!2854383))

(assert (=> d!713687 m!2854307))

(declare-fun m!2854385 () Bool)

(assert (=> d!713687 m!2854385))

(declare-fun m!2854387 () Bool)

(assert (=> d!713687 m!2854387))

(declare-fun m!2854389 () Bool)

(assert (=> b!2485997 m!2854389))

(assert (=> b!2485948 d!713687))

(declare-fun d!713689 () Bool)

(declare-fun res!1052274 () Bool)

(declare-fun e!1578491 () Bool)

(assert (=> d!713689 (=> res!1052274 e!1578491)))

(assert (=> d!713689 (= res!1052274 ((_ is Nil!29210) (toList!1666 lt!892067)))))

(assert (=> d!713689 (= (forall!6010 (toList!1666 lt!892067) lambda!94536) e!1578491)))

(declare-fun b!2485998 () Bool)

(declare-fun e!1578492 () Bool)

(assert (=> b!2485998 (= e!1578491 e!1578492)))

(declare-fun res!1052275 () Bool)

(assert (=> b!2485998 (=> (not res!1052275) (not e!1578492))))

(assert (=> b!2485998 (= res!1052275 (dynLambda!12504 lambda!94536 (h!34626 (toList!1666 lt!892067))))))

(declare-fun b!2485999 () Bool)

(assert (=> b!2485999 (= e!1578492 (forall!6010 (t!210997 (toList!1666 lt!892067)) lambda!94536))))

(assert (= (and d!713689 (not res!1052274)) b!2485998))

(assert (= (and b!2485998 res!1052275) b!2485999))

(declare-fun b_lambda!76345 () Bool)

(assert (=> (not b_lambda!76345) (not b!2485998)))

(declare-fun m!2854391 () Bool)

(assert (=> b!2485998 m!2854391))

(declare-fun m!2854393 () Bool)

(assert (=> b!2485999 m!2854393))

(assert (=> b!2485948 d!713689))

(declare-fun d!713691 () Bool)

(declare-fun e!1578495 () Bool)

(assert (=> d!713691 e!1578495))

(declare-fun res!1052280 () Bool)

(assert (=> d!713691 (=> (not res!1052280) (not e!1578495))))

(declare-fun lt!892120 () ListLongMap!617)

(declare-fun contains!5218 (ListLongMap!617 (_ BitVec 64)) Bool)

(assert (=> d!713691 (= res!1052280 (contains!5218 lt!892120 (_1!17138 (tuple2!29193 lt!892066 lt!892073))))))

(declare-fun lt!892119 () List!29310)

(assert (=> d!713691 (= lt!892120 (ListLongMap!618 lt!892119))))

(declare-fun lt!892121 () Unit!42858)

(declare-fun lt!892118 () Unit!42858)

(assert (=> d!713691 (= lt!892121 lt!892118)))

(declare-datatypes ((Option!5784 0))(
  ( (None!5783) (Some!5783 (v!31652 List!29309)) )
))
(declare-fun getValueByKey!157 (List!29310 (_ BitVec 64)) Option!5784)

(assert (=> d!713691 (= (getValueByKey!157 lt!892119 (_1!17138 (tuple2!29193 lt!892066 lt!892073))) (Some!5783 (_2!17138 (tuple2!29193 lt!892066 lt!892073))))))

(declare-fun lemmaContainsTupThenGetReturnValue!27 (List!29310 (_ BitVec 64) List!29309) Unit!42858)

(assert (=> d!713691 (= lt!892118 (lemmaContainsTupThenGetReturnValue!27 lt!892119 (_1!17138 (tuple2!29193 lt!892066 lt!892073)) (_2!17138 (tuple2!29193 lt!892066 lt!892073))))))

(declare-fun insertStrictlySorted!21 (List!29310 (_ BitVec 64) List!29309) List!29310)

(assert (=> d!713691 (= lt!892119 (insertStrictlySorted!21 (toList!1666 lt!892063) (_1!17138 (tuple2!29193 lt!892066 lt!892073)) (_2!17138 (tuple2!29193 lt!892066 lt!892073))))))

(assert (=> d!713691 (= (+!109 lt!892063 (tuple2!29193 lt!892066 lt!892073)) lt!892120)))

(declare-fun b!2486004 () Bool)

(declare-fun res!1052281 () Bool)

(assert (=> b!2486004 (=> (not res!1052281) (not e!1578495))))

(assert (=> b!2486004 (= res!1052281 (= (getValueByKey!157 (toList!1666 lt!892120) (_1!17138 (tuple2!29193 lt!892066 lt!892073))) (Some!5783 (_2!17138 (tuple2!29193 lt!892066 lt!892073)))))))

(declare-fun b!2486005 () Bool)

(declare-fun contains!5219 (List!29310 tuple2!29192) Bool)

(assert (=> b!2486005 (= e!1578495 (contains!5219 (toList!1666 lt!892120) (tuple2!29193 lt!892066 lt!892073)))))

(assert (= (and d!713691 res!1052280) b!2486004))

(assert (= (and b!2486004 res!1052281) b!2486005))

(declare-fun m!2854395 () Bool)

(assert (=> d!713691 m!2854395))

(declare-fun m!2854397 () Bool)

(assert (=> d!713691 m!2854397))

(declare-fun m!2854399 () Bool)

(assert (=> d!713691 m!2854399))

(declare-fun m!2854401 () Bool)

(assert (=> d!713691 m!2854401))

(declare-fun m!2854403 () Bool)

(assert (=> b!2486004 m!2854403))

(declare-fun m!2854405 () Bool)

(assert (=> b!2486005 m!2854405))

(assert (=> b!2485948 d!713691))

(declare-fun d!713693 () Bool)

(assert (=> d!713693 (allKeysSameHash!92 (removePairForKey!110 lt!892069 key!2246) lt!892066 (hashF!5332 (_2!17139 lt!892072)))))

(declare-fun lt!892124 () Unit!42858)

(declare-fun choose!14702 (List!29309 K!5625 (_ BitVec 64) Hashable!3326) Unit!42858)

(assert (=> d!713693 (= lt!892124 (choose!14702 lt!892069 key!2246 lt!892066 (hashF!5332 (_2!17139 lt!892072))))))

(assert (=> d!713693 (noDuplicateKeys!118 lt!892069)))

(assert (=> d!713693 (= (lemmaRemovePairForKeyPreservesHash!81 lt!892069 key!2246 lt!892066 (hashF!5332 (_2!17139 lt!892072))) lt!892124)))

(declare-fun bs!467974 () Bool)

(assert (= bs!467974 d!713693))

(assert (=> bs!467974 m!2854341))

(assert (=> bs!467974 m!2854341))

(declare-fun m!2854407 () Bool)

(assert (=> bs!467974 m!2854407))

(declare-fun m!2854409 () Bool)

(assert (=> bs!467974 m!2854409))

(declare-fun m!2854411 () Bool)

(assert (=> bs!467974 m!2854411))

(assert (=> b!2485948 d!713693))

(declare-fun bs!467975 () Bool)

(declare-fun d!713695 () Bool)

(assert (= bs!467975 (and d!713695 b!2485943)))

(declare-fun lambda!94547 () Int)

(assert (=> bs!467975 (not (= lambda!94547 lambda!94536))))

(declare-fun bs!467976 () Bool)

(assert (= bs!467976 (and d!713695 d!713681)))

(assert (=> bs!467976 (not (= lambda!94547 lambda!94539))))

(declare-fun bs!467977 () Bool)

(assert (= bs!467977 (and d!713695 d!713687)))

(assert (=> bs!467977 (not (= lambda!94547 lambda!94544))))

(assert (=> d!713695 true))

(assert (=> d!713695 (allKeysSameHash!92 lt!892069 lt!892066 (hashF!5332 (_2!17139 lt!892072)))))

(declare-fun lt!892127 () Unit!42858)

(declare-fun choose!14703 (List!29310 (_ BitVec 64) List!29309 Hashable!3326) Unit!42858)

(assert (=> d!713695 (= lt!892127 (choose!14703 (toList!1666 lt!892063) lt!892066 lt!892069 (hashF!5332 (_2!17139 lt!892072))))))

(assert (=> d!713695 (forall!6010 (toList!1666 lt!892063) lambda!94547)))

(assert (=> d!713695 (= (lemmaInLongMapAllKeySameHashThenForTuple!85 (toList!1666 lt!892063) lt!892066 lt!892069 (hashF!5332 (_2!17139 lt!892072))) lt!892127)))

(declare-fun bs!467978 () Bool)

(assert (= bs!467978 d!713695))

(assert (=> bs!467978 m!2854297))

(declare-fun m!2854413 () Bool)

(assert (=> bs!467978 m!2854413))

(declare-fun m!2854415 () Bool)

(assert (=> bs!467978 m!2854415))

(assert (=> b!2485948 d!713695))

(declare-fun d!713697 () Bool)

(declare-fun res!1052282 () Bool)

(declare-fun e!1578496 () Bool)

(assert (=> d!713697 (=> res!1052282 e!1578496)))

(assert (=> d!713697 (= res!1052282 ((_ is Nil!29210) (toList!1666 lt!892075)))))

(assert (=> d!713697 (= (forall!6010 (toList!1666 lt!892075) lambda!94536) e!1578496)))

(declare-fun b!2486008 () Bool)

(declare-fun e!1578497 () Bool)

(assert (=> b!2486008 (= e!1578496 e!1578497)))

(declare-fun res!1052283 () Bool)

(assert (=> b!2486008 (=> (not res!1052283) (not e!1578497))))

(assert (=> b!2486008 (= res!1052283 (dynLambda!12504 lambda!94536 (h!34626 (toList!1666 lt!892075))))))

(declare-fun b!2486009 () Bool)

(assert (=> b!2486009 (= e!1578497 (forall!6010 (t!210997 (toList!1666 lt!892075)) lambda!94536))))

(assert (= (and d!713697 (not res!1052282)) b!2486008))

(assert (= (and b!2486008 res!1052283) b!2486009))

(declare-fun b_lambda!76347 () Bool)

(assert (=> (not b_lambda!76347) (not b!2486008)))

(declare-fun m!2854417 () Bool)

(assert (=> b!2486008 m!2854417))

(declare-fun m!2854419 () Bool)

(assert (=> b!2486009 m!2854419))

(assert (=> b!2485948 d!713697))

(declare-fun d!713699 () Bool)

(assert (=> d!713699 true))

(assert (=> d!713699 true))

(declare-fun lambda!94550 () Int)

(declare-fun forall!6011 (List!29309 Int) Bool)

(assert (=> d!713699 (= (allKeysSameHash!92 lt!892069 lt!892066 (hashF!5332 (_2!17139 lt!892072))) (forall!6011 lt!892069 lambda!94550))))

(declare-fun bs!467979 () Bool)

(assert (= bs!467979 d!713699))

(declare-fun m!2854421 () Bool)

(assert (=> bs!467979 m!2854421))

(assert (=> b!2485948 d!713699))

(declare-fun bs!467980 () Bool)

(declare-fun d!713701 () Bool)

(assert (= bs!467980 (and d!713701 d!713699)))

(declare-fun lambda!94551 () Int)

(assert (=> bs!467980 (= lambda!94551 lambda!94550)))

(assert (=> d!713701 true))

(assert (=> d!713701 true))

(assert (=> d!713701 (= (allKeysSameHash!92 lt!892073 lt!892066 (hashF!5332 (_2!17139 lt!892072))) (forall!6011 lt!892073 lambda!94551))))

(declare-fun bs!467981 () Bool)

(assert (= bs!467981 d!713701))

(declare-fun m!2854423 () Bool)

(assert (=> bs!467981 m!2854423))

(assert (=> b!2485948 d!713701))

(declare-fun d!713703 () Bool)

(assert (=> d!713703 (= (array_inv!3899 (_keys!3713 (v!31645 (underlying!7039 (v!31646 (underlying!7040 thiss!42540)))))) (bvsge (size!22842 (_keys!3713 (v!31645 (underlying!7039 (v!31646 (underlying!7040 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2485947 d!713703))

(declare-fun d!713705 () Bool)

(assert (=> d!713705 (= (array_inv!3900 (_values!3696 (v!31645 (underlying!7039 (v!31646 (underlying!7040 thiss!42540)))))) (bvsge (size!22841 (_values!3696 (v!31645 (underlying!7039 (v!31646 (underlying!7040 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2485947 d!713705))

(declare-fun bs!467982 () Bool)

(declare-fun b!2486041 () Bool)

(assert (= bs!467982 (and b!2486041 b!2485943)))

(declare-fun lambda!94554 () Int)

(assert (=> bs!467982 (= lambda!94554 lambda!94536)))

(declare-fun bs!467983 () Bool)

(assert (= bs!467983 (and b!2486041 d!713681)))

(assert (=> bs!467983 (= lambda!94554 lambda!94539)))

(declare-fun bs!467984 () Bool)

(assert (= bs!467984 (and b!2486041 d!713687)))

(assert (=> bs!467984 (= lambda!94554 lambda!94544)))

(declare-fun bs!467985 () Bool)

(assert (= bs!467985 (and b!2486041 d!713695)))

(assert (=> bs!467985 (not (= lambda!94554 lambda!94547))))

(declare-fun c!395144 () Bool)

(declare-fun call!152455 () ListLongMap!617)

(declare-fun call!152457 () (_ BitVec 64))

(declare-fun call!152458 () List!29309)

(declare-fun bm!152450 () Bool)

(declare-fun lt!892175 () ListLongMap!617)

(declare-fun apply!6988 (ListLongMap!617 (_ BitVec 64)) List!29309)

(assert (=> bm!152450 (= call!152458 (apply!6988 (ite c!395144 lt!892175 call!152455) call!152457))))

(declare-fun e!1578518 () Bool)

(declare-fun b!2486036 () Bool)

(declare-fun lt!892187 () (_ BitVec 64))

(declare-datatypes ((Option!5785 0))(
  ( (None!5784) (Some!5784 (v!31653 tuple2!29190)) )
))
(declare-fun isDefined!4606 (Option!5785) Bool)

(declare-fun getPair!84 (List!29309 K!5625) Option!5785)

(assert (=> b!2486036 (= e!1578518 (isDefined!4606 (getPair!84 (apply!6987 (v!31646 (underlying!7040 thiss!42540)) lt!892187) key!2246)))))

(declare-fun b!2486037 () Bool)

(declare-fun e!1578513 () Unit!42858)

(declare-fun Unit!42864 () Unit!42858)

(assert (=> b!2486037 (= e!1578513 Unit!42864)))

(declare-fun b!2486038 () Bool)

(assert (=> b!2486038 false))

(declare-fun lt!892180 () Unit!42858)

(declare-fun lt!892182 () Unit!42858)

(assert (=> b!2486038 (= lt!892180 lt!892182)))

(declare-fun lt!892185 () List!29310)

(declare-fun lt!892168 () List!29309)

(assert (=> b!2486038 (contains!5219 lt!892185 (tuple2!29193 lt!892187 lt!892168))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!89 (List!29310 (_ BitVec 64) List!29309) Unit!42858)

(assert (=> b!2486038 (= lt!892182 (lemmaGetValueByKeyImpliesContainsTuple!89 lt!892185 lt!892187 lt!892168))))

(assert (=> b!2486038 (= lt!892168 (apply!6987 (v!31646 (underlying!7040 thiss!42540)) lt!892187))))

(assert (=> b!2486038 (= lt!892185 (toList!1666 (map!6323 (v!31646 (underlying!7040 thiss!42540)))))))

(declare-fun lt!892169 () Unit!42858)

(declare-fun lt!892184 () Unit!42858)

(assert (=> b!2486038 (= lt!892169 lt!892184)))

(declare-fun lt!892183 () List!29310)

(declare-fun isDefined!4607 (Option!5784) Bool)

(assert (=> b!2486038 (isDefined!4607 (getValueByKey!157 lt!892183 lt!892187))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!114 (List!29310 (_ BitVec 64)) Unit!42858)

(assert (=> b!2486038 (= lt!892184 (lemmaContainsKeyImpliesGetValueByKeyDefined!114 lt!892183 lt!892187))))

(assert (=> b!2486038 (= lt!892183 (toList!1666 (map!6323 (v!31646 (underlying!7040 thiss!42540)))))))

(declare-fun lt!892173 () Unit!42858)

(declare-fun lt!892178 () Unit!42858)

(assert (=> b!2486038 (= lt!892173 lt!892178)))

(declare-fun lt!892177 () List!29310)

(declare-fun containsKey!168 (List!29310 (_ BitVec 64)) Bool)

(assert (=> b!2486038 (containsKey!168 lt!892177 lt!892187)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!85 (List!29310 (_ BitVec 64)) Unit!42858)

(assert (=> b!2486038 (= lt!892178 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!85 lt!892177 lt!892187))))

(assert (=> b!2486038 (= lt!892177 (toList!1666 (map!6323 (v!31646 (underlying!7040 thiss!42540)))))))

(declare-fun Unit!42865 () Unit!42858)

(assert (=> b!2486038 (= e!1578513 Unit!42865)))

(declare-fun d!713707 () Bool)

(declare-fun lt!892186 () Bool)

(assert (=> d!713707 (= lt!892186 (contains!5216 (map!6322 thiss!42540) key!2246))))

(assert (=> d!713707 (= lt!892186 e!1578518)))

(declare-fun res!1052291 () Bool)

(assert (=> d!713707 (=> (not res!1052291) (not e!1578518))))

(declare-fun contains!5220 (MutLongMap!3416 (_ BitVec 64)) Bool)

(assert (=> d!713707 (= res!1052291 (contains!5220 (v!31646 (underlying!7040 thiss!42540)) lt!892187))))

(declare-fun lt!892171 () Unit!42858)

(declare-fun e!1578516 () Unit!42858)

(assert (=> d!713707 (= lt!892171 e!1578516)))

(assert (=> d!713707 (= c!395144 (contains!5216 (extractMap!190 (toList!1666 (map!6323 (v!31646 (underlying!7040 thiss!42540))))) key!2246))))

(declare-fun lt!892181 () Unit!42858)

(declare-fun e!1578517 () Unit!42858)

(assert (=> d!713707 (= lt!892181 e!1578517)))

(declare-fun c!395141 () Bool)

(assert (=> d!713707 (= c!395141 (contains!5220 (v!31646 (underlying!7040 thiss!42540)) lt!892187))))

(assert (=> d!713707 (= lt!892187 (hash!768 (hashF!5332 thiss!42540) key!2246))))

(assert (=> d!713707 (valid!2627 thiss!42540)))

(assert (=> d!713707 (= (contains!5215 thiss!42540 key!2246) lt!892186)))

(declare-fun bm!152451 () Bool)

(declare-fun call!152459 () Bool)

(declare-fun call!152460 () Option!5785)

(assert (=> bm!152451 (= call!152459 (isDefined!4606 call!152460))))

(declare-fun b!2486039 () Bool)

(declare-fun Unit!42866 () Unit!42858)

(assert (=> b!2486039 (= e!1578517 Unit!42866)))

(declare-fun bm!152452 () Bool)

(assert (=> bm!152452 (= call!152455 (map!6323 (v!31646 (underlying!7040 thiss!42540))))))

(declare-fun b!2486040 () Bool)

(assert (=> b!2486040 false))

(declare-fun lt!892176 () Unit!42858)

(declare-fun lt!892170 () Unit!42858)

(assert (=> b!2486040 (= lt!892176 lt!892170)))

(declare-fun lt!892174 () ListLongMap!617)

(assert (=> b!2486040 (contains!5216 (extractMap!190 (toList!1666 lt!892174)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!84 (ListLongMap!617 K!5625 Hashable!3326) Unit!42858)

(assert (=> b!2486040 (= lt!892170 (lemmaInLongMapThenInGenericMap!84 lt!892174 key!2246 (hashF!5332 thiss!42540)))))

(assert (=> b!2486040 (= lt!892174 call!152455)))

(declare-fun e!1578515 () Unit!42858)

(declare-fun Unit!42867 () Unit!42858)

(assert (=> b!2486040 (= e!1578515 Unit!42867)))

(declare-fun bm!152453 () Bool)

(assert (=> bm!152453 (= call!152460 (getPair!84 call!152458 key!2246))))

(assert (=> b!2486041 (= e!1578517 (forallContained!899 (toList!1666 (map!6323 (v!31646 (underlying!7040 thiss!42540)))) lambda!94554 (tuple2!29193 lt!892187 (apply!6987 (v!31646 (underlying!7040 thiss!42540)) lt!892187))))))

(declare-fun c!395142 () Bool)

(assert (=> b!2486041 (= c!395142 (not (contains!5219 (toList!1666 (map!6323 (v!31646 (underlying!7040 thiss!42540)))) (tuple2!29193 lt!892187 (apply!6987 (v!31646 (underlying!7040 thiss!42540)) lt!892187)))))))

(declare-fun lt!892172 () Unit!42858)

(assert (=> b!2486041 (= lt!892172 e!1578513)))

(declare-fun b!2486042 () Bool)

(assert (=> b!2486042 (= e!1578516 e!1578515)))

(declare-fun res!1052292 () Bool)

(declare-fun call!152456 () Bool)

(assert (=> b!2486042 (= res!1052292 call!152456)))

(declare-fun e!1578512 () Bool)

(assert (=> b!2486042 (=> (not res!1052292) (not e!1578512))))

(declare-fun c!395143 () Bool)

(assert (=> b!2486042 (= c!395143 e!1578512)))

(declare-fun bm!152454 () Bool)

(assert (=> bm!152454 (= call!152456 (contains!5218 (ite c!395144 lt!892175 call!152455) call!152457))))

(declare-fun bm!152455 () Bool)

(assert (=> bm!152455 (= call!152457 (hash!768 (hashF!5332 thiss!42540) key!2246))))

(declare-fun b!2486043 () Bool)

(declare-fun Unit!42868 () Unit!42858)

(assert (=> b!2486043 (= e!1578515 Unit!42868)))

(declare-fun b!2486044 () Bool)

(declare-fun e!1578514 () Bool)

(assert (=> b!2486044 (= e!1578514 call!152459)))

(declare-fun b!2486045 () Bool)

(assert (=> b!2486045 (= e!1578512 call!152459)))

(declare-fun b!2486046 () Bool)

(declare-fun lt!892179 () Unit!42858)

(assert (=> b!2486046 (= e!1578516 lt!892179)))

(assert (=> b!2486046 (= lt!892175 call!152455)))

(declare-fun lemmaInGenericMapThenInLongMap!84 (ListLongMap!617 K!5625 Hashable!3326) Unit!42858)

(assert (=> b!2486046 (= lt!892179 (lemmaInGenericMapThenInLongMap!84 lt!892175 key!2246 (hashF!5332 thiss!42540)))))

(declare-fun res!1052290 () Bool)

(assert (=> b!2486046 (= res!1052290 call!152456)))

(assert (=> b!2486046 (=> (not res!1052290) (not e!1578514))))

(assert (=> b!2486046 e!1578514))

(assert (= (and d!713707 c!395141) b!2486041))

(assert (= (and d!713707 (not c!395141)) b!2486039))

(assert (= (and b!2486041 c!395142) b!2486038))

(assert (= (and b!2486041 (not c!395142)) b!2486037))

(assert (= (and d!713707 c!395144) b!2486046))

(assert (= (and d!713707 (not c!395144)) b!2486042))

(assert (= (and b!2486046 res!1052290) b!2486044))

(assert (= (and b!2486042 res!1052292) b!2486045))

(assert (= (and b!2486042 c!395143) b!2486040))

(assert (= (and b!2486042 (not c!395143)) b!2486043))

(assert (= (or b!2486046 b!2486044 b!2486042 b!2486045) bm!152455))

(assert (= (or b!2486046 b!2486042 b!2486045 b!2486040) bm!152452))

(assert (= (or b!2486046 b!2486042) bm!152454))

(assert (= (or b!2486044 b!2486045) bm!152450))

(assert (= (or b!2486044 b!2486045) bm!152453))

(assert (= (or b!2486044 b!2486045) bm!152451))

(assert (= (and d!713707 res!1052291) b!2486036))

(declare-fun m!2854425 () Bool)

(assert (=> b!2486040 m!2854425))

(assert (=> b!2486040 m!2854425))

(declare-fun m!2854427 () Bool)

(assert (=> b!2486040 m!2854427))

(declare-fun m!2854429 () Bool)

(assert (=> b!2486040 m!2854429))

(declare-fun m!2854431 () Bool)

(assert (=> bm!152453 m!2854431))

(declare-fun m!2854433 () Bool)

(assert (=> bm!152454 m!2854433))

(assert (=> b!2486041 m!2854329))

(declare-fun m!2854435 () Bool)

(assert (=> b!2486041 m!2854435))

(declare-fun m!2854437 () Bool)

(assert (=> b!2486041 m!2854437))

(declare-fun m!2854439 () Bool)

(assert (=> b!2486041 m!2854439))

(assert (=> bm!152452 m!2854329))

(assert (=> d!713707 m!2854337))

(declare-fun m!2854441 () Bool)

(assert (=> d!713707 m!2854441))

(assert (=> d!713707 m!2854333))

(assert (=> d!713707 m!2854333))

(declare-fun m!2854443 () Bool)

(assert (=> d!713707 m!2854443))

(assert (=> d!713707 m!2854441))

(declare-fun m!2854445 () Bool)

(assert (=> d!713707 m!2854445))

(declare-fun m!2854447 () Bool)

(assert (=> d!713707 m!2854447))

(assert (=> d!713707 m!2854329))

(assert (=> d!713707 m!2854319))

(declare-fun m!2854449 () Bool)

(assert (=> b!2486038 m!2854449))

(declare-fun m!2854451 () Bool)

(assert (=> b!2486038 m!2854451))

(assert (=> b!2486038 m!2854329))

(declare-fun m!2854453 () Bool)

(assert (=> b!2486038 m!2854453))

(declare-fun m!2854455 () Bool)

(assert (=> b!2486038 m!2854455))

(assert (=> b!2486038 m!2854453))

(declare-fun m!2854457 () Bool)

(assert (=> b!2486038 m!2854457))

(assert (=> b!2486038 m!2854435))

(declare-fun m!2854459 () Bool)

(assert (=> b!2486038 m!2854459))

(declare-fun m!2854461 () Bool)

(assert (=> b!2486038 m!2854461))

(declare-fun m!2854463 () Bool)

(assert (=> bm!152450 m!2854463))

(assert (=> bm!152455 m!2854337))

(declare-fun m!2854465 () Bool)

(assert (=> bm!152451 m!2854465))

(assert (=> b!2486036 m!2854435))

(assert (=> b!2486036 m!2854435))

(declare-fun m!2854467 () Bool)

(assert (=> b!2486036 m!2854467))

(assert (=> b!2486036 m!2854467))

(declare-fun m!2854469 () Bool)

(assert (=> b!2486036 m!2854469))

(declare-fun m!2854471 () Bool)

(assert (=> b!2486046 m!2854471))

(assert (=> b!2485946 d!713707))

(declare-fun bs!467986 () Bool)

(declare-fun d!713709 () Bool)

(assert (= bs!467986 (and d!713709 b!2486041)))

(declare-fun lambda!94557 () Int)

(assert (=> bs!467986 (not (= lambda!94557 lambda!94554))))

(declare-fun bs!467987 () Bool)

(assert (= bs!467987 (and d!713709 b!2485943)))

(assert (=> bs!467987 (not (= lambda!94557 lambda!94536))))

(declare-fun bs!467988 () Bool)

(assert (= bs!467988 (and d!713709 d!713687)))

(assert (=> bs!467988 (not (= lambda!94557 lambda!94544))))

(declare-fun bs!467989 () Bool)

(assert (= bs!467989 (and d!713709 d!713681)))

(assert (=> bs!467989 (not (= lambda!94557 lambda!94539))))

(declare-fun bs!467990 () Bool)

(assert (= bs!467990 (and d!713709 d!713695)))

(assert (=> bs!467990 (= lambda!94557 lambda!94547)))

(assert (=> d!713709 true))

(assert (=> d!713709 (= (allKeysSameHashInMap!193 lt!892075 (hashF!5332 (_2!17139 lt!892072))) (forall!6010 (toList!1666 lt!892075) lambda!94557))))

(declare-fun bs!467991 () Bool)

(assert (= bs!467991 d!713709))

(declare-fun m!2854473 () Bool)

(assert (=> bs!467991 m!2854473))

(assert (=> b!2485944 d!713709))

(declare-fun bs!467992 () Bool)

(declare-fun d!713711 () Bool)

(assert (= bs!467992 (and d!713711 d!713709)))

(declare-fun lambda!94558 () Int)

(assert (=> bs!467992 (= lambda!94558 lambda!94557)))

(declare-fun bs!467993 () Bool)

(assert (= bs!467993 (and d!713711 b!2486041)))

(assert (=> bs!467993 (not (= lambda!94558 lambda!94554))))

(declare-fun bs!467994 () Bool)

(assert (= bs!467994 (and d!713711 b!2485943)))

(assert (=> bs!467994 (not (= lambda!94558 lambda!94536))))

(declare-fun bs!467995 () Bool)

(assert (= bs!467995 (and d!713711 d!713687)))

(assert (=> bs!467995 (not (= lambda!94558 lambda!94544))))

(declare-fun bs!467996 () Bool)

(assert (= bs!467996 (and d!713711 d!713681)))

(assert (=> bs!467996 (not (= lambda!94558 lambda!94539))))

(declare-fun bs!467997 () Bool)

(assert (= bs!467997 (and d!713711 d!713695)))

(assert (=> bs!467997 (= lambda!94558 lambda!94547)))

(assert (=> d!713711 true))

(assert (=> d!713711 (= (allKeysSameHashInMap!193 lt!892067 (hashF!5332 (_2!17139 lt!892072))) (forall!6010 (toList!1666 lt!892067) lambda!94558))))

(declare-fun bs!467998 () Bool)

(assert (= bs!467998 d!713711))

(declare-fun m!2854475 () Bool)

(assert (=> bs!467998 m!2854475))

(assert (=> b!2485953 d!713711))

(declare-fun d!713713 () Bool)

(declare-fun hash!772 (Hashable!3326 K!5625) (_ BitVec 64))

(assert (=> d!713713 (= (hash!768 (hashF!5332 thiss!42540) key!2246) (hash!772 (hashF!5332 thiss!42540) key!2246))))

(declare-fun bs!467999 () Bool)

(assert (= bs!467999 d!713713))

(declare-fun m!2854477 () Bool)

(assert (=> bs!467999 m!2854477))

(assert (=> b!2485943 d!713713))

(declare-fun d!713715 () Bool)

(assert (=> d!713715 (dynLambda!12504 lambda!94536 (tuple2!29193 lt!892066 lt!892069))))

(declare-fun lt!892190 () Unit!42858)

(declare-fun choose!14704 (List!29310 Int tuple2!29192) Unit!42858)

(assert (=> d!713715 (= lt!892190 (choose!14704 (toList!1666 lt!892063) lambda!94536 (tuple2!29193 lt!892066 lt!892069)))))

(declare-fun e!1578521 () Bool)

(assert (=> d!713715 e!1578521))

(declare-fun res!1052295 () Bool)

(assert (=> d!713715 (=> (not res!1052295) (not e!1578521))))

(assert (=> d!713715 (= res!1052295 (forall!6010 (toList!1666 lt!892063) lambda!94536))))

(assert (=> d!713715 (= (forallContained!899 (toList!1666 lt!892063) lambda!94536 (tuple2!29193 lt!892066 lt!892069)) lt!892190)))

(declare-fun b!2486049 () Bool)

(assert (=> b!2486049 (= e!1578521 (contains!5219 (toList!1666 lt!892063) (tuple2!29193 lt!892066 lt!892069)))))

(assert (= (and d!713715 res!1052295) b!2486049))

(declare-fun b_lambda!76349 () Bool)

(assert (=> (not b_lambda!76349) (not d!713715)))

(declare-fun m!2854479 () Bool)

(assert (=> d!713715 m!2854479))

(declare-fun m!2854481 () Bool)

(assert (=> d!713715 m!2854481))

(assert (=> d!713715 m!2854301))

(declare-fun m!2854483 () Bool)

(assert (=> b!2486049 m!2854483))

(assert (=> b!2485943 d!713715))

(declare-fun b!2486061 () Bool)

(declare-fun e!1578527 () List!29309)

(assert (=> b!2486061 (= e!1578527 Nil!29209)))

(declare-fun b!2486058 () Bool)

(declare-fun e!1578526 () List!29309)

(assert (=> b!2486058 (= e!1578526 (t!210996 lt!892069))))

(declare-fun b!2486060 () Bool)

(assert (=> b!2486060 (= e!1578527 (Cons!29209 (h!34625 lt!892069) (removePairForKey!110 (t!210996 lt!892069) key!2246)))))

(declare-fun d!713717 () Bool)

(declare-fun lt!892193 () List!29309)

(declare-fun containsKey!169 (List!29309 K!5625) Bool)

(assert (=> d!713717 (not (containsKey!169 lt!892193 key!2246))))

(assert (=> d!713717 (= lt!892193 e!1578526)))

(declare-fun c!395149 () Bool)

(assert (=> d!713717 (= c!395149 (and ((_ is Cons!29209) lt!892069) (= (_1!17137 (h!34625 lt!892069)) key!2246)))))

(assert (=> d!713717 (noDuplicateKeys!118 lt!892069)))

(assert (=> d!713717 (= (removePairForKey!110 lt!892069 key!2246) lt!892193)))

(declare-fun b!2486059 () Bool)

(assert (=> b!2486059 (= e!1578526 e!1578527)))

(declare-fun c!395150 () Bool)

(assert (=> b!2486059 (= c!395150 ((_ is Cons!29209) lt!892069))))

(assert (= (and d!713717 c!395149) b!2486058))

(assert (= (and d!713717 (not c!395149)) b!2486059))

(assert (= (and b!2486059 c!395150) b!2486060))

(assert (= (and b!2486059 (not c!395150)) b!2486061))

(declare-fun m!2854485 () Bool)

(assert (=> b!2486060 m!2854485))

(declare-fun m!2854487 () Bool)

(assert (=> d!713717 m!2854487))

(assert (=> d!713717 m!2854411))

(assert (=> b!2485943 d!713717))

(declare-fun d!713719 () Bool)

(assert (=> d!713719 (= (map!6323 (v!31646 (underlying!7040 thiss!42540))) (map!6324 (v!31645 (underlying!7039 (v!31646 (underlying!7040 thiss!42540))))))))

(declare-fun bs!468000 () Bool)

(assert (= bs!468000 d!713719))

(declare-fun m!2854489 () Bool)

(assert (=> bs!468000 m!2854489))

(assert (=> b!2485943 d!713719))

(declare-fun d!713721 () Bool)

(declare-fun res!1052300 () Bool)

(declare-fun e!1578532 () Bool)

(assert (=> d!713721 (=> res!1052300 e!1578532)))

(assert (=> d!713721 (= res!1052300 (not ((_ is Cons!29209) lt!892073)))))

(assert (=> d!713721 (= (noDuplicateKeys!118 lt!892073) e!1578532)))

(declare-fun b!2486066 () Bool)

(declare-fun e!1578533 () Bool)

(assert (=> b!2486066 (= e!1578532 e!1578533)))

(declare-fun res!1052301 () Bool)

(assert (=> b!2486066 (=> (not res!1052301) (not e!1578533))))

(assert (=> b!2486066 (= res!1052301 (not (containsKey!169 (t!210996 lt!892073) (_1!17137 (h!34625 lt!892073)))))))

(declare-fun b!2486067 () Bool)

(assert (=> b!2486067 (= e!1578533 (noDuplicateKeys!118 (t!210996 lt!892073)))))

(assert (= (and d!713721 (not res!1052300)) b!2486066))

(assert (= (and b!2486066 res!1052301) b!2486067))

(declare-fun m!2854491 () Bool)

(assert (=> b!2486066 m!2854491))

(declare-fun m!2854493 () Bool)

(assert (=> b!2486067 m!2854493))

(assert (=> b!2485943 d!713721))

(declare-fun d!713723 () Bool)

(declare-fun lt!892196 () ListMap!1145)

(assert (=> d!713723 (invariantList!423 (toList!1667 lt!892196))))

(assert (=> d!713723 (= lt!892196 (extractMap!190 (toList!1666 (map!6323 (v!31646 (underlying!7040 thiss!42540))))))))

(assert (=> d!713723 (valid!2627 thiss!42540)))

(assert (=> d!713723 (= (map!6322 thiss!42540) lt!892196)))

(declare-fun bs!468001 () Bool)

(assert (= bs!468001 d!713723))

(declare-fun m!2854495 () Bool)

(assert (=> bs!468001 m!2854495))

(assert (=> bs!468001 m!2854329))

(assert (=> bs!468001 m!2854441))

(assert (=> bs!468001 m!2854319))

(assert (=> b!2485943 d!713723))

(declare-fun b!2486086 () Bool)

(declare-fun e!1578546 () Bool)

(declare-fun e!1578544 () Bool)

(assert (=> b!2486086 (= e!1578546 e!1578544)))

(declare-fun c!395158 () Bool)

(declare-fun lt!892205 () tuple2!29196)

(assert (=> b!2486086 (= c!395158 (_1!17140 lt!892205))))

(declare-fun b!2486087 () Bool)

(declare-fun e!1578548 () Bool)

(assert (=> b!2486087 (= e!1578544 e!1578548)))

(declare-fun res!1052309 () Bool)

(declare-fun call!152466 () ListLongMap!617)

(assert (=> b!2486087 (= res!1052309 (contains!5218 call!152466 lt!892066))))

(assert (=> b!2486087 (=> (not res!1052309) (not e!1578548))))

(declare-fun b!2486088 () Bool)

(declare-fun res!1052308 () Bool)

(assert (=> b!2486088 (=> (not res!1052308) (not e!1578546))))

(declare-fun valid!2628 (MutLongMap!3416) Bool)

(assert (=> b!2486088 (= res!1052308 (valid!2628 (_2!17140 lt!892205)))))

(declare-fun b!2486089 () Bool)

(declare-fun e!1578547 () tuple2!29196)

(declare-fun lt!892208 () tuple2!29196)

(assert (=> b!2486089 (= e!1578547 (tuple2!29197 (_1!17140 lt!892208) (_2!17140 lt!892208)))))

(declare-fun repack!32 (MutLongMap!3416) tuple2!29196)

(assert (=> b!2486089 (= lt!892208 (repack!32 (v!31646 (underlying!7040 thiss!42540))))))

(declare-fun b!2486090 () Bool)

(declare-fun e!1578545 () tuple2!29196)

(declare-fun lt!892207 () tuple2!29196)

(assert (=> b!2486090 (= e!1578545 (tuple2!29197 false (_2!17140 lt!892207)))))

(declare-fun bm!152460 () Bool)

(assert (=> bm!152460 (= call!152466 (map!6323 (_2!17140 lt!892205)))))

(declare-fun bm!152461 () Bool)

(declare-fun call!152465 () ListLongMap!617)

(assert (=> bm!152461 (= call!152465 (map!6323 (v!31646 (underlying!7040 thiss!42540))))))

(declare-fun d!713725 () Bool)

(assert (=> d!713725 e!1578546))

(declare-fun res!1052310 () Bool)

(assert (=> d!713725 (=> (not res!1052310) (not e!1578546))))

(assert (=> d!713725 (= res!1052310 ((_ is LongMap!3416) (_2!17140 lt!892205)))))

(assert (=> d!713725 (= lt!892205 e!1578545)))

(declare-fun c!395157 () Bool)

(assert (=> d!713725 (= c!395157 (_1!17140 lt!892207))))

(assert (=> d!713725 (= lt!892207 e!1578547)))

(declare-fun c!395159 () Bool)

(declare-fun imbalanced!28 (MutLongMap!3416) Bool)

(assert (=> d!713725 (= c!395159 (imbalanced!28 (v!31646 (underlying!7040 thiss!42540))))))

(assert (=> d!713725 (valid!2628 (v!31646 (underlying!7040 thiss!42540)))))

(assert (=> d!713725 (= (update!238 (v!31646 (underlying!7040 thiss!42540)) lt!892066 lt!892073) lt!892205)))

(declare-fun b!2486091 () Bool)

(assert (=> b!2486091 (= e!1578547 (tuple2!29197 true (v!31646 (underlying!7040 thiss!42540))))))

(declare-fun b!2486092 () Bool)

(assert (=> b!2486092 (= e!1578544 (= call!152466 call!152465))))

(declare-fun b!2486093 () Bool)

(assert (=> b!2486093 (= e!1578548 (= call!152466 (+!109 call!152465 (tuple2!29193 lt!892066 lt!892073))))))

(declare-fun b!2486094 () Bool)

(declare-datatypes ((tuple2!29198 0))(
  ( (tuple2!29199 (_1!17141 Bool) (_2!17141 LongMapFixedSize!6832)) )
))
(declare-fun lt!892206 () tuple2!29198)

(assert (=> b!2486094 (= e!1578545 (tuple2!29197 (_1!17141 lt!892206) (LongMap!3416 (Cell!13482 (_2!17141 lt!892206)))))))

(declare-fun update!239 (LongMapFixedSize!6832 (_ BitVec 64) List!29309) tuple2!29198)

(assert (=> b!2486094 (= lt!892206 (update!239 (v!31645 (underlying!7039 (_2!17140 lt!892207))) lt!892066 lt!892073))))

(assert (= (and d!713725 c!395159) b!2486089))

(assert (= (and d!713725 (not c!395159)) b!2486091))

(assert (= (and d!713725 c!395157) b!2486094))

(assert (= (and d!713725 (not c!395157)) b!2486090))

(assert (= (and d!713725 res!1052310) b!2486088))

(assert (= (and b!2486088 res!1052308) b!2486086))

(assert (= (and b!2486086 c!395158) b!2486087))

(assert (= (and b!2486086 (not c!395158)) b!2486092))

(assert (= (and b!2486087 res!1052309) b!2486093))

(assert (= (or b!2486087 b!2486093 b!2486092) bm!152460))

(assert (= (or b!2486093 b!2486092) bm!152461))

(declare-fun m!2854497 () Bool)

(assert (=> d!713725 m!2854497))

(declare-fun m!2854499 () Bool)

(assert (=> d!713725 m!2854499))

(assert (=> bm!152461 m!2854329))

(declare-fun m!2854501 () Bool)

(assert (=> b!2486087 m!2854501))

(declare-fun m!2854503 () Bool)

(assert (=> b!2486094 m!2854503))

(declare-fun m!2854505 () Bool)

(assert (=> bm!152460 m!2854505))

(declare-fun m!2854507 () Bool)

(assert (=> b!2486089 m!2854507))

(declare-fun m!2854509 () Bool)

(assert (=> b!2486093 m!2854509))

(declare-fun m!2854511 () Bool)

(assert (=> b!2486088 m!2854511))

(assert (=> b!2485943 d!713725))

(declare-fun d!713727 () Bool)

(assert (=> d!713727 (noDuplicateKeys!118 (removePairForKey!110 lt!892069 key!2246))))

(declare-fun lt!892211 () Unit!42858)

(declare-fun choose!14705 (List!29309 K!5625) Unit!42858)

(assert (=> d!713727 (= lt!892211 (choose!14705 lt!892069 key!2246))))

(assert (=> d!713727 (noDuplicateKeys!118 lt!892069)))

(assert (=> d!713727 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!98 lt!892069 key!2246) lt!892211)))

(declare-fun bs!468002 () Bool)

(assert (= bs!468002 d!713727))

(assert (=> bs!468002 m!2854341))

(assert (=> bs!468002 m!2854341))

(declare-fun m!2854513 () Bool)

(assert (=> bs!468002 m!2854513))

(declare-fun m!2854515 () Bool)

(assert (=> bs!468002 m!2854515))

(assert (=> bs!468002 m!2854411))

(assert (=> b!2485943 d!713727))

(declare-fun d!713729 () Bool)

(declare-fun e!1578551 () Bool)

(assert (=> d!713729 e!1578551))

(declare-fun c!395162 () Bool)

(assert (=> d!713729 (= c!395162 (contains!5220 (v!31646 (underlying!7040 thiss!42540)) lt!892066))))

(declare-fun lt!892214 () List!29309)

(declare-fun apply!6989 (LongMapFixedSize!6832 (_ BitVec 64)) List!29309)

(assert (=> d!713729 (= lt!892214 (apply!6989 (v!31645 (underlying!7039 (v!31646 (underlying!7040 thiss!42540)))) lt!892066))))

(assert (=> d!713729 (valid!2628 (v!31646 (underlying!7040 thiss!42540)))))

(assert (=> d!713729 (= (apply!6987 (v!31646 (underlying!7040 thiss!42540)) lt!892066) lt!892214)))

(declare-fun b!2486099 () Bool)

(declare-fun get!9017 (Option!5784) List!29309)

(assert (=> b!2486099 (= e!1578551 (= lt!892214 (get!9017 (getValueByKey!157 (toList!1666 (map!6323 (v!31646 (underlying!7040 thiss!42540)))) lt!892066))))))

(declare-fun b!2486100 () Bool)

(declare-fun dynLambda!12505 (Int (_ BitVec 64)) List!29309)

(assert (=> b!2486100 (= e!1578551 (= lt!892214 (dynLambda!12505 (defaultEntry!3790 (v!31645 (underlying!7039 (v!31646 (underlying!7040 thiss!42540))))) lt!892066)))))

(assert (=> b!2486100 ((_ is LongMap!3416) (v!31646 (underlying!7040 thiss!42540)))))

(assert (= (and d!713729 c!395162) b!2486099))

(assert (= (and d!713729 (not c!395162)) b!2486100))

(declare-fun b_lambda!76351 () Bool)

(assert (=> (not b_lambda!76351) (not b!2486100)))

(declare-fun t!210999 () Bool)

(declare-fun tb!140405 () Bool)

(assert (=> (and b!2485947 (= (defaultEntry!3790 (v!31645 (underlying!7039 (v!31646 (underlying!7040 thiss!42540))))) (defaultEntry!3790 (v!31645 (underlying!7039 (v!31646 (underlying!7040 thiss!42540)))))) t!210999) tb!140405))

(assert (=> b!2486100 t!210999))

(declare-fun result!173410 () Bool)

(declare-fun b_and!188807 () Bool)

(assert (= b_and!188803 (and (=> t!210999 result!173410) b_and!188807)))

(declare-fun m!2854517 () Bool)

(assert (=> d!713729 m!2854517))

(declare-fun m!2854519 () Bool)

(assert (=> d!713729 m!2854519))

(assert (=> d!713729 m!2854499))

(assert (=> b!2486099 m!2854329))

(declare-fun m!2854521 () Bool)

(assert (=> b!2486099 m!2854521))

(assert (=> b!2486099 m!2854521))

(declare-fun m!2854523 () Bool)

(assert (=> b!2486099 m!2854523))

(declare-fun m!2854525 () Bool)

(assert (=> b!2486100 m!2854525))

(assert (=> b!2485943 d!713729))

(declare-fun bs!468003 () Bool)

(declare-fun d!713731 () Bool)

(assert (= bs!468003 (and d!713731 d!713709)))

(declare-fun lambda!94559 () Int)

(assert (=> bs!468003 (= lambda!94559 lambda!94557)))

(declare-fun bs!468004 () Bool)

(assert (= bs!468004 (and d!713731 b!2486041)))

(assert (=> bs!468004 (not (= lambda!94559 lambda!94554))))

(declare-fun bs!468005 () Bool)

(assert (= bs!468005 (and d!713731 d!713711)))

(assert (=> bs!468005 (= lambda!94559 lambda!94558)))

(declare-fun bs!468006 () Bool)

(assert (= bs!468006 (and d!713731 b!2485943)))

(assert (=> bs!468006 (not (= lambda!94559 lambda!94536))))

(declare-fun bs!468007 () Bool)

(assert (= bs!468007 (and d!713731 d!713687)))

(assert (=> bs!468007 (not (= lambda!94559 lambda!94544))))

(declare-fun bs!468008 () Bool)

(assert (= bs!468008 (and d!713731 d!713681)))

(assert (=> bs!468008 (not (= lambda!94559 lambda!94539))))

(declare-fun bs!468009 () Bool)

(assert (= bs!468009 (and d!713731 d!713695)))

(assert (=> bs!468009 (= lambda!94559 lambda!94547)))

(assert (=> d!713731 true))

(assert (=> d!713731 (= (allKeysSameHashInMap!193 lt!892063 (hashF!5332 (_2!17139 lt!892072))) (forall!6010 (toList!1666 lt!892063) lambda!94559))))

(declare-fun bs!468010 () Bool)

(assert (= bs!468010 d!713731))

(declare-fun m!2854527 () Bool)

(assert (=> bs!468010 m!2854527))

(assert (=> b!2485942 d!713731))

(declare-fun b!2486102 () Bool)

(declare-fun e!1578555 () Bool)

(assert (=> b!2486102 (= e!1578555 (not (contains!5217 (keys!9372 lt!892071) key!2246)))))

(declare-fun b!2486103 () Bool)

(declare-fun e!1578553 () Bool)

(assert (=> b!2486103 (= e!1578553 (contains!5217 (keys!9372 lt!892071) key!2246))))

(declare-fun b!2486104 () Bool)

(declare-fun e!1578557 () List!29311)

(assert (=> b!2486104 (= e!1578557 (keys!9372 lt!892071))))

(declare-fun b!2486105 () Bool)

(declare-fun e!1578556 () Unit!42858)

(declare-fun lt!892219 () Unit!42858)

(assert (=> b!2486105 (= e!1578556 lt!892219)))

(declare-fun lt!892217 () Unit!42858)

(assert (=> b!2486105 (= lt!892217 (lemmaContainsKeyImpliesGetValueByKeyDefined!113 (toList!1667 lt!892071) key!2246))))

(assert (=> b!2486105 (isDefined!4605 (getValueByKey!156 (toList!1667 lt!892071) key!2246))))

(declare-fun lt!892216 () Unit!42858)

(assert (=> b!2486105 (= lt!892216 lt!892217)))

(assert (=> b!2486105 (= lt!892219 (lemmaInListThenGetKeysListContains!19 (toList!1667 lt!892071) key!2246))))

(declare-fun call!152467 () Bool)

(assert (=> b!2486105 call!152467))

(declare-fun b!2486106 () Bool)

(declare-fun e!1578554 () Unit!42858)

(declare-fun Unit!42869 () Unit!42858)

(assert (=> b!2486106 (= e!1578554 Unit!42869)))

(declare-fun d!713733 () Bool)

(declare-fun e!1578552 () Bool)

(assert (=> d!713733 e!1578552))

(declare-fun res!1052312 () Bool)

(assert (=> d!713733 (=> res!1052312 e!1578552)))

(assert (=> d!713733 (= res!1052312 e!1578555)))

(declare-fun res!1052313 () Bool)

(assert (=> d!713733 (=> (not res!1052313) (not e!1578555))))

(declare-fun lt!892222 () Bool)

(assert (=> d!713733 (= res!1052313 (not lt!892222))))

(declare-fun lt!892215 () Bool)

(assert (=> d!713733 (= lt!892222 lt!892215)))

(declare-fun lt!892220 () Unit!42858)

(assert (=> d!713733 (= lt!892220 e!1578556)))

(declare-fun c!395164 () Bool)

(assert (=> d!713733 (= c!395164 lt!892215)))

(assert (=> d!713733 (= lt!892215 (containsKey!167 (toList!1667 lt!892071) key!2246))))

(assert (=> d!713733 (= (contains!5216 lt!892071 key!2246) lt!892222)))

(declare-fun b!2486101 () Bool)

(assert (=> b!2486101 (= e!1578556 e!1578554)))

(declare-fun c!395165 () Bool)

(assert (=> b!2486101 (= c!395165 call!152467)))

(declare-fun bm!152462 () Bool)

(assert (=> bm!152462 (= call!152467 (contains!5217 e!1578557 key!2246))))

(declare-fun c!395163 () Bool)

(assert (=> bm!152462 (= c!395163 c!395164)))

(declare-fun b!2486107 () Bool)

(assert (=> b!2486107 false))

(declare-fun lt!892218 () Unit!42858)

(declare-fun lt!892221 () Unit!42858)

(assert (=> b!2486107 (= lt!892218 lt!892221)))

(assert (=> b!2486107 (containsKey!167 (toList!1667 lt!892071) key!2246)))

(assert (=> b!2486107 (= lt!892221 (lemmaInGetKeysListThenContainsKey!19 (toList!1667 lt!892071) key!2246))))

(declare-fun Unit!42870 () Unit!42858)

(assert (=> b!2486107 (= e!1578554 Unit!42870)))

(declare-fun b!2486108 () Bool)

(assert (=> b!2486108 (= e!1578552 e!1578553)))

(declare-fun res!1052311 () Bool)

(assert (=> b!2486108 (=> (not res!1052311) (not e!1578553))))

(assert (=> b!2486108 (= res!1052311 (isDefined!4605 (getValueByKey!156 (toList!1667 lt!892071) key!2246)))))

(declare-fun b!2486109 () Bool)

(assert (=> b!2486109 (= e!1578557 (getKeysList!22 (toList!1667 lt!892071)))))

(assert (= (and d!713733 c!395164) b!2486105))

(assert (= (and d!713733 (not c!395164)) b!2486101))

(assert (= (and b!2486101 c!395165) b!2486107))

(assert (= (and b!2486101 (not c!395165)) b!2486106))

(assert (= (or b!2486105 b!2486101) bm!152462))

(assert (= (and bm!152462 c!395163) b!2486109))

(assert (= (and bm!152462 (not c!395163)) b!2486104))

(assert (= (and d!713733 res!1052313) b!2486102))

(assert (= (and d!713733 (not res!1052312)) b!2486108))

(assert (= (and b!2486108 res!1052311) b!2486103))

(declare-fun m!2854529 () Bool)

(assert (=> b!2486107 m!2854529))

(declare-fun m!2854531 () Bool)

(assert (=> b!2486107 m!2854531))

(declare-fun m!2854533 () Bool)

(assert (=> b!2486105 m!2854533))

(declare-fun m!2854535 () Bool)

(assert (=> b!2486105 m!2854535))

(assert (=> b!2486105 m!2854535))

(declare-fun m!2854537 () Bool)

(assert (=> b!2486105 m!2854537))

(declare-fun m!2854539 () Bool)

(assert (=> b!2486105 m!2854539))

(declare-fun m!2854541 () Bool)

(assert (=> b!2486102 m!2854541))

(assert (=> b!2486102 m!2854541))

(declare-fun m!2854543 () Bool)

(assert (=> b!2486102 m!2854543))

(declare-fun m!2854545 () Bool)

(assert (=> b!2486109 m!2854545))

(assert (=> b!2486103 m!2854541))

(assert (=> b!2486103 m!2854541))

(assert (=> b!2486103 m!2854543))

(assert (=> b!2486104 m!2854541))

(assert (=> b!2486108 m!2854535))

(assert (=> b!2486108 m!2854535))

(assert (=> b!2486108 m!2854537))

(assert (=> d!713733 m!2854529))

(declare-fun m!2854547 () Bool)

(assert (=> bm!152462 m!2854547))

(assert (=> b!2485952 d!713733))

(declare-fun bs!468011 () Bool)

(declare-fun b!2486114 () Bool)

(assert (= bs!468011 (and b!2486114 d!713709)))

(declare-fun lambda!94562 () Int)

(assert (=> bs!468011 (not (= lambda!94562 lambda!94557))))

(declare-fun bs!468012 () Bool)

(assert (= bs!468012 (and b!2486114 b!2486041)))

(assert (=> bs!468012 (= lambda!94562 lambda!94554)))

(declare-fun bs!468013 () Bool)

(assert (= bs!468013 (and b!2486114 d!713731)))

(assert (=> bs!468013 (not (= lambda!94562 lambda!94559))))

(declare-fun bs!468014 () Bool)

(assert (= bs!468014 (and b!2486114 d!713711)))

(assert (=> bs!468014 (not (= lambda!94562 lambda!94558))))

(declare-fun bs!468015 () Bool)

(assert (= bs!468015 (and b!2486114 b!2485943)))

(assert (=> bs!468015 (= lambda!94562 lambda!94536)))

(declare-fun bs!468016 () Bool)

(assert (= bs!468016 (and b!2486114 d!713687)))

(assert (=> bs!468016 (= lambda!94562 lambda!94544)))

(declare-fun bs!468017 () Bool)

(assert (= bs!468017 (and b!2486114 d!713681)))

(assert (=> bs!468017 (= lambda!94562 lambda!94539)))

(declare-fun bs!468018 () Bool)

(assert (= bs!468018 (and b!2486114 d!713695)))

(assert (=> bs!468018 (not (= lambda!94562 lambda!94547))))

(declare-fun d!713735 () Bool)

(declare-fun res!1052318 () Bool)

(declare-fun e!1578560 () Bool)

(assert (=> d!713735 (=> (not res!1052318) (not e!1578560))))

(assert (=> d!713735 (= res!1052318 (valid!2628 (v!31646 (underlying!7040 (_2!17139 lt!892072)))))))

(assert (=> d!713735 (= (valid!2627 (_2!17139 lt!892072)) e!1578560)))

(declare-fun res!1052319 () Bool)

(assert (=> b!2486114 (=> (not res!1052319) (not e!1578560))))

(assert (=> b!2486114 (= res!1052319 (forall!6010 (toList!1666 (map!6323 (v!31646 (underlying!7040 (_2!17139 lt!892072))))) lambda!94562))))

(declare-fun b!2486115 () Bool)

(assert (=> b!2486115 (= e!1578560 (allKeysSameHashInMap!193 (map!6323 (v!31646 (underlying!7040 (_2!17139 lt!892072)))) (hashF!5332 (_2!17139 lt!892072))))))

(assert (= (and d!713735 res!1052318) b!2486114))

(assert (= (and b!2486114 res!1052319) b!2486115))

(declare-fun m!2854549 () Bool)

(assert (=> d!713735 m!2854549))

(assert (=> b!2486114 m!2854303))

(declare-fun m!2854551 () Bool)

(assert (=> b!2486114 m!2854551))

(assert (=> b!2486115 m!2854303))

(assert (=> b!2486115 m!2854303))

(declare-fun m!2854553 () Bool)

(assert (=> b!2486115 m!2854553))

(assert (=> b!2485951 d!713735))

(declare-fun bs!468019 () Bool)

(declare-fun b!2486116 () Bool)

(assert (= bs!468019 (and b!2486116 d!713709)))

(declare-fun lambda!94563 () Int)

(assert (=> bs!468019 (not (= lambda!94563 lambda!94557))))

(declare-fun bs!468020 () Bool)

(assert (= bs!468020 (and b!2486116 b!2486041)))

(assert (=> bs!468020 (= lambda!94563 lambda!94554)))

(declare-fun bs!468021 () Bool)

(assert (= bs!468021 (and b!2486116 b!2486114)))

(assert (=> bs!468021 (= lambda!94563 lambda!94562)))

(declare-fun bs!468022 () Bool)

(assert (= bs!468022 (and b!2486116 d!713731)))

(assert (=> bs!468022 (not (= lambda!94563 lambda!94559))))

(declare-fun bs!468023 () Bool)

(assert (= bs!468023 (and b!2486116 d!713711)))

(assert (=> bs!468023 (not (= lambda!94563 lambda!94558))))

(declare-fun bs!468024 () Bool)

(assert (= bs!468024 (and b!2486116 b!2485943)))

(assert (=> bs!468024 (= lambda!94563 lambda!94536)))

(declare-fun bs!468025 () Bool)

(assert (= bs!468025 (and b!2486116 d!713687)))

(assert (=> bs!468025 (= lambda!94563 lambda!94544)))

(declare-fun bs!468026 () Bool)

(assert (= bs!468026 (and b!2486116 d!713681)))

(assert (=> bs!468026 (= lambda!94563 lambda!94539)))

(declare-fun bs!468027 () Bool)

(assert (= bs!468027 (and b!2486116 d!713695)))

(assert (=> bs!468027 (not (= lambda!94563 lambda!94547))))

(declare-fun d!713737 () Bool)

(declare-fun res!1052320 () Bool)

(declare-fun e!1578561 () Bool)

(assert (=> d!713737 (=> (not res!1052320) (not e!1578561))))

(assert (=> d!713737 (= res!1052320 (valid!2628 (v!31646 (underlying!7040 thiss!42540))))))

(assert (=> d!713737 (= (valid!2627 thiss!42540) e!1578561)))

(declare-fun res!1052321 () Bool)

(assert (=> b!2486116 (=> (not res!1052321) (not e!1578561))))

(assert (=> b!2486116 (= res!1052321 (forall!6010 (toList!1666 (map!6323 (v!31646 (underlying!7040 thiss!42540)))) lambda!94563))))

(declare-fun b!2486117 () Bool)

(assert (=> b!2486117 (= e!1578561 (allKeysSameHashInMap!193 (map!6323 (v!31646 (underlying!7040 thiss!42540))) (hashF!5332 thiss!42540)))))

(assert (= (and d!713737 res!1052320) b!2486116))

(assert (= (and b!2486116 res!1052321) b!2486117))

(assert (=> d!713737 m!2854499))

(assert (=> b!2486116 m!2854329))

(declare-fun m!2854555 () Bool)

(assert (=> b!2486116 m!2854555))

(assert (=> b!2486117 m!2854329))

(assert (=> b!2486117 m!2854329))

(declare-fun m!2854557 () Bool)

(assert (=> b!2486117 m!2854557))

(assert (=> b!2485950 d!713737))

(declare-fun tp!795813 () Bool)

(declare-fun b!2486122 () Bool)

(declare-fun tp_is_empty!12391 () Bool)

(declare-fun e!1578564 () Bool)

(assert (=> b!2486122 (= e!1578564 (and tp_is_empty!12389 tp_is_empty!12391 tp!795813))))

(assert (=> b!2485947 (= tp!795809 e!1578564)))

(assert (= (and b!2485947 ((_ is Cons!29209) (zeroValue!3674 (v!31645 (underlying!7039 (v!31646 (underlying!7040 thiss!42540))))))) b!2486122))

(declare-fun tp!795814 () Bool)

(declare-fun e!1578565 () Bool)

(declare-fun b!2486123 () Bool)

(assert (=> b!2486123 (= e!1578565 (and tp_is_empty!12389 tp_is_empty!12391 tp!795814))))

(assert (=> b!2485947 (= tp!795808 e!1578565)))

(assert (= (and b!2485947 ((_ is Cons!29209) (minValue!3674 (v!31645 (underlying!7039 (v!31646 (underlying!7040 thiss!42540))))))) b!2486123))

(declare-fun tp!795815 () Bool)

(declare-fun e!1578566 () Bool)

(declare-fun b!2486124 () Bool)

(assert (=> b!2486124 (= e!1578566 (and tp_is_empty!12389 tp_is_empty!12391 tp!795815))))

(assert (=> b!2485955 (= tp!795806 e!1578566)))

(assert (= (and b!2485955 ((_ is Cons!29209) mapDefault!15759)) b!2486124))

(declare-fun mapIsEmpty!15762 () Bool)

(declare-fun mapRes!15762 () Bool)

(assert (=> mapIsEmpty!15762 mapRes!15762))

(declare-fun condMapEmpty!15762 () Bool)

(declare-fun mapDefault!15762 () List!29309)

(assert (=> mapNonEmpty!15759 (= condMapEmpty!15762 (= mapRest!15759 ((as const (Array (_ BitVec 32) List!29309)) mapDefault!15762)))))

(declare-fun e!1578572 () Bool)

(assert (=> mapNonEmpty!15759 (= tp!795804 (and e!1578572 mapRes!15762))))

(declare-fun tp!795824 () Bool)

(declare-fun b!2486131 () Bool)

(declare-fun e!1578571 () Bool)

(assert (=> b!2486131 (= e!1578571 (and tp_is_empty!12389 tp_is_empty!12391 tp!795824))))

(declare-fun mapNonEmpty!15762 () Bool)

(declare-fun tp!795823 () Bool)

(assert (=> mapNonEmpty!15762 (= mapRes!15762 (and tp!795823 e!1578571))))

(declare-fun mapKey!15762 () (_ BitVec 32))

(declare-fun mapRest!15762 () (Array (_ BitVec 32) List!29309))

(declare-fun mapValue!15762 () List!29309)

(assert (=> mapNonEmpty!15762 (= mapRest!15759 (store mapRest!15762 mapKey!15762 mapValue!15762))))

(declare-fun b!2486132 () Bool)

(declare-fun tp!795822 () Bool)

(assert (=> b!2486132 (= e!1578572 (and tp_is_empty!12389 tp_is_empty!12391 tp!795822))))

(assert (= (and mapNonEmpty!15759 condMapEmpty!15762) mapIsEmpty!15762))

(assert (= (and mapNonEmpty!15759 (not condMapEmpty!15762)) mapNonEmpty!15762))

(assert (= (and mapNonEmpty!15762 ((_ is Cons!29209) mapValue!15762)) b!2486131))

(assert (= (and mapNonEmpty!15759 ((_ is Cons!29209) mapDefault!15762)) b!2486132))

(declare-fun m!2854559 () Bool)

(assert (=> mapNonEmpty!15762 m!2854559))

(declare-fun e!1578573 () Bool)

(declare-fun tp!795825 () Bool)

(declare-fun b!2486133 () Bool)

(assert (=> b!2486133 (= e!1578573 (and tp_is_empty!12389 tp_is_empty!12391 tp!795825))))

(assert (=> mapNonEmpty!15759 (= tp!795810 e!1578573)))

(assert (= (and mapNonEmpty!15759 ((_ is Cons!29209) mapValue!15759)) b!2486133))

(declare-fun b_lambda!76353 () Bool)

(assert (= b_lambda!76347 (or b!2485943 b_lambda!76353)))

(declare-fun bs!468028 () Bool)

(declare-fun d!713739 () Bool)

(assert (= bs!468028 (and d!713739 b!2485943)))

(assert (=> bs!468028 (= (dynLambda!12504 lambda!94536 (h!34626 (toList!1666 lt!892075))) (noDuplicateKeys!118 (_2!17138 (h!34626 (toList!1666 lt!892075)))))))

(declare-fun m!2854561 () Bool)

(assert (=> bs!468028 m!2854561))

(assert (=> b!2486008 d!713739))

(declare-fun b_lambda!76355 () Bool)

(assert (= b_lambda!76343 (or b!2485943 b_lambda!76355)))

(declare-fun bs!468029 () Bool)

(declare-fun d!713741 () Bool)

(assert (= bs!468029 (and d!713741 b!2485943)))

(assert (=> bs!468029 (= (dynLambda!12504 lambda!94536 (h!34626 (toList!1666 lt!892063))) (noDuplicateKeys!118 (_2!17138 (h!34626 (toList!1666 lt!892063)))))))

(declare-fun m!2854563 () Bool)

(assert (=> bs!468029 m!2854563))

(assert (=> b!2485993 d!713741))

(declare-fun b_lambda!76357 () Bool)

(assert (= b_lambda!76351 (or (and b!2485947 b_free!72521) b_lambda!76357)))

(declare-fun b_lambda!76359 () Bool)

(assert (= b_lambda!76345 (or b!2485943 b_lambda!76359)))

(declare-fun bs!468030 () Bool)

(declare-fun d!713743 () Bool)

(assert (= bs!468030 (and d!713743 b!2485943)))

(assert (=> bs!468030 (= (dynLambda!12504 lambda!94536 (h!34626 (toList!1666 lt!892067))) (noDuplicateKeys!118 (_2!17138 (h!34626 (toList!1666 lt!892067)))))))

(declare-fun m!2854565 () Bool)

(assert (=> bs!468030 m!2854565))

(assert (=> b!2485998 d!713743))

(declare-fun b_lambda!76361 () Bool)

(assert (= b_lambda!76349 (or b!2485943 b_lambda!76361)))

(declare-fun bs!468031 () Bool)

(declare-fun d!713745 () Bool)

(assert (= bs!468031 (and d!713745 b!2485943)))

(assert (=> bs!468031 (= (dynLambda!12504 lambda!94536 (tuple2!29193 lt!892066 lt!892069)) (noDuplicateKeys!118 (_2!17138 (tuple2!29193 lt!892066 lt!892069))))))

(declare-fun m!2854567 () Bool)

(assert (=> bs!468031 m!2854567))

(assert (=> d!713715 d!713745))

(check-sat b_and!188805 (not bs!468031) (not b!2486088) (not b!2485976) (not d!713681) (not bm!152450) (not b_lambda!76361) (not bs!468030) (not bm!152454) (not b!2486087) (not d!713687) (not b!2486131) (not b!2486109) (not b!2486067) (not d!713679) (not d!713711) (not b_lambda!76359) (not d!713727) (not mapNonEmpty!15762) (not d!713701) (not d!713725) (not b!2485987) (not bm!152462) (not b!2486041) (not d!713695) (not b!2485977) (not bm!152455) (not b!2485982) (not d!713709) (not d!713693) (not bm!152453) (not b!2486066) tp_is_empty!12389 (not b!2486114) (not b!2485997) (not bm!152451) (not d!713685) (not d!713737) (not b!2485978) (not b!2486115) (not b!2486049) (not b!2486005) (not b!2486093) (not b!2486132) (not b!2486099) (not b_next!73225) (not b!2485999) (not b_lambda!76357) (not bm!152437) (not b_lambda!76355) (not d!713717) (not b!2486123) (not d!713699) (not b!2486116) (not b!2486094) (not b!2486108) (not b_next!73227) (not b!2485994) b_and!188807 tp_is_empty!12391 (not b!2486009) (not b!2486060) (not b!2486038) (not bm!152461) (not d!713719) (not d!713729) (not d!713733) (not d!713713) (not b!2486117) (not d!713735) (not b!2486133) (not b!2486124) (not b!2485981) (not b!2485980) (not b!2486040) (not d!713691) (not tb!140405) (not b!2485975) (not d!713715) (not b!2486105) (not b!2486102) (not d!713707) (not b!2486107) (not bs!468028) (not b!2486103) (not d!713723) (not b!2486089) (not bm!152452) (not b!2486004) (not b!2486104) (not bs!468029) (not b!2486046) (not d!713731) (not b!2486036) (not bm!152460) (not b_lambda!76353) (not b!2486122))
(check-sat b_and!188805 b_and!188807 (not b_next!73225) (not b_next!73227))
