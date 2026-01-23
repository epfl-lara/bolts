; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415018 () Bool)

(assert start!415018)

(declare-fun b!4315008 () Bool)

(declare-fun b_free!128787 () Bool)

(declare-fun b_next!129491 () Bool)

(assert (=> b!4315008 (= b_free!128787 (not b_next!129491))))

(declare-fun tp!1325711 () Bool)

(declare-fun b_and!340261 () Bool)

(assert (=> b!4315008 (= tp!1325711 b_and!340261)))

(declare-fun b!4315006 () Bool)

(declare-fun b_free!128789 () Bool)

(declare-fun b_next!129493 () Bool)

(assert (=> b!4315006 (= b_free!128789 (not b_next!129493))))

(declare-fun tp!1325705 () Bool)

(declare-fun b_and!340263 () Bool)

(assert (=> b!4315006 (= tp!1325705 b_and!340263)))

(declare-fun b!4315000 () Bool)

(declare-fun e!2684088 () Bool)

(declare-datatypes ((K!9514 0))(
  ( (K!9515 (val!15869 Int)) )
))
(declare-datatypes ((V!9716 0))(
  ( (V!9717 (val!15870 Int)) )
))
(declare-datatypes ((tuple2!46904 0))(
  ( (tuple2!46905 (_1!26734 K!9514) (_2!26734 V!9716)) )
))
(declare-datatypes ((List!48409 0))(
  ( (Nil!48285) (Cons!48285 (h!53735 tuple2!46904) (t!355250 List!48409)) )
))
(declare-fun lt!1534592 () List!48409)

(declare-fun noDuplicateKeys!245 (List!48409) Bool)

(assert (=> b!4315000 (= e!2684088 (noDuplicateKeys!245 lt!1534592))))

(declare-fun b!4315001 () Bool)

(declare-fun e!2684093 () Bool)

(declare-fun e!2684094 () Bool)

(assert (=> b!4315001 (= e!2684093 e!2684094)))

(declare-fun res!1768629 () Bool)

(assert (=> b!4315001 (=> (not res!1768629) (not e!2684094))))

