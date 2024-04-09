; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89160 () Bool)

(assert start!89160)

(declare-fun b!1021716 () Bool)

(declare-fun b_free!20165 () Bool)

(declare-fun b_next!20165 () Bool)

(assert (=> b!1021716 (= b_free!20165 (not b_next!20165))))

(declare-fun tp!71531 () Bool)

(declare-fun b_and!32381 () Bool)

(assert (=> b!1021716 (= tp!71531 b_and!32381)))

(declare-fun mapIsEmpty!37245 () Bool)

(declare-fun mapRes!37245 () Bool)

(assert (=> mapIsEmpty!37245 mapRes!37245))

(declare-fun b!1021713 () Bool)

(declare-fun res!684619 () Bool)

(declare-fun e!575533 () Bool)

(assert (=> b!1021713 (=> (not res!684619) (not e!575533))))

(declare-datatypes ((V!36719 0))(
  ( (V!36720 (val!11993 Int)) )
))
(declare-datatypes ((ValueCell!11239 0))(
  ( (ValueCellFull!11239 (v!14563 V!36719)) (EmptyCell!11239) )
))
(declare-datatypes ((array!63798 0))(
  ( (array!63799 (arr!30707 (Array (_ BitVec 32) (_ BitVec 64))) (size!31219 (_ BitVec 32))) )
))
(declare-datatypes ((array!63800 0))(
  ( (array!63801 (arr!30708 (Array (_ BitVec 32) ValueCell!11239)) (size!31220 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5072 0))(
  ( (LongMapFixedSize!5073 (defaultEntry!5888 Int) (mask!29460 (_ BitVec 32)) (extraKeys!5620 (_ BitVec 32)) (zeroValue!5724 V!36719) (minValue!5724 V!36719) (_size!2591 (_ BitVec 32)) (_keys!11030 array!63798) (_values!5911 array!63800) (_vacant!2591 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5072)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1021713 (= res!684619 (validMask!0 (mask!29460 thiss!1427)))))

(declare-fun b!1021714 () Bool)

(declare-fun res!684620 () Bool)

(assert (=> b!1021714 (=> (not res!684620) (not e!575533))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1021714 (= res!684620 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1021715 () Bool)

(declare-fun res!684621 () Bool)

(assert (=> b!1021715 (=> (not res!684621) (not e!575533))))

(assert (=> b!1021715 (= res!684621 (and (= (size!31220 (_values!5911 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29460 thiss!1427))) (= (size!31219 (_keys!11030 thiss!1427)) (size!31220 (_values!5911 thiss!1427))) (bvsge (mask!29460 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5620 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5620 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5620 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5620 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5620 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5620 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5620 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!37245 () Bool)

(declare-fun tp!71530 () Bool)

(declare-fun e!575531 () Bool)

(assert (=> mapNonEmpty!37245 (= mapRes!37245 (and tp!71530 e!575531))))

(declare-fun mapValue!37245 () ValueCell!11239)

(declare-fun mapKey!37245 () (_ BitVec 32))

(declare-fun mapRest!37245 () (Array (_ BitVec 32) ValueCell!11239))

(assert (=> mapNonEmpty!37245 (= (arr!30708 (_values!5911 thiss!1427)) (store mapRest!37245 mapKey!37245 mapValue!37245))))

(declare-fun tp_is_empty!23885 () Bool)

(declare-fun e!575528 () Bool)

(declare-fun e!575532 () Bool)

(declare-fun array_inv!23677 (array!63798) Bool)

(declare-fun array_inv!23678 (array!63800) Bool)

(assert (=> b!1021716 (= e!575528 (and tp!71531 tp_is_empty!23885 (array_inv!23677 (_keys!11030 thiss!1427)) (array_inv!23678 (_values!5911 thiss!1427)) e!575532))))

(declare-fun b!1021717 () Bool)

(declare-fun e!575529 () Bool)

(assert (=> b!1021717 (= e!575532 (and e!575529 mapRes!37245))))

(declare-fun condMapEmpty!37245 () Bool)

(declare-fun mapDefault!37245 () ValueCell!11239)

