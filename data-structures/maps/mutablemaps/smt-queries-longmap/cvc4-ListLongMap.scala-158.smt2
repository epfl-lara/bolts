; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3020 () Bool)

(assert start!3020)

(declare-fun b!17881 () Bool)

(declare-fun b_free!629 () Bool)

(declare-fun b_next!629 () Bool)

(assert (=> b!17881 (= b_free!629 (not b_next!629))))

(declare-fun tp!3078 () Bool)

(declare-fun b_and!1279 () Bool)

(assert (=> b!17881 (= tp!3078 b_and!1279)))

(declare-fun b!17880 () Bool)

(declare-fun e!11357 () Bool)

(declare-fun e!11362 () Bool)

(assert (=> b!17880 (= e!11357 e!11362)))

(declare-fun res!12681 () Bool)

(assert (=> b!17880 (=> (not res!12681) (not e!11362))))

(declare-datatypes ((V!1015 0))(
  ( (V!1016 (val!473 Int)) )
))
(declare-datatypes ((ValueCell!247 0))(
  ( (ValueCellFull!247 (v!1450 V!1015)) (EmptyCell!247) )
))
(declare-datatypes ((array!983 0))(
  ( (array!984 (arr!473 (Array (_ BitVec 32) ValueCell!247)) (size!563 (_ BitVec 32))) )
))
(declare-datatypes ((array!985 0))(
  ( (array!986 (arr!474 (Array (_ BitVec 32) (_ BitVec 64))) (size!564 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!80 0))(
  ( (LongMapFixedSize!81 (defaultEntry!1651 Int) (mask!4576 (_ BitVec 32)) (extraKeys!1564 (_ BitVec 32)) (zeroValue!1587 V!1015) (minValue!1587 V!1015) (_size!72 (_ BitVec 32)) (_keys!3076 array!985) (_values!1648 array!983) (_vacant!72 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!80 0))(
  ( (Cell!81 (v!1451 LongMapFixedSize!80)) )
))
(declare-datatypes ((LongMap!80 0))(
  ( (LongMap!81 (underlying!51 Cell!80)) )
))
(declare-datatypes ((tuple2!752 0))(
  ( (tuple2!753 (_1!377 Bool) (_2!377 LongMap!80)) )
))
(declare-fun lt!4631 () tuple2!752)

(assert (=> b!17880 (= res!12681 (not (_1!377 lt!4631)))))

(declare-fun e!11360 () tuple2!752)

(assert (=> b!17880 (= lt!4631 e!11360)))

(declare-fun c!1798 () Bool)

(declare-fun thiss!848 () LongMap!80)

(declare-fun imbalanced!19 (LongMap!80) Bool)

(assert (=> b!17880 (= c!1798 (imbalanced!19 thiss!848))))

(declare-fun e!11363 () Bool)

(declare-fun tp_is_empty!893 () Bool)

(declare-fun e!11358 () Bool)

(declare-fun array_inv!333 (array!985) Bool)

(declare-fun array_inv!334 (array!983) Bool)

(assert (=> b!17881 (= e!11363 (and tp!3078 tp_is_empty!893 (array_inv!333 (_keys!3076 (v!1451 (underlying!51 thiss!848)))) (array_inv!334 (_values!1648 (v!1451 (underlying!51 thiss!848)))) e!11358))))

(declare-fun mapNonEmpty!774 () Bool)

(declare-fun mapRes!774 () Bool)

(declare-fun tp!3077 () Bool)

(declare-fun e!11354 () Bool)

(assert (=> mapNonEmpty!774 (= mapRes!774 (and tp!3077 e!11354))))

(declare-fun mapKey!774 () (_ BitVec 32))

(declare-fun mapValue!774 () ValueCell!247)

(declare-fun mapRest!774 () (Array (_ BitVec 32) ValueCell!247))

(assert (=> mapNonEmpty!774 (= (arr!473 (_values!1648 (v!1451 (underlying!51 thiss!848)))) (store mapRest!774 mapKey!774 mapValue!774))))

(declare-fun b!17882 () Bool)

(declare-fun e!11355 () Bool)

(assert (=> b!17882 (= e!11358 (and e!11355 mapRes!774))))

(declare-fun condMapEmpty!774 () Bool)

(declare-fun mapDefault!774 () ValueCell!247)

