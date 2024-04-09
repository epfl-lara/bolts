; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90072 () Bool)

(assert start!90072)

(declare-fun b!1031047 () Bool)

(declare-fun b_free!20643 () Bool)

(declare-fun b_next!20643 () Bool)

(assert (=> b!1031047 (= b_free!20643 (not b_next!20643))))

(declare-fun tp!73000 () Bool)

(declare-fun b_and!33071 () Bool)

(assert (=> b!1031047 (= tp!73000 b_and!33071)))

(declare-fun b!1031043 () Bool)

(declare-fun e!582338 () Bool)

(declare-fun e!582341 () Bool)

(assert (=> b!1031043 (= e!582338 e!582341)))

(declare-fun res!689496 () Bool)

(assert (=> b!1031043 (=> (not res!689496) (not e!582341))))

(declare-datatypes ((SeekEntryResult!9691 0))(
  ( (MissingZero!9691 (index!41134 (_ BitVec 32))) (Found!9691 (index!41135 (_ BitVec 32))) (Intermediate!9691 (undefined!10503 Bool) (index!41136 (_ BitVec 32)) (x!91782 (_ BitVec 32))) (Undefined!9691) (MissingVacant!9691 (index!41137 (_ BitVec 32))) )
))
(declare-fun lt!455053 () SeekEntryResult!9691)

(get-info :version)

