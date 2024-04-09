; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89588 () Bool)

(assert start!89588)

(declare-fun b!1027165 () Bool)

(declare-fun b_free!20551 () Bool)

(declare-fun b_next!20551 () Bool)

(assert (=> b!1027165 (= b_free!20551 (not b_next!20551))))

(declare-fun tp!72699 () Bool)

(declare-fun b_and!32815 () Bool)

(assert (=> b!1027165 (= tp!72699 b_and!32815)))

(declare-fun b!1027157 () Bool)

(declare-fun e!579673 () Bool)

(declare-fun e!579675 () Bool)

(assert (=> b!1027157 (= e!579673 (not e!579675))))

(declare-fun res!687625 () Bool)

(assert (=> b!1027157 (=> res!687625 e!579675)))

(declare-datatypes ((V!37235 0))(
  ( (V!37236 (val!12186 Int)) )
))
(declare-datatypes ((ValueCell!11432 0))(
  ( (ValueCellFull!11432 (v!14756 V!37235)) (EmptyCell!11432) )
))
(declare-datatypes ((array!64576 0))(
  ( (array!64577 (arr!31093 (Array (_ BitVec 32) (_ BitVec 64))) (size!31607 (_ BitVec 32))) )
))
(declare-datatypes ((array!64578 0))(
  ( (array!64579 (arr!31094 (Array (_ BitVec 32) ValueCell!11432)) (size!31608 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5458 0))(
  ( (LongMapFixedSize!5459 (defaultEntry!6081 Int) (mask!29788 (_ BitVec 32)) (extraKeys!5813 (_ BitVec 32)) (zeroValue!5917 V!37235) (minValue!5917 V!37235) (_size!2784 (_ BitVec 32)) (_keys!11225 array!64576) (_values!6104 array!64578) (_vacant!2784 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5458)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1027157 (= res!687625 (not (validMask!0 (mask!29788 thiss!1427))))))

(declare-fun lt!452076 () array!64576)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!64576 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1027157 (not (arrayContainsKey!0 lt!452076 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33436 0))(
  ( (Unit!33437) )
))
(declare-fun lt!452080 () Unit!33436)

(declare-datatypes ((SeekEntryResult!9654 0))(
  ( (MissingZero!9654 (index!40986 (_ BitVec 32))) (Found!9654 (index!40987 (_ BitVec 32))) (Intermediate!9654 (undefined!10466 Bool) (index!40988 (_ BitVec 32)) (x!91383 (_ BitVec 32))) (Undefined!9654) (MissingVacant!9654 (index!40989 (_ BitVec 32))) )
))
(declare-fun lt!452078 () SeekEntryResult!9654)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64576 (_ BitVec 32) (_ BitVec 64)) Unit!33436)

(assert (=> b!1027157 (= lt!452080 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11225 thiss!1427) (index!40987 lt!452078) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64576 (_ BitVec 32)) Bool)

(assert (=> b!1027157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!452076 (mask!29788 thiss!1427))))

(declare-fun lt!452075 () Unit!33436)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64576 (_ BitVec 32) (_ BitVec 32)) Unit!33436)

(assert (=> b!1027157 (= lt!452075 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11225 thiss!1427) (index!40987 lt!452078) (mask!29788 thiss!1427)))))

(declare-datatypes ((List!21909 0))(
  ( (Nil!21906) (Cons!21905 (h!23103 (_ BitVec 64)) (t!30978 List!21909)) )
))
(declare-fun arrayNoDuplicates!0 (array!64576 (_ BitVec 32) List!21909) Bool)

(assert (=> b!1027157 (arrayNoDuplicates!0 lt!452076 #b00000000000000000000000000000000 Nil!21906)))

(declare-fun lt!452079 () Unit!33436)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64576 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21909) Unit!33436)

(assert (=> b!1027157 (= lt!452079 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11225 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40987 lt!452078) #b00000000000000000000000000000000 Nil!21906))))

(declare-fun arrayCountValidKeys!0 (array!64576 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1027157 (= (arrayCountValidKeys!0 lt!452076 #b00000000000000000000000000000000 (size!31607 (_keys!11225 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11225 thiss!1427) #b00000000000000000000000000000000 (size!31607 (_keys!11225 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1027157 (= lt!452076 (array!64577 (store (arr!31093 (_keys!11225 thiss!1427)) (index!40987 lt!452078) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31607 (_keys!11225 thiss!1427))))))

(declare-fun lt!452074 () Unit!33436)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64576 (_ BitVec 32) (_ BitVec 64)) Unit!33436)

(assert (=> b!1027157 (= lt!452074 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11225 thiss!1427) (index!40987 lt!452078) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1027158 () Bool)

(declare-fun e!579677 () Bool)

(declare-fun e!579676 () Bool)

(declare-fun mapRes!37835 () Bool)

(assert (=> b!1027158 (= e!579677 (and e!579676 mapRes!37835))))

(declare-fun condMapEmpty!37835 () Bool)

(declare-fun mapDefault!37835 () ValueCell!11432)

