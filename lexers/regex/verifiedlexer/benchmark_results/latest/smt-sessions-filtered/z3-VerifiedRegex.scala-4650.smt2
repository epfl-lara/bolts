; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242898 () Bool)

(assert start!242898)

(declare-fun b!2486321 () Bool)

(declare-fun b_free!72537 () Bool)

(declare-fun b_next!73241 () Bool)

(assert (=> b!2486321 (= b_free!72537 (not b_next!73241))))

(declare-fun tp!795903 () Bool)

(declare-fun b_and!188821 () Bool)

(assert (=> b!2486321 (= tp!795903 b_and!188821)))

(declare-fun b!2486325 () Bool)

(declare-fun b_free!72539 () Bool)

(declare-fun b_next!73243 () Bool)

(assert (=> b!2486325 (= b_free!72539 (not b_next!73243))))

(declare-fun tp!795908 () Bool)

(declare-fun b_and!188823 () Bool)

(assert (=> b!2486325 (= tp!795908 b_and!188823)))

(declare-fun b!2486316 () Bool)

(declare-fun e!1578714 () Bool)

(declare-fun e!1578709 () Bool)

(assert (=> b!2486316 (= e!1578714 (not e!1578709))))

(declare-fun res!1052439 () Bool)

(assert (=> b!2486316 (=> res!1052439 e!1578709)))

