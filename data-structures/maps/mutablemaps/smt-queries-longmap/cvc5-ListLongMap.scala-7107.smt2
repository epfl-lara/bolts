; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90124 () Bool)

(assert start!90124)

(declare-fun b!1031990 () Bool)

(declare-fun b_free!20695 () Bool)

(declare-fun b_next!20695 () Bool)

(assert (=> b!1031990 (= b_free!20695 (not b_next!20695))))

(declare-fun tp!73157 () Bool)

(declare-fun b_and!33175 () Bool)

(assert (=> b!1031990 (= tp!73157 b_and!33175)))

(declare-fun b!1031982 () Bool)

(declare-fun e!583025 () Bool)

(declare-datatypes ((V!37427 0))(
  ( (V!37428 (val!12258 Int)) )
))
(declare-datatypes ((ValueCell!11504 0))(
  ( (ValueCellFull!11504 (v!14836 V!37427)) (EmptyCell!11504) )
))
(declare-datatypes ((Unit!33782 0))(
  ( (Unit!33783) )
))
(declare-datatypes ((array!64878 0))(
  ( (array!64879 (arr!31237 (Array (_ BitVec 32) (_ BitVec 64))) (size!31755 (_ BitVec 32))) )
))
(declare-datatypes ((array!64880 0))(
  ( (array!64881 (arr!31238 (Array (_ BitVec 32) ValueCell!11504)) (size!31756 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5602 0))(
  ( (LongMapFixedSize!5603 (defaultEntry!6175 Int) (mask!29978 (_ BitVec 32)) (extraKeys!5907 (_ BitVec 32)) (zeroValue!6011 V!37427) (minValue!6011 V!37427) (_size!2856 (_ BitVec 32)) (_keys!11345 array!64878) (_values!6198 array!64880) (_vacant!2856 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15822 0))(
  ( (tuple2!15823 (_1!7921 Unit!33782) (_2!7921 LongMapFixedSize!5602)) )
))
(declare-fun lt!455888 () tuple2!15822)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!64878 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1031982 (= e!583025 (arrayContainsKey!0 (_keys!11345 (_2!7921 lt!455888)) key!909 #b00000000000000000000000000000000))))

(declare-fun b!1031983 () Bool)

(assert (=> b!1031983 (= e!583025 (ite (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5907 (_2!7921 lt!455888)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5907 (_2!7921 lt!455888)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1031984 () Bool)

(declare-fun e!583018 () Bool)

(declare-fun tp_is_empty!24415 () Bool)

(assert (=> b!1031984 (= e!583018 tp_is_empty!24415)))

(declare-fun b!1031985 () Bool)

(declare-fun e!583020 () Unit!33782)

(declare-fun Unit!33784 () Unit!33782)

(assert (=> b!1031985 (= e!583020 Unit!33784)))

(declare-fun res!689955 () Bool)

(declare-fun e!583026 () Bool)

(assert (=> start!90124 (=> (not res!689955) (not e!583026))))

(declare-fun thiss!1427 () LongMapFixedSize!5602)

(declare-fun valid!2072 (LongMapFixedSize!5602) Bool)

(assert (=> start!90124 (= res!689955 (valid!2072 thiss!1427))))

(assert (=> start!90124 e!583026))

(declare-fun e!583021 () Bool)

(assert (=> start!90124 e!583021))

(assert (=> start!90124 true))

(declare-fun b!1031986 () Bool)

(declare-fun e!583019 () Bool)

(assert (=> b!1031986 (= e!583019 (not true))))

(declare-fun lt!455893 () Bool)

(assert (=> b!1031986 (= lt!455893 (valid!2072 (_2!7921 lt!455888)))))

(declare-fun lt!455889 () Unit!33782)

(assert (=> b!1031986 (= lt!455889 e!583020)))

(declare-fun c!104237 () Bool)

(declare-datatypes ((tuple2!15824 0))(
  ( (tuple2!15825 (_1!7922 (_ BitVec 64)) (_2!7922 V!37427)) )
))
(declare-datatypes ((List!22008 0))(
  ( (Nil!22005) (Cons!22004 (h!23206 tuple2!15824) (t!31205 List!22008)) )
))
(declare-datatypes ((ListLongMap!13865 0))(
  ( (ListLongMap!13866 (toList!6948 List!22008)) )
))
(declare-fun contains!6027 (ListLongMap!13865 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3955 (array!64878 array!64880 (_ BitVec 32) (_ BitVec 32) V!37427 V!37427 (_ BitVec 32) Int) ListLongMap!13865)

(assert (=> b!1031986 (= c!104237 (contains!6027 (getCurrentListMap!3955 (_keys!11345 (_2!7921 lt!455888)) (_values!6198 (_2!7921 lt!455888)) (mask!29978 (_2!7921 lt!455888)) (extraKeys!5907 (_2!7921 lt!455888)) (zeroValue!6011 (_2!7921 lt!455888)) (minValue!6011 (_2!7921 lt!455888)) #b00000000000000000000000000000000 (defaultEntry!6175 (_2!7921 lt!455888))) key!909))))

(declare-fun lt!455895 () array!64880)

(declare-fun lt!455887 () array!64878)

(declare-fun Unit!33785 () Unit!33782)

(declare-fun Unit!33786 () Unit!33782)

(assert (=> b!1031986 (= lt!455888 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2856 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15823 Unit!33785 (LongMapFixedSize!5603 (defaultEntry!6175 thiss!1427) (mask!29978 thiss!1427) (extraKeys!5907 thiss!1427) (zeroValue!6011 thiss!1427) (minValue!6011 thiss!1427) (bvsub (_size!2856 thiss!1427) #b00000000000000000000000000000001) lt!455887 lt!455895 (bvadd #b00000000000000000000000000000001 (_vacant!2856 thiss!1427)))) (tuple2!15823 Unit!33786 (LongMapFixedSize!5603 (defaultEntry!6175 thiss!1427) (mask!29978 thiss!1427) (extraKeys!5907 thiss!1427) (zeroValue!6011 thiss!1427) (minValue!6011 thiss!1427) (bvsub (_size!2856 thiss!1427) #b00000000000000000000000000000001) lt!455887 lt!455895 (_vacant!2856 thiss!1427)))))))

(declare-fun -!524 (ListLongMap!13865 (_ BitVec 64)) ListLongMap!13865)

(assert (=> b!1031986 (= (-!524 (getCurrentListMap!3955 (_keys!11345 thiss!1427) (_values!6198 thiss!1427) (mask!29978 thiss!1427) (extraKeys!5907 thiss!1427) (zeroValue!6011 thiss!1427) (minValue!6011 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6175 thiss!1427)) key!909) (getCurrentListMap!3955 lt!455887 lt!455895 (mask!29978 thiss!1427) (extraKeys!5907 thiss!1427) (zeroValue!6011 thiss!1427) (minValue!6011 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6175 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9714 0))(
  ( (MissingZero!9714 (index!41226 (_ BitVec 32))) (Found!9714 (index!41227 (_ BitVec 32))) (Intermediate!9714 (undefined!10526 Bool) (index!41228 (_ BitVec 32)) (x!91929 (_ BitVec 32))) (Undefined!9714) (MissingVacant!9714 (index!41229 (_ BitVec 32))) )
))
(declare-fun lt!455890 () SeekEntryResult!9714)

(declare-fun dynLambda!1999 (Int (_ BitVec 64)) V!37427)

(assert (=> b!1031986 (= lt!455895 (array!64881 (store (arr!31238 (_values!6198 thiss!1427)) (index!41227 lt!455890) (ValueCellFull!11504 (dynLambda!1999 (defaultEntry!6175 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31756 (_values!6198 thiss!1427))))))

(declare-fun lt!455898 () Unit!33782)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!48 (array!64878 array!64880 (_ BitVec 32) (_ BitVec 32) V!37427 V!37427 (_ BitVec 32) (_ BitVec 64) Int) Unit!33782)

(assert (=> b!1031986 (= lt!455898 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!48 (_keys!11345 thiss!1427) (_values!6198 thiss!1427) (mask!29978 thiss!1427) (extraKeys!5907 thiss!1427) (zeroValue!6011 thiss!1427) (minValue!6011 thiss!1427) (index!41227 lt!455890) key!909 (defaultEntry!6175 thiss!1427)))))

(assert (=> b!1031986 (not (arrayContainsKey!0 lt!455887 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455897 () Unit!33782)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64878 (_ BitVec 32) (_ BitVec 64)) Unit!33782)

(assert (=> b!1031986 (= lt!455897 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11345 thiss!1427) (index!41227 lt!455890) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64878 (_ BitVec 32)) Bool)

(assert (=> b!1031986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455887 (mask!29978 thiss!1427))))

(declare-fun lt!455896 () Unit!33782)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64878 (_ BitVec 32) (_ BitVec 32)) Unit!33782)

(assert (=> b!1031986 (= lt!455896 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11345 thiss!1427) (index!41227 lt!455890) (mask!29978 thiss!1427)))))

(declare-datatypes ((List!22009 0))(
  ( (Nil!22006) (Cons!22005 (h!23207 (_ BitVec 64)) (t!31206 List!22009)) )
))
(declare-fun arrayNoDuplicates!0 (array!64878 (_ BitVec 32) List!22009) Bool)

(assert (=> b!1031986 (arrayNoDuplicates!0 lt!455887 #b00000000000000000000000000000000 Nil!22006)))

(declare-fun lt!455892 () Unit!33782)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64878 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22009) Unit!33782)

(assert (=> b!1031986 (= lt!455892 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11345 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41227 lt!455890) #b00000000000000000000000000000000 Nil!22006))))

(declare-fun arrayCountValidKeys!0 (array!64878 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1031986 (= (arrayCountValidKeys!0 lt!455887 #b00000000000000000000000000000000 (size!31755 (_keys!11345 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11345 thiss!1427) #b00000000000000000000000000000000 (size!31755 (_keys!11345 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1031986 (= lt!455887 (array!64879 (store (arr!31237 (_keys!11345 thiss!1427)) (index!41227 lt!455890) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31755 (_keys!11345 thiss!1427))))))

(declare-fun lt!455891 () Unit!33782)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64878 (_ BitVec 32) (_ BitVec 64)) Unit!33782)

(assert (=> b!1031986 (= lt!455891 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11345 thiss!1427) (index!41227 lt!455890) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1031987 () Bool)

(declare-fun e!583022 () Bool)

(assert (=> b!1031987 (= e!583022 tp_is_empty!24415)))

(declare-fun b!1031988 () Bool)

(declare-fun res!689957 () Bool)

(assert (=> b!1031988 (=> (not res!689957) (not e!583026))))

(assert (=> b!1031988 (= res!689957 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1031989 () Bool)

(declare-fun e!583024 () Bool)

(declare-fun mapRes!38076 () Bool)

(assert (=> b!1031989 (= e!583024 (and e!583018 mapRes!38076))))

(declare-fun condMapEmpty!38076 () Bool)

(declare-fun mapDefault!38076 () ValueCell!11504)

