; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3030 () Bool)

(assert start!3030)

(declare-fun b!18037 () Bool)

(declare-fun b_free!639 () Bool)

(declare-fun b_next!639 () Bool)

(assert (=> b!18037 (= b_free!639 (not b_next!639))))

(declare-fun tp!3108 () Bool)

(declare-fun b_and!1289 () Bool)

(assert (=> b!18037 (= tp!3108 b_and!1289)))

(declare-fun b!18029 () Bool)

(declare-datatypes ((V!1029 0))(
  ( (V!1030 (val!478 Int)) )
))
(declare-datatypes ((ValueCell!252 0))(
  ( (ValueCellFull!252 (v!1460 V!1029)) (EmptyCell!252) )
))
(declare-datatypes ((array!1003 0))(
  ( (array!1004 (arr!483 (Array (_ BitVec 32) ValueCell!252)) (size!573 (_ BitVec 32))) )
))
(declare-datatypes ((array!1005 0))(
  ( (array!1006 (arr!484 (Array (_ BitVec 32) (_ BitVec 64))) (size!574 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!90 0))(
  ( (LongMapFixedSize!91 (defaultEntry!1656 Int) (mask!4585 (_ BitVec 32)) (extraKeys!1569 (_ BitVec 32)) (zeroValue!1592 V!1029) (minValue!1592 V!1029) (_size!77 (_ BitVec 32)) (_keys!3081 array!1005) (_values!1653 array!1003) (_vacant!77 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!90 0))(
  ( (Cell!91 (v!1461 LongMapFixedSize!90)) )
))
(declare-datatypes ((LongMap!90 0))(
  ( (LongMap!91 (underlying!56 Cell!90)) )
))
(declare-datatypes ((tuple2!762 0))(
  ( (tuple2!763 (_1!382 Bool) (_2!382 LongMap!90)) )
))
(declare-fun e!11506 () tuple2!762)

(declare-fun thiss!848 () LongMap!90)

(declare-fun repack!19 (LongMap!90) tuple2!762)

(assert (=> b!18029 (= e!11506 (repack!19 thiss!848))))

(declare-fun b!18030 () Bool)

(declare-fun e!11504 () Bool)

(declare-fun e!11513 () Bool)

(declare-fun mapRes!789 () Bool)

(assert (=> b!18030 (= e!11504 (and e!11513 mapRes!789))))

(declare-fun condMapEmpty!789 () Bool)

(declare-fun mapDefault!789 () ValueCell!252)

(assert (=> b!18030 (= condMapEmpty!789 (= (arr!483 (_values!1653 (v!1461 (underlying!56 thiss!848)))) ((as const (Array (_ BitVec 32) ValueCell!252)) mapDefault!789)))))

(declare-fun mapNonEmpty!789 () Bool)

(declare-fun tp!3107 () Bool)

(declare-fun e!11507 () Bool)

(assert (=> mapNonEmpty!789 (= mapRes!789 (and tp!3107 e!11507))))

(declare-fun mapRest!789 () (Array (_ BitVec 32) ValueCell!252))

(declare-fun mapKey!789 () (_ BitVec 32))

(declare-fun mapValue!789 () ValueCell!252)

(assert (=> mapNonEmpty!789 (= (arr!483 (_values!1653 (v!1461 (underlying!56 thiss!848)))) (store mapRest!789 mapKey!789 mapValue!789))))

(declare-fun b!18031 () Bool)

(declare-fun e!11510 () Bool)

(declare-fun e!11508 () Bool)

(assert (=> b!18031 (= e!11510 e!11508)))

(declare-fun b!18032 () Bool)

(declare-fun e!11509 () Bool)

(assert (=> b!18032 (= e!11508 e!11509)))

(declare-fun res!12710 () Bool)

(declare-fun e!11505 () Bool)

(assert (=> start!3030 (=> (not res!12710) (not e!11505))))

(declare-fun valid!47 (LongMap!90) Bool)

(assert (=> start!3030 (= res!12710 (valid!47 thiss!848))))

(assert (=> start!3030 e!11505))

(assert (=> start!3030 e!11510))

(declare-fun b!18033 () Bool)

(declare-fun e!11511 () Bool)

(assert (=> b!18033 (= e!11511 false)))

(declare-fun lt!4661 () Bool)

(declare-fun lt!4662 () tuple2!762)

(assert (=> b!18033 (= lt!4661 (valid!47 (_2!382 lt!4662)))))

(declare-fun b!18034 () Bool)

(assert (=> b!18034 (= e!11506 (tuple2!763 true thiss!848))))

(declare-fun b!18035 () Bool)

(declare-fun tp_is_empty!903 () Bool)

(assert (=> b!18035 (= e!11507 tp_is_empty!903)))

(declare-fun b!18036 () Bool)

(assert (=> b!18036 (= e!11513 tp_is_empty!903)))

(declare-fun array_inv!341 (array!1005) Bool)

(declare-fun array_inv!342 (array!1003) Bool)

(assert (=> b!18037 (= e!11509 (and tp!3108 tp_is_empty!903 (array_inv!341 (_keys!3081 (v!1461 (underlying!56 thiss!848)))) (array_inv!342 (_values!1653 (v!1461 (underlying!56 thiss!848)))) e!11504))))

(declare-fun mapIsEmpty!789 () Bool)

(assert (=> mapIsEmpty!789 mapRes!789))

(declare-fun b!18038 () Bool)

(assert (=> b!18038 (= e!11505 e!11511)))

(declare-fun res!12711 () Bool)

(assert (=> b!18038 (=> (not res!12711) (not e!11511))))

(assert (=> b!18038 (= res!12711 (not (_1!382 lt!4662)))))

(assert (=> b!18038 (= lt!4662 e!11506)))

(declare-fun c!1813 () Bool)

(declare-fun imbalanced!23 (LongMap!90) Bool)

(assert (=> b!18038 (= c!1813 (imbalanced!23 thiss!848))))

(assert (= (and start!3030 res!12710) b!18038))

(assert (= (and b!18038 c!1813) b!18029))

(assert (= (and b!18038 (not c!1813)) b!18034))

(assert (= (and b!18038 res!12711) b!18033))

(assert (= (and b!18030 condMapEmpty!789) mapIsEmpty!789))

(assert (= (and b!18030 (not condMapEmpty!789)) mapNonEmpty!789))

(get-info :version)

(assert (= (and mapNonEmpty!789 ((_ is ValueCellFull!252) mapValue!789)) b!18035))

(assert (= (and b!18030 ((_ is ValueCellFull!252) mapDefault!789)) b!18036))

(assert (= b!18037 b!18030))

(assert (= b!18032 b!18037))

(assert (= b!18031 b!18032))

(assert (= start!3030 b!18031))

(declare-fun m!12569 () Bool)

(assert (=> b!18037 m!12569))

(declare-fun m!12571 () Bool)

(assert (=> b!18037 m!12571))

(declare-fun m!12573 () Bool)

(assert (=> b!18033 m!12573))

(declare-fun m!12575 () Bool)

(assert (=> start!3030 m!12575))

(declare-fun m!12577 () Bool)

(assert (=> mapNonEmpty!789 m!12577))

(declare-fun m!12579 () Bool)

(assert (=> b!18038 m!12579))

(declare-fun m!12581 () Bool)

(assert (=> b!18029 m!12581))

(check-sat (not b!18037) (not b!18029) (not b_next!639) tp_is_empty!903 (not mapNonEmpty!789) (not b!18038) (not b!18033) (not start!3030) b_and!1289)
(check-sat b_and!1289 (not b_next!639))
