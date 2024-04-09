; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89556 () Bool)

(assert start!89556)

(declare-fun b!1026684 () Bool)

(declare-fun b_free!20519 () Bool)

(declare-fun b_next!20519 () Bool)

(assert (=> b!1026684 (= b_free!20519 (not b_next!20519))))

(declare-fun tp!72603 () Bool)

(declare-fun b_and!32783 () Bool)

(assert (=> b!1026684 (= tp!72603 b_and!32783)))

(declare-fun b!1026677 () Bool)

(declare-fun e!579294 () Bool)

(declare-fun e!579296 () Bool)

(assert (=> b!1026677 (= e!579294 (not e!579296))))

(declare-fun res!687334 () Bool)

(assert (=> b!1026677 (=> res!687334 e!579296)))

(declare-datatypes ((V!37191 0))(
  ( (V!37192 (val!12170 Int)) )
))
(declare-datatypes ((ValueCell!11416 0))(
  ( (ValueCellFull!11416 (v!14740 V!37191)) (EmptyCell!11416) )
))
(declare-datatypes ((array!64512 0))(
  ( (array!64513 (arr!31061 (Array (_ BitVec 32) (_ BitVec 64))) (size!31575 (_ BitVec 32))) )
))
(declare-datatypes ((array!64514 0))(
  ( (array!64515 (arr!31062 (Array (_ BitVec 32) ValueCell!11416)) (size!31576 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5426 0))(
  ( (LongMapFixedSize!5427 (defaultEntry!6065 Int) (mask!29760 (_ BitVec 32)) (extraKeys!5797 (_ BitVec 32)) (zeroValue!5901 V!37191) (minValue!5901 V!37191) (_size!2768 (_ BitVec 32)) (_keys!11209 array!64512) (_values!6088 array!64514) (_vacant!2768 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5426)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1026677 (= res!687334 (not (validMask!0 (mask!29760 thiss!1427))))))

(declare-fun lt!451742 () array!64512)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!64512 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1026677 (not (arrayContainsKey!0 lt!451742 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33416 0))(
  ( (Unit!33417) )
))
(declare-fun lt!451743 () Unit!33416)

(declare-datatypes ((SeekEntryResult!9642 0))(
  ( (MissingZero!9642 (index!40938 (_ BitVec 32))) (Found!9642 (index!40939 (_ BitVec 32))) (Intermediate!9642 (undefined!10454 Bool) (index!40940 (_ BitVec 32)) (x!91323 (_ BitVec 32))) (Undefined!9642) (MissingVacant!9642 (index!40941 (_ BitVec 32))) )
))
(declare-fun lt!451738 () SeekEntryResult!9642)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64512 (_ BitVec 32) (_ BitVec 64)) Unit!33416)

(assert (=> b!1026677 (= lt!451743 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11209 thiss!1427) (index!40939 lt!451738) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64512 (_ BitVec 32)) Bool)

(assert (=> b!1026677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451742 (mask!29760 thiss!1427))))

(declare-fun lt!451740 () Unit!33416)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64512 (_ BitVec 32) (_ BitVec 32)) Unit!33416)

(assert (=> b!1026677 (= lt!451740 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11209 thiss!1427) (index!40939 lt!451738) (mask!29760 thiss!1427)))))

(declare-datatypes ((List!21893 0))(
  ( (Nil!21890) (Cons!21889 (h!23087 (_ BitVec 64)) (t!30962 List!21893)) )
))
(declare-fun arrayNoDuplicates!0 (array!64512 (_ BitVec 32) List!21893) Bool)

(assert (=> b!1026677 (arrayNoDuplicates!0 lt!451742 #b00000000000000000000000000000000 Nil!21890)))

(declare-fun lt!451739 () Unit!33416)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64512 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21893) Unit!33416)

(assert (=> b!1026677 (= lt!451739 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11209 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40939 lt!451738) #b00000000000000000000000000000000 Nil!21890))))

(declare-fun arrayCountValidKeys!0 (array!64512 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026677 (= (arrayCountValidKeys!0 lt!451742 #b00000000000000000000000000000000 (size!31575 (_keys!11209 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11209 thiss!1427) #b00000000000000000000000000000000 (size!31575 (_keys!11209 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026677 (= lt!451742 (array!64513 (store (arr!31061 (_keys!11209 thiss!1427)) (index!40939 lt!451738) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31575 (_keys!11209 thiss!1427))))))

(declare-fun lt!451744 () Unit!33416)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64512 (_ BitVec 32) (_ BitVec 64)) Unit!33416)

(assert (=> b!1026677 (= lt!451744 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11209 thiss!1427) (index!40939 lt!451738) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1026678 () Bool)

(declare-fun e!579289 () Bool)

(assert (=> b!1026678 (= e!579289 e!579294)))

(declare-fun res!687337 () Bool)

(assert (=> b!1026678 (=> (not res!687337) (not e!579294))))

(assert (=> b!1026678 (= res!687337 (is-Found!9642 lt!451738))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64512 (_ BitVec 32)) SeekEntryResult!9642)

(assert (=> b!1026678 (= lt!451738 (seekEntry!0 key!909 (_keys!11209 thiss!1427) (mask!29760 thiss!1427)))))

(declare-fun b!1026679 () Bool)

(declare-fun e!579295 () Bool)

(declare-fun e!579293 () Bool)

(declare-fun mapRes!37787 () Bool)

(assert (=> b!1026679 (= e!579295 (and e!579293 mapRes!37787))))

(declare-fun condMapEmpty!37787 () Bool)

(declare-fun mapDefault!37787 () ValueCell!11416)

