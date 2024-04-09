; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3008 () Bool)

(assert start!3008)

(declare-fun b!17704 () Bool)

(declare-fun b_free!617 () Bool)

(declare-fun b_next!617 () Bool)

(assert (=> b!17704 (= b_free!617 (not b_next!617))))

(declare-fun tp!3041 () Bool)

(declare-fun b_and!1267 () Bool)

(assert (=> b!17704 (= tp!3041 b_and!1267)))

(declare-fun b!17699 () Bool)

(declare-fun e!11181 () Bool)

(declare-fun e!11177 () Bool)

(assert (=> b!17699 (= e!11181 e!11177)))

(declare-fun b!17700 () Bool)

(declare-datatypes ((V!999 0))(
  ( (V!1000 (val!467 Int)) )
))
(declare-datatypes ((ValueCell!241 0))(
  ( (ValueCellFull!241 (v!1438 V!999)) (EmptyCell!241) )
))
(declare-datatypes ((array!959 0))(
  ( (array!960 (arr!461 (Array (_ BitVec 32) ValueCell!241)) (size!551 (_ BitVec 32))) )
))
(declare-datatypes ((array!961 0))(
  ( (array!962 (arr!462 (Array (_ BitVec 32) (_ BitVec 64))) (size!552 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!68 0))(
  ( (LongMapFixedSize!69 (defaultEntry!1645 Int) (mask!4566 (_ BitVec 32)) (extraKeys!1558 (_ BitVec 32)) (zeroValue!1581 V!999) (minValue!1581 V!999) (_size!66 (_ BitVec 32)) (_keys!3070 array!961) (_values!1642 array!959) (_vacant!66 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!68 0))(
  ( (Cell!69 (v!1439 LongMapFixedSize!68)) )
))
(declare-datatypes ((LongMap!68 0))(
  ( (LongMap!69 (underlying!45 Cell!68)) )
))
(declare-datatypes ((tuple2!738 0))(
  ( (tuple2!739 (_1!370 Bool) (_2!370 LongMap!68)) )
))
(declare-fun e!11178 () tuple2!738)

(declare-fun thiss!848 () LongMap!68)

(declare-fun repack!12 (LongMap!68) tuple2!738)

(assert (=> b!17700 (= e!11178 (repack!12 thiss!848))))

(declare-fun b!17701 () Bool)

(declare-fun e!11180 () Bool)

(declare-fun tp_is_empty!881 () Bool)

(assert (=> b!17701 (= e!11180 tp_is_empty!881)))

(declare-fun mapNonEmpty!756 () Bool)

(declare-fun mapRes!756 () Bool)

(declare-fun tp!3042 () Bool)

(assert (=> mapNonEmpty!756 (= mapRes!756 (and tp!3042 e!11180))))

(declare-fun mapKey!756 () (_ BitVec 32))

(declare-fun mapRest!756 () (Array (_ BitVec 32) ValueCell!241))

(declare-fun mapValue!756 () ValueCell!241)

(assert (=> mapNonEmpty!756 (= (arr!461 (_values!1642 (v!1439 (underlying!45 thiss!848)))) (store mapRest!756 mapKey!756 mapValue!756))))

(declare-fun b!17702 () Bool)

(assert (=> b!17702 (= e!11178 (tuple2!739 true thiss!848))))

(declare-fun b!17703 () Bool)

(declare-fun e!11174 () Bool)

(assert (=> b!17703 (= e!11174 false)))

(declare-fun key!682 () (_ BitVec 64))

(declare-fun lt!4595 () tuple2!738)

(declare-fun v!259 () V!999)

(declare-fun lt!4596 () Bool)

(declare-fun valid!37 (LongMap!68) Bool)

(declare-datatypes ((tuple2!740 0))(
  ( (tuple2!741 (_1!371 Bool) (_2!371 LongMapFixedSize!68)) )
))
(declare-fun update!10 (LongMapFixedSize!68 (_ BitVec 64) V!999) tuple2!740)

(assert (=> b!17703 (= lt!4596 (valid!37 (LongMap!69 (Cell!69 (_2!371 (update!10 (v!1439 (underlying!45 (_2!370 lt!4595))) key!682 v!259))))))))

(declare-fun e!11179 () Bool)

(declare-fun e!11176 () Bool)

(declare-fun array_inv!325 (array!961) Bool)

(declare-fun array_inv!326 (array!959) Bool)

(assert (=> b!17704 (= e!11179 (and tp!3041 tp_is_empty!881 (array_inv!325 (_keys!3070 (v!1439 (underlying!45 thiss!848)))) (array_inv!326 (_values!1642 (v!1439 (underlying!45 thiss!848)))) e!11176))))

(declare-fun b!17705 () Bool)

(declare-fun e!11182 () Bool)

(assert (=> b!17705 (= e!11182 e!11174)))

(declare-fun res!12644 () Bool)

(assert (=> b!17705 (=> (not res!12644) (not e!11174))))

(assert (=> b!17705 (= res!12644 (_1!370 lt!4595))))

(assert (=> b!17705 (= lt!4595 e!11178)))

(declare-fun c!1780 () Bool)

(declare-fun imbalanced!16 (LongMap!68) Bool)

(assert (=> b!17705 (= c!1780 (imbalanced!16 thiss!848))))

(declare-fun b!17706 () Bool)

(declare-fun e!11175 () Bool)

(assert (=> b!17706 (= e!11176 (and e!11175 mapRes!756))))

(declare-fun condMapEmpty!756 () Bool)

(declare-fun mapDefault!756 () ValueCell!241)

