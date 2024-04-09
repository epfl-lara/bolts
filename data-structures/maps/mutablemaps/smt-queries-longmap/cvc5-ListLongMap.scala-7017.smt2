; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89150 () Bool)

(assert start!89150)

(declare-fun b!1021583 () Bool)

(declare-fun b_free!20155 () Bool)

(declare-fun b_next!20155 () Bool)

(assert (=> b!1021583 (= b_free!20155 (not b_next!20155))))

(declare-fun tp!71501 () Bool)

(declare-fun b_and!32371 () Bool)

(assert (=> b!1021583 (= tp!71501 b_and!32371)))

(declare-fun b!1021577 () Bool)

(declare-fun e!575441 () Bool)

(declare-fun tp_is_empty!23875 () Bool)

(assert (=> b!1021577 (= e!575441 tp_is_empty!23875)))

(declare-fun b!1021578 () Bool)

(declare-fun res!684545 () Bool)

(declare-fun e!575440 () Bool)

(assert (=> b!1021578 (=> (not res!684545) (not e!575440))))

(declare-datatypes ((V!36707 0))(
  ( (V!36708 (val!11988 Int)) )
))
(declare-datatypes ((ValueCell!11234 0))(
  ( (ValueCellFull!11234 (v!14558 V!36707)) (EmptyCell!11234) )
))
(declare-datatypes ((array!63778 0))(
  ( (array!63779 (arr!30697 (Array (_ BitVec 32) (_ BitVec 64))) (size!31209 (_ BitVec 32))) )
))
(declare-datatypes ((array!63780 0))(
  ( (array!63781 (arr!30698 (Array (_ BitVec 32) ValueCell!11234)) (size!31210 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5062 0))(
  ( (LongMapFixedSize!5063 (defaultEntry!5883 Int) (mask!29453 (_ BitVec 32)) (extraKeys!5615 (_ BitVec 32)) (zeroValue!5719 V!36707) (minValue!5719 V!36707) (_size!2586 (_ BitVec 32)) (_keys!11025 array!63778) (_values!5906 array!63780) (_vacant!2586 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5062)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63778 (_ BitVec 32)) Bool)

(assert (=> b!1021578 (= res!684545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11025 thiss!1427) (mask!29453 thiss!1427)))))

(declare-fun b!1021579 () Bool)

(assert (=> b!1021579 (= e!575440 false)))

(declare-fun lt!450103 () Bool)

(declare-datatypes ((List!21773 0))(
  ( (Nil!21770) (Cons!21769 (h!22967 (_ BitVec 64)) (t!30794 List!21773)) )
))
(declare-fun arrayNoDuplicates!0 (array!63778 (_ BitVec 32) List!21773) Bool)

(assert (=> b!1021579 (= lt!450103 (arrayNoDuplicates!0 (_keys!11025 thiss!1427) #b00000000000000000000000000000000 Nil!21770))))

(declare-fun res!684543 () Bool)

(assert (=> start!89150 (=> (not res!684543) (not e!575440))))

(declare-fun valid!1898 (LongMapFixedSize!5062) Bool)

(assert (=> start!89150 (= res!684543 (valid!1898 thiss!1427))))

(assert (=> start!89150 e!575440))

(declare-fun e!575439 () Bool)

(assert (=> start!89150 e!575439))

(assert (=> start!89150 true))

(declare-fun b!1021580 () Bool)

(declare-fun e!575443 () Bool)

(assert (=> b!1021580 (= e!575443 tp_is_empty!23875)))

(declare-fun b!1021581 () Bool)

(declare-fun res!684542 () Bool)

(assert (=> b!1021581 (=> (not res!684542) (not e!575440))))

(assert (=> b!1021581 (= res!684542 (and (= (size!31210 (_values!5906 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29453 thiss!1427))) (= (size!31209 (_keys!11025 thiss!1427)) (size!31210 (_values!5906 thiss!1427))) (bvsge (mask!29453 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5615 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5615 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5615 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5615 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5615 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5615 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5615 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1021582 () Bool)

(declare-fun res!684546 () Bool)

(assert (=> b!1021582 (=> (not res!684546) (not e!575440))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1021582 (= res!684546 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!575438 () Bool)

(declare-fun array_inv!23671 (array!63778) Bool)

(declare-fun array_inv!23672 (array!63780) Bool)

(assert (=> b!1021583 (= e!575439 (and tp!71501 tp_is_empty!23875 (array_inv!23671 (_keys!11025 thiss!1427)) (array_inv!23672 (_values!5906 thiss!1427)) e!575438))))

(declare-fun b!1021584 () Bool)

(declare-fun mapRes!37230 () Bool)

(assert (=> b!1021584 (= e!575438 (and e!575441 mapRes!37230))))

(declare-fun condMapEmpty!37230 () Bool)

(declare-fun mapDefault!37230 () ValueCell!11234)

