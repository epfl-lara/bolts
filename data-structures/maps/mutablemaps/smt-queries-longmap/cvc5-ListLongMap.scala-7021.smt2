; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89174 () Bool)

(assert start!89174)

(declare-fun b!1021906 () Bool)

(declare-fun b_free!20179 () Bool)

(declare-fun b_next!20179 () Bool)

(assert (=> b!1021906 (= b_free!20179 (not b_next!20179))))

(declare-fun tp!71572 () Bool)

(declare-fun b_and!32395 () Bool)

(assert (=> b!1021906 (= tp!71572 b_and!32395)))

(declare-fun mapNonEmpty!37266 () Bool)

(declare-fun mapRes!37266 () Bool)

(declare-fun tp!71573 () Bool)

(declare-fun e!575656 () Bool)

(assert (=> mapNonEmpty!37266 (= mapRes!37266 (and tp!71573 e!575656))))

(declare-fun mapKey!37266 () (_ BitVec 32))

(declare-datatypes ((V!36739 0))(
  ( (V!36740 (val!12000 Int)) )
))
(declare-datatypes ((ValueCell!11246 0))(
  ( (ValueCellFull!11246 (v!14570 V!36739)) (EmptyCell!11246) )
))
(declare-fun mapValue!37266 () ValueCell!11246)

(declare-datatypes ((array!63826 0))(
  ( (array!63827 (arr!30721 (Array (_ BitVec 32) (_ BitVec 64))) (size!31233 (_ BitVec 32))) )
))
(declare-datatypes ((array!63828 0))(
  ( (array!63829 (arr!30722 (Array (_ BitVec 32) ValueCell!11246)) (size!31234 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5086 0))(
  ( (LongMapFixedSize!5087 (defaultEntry!5895 Int) (mask!29473 (_ BitVec 32)) (extraKeys!5627 (_ BitVec 32)) (zeroValue!5731 V!36739) (minValue!5731 V!36739) (_size!2598 (_ BitVec 32)) (_keys!11037 array!63826) (_values!5918 array!63828) (_vacant!2598 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5086)

(declare-fun mapRest!37266 () (Array (_ BitVec 32) ValueCell!11246))

(assert (=> mapNonEmpty!37266 (= (arr!30722 (_values!5918 thiss!1427)) (store mapRest!37266 mapKey!37266 mapValue!37266))))

(declare-fun b!1021901 () Bool)

(declare-fun res!684722 () Bool)

(declare-fun e!575658 () Bool)

(assert (=> b!1021901 (=> (not res!684722) (not e!575658))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1021901 (= res!684722 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1021902 () Bool)

(declare-fun e!575655 () Bool)

(declare-fun tp_is_empty!23899 () Bool)

(assert (=> b!1021902 (= e!575655 tp_is_empty!23899)))

(declare-fun b!1021903 () Bool)

(assert (=> b!1021903 (= e!575656 tp_is_empty!23899)))

(declare-fun b!1021904 () Bool)

(declare-fun res!684724 () Bool)

(assert (=> b!1021904 (=> (not res!684724) (not e!575658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63826 (_ BitVec 32)) Bool)

(assert (=> b!1021904 (= res!684724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11037 thiss!1427) (mask!29473 thiss!1427)))))

(declare-fun b!1021905 () Bool)

(declare-fun res!684726 () Bool)

(assert (=> b!1021905 (=> (not res!684726) (not e!575658))))

(assert (=> b!1021905 (= res!684726 (and (= (size!31234 (_values!5918 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29473 thiss!1427))) (= (size!31233 (_keys!11037 thiss!1427)) (size!31234 (_values!5918 thiss!1427))) (bvsge (mask!29473 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5627 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5627 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5627 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5627 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5627 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5627 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5627 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!575659 () Bool)

(declare-fun e!575657 () Bool)

(declare-fun array_inv!23683 (array!63826) Bool)

(declare-fun array_inv!23684 (array!63828) Bool)

(assert (=> b!1021906 (= e!575657 (and tp!71572 tp_is_empty!23899 (array_inv!23683 (_keys!11037 thiss!1427)) (array_inv!23684 (_values!5918 thiss!1427)) e!575659))))

(declare-fun b!1021907 () Bool)

(assert (=> b!1021907 (= e!575659 (and e!575655 mapRes!37266))))

(declare-fun condMapEmpty!37266 () Bool)

(declare-fun mapDefault!37266 () ValueCell!11246)

