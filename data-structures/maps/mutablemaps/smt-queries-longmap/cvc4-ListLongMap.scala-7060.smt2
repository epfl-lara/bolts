; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89454 () Bool)

(assert start!89454)

(declare-fun b!1025209 () Bool)

(declare-fun b_free!20417 () Bool)

(declare-fun b_next!20417 () Bool)

(assert (=> b!1025209 (= b_free!20417 (not b_next!20417))))

(declare-fun tp!72298 () Bool)

(declare-fun b_and!32681 () Bool)

(assert (=> b!1025209 (= tp!72298 b_and!32681)))

(declare-fun b!1025200 () Bool)

(declare-fun res!686475 () Bool)

(declare-fun e!578065 () Bool)

(assert (=> b!1025200 (=> res!686475 e!578065)))

(declare-datatypes ((V!37055 0))(
  ( (V!37056 (val!12119 Int)) )
))
(declare-datatypes ((ValueCell!11365 0))(
  ( (ValueCellFull!11365 (v!14689 V!37055)) (EmptyCell!11365) )
))
(declare-datatypes ((array!64308 0))(
  ( (array!64309 (arr!30959 (Array (_ BitVec 32) (_ BitVec 64))) (size!31473 (_ BitVec 32))) )
))
(declare-datatypes ((array!64310 0))(
  ( (array!64311 (arr!30960 (Array (_ BitVec 32) ValueCell!11365)) (size!31474 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5324 0))(
  ( (LongMapFixedSize!5325 (defaultEntry!6014 Int) (mask!29675 (_ BitVec 32)) (extraKeys!5746 (_ BitVec 32)) (zeroValue!5850 V!37055) (minValue!5850 V!37055) (_size!2717 (_ BitVec 32)) (_keys!11158 array!64308) (_values!6037 array!64310) (_vacant!2717 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5324)

(declare-datatypes ((List!21855 0))(
  ( (Nil!21852) (Cons!21851 (h!23049 (_ BitVec 64)) (t!30924 List!21855)) )
))
(declare-fun arrayNoDuplicates!0 (array!64308 (_ BitVec 32) List!21855) Bool)

(assert (=> b!1025200 (= res!686475 (not (arrayNoDuplicates!0 (_keys!11158 thiss!1427) #b00000000000000000000000000000000 Nil!21852)))))

(declare-fun b!1025201 () Bool)

(declare-fun res!686474 () Bool)

(declare-fun e!578066 () Bool)

(assert (=> b!1025201 (=> (not res!686474) (not e!578066))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1025201 (= res!686474 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1025202 () Bool)

(declare-fun e!578067 () Bool)

(assert (=> b!1025202 (= e!578067 (not e!578065))))

(declare-fun res!686471 () Bool)

(assert (=> b!1025202 (=> res!686471 e!578065)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1025202 (= res!686471 (not (validMask!0 (mask!29675 thiss!1427))))))

(declare-fun lt!450831 () array!64308)

(assert (=> b!1025202 (arrayNoDuplicates!0 lt!450831 #b00000000000000000000000000000000 Nil!21852)))

(declare-datatypes ((Unit!33348 0))(
  ( (Unit!33349) )
))
(declare-fun lt!450834 () Unit!33348)

(declare-datatypes ((SeekEntryResult!9603 0))(
  ( (MissingZero!9603 (index!40782 (_ BitVec 32))) (Found!9603 (index!40783 (_ BitVec 32))) (Intermediate!9603 (undefined!10415 Bool) (index!40784 (_ BitVec 32)) (x!91148 (_ BitVec 32))) (Undefined!9603) (MissingVacant!9603 (index!40785 (_ BitVec 32))) )
))
(declare-fun lt!450832 () SeekEntryResult!9603)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64308 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21855) Unit!33348)

(assert (=> b!1025202 (= lt!450834 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11158 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40783 lt!450832) #b00000000000000000000000000000000 Nil!21852))))

(declare-fun arrayCountValidKeys!0 (array!64308 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025202 (= (arrayCountValidKeys!0 lt!450831 #b00000000000000000000000000000000 (size!31473 (_keys!11158 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11158 thiss!1427) #b00000000000000000000000000000000 (size!31473 (_keys!11158 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1025202 (= lt!450831 (array!64309 (store (arr!30959 (_keys!11158 thiss!1427)) (index!40783 lt!450832) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31473 (_keys!11158 thiss!1427))))))

(declare-fun lt!450833 () Unit!33348)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64308 (_ BitVec 32) (_ BitVec 64)) Unit!33348)

(assert (=> b!1025202 (= lt!450833 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11158 thiss!1427) (index!40783 lt!450832) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1025203 () Bool)

(declare-fun e!578070 () Bool)

(declare-fun e!578071 () Bool)

(declare-fun mapRes!37634 () Bool)

(assert (=> b!1025203 (= e!578070 (and e!578071 mapRes!37634))))

(declare-fun condMapEmpty!37634 () Bool)

(declare-fun mapDefault!37634 () ValueCell!11365)

