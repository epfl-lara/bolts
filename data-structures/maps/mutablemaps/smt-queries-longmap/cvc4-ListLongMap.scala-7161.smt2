; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91236 () Bool)

(assert start!91236)

(declare-fun b!1040660 () Bool)

(declare-fun b_free!21023 () Bool)

(declare-fun b_next!21023 () Bool)

(assert (=> b!1040660 (= b_free!21023 (not b_next!21023))))

(declare-fun tp!74270 () Bool)

(declare-fun b_and!33573 () Bool)

(assert (=> b!1040660 (= tp!74270 b_and!33573)))

(declare-fun tp_is_empty!24743 () Bool)

(declare-datatypes ((V!37863 0))(
  ( (V!37864 (val!12422 Int)) )
))
(declare-datatypes ((ValueCell!11668 0))(
  ( (ValueCellFull!11668 (v!15010 V!37863)) (EmptyCell!11668) )
))
(declare-datatypes ((array!65610 0))(
  ( (array!65611 (arr!31565 (Array (_ BitVec 32) (_ BitVec 64))) (size!32097 (_ BitVec 32))) )
))
(declare-datatypes ((array!65612 0))(
  ( (array!65613 (arr!31566 (Array (_ BitVec 32) ValueCell!11668)) (size!32098 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5930 0))(
  ( (LongMapFixedSize!5931 (defaultEntry!6347 Int) (mask!30343 (_ BitVec 32)) (extraKeys!6075 (_ BitVec 32)) (zeroValue!6181 V!37863) (minValue!6181 V!37863) (_size!3020 (_ BitVec 32)) (_keys!11568 array!65610) (_values!6370 array!65612) (_vacant!3020 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5930)

(declare-fun e!589266 () Bool)

(declare-fun e!589270 () Bool)

(declare-fun array_inv!24233 (array!65610) Bool)

(declare-fun array_inv!24234 (array!65612) Bool)

(assert (=> b!1040660 (= e!589270 (and tp!74270 tp_is_empty!24743 (array_inv!24233 (_keys!11568 thiss!1427)) (array_inv!24234 (_values!6370 thiss!1427)) e!589266))))

(declare-fun b!1040661 () Bool)

(declare-fun e!589268 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1040661 (= e!589268 (not (validMask!0 (mask!30343 thiss!1427))))))

(declare-fun lt!458659 () array!65610)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!65610 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1040661 (not (arrayContainsKey!0 lt!458659 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!9801 0))(
  ( (MissingZero!9801 (index!41574 (_ BitVec 32))) (Found!9801 (index!41575 (_ BitVec 32))) (Intermediate!9801 (undefined!10613 Bool) (index!41576 (_ BitVec 32)) (x!92900 (_ BitVec 32))) (Undefined!9801) (MissingVacant!9801 (index!41577 (_ BitVec 32))) )
))
(declare-fun lt!458663 () SeekEntryResult!9801)

(declare-datatypes ((Unit!34020 0))(
  ( (Unit!34021) )
))
(declare-fun lt!458660 () Unit!34020)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65610 (_ BitVec 32) (_ BitVec 64)) Unit!34020)

(assert (=> b!1040661 (= lt!458660 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11568 thiss!1427) (index!41575 lt!458663) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65610 (_ BitVec 32)) Bool)

(assert (=> b!1040661 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458659 (mask!30343 thiss!1427))))

(declare-fun lt!458664 () Unit!34020)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65610 (_ BitVec 32) (_ BitVec 32)) Unit!34020)

(assert (=> b!1040661 (= lt!458664 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11568 thiss!1427) (index!41575 lt!458663) (mask!30343 thiss!1427)))))

(declare-datatypes ((List!22086 0))(
  ( (Nil!22083) (Cons!22082 (h!23286 (_ BitVec 64)) (t!31307 List!22086)) )
))
(declare-fun arrayNoDuplicates!0 (array!65610 (_ BitVec 32) List!22086) Bool)

(assert (=> b!1040661 (arrayNoDuplicates!0 lt!458659 #b00000000000000000000000000000000 Nil!22083)))

(declare-fun lt!458662 () Unit!34020)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65610 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22086) Unit!34020)

(assert (=> b!1040661 (= lt!458662 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11568 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41575 lt!458663) #b00000000000000000000000000000000 Nil!22083))))

(declare-fun arrayCountValidKeys!0 (array!65610 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1040661 (= (arrayCountValidKeys!0 lt!458659 #b00000000000000000000000000000000 (size!32097 (_keys!11568 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11568 thiss!1427) #b00000000000000000000000000000000 (size!32097 (_keys!11568 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1040661 (= lt!458659 (array!65611 (store (arr!31565 (_keys!11568 thiss!1427)) (index!41575 lt!458663) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32097 (_keys!11568 thiss!1427))))))

(declare-fun lt!458661 () Unit!34020)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65610 (_ BitVec 32) (_ BitVec 64)) Unit!34020)

(assert (=> b!1040661 (= lt!458661 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11568 thiss!1427) (index!41575 lt!458663) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1040662 () Bool)

(declare-fun e!589269 () Bool)

(assert (=> b!1040662 (= e!589269 tp_is_empty!24743)))

(declare-fun res!693851 () Bool)

(declare-fun e!589271 () Bool)

(assert (=> start!91236 (=> (not res!693851) (not e!589271))))

(declare-fun valid!2182 (LongMapFixedSize!5930) Bool)

(assert (=> start!91236 (= res!693851 (valid!2182 thiss!1427))))

(assert (=> start!91236 e!589271))

(assert (=> start!91236 e!589270))

(assert (=> start!91236 true))

(declare-fun b!1040663 () Bool)

(declare-fun res!693849 () Bool)

(assert (=> b!1040663 (=> (not res!693849) (not e!589271))))

(assert (=> b!1040663 (= res!693849 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1040664 () Bool)

(declare-fun mapRes!38698 () Bool)

(assert (=> b!1040664 (= e!589266 (and e!589269 mapRes!38698))))

(declare-fun condMapEmpty!38698 () Bool)

(declare-fun mapDefault!38698 () ValueCell!11668)

