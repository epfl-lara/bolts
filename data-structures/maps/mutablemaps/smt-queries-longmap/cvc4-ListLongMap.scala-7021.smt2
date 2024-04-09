; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89178 () Bool)

(assert start!89178)

(declare-fun b!1021955 () Bool)

(declare-fun b_free!20183 () Bool)

(declare-fun b_next!20183 () Bool)

(assert (=> b!1021955 (= b_free!20183 (not b_next!20183))))

(declare-fun tp!71584 () Bool)

(declare-fun b_and!32399 () Bool)

(assert (=> b!1021955 (= tp!71584 b_and!32399)))

(declare-fun tp_is_empty!23903 () Bool)

(declare-datatypes ((V!36743 0))(
  ( (V!36744 (val!12002 Int)) )
))
(declare-datatypes ((ValueCell!11248 0))(
  ( (ValueCellFull!11248 (v!14572 V!36743)) (EmptyCell!11248) )
))
(declare-datatypes ((array!63834 0))(
  ( (array!63835 (arr!30725 (Array (_ BitVec 32) (_ BitVec 64))) (size!31237 (_ BitVec 32))) )
))
(declare-datatypes ((array!63836 0))(
  ( (array!63837 (arr!30726 (Array (_ BitVec 32) ValueCell!11248)) (size!31238 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5090 0))(
  ( (LongMapFixedSize!5091 (defaultEntry!5897 Int) (mask!29475 (_ BitVec 32)) (extraKeys!5629 (_ BitVec 32)) (zeroValue!5733 V!36743) (minValue!5733 V!36743) (_size!2600 (_ BitVec 32)) (_keys!11039 array!63834) (_values!5920 array!63836) (_vacant!2600 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5090)

(declare-fun e!575690 () Bool)

(declare-fun e!575691 () Bool)

(declare-fun array_inv!23687 (array!63834) Bool)

(declare-fun array_inv!23688 (array!63836) Bool)

(assert (=> b!1021955 (= e!575691 (and tp!71584 tp_is_empty!23903 (array_inv!23687 (_keys!11039 thiss!1427)) (array_inv!23688 (_values!5920 thiss!1427)) e!575690))))

(declare-fun mapNonEmpty!37272 () Bool)

(declare-fun mapRes!37272 () Bool)

(declare-fun tp!71585 () Bool)

(declare-fun e!575695 () Bool)

(assert (=> mapNonEmpty!37272 (= mapRes!37272 (and tp!71585 e!575695))))

(declare-fun mapValue!37272 () ValueCell!11248)

(declare-fun mapRest!37272 () (Array (_ BitVec 32) ValueCell!11248))

(declare-fun mapKey!37272 () (_ BitVec 32))

(assert (=> mapNonEmpty!37272 (= (arr!30726 (_values!5920 thiss!1427)) (store mapRest!37272 mapKey!37272 mapValue!37272))))

(declare-fun b!1021956 () Bool)

(declare-fun res!684752 () Bool)

(declare-fun e!575692 () Bool)

(assert (=> b!1021956 (=> (not res!684752) (not e!575692))))

(assert (=> b!1021956 (= res!684752 (and (= (size!31238 (_values!5920 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29475 thiss!1427))) (= (size!31237 (_keys!11039 thiss!1427)) (size!31238 (_values!5920 thiss!1427))) (bvsge (mask!29475 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5629 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5629 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5629 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5629 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5629 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5629 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5629 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1021957 () Bool)

(declare-fun res!684755 () Bool)

(assert (=> b!1021957 (=> (not res!684755) (not e!575692))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1021957 (= res!684755 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1021958 () Bool)

(assert (=> b!1021958 (= e!575695 tp_is_empty!23903)))

(declare-fun res!684756 () Bool)

(assert (=> start!89178 (=> (not res!684756) (not e!575692))))

(declare-fun valid!1904 (LongMapFixedSize!5090) Bool)

(assert (=> start!89178 (= res!684756 (valid!1904 thiss!1427))))

(assert (=> start!89178 e!575692))

(assert (=> start!89178 e!575691))

(assert (=> start!89178 true))

(declare-fun mapIsEmpty!37272 () Bool)

(assert (=> mapIsEmpty!37272 mapRes!37272))

(declare-fun b!1021959 () Bool)

(declare-fun e!575694 () Bool)

(assert (=> b!1021959 (= e!575690 (and e!575694 mapRes!37272))))

(declare-fun condMapEmpty!37272 () Bool)

(declare-fun mapDefault!37272 () ValueCell!11248)

