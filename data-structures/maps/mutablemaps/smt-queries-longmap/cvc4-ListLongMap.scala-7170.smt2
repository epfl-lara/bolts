; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91620 () Bool)

(assert start!91620)

(declare-fun b!1042874 () Bool)

(declare-fun b_free!21077 () Bool)

(declare-fun b_next!21077 () Bool)

(assert (=> b!1042874 (= b_free!21077 (not b_next!21077))))

(declare-fun tp!74463 () Bool)

(declare-fun b_and!33627 () Bool)

(assert (=> b!1042874 (= tp!74463 b_and!33627)))

(declare-fun b!1042872 () Bool)

(declare-fun res!694928 () Bool)

(declare-fun e!590857 () Bool)

(assert (=> b!1042872 (=> res!694928 e!590857)))

(declare-datatypes ((V!37935 0))(
  ( (V!37936 (val!12449 Int)) )
))
(declare-datatypes ((ValueCell!11695 0))(
  ( (ValueCellFull!11695 (v!15041 V!37935)) (EmptyCell!11695) )
))
(declare-datatypes ((array!65736 0))(
  ( (array!65737 (arr!31619 (Array (_ BitVec 32) (_ BitVec 64))) (size!32155 (_ BitVec 32))) )
))
(declare-datatypes ((array!65738 0))(
  ( (array!65739 (arr!31620 (Array (_ BitVec 32) ValueCell!11695)) (size!32156 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5984 0))(
  ( (LongMapFixedSize!5985 (defaultEntry!6374 Int) (mask!30444 (_ BitVec 32)) (extraKeys!6102 (_ BitVec 32)) (zeroValue!6208 V!37935) (minValue!6208 V!37935) (_size!3047 (_ BitVec 32)) (_keys!11625 array!65736) (_values!6397 array!65738) (_vacant!3047 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5984)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65736 (_ BitVec 32)) Bool)

(assert (=> b!1042872 (= res!694928 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11625 thiss!1427) (mask!30444 thiss!1427))))))

(declare-fun b!1042873 () Bool)

(declare-fun res!694927 () Bool)

(assert (=> b!1042873 (=> res!694927 e!590857)))

(declare-datatypes ((SeekEntryResult!9824 0))(
  ( (MissingZero!9824 (index!41666 (_ BitVec 32))) (Found!9824 (index!41667 (_ BitVec 32))) (Intermediate!9824 (undefined!10636 Bool) (index!41668 (_ BitVec 32)) (x!93103 (_ BitVec 32))) (Undefined!9824) (MissingVacant!9824 (index!41669 (_ BitVec 32))) )
))
(declare-fun lt!459672 () SeekEntryResult!9824)

(assert (=> b!1042873 (= res!694927 (or (bvslt (index!41667 lt!459672) #b00000000000000000000000000000000) (bvsge (index!41667 lt!459672) (size!32155 (_keys!11625 thiss!1427)))))))

(declare-fun e!590852 () Bool)

(declare-fun tp_is_empty!24797 () Bool)

(declare-fun e!590854 () Bool)

(declare-fun array_inv!24275 (array!65736) Bool)

(declare-fun array_inv!24276 (array!65738) Bool)

(assert (=> b!1042874 (= e!590854 (and tp!74463 tp_is_empty!24797 (array_inv!24275 (_keys!11625 thiss!1427)) (array_inv!24276 (_values!6397 thiss!1427)) e!590852))))

(declare-fun res!694930 () Bool)

(declare-fun e!590856 () Bool)

(assert (=> start!91620 (=> (not res!694930) (not e!590856))))

(declare-fun valid!2200 (LongMapFixedSize!5984) Bool)

(assert (=> start!91620 (= res!694930 (valid!2200 thiss!1427))))

(assert (=> start!91620 e!590856))

(assert (=> start!91620 e!590854))

(assert (=> start!91620 true))

(declare-fun b!1042875 () Bool)

(declare-fun e!590853 () Bool)

(assert (=> b!1042875 (= e!590853 (not e!590857))))

(declare-fun res!694926 () Bool)

(assert (=> b!1042875 (=> res!694926 e!590857)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1042875 (= res!694926 (not (validMask!0 (mask!30444 thiss!1427))))))

(declare-fun lt!459669 () array!65736)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!65736 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1042875 (not (arrayContainsKey!0 lt!459669 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!34060 0))(
  ( (Unit!34061) )
))
(declare-fun lt!459667 () Unit!34060)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65736 (_ BitVec 32) (_ BitVec 64)) Unit!34060)

(assert (=> b!1042875 (= lt!459667 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11625 thiss!1427) (index!41667 lt!459672) key!909))))

(assert (=> b!1042875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459669 (mask!30444 thiss!1427))))

(declare-fun lt!459671 () Unit!34060)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65736 (_ BitVec 32) (_ BitVec 32)) Unit!34060)

(assert (=> b!1042875 (= lt!459671 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11625 thiss!1427) (index!41667 lt!459672) (mask!30444 thiss!1427)))))

(declare-datatypes ((List!22108 0))(
  ( (Nil!22105) (Cons!22104 (h!23312 (_ BitVec 64)) (t!31329 List!22108)) )
))
(declare-fun arrayNoDuplicates!0 (array!65736 (_ BitVec 32) List!22108) Bool)

(assert (=> b!1042875 (arrayNoDuplicates!0 lt!459669 #b00000000000000000000000000000000 Nil!22105)))

(declare-fun lt!459668 () Unit!34060)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65736 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22108) Unit!34060)

(assert (=> b!1042875 (= lt!459668 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11625 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41667 lt!459672) #b00000000000000000000000000000000 Nil!22105))))

(declare-fun arrayCountValidKeys!0 (array!65736 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1042875 (= (arrayCountValidKeys!0 lt!459669 #b00000000000000000000000000000000 (size!32155 (_keys!11625 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11625 thiss!1427) #b00000000000000000000000000000000 (size!32155 (_keys!11625 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1042875 (= lt!459669 (array!65737 (store (arr!31619 (_keys!11625 thiss!1427)) (index!41667 lt!459672) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32155 (_keys!11625 thiss!1427))))))

(declare-fun lt!459670 () Unit!34060)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65736 (_ BitVec 32) (_ BitVec 64)) Unit!34060)

(assert (=> b!1042875 (= lt!459670 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11625 thiss!1427) (index!41667 lt!459672) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1042876 () Bool)

(declare-fun e!590855 () Bool)

(declare-fun mapRes!38810 () Bool)

(assert (=> b!1042876 (= e!590852 (and e!590855 mapRes!38810))))

(declare-fun condMapEmpty!38810 () Bool)

(declare-fun mapDefault!38810 () ValueCell!11695)

