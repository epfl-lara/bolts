; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89450 () Bool)

(assert start!89450)

(declare-fun b!1025141 () Bool)

(declare-fun b_free!20413 () Bool)

(declare-fun b_next!20413 () Bool)

(assert (=> b!1025141 (= b_free!20413 (not b_next!20413))))

(declare-fun tp!72286 () Bool)

(declare-fun b_and!32677 () Bool)

(assert (=> b!1025141 (= tp!72286 b_and!32677)))

(declare-fun b!1025134 () Bool)

(declare-fun e!578018 () Bool)

(declare-fun e!578022 () Bool)

(assert (=> b!1025134 (= e!578018 (not e!578022))))

(declare-fun res!686433 () Bool)

(assert (=> b!1025134 (=> res!686433 e!578022)))

(declare-datatypes ((V!37051 0))(
  ( (V!37052 (val!12117 Int)) )
))
(declare-datatypes ((ValueCell!11363 0))(
  ( (ValueCellFull!11363 (v!14687 V!37051)) (EmptyCell!11363) )
))
(declare-datatypes ((array!64300 0))(
  ( (array!64301 (arr!30955 (Array (_ BitVec 32) (_ BitVec 64))) (size!31469 (_ BitVec 32))) )
))
(declare-datatypes ((array!64302 0))(
  ( (array!64303 (arr!30956 (Array (_ BitVec 32) ValueCell!11363)) (size!31470 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5320 0))(
  ( (LongMapFixedSize!5321 (defaultEntry!6012 Int) (mask!29673 (_ BitVec 32)) (extraKeys!5744 (_ BitVec 32)) (zeroValue!5848 V!37051) (minValue!5848 V!37051) (_size!2715 (_ BitVec 32)) (_keys!11156 array!64300) (_values!6035 array!64302) (_vacant!2715 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5320)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1025134 (= res!686433 (not (validMask!0 (mask!29673 thiss!1427))))))

(declare-fun lt!450805 () array!64300)

(declare-datatypes ((List!21853 0))(
  ( (Nil!21850) (Cons!21849 (h!23047 (_ BitVec 64)) (t!30922 List!21853)) )
))
(declare-fun arrayNoDuplicates!0 (array!64300 (_ BitVec 32) List!21853) Bool)

(assert (=> b!1025134 (arrayNoDuplicates!0 lt!450805 #b00000000000000000000000000000000 Nil!21850)))

(declare-datatypes ((Unit!33344 0))(
  ( (Unit!33345) )
))
(declare-fun lt!450804 () Unit!33344)

(declare-datatypes ((SeekEntryResult!9601 0))(
  ( (MissingZero!9601 (index!40774 (_ BitVec 32))) (Found!9601 (index!40775 (_ BitVec 32))) (Intermediate!9601 (undefined!10413 Bool) (index!40776 (_ BitVec 32)) (x!91146 (_ BitVec 32))) (Undefined!9601) (MissingVacant!9601 (index!40777 (_ BitVec 32))) )
))
(declare-fun lt!450801 () SeekEntryResult!9601)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64300 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21853) Unit!33344)

(assert (=> b!1025134 (= lt!450804 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11156 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40775 lt!450801) #b00000000000000000000000000000000 Nil!21850))))

(declare-fun arrayCountValidKeys!0 (array!64300 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025134 (= (arrayCountValidKeys!0 lt!450805 #b00000000000000000000000000000000 (size!31469 (_keys!11156 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11156 thiss!1427) #b00000000000000000000000000000000 (size!31469 (_keys!11156 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1025134 (= lt!450805 (array!64301 (store (arr!30955 (_keys!11156 thiss!1427)) (index!40775 lt!450801) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31469 (_keys!11156 thiss!1427))))))

(declare-fun lt!450803 () Unit!33344)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64300 (_ BitVec 32) (_ BitVec 64)) Unit!33344)

(assert (=> b!1025134 (= lt!450803 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11156 thiss!1427) (index!40775 lt!450801) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1025135 () Bool)

(declare-fun res!686432 () Bool)

(declare-fun e!578023 () Bool)

(assert (=> b!1025135 (=> (not res!686432) (not e!578023))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1025135 (= res!686432 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1025136 () Bool)

(declare-fun e!578021 () Bool)

(declare-fun tp_is_empty!24133 () Bool)

(assert (=> b!1025136 (= e!578021 tp_is_empty!24133)))

(declare-fun res!686431 () Bool)

(assert (=> start!89450 (=> (not res!686431) (not e!578023))))

(declare-fun valid!1976 (LongMapFixedSize!5320) Bool)

(assert (=> start!89450 (= res!686431 (valid!1976 thiss!1427))))

(assert (=> start!89450 e!578023))

(declare-fun e!578020 () Bool)

(assert (=> start!89450 e!578020))

(assert (=> start!89450 true))

(declare-fun mapNonEmpty!37628 () Bool)

(declare-fun mapRes!37628 () Bool)

(declare-fun tp!72285 () Bool)

(declare-fun e!578019 () Bool)

(assert (=> mapNonEmpty!37628 (= mapRes!37628 (and tp!72285 e!578019))))

(declare-fun mapValue!37628 () ValueCell!11363)

(declare-fun mapKey!37628 () (_ BitVec 32))

(declare-fun mapRest!37628 () (Array (_ BitVec 32) ValueCell!11363))

(assert (=> mapNonEmpty!37628 (= (arr!30956 (_values!6035 thiss!1427)) (store mapRest!37628 mapKey!37628 mapValue!37628))))

(declare-fun b!1025137 () Bool)

(assert (=> b!1025137 (= e!578019 tp_is_empty!24133)))

(declare-fun b!1025138 () Bool)

(assert (=> b!1025138 (= e!578022 true)))

(declare-fun lt!450802 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64300 (_ BitVec 32)) Bool)

(assert (=> b!1025138 (= lt!450802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11156 thiss!1427) (mask!29673 thiss!1427)))))

(declare-fun b!1025139 () Bool)

(declare-fun res!686427 () Bool)

(assert (=> b!1025139 (=> res!686427 e!578022)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1025139 (= res!686427 (not (validKeyInArray!0 (select (arr!30955 (_keys!11156 thiss!1427)) (index!40775 lt!450801)))))))

(declare-fun b!1025140 () Bool)

(declare-fun e!578024 () Bool)

(assert (=> b!1025140 (= e!578024 (and e!578021 mapRes!37628))))

(declare-fun condMapEmpty!37628 () Bool)

(declare-fun mapDefault!37628 () ValueCell!11363)

