; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90126 () Bool)

(assert start!90126)

(declare-fun b!1032020 () Bool)

(declare-fun b_free!20697 () Bool)

(declare-fun b_next!20697 () Bool)

(assert (=> b!1032020 (= b_free!20697 (not b_next!20697))))

(declare-fun tp!73162 () Bool)

(declare-fun b_and!33179 () Bool)

(assert (=> b!1032020 (= tp!73162 b_and!33179)))

(declare-fun res!689969 () Bool)

(declare-fun e!583055 () Bool)

(assert (=> start!90126 (=> (not res!689969) (not e!583055))))

(declare-datatypes ((V!37429 0))(
  ( (V!37430 (val!12259 Int)) )
))
(declare-datatypes ((ValueCell!11505 0))(
  ( (ValueCellFull!11505 (v!14837 V!37429)) (EmptyCell!11505) )
))
(declare-datatypes ((array!64882 0))(
  ( (array!64883 (arr!31239 (Array (_ BitVec 32) (_ BitVec 64))) (size!31757 (_ BitVec 32))) )
))
(declare-datatypes ((array!64884 0))(
  ( (array!64885 (arr!31240 (Array (_ BitVec 32) ValueCell!11505)) (size!31758 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5604 0))(
  ( (LongMapFixedSize!5605 (defaultEntry!6176 Int) (mask!29979 (_ BitVec 32)) (extraKeys!5908 (_ BitVec 32)) (zeroValue!6012 V!37429) (minValue!6012 V!37429) (_size!2857 (_ BitVec 32)) (_keys!11346 array!64882) (_values!6199 array!64884) (_vacant!2857 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5604)

(declare-fun valid!2073 (LongMapFixedSize!5604) Bool)

(assert (=> start!90126 (= res!689969 (valid!2073 thiss!1427))))

(assert (=> start!90126 e!583055))

(declare-fun e!583052 () Bool)

(assert (=> start!90126 e!583052))

(assert (=> start!90126 true))

(declare-fun tp_is_empty!24417 () Bool)

(declare-fun e!583053 () Bool)

(declare-fun array_inv!24019 (array!64882) Bool)

(declare-fun array_inv!24020 (array!64884) Bool)

(assert (=> b!1032020 (= e!583052 (and tp!73162 tp_is_empty!24417 (array_inv!24019 (_keys!11346 thiss!1427)) (array_inv!24020 (_values!6199 thiss!1427)) e!583053))))

(declare-fun b!1032021 () Bool)

(declare-fun e!583051 () Bool)

(assert (=> b!1032021 (= e!583051 (not true))))

(declare-fun lt!455924 () Bool)

(declare-datatypes ((Unit!33787 0))(
  ( (Unit!33788) )
))
(declare-datatypes ((tuple2!15826 0))(
  ( (tuple2!15827 (_1!7923 Unit!33787) (_2!7923 LongMapFixedSize!5604)) )
))
(declare-fun lt!455925 () tuple2!15826)

(assert (=> b!1032021 (= lt!455924 (valid!2073 (_2!7923 lt!455925)))))

(declare-fun lt!455934 () Unit!33787)

(declare-fun e!583048 () Unit!33787)

(assert (=> b!1032021 (= lt!455934 e!583048)))

(declare-fun c!104242 () Bool)

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15828 0))(
  ( (tuple2!15829 (_1!7924 (_ BitVec 64)) (_2!7924 V!37429)) )
))
(declare-datatypes ((List!22010 0))(
  ( (Nil!22007) (Cons!22006 (h!23208 tuple2!15828) (t!31209 List!22010)) )
))
(declare-datatypes ((ListLongMap!13867 0))(
  ( (ListLongMap!13868 (toList!6949 List!22010)) )
))
(declare-fun contains!6028 (ListLongMap!13867 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3956 (array!64882 array!64884 (_ BitVec 32) (_ BitVec 32) V!37429 V!37429 (_ BitVec 32) Int) ListLongMap!13867)

(assert (=> b!1032021 (= c!104242 (contains!6028 (getCurrentListMap!3956 (_keys!11346 (_2!7923 lt!455925)) (_values!6199 (_2!7923 lt!455925)) (mask!29979 (_2!7923 lt!455925)) (extraKeys!5908 (_2!7923 lt!455925)) (zeroValue!6012 (_2!7923 lt!455925)) (minValue!6012 (_2!7923 lt!455925)) #b00000000000000000000000000000000 (defaultEntry!6176 (_2!7923 lt!455925))) key!909))))

(declare-fun lt!455931 () array!64884)

(declare-fun lt!455923 () array!64882)

(declare-fun Unit!33789 () Unit!33787)

(declare-fun Unit!33790 () Unit!33787)

(assert (=> b!1032021 (= lt!455925 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2857 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15827 Unit!33789 (LongMapFixedSize!5605 (defaultEntry!6176 thiss!1427) (mask!29979 thiss!1427) (extraKeys!5908 thiss!1427) (zeroValue!6012 thiss!1427) (minValue!6012 thiss!1427) (bvsub (_size!2857 thiss!1427) #b00000000000000000000000000000001) lt!455923 lt!455931 (bvadd #b00000000000000000000000000000001 (_vacant!2857 thiss!1427)))) (tuple2!15827 Unit!33790 (LongMapFixedSize!5605 (defaultEntry!6176 thiss!1427) (mask!29979 thiss!1427) (extraKeys!5908 thiss!1427) (zeroValue!6012 thiss!1427) (minValue!6012 thiss!1427) (bvsub (_size!2857 thiss!1427) #b00000000000000000000000000000001) lt!455923 lt!455931 (_vacant!2857 thiss!1427)))))))

(declare-fun -!525 (ListLongMap!13867 (_ BitVec 64)) ListLongMap!13867)

(assert (=> b!1032021 (= (-!525 (getCurrentListMap!3956 (_keys!11346 thiss!1427) (_values!6199 thiss!1427) (mask!29979 thiss!1427) (extraKeys!5908 thiss!1427) (zeroValue!6012 thiss!1427) (minValue!6012 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6176 thiss!1427)) key!909) (getCurrentListMap!3956 lt!455923 lt!455931 (mask!29979 thiss!1427) (extraKeys!5908 thiss!1427) (zeroValue!6012 thiss!1427) (minValue!6012 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6176 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9715 0))(
  ( (MissingZero!9715 (index!41230 (_ BitVec 32))) (Found!9715 (index!41231 (_ BitVec 32))) (Intermediate!9715 (undefined!10527 Bool) (index!41232 (_ BitVec 32)) (x!91932 (_ BitVec 32))) (Undefined!9715) (MissingVacant!9715 (index!41233 (_ BitVec 32))) )
))
(declare-fun lt!455929 () SeekEntryResult!9715)

(declare-fun dynLambda!2000 (Int (_ BitVec 64)) V!37429)

(assert (=> b!1032021 (= lt!455931 (array!64885 (store (arr!31240 (_values!6199 thiss!1427)) (index!41231 lt!455929) (ValueCellFull!11505 (dynLambda!2000 (defaultEntry!6176 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31758 (_values!6199 thiss!1427))))))

(declare-fun lt!455927 () Unit!33787)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!49 (array!64882 array!64884 (_ BitVec 32) (_ BitVec 32) V!37429 V!37429 (_ BitVec 32) (_ BitVec 64) Int) Unit!33787)

(assert (=> b!1032021 (= lt!455927 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!49 (_keys!11346 thiss!1427) (_values!6199 thiss!1427) (mask!29979 thiss!1427) (extraKeys!5908 thiss!1427) (zeroValue!6012 thiss!1427) (minValue!6012 thiss!1427) (index!41231 lt!455929) key!909 (defaultEntry!6176 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64882 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1032021 (not (arrayContainsKey!0 lt!455923 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455932 () Unit!33787)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64882 (_ BitVec 32) (_ BitVec 64)) Unit!33787)

(assert (=> b!1032021 (= lt!455932 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11346 thiss!1427) (index!41231 lt!455929) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64882 (_ BitVec 32)) Bool)

(assert (=> b!1032021 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455923 (mask!29979 thiss!1427))))

(declare-fun lt!455933 () Unit!33787)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64882 (_ BitVec 32) (_ BitVec 32)) Unit!33787)

(assert (=> b!1032021 (= lt!455933 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11346 thiss!1427) (index!41231 lt!455929) (mask!29979 thiss!1427)))))

(declare-datatypes ((List!22011 0))(
  ( (Nil!22008) (Cons!22007 (h!23209 (_ BitVec 64)) (t!31210 List!22011)) )
))
(declare-fun arrayNoDuplicates!0 (array!64882 (_ BitVec 32) List!22011) Bool)

(assert (=> b!1032021 (arrayNoDuplicates!0 lt!455923 #b00000000000000000000000000000000 Nil!22008)))

(declare-fun lt!455926 () Unit!33787)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64882 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22011) Unit!33787)

(assert (=> b!1032021 (= lt!455926 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11346 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41231 lt!455929) #b00000000000000000000000000000000 Nil!22008))))

(declare-fun arrayCountValidKeys!0 (array!64882 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1032021 (= (arrayCountValidKeys!0 lt!455923 #b00000000000000000000000000000000 (size!31757 (_keys!11346 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11346 thiss!1427) #b00000000000000000000000000000000 (size!31757 (_keys!11346 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1032021 (= lt!455923 (array!64883 (store (arr!31239 (_keys!11346 thiss!1427)) (index!41231 lt!455929) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31757 (_keys!11346 thiss!1427))))))

(declare-fun lt!455928 () Unit!33787)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64882 (_ BitVec 32) (_ BitVec 64)) Unit!33787)

(assert (=> b!1032021 (= lt!455928 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11346 thiss!1427) (index!41231 lt!455929) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!38079 () Bool)

(declare-fun mapRes!38079 () Bool)

(assert (=> mapIsEmpty!38079 mapRes!38079))

(declare-fun b!1032022 () Bool)

(declare-fun e!583056 () Bool)

(assert (=> b!1032022 (= e!583056 tp_is_empty!24417)))

(declare-fun b!1032023 () Bool)

(declare-fun e!583050 () Bool)

(assert (=> b!1032023 (= e!583050 false)))

(declare-fun b!1032024 () Bool)

(declare-fun Unit!33791 () Unit!33787)

(assert (=> b!1032024 (= e!583048 Unit!33791)))

(declare-fun lt!455930 () Unit!33787)

(declare-fun lemmaKeyInListMapIsInArray!356 (array!64882 array!64884 (_ BitVec 32) (_ BitVec 32) V!37429 V!37429 (_ BitVec 64) Int) Unit!33787)

(assert (=> b!1032024 (= lt!455930 (lemmaKeyInListMapIsInArray!356 (_keys!11346 (_2!7923 lt!455925)) (_values!6199 (_2!7923 lt!455925)) (mask!29979 (_2!7923 lt!455925)) (extraKeys!5908 (_2!7923 lt!455925)) (zeroValue!6012 (_2!7923 lt!455925)) (minValue!6012 (_2!7923 lt!455925)) key!909 (defaultEntry!6176 (_2!7923 lt!455925))))))

(declare-fun c!104243 () Bool)

(assert (=> b!1032024 (= c!104243 (and (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!909 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!689968 () Bool)

(declare-fun e!583049 () Bool)

(assert (=> b!1032024 (= res!689968 e!583049)))

(assert (=> b!1032024 (=> (not res!689968) (not e!583050))))

(assert (=> b!1032024 e!583050))

(declare-fun mapNonEmpty!38079 () Bool)

(declare-fun tp!73163 () Bool)

(assert (=> mapNonEmpty!38079 (= mapRes!38079 (and tp!73163 e!583056))))

(declare-fun mapKey!38079 () (_ BitVec 32))

(declare-fun mapValue!38079 () ValueCell!11505)

(declare-fun mapRest!38079 () (Array (_ BitVec 32) ValueCell!11505))

(assert (=> mapNonEmpty!38079 (= (arr!31240 (_values!6199 thiss!1427)) (store mapRest!38079 mapKey!38079 mapValue!38079))))

(declare-fun b!1032025 () Bool)

(assert (=> b!1032025 (= e!583049 (arrayContainsKey!0 (_keys!11346 (_2!7923 lt!455925)) key!909 #b00000000000000000000000000000000))))

(declare-fun b!1032026 () Bool)

(declare-fun res!689967 () Bool)

(assert (=> b!1032026 (=> (not res!689967) (not e!583055))))

(assert (=> b!1032026 (= res!689967 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1032027 () Bool)

(declare-fun e!583054 () Bool)

(assert (=> b!1032027 (= e!583053 (and e!583054 mapRes!38079))))

(declare-fun condMapEmpty!38079 () Bool)

(declare-fun mapDefault!38079 () ValueCell!11505)

(assert (=> b!1032027 (= condMapEmpty!38079 (= (arr!31240 (_values!6199 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11505)) mapDefault!38079)))))

(declare-fun b!1032028 () Bool)

(assert (=> b!1032028 (= e!583049 (ite (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5908 (_2!7923 lt!455925)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5908 (_2!7923 lt!455925)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1032029 () Bool)

(assert (=> b!1032029 (= e!583055 e!583051)))

(declare-fun res!689970 () Bool)

(assert (=> b!1032029 (=> (not res!689970) (not e!583051))))

(get-info :version)

(assert (=> b!1032029 (= res!689970 ((_ is Found!9715) lt!455929))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64882 (_ BitVec 32)) SeekEntryResult!9715)

(assert (=> b!1032029 (= lt!455929 (seekEntry!0 key!909 (_keys!11346 thiss!1427) (mask!29979 thiss!1427)))))

(declare-fun b!1032030 () Bool)

(assert (=> b!1032030 (= e!583054 tp_is_empty!24417)))

(declare-fun b!1032031 () Bool)

(declare-fun Unit!33792 () Unit!33787)

(assert (=> b!1032031 (= e!583048 Unit!33792)))

(assert (= (and start!90126 res!689969) b!1032026))

(assert (= (and b!1032026 res!689967) b!1032029))

(assert (= (and b!1032029 res!689970) b!1032021))

(assert (= (and b!1032021 c!104242) b!1032024))

(assert (= (and b!1032021 (not c!104242)) b!1032031))

(assert (= (and b!1032024 c!104243) b!1032025))

(assert (= (and b!1032024 (not c!104243)) b!1032028))

(assert (= (and b!1032024 res!689968) b!1032023))

(assert (= (and b!1032027 condMapEmpty!38079) mapIsEmpty!38079))

(assert (= (and b!1032027 (not condMapEmpty!38079)) mapNonEmpty!38079))

(assert (= (and mapNonEmpty!38079 ((_ is ValueCellFull!11505) mapValue!38079)) b!1032022))

(assert (= (and b!1032027 ((_ is ValueCellFull!11505) mapDefault!38079)) b!1032030))

(assert (= b!1032020 b!1032027))

(assert (= start!90126 b!1032020))

(declare-fun b_lambda!16071 () Bool)

(assert (=> (not b_lambda!16071) (not b!1032021)))

(declare-fun t!31208 () Bool)

(declare-fun tb!7023 () Bool)

(assert (=> (and b!1032020 (= (defaultEntry!6176 thiss!1427) (defaultEntry!6176 thiss!1427)) t!31208) tb!7023))

(declare-fun result!14367 () Bool)

(assert (=> tb!7023 (= result!14367 tp_is_empty!24417)))

(assert (=> b!1032021 t!31208))

(declare-fun b_and!33181 () Bool)

(assert (= b_and!33179 (and (=> t!31208 result!14367) b_and!33181)))

(declare-fun m!952537 () Bool)

(assert (=> b!1032025 m!952537))

(declare-fun m!952539 () Bool)

(assert (=> mapNonEmpty!38079 m!952539))

(declare-fun m!952541 () Bool)

(assert (=> start!90126 m!952541))

(declare-fun m!952543 () Bool)

(assert (=> b!1032029 m!952543))

(declare-fun m!952545 () Bool)

(assert (=> b!1032024 m!952545))

(declare-fun m!952547 () Bool)

(assert (=> b!1032020 m!952547))

(declare-fun m!952549 () Bool)

(assert (=> b!1032020 m!952549))

(declare-fun m!952551 () Bool)

(assert (=> b!1032021 m!952551))

(declare-fun m!952553 () Bool)

(assert (=> b!1032021 m!952553))

(declare-fun m!952555 () Bool)

(assert (=> b!1032021 m!952555))

(declare-fun m!952557 () Bool)

(assert (=> b!1032021 m!952557))

(declare-fun m!952559 () Bool)

(assert (=> b!1032021 m!952559))

(declare-fun m!952561 () Bool)

(assert (=> b!1032021 m!952561))

(declare-fun m!952563 () Bool)

(assert (=> b!1032021 m!952563))

(declare-fun m!952565 () Bool)

(assert (=> b!1032021 m!952565))

(declare-fun m!952567 () Bool)

(assert (=> b!1032021 m!952567))

(declare-fun m!952569 () Bool)

(assert (=> b!1032021 m!952569))

(declare-fun m!952571 () Bool)

(assert (=> b!1032021 m!952571))

(declare-fun m!952573 () Bool)

(assert (=> b!1032021 m!952573))

(declare-fun m!952575 () Bool)

(assert (=> b!1032021 m!952575))

(declare-fun m!952577 () Bool)

(assert (=> b!1032021 m!952577))

(declare-fun m!952579 () Bool)

(assert (=> b!1032021 m!952579))

(assert (=> b!1032021 m!952565))

(declare-fun m!952581 () Bool)

(assert (=> b!1032021 m!952581))

(declare-fun m!952583 () Bool)

(assert (=> b!1032021 m!952583))

(declare-fun m!952585 () Bool)

(assert (=> b!1032021 m!952585))

(assert (=> b!1032021 m!952561))

(declare-fun m!952587 () Bool)

(assert (=> b!1032021 m!952587))

(check-sat (not b!1032029) (not b_lambda!16071) (not b!1032024) (not b!1032021) (not mapNonEmpty!38079) (not b!1032025) (not start!90126) (not b!1032020) (not b_next!20697) tp_is_empty!24417 b_and!33181)
(check-sat b_and!33181 (not b_next!20697))
