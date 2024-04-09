; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2982 () Bool)

(assert start!2982)

(declare-fun b!17277 () Bool)

(declare-fun b_free!591 () Bool)

(declare-fun b_next!591 () Bool)

(assert (=> b!17277 (= b_free!591 (not b_next!591))))

(declare-fun tp!2963 () Bool)

(declare-fun b_and!1241 () Bool)

(assert (=> b!17277 (= tp!2963 b_and!1241)))

(declare-fun b!17273 () Bool)

(declare-datatypes ((V!965 0))(
  ( (V!966 (val!454 Int)) )
))
(declare-datatypes ((ValueCell!228 0))(
  ( (ValueCellFull!228 (v!1412 V!965)) (EmptyCell!228) )
))
(declare-datatypes ((array!907 0))(
  ( (array!908 (arr!435 (Array (_ BitVec 32) ValueCell!228)) (size!525 (_ BitVec 32))) )
))
(declare-datatypes ((array!909 0))(
  ( (array!910 (arr!436 (Array (_ BitVec 32) (_ BitVec 64))) (size!526 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!42 0))(
  ( (LongMapFixedSize!43 (defaultEntry!1632 Int) (mask!4545 (_ BitVec 32)) (extraKeys!1545 (_ BitVec 32)) (zeroValue!1568 V!965) (minValue!1568 V!965) (_size!53 (_ BitVec 32)) (_keys!3057 array!909) (_values!1629 array!907) (_vacant!53 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!42 0))(
  ( (Cell!43 (v!1413 LongMapFixedSize!42)) )
))
(declare-datatypes ((LongMap!42 0))(
  ( (LongMap!43 (underlying!32 Cell!42)) )
))
(declare-datatypes ((tuple2!688 0))(
  ( (tuple2!689 (_1!345 Bool) (_2!345 LongMap!42)) )
))
(declare-fun e!10772 () tuple2!688)

(declare-fun thiss!848 () LongMap!42)

(assert (=> b!17273 (= e!10772 (tuple2!689 true thiss!848))))

(declare-fun b!17274 () Bool)

(declare-fun repack!2 (LongMap!42) tuple2!688)

(assert (=> b!17274 (= e!10772 (repack!2 thiss!848))))

(declare-fun b!17275 () Bool)

(declare-fun e!10769 () Bool)

(assert (=> b!17275 (= e!10769 false)))

(declare-fun lt!4482 () Bool)

(declare-fun key!682 () (_ BitVec 64))

(declare-fun lt!4481 () tuple2!688)

(declare-fun v!259 () V!965)

(declare-fun valid!28 (LongMap!42) Bool)

(declare-datatypes ((tuple2!690 0))(
  ( (tuple2!691 (_1!346 Bool) (_2!346 LongMapFixedSize!42)) )
))
(declare-fun update!3 (LongMapFixedSize!42 (_ BitVec 64) V!965) tuple2!690)

(assert (=> b!17275 (= lt!4482 (valid!28 (LongMap!43 (Cell!43 (_2!346 (update!3 (v!1413 (underlying!32 (_2!345 lt!4481))) key!682 v!259))))))))

(declare-fun res!12530 () Bool)

(declare-fun e!10766 () Bool)

(assert (=> start!2982 (=> (not res!12530) (not e!10766))))

(assert (=> start!2982 (= res!12530 (valid!28 thiss!848))))

(assert (=> start!2982 e!10766))

(declare-fun e!10775 () Bool)

(assert (=> start!2982 e!10775))

(assert (=> start!2982 true))

(declare-fun tp_is_empty!855 () Bool)

(assert (=> start!2982 tp_is_empty!855))

(declare-fun b!17276 () Bool)

(declare-fun e!10770 () Bool)

(declare-fun e!10773 () Bool)

(declare-fun mapRes!717 () Bool)

(assert (=> b!17276 (= e!10770 (and e!10773 mapRes!717))))

(declare-fun condMapEmpty!717 () Bool)

(declare-fun mapDefault!717 () ValueCell!228)

(assert (=> b!17276 (= condMapEmpty!717 (= (arr!435 (_values!1629 (v!1413 (underlying!32 thiss!848)))) ((as const (Array (_ BitVec 32) ValueCell!228)) mapDefault!717)))))

(declare-fun e!10771 () Bool)

(declare-fun array_inv!307 (array!909) Bool)

(declare-fun array_inv!308 (array!907) Bool)

(assert (=> b!17277 (= e!10771 (and tp!2963 tp_is_empty!855 (array_inv!307 (_keys!3057 (v!1413 (underlying!32 thiss!848)))) (array_inv!308 (_values!1629 (v!1413 (underlying!32 thiss!848)))) e!10770))))

(declare-fun mapIsEmpty!717 () Bool)

(assert (=> mapIsEmpty!717 mapRes!717))

(declare-fun b!17278 () Bool)

(declare-fun e!10767 () Bool)

(assert (=> b!17278 (= e!10767 tp_is_empty!855)))

(declare-fun b!17279 () Bool)

(declare-fun e!10768 () Bool)

(assert (=> b!17279 (= e!10768 e!10771)))

(declare-fun b!17280 () Bool)

(assert (=> b!17280 (= e!10773 tp_is_empty!855)))

(declare-fun mapNonEmpty!717 () Bool)

(declare-fun tp!2964 () Bool)

(assert (=> mapNonEmpty!717 (= mapRes!717 (and tp!2964 e!10767))))

(declare-fun mapKey!717 () (_ BitVec 32))

(declare-fun mapRest!717 () (Array (_ BitVec 32) ValueCell!228))

(declare-fun mapValue!717 () ValueCell!228)

(assert (=> mapNonEmpty!717 (= (arr!435 (_values!1629 (v!1413 (underlying!32 thiss!848)))) (store mapRest!717 mapKey!717 mapValue!717))))

(declare-fun b!17281 () Bool)

(assert (=> b!17281 (= e!10775 e!10768)))

(declare-fun b!17282 () Bool)

(assert (=> b!17282 (= e!10766 e!10769)))

(declare-fun res!12531 () Bool)

(assert (=> b!17282 (=> (not res!12531) (not e!10769))))

(assert (=> b!17282 (= res!12531 (_1!345 lt!4481))))

(assert (=> b!17282 (= lt!4481 e!10772)))

(declare-fun c!1741 () Bool)

(declare-fun imbalanced!4 (LongMap!42) Bool)

(assert (=> b!17282 (= c!1741 (imbalanced!4 thiss!848))))

(assert (= (and start!2982 res!12530) b!17282))

(assert (= (and b!17282 c!1741) b!17274))

(assert (= (and b!17282 (not c!1741)) b!17273))

(assert (= (and b!17282 res!12531) b!17275))

(assert (= (and b!17276 condMapEmpty!717) mapIsEmpty!717))

(assert (= (and b!17276 (not condMapEmpty!717)) mapNonEmpty!717))

(get-info :version)

(assert (= (and mapNonEmpty!717 ((_ is ValueCellFull!228) mapValue!717)) b!17278))

(assert (= (and b!17276 ((_ is ValueCellFull!228) mapDefault!717)) b!17280))

(assert (= b!17277 b!17276))

(assert (= b!17279 b!17277))

(assert (= b!17281 b!17279))

(assert (= start!2982 b!17281))

(declare-fun m!12181 () Bool)

(assert (=> b!17282 m!12181))

(declare-fun m!12183 () Bool)

(assert (=> b!17277 m!12183))

(declare-fun m!12185 () Bool)

(assert (=> b!17277 m!12185))

(declare-fun m!12187 () Bool)

(assert (=> b!17274 m!12187))

(declare-fun m!12189 () Bool)

(assert (=> b!17275 m!12189))

(declare-fun m!12191 () Bool)

(assert (=> b!17275 m!12191))

(declare-fun m!12193 () Bool)

(assert (=> mapNonEmpty!717 m!12193))

(declare-fun m!12195 () Bool)

(assert (=> start!2982 m!12195))

(check-sat b_and!1241 (not b!17282) tp_is_empty!855 (not b!17277) (not b!17274) (not b_next!591) (not start!2982) (not mapNonEmpty!717) (not b!17275))
(check-sat b_and!1241 (not b_next!591))
