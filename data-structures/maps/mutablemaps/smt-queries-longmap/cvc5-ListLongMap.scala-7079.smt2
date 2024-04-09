; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89564 () Bool)

(assert start!89564)

(declare-fun b!1026805 () Bool)

(declare-fun b_free!20527 () Bool)

(declare-fun b_next!20527 () Bool)

(assert (=> b!1026805 (= b_free!20527 (not b_next!20527))))

(declare-fun tp!72628 () Bool)

(declare-fun b_and!32791 () Bool)

(assert (=> b!1026805 (= tp!72628 b_and!32791)))

(declare-fun b!1026797 () Bool)

(declare-fun e!579386 () Bool)

(declare-fun e!579388 () Bool)

(assert (=> b!1026797 (= e!579386 e!579388)))

(declare-fun res!687409 () Bool)

(assert (=> b!1026797 (=> (not res!687409) (not e!579388))))

(declare-datatypes ((SeekEntryResult!9645 0))(
  ( (MissingZero!9645 (index!40950 (_ BitVec 32))) (Found!9645 (index!40951 (_ BitVec 32))) (Intermediate!9645 (undefined!10457 Bool) (index!40952 (_ BitVec 32)) (x!91342 (_ BitVec 32))) (Undefined!9645) (MissingVacant!9645 (index!40953 (_ BitVec 32))) )
))
(declare-fun lt!451828 () SeekEntryResult!9645)

(assert (=> b!1026797 (= res!687409 (is-Found!9645 lt!451828))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37203 0))(
  ( (V!37204 (val!12174 Int)) )
))
(declare-datatypes ((ValueCell!11420 0))(
  ( (ValueCellFull!11420 (v!14744 V!37203)) (EmptyCell!11420) )
))
(declare-datatypes ((array!64528 0))(
  ( (array!64529 (arr!31069 (Array (_ BitVec 32) (_ BitVec 64))) (size!31583 (_ BitVec 32))) )
))
(declare-datatypes ((array!64530 0))(
  ( (array!64531 (arr!31070 (Array (_ BitVec 32) ValueCell!11420)) (size!31584 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5434 0))(
  ( (LongMapFixedSize!5435 (defaultEntry!6069 Int) (mask!29768 (_ BitVec 32)) (extraKeys!5801 (_ BitVec 32)) (zeroValue!5905 V!37203) (minValue!5905 V!37203) (_size!2772 (_ BitVec 32)) (_keys!11213 array!64528) (_values!6092 array!64530) (_vacant!2772 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5434)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64528 (_ BitVec 32)) SeekEntryResult!9645)

(assert (=> b!1026797 (= lt!451828 (seekEntry!0 key!909 (_keys!11213 thiss!1427) (mask!29768 thiss!1427)))))

(declare-fun b!1026798 () Bool)

(declare-fun res!687407 () Bool)

(assert (=> b!1026798 (=> (not res!687407) (not e!579386))))

(assert (=> b!1026798 (= res!687407 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1026800 () Bool)

(declare-fun e!579385 () Bool)

(declare-fun tp_is_empty!24247 () Bool)

(assert (=> b!1026800 (= e!579385 tp_is_empty!24247)))

(declare-fun b!1026801 () Bool)

(declare-fun res!687410 () Bool)

(declare-fun e!579391 () Bool)

(assert (=> b!1026801 (=> res!687410 e!579391)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64528 (_ BitVec 32)) Bool)

(assert (=> b!1026801 (= res!687410 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11213 thiss!1427) (mask!29768 thiss!1427))))))

(declare-fun mapIsEmpty!37799 () Bool)

(declare-fun mapRes!37799 () Bool)

(assert (=> mapIsEmpty!37799 mapRes!37799))

(declare-fun res!687408 () Bool)

(assert (=> start!89564 (=> (not res!687408) (not e!579386))))

(declare-fun valid!2016 (LongMapFixedSize!5434) Bool)

(assert (=> start!89564 (= res!687408 (valid!2016 thiss!1427))))

(assert (=> start!89564 e!579386))

(declare-fun e!579387 () Bool)

(assert (=> start!89564 e!579387))

(assert (=> start!89564 true))

(declare-fun b!1026799 () Bool)

(assert (=> b!1026799 (= e!579388 (not e!579391))))

(declare-fun res!687406 () Bool)

(assert (=> b!1026799 (=> res!687406 e!579391)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1026799 (= res!687406 (not (validMask!0 (mask!29768 thiss!1427))))))

(declare-fun lt!451824 () array!64528)

(declare-fun arrayContainsKey!0 (array!64528 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1026799 (not (arrayContainsKey!0 lt!451824 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33420 0))(
  ( (Unit!33421) )
))
(declare-fun lt!451825 () Unit!33420)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64528 (_ BitVec 32) (_ BitVec 64)) Unit!33420)

(assert (=> b!1026799 (= lt!451825 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11213 thiss!1427) (index!40951 lt!451828) key!909))))

(assert (=> b!1026799 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451824 (mask!29768 thiss!1427))))

(declare-fun lt!451823 () Unit!33420)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64528 (_ BitVec 32) (_ BitVec 32)) Unit!33420)

(assert (=> b!1026799 (= lt!451823 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11213 thiss!1427) (index!40951 lt!451828) (mask!29768 thiss!1427)))))

(declare-datatypes ((List!21897 0))(
  ( (Nil!21894) (Cons!21893 (h!23091 (_ BitVec 64)) (t!30966 List!21897)) )
))
(declare-fun arrayNoDuplicates!0 (array!64528 (_ BitVec 32) List!21897) Bool)

(assert (=> b!1026799 (arrayNoDuplicates!0 lt!451824 #b00000000000000000000000000000000 Nil!21894)))

(declare-fun lt!451827 () Unit!33420)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64528 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21897) Unit!33420)

(assert (=> b!1026799 (= lt!451827 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11213 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40951 lt!451828) #b00000000000000000000000000000000 Nil!21894))))

(declare-fun arrayCountValidKeys!0 (array!64528 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026799 (= (arrayCountValidKeys!0 lt!451824 #b00000000000000000000000000000000 (size!31583 (_keys!11213 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11213 thiss!1427) #b00000000000000000000000000000000 (size!31583 (_keys!11213 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026799 (= lt!451824 (array!64529 (store (arr!31069 (_keys!11213 thiss!1427)) (index!40951 lt!451828) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31583 (_keys!11213 thiss!1427))))))

(declare-fun lt!451822 () Unit!33420)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64528 (_ BitVec 32) (_ BitVec 64)) Unit!33420)

(assert (=> b!1026799 (= lt!451822 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11213 thiss!1427) (index!40951 lt!451828) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1026802 () Bool)

(assert (=> b!1026802 (= e!579391 true)))

(declare-fun lt!451826 () Bool)

(assert (=> b!1026802 (= lt!451826 (arrayNoDuplicates!0 (_keys!11213 thiss!1427) #b00000000000000000000000000000000 Nil!21894))))

(declare-fun b!1026803 () Bool)

(declare-fun e!579392 () Bool)

(declare-fun e!579389 () Bool)

(assert (=> b!1026803 (= e!579392 (and e!579389 mapRes!37799))))

(declare-fun condMapEmpty!37799 () Bool)

(declare-fun mapDefault!37799 () ValueCell!11420)

