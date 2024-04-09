; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2988 () Bool)

(assert start!2988)

(declare-fun b!17374 () Bool)

(declare-fun b_free!597 () Bool)

(declare-fun b_next!597 () Bool)

(assert (=> b!17374 (= b_free!597 (not b_next!597))))

(declare-fun tp!2982 () Bool)

(declare-fun b_and!1247 () Bool)

(assert (=> b!17374 (= tp!2982 b_and!1247)))

(declare-fun b!17373 () Bool)

(declare-fun e!10870 () Bool)

(declare-fun e!10869 () Bool)

(declare-fun mapRes!726 () Bool)

(assert (=> b!17373 (= e!10870 (and e!10869 mapRes!726))))

(declare-fun condMapEmpty!726 () Bool)

(declare-datatypes ((V!973 0))(
  ( (V!974 (val!457 Int)) )
))
(declare-datatypes ((ValueCell!231 0))(
  ( (ValueCellFull!231 (v!1418 V!973)) (EmptyCell!231) )
))
(declare-datatypes ((array!919 0))(
  ( (array!920 (arr!441 (Array (_ BitVec 32) ValueCell!231)) (size!531 (_ BitVec 32))) )
))
(declare-datatypes ((array!921 0))(
  ( (array!922 (arr!442 (Array (_ BitVec 32) (_ BitVec 64))) (size!532 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!48 0))(
  ( (LongMapFixedSize!49 (defaultEntry!1635 Int) (mask!4550 (_ BitVec 32)) (extraKeys!1548 (_ BitVec 32)) (zeroValue!1571 V!973) (minValue!1571 V!973) (_size!56 (_ BitVec 32)) (_keys!3060 array!921) (_values!1632 array!919) (_vacant!56 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!48 0))(
  ( (Cell!49 (v!1419 LongMapFixedSize!48)) )
))
(declare-datatypes ((LongMap!48 0))(
  ( (LongMap!49 (underlying!35 Cell!48)) )
))
(declare-fun thiss!848 () LongMap!48)

(declare-fun mapDefault!726 () ValueCell!231)

(assert (=> b!17373 (= condMapEmpty!726 (= (arr!441 (_values!1632 (v!1419 (underlying!35 thiss!848)))) ((as const (Array (_ BitVec 32) ValueCell!231)) mapDefault!726)))))

(declare-fun tp_is_empty!861 () Bool)

(declare-fun e!10867 () Bool)

(declare-fun array_inv!311 (array!921) Bool)

(declare-fun array_inv!312 (array!919) Bool)

(assert (=> b!17374 (= e!10867 (and tp!2982 tp_is_empty!861 (array_inv!311 (_keys!3060 (v!1419 (underlying!35 thiss!848)))) (array_inv!312 (_values!1632 (v!1419 (underlying!35 thiss!848)))) e!10870))))

(declare-fun b!17375 () Bool)

(declare-fun e!10865 () Bool)

(assert (=> b!17375 (= e!10865 tp_is_empty!861)))

(declare-fun res!12558 () Bool)

(declare-fun e!10866 () Bool)

(assert (=> start!2988 (=> (not res!12558) (not e!10866))))

(declare-fun valid!31 (LongMap!48) Bool)

(assert (=> start!2988 (= res!12558 (valid!31 thiss!848))))

(assert (=> start!2988 e!10866))

(declare-fun e!10863 () Bool)

(assert (=> start!2988 e!10863))

(assert (=> start!2988 true))

(assert (=> start!2988 tp_is_empty!861))

(declare-fun b!17376 () Bool)

(assert (=> b!17376 (= e!10869 tp_is_empty!861)))

(declare-fun b!17377 () Bool)

(declare-fun e!10864 () Bool)

(declare-fun e!10861 () Bool)

(assert (=> b!17377 (= e!10864 e!10861)))

(declare-fun res!12559 () Bool)

(assert (=> b!17377 (=> (not res!12559) (not e!10861))))

(declare-fun lt!4510 () LongMap!48)

(assert (=> b!17377 (= res!12559 (valid!31 lt!4510))))

(declare-datatypes ((tuple2!702 0))(
  ( (tuple2!703 (_1!352 Bool) (_2!352 LongMapFixedSize!48)) )
))
(declare-fun lt!4511 () tuple2!702)

(assert (=> b!17377 (= lt!4510 (LongMap!49 (Cell!49 (_2!352 lt!4511))))))

(declare-fun key!682 () (_ BitVec 64))

(declare-datatypes ((tuple2!704 0))(
  ( (tuple2!705 (_1!353 Bool) (_2!353 LongMap!48)) )
))
(declare-fun lt!4509 () tuple2!704)

(declare-fun v!259 () V!973)

(declare-fun update!6 (LongMapFixedSize!48 (_ BitVec 64) V!973) tuple2!702)

(assert (=> b!17377 (= lt!4511 (update!6 (v!1419 (underlying!35 (_2!353 lt!4509))) key!682 v!259))))

(declare-fun b!17378 () Bool)

(declare-fun e!10862 () Bool)

(assert (=> b!17378 (= e!10862 e!10867)))

(declare-fun b!17379 () Bool)

(declare-fun e!10871 () tuple2!704)

(declare-fun repack!5 (LongMap!48) tuple2!704)

(assert (=> b!17379 (= e!10871 (repack!5 thiss!848))))

(declare-fun b!17380 () Bool)

(assert (=> b!17380 (= e!10863 e!10862)))

(declare-fun b!17381 () Bool)

(assert (=> b!17381 (= e!10861 false)))

(declare-fun lt!4512 () Bool)

(declare-datatypes ((tuple2!706 0))(
  ( (tuple2!707 (_1!354 (_ BitVec 64)) (_2!354 V!973)) )
))
(declare-datatypes ((List!530 0))(
  ( (Nil!527) (Cons!526 (h!1092 tuple2!706) (t!3171 List!530)) )
))
(declare-datatypes ((ListLongMap!511 0))(
  ( (ListLongMap!512 (toList!271 List!530)) )
))
(declare-fun contains!202 (ListLongMap!511 (_ BitVec 64)) Bool)

(declare-fun map!333 (LongMap!48) ListLongMap!511)

(assert (=> b!17381 (= lt!4512 (contains!202 (map!333 lt!4510) key!682))))

(declare-fun mapIsEmpty!726 () Bool)

(assert (=> mapIsEmpty!726 mapRes!726))

(declare-fun b!17382 () Bool)

(declare-fun res!12560 () Bool)

(assert (=> b!17382 (=> (not res!12560) (not e!10861))))

(assert (=> b!17382 (= res!12560 (_1!352 lt!4511))))

(declare-fun b!17383 () Bool)

(assert (=> b!17383 (= e!10866 e!10864)))

(declare-fun res!12561 () Bool)

(assert (=> b!17383 (=> (not res!12561) (not e!10864))))

(assert (=> b!17383 (= res!12561 (_1!353 lt!4509))))

(assert (=> b!17383 (= lt!4509 e!10871)))

(declare-fun c!1750 () Bool)

(declare-fun imbalanced!7 (LongMap!48) Bool)

(assert (=> b!17383 (= c!1750 (imbalanced!7 thiss!848))))

(declare-fun b!17384 () Bool)

(assert (=> b!17384 (= e!10871 (tuple2!705 true thiss!848))))

(declare-fun mapNonEmpty!726 () Bool)

(declare-fun tp!2981 () Bool)

(assert (=> mapNonEmpty!726 (= mapRes!726 (and tp!2981 e!10865))))

(declare-fun mapRest!726 () (Array (_ BitVec 32) ValueCell!231))

(declare-fun mapValue!726 () ValueCell!231)

(declare-fun mapKey!726 () (_ BitVec 32))

(assert (=> mapNonEmpty!726 (= (arr!441 (_values!1632 (v!1419 (underlying!35 thiss!848)))) (store mapRest!726 mapKey!726 mapValue!726))))

(assert (= (and start!2988 res!12558) b!17383))

(assert (= (and b!17383 c!1750) b!17379))

(assert (= (and b!17383 (not c!1750)) b!17384))

(assert (= (and b!17383 res!12561) b!17377))

(assert (= (and b!17377 res!12559) b!17382))

(assert (= (and b!17382 res!12560) b!17381))

(assert (= (and b!17373 condMapEmpty!726) mapIsEmpty!726))

(assert (= (and b!17373 (not condMapEmpty!726)) mapNonEmpty!726))

(get-info :version)

(assert (= (and mapNonEmpty!726 ((_ is ValueCellFull!231) mapValue!726)) b!17375))

(assert (= (and b!17373 ((_ is ValueCellFull!231) mapDefault!726)) b!17376))

(assert (= b!17374 b!17373))

(assert (= b!17378 b!17374))

(assert (= b!17380 b!17378))

(assert (= start!2988 b!17380))

(declare-fun m!12233 () Bool)

(assert (=> b!17383 m!12233))

(declare-fun m!12235 () Bool)

(assert (=> start!2988 m!12235))

(declare-fun m!12237 () Bool)

(assert (=> b!17374 m!12237))

(declare-fun m!12239 () Bool)

(assert (=> b!17374 m!12239))

(declare-fun m!12241 () Bool)

(assert (=> b!17379 m!12241))

(declare-fun m!12243 () Bool)

(assert (=> mapNonEmpty!726 m!12243))

(declare-fun m!12245 () Bool)

(assert (=> b!17377 m!12245))

(declare-fun m!12247 () Bool)

(assert (=> b!17377 m!12247))

(declare-fun m!12249 () Bool)

(assert (=> b!17381 m!12249))

(assert (=> b!17381 m!12249))

(declare-fun m!12251 () Bool)

(assert (=> b!17381 m!12251))

(check-sat (not b_next!597) (not b!17377) tp_is_empty!861 (not b!17381) (not b!17383) (not mapNonEmpty!726) (not b!17379) (not start!2988) b_and!1247 (not b!17374))
(check-sat b_and!1247 (not b_next!597))
