; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3028 () Bool)

(assert start!3028)

(declare-fun b!18002 () Bool)

(declare-fun b_free!637 () Bool)

(declare-fun b_next!637 () Bool)

(assert (=> b!18002 (= b_free!637 (not b_next!637))))

(declare-fun tp!3102 () Bool)

(declare-fun b_and!1287 () Bool)

(assert (=> b!18002 (= tp!3102 b_and!1287)))

(declare-fun res!12705 () Bool)

(declare-fun e!11477 () Bool)

(assert (=> start!3028 (=> (not res!12705) (not e!11477))))

(declare-datatypes ((V!1027 0))(
  ( (V!1028 (val!477 Int)) )
))
(declare-datatypes ((ValueCell!251 0))(
  ( (ValueCellFull!251 (v!1458 V!1027)) (EmptyCell!251) )
))
(declare-datatypes ((array!999 0))(
  ( (array!1000 (arr!481 (Array (_ BitVec 32) ValueCell!251)) (size!571 (_ BitVec 32))) )
))
(declare-datatypes ((array!1001 0))(
  ( (array!1002 (arr!482 (Array (_ BitVec 32) (_ BitVec 64))) (size!572 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!88 0))(
  ( (LongMapFixedSize!89 (defaultEntry!1655 Int) (mask!4584 (_ BitVec 32)) (extraKeys!1568 (_ BitVec 32)) (zeroValue!1591 V!1027) (minValue!1591 V!1027) (_size!76 (_ BitVec 32)) (_keys!3080 array!1001) (_values!1652 array!999) (_vacant!76 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!88 0))(
  ( (Cell!89 (v!1459 LongMapFixedSize!88)) )
))
(declare-datatypes ((LongMap!88 0))(
  ( (LongMap!89 (underlying!55 Cell!88)) )
))
(declare-fun thiss!848 () LongMap!88)

(declare-fun valid!46 (LongMap!88) Bool)

(assert (=> start!3028 (= res!12705 (valid!46 thiss!848))))

(assert (=> start!3028 e!11477))

(declare-fun e!11478 () Bool)

(assert (=> start!3028 e!11478))

(declare-fun mapNonEmpty!786 () Bool)

(declare-fun mapRes!786 () Bool)

(declare-fun tp!3101 () Bool)

(declare-fun e!11481 () Bool)

(assert (=> mapNonEmpty!786 (= mapRes!786 (and tp!3101 e!11481))))

(declare-fun mapKey!786 () (_ BitVec 32))

(declare-fun mapValue!786 () ValueCell!251)

(declare-fun mapRest!786 () (Array (_ BitVec 32) ValueCell!251))

(assert (=> mapNonEmpty!786 (= (arr!481 (_values!1652 (v!1459 (underlying!55 thiss!848)))) (store mapRest!786 mapKey!786 mapValue!786))))

(declare-fun b!17999 () Bool)

(declare-fun e!11482 () Bool)

(assert (=> b!17999 (= e!11477 e!11482)))

(declare-fun res!12704 () Bool)

(assert (=> b!17999 (=> (not res!12704) (not e!11482))))

(declare-datatypes ((tuple2!760 0))(
  ( (tuple2!761 (_1!381 Bool) (_2!381 LongMap!88)) )
))
(declare-fun lt!4655 () tuple2!760)

(assert (=> b!17999 (= res!12704 (not (_1!381 lt!4655)))))

(declare-fun e!11483 () tuple2!760)

(assert (=> b!17999 (= lt!4655 e!11483)))

(declare-fun c!1810 () Bool)

(declare-fun imbalanced!22 (LongMap!88) Bool)

(assert (=> b!17999 (= c!1810 (imbalanced!22 thiss!848))))

(declare-fun b!18000 () Bool)

(assert (=> b!18000 (= e!11482 false)))

(declare-fun lt!4656 () Bool)

(assert (=> b!18000 (= lt!4656 (valid!46 (_2!381 lt!4655)))))

(declare-fun b!18001 () Bool)

(declare-fun e!11479 () Bool)

(assert (=> b!18001 (= e!11478 e!11479)))

(declare-fun tp_is_empty!901 () Bool)

(declare-fun e!11476 () Bool)

(declare-fun e!11475 () Bool)

(declare-fun array_inv!339 (array!1001) Bool)

(declare-fun array_inv!340 (array!999) Bool)

(assert (=> b!18002 (= e!11475 (and tp!3102 tp_is_empty!901 (array_inv!339 (_keys!3080 (v!1459 (underlying!55 thiss!848)))) (array_inv!340 (_values!1652 (v!1459 (underlying!55 thiss!848)))) e!11476))))

(declare-fun b!18003 () Bool)

(assert (=> b!18003 (= e!11481 tp_is_empty!901)))

(declare-fun mapIsEmpty!786 () Bool)

(assert (=> mapIsEmpty!786 mapRes!786))

(declare-fun b!18004 () Bool)

(assert (=> b!18004 (= e!11483 (tuple2!761 true thiss!848))))

(declare-fun b!18005 () Bool)

(assert (=> b!18005 (= e!11479 e!11475)))

(declare-fun b!18006 () Bool)

(declare-fun e!11474 () Bool)

(assert (=> b!18006 (= e!11474 tp_is_empty!901)))

(declare-fun b!18007 () Bool)

(assert (=> b!18007 (= e!11476 (and e!11474 mapRes!786))))

(declare-fun condMapEmpty!786 () Bool)

(declare-fun mapDefault!786 () ValueCell!251)

