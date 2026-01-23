; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242964 () Bool)

(assert start!242964)

(declare-fun b!2486831 () Bool)

(declare-fun b_free!72561 () Bool)

(declare-fun b_next!73265 () Bool)

(assert (=> b!2486831 (= b_free!72561 (not b_next!73265))))

(declare-fun tp!796046 () Bool)

(declare-fun b_and!188847 () Bool)

(assert (=> b!2486831 (= tp!796046 b_and!188847)))

(declare-fun b!2486824 () Bool)

(declare-fun b_free!72563 () Bool)

(declare-fun b_next!73267 () Bool)

(assert (=> b!2486824 (= b_free!72563 (not b_next!73267))))

(declare-fun tp!796044 () Bool)

(declare-fun b_and!188849 () Bool)

(assert (=> b!2486824 (= tp!796044 b_and!188849)))

(declare-fun b!2486819 () Bool)

(declare-fun e!1579064 () Bool)

(declare-fun tp!796048 () Bool)

(declare-fun mapRes!15795 () Bool)

(assert (=> b!2486819 (= e!1579064 (and tp!796048 mapRes!15795))))

(declare-fun condMapEmpty!15795 () Bool)

(declare-datatypes ((Hashable!3336 0))(
  ( (HashableExt!3335 (__x!19184 Int)) )
))
(declare-datatypes ((K!5650 0))(
  ( (K!5651 (val!8995 Int)) )
))
(declare-datatypes ((V!5852 0))(
  ( (V!5853 (val!8996 Int)) )
))
(declare-datatypes ((tuple2!29260 0))(
  ( (tuple2!29261 (_1!17172 K!5650) (_2!17172 V!5852)) )
))
(declare-datatypes ((List!29330 0))(
  ( (Nil!29230) (Cons!29230 (h!34648 tuple2!29260) (t!211021 List!29330)) )
))
(declare-datatypes ((array!12199 0))(
  ( (array!12200 (arr!5442 (Array (_ BitVec 32) List!29330)) (size!22861 (_ BitVec 32))) )
))
(declare-datatypes ((array!12201 0))(
  ( (array!12202 (arr!5443 (Array (_ BitVec 32) (_ BitVec 64))) (size!22862 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6852 0))(
  ( (LongMapFixedSize!6853 (defaultEntry!3800 Int) (mask!8628 (_ BitVec 32)) (extraKeys!3674 (_ BitVec 32)) (zeroValue!3684 List!29330) (minValue!3684 List!29330) (_size!6899 (_ BitVec 32)) (_keys!3723 array!12201) (_values!3706 array!12199) (_vacant!3487 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13521 0))(
  ( (Cell!13522 (v!31681 LongMapFixedSize!6852)) )
))
(declare-datatypes ((MutLongMap!3426 0))(
  ( (LongMap!3426 (underlying!7059 Cell!13521)) (MutLongMapExt!3425 (__x!19185 Int)) )
))
(declare-datatypes ((Cell!13523 0))(
  ( (Cell!13524 (v!31682 MutLongMap!3426)) )
))
(declare-datatypes ((MutableMap!3336 0))(
  ( (MutableMapExt!3335 (__x!19186 Int)) (HashMap!3336 (underlying!7060 Cell!13523) (hashF!5353 Hashable!3336) (_size!6900 (_ BitVec 32)) (defaultValue!3498 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3336)

(declare-fun mapDefault!15795 () List!29330)

(assert (=> b!2486819 (= condMapEmpty!15795 (= (arr!5442 (_values!3706 (v!31681 (underlying!7059 (v!31682 (underlying!7060 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29330)) mapDefault!15795)))))

(declare-fun b!2486820 () Bool)

(declare-fun e!1579068 () Bool)

(declare-fun e!1579067 () Bool)

(declare-fun lt!892950 () MutLongMap!3426)

(get-info :version)

(assert (=> b!2486820 (= e!1579068 (and e!1579067 ((_ is LongMap!3426) lt!892950)))))

(assert (=> b!2486820 (= lt!892950 (v!31682 (underlying!7060 thiss!42540)))))

(declare-fun b!2486821 () Bool)

(declare-fun res!1052715 () Bool)

(declare-fun e!1579060 () Bool)

(assert (=> b!2486821 (=> (not res!1052715) (not e!1579060))))

(declare-datatypes ((tuple2!29262 0))(
  ( (tuple2!29263 (_1!17173 (_ BitVec 64)) (_2!17173 List!29330)) )
))
(declare-datatypes ((List!29331 0))(
  ( (Nil!29231) (Cons!29231 (h!34649 tuple2!29262) (t!211022 List!29331)) )
))
(declare-datatypes ((ListLongMap!635 0))(
  ( (ListLongMap!636 (toList!1683 List!29331)) )
))
(declare-fun lt!892947 () ListLongMap!635)

(declare-datatypes ((Unit!42905 0))(
  ( (Unit!42906) )
))
(declare-datatypes ((tuple2!29264 0))(
  ( (tuple2!29265 (_1!17174 Unit!42905) (_2!17174 MutableMap!3336)) )
))
(declare-fun lt!892953 () tuple2!29264)

(declare-fun allKeysSameHashInMap!201 (ListLongMap!635 Hashable!3336) Bool)

(assert (=> b!2486821 (= res!1052715 (allKeysSameHashInMap!201 lt!892947 (hashF!5353 (_2!17174 lt!892953))))))

(declare-fun b!2486822 () Bool)

(declare-fun res!1052713 () Bool)

(assert (=> b!2486822 (=> (not res!1052713) (not e!1579060))))

(declare-fun valid!2635 (MutableMap!3336) Bool)

(assert (=> b!2486822 (= res!1052713 (valid!2635 (_2!17174 lt!892953)))))

(declare-fun mapNonEmpty!15795 () Bool)

(declare-fun tp!796047 () Bool)

(declare-fun tp!796049 () Bool)

(assert (=> mapNonEmpty!15795 (= mapRes!15795 (and tp!796047 tp!796049))))

(declare-fun mapValue!15795 () List!29330)

(declare-fun mapKey!15795 () (_ BitVec 32))

(declare-fun mapRest!15795 () (Array (_ BitVec 32) List!29330))

(assert (=> mapNonEmpty!15795 (= (arr!5442 (_values!3706 (v!31681 (underlying!7059 (v!31682 (underlying!7060 thiss!42540)))))) (store mapRest!15795 mapKey!15795 mapValue!15795))))

(declare-fun b!2486823 () Bool)

(declare-fun res!1052714 () Bool)

(declare-fun e!1579066 () Bool)

(assert (=> b!2486823 (=> (not res!1052714) (not e!1579066))))

(assert (=> b!2486823 (= res!1052714 (valid!2635 thiss!42540))))

(declare-fun e!1579070 () Bool)

(assert (=> b!2486824 (= e!1579070 (and e!1579068 tp!796044))))

(declare-fun b!2486825 () Bool)

(declare-fun e!1579063 () Bool)

(assert (=> b!2486825 (= e!1579067 e!1579063)))

(declare-fun b!2486826 () Bool)

(declare-fun e!1579061 () Bool)

(assert (=> b!2486826 (= e!1579066 (not e!1579061))))

(declare-fun res!1052718 () Bool)

(assert (=> b!2486826 (=> res!1052718 e!1579061)))

(declare-datatypes ((tuple2!29266 0))(
  ( (tuple2!29267 (_1!17175 Bool) (_2!17175 MutLongMap!3426)) )
))
(declare-fun lt!892945 () tuple2!29266)

(assert (=> b!2486826 (= res!1052718 (not (_1!17175 lt!892945)))))

(declare-fun lt!892955 () List!29330)

(declare-fun noDuplicateKeys!123 (List!29330) Bool)

(assert (=> b!2486826 (noDuplicateKeys!123 lt!892955)))

(declare-fun lt!892958 () Unit!42905)

(declare-fun lt!892954 () List!29330)

(declare-fun key!2246 () K!5650)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!103 (List!29330 K!5650) Unit!42905)

(assert (=> b!2486826 (= lt!892958 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!103 lt!892954 key!2246))))

(declare-fun lt!892960 () Cell!13523)

(declare-fun Unit!42907 () Unit!42905)

(declare-fun Unit!42908 () Unit!42905)

(assert (=> b!2486826 (= lt!892953 (ite (_1!17175 lt!892945) (tuple2!29265 Unit!42907 (HashMap!3336 lt!892960 (hashF!5353 thiss!42540) (bvsub (_size!6900 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3498 thiss!42540))) (tuple2!29265 Unit!42908 (HashMap!3336 lt!892960 (hashF!5353 thiss!42540) (_size!6900 thiss!42540) (defaultValue!3498 thiss!42540)))))))

(assert (=> b!2486826 (= lt!892960 (Cell!13524 (_2!17175 lt!892945)))))

(declare-fun lt!892961 () (_ BitVec 64))

(declare-fun update!245 (MutLongMap!3426 (_ BitVec 64) List!29330) tuple2!29266)

(assert (=> b!2486826 (= lt!892945 (update!245 (v!31682 (underlying!7060 thiss!42540)) lt!892961 lt!892955))))

(declare-fun removePairForKey!115 (List!29330 K!5650) List!29330)

(assert (=> b!2486826 (= lt!892955 (removePairForKey!115 lt!892954 key!2246))))

(declare-datatypes ((ListMap!1161 0))(
  ( (ListMap!1162 (toList!1684 List!29330)) )
))
(declare-fun lt!892951 () ListMap!1161)

(declare-fun map!6340 (MutableMap!3336) ListMap!1161)

(assert (=> b!2486826 (= lt!892951 (map!6340 thiss!42540))))

(declare-fun lambda!94687 () Int)

(declare-fun lt!892959 () ListLongMap!635)

(declare-fun lt!892957 () Unit!42905)

(declare-fun forallContained!904 (List!29331 Int tuple2!29262) Unit!42905)

(assert (=> b!2486826 (= lt!892957 (forallContained!904 (toList!1683 lt!892959) lambda!94687 (tuple2!29263 lt!892961 lt!892954)))))

(declare-fun map!6341 (MutLongMap!3426) ListLongMap!635)

(assert (=> b!2486826 (= lt!892959 (map!6341 (v!31682 (underlying!7060 thiss!42540))))))

(declare-fun apply!6997 (MutLongMap!3426 (_ BitVec 64)) List!29330)

(assert (=> b!2486826 (= lt!892954 (apply!6997 (v!31682 (underlying!7060 thiss!42540)) lt!892961))))

(declare-fun hash!782 (Hashable!3336 K!5650) (_ BitVec 64))

(assert (=> b!2486826 (= lt!892961 (hash!782 (hashF!5353 thiss!42540) key!2246))))

(declare-fun b!2486827 () Bool)

(declare-fun contains!5240 (ListMap!1161 K!5650) Bool)

(assert (=> b!2486827 (= e!1579060 (contains!5240 lt!892951 key!2246))))

(declare-fun res!1052717 () Bool)

(assert (=> start!242964 (=> (not res!1052717) (not e!1579066))))

(assert (=> start!242964 (= res!1052717 ((_ is HashMap!3336) thiss!42540))))

(assert (=> start!242964 e!1579066))

(assert (=> start!242964 e!1579070))

(declare-fun tp_is_empty!12413 () Bool)

(assert (=> start!242964 tp_is_empty!12413))

(declare-fun b!2486828 () Bool)

(declare-fun eq!72 (ListMap!1161 ListMap!1161) Bool)

(declare-fun -!128 (ListMap!1161 K!5650) ListMap!1161)

(assert (=> b!2486828 (= e!1579061 (eq!72 (map!6340 (_2!17174 lt!892953)) (-!128 lt!892951 key!2246)))))

(declare-fun lt!892952 () ListLongMap!635)

(declare-fun extractMap!196 (List!29331) ListMap!1161)

(assert (=> b!2486828 (eq!72 (extractMap!196 (toList!1683 lt!892952)) (-!128 (extractMap!196 (toList!1683 lt!892959)) key!2246))))

(declare-fun lt!892948 () Unit!42905)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!31 (ListLongMap!635 (_ BitVec 64) List!29330 K!5650 Hashable!3336) Unit!42905)

(assert (=> b!2486828 (= lt!892948 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!31 lt!892959 lt!892961 lt!892955 key!2246 (hashF!5353 (_2!17174 lt!892953))))))

(assert (=> b!2486828 e!1579060))

(declare-fun res!1052712 () Bool)

(assert (=> b!2486828 (=> (not res!1052712) (not e!1579060))))

(declare-fun forall!6018 (List!29331 Int) Bool)

(assert (=> b!2486828 (= res!1052712 (forall!6018 (toList!1683 lt!892947) lambda!94687))))

(assert (=> b!2486828 (= lt!892947 (map!6341 (v!31682 (underlying!7060 (_2!17174 lt!892953)))))))

(declare-fun e!1579069 () Bool)

(assert (=> b!2486828 e!1579069))

(declare-fun res!1052711 () Bool)

(assert (=> b!2486828 (=> (not res!1052711) (not e!1579069))))

(assert (=> b!2486828 (= res!1052711 (forall!6018 (toList!1683 lt!892952) lambda!94687))))

(declare-fun +!115 (ListLongMap!635 tuple2!29262) ListLongMap!635)

(assert (=> b!2486828 (= lt!892952 (+!115 lt!892959 (tuple2!29263 lt!892961 lt!892955)))))

(declare-fun lt!892949 () Unit!42905)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!78 (ListLongMap!635 (_ BitVec 64) List!29330 Hashable!3336) Unit!42905)

(assert (=> b!2486828 (= lt!892949 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!78 lt!892959 lt!892961 lt!892955 (hashF!5353 (_2!17174 lt!892953))))))

(declare-fun allKeysSameHash!98 (List!29330 (_ BitVec 64) Hashable!3336) Bool)

(assert (=> b!2486828 (allKeysSameHash!98 lt!892955 lt!892961 (hashF!5353 (_2!17174 lt!892953)))))

(declare-fun lt!892956 () Unit!42905)

(declare-fun lemmaRemovePairForKeyPreservesHash!87 (List!29330 K!5650 (_ BitVec 64) Hashable!3336) Unit!42905)

(assert (=> b!2486828 (= lt!892956 (lemmaRemovePairForKeyPreservesHash!87 lt!892954 key!2246 lt!892961 (hashF!5353 (_2!17174 lt!892953))))))

(assert (=> b!2486828 (allKeysSameHash!98 lt!892954 lt!892961 (hashF!5353 (_2!17174 lt!892953)))))

(declare-fun lt!892946 () Unit!42905)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!91 (List!29331 (_ BitVec 64) List!29330 Hashable!3336) Unit!42905)

(assert (=> b!2486828 (= lt!892946 (lemmaInLongMapAllKeySameHashThenForTuple!91 (toList!1683 lt!892959) lt!892961 lt!892954 (hashF!5353 (_2!17174 lt!892953))))))

(declare-fun mapIsEmpty!15795 () Bool)

(assert (=> mapIsEmpty!15795 mapRes!15795))

(declare-fun b!2486829 () Bool)

(declare-fun res!1052716 () Bool)

(assert (=> b!2486829 (=> (not res!1052716) (not e!1579066))))

(declare-fun contains!5241 (MutableMap!3336 K!5650) Bool)

(assert (=> b!2486829 (= res!1052716 (contains!5241 thiss!42540 key!2246))))

(declare-fun b!2486830 () Bool)

(declare-fun e!1579065 () Bool)

(assert (=> b!2486830 (= e!1579063 e!1579065)))

(declare-fun tp!796045 () Bool)

(declare-fun tp!796050 () Bool)

(declare-fun array_inv!3911 (array!12201) Bool)

(declare-fun array_inv!3912 (array!12199) Bool)

(assert (=> b!2486831 (= e!1579065 (and tp!796046 tp!796045 tp!796050 (array_inv!3911 (_keys!3723 (v!31681 (underlying!7059 (v!31682 (underlying!7060 thiss!42540)))))) (array_inv!3912 (_values!3706 (v!31681 (underlying!7059 (v!31682 (underlying!7060 thiss!42540)))))) e!1579064))))

(declare-fun b!2486832 () Bool)

(assert (=> b!2486832 (= e!1579069 (allKeysSameHashInMap!201 lt!892952 (hashF!5353 (_2!17174 lt!892953))))))

(assert (= (and start!242964 res!1052717) b!2486823))

(assert (= (and b!2486823 res!1052714) b!2486829))

(assert (= (and b!2486829 res!1052716) b!2486826))

(assert (= (and b!2486826 (not res!1052718)) b!2486828))

(assert (= (and b!2486828 res!1052711) b!2486832))

(assert (= (and b!2486828 res!1052712) b!2486821))

(assert (= (and b!2486821 res!1052715) b!2486822))

(assert (= (and b!2486822 res!1052713) b!2486827))

(assert (= (and b!2486819 condMapEmpty!15795) mapIsEmpty!15795))

(assert (= (and b!2486819 (not condMapEmpty!15795)) mapNonEmpty!15795))

(assert (= b!2486831 b!2486819))

(assert (= b!2486830 b!2486831))

(assert (= b!2486825 b!2486830))

(assert (= (and b!2486820 ((_ is LongMap!3426) (v!31682 (underlying!7060 thiss!42540)))) b!2486825))

(assert (= b!2486824 b!2486820))

(assert (= (and start!242964 ((_ is HashMap!3336) thiss!42540)) b!2486824))

(declare-fun m!2855467 () Bool)

(assert (=> b!2486821 m!2855467))

(declare-fun m!2855469 () Bool)

(assert (=> b!2486832 m!2855469))

(declare-fun m!2855471 () Bool)

(assert (=> b!2486827 m!2855471))

(declare-fun m!2855473 () Bool)

(assert (=> b!2486826 m!2855473))

(declare-fun m!2855475 () Bool)

(assert (=> b!2486826 m!2855475))

(declare-fun m!2855477 () Bool)

(assert (=> b!2486826 m!2855477))

(declare-fun m!2855479 () Bool)

(assert (=> b!2486826 m!2855479))

(declare-fun m!2855481 () Bool)

(assert (=> b!2486826 m!2855481))

(declare-fun m!2855483 () Bool)

(assert (=> b!2486826 m!2855483))

(declare-fun m!2855485 () Bool)

(assert (=> b!2486826 m!2855485))

(declare-fun m!2855487 () Bool)

(assert (=> b!2486826 m!2855487))

(declare-fun m!2855489 () Bool)

(assert (=> b!2486826 m!2855489))

(declare-fun m!2855491 () Bool)

(assert (=> b!2486829 m!2855491))

(declare-fun m!2855493 () Bool)

(assert (=> b!2486828 m!2855493))

(declare-fun m!2855495 () Bool)

(assert (=> b!2486828 m!2855495))

(declare-fun m!2855497 () Bool)

(assert (=> b!2486828 m!2855497))

(assert (=> b!2486828 m!2855495))

(declare-fun m!2855499 () Bool)

(assert (=> b!2486828 m!2855499))

(declare-fun m!2855501 () Bool)

(assert (=> b!2486828 m!2855501))

(declare-fun m!2855503 () Bool)

(assert (=> b!2486828 m!2855503))

(declare-fun m!2855505 () Bool)

(assert (=> b!2486828 m!2855505))

(declare-fun m!2855507 () Bool)

(assert (=> b!2486828 m!2855507))

(declare-fun m!2855509 () Bool)

(assert (=> b!2486828 m!2855509))

(declare-fun m!2855511 () Bool)

(assert (=> b!2486828 m!2855511))

(assert (=> b!2486828 m!2855507))

(declare-fun m!2855513 () Bool)

(assert (=> b!2486828 m!2855513))

(declare-fun m!2855515 () Bool)

(assert (=> b!2486828 m!2855515))

(declare-fun m!2855517 () Bool)

(assert (=> b!2486828 m!2855517))

(assert (=> b!2486828 m!2855511))

(declare-fun m!2855519 () Bool)

(assert (=> b!2486828 m!2855519))

(assert (=> b!2486828 m!2855505))

(declare-fun m!2855521 () Bool)

(assert (=> b!2486828 m!2855521))

(declare-fun m!2855523 () Bool)

(assert (=> b!2486828 m!2855523))

(declare-fun m!2855525 () Bool)

(assert (=> b!2486828 m!2855525))

(assert (=> b!2486828 m!2855497))

(declare-fun m!2855527 () Bool)

(assert (=> b!2486823 m!2855527))

(declare-fun m!2855529 () Bool)

(assert (=> b!2486831 m!2855529))

(declare-fun m!2855531 () Bool)

(assert (=> b!2486831 m!2855531))

(declare-fun m!2855533 () Bool)

(assert (=> b!2486822 m!2855533))

(declare-fun m!2855535 () Bool)

(assert (=> mapNonEmpty!15795 m!2855535))

(check-sat (not b!2486826) (not mapNonEmpty!15795) (not b!2486821) b_and!188849 (not b_next!73267) (not b!2486827) (not b!2486822) (not b!2486819) (not b!2486832) (not b!2486831) (not b!2486823) tp_is_empty!12413 (not b!2486828) b_and!188847 (not b_next!73265) (not b!2486829))
(check-sat b_and!188849 b_and!188847 (not b_next!73265) (not b_next!73267))
(get-model)

(declare-fun bs!468118 () Bool)

(declare-fun b!2486864 () Bool)

(assert (= bs!468118 (and b!2486864 b!2486826)))

(declare-fun lambda!94690 () Int)

(assert (=> bs!468118 (= lambda!94690 lambda!94687)))

(declare-fun b!2486855 () Bool)

(declare-fun e!1579089 () Bool)

(declare-fun call!152510 () Bool)

(assert (=> b!2486855 (= e!1579089 call!152510)))

(declare-fun bm!152503 () Bool)

(declare-datatypes ((Option!5789 0))(
  ( (None!5788) (Some!5788 (v!31687 tuple2!29260)) )
))
(declare-fun call!152512 () Option!5789)

(declare-fun call!152508 () List!29330)

(declare-fun getPair!86 (List!29330 K!5650) Option!5789)

(assert (=> bm!152503 (= call!152512 (getPair!86 call!152508 key!2246))))

(declare-fun bm!152504 () Bool)

(declare-fun call!152511 () ListLongMap!635)

(assert (=> bm!152504 (= call!152511 (map!6341 (v!31682 (underlying!7060 thiss!42540))))))

(declare-fun b!2486856 () Bool)

(declare-fun e!1579090 () Unit!42905)

(declare-fun lt!893005 () Unit!42905)

(assert (=> b!2486856 (= e!1579090 lt!893005)))

(declare-fun lt!893003 () ListLongMap!635)

(assert (=> b!2486856 (= lt!893003 call!152511)))

(declare-fun lemmaInGenericMapThenInLongMap!86 (ListLongMap!635 K!5650 Hashable!3336) Unit!42905)

(assert (=> b!2486856 (= lt!893005 (lemmaInGenericMapThenInLongMap!86 lt!893003 key!2246 (hashF!5353 thiss!42540)))))

(declare-fun res!1052726 () Bool)

(declare-fun call!152513 () Bool)

(assert (=> b!2486856 (= res!1052726 call!152513)))

(assert (=> b!2486856 (=> (not res!1052726) (not e!1579089))))

(assert (=> b!2486856 e!1579089))

(declare-fun bm!152505 () Bool)

(declare-fun call!152509 () (_ BitVec 64))

(assert (=> bm!152505 (= call!152509 (hash!782 (hashF!5353 thiss!42540) key!2246))))

(declare-fun c!395227 () Bool)

(declare-fun bm!152506 () Bool)

(declare-fun apply!6998 (ListLongMap!635 (_ BitVec 64)) List!29330)

(assert (=> bm!152506 (= call!152508 (apply!6998 (ite c!395227 lt!893003 call!152511) call!152509))))

(declare-fun bm!152507 () Bool)

(declare-fun contains!5242 (ListLongMap!635 (_ BitVec 64)) Bool)

(assert (=> bm!152507 (= call!152513 (contains!5242 (ite c!395227 lt!893003 call!152511) call!152509))))

(declare-fun b!2486858 () Bool)

(declare-fun e!1579088 () Unit!42905)

(declare-fun Unit!42909 () Unit!42905)

(assert (=> b!2486858 (= e!1579088 Unit!42909)))

(declare-fun b!2486859 () Bool)

(declare-fun e!1579091 () Unit!42905)

(assert (=> b!2486859 (= e!1579090 e!1579091)))

(declare-fun res!1052725 () Bool)

(assert (=> b!2486859 (= res!1052725 call!152513)))

(declare-fun e!1579087 () Bool)

(assert (=> b!2486859 (=> (not res!1052725) (not e!1579087))))

(declare-fun c!395226 () Bool)

(assert (=> b!2486859 (= c!395226 e!1579087)))

(declare-fun b!2486860 () Bool)

(assert (=> b!2486860 false))

(declare-fun lt!893013 () Unit!42905)

(declare-fun lt!893004 () Unit!42905)

(assert (=> b!2486860 (= lt!893013 lt!893004)))

(declare-fun lt!893007 () List!29331)

(declare-fun lt!893020 () (_ BitVec 64))

(declare-fun lt!893006 () List!29330)

(declare-fun contains!5243 (List!29331 tuple2!29262) Bool)

(assert (=> b!2486860 (contains!5243 lt!893007 (tuple2!29263 lt!893020 lt!893006))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!92 (List!29331 (_ BitVec 64) List!29330) Unit!42905)

(assert (=> b!2486860 (= lt!893004 (lemmaGetValueByKeyImpliesContainsTuple!92 lt!893007 lt!893020 lt!893006))))

(assert (=> b!2486860 (= lt!893006 (apply!6997 (v!31682 (underlying!7060 thiss!42540)) lt!893020))))

(assert (=> b!2486860 (= lt!893007 (toList!1683 (map!6341 (v!31682 (underlying!7060 thiss!42540)))))))

(declare-fun lt!893016 () Unit!42905)

(declare-fun lt!893002 () Unit!42905)

(assert (=> b!2486860 (= lt!893016 lt!893002)))

(declare-fun lt!893018 () List!29331)

(declare-datatypes ((Option!5790 0))(
  ( (None!5789) (Some!5789 (v!31688 List!29330)) )
))
(declare-fun isDefined!4611 (Option!5790) Bool)

(declare-fun getValueByKey!160 (List!29331 (_ BitVec 64)) Option!5790)

(assert (=> b!2486860 (isDefined!4611 (getValueByKey!160 lt!893018 lt!893020))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!117 (List!29331 (_ BitVec 64)) Unit!42905)

(assert (=> b!2486860 (= lt!893002 (lemmaContainsKeyImpliesGetValueByKeyDefined!117 lt!893018 lt!893020))))

(assert (=> b!2486860 (= lt!893018 (toList!1683 (map!6341 (v!31682 (underlying!7060 thiss!42540)))))))

(declare-fun lt!893009 () Unit!42905)

(declare-fun lt!893008 () Unit!42905)

(assert (=> b!2486860 (= lt!893009 lt!893008)))

(declare-fun lt!893012 () List!29331)

(declare-fun containsKey!173 (List!29331 (_ BitVec 64)) Bool)

(assert (=> b!2486860 (containsKey!173 lt!893012 lt!893020)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!87 (List!29331 (_ BitVec 64)) Unit!42905)

(assert (=> b!2486860 (= lt!893008 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!87 lt!893012 lt!893020))))

(assert (=> b!2486860 (= lt!893012 (toList!1683 (map!6341 (v!31682 (underlying!7060 thiss!42540)))))))

(declare-fun Unit!42910 () Unit!42905)

(assert (=> b!2486860 (= e!1579088 Unit!42910)))

(declare-fun b!2486857 () Bool)

(declare-fun Unit!42911 () Unit!42905)

(assert (=> b!2486857 (= e!1579091 Unit!42911)))

(declare-fun d!713838 () Bool)

(declare-fun lt!893015 () Bool)

(assert (=> d!713838 (= lt!893015 (contains!5240 (map!6340 thiss!42540) key!2246))))

(declare-fun e!1579085 () Bool)

(assert (=> d!713838 (= lt!893015 e!1579085)))

(declare-fun res!1052727 () Bool)

(assert (=> d!713838 (=> (not res!1052727) (not e!1579085))))

(declare-fun contains!5244 (MutLongMap!3426 (_ BitVec 64)) Bool)

(assert (=> d!713838 (= res!1052727 (contains!5244 (v!31682 (underlying!7060 thiss!42540)) lt!893020))))

(declare-fun lt!893010 () Unit!42905)

(assert (=> d!713838 (= lt!893010 e!1579090)))

(assert (=> d!713838 (= c!395227 (contains!5240 (extractMap!196 (toList!1683 (map!6341 (v!31682 (underlying!7060 thiss!42540))))) key!2246))))

(declare-fun lt!893011 () Unit!42905)

(declare-fun e!1579086 () Unit!42905)

(assert (=> d!713838 (= lt!893011 e!1579086)))

(declare-fun c!395224 () Bool)

(assert (=> d!713838 (= c!395224 (contains!5244 (v!31682 (underlying!7060 thiss!42540)) lt!893020))))

(assert (=> d!713838 (= lt!893020 (hash!782 (hashF!5353 thiss!42540) key!2246))))

(assert (=> d!713838 (valid!2635 thiss!42540)))

(assert (=> d!713838 (= (contains!5241 thiss!42540 key!2246) lt!893015)))

(declare-fun b!2486861 () Bool)

(assert (=> b!2486861 (= e!1579087 call!152510)))

(declare-fun b!2486862 () Bool)

(declare-fun Unit!42912 () Unit!42905)

(assert (=> b!2486862 (= e!1579086 Unit!42912)))

(declare-fun bm!152508 () Bool)

(declare-fun isDefined!4612 (Option!5789) Bool)

(assert (=> bm!152508 (= call!152510 (isDefined!4612 call!152512))))

(declare-fun b!2486863 () Bool)

(assert (=> b!2486863 (= e!1579085 (isDefined!4612 (getPair!86 (apply!6997 (v!31682 (underlying!7060 thiss!42540)) lt!893020) key!2246)))))

(assert (=> b!2486864 (= e!1579086 (forallContained!904 (toList!1683 (map!6341 (v!31682 (underlying!7060 thiss!42540)))) lambda!94690 (tuple2!29263 lt!893020 (apply!6997 (v!31682 (underlying!7060 thiss!42540)) lt!893020))))))

(declare-fun c!395225 () Bool)

(assert (=> b!2486864 (= c!395225 (not (contains!5243 (toList!1683 (map!6341 (v!31682 (underlying!7060 thiss!42540)))) (tuple2!29263 lt!893020 (apply!6997 (v!31682 (underlying!7060 thiss!42540)) lt!893020)))))))

(declare-fun lt!893017 () Unit!42905)

(assert (=> b!2486864 (= lt!893017 e!1579088)))

(declare-fun b!2486865 () Bool)

(assert (=> b!2486865 false))

(declare-fun lt!893021 () Unit!42905)

(declare-fun lt!893014 () Unit!42905)

(assert (=> b!2486865 (= lt!893021 lt!893014)))

(declare-fun lt!893019 () ListLongMap!635)

(assert (=> b!2486865 (contains!5240 (extractMap!196 (toList!1683 lt!893019)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!86 (ListLongMap!635 K!5650 Hashable!3336) Unit!42905)

(assert (=> b!2486865 (= lt!893014 (lemmaInLongMapThenInGenericMap!86 lt!893019 key!2246 (hashF!5353 thiss!42540)))))

(assert (=> b!2486865 (= lt!893019 call!152511)))

(declare-fun Unit!42913 () Unit!42905)

(assert (=> b!2486865 (= e!1579091 Unit!42913)))

(assert (= (and d!713838 c!395224) b!2486864))

(assert (= (and d!713838 (not c!395224)) b!2486862))

(assert (= (and b!2486864 c!395225) b!2486860))

(assert (= (and b!2486864 (not c!395225)) b!2486858))

(assert (= (and d!713838 c!395227) b!2486856))

(assert (= (and d!713838 (not c!395227)) b!2486859))

(assert (= (and b!2486856 res!1052726) b!2486855))

(assert (= (and b!2486859 res!1052725) b!2486861))

(assert (= (and b!2486859 c!395226) b!2486865))

(assert (= (and b!2486859 (not c!395226)) b!2486857))

(assert (= (or b!2486856 b!2486855 b!2486859 b!2486861) bm!152505))

(assert (= (or b!2486856 b!2486859 b!2486861 b!2486865) bm!152504))

(assert (= (or b!2486856 b!2486859) bm!152507))

(assert (= (or b!2486855 b!2486861) bm!152506))

(assert (= (or b!2486855 b!2486861) bm!152503))

(assert (= (or b!2486855 b!2486861) bm!152508))

(assert (= (and d!713838 res!1052727) b!2486863))

(assert (=> bm!152504 m!2855475))

(assert (=> d!713838 m!2855487))

(assert (=> d!713838 m!2855527))

(declare-fun m!2855537 () Bool)

(assert (=> d!713838 m!2855537))

(assert (=> d!713838 m!2855481))

(declare-fun m!2855539 () Bool)

(assert (=> d!713838 m!2855539))

(declare-fun m!2855541 () Bool)

(assert (=> d!713838 m!2855541))

(declare-fun m!2855543 () Bool)

(assert (=> d!713838 m!2855543))

(assert (=> d!713838 m!2855481))

(assert (=> d!713838 m!2855541))

(assert (=> d!713838 m!2855475))

(declare-fun m!2855545 () Bool)

(assert (=> b!2486856 m!2855545))

(assert (=> b!2486864 m!2855475))

(declare-fun m!2855547 () Bool)

(assert (=> b!2486864 m!2855547))

(declare-fun m!2855549 () Bool)

(assert (=> b!2486864 m!2855549))

(declare-fun m!2855551 () Bool)

(assert (=> b!2486864 m!2855551))

(declare-fun m!2855553 () Bool)

(assert (=> bm!152506 m!2855553))

(assert (=> bm!152505 m!2855487))

(declare-fun m!2855555 () Bool)

(assert (=> bm!152508 m!2855555))

(declare-fun m!2855557 () Bool)

(assert (=> b!2486865 m!2855557))

(assert (=> b!2486865 m!2855557))

(declare-fun m!2855559 () Bool)

(assert (=> b!2486865 m!2855559))

(declare-fun m!2855561 () Bool)

(assert (=> b!2486865 m!2855561))

(declare-fun m!2855563 () Bool)

(assert (=> bm!152507 m!2855563))

(declare-fun m!2855565 () Bool)

(assert (=> bm!152503 m!2855565))

(assert (=> b!2486863 m!2855547))

(assert (=> b!2486863 m!2855547))

(declare-fun m!2855567 () Bool)

(assert (=> b!2486863 m!2855567))

(assert (=> b!2486863 m!2855567))

(declare-fun m!2855569 () Bool)

(assert (=> b!2486863 m!2855569))

(declare-fun m!2855571 () Bool)

(assert (=> b!2486860 m!2855571))

(declare-fun m!2855573 () Bool)

(assert (=> b!2486860 m!2855573))

(declare-fun m!2855575 () Bool)

(assert (=> b!2486860 m!2855575))

(declare-fun m!2855577 () Bool)

(assert (=> b!2486860 m!2855577))

(assert (=> b!2486860 m!2855573))

(declare-fun m!2855579 () Bool)

(assert (=> b!2486860 m!2855579))

(declare-fun m!2855581 () Bool)

(assert (=> b!2486860 m!2855581))

(assert (=> b!2486860 m!2855475))

(declare-fun m!2855583 () Bool)

(assert (=> b!2486860 m!2855583))

(assert (=> b!2486860 m!2855547))

(assert (=> b!2486829 d!713838))

(declare-fun bs!468119 () Bool)

(declare-fun b!2486870 () Bool)

(assert (= bs!468119 (and b!2486870 b!2486826)))

(declare-fun lambda!94693 () Int)

(assert (=> bs!468119 (= lambda!94693 lambda!94687)))

(declare-fun bs!468120 () Bool)

(assert (= bs!468120 (and b!2486870 b!2486864)))

(assert (=> bs!468120 (= lambda!94693 lambda!94690)))

(declare-fun d!713840 () Bool)

(declare-fun res!1052732 () Bool)

(declare-fun e!1579094 () Bool)

(assert (=> d!713840 (=> (not res!1052732) (not e!1579094))))

(declare-fun valid!2636 (MutLongMap!3426) Bool)

(assert (=> d!713840 (= res!1052732 (valid!2636 (v!31682 (underlying!7060 thiss!42540))))))

(assert (=> d!713840 (= (valid!2635 thiss!42540) e!1579094)))

(declare-fun res!1052733 () Bool)

(assert (=> b!2486870 (=> (not res!1052733) (not e!1579094))))

(assert (=> b!2486870 (= res!1052733 (forall!6018 (toList!1683 (map!6341 (v!31682 (underlying!7060 thiss!42540)))) lambda!94693))))

(declare-fun b!2486871 () Bool)

(assert (=> b!2486871 (= e!1579094 (allKeysSameHashInMap!201 (map!6341 (v!31682 (underlying!7060 thiss!42540))) (hashF!5353 thiss!42540)))))

(assert (= (and d!713840 res!1052732) b!2486870))

(assert (= (and b!2486870 res!1052733) b!2486871))

(declare-fun m!2855585 () Bool)

(assert (=> d!713840 m!2855585))

(assert (=> b!2486870 m!2855475))

(declare-fun m!2855587 () Bool)

(assert (=> b!2486870 m!2855587))

(assert (=> b!2486871 m!2855475))

(assert (=> b!2486871 m!2855475))

(declare-fun m!2855589 () Bool)

(assert (=> b!2486871 m!2855589))

(assert (=> b!2486823 d!713840))

(declare-fun bs!468121 () Bool)

(declare-fun d!713842 () Bool)

(assert (= bs!468121 (and d!713842 b!2486826)))

(declare-fun lambda!94696 () Int)

(assert (=> bs!468121 (= lambda!94696 lambda!94687)))

(declare-fun bs!468122 () Bool)

(assert (= bs!468122 (and d!713842 b!2486864)))

(assert (=> bs!468122 (= lambda!94696 lambda!94690)))

(declare-fun bs!468123 () Bool)

(assert (= bs!468123 (and d!713842 b!2486870)))

(assert (=> bs!468123 (= lambda!94696 lambda!94693)))

(declare-fun lt!893024 () ListMap!1161)

(declare-fun invariantList!425 (List!29330) Bool)

(assert (=> d!713842 (invariantList!425 (toList!1684 lt!893024))))

(declare-fun e!1579097 () ListMap!1161)

(assert (=> d!713842 (= lt!893024 e!1579097)))

(declare-fun c!395230 () Bool)

(assert (=> d!713842 (= c!395230 ((_ is Cons!29231) (toList!1683 lt!892959)))))

(assert (=> d!713842 (forall!6018 (toList!1683 lt!892959) lambda!94696)))

(assert (=> d!713842 (= (extractMap!196 (toList!1683 lt!892959)) lt!893024)))

(declare-fun b!2486876 () Bool)

(declare-fun addToMapMapFromBucket!19 (List!29330 ListMap!1161) ListMap!1161)

(assert (=> b!2486876 (= e!1579097 (addToMapMapFromBucket!19 (_2!17173 (h!34649 (toList!1683 lt!892959))) (extractMap!196 (t!211022 (toList!1683 lt!892959)))))))

(declare-fun b!2486877 () Bool)

(assert (=> b!2486877 (= e!1579097 (ListMap!1162 Nil!29230))))

(assert (= (and d!713842 c!395230) b!2486876))

(assert (= (and d!713842 (not c!395230)) b!2486877))

(declare-fun m!2855591 () Bool)

(assert (=> d!713842 m!2855591))

(declare-fun m!2855593 () Bool)

(assert (=> d!713842 m!2855593))

(declare-fun m!2855595 () Bool)

(assert (=> b!2486876 m!2855595))

(assert (=> b!2486876 m!2855595))

(declare-fun m!2855597 () Bool)

(assert (=> b!2486876 m!2855597))

(assert (=> b!2486828 d!713842))

(declare-fun d!713844 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3981 (List!29330) (InoxSet tuple2!29260))

(assert (=> d!713844 (= (eq!72 (map!6340 (_2!17174 lt!892953)) (-!128 lt!892951 key!2246)) (= (content!3981 (toList!1684 (map!6340 (_2!17174 lt!892953)))) (content!3981 (toList!1684 (-!128 lt!892951 key!2246)))))))

(declare-fun bs!468124 () Bool)

(assert (= bs!468124 d!713844))

(declare-fun m!2855599 () Bool)

(assert (=> bs!468124 m!2855599))

(declare-fun m!2855601 () Bool)

(assert (=> bs!468124 m!2855601))

(assert (=> b!2486828 d!713844))

(declare-fun d!713846 () Bool)

(declare-fun e!1579100 () Bool)

(assert (=> d!713846 e!1579100))

(declare-fun res!1052736 () Bool)

(assert (=> d!713846 (=> (not res!1052736) (not e!1579100))))

(declare-fun lt!893027 () ListMap!1161)

(assert (=> d!713846 (= res!1052736 (not (contains!5240 lt!893027 key!2246)))))

(declare-fun removePresrvNoDuplicatedKeys!23 (List!29330 K!5650) List!29330)

(assert (=> d!713846 (= lt!893027 (ListMap!1162 (removePresrvNoDuplicatedKeys!23 (toList!1684 (extractMap!196 (toList!1683 lt!892959))) key!2246)))))

(assert (=> d!713846 (= (-!128 (extractMap!196 (toList!1683 lt!892959)) key!2246) lt!893027)))

(declare-fun b!2486880 () Bool)

(declare-datatypes ((List!29332 0))(
  ( (Nil!29232) (Cons!29232 (h!34651 K!5650) (t!211025 List!29332)) )
))
(declare-fun content!3982 (List!29332) (InoxSet K!5650))

(declare-fun keys!9384 (ListMap!1161) List!29332)

(assert (=> b!2486880 (= e!1579100 (= ((_ map and) (content!3982 (keys!9384 (extractMap!196 (toList!1683 lt!892959)))) ((_ map not) (store ((as const (Array K!5650 Bool)) false) key!2246 true))) (content!3982 (keys!9384 lt!893027))))))

(assert (= (and d!713846 res!1052736) b!2486880))

(declare-fun m!2855603 () Bool)

(assert (=> d!713846 m!2855603))

(declare-fun m!2855605 () Bool)

(assert (=> d!713846 m!2855605))

(declare-fun m!2855607 () Bool)

(assert (=> b!2486880 m!2855607))

(assert (=> b!2486880 m!2855505))

(declare-fun m!2855609 () Bool)

(assert (=> b!2486880 m!2855609))

(declare-fun m!2855611 () Bool)

(assert (=> b!2486880 m!2855611))

(declare-fun m!2855613 () Bool)

(assert (=> b!2486880 m!2855613))

(assert (=> b!2486880 m!2855609))

(declare-fun m!2855615 () Bool)

(assert (=> b!2486880 m!2855615))

(assert (=> b!2486880 m!2855611))

(assert (=> b!2486828 d!713846))

(declare-fun bs!468125 () Bool)

(declare-fun d!713848 () Bool)

(assert (= bs!468125 (and d!713848 b!2486826)))

(declare-fun lambda!94699 () Int)

(assert (=> bs!468125 (= lambda!94699 lambda!94687)))

(declare-fun bs!468126 () Bool)

(assert (= bs!468126 (and d!713848 b!2486864)))

(assert (=> bs!468126 (= lambda!94699 lambda!94690)))

(declare-fun bs!468127 () Bool)

(assert (= bs!468127 (and d!713848 b!2486870)))

(assert (=> bs!468127 (= lambda!94699 lambda!94693)))

(declare-fun bs!468128 () Bool)

(assert (= bs!468128 (and d!713848 d!713842)))

(assert (=> bs!468128 (= lambda!94699 lambda!94696)))

(assert (=> d!713848 (eq!72 (extractMap!196 (toList!1683 (+!115 lt!892959 (tuple2!29263 lt!892961 lt!892955)))) (-!128 (extractMap!196 (toList!1683 lt!892959)) key!2246))))

(declare-fun lt!893030 () Unit!42905)

(declare-fun choose!14713 (ListLongMap!635 (_ BitVec 64) List!29330 K!5650 Hashable!3336) Unit!42905)

(assert (=> d!713848 (= lt!893030 (choose!14713 lt!892959 lt!892961 lt!892955 key!2246 (hashF!5353 (_2!17174 lt!892953))))))

(assert (=> d!713848 (forall!6018 (toList!1683 lt!892959) lambda!94699)))

(assert (=> d!713848 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!31 lt!892959 lt!892961 lt!892955 key!2246 (hashF!5353 (_2!17174 lt!892953))) lt!893030)))

(declare-fun bs!468129 () Bool)

(assert (= bs!468129 d!713848))

(assert (=> bs!468129 m!2855505))

(assert (=> bs!468129 m!2855507))

(assert (=> bs!468129 m!2855505))

(declare-fun m!2855617 () Bool)

(assert (=> bs!468129 m!2855617))

(declare-fun m!2855619 () Bool)

(assert (=> bs!468129 m!2855619))

(assert (=> bs!468129 m!2855507))

(declare-fun m!2855621 () Bool)

(assert (=> bs!468129 m!2855621))

(assert (=> bs!468129 m!2855619))

(assert (=> bs!468129 m!2855525))

(declare-fun m!2855623 () Bool)

(assert (=> bs!468129 m!2855623))

(assert (=> b!2486828 d!713848))

(declare-fun d!713850 () Bool)

(declare-fun res!1052741 () Bool)

(declare-fun e!1579105 () Bool)

(assert (=> d!713850 (=> res!1052741 e!1579105)))

(assert (=> d!713850 (= res!1052741 ((_ is Nil!29231) (toList!1683 lt!892952)))))

(assert (=> d!713850 (= (forall!6018 (toList!1683 lt!892952) lambda!94687) e!1579105)))

(declare-fun b!2486885 () Bool)

(declare-fun e!1579106 () Bool)

(assert (=> b!2486885 (= e!1579105 e!1579106)))

(declare-fun res!1052742 () Bool)

(assert (=> b!2486885 (=> (not res!1052742) (not e!1579106))))

(declare-fun dynLambda!12508 (Int tuple2!29262) Bool)

(assert (=> b!2486885 (= res!1052742 (dynLambda!12508 lambda!94687 (h!34649 (toList!1683 lt!892952))))))

(declare-fun b!2486886 () Bool)

(assert (=> b!2486886 (= e!1579106 (forall!6018 (t!211022 (toList!1683 lt!892952)) lambda!94687))))

(assert (= (and d!713850 (not res!1052741)) b!2486885))

(assert (= (and b!2486885 res!1052742) b!2486886))

(declare-fun b_lambda!76387 () Bool)

(assert (=> (not b_lambda!76387) (not b!2486885)))

(declare-fun m!2855625 () Bool)

(assert (=> b!2486885 m!2855625))

(declare-fun m!2855627 () Bool)

(assert (=> b!2486886 m!2855627))

(assert (=> b!2486828 d!713850))

(declare-fun d!713852 () Bool)

(assert (=> d!713852 true))

(assert (=> d!713852 true))

(declare-fun lambda!94702 () Int)

(declare-fun forall!6019 (List!29330 Int) Bool)

(assert (=> d!713852 (= (allKeysSameHash!98 lt!892954 lt!892961 (hashF!5353 (_2!17174 lt!892953))) (forall!6019 lt!892954 lambda!94702))))

(declare-fun bs!468130 () Bool)

(assert (= bs!468130 d!713852))

(declare-fun m!2855629 () Bool)

(assert (=> bs!468130 m!2855629))

(assert (=> b!2486828 d!713852))

(declare-fun d!713854 () Bool)

(assert (=> d!713854 (allKeysSameHash!98 (removePairForKey!115 lt!892954 key!2246) lt!892961 (hashF!5353 (_2!17174 lt!892953)))))

(declare-fun lt!893033 () Unit!42905)

(declare-fun choose!14714 (List!29330 K!5650 (_ BitVec 64) Hashable!3336) Unit!42905)

(assert (=> d!713854 (= lt!893033 (choose!14714 lt!892954 key!2246 lt!892961 (hashF!5353 (_2!17174 lt!892953))))))

(assert (=> d!713854 (noDuplicateKeys!123 lt!892954)))

(assert (=> d!713854 (= (lemmaRemovePairForKeyPreservesHash!87 lt!892954 key!2246 lt!892961 (hashF!5353 (_2!17174 lt!892953))) lt!893033)))

(declare-fun bs!468131 () Bool)

(assert (= bs!468131 d!713854))

(assert (=> bs!468131 m!2855479))

(assert (=> bs!468131 m!2855479))

(declare-fun m!2855631 () Bool)

(assert (=> bs!468131 m!2855631))

(declare-fun m!2855633 () Bool)

(assert (=> bs!468131 m!2855633))

(declare-fun m!2855635 () Bool)

(assert (=> bs!468131 m!2855635))

(assert (=> b!2486828 d!713854))

(declare-fun d!713856 () Bool)

(declare-fun lt!893036 () ListMap!1161)

(assert (=> d!713856 (invariantList!425 (toList!1684 lt!893036))))

(assert (=> d!713856 (= lt!893036 (extractMap!196 (toList!1683 (map!6341 (v!31682 (underlying!7060 (_2!17174 lt!892953)))))))))

(assert (=> d!713856 (valid!2635 (_2!17174 lt!892953))))

(assert (=> d!713856 (= (map!6340 (_2!17174 lt!892953)) lt!893036)))

(declare-fun bs!468132 () Bool)

(assert (= bs!468132 d!713856))

(declare-fun m!2855637 () Bool)

(assert (=> bs!468132 m!2855637))

(assert (=> bs!468132 m!2855493))

(declare-fun m!2855639 () Bool)

(assert (=> bs!468132 m!2855639))

(assert (=> bs!468132 m!2855533))

(assert (=> b!2486828 d!713856))

(declare-fun bs!468133 () Bool)

(declare-fun d!713858 () Bool)

(assert (= bs!468133 (and d!713858 b!2486870)))

(declare-fun lambda!94707 () Int)

(assert (=> bs!468133 (= lambda!94707 lambda!94693)))

(declare-fun bs!468134 () Bool)

(assert (= bs!468134 (and d!713858 d!713848)))

(assert (=> bs!468134 (= lambda!94707 lambda!94699)))

(declare-fun bs!468135 () Bool)

(assert (= bs!468135 (and d!713858 b!2486826)))

(assert (=> bs!468135 (= lambda!94707 lambda!94687)))

(declare-fun bs!468136 () Bool)

(assert (= bs!468136 (and d!713858 d!713842)))

(assert (=> bs!468136 (= lambda!94707 lambda!94696)))

(declare-fun bs!468137 () Bool)

(assert (= bs!468137 (and d!713858 b!2486864)))

(assert (=> bs!468137 (= lambda!94707 lambda!94690)))

(declare-fun e!1579109 () Bool)

(assert (=> d!713858 e!1579109))

(declare-fun res!1052745 () Bool)

(assert (=> d!713858 (=> (not res!1052745) (not e!1579109))))

(declare-fun lt!893042 () ListLongMap!635)

(assert (=> d!713858 (= res!1052745 (forall!6018 (toList!1683 lt!893042) lambda!94707))))

(assert (=> d!713858 (= lt!893042 (+!115 lt!892959 (tuple2!29263 lt!892961 lt!892955)))))

(declare-fun lt!893041 () Unit!42905)

(declare-fun choose!14715 (ListLongMap!635 (_ BitVec 64) List!29330 Hashable!3336) Unit!42905)

(assert (=> d!713858 (= lt!893041 (choose!14715 lt!892959 lt!892961 lt!892955 (hashF!5353 (_2!17174 lt!892953))))))

(assert (=> d!713858 (forall!6018 (toList!1683 lt!892959) lambda!94707)))

(assert (=> d!713858 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!78 lt!892959 lt!892961 lt!892955 (hashF!5353 (_2!17174 lt!892953))) lt!893041)))

(declare-fun b!2486893 () Bool)

(assert (=> b!2486893 (= e!1579109 (allKeysSameHashInMap!201 lt!893042 (hashF!5353 (_2!17174 lt!892953))))))

(assert (= (and d!713858 res!1052745) b!2486893))

(declare-fun m!2855641 () Bool)

(assert (=> d!713858 m!2855641))

(assert (=> d!713858 m!2855525))

(declare-fun m!2855643 () Bool)

(assert (=> d!713858 m!2855643))

(declare-fun m!2855645 () Bool)

(assert (=> d!713858 m!2855645))

(declare-fun m!2855647 () Bool)

(assert (=> b!2486893 m!2855647))

(assert (=> b!2486828 d!713858))

(declare-fun bs!468138 () Bool)

(declare-fun d!713860 () Bool)

(assert (= bs!468138 (and d!713860 d!713858)))

(declare-fun lambda!94710 () Int)

(assert (=> bs!468138 (not (= lambda!94710 lambda!94707))))

(declare-fun bs!468139 () Bool)

(assert (= bs!468139 (and d!713860 b!2486870)))

(assert (=> bs!468139 (not (= lambda!94710 lambda!94693))))

(declare-fun bs!468140 () Bool)

(assert (= bs!468140 (and d!713860 d!713848)))

(assert (=> bs!468140 (not (= lambda!94710 lambda!94699))))

(declare-fun bs!468141 () Bool)

(assert (= bs!468141 (and d!713860 b!2486826)))

(assert (=> bs!468141 (not (= lambda!94710 lambda!94687))))

(declare-fun bs!468142 () Bool)

(assert (= bs!468142 (and d!713860 d!713842)))

(assert (=> bs!468142 (not (= lambda!94710 lambda!94696))))

(declare-fun bs!468143 () Bool)

(assert (= bs!468143 (and d!713860 b!2486864)))

(assert (=> bs!468143 (not (= lambda!94710 lambda!94690))))

(assert (=> d!713860 true))

(assert (=> d!713860 (allKeysSameHash!98 lt!892954 lt!892961 (hashF!5353 (_2!17174 lt!892953)))))

(declare-fun lt!893045 () Unit!42905)

(declare-fun choose!14716 (List!29331 (_ BitVec 64) List!29330 Hashable!3336) Unit!42905)

(assert (=> d!713860 (= lt!893045 (choose!14716 (toList!1683 lt!892959) lt!892961 lt!892954 (hashF!5353 (_2!17174 lt!892953))))))

(assert (=> d!713860 (forall!6018 (toList!1683 lt!892959) lambda!94710)))

(assert (=> d!713860 (= (lemmaInLongMapAllKeySameHashThenForTuple!91 (toList!1683 lt!892959) lt!892961 lt!892954 (hashF!5353 (_2!17174 lt!892953))) lt!893045)))

(declare-fun bs!468144 () Bool)

(assert (= bs!468144 d!713860))

(assert (=> bs!468144 m!2855521))

(declare-fun m!2855649 () Bool)

(assert (=> bs!468144 m!2855649))

(declare-fun m!2855651 () Bool)

(assert (=> bs!468144 m!2855651))

(assert (=> b!2486828 d!713860))

(declare-fun d!713862 () Bool)

(declare-fun map!6342 (LongMapFixedSize!6852) ListLongMap!635)

(assert (=> d!713862 (= (map!6341 (v!31682 (underlying!7060 (_2!17174 lt!892953)))) (map!6342 (v!31681 (underlying!7059 (v!31682 (underlying!7060 (_2!17174 lt!892953)))))))))

(declare-fun bs!468145 () Bool)

(assert (= bs!468145 d!713862))

(declare-fun m!2855653 () Bool)

(assert (=> bs!468145 m!2855653))

(assert (=> b!2486828 d!713862))

(declare-fun bs!468146 () Bool)

(declare-fun d!713864 () Bool)

(assert (= bs!468146 (and d!713864 d!713858)))

(declare-fun lambda!94711 () Int)

(assert (=> bs!468146 (= lambda!94711 lambda!94707)))

(declare-fun bs!468147 () Bool)

(assert (= bs!468147 (and d!713864 b!2486870)))

(assert (=> bs!468147 (= lambda!94711 lambda!94693)))

(declare-fun bs!468148 () Bool)

(assert (= bs!468148 (and d!713864 d!713860)))

(assert (=> bs!468148 (not (= lambda!94711 lambda!94710))))

(declare-fun bs!468149 () Bool)

(assert (= bs!468149 (and d!713864 d!713848)))

(assert (=> bs!468149 (= lambda!94711 lambda!94699)))

(declare-fun bs!468150 () Bool)

(assert (= bs!468150 (and d!713864 b!2486826)))

(assert (=> bs!468150 (= lambda!94711 lambda!94687)))

(declare-fun bs!468151 () Bool)

(assert (= bs!468151 (and d!713864 d!713842)))

(assert (=> bs!468151 (= lambda!94711 lambda!94696)))

(declare-fun bs!468152 () Bool)

(assert (= bs!468152 (and d!713864 b!2486864)))

(assert (=> bs!468152 (= lambda!94711 lambda!94690)))

(declare-fun lt!893046 () ListMap!1161)

(assert (=> d!713864 (invariantList!425 (toList!1684 lt!893046))))

(declare-fun e!1579110 () ListMap!1161)

(assert (=> d!713864 (= lt!893046 e!1579110)))

(declare-fun c!395231 () Bool)

(assert (=> d!713864 (= c!395231 ((_ is Cons!29231) (toList!1683 lt!892952)))))

(assert (=> d!713864 (forall!6018 (toList!1683 lt!892952) lambda!94711)))

(assert (=> d!713864 (= (extractMap!196 (toList!1683 lt!892952)) lt!893046)))

(declare-fun b!2486896 () Bool)

(assert (=> b!2486896 (= e!1579110 (addToMapMapFromBucket!19 (_2!17173 (h!34649 (toList!1683 lt!892952))) (extractMap!196 (t!211022 (toList!1683 lt!892952)))))))

(declare-fun b!2486897 () Bool)

(assert (=> b!2486897 (= e!1579110 (ListMap!1162 Nil!29230))))

(assert (= (and d!713864 c!395231) b!2486896))

(assert (= (and d!713864 (not c!395231)) b!2486897))

(declare-fun m!2855655 () Bool)

(assert (=> d!713864 m!2855655))

(declare-fun m!2855657 () Bool)

(assert (=> d!713864 m!2855657))

(declare-fun m!2855659 () Bool)

(assert (=> b!2486896 m!2855659))

(assert (=> b!2486896 m!2855659))

(declare-fun m!2855661 () Bool)

(assert (=> b!2486896 m!2855661))

(assert (=> b!2486828 d!713864))

(declare-fun d!713866 () Bool)

(declare-fun res!1052746 () Bool)

(declare-fun e!1579111 () Bool)

(assert (=> d!713866 (=> res!1052746 e!1579111)))

(assert (=> d!713866 (= res!1052746 ((_ is Nil!29231) (toList!1683 lt!892947)))))

(assert (=> d!713866 (= (forall!6018 (toList!1683 lt!892947) lambda!94687) e!1579111)))

(declare-fun b!2486898 () Bool)

(declare-fun e!1579112 () Bool)

(assert (=> b!2486898 (= e!1579111 e!1579112)))

(declare-fun res!1052747 () Bool)

(assert (=> b!2486898 (=> (not res!1052747) (not e!1579112))))

(assert (=> b!2486898 (= res!1052747 (dynLambda!12508 lambda!94687 (h!34649 (toList!1683 lt!892947))))))

(declare-fun b!2486899 () Bool)

(assert (=> b!2486899 (= e!1579112 (forall!6018 (t!211022 (toList!1683 lt!892947)) lambda!94687))))

(assert (= (and d!713866 (not res!1052746)) b!2486898))

(assert (= (and b!2486898 res!1052747) b!2486899))

(declare-fun b_lambda!76389 () Bool)

(assert (=> (not b_lambda!76389) (not b!2486898)))

(declare-fun m!2855663 () Bool)

(assert (=> b!2486898 m!2855663))

(declare-fun m!2855665 () Bool)

(assert (=> b!2486899 m!2855665))

(assert (=> b!2486828 d!713866))

(declare-fun d!713868 () Bool)

(declare-fun e!1579113 () Bool)

(assert (=> d!713868 e!1579113))

(declare-fun res!1052748 () Bool)

(assert (=> d!713868 (=> (not res!1052748) (not e!1579113))))

(declare-fun lt!893047 () ListMap!1161)

(assert (=> d!713868 (= res!1052748 (not (contains!5240 lt!893047 key!2246)))))

(assert (=> d!713868 (= lt!893047 (ListMap!1162 (removePresrvNoDuplicatedKeys!23 (toList!1684 lt!892951) key!2246)))))

(assert (=> d!713868 (= (-!128 lt!892951 key!2246) lt!893047)))

(declare-fun b!2486900 () Bool)

(assert (=> b!2486900 (= e!1579113 (= ((_ map and) (content!3982 (keys!9384 lt!892951)) ((_ map not) (store ((as const (Array K!5650 Bool)) false) key!2246 true))) (content!3982 (keys!9384 lt!893047))))))

(assert (= (and d!713868 res!1052748) b!2486900))

(declare-fun m!2855667 () Bool)

(assert (=> d!713868 m!2855667))

(declare-fun m!2855669 () Bool)

(assert (=> d!713868 m!2855669))

(assert (=> b!2486900 m!2855607))

(declare-fun m!2855671 () Bool)

(assert (=> b!2486900 m!2855671))

(declare-fun m!2855673 () Bool)

(assert (=> b!2486900 m!2855673))

(declare-fun m!2855675 () Bool)

(assert (=> b!2486900 m!2855675))

(assert (=> b!2486900 m!2855671))

(declare-fun m!2855677 () Bool)

(assert (=> b!2486900 m!2855677))

(assert (=> b!2486900 m!2855673))

(assert (=> b!2486828 d!713868))

(declare-fun d!713870 () Bool)

(declare-fun e!1579116 () Bool)

(assert (=> d!713870 e!1579116))

(declare-fun res!1052753 () Bool)

(assert (=> d!713870 (=> (not res!1052753) (not e!1579116))))

(declare-fun lt!893058 () ListLongMap!635)

(assert (=> d!713870 (= res!1052753 (contains!5242 lt!893058 (_1!17173 (tuple2!29263 lt!892961 lt!892955))))))

(declare-fun lt!893059 () List!29331)

(assert (=> d!713870 (= lt!893058 (ListLongMap!636 lt!893059))))

(declare-fun lt!893056 () Unit!42905)

(declare-fun lt!893057 () Unit!42905)

(assert (=> d!713870 (= lt!893056 lt!893057)))

(assert (=> d!713870 (= (getValueByKey!160 lt!893059 (_1!17173 (tuple2!29263 lt!892961 lt!892955))) (Some!5789 (_2!17173 (tuple2!29263 lt!892961 lt!892955))))))

(declare-fun lemmaContainsTupThenGetReturnValue!29 (List!29331 (_ BitVec 64) List!29330) Unit!42905)

(assert (=> d!713870 (= lt!893057 (lemmaContainsTupThenGetReturnValue!29 lt!893059 (_1!17173 (tuple2!29263 lt!892961 lt!892955)) (_2!17173 (tuple2!29263 lt!892961 lt!892955))))))

(declare-fun insertStrictlySorted!23 (List!29331 (_ BitVec 64) List!29330) List!29331)

(assert (=> d!713870 (= lt!893059 (insertStrictlySorted!23 (toList!1683 lt!892959) (_1!17173 (tuple2!29263 lt!892961 lt!892955)) (_2!17173 (tuple2!29263 lt!892961 lt!892955))))))

(assert (=> d!713870 (= (+!115 lt!892959 (tuple2!29263 lt!892961 lt!892955)) lt!893058)))

(declare-fun b!2486905 () Bool)

(declare-fun res!1052754 () Bool)

(assert (=> b!2486905 (=> (not res!1052754) (not e!1579116))))

(assert (=> b!2486905 (= res!1052754 (= (getValueByKey!160 (toList!1683 lt!893058) (_1!17173 (tuple2!29263 lt!892961 lt!892955))) (Some!5789 (_2!17173 (tuple2!29263 lt!892961 lt!892955)))))))

(declare-fun b!2486906 () Bool)

(assert (=> b!2486906 (= e!1579116 (contains!5243 (toList!1683 lt!893058) (tuple2!29263 lt!892961 lt!892955)))))

(assert (= (and d!713870 res!1052753) b!2486905))

(assert (= (and b!2486905 res!1052754) b!2486906))

(declare-fun m!2855679 () Bool)

(assert (=> d!713870 m!2855679))

(declare-fun m!2855681 () Bool)

(assert (=> d!713870 m!2855681))

(declare-fun m!2855683 () Bool)

(assert (=> d!713870 m!2855683))

(declare-fun m!2855685 () Bool)

(assert (=> d!713870 m!2855685))

(declare-fun m!2855687 () Bool)

(assert (=> b!2486905 m!2855687))

(declare-fun m!2855689 () Bool)

(assert (=> b!2486906 m!2855689))

(assert (=> b!2486828 d!713870))

(declare-fun d!713872 () Bool)

(assert (=> d!713872 (= (eq!72 (extractMap!196 (toList!1683 lt!892952)) (-!128 (extractMap!196 (toList!1683 lt!892959)) key!2246)) (= (content!3981 (toList!1684 (extractMap!196 (toList!1683 lt!892952)))) (content!3981 (toList!1684 (-!128 (extractMap!196 (toList!1683 lt!892959)) key!2246)))))))

(declare-fun bs!468153 () Bool)

(assert (= bs!468153 d!713872))

(declare-fun m!2855691 () Bool)

(assert (=> bs!468153 m!2855691))

(declare-fun m!2855693 () Bool)

(assert (=> bs!468153 m!2855693))

(assert (=> b!2486828 d!713872))

(declare-fun bs!468154 () Bool)

(declare-fun d!713874 () Bool)

(assert (= bs!468154 (and d!713874 d!713852)))

(declare-fun lambda!94712 () Int)

(assert (=> bs!468154 (= lambda!94712 lambda!94702)))

(assert (=> d!713874 true))

(assert (=> d!713874 true))

(assert (=> d!713874 (= (allKeysSameHash!98 lt!892955 lt!892961 (hashF!5353 (_2!17174 lt!892953))) (forall!6019 lt!892955 lambda!94712))))

(declare-fun bs!468155 () Bool)

(assert (= bs!468155 d!713874))

(declare-fun m!2855695 () Bool)

(assert (=> bs!468155 m!2855695))

(assert (=> b!2486828 d!713874))

(declare-fun bs!468156 () Bool)

(declare-fun d!713876 () Bool)

(assert (= bs!468156 (and d!713876 d!713858)))

(declare-fun lambda!94715 () Int)

(assert (=> bs!468156 (not (= lambda!94715 lambda!94707))))

(declare-fun bs!468157 () Bool)

(assert (= bs!468157 (and d!713876 b!2486870)))

(assert (=> bs!468157 (not (= lambda!94715 lambda!94693))))

(declare-fun bs!468158 () Bool)

(assert (= bs!468158 (and d!713876 d!713848)))

(assert (=> bs!468158 (not (= lambda!94715 lambda!94699))))

(declare-fun bs!468159 () Bool)

(assert (= bs!468159 (and d!713876 b!2486826)))

(assert (=> bs!468159 (not (= lambda!94715 lambda!94687))))

(declare-fun bs!468160 () Bool)

(assert (= bs!468160 (and d!713876 d!713842)))

(assert (=> bs!468160 (not (= lambda!94715 lambda!94696))))

(declare-fun bs!468161 () Bool)

(assert (= bs!468161 (and d!713876 b!2486864)))

(assert (=> bs!468161 (not (= lambda!94715 lambda!94690))))

(declare-fun bs!468162 () Bool)

(assert (= bs!468162 (and d!713876 d!713864)))

(assert (=> bs!468162 (not (= lambda!94715 lambda!94711))))

(declare-fun bs!468163 () Bool)

(assert (= bs!468163 (and d!713876 d!713860)))

(assert (=> bs!468163 (= lambda!94715 lambda!94710)))

(assert (=> d!713876 true))

(assert (=> d!713876 (= (allKeysSameHashInMap!201 lt!892952 (hashF!5353 (_2!17174 lt!892953))) (forall!6018 (toList!1683 lt!892952) lambda!94715))))

(declare-fun bs!468164 () Bool)

(assert (= bs!468164 d!713876))

(declare-fun m!2855697 () Bool)

(assert (=> bs!468164 m!2855697))

(assert (=> b!2486832 d!713876))

(declare-fun bm!152511 () Bool)

(declare-fun call!152516 () Bool)

(declare-fun e!1579130 () List!29332)

(declare-fun contains!5245 (List!29332 K!5650) Bool)

(assert (=> bm!152511 (= call!152516 (contains!5245 e!1579130 key!2246))))

(declare-fun c!395239 () Bool)

(declare-fun c!395240 () Bool)

(assert (=> bm!152511 (= c!395239 c!395240)))

(declare-fun b!2486925 () Bool)

(declare-fun e!1579132 () Bool)

(declare-fun e!1579133 () Bool)

(assert (=> b!2486925 (= e!1579132 e!1579133)))

(declare-fun res!1052763 () Bool)

(assert (=> b!2486925 (=> (not res!1052763) (not e!1579133))))

(declare-datatypes ((Option!5791 0))(
  ( (None!5790) (Some!5790 (v!31689 V!5852)) )
))
(declare-fun isDefined!4613 (Option!5791) Bool)

(declare-fun getValueByKey!161 (List!29330 K!5650) Option!5791)

(assert (=> b!2486925 (= res!1052763 (isDefined!4613 (getValueByKey!161 (toList!1684 lt!892951) key!2246)))))

(declare-fun b!2486926 () Bool)

(assert (=> b!2486926 (= e!1579133 (contains!5245 (keys!9384 lt!892951) key!2246))))

(declare-fun b!2486927 () Bool)

(declare-fun e!1579134 () Unit!42905)

(declare-fun e!1579129 () Unit!42905)

(assert (=> b!2486927 (= e!1579134 e!1579129)))

(declare-fun c!395238 () Bool)

(assert (=> b!2486927 (= c!395238 call!152516)))

(declare-fun b!2486928 () Bool)

(declare-fun e!1579131 () Bool)

(assert (=> b!2486928 (= e!1579131 (not (contains!5245 (keys!9384 lt!892951) key!2246)))))

(declare-fun b!2486929 () Bool)

(declare-fun lt!893078 () Unit!42905)

(assert (=> b!2486929 (= e!1579134 lt!893078)))

(declare-fun lt!893077 () Unit!42905)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!118 (List!29330 K!5650) Unit!42905)

(assert (=> b!2486929 (= lt!893077 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!1684 lt!892951) key!2246))))

(assert (=> b!2486929 (isDefined!4613 (getValueByKey!161 (toList!1684 lt!892951) key!2246))))

(declare-fun lt!893080 () Unit!42905)

(assert (=> b!2486929 (= lt!893080 lt!893077)))

(declare-fun lemmaInListThenGetKeysListContains!21 (List!29330 K!5650) Unit!42905)

(assert (=> b!2486929 (= lt!893078 (lemmaInListThenGetKeysListContains!21 (toList!1684 lt!892951) key!2246))))

(assert (=> b!2486929 call!152516))

(declare-fun b!2486930 () Bool)

(declare-fun getKeysList!24 (List!29330) List!29332)

(assert (=> b!2486930 (= e!1579130 (getKeysList!24 (toList!1684 lt!892951)))))

(declare-fun b!2486931 () Bool)

(declare-fun Unit!42914 () Unit!42905)

(assert (=> b!2486931 (= e!1579129 Unit!42914)))

(declare-fun b!2486932 () Bool)

(assert (=> b!2486932 false))

(declare-fun lt!893082 () Unit!42905)

(declare-fun lt!893076 () Unit!42905)

(assert (=> b!2486932 (= lt!893082 lt!893076)))

(declare-fun containsKey!174 (List!29330 K!5650) Bool)

(assert (=> b!2486932 (containsKey!174 (toList!1684 lt!892951) key!2246)))

(declare-fun lemmaInGetKeysListThenContainsKey!21 (List!29330 K!5650) Unit!42905)

(assert (=> b!2486932 (= lt!893076 (lemmaInGetKeysListThenContainsKey!21 (toList!1684 lt!892951) key!2246))))

(declare-fun Unit!42915 () Unit!42905)

(assert (=> b!2486932 (= e!1579129 Unit!42915)))

(declare-fun b!2486933 () Bool)

(assert (=> b!2486933 (= e!1579130 (keys!9384 lt!892951))))

(declare-fun d!713878 () Bool)

(assert (=> d!713878 e!1579132))

(declare-fun res!1052762 () Bool)

(assert (=> d!713878 (=> res!1052762 e!1579132)))

(assert (=> d!713878 (= res!1052762 e!1579131)))

(declare-fun res!1052761 () Bool)

(assert (=> d!713878 (=> (not res!1052761) (not e!1579131))))

(declare-fun lt!893081 () Bool)

(assert (=> d!713878 (= res!1052761 (not lt!893081))))

(declare-fun lt!893083 () Bool)

(assert (=> d!713878 (= lt!893081 lt!893083)))

(declare-fun lt!893079 () Unit!42905)

(assert (=> d!713878 (= lt!893079 e!1579134)))

(assert (=> d!713878 (= c!395240 lt!893083)))

(assert (=> d!713878 (= lt!893083 (containsKey!174 (toList!1684 lt!892951) key!2246))))

(assert (=> d!713878 (= (contains!5240 lt!892951 key!2246) lt!893081)))

(assert (= (and d!713878 c!395240) b!2486929))

(assert (= (and d!713878 (not c!395240)) b!2486927))

(assert (= (and b!2486927 c!395238) b!2486932))

(assert (= (and b!2486927 (not c!395238)) b!2486931))

(assert (= (or b!2486929 b!2486927) bm!152511))

(assert (= (and bm!152511 c!395239) b!2486930))

(assert (= (and bm!152511 (not c!395239)) b!2486933))

(assert (= (and d!713878 res!1052761) b!2486928))

(assert (= (and d!713878 (not res!1052762)) b!2486925))

(assert (= (and b!2486925 res!1052763) b!2486926))

(assert (=> b!2486933 m!2855671))

(declare-fun m!2855699 () Bool)

(assert (=> b!2486932 m!2855699))

(declare-fun m!2855701 () Bool)

(assert (=> b!2486932 m!2855701))

(declare-fun m!2855703 () Bool)

(assert (=> b!2486929 m!2855703))

(declare-fun m!2855705 () Bool)

(assert (=> b!2486929 m!2855705))

(assert (=> b!2486929 m!2855705))

(declare-fun m!2855707 () Bool)

(assert (=> b!2486929 m!2855707))

(declare-fun m!2855709 () Bool)

(assert (=> b!2486929 m!2855709))

(declare-fun m!2855711 () Bool)

(assert (=> b!2486930 m!2855711))

(assert (=> d!713878 m!2855699))

(assert (=> b!2486926 m!2855671))

(assert (=> b!2486926 m!2855671))

(declare-fun m!2855713 () Bool)

(assert (=> b!2486926 m!2855713))

(assert (=> b!2486925 m!2855705))

(assert (=> b!2486925 m!2855705))

(assert (=> b!2486925 m!2855707))

(assert (=> b!2486928 m!2855671))

(assert (=> b!2486928 m!2855671))

(assert (=> b!2486928 m!2855713))

(declare-fun m!2855715 () Bool)

(assert (=> bm!152511 m!2855715))

(assert (=> b!2486827 d!713878))

(declare-fun d!713880 () Bool)

(assert (=> d!713880 (= (array_inv!3911 (_keys!3723 (v!31681 (underlying!7059 (v!31682 (underlying!7060 thiss!42540)))))) (bvsge (size!22862 (_keys!3723 (v!31681 (underlying!7059 (v!31682 (underlying!7060 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2486831 d!713880))

(declare-fun d!713882 () Bool)

(assert (=> d!713882 (= (array_inv!3912 (_values!3706 (v!31681 (underlying!7059 (v!31682 (underlying!7060 thiss!42540)))))) (bvsge (size!22861 (_values!3706 (v!31681 (underlying!7059 (v!31682 (underlying!7060 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2486831 d!713882))

(declare-fun bs!468165 () Bool)

(declare-fun b!2486934 () Bool)

(assert (= bs!468165 (and b!2486934 d!713876)))

(declare-fun lambda!94716 () Int)

(assert (=> bs!468165 (not (= lambda!94716 lambda!94715))))

(declare-fun bs!468166 () Bool)

(assert (= bs!468166 (and b!2486934 d!713858)))

(assert (=> bs!468166 (= lambda!94716 lambda!94707)))

(declare-fun bs!468167 () Bool)

(assert (= bs!468167 (and b!2486934 b!2486870)))

(assert (=> bs!468167 (= lambda!94716 lambda!94693)))

(declare-fun bs!468168 () Bool)

(assert (= bs!468168 (and b!2486934 d!713848)))

(assert (=> bs!468168 (= lambda!94716 lambda!94699)))

(declare-fun bs!468169 () Bool)

(assert (= bs!468169 (and b!2486934 b!2486826)))

(assert (=> bs!468169 (= lambda!94716 lambda!94687)))

(declare-fun bs!468170 () Bool)

(assert (= bs!468170 (and b!2486934 d!713842)))

(assert (=> bs!468170 (= lambda!94716 lambda!94696)))

(declare-fun bs!468171 () Bool)

(assert (= bs!468171 (and b!2486934 b!2486864)))

(assert (=> bs!468171 (= lambda!94716 lambda!94690)))

(declare-fun bs!468172 () Bool)

(assert (= bs!468172 (and b!2486934 d!713864)))

(assert (=> bs!468172 (= lambda!94716 lambda!94711)))

(declare-fun bs!468173 () Bool)

(assert (= bs!468173 (and b!2486934 d!713860)))

(assert (=> bs!468173 (not (= lambda!94716 lambda!94710))))

(declare-fun d!713884 () Bool)

(declare-fun res!1052764 () Bool)

(declare-fun e!1579135 () Bool)

(assert (=> d!713884 (=> (not res!1052764) (not e!1579135))))

(assert (=> d!713884 (= res!1052764 (valid!2636 (v!31682 (underlying!7060 (_2!17174 lt!892953)))))))

(assert (=> d!713884 (= (valid!2635 (_2!17174 lt!892953)) e!1579135)))

(declare-fun res!1052765 () Bool)

(assert (=> b!2486934 (=> (not res!1052765) (not e!1579135))))

(assert (=> b!2486934 (= res!1052765 (forall!6018 (toList!1683 (map!6341 (v!31682 (underlying!7060 (_2!17174 lt!892953))))) lambda!94716))))

(declare-fun b!2486935 () Bool)

(assert (=> b!2486935 (= e!1579135 (allKeysSameHashInMap!201 (map!6341 (v!31682 (underlying!7060 (_2!17174 lt!892953)))) (hashF!5353 (_2!17174 lt!892953))))))

(assert (= (and d!713884 res!1052764) b!2486934))

(assert (= (and b!2486934 res!1052765) b!2486935))

(declare-fun m!2855717 () Bool)

(assert (=> d!713884 m!2855717))

(assert (=> b!2486934 m!2855493))

(declare-fun m!2855719 () Bool)

(assert (=> b!2486934 m!2855719))

(assert (=> b!2486935 m!2855493))

(assert (=> b!2486935 m!2855493))

(declare-fun m!2855721 () Bool)

(assert (=> b!2486935 m!2855721))

(assert (=> b!2486822 d!713884))

(declare-fun d!713886 () Bool)

(declare-fun res!1052770 () Bool)

(declare-fun e!1579140 () Bool)

(assert (=> d!713886 (=> res!1052770 e!1579140)))

(assert (=> d!713886 (= res!1052770 (not ((_ is Cons!29230) lt!892955)))))

(assert (=> d!713886 (= (noDuplicateKeys!123 lt!892955) e!1579140)))

(declare-fun b!2486940 () Bool)

(declare-fun e!1579141 () Bool)

(assert (=> b!2486940 (= e!1579140 e!1579141)))

(declare-fun res!1052771 () Bool)

(assert (=> b!2486940 (=> (not res!1052771) (not e!1579141))))

(declare-fun containsKey!175 (List!29330 K!5650) Bool)

(assert (=> b!2486940 (= res!1052771 (not (containsKey!175 (t!211021 lt!892955) (_1!17172 (h!34648 lt!892955)))))))

(declare-fun b!2486941 () Bool)

(assert (=> b!2486941 (= e!1579141 (noDuplicateKeys!123 (t!211021 lt!892955)))))

(assert (= (and d!713886 (not res!1052770)) b!2486940))

(assert (= (and b!2486940 res!1052771) b!2486941))

(declare-fun m!2855723 () Bool)

(assert (=> b!2486940 m!2855723))

(declare-fun m!2855725 () Bool)

(assert (=> b!2486941 m!2855725))

(assert (=> b!2486826 d!713886))

(declare-fun d!713888 () Bool)

(assert (=> d!713888 (noDuplicateKeys!123 (removePairForKey!115 lt!892954 key!2246))))

(declare-fun lt!893086 () Unit!42905)

(declare-fun choose!14717 (List!29330 K!5650) Unit!42905)

(assert (=> d!713888 (= lt!893086 (choose!14717 lt!892954 key!2246))))

(assert (=> d!713888 (noDuplicateKeys!123 lt!892954)))

(assert (=> d!713888 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!103 lt!892954 key!2246) lt!893086)))

(declare-fun bs!468174 () Bool)

(assert (= bs!468174 d!713888))

(assert (=> bs!468174 m!2855479))

(assert (=> bs!468174 m!2855479))

(declare-fun m!2855727 () Bool)

(assert (=> bs!468174 m!2855727))

(declare-fun m!2855729 () Bool)

(assert (=> bs!468174 m!2855729))

(assert (=> bs!468174 m!2855635))

(assert (=> b!2486826 d!713888))

(declare-fun d!713890 () Bool)

(declare-fun e!1579155 () Bool)

(assert (=> d!713890 e!1579155))

(declare-fun res!1052780 () Bool)

(assert (=> d!713890 (=> (not res!1052780) (not e!1579155))))

(declare-fun lt!893095 () tuple2!29266)

(assert (=> d!713890 (= res!1052780 ((_ is LongMap!3426) (_2!17175 lt!893095)))))

(declare-fun e!1579153 () tuple2!29266)

(assert (=> d!713890 (= lt!893095 e!1579153)))

(declare-fun c!395249 () Bool)

(declare-fun lt!893097 () tuple2!29266)

(assert (=> d!713890 (= c!395249 (_1!17175 lt!893097))))

(declare-fun e!1579156 () tuple2!29266)

(assert (=> d!713890 (= lt!893097 e!1579156)))

(declare-fun c!395248 () Bool)

(declare-fun imbalanced!30 (MutLongMap!3426) Bool)

(assert (=> d!713890 (= c!395248 (imbalanced!30 (v!31682 (underlying!7060 thiss!42540))))))

(assert (=> d!713890 (valid!2636 (v!31682 (underlying!7060 thiss!42540)))))

(assert (=> d!713890 (= (update!245 (v!31682 (underlying!7060 thiss!42540)) lt!892961 lt!892955) lt!893095)))

(declare-fun b!2486960 () Bool)

(declare-fun e!1579152 () Bool)

(declare-fun e!1579154 () Bool)

(assert (=> b!2486960 (= e!1579152 e!1579154)))

(declare-fun res!1052778 () Bool)

(declare-fun call!152521 () ListLongMap!635)

(assert (=> b!2486960 (= res!1052778 (contains!5242 call!152521 lt!892961))))

(assert (=> b!2486960 (=> (not res!1052778) (not e!1579154))))

(declare-fun b!2486961 () Bool)

(assert (=> b!2486961 (= e!1579153 (tuple2!29267 false (_2!17175 lt!893097)))))

(declare-fun b!2486962 () Bool)

(declare-datatypes ((tuple2!29268 0))(
  ( (tuple2!29269 (_1!17176 Bool) (_2!17176 LongMapFixedSize!6852)) )
))
(declare-fun lt!893096 () tuple2!29268)

(assert (=> b!2486962 (= e!1579153 (tuple2!29267 (_1!17176 lt!893096) (LongMap!3426 (Cell!13522 (_2!17176 lt!893096)))))))

(declare-fun update!246 (LongMapFixedSize!6852 (_ BitVec 64) List!29330) tuple2!29268)

(assert (=> b!2486962 (= lt!893096 (update!246 (v!31681 (underlying!7059 (_2!17175 lt!893097))) lt!892961 lt!892955))))

(declare-fun b!2486963 () Bool)

(declare-fun call!152522 () ListLongMap!635)

(assert (=> b!2486963 (= e!1579152 (= call!152521 call!152522))))

(declare-fun b!2486964 () Bool)

(declare-fun lt!893098 () tuple2!29266)

(assert (=> b!2486964 (= e!1579156 (tuple2!29267 (_1!17175 lt!893098) (_2!17175 lt!893098)))))

(declare-fun repack!34 (MutLongMap!3426) tuple2!29266)

(assert (=> b!2486964 (= lt!893098 (repack!34 (v!31682 (underlying!7060 thiss!42540))))))

(declare-fun b!2486965 () Bool)

(assert (=> b!2486965 (= e!1579155 e!1579152)))

(declare-fun c!395247 () Bool)

(assert (=> b!2486965 (= c!395247 (_1!17175 lt!893095))))

(declare-fun b!2486966 () Bool)

(assert (=> b!2486966 (= e!1579154 (= call!152521 (+!115 call!152522 (tuple2!29263 lt!892961 lt!892955))))))

(declare-fun b!2486967 () Bool)

(assert (=> b!2486967 (= e!1579156 (tuple2!29267 true (v!31682 (underlying!7060 thiss!42540))))))

(declare-fun bm!152516 () Bool)

(assert (=> bm!152516 (= call!152522 (map!6341 (v!31682 (underlying!7060 thiss!42540))))))

(declare-fun b!2486968 () Bool)

(declare-fun res!1052779 () Bool)

(assert (=> b!2486968 (=> (not res!1052779) (not e!1579155))))

(assert (=> b!2486968 (= res!1052779 (valid!2636 (_2!17175 lt!893095)))))

(declare-fun bm!152517 () Bool)

(assert (=> bm!152517 (= call!152521 (map!6341 (_2!17175 lt!893095)))))

(assert (= (and d!713890 c!395248) b!2486964))

(assert (= (and d!713890 (not c!395248)) b!2486967))

(assert (= (and d!713890 c!395249) b!2486962))

(assert (= (and d!713890 (not c!395249)) b!2486961))

(assert (= (and d!713890 res!1052780) b!2486968))

(assert (= (and b!2486968 res!1052779) b!2486965))

(assert (= (and b!2486965 c!395247) b!2486960))

(assert (= (and b!2486965 (not c!395247)) b!2486963))

(assert (= (and b!2486960 res!1052778) b!2486966))

(assert (= (or b!2486960 b!2486966 b!2486963) bm!152517))

(assert (= (or b!2486966 b!2486963) bm!152516))

(assert (=> bm!152516 m!2855475))

(declare-fun m!2855731 () Bool)

(assert (=> d!713890 m!2855731))

(assert (=> d!713890 m!2855585))

(declare-fun m!2855733 () Bool)

(assert (=> b!2486966 m!2855733))

(declare-fun m!2855735 () Bool)

(assert (=> b!2486962 m!2855735))

(declare-fun m!2855737 () Bool)

(assert (=> bm!152517 m!2855737))

(declare-fun m!2855739 () Bool)

(assert (=> b!2486964 m!2855739))

(declare-fun m!2855741 () Bool)

(assert (=> b!2486968 m!2855741))

(declare-fun m!2855743 () Bool)

(assert (=> b!2486960 m!2855743))

(assert (=> b!2486826 d!713890))

(declare-fun d!713892 () Bool)

(declare-fun hash!787 (Hashable!3336 K!5650) (_ BitVec 64))

(assert (=> d!713892 (= (hash!782 (hashF!5353 thiss!42540) key!2246) (hash!787 (hashF!5353 thiss!42540) key!2246))))

(declare-fun bs!468175 () Bool)

(assert (= bs!468175 d!713892))

(declare-fun m!2855745 () Bool)

(assert (=> bs!468175 m!2855745))

(assert (=> b!2486826 d!713892))

(declare-fun d!713894 () Bool)

(assert (=> d!713894 (dynLambda!12508 lambda!94687 (tuple2!29263 lt!892961 lt!892954))))

(declare-fun lt!893101 () Unit!42905)

(declare-fun choose!14718 (List!29331 Int tuple2!29262) Unit!42905)

(assert (=> d!713894 (= lt!893101 (choose!14718 (toList!1683 lt!892959) lambda!94687 (tuple2!29263 lt!892961 lt!892954)))))

(declare-fun e!1579159 () Bool)

(assert (=> d!713894 e!1579159))

(declare-fun res!1052783 () Bool)

(assert (=> d!713894 (=> (not res!1052783) (not e!1579159))))

(assert (=> d!713894 (= res!1052783 (forall!6018 (toList!1683 lt!892959) lambda!94687))))

(assert (=> d!713894 (= (forallContained!904 (toList!1683 lt!892959) lambda!94687 (tuple2!29263 lt!892961 lt!892954)) lt!893101)))

(declare-fun b!2486971 () Bool)

(assert (=> b!2486971 (= e!1579159 (contains!5243 (toList!1683 lt!892959) (tuple2!29263 lt!892961 lt!892954)))))

(assert (= (and d!713894 res!1052783) b!2486971))

(declare-fun b_lambda!76391 () Bool)

(assert (=> (not b_lambda!76391) (not d!713894)))

(declare-fun m!2855747 () Bool)

(assert (=> d!713894 m!2855747))

(declare-fun m!2855749 () Bool)

(assert (=> d!713894 m!2855749))

(declare-fun m!2855751 () Bool)

(assert (=> d!713894 m!2855751))

(declare-fun m!2855753 () Bool)

(assert (=> b!2486971 m!2855753))

(assert (=> b!2486826 d!713894))

(declare-fun d!713896 () Bool)

(assert (=> d!713896 (= (map!6341 (v!31682 (underlying!7060 thiss!42540))) (map!6342 (v!31681 (underlying!7059 (v!31682 (underlying!7060 thiss!42540))))))))

(declare-fun bs!468176 () Bool)

(assert (= bs!468176 d!713896))

(declare-fun m!2855755 () Bool)

(assert (=> bs!468176 m!2855755))

(assert (=> b!2486826 d!713896))

(declare-fun d!713898 () Bool)

(declare-fun e!1579162 () Bool)

(assert (=> d!713898 e!1579162))

(declare-fun c!395252 () Bool)

(assert (=> d!713898 (= c!395252 (contains!5244 (v!31682 (underlying!7060 thiss!42540)) lt!892961))))

(declare-fun lt!893104 () List!29330)

(declare-fun apply!6999 (LongMapFixedSize!6852 (_ BitVec 64)) List!29330)

(assert (=> d!713898 (= lt!893104 (apply!6999 (v!31681 (underlying!7059 (v!31682 (underlying!7060 thiss!42540)))) lt!892961))))

(assert (=> d!713898 (valid!2636 (v!31682 (underlying!7060 thiss!42540)))))

(assert (=> d!713898 (= (apply!6997 (v!31682 (underlying!7060 thiss!42540)) lt!892961) lt!893104)))

(declare-fun b!2486976 () Bool)

(declare-fun get!9024 (Option!5790) List!29330)

(assert (=> b!2486976 (= e!1579162 (= lt!893104 (get!9024 (getValueByKey!160 (toList!1683 (map!6341 (v!31682 (underlying!7060 thiss!42540)))) lt!892961))))))

(declare-fun b!2486977 () Bool)

(declare-fun dynLambda!12509 (Int (_ BitVec 64)) List!29330)

(assert (=> b!2486977 (= e!1579162 (= lt!893104 (dynLambda!12509 (defaultEntry!3800 (v!31681 (underlying!7059 (v!31682 (underlying!7060 thiss!42540))))) lt!892961)))))

(assert (=> b!2486977 ((_ is LongMap!3426) (v!31682 (underlying!7060 thiss!42540)))))

(assert (= (and d!713898 c!395252) b!2486976))

(assert (= (and d!713898 (not c!395252)) b!2486977))

(declare-fun b_lambda!76393 () Bool)

(assert (=> (not b_lambda!76393) (not b!2486977)))

(declare-fun t!211024 () Bool)

(declare-fun tb!140409 () Bool)

(assert (=> (and b!2486831 (= (defaultEntry!3800 (v!31681 (underlying!7059 (v!31682 (underlying!7060 thiss!42540))))) (defaultEntry!3800 (v!31681 (underlying!7059 (v!31682 (underlying!7060 thiss!42540)))))) t!211024) tb!140409))

(assert (=> b!2486977 t!211024))

(declare-fun result!173422 () Bool)

(declare-fun b_and!188851 () Bool)

(assert (= b_and!188847 (and (=> t!211024 result!173422) b_and!188851)))

(declare-fun m!2855757 () Bool)

(assert (=> d!713898 m!2855757))

(declare-fun m!2855759 () Bool)

(assert (=> d!713898 m!2855759))

(assert (=> d!713898 m!2855585))

(assert (=> b!2486976 m!2855475))

(declare-fun m!2855761 () Bool)

(assert (=> b!2486976 m!2855761))

(assert (=> b!2486976 m!2855761))

(declare-fun m!2855763 () Bool)

(assert (=> b!2486976 m!2855763))

(declare-fun m!2855765 () Bool)

(assert (=> b!2486977 m!2855765))

(assert (=> b!2486826 d!713898))

(declare-fun d!713900 () Bool)

(declare-fun lt!893105 () ListMap!1161)

(assert (=> d!713900 (invariantList!425 (toList!1684 lt!893105))))

(assert (=> d!713900 (= lt!893105 (extractMap!196 (toList!1683 (map!6341 (v!31682 (underlying!7060 thiss!42540))))))))

(assert (=> d!713900 (valid!2635 thiss!42540)))

(assert (=> d!713900 (= (map!6340 thiss!42540) lt!893105)))

(declare-fun bs!468177 () Bool)

(assert (= bs!468177 d!713900))

(declare-fun m!2855767 () Bool)

(assert (=> bs!468177 m!2855767))

(assert (=> bs!468177 m!2855475))

(assert (=> bs!468177 m!2855541))

(assert (=> bs!468177 m!2855527))

(assert (=> b!2486826 d!713900))

(declare-fun b!2486988 () Bool)

(declare-fun e!1579168 () List!29330)

(assert (=> b!2486988 (= e!1579168 (Cons!29230 (h!34648 lt!892954) (removePairForKey!115 (t!211021 lt!892954) key!2246)))))

(declare-fun d!713902 () Bool)

(declare-fun lt!893108 () List!29330)

(assert (=> d!713902 (not (containsKey!175 lt!893108 key!2246))))

(declare-fun e!1579167 () List!29330)

(assert (=> d!713902 (= lt!893108 e!1579167)))

(declare-fun c!395257 () Bool)

(assert (=> d!713902 (= c!395257 (and ((_ is Cons!29230) lt!892954) (= (_1!17172 (h!34648 lt!892954)) key!2246)))))

(assert (=> d!713902 (noDuplicateKeys!123 lt!892954)))

(assert (=> d!713902 (= (removePairForKey!115 lt!892954 key!2246) lt!893108)))

(declare-fun b!2486989 () Bool)

(assert (=> b!2486989 (= e!1579168 Nil!29230)))

(declare-fun b!2486986 () Bool)

(assert (=> b!2486986 (= e!1579167 (t!211021 lt!892954))))

(declare-fun b!2486987 () Bool)

(assert (=> b!2486987 (= e!1579167 e!1579168)))

(declare-fun c!395258 () Bool)

(assert (=> b!2486987 (= c!395258 ((_ is Cons!29230) lt!892954))))

(assert (= (and d!713902 c!395257) b!2486986))

(assert (= (and d!713902 (not c!395257)) b!2486987))

(assert (= (and b!2486987 c!395258) b!2486988))

(assert (= (and b!2486987 (not c!395258)) b!2486989))

(declare-fun m!2855769 () Bool)

(assert (=> b!2486988 m!2855769))

(declare-fun m!2855771 () Bool)

(assert (=> d!713902 m!2855771))

(assert (=> d!713902 m!2855635))

(assert (=> b!2486826 d!713902))

(declare-fun bs!468178 () Bool)

(declare-fun d!713904 () Bool)

(assert (= bs!468178 (and d!713904 d!713876)))

(declare-fun lambda!94717 () Int)

(assert (=> bs!468178 (= lambda!94717 lambda!94715)))

(declare-fun bs!468179 () Bool)

(assert (= bs!468179 (and d!713904 d!713858)))

(assert (=> bs!468179 (not (= lambda!94717 lambda!94707))))

(declare-fun bs!468180 () Bool)

(assert (= bs!468180 (and d!713904 b!2486870)))

(assert (=> bs!468180 (not (= lambda!94717 lambda!94693))))

(declare-fun bs!468181 () Bool)

(assert (= bs!468181 (and d!713904 b!2486934)))

(assert (=> bs!468181 (not (= lambda!94717 lambda!94716))))

(declare-fun bs!468182 () Bool)

(assert (= bs!468182 (and d!713904 d!713848)))

(assert (=> bs!468182 (not (= lambda!94717 lambda!94699))))

(declare-fun bs!468183 () Bool)

(assert (= bs!468183 (and d!713904 b!2486826)))

(assert (=> bs!468183 (not (= lambda!94717 lambda!94687))))

(declare-fun bs!468184 () Bool)

(assert (= bs!468184 (and d!713904 d!713842)))

(assert (=> bs!468184 (not (= lambda!94717 lambda!94696))))

(declare-fun bs!468185 () Bool)

(assert (= bs!468185 (and d!713904 b!2486864)))

(assert (=> bs!468185 (not (= lambda!94717 lambda!94690))))

(declare-fun bs!468186 () Bool)

(assert (= bs!468186 (and d!713904 d!713864)))

(assert (=> bs!468186 (not (= lambda!94717 lambda!94711))))

(declare-fun bs!468187 () Bool)

(assert (= bs!468187 (and d!713904 d!713860)))

(assert (=> bs!468187 (= lambda!94717 lambda!94710)))

(assert (=> d!713904 true))

(assert (=> d!713904 (= (allKeysSameHashInMap!201 lt!892947 (hashF!5353 (_2!17174 lt!892953))) (forall!6018 (toList!1683 lt!892947) lambda!94717))))

(declare-fun bs!468188 () Bool)

(assert (= bs!468188 d!713904))

(declare-fun m!2855773 () Bool)

(assert (=> bs!468188 m!2855773))

(assert (=> b!2486821 d!713904))

(declare-fun tp!796053 () Bool)

(declare-fun tp_is_empty!12415 () Bool)

(declare-fun e!1579171 () Bool)

(declare-fun b!2486994 () Bool)

(assert (=> b!2486994 (= e!1579171 (and tp_is_empty!12413 tp_is_empty!12415 tp!796053))))

(assert (=> b!2486819 (= tp!796048 e!1579171)))

(assert (= (and b!2486819 ((_ is Cons!29230) mapDefault!15795)) b!2486994))

(declare-fun tp!796062 () Bool)

(declare-fun e!1579176 () Bool)

(declare-fun b!2487001 () Bool)

(assert (=> b!2487001 (= e!1579176 (and tp_is_empty!12413 tp_is_empty!12415 tp!796062))))

(declare-fun b!2487002 () Bool)

(declare-fun tp!796060 () Bool)

(declare-fun e!1579177 () Bool)

(assert (=> b!2487002 (= e!1579177 (and tp_is_empty!12413 tp_is_empty!12415 tp!796060))))

(declare-fun condMapEmpty!15798 () Bool)

(declare-fun mapDefault!15798 () List!29330)

(assert (=> mapNonEmpty!15795 (= condMapEmpty!15798 (= mapRest!15795 ((as const (Array (_ BitVec 32) List!29330)) mapDefault!15798)))))

(declare-fun mapRes!15798 () Bool)

(assert (=> mapNonEmpty!15795 (= tp!796047 (and e!1579177 mapRes!15798))))

(declare-fun mapNonEmpty!15798 () Bool)

(declare-fun tp!796061 () Bool)

(assert (=> mapNonEmpty!15798 (= mapRes!15798 (and tp!796061 e!1579176))))

(declare-fun mapKey!15798 () (_ BitVec 32))

(declare-fun mapRest!15798 () (Array (_ BitVec 32) List!29330))

(declare-fun mapValue!15798 () List!29330)

(assert (=> mapNonEmpty!15798 (= mapRest!15795 (store mapRest!15798 mapKey!15798 mapValue!15798))))

(declare-fun mapIsEmpty!15798 () Bool)

(assert (=> mapIsEmpty!15798 mapRes!15798))

(assert (= (and mapNonEmpty!15795 condMapEmpty!15798) mapIsEmpty!15798))

(assert (= (and mapNonEmpty!15795 (not condMapEmpty!15798)) mapNonEmpty!15798))

(assert (= (and mapNonEmpty!15798 ((_ is Cons!29230) mapValue!15798)) b!2487001))

(assert (= (and mapNonEmpty!15795 ((_ is Cons!29230) mapDefault!15798)) b!2487002))

(declare-fun m!2855775 () Bool)

(assert (=> mapNonEmpty!15798 m!2855775))

(declare-fun b!2487003 () Bool)

(declare-fun tp!796063 () Bool)

(declare-fun e!1579178 () Bool)

(assert (=> b!2487003 (= e!1579178 (and tp_is_empty!12413 tp_is_empty!12415 tp!796063))))

(assert (=> mapNonEmpty!15795 (= tp!796049 e!1579178)))

(assert (= (and mapNonEmpty!15795 ((_ is Cons!29230) mapValue!15795)) b!2487003))

(declare-fun e!1579179 () Bool)

(declare-fun tp!796064 () Bool)

(declare-fun b!2487004 () Bool)

(assert (=> b!2487004 (= e!1579179 (and tp_is_empty!12413 tp_is_empty!12415 tp!796064))))

(assert (=> b!2486831 (= tp!796045 e!1579179)))

(assert (= (and b!2486831 ((_ is Cons!29230) (zeroValue!3684 (v!31681 (underlying!7059 (v!31682 (underlying!7060 thiss!42540))))))) b!2487004))

(declare-fun b!2487005 () Bool)

(declare-fun e!1579180 () Bool)

(declare-fun tp!796065 () Bool)

(assert (=> b!2487005 (= e!1579180 (and tp_is_empty!12413 tp_is_empty!12415 tp!796065))))

(assert (=> b!2486831 (= tp!796050 e!1579180)))

(assert (= (and b!2486831 ((_ is Cons!29230) (minValue!3684 (v!31681 (underlying!7059 (v!31682 (underlying!7060 thiss!42540))))))) b!2487005))

(declare-fun b_lambda!76395 () Bool)

(assert (= b_lambda!76387 (or b!2486826 b_lambda!76395)))

(declare-fun bs!468189 () Bool)

(declare-fun d!713906 () Bool)

(assert (= bs!468189 (and d!713906 b!2486826)))

(assert (=> bs!468189 (= (dynLambda!12508 lambda!94687 (h!34649 (toList!1683 lt!892952))) (noDuplicateKeys!123 (_2!17173 (h!34649 (toList!1683 lt!892952)))))))

(declare-fun m!2855777 () Bool)

(assert (=> bs!468189 m!2855777))

(assert (=> b!2486885 d!713906))

(declare-fun b_lambda!76397 () Bool)

(assert (= b_lambda!76393 (or (and b!2486831 b_free!72561) b_lambda!76397)))

(declare-fun b_lambda!76399 () Bool)

(assert (= b_lambda!76391 (or b!2486826 b_lambda!76399)))

(declare-fun bs!468190 () Bool)

(declare-fun d!713908 () Bool)

(assert (= bs!468190 (and d!713908 b!2486826)))

(assert (=> bs!468190 (= (dynLambda!12508 lambda!94687 (tuple2!29263 lt!892961 lt!892954)) (noDuplicateKeys!123 (_2!17173 (tuple2!29263 lt!892961 lt!892954))))))

(declare-fun m!2855779 () Bool)

(assert (=> bs!468190 m!2855779))

(assert (=> d!713894 d!713908))

(declare-fun b_lambda!76401 () Bool)

(assert (= b_lambda!76389 (or b!2486826 b_lambda!76401)))

(declare-fun bs!468191 () Bool)

(declare-fun d!713910 () Bool)

(assert (= bs!468191 (and d!713910 b!2486826)))

(assert (=> bs!468191 (= (dynLambda!12508 lambda!94687 (h!34649 (toList!1683 lt!892947))) (noDuplicateKeys!123 (_2!17173 (h!34649 (toList!1683 lt!892947)))))))

(declare-fun m!2855781 () Bool)

(assert (=> bs!468191 m!2855781))

(assert (=> b!2486898 d!713910))

(check-sat (not b!2486994) (not b!2487001) (not b!2486871) tp_is_empty!12415 (not d!713904) (not b!2486929) (not d!713892) (not d!713874) (not d!713894) (not b!2486941) (not b!2486962) (not b!2487004) (not b!2486940) (not b!2486863) (not d!713862) (not b!2486856) (not b_lambda!76395) (not b_lambda!76397) (not b_next!73265) (not b!2486905) (not d!713898) (not d!713858) (not b!2486906) (not b!2486925) (not b!2486876) (not bm!152516) (not d!713876) (not d!713860) (not bm!152507) b_and!188851 (not d!713854) (not b!2486933) (not d!713838) (not b!2486934) (not d!713890) (not b!2486880) (not bm!152511) (not b!2486935) (not bs!468190) (not b!2486865) (not bm!152508) (not d!713844) (not b!2486864) (not bm!152505) (not d!713856) (not bm!152506) b_and!188849 (not b_next!73267) (not bm!152503) (not b_lambda!76399) (not d!713868) (not d!713888) (not b!2486932) (not bs!468191) (not b!2486988) (not b!2486928) (not b!2487002) (not d!713902) (not d!713900) (not d!713870) (not d!713846) (not d!713878) (not d!713848) (not d!713872) (not b_lambda!76401) (not b!2486926) (not b!2486893) (not b!2487003) (not b!2486971) (not b!2486870) (not b!2486896) (not b!2486966) (not mapNonEmpty!15798) (not b!2486900) (not bm!152517) (not d!713884) (not b!2486860) (not bs!468189) (not b!2486899) (not d!713896) (not b!2486964) (not d!713840) (not d!713842) (not b!2486930) (not bm!152504) (not d!713852) (not b!2486976) (not tb!140409) (not b!2486960) tp_is_empty!12413 (not b!2486886) (not b!2486968) (not d!713864) (not b!2487005))
(check-sat b_and!188849 b_and!188851 (not b_next!73265) (not b_next!73267))
