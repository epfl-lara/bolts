; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89550 () Bool)

(assert start!89550)

(declare-fun b!1026593 () Bool)

(declare-fun b_free!20513 () Bool)

(declare-fun b_next!20513 () Bool)

(assert (=> b!1026593 (= b_free!20513 (not b_next!20513))))

(declare-fun tp!72586 () Bool)

(declare-fun b_and!32777 () Bool)

(assert (=> b!1026593 (= tp!72586 b_and!32777)))

(declare-fun res!687285 () Bool)

(declare-fun e!579217 () Bool)

(assert (=> start!89550 (=> (not res!687285) (not e!579217))))

(declare-datatypes ((V!37183 0))(
  ( (V!37184 (val!12167 Int)) )
))
(declare-datatypes ((ValueCell!11413 0))(
  ( (ValueCellFull!11413 (v!14737 V!37183)) (EmptyCell!11413) )
))
(declare-datatypes ((array!64500 0))(
  ( (array!64501 (arr!31055 (Array (_ BitVec 32) (_ BitVec 64))) (size!31569 (_ BitVec 32))) )
))
(declare-datatypes ((array!64502 0))(
  ( (array!64503 (arr!31056 (Array (_ BitVec 32) ValueCell!11413)) (size!31570 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5420 0))(
  ( (LongMapFixedSize!5421 (defaultEntry!6062 Int) (mask!29755 (_ BitVec 32)) (extraKeys!5794 (_ BitVec 32)) (zeroValue!5898 V!37183) (minValue!5898 V!37183) (_size!2765 (_ BitVec 32)) (_keys!11206 array!64500) (_values!6085 array!64502) (_vacant!2765 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5420)

(declare-fun valid!2010 (LongMapFixedSize!5420) Bool)

(assert (=> start!89550 (= res!687285 (valid!2010 thiss!1427))))

(assert (=> start!89550 e!579217))

(declare-fun e!579220 () Bool)

(assert (=> start!89550 e!579220))

(assert (=> start!89550 true))

(declare-fun mapNonEmpty!37778 () Bool)

(declare-fun mapRes!37778 () Bool)

(declare-fun tp!72585 () Bool)

(declare-fun e!579219 () Bool)

(assert (=> mapNonEmpty!37778 (= mapRes!37778 (and tp!72585 e!579219))))

(declare-fun mapValue!37778 () ValueCell!11413)

(declare-fun mapKey!37778 () (_ BitVec 32))

(declare-fun mapRest!37778 () (Array (_ BitVec 32) ValueCell!11413))

(assert (=> mapNonEmpty!37778 (= (arr!31056 (_values!6085 thiss!1427)) (store mapRest!37778 mapKey!37778 mapValue!37778))))

(declare-fun b!1026587 () Bool)

(declare-fun e!579223 () Bool)

(declare-fun tp_is_empty!24233 () Bool)

(assert (=> b!1026587 (= e!579223 tp_is_empty!24233)))

(declare-fun b!1026588 () Bool)

(declare-fun res!687282 () Bool)

(declare-fun e!579218 () Bool)

(assert (=> b!1026588 (=> res!687282 e!579218)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64500 (_ BitVec 32)) Bool)

(assert (=> b!1026588 (= res!687282 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11206 thiss!1427) (mask!29755 thiss!1427))))))

(declare-fun b!1026589 () Bool)

(assert (=> b!1026589 (= e!579218 true)))

(declare-fun lt!451676 () Bool)

(declare-datatypes ((List!21891 0))(
  ( (Nil!21888) (Cons!21887 (h!23085 (_ BitVec 64)) (t!30960 List!21891)) )
))
(declare-fun arrayNoDuplicates!0 (array!64500 (_ BitVec 32) List!21891) Bool)

(assert (=> b!1026589 (= lt!451676 (arrayNoDuplicates!0 (_keys!11206 thiss!1427) #b00000000000000000000000000000000 Nil!21888))))

(declare-fun b!1026590 () Bool)

(declare-fun e!579222 () Bool)

(assert (=> b!1026590 (= e!579222 (not e!579218))))

(declare-fun res!687284 () Bool)

(assert (=> b!1026590 (=> res!687284 e!579218)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1026590 (= res!687284 (not (validMask!0 (mask!29755 thiss!1427))))))

(declare-fun lt!451679 () array!64500)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!64500 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1026590 (not (arrayContainsKey!0 lt!451679 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!9640 0))(
  ( (MissingZero!9640 (index!40930 (_ BitVec 32))) (Found!9640 (index!40931 (_ BitVec 32))) (Intermediate!9640 (undefined!10452 Bool) (index!40932 (_ BitVec 32)) (x!91313 (_ BitVec 32))) (Undefined!9640) (MissingVacant!9640 (index!40933 (_ BitVec 32))) )
))
(declare-fun lt!451677 () SeekEntryResult!9640)

(declare-datatypes ((Unit!33412 0))(
  ( (Unit!33413) )
))
(declare-fun lt!451681 () Unit!33412)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64500 (_ BitVec 32) (_ BitVec 64)) Unit!33412)

(assert (=> b!1026590 (= lt!451681 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11206 thiss!1427) (index!40931 lt!451677) key!909))))

(assert (=> b!1026590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451679 (mask!29755 thiss!1427))))

(declare-fun lt!451675 () Unit!33412)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64500 (_ BitVec 32) (_ BitVec 32)) Unit!33412)