(declare-datatypes ((array!17020 0))(
  ( (array!17021 (arr!7599 (Array (_ BitVec 32) (_ BitVec 64))) (size!35638 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4623 0))(
  ( (HashableExt!4622 (__x!30146 Int)) )
))
(declare-datatypes ((array!17022 0))(
  ( (array!17023 (arr!7600 (Array (_ BitVec 32) List!48409)) (size!35639 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9414 0))(
  ( (LongMapFixedSize!9415 (defaultEntry!5092 Int) (mask!13289 (_ BitVec 32)) (extraKeys!4956 (_ BitVec 32)) (zeroValue!4966 List!48409) (minValue!4966 List!48409) (_size!9457 (_ BitVec 32)) (_keys!5007 array!17020) (_values!4988 array!17022) (_vacant!4768 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18637 0))(
  ( (Cell!18638 (v!42540 LongMapFixedSize!9414)) )
))
(declare-datatypes ((MutLongMap!4707 0))(
  ( (LongMap!4707 (underlying!9643 Cell!18637)) (MutLongMapExt!4706 (__x!30147 Int)) )
))
(declare-datatypes ((Cell!18639 0))(
  ( (Cell!18640 (v!42541 MutLongMap!4707)) )
))
(declare-datatypes ((MutableMap!4613 0))(
  ( (MutableMapExt!4612 (__x!30148 Int)) (HashMap!4613 (underlying!9644 Cell!18639) (hashF!6816 Hashable!4623) (_size!9458 (_ BitVec 32)) (defaultValue!4784 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4613)

(declare-fun key!2048 () K!9514)

(declare-fun contains!10287 (MutableMap!4613 K!9514) Bool)

(assert (=> b!4315001 (= res!1768629 (contains!10287 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46906 0))(
  ( (tuple2!46907 (_1!26735 (_ BitVec 64)) (_2!26735 List!48409)) )
))
(declare-datatypes ((List!48410 0))(
  ( (Nil!48286) (Cons!48286 (h!53736 tuple2!46906) (t!355251 List!48410)) )
))
(declare-datatypes ((ListLongMap!1091 0))(
  ( (ListLongMap!1092 (toList!2477 List!48410)) )
))
(declare-fun lt!1534589 () ListLongMap!1091)

(declare-fun map!10294 (MutLongMap!4707) ListLongMap!1091)

(assert (=> b!4315001 (= lt!1534589 (map!10294 (v!42541 (underlying!9644 thiss!42308))))))

(declare-datatypes ((ListMap!1757 0))(
  ( (ListMap!1758 (toList!2478 List!48409)) )
))
(declare-fun lt!1534600 () ListMap!1757)

(declare-fun map!10295 (MutableMap!4613) ListMap!1757)

(assert (=> b!4315001 (= lt!1534600 (map!10295 thiss!42308))))

(declare-fun b!4315002 () Bool)

(declare-fun e!2684091 () Bool)

(declare-fun e!2684098 () Bool)

(assert (=> b!4315002 (= e!2684091 e!2684098)))

(declare-fun b!4315003 () Bool)

(declare-fun e!2684087 () Bool)

(assert (=> b!4315003 (= e!2684087 (not true))))

(declare-fun e!2684090 () Bool)

(assert (=> b!4315003 e!2684090))

(declare-fun res!1768624 () Bool)

(assert (=> b!4315003 (=> (not res!1768624) (not e!2684090))))

(declare-fun lt!1534595 () ListMap!1757)

(declare-fun lt!1534591 () ListMap!1757)

(declare-fun contains!10288 (ListMap!1757 K!9514) Bool)

(assert (=> b!4315003 (= res!1768624 (= (contains!10288 lt!1534591 key!2048) (contains!10288 lt!1534595 key!2048)))))

(declare-datatypes ((Unit!67488 0))(
  ( (Unit!67489) )
))
(declare-fun lt!1534601 () Unit!67488)

(declare-fun lemmaEquivalentThenSameContains!60 (ListMap!1757 ListMap!1757 K!9514) Unit!67488)

(assert (=> b!4315003 (= lt!1534601 (lemmaEquivalentThenSameContains!60 lt!1534591 lt!1534595 key!2048))))

(declare-fun lt!1534587 () tuple2!46904)

(declare-fun +!299 (ListMap!1757 tuple2!46904) ListMap!1757)

(assert (=> b!4315003 (= lt!1534595 (+!299 lt!1534600 lt!1534587))))

(declare-datatypes ((tuple2!46908 0))(
  ( (tuple2!46909 (_1!26736 Bool) (_2!26736 MutLongMap!4707)) )
))
(declare-fun lt!1534594 () tuple2!46908)

(assert (=> b!4315003 (= lt!1534591 (map!10295 (HashMap!4613 (Cell!18640 (_2!26736 lt!1534594)) (hashF!6816 thiss!42308) (_size!9458 thiss!42308) (defaultValue!4784 thiss!42308))))))

(declare-fun lt!1534599 () ListLongMap!1091)

(declare-fun eq!146 (ListMap!1757 ListMap!1757) Bool)

(declare-fun extractMap!349 (List!48410) ListMap!1757)

(assert (=> b!4315003 (eq!146 (extractMap!349 (toList!2477 lt!1534599)) (+!299 (extractMap!349 (toList!2477 lt!1534589)) lt!1534587))))

(declare-fun lt!1534586 () Unit!67488)

(declare-fun lt!1534597 () (_ BitVec 64))

(declare-fun v!9179 () V!9716)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!65 (ListLongMap!1091 (_ BitVec 64) List!48409 K!9514 V!9716 Hashable!4623) Unit!67488)

(assert (=> b!4315003 (= lt!1534586 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!65 lt!1534589 lt!1534597 lt!1534592 key!2048 v!9179 (hashF!6816 thiss!42308)))))

(declare-fun e!2684092 () Bool)

(assert (=> b!4315003 e!2684092))

(declare-fun res!1768623 () Bool)

(assert (=> b!4315003 (=> (not res!1768623) (not e!2684092))))

(declare-fun lambda!133385 () Int)

(declare-fun forall!8774 (List!48410 Int) Bool)

(assert (=> b!4315003 (= res!1768623 (forall!8774 (toList!2477 lt!1534599) lambda!133385))))

(declare-fun +!300 (ListLongMap!1091 tuple2!46906) ListLongMap!1091)

(assert (=> b!4315003 (= lt!1534599 (+!300 lt!1534589 (tuple2!46907 lt!1534597 lt!1534592)))))

(declare-fun lt!1534596 () Unit!67488)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!167 (ListLongMap!1091 (_ BitVec 64) List!48409 Hashable!4623) Unit!67488)

(assert (=> b!4315003 (= lt!1534596 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!167 lt!1534589 lt!1534597 lt!1534592 (hashF!6816 thiss!42308)))))

(assert (=> b!4315003 e!2684088))

(declare-fun res!1768626 () Bool)

(assert (=> b!4315003 (=> (not res!1768626) (not e!2684088))))

(declare-fun lt!1534598 () List!48409)

(assert (=> b!4315003 (= res!1768626 (noDuplicateKeys!245 lt!1534598))))

(declare-fun lt!1534590 () Unit!67488)

(declare-fun lt!1534593 () List!48409)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!193 (List!48409 K!9514) Unit!67488)

(assert (=> b!4315003 (= lt!1534590 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!193 lt!1534593 key!2048))))

(declare-fun allKeysSameHash!218 (List!48409 (_ BitVec 64) Hashable!4623) Bool)

(assert (=> b!4315003 (allKeysSameHash!218 lt!1534598 lt!1534597 (hashF!6816 thiss!42308))))

(declare-fun lt!1534602 () Unit!67488)

(declare-fun lemmaRemovePairForKeyPreservesHash!198 (List!48409 K!9514 (_ BitVec 64) Hashable!4623) Unit!67488)

(assert (=> b!4315003 (= lt!1534602 (lemmaRemovePairForKeyPreservesHash!198 lt!1534593 key!2048 lt!1534597 (hashF!6816 thiss!42308)))))

(assert (=> b!4315003 (allKeysSameHash!218 lt!1534593 lt!1534597 (hashF!6816 thiss!42308))))

(declare-fun lt!1534585 () Unit!67488)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!205 (List!48410 (_ BitVec 64) List!48409 Hashable!4623) Unit!67488)

(assert (=> b!4315003 (= lt!1534585 (lemmaInLongMapAllKeySameHashThenForTuple!205 (toList!2477 lt!1534589) lt!1534597 lt!1534593 (hashF!6816 thiss!42308)))))

(declare-fun b!4315004 () Bool)

(declare-fun e!2684089 () Bool)

(assert (=> b!4315004 (= e!2684089 e!2684091)))

(declare-fun mapNonEmpty!21001 () Bool)

(declare-fun mapRes!21001 () Bool)

(declare-fun tp!1325708 () Bool)

(declare-fun tp!1325707 () Bool)

(assert (=> mapNonEmpty!21001 (= mapRes!21001 (and tp!1325708 tp!1325707))))

(declare-fun mapRest!21001 () (Array (_ BitVec 32) List!48409))

(declare-fun mapKey!21001 () (_ BitVec 32))

(declare-fun mapValue!21001 () List!48409)

(assert (=> mapNonEmpty!21001 (= (arr!7600 (_values!4988 (v!42540 (underlying!9643 (v!42541 (underlying!9644 thiss!42308)))))) (store mapRest!21001 mapKey!21001 mapValue!21001))))

(declare-fun b!4315005 () Bool)

(declare-fun e!2684097 () Bool)

(declare-fun lt!1534588 () MutLongMap!4707)

(get-info :version)

(assert (=> b!4315005 (= e!2684097 (and e!2684089 ((_ is LongMap!4707) lt!1534588)))))

(assert (=> b!4315005 (= lt!1534588 (v!42541 (underlying!9644 thiss!42308)))))

(declare-fun e!2684099 () Bool)

(assert (=> b!4315006 (= e!2684099 (and e!2684097 tp!1325705))))

(declare-fun b!4315007 () Bool)

(declare-fun res!1768627 () Bool)

(assert (=> b!4315007 (=> (not res!1768627) (not e!2684093))))

(declare-fun valid!3705 (MutableMap!4613) Bool)

(assert (=> b!4315007 (= res!1768627 (valid!3705 thiss!42308))))

(declare-fun res!1768628 () Bool)

(assert (=> start!415018 (=> (not res!1768628) (not e!2684093))))

(assert (=> start!415018 (= res!1768628 ((_ is HashMap!4613) thiss!42308))))

(assert (=> start!415018 e!2684093))

(assert (=> start!415018 e!2684099))

(declare-fun tp_is_empty!23933 () Bool)

(assert (=> start!415018 tp_is_empty!23933))

(declare-fun tp_is_empty!23935 () Bool)

(assert (=> start!415018 tp_is_empty!23935))

(declare-fun e!2684096 () Bool)

(declare-fun tp!1325710 () Bool)

(declare-fun tp!1325706 () Bool)

(declare-fun array_inv!5461 (array!17020) Bool)

(declare-fun array_inv!5462 (array!17022) Bool)

(assert (=> b!4315008 (= e!2684098 (and tp!1325711 tp!1325706 tp!1325710 (array_inv!5461 (_keys!5007 (v!42540 (underlying!9643 (v!42541 (underlying!9644 thiss!42308)))))) (array_inv!5462 (_values!4988 (v!42540 (underlying!9643 (v!42541 (underlying!9644 thiss!42308)))))) e!2684096))))

(declare-fun b!4315009 () Bool)

(assert (=> b!4315009 (= e!2684094 e!2684087)))

(declare-fun res!1768625 () Bool)

(assert (=> b!4315009 (=> (not res!1768625) (not e!2684087))))

(assert (=> b!4315009 (= res!1768625 (_1!26736 lt!1534594))))

(declare-fun update!482 (MutLongMap!4707 (_ BitVec 64) List!48409) tuple2!46908)

(assert (=> b!4315009 (= lt!1534594 (update!482 (v!42541 (underlying!9644 thiss!42308)) lt!1534597 lt!1534592))))

(assert (=> b!4315009 (= lt!1534592 (Cons!48285 lt!1534587 lt!1534598))))

(declare-fun removePairForKey!243 (List!48409 K!9514) List!48409)

(assert (=> b!4315009 (= lt!1534598 (removePairForKey!243 lt!1534593 key!2048))))

(assert (=> b!4315009 (= lt!1534587 (tuple2!46905 key!2048 v!9179))))

(declare-fun apply!11077 (MutLongMap!4707 (_ BitVec 64)) List!48409)

(assert (=> b!4315009 (= lt!1534593 (apply!11077 (v!42541 (underlying!9644 thiss!42308)) lt!1534597))))

(declare-fun hash!1096 (Hashable!4623 K!9514) (_ BitVec 64))

(assert (=> b!4315009 (= lt!1534597 (hash!1096 (hashF!6816 thiss!42308) key!2048))))

(declare-fun b!4315010 () Bool)

(declare-fun res!1768630 () Bool)

(assert (=> b!4315010 (=> (not res!1768630) (not e!2684088))))

(declare-fun containsKey!363 (List!48409 K!9514) Bool)

(assert (=> b!4315010 (= res!1768630 (not (containsKey!363 lt!1534598 key!2048)))))

(declare-fun mapIsEmpty!21001 () Bool)

(assert (=> mapIsEmpty!21001 mapRes!21001))

(declare-fun b!4315011 () Bool)

(declare-fun allKeysSameHashInMap!365 (ListLongMap!1091 Hashable!4623) Bool)

(assert (=> b!4315011 (= e!2684092 (allKeysSameHashInMap!365 lt!1534599 (hashF!6816 thiss!42308)))))

(declare-fun b!4315012 () Bool)

(assert (=> b!4315012 (= e!2684090 (forall!8774 (toList!2477 (map!10294 (_2!26736 lt!1534594))) lambda!133385))))

(declare-fun b!4315013 () Bool)

(declare-fun tp!1325709 () Bool)

(assert (=> b!4315013 (= e!2684096 (and tp!1325709 mapRes!21001))))

(declare-fun condMapEmpty!21001 () Bool)

(declare-fun mapDefault!21001 () List!48409)

(assert (=> b!4315013 (= condMapEmpty!21001 (= (arr!7600 (_values!4988 (v!42540 (underlying!9643 (v!42541 (underlying!9644 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48409)) mapDefault!21001)))))

(assert (= (and start!415018 res!1768628) b!4315007))

(assert (= (and b!4315007 res!1768627) b!4315001))

(assert (= (and b!4315001 res!1768629) b!4315009))

(assert (= (and b!4315009 res!1768625) b!4315003))

(assert (= (and b!4315003 res!1768626) b!4315010))

(assert (= (and b!4315010 res!1768630) b!4315000))

(assert (= (and b!4315003 res!1768623) b!4315011))

(assert (= (and b!4315003 res!1768624) b!4315012))

(assert (= (and b!4315013 condMapEmpty!21001) mapIsEmpty!21001))

(assert (= (and b!4315013 (not condMapEmpty!21001)) mapNonEmpty!21001))

(assert (= b!4315008 b!4315013))

(assert (= b!4315002 b!4315008))

(assert (= b!4315004 b!4315002))

(assert (= (and b!4315005 ((_ is LongMap!4707) (v!42541 (underlying!9644 thiss!42308)))) b!4315004))

(assert (= b!4315006 b!4315005))

(assert (= (and start!415018 ((_ is HashMap!4613) thiss!42308)) b!4315006))

(declare-fun m!4908559 () Bool)

(assert (=> b!4315001 m!4908559))

(declare-fun m!4908561 () Bool)

(assert (=> b!4315001 m!4908561))

(declare-fun m!4908563 () Bool)

(assert (=> b!4315001 m!4908563))

(declare-fun m!4908565 () Bool)

(assert (=> b!4315010 m!4908565))

(declare-fun m!4908567 () Bool)

(assert (=> mapNonEmpty!21001 m!4908567))

(declare-fun m!4908569 () Bool)

(assert (=> b!4315003 m!4908569))

(declare-fun m!4908571 () Bool)

(assert (=> b!4315003 m!4908571))

(declare-fun m!4908573 () Bool)

(assert (=> b!4315003 m!4908573))

(declare-fun m!4908575 () Bool)

(assert (=> b!4315003 m!4908575))

(declare-fun m!4908577 () Bool)

(assert (=> b!4315003 m!4908577))

(declare-fun m!4908579 () Bool)

(assert (=> b!4315003 m!4908579))

(declare-fun m!4908581 () Bool)

(assert (=> b!4315003 m!4908581))

(declare-fun m!4908583 () Bool)

(assert (=> b!4315003 m!4908583))

(declare-fun m!4908585 () Bool)

(assert (=> b!4315003 m!4908585))

(declare-fun m!4908587 () Bool)

(assert (=> b!4315003 m!4908587))

(declare-fun m!4908589 () Bool)

(assert (=> b!4315003 m!4908589))

(declare-fun m!4908591 () Bool)

(assert (=> b!4315003 m!4908591))

(declare-fun m!4908593 () Bool)

(assert (=> b!4315003 m!4908593))

(assert (=> b!4315003 m!4908575))

(assert (=> b!4315003 m!4908589))

(declare-fun m!4908595 () Bool)

(assert (=> b!4315003 m!4908595))

(declare-fun m!4908597 () Bool)

(assert (=> b!4315003 m!4908597))

(declare-fun m!4908599 () Bool)

(assert (=> b!4315003 m!4908599))

(declare-fun m!4908601 () Bool)

(assert (=> b!4315003 m!4908601))

(assert (=> b!4315003 m!4908587))

(declare-fun m!4908603 () Bool)

(assert (=> b!4315003 m!4908603))

(declare-fun m!4908605 () Bool)

(assert (=> b!4315003 m!4908605))

(declare-fun m!4908607 () Bool)

(assert (=> b!4315011 m!4908607))

(declare-fun m!4908609 () Bool)

(assert (=> b!4315009 m!4908609))

(declare-fun m!4908611 () Bool)

(assert (=> b!4315009 m!4908611))

(declare-fun m!4908613 () Bool)

(assert (=> b!4315009 m!4908613))

(declare-fun m!4908615 () Bool)

(assert (=> b!4315009 m!4908615))

(declare-fun m!4908617 () Bool)

(assert (=> b!4315000 m!4908617))

(declare-fun m!4908619 () Bool)

(assert (=> b!4315008 m!4908619))

(declare-fun m!4908621 () Bool)

(assert (=> b!4315008 m!4908621))

(declare-fun m!4908623 () Bool)

(assert (=> b!4315012 m!4908623))

(declare-fun m!4908625 () Bool)

(assert (=> b!4315012 m!4908625))

(declare-fun m!4908627 () Bool)

(assert (=> b!4315007 m!4908627))

(check-sat (not b_next!129493) (not b!4315003) (not b!4315009) (not mapNonEmpty!21001) (not b!4315010) (not b!4315008) (not b!4315012) (not b!4315001) tp_is_empty!23933 (not b_next!129491) (not b!4315007) b_and!340261 (not b!4315000) b_and!340263 (not b!4315011) (not b!4315013) tp_is_empty!23935)
(check-sat b_and!340261 b_and!340263 (not b_next!129493) (not b_next!129491))
