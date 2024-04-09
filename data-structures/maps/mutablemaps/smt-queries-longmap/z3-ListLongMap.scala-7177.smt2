; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91810 () Bool)

(assert start!91810)

(declare-fun b!1044286 () Bool)

(declare-fun b_free!21117 () Bool)

(declare-fun b_next!21117 () Bool)

(assert (=> b!1044286 (= b_free!21117 (not b_next!21117))))

(declare-fun tp!74598 () Bool)

(declare-fun b_and!33707 () Bool)

(assert (=> b!1044286 (= tp!74598 b_and!33707)))

(declare-fun b!1044278 () Bool)

(declare-fun e!591851 () Bool)

(declare-fun e!591854 () Bool)

(assert (=> b!1044278 (= e!591851 e!591854)))

(declare-fun res!695631 () Bool)

(assert (=> b!1044278 (=> (not res!695631) (not e!591854))))

(declare-datatypes ((SeekEntryResult!9838 0))(
  ( (MissingZero!9838 (index!41722 (_ BitVec 32))) (Found!9838 (index!41723 (_ BitVec 32))) (Intermediate!9838 (undefined!10650 Bool) (index!41724 (_ BitVec 32)) (x!93249 (_ BitVec 32))) (Undefined!9838) (MissingVacant!9838 (index!41725 (_ BitVec 32))) )
))
(declare-fun lt!460620 () SeekEntryResult!9838)

(get-info :version)