(assert (=> b!1026590 (= lt!451675 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11206 thiss!1427) (index!40931 lt!451677) (mask!29755 thiss!1427)))))

(assert (=> b!1026590 (arrayNoDuplicates!0 lt!451679 #b00000000000000000000000000000000 Nil!21888)))

(declare-fun lt!451680 () Unit!33412)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64500 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21891) Unit!33412)

(assert (=> b!1026590 (= lt!451680 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11206 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40931 lt!451677) #b00000000000000000000000000000000 Nil!21888))))

(declare-fun arrayCountValidKeys!0 (array!64500 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026590 (= (arrayCountValidKeys!0 lt!451679 #b00000000000000000000000000000000 (size!31569 (_keys!11206 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11206 thiss!1427) #b00000000000000000000000000000000 (size!31569 (_keys!11206 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026590 (= lt!451679 (array!64501 (store (arr!31055 (_keys!11206 thiss!1427)) (index!40931 lt!451677) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31569 (_keys!11206 thiss!1427))))))

(declare-fun lt!451678 () Unit!33412)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64500 (_ BitVec 32) (_ BitVec 64)) Unit!33412)

(assert (=> b!1026590 (= lt!451678 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11206 thiss!1427) (index!40931 lt!451677) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1026591 () Bool)

(assert (=> b!1026591 (= e!579219 tp_is_empty!24233)))

(declare-fun mapIsEmpty!37778 () Bool)

(assert (=> mapIsEmpty!37778 mapRes!37778))

(declare-fun b!1026592 () Bool)

(declare-fun res!687283 () Bool)

(assert (=> b!1026592 (=> (not res!687283) (not e!579217))))

(assert (=> b!1026592 (= res!687283 (not (= key!909 (bvneg key!909))))))

(declare-fun e!579224 () Bool)

(declare-fun array_inv!23901 (array!64500) Bool)

(declare-fun array_inv!23902 (array!64502) Bool)

(assert (=> b!1026593 (= e!579220 (and tp!72586 tp_is_empty!24233 (array_inv!23901 (_keys!11206 thiss!1427)) (array_inv!23902 (_values!6085 thiss!1427)) e!579224))))

(declare-fun b!1026594 () Bool)

(declare-fun res!687281 () Bool)

(assert (=> b!1026594 (=> res!687281 e!579218)))

(assert (=> b!1026594 (= res!687281 (or (not (= (size!31570 (_values!6085 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29755 thiss!1427)))) (not (= (size!31569 (_keys!11206 thiss!1427)) (size!31570 (_values!6085 thiss!1427)))) (bvslt (mask!29755 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5794 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5794 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1026595 () Bool)

(assert (=> b!1026595 (= e!579217 e!579222)))

(declare-fun res!687280 () Bool)

(assert (=> b!1026595 (=> (not res!687280) (not e!579222))))

(assert (=> b!1026595 (= res!687280 (is-Found!9640 lt!451677))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64500 (_ BitVec 32)) SeekEntryResult!9640)

(assert (=> b!1026595 (= lt!451677 (seekEntry!0 key!909 (_keys!11206 thiss!1427) (mask!29755 thiss!1427)))))

(declare-fun b!1026596 () Bool)

(assert (=> b!1026596 (= e!579224 (and e!579223 mapRes!37778))))

(declare-fun condMapEmpty!37778 () Bool)

(declare-fun mapDefault!37778 () ValueCell!11413)

