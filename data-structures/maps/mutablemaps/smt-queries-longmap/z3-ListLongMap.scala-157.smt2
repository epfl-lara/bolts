; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3012 () Bool)

(assert start!3012)

(declare-fun b!17768 () Bool)

(declare-fun b_free!621 () Bool)

(declare-fun b_next!621 () Bool)

(assert (=> b!17768 (= b_free!621 (not b_next!621))))

(declare-fun tp!3053 () Bool)

(declare-fun b_and!1271 () Bool)

(assert (=> b!17768 (= tp!3053 b_and!1271)))

(declare-fun mapIsEmpty!762 () Bool)

(declare-fun mapRes!762 () Bool)

(assert (=> mapIsEmpty!762 mapRes!762))

(declare-fun b!17759 () Bool)

(declare-datatypes ((V!1005 0))(
  ( (V!1006 (val!469 Int)) )
))
(declare-datatypes ((ValueCell!243 0))(
  ( (ValueCellFull!243 (v!1442 V!1005)) (EmptyCell!243) )
))
(declare-datatypes ((array!967 0))(
  ( (array!968 (arr!465 (Array (_ BitVec 32) ValueCell!243)) (size!555 (_ BitVec 32))) )
))
(declare-datatypes ((array!969 0))(
  ( (array!970 (arr!466 (Array (_ BitVec 32) (_ BitVec 64))) (size!556 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!72 0))(
  ( (LongMapFixedSize!73 (defaultEntry!1647 Int) (mask!4570 (_ BitVec 32)) (extraKeys!1560 (_ BitVec 32)) (zeroValue!1583 V!1005) (minValue!1583 V!1005) (_size!68 (_ BitVec 32)) (_keys!3072 array!969) (_values!1644 array!967) (_vacant!68 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!72 0))(
  ( (Cell!73 (v!1443 LongMapFixedSize!72)) )
))
(declare-datatypes ((LongMap!72 0))(
  ( (LongMap!73 (underlying!47 Cell!72)) )
))
(declare-datatypes ((tuple2!744 0))(
  ( (tuple2!745 (_1!373 Bool) (_2!373 LongMap!72)) )
))
(declare-fun e!11236 () tuple2!744)

(declare-fun thiss!848 () LongMap!72)

(assert (=> b!17759 (= e!11236 (tuple2!745 true thiss!848))))

(declare-fun b!17760 () Bool)

(declare-fun e!11243 () Bool)

(declare-fun e!11239 () Bool)

(assert (=> b!17760 (= e!11243 e!11239)))

(declare-fun b!17761 () Bool)

(declare-fun e!11235 () Bool)

(declare-fun e!11237 () Bool)

(assert (=> b!17761 (= e!11235 e!11237)))

(declare-fun res!12656 () Bool)

(assert (=> b!17761 (=> (not res!12656) (not e!11237))))

(declare-fun lt!4607 () tuple2!744)

(assert (=> b!17761 (= res!12656 (not (_1!373 lt!4607)))))

(assert (=> b!17761 (= lt!4607 e!11236)))

(declare-fun c!1786 () Bool)

(declare-fun imbalanced!17 (LongMap!72) Bool)

(assert (=> b!17761 (= c!1786 (imbalanced!17 thiss!848))))

(declare-fun b!17763 () Bool)

(declare-fun e!11242 () Bool)

(declare-fun tp_is_empty!885 () Bool)

(assert (=> b!17763 (= e!11242 tp_is_empty!885)))

(declare-fun b!17764 () Bool)

(assert (=> b!17764 (= e!11237 false)))

(declare-fun lt!4608 () Bool)

(declare-fun valid!39 (LongMap!72) Bool)

(assert (=> b!17764 (= lt!4608 (valid!39 (_2!373 lt!4607)))))

(declare-fun mapNonEmpty!762 () Bool)

(declare-fun tp!3054 () Bool)

(assert (=> mapNonEmpty!762 (= mapRes!762 (and tp!3054 e!11242))))

(declare-fun mapRest!762 () (Array (_ BitVec 32) ValueCell!243))

(declare-fun mapKey!762 () (_ BitVec 32))

(declare-fun mapValue!762 () ValueCell!243)

(assert (=> mapNonEmpty!762 (= (arr!465 (_values!1644 (v!1443 (underlying!47 thiss!848)))) (store mapRest!762 mapKey!762 mapValue!762))))

(declare-fun b!17765 () Bool)

(declare-fun e!11234 () Bool)

(assert (=> b!17765 (= e!11239 e!11234)))

(declare-fun b!17766 () Bool)

(declare-fun e!11238 () Bool)

(assert (=> b!17766 (= e!11238 tp_is_empty!885)))

(declare-fun b!17762 () Bool)

(declare-fun repack!13 (LongMap!72) tuple2!744)

(assert (=> b!17762 (= e!11236 (repack!13 thiss!848))))

(declare-fun res!12657 () Bool)

(assert (=> start!3012 (=> (not res!12657) (not e!11235))))

(assert (=> start!3012 (= res!12657 (valid!39 thiss!848))))

(assert (=> start!3012 e!11235))

(assert (=> start!3012 e!11243))

(declare-fun b!17767 () Bool)

(declare-fun e!11240 () Bool)

(assert (=> b!17767 (= e!11240 (and e!11238 mapRes!762))))

(declare-fun condMapEmpty!762 () Bool)

(declare-fun mapDefault!762 () ValueCell!243)

(assert (=> b!17767 (= condMapEmpty!762 (= (arr!465 (_values!1644 (v!1443 (underlying!47 thiss!848)))) ((as const (Array (_ BitVec 32) ValueCell!243)) mapDefault!762)))))

(declare-fun array_inv!327 (array!969) Bool)

(declare-fun array_inv!328 (array!967) Bool)

(assert (=> b!17768 (= e!11234 (and tp!3053 tp_is_empty!885 (array_inv!327 (_keys!3072 (v!1443 (underlying!47 thiss!848)))) (array_inv!328 (_values!1644 (v!1443 (underlying!47 thiss!848)))) e!11240))))

(assert (= (and start!3012 res!12657) b!17761))

(assert (= (and b!17761 c!1786) b!17762))

(assert (= (and b!17761 (not c!1786)) b!17759))

(assert (= (and b!17761 res!12656) b!17764))

(assert (= (and b!17767 condMapEmpty!762) mapIsEmpty!762))

(assert (= (and b!17767 (not condMapEmpty!762)) mapNonEmpty!762))

(get-info :version)

(assert (= (and mapNonEmpty!762 ((_ is ValueCellFull!243) mapValue!762)) b!17763))

(assert (= (and b!17767 ((_ is ValueCellFull!243) mapDefault!762)) b!17766))

(assert (= b!17768 b!17767))

(assert (= b!17765 b!17768))

(assert (= b!17760 b!17765))

(assert (= start!3012 b!17760))

(declare-fun m!12443 () Bool)

(assert (=> b!17768 m!12443))

(declare-fun m!12445 () Bool)

(assert (=> b!17768 m!12445))

(declare-fun m!12447 () Bool)

(assert (=> start!3012 m!12447))

(declare-fun m!12449 () Bool)

(assert (=> b!17762 m!12449))

(declare-fun m!12451 () Bool)

(assert (=> b!17761 m!12451))

(declare-fun m!12453 () Bool)

(assert (=> b!17764 m!12453))

(declare-fun m!12455 () Bool)

(assert (=> mapNonEmpty!762 m!12455))

(check-sat b_and!1271 (not mapNonEmpty!762) (not b_next!621) tp_is_empty!885 (not b!17768) (not b!17761) (not b!17762) (not start!3012) (not b!17764))
(check-sat b_and!1271 (not b_next!621))
