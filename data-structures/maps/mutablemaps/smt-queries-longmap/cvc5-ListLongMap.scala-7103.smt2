; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90100 () Bool)

(assert start!90100)

(declare-fun b!1031541 () Bool)

(declare-fun b_free!20671 () Bool)

(declare-fun b_next!20671 () Bool)

(assert (=> b!1031541 (= b_free!20671 (not b_next!20671))))

(declare-fun tp!73084 () Bool)

(declare-fun b_and!33127 () Bool)

(assert (=> b!1031541 (= tp!73084 b_and!33127)))

(declare-fun b!1031534 () Bool)

(declare-fun res!689791 () Bool)

(declare-fun e!582678 () Bool)

(assert (=> b!1031534 (=> res!689791 e!582678)))

(declare-datatypes ((V!37395 0))(
  ( (V!37396 (val!12246 Int)) )
))
(declare-datatypes ((ValueCell!11492 0))(
  ( (ValueCellFull!11492 (v!14824 V!37395)) (EmptyCell!11492) )
))
(declare-datatypes ((Unit!33726 0))(
  ( (Unit!33727) )
))
(declare-datatypes ((array!64830 0))(
  ( (array!64831 (arr!31213 (Array (_ BitVec 32) (_ BitVec 64))) (size!31731 (_ BitVec 32))) )
))
(declare-datatypes ((array!64832 0))(
  ( (array!64833 (arr!31214 (Array (_ BitVec 32) ValueCell!11492)) (size!31732 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5578 0))(
  ( (LongMapFixedSize!5579 (defaultEntry!6163 Int) (mask!29958 (_ BitVec 32)) (extraKeys!5895 (_ BitVec 32)) (zeroValue!5999 V!37395) (minValue!5999 V!37395) (_size!2844 (_ BitVec 32)) (_keys!11333 array!64830) (_values!6186 array!64832) (_vacant!2844 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15778 0))(
  ( (tuple2!15779 (_1!7899 Unit!33726) (_2!7899 LongMapFixedSize!5578)) )
))
(declare-fun lt!455474 () tuple2!15778)

(assert (=> b!1031534 (= res!689791 (or (not (= (size!31732 (_values!6186 (_2!7899 lt!455474))) (bvadd #b00000000000000000000000000000001 (mask!29958 (_2!7899 lt!455474))))) (not (= (size!31731 (_keys!11333 (_2!7899 lt!455474))) (size!31732 (_values!6186 (_2!7899 lt!455474))))) (bvslt (mask!29958 (_2!7899 lt!455474)) #b00000000000000000000000000000000) (bvslt (extraKeys!5895 (_2!7899 lt!455474)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5895 (_2!7899 lt!455474)) #b00000000000000000000000000000011)))))

(declare-fun b!1031535 () Bool)

(declare-fun res!689796 () Bool)

(assert (=> b!1031535 (=> res!689796 e!582678)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1031535 (= res!689796 (not (validMask!0 (mask!29958 (_2!7899 lt!455474)))))))

(declare-fun b!1031536 () Bool)

(assert (=> b!1031536 (= e!582678 true)))

(declare-fun lt!455477 () Bool)

(declare-datatypes ((List!21988 0))(
  ( (Nil!21985) (Cons!21984 (h!23186 (_ BitVec 64)) (t!31161 List!21988)) )
))
(declare-fun arrayNoDuplicates!0 (array!64830 (_ BitVec 32) List!21988) Bool)

(assert (=> b!1031536 (= lt!455477 (arrayNoDuplicates!0 (_keys!11333 (_2!7899 lt!455474)) #b00000000000000000000000000000000 Nil!21985))))

(declare-fun b!1031537 () Bool)

(declare-fun e!582673 () Bool)

(assert (=> b!1031537 (= e!582673 (not e!582678))))

(declare-fun res!689795 () Bool)

(assert (=> b!1031537 (=> res!689795 e!582678)))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15780 0))(
  ( (tuple2!15781 (_1!7900 (_ BitVec 64)) (_2!7900 V!37395)) )
))
(declare-datatypes ((List!21989 0))(
  ( (Nil!21986) (Cons!21985 (h!23187 tuple2!15780) (t!31162 List!21989)) )
))
(declare-datatypes ((ListLongMap!13845 0))(
  ( (ListLongMap!13846 (toList!6938 List!21989)) )
))
(declare-fun contains!6017 (ListLongMap!13845 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3945 (array!64830 array!64832 (_ BitVec 32) (_ BitVec 32) V!37395 V!37395 (_ BitVec 32) Int) ListLongMap!13845)

(assert (=> b!1031537 (= res!689795 (not (contains!6017 (getCurrentListMap!3945 (_keys!11333 (_2!7899 lt!455474)) (_values!6186 (_2!7899 lt!455474)) (mask!29958 (_2!7899 lt!455474)) (extraKeys!5895 (_2!7899 lt!455474)) (zeroValue!5999 (_2!7899 lt!455474)) (minValue!5999 (_2!7899 lt!455474)) #b00000000000000000000000000000000 (defaultEntry!6163 (_2!7899 lt!455474))) key!909)))))

(declare-fun lt!455469 () array!64832)

(declare-fun lt!455470 () array!64830)

(declare-fun thiss!1427 () LongMapFixedSize!5578)

(declare-fun Unit!33728 () Unit!33726)

(declare-fun Unit!33729 () Unit!33726)

(assert (=> b!1031537 (= lt!455474 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2844 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15779 Unit!33728 (LongMapFixedSize!5579 (defaultEntry!6163 thiss!1427) (mask!29958 thiss!1427) (extraKeys!5895 thiss!1427) (zeroValue!5999 thiss!1427) (minValue!5999 thiss!1427) (bvsub (_size!2844 thiss!1427) #b00000000000000000000000000000001) lt!455470 lt!455469 (bvadd #b00000000000000000000000000000001 (_vacant!2844 thiss!1427)))) (tuple2!15779 Unit!33729 (LongMapFixedSize!5579 (defaultEntry!6163 thiss!1427) (mask!29958 thiss!1427) (extraKeys!5895 thiss!1427) (zeroValue!5999 thiss!1427) (minValue!5999 thiss!1427) (bvsub (_size!2844 thiss!1427) #b00000000000000000000000000000001) lt!455470 lt!455469 (_vacant!2844 thiss!1427)))))))

(declare-fun -!514 (ListLongMap!13845 (_ BitVec 64)) ListLongMap!13845)

(assert (=> b!1031537 (= (-!514 (getCurrentListMap!3945 (_keys!11333 thiss!1427) (_values!6186 thiss!1427) (mask!29958 thiss!1427) (extraKeys!5895 thiss!1427) (zeroValue!5999 thiss!1427) (minValue!5999 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6163 thiss!1427)) key!909) (getCurrentListMap!3945 lt!455470 lt!455469 (mask!29958 thiss!1427) (extraKeys!5895 thiss!1427) (zeroValue!5999 thiss!1427) (minValue!5999 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6163 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9703 0))(
  ( (MissingZero!9703 (index!41182 (_ BitVec 32))) (Found!9703 (index!41183 (_ BitVec 32))) (Intermediate!9703 (undefined!10515 Bool) (index!41184 (_ BitVec 32)) (x!91862 (_ BitVec 32))) (Undefined!9703) (MissingVacant!9703 (index!41185 (_ BitVec 32))) )
))
(declare-fun lt!455473 () SeekEntryResult!9703)

(declare-fun dynLambda!1989 (Int (_ BitVec 64)) V!37395)

(assert (=> b!1031537 (= lt!455469 (array!64833 (store (arr!31214 (_values!6186 thiss!1427)) (index!41183 lt!455473) (ValueCellFull!11492 (dynLambda!1989 (defaultEntry!6163 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31732 (_values!6186 thiss!1427))))))

(declare-fun lt!455475 () Unit!33726)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!38 (array!64830 array!64832 (_ BitVec 32) (_ BitVec 32) V!37395 V!37395 (_ BitVec 32) (_ BitVec 64) Int) Unit!33726)

(assert (=> b!1031537 (= lt!455475 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!38 (_keys!11333 thiss!1427) (_values!6186 thiss!1427) (mask!29958 thiss!1427) (extraKeys!5895 thiss!1427) (zeroValue!5999 thiss!1427) (minValue!5999 thiss!1427) (index!41183 lt!455473) key!909 (defaultEntry!6163 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64830 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1031537 (not (arrayContainsKey!0 lt!455470 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455478 () Unit!33726)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64830 (_ BitVec 32) (_ BitVec 64)) Unit!33726)

(assert (=> b!1031537 (= lt!455478 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11333 thiss!1427) (index!41183 lt!455473) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64830 (_ BitVec 32)) Bool)

(assert (=> b!1031537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455470 (mask!29958 thiss!1427))))

(declare-fun lt!455476 () Unit!33726)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64830 (_ BitVec 32) (_ BitVec 32)) Unit!33726)

(assert (=> b!1031537 (= lt!455476 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11333 thiss!1427) (index!41183 lt!455473) (mask!29958 thiss!1427)))))

(assert (=> b!1031537 (arrayNoDuplicates!0 lt!455470 #b00000000000000000000000000000000 Nil!21985)))

(declare-fun lt!455471 () Unit!33726)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64830 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21988) Unit!33726)

(assert (=> b!1031537 (= lt!455471 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11333 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41183 lt!455473) #b00000000000000000000000000000000 Nil!21985))))

(declare-fun arrayCountValidKeys!0 (array!64830 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1031537 (= (arrayCountValidKeys!0 lt!455470 #b00000000000000000000000000000000 (size!31731 (_keys!11333 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11333 thiss!1427) #b00000000000000000000000000000000 (size!31731 (_keys!11333 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1031537 (= lt!455470 (array!64831 (store (arr!31213 (_keys!11333 thiss!1427)) (index!41183 lt!455473) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31731 (_keys!11333 thiss!1427))))))

(declare-fun lt!455472 () Unit!33726)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64830 (_ BitVec 32) (_ BitVec 64)) Unit!33726)

(assert (=> b!1031537 (= lt!455472 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11333 thiss!1427) (index!41183 lt!455473) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1031538 () Bool)

(declare-fun e!582677 () Bool)

(declare-fun e!582679 () Bool)

(declare-fun mapRes!38040 () Bool)

(assert (=> b!1031538 (= e!582677 (and e!582679 mapRes!38040))))

(declare-fun condMapEmpty!38040 () Bool)

(declare-fun mapDefault!38040 () ValueCell!11492)