(declare-datatypes ((K!5635 0))(
  ( (K!5636 (val!8983 Int)) )
))
(declare-datatypes ((V!5837 0))(
  ( (V!5838 (val!8984 Int)) )
))
(declare-datatypes ((tuple2!29218 0))(
  ( (tuple2!29219 (_1!17151 K!5635) (_2!17151 V!5837)) )
))
(declare-datatypes ((List!29317 0))(
  ( (Nil!29217) (Cons!29217 (h!34634 tuple2!29218) (t!211006 List!29317)) )
))
(declare-datatypes ((array!12173 0))(
  ( (array!12174 (arr!5430 (Array (_ BitVec 32) List!29317)) (size!22849 (_ BitVec 32))) )
))
(declare-datatypes ((array!12175 0))(
  ( (array!12176 (arr!5431 (Array (_ BitVec 32) (_ BitVec 64))) (size!22850 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6840 0))(
  ( (LongMapFixedSize!6841 (defaultEntry!3794 Int) (mask!8619 (_ BitVec 32)) (extraKeys!3668 (_ BitVec 32)) (zeroValue!3678 List!29317) (minValue!3678 List!29317) (_size!6887 (_ BitVec 32)) (_keys!3717 array!12175) (_values!3700 array!12173) (_vacant!3481 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13497 0))(
  ( (Cell!13498 (v!31660 LongMapFixedSize!6840)) )
))
(declare-datatypes ((MutLongMap!3420 0))(
  ( (LongMap!3420 (underlying!7047 Cell!13497)) (MutLongMapExt!3419 (__x!19166 Int)) )
))
(declare-datatypes ((tuple2!29220 0))(
  ( (tuple2!29221 (_1!17152 Bool) (_2!17152 MutLongMap!3420)) )
))
(declare-fun lt!892416 () tuple2!29220)

(assert (=> b!2486316 (= res!1052439 (not (_1!17152 lt!892416)))))

(declare-fun lt!892420 () List!29317)

(declare-fun noDuplicateKeys!120 (List!29317) Bool)

(assert (=> b!2486316 (noDuplicateKeys!120 lt!892420)))

(declare-datatypes ((Unit!42879 0))(
  ( (Unit!42880) )
))
(declare-fun lt!892417 () Unit!42879)

(declare-fun lt!892410 () List!29317)

(declare-fun key!2246 () K!5635)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!100 (List!29317 K!5635) Unit!42879)

(assert (=> b!2486316 (= lt!892417 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!100 lt!892410 key!2246))))

(declare-datatypes ((Hashable!3330 0))(
  ( (HashableExt!3329 (__x!19167 Int)) )
))
(declare-datatypes ((Cell!13499 0))(
  ( (Cell!13500 (v!31661 MutLongMap!3420)) )
))
(declare-datatypes ((MutableMap!3330 0))(
  ( (MutableMapExt!3329 (__x!19168 Int)) (HashMap!3330 (underlying!7048 Cell!13499) (hashF!5341 Hashable!3330) (_size!6888 (_ BitVec 32)) (defaultValue!3492 Int)) )
))
(declare-datatypes ((tuple2!29222 0))(
  ( (tuple2!29223 (_1!17153 Unit!42879) (_2!17153 MutableMap!3330)) )
))
(declare-fun lt!892415 () tuple2!29222)

(declare-fun lt!892409 () Cell!13499)

(declare-fun thiss!42540 () MutableMap!3330)

(declare-fun Unit!42881 () Unit!42879)

(declare-fun Unit!42882 () Unit!42879)

(assert (=> b!2486316 (= lt!892415 (ite (_1!17152 lt!892416) (tuple2!29223 Unit!42881 (HashMap!3330 lt!892409 (hashF!5341 thiss!42540) (bvsub (_size!6888 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3492 thiss!42540))) (tuple2!29223 Unit!42882 (HashMap!3330 lt!892409 (hashF!5341 thiss!42540) (_size!6888 thiss!42540) (defaultValue!3492 thiss!42540)))))))

(assert (=> b!2486316 (= lt!892409 (Cell!13500 (_2!17152 lt!892416)))))

(declare-fun lt!892418 () (_ BitVec 64))

(declare-fun update!241 (MutLongMap!3420 (_ BitVec 64) List!29317) tuple2!29220)

(assert (=> b!2486316 (= lt!892416 (update!241 (v!31661 (underlying!7048 thiss!42540)) lt!892418 lt!892420))))

(declare-fun removePairForKey!112 (List!29317 K!5635) List!29317)

(assert (=> b!2486316 (= lt!892420 (removePairForKey!112 lt!892410 key!2246))))

(declare-datatypes ((ListMap!1149 0))(
  ( (ListMap!1150 (toList!1671 List!29317)) )
))
(declare-fun lt!892419 () ListMap!1149)

(declare-fun map!6329 (MutableMap!3330) ListMap!1149)

(assert (=> b!2486316 (= lt!892419 (map!6329 thiss!42540))))

(declare-datatypes ((tuple2!29224 0))(
  ( (tuple2!29225 (_1!17154 (_ BitVec 64)) (_2!17154 List!29317)) )
))
(declare-datatypes ((List!29318 0))(
  ( (Nil!29218) (Cons!29218 (h!34635 tuple2!29224) (t!211007 List!29318)) )
))
(declare-datatypes ((ListLongMap!623 0))(
  ( (ListLongMap!624 (toList!1672 List!29318)) )
))
(declare-fun lt!892413 () ListLongMap!623)

(declare-fun lambda!94599 () Int)

(declare-fun lt!892414 () Unit!42879)

(declare-fun forallContained!901 (List!29318 Int tuple2!29224) Unit!42879)

(assert (=> b!2486316 (= lt!892414 (forallContained!901 (toList!1672 lt!892413) lambda!94599 (tuple2!29225 lt!892418 lt!892410)))))

(declare-fun map!6330 (MutLongMap!3420) ListLongMap!623)

(assert (=> b!2486316 (= lt!892413 (map!6330 (v!31661 (underlying!7048 thiss!42540))))))

(declare-fun apply!6991 (MutLongMap!3420 (_ BitVec 64)) List!29317)

(assert (=> b!2486316 (= lt!892410 (apply!6991 (v!31661 (underlying!7048 thiss!42540)) lt!892418))))

(declare-fun hash!775 (Hashable!3330 K!5635) (_ BitVec 64))

(assert (=> b!2486316 (= lt!892418 (hash!775 (hashF!5341 thiss!42540) key!2246))))

(declare-fun b!2486317 () Bool)

(declare-fun res!1052447 () Bool)

(declare-fun e!1578713 () Bool)

(assert (=> b!2486317 (=> (not res!1052447) (not e!1578713))))

(declare-fun valid!2630 (MutableMap!3330) Bool)

(assert (=> b!2486317 (= res!1052447 (valid!2630 (_2!17153 lt!892415)))))

(declare-fun b!2486318 () Bool)

(declare-fun e!1578712 () Bool)

(declare-fun e!1578708 () Bool)

(assert (=> b!2486318 (= e!1578712 e!1578708)))

(declare-fun b!2486319 () Bool)

(declare-fun res!1052444 () Bool)

(assert (=> b!2486319 (=> (not res!1052444) (not e!1578714))))

(declare-fun contains!5223 (MutableMap!3330 K!5635) Bool)

(assert (=> b!2486319 (= res!1052444 (contains!5223 thiss!42540 key!2246))))

(declare-fun b!2486320 () Bool)

(declare-fun e!1578717 () Bool)

(declare-fun lt!892407 () ListLongMap!623)

(declare-fun allKeysSameHashInMap!196 (ListLongMap!623 Hashable!3330) Bool)

(assert (=> b!2486320 (= e!1578717 (allKeysSameHashInMap!196 lt!892407 (hashF!5341 (_2!17153 lt!892415))))))

(declare-fun e!1578710 () Bool)

(declare-fun tp!795909 () Bool)

(declare-fun tp!795905 () Bool)

(declare-fun e!1578706 () Bool)

(declare-fun array_inv!3903 (array!12175) Bool)

(declare-fun array_inv!3904 (array!12173) Bool)

(assert (=> b!2486321 (= e!1578710 (and tp!795903 tp!795905 tp!795909 (array_inv!3903 (_keys!3717 (v!31660 (underlying!7047 (v!31661 (underlying!7048 thiss!42540)))))) (array_inv!3904 (_values!3700 (v!31660 (underlying!7047 (v!31661 (underlying!7048 thiss!42540)))))) e!1578706))))

(declare-fun mapIsEmpty!15774 () Bool)

(declare-fun mapRes!15774 () Bool)

(assert (=> mapIsEmpty!15774 mapRes!15774))

(declare-fun b!2486322 () Bool)

(declare-fun res!1052446 () Bool)

(declare-fun e!1578711 () Bool)

(assert (=> b!2486322 (=> res!1052446 e!1578711)))

(assert (=> b!2486322 (= res!1052446 (not (allKeysSameHashInMap!196 lt!892413 (hashF!5341 (_2!17153 lt!892415)))))))

(declare-fun b!2486323 () Bool)

(declare-fun res!1052442 () Bool)

(assert (=> b!2486323 (=> (not res!1052442) (not e!1578713))))

(declare-fun lt!892411 () ListLongMap!623)

(assert (=> b!2486323 (= res!1052442 (allKeysSameHashInMap!196 lt!892411 (hashF!5341 (_2!17153 lt!892415))))))

(declare-fun b!2486324 () Bool)

(declare-fun e!1578716 () Bool)

(declare-fun lt!892405 () MutLongMap!3420)

(get-info :version)

(assert (=> b!2486324 (= e!1578716 (and e!1578712 ((_ is LongMap!3420) lt!892405)))))

(assert (=> b!2486324 (= lt!892405 (v!31661 (underlying!7048 thiss!42540)))))

(declare-fun e!1578707 () Bool)

(assert (=> b!2486325 (= e!1578707 (and e!1578716 tp!795908))))

(declare-fun b!2486326 () Bool)

(declare-fun tp!795906 () Bool)

(assert (=> b!2486326 (= e!1578706 (and tp!795906 mapRes!15774))))

(declare-fun condMapEmpty!15774 () Bool)

(declare-fun mapDefault!15774 () List!29317)

(assert (=> b!2486326 (= condMapEmpty!15774 (= (arr!5430 (_values!3700 (v!31660 (underlying!7047 (v!31661 (underlying!7048 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29317)) mapDefault!15774)))))

(declare-fun b!2486327 () Bool)

(assert (=> b!2486327 (= e!1578709 e!1578711)))

(declare-fun res!1052441 () Bool)

(assert (=> b!2486327 (=> res!1052441 e!1578711)))

(declare-fun forall!6013 (List!29318 Int) Bool)

(assert (=> b!2486327 (= res!1052441 (not (forall!6013 (toList!1672 lt!892413) lambda!94599)))))

(assert (=> b!2486327 e!1578713))

(declare-fun res!1052438 () Bool)

(assert (=> b!2486327 (=> (not res!1052438) (not e!1578713))))

(assert (=> b!2486327 (= res!1052438 (forall!6013 (toList!1672 lt!892411) lambda!94599))))

(assert (=> b!2486327 (= lt!892411 (map!6330 (v!31661 (underlying!7048 (_2!17153 lt!892415)))))))

(assert (=> b!2486327 e!1578717))

(declare-fun res!1052440 () Bool)

(assert (=> b!2486327 (=> (not res!1052440) (not e!1578717))))

(assert (=> b!2486327 (= res!1052440 (forall!6013 (toList!1672 lt!892407) lambda!94599))))

(declare-fun +!111 (ListLongMap!623 tuple2!29224) ListLongMap!623)

(assert (=> b!2486327 (= lt!892407 (+!111 lt!892413 (tuple2!29225 lt!892418 lt!892420)))))

(declare-fun lt!892404 () Unit!42879)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!74 (ListLongMap!623 (_ BitVec 64) List!29317 Hashable!3330) Unit!42879)

(assert (=> b!2486327 (= lt!892404 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!74 lt!892413 lt!892418 lt!892420 (hashF!5341 (_2!17153 lt!892415))))))

(declare-fun allKeysSameHash!94 (List!29317 (_ BitVec 64) Hashable!3330) Bool)

(assert (=> b!2486327 (allKeysSameHash!94 lt!892420 lt!892418 (hashF!5341 (_2!17153 lt!892415)))))

(declare-fun lt!892412 () Unit!42879)

(declare-fun lemmaRemovePairForKeyPreservesHash!83 (List!29317 K!5635 (_ BitVec 64) Hashable!3330) Unit!42879)

(assert (=> b!2486327 (= lt!892412 (lemmaRemovePairForKeyPreservesHash!83 lt!892410 key!2246 lt!892418 (hashF!5341 (_2!17153 lt!892415))))))

(assert (=> b!2486327 (allKeysSameHash!94 lt!892410 lt!892418 (hashF!5341 (_2!17153 lt!892415)))))

(declare-fun lt!892408 () Unit!42879)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!87 (List!29318 (_ BitVec 64) List!29317 Hashable!3330) Unit!42879)

(assert (=> b!2486327 (= lt!892408 (lemmaInLongMapAllKeySameHashThenForTuple!87 (toList!1672 lt!892413) lt!892418 lt!892410 (hashF!5341 (_2!17153 lt!892415))))))

(declare-fun b!2486328 () Bool)

(assert (=> b!2486328 (= e!1578711 true)))

(declare-fun lt!892406 () Bool)

(declare-fun contains!5224 (ListMap!1149 K!5635) Bool)

(declare-fun extractMap!192 (List!29318) ListMap!1149)

(assert (=> b!2486328 (= lt!892406 (contains!5224 (extractMap!192 (toList!1672 lt!892413)) key!2246))))

(declare-fun b!2486329 () Bool)

(assert (=> b!2486329 (= e!1578713 (contains!5224 lt!892419 key!2246))))

(declare-fun b!2486330 () Bool)

(assert (=> b!2486330 (= e!1578708 e!1578710)))

(declare-fun b!2486331 () Bool)

(declare-fun res!1052445 () Bool)

(assert (=> b!2486331 (=> (not res!1052445) (not e!1578714))))

(assert (=> b!2486331 (= res!1052445 (valid!2630 thiss!42540))))

(declare-fun mapNonEmpty!15774 () Bool)

(declare-fun tp!795907 () Bool)

(declare-fun tp!795904 () Bool)

(assert (=> mapNonEmpty!15774 (= mapRes!15774 (and tp!795907 tp!795904))))

(declare-fun mapRest!15774 () (Array (_ BitVec 32) List!29317))

(declare-fun mapValue!15774 () List!29317)

(declare-fun mapKey!15774 () (_ BitVec 32))

(assert (=> mapNonEmpty!15774 (= (arr!5430 (_values!3700 (v!31660 (underlying!7047 (v!31661 (underlying!7048 thiss!42540)))))) (store mapRest!15774 mapKey!15774 mapValue!15774))))

(declare-fun res!1052443 () Bool)

(assert (=> start!242898 (=> (not res!1052443) (not e!1578714))))

(assert (=> start!242898 (= res!1052443 ((_ is HashMap!3330) thiss!42540))))

(assert (=> start!242898 e!1578714))

(assert (=> start!242898 e!1578707))

(declare-fun tp_is_empty!12399 () Bool)

(assert (=> start!242898 tp_is_empty!12399))

(assert (= (and start!242898 res!1052443) b!2486331))

(assert (= (and b!2486331 res!1052445) b!2486319))

(assert (= (and b!2486319 res!1052444) b!2486316))

(assert (= (and b!2486316 (not res!1052439)) b!2486327))

(assert (= (and b!2486327 res!1052440) b!2486320))

(assert (= (and b!2486327 res!1052438) b!2486323))

(assert (= (and b!2486323 res!1052442) b!2486317))

(assert (= (and b!2486317 res!1052447) b!2486329))

(assert (= (and b!2486327 (not res!1052441)) b!2486322))

(assert (= (and b!2486322 (not res!1052446)) b!2486328))

(assert (= (and b!2486326 condMapEmpty!15774) mapIsEmpty!15774))

(assert (= (and b!2486326 (not condMapEmpty!15774)) mapNonEmpty!15774))

(assert (= b!2486321 b!2486326))

(assert (= b!2486330 b!2486321))

(assert (= b!2486318 b!2486330))

(assert (= (and b!2486324 ((_ is LongMap!3420) (v!31661 (underlying!7048 thiss!42540)))) b!2486318))

(assert (= b!2486325 b!2486324))

(assert (= (and start!242898 ((_ is HashMap!3330) thiss!42540)) b!2486325))

(declare-fun m!2854759 () Bool)

(assert (=> mapNonEmpty!15774 m!2854759))

(declare-fun m!2854761 () Bool)

(assert (=> b!2486320 m!2854761))

(declare-fun m!2854763 () Bool)

(assert (=> b!2486323 m!2854763))

(declare-fun m!2854765 () Bool)

(assert (=> b!2486331 m!2854765))

(declare-fun m!2854767 () Bool)

(assert (=> b!2486329 m!2854767))

(declare-fun m!2854769 () Bool)

(assert (=> b!2486319 m!2854769))

(declare-fun m!2854771 () Bool)

(assert (=> b!2486327 m!2854771))

(declare-fun m!2854773 () Bool)

(assert (=> b!2486327 m!2854773))

(declare-fun m!2854775 () Bool)

(assert (=> b!2486327 m!2854775))

(declare-fun m!2854777 () Bool)

(assert (=> b!2486327 m!2854777))

(declare-fun m!2854779 () Bool)

(assert (=> b!2486327 m!2854779))

(declare-fun m!2854781 () Bool)

(assert (=> b!2486327 m!2854781))

(declare-fun m!2854783 () Bool)

(assert (=> b!2486327 m!2854783))

(declare-fun m!2854785 () Bool)

(assert (=> b!2486327 m!2854785))

(declare-fun m!2854787 () Bool)

(assert (=> b!2486327 m!2854787))

(declare-fun m!2854789 () Bool)

(assert (=> b!2486327 m!2854789))

(declare-fun m!2854791 () Bool)

(assert (=> b!2486316 m!2854791))

(declare-fun m!2854793 () Bool)

(assert (=> b!2486316 m!2854793))

(declare-fun m!2854795 () Bool)

(assert (=> b!2486316 m!2854795))

(declare-fun m!2854797 () Bool)

(assert (=> b!2486316 m!2854797))

(declare-fun m!2854799 () Bool)

(assert (=> b!2486316 m!2854799))

(declare-fun m!2854801 () Bool)

(assert (=> b!2486316 m!2854801))

(declare-fun m!2854803 () Bool)

(assert (=> b!2486316 m!2854803))

(declare-fun m!2854805 () Bool)

(assert (=> b!2486316 m!2854805))

(declare-fun m!2854807 () Bool)

(assert (=> b!2486316 m!2854807))

(declare-fun m!2854809 () Bool)

(assert (=> b!2486317 m!2854809))

(declare-fun m!2854811 () Bool)

(assert (=> b!2486322 m!2854811))

(declare-fun m!2854813 () Bool)

(assert (=> b!2486321 m!2854813))

(declare-fun m!2854815 () Bool)

(assert (=> b!2486321 m!2854815))

(declare-fun m!2854817 () Bool)

(assert (=> b!2486328 m!2854817))

(assert (=> b!2486328 m!2854817))

(declare-fun m!2854819 () Bool)

(assert (=> b!2486328 m!2854819))

(check-sat (not b!2486326) (not b!2486328) tp_is_empty!12399 (not b_next!73241) (not b!2486320) (not b!2486319) (not b!2486322) (not b!2486327) (not b!2486321) (not b!2486316) (not b!2486331) (not b_next!73243) (not b!2486323) b_and!188821 b_and!188823 (not b!2486317) (not b!2486329) (not mapNonEmpty!15774))
(check-sat b_and!188823 b_and!188821 (not b_next!73241) (not b_next!73243))