(assert (=> b!1044278 (= res!695631 ((_ is Found!9838) lt!460620))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37989 0))(
  ( (V!37990 (val!12469 Int)) )
))
(declare-datatypes ((ValueCell!11715 0))(
  ( (ValueCellFull!11715 (v!15062 V!37989)) (EmptyCell!11715) )
))
(declare-datatypes ((array!65826 0))(
  ( (array!65827 (arr!31659 (Array (_ BitVec 32) (_ BitVec 64))) (size!32195 (_ BitVec 32))) )
))
(declare-datatypes ((array!65828 0))(
  ( (array!65829 (arr!31660 (Array (_ BitVec 32) ValueCell!11715)) (size!32196 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6024 0))(
  ( (LongMapFixedSize!6025 (defaultEntry!6400 Int) (mask!30502 (_ BitVec 32)) (extraKeys!6128 (_ BitVec 32)) (zeroValue!6234 V!37989) (minValue!6234 V!37989) (_size!3067 (_ BitVec 32)) (_keys!11661 array!65826) (_values!6423 array!65828) (_vacant!3067 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6024)

(declare-fun seekEntry!0 ((_ BitVec 64) array!65826 (_ BitVec 32)) SeekEntryResult!9838)

(assert (=> b!1044278 (= lt!460620 (seekEntry!0 key!909 (_keys!11661 thiss!1427) (mask!30502 thiss!1427)))))

(declare-fun res!695632 () Bool)

(assert (=> start!91810 (=> (not res!695632) (not e!591851))))

(declare-fun valid!2215 (LongMapFixedSize!6024) Bool)

(assert (=> start!91810 (= res!695632 (valid!2215 thiss!1427))))

(assert (=> start!91810 e!591851))

(declare-fun e!591855 () Bool)

(assert (=> start!91810 e!591855))

(assert (=> start!91810 true))

(declare-fun b!1044279 () Bool)

(declare-fun e!591850 () Bool)

(assert (=> b!1044279 (= e!591854 (not e!591850))))

(declare-fun res!695635 () Bool)

(assert (=> b!1044279 (=> res!695635 e!591850)))

(declare-datatypes ((Unit!34096 0))(
  ( (Unit!34097) )
))
(declare-datatypes ((tuple2!15858 0))(
  ( (tuple2!15859 (_1!7939 Unit!34096) (_2!7939 LongMapFixedSize!6024)) )
))
(declare-fun lt!460613 () tuple2!15858)

(declare-datatypes ((tuple2!15860 0))(
  ( (tuple2!15861 (_1!7940 (_ BitVec 64)) (_2!7940 V!37989)) )
))
(declare-datatypes ((List!22130 0))(
  ( (Nil!22127) (Cons!22126 (h!23334 tuple2!15860) (t!31375 List!22130)) )
))
(declare-datatypes ((ListLongMap!13891 0))(
  ( (ListLongMap!13892 (toList!6961 List!22130)) )
))
(declare-fun contains!6091 (ListLongMap!13891 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3967 (array!65826 array!65828 (_ BitVec 32) (_ BitVec 32) V!37989 V!37989 (_ BitVec 32) Int) ListLongMap!13891)

(assert (=> b!1044279 (= res!695635 (not (contains!6091 (getCurrentListMap!3967 (_keys!11661 (_2!7939 lt!460613)) (_values!6423 (_2!7939 lt!460613)) (mask!30502 (_2!7939 lt!460613)) (extraKeys!6128 (_2!7939 lt!460613)) (zeroValue!6234 (_2!7939 lt!460613)) (minValue!6234 (_2!7939 lt!460613)) #b00000000000000000000000000000000 (defaultEntry!6400 (_2!7939 lt!460613))) key!909)))))

(declare-fun lt!460619 () array!65828)

(declare-fun lt!460614 () array!65826)

(declare-fun Unit!34098 () Unit!34096)

(declare-fun Unit!34099 () Unit!34096)

(assert (=> b!1044279 (= lt!460613 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!3067 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15859 Unit!34098 (LongMapFixedSize!6025 (defaultEntry!6400 thiss!1427) (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) (bvsub (_size!3067 thiss!1427) #b00000000000000000000000000000001) lt!460614 lt!460619 (bvadd #b00000000000000000000000000000001 (_vacant!3067 thiss!1427)))) (tuple2!15859 Unit!34099 (LongMapFixedSize!6025 (defaultEntry!6400 thiss!1427) (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) (bvsub (_size!3067 thiss!1427) #b00000000000000000000000000000001) lt!460614 lt!460619 (_vacant!3067 thiss!1427)))))))

(declare-fun -!537 (ListLongMap!13891 (_ BitVec 64)) ListLongMap!13891)

(assert (=> b!1044279 (= (-!537 (getCurrentListMap!3967 (_keys!11661 thiss!1427) (_values!6423 thiss!1427) (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6400 thiss!1427)) key!909) (getCurrentListMap!3967 lt!460614 lt!460619 (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6400 thiss!1427)))))

(declare-fun dynLambda!2011 (Int (_ BitVec 64)) V!37989)

(assert (=> b!1044279 (= lt!460619 (array!65829 (store (arr!31660 (_values!6423 thiss!1427)) (index!41723 lt!460620) (ValueCellFull!11715 (dynLambda!2011 (defaultEntry!6400 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32196 (_values!6423 thiss!1427))))))

(declare-fun lt!460618 () Unit!34096)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!57 (array!65826 array!65828 (_ BitVec 32) (_ BitVec 32) V!37989 V!37989 (_ BitVec 32) (_ BitVec 64) Int) Unit!34096)

(assert (=> b!1044279 (= lt!460618 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!57 (_keys!11661 thiss!1427) (_values!6423 thiss!1427) (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) (index!41723 lt!460620) key!909 (defaultEntry!6400 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!65826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1044279 (not (arrayContainsKey!0 lt!460614 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!460612 () Unit!34096)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65826 (_ BitVec 32) (_ BitVec 64)) Unit!34096)

(assert (=> b!1044279 (= lt!460612 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11661 thiss!1427) (index!41723 lt!460620) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65826 (_ BitVec 32)) Bool)

(assert (=> b!1044279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!460614 (mask!30502 thiss!1427))))

(declare-fun lt!460617 () Unit!34096)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65826 (_ BitVec 32) (_ BitVec 32)) Unit!34096)

(assert (=> b!1044279 (= lt!460617 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11661 thiss!1427) (index!41723 lt!460620) (mask!30502 thiss!1427)))))

(declare-datatypes ((List!22131 0))(
  ( (Nil!22128) (Cons!22127 (h!23335 (_ BitVec 64)) (t!31376 List!22131)) )
))
(declare-fun arrayNoDuplicates!0 (array!65826 (_ BitVec 32) List!22131) Bool)

(assert (=> b!1044279 (arrayNoDuplicates!0 lt!460614 #b00000000000000000000000000000000 Nil!22128)))

(declare-fun lt!460616 () Unit!34096)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65826 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22131) Unit!34096)

(assert (=> b!1044279 (= lt!460616 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11661 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41723 lt!460620) #b00000000000000000000000000000000 Nil!22128))))

(declare-fun arrayCountValidKeys!0 (array!65826 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1044279 (= (arrayCountValidKeys!0 lt!460614 #b00000000000000000000000000000000 (size!32195 (_keys!11661 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11661 thiss!1427) #b00000000000000000000000000000000 (size!32195 (_keys!11661 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1044279 (= lt!460614 (array!65827 (store (arr!31659 (_keys!11661 thiss!1427)) (index!41723 lt!460620) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32195 (_keys!11661 thiss!1427))))))

(declare-fun lt!460615 () Unit!34096)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65826 (_ BitVec 32) (_ BitVec 64)) Unit!34096)

(assert (=> b!1044279 (= lt!460615 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11661 thiss!1427) (index!41723 lt!460620) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1044280 () Bool)

(declare-fun res!695633 () Bool)

(assert (=> b!1044280 (=> res!695633 e!591850)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1044280 (= res!695633 (not (validMask!0 (mask!30502 (_2!7939 lt!460613)))))))

(declare-fun b!1044281 () Bool)

(declare-fun e!591856 () Bool)

(declare-fun e!591857 () Bool)

(declare-fun mapRes!38885 () Bool)

(assert (=> b!1044281 (= e!591856 (and e!591857 mapRes!38885))))

(declare-fun condMapEmpty!38885 () Bool)

(declare-fun mapDefault!38885 () ValueCell!11715)

(assert (=> b!1044281 (= condMapEmpty!38885 (= (arr!31660 (_values!6423 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11715)) mapDefault!38885)))))

(declare-fun mapIsEmpty!38885 () Bool)

(assert (=> mapIsEmpty!38885 mapRes!38885))

(declare-fun b!1044282 () Bool)

(declare-fun tp_is_empty!24837 () Bool)

(assert (=> b!1044282 (= e!591857 tp_is_empty!24837)))

(declare-fun mapNonEmpty!38885 () Bool)

(declare-fun tp!74599 () Bool)

(declare-fun e!591852 () Bool)

(assert (=> mapNonEmpty!38885 (= mapRes!38885 (and tp!74599 e!591852))))

(declare-fun mapKey!38885 () (_ BitVec 32))

(declare-fun mapRest!38885 () (Array (_ BitVec 32) ValueCell!11715))

(declare-fun mapValue!38885 () ValueCell!11715)

(assert (=> mapNonEmpty!38885 (= (arr!31660 (_values!6423 thiss!1427)) (store mapRest!38885 mapKey!38885 mapValue!38885))))

(declare-fun b!1044283 () Bool)

(declare-fun res!695634 () Bool)

(assert (=> b!1044283 (=> (not res!695634) (not e!591851))))

(assert (=> b!1044283 (= res!695634 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1044284 () Bool)

(assert (=> b!1044284 (= e!591850 (= (size!32196 (_values!6423 (_2!7939 lt!460613))) (bvadd #b00000000000000000000000000000001 (mask!30502 (_2!7939 lt!460613)))))))

(declare-fun b!1044285 () Bool)

(assert (=> b!1044285 (= e!591852 tp_is_empty!24837)))

(declare-fun array_inv!24301 (array!65826) Bool)

(declare-fun array_inv!24302 (array!65828) Bool)

(assert (=> b!1044286 (= e!591855 (and tp!74598 tp_is_empty!24837 (array_inv!24301 (_keys!11661 thiss!1427)) (array_inv!24302 (_values!6423 thiss!1427)) e!591856))))

(assert (= (and start!91810 res!695632) b!1044283))

(assert (= (and b!1044283 res!695634) b!1044278))

(assert (= (and b!1044278 res!695631) b!1044279))

(assert (= (and b!1044279 (not res!695635)) b!1044280))

(assert (= (and b!1044280 (not res!695633)) b!1044284))

(assert (= (and b!1044281 condMapEmpty!38885) mapIsEmpty!38885))

(assert (= (and b!1044281 (not condMapEmpty!38885)) mapNonEmpty!38885))

(assert (= (and mapNonEmpty!38885 ((_ is ValueCellFull!11715) mapValue!38885)) b!1044285))

(assert (= (and b!1044281 ((_ is ValueCellFull!11715) mapDefault!38885)) b!1044282))

(assert (= b!1044286 b!1044281))

(assert (= start!91810 b!1044286))

(declare-fun b_lambda!16251 () Bool)

(assert (=> (not b_lambda!16251) (not b!1044279)))

(declare-fun t!31374 () Bool)

(declare-fun tb!7067 () Bool)

(assert (=> (and b!1044286 (= (defaultEntry!6400 thiss!1427) (defaultEntry!6400 thiss!1427)) t!31374) tb!7067))

(declare-fun result!14551 () Bool)

(assert (=> tb!7067 (= result!14551 tp_is_empty!24837)))

(assert (=> b!1044279 t!31374))

(declare-fun b_and!33709 () Bool)

(assert (= b_and!33707 (and (=> t!31374 result!14551) b_and!33709)))

(declare-fun m!963833 () Bool)

(assert (=> mapNonEmpty!38885 m!963833))

(declare-fun m!963835 () Bool)

(assert (=> b!1044279 m!963835))

(declare-fun m!963837 () Bool)

(assert (=> b!1044279 m!963837))

(declare-fun m!963839 () Bool)

(assert (=> b!1044279 m!963839))

(declare-fun m!963841 () Bool)

(assert (=> b!1044279 m!963841))

(assert (=> b!1044279 m!963839))

(declare-fun m!963843 () Bool)

(assert (=> b!1044279 m!963843))

(declare-fun m!963845 () Bool)

(assert (=> b!1044279 m!963845))

(declare-fun m!963847 () Bool)

(assert (=> b!1044279 m!963847))

(declare-fun m!963849 () Bool)

(assert (=> b!1044279 m!963849))

(declare-fun m!963851 () Bool)

(assert (=> b!1044279 m!963851))

(declare-fun m!963853 () Bool)

(assert (=> b!1044279 m!963853))

(declare-fun m!963855 () Bool)

(assert (=> b!1044279 m!963855))

(declare-fun m!963857 () Bool)

(assert (=> b!1044279 m!963857))

(declare-fun m!963859 () Bool)

(assert (=> b!1044279 m!963859))

(declare-fun m!963861 () Bool)

(assert (=> b!1044279 m!963861))

(declare-fun m!963863 () Bool)

(assert (=> b!1044279 m!963863))

(declare-fun m!963865 () Bool)

(assert (=> b!1044279 m!963865))

(declare-fun m!963867 () Bool)

(assert (=> b!1044279 m!963867))

(declare-fun m!963869 () Bool)

(assert (=> b!1044279 m!963869))

(assert (=> b!1044279 m!963865))

(declare-fun m!963871 () Bool)

(assert (=> b!1044286 m!963871))

(declare-fun m!963873 () Bool)

(assert (=> b!1044286 m!963873))

(declare-fun m!963875 () Bool)

(assert (=> b!1044280 m!963875))

(declare-fun m!963877 () Bool)

(assert (=> b!1044278 m!963877))

(declare-fun m!963879 () Bool)

(assert (=> start!91810 m!963879))

(check-sat b_and!33709 (not b!1044280) (not b!1044278) (not b!1044279) (not b!1044286) (not b_next!21117) (not b_lambda!16251) (not mapNonEmpty!38885) tp_is_empty!24837 (not start!91810))
(check-sat b_and!33709 (not b_next!21117))
(get-model)

(declare-fun b_lambda!16255 () Bool)

(assert (= b_lambda!16251 (or (and b!1044286 b_free!21117) b_lambda!16255)))

(check-sat b_and!33709 (not b!1044280) (not b!1044278) (not b!1044279) (not b!1044286) (not b_next!21117) (not mapNonEmpty!38885) (not b_lambda!16255) tp_is_empty!24837 (not start!91810))
(check-sat b_and!33709 (not b_next!21117))
(get-model)

(declare-fun b!1044330 () Bool)

(declare-fun e!591889 () SeekEntryResult!9838)

(assert (=> b!1044330 (= e!591889 Undefined!9838)))

(declare-fun b!1044331 () Bool)

(declare-fun e!591890 () SeekEntryResult!9838)

(assert (=> b!1044331 (= e!591889 e!591890)))

(declare-fun lt!460656 () (_ BitVec 64))

(declare-fun lt!460658 () SeekEntryResult!9838)

(assert (=> b!1044331 (= lt!460656 (select (arr!31659 (_keys!11661 thiss!1427)) (index!41724 lt!460658)))))

(declare-fun c!106038 () Bool)

(assert (=> b!1044331 (= c!106038 (= lt!460656 key!909))))

(declare-fun b!1044332 () Bool)

(declare-fun e!591888 () SeekEntryResult!9838)

(assert (=> b!1044332 (= e!591888 (MissingZero!9838 (index!41724 lt!460658)))))

(declare-fun b!1044333 () Bool)

(declare-fun lt!460657 () SeekEntryResult!9838)

(assert (=> b!1044333 (= e!591888 (ite ((_ is MissingVacant!9838) lt!460657) (MissingZero!9838 (index!41725 lt!460657)) lt!460657))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65826 (_ BitVec 32)) SeekEntryResult!9838)

(assert (=> b!1044333 (= lt!460657 (seekKeyOrZeroReturnVacant!0 (x!93249 lt!460658) (index!41724 lt!460658) (index!41724 lt!460658) key!909 (_keys!11661 thiss!1427) (mask!30502 thiss!1427)))))

(declare-fun b!1044334 () Bool)

(declare-fun c!106039 () Bool)

(assert (=> b!1044334 (= c!106039 (= lt!460656 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1044334 (= e!591890 e!591888)))

(declare-fun b!1044335 () Bool)

(assert (=> b!1044335 (= e!591890 (Found!9838 (index!41724 lt!460658)))))

(declare-fun d!126329 () Bool)

(declare-fun lt!460659 () SeekEntryResult!9838)

(assert (=> d!126329 (and (or ((_ is MissingVacant!9838) lt!460659) (not ((_ is Found!9838) lt!460659)) (and (bvsge (index!41723 lt!460659) #b00000000000000000000000000000000) (bvslt (index!41723 lt!460659) (size!32195 (_keys!11661 thiss!1427))))) (not ((_ is MissingVacant!9838) lt!460659)) (or (not ((_ is Found!9838) lt!460659)) (= (select (arr!31659 (_keys!11661 thiss!1427)) (index!41723 lt!460659)) key!909)))))

(assert (=> d!126329 (= lt!460659 e!591889)))

(declare-fun c!106037 () Bool)

(assert (=> d!126329 (= c!106037 (and ((_ is Intermediate!9838) lt!460658) (undefined!10650 lt!460658)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65826 (_ BitVec 32)) SeekEntryResult!9838)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!126329 (= lt!460658 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30502 thiss!1427)) key!909 (_keys!11661 thiss!1427) (mask!30502 thiss!1427)))))

(assert (=> d!126329 (validMask!0 (mask!30502 thiss!1427))))

(assert (=> d!126329 (= (seekEntry!0 key!909 (_keys!11661 thiss!1427) (mask!30502 thiss!1427)) lt!460659)))

(assert (= (and d!126329 c!106037) b!1044330))

(assert (= (and d!126329 (not c!106037)) b!1044331))

(assert (= (and b!1044331 c!106038) b!1044335))

(assert (= (and b!1044331 (not c!106038)) b!1044334))

(assert (= (and b!1044334 c!106039) b!1044332))

(assert (= (and b!1044334 (not c!106039)) b!1044333))

(declare-fun m!963929 () Bool)

(assert (=> b!1044331 m!963929))

(declare-fun m!963931 () Bool)

(assert (=> b!1044333 m!963931))

(declare-fun m!963933 () Bool)

(assert (=> d!126329 m!963933))

(declare-fun m!963935 () Bool)

(assert (=> d!126329 m!963935))

(assert (=> d!126329 m!963935))

(declare-fun m!963937 () Bool)

(assert (=> d!126329 m!963937))

(declare-fun m!963939 () Bool)

(assert (=> d!126329 m!963939))

(assert (=> b!1044278 d!126329))

(declare-fun d!126331 () Bool)

(assert (=> d!126331 (= (validMask!0 (mask!30502 (_2!7939 lt!460613))) (and (or (= (mask!30502 (_2!7939 lt!460613)) #b00000000000000000000000000000111) (= (mask!30502 (_2!7939 lt!460613)) #b00000000000000000000000000001111) (= (mask!30502 (_2!7939 lt!460613)) #b00000000000000000000000000011111) (= (mask!30502 (_2!7939 lt!460613)) #b00000000000000000000000000111111) (= (mask!30502 (_2!7939 lt!460613)) #b00000000000000000000000001111111) (= (mask!30502 (_2!7939 lt!460613)) #b00000000000000000000000011111111) (= (mask!30502 (_2!7939 lt!460613)) #b00000000000000000000000111111111) (= (mask!30502 (_2!7939 lt!460613)) #b00000000000000000000001111111111) (= (mask!30502 (_2!7939 lt!460613)) #b00000000000000000000011111111111) (= (mask!30502 (_2!7939 lt!460613)) #b00000000000000000000111111111111) (= (mask!30502 (_2!7939 lt!460613)) #b00000000000000000001111111111111) (= (mask!30502 (_2!7939 lt!460613)) #b00000000000000000011111111111111) (= (mask!30502 (_2!7939 lt!460613)) #b00000000000000000111111111111111) (= (mask!30502 (_2!7939 lt!460613)) #b00000000000000001111111111111111) (= (mask!30502 (_2!7939 lt!460613)) #b00000000000000011111111111111111) (= (mask!30502 (_2!7939 lt!460613)) #b00000000000000111111111111111111) (= (mask!30502 (_2!7939 lt!460613)) #b00000000000001111111111111111111) (= (mask!30502 (_2!7939 lt!460613)) #b00000000000011111111111111111111) (= (mask!30502 (_2!7939 lt!460613)) #b00000000000111111111111111111111) (= (mask!30502 (_2!7939 lt!460613)) #b00000000001111111111111111111111) (= (mask!30502 (_2!7939 lt!460613)) #b00000000011111111111111111111111) (= (mask!30502 (_2!7939 lt!460613)) #b00000000111111111111111111111111) (= (mask!30502 (_2!7939 lt!460613)) #b00000001111111111111111111111111) (= (mask!30502 (_2!7939 lt!460613)) #b00000011111111111111111111111111) (= (mask!30502 (_2!7939 lt!460613)) #b00000111111111111111111111111111) (= (mask!30502 (_2!7939 lt!460613)) #b00001111111111111111111111111111) (= (mask!30502 (_2!7939 lt!460613)) #b00011111111111111111111111111111) (= (mask!30502 (_2!7939 lt!460613)) #b00111111111111111111111111111111)) (bvsle (mask!30502 (_2!7939 lt!460613)) #b00111111111111111111111111111111)))))

(assert (=> b!1044280 d!126331))

(declare-fun bm!44356 () Bool)

(declare-fun call!44363 () ListLongMap!13891)

(declare-fun call!44361 () ListLongMap!13891)

(assert (=> bm!44356 (= call!44363 call!44361)))

(declare-fun b!1044378 () Bool)

(declare-fun e!591923 () ListLongMap!13891)

(declare-fun call!44364 () ListLongMap!13891)

(assert (=> b!1044378 (= e!591923 call!44364)))

(declare-fun b!1044379 () Bool)

(declare-fun e!591925 () Bool)

(declare-fun call!44359 () Bool)

(assert (=> b!1044379 (= e!591925 (not call!44359))))

(declare-fun b!1044380 () Bool)

(declare-fun e!591928 () Bool)

(assert (=> b!1044380 (= e!591928 e!591925)))

(declare-fun c!106054 () Bool)

(assert (=> b!1044380 (= c!106054 (not (= (bvand (extraKeys!6128 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1044381 () Bool)

(declare-fun e!591926 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1044381 (= e!591926 (validKeyInArray!0 (select (arr!31659 (_keys!11661 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1044382 () Bool)

(declare-fun e!591918 () Unit!34096)

(declare-fun Unit!34100 () Unit!34096)

(assert (=> b!1044382 (= e!591918 Unit!34100)))

(declare-fun b!1044383 () Bool)

(declare-fun e!591917 () Bool)

(declare-fun e!591921 () Bool)

(assert (=> b!1044383 (= e!591917 e!591921)))

(declare-fun res!695673 () Bool)

(declare-fun call!44365 () Bool)

(assert (=> b!1044383 (= res!695673 call!44365)))

(assert (=> b!1044383 (=> (not res!695673) (not e!591921))))

(declare-fun b!1044384 () Bool)

(declare-fun e!591920 () Bool)

(assert (=> b!1044384 (= e!591925 e!591920)))

(declare-fun res!695677 () Bool)

(assert (=> b!1044384 (= res!695677 call!44359)))

(assert (=> b!1044384 (=> (not res!695677) (not e!591920))))

(declare-fun bm!44358 () Bool)

(declare-fun lt!460721 () ListLongMap!13891)

(assert (=> bm!44358 (= call!44359 (contains!6091 lt!460721 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!44359 () Bool)

(declare-fun call!44360 () ListLongMap!13891)

(assert (=> bm!44359 (= call!44364 call!44360)))

(declare-fun b!1044385 () Bool)

(declare-fun c!106052 () Bool)

(assert (=> b!1044385 (= c!106052 (and (not (= (bvand (extraKeys!6128 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6128 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!591919 () ListLongMap!13891)

(assert (=> b!1044385 (= e!591919 e!591923)))

(declare-fun b!1044386 () Bool)

(declare-fun res!695670 () Bool)

(assert (=> b!1044386 (=> (not res!695670) (not e!591928))))

(declare-fun e!591927 () Bool)

(assert (=> b!1044386 (= res!695670 e!591927)))

(declare-fun res!695672 () Bool)

(assert (=> b!1044386 (=> res!695672 e!591927)))

(assert (=> b!1044386 (= res!695672 (not e!591926))))

(declare-fun res!695671 () Bool)

(assert (=> b!1044386 (=> (not res!695671) (not e!591926))))

(assert (=> b!1044386 (= res!695671 (bvslt #b00000000000000000000000000000000 (size!32195 (_keys!11661 thiss!1427))))))

(declare-fun b!1044387 () Bool)

(declare-fun apply!946 (ListLongMap!13891 (_ BitVec 64)) V!37989)

(assert (=> b!1044387 (= e!591920 (= (apply!946 lt!460721 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6234 thiss!1427)))))

(declare-fun b!1044388 () Bool)

(declare-fun e!591922 () ListLongMap!13891)

(assert (=> b!1044388 (= e!591922 e!591919)))

(declare-fun c!106055 () Bool)

(assert (=> b!1044388 (= c!106055 (and (not (= (bvand (extraKeys!6128 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6128 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!44360 () Bool)

(declare-fun call!44362 () ListLongMap!13891)

(assert (=> bm!44360 (= call!44362 call!44363)))

(declare-fun bm!44357 () Bool)

(assert (=> bm!44357 (= call!44365 (contains!6091 lt!460721 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!126333 () Bool)

(assert (=> d!126333 e!591928))

(declare-fun res!695676 () Bool)

(assert (=> d!126333 (=> (not res!695676) (not e!591928))))

(assert (=> d!126333 (= res!695676 (or (bvsge #b00000000000000000000000000000000 (size!32195 (_keys!11661 thiss!1427))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32195 (_keys!11661 thiss!1427))))))))

(declare-fun lt!460723 () ListLongMap!13891)

(assert (=> d!126333 (= lt!460721 lt!460723)))

(declare-fun lt!460717 () Unit!34096)

(assert (=> d!126333 (= lt!460717 e!591918)))

(declare-fun c!106057 () Bool)

(declare-fun e!591929 () Bool)

(assert (=> d!126333 (= c!106057 e!591929)))

(declare-fun res!695675 () Bool)

(assert (=> d!126333 (=> (not res!695675) (not e!591929))))

(assert (=> d!126333 (= res!695675 (bvslt #b00000000000000000000000000000000 (size!32195 (_keys!11661 thiss!1427))))))

(assert (=> d!126333 (= lt!460723 e!591922)))

(declare-fun c!106053 () Bool)

(assert (=> d!126333 (= c!106053 (and (not (= (bvand (extraKeys!6128 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6128 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!126333 (validMask!0 (mask!30502 thiss!1427))))

(assert (=> d!126333 (= (getCurrentListMap!3967 (_keys!11661 thiss!1427) (_values!6423 thiss!1427) (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6400 thiss!1427)) lt!460721)))

(declare-fun b!1044389 () Bool)

(assert (=> b!1044389 (= e!591923 call!44362)))

(declare-fun b!1044390 () Bool)

(declare-fun res!695669 () Bool)

(assert (=> b!1044390 (=> (not res!695669) (not e!591928))))

(assert (=> b!1044390 (= res!695669 e!591917)))

(declare-fun c!106056 () Bool)

(assert (=> b!1044390 (= c!106056 (not (= (bvand (extraKeys!6128 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1044391 () Bool)

(declare-fun e!591924 () Bool)

(declare-fun get!16561 (ValueCell!11715 V!37989) V!37989)

(assert (=> b!1044391 (= e!591924 (= (apply!946 lt!460721 (select (arr!31659 (_keys!11661 thiss!1427)) #b00000000000000000000000000000000)) (get!16561 (select (arr!31660 (_values!6423 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2011 (defaultEntry!6400 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1044391 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32196 (_values!6423 thiss!1427))))))

(assert (=> b!1044391 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32195 (_keys!11661 thiss!1427))))))

(declare-fun b!1044392 () Bool)

(declare-fun lt!460722 () Unit!34096)

(assert (=> b!1044392 (= e!591918 lt!460722)))

(declare-fun lt!460709 () ListLongMap!13891)

(declare-fun getCurrentListMapNoExtraKeys!3539 (array!65826 array!65828 (_ BitVec 32) (_ BitVec 32) V!37989 V!37989 (_ BitVec 32) Int) ListLongMap!13891)

(assert (=> b!1044392 (= lt!460709 (getCurrentListMapNoExtraKeys!3539 (_keys!11661 thiss!1427) (_values!6423 thiss!1427) (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6400 thiss!1427)))))

(declare-fun lt!460713 () (_ BitVec 64))

(assert (=> b!1044392 (= lt!460713 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460725 () (_ BitVec 64))

(assert (=> b!1044392 (= lt!460725 (select (arr!31659 (_keys!11661 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!460708 () Unit!34096)

(declare-fun addStillContains!634 (ListLongMap!13891 (_ BitVec 64) V!37989 (_ BitVec 64)) Unit!34096)

(assert (=> b!1044392 (= lt!460708 (addStillContains!634 lt!460709 lt!460713 (zeroValue!6234 thiss!1427) lt!460725))))

(declare-fun +!3069 (ListLongMap!13891 tuple2!15860) ListLongMap!13891)

(assert (=> b!1044392 (contains!6091 (+!3069 lt!460709 (tuple2!15861 lt!460713 (zeroValue!6234 thiss!1427))) lt!460725)))

(declare-fun lt!460718 () Unit!34096)

(assert (=> b!1044392 (= lt!460718 lt!460708)))

(declare-fun lt!460705 () ListLongMap!13891)

(assert (=> b!1044392 (= lt!460705 (getCurrentListMapNoExtraKeys!3539 (_keys!11661 thiss!1427) (_values!6423 thiss!1427) (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6400 thiss!1427)))))

(declare-fun lt!460715 () (_ BitVec 64))

(assert (=> b!1044392 (= lt!460715 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460711 () (_ BitVec 64))

(assert (=> b!1044392 (= lt!460711 (select (arr!31659 (_keys!11661 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!460714 () Unit!34096)

(declare-fun addApplyDifferent!486 (ListLongMap!13891 (_ BitVec 64) V!37989 (_ BitVec 64)) Unit!34096)

(assert (=> b!1044392 (= lt!460714 (addApplyDifferent!486 lt!460705 lt!460715 (minValue!6234 thiss!1427) lt!460711))))

(assert (=> b!1044392 (= (apply!946 (+!3069 lt!460705 (tuple2!15861 lt!460715 (minValue!6234 thiss!1427))) lt!460711) (apply!946 lt!460705 lt!460711))))

(declare-fun lt!460712 () Unit!34096)

(assert (=> b!1044392 (= lt!460712 lt!460714)))

(declare-fun lt!460724 () ListLongMap!13891)

(assert (=> b!1044392 (= lt!460724 (getCurrentListMapNoExtraKeys!3539 (_keys!11661 thiss!1427) (_values!6423 thiss!1427) (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6400 thiss!1427)))))

(declare-fun lt!460706 () (_ BitVec 64))

(assert (=> b!1044392 (= lt!460706 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460720 () (_ BitVec 64))

(assert (=> b!1044392 (= lt!460720 (select (arr!31659 (_keys!11661 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!460719 () Unit!34096)

(assert (=> b!1044392 (= lt!460719 (addApplyDifferent!486 lt!460724 lt!460706 (zeroValue!6234 thiss!1427) lt!460720))))

(assert (=> b!1044392 (= (apply!946 (+!3069 lt!460724 (tuple2!15861 lt!460706 (zeroValue!6234 thiss!1427))) lt!460720) (apply!946 lt!460724 lt!460720))))

(declare-fun lt!460707 () Unit!34096)

(assert (=> b!1044392 (= lt!460707 lt!460719)))

(declare-fun lt!460710 () ListLongMap!13891)

(assert (=> b!1044392 (= lt!460710 (getCurrentListMapNoExtraKeys!3539 (_keys!11661 thiss!1427) (_values!6423 thiss!1427) (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6400 thiss!1427)))))

(declare-fun lt!460716 () (_ BitVec 64))

(assert (=> b!1044392 (= lt!460716 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460704 () (_ BitVec 64))

(assert (=> b!1044392 (= lt!460704 (select (arr!31659 (_keys!11661 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1044392 (= lt!460722 (addApplyDifferent!486 lt!460710 lt!460716 (minValue!6234 thiss!1427) lt!460704))))

(assert (=> b!1044392 (= (apply!946 (+!3069 lt!460710 (tuple2!15861 lt!460716 (minValue!6234 thiss!1427))) lt!460704) (apply!946 lt!460710 lt!460704))))

(declare-fun b!1044393 () Bool)

(assert (=> b!1044393 (= e!591917 (not call!44365))))

(declare-fun bm!44361 () Bool)

(assert (=> bm!44361 (= call!44361 (getCurrentListMapNoExtraKeys!3539 (_keys!11661 thiss!1427) (_values!6423 thiss!1427) (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6400 thiss!1427)))))

(declare-fun b!1044394 () Bool)

(assert (=> b!1044394 (= e!591927 e!591924)))

(declare-fun res!695674 () Bool)

(assert (=> b!1044394 (=> (not res!695674) (not e!591924))))

(assert (=> b!1044394 (= res!695674 (contains!6091 lt!460721 (select (arr!31659 (_keys!11661 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1044394 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32195 (_keys!11661 thiss!1427))))))

(declare-fun b!1044395 () Bool)

(assert (=> b!1044395 (= e!591919 call!44364)))

(declare-fun b!1044396 () Bool)

(assert (=> b!1044396 (= e!591921 (= (apply!946 lt!460721 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6234 thiss!1427)))))

(declare-fun bm!44362 () Bool)

(assert (=> bm!44362 (= call!44360 (+!3069 (ite c!106053 call!44361 (ite c!106055 call!44363 call!44362)) (ite (or c!106053 c!106055) (tuple2!15861 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6234 thiss!1427)) (tuple2!15861 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6234 thiss!1427)))))))

(declare-fun b!1044397 () Bool)

(assert (=> b!1044397 (= e!591922 (+!3069 call!44360 (tuple2!15861 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6234 thiss!1427))))))

(declare-fun b!1044398 () Bool)

(assert (=> b!1044398 (= e!591929 (validKeyInArray!0 (select (arr!31659 (_keys!11661 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!126333 c!106053) b!1044397))

(assert (= (and d!126333 (not c!106053)) b!1044388))

(assert (= (and b!1044388 c!106055) b!1044395))

(assert (= (and b!1044388 (not c!106055)) b!1044385))

(assert (= (and b!1044385 c!106052) b!1044378))

(assert (= (and b!1044385 (not c!106052)) b!1044389))

(assert (= (or b!1044378 b!1044389) bm!44360))

(assert (= (or b!1044395 bm!44360) bm!44356))

(assert (= (or b!1044395 b!1044378) bm!44359))

(assert (= (or b!1044397 bm!44356) bm!44361))

(assert (= (or b!1044397 bm!44359) bm!44362))

(assert (= (and d!126333 res!695675) b!1044398))

(assert (= (and d!126333 c!106057) b!1044392))

(assert (= (and d!126333 (not c!106057)) b!1044382))

(assert (= (and d!126333 res!695676) b!1044386))

(assert (= (and b!1044386 res!695671) b!1044381))

(assert (= (and b!1044386 (not res!695672)) b!1044394))

(assert (= (and b!1044394 res!695674) b!1044391))

(assert (= (and b!1044386 res!695670) b!1044390))

(assert (= (and b!1044390 c!106056) b!1044383))

(assert (= (and b!1044390 (not c!106056)) b!1044393))

(assert (= (and b!1044383 res!695673) b!1044396))

(assert (= (or b!1044383 b!1044393) bm!44357))

(assert (= (and b!1044390 res!695669) b!1044380))

(assert (= (and b!1044380 c!106054) b!1044384))

(assert (= (and b!1044380 (not c!106054)) b!1044379))

(assert (= (and b!1044384 res!695677) b!1044387))

(assert (= (or b!1044384 b!1044379) bm!44358))

(declare-fun b_lambda!16257 () Bool)

(assert (=> (not b_lambda!16257) (not b!1044391)))

(assert (=> b!1044391 t!31374))

(declare-fun b_and!33715 () Bool)

(assert (= b_and!33709 (and (=> t!31374 result!14551) b_and!33715)))

(declare-fun m!963941 () Bool)

(assert (=> b!1044397 m!963941))

(declare-fun m!963943 () Bool)

(assert (=> b!1044396 m!963943))

(declare-fun m!963945 () Bool)

(assert (=> bm!44357 m!963945))

(declare-fun m!963947 () Bool)

(assert (=> b!1044394 m!963947))

(assert (=> b!1044394 m!963947))

(declare-fun m!963949 () Bool)

(assert (=> b!1044394 m!963949))

(declare-fun m!963951 () Bool)

(assert (=> bm!44358 m!963951))

(assert (=> b!1044398 m!963947))

(assert (=> b!1044398 m!963947))

(declare-fun m!963953 () Bool)

(assert (=> b!1044398 m!963953))

(assert (=> b!1044381 m!963947))

(assert (=> b!1044381 m!963947))

(assert (=> b!1044381 m!963953))

(declare-fun m!963955 () Bool)

(assert (=> b!1044391 m!963955))

(assert (=> b!1044391 m!963857))

(declare-fun m!963957 () Bool)

(assert (=> b!1044391 m!963957))

(assert (=> b!1044391 m!963947))

(assert (=> b!1044391 m!963947))

(declare-fun m!963959 () Bool)

(assert (=> b!1044391 m!963959))

(assert (=> b!1044391 m!963955))

(assert (=> b!1044391 m!963857))

(declare-fun m!963961 () Bool)

(assert (=> bm!44361 m!963961))

(declare-fun m!963963 () Bool)

(assert (=> bm!44362 m!963963))

(declare-fun m!963965 () Bool)

(assert (=> b!1044387 m!963965))

(declare-fun m!963967 () Bool)

(assert (=> b!1044392 m!963967))

(declare-fun m!963969 () Bool)

(assert (=> b!1044392 m!963969))

(declare-fun m!963971 () Bool)

(assert (=> b!1044392 m!963971))

(declare-fun m!963973 () Bool)

(assert (=> b!1044392 m!963973))

(assert (=> b!1044392 m!963961))

(declare-fun m!963975 () Bool)

(assert (=> b!1044392 m!963975))

(declare-fun m!963977 () Bool)

(assert (=> b!1044392 m!963977))

(assert (=> b!1044392 m!963971))

(assert (=> b!1044392 m!963975))

(assert (=> b!1044392 m!963967))

(declare-fun m!963979 () Bool)

(assert (=> b!1044392 m!963979))

(assert (=> b!1044392 m!963979))

(declare-fun m!963981 () Bool)

(assert (=> b!1044392 m!963981))

(declare-fun m!963983 () Bool)

(assert (=> b!1044392 m!963983))

(declare-fun m!963985 () Bool)

(assert (=> b!1044392 m!963985))

(declare-fun m!963987 () Bool)

(assert (=> b!1044392 m!963987))

(assert (=> b!1044392 m!963947))

(declare-fun m!963989 () Bool)

(assert (=> b!1044392 m!963989))

(declare-fun m!963991 () Bool)

(assert (=> b!1044392 m!963991))

(declare-fun m!963993 () Bool)

(assert (=> b!1044392 m!963993))

(declare-fun m!963995 () Bool)

(assert (=> b!1044392 m!963995))

(assert (=> d!126333 m!963939))

(assert (=> b!1044279 d!126333))

(declare-fun d!126335 () Bool)

(declare-fun e!591932 () Bool)

(assert (=> d!126335 e!591932))

(declare-fun res!695680 () Bool)

(assert (=> d!126335 (=> (not res!695680) (not e!591932))))

(assert (=> d!126335 (= res!695680 (and (bvsge (index!41723 lt!460620) #b00000000000000000000000000000000) (bvslt (index!41723 lt!460620) (size!32195 (_keys!11661 thiss!1427)))))))

(declare-fun lt!460728 () Unit!34096)

(declare-fun choose!1717 (array!65826 array!65828 (_ BitVec 32) (_ BitVec 32) V!37989 V!37989 (_ BitVec 32) (_ BitVec 64) Int) Unit!34096)

(assert (=> d!126335 (= lt!460728 (choose!1717 (_keys!11661 thiss!1427) (_values!6423 thiss!1427) (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) (index!41723 lt!460620) key!909 (defaultEntry!6400 thiss!1427)))))

(assert (=> d!126335 (validMask!0 (mask!30502 thiss!1427))))

(assert (=> d!126335 (= (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!57 (_keys!11661 thiss!1427) (_values!6423 thiss!1427) (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) (index!41723 lt!460620) key!909 (defaultEntry!6400 thiss!1427)) lt!460728)))

(declare-fun b!1044401 () Bool)

(assert (=> b!1044401 (= e!591932 (= (-!537 (getCurrentListMap!3967 (_keys!11661 thiss!1427) (_values!6423 thiss!1427) (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6400 thiss!1427)) key!909) (getCurrentListMap!3967 (array!65827 (store (arr!31659 (_keys!11661 thiss!1427)) (index!41723 lt!460620) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32195 (_keys!11661 thiss!1427))) (array!65829 (store (arr!31660 (_values!6423 thiss!1427)) (index!41723 lt!460620) (ValueCellFull!11715 (dynLambda!2011 (defaultEntry!6400 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32196 (_values!6423 thiss!1427))) (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6400 thiss!1427))))))

(assert (=> b!1044401 (bvslt (index!41723 lt!460620) (size!32196 (_values!6423 thiss!1427)))))

(assert (= (and d!126335 res!695680) b!1044401))

(declare-fun b_lambda!16259 () Bool)

(assert (=> (not b_lambda!16259) (not b!1044401)))

(assert (=> b!1044401 t!31374))

(declare-fun b_and!33717 () Bool)

(assert (= b_and!33715 (and (=> t!31374 result!14551) b_and!33717)))

(declare-fun m!963997 () Bool)

(assert (=> d!126335 m!963997))

(assert (=> d!126335 m!963939))

(assert (=> b!1044401 m!963859))

(declare-fun m!963999 () Bool)

(assert (=> b!1044401 m!963999))

(assert (=> b!1044401 m!963857))

(assert (=> b!1044401 m!963865))

(assert (=> b!1044401 m!963865))

(assert (=> b!1044401 m!963867))

(assert (=> b!1044401 m!963845))

(assert (=> b!1044279 d!126335))

(declare-fun d!126337 () Bool)

(declare-fun e!591935 () Bool)

(assert (=> d!126337 e!591935))

(declare-fun res!695683 () Bool)

(assert (=> d!126337 (=> (not res!695683) (not e!591935))))

(assert (=> d!126337 (= res!695683 (bvslt (index!41723 lt!460620) (size!32195 (_keys!11661 thiss!1427))))))

(declare-fun lt!460731 () Unit!34096)

(declare-fun choose!121 (array!65826 (_ BitVec 32) (_ BitVec 64)) Unit!34096)

(assert (=> d!126337 (= lt!460731 (choose!121 (_keys!11661 thiss!1427) (index!41723 lt!460620) key!909))))

(assert (=> d!126337 (bvsge (index!41723 lt!460620) #b00000000000000000000000000000000)))

(assert (=> d!126337 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11661 thiss!1427) (index!41723 lt!460620) key!909) lt!460731)))

(declare-fun b!1044404 () Bool)

(assert (=> b!1044404 (= e!591935 (not (arrayContainsKey!0 (array!65827 (store (arr!31659 (_keys!11661 thiss!1427)) (index!41723 lt!460620) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32195 (_keys!11661 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!126337 res!695683) b!1044404))

(declare-fun m!964001 () Bool)

(assert (=> d!126337 m!964001))

(assert (=> b!1044404 m!963859))

(declare-fun m!964003 () Bool)

(assert (=> b!1044404 m!964003))

(assert (=> b!1044279 d!126337))

(declare-fun b!1044413 () Bool)

(declare-fun e!591941 () (_ BitVec 32))

(assert (=> b!1044413 (= e!591941 #b00000000000000000000000000000000)))

(declare-fun b!1044414 () Bool)

(declare-fun e!591940 () (_ BitVec 32))

(assert (=> b!1044414 (= e!591941 e!591940)))

(declare-fun c!106062 () Bool)

(assert (=> b!1044414 (= c!106062 (validKeyInArray!0 (select (arr!31659 (_keys!11661 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!44365 () Bool)

(declare-fun call!44368 () (_ BitVec 32))

(assert (=> bm!44365 (= call!44368 (arrayCountValidKeys!0 (_keys!11661 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32195 (_keys!11661 thiss!1427))))))

(declare-fun b!1044415 () Bool)

(assert (=> b!1044415 (= e!591940 call!44368)))

(declare-fun b!1044416 () Bool)

(assert (=> b!1044416 (= e!591940 (bvadd #b00000000000000000000000000000001 call!44368))))

(declare-fun d!126339 () Bool)

(declare-fun lt!460734 () (_ BitVec 32))

(assert (=> d!126339 (and (bvsge lt!460734 #b00000000000000000000000000000000) (bvsle lt!460734 (bvsub (size!32195 (_keys!11661 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!126339 (= lt!460734 e!591941)))

(declare-fun c!106063 () Bool)

(assert (=> d!126339 (= c!106063 (bvsge #b00000000000000000000000000000000 (size!32195 (_keys!11661 thiss!1427))))))

(assert (=> d!126339 (and (bvsle #b00000000000000000000000000000000 (size!32195 (_keys!11661 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32195 (_keys!11661 thiss!1427)) (size!32195 (_keys!11661 thiss!1427))))))

(assert (=> d!126339 (= (arrayCountValidKeys!0 (_keys!11661 thiss!1427) #b00000000000000000000000000000000 (size!32195 (_keys!11661 thiss!1427))) lt!460734)))

(assert (= (and d!126339 c!106063) b!1044413))

(assert (= (and d!126339 (not c!106063)) b!1044414))

(assert (= (and b!1044414 c!106062) b!1044416))

(assert (= (and b!1044414 (not c!106062)) b!1044415))

(assert (= (or b!1044416 b!1044415) bm!44365))

(assert (=> b!1044414 m!963947))

(assert (=> b!1044414 m!963947))

(assert (=> b!1044414 m!963953))

(declare-fun m!964005 () Bool)

(assert (=> bm!44365 m!964005))

(assert (=> b!1044279 d!126339))

(declare-fun bm!44366 () Bool)

(declare-fun call!44373 () ListLongMap!13891)

(declare-fun call!44371 () ListLongMap!13891)

(assert (=> bm!44366 (= call!44373 call!44371)))

(declare-fun b!1044417 () Bool)

(declare-fun e!591948 () ListLongMap!13891)

(declare-fun call!44374 () ListLongMap!13891)

(assert (=> b!1044417 (= e!591948 call!44374)))

(declare-fun b!1044418 () Bool)

(declare-fun e!591950 () Bool)

(declare-fun call!44369 () Bool)

(assert (=> b!1044418 (= e!591950 (not call!44369))))

(declare-fun b!1044419 () Bool)

(declare-fun e!591953 () Bool)

(assert (=> b!1044419 (= e!591953 e!591950)))

(declare-fun c!106066 () Bool)

(assert (=> b!1044419 (= c!106066 (not (= (bvand (extraKeys!6128 (_2!7939 lt!460613)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1044420 () Bool)

(declare-fun e!591951 () Bool)

(assert (=> b!1044420 (= e!591951 (validKeyInArray!0 (select (arr!31659 (_keys!11661 (_2!7939 lt!460613))) #b00000000000000000000000000000000)))))

(declare-fun b!1044421 () Bool)

(declare-fun e!591943 () Unit!34096)

(declare-fun Unit!34101 () Unit!34096)

(assert (=> b!1044421 (= e!591943 Unit!34101)))

(declare-fun b!1044422 () Bool)

(declare-fun e!591942 () Bool)

(declare-fun e!591946 () Bool)

(assert (=> b!1044422 (= e!591942 e!591946)))

(declare-fun res!695688 () Bool)

(declare-fun call!44375 () Bool)

(assert (=> b!1044422 (= res!695688 call!44375)))

(assert (=> b!1044422 (=> (not res!695688) (not e!591946))))

(declare-fun b!1044423 () Bool)

(declare-fun e!591945 () Bool)

(assert (=> b!1044423 (= e!591950 e!591945)))

(declare-fun res!695692 () Bool)

(assert (=> b!1044423 (= res!695692 call!44369)))

(assert (=> b!1044423 (=> (not res!695692) (not e!591945))))

(declare-fun bm!44368 () Bool)

(declare-fun lt!460752 () ListLongMap!13891)

(assert (=> bm!44368 (= call!44369 (contains!6091 lt!460752 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!44369 () Bool)

(declare-fun call!44370 () ListLongMap!13891)

(assert (=> bm!44369 (= call!44374 call!44370)))

(declare-fun b!1044424 () Bool)

(declare-fun c!106064 () Bool)

(assert (=> b!1044424 (= c!106064 (and (not (= (bvand (extraKeys!6128 (_2!7939 lt!460613)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6128 (_2!7939 lt!460613)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!591944 () ListLongMap!13891)

(assert (=> b!1044424 (= e!591944 e!591948)))

(declare-fun b!1044425 () Bool)

(declare-fun res!695685 () Bool)

(assert (=> b!1044425 (=> (not res!695685) (not e!591953))))

(declare-fun e!591952 () Bool)

(assert (=> b!1044425 (= res!695685 e!591952)))

(declare-fun res!695687 () Bool)

(assert (=> b!1044425 (=> res!695687 e!591952)))

(assert (=> b!1044425 (= res!695687 (not e!591951))))

(declare-fun res!695686 () Bool)

(assert (=> b!1044425 (=> (not res!695686) (not e!591951))))

(assert (=> b!1044425 (= res!695686 (bvslt #b00000000000000000000000000000000 (size!32195 (_keys!11661 (_2!7939 lt!460613)))))))

(declare-fun b!1044426 () Bool)

(assert (=> b!1044426 (= e!591945 (= (apply!946 lt!460752 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6234 (_2!7939 lt!460613))))))

(declare-fun b!1044427 () Bool)

(declare-fun e!591947 () ListLongMap!13891)

(assert (=> b!1044427 (= e!591947 e!591944)))

(declare-fun c!106067 () Bool)

(assert (=> b!1044427 (= c!106067 (and (not (= (bvand (extraKeys!6128 (_2!7939 lt!460613)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6128 (_2!7939 lt!460613)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!44370 () Bool)

(declare-fun call!44372 () ListLongMap!13891)

(assert (=> bm!44370 (= call!44372 call!44373)))

(declare-fun bm!44367 () Bool)

(assert (=> bm!44367 (= call!44375 (contains!6091 lt!460752 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!126341 () Bool)

(assert (=> d!126341 e!591953))

(declare-fun res!695691 () Bool)

(assert (=> d!126341 (=> (not res!695691) (not e!591953))))

(assert (=> d!126341 (= res!695691 (or (bvsge #b00000000000000000000000000000000 (size!32195 (_keys!11661 (_2!7939 lt!460613)))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32195 (_keys!11661 (_2!7939 lt!460613)))))))))

(declare-fun lt!460754 () ListLongMap!13891)

(assert (=> d!126341 (= lt!460752 lt!460754)))

(declare-fun lt!460748 () Unit!34096)

(assert (=> d!126341 (= lt!460748 e!591943)))

(declare-fun c!106069 () Bool)

(declare-fun e!591954 () Bool)

(assert (=> d!126341 (= c!106069 e!591954)))

(declare-fun res!695690 () Bool)

(assert (=> d!126341 (=> (not res!695690) (not e!591954))))

(assert (=> d!126341 (= res!695690 (bvslt #b00000000000000000000000000000000 (size!32195 (_keys!11661 (_2!7939 lt!460613)))))))

(assert (=> d!126341 (= lt!460754 e!591947)))

(declare-fun c!106065 () Bool)

(assert (=> d!126341 (= c!106065 (and (not (= (bvand (extraKeys!6128 (_2!7939 lt!460613)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6128 (_2!7939 lt!460613)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!126341 (validMask!0 (mask!30502 (_2!7939 lt!460613)))))

(assert (=> d!126341 (= (getCurrentListMap!3967 (_keys!11661 (_2!7939 lt!460613)) (_values!6423 (_2!7939 lt!460613)) (mask!30502 (_2!7939 lt!460613)) (extraKeys!6128 (_2!7939 lt!460613)) (zeroValue!6234 (_2!7939 lt!460613)) (minValue!6234 (_2!7939 lt!460613)) #b00000000000000000000000000000000 (defaultEntry!6400 (_2!7939 lt!460613))) lt!460752)))

(declare-fun b!1044428 () Bool)

(assert (=> b!1044428 (= e!591948 call!44372)))

(declare-fun b!1044429 () Bool)

(declare-fun res!695684 () Bool)

(assert (=> b!1044429 (=> (not res!695684) (not e!591953))))

(assert (=> b!1044429 (= res!695684 e!591942)))

(declare-fun c!106068 () Bool)

(assert (=> b!1044429 (= c!106068 (not (= (bvand (extraKeys!6128 (_2!7939 lt!460613)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1044430 () Bool)

(declare-fun e!591949 () Bool)

(assert (=> b!1044430 (= e!591949 (= (apply!946 lt!460752 (select (arr!31659 (_keys!11661 (_2!7939 lt!460613))) #b00000000000000000000000000000000)) (get!16561 (select (arr!31660 (_values!6423 (_2!7939 lt!460613))) #b00000000000000000000000000000000) (dynLambda!2011 (defaultEntry!6400 (_2!7939 lt!460613)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1044430 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32196 (_values!6423 (_2!7939 lt!460613)))))))

(assert (=> b!1044430 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32195 (_keys!11661 (_2!7939 lt!460613)))))))

(declare-fun b!1044431 () Bool)

(declare-fun lt!460753 () Unit!34096)

(assert (=> b!1044431 (= e!591943 lt!460753)))

(declare-fun lt!460740 () ListLongMap!13891)

(assert (=> b!1044431 (= lt!460740 (getCurrentListMapNoExtraKeys!3539 (_keys!11661 (_2!7939 lt!460613)) (_values!6423 (_2!7939 lt!460613)) (mask!30502 (_2!7939 lt!460613)) (extraKeys!6128 (_2!7939 lt!460613)) (zeroValue!6234 (_2!7939 lt!460613)) (minValue!6234 (_2!7939 lt!460613)) #b00000000000000000000000000000000 (defaultEntry!6400 (_2!7939 lt!460613))))))

(declare-fun lt!460744 () (_ BitVec 64))

(assert (=> b!1044431 (= lt!460744 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460756 () (_ BitVec 64))

(assert (=> b!1044431 (= lt!460756 (select (arr!31659 (_keys!11661 (_2!7939 lt!460613))) #b00000000000000000000000000000000))))

(declare-fun lt!460739 () Unit!34096)

(assert (=> b!1044431 (= lt!460739 (addStillContains!634 lt!460740 lt!460744 (zeroValue!6234 (_2!7939 lt!460613)) lt!460756))))

(assert (=> b!1044431 (contains!6091 (+!3069 lt!460740 (tuple2!15861 lt!460744 (zeroValue!6234 (_2!7939 lt!460613)))) lt!460756)))

(declare-fun lt!460749 () Unit!34096)

(assert (=> b!1044431 (= lt!460749 lt!460739)))

(declare-fun lt!460736 () ListLongMap!13891)

(assert (=> b!1044431 (= lt!460736 (getCurrentListMapNoExtraKeys!3539 (_keys!11661 (_2!7939 lt!460613)) (_values!6423 (_2!7939 lt!460613)) (mask!30502 (_2!7939 lt!460613)) (extraKeys!6128 (_2!7939 lt!460613)) (zeroValue!6234 (_2!7939 lt!460613)) (minValue!6234 (_2!7939 lt!460613)) #b00000000000000000000000000000000 (defaultEntry!6400 (_2!7939 lt!460613))))))

(declare-fun lt!460746 () (_ BitVec 64))

(assert (=> b!1044431 (= lt!460746 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460742 () (_ BitVec 64))

(assert (=> b!1044431 (= lt!460742 (select (arr!31659 (_keys!11661 (_2!7939 lt!460613))) #b00000000000000000000000000000000))))

(declare-fun lt!460745 () Unit!34096)

(assert (=> b!1044431 (= lt!460745 (addApplyDifferent!486 lt!460736 lt!460746 (minValue!6234 (_2!7939 lt!460613)) lt!460742))))

(assert (=> b!1044431 (= (apply!946 (+!3069 lt!460736 (tuple2!15861 lt!460746 (minValue!6234 (_2!7939 lt!460613)))) lt!460742) (apply!946 lt!460736 lt!460742))))

(declare-fun lt!460743 () Unit!34096)

(assert (=> b!1044431 (= lt!460743 lt!460745)))

(declare-fun lt!460755 () ListLongMap!13891)

(assert (=> b!1044431 (= lt!460755 (getCurrentListMapNoExtraKeys!3539 (_keys!11661 (_2!7939 lt!460613)) (_values!6423 (_2!7939 lt!460613)) (mask!30502 (_2!7939 lt!460613)) (extraKeys!6128 (_2!7939 lt!460613)) (zeroValue!6234 (_2!7939 lt!460613)) (minValue!6234 (_2!7939 lt!460613)) #b00000000000000000000000000000000 (defaultEntry!6400 (_2!7939 lt!460613))))))

(declare-fun lt!460737 () (_ BitVec 64))

(assert (=> b!1044431 (= lt!460737 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460751 () (_ BitVec 64))

(assert (=> b!1044431 (= lt!460751 (select (arr!31659 (_keys!11661 (_2!7939 lt!460613))) #b00000000000000000000000000000000))))

(declare-fun lt!460750 () Unit!34096)

(assert (=> b!1044431 (= lt!460750 (addApplyDifferent!486 lt!460755 lt!460737 (zeroValue!6234 (_2!7939 lt!460613)) lt!460751))))

(assert (=> b!1044431 (= (apply!946 (+!3069 lt!460755 (tuple2!15861 lt!460737 (zeroValue!6234 (_2!7939 lt!460613)))) lt!460751) (apply!946 lt!460755 lt!460751))))

(declare-fun lt!460738 () Unit!34096)

(assert (=> b!1044431 (= lt!460738 lt!460750)))

(declare-fun lt!460741 () ListLongMap!13891)

(assert (=> b!1044431 (= lt!460741 (getCurrentListMapNoExtraKeys!3539 (_keys!11661 (_2!7939 lt!460613)) (_values!6423 (_2!7939 lt!460613)) (mask!30502 (_2!7939 lt!460613)) (extraKeys!6128 (_2!7939 lt!460613)) (zeroValue!6234 (_2!7939 lt!460613)) (minValue!6234 (_2!7939 lt!460613)) #b00000000000000000000000000000000 (defaultEntry!6400 (_2!7939 lt!460613))))))

(declare-fun lt!460747 () (_ BitVec 64))

(assert (=> b!1044431 (= lt!460747 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460735 () (_ BitVec 64))

(assert (=> b!1044431 (= lt!460735 (select (arr!31659 (_keys!11661 (_2!7939 lt!460613))) #b00000000000000000000000000000000))))

(assert (=> b!1044431 (= lt!460753 (addApplyDifferent!486 lt!460741 lt!460747 (minValue!6234 (_2!7939 lt!460613)) lt!460735))))

(assert (=> b!1044431 (= (apply!946 (+!3069 lt!460741 (tuple2!15861 lt!460747 (minValue!6234 (_2!7939 lt!460613)))) lt!460735) (apply!946 lt!460741 lt!460735))))

(declare-fun b!1044432 () Bool)

(assert (=> b!1044432 (= e!591942 (not call!44375))))

(declare-fun bm!44371 () Bool)

(assert (=> bm!44371 (= call!44371 (getCurrentListMapNoExtraKeys!3539 (_keys!11661 (_2!7939 lt!460613)) (_values!6423 (_2!7939 lt!460613)) (mask!30502 (_2!7939 lt!460613)) (extraKeys!6128 (_2!7939 lt!460613)) (zeroValue!6234 (_2!7939 lt!460613)) (minValue!6234 (_2!7939 lt!460613)) #b00000000000000000000000000000000 (defaultEntry!6400 (_2!7939 lt!460613))))))

(declare-fun b!1044433 () Bool)

(assert (=> b!1044433 (= e!591952 e!591949)))

(declare-fun res!695689 () Bool)

(assert (=> b!1044433 (=> (not res!695689) (not e!591949))))

(assert (=> b!1044433 (= res!695689 (contains!6091 lt!460752 (select (arr!31659 (_keys!11661 (_2!7939 lt!460613))) #b00000000000000000000000000000000)))))

(assert (=> b!1044433 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32195 (_keys!11661 (_2!7939 lt!460613)))))))

(declare-fun b!1044434 () Bool)

(assert (=> b!1044434 (= e!591944 call!44374)))

(declare-fun b!1044435 () Bool)

(assert (=> b!1044435 (= e!591946 (= (apply!946 lt!460752 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6234 (_2!7939 lt!460613))))))

(declare-fun bm!44372 () Bool)

(assert (=> bm!44372 (= call!44370 (+!3069 (ite c!106065 call!44371 (ite c!106067 call!44373 call!44372)) (ite (or c!106065 c!106067) (tuple2!15861 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6234 (_2!7939 lt!460613))) (tuple2!15861 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6234 (_2!7939 lt!460613))))))))

(declare-fun b!1044436 () Bool)

(assert (=> b!1044436 (= e!591947 (+!3069 call!44370 (tuple2!15861 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6234 (_2!7939 lt!460613)))))))

(declare-fun b!1044437 () Bool)

(assert (=> b!1044437 (= e!591954 (validKeyInArray!0 (select (arr!31659 (_keys!11661 (_2!7939 lt!460613))) #b00000000000000000000000000000000)))))

(assert (= (and d!126341 c!106065) b!1044436))

(assert (= (and d!126341 (not c!106065)) b!1044427))

(assert (= (and b!1044427 c!106067) b!1044434))

(assert (= (and b!1044427 (not c!106067)) b!1044424))

(assert (= (and b!1044424 c!106064) b!1044417))

(assert (= (and b!1044424 (not c!106064)) b!1044428))

(assert (= (or b!1044417 b!1044428) bm!44370))

(assert (= (or b!1044434 bm!44370) bm!44366))

(assert (= (or b!1044434 b!1044417) bm!44369))

(assert (= (or b!1044436 bm!44366) bm!44371))

(assert (= (or b!1044436 bm!44369) bm!44372))

(assert (= (and d!126341 res!695690) b!1044437))

(assert (= (and d!126341 c!106069) b!1044431))

(assert (= (and d!126341 (not c!106069)) b!1044421))

(assert (= (and d!126341 res!695691) b!1044425))

(assert (= (and b!1044425 res!695686) b!1044420))

(assert (= (and b!1044425 (not res!695687)) b!1044433))

(assert (= (and b!1044433 res!695689) b!1044430))

(assert (= (and b!1044425 res!695685) b!1044429))

(assert (= (and b!1044429 c!106068) b!1044422))

(assert (= (and b!1044429 (not c!106068)) b!1044432))

(assert (= (and b!1044422 res!695688) b!1044435))

(assert (= (or b!1044422 b!1044432) bm!44367))

(assert (= (and b!1044429 res!695684) b!1044419))

(assert (= (and b!1044419 c!106066) b!1044423))

(assert (= (and b!1044419 (not c!106066)) b!1044418))

(assert (= (and b!1044423 res!695692) b!1044426))

(assert (= (or b!1044423 b!1044418) bm!44368))

(declare-fun b_lambda!16261 () Bool)

(assert (=> (not b_lambda!16261) (not b!1044430)))

(declare-fun tb!7071 () Bool)

(declare-fun t!31380 () Bool)

(assert (=> (and b!1044286 (= (defaultEntry!6400 thiss!1427) (defaultEntry!6400 (_2!7939 lt!460613))) t!31380) tb!7071))

(declare-fun result!14559 () Bool)

(assert (=> tb!7071 (= result!14559 tp_is_empty!24837)))

(assert (=> b!1044430 t!31380))

(declare-fun b_and!33719 () Bool)

(assert (= b_and!33717 (and (=> t!31380 result!14559) b_and!33719)))

(declare-fun m!964007 () Bool)

(assert (=> b!1044436 m!964007))

(declare-fun m!964009 () Bool)

(assert (=> b!1044435 m!964009))

(declare-fun m!964011 () Bool)

(assert (=> bm!44367 m!964011))

(declare-fun m!964013 () Bool)

(assert (=> b!1044433 m!964013))

(assert (=> b!1044433 m!964013))

(declare-fun m!964015 () Bool)

(assert (=> b!1044433 m!964015))

(declare-fun m!964017 () Bool)

(assert (=> bm!44368 m!964017))

(assert (=> b!1044437 m!964013))

(assert (=> b!1044437 m!964013))

(declare-fun m!964019 () Bool)

(assert (=> b!1044437 m!964019))

(assert (=> b!1044420 m!964013))

(assert (=> b!1044420 m!964013))

(assert (=> b!1044420 m!964019))

(declare-fun m!964021 () Bool)

(assert (=> b!1044430 m!964021))

(declare-fun m!964023 () Bool)

(assert (=> b!1044430 m!964023))

(declare-fun m!964025 () Bool)

(assert (=> b!1044430 m!964025))

(assert (=> b!1044430 m!964013))

(assert (=> b!1044430 m!964013))

(declare-fun m!964027 () Bool)

(assert (=> b!1044430 m!964027))

(assert (=> b!1044430 m!964021))

(assert (=> b!1044430 m!964023))

(declare-fun m!964029 () Bool)

(assert (=> bm!44371 m!964029))

(declare-fun m!964031 () Bool)

(assert (=> bm!44372 m!964031))

(declare-fun m!964033 () Bool)

(assert (=> b!1044426 m!964033))

(declare-fun m!964035 () Bool)

(assert (=> b!1044431 m!964035))

(declare-fun m!964037 () Bool)

(assert (=> b!1044431 m!964037))

(declare-fun m!964039 () Bool)

(assert (=> b!1044431 m!964039))

(declare-fun m!964041 () Bool)

(assert (=> b!1044431 m!964041))

(assert (=> b!1044431 m!964029))

(declare-fun m!964043 () Bool)

(assert (=> b!1044431 m!964043))

(declare-fun m!964045 () Bool)

(assert (=> b!1044431 m!964045))

(assert (=> b!1044431 m!964039))

(assert (=> b!1044431 m!964043))

(assert (=> b!1044431 m!964035))

(declare-fun m!964047 () Bool)

(assert (=> b!1044431 m!964047))

(assert (=> b!1044431 m!964047))

(declare-fun m!964049 () Bool)

(assert (=> b!1044431 m!964049))

(declare-fun m!964051 () Bool)

(assert (=> b!1044431 m!964051))

(declare-fun m!964053 () Bool)

(assert (=> b!1044431 m!964053))

(declare-fun m!964055 () Bool)

(assert (=> b!1044431 m!964055))

(assert (=> b!1044431 m!964013))

(declare-fun m!964057 () Bool)

(assert (=> b!1044431 m!964057))

(declare-fun m!964059 () Bool)

(assert (=> b!1044431 m!964059))

(declare-fun m!964061 () Bool)

(assert (=> b!1044431 m!964061))

(declare-fun m!964063 () Bool)

(assert (=> b!1044431 m!964063))

(assert (=> d!126341 m!963875))

(assert (=> b!1044279 d!126341))

(declare-fun d!126343 () Bool)

(declare-fun e!591959 () Bool)

(assert (=> d!126343 e!591959))

(declare-fun res!695704 () Bool)

(assert (=> d!126343 (=> (not res!695704) (not e!591959))))

(assert (=> d!126343 (= res!695704 (and (bvsge (index!41723 lt!460620) #b00000000000000000000000000000000) (bvslt (index!41723 lt!460620) (size!32195 (_keys!11661 thiss!1427)))))))

(declare-fun lt!460759 () Unit!34096)

(declare-fun choose!82 (array!65826 (_ BitVec 32) (_ BitVec 64)) Unit!34096)

(assert (=> d!126343 (= lt!460759 (choose!82 (_keys!11661 thiss!1427) (index!41723 lt!460620) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!591960 () Bool)

(assert (=> d!126343 e!591960))

(declare-fun res!695701 () Bool)

(assert (=> d!126343 (=> (not res!695701) (not e!591960))))

(assert (=> d!126343 (= res!695701 (and (bvsge (index!41723 lt!460620) #b00000000000000000000000000000000) (bvslt (index!41723 lt!460620) (size!32195 (_keys!11661 thiss!1427)))))))

(assert (=> d!126343 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11661 thiss!1427) (index!41723 lt!460620) #b1000000000000000000000000000000000000000000000000000000000000000) lt!460759)))

(declare-fun b!1044447 () Bool)

(declare-fun res!695703 () Bool)

(assert (=> b!1044447 (=> (not res!695703) (not e!591960))))

(assert (=> b!1044447 (= res!695703 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1044446 () Bool)

(declare-fun res!695702 () Bool)

(assert (=> b!1044446 (=> (not res!695702) (not e!591960))))

(assert (=> b!1044446 (= res!695702 (validKeyInArray!0 (select (arr!31659 (_keys!11661 thiss!1427)) (index!41723 lt!460620))))))

(declare-fun b!1044449 () Bool)

(assert (=> b!1044449 (= e!591959 (= (arrayCountValidKeys!0 (array!65827 (store (arr!31659 (_keys!11661 thiss!1427)) (index!41723 lt!460620) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32195 (_keys!11661 thiss!1427))) #b00000000000000000000000000000000 (size!32195 (_keys!11661 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11661 thiss!1427) #b00000000000000000000000000000000 (size!32195 (_keys!11661 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1044448 () Bool)

(assert (=> b!1044448 (= e!591960 (bvslt (size!32195 (_keys!11661 thiss!1427)) #b01111111111111111111111111111111))))

(assert (= (and d!126343 res!695701) b!1044446))

(assert (= (and b!1044446 res!695702) b!1044447))

(assert (= (and b!1044447 res!695703) b!1044448))

(assert (= (and d!126343 res!695704) b!1044449))

(declare-fun m!964065 () Bool)

(assert (=> d!126343 m!964065))

(declare-fun m!964067 () Bool)

(assert (=> b!1044447 m!964067))

(declare-fun m!964069 () Bool)

(assert (=> b!1044446 m!964069))

(assert (=> b!1044446 m!964069))

(declare-fun m!964071 () Bool)

(assert (=> b!1044446 m!964071))

(assert (=> b!1044449 m!963859))

(declare-fun m!964073 () Bool)

(assert (=> b!1044449 m!964073))

(assert (=> b!1044449 m!963849))

(assert (=> b!1044279 d!126343))

(declare-fun d!126345 () Bool)

(declare-fun e!591966 () Bool)

(assert (=> d!126345 e!591966))

(declare-fun res!695707 () Bool)

(assert (=> d!126345 (=> res!695707 e!591966)))

(declare-fun lt!460768 () Bool)

(assert (=> d!126345 (= res!695707 (not lt!460768))))

(declare-fun lt!460770 () Bool)

(assert (=> d!126345 (= lt!460768 lt!460770)))

(declare-fun lt!460771 () Unit!34096)

(declare-fun e!591965 () Unit!34096)

(assert (=> d!126345 (= lt!460771 e!591965)))

(declare-fun c!106072 () Bool)

(assert (=> d!126345 (= c!106072 lt!460770)))

(declare-fun containsKey!567 (List!22130 (_ BitVec 64)) Bool)

(assert (=> d!126345 (= lt!460770 (containsKey!567 (toList!6961 (getCurrentListMap!3967 (_keys!11661 (_2!7939 lt!460613)) (_values!6423 (_2!7939 lt!460613)) (mask!30502 (_2!7939 lt!460613)) (extraKeys!6128 (_2!7939 lt!460613)) (zeroValue!6234 (_2!7939 lt!460613)) (minValue!6234 (_2!7939 lt!460613)) #b00000000000000000000000000000000 (defaultEntry!6400 (_2!7939 lt!460613)))) key!909))))

(assert (=> d!126345 (= (contains!6091 (getCurrentListMap!3967 (_keys!11661 (_2!7939 lt!460613)) (_values!6423 (_2!7939 lt!460613)) (mask!30502 (_2!7939 lt!460613)) (extraKeys!6128 (_2!7939 lt!460613)) (zeroValue!6234 (_2!7939 lt!460613)) (minValue!6234 (_2!7939 lt!460613)) #b00000000000000000000000000000000 (defaultEntry!6400 (_2!7939 lt!460613))) key!909) lt!460768)))

(declare-fun b!1044456 () Bool)

(declare-fun lt!460769 () Unit!34096)

(assert (=> b!1044456 (= e!591965 lt!460769)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!399 (List!22130 (_ BitVec 64)) Unit!34096)

(assert (=> b!1044456 (= lt!460769 (lemmaContainsKeyImpliesGetValueByKeyDefined!399 (toList!6961 (getCurrentListMap!3967 (_keys!11661 (_2!7939 lt!460613)) (_values!6423 (_2!7939 lt!460613)) (mask!30502 (_2!7939 lt!460613)) (extraKeys!6128 (_2!7939 lt!460613)) (zeroValue!6234 (_2!7939 lt!460613)) (minValue!6234 (_2!7939 lt!460613)) #b00000000000000000000000000000000 (defaultEntry!6400 (_2!7939 lt!460613)))) key!909))))

(declare-datatypes ((Option!645 0))(
  ( (Some!644 (v!15064 V!37989)) (None!643) )
))
(declare-fun isDefined!439 (Option!645) Bool)

(declare-fun getValueByKey!594 (List!22130 (_ BitVec 64)) Option!645)

(assert (=> b!1044456 (isDefined!439 (getValueByKey!594 (toList!6961 (getCurrentListMap!3967 (_keys!11661 (_2!7939 lt!460613)) (_values!6423 (_2!7939 lt!460613)) (mask!30502 (_2!7939 lt!460613)) (extraKeys!6128 (_2!7939 lt!460613)) (zeroValue!6234 (_2!7939 lt!460613)) (minValue!6234 (_2!7939 lt!460613)) #b00000000000000000000000000000000 (defaultEntry!6400 (_2!7939 lt!460613)))) key!909))))

(declare-fun b!1044457 () Bool)

(declare-fun Unit!34102 () Unit!34096)

(assert (=> b!1044457 (= e!591965 Unit!34102)))

(declare-fun b!1044458 () Bool)

(assert (=> b!1044458 (= e!591966 (isDefined!439 (getValueByKey!594 (toList!6961 (getCurrentListMap!3967 (_keys!11661 (_2!7939 lt!460613)) (_values!6423 (_2!7939 lt!460613)) (mask!30502 (_2!7939 lt!460613)) (extraKeys!6128 (_2!7939 lt!460613)) (zeroValue!6234 (_2!7939 lt!460613)) (minValue!6234 (_2!7939 lt!460613)) #b00000000000000000000000000000000 (defaultEntry!6400 (_2!7939 lt!460613)))) key!909)))))

(assert (= (and d!126345 c!106072) b!1044456))

(assert (= (and d!126345 (not c!106072)) b!1044457))

(assert (= (and d!126345 (not res!695707)) b!1044458))

(declare-fun m!964075 () Bool)

(assert (=> d!126345 m!964075))

(declare-fun m!964077 () Bool)

(assert (=> b!1044456 m!964077))

(declare-fun m!964079 () Bool)

(assert (=> b!1044456 m!964079))

(assert (=> b!1044456 m!964079))

(declare-fun m!964081 () Bool)

(assert (=> b!1044456 m!964081))

(assert (=> b!1044458 m!964079))

(assert (=> b!1044458 m!964079))

(assert (=> b!1044458 m!964081))

(assert (=> b!1044279 d!126345))

(declare-fun d!126347 () Bool)

(declare-fun res!695712 () Bool)

(declare-fun e!591971 () Bool)

(assert (=> d!126347 (=> res!695712 e!591971)))

(assert (=> d!126347 (= res!695712 (= (select (arr!31659 lt!460614) #b00000000000000000000000000000000) key!909))))

(assert (=> d!126347 (= (arrayContainsKey!0 lt!460614 key!909 #b00000000000000000000000000000000) e!591971)))

(declare-fun b!1044463 () Bool)

(declare-fun e!591972 () Bool)

(assert (=> b!1044463 (= e!591971 e!591972)))

(declare-fun res!695713 () Bool)

(assert (=> b!1044463 (=> (not res!695713) (not e!591972))))

(assert (=> b!1044463 (= res!695713 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32195 lt!460614)))))

(declare-fun b!1044464 () Bool)

(assert (=> b!1044464 (= e!591972 (arrayContainsKey!0 lt!460614 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!126347 (not res!695712)) b!1044463))

(assert (= (and b!1044463 res!695713) b!1044464))

(declare-fun m!964083 () Bool)

(assert (=> d!126347 m!964083))

(declare-fun m!964085 () Bool)

(assert (=> b!1044464 m!964085))

(assert (=> b!1044279 d!126347))

(declare-fun d!126349 () Bool)

(declare-fun e!591975 () Bool)

(assert (=> d!126349 e!591975))

(declare-fun res!695716 () Bool)

(assert (=> d!126349 (=> (not res!695716) (not e!591975))))

(assert (=> d!126349 (= res!695716 (and (bvsge (index!41723 lt!460620) #b00000000000000000000000000000000) (bvslt (index!41723 lt!460620) (size!32195 (_keys!11661 thiss!1427)))))))

(declare-fun lt!460774 () Unit!34096)

(declare-fun choose!53 (array!65826 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22131) Unit!34096)

(assert (=> d!126349 (= lt!460774 (choose!53 (_keys!11661 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41723 lt!460620) #b00000000000000000000000000000000 Nil!22128))))

(assert (=> d!126349 (bvslt (size!32195 (_keys!11661 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!126349 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11661 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41723 lt!460620) #b00000000000000000000000000000000 Nil!22128) lt!460774)))

(declare-fun b!1044467 () Bool)

(assert (=> b!1044467 (= e!591975 (arrayNoDuplicates!0 (array!65827 (store (arr!31659 (_keys!11661 thiss!1427)) (index!41723 lt!460620) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32195 (_keys!11661 thiss!1427))) #b00000000000000000000000000000000 Nil!22128))))

(assert (= (and d!126349 res!695716) b!1044467))

(declare-fun m!964087 () Bool)

(assert (=> d!126349 m!964087))

(assert (=> b!1044467 m!963859))

(declare-fun m!964089 () Bool)

(assert (=> b!1044467 m!964089))

(assert (=> b!1044279 d!126349))

(declare-fun bm!44373 () Bool)

(declare-fun call!44380 () ListLongMap!13891)

(declare-fun call!44378 () ListLongMap!13891)

(assert (=> bm!44373 (= call!44380 call!44378)))

(declare-fun b!1044468 () Bool)

(declare-fun e!591982 () ListLongMap!13891)

(declare-fun call!44381 () ListLongMap!13891)

(assert (=> b!1044468 (= e!591982 call!44381)))

(declare-fun b!1044469 () Bool)

(declare-fun e!591984 () Bool)

(declare-fun call!44376 () Bool)

(assert (=> b!1044469 (= e!591984 (not call!44376))))

(declare-fun b!1044470 () Bool)

(declare-fun e!591987 () Bool)

(assert (=> b!1044470 (= e!591987 e!591984)))

(declare-fun c!106075 () Bool)

(assert (=> b!1044470 (= c!106075 (not (= (bvand (extraKeys!6128 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1044471 () Bool)

(declare-fun e!591985 () Bool)

(assert (=> b!1044471 (= e!591985 (validKeyInArray!0 (select (arr!31659 lt!460614) #b00000000000000000000000000000000)))))

(declare-fun b!1044472 () Bool)

(declare-fun e!591977 () Unit!34096)

(declare-fun Unit!34103 () Unit!34096)

(assert (=> b!1044472 (= e!591977 Unit!34103)))

(declare-fun b!1044473 () Bool)

(declare-fun e!591976 () Bool)

(declare-fun e!591980 () Bool)

(assert (=> b!1044473 (= e!591976 e!591980)))

(declare-fun res!695721 () Bool)

(declare-fun call!44382 () Bool)

(assert (=> b!1044473 (= res!695721 call!44382)))

(assert (=> b!1044473 (=> (not res!695721) (not e!591980))))

(declare-fun b!1044474 () Bool)

(declare-fun e!591979 () Bool)

(assert (=> b!1044474 (= e!591984 e!591979)))

(declare-fun res!695725 () Bool)

(assert (=> b!1044474 (= res!695725 call!44376)))

(assert (=> b!1044474 (=> (not res!695725) (not e!591979))))

(declare-fun bm!44375 () Bool)

(declare-fun lt!460792 () ListLongMap!13891)

(assert (=> bm!44375 (= call!44376 (contains!6091 lt!460792 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!44376 () Bool)

(declare-fun call!44377 () ListLongMap!13891)

(assert (=> bm!44376 (= call!44381 call!44377)))

(declare-fun b!1044475 () Bool)

(declare-fun c!106073 () Bool)

(assert (=> b!1044475 (= c!106073 (and (not (= (bvand (extraKeys!6128 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6128 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!591978 () ListLongMap!13891)

(assert (=> b!1044475 (= e!591978 e!591982)))

(declare-fun b!1044476 () Bool)

(declare-fun res!695718 () Bool)

(assert (=> b!1044476 (=> (not res!695718) (not e!591987))))

(declare-fun e!591986 () Bool)

(assert (=> b!1044476 (= res!695718 e!591986)))

(declare-fun res!695720 () Bool)

(assert (=> b!1044476 (=> res!695720 e!591986)))

(assert (=> b!1044476 (= res!695720 (not e!591985))))

(declare-fun res!695719 () Bool)

(assert (=> b!1044476 (=> (not res!695719) (not e!591985))))

(assert (=> b!1044476 (= res!695719 (bvslt #b00000000000000000000000000000000 (size!32195 lt!460614)))))

(declare-fun b!1044477 () Bool)

(assert (=> b!1044477 (= e!591979 (= (apply!946 lt!460792 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6234 thiss!1427)))))

(declare-fun b!1044478 () Bool)

(declare-fun e!591981 () ListLongMap!13891)

(assert (=> b!1044478 (= e!591981 e!591978)))

(declare-fun c!106076 () Bool)

(assert (=> b!1044478 (= c!106076 (and (not (= (bvand (extraKeys!6128 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6128 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!44377 () Bool)

(declare-fun call!44379 () ListLongMap!13891)

(assert (=> bm!44377 (= call!44379 call!44380)))

(declare-fun bm!44374 () Bool)

(assert (=> bm!44374 (= call!44382 (contains!6091 lt!460792 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!126351 () Bool)

(assert (=> d!126351 e!591987))

(declare-fun res!695724 () Bool)

(assert (=> d!126351 (=> (not res!695724) (not e!591987))))

(assert (=> d!126351 (= res!695724 (or (bvsge #b00000000000000000000000000000000 (size!32195 lt!460614)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32195 lt!460614)))))))

(declare-fun lt!460794 () ListLongMap!13891)

(assert (=> d!126351 (= lt!460792 lt!460794)))

(declare-fun lt!460788 () Unit!34096)

(assert (=> d!126351 (= lt!460788 e!591977)))

(declare-fun c!106078 () Bool)

(declare-fun e!591988 () Bool)

(assert (=> d!126351 (= c!106078 e!591988)))

(declare-fun res!695723 () Bool)

(assert (=> d!126351 (=> (not res!695723) (not e!591988))))

(assert (=> d!126351 (= res!695723 (bvslt #b00000000000000000000000000000000 (size!32195 lt!460614)))))

(assert (=> d!126351 (= lt!460794 e!591981)))

(declare-fun c!106074 () Bool)

(assert (=> d!126351 (= c!106074 (and (not (= (bvand (extraKeys!6128 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6128 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!126351 (validMask!0 (mask!30502 thiss!1427))))

(assert (=> d!126351 (= (getCurrentListMap!3967 lt!460614 lt!460619 (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6400 thiss!1427)) lt!460792)))

(declare-fun b!1044479 () Bool)

(assert (=> b!1044479 (= e!591982 call!44379)))

(declare-fun b!1044480 () Bool)

(declare-fun res!695717 () Bool)

(assert (=> b!1044480 (=> (not res!695717) (not e!591987))))

(assert (=> b!1044480 (= res!695717 e!591976)))

(declare-fun c!106077 () Bool)

(assert (=> b!1044480 (= c!106077 (not (= (bvand (extraKeys!6128 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1044481 () Bool)

(declare-fun e!591983 () Bool)

(assert (=> b!1044481 (= e!591983 (= (apply!946 lt!460792 (select (arr!31659 lt!460614) #b00000000000000000000000000000000)) (get!16561 (select (arr!31660 lt!460619) #b00000000000000000000000000000000) (dynLambda!2011 (defaultEntry!6400 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1044481 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32196 lt!460619)))))

(assert (=> b!1044481 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32195 lt!460614)))))

(declare-fun b!1044482 () Bool)

(declare-fun lt!460793 () Unit!34096)

(assert (=> b!1044482 (= e!591977 lt!460793)))

(declare-fun lt!460780 () ListLongMap!13891)

(assert (=> b!1044482 (= lt!460780 (getCurrentListMapNoExtraKeys!3539 lt!460614 lt!460619 (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6400 thiss!1427)))))

(declare-fun lt!460784 () (_ BitVec 64))

(assert (=> b!1044482 (= lt!460784 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460796 () (_ BitVec 64))

(assert (=> b!1044482 (= lt!460796 (select (arr!31659 lt!460614) #b00000000000000000000000000000000))))

(declare-fun lt!460779 () Unit!34096)

(assert (=> b!1044482 (= lt!460779 (addStillContains!634 lt!460780 lt!460784 (zeroValue!6234 thiss!1427) lt!460796))))

(assert (=> b!1044482 (contains!6091 (+!3069 lt!460780 (tuple2!15861 lt!460784 (zeroValue!6234 thiss!1427))) lt!460796)))

(declare-fun lt!460789 () Unit!34096)

(assert (=> b!1044482 (= lt!460789 lt!460779)))

(declare-fun lt!460776 () ListLongMap!13891)

(assert (=> b!1044482 (= lt!460776 (getCurrentListMapNoExtraKeys!3539 lt!460614 lt!460619 (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6400 thiss!1427)))))

(declare-fun lt!460786 () (_ BitVec 64))

(assert (=> b!1044482 (= lt!460786 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460782 () (_ BitVec 64))

(assert (=> b!1044482 (= lt!460782 (select (arr!31659 lt!460614) #b00000000000000000000000000000000))))

(declare-fun lt!460785 () Unit!34096)

(assert (=> b!1044482 (= lt!460785 (addApplyDifferent!486 lt!460776 lt!460786 (minValue!6234 thiss!1427) lt!460782))))

(assert (=> b!1044482 (= (apply!946 (+!3069 lt!460776 (tuple2!15861 lt!460786 (minValue!6234 thiss!1427))) lt!460782) (apply!946 lt!460776 lt!460782))))

(declare-fun lt!460783 () Unit!34096)

(assert (=> b!1044482 (= lt!460783 lt!460785)))

(declare-fun lt!460795 () ListLongMap!13891)

(assert (=> b!1044482 (= lt!460795 (getCurrentListMapNoExtraKeys!3539 lt!460614 lt!460619 (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6400 thiss!1427)))))

(declare-fun lt!460777 () (_ BitVec 64))

(assert (=> b!1044482 (= lt!460777 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460791 () (_ BitVec 64))

(assert (=> b!1044482 (= lt!460791 (select (arr!31659 lt!460614) #b00000000000000000000000000000000))))

(declare-fun lt!460790 () Unit!34096)

(assert (=> b!1044482 (= lt!460790 (addApplyDifferent!486 lt!460795 lt!460777 (zeroValue!6234 thiss!1427) lt!460791))))

(assert (=> b!1044482 (= (apply!946 (+!3069 lt!460795 (tuple2!15861 lt!460777 (zeroValue!6234 thiss!1427))) lt!460791) (apply!946 lt!460795 lt!460791))))

(declare-fun lt!460778 () Unit!34096)

(assert (=> b!1044482 (= lt!460778 lt!460790)))

(declare-fun lt!460781 () ListLongMap!13891)

(assert (=> b!1044482 (= lt!460781 (getCurrentListMapNoExtraKeys!3539 lt!460614 lt!460619 (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6400 thiss!1427)))))

(declare-fun lt!460787 () (_ BitVec 64))

(assert (=> b!1044482 (= lt!460787 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460775 () (_ BitVec 64))

(assert (=> b!1044482 (= lt!460775 (select (arr!31659 lt!460614) #b00000000000000000000000000000000))))

(assert (=> b!1044482 (= lt!460793 (addApplyDifferent!486 lt!460781 lt!460787 (minValue!6234 thiss!1427) lt!460775))))

(assert (=> b!1044482 (= (apply!946 (+!3069 lt!460781 (tuple2!15861 lt!460787 (minValue!6234 thiss!1427))) lt!460775) (apply!946 lt!460781 lt!460775))))

(declare-fun b!1044483 () Bool)

(assert (=> b!1044483 (= e!591976 (not call!44382))))

(declare-fun bm!44378 () Bool)

(assert (=> bm!44378 (= call!44378 (getCurrentListMapNoExtraKeys!3539 lt!460614 lt!460619 (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6400 thiss!1427)))))

(declare-fun b!1044484 () Bool)

(assert (=> b!1044484 (= e!591986 e!591983)))

(declare-fun res!695722 () Bool)

(assert (=> b!1044484 (=> (not res!695722) (not e!591983))))

(assert (=> b!1044484 (= res!695722 (contains!6091 lt!460792 (select (arr!31659 lt!460614) #b00000000000000000000000000000000)))))

(assert (=> b!1044484 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32195 lt!460614)))))

(declare-fun b!1044485 () Bool)

(assert (=> b!1044485 (= e!591978 call!44381)))

(declare-fun b!1044486 () Bool)

(assert (=> b!1044486 (= e!591980 (= (apply!946 lt!460792 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6234 thiss!1427)))))

(declare-fun bm!44379 () Bool)

(assert (=> bm!44379 (= call!44377 (+!3069 (ite c!106074 call!44378 (ite c!106076 call!44380 call!44379)) (ite (or c!106074 c!106076) (tuple2!15861 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6234 thiss!1427)) (tuple2!15861 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6234 thiss!1427)))))))

(declare-fun b!1044487 () Bool)

(assert (=> b!1044487 (= e!591981 (+!3069 call!44377 (tuple2!15861 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6234 thiss!1427))))))

(declare-fun b!1044488 () Bool)

(assert (=> b!1044488 (= e!591988 (validKeyInArray!0 (select (arr!31659 lt!460614) #b00000000000000000000000000000000)))))

(assert (= (and d!126351 c!106074) b!1044487))

(assert (= (and d!126351 (not c!106074)) b!1044478))

(assert (= (and b!1044478 c!106076) b!1044485))

(assert (= (and b!1044478 (not c!106076)) b!1044475))

(assert (= (and b!1044475 c!106073) b!1044468))

(assert (= (and b!1044475 (not c!106073)) b!1044479))

(assert (= (or b!1044468 b!1044479) bm!44377))

(assert (= (or b!1044485 bm!44377) bm!44373))

(assert (= (or b!1044485 b!1044468) bm!44376))

(assert (= (or b!1044487 bm!44373) bm!44378))

(assert (= (or b!1044487 bm!44376) bm!44379))

(assert (= (and d!126351 res!695723) b!1044488))

(assert (= (and d!126351 c!106078) b!1044482))

(assert (= (and d!126351 (not c!106078)) b!1044472))

(assert (= (and d!126351 res!695724) b!1044476))

(assert (= (and b!1044476 res!695719) b!1044471))

(assert (= (and b!1044476 (not res!695720)) b!1044484))

(assert (= (and b!1044484 res!695722) b!1044481))

(assert (= (and b!1044476 res!695718) b!1044480))

(assert (= (and b!1044480 c!106077) b!1044473))

(assert (= (and b!1044480 (not c!106077)) b!1044483))

(assert (= (and b!1044473 res!695721) b!1044486))

(assert (= (or b!1044473 b!1044483) bm!44374))

(assert (= (and b!1044480 res!695717) b!1044470))

(assert (= (and b!1044470 c!106075) b!1044474))

(assert (= (and b!1044470 (not c!106075)) b!1044469))

(assert (= (and b!1044474 res!695725) b!1044477))

(assert (= (or b!1044474 b!1044469) bm!44375))

(declare-fun b_lambda!16263 () Bool)

(assert (=> (not b_lambda!16263) (not b!1044481)))

(assert (=> b!1044481 t!31374))

(declare-fun b_and!33721 () Bool)

(assert (= b_and!33719 (and (=> t!31374 result!14551) b_and!33721)))

(declare-fun m!964091 () Bool)

(assert (=> b!1044487 m!964091))

(declare-fun m!964093 () Bool)

(assert (=> b!1044486 m!964093))

(declare-fun m!964095 () Bool)

(assert (=> bm!44374 m!964095))

(assert (=> b!1044484 m!964083))

(assert (=> b!1044484 m!964083))

(declare-fun m!964097 () Bool)

(assert (=> b!1044484 m!964097))

(declare-fun m!964099 () Bool)

(assert (=> bm!44375 m!964099))

(assert (=> b!1044488 m!964083))

(assert (=> b!1044488 m!964083))

(declare-fun m!964101 () Bool)

(assert (=> b!1044488 m!964101))

(assert (=> b!1044471 m!964083))

(assert (=> b!1044471 m!964083))

(assert (=> b!1044471 m!964101))

(declare-fun m!964103 () Bool)

(assert (=> b!1044481 m!964103))

(assert (=> b!1044481 m!963857))

(declare-fun m!964105 () Bool)

(assert (=> b!1044481 m!964105))

(assert (=> b!1044481 m!964083))

(assert (=> b!1044481 m!964083))

(declare-fun m!964107 () Bool)

(assert (=> b!1044481 m!964107))

(assert (=> b!1044481 m!964103))

(assert (=> b!1044481 m!963857))

(declare-fun m!964109 () Bool)

(assert (=> bm!44378 m!964109))

(declare-fun m!964111 () Bool)

(assert (=> bm!44379 m!964111))

(declare-fun m!964113 () Bool)

(assert (=> b!1044477 m!964113))

(declare-fun m!964115 () Bool)

(assert (=> b!1044482 m!964115))

(declare-fun m!964117 () Bool)

(assert (=> b!1044482 m!964117))

(declare-fun m!964119 () Bool)

(assert (=> b!1044482 m!964119))

(declare-fun m!964121 () Bool)

(assert (=> b!1044482 m!964121))

(assert (=> b!1044482 m!964109))

(declare-fun m!964123 () Bool)

(assert (=> b!1044482 m!964123))

(declare-fun m!964125 () Bool)

(assert (=> b!1044482 m!964125))

(assert (=> b!1044482 m!964119))

(assert (=> b!1044482 m!964123))

(assert (=> b!1044482 m!964115))

(declare-fun m!964127 () Bool)

(assert (=> b!1044482 m!964127))

(assert (=> b!1044482 m!964127))

(declare-fun m!964129 () Bool)

(assert (=> b!1044482 m!964129))

(declare-fun m!964131 () Bool)

(assert (=> b!1044482 m!964131))

(declare-fun m!964133 () Bool)

(assert (=> b!1044482 m!964133))

(declare-fun m!964135 () Bool)

(assert (=> b!1044482 m!964135))

(assert (=> b!1044482 m!964083))

(declare-fun m!964137 () Bool)

(assert (=> b!1044482 m!964137))

(declare-fun m!964139 () Bool)

(assert (=> b!1044482 m!964139))

(declare-fun m!964141 () Bool)

(assert (=> b!1044482 m!964141))

(declare-fun m!964143 () Bool)

(assert (=> b!1044482 m!964143))

(assert (=> d!126351 m!963939))

(assert (=> b!1044279 d!126351))

(declare-fun b!1044499 () Bool)

(declare-fun e!591998 () Bool)

(declare-fun call!44385 () Bool)

(assert (=> b!1044499 (= e!591998 call!44385)))

(declare-fun bm!44382 () Bool)

(declare-fun c!106081 () Bool)

(assert (=> bm!44382 (= call!44385 (arrayNoDuplicates!0 lt!460614 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106081 (Cons!22127 (select (arr!31659 lt!460614) #b00000000000000000000000000000000) Nil!22128) Nil!22128)))))

(declare-fun b!1044500 () Bool)

(declare-fun e!591997 () Bool)

(declare-fun contains!6092 (List!22131 (_ BitVec 64)) Bool)

(assert (=> b!1044500 (= e!591997 (contains!6092 Nil!22128 (select (arr!31659 lt!460614) #b00000000000000000000000000000000)))))

(declare-fun b!1044501 () Bool)

(declare-fun e!592000 () Bool)

(declare-fun e!591999 () Bool)

(assert (=> b!1044501 (= e!592000 e!591999)))

(declare-fun res!695734 () Bool)

(assert (=> b!1044501 (=> (not res!695734) (not e!591999))))

(assert (=> b!1044501 (= res!695734 (not e!591997))))

(declare-fun res!695733 () Bool)

(assert (=> b!1044501 (=> (not res!695733) (not e!591997))))

(assert (=> b!1044501 (= res!695733 (validKeyInArray!0 (select (arr!31659 lt!460614) #b00000000000000000000000000000000)))))

(declare-fun b!1044502 () Bool)

(assert (=> b!1044502 (= e!591998 call!44385)))

(declare-fun d!126353 () Bool)

(declare-fun res!695732 () Bool)

(assert (=> d!126353 (=> res!695732 e!592000)))

(assert (=> d!126353 (= res!695732 (bvsge #b00000000000000000000000000000000 (size!32195 lt!460614)))))

(assert (=> d!126353 (= (arrayNoDuplicates!0 lt!460614 #b00000000000000000000000000000000 Nil!22128) e!592000)))

(declare-fun b!1044503 () Bool)

(assert (=> b!1044503 (= e!591999 e!591998)))

(assert (=> b!1044503 (= c!106081 (validKeyInArray!0 (select (arr!31659 lt!460614) #b00000000000000000000000000000000)))))

(assert (= (and d!126353 (not res!695732)) b!1044501))

(assert (= (and b!1044501 res!695733) b!1044500))

(assert (= (and b!1044501 res!695734) b!1044503))

(assert (= (and b!1044503 c!106081) b!1044499))

(assert (= (and b!1044503 (not c!106081)) b!1044502))

(assert (= (or b!1044499 b!1044502) bm!44382))

(assert (=> bm!44382 m!964083))

(declare-fun m!964145 () Bool)

(assert (=> bm!44382 m!964145))

(assert (=> b!1044500 m!964083))

(assert (=> b!1044500 m!964083))

(declare-fun m!964147 () Bool)

(assert (=> b!1044500 m!964147))

(assert (=> b!1044501 m!964083))

(assert (=> b!1044501 m!964083))

(assert (=> b!1044501 m!964101))

(assert (=> b!1044503 m!964083))

(assert (=> b!1044503 m!964083))

(assert (=> b!1044503 m!964101))

(assert (=> b!1044279 d!126353))

(declare-fun d!126355 () Bool)

(declare-fun e!592003 () Bool)

(assert (=> d!126355 e!592003))

(declare-fun res!695737 () Bool)

(assert (=> d!126355 (=> (not res!695737) (not e!592003))))

(assert (=> d!126355 (= res!695737 (and (bvsge (index!41723 lt!460620) #b00000000000000000000000000000000) (bvslt (index!41723 lt!460620) (size!32195 (_keys!11661 thiss!1427)))))))

(declare-fun lt!460799 () Unit!34096)

(declare-fun choose!25 (array!65826 (_ BitVec 32) (_ BitVec 32)) Unit!34096)

(assert (=> d!126355 (= lt!460799 (choose!25 (_keys!11661 thiss!1427) (index!41723 lt!460620) (mask!30502 thiss!1427)))))

(assert (=> d!126355 (validMask!0 (mask!30502 thiss!1427))))

(assert (=> d!126355 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11661 thiss!1427) (index!41723 lt!460620) (mask!30502 thiss!1427)) lt!460799)))

(declare-fun b!1044506 () Bool)

(assert (=> b!1044506 (= e!592003 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65827 (store (arr!31659 (_keys!11661 thiss!1427)) (index!41723 lt!460620) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32195 (_keys!11661 thiss!1427))) (mask!30502 thiss!1427)))))

(assert (= (and d!126355 res!695737) b!1044506))

(declare-fun m!964149 () Bool)

(assert (=> d!126355 m!964149))

(assert (=> d!126355 m!963939))

(assert (=> b!1044506 m!963859))

(declare-fun m!964151 () Bool)

(assert (=> b!1044506 m!964151))

(assert (=> b!1044279 d!126355))

(declare-fun d!126357 () Bool)

(declare-fun lt!460802 () ListLongMap!13891)

(assert (=> d!126357 (not (contains!6091 lt!460802 key!909))))

(declare-fun removeStrictlySorted!62 (List!22130 (_ BitVec 64)) List!22130)

(assert (=> d!126357 (= lt!460802 (ListLongMap!13892 (removeStrictlySorted!62 (toList!6961 (getCurrentListMap!3967 (_keys!11661 thiss!1427) (_values!6423 thiss!1427) (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6400 thiss!1427))) key!909)))))

(assert (=> d!126357 (= (-!537 (getCurrentListMap!3967 (_keys!11661 thiss!1427) (_values!6423 thiss!1427) (mask!30502 thiss!1427) (extraKeys!6128 thiss!1427) (zeroValue!6234 thiss!1427) (minValue!6234 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6400 thiss!1427)) key!909) lt!460802)))

(declare-fun bs!30511 () Bool)

(assert (= bs!30511 d!126357))

(declare-fun m!964153 () Bool)

(assert (=> bs!30511 m!964153))

(declare-fun m!964155 () Bool)

(assert (=> bs!30511 m!964155))

(assert (=> b!1044279 d!126357))

(declare-fun b!1044507 () Bool)

(declare-fun e!592005 () (_ BitVec 32))

(assert (=> b!1044507 (= e!592005 #b00000000000000000000000000000000)))

(declare-fun b!1044508 () Bool)

(declare-fun e!592004 () (_ BitVec 32))

(assert (=> b!1044508 (= e!592005 e!592004)))

(declare-fun c!106082 () Bool)

(assert (=> b!1044508 (= c!106082 (validKeyInArray!0 (select (arr!31659 lt!460614) #b00000000000000000000000000000000)))))

(declare-fun bm!44383 () Bool)

(declare-fun call!44386 () (_ BitVec 32))

(assert (=> bm!44383 (= call!44386 (arrayCountValidKeys!0 lt!460614 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32195 (_keys!11661 thiss!1427))))))

(declare-fun b!1044509 () Bool)

(assert (=> b!1044509 (= e!592004 call!44386)))

(declare-fun b!1044510 () Bool)

(assert (=> b!1044510 (= e!592004 (bvadd #b00000000000000000000000000000001 call!44386))))

(declare-fun d!126359 () Bool)

(declare-fun lt!460803 () (_ BitVec 32))

(assert (=> d!126359 (and (bvsge lt!460803 #b00000000000000000000000000000000) (bvsle lt!460803 (bvsub (size!32195 lt!460614) #b00000000000000000000000000000000)))))

(assert (=> d!126359 (= lt!460803 e!592005)))

(declare-fun c!106083 () Bool)

(assert (=> d!126359 (= c!106083 (bvsge #b00000000000000000000000000000000 (size!32195 (_keys!11661 thiss!1427))))))

(assert (=> d!126359 (and (bvsle #b00000000000000000000000000000000 (size!32195 (_keys!11661 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32195 (_keys!11661 thiss!1427)) (size!32195 lt!460614)))))

(assert (=> d!126359 (= (arrayCountValidKeys!0 lt!460614 #b00000000000000000000000000000000 (size!32195 (_keys!11661 thiss!1427))) lt!460803)))

(assert (= (and d!126359 c!106083) b!1044507))

(assert (= (and d!126359 (not c!106083)) b!1044508))

(assert (= (and b!1044508 c!106082) b!1044510))

(assert (= (and b!1044508 (not c!106082)) b!1044509))

(assert (= (or b!1044510 b!1044509) bm!44383))

(assert (=> b!1044508 m!964083))

(assert (=> b!1044508 m!964083))

(assert (=> b!1044508 m!964101))

(declare-fun m!964157 () Bool)

(assert (=> bm!44383 m!964157))

(assert (=> b!1044279 d!126359))

(declare-fun d!126361 () Bool)

(declare-fun res!695742 () Bool)

(declare-fun e!592012 () Bool)

(assert (=> d!126361 (=> res!695742 e!592012)))

(assert (=> d!126361 (= res!695742 (bvsge #b00000000000000000000000000000000 (size!32195 lt!460614)))))

(assert (=> d!126361 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!460614 (mask!30502 thiss!1427)) e!592012)))

(declare-fun b!1044519 () Bool)

(declare-fun e!592013 () Bool)

(declare-fun call!44389 () Bool)

(assert (=> b!1044519 (= e!592013 call!44389)))

(declare-fun bm!44386 () Bool)

(assert (=> bm!44386 (= call!44389 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!460614 (mask!30502 thiss!1427)))))

(declare-fun b!1044520 () Bool)

(declare-fun e!592014 () Bool)

(assert (=> b!1044520 (= e!592014 call!44389)))

(declare-fun b!1044521 () Bool)

(assert (=> b!1044521 (= e!592013 e!592014)))

(declare-fun lt!460810 () (_ BitVec 64))

(assert (=> b!1044521 (= lt!460810 (select (arr!31659 lt!460614) #b00000000000000000000000000000000))))

(declare-fun lt!460811 () Unit!34096)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65826 (_ BitVec 64) (_ BitVec 32)) Unit!34096)

(assert (=> b!1044521 (= lt!460811 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!460614 lt!460810 #b00000000000000000000000000000000))))

(assert (=> b!1044521 (arrayContainsKey!0 lt!460614 lt!460810 #b00000000000000000000000000000000)))

(declare-fun lt!460812 () Unit!34096)

(assert (=> b!1044521 (= lt!460812 lt!460811)))

(declare-fun res!695743 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65826 (_ BitVec 32)) SeekEntryResult!9838)

(assert (=> b!1044521 (= res!695743 (= (seekEntryOrOpen!0 (select (arr!31659 lt!460614) #b00000000000000000000000000000000) lt!460614 (mask!30502 thiss!1427)) (Found!9838 #b00000000000000000000000000000000)))))

(assert (=> b!1044521 (=> (not res!695743) (not e!592014))))

(declare-fun b!1044522 () Bool)

(assert (=> b!1044522 (= e!592012 e!592013)))

(declare-fun c!106086 () Bool)

(assert (=> b!1044522 (= c!106086 (validKeyInArray!0 (select (arr!31659 lt!460614) #b00000000000000000000000000000000)))))

(assert (= (and d!126361 (not res!695742)) b!1044522))

(assert (= (and b!1044522 c!106086) b!1044521))

(assert (= (and b!1044522 (not c!106086)) b!1044519))

(assert (= (and b!1044521 res!695743) b!1044520))

(assert (= (or b!1044520 b!1044519) bm!44386))

(declare-fun m!964159 () Bool)

(assert (=> bm!44386 m!964159))

(assert (=> b!1044521 m!964083))

(declare-fun m!964161 () Bool)

(assert (=> b!1044521 m!964161))

(declare-fun m!964163 () Bool)

(assert (=> b!1044521 m!964163))

(assert (=> b!1044521 m!964083))

(declare-fun m!964165 () Bool)

(assert (=> b!1044521 m!964165))

(assert (=> b!1044522 m!964083))

(assert (=> b!1044522 m!964083))

(assert (=> b!1044522 m!964101))

(assert (=> b!1044279 d!126361))

(declare-fun d!126363 () Bool)

(declare-fun res!695750 () Bool)

(declare-fun e!592017 () Bool)

(assert (=> d!126363 (=> (not res!695750) (not e!592017))))

(declare-fun simpleValid!448 (LongMapFixedSize!6024) Bool)

(assert (=> d!126363 (= res!695750 (simpleValid!448 thiss!1427))))

(assert (=> d!126363 (= (valid!2215 thiss!1427) e!592017)))

(declare-fun b!1044529 () Bool)

(declare-fun res!695751 () Bool)

(assert (=> b!1044529 (=> (not res!695751) (not e!592017))))

(assert (=> b!1044529 (= res!695751 (= (arrayCountValidKeys!0 (_keys!11661 thiss!1427) #b00000000000000000000000000000000 (size!32195 (_keys!11661 thiss!1427))) (_size!3067 thiss!1427)))))

(declare-fun b!1044530 () Bool)

(declare-fun res!695752 () Bool)

(assert (=> b!1044530 (=> (not res!695752) (not e!592017))))

(assert (=> b!1044530 (= res!695752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11661 thiss!1427) (mask!30502 thiss!1427)))))

(declare-fun b!1044531 () Bool)

(assert (=> b!1044531 (= e!592017 (arrayNoDuplicates!0 (_keys!11661 thiss!1427) #b00000000000000000000000000000000 Nil!22128))))

(assert (= (and d!126363 res!695750) b!1044529))

(assert (= (and b!1044529 res!695751) b!1044530))

(assert (= (and b!1044530 res!695752) b!1044531))

(declare-fun m!964167 () Bool)

(assert (=> d!126363 m!964167))

(assert (=> b!1044529 m!963849))

(declare-fun m!964169 () Bool)

(assert (=> b!1044530 m!964169))

(declare-fun m!964171 () Bool)

(assert (=> b!1044531 m!964171))

(assert (=> start!91810 d!126363))

(declare-fun d!126365 () Bool)

(assert (=> d!126365 (= (array_inv!24301 (_keys!11661 thiss!1427)) (bvsge (size!32195 (_keys!11661 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1044286 d!126365))

(declare-fun d!126367 () Bool)

(assert (=> d!126367 (= (array_inv!24302 (_values!6423 thiss!1427)) (bvsge (size!32196 (_values!6423 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1044286 d!126367))

(declare-fun mapIsEmpty!38891 () Bool)

(declare-fun mapRes!38891 () Bool)

(assert (=> mapIsEmpty!38891 mapRes!38891))

(declare-fun b!1044538 () Bool)

(declare-fun e!592022 () Bool)

(assert (=> b!1044538 (= e!592022 tp_is_empty!24837)))

(declare-fun b!1044539 () Bool)

(declare-fun e!592023 () Bool)

(assert (=> b!1044539 (= e!592023 tp_is_empty!24837)))

(declare-fun mapNonEmpty!38891 () Bool)

(declare-fun tp!74608 () Bool)

(assert (=> mapNonEmpty!38891 (= mapRes!38891 (and tp!74608 e!592022))))

(declare-fun mapKey!38891 () (_ BitVec 32))

(declare-fun mapRest!38891 () (Array (_ BitVec 32) ValueCell!11715))

(declare-fun mapValue!38891 () ValueCell!11715)

(assert (=> mapNonEmpty!38891 (= mapRest!38885 (store mapRest!38891 mapKey!38891 mapValue!38891))))

(declare-fun condMapEmpty!38891 () Bool)

(declare-fun mapDefault!38891 () ValueCell!11715)

(assert (=> mapNonEmpty!38885 (= condMapEmpty!38891 (= mapRest!38885 ((as const (Array (_ BitVec 32) ValueCell!11715)) mapDefault!38891)))))

(assert (=> mapNonEmpty!38885 (= tp!74599 (and e!592023 mapRes!38891))))

(assert (= (and mapNonEmpty!38885 condMapEmpty!38891) mapIsEmpty!38891))

(assert (= (and mapNonEmpty!38885 (not condMapEmpty!38891)) mapNonEmpty!38891))

(assert (= (and mapNonEmpty!38891 ((_ is ValueCellFull!11715) mapValue!38891)) b!1044538))

(assert (= (and mapNonEmpty!38885 ((_ is ValueCellFull!11715) mapDefault!38891)) b!1044539))

(declare-fun m!964173 () Bool)

(assert (=> mapNonEmpty!38891 m!964173))

(declare-fun b_lambda!16265 () Bool)

(assert (= b_lambda!16263 (or (and b!1044286 b_free!21117) b_lambda!16265)))

(declare-fun b_lambda!16267 () Bool)

(assert (= b_lambda!16257 (or (and b!1044286 b_free!21117) b_lambda!16267)))

(declare-fun b_lambda!16269 () Bool)

(assert (= b_lambda!16259 (or (and b!1044286 b_free!21117) b_lambda!16269)))

(check-sat (not bm!44375) (not b!1044530) (not d!126351) (not bm!44368) (not b_lambda!16261) (not d!126343) (not b_next!21117) (not b!1044467) (not bm!44358) (not d!126349) (not b!1044488) (not b!1044414) (not bm!44379) (not d!126341) (not b!1044521) (not b!1044471) (not bm!44382) (not b!1044391) (not b!1044397) (not b!1044447) (not b!1044420) (not bm!44372) (not b!1044396) (not b!1044381) (not b!1044464) (not b!1044500) (not bm!44386) (not d!126329) (not bm!44378) (not b!1044449) (not b_lambda!16269) (not b!1044426) (not bm!44365) (not b!1044531) (not b!1044484) (not bm!44383) (not b!1044404) (not bm!44374) (not d!126363) (not b!1044430) (not b!1044508) (not d!126345) (not b!1044394) (not b!1044458) (not b!1044437) (not bm!44362) (not d!126335) (not b!1044456) (not b!1044487) (not d!126355) (not bm!44361) (not b!1044433) b_and!33721 (not b!1044477) (not b!1044387) (not b!1044436) (not b!1044522) (not b!1044482) (not bm!44367) (not mapNonEmpty!38891) (not b!1044435) (not b!1044506) tp_is_empty!24837 (not b!1044401) (not bm!44357) (not b!1044503) (not d!126357) (not b!1044501) (not bm!44371) (not d!126333) (not b!1044481) (not b!1044486) (not b_lambda!16267) (not b!1044333) (not b!1044392) (not b_lambda!16265) (not b_lambda!16255) (not b!1044446) (not d!126337) (not b!1044529) (not b!1044398) (not b!1044431))
(check-sat b_and!33721 (not b_next!21117))
