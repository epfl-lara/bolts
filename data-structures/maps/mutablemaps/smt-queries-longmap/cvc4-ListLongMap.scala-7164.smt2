; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91380 () Bool)

(assert start!91380)

(declare-fun b!1041449 () Bool)

(declare-fun b_free!21041 () Bool)

(declare-fun b_next!21041 () Bool)

(assert (=> b!1041449 (= b_free!21041 (not b_next!21041))))

(declare-fun tp!74336 () Bool)

(declare-fun b_and!33591 () Bool)

(assert (=> b!1041449 (= tp!74336 b_and!33591)))

(declare-fun b!1041446 () Bool)

(declare-fun e!589841 () Bool)

(declare-fun e!589844 () Bool)

(assert (=> b!1041446 (= e!589841 (not e!589844))))

(declare-fun res!694209 () Bool)

(assert (=> b!1041446 (=> res!694209 e!589844)))

(declare-datatypes ((V!37887 0))(
  ( (V!37888 (val!12431 Int)) )
))
(declare-datatypes ((ValueCell!11677 0))(
  ( (ValueCellFull!11677 (v!15021 V!37887)) (EmptyCell!11677) )
))
(declare-datatypes ((array!65652 0))(
  ( (array!65653 (arr!31583 (Array (_ BitVec 32) (_ BitVec 64))) (size!32117 (_ BitVec 32))) )
))
(declare-datatypes ((array!65654 0))(
  ( (array!65655 (arr!31584 (Array (_ BitVec 32) ValueCell!11677)) (size!32118 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5948 0))(
  ( (LongMapFixedSize!5949 (defaultEntry!6356 Int) (mask!30380 (_ BitVec 32)) (extraKeys!6084 (_ BitVec 32)) (zeroValue!6190 V!37887) (minValue!6190 V!37887) (_size!3029 (_ BitVec 32)) (_keys!11589 array!65652) (_values!6379 array!65654) (_vacant!3029 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5948)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1041446 (= res!694209 (not (validMask!0 (mask!30380 thiss!1427))))))

(declare-fun lt!459025 () array!65652)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!65652 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1041446 (not (arrayContainsKey!0 lt!459025 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!9808 0))(
  ( (MissingZero!9808 (index!41602 (_ BitVec 32))) (Found!9808 (index!41603 (_ BitVec 32))) (Intermediate!9808 (undefined!10620 Bool) (index!41604 (_ BitVec 32)) (x!92973 (_ BitVec 32))) (Undefined!9808) (MissingVacant!9808 (index!41605 (_ BitVec 32))) )
))
(declare-fun lt!459027 () SeekEntryResult!9808)

(declare-datatypes ((Unit!34032 0))(
  ( (Unit!34033) )
))
(declare-fun lt!459024 () Unit!34032)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65652 (_ BitVec 32) (_ BitVec 64)) Unit!34032)

(assert (=> b!1041446 (= lt!459024 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11589 thiss!1427) (index!41603 lt!459027) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65652 (_ BitVec 32)) Bool)

(assert (=> b!1041446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459025 (mask!30380 thiss!1427))))

(declare-fun lt!459022 () Unit!34032)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65652 (_ BitVec 32) (_ BitVec 32)) Unit!34032)

(assert (=> b!1041446 (= lt!459022 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11589 thiss!1427) (index!41603 lt!459027) (mask!30380 thiss!1427)))))

(declare-datatypes ((List!22092 0))(
  ( (Nil!22089) (Cons!22088 (h!23294 (_ BitVec 64)) (t!31313 List!22092)) )
))
(declare-fun arrayNoDuplicates!0 (array!65652 (_ BitVec 32) List!22092) Bool)

(assert (=> b!1041446 (arrayNoDuplicates!0 lt!459025 #b00000000000000000000000000000000 Nil!22089)))

(declare-fun lt!459023 () Unit!34032)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65652 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22092) Unit!34032)

(assert (=> b!1041446 (= lt!459023 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11589 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41603 lt!459027) #b00000000000000000000000000000000 Nil!22089))))

(declare-fun arrayCountValidKeys!0 (array!65652 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1041446 (= (arrayCountValidKeys!0 lt!459025 #b00000000000000000000000000000000 (size!32117 (_keys!11589 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11589 thiss!1427) #b00000000000000000000000000000000 (size!32117 (_keys!11589 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1041446 (= lt!459025 (array!65653 (store (arr!31583 (_keys!11589 thiss!1427)) (index!41603 lt!459027) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32117 (_keys!11589 thiss!1427))))))

(declare-fun lt!459026 () Unit!34032)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65652 (_ BitVec 32) (_ BitVec 64)) Unit!34032)

(assert (=> b!1041446 (= lt!459026 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11589 thiss!1427) (index!41603 lt!459027) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!38736 () Bool)

(declare-fun mapRes!38736 () Bool)

(assert (=> mapIsEmpty!38736 mapRes!38736))

(declare-fun b!1041447 () Bool)

(assert (=> b!1041447 (= e!589844 (or (not (= (size!32118 (_values!6379 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30380 thiss!1427)))) (not (= (size!32117 (_keys!11589 thiss!1427)) (size!32118 (_values!6379 thiss!1427)))) (bvsge (mask!30380 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1041448 () Bool)

(declare-fun e!589842 () Bool)

(declare-fun e!589845 () Bool)

(assert (=> b!1041448 (= e!589842 (and e!589845 mapRes!38736))))

(declare-fun condMapEmpty!38736 () Bool)

(declare-fun mapDefault!38736 () ValueCell!11677)

