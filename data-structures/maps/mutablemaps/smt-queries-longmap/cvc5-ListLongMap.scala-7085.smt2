; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89600 () Bool)

(assert start!89600)

(declare-fun b!1027346 () Bool)

(declare-fun b_free!20563 () Bool)

(declare-fun b_next!20563 () Bool)

(assert (=> b!1027346 (= b_free!20563 (not b_next!20563))))

(declare-fun tp!72735 () Bool)

(declare-fun b_and!32827 () Bool)

(assert (=> b!1027346 (= tp!72735 b_and!32827)))

(declare-fun b!1027337 () Bool)

(declare-fun e!579818 () Bool)

(declare-fun e!579822 () Bool)

(assert (=> b!1027337 (= e!579818 (not e!579822))))

(declare-fun res!687734 () Bool)

(assert (=> b!1027337 (=> res!687734 e!579822)))

(declare-datatypes ((V!37251 0))(
  ( (V!37252 (val!12192 Int)) )
))
(declare-datatypes ((ValueCell!11438 0))(
  ( (ValueCellFull!11438 (v!14762 V!37251)) (EmptyCell!11438) )
))
(declare-datatypes ((array!64600 0))(
  ( (array!64601 (arr!31105 (Array (_ BitVec 32) (_ BitVec 64))) (size!31619 (_ BitVec 32))) )
))
(declare-datatypes ((array!64602 0))(
  ( (array!64603 (arr!31106 (Array (_ BitVec 32) ValueCell!11438)) (size!31620 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5470 0))(
  ( (LongMapFixedSize!5471 (defaultEntry!6087 Int) (mask!29798 (_ BitVec 32)) (extraKeys!5819 (_ BitVec 32)) (zeroValue!5923 V!37251) (minValue!5923 V!37251) (_size!2790 (_ BitVec 32)) (_keys!11231 array!64600) (_values!6110 array!64602) (_vacant!2790 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5470)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1027337 (= res!687734 (not (validMask!0 (mask!29798 thiss!1427))))))

(declare-fun lt!452203 () array!64600)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!64600 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1027337 (not (arrayContainsKey!0 lt!452203 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!9657 0))(
  ( (MissingZero!9657 (index!40998 (_ BitVec 32))) (Found!9657 (index!40999 (_ BitVec 32))) (Intermediate!9657 (undefined!10469 Bool) (index!41000 (_ BitVec 32)) (x!91402 (_ BitVec 32))) (Undefined!9657) (MissingVacant!9657 (index!41001 (_ BitVec 32))) )
))
(declare-fun lt!452205 () SeekEntryResult!9657)

(declare-datatypes ((Unit!33442 0))(
  ( (Unit!33443) )
))
(declare-fun lt!452204 () Unit!33442)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64600 (_ BitVec 32) (_ BitVec 64)) Unit!33442)

(assert (=> b!1027337 (= lt!452204 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11231 thiss!1427) (index!40999 lt!452205) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64600 (_ BitVec 32)) Bool)

(assert (=> b!1027337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!452203 (mask!29798 thiss!1427))))

(declare-fun lt!452206 () Unit!33442)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64600 (_ BitVec 32) (_ BitVec 32)) Unit!33442)

(assert (=> b!1027337 (= lt!452206 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11231 thiss!1427) (index!40999 lt!452205) (mask!29798 thiss!1427)))))

(declare-datatypes ((List!21912 0))(
  ( (Nil!21909) (Cons!21908 (h!23106 (_ BitVec 64)) (t!30981 List!21912)) )
))
(declare-fun arrayNoDuplicates!0 (array!64600 (_ BitVec 32) List!21912) Bool)

(assert (=> b!1027337 (arrayNoDuplicates!0 lt!452203 #b00000000000000000000000000000000 Nil!21909)))

(declare-fun lt!452200 () Unit!33442)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64600 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21912) Unit!33442)

(assert (=> b!1027337 (= lt!452200 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11231 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40999 lt!452205) #b00000000000000000000000000000000 Nil!21909))))

(declare-fun arrayCountValidKeys!0 (array!64600 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1027337 (= (arrayCountValidKeys!0 lt!452203 #b00000000000000000000000000000000 (size!31619 (_keys!11231 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11231 thiss!1427) #b00000000000000000000000000000000 (size!31619 (_keys!11231 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1027337 (= lt!452203 (array!64601 (store (arr!31105 (_keys!11231 thiss!1427)) (index!40999 lt!452205) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31619 (_keys!11231 thiss!1427))))))

(declare-fun lt!452202 () Unit!33442)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64600 (_ BitVec 32) (_ BitVec 64)) Unit!33442)

(assert (=> b!1027337 (= lt!452202 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11231 thiss!1427) (index!40999 lt!452205) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1027338 () Bool)

(assert (=> b!1027338 (= e!579822 true)))

(declare-fun lt!452201 () Bool)

(assert (=> b!1027338 (= lt!452201 (arrayNoDuplicates!0 (_keys!11231 thiss!1427) #b00000000000000000000000000000000 Nil!21909))))

(declare-fun res!687730 () Bool)

(declare-fun e!579820 () Bool)

(assert (=> start!89600 (=> (not res!687730) (not e!579820))))

(declare-fun valid!2026 (LongMapFixedSize!5470) Bool)

(assert (=> start!89600 (= res!687730 (valid!2026 thiss!1427))))

(assert (=> start!89600 e!579820))

(declare-fun e!579819 () Bool)

(assert (=> start!89600 e!579819))

(assert (=> start!89600 true))

(declare-fun b!1027339 () Bool)

(declare-fun e!579817 () Bool)

(declare-fun e!579824 () Bool)

(declare-fun mapRes!37853 () Bool)

(assert (=> b!1027339 (= e!579817 (and e!579824 mapRes!37853))))

(declare-fun condMapEmpty!37853 () Bool)

(declare-fun mapDefault!37853 () ValueCell!11438)

