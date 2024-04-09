; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90122 () Bool)

(assert start!90122)

(declare-fun b!1031947 () Bool)

(declare-fun b_free!20693 () Bool)

(declare-fun b_next!20693 () Bool)

(assert (=> b!1031947 (= b_free!20693 (not b_next!20693))))

(declare-fun tp!73150 () Bool)

(declare-fun b_and!33171 () Bool)

(assert (=> b!1031947 (= tp!73150 b_and!33171)))

(declare-fun b!1031944 () Bool)

(declare-fun e!582989 () Bool)

(assert (=> b!1031944 (= e!582989 (not true))))

(declare-fun lt!455861 () Bool)

(declare-datatypes ((V!37423 0))(
  ( (V!37424 (val!12257 Int)) )
))
(declare-datatypes ((ValueCell!11503 0))(
  ( (ValueCellFull!11503 (v!14835 V!37423)) (EmptyCell!11503) )
))
(declare-datatypes ((Unit!33778 0))(
  ( (Unit!33779) )
))
(declare-datatypes ((array!64874 0))(
  ( (array!64875 (arr!31235 (Array (_ BitVec 32) (_ BitVec 64))) (size!31753 (_ BitVec 32))) )
))
(declare-datatypes ((array!64876 0))(
  ( (array!64877 (arr!31236 (Array (_ BitVec 32) ValueCell!11503)) (size!31754 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5600 0))(
  ( (LongMapFixedSize!5601 (defaultEntry!6174 Int) (mask!29975 (_ BitVec 32)) (extraKeys!5906 (_ BitVec 32)) (zeroValue!6010 V!37423) (minValue!6010 V!37423) (_size!2855 (_ BitVec 32)) (_keys!11344 array!64874) (_values!6197 array!64876) (_vacant!2855 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15818 0))(
  ( (tuple2!15819 (_1!7919 Unit!33778) (_2!7919 LongMapFixedSize!5600)) )
))
(declare-fun lt!455852 () tuple2!15818)

(declare-fun valid!2071 (LongMapFixedSize!5600) Bool)

(assert (=> b!1031944 (= lt!455861 (valid!2071 (_2!7919 lt!455852)))))

(declare-fun lt!455857 () Unit!33778)

(declare-fun e!582993 () Unit!33778)

(assert (=> b!1031944 (= lt!455857 e!582993)))

(declare-fun c!104230 () Bool)

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15820 0))(
  ( (tuple2!15821 (_1!7920 (_ BitVec 64)) (_2!7920 V!37423)) )
))
(declare-datatypes ((List!22006 0))(
  ( (Nil!22003) (Cons!22002 (h!23204 tuple2!15820) (t!31201 List!22006)) )
))
(declare-datatypes ((ListLongMap!13863 0))(
  ( (ListLongMap!13864 (toList!6947 List!22006)) )
))
(declare-fun contains!6026 (ListLongMap!13863 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3954 (array!64874 array!64876 (_ BitVec 32) (_ BitVec 32) V!37423 V!37423 (_ BitVec 32) Int) ListLongMap!13863)

(assert (=> b!1031944 (= c!104230 (contains!6026 (getCurrentListMap!3954 (_keys!11344 (_2!7919 lt!455852)) (_values!6197 (_2!7919 lt!455852)) (mask!29975 (_2!7919 lt!455852)) (extraKeys!5906 (_2!7919 lt!455852)) (zeroValue!6010 (_2!7919 lt!455852)) (minValue!6010 (_2!7919 lt!455852)) #b00000000000000000000000000000000 (defaultEntry!6174 (_2!7919 lt!455852))) key!909))))

(declare-fun thiss!1427 () LongMapFixedSize!5600)

(declare-fun lt!455855 () array!64876)

(declare-fun lt!455853 () array!64874)

(declare-fun Unit!33780 () Unit!33778)

(declare-fun Unit!33781 () Unit!33778)

(assert (=> b!1031944 (= lt!455852 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2855 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15819 Unit!33780 (LongMapFixedSize!5601 (defaultEntry!6174 thiss!1427) (mask!29975 thiss!1427) (extraKeys!5906 thiss!1427) (zeroValue!6010 thiss!1427) (minValue!6010 thiss!1427) (bvsub (_size!2855 thiss!1427) #b00000000000000000000000000000001) lt!455853 lt!455855 (bvadd #b00000000000000000000000000000001 (_vacant!2855 thiss!1427)))) (tuple2!15819 Unit!33781 (LongMapFixedSize!5601 (defaultEntry!6174 thiss!1427) (mask!29975 thiss!1427) (extraKeys!5906 thiss!1427) (zeroValue!6010 thiss!1427) (minValue!6010 thiss!1427) (bvsub (_size!2855 thiss!1427) #b00000000000000000000000000000001) lt!455853 lt!455855 (_vacant!2855 thiss!1427)))))))

(declare-fun -!523 (ListLongMap!13863 (_ BitVec 64)) ListLongMap!13863)

(assert (=> b!1031944 (= (-!523 (getCurrentListMap!3954 (_keys!11344 thiss!1427) (_values!6197 thiss!1427) (mask!29975 thiss!1427) (extraKeys!5906 thiss!1427) (zeroValue!6010 thiss!1427) (minValue!6010 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6174 thiss!1427)) key!909) (getCurrentListMap!3954 lt!455853 lt!455855 (mask!29975 thiss!1427) (extraKeys!5906 thiss!1427) (zeroValue!6010 thiss!1427) (minValue!6010 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6174 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9713 0))(
  ( (MissingZero!9713 (index!41222 (_ BitVec 32))) (Found!9713 (index!41223 (_ BitVec 32))) (Intermediate!9713 (undefined!10525 Bool) (index!41224 (_ BitVec 32)) (x!91918 (_ BitVec 32))) (Undefined!9713) (MissingVacant!9713 (index!41225 (_ BitVec 32))) )
))
(declare-fun lt!455851 () SeekEntryResult!9713)

(declare-fun dynLambda!1998 (Int (_ BitVec 64)) V!37423)

(assert (=> b!1031944 (= lt!455855 (array!64877 (store (arr!31236 (_values!6197 thiss!1427)) (index!41223 lt!455851) (ValueCellFull!11503 (dynLambda!1998 (defaultEntry!6174 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31754 (_values!6197 thiss!1427))))))

(declare-fun lt!455858 () Unit!33778)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!47 (array!64874 array!64876 (_ BitVec 32) (_ BitVec 32) V!37423 V!37423 (_ BitVec 32) (_ BitVec 64) Int) Unit!33778)

(assert (=> b!1031944 (= lt!455858 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!47 (_keys!11344 thiss!1427) (_values!6197 thiss!1427) (mask!29975 thiss!1427) (extraKeys!5906 thiss!1427) (zeroValue!6010 thiss!1427) (minValue!6010 thiss!1427) (index!41223 lt!455851) key!909 (defaultEntry!6174 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64874 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1031944 (not (arrayContainsKey!0 lt!455853 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455859 () Unit!33778)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64874 (_ BitVec 32) (_ BitVec 64)) Unit!33778)

(assert (=> b!1031944 (= lt!455859 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11344 thiss!1427) (index!41223 lt!455851) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64874 (_ BitVec 32)) Bool)

(assert (=> b!1031944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455853 (mask!29975 thiss!1427))))

(declare-fun lt!455854 () Unit!33778)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64874 (_ BitVec 32) (_ BitVec 32)) Unit!33778)

(assert (=> b!1031944 (= lt!455854 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11344 thiss!1427) (index!41223 lt!455851) (mask!29975 thiss!1427)))))

(declare-datatypes ((List!22007 0))(
  ( (Nil!22004) (Cons!22003 (h!23205 (_ BitVec 64)) (t!31202 List!22007)) )
))
(declare-fun arrayNoDuplicates!0 (array!64874 (_ BitVec 32) List!22007) Bool)

(assert (=> b!1031944 (arrayNoDuplicates!0 lt!455853 #b00000000000000000000000000000000 Nil!22004)))

(declare-fun lt!455860 () Unit!33778)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64874 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22007) Unit!33778)

(assert (=> b!1031944 (= lt!455860 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11344 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41223 lt!455851) #b00000000000000000000000000000000 Nil!22004))))

(declare-fun arrayCountValidKeys!0 (array!64874 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1031944 (= (arrayCountValidKeys!0 lt!455853 #b00000000000000000000000000000000 (size!31753 (_keys!11344 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11344 thiss!1427) #b00000000000000000000000000000000 (size!31753 (_keys!11344 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1031944 (= lt!455853 (array!64875 (store (arr!31235 (_keys!11344 thiss!1427)) (index!41223 lt!455851) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31753 (_keys!11344 thiss!1427))))))

(declare-fun lt!455862 () Unit!33778)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64874 (_ BitVec 32) (_ BitVec 64)) Unit!33778)

(assert (=> b!1031944 (= lt!455862 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11344 thiss!1427) (index!41223 lt!455851) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1031945 () Bool)

(declare-fun e!582997 () Bool)

(declare-fun e!582990 () Bool)

(declare-fun mapRes!38073 () Bool)

(assert (=> b!1031945 (= e!582997 (and e!582990 mapRes!38073))))

(declare-fun condMapEmpty!38073 () Bool)

(declare-fun mapDefault!38073 () ValueCell!11503)

