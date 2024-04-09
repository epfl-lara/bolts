; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89258 () Bool)

(assert start!89258)

(declare-fun b!1022956 () Bool)

(declare-fun b_free!20263 () Bool)

(declare-fun b_next!20263 () Bool)

(assert (=> b!1022956 (= b_free!20263 (not b_next!20263))))

(declare-fun tp!71825 () Bool)

(declare-fun b_and!32503 () Bool)

(assert (=> b!1022956 (= tp!71825 b_and!32503)))

(declare-fun b!1022951 () Bool)

(declare-fun e!576415 () Bool)

(declare-fun tp_is_empty!23983 () Bool)

(assert (=> b!1022951 (= e!576415 tp_is_empty!23983)))

(declare-fun mapNonEmpty!37392 () Bool)

(declare-fun mapRes!37392 () Bool)

(declare-fun tp!71824 () Bool)

(declare-fun e!576411 () Bool)

(assert (=> mapNonEmpty!37392 (= mapRes!37392 (and tp!71824 e!576411))))

(declare-datatypes ((V!36851 0))(
  ( (V!36852 (val!12042 Int)) )
))
(declare-datatypes ((ValueCell!11288 0))(
  ( (ValueCellFull!11288 (v!14612 V!36851)) (EmptyCell!11288) )
))
(declare-fun mapRest!37392 () (Array (_ BitVec 32) ValueCell!11288))

(declare-fun mapValue!37392 () ValueCell!11288)

(declare-datatypes ((array!63994 0))(
  ( (array!63995 (arr!30805 (Array (_ BitVec 32) (_ BitVec 64))) (size!31317 (_ BitVec 32))) )
))
(declare-datatypes ((array!63996 0))(
  ( (array!63997 (arr!30806 (Array (_ BitVec 32) ValueCell!11288)) (size!31318 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5170 0))(
  ( (LongMapFixedSize!5171 (defaultEntry!5937 Int) (mask!29543 (_ BitVec 32)) (extraKeys!5669 (_ BitVec 32)) (zeroValue!5773 V!36851) (minValue!5773 V!36851) (_size!2640 (_ BitVec 32)) (_keys!11079 array!63994) (_values!5960 array!63996) (_vacant!2640 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5170)

(declare-fun mapKey!37392 () (_ BitVec 32))

(assert (=> mapNonEmpty!37392 (= (arr!30806 (_values!5960 thiss!1427)) (store mapRest!37392 mapKey!37392 mapValue!37392))))

(declare-fun b!1022952 () Bool)

(declare-fun res!685248 () Bool)

(declare-fun e!576412 () Bool)

(assert (=> b!1022952 (=> (not res!685248) (not e!576412))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022952 (= res!685248 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!37392 () Bool)

(assert (=> mapIsEmpty!37392 mapRes!37392))

(declare-fun b!1022953 () Bool)

(assert (=> b!1022953 (= e!576411 tp_is_empty!23983)))

(declare-fun b!1022954 () Bool)

(declare-fun res!685246 () Bool)

(assert (=> b!1022954 (=> (not res!685246) (not e!576412))))

(assert (=> b!1022954 (= res!685246 (and (= (size!31318 (_values!5960 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29543 thiss!1427))) (= (size!31317 (_keys!11079 thiss!1427)) (size!31318 (_values!5960 thiss!1427))) (bvsge (mask!29543 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5669 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5669 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5669 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5669 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5669 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5669 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5669 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!576410 () Bool)

(declare-fun e!576414 () Bool)

(declare-fun array_inv!23743 (array!63994) Bool)

(declare-fun array_inv!23744 (array!63996) Bool)

(assert (=> b!1022956 (= e!576414 (and tp!71825 tp_is_empty!23983 (array_inv!23743 (_keys!11079 thiss!1427)) (array_inv!23744 (_values!5960 thiss!1427)) e!576410))))

(declare-fun b!1022957 () Bool)

(assert (=> b!1022957 (= e!576412 false)))

(declare-fun lt!450337 () Bool)

(declare-datatypes ((List!21807 0))(
  ( (Nil!21804) (Cons!21803 (h!23001 (_ BitVec 64)) (t!30852 List!21807)) )
))
(declare-fun arrayNoDuplicates!0 (array!63994 (_ BitVec 32) List!21807) Bool)

(assert (=> b!1022957 (= lt!450337 (arrayNoDuplicates!0 (_keys!11079 thiss!1427) #b00000000000000000000000000000000 Nil!21804))))

(declare-fun b!1022958 () Bool)

(declare-fun res!685245 () Bool)

(assert (=> b!1022958 (=> (not res!685245) (not e!576412))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63994 (_ BitVec 32)) Bool)

(assert (=> b!1022958 (= res!685245 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11079 thiss!1427) (mask!29543 thiss!1427)))))

(declare-fun b!1022959 () Bool)

(assert (=> b!1022959 (= e!576410 (and e!576415 mapRes!37392))))

(declare-fun condMapEmpty!37392 () Bool)

(declare-fun mapDefault!37392 () ValueCell!11288)