(assert (=> b!1031043 (= res!689496 ((_ is Found!9691) lt!455053))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37357 0))(
  ( (V!37358 (val!12232 Int)) )
))
(declare-datatypes ((ValueCell!11478 0))(
  ( (ValueCellFull!11478 (v!14810 V!37357)) (EmptyCell!11478) )
))
(declare-datatypes ((array!64774 0))(
  ( (array!64775 (arr!31185 (Array (_ BitVec 32) (_ BitVec 64))) (size!31703 (_ BitVec 32))) )
))
(declare-datatypes ((array!64776 0))(
  ( (array!64777 (arr!31186 (Array (_ BitVec 32) ValueCell!11478)) (size!31704 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5550 0))(
  ( (LongMapFixedSize!5551 (defaultEntry!6149 Int) (mask!29934 (_ BitVec 32)) (extraKeys!5881 (_ BitVec 32)) (zeroValue!5985 V!37357) (minValue!5985 V!37357) (_size!2830 (_ BitVec 32)) (_keys!11319 array!64774) (_values!6172 array!64776) (_vacant!2830 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5550)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64774 (_ BitVec 32)) SeekEntryResult!9691)

(assert (=> b!1031043 (= lt!455053 (seekEntry!0 key!909 (_keys!11319 thiss!1427) (mask!29934 thiss!1427)))))

(declare-fun b!1031044 () Bool)

(declare-fun e!582342 () Bool)

(assert (=> b!1031044 (= e!582341 (not e!582342))))

(declare-fun res!689500 () Bool)

(assert (=> b!1031044 (=> res!689500 e!582342)))

(declare-datatypes ((Unit!33680 0))(
  ( (Unit!33681) )
))
(declare-datatypes ((tuple2!15732 0))(
  ( (tuple2!15733 (_1!7876 Unit!33680) (_2!7876 LongMapFixedSize!5550)) )
))
(declare-fun lt!455054 () tuple2!15732)

(declare-datatypes ((tuple2!15734 0))(
  ( (tuple2!15735 (_1!7877 (_ BitVec 64)) (_2!7877 V!37357)) )
))
(declare-datatypes ((List!21968 0))(
  ( (Nil!21965) (Cons!21964 (h!23166 tuple2!15734) (t!31113 List!21968)) )
))
(declare-datatypes ((ListLongMap!13825 0))(
  ( (ListLongMap!13826 (toList!6928 List!21968)) )
))
(declare-fun contains!6007 (ListLongMap!13825 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3935 (array!64774 array!64776 (_ BitVec 32) (_ BitVec 32) V!37357 V!37357 (_ BitVec 32) Int) ListLongMap!13825)

(assert (=> b!1031044 (= res!689500 (not (contains!6007 (getCurrentListMap!3935 (_keys!11319 (_2!7876 lt!455054)) (_values!6172 (_2!7876 lt!455054)) (mask!29934 (_2!7876 lt!455054)) (extraKeys!5881 (_2!7876 lt!455054)) (zeroValue!5985 (_2!7876 lt!455054)) (minValue!5985 (_2!7876 lt!455054)) #b00000000000000000000000000000000 (defaultEntry!6149 (_2!7876 lt!455054))) key!909)))))

(declare-fun lt!455057 () array!64776)

(declare-fun lt!455056 () array!64774)

(declare-fun Unit!33682 () Unit!33680)

(declare-fun Unit!33683 () Unit!33680)

(assert (=> b!1031044 (= lt!455054 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2830 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15733 Unit!33682 (LongMapFixedSize!5551 (defaultEntry!6149 thiss!1427) (mask!29934 thiss!1427) (extraKeys!5881 thiss!1427) (zeroValue!5985 thiss!1427) (minValue!5985 thiss!1427) (bvsub (_size!2830 thiss!1427) #b00000000000000000000000000000001) lt!455056 lt!455057 (bvadd #b00000000000000000000000000000001 (_vacant!2830 thiss!1427)))) (tuple2!15733 Unit!33683 (LongMapFixedSize!5551 (defaultEntry!6149 thiss!1427) (mask!29934 thiss!1427) (extraKeys!5881 thiss!1427) (zeroValue!5985 thiss!1427) (minValue!5985 thiss!1427) (bvsub (_size!2830 thiss!1427) #b00000000000000000000000000000001) lt!455056 lt!455057 (_vacant!2830 thiss!1427)))))))

(declare-fun -!504 (ListLongMap!13825 (_ BitVec 64)) ListLongMap!13825)

(assert (=> b!1031044 (= (-!504 (getCurrentListMap!3935 (_keys!11319 thiss!1427) (_values!6172 thiss!1427) (mask!29934 thiss!1427) (extraKeys!5881 thiss!1427) (zeroValue!5985 thiss!1427) (minValue!5985 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6149 thiss!1427)) key!909) (getCurrentListMap!3935 lt!455056 lt!455057 (mask!29934 thiss!1427) (extraKeys!5881 thiss!1427) (zeroValue!5985 thiss!1427) (minValue!5985 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6149 thiss!1427)))))

(declare-fun dynLambda!1979 (Int (_ BitVec 64)) V!37357)

(assert (=> b!1031044 (= lt!455057 (array!64777 (store (arr!31186 (_values!6172 thiss!1427)) (index!41135 lt!455053) (ValueCellFull!11478 (dynLambda!1979 (defaultEntry!6149 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31704 (_values!6172 thiss!1427))))))

(declare-fun lt!455058 () Unit!33680)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!28 (array!64774 array!64776 (_ BitVec 32) (_ BitVec 32) V!37357 V!37357 (_ BitVec 32) (_ BitVec 64) Int) Unit!33680)

(assert (=> b!1031044 (= lt!455058 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!28 (_keys!11319 thiss!1427) (_values!6172 thiss!1427) (mask!29934 thiss!1427) (extraKeys!5881 thiss!1427) (zeroValue!5985 thiss!1427) (minValue!5985 thiss!1427) (index!41135 lt!455053) key!909 (defaultEntry!6149 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64774 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1031044 (not (arrayContainsKey!0 lt!455056 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455055 () Unit!33680)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64774 (_ BitVec 32) (_ BitVec 64)) Unit!33680)

(assert (=> b!1031044 (= lt!455055 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11319 thiss!1427) (index!41135 lt!455053) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64774 (_ BitVec 32)) Bool)

(assert (=> b!1031044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455056 (mask!29934 thiss!1427))))

(declare-fun lt!455052 () Unit!33680)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64774 (_ BitVec 32) (_ BitVec 32)) Unit!33680)

(assert (=> b!1031044 (= lt!455052 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11319 thiss!1427) (index!41135 lt!455053) (mask!29934 thiss!1427)))))

(declare-datatypes ((List!21969 0))(
  ( (Nil!21966) (Cons!21965 (h!23167 (_ BitVec 64)) (t!31114 List!21969)) )
))
(declare-fun arrayNoDuplicates!0 (array!64774 (_ BitVec 32) List!21969) Bool)

(assert (=> b!1031044 (arrayNoDuplicates!0 lt!455056 #b00000000000000000000000000000000 Nil!21966)))

(declare-fun lt!455050 () Unit!33680)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64774 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21969) Unit!33680)

(assert (=> b!1031044 (= lt!455050 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11319 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41135 lt!455053) #b00000000000000000000000000000000 Nil!21966))))

(declare-fun arrayCountValidKeys!0 (array!64774 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1031044 (= (arrayCountValidKeys!0 lt!455056 #b00000000000000000000000000000000 (size!31703 (_keys!11319 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11319 thiss!1427) #b00000000000000000000000000000000 (size!31703 (_keys!11319 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1031044 (= lt!455056 (array!64775 (store (arr!31185 (_keys!11319 thiss!1427)) (index!41135 lt!455053) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31703 (_keys!11319 thiss!1427))))))

(declare-fun lt!455049 () Unit!33680)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64774 (_ BitVec 32) (_ BitVec 64)) Unit!33680)

(assert (=> b!1031044 (= lt!455049 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11319 thiss!1427) (index!41135 lt!455053) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!689497 () Bool)

(assert (=> start!90072 (=> (not res!689497) (not e!582338))))

(declare-fun valid!2054 (LongMapFixedSize!5550) Bool)

(assert (=> start!90072 (= res!689497 (valid!2054 thiss!1427))))

(assert (=> start!90072 e!582338))

(declare-fun e!582336 () Bool)

(assert (=> start!90072 e!582336))

(assert (=> start!90072 true))

(declare-fun b!1031045 () Bool)

(declare-fun res!689501 () Bool)

(assert (=> b!1031045 (=> res!689501 e!582342)))

(assert (=> b!1031045 (= res!689501 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11319 (_2!7876 lt!455054)) (mask!29934 (_2!7876 lt!455054)))))))

(declare-fun b!1031046 () Bool)

(declare-fun e!582339 () Bool)

(declare-fun tp_is_empty!24363 () Bool)

(assert (=> b!1031046 (= e!582339 tp_is_empty!24363)))

(declare-fun e!582343 () Bool)

(declare-fun array_inv!23983 (array!64774) Bool)

(declare-fun array_inv!23984 (array!64776) Bool)

(assert (=> b!1031047 (= e!582336 (and tp!73000 tp_is_empty!24363 (array_inv!23983 (_keys!11319 thiss!1427)) (array_inv!23984 (_values!6172 thiss!1427)) e!582343))))

(declare-fun b!1031048 () Bool)

(declare-fun res!689499 () Bool)

(assert (=> b!1031048 (=> res!689499 e!582342)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1031048 (= res!689499 (not (validMask!0 (mask!29934 (_2!7876 lt!455054)))))))

(declare-fun b!1031049 () Bool)

(declare-fun res!689498 () Bool)

(assert (=> b!1031049 (=> res!689498 e!582342)))

(assert (=> b!1031049 (= res!689498 (or (not (= (size!31704 (_values!6172 (_2!7876 lt!455054))) (bvadd #b00000000000000000000000000000001 (mask!29934 (_2!7876 lt!455054))))) (not (= (size!31703 (_keys!11319 (_2!7876 lt!455054))) (size!31704 (_values!6172 (_2!7876 lt!455054))))) (bvslt (mask!29934 (_2!7876 lt!455054)) #b00000000000000000000000000000000) (bvslt (extraKeys!5881 (_2!7876 lt!455054)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5881 (_2!7876 lt!455054)) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!37998 () Bool)

(declare-fun mapRes!37998 () Bool)

(declare-fun tp!73001 () Bool)

(assert (=> mapNonEmpty!37998 (= mapRes!37998 (and tp!73001 e!582339))))

(declare-fun mapKey!37998 () (_ BitVec 32))

(declare-fun mapValue!37998 () ValueCell!11478)

(declare-fun mapRest!37998 () (Array (_ BitVec 32) ValueCell!11478))

(assert (=> mapNonEmpty!37998 (= (arr!31186 (_values!6172 thiss!1427)) (store mapRest!37998 mapKey!37998 mapValue!37998))))

(declare-fun mapIsEmpty!37998 () Bool)

(assert (=> mapIsEmpty!37998 mapRes!37998))

(declare-fun b!1031050 () Bool)

(assert (=> b!1031050 (= e!582342 true)))

(declare-fun lt!455051 () Bool)

(assert (=> b!1031050 (= lt!455051 (arrayNoDuplicates!0 (_keys!11319 (_2!7876 lt!455054)) #b00000000000000000000000000000000 Nil!21966))))

(declare-fun b!1031051 () Bool)

(declare-fun e!582340 () Bool)

(assert (=> b!1031051 (= e!582340 tp_is_empty!24363)))

(declare-fun b!1031052 () Bool)

(assert (=> b!1031052 (= e!582343 (and e!582340 mapRes!37998))))

(declare-fun condMapEmpty!37998 () Bool)

(declare-fun mapDefault!37998 () ValueCell!11478)

(assert (=> b!1031052 (= condMapEmpty!37998 (= (arr!31186 (_values!6172 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11478)) mapDefault!37998)))))

(declare-fun b!1031053 () Bool)

(declare-fun res!689502 () Bool)

(assert (=> b!1031053 (=> (not res!689502) (not e!582338))))

(assert (=> b!1031053 (= res!689502 (not (= key!909 (bvneg key!909))))))

(assert (= (and start!90072 res!689497) b!1031053))

(assert (= (and b!1031053 res!689502) b!1031043))

(assert (= (and b!1031043 res!689496) b!1031044))

(assert (= (and b!1031044 (not res!689500)) b!1031048))

(assert (= (and b!1031048 (not res!689499)) b!1031049))

(assert (= (and b!1031049 (not res!689498)) b!1031045))

(assert (= (and b!1031045 (not res!689501)) b!1031050))

(assert (= (and b!1031052 condMapEmpty!37998) mapIsEmpty!37998))

(assert (= (and b!1031052 (not condMapEmpty!37998)) mapNonEmpty!37998))

(assert (= (and mapNonEmpty!37998 ((_ is ValueCellFull!11478) mapValue!37998)) b!1031046))

(assert (= (and b!1031052 ((_ is ValueCellFull!11478) mapDefault!37998)) b!1031051))

(assert (= b!1031047 b!1031052))

(assert (= start!90072 b!1031047))

(declare-fun b_lambda!16017 () Bool)

(assert (=> (not b_lambda!16017) (not b!1031044)))

(declare-fun t!31112 () Bool)

(declare-fun tb!6969 () Bool)

(assert (=> (and b!1031047 (= (defaultEntry!6149 thiss!1427) (defaultEntry!6149 thiss!1427)) t!31112) tb!6969))

(declare-fun result!14259 () Bool)

(assert (=> tb!6969 (= result!14259 tp_is_empty!24363)))

(assert (=> b!1031044 t!31112))

(declare-fun b_and!33073 () Bool)

(assert (= b_and!33071 (and (=> t!31112 result!14259) b_and!33073)))

(declare-fun m!951133 () Bool)

(assert (=> start!90072 m!951133))

(declare-fun m!951135 () Bool)

(assert (=> b!1031043 m!951135))

(declare-fun m!951137 () Bool)

(assert (=> b!1031044 m!951137))

(declare-fun m!951139 () Bool)

(assert (=> b!1031044 m!951139))

(declare-fun m!951141 () Bool)

(assert (=> b!1031044 m!951141))

(declare-fun m!951143 () Bool)

(assert (=> b!1031044 m!951143))

(declare-fun m!951145 () Bool)

(assert (=> b!1031044 m!951145))

(declare-fun m!951147 () Bool)

(assert (=> b!1031044 m!951147))

(declare-fun m!951149 () Bool)

(assert (=> b!1031044 m!951149))

(declare-fun m!951151 () Bool)

(assert (=> b!1031044 m!951151))

(declare-fun m!951153 () Bool)

(assert (=> b!1031044 m!951153))

(declare-fun m!951155 () Bool)

(assert (=> b!1031044 m!951155))

(declare-fun m!951157 () Bool)

(assert (=> b!1031044 m!951157))

(declare-fun m!951159 () Bool)

(assert (=> b!1031044 m!951159))

(assert (=> b!1031044 m!951157))

(declare-fun m!951161 () Bool)

(assert (=> b!1031044 m!951161))

(declare-fun m!951163 () Bool)

(assert (=> b!1031044 m!951163))

(declare-fun m!951165 () Bool)

(assert (=> b!1031044 m!951165))

(declare-fun m!951167 () Bool)

(assert (=> b!1031044 m!951167))

(declare-fun m!951169 () Bool)

(assert (=> b!1031044 m!951169))

(assert (=> b!1031044 m!951145))

(declare-fun m!951171 () Bool)

(assert (=> b!1031044 m!951171))

(declare-fun m!951173 () Bool)

(assert (=> b!1031048 m!951173))

(declare-fun m!951175 () Bool)

(assert (=> b!1031045 m!951175))

(declare-fun m!951177 () Bool)

(assert (=> b!1031047 m!951177))

(declare-fun m!951179 () Bool)

(assert (=> b!1031047 m!951179))

(declare-fun m!951181 () Bool)

(assert (=> b!1031050 m!951181))

(declare-fun m!951183 () Bool)

(assert (=> mapNonEmpty!37998 m!951183))

(check-sat (not b!1031044) b_and!33073 (not b_next!20643) (not b!1031043) (not b_lambda!16017) (not b!1031048) (not mapNonEmpty!37998) (not b!1031045) (not start!90072) (not b!1031047) tp_is_empty!24363 (not b!1031050))
(check-sat b_and!33073 (not b_next!20643))
