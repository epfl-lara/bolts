; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89184 () Bool)

(assert start!89184)

(declare-fun b!1022043 () Bool)

(declare-fun b_free!20189 () Bool)

(declare-fun b_next!20189 () Bool)

(assert (=> b!1022043 (= b_free!20189 (not b_next!20189))))

(declare-fun tp!71603 () Bool)

(declare-fun b_and!32405 () Bool)

(assert (=> b!1022043 (= tp!71603 b_and!32405)))

(declare-fun b!1022036 () Bool)

(declare-fun res!684797 () Bool)

(declare-fun e!575744 () Bool)

(assert (=> b!1022036 (=> (not res!684797) (not e!575744))))

(declare-datatypes ((V!36751 0))(
  ( (V!36752 (val!12005 Int)) )
))
(declare-datatypes ((ValueCell!11251 0))(
  ( (ValueCellFull!11251 (v!14575 V!36751)) (EmptyCell!11251) )
))
(declare-datatypes ((array!63846 0))(
  ( (array!63847 (arr!30731 (Array (_ BitVec 32) (_ BitVec 64))) (size!31243 (_ BitVec 32))) )
))
(declare-datatypes ((array!63848 0))(
  ( (array!63849 (arr!30732 (Array (_ BitVec 32) ValueCell!11251)) (size!31244 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5096 0))(
  ( (LongMapFixedSize!5097 (defaultEntry!5900 Int) (mask!29480 (_ BitVec 32)) (extraKeys!5632 (_ BitVec 32)) (zeroValue!5736 V!36751) (minValue!5736 V!36751) (_size!2603 (_ BitVec 32)) (_keys!11042 array!63846) (_values!5923 array!63848) (_vacant!2603 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5096)

(assert (=> b!1022036 (= res!684797 (and (= (size!31244 (_values!5923 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29480 thiss!1427))) (= (size!31243 (_keys!11042 thiss!1427)) (size!31244 (_values!5923 thiss!1427))) (bvsge (mask!29480 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5632 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5632 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5632 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5632 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5632 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5632 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5632 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1022037 () Bool)

(declare-fun res!684801 () Bool)

(assert (=> b!1022037 (=> (not res!684801) (not e!575744))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022037 (= res!684801 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1022038 () Bool)

(declare-fun e!575746 () Bool)

(declare-fun tp_is_empty!23909 () Bool)

(assert (=> b!1022038 (= e!575746 tp_is_empty!23909)))

(declare-fun b!1022039 () Bool)

(declare-fun res!684800 () Bool)

(assert (=> b!1022039 (=> (not res!684800) (not e!575744))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63846 (_ BitVec 32)) Bool)

(assert (=> b!1022039 (= res!684800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11042 thiss!1427) (mask!29480 thiss!1427)))))

(declare-fun mapNonEmpty!37281 () Bool)

(declare-fun mapRes!37281 () Bool)

(declare-fun tp!71602 () Bool)

(declare-fun e!575747 () Bool)

(assert (=> mapNonEmpty!37281 (= mapRes!37281 (and tp!71602 e!575747))))

(declare-fun mapKey!37281 () (_ BitVec 32))

(declare-fun mapValue!37281 () ValueCell!11251)

(declare-fun mapRest!37281 () (Array (_ BitVec 32) ValueCell!11251))

(assert (=> mapNonEmpty!37281 (= (arr!30732 (_values!5923 thiss!1427)) (store mapRest!37281 mapKey!37281 mapValue!37281))))

(declare-fun b!1022041 () Bool)

(declare-fun e!575749 () Bool)

(assert (=> b!1022041 (= e!575749 (and e!575746 mapRes!37281))))

(declare-fun condMapEmpty!37281 () Bool)

(declare-fun mapDefault!37281 () ValueCell!11251)

