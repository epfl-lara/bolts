; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89202 () Bool)

(assert start!89202)

(declare-fun b!1022287 () Bool)

(declare-fun b_free!20207 () Bool)

(declare-fun b_next!20207 () Bool)

(assert (=> b!1022287 (= b_free!20207 (not b_next!20207))))

(declare-fun tp!71656 () Bool)

(declare-fun b_and!32423 () Bool)

(assert (=> b!1022287 (= tp!71656 b_and!32423)))

(declare-fun b!1022280 () Bool)

(declare-fun e!575907 () Bool)

(declare-fun tp_is_empty!23927 () Bool)

(assert (=> b!1022280 (= e!575907 tp_is_empty!23927)))

(declare-fun mapIsEmpty!37308 () Bool)

(declare-fun mapRes!37308 () Bool)

(assert (=> mapIsEmpty!37308 mapRes!37308))

(declare-fun b!1022281 () Bool)

(declare-fun res!684934 () Bool)

(declare-fun e!575906 () Bool)

(assert (=> b!1022281 (=> (not res!684934) (not e!575906))))

(declare-datatypes ((V!36775 0))(
  ( (V!36776 (val!12014 Int)) )
))
(declare-datatypes ((ValueCell!11260 0))(
  ( (ValueCellFull!11260 (v!14584 V!36775)) (EmptyCell!11260) )
))
(declare-datatypes ((array!63882 0))(
  ( (array!63883 (arr!30749 (Array (_ BitVec 32) (_ BitVec 64))) (size!31261 (_ BitVec 32))) )
))
(declare-datatypes ((array!63884 0))(
  ( (array!63885 (arr!30750 (Array (_ BitVec 32) ValueCell!11260)) (size!31262 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5114 0))(
  ( (LongMapFixedSize!5115 (defaultEntry!5909 Int) (mask!29495 (_ BitVec 32)) (extraKeys!5641 (_ BitVec 32)) (zeroValue!5745 V!36775) (minValue!5745 V!36775) (_size!2612 (_ BitVec 32)) (_keys!11051 array!63882) (_values!5932 array!63884) (_vacant!2612 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5114)

(assert (=> b!1022281 (= res!684934 (and (= (size!31262 (_values!5932 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29495 thiss!1427))) (= (size!31261 (_keys!11051 thiss!1427)) (size!31262 (_values!5932 thiss!1427))) (bvsge (mask!29495 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5641 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5641 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5641 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5641 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5641 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5641 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5641 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1022282 () Bool)

(declare-fun res!684932 () Bool)

(assert (=> b!1022282 (=> (not res!684932) (not e!575906))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63882 (_ BitVec 32)) Bool)

(assert (=> b!1022282 (= res!684932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11051 thiss!1427) (mask!29495 thiss!1427)))))

(declare-fun b!1022283 () Bool)

(assert (=> b!1022283 (= e!575906 false)))

(declare-fun lt!450181 () Bool)

(declare-datatypes ((List!21788 0))(
  ( (Nil!21785) (Cons!21784 (h!22982 (_ BitVec 64)) (t!30809 List!21788)) )
))
(declare-fun arrayNoDuplicates!0 (array!63882 (_ BitVec 32) List!21788) Bool)

(assert (=> b!1022283 (= lt!450181 (arrayNoDuplicates!0 (_keys!11051 thiss!1427) #b00000000000000000000000000000000 Nil!21785))))

(declare-fun b!1022284 () Bool)

(declare-fun res!684936 () Bool)

(assert (=> b!1022284 (=> (not res!684936) (not e!575906))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1022284 (= res!684936 (validMask!0 (mask!29495 thiss!1427)))))

(declare-fun b!1022279 () Bool)

(declare-fun res!684933 () Bool)

(assert (=> b!1022279 (=> (not res!684933) (not e!575906))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022279 (= res!684933 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!684935 () Bool)

(assert (=> start!89202 (=> (not res!684935) (not e!575906))))

(declare-fun valid!1913 (LongMapFixedSize!5114) Bool)

(assert (=> start!89202 (= res!684935 (valid!1913 thiss!1427))))

(assert (=> start!89202 e!575906))

(declare-fun e!575908 () Bool)

(assert (=> start!89202 e!575908))

(assert (=> start!89202 true))

(declare-fun b!1022285 () Bool)

(declare-fun e!575911 () Bool)

(assert (=> b!1022285 (= e!575911 (and e!575907 mapRes!37308))))

(declare-fun condMapEmpty!37308 () Bool)

(declare-fun mapDefault!37308 () ValueCell!11260)

