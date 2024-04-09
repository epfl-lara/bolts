; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91618 () Bool)

(assert start!91618)

(declare-fun b!1042839 () Bool)

(declare-fun b_free!21075 () Bool)

(declare-fun b_next!21075 () Bool)

(assert (=> b!1042839 (= b_free!21075 (not b_next!21075))))

(declare-fun tp!74458 () Bool)

(declare-fun b_and!33625 () Bool)

(assert (=> b!1042839 (= tp!74458 b_and!33625)))

(declare-fun mapNonEmpty!38807 () Bool)

(declare-fun mapRes!38807 () Bool)

(declare-fun tp!74457 () Bool)

(declare-fun e!590827 () Bool)

(assert (=> mapNonEmpty!38807 (= mapRes!38807 (and tp!74457 e!590827))))

(declare-datatypes ((V!37933 0))(
  ( (V!37934 (val!12448 Int)) )
))
(declare-datatypes ((ValueCell!11694 0))(
  ( (ValueCellFull!11694 (v!15040 V!37933)) (EmptyCell!11694) )
))
(declare-fun mapRest!38807 () (Array (_ BitVec 32) ValueCell!11694))

(declare-fun mapValue!38807 () ValueCell!11694)

(declare-datatypes ((array!65732 0))(
  ( (array!65733 (arr!31617 (Array (_ BitVec 32) (_ BitVec 64))) (size!32153 (_ BitVec 32))) )
))
(declare-datatypes ((array!65734 0))(
  ( (array!65735 (arr!31618 (Array (_ BitVec 32) ValueCell!11694)) (size!32154 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5982 0))(
  ( (LongMapFixedSize!5983 (defaultEntry!6373 Int) (mask!30443 (_ BitVec 32)) (extraKeys!6101 (_ BitVec 32)) (zeroValue!6207 V!37933) (minValue!6207 V!37933) (_size!3046 (_ BitVec 32)) (_keys!11624 array!65732) (_values!6396 array!65734) (_vacant!3046 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5982)

(declare-fun mapKey!38807 () (_ BitVec 32))

(assert (=> mapNonEmpty!38807 (= (arr!31618 (_values!6396 thiss!1427)) (store mapRest!38807 mapKey!38807 mapValue!38807))))

(declare-fun b!1042836 () Bool)

(declare-fun e!590831 () Bool)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1042836 (= e!590831 (validKeyInArray!0 key!909))))

(declare-fun b!1042837 () Bool)

(declare-fun e!590829 () Bool)

(declare-fun tp_is_empty!24795 () Bool)

(assert (=> b!1042837 (= e!590829 tp_is_empty!24795)))

(declare-fun b!1042838 () Bool)

(declare-fun e!590832 () Bool)

(declare-fun e!590828 () Bool)

(assert (=> b!1042838 (= e!590832 e!590828)))

(declare-fun res!694901 () Bool)

(assert (=> b!1042838 (=> (not res!694901) (not e!590828))))

(declare-datatypes ((SeekEntryResult!9823 0))(
  ( (MissingZero!9823 (index!41662 (_ BitVec 32))) (Found!9823 (index!41663 (_ BitVec 32))) (Intermediate!9823 (undefined!10635 Bool) (index!41664 (_ BitVec 32)) (x!93102 (_ BitVec 32))) (Undefined!9823) (MissingVacant!9823 (index!41665 (_ BitVec 32))) )
))
(declare-fun lt!459654 () SeekEntryResult!9823)

(get-info :version)

(assert (=> b!1042838 (= res!694901 ((_ is Found!9823) lt!459654))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65732 (_ BitVec 32)) SeekEntryResult!9823)

(assert (=> b!1042838 (= lt!459654 (seekEntry!0 key!909 (_keys!11624 thiss!1427) (mask!30443 thiss!1427)))))

(declare-fun e!590830 () Bool)

(declare-fun e!590833 () Bool)

(declare-fun array_inv!24273 (array!65732) Bool)

(declare-fun array_inv!24274 (array!65734) Bool)

(assert (=> b!1042839 (= e!590830 (and tp!74458 tp_is_empty!24795 (array_inv!24273 (_keys!11624 thiss!1427)) (array_inv!24274 (_values!6396 thiss!1427)) e!590833))))

(declare-fun b!1042840 () Bool)

(assert (=> b!1042840 (= e!590827 tp_is_empty!24795)))

(declare-fun b!1042841 () Bool)

(declare-fun res!694904 () Bool)

(assert (=> b!1042841 (=> res!694904 e!590831)))

(assert (=> b!1042841 (= res!694904 (or (bvslt (index!41663 lt!459654) #b00000000000000000000000000000000) (bvsge (index!41663 lt!459654) (size!32153 (_keys!11624 thiss!1427)))))))

(declare-fun res!694908 () Bool)

(assert (=> start!91618 (=> (not res!694908) (not e!590832))))

(declare-fun valid!2199 (LongMapFixedSize!5982) Bool)

(assert (=> start!91618 (= res!694908 (valid!2199 thiss!1427))))

(assert (=> start!91618 e!590832))

(assert (=> start!91618 e!590830))

(assert (=> start!91618 true))

(declare-fun b!1042842 () Bool)

(assert (=> b!1042842 (= e!590828 (not e!590831))))

(declare-fun res!694903 () Bool)

(assert (=> b!1042842 (=> res!694903 e!590831)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1042842 (= res!694903 (not (validMask!0 (mask!30443 thiss!1427))))))

(declare-fun lt!459652 () array!65732)

(declare-fun arrayContainsKey!0 (array!65732 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1042842 (not (arrayContainsKey!0 lt!459652 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!34058 0))(
  ( (Unit!34059) )
))
(declare-fun lt!459649 () Unit!34058)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65732 (_ BitVec 32) (_ BitVec 64)) Unit!34058)

(assert (=> b!1042842 (= lt!459649 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11624 thiss!1427) (index!41663 lt!459654) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65732 (_ BitVec 32)) Bool)

(assert (=> b!1042842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459652 (mask!30443 thiss!1427))))

(declare-fun lt!459650 () Unit!34058)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65732 (_ BitVec 32) (_ BitVec 32)) Unit!34058)

(assert (=> b!1042842 (= lt!459650 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11624 thiss!1427) (index!41663 lt!459654) (mask!30443 thiss!1427)))))

(declare-datatypes ((List!22107 0))(
  ( (Nil!22104) (Cons!22103 (h!23311 (_ BitVec 64)) (t!31328 List!22107)) )
))
(declare-fun arrayNoDuplicates!0 (array!65732 (_ BitVec 32) List!22107) Bool)

(assert (=> b!1042842 (arrayNoDuplicates!0 lt!459652 #b00000000000000000000000000000000 Nil!22104)))

(declare-fun lt!459651 () Unit!34058)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65732 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22107) Unit!34058)

(assert (=> b!1042842 (= lt!459651 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11624 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41663 lt!459654) #b00000000000000000000000000000000 Nil!22104))))

(declare-fun arrayCountValidKeys!0 (array!65732 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1042842 (= (arrayCountValidKeys!0 lt!459652 #b00000000000000000000000000000000 (size!32153 (_keys!11624 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11624 thiss!1427) #b00000000000000000000000000000000 (size!32153 (_keys!11624 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1042842 (= lt!459652 (array!65733 (store (arr!31617 (_keys!11624 thiss!1427)) (index!41663 lt!459654) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32153 (_keys!11624 thiss!1427))))))

(declare-fun lt!459653 () Unit!34058)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65732 (_ BitVec 32) (_ BitVec 64)) Unit!34058)

(assert (=> b!1042842 (= lt!459653 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11624 thiss!1427) (index!41663 lt!459654) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1042843 () Bool)

(declare-fun res!694902 () Bool)

(assert (=> b!1042843 (=> res!694902 e!590831)))

(assert (=> b!1042843 (= res!694902 (or (not (= (size!32154 (_values!6396 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30443 thiss!1427)))) (not (= (size!32153 (_keys!11624 thiss!1427)) (size!32154 (_values!6396 thiss!1427)))) (bvslt (mask!30443 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!6101 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!6101 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1042844 () Bool)

(declare-fun res!694906 () Bool)

(assert (=> b!1042844 (=> res!694906 e!590831)))

(assert (=> b!1042844 (= res!694906 (not (arrayNoDuplicates!0 (_keys!11624 thiss!1427) #b00000000000000000000000000000000 Nil!22104)))))

(declare-fun b!1042845 () Bool)

(declare-fun res!694907 () Bool)

(assert (=> b!1042845 (=> (not res!694907) (not e!590832))))

(assert (=> b!1042845 (= res!694907 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1042846 () Bool)

(assert (=> b!1042846 (= e!590833 (and e!590829 mapRes!38807))))

(declare-fun condMapEmpty!38807 () Bool)

(declare-fun mapDefault!38807 () ValueCell!11694)

(assert (=> b!1042846 (= condMapEmpty!38807 (= (arr!31618 (_values!6396 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11694)) mapDefault!38807)))))

(declare-fun b!1042847 () Bool)

(declare-fun res!694905 () Bool)

(assert (=> b!1042847 (=> res!694905 e!590831)))

(assert (=> b!1042847 (= res!694905 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11624 thiss!1427) (mask!30443 thiss!1427))))))

(declare-fun mapIsEmpty!38807 () Bool)

(assert (=> mapIsEmpty!38807 mapRes!38807))

(assert (= (and start!91618 res!694908) b!1042845))

(assert (= (and b!1042845 res!694907) b!1042838))

(assert (= (and b!1042838 res!694901) b!1042842))

(assert (= (and b!1042842 (not res!694903)) b!1042843))

(assert (= (and b!1042843 (not res!694902)) b!1042847))

(assert (= (and b!1042847 (not res!694905)) b!1042844))

(assert (= (and b!1042844 (not res!694906)) b!1042841))

(assert (= (and b!1042841 (not res!694904)) b!1042836))

(assert (= (and b!1042846 condMapEmpty!38807) mapIsEmpty!38807))

(assert (= (and b!1042846 (not condMapEmpty!38807)) mapNonEmpty!38807))

(assert (= (and mapNonEmpty!38807 ((_ is ValueCellFull!11694) mapValue!38807)) b!1042840))

(assert (= (and b!1042846 ((_ is ValueCellFull!11694) mapDefault!38807)) b!1042837))

(assert (= b!1042839 b!1042846))

(assert (= start!91618 b!1042839))

(declare-fun m!962225 () Bool)

(assert (=> b!1042838 m!962225))

(declare-fun m!962227 () Bool)

(assert (=> start!91618 m!962227))

(declare-fun m!962229 () Bool)

(assert (=> b!1042842 m!962229))

(declare-fun m!962231 () Bool)

(assert (=> b!1042842 m!962231))

(declare-fun m!962233 () Bool)

(assert (=> b!1042842 m!962233))

(declare-fun m!962235 () Bool)

(assert (=> b!1042842 m!962235))

(declare-fun m!962237 () Bool)

(assert (=> b!1042842 m!962237))

(declare-fun m!962239 () Bool)

(assert (=> b!1042842 m!962239))

(declare-fun m!962241 () Bool)

(assert (=> b!1042842 m!962241))

(declare-fun m!962243 () Bool)

(assert (=> b!1042842 m!962243))

(declare-fun m!962245 () Bool)

(assert (=> b!1042842 m!962245))

(declare-fun m!962247 () Bool)

(assert (=> b!1042842 m!962247))

(declare-fun m!962249 () Bool)

(assert (=> b!1042842 m!962249))

(declare-fun m!962251 () Bool)

(assert (=> b!1042836 m!962251))

(declare-fun m!962253 () Bool)

(assert (=> mapNonEmpty!38807 m!962253))

(declare-fun m!962255 () Bool)

(assert (=> b!1042844 m!962255))

(declare-fun m!962257 () Bool)

(assert (=> b!1042839 m!962257))

(declare-fun m!962259 () Bool)

(assert (=> b!1042839 m!962259))

(declare-fun m!962261 () Bool)

(assert (=> b!1042847 m!962261))

(check-sat b_and!33625 (not b!1042844) (not mapNonEmpty!38807) (not b_next!21075) (not start!91618) (not b!1042838) (not b!1042842) tp_is_empty!24795 (not b!1042836) (not b!1042847) (not b!1042839))
(check-sat b_and!33625 (not b_next!21075))
(get-model)

(declare-fun b!1042896 () Bool)

(declare-fun c!105838 () Bool)

(declare-fun lt!459683 () (_ BitVec 64))

(assert (=> b!1042896 (= c!105838 (= lt!459683 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!590866 () SeekEntryResult!9823)

(declare-fun e!590865 () SeekEntryResult!9823)

(assert (=> b!1042896 (= e!590866 e!590865)))

(declare-fun b!1042897 () Bool)

(declare-fun lt!459682 () SeekEntryResult!9823)

(assert (=> b!1042897 (= e!590866 (Found!9823 (index!41664 lt!459682)))))

(declare-fun b!1042898 () Bool)

(assert (=> b!1042898 (= e!590865 (MissingZero!9823 (index!41664 lt!459682)))))

(declare-fun d!126139 () Bool)

(declare-fun lt!459681 () SeekEntryResult!9823)

(assert (=> d!126139 (and (or ((_ is MissingVacant!9823) lt!459681) (not ((_ is Found!9823) lt!459681)) (and (bvsge (index!41663 lt!459681) #b00000000000000000000000000000000) (bvslt (index!41663 lt!459681) (size!32153 (_keys!11624 thiss!1427))))) (not ((_ is MissingVacant!9823) lt!459681)) (or (not ((_ is Found!9823) lt!459681)) (= (select (arr!31617 (_keys!11624 thiss!1427)) (index!41663 lt!459681)) key!909)))))

(declare-fun e!590864 () SeekEntryResult!9823)

(assert (=> d!126139 (= lt!459681 e!590864)))

(declare-fun c!105839 () Bool)

(assert (=> d!126139 (= c!105839 (and ((_ is Intermediate!9823) lt!459682) (undefined!10635 lt!459682)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65732 (_ BitVec 32)) SeekEntryResult!9823)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!126139 (= lt!459682 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30443 thiss!1427)) key!909 (_keys!11624 thiss!1427) (mask!30443 thiss!1427)))))

(assert (=> d!126139 (validMask!0 (mask!30443 thiss!1427))))

(assert (=> d!126139 (= (seekEntry!0 key!909 (_keys!11624 thiss!1427) (mask!30443 thiss!1427)) lt!459681)))

(declare-fun b!1042899 () Bool)

(assert (=> b!1042899 (= e!590864 Undefined!9823)))

(declare-fun b!1042900 () Bool)

(declare-fun lt!459684 () SeekEntryResult!9823)

(assert (=> b!1042900 (= e!590865 (ite ((_ is MissingVacant!9823) lt!459684) (MissingZero!9823 (index!41665 lt!459684)) lt!459684))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65732 (_ BitVec 32)) SeekEntryResult!9823)

(assert (=> b!1042900 (= lt!459684 (seekKeyOrZeroReturnVacant!0 (x!93102 lt!459682) (index!41664 lt!459682) (index!41664 lt!459682) key!909 (_keys!11624 thiss!1427) (mask!30443 thiss!1427)))))

(declare-fun b!1042901 () Bool)

(assert (=> b!1042901 (= e!590864 e!590866)))

(assert (=> b!1042901 (= lt!459683 (select (arr!31617 (_keys!11624 thiss!1427)) (index!41664 lt!459682)))))

(declare-fun c!105837 () Bool)

(assert (=> b!1042901 (= c!105837 (= lt!459683 key!909))))

(assert (= (and d!126139 c!105839) b!1042899))

(assert (= (and d!126139 (not c!105839)) b!1042901))

(assert (= (and b!1042901 c!105837) b!1042897))

(assert (= (and b!1042901 (not c!105837)) b!1042896))

(assert (= (and b!1042896 c!105838) b!1042898))

(assert (= (and b!1042896 (not c!105838)) b!1042900))

(declare-fun m!962301 () Bool)

(assert (=> d!126139 m!962301))

(declare-fun m!962303 () Bool)

(assert (=> d!126139 m!962303))

(assert (=> d!126139 m!962303))

(declare-fun m!962305 () Bool)

(assert (=> d!126139 m!962305))

(assert (=> d!126139 m!962231))

(declare-fun m!962307 () Bool)

(assert (=> b!1042900 m!962307))

(declare-fun m!962309 () Bool)

(assert (=> b!1042901 m!962309))

(assert (=> b!1042838 d!126139))

(declare-fun d!126141 () Bool)

(assert (=> d!126141 (= (validKeyInArray!0 key!909) (and (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!909 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1042836 d!126141))

(declare-fun b!1042910 () Bool)

(declare-fun e!590874 () Bool)

(declare-fun call!44202 () Bool)

(assert (=> b!1042910 (= e!590874 call!44202)))

(declare-fun bm!44199 () Bool)

(assert (=> bm!44199 (= call!44202 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11624 thiss!1427) (mask!30443 thiss!1427)))))

(declare-fun b!1042911 () Bool)

(declare-fun e!590873 () Bool)

(assert (=> b!1042911 (= e!590873 e!590874)))

(declare-fun lt!459691 () (_ BitVec 64))

(assert (=> b!1042911 (= lt!459691 (select (arr!31617 (_keys!11624 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!459693 () Unit!34058)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65732 (_ BitVec 64) (_ BitVec 32)) Unit!34058)

(assert (=> b!1042911 (= lt!459693 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11624 thiss!1427) lt!459691 #b00000000000000000000000000000000))))

(assert (=> b!1042911 (arrayContainsKey!0 (_keys!11624 thiss!1427) lt!459691 #b00000000000000000000000000000000)))

(declare-fun lt!459692 () Unit!34058)

(assert (=> b!1042911 (= lt!459692 lt!459693)))

(declare-fun res!694938 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65732 (_ BitVec 32)) SeekEntryResult!9823)

(assert (=> b!1042911 (= res!694938 (= (seekEntryOrOpen!0 (select (arr!31617 (_keys!11624 thiss!1427)) #b00000000000000000000000000000000) (_keys!11624 thiss!1427) (mask!30443 thiss!1427)) (Found!9823 #b00000000000000000000000000000000)))))

(assert (=> b!1042911 (=> (not res!694938) (not e!590874))))

(declare-fun b!1042912 () Bool)

(declare-fun e!590875 () Bool)

(assert (=> b!1042912 (= e!590875 e!590873)))

(declare-fun c!105842 () Bool)

(assert (=> b!1042912 (= c!105842 (validKeyInArray!0 (select (arr!31617 (_keys!11624 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1042913 () Bool)

(assert (=> b!1042913 (= e!590873 call!44202)))

(declare-fun d!126143 () Bool)

(declare-fun res!694937 () Bool)

(assert (=> d!126143 (=> res!694937 e!590875)))

(assert (=> d!126143 (= res!694937 (bvsge #b00000000000000000000000000000000 (size!32153 (_keys!11624 thiss!1427))))))

(assert (=> d!126143 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11624 thiss!1427) (mask!30443 thiss!1427)) e!590875)))

(assert (= (and d!126143 (not res!694937)) b!1042912))

(assert (= (and b!1042912 c!105842) b!1042911))

(assert (= (and b!1042912 (not c!105842)) b!1042913))

(assert (= (and b!1042911 res!694938) b!1042910))

(assert (= (or b!1042910 b!1042913) bm!44199))

(declare-fun m!962311 () Bool)

(assert (=> bm!44199 m!962311))

(declare-fun m!962313 () Bool)

(assert (=> b!1042911 m!962313))

(declare-fun m!962315 () Bool)

(assert (=> b!1042911 m!962315))

(declare-fun m!962317 () Bool)

(assert (=> b!1042911 m!962317))

(assert (=> b!1042911 m!962313))

(declare-fun m!962319 () Bool)

(assert (=> b!1042911 m!962319))

(assert (=> b!1042912 m!962313))

(assert (=> b!1042912 m!962313))

(declare-fun m!962321 () Bool)

(assert (=> b!1042912 m!962321))

(assert (=> b!1042847 d!126143))

(declare-fun d!126145 () Bool)

(declare-fun e!590878 () Bool)

(assert (=> d!126145 e!590878))

(declare-fun res!694941 () Bool)

(assert (=> d!126145 (=> (not res!694941) (not e!590878))))

(assert (=> d!126145 (= res!694941 (and (bvsge (index!41663 lt!459654) #b00000000000000000000000000000000) (bvslt (index!41663 lt!459654) (size!32153 (_keys!11624 thiss!1427)))))))

(declare-fun lt!459696 () Unit!34058)

(declare-fun choose!25 (array!65732 (_ BitVec 32) (_ BitVec 32)) Unit!34058)

(assert (=> d!126145 (= lt!459696 (choose!25 (_keys!11624 thiss!1427) (index!41663 lt!459654) (mask!30443 thiss!1427)))))

(assert (=> d!126145 (validMask!0 (mask!30443 thiss!1427))))

(assert (=> d!126145 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11624 thiss!1427) (index!41663 lt!459654) (mask!30443 thiss!1427)) lt!459696)))

(declare-fun b!1042916 () Bool)

(assert (=> b!1042916 (= e!590878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65733 (store (arr!31617 (_keys!11624 thiss!1427)) (index!41663 lt!459654) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32153 (_keys!11624 thiss!1427))) (mask!30443 thiss!1427)))))

(assert (= (and d!126145 res!694941) b!1042916))

(declare-fun m!962323 () Bool)

(assert (=> d!126145 m!962323))

(assert (=> d!126145 m!962231))

(assert (=> b!1042916 m!962247))

(declare-fun m!962325 () Bool)

(assert (=> b!1042916 m!962325))

(assert (=> b!1042842 d!126145))

(declare-fun bm!44202 () Bool)

(declare-fun call!44205 () Bool)

(declare-fun c!105845 () Bool)

(assert (=> bm!44202 (= call!44205 (arrayNoDuplicates!0 lt!459652 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105845 (Cons!22103 (select (arr!31617 lt!459652) #b00000000000000000000000000000000) Nil!22104) Nil!22104)))))

(declare-fun b!1042927 () Bool)

(declare-fun e!590890 () Bool)

(declare-fun e!590887 () Bool)

(assert (=> b!1042927 (= e!590890 e!590887)))

(declare-fun res!694948 () Bool)

(assert (=> b!1042927 (=> (not res!694948) (not e!590887))))

(declare-fun e!590889 () Bool)

(assert (=> b!1042927 (= res!694948 (not e!590889))))

(declare-fun res!694950 () Bool)

(assert (=> b!1042927 (=> (not res!694950) (not e!590889))))

(assert (=> b!1042927 (= res!694950 (validKeyInArray!0 (select (arr!31617 lt!459652) #b00000000000000000000000000000000)))))

(declare-fun b!1042928 () Bool)

(declare-fun e!590888 () Bool)

(assert (=> b!1042928 (= e!590887 e!590888)))

(assert (=> b!1042928 (= c!105845 (validKeyInArray!0 (select (arr!31617 lt!459652) #b00000000000000000000000000000000)))))

(declare-fun b!1042930 () Bool)

(assert (=> b!1042930 (= e!590888 call!44205)))

(declare-fun b!1042931 () Bool)

(assert (=> b!1042931 (= e!590888 call!44205)))

(declare-fun b!1042929 () Bool)

(declare-fun contains!6083 (List!22107 (_ BitVec 64)) Bool)

(assert (=> b!1042929 (= e!590889 (contains!6083 Nil!22104 (select (arr!31617 lt!459652) #b00000000000000000000000000000000)))))

(declare-fun d!126147 () Bool)

(declare-fun res!694949 () Bool)

(assert (=> d!126147 (=> res!694949 e!590890)))

(assert (=> d!126147 (= res!694949 (bvsge #b00000000000000000000000000000000 (size!32153 lt!459652)))))

(assert (=> d!126147 (= (arrayNoDuplicates!0 lt!459652 #b00000000000000000000000000000000 Nil!22104) e!590890)))

(assert (= (and d!126147 (not res!694949)) b!1042927))

(assert (= (and b!1042927 res!694950) b!1042929))

(assert (= (and b!1042927 res!694948) b!1042928))

(assert (= (and b!1042928 c!105845) b!1042930))

(assert (= (and b!1042928 (not c!105845)) b!1042931))

(assert (= (or b!1042930 b!1042931) bm!44202))

(declare-fun m!962327 () Bool)

(assert (=> bm!44202 m!962327))

(declare-fun m!962329 () Bool)

(assert (=> bm!44202 m!962329))

(assert (=> b!1042927 m!962327))

(assert (=> b!1042927 m!962327))

(declare-fun m!962331 () Bool)

(assert (=> b!1042927 m!962331))

(assert (=> b!1042928 m!962327))

(assert (=> b!1042928 m!962327))

(assert (=> b!1042928 m!962331))

(assert (=> b!1042929 m!962327))

(assert (=> b!1042929 m!962327))

(declare-fun m!962333 () Bool)

(assert (=> b!1042929 m!962333))

(assert (=> b!1042842 d!126147))

(declare-fun d!126149 () Bool)

(assert (=> d!126149 (= (validMask!0 (mask!30443 thiss!1427)) (and (or (= (mask!30443 thiss!1427) #b00000000000000000000000000000111) (= (mask!30443 thiss!1427) #b00000000000000000000000000001111) (= (mask!30443 thiss!1427) #b00000000000000000000000000011111) (= (mask!30443 thiss!1427) #b00000000000000000000000000111111) (= (mask!30443 thiss!1427) #b00000000000000000000000001111111) (= (mask!30443 thiss!1427) #b00000000000000000000000011111111) (= (mask!30443 thiss!1427) #b00000000000000000000000111111111) (= (mask!30443 thiss!1427) #b00000000000000000000001111111111) (= (mask!30443 thiss!1427) #b00000000000000000000011111111111) (= (mask!30443 thiss!1427) #b00000000000000000000111111111111) (= (mask!30443 thiss!1427) #b00000000000000000001111111111111) (= (mask!30443 thiss!1427) #b00000000000000000011111111111111) (= (mask!30443 thiss!1427) #b00000000000000000111111111111111) (= (mask!30443 thiss!1427) #b00000000000000001111111111111111) (= (mask!30443 thiss!1427) #b00000000000000011111111111111111) (= (mask!30443 thiss!1427) #b00000000000000111111111111111111) (= (mask!30443 thiss!1427) #b00000000000001111111111111111111) (= (mask!30443 thiss!1427) #b00000000000011111111111111111111) (= (mask!30443 thiss!1427) #b00000000000111111111111111111111) (= (mask!30443 thiss!1427) #b00000000001111111111111111111111) (= (mask!30443 thiss!1427) #b00000000011111111111111111111111) (= (mask!30443 thiss!1427) #b00000000111111111111111111111111) (= (mask!30443 thiss!1427) #b00000001111111111111111111111111) (= (mask!30443 thiss!1427) #b00000011111111111111111111111111) (= (mask!30443 thiss!1427) #b00000111111111111111111111111111) (= (mask!30443 thiss!1427) #b00001111111111111111111111111111) (= (mask!30443 thiss!1427) #b00011111111111111111111111111111) (= (mask!30443 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30443 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1042842 d!126149))

(declare-fun b!1042942 () Bool)

(declare-fun e!590895 () Bool)

(assert (=> b!1042942 (= e!590895 (bvslt (size!32153 (_keys!11624 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1042940 () Bool)

(declare-fun res!694961 () Bool)

(assert (=> b!1042940 (=> (not res!694961) (not e!590895))))

(assert (=> b!1042940 (= res!694961 (validKeyInArray!0 (select (arr!31617 (_keys!11624 thiss!1427)) (index!41663 lt!459654))))))

(declare-fun b!1042941 () Bool)

(declare-fun res!694962 () Bool)

(assert (=> b!1042941 (=> (not res!694962) (not e!590895))))

(assert (=> b!1042941 (= res!694962 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!126151 () Bool)

(declare-fun e!590896 () Bool)

(assert (=> d!126151 e!590896))

(declare-fun res!694960 () Bool)

(assert (=> d!126151 (=> (not res!694960) (not e!590896))))

(assert (=> d!126151 (= res!694960 (and (bvsge (index!41663 lt!459654) #b00000000000000000000000000000000) (bvslt (index!41663 lt!459654) (size!32153 (_keys!11624 thiss!1427)))))))

(declare-fun lt!459699 () Unit!34058)

(declare-fun choose!82 (array!65732 (_ BitVec 32) (_ BitVec 64)) Unit!34058)

(assert (=> d!126151 (= lt!459699 (choose!82 (_keys!11624 thiss!1427) (index!41663 lt!459654) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!126151 e!590895))

(declare-fun res!694959 () Bool)

(assert (=> d!126151 (=> (not res!694959) (not e!590895))))

(assert (=> d!126151 (= res!694959 (and (bvsge (index!41663 lt!459654) #b00000000000000000000000000000000) (bvslt (index!41663 lt!459654) (size!32153 (_keys!11624 thiss!1427)))))))

(assert (=> d!126151 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11624 thiss!1427) (index!41663 lt!459654) #b1000000000000000000000000000000000000000000000000000000000000000) lt!459699)))

(declare-fun b!1042943 () Bool)

(assert (=> b!1042943 (= e!590896 (= (arrayCountValidKeys!0 (array!65733 (store (arr!31617 (_keys!11624 thiss!1427)) (index!41663 lt!459654) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32153 (_keys!11624 thiss!1427))) #b00000000000000000000000000000000 (size!32153 (_keys!11624 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11624 thiss!1427) #b00000000000000000000000000000000 (size!32153 (_keys!11624 thiss!1427))) #b00000000000000000000000000000001)))))

(assert (= (and d!126151 res!694959) b!1042940))

(assert (= (and b!1042940 res!694961) b!1042941))

(assert (= (and b!1042941 res!694962) b!1042942))

(assert (= (and d!126151 res!694960) b!1042943))

(declare-fun m!962335 () Bool)

(assert (=> b!1042940 m!962335))

(assert (=> b!1042940 m!962335))

(declare-fun m!962337 () Bool)

(assert (=> b!1042940 m!962337))

(declare-fun m!962339 () Bool)

(assert (=> b!1042941 m!962339))

(declare-fun m!962341 () Bool)

(assert (=> d!126151 m!962341))

(assert (=> b!1042943 m!962247))

(declare-fun m!962343 () Bool)

(assert (=> b!1042943 m!962343))

(assert (=> b!1042943 m!962237))

(assert (=> b!1042842 d!126151))

(declare-fun d!126153 () Bool)

(declare-fun e!590899 () Bool)

(assert (=> d!126153 e!590899))

(declare-fun res!694965 () Bool)

(assert (=> d!126153 (=> (not res!694965) (not e!590899))))

(assert (=> d!126153 (= res!694965 (bvslt (index!41663 lt!459654) (size!32153 (_keys!11624 thiss!1427))))))

(declare-fun lt!459702 () Unit!34058)

(declare-fun choose!121 (array!65732 (_ BitVec 32) (_ BitVec 64)) Unit!34058)

(assert (=> d!126153 (= lt!459702 (choose!121 (_keys!11624 thiss!1427) (index!41663 lt!459654) key!909))))

(assert (=> d!126153 (bvsge (index!41663 lt!459654) #b00000000000000000000000000000000)))

(assert (=> d!126153 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11624 thiss!1427) (index!41663 lt!459654) key!909) lt!459702)))

(declare-fun b!1042946 () Bool)

(assert (=> b!1042946 (= e!590899 (not (arrayContainsKey!0 (array!65733 (store (arr!31617 (_keys!11624 thiss!1427)) (index!41663 lt!459654) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32153 (_keys!11624 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!126153 res!694965) b!1042946))

(declare-fun m!962345 () Bool)

(assert (=> d!126153 m!962345))

(assert (=> b!1042946 m!962247))

(declare-fun m!962347 () Bool)

(assert (=> b!1042946 m!962347))

(assert (=> b!1042842 d!126153))

(declare-fun d!126155 () Bool)

(declare-fun lt!459705 () (_ BitVec 32))

(assert (=> d!126155 (and (bvsge lt!459705 #b00000000000000000000000000000000) (bvsle lt!459705 (bvsub (size!32153 (_keys!11624 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!590905 () (_ BitVec 32))

(assert (=> d!126155 (= lt!459705 e!590905)))

(declare-fun c!105851 () Bool)

(assert (=> d!126155 (= c!105851 (bvsge #b00000000000000000000000000000000 (size!32153 (_keys!11624 thiss!1427))))))

(assert (=> d!126155 (and (bvsle #b00000000000000000000000000000000 (size!32153 (_keys!11624 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32153 (_keys!11624 thiss!1427)) (size!32153 (_keys!11624 thiss!1427))))))

(assert (=> d!126155 (= (arrayCountValidKeys!0 (_keys!11624 thiss!1427) #b00000000000000000000000000000000 (size!32153 (_keys!11624 thiss!1427))) lt!459705)))

(declare-fun b!1042955 () Bool)

(declare-fun e!590904 () (_ BitVec 32))

(assert (=> b!1042955 (= e!590905 e!590904)))

(declare-fun c!105850 () Bool)

(assert (=> b!1042955 (= c!105850 (validKeyInArray!0 (select (arr!31617 (_keys!11624 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!44205 () Bool)

(declare-fun call!44208 () (_ BitVec 32))

(assert (=> bm!44205 (= call!44208 (arrayCountValidKeys!0 (_keys!11624 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32153 (_keys!11624 thiss!1427))))))

(declare-fun b!1042956 () Bool)

(assert (=> b!1042956 (= e!590904 call!44208)))

(declare-fun b!1042957 () Bool)

(assert (=> b!1042957 (= e!590904 (bvadd #b00000000000000000000000000000001 call!44208))))

(declare-fun b!1042958 () Bool)

(assert (=> b!1042958 (= e!590905 #b00000000000000000000000000000000)))

(assert (= (and d!126155 c!105851) b!1042958))

(assert (= (and d!126155 (not c!105851)) b!1042955))

(assert (= (and b!1042955 c!105850) b!1042957))

(assert (= (and b!1042955 (not c!105850)) b!1042956))

(assert (= (or b!1042957 b!1042956) bm!44205))

(assert (=> b!1042955 m!962313))

(assert (=> b!1042955 m!962313))

(assert (=> b!1042955 m!962321))

(declare-fun m!962349 () Bool)

(assert (=> bm!44205 m!962349))

(assert (=> b!1042842 d!126155))

(declare-fun b!1042959 () Bool)

(declare-fun e!590907 () Bool)

(declare-fun call!44209 () Bool)

(assert (=> b!1042959 (= e!590907 call!44209)))

(declare-fun bm!44206 () Bool)

(assert (=> bm!44206 (= call!44209 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!459652 (mask!30443 thiss!1427)))))

(declare-fun b!1042960 () Bool)

(declare-fun e!590906 () Bool)

(assert (=> b!1042960 (= e!590906 e!590907)))

(declare-fun lt!459706 () (_ BitVec 64))

(assert (=> b!1042960 (= lt!459706 (select (arr!31617 lt!459652) #b00000000000000000000000000000000))))

(declare-fun lt!459708 () Unit!34058)

(assert (=> b!1042960 (= lt!459708 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!459652 lt!459706 #b00000000000000000000000000000000))))

(assert (=> b!1042960 (arrayContainsKey!0 lt!459652 lt!459706 #b00000000000000000000000000000000)))

(declare-fun lt!459707 () Unit!34058)

(assert (=> b!1042960 (= lt!459707 lt!459708)))

(declare-fun res!694967 () Bool)

(assert (=> b!1042960 (= res!694967 (= (seekEntryOrOpen!0 (select (arr!31617 lt!459652) #b00000000000000000000000000000000) lt!459652 (mask!30443 thiss!1427)) (Found!9823 #b00000000000000000000000000000000)))))

(assert (=> b!1042960 (=> (not res!694967) (not e!590907))))

(declare-fun b!1042961 () Bool)

(declare-fun e!590908 () Bool)

(assert (=> b!1042961 (= e!590908 e!590906)))

(declare-fun c!105852 () Bool)

(assert (=> b!1042961 (= c!105852 (validKeyInArray!0 (select (arr!31617 lt!459652) #b00000000000000000000000000000000)))))

(declare-fun b!1042962 () Bool)

(assert (=> b!1042962 (= e!590906 call!44209)))

(declare-fun d!126157 () Bool)

(declare-fun res!694966 () Bool)

(assert (=> d!126157 (=> res!694966 e!590908)))

(assert (=> d!126157 (= res!694966 (bvsge #b00000000000000000000000000000000 (size!32153 lt!459652)))))

(assert (=> d!126157 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459652 (mask!30443 thiss!1427)) e!590908)))

(assert (= (and d!126157 (not res!694966)) b!1042961))

(assert (= (and b!1042961 c!105852) b!1042960))

(assert (= (and b!1042961 (not c!105852)) b!1042962))

(assert (= (and b!1042960 res!694967) b!1042959))

(assert (= (or b!1042959 b!1042962) bm!44206))

(declare-fun m!962351 () Bool)

(assert (=> bm!44206 m!962351))

(assert (=> b!1042960 m!962327))

(declare-fun m!962353 () Bool)

(assert (=> b!1042960 m!962353))

(declare-fun m!962355 () Bool)

(assert (=> b!1042960 m!962355))

(assert (=> b!1042960 m!962327))

(declare-fun m!962357 () Bool)

(assert (=> b!1042960 m!962357))

(assert (=> b!1042961 m!962327))

(assert (=> b!1042961 m!962327))

(assert (=> b!1042961 m!962331))

(assert (=> b!1042842 d!126157))

(declare-fun d!126159 () Bool)

(declare-fun res!694972 () Bool)

(declare-fun e!590913 () Bool)

(assert (=> d!126159 (=> res!694972 e!590913)))

(assert (=> d!126159 (= res!694972 (= (select (arr!31617 lt!459652) #b00000000000000000000000000000000) key!909))))

(assert (=> d!126159 (= (arrayContainsKey!0 lt!459652 key!909 #b00000000000000000000000000000000) e!590913)))

(declare-fun b!1042967 () Bool)

(declare-fun e!590914 () Bool)

(assert (=> b!1042967 (= e!590913 e!590914)))

(declare-fun res!694973 () Bool)

(assert (=> b!1042967 (=> (not res!694973) (not e!590914))))

(assert (=> b!1042967 (= res!694973 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32153 lt!459652)))))

(declare-fun b!1042968 () Bool)

(assert (=> b!1042968 (= e!590914 (arrayContainsKey!0 lt!459652 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!126159 (not res!694972)) b!1042967))

(assert (= (and b!1042967 res!694973) b!1042968))

(assert (=> d!126159 m!962327))

(declare-fun m!962359 () Bool)

(assert (=> b!1042968 m!962359))

(assert (=> b!1042842 d!126159))

(declare-fun d!126161 () Bool)

(declare-fun lt!459709 () (_ BitVec 32))

(assert (=> d!126161 (and (bvsge lt!459709 #b00000000000000000000000000000000) (bvsle lt!459709 (bvsub (size!32153 lt!459652) #b00000000000000000000000000000000)))))

(declare-fun e!590916 () (_ BitVec 32))

(assert (=> d!126161 (= lt!459709 e!590916)))

(declare-fun c!105854 () Bool)

(assert (=> d!126161 (= c!105854 (bvsge #b00000000000000000000000000000000 (size!32153 (_keys!11624 thiss!1427))))))

(assert (=> d!126161 (and (bvsle #b00000000000000000000000000000000 (size!32153 (_keys!11624 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32153 (_keys!11624 thiss!1427)) (size!32153 lt!459652)))))

(assert (=> d!126161 (= (arrayCountValidKeys!0 lt!459652 #b00000000000000000000000000000000 (size!32153 (_keys!11624 thiss!1427))) lt!459709)))

(declare-fun b!1042969 () Bool)

(declare-fun e!590915 () (_ BitVec 32))

(assert (=> b!1042969 (= e!590916 e!590915)))

(declare-fun c!105853 () Bool)

(assert (=> b!1042969 (= c!105853 (validKeyInArray!0 (select (arr!31617 lt!459652) #b00000000000000000000000000000000)))))

(declare-fun bm!44207 () Bool)

(declare-fun call!44210 () (_ BitVec 32))

(assert (=> bm!44207 (= call!44210 (arrayCountValidKeys!0 lt!459652 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32153 (_keys!11624 thiss!1427))))))

(declare-fun b!1042970 () Bool)

(assert (=> b!1042970 (= e!590915 call!44210)))

(declare-fun b!1042971 () Bool)

(assert (=> b!1042971 (= e!590915 (bvadd #b00000000000000000000000000000001 call!44210))))

(declare-fun b!1042972 () Bool)

(assert (=> b!1042972 (= e!590916 #b00000000000000000000000000000000)))

(assert (= (and d!126161 c!105854) b!1042972))

(assert (= (and d!126161 (not c!105854)) b!1042969))

(assert (= (and b!1042969 c!105853) b!1042971))

(assert (= (and b!1042969 (not c!105853)) b!1042970))

(assert (= (or b!1042971 b!1042970) bm!44207))

(assert (=> b!1042969 m!962327))

(assert (=> b!1042969 m!962327))

(assert (=> b!1042969 m!962331))

(declare-fun m!962361 () Bool)

(assert (=> bm!44207 m!962361))

(assert (=> b!1042842 d!126161))

(declare-fun d!126163 () Bool)

(declare-fun e!590919 () Bool)

(assert (=> d!126163 e!590919))

(declare-fun res!694976 () Bool)

(assert (=> d!126163 (=> (not res!694976) (not e!590919))))

(assert (=> d!126163 (= res!694976 (and (bvsge (index!41663 lt!459654) #b00000000000000000000000000000000) (bvslt (index!41663 lt!459654) (size!32153 (_keys!11624 thiss!1427)))))))

(declare-fun lt!459712 () Unit!34058)

(declare-fun choose!53 (array!65732 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22107) Unit!34058)

(assert (=> d!126163 (= lt!459712 (choose!53 (_keys!11624 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41663 lt!459654) #b00000000000000000000000000000000 Nil!22104))))

(assert (=> d!126163 (bvslt (size!32153 (_keys!11624 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!126163 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11624 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41663 lt!459654) #b00000000000000000000000000000000 Nil!22104) lt!459712)))

(declare-fun b!1042975 () Bool)

(assert (=> b!1042975 (= e!590919 (arrayNoDuplicates!0 (array!65733 (store (arr!31617 (_keys!11624 thiss!1427)) (index!41663 lt!459654) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32153 (_keys!11624 thiss!1427))) #b00000000000000000000000000000000 Nil!22104))))

(assert (= (and d!126163 res!694976) b!1042975))

(declare-fun m!962363 () Bool)

(assert (=> d!126163 m!962363))

(assert (=> b!1042975 m!962247))

(declare-fun m!962365 () Bool)

(assert (=> b!1042975 m!962365))

(assert (=> b!1042842 d!126163))

(declare-fun d!126165 () Bool)

(declare-fun res!694983 () Bool)

(declare-fun e!590922 () Bool)

(assert (=> d!126165 (=> (not res!694983) (not e!590922))))

(declare-fun simpleValid!443 (LongMapFixedSize!5982) Bool)

(assert (=> d!126165 (= res!694983 (simpleValid!443 thiss!1427))))

(assert (=> d!126165 (= (valid!2199 thiss!1427) e!590922)))

(declare-fun b!1042982 () Bool)

(declare-fun res!694984 () Bool)

(assert (=> b!1042982 (=> (not res!694984) (not e!590922))))

(assert (=> b!1042982 (= res!694984 (= (arrayCountValidKeys!0 (_keys!11624 thiss!1427) #b00000000000000000000000000000000 (size!32153 (_keys!11624 thiss!1427))) (_size!3046 thiss!1427)))))

(declare-fun b!1042983 () Bool)

(declare-fun res!694985 () Bool)

(assert (=> b!1042983 (=> (not res!694985) (not e!590922))))

(assert (=> b!1042983 (= res!694985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11624 thiss!1427) (mask!30443 thiss!1427)))))

(declare-fun b!1042984 () Bool)

(assert (=> b!1042984 (= e!590922 (arrayNoDuplicates!0 (_keys!11624 thiss!1427) #b00000000000000000000000000000000 Nil!22104))))

(assert (= (and d!126165 res!694983) b!1042982))

(assert (= (and b!1042982 res!694984) b!1042983))

(assert (= (and b!1042983 res!694985) b!1042984))

(declare-fun m!962367 () Bool)

(assert (=> d!126165 m!962367))

(assert (=> b!1042982 m!962237))

(assert (=> b!1042983 m!962261))

(assert (=> b!1042984 m!962255))

(assert (=> start!91618 d!126165))

(declare-fun bm!44208 () Bool)

(declare-fun call!44211 () Bool)

(declare-fun c!105855 () Bool)

(assert (=> bm!44208 (= call!44211 (arrayNoDuplicates!0 (_keys!11624 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105855 (Cons!22103 (select (arr!31617 (_keys!11624 thiss!1427)) #b00000000000000000000000000000000) Nil!22104) Nil!22104)))))

(declare-fun b!1042985 () Bool)

(declare-fun e!590926 () Bool)

(declare-fun e!590923 () Bool)

(assert (=> b!1042985 (= e!590926 e!590923)))

(declare-fun res!694986 () Bool)

(assert (=> b!1042985 (=> (not res!694986) (not e!590923))))

(declare-fun e!590925 () Bool)

(assert (=> b!1042985 (= res!694986 (not e!590925))))

(declare-fun res!694988 () Bool)

(assert (=> b!1042985 (=> (not res!694988) (not e!590925))))

(assert (=> b!1042985 (= res!694988 (validKeyInArray!0 (select (arr!31617 (_keys!11624 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1042986 () Bool)

(declare-fun e!590924 () Bool)

(assert (=> b!1042986 (= e!590923 e!590924)))

(assert (=> b!1042986 (= c!105855 (validKeyInArray!0 (select (arr!31617 (_keys!11624 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1042988 () Bool)

(assert (=> b!1042988 (= e!590924 call!44211)))

(declare-fun b!1042989 () Bool)

(assert (=> b!1042989 (= e!590924 call!44211)))

(declare-fun b!1042987 () Bool)

(assert (=> b!1042987 (= e!590925 (contains!6083 Nil!22104 (select (arr!31617 (_keys!11624 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!126167 () Bool)

(declare-fun res!694987 () Bool)

(assert (=> d!126167 (=> res!694987 e!590926)))

(assert (=> d!126167 (= res!694987 (bvsge #b00000000000000000000000000000000 (size!32153 (_keys!11624 thiss!1427))))))

(assert (=> d!126167 (= (arrayNoDuplicates!0 (_keys!11624 thiss!1427) #b00000000000000000000000000000000 Nil!22104) e!590926)))

(assert (= (and d!126167 (not res!694987)) b!1042985))

(assert (= (and b!1042985 res!694988) b!1042987))

(assert (= (and b!1042985 res!694986) b!1042986))

(assert (= (and b!1042986 c!105855) b!1042988))

(assert (= (and b!1042986 (not c!105855)) b!1042989))

(assert (= (or b!1042988 b!1042989) bm!44208))

(assert (=> bm!44208 m!962313))

(declare-fun m!962369 () Bool)

(assert (=> bm!44208 m!962369))

(assert (=> b!1042985 m!962313))

(assert (=> b!1042985 m!962313))

(assert (=> b!1042985 m!962321))

(assert (=> b!1042986 m!962313))

(assert (=> b!1042986 m!962313))

(assert (=> b!1042986 m!962321))

(assert (=> b!1042987 m!962313))

(assert (=> b!1042987 m!962313))

(declare-fun m!962371 () Bool)

(assert (=> b!1042987 m!962371))

(assert (=> b!1042844 d!126167))

(declare-fun d!126169 () Bool)

(assert (=> d!126169 (= (array_inv!24273 (_keys!11624 thiss!1427)) (bvsge (size!32153 (_keys!11624 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1042839 d!126169))

(declare-fun d!126171 () Bool)

(assert (=> d!126171 (= (array_inv!24274 (_values!6396 thiss!1427)) (bvsge (size!32154 (_values!6396 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1042839 d!126171))

(declare-fun condMapEmpty!38813 () Bool)

(declare-fun mapDefault!38813 () ValueCell!11694)

(assert (=> mapNonEmpty!38807 (= condMapEmpty!38813 (= mapRest!38807 ((as const (Array (_ BitVec 32) ValueCell!11694)) mapDefault!38813)))))

(declare-fun e!590931 () Bool)

(declare-fun mapRes!38813 () Bool)

(assert (=> mapNonEmpty!38807 (= tp!74457 (and e!590931 mapRes!38813))))

(declare-fun mapIsEmpty!38813 () Bool)

(assert (=> mapIsEmpty!38813 mapRes!38813))

(declare-fun b!1042996 () Bool)

(declare-fun e!590932 () Bool)

(assert (=> b!1042996 (= e!590932 tp_is_empty!24795)))

(declare-fun mapNonEmpty!38813 () Bool)

(declare-fun tp!74467 () Bool)

(assert (=> mapNonEmpty!38813 (= mapRes!38813 (and tp!74467 e!590932))))

(declare-fun mapRest!38813 () (Array (_ BitVec 32) ValueCell!11694))

(declare-fun mapKey!38813 () (_ BitVec 32))

(declare-fun mapValue!38813 () ValueCell!11694)

(assert (=> mapNonEmpty!38813 (= mapRest!38807 (store mapRest!38813 mapKey!38813 mapValue!38813))))

(declare-fun b!1042997 () Bool)

(assert (=> b!1042997 (= e!590931 tp_is_empty!24795)))

(assert (= (and mapNonEmpty!38807 condMapEmpty!38813) mapIsEmpty!38813))

(assert (= (and mapNonEmpty!38807 (not condMapEmpty!38813)) mapNonEmpty!38813))

(assert (= (and mapNonEmpty!38813 ((_ is ValueCellFull!11694) mapValue!38813)) b!1042996))

(assert (= (and mapNonEmpty!38807 ((_ is ValueCellFull!11694) mapDefault!38813)) b!1042997))

(declare-fun m!962373 () Bool)

(assert (=> mapNonEmpty!38813 m!962373))

(check-sat (not d!126163) (not b!1042916) (not b!1042943) (not bm!44202) (not b!1042984) (not d!126139) (not b!1042968) (not b!1042928) (not d!126151) (not b!1042975) tp_is_empty!24795 (not bm!44208) (not b!1042912) (not bm!44207) (not b!1042969) (not d!126165) (not b!1042960) (not b!1042929) (not b!1042987) (not b!1042961) (not d!126145) (not bm!44199) (not b!1042946) b_and!33625 (not b!1042911) (not d!126153) (not b!1042927) (not b!1042940) (not b_next!21075) (not b!1042983) (not bm!44206) (not bm!44205) (not b!1042986) (not b!1042941) (not b!1042982) (not mapNonEmpty!38813) (not b!1042985) (not b!1042955) (not b!1042900))
(check-sat b_and!33625 (not b_next!21075))
