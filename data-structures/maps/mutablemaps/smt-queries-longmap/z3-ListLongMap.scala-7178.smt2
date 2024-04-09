; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91850 () Bool)

(assert start!91850)

(declare-fun b!1044590 () Bool)

(declare-fun b_free!21123 () Bool)

(declare-fun b_next!21123 () Bool)

(assert (=> b!1044590 (= b_free!21123 (not b_next!21123))))

(declare-fun tp!74619 () Bool)

(declare-fun b_and!33727 () Bool)

(assert (=> b!1044590 (= tp!74619 b_and!33727)))

(declare-fun b!1044587 () Bool)

(declare-fun res!695782 () Bool)

(declare-fun e!592070 () Bool)

(assert (=> b!1044587 (=> res!695782 e!592070)))

(declare-datatypes ((V!37997 0))(
  ( (V!37998 (val!12472 Int)) )
))
(declare-datatypes ((ValueCell!11718 0))(
  ( (ValueCellFull!11718 (v!15066 V!37997)) (EmptyCell!11718) )
))
(declare-datatypes ((Unit!34108 0))(
  ( (Unit!34109) )
))
(declare-datatypes ((array!65840 0))(
  ( (array!65841 (arr!31665 (Array (_ BitVec 32) (_ BitVec 64))) (size!32201 (_ BitVec 32))) )
))
(declare-datatypes ((array!65842 0))(
  ( (array!65843 (arr!31666 (Array (_ BitVec 32) ValueCell!11718)) (size!32202 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6030 0))(
  ( (LongMapFixedSize!6031 (defaultEntry!6405 Int) (mask!30513 (_ BitVec 32)) (extraKeys!6133 (_ BitVec 32)) (zeroValue!6239 V!37997) (minValue!6239 V!37997) (_size!3070 (_ BitVec 32)) (_keys!11668 array!65840) (_values!6428 array!65842) (_vacant!3070 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15866 0))(
  ( (tuple2!15867 (_1!7943 Unit!34108) (_2!7943 LongMapFixedSize!6030)) )
))
(declare-fun lt!460858 () tuple2!15866)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1044587 (= res!695782 (not (validMask!0 (mask!30513 (_2!7943 lt!460858)))))))

(declare-fun b!1044588 () Bool)

(declare-fun res!695781 () Bool)

(declare-fun e!592067 () Bool)

(assert (=> b!1044588 (=> (not res!695781) (not e!592067))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1044588 (= res!695781 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1044589 () Bool)

(assert (=> b!1044589 (= e!592070 (or (not (= (size!32202 (_values!6428 (_2!7943 lt!460858))) (bvadd #b00000000000000000000000000000001 (mask!30513 (_2!7943 lt!460858))))) (= (size!32201 (_keys!11668 (_2!7943 lt!460858))) (size!32202 (_values!6428 (_2!7943 lt!460858))))))))

(declare-fun tp_is_empty!24843 () Bool)

(declare-fun thiss!1427 () LongMapFixedSize!6030)

(declare-fun e!592071 () Bool)

(declare-fun e!592068 () Bool)

(declare-fun array_inv!24307 (array!65840) Bool)

(declare-fun array_inv!24308 (array!65842) Bool)

(assert (=> b!1044590 (= e!592071 (and tp!74619 tp_is_empty!24843 (array_inv!24307 (_keys!11668 thiss!1427)) (array_inv!24308 (_values!6428 thiss!1427)) e!592068))))

(declare-fun mapNonEmpty!38897 () Bool)

(declare-fun mapRes!38897 () Bool)

(declare-fun tp!74620 () Bool)

(declare-fun e!592066 () Bool)

(assert (=> mapNonEmpty!38897 (= mapRes!38897 (and tp!74620 e!592066))))

(declare-fun mapKey!38897 () (_ BitVec 32))

(declare-fun mapRest!38897 () (Array (_ BitVec 32) ValueCell!11718))

(declare-fun mapValue!38897 () ValueCell!11718)

(assert (=> mapNonEmpty!38897 (= (arr!31666 (_values!6428 thiss!1427)) (store mapRest!38897 mapKey!38897 mapValue!38897))))

(declare-fun b!1044591 () Bool)

(assert (=> b!1044591 (= e!592066 tp_is_empty!24843)))

(declare-fun b!1044592 () Bool)

(declare-fun e!592065 () Bool)

(assert (=> b!1044592 (= e!592065 (not e!592070))))

(declare-fun res!695778 () Bool)

(assert (=> b!1044592 (=> res!695778 e!592070)))

(declare-datatypes ((tuple2!15868 0))(
  ( (tuple2!15869 (_1!7944 (_ BitVec 64)) (_2!7944 V!37997)) )
))
(declare-datatypes ((List!22134 0))(
  ( (Nil!22131) (Cons!22130 (h!23338 tuple2!15868) (t!31387 List!22134)) )
))
(declare-datatypes ((ListLongMap!13895 0))(
  ( (ListLongMap!13896 (toList!6963 List!22134)) )
))
(declare-fun contains!6094 (ListLongMap!13895 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3969 (array!65840 array!65842 (_ BitVec 32) (_ BitVec 32) V!37997 V!37997 (_ BitVec 32) Int) ListLongMap!13895)

(assert (=> b!1044592 (= res!695778 (not (contains!6094 (getCurrentListMap!3969 (_keys!11668 (_2!7943 lt!460858)) (_values!6428 (_2!7943 lt!460858)) (mask!30513 (_2!7943 lt!460858)) (extraKeys!6133 (_2!7943 lt!460858)) (zeroValue!6239 (_2!7943 lt!460858)) (minValue!6239 (_2!7943 lt!460858)) #b00000000000000000000000000000000 (defaultEntry!6405 (_2!7943 lt!460858))) key!909)))))

(declare-fun lt!460865 () array!65840)

(declare-fun lt!460864 () array!65842)

(declare-fun Unit!34110 () Unit!34108)

(declare-fun Unit!34111 () Unit!34108)

(assert (=> b!1044592 (= lt!460858 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!3070 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15867 Unit!34110 (LongMapFixedSize!6031 (defaultEntry!6405 thiss!1427) (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) (bvsub (_size!3070 thiss!1427) #b00000000000000000000000000000001) lt!460865 lt!460864 (bvadd #b00000000000000000000000000000001 (_vacant!3070 thiss!1427)))) (tuple2!15867 Unit!34111 (LongMapFixedSize!6031 (defaultEntry!6405 thiss!1427) (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) (bvsub (_size!3070 thiss!1427) #b00000000000000000000000000000001) lt!460865 lt!460864 (_vacant!3070 thiss!1427)))))))

(declare-fun -!539 (ListLongMap!13895 (_ BitVec 64)) ListLongMap!13895)

(assert (=> b!1044592 (= (-!539 (getCurrentListMap!3969 (_keys!11668 thiss!1427) (_values!6428 thiss!1427) (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6405 thiss!1427)) key!909) (getCurrentListMap!3969 lt!460865 lt!460864 (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6405 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9840 0))(
  ( (MissingZero!9840 (index!41730 (_ BitVec 32))) (Found!9840 (index!41731 (_ BitVec 32))) (Intermediate!9840 (undefined!10652 Bool) (index!41732 (_ BitVec 32)) (x!93283 (_ BitVec 32))) (Undefined!9840) (MissingVacant!9840 (index!41733 (_ BitVec 32))) )
))
(declare-fun lt!460860 () SeekEntryResult!9840)

(declare-fun dynLambda!2013 (Int (_ BitVec 64)) V!37997)

(assert (=> b!1044592 (= lt!460864 (array!65843 (store (arr!31666 (_values!6428 thiss!1427)) (index!41731 lt!460860) (ValueCellFull!11718 (dynLambda!2013 (defaultEntry!6405 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32202 (_values!6428 thiss!1427))))))

(declare-fun lt!460863 () Unit!34108)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!59 (array!65840 array!65842 (_ BitVec 32) (_ BitVec 32) V!37997 V!37997 (_ BitVec 32) (_ BitVec 64) Int) Unit!34108)

(assert (=> b!1044592 (= lt!460863 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!59 (_keys!11668 thiss!1427) (_values!6428 thiss!1427) (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) (index!41731 lt!460860) key!909 (defaultEntry!6405 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!65840 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1044592 (not (arrayContainsKey!0 lt!460865 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!460866 () Unit!34108)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65840 (_ BitVec 32) (_ BitVec 64)) Unit!34108)

(assert (=> b!1044592 (= lt!460866 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11668 thiss!1427) (index!41731 lt!460860) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65840 (_ BitVec 32)) Bool)

(assert (=> b!1044592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!460865 (mask!30513 thiss!1427))))

(declare-fun lt!460862 () Unit!34108)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65840 (_ BitVec 32) (_ BitVec 32)) Unit!34108)

(assert (=> b!1044592 (= lt!460862 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11668 thiss!1427) (index!41731 lt!460860) (mask!30513 thiss!1427)))))

(declare-datatypes ((List!22135 0))(
  ( (Nil!22132) (Cons!22131 (h!23339 (_ BitVec 64)) (t!31388 List!22135)) )
))
(declare-fun arrayNoDuplicates!0 (array!65840 (_ BitVec 32) List!22135) Bool)

(assert (=> b!1044592 (arrayNoDuplicates!0 lt!460865 #b00000000000000000000000000000000 Nil!22132)))

(declare-fun lt!460859 () Unit!34108)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65840 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22135) Unit!34108)

(assert (=> b!1044592 (= lt!460859 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11668 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41731 lt!460860) #b00000000000000000000000000000000 Nil!22132))))

(declare-fun arrayCountValidKeys!0 (array!65840 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1044592 (= (arrayCountValidKeys!0 lt!460865 #b00000000000000000000000000000000 (size!32201 (_keys!11668 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11668 thiss!1427) #b00000000000000000000000000000000 (size!32201 (_keys!11668 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1044592 (= lt!460865 (array!65841 (store (arr!31665 (_keys!11668 thiss!1427)) (index!41731 lt!460860) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32201 (_keys!11668 thiss!1427))))))

(declare-fun lt!460861 () Unit!34108)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65840 (_ BitVec 32) (_ BitVec 64)) Unit!34108)

(assert (=> b!1044592 (= lt!460861 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11668 thiss!1427) (index!41731 lt!460860) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1044593 () Bool)

(declare-fun e!592069 () Bool)

(assert (=> b!1044593 (= e!592068 (and e!592069 mapRes!38897))))

(declare-fun condMapEmpty!38897 () Bool)

(declare-fun mapDefault!38897 () ValueCell!11718)

(assert (=> b!1044593 (= condMapEmpty!38897 (= (arr!31666 (_values!6428 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11718)) mapDefault!38897)))))

(declare-fun b!1044594 () Bool)

(assert (=> b!1044594 (= e!592069 tp_is_empty!24843)))

(declare-fun b!1044595 () Bool)

(assert (=> b!1044595 (= e!592067 e!592065)))

(declare-fun res!695780 () Bool)

(assert (=> b!1044595 (=> (not res!695780) (not e!592065))))

(get-info :version)

(assert (=> b!1044595 (= res!695780 ((_ is Found!9840) lt!460860))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65840 (_ BitVec 32)) SeekEntryResult!9840)

(assert (=> b!1044595 (= lt!460860 (seekEntry!0 key!909 (_keys!11668 thiss!1427) (mask!30513 thiss!1427)))))

(declare-fun res!695779 () Bool)

(assert (=> start!91850 (=> (not res!695779) (not e!592067))))

(declare-fun valid!2217 (LongMapFixedSize!6030) Bool)

(assert (=> start!91850 (= res!695779 (valid!2217 thiss!1427))))

(assert (=> start!91850 e!592067))

(assert (=> start!91850 e!592071))

(assert (=> start!91850 true))

(declare-fun mapIsEmpty!38897 () Bool)

(assert (=> mapIsEmpty!38897 mapRes!38897))

(assert (= (and start!91850 res!695779) b!1044588))

(assert (= (and b!1044588 res!695781) b!1044595))

(assert (= (and b!1044595 res!695780) b!1044592))

(assert (= (and b!1044592 (not res!695778)) b!1044587))

(assert (= (and b!1044587 (not res!695782)) b!1044589))

(assert (= (and b!1044593 condMapEmpty!38897) mapIsEmpty!38897))

(assert (= (and b!1044593 (not condMapEmpty!38897)) mapNonEmpty!38897))

(assert (= (and mapNonEmpty!38897 ((_ is ValueCellFull!11718) mapValue!38897)) b!1044591))

(assert (= (and b!1044593 ((_ is ValueCellFull!11718) mapDefault!38897)) b!1044594))

(assert (= b!1044590 b!1044593))

(assert (= start!91850 b!1044590))

(declare-fun b_lambda!16273 () Bool)

(assert (=> (not b_lambda!16273) (not b!1044592)))

(declare-fun t!31386 () Bool)

(declare-fun tb!7075 () Bool)

(assert (=> (and b!1044590 (= (defaultEntry!6405 thiss!1427) (defaultEntry!6405 thiss!1427)) t!31386) tb!7075))

(declare-fun result!14567 () Bool)

(assert (=> tb!7075 (= result!14567 tp_is_empty!24843)))

(assert (=> b!1044592 t!31386))

(declare-fun b_and!33729 () Bool)

(assert (= b_and!33727 (and (=> t!31386 result!14567) b_and!33729)))

(declare-fun m!964223 () Bool)

(assert (=> b!1044592 m!964223))

(declare-fun m!964225 () Bool)

(assert (=> b!1044592 m!964225))

(declare-fun m!964227 () Bool)

(assert (=> b!1044592 m!964227))

(declare-fun m!964229 () Bool)

(assert (=> b!1044592 m!964229))

(declare-fun m!964231 () Bool)

(assert (=> b!1044592 m!964231))

(declare-fun m!964233 () Bool)

(assert (=> b!1044592 m!964233))

(declare-fun m!964235 () Bool)

(assert (=> b!1044592 m!964235))

(declare-fun m!964237 () Bool)

(assert (=> b!1044592 m!964237))

(declare-fun m!964239 () Bool)

(assert (=> b!1044592 m!964239))

(declare-fun m!964241 () Bool)

(assert (=> b!1044592 m!964241))

(declare-fun m!964243 () Bool)

(assert (=> b!1044592 m!964243))

(declare-fun m!964245 () Bool)

(assert (=> b!1044592 m!964245))

(declare-fun m!964247 () Bool)

(assert (=> b!1044592 m!964247))

(declare-fun m!964249 () Bool)

(assert (=> b!1044592 m!964249))

(declare-fun m!964251 () Bool)

(assert (=> b!1044592 m!964251))

(assert (=> b!1044592 m!964247))

(declare-fun m!964253 () Bool)

(assert (=> b!1044592 m!964253))

(assert (=> b!1044592 m!964225))

(declare-fun m!964255 () Bool)

(assert (=> b!1044592 m!964255))

(declare-fun m!964257 () Bool)

(assert (=> b!1044592 m!964257))

(declare-fun m!964259 () Bool)

(assert (=> b!1044590 m!964259))

(declare-fun m!964261 () Bool)

(assert (=> b!1044590 m!964261))

(declare-fun m!964263 () Bool)

(assert (=> mapNonEmpty!38897 m!964263))

(declare-fun m!964265 () Bool)

(assert (=> b!1044595 m!964265))

(declare-fun m!964267 () Bool)

(assert (=> start!91850 m!964267))

(declare-fun m!964269 () Bool)

(assert (=> b!1044587 m!964269))

(check-sat (not mapNonEmpty!38897) tp_is_empty!24843 (not b_next!21123) (not b!1044587) (not b!1044595) (not start!91850) b_and!33729 (not b!1044590) (not b_lambda!16273) (not b!1044592))
(check-sat b_and!33729 (not b_next!21123))
(get-model)

(declare-fun b_lambda!16277 () Bool)

(assert (= b_lambda!16273 (or (and b!1044590 b_free!21123) b_lambda!16277)))

(check-sat (not mapNonEmpty!38897) tp_is_empty!24843 (not b!1044592) (not b_lambda!16277) (not b_next!21123) (not b!1044587) (not b!1044595) (not start!91850) b_and!33729 (not b!1044590))
(check-sat b_and!33729 (not b_next!21123))
(get-model)

(declare-fun d!126371 () Bool)

(declare-fun res!695802 () Bool)

(declare-fun e!592100 () Bool)

(assert (=> d!126371 (=> res!695802 e!592100)))

(assert (=> d!126371 (= res!695802 (= (select (arr!31665 lt!460865) #b00000000000000000000000000000000) key!909))))

(assert (=> d!126371 (= (arrayContainsKey!0 lt!460865 key!909 #b00000000000000000000000000000000) e!592100)))

(declare-fun b!1044631 () Bool)

(declare-fun e!592101 () Bool)

(assert (=> b!1044631 (= e!592100 e!592101)))

(declare-fun res!695803 () Bool)

(assert (=> b!1044631 (=> (not res!695803) (not e!592101))))

(assert (=> b!1044631 (= res!695803 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32201 lt!460865)))))

(declare-fun b!1044632 () Bool)

(assert (=> b!1044632 (= e!592101 (arrayContainsKey!0 lt!460865 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!126371 (not res!695802)) b!1044631))

(assert (= (and b!1044631 res!695803) b!1044632))

(declare-fun m!964319 () Bool)

(assert (=> d!126371 m!964319))

(declare-fun m!964321 () Bool)

(assert (=> b!1044632 m!964321))

(assert (=> b!1044592 d!126371))

(declare-fun d!126373 () Bool)

(declare-fun e!592104 () Bool)

(assert (=> d!126373 e!592104))

(declare-fun res!695806 () Bool)

(assert (=> d!126373 (=> (not res!695806) (not e!592104))))

(assert (=> d!126373 (= res!695806 (and (bvsge (index!41731 lt!460860) #b00000000000000000000000000000000) (bvslt (index!41731 lt!460860) (size!32201 (_keys!11668 thiss!1427)))))))

(declare-fun lt!460896 () Unit!34108)

(declare-fun choose!53 (array!65840 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22135) Unit!34108)

(assert (=> d!126373 (= lt!460896 (choose!53 (_keys!11668 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41731 lt!460860) #b00000000000000000000000000000000 Nil!22132))))

(assert (=> d!126373 (bvslt (size!32201 (_keys!11668 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!126373 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11668 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41731 lt!460860) #b00000000000000000000000000000000 Nil!22132) lt!460896)))

(declare-fun b!1044635 () Bool)

(assert (=> b!1044635 (= e!592104 (arrayNoDuplicates!0 (array!65841 (store (arr!31665 (_keys!11668 thiss!1427)) (index!41731 lt!460860) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32201 (_keys!11668 thiss!1427))) #b00000000000000000000000000000000 Nil!22132))))

(assert (= (and d!126373 res!695806) b!1044635))

(declare-fun m!964323 () Bool)

(assert (=> d!126373 m!964323))

(assert (=> b!1044635 m!964257))

(declare-fun m!964325 () Bool)

(assert (=> b!1044635 m!964325))

(assert (=> b!1044592 d!126373))

(declare-fun b!1044646 () Bool)

(declare-fun e!592116 () Bool)

(declare-fun call!44392 () Bool)

(assert (=> b!1044646 (= e!592116 call!44392)))

(declare-fun b!1044647 () Bool)

(assert (=> b!1044647 (= e!592116 call!44392)))

(declare-fun d!126375 () Bool)

(declare-fun res!695815 () Bool)

(declare-fun e!592115 () Bool)

(assert (=> d!126375 (=> res!695815 e!592115)))

(assert (=> d!126375 (= res!695815 (bvsge #b00000000000000000000000000000000 (size!32201 lt!460865)))))

(assert (=> d!126375 (= (arrayNoDuplicates!0 lt!460865 #b00000000000000000000000000000000 Nil!22132) e!592115)))

(declare-fun b!1044648 () Bool)

(declare-fun e!592114 () Bool)

(assert (=> b!1044648 (= e!592114 e!592116)))

(declare-fun c!106089 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1044648 (= c!106089 (validKeyInArray!0 (select (arr!31665 lt!460865) #b00000000000000000000000000000000)))))

(declare-fun bm!44389 () Bool)

(assert (=> bm!44389 (= call!44392 (arrayNoDuplicates!0 lt!460865 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106089 (Cons!22131 (select (arr!31665 lt!460865) #b00000000000000000000000000000000) Nil!22132) Nil!22132)))))

(declare-fun b!1044649 () Bool)

(declare-fun e!592113 () Bool)

(declare-fun contains!6095 (List!22135 (_ BitVec 64)) Bool)

(assert (=> b!1044649 (= e!592113 (contains!6095 Nil!22132 (select (arr!31665 lt!460865) #b00000000000000000000000000000000)))))

(declare-fun b!1044650 () Bool)

(assert (=> b!1044650 (= e!592115 e!592114)))

(declare-fun res!695814 () Bool)

(assert (=> b!1044650 (=> (not res!695814) (not e!592114))))

(assert (=> b!1044650 (= res!695814 (not e!592113))))

(declare-fun res!695813 () Bool)

(assert (=> b!1044650 (=> (not res!695813) (not e!592113))))

(assert (=> b!1044650 (= res!695813 (validKeyInArray!0 (select (arr!31665 lt!460865) #b00000000000000000000000000000000)))))

(assert (= (and d!126375 (not res!695815)) b!1044650))

(assert (= (and b!1044650 res!695813) b!1044649))

(assert (= (and b!1044650 res!695814) b!1044648))

(assert (= (and b!1044648 c!106089) b!1044646))

(assert (= (and b!1044648 (not c!106089)) b!1044647))

(assert (= (or b!1044646 b!1044647) bm!44389))

(assert (=> b!1044648 m!964319))

(assert (=> b!1044648 m!964319))

(declare-fun m!964327 () Bool)

(assert (=> b!1044648 m!964327))

(assert (=> bm!44389 m!964319))

(declare-fun m!964329 () Bool)

(assert (=> bm!44389 m!964329))

(assert (=> b!1044649 m!964319))

(assert (=> b!1044649 m!964319))

(declare-fun m!964331 () Bool)

(assert (=> b!1044649 m!964331))

(assert (=> b!1044650 m!964319))

(assert (=> b!1044650 m!964319))

(assert (=> b!1044650 m!964327))

(assert (=> b!1044592 d!126375))

(declare-fun d!126377 () Bool)

(declare-fun lt!460899 () ListLongMap!13895)

(assert (=> d!126377 (not (contains!6094 lt!460899 key!909))))

(declare-fun removeStrictlySorted!63 (List!22134 (_ BitVec 64)) List!22134)

(assert (=> d!126377 (= lt!460899 (ListLongMap!13896 (removeStrictlySorted!63 (toList!6963 (getCurrentListMap!3969 (_keys!11668 thiss!1427) (_values!6428 thiss!1427) (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6405 thiss!1427))) key!909)))))

(assert (=> d!126377 (= (-!539 (getCurrentListMap!3969 (_keys!11668 thiss!1427) (_values!6428 thiss!1427) (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6405 thiss!1427)) key!909) lt!460899)))

(declare-fun bs!30515 () Bool)

(assert (= bs!30515 d!126377))

(declare-fun m!964333 () Bool)

(assert (=> bs!30515 m!964333))

(declare-fun m!964335 () Bool)

(assert (=> bs!30515 m!964335))

(assert (=> b!1044592 d!126377))

(declare-fun bm!44392 () Bool)

(declare-fun call!44395 () (_ BitVec 32))

(assert (=> bm!44392 (= call!44395 (arrayCountValidKeys!0 lt!460865 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32201 (_keys!11668 thiss!1427))))))

(declare-fun b!1044659 () Bool)

(declare-fun e!592122 () (_ BitVec 32))

(assert (=> b!1044659 (= e!592122 call!44395)))

(declare-fun b!1044660 () Bool)

(declare-fun e!592121 () (_ BitVec 32))

(assert (=> b!1044660 (= e!592121 #b00000000000000000000000000000000)))

(declare-fun b!1044661 () Bool)

(assert (=> b!1044661 (= e!592122 (bvadd #b00000000000000000000000000000001 call!44395))))

(declare-fun b!1044662 () Bool)

(assert (=> b!1044662 (= e!592121 e!592122)))

(declare-fun c!106095 () Bool)

(assert (=> b!1044662 (= c!106095 (validKeyInArray!0 (select (arr!31665 lt!460865) #b00000000000000000000000000000000)))))

(declare-fun d!126379 () Bool)

(declare-fun lt!460902 () (_ BitVec 32))

(assert (=> d!126379 (and (bvsge lt!460902 #b00000000000000000000000000000000) (bvsle lt!460902 (bvsub (size!32201 lt!460865) #b00000000000000000000000000000000)))))

(assert (=> d!126379 (= lt!460902 e!592121)))

(declare-fun c!106094 () Bool)

(assert (=> d!126379 (= c!106094 (bvsge #b00000000000000000000000000000000 (size!32201 (_keys!11668 thiss!1427))))))

(assert (=> d!126379 (and (bvsle #b00000000000000000000000000000000 (size!32201 (_keys!11668 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32201 (_keys!11668 thiss!1427)) (size!32201 lt!460865)))))

(assert (=> d!126379 (= (arrayCountValidKeys!0 lt!460865 #b00000000000000000000000000000000 (size!32201 (_keys!11668 thiss!1427))) lt!460902)))

(assert (= (and d!126379 c!106094) b!1044660))

(assert (= (and d!126379 (not c!106094)) b!1044662))

(assert (= (and b!1044662 c!106095) b!1044661))

(assert (= (and b!1044662 (not c!106095)) b!1044659))

(assert (= (or b!1044661 b!1044659) bm!44392))

(declare-fun m!964337 () Bool)

(assert (=> bm!44392 m!964337))

(assert (=> b!1044662 m!964319))

(assert (=> b!1044662 m!964319))

(assert (=> b!1044662 m!964327))

(assert (=> b!1044592 d!126379))

(declare-fun d!126381 () Bool)

(declare-fun e!592125 () Bool)

(assert (=> d!126381 e!592125))

(declare-fun res!695818 () Bool)

(assert (=> d!126381 (=> (not res!695818) (not e!592125))))

(assert (=> d!126381 (= res!695818 (and (bvsge (index!41731 lt!460860) #b00000000000000000000000000000000) (bvslt (index!41731 lt!460860) (size!32201 (_keys!11668 thiss!1427)))))))

(declare-fun lt!460905 () Unit!34108)

(declare-fun choose!1718 (array!65840 array!65842 (_ BitVec 32) (_ BitVec 32) V!37997 V!37997 (_ BitVec 32) (_ BitVec 64) Int) Unit!34108)

(assert (=> d!126381 (= lt!460905 (choose!1718 (_keys!11668 thiss!1427) (_values!6428 thiss!1427) (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) (index!41731 lt!460860) key!909 (defaultEntry!6405 thiss!1427)))))

(assert (=> d!126381 (validMask!0 (mask!30513 thiss!1427))))

(assert (=> d!126381 (= (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!59 (_keys!11668 thiss!1427) (_values!6428 thiss!1427) (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) (index!41731 lt!460860) key!909 (defaultEntry!6405 thiss!1427)) lt!460905)))

(declare-fun b!1044665 () Bool)

(assert (=> b!1044665 (= e!592125 (= (-!539 (getCurrentListMap!3969 (_keys!11668 thiss!1427) (_values!6428 thiss!1427) (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6405 thiss!1427)) key!909) (getCurrentListMap!3969 (array!65841 (store (arr!31665 (_keys!11668 thiss!1427)) (index!41731 lt!460860) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32201 (_keys!11668 thiss!1427))) (array!65843 (store (arr!31666 (_values!6428 thiss!1427)) (index!41731 lt!460860) (ValueCellFull!11718 (dynLambda!2013 (defaultEntry!6405 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32202 (_values!6428 thiss!1427))) (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6405 thiss!1427))))))

(assert (=> b!1044665 (bvslt (index!41731 lt!460860) (size!32202 (_values!6428 thiss!1427)))))

(assert (= (and d!126381 res!695818) b!1044665))

(declare-fun b_lambda!16279 () Bool)

(assert (=> (not b_lambda!16279) (not b!1044665)))

(assert (=> b!1044665 t!31386))

(declare-fun b_and!33735 () Bool)

(assert (= b_and!33729 (and (=> t!31386 result!14567) b_and!33735)))

(declare-fun m!964339 () Bool)

(assert (=> d!126381 m!964339))

(declare-fun m!964341 () Bool)

(assert (=> d!126381 m!964341))

(declare-fun m!964343 () Bool)

(assert (=> b!1044665 m!964343))

(assert (=> b!1044665 m!964227))

(assert (=> b!1044665 m!964257))

(assert (=> b!1044665 m!964247))

(assert (=> b!1044665 m!964249))

(assert (=> b!1044665 m!964247))

(assert (=> b!1044665 m!964235))

(assert (=> b!1044592 d!126381))

(declare-fun d!126383 () Bool)

(declare-fun e!592128 () Bool)

(assert (=> d!126383 e!592128))

(declare-fun res!695821 () Bool)

(assert (=> d!126383 (=> (not res!695821) (not e!592128))))

(assert (=> d!126383 (= res!695821 (bvslt (index!41731 lt!460860) (size!32201 (_keys!11668 thiss!1427))))))

(declare-fun lt!460908 () Unit!34108)

(declare-fun choose!121 (array!65840 (_ BitVec 32) (_ BitVec 64)) Unit!34108)

(assert (=> d!126383 (= lt!460908 (choose!121 (_keys!11668 thiss!1427) (index!41731 lt!460860) key!909))))

(assert (=> d!126383 (bvsge (index!41731 lt!460860) #b00000000000000000000000000000000)))

(assert (=> d!126383 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11668 thiss!1427) (index!41731 lt!460860) key!909) lt!460908)))

(declare-fun b!1044668 () Bool)

(assert (=> b!1044668 (= e!592128 (not (arrayContainsKey!0 (array!65841 (store (arr!31665 (_keys!11668 thiss!1427)) (index!41731 lt!460860) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32201 (_keys!11668 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!126383 res!695821) b!1044668))

(declare-fun m!964345 () Bool)

(assert (=> d!126383 m!964345))

(assert (=> b!1044668 m!964257))

(declare-fun m!964347 () Bool)

(assert (=> b!1044668 m!964347))

(assert (=> b!1044592 d!126383))

(declare-fun b!1044678 () Bool)

(declare-fun res!695830 () Bool)

(declare-fun e!592133 () Bool)

(assert (=> b!1044678 (=> (not res!695830) (not e!592133))))

(assert (=> b!1044678 (= res!695830 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!126385 () Bool)

(declare-fun e!592134 () Bool)

(assert (=> d!126385 e!592134))

(declare-fun res!695832 () Bool)

(assert (=> d!126385 (=> (not res!695832) (not e!592134))))

(assert (=> d!126385 (= res!695832 (and (bvsge (index!41731 lt!460860) #b00000000000000000000000000000000) (bvslt (index!41731 lt!460860) (size!32201 (_keys!11668 thiss!1427)))))))

(declare-fun lt!460911 () Unit!34108)

(declare-fun choose!82 (array!65840 (_ BitVec 32) (_ BitVec 64)) Unit!34108)

(assert (=> d!126385 (= lt!460911 (choose!82 (_keys!11668 thiss!1427) (index!41731 lt!460860) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!126385 e!592133))

(declare-fun res!695831 () Bool)

(assert (=> d!126385 (=> (not res!695831) (not e!592133))))

(assert (=> d!126385 (= res!695831 (and (bvsge (index!41731 lt!460860) #b00000000000000000000000000000000) (bvslt (index!41731 lt!460860) (size!32201 (_keys!11668 thiss!1427)))))))

(assert (=> d!126385 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11668 thiss!1427) (index!41731 lt!460860) #b1000000000000000000000000000000000000000000000000000000000000000) lt!460911)))

(declare-fun b!1044680 () Bool)

(assert (=> b!1044680 (= e!592134 (= (arrayCountValidKeys!0 (array!65841 (store (arr!31665 (_keys!11668 thiss!1427)) (index!41731 lt!460860) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32201 (_keys!11668 thiss!1427))) #b00000000000000000000000000000000 (size!32201 (_keys!11668 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11668 thiss!1427) #b00000000000000000000000000000000 (size!32201 (_keys!11668 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1044679 () Bool)

(assert (=> b!1044679 (= e!592133 (bvslt (size!32201 (_keys!11668 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1044677 () Bool)

(declare-fun res!695833 () Bool)

(assert (=> b!1044677 (=> (not res!695833) (not e!592133))))

(assert (=> b!1044677 (= res!695833 (validKeyInArray!0 (select (arr!31665 (_keys!11668 thiss!1427)) (index!41731 lt!460860))))))

(assert (= (and d!126385 res!695831) b!1044677))

(assert (= (and b!1044677 res!695833) b!1044678))

(assert (= (and b!1044678 res!695830) b!1044679))

(assert (= (and d!126385 res!695832) b!1044680))

(declare-fun m!964349 () Bool)

(assert (=> b!1044678 m!964349))

(declare-fun m!964351 () Bool)

(assert (=> d!126385 m!964351))

(assert (=> b!1044680 m!964257))

(declare-fun m!964353 () Bool)

(assert (=> b!1044680 m!964353))

(assert (=> b!1044680 m!964241))

(declare-fun m!964355 () Bool)

(assert (=> b!1044677 m!964355))

(assert (=> b!1044677 m!964355))

(declare-fun m!964357 () Bool)

(assert (=> b!1044677 m!964357))

(assert (=> b!1044592 d!126385))

(declare-fun d!126387 () Bool)

(declare-fun e!592170 () Bool)

(assert (=> d!126387 e!592170))

(declare-fun res!695855 () Bool)

(assert (=> d!126387 (=> (not res!695855) (not e!592170))))

(assert (=> d!126387 (= res!695855 (or (bvsge #b00000000000000000000000000000000 (size!32201 (_keys!11668 thiss!1427))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32201 (_keys!11668 thiss!1427))))))))

(declare-fun lt!460966 () ListLongMap!13895)

(declare-fun lt!460957 () ListLongMap!13895)

(assert (=> d!126387 (= lt!460966 lt!460957)))

(declare-fun lt!460974 () Unit!34108)

(declare-fun e!592167 () Unit!34108)

(assert (=> d!126387 (= lt!460974 e!592167)))

(declare-fun c!106109 () Bool)

(declare-fun e!592164 () Bool)

(assert (=> d!126387 (= c!106109 e!592164)))

(declare-fun res!695858 () Bool)

(assert (=> d!126387 (=> (not res!695858) (not e!592164))))

(assert (=> d!126387 (= res!695858 (bvslt #b00000000000000000000000000000000 (size!32201 (_keys!11668 thiss!1427))))))

(declare-fun e!592172 () ListLongMap!13895)

(assert (=> d!126387 (= lt!460957 e!592172)))

(declare-fun c!106112 () Bool)

(assert (=> d!126387 (= c!106112 (and (not (= (bvand (extraKeys!6133 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6133 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!126387 (validMask!0 (mask!30513 thiss!1427))))

(assert (=> d!126387 (= (getCurrentListMap!3969 (_keys!11668 thiss!1427) (_values!6428 thiss!1427) (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6405 thiss!1427)) lt!460966)))

(declare-fun b!1044723 () Bool)

(declare-fun e!592165 () Bool)

(declare-fun call!44413 () Bool)

(assert (=> b!1044723 (= e!592165 (not call!44413))))

(declare-fun b!1044724 () Bool)

(declare-fun c!106108 () Bool)

(assert (=> b!1044724 (= c!106108 (and (not (= (bvand (extraKeys!6133 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6133 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!592162 () ListLongMap!13895)

(declare-fun e!592163 () ListLongMap!13895)

(assert (=> b!1044724 (= e!592162 e!592163)))

(declare-fun b!1044725 () Bool)

(assert (=> b!1044725 (= e!592172 e!592162)))

(declare-fun c!106110 () Bool)

(assert (=> b!1044725 (= c!106110 (and (not (= (bvand (extraKeys!6133 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6133 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1044726 () Bool)

(declare-fun call!44412 () ListLongMap!13895)

(declare-fun +!3070 (ListLongMap!13895 tuple2!15868) ListLongMap!13895)

(assert (=> b!1044726 (= e!592172 (+!3070 call!44412 (tuple2!15869 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6239 thiss!1427))))))

(declare-fun b!1044727 () Bool)

(declare-fun call!44416 () ListLongMap!13895)

(assert (=> b!1044727 (= e!592162 call!44416)))

(declare-fun bm!44407 () Bool)

(assert (=> bm!44407 (= call!44413 (contains!6094 lt!460966 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1044728 () Bool)

(declare-fun e!592168 () Bool)

(declare-fun apply!947 (ListLongMap!13895 (_ BitVec 64)) V!37997)

(assert (=> b!1044728 (= e!592168 (= (apply!947 lt!460966 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6239 thiss!1427)))))

(declare-fun b!1044729 () Bool)

(declare-fun lt!460956 () Unit!34108)

(assert (=> b!1044729 (= e!592167 lt!460956)))

(declare-fun lt!460970 () ListLongMap!13895)

(declare-fun getCurrentListMapNoExtraKeys!3540 (array!65840 array!65842 (_ BitVec 32) (_ BitVec 32) V!37997 V!37997 (_ BitVec 32) Int) ListLongMap!13895)

(assert (=> b!1044729 (= lt!460970 (getCurrentListMapNoExtraKeys!3540 (_keys!11668 thiss!1427) (_values!6428 thiss!1427) (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6405 thiss!1427)))))

(declare-fun lt!460964 () (_ BitVec 64))

(assert (=> b!1044729 (= lt!460964 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460958 () (_ BitVec 64))

(assert (=> b!1044729 (= lt!460958 (select (arr!31665 (_keys!11668 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!460963 () Unit!34108)

(declare-fun addStillContains!635 (ListLongMap!13895 (_ BitVec 64) V!37997 (_ BitVec 64)) Unit!34108)

(assert (=> b!1044729 (= lt!460963 (addStillContains!635 lt!460970 lt!460964 (zeroValue!6239 thiss!1427) lt!460958))))

(assert (=> b!1044729 (contains!6094 (+!3070 lt!460970 (tuple2!15869 lt!460964 (zeroValue!6239 thiss!1427))) lt!460958)))

(declare-fun lt!460959 () Unit!34108)

(assert (=> b!1044729 (= lt!460959 lt!460963)))

(declare-fun lt!460977 () ListLongMap!13895)

(assert (=> b!1044729 (= lt!460977 (getCurrentListMapNoExtraKeys!3540 (_keys!11668 thiss!1427) (_values!6428 thiss!1427) (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6405 thiss!1427)))))

(declare-fun lt!460975 () (_ BitVec 64))

(assert (=> b!1044729 (= lt!460975 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460972 () (_ BitVec 64))

(assert (=> b!1044729 (= lt!460972 (select (arr!31665 (_keys!11668 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!460969 () Unit!34108)

(declare-fun addApplyDifferent!487 (ListLongMap!13895 (_ BitVec 64) V!37997 (_ BitVec 64)) Unit!34108)

(assert (=> b!1044729 (= lt!460969 (addApplyDifferent!487 lt!460977 lt!460975 (minValue!6239 thiss!1427) lt!460972))))

(assert (=> b!1044729 (= (apply!947 (+!3070 lt!460977 (tuple2!15869 lt!460975 (minValue!6239 thiss!1427))) lt!460972) (apply!947 lt!460977 lt!460972))))

(declare-fun lt!460962 () Unit!34108)

(assert (=> b!1044729 (= lt!460962 lt!460969)))

(declare-fun lt!460961 () ListLongMap!13895)

(assert (=> b!1044729 (= lt!460961 (getCurrentListMapNoExtraKeys!3540 (_keys!11668 thiss!1427) (_values!6428 thiss!1427) (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6405 thiss!1427)))))

(declare-fun lt!460976 () (_ BitVec 64))

(assert (=> b!1044729 (= lt!460976 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460968 () (_ BitVec 64))

(assert (=> b!1044729 (= lt!460968 (select (arr!31665 (_keys!11668 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!460967 () Unit!34108)

(assert (=> b!1044729 (= lt!460967 (addApplyDifferent!487 lt!460961 lt!460976 (zeroValue!6239 thiss!1427) lt!460968))))

(assert (=> b!1044729 (= (apply!947 (+!3070 lt!460961 (tuple2!15869 lt!460976 (zeroValue!6239 thiss!1427))) lt!460968) (apply!947 lt!460961 lt!460968))))

(declare-fun lt!460971 () Unit!34108)

(assert (=> b!1044729 (= lt!460971 lt!460967)))

(declare-fun lt!460960 () ListLongMap!13895)

(assert (=> b!1044729 (= lt!460960 (getCurrentListMapNoExtraKeys!3540 (_keys!11668 thiss!1427) (_values!6428 thiss!1427) (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6405 thiss!1427)))))

(declare-fun lt!460965 () (_ BitVec 64))

(assert (=> b!1044729 (= lt!460965 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460973 () (_ BitVec 64))

(assert (=> b!1044729 (= lt!460973 (select (arr!31665 (_keys!11668 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1044729 (= lt!460956 (addApplyDifferent!487 lt!460960 lt!460965 (minValue!6239 thiss!1427) lt!460973))))

(assert (=> b!1044729 (= (apply!947 (+!3070 lt!460960 (tuple2!15869 lt!460965 (minValue!6239 thiss!1427))) lt!460973) (apply!947 lt!460960 lt!460973))))

(declare-fun b!1044730 () Bool)

(declare-fun e!592169 () Bool)

(declare-fun e!592171 () Bool)

(assert (=> b!1044730 (= e!592169 e!592171)))

(declare-fun res!695857 () Bool)

(assert (=> b!1044730 (=> (not res!695857) (not e!592171))))

(assert (=> b!1044730 (= res!695857 (contains!6094 lt!460966 (select (arr!31665 (_keys!11668 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1044730 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32201 (_keys!11668 thiss!1427))))))

(declare-fun bm!44408 () Bool)

(declare-fun call!44414 () ListLongMap!13895)

(assert (=> bm!44408 (= call!44414 (getCurrentListMapNoExtraKeys!3540 (_keys!11668 thiss!1427) (_values!6428 thiss!1427) (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6405 thiss!1427)))))

(declare-fun b!1044731 () Bool)

(assert (=> b!1044731 (= e!592164 (validKeyInArray!0 (select (arr!31665 (_keys!11668 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!44409 () Bool)

(declare-fun call!44411 () ListLongMap!13895)

(declare-fun call!44415 () ListLongMap!13895)

(assert (=> bm!44409 (= call!44411 call!44415)))

(declare-fun b!1044732 () Bool)

(declare-fun e!592161 () Bool)

(assert (=> b!1044732 (= e!592161 (validKeyInArray!0 (select (arr!31665 (_keys!11668 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!44410 () Bool)

(assert (=> bm!44410 (= call!44416 call!44412)))

(declare-fun b!1044733 () Bool)

(declare-fun e!592166 () Bool)

(declare-fun e!592173 () Bool)

(assert (=> b!1044733 (= e!592166 e!592173)))

(declare-fun res!695860 () Bool)

(declare-fun call!44410 () Bool)

(assert (=> b!1044733 (= res!695860 call!44410)))

(assert (=> b!1044733 (=> (not res!695860) (not e!592173))))

(declare-fun b!1044734 () Bool)

(assert (=> b!1044734 (= e!592170 e!592166)))

(declare-fun c!106111 () Bool)

(assert (=> b!1044734 (= c!106111 (not (= (bvand (extraKeys!6133 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!44411 () Bool)

(assert (=> bm!44411 (= call!44410 (contains!6094 lt!460966 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1044735 () Bool)

(declare-fun get!16564 (ValueCell!11718 V!37997) V!37997)

(assert (=> b!1044735 (= e!592171 (= (apply!947 lt!460966 (select (arr!31665 (_keys!11668 thiss!1427)) #b00000000000000000000000000000000)) (get!16564 (select (arr!31666 (_values!6428 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2013 (defaultEntry!6405 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1044735 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32202 (_values!6428 thiss!1427))))))

(assert (=> b!1044735 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32201 (_keys!11668 thiss!1427))))))

(declare-fun b!1044736 () Bool)

(assert (=> b!1044736 (= e!592163 call!44411)))

(declare-fun b!1044737 () Bool)

(assert (=> b!1044737 (= e!592163 call!44416)))

(declare-fun b!1044738 () Bool)

(assert (=> b!1044738 (= e!592166 (not call!44410))))

(declare-fun b!1044739 () Bool)

(declare-fun Unit!34114 () Unit!34108)

(assert (=> b!1044739 (= e!592167 Unit!34114)))

(declare-fun b!1044740 () Bool)

(assert (=> b!1044740 (= e!592173 (= (apply!947 lt!460966 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6239 thiss!1427)))))

(declare-fun b!1044741 () Bool)

(declare-fun res!695856 () Bool)

(assert (=> b!1044741 (=> (not res!695856) (not e!592170))))

(assert (=> b!1044741 (= res!695856 e!592169)))

(declare-fun res!695854 () Bool)

(assert (=> b!1044741 (=> res!695854 e!592169)))

(assert (=> b!1044741 (= res!695854 (not e!592161))))

(declare-fun res!695859 () Bool)

(assert (=> b!1044741 (=> (not res!695859) (not e!592161))))

(assert (=> b!1044741 (= res!695859 (bvslt #b00000000000000000000000000000000 (size!32201 (_keys!11668 thiss!1427))))))

(declare-fun b!1044742 () Bool)

(declare-fun res!695853 () Bool)

(assert (=> b!1044742 (=> (not res!695853) (not e!592170))))

(assert (=> b!1044742 (= res!695853 e!592165)))

(declare-fun c!106113 () Bool)

(assert (=> b!1044742 (= c!106113 (not (= (bvand (extraKeys!6133 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1044743 () Bool)

(assert (=> b!1044743 (= e!592165 e!592168)))

(declare-fun res!695852 () Bool)

(assert (=> b!1044743 (= res!695852 call!44413)))

(assert (=> b!1044743 (=> (not res!695852) (not e!592168))))

(declare-fun bm!44412 () Bool)

(assert (=> bm!44412 (= call!44415 call!44414)))

(declare-fun bm!44413 () Bool)

(assert (=> bm!44413 (= call!44412 (+!3070 (ite c!106112 call!44414 (ite c!106110 call!44415 call!44411)) (ite (or c!106112 c!106110) (tuple2!15869 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6239 thiss!1427)) (tuple2!15869 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6239 thiss!1427)))))))

(assert (= (and d!126387 c!106112) b!1044726))

(assert (= (and d!126387 (not c!106112)) b!1044725))

(assert (= (and b!1044725 c!106110) b!1044727))

(assert (= (and b!1044725 (not c!106110)) b!1044724))

(assert (= (and b!1044724 c!106108) b!1044737))

(assert (= (and b!1044724 (not c!106108)) b!1044736))

(assert (= (or b!1044737 b!1044736) bm!44409))

(assert (= (or b!1044727 bm!44409) bm!44412))

(assert (= (or b!1044727 b!1044737) bm!44410))

(assert (= (or b!1044726 bm!44412) bm!44408))

(assert (= (or b!1044726 bm!44410) bm!44413))

(assert (= (and d!126387 res!695858) b!1044731))

(assert (= (and d!126387 c!106109) b!1044729))

(assert (= (and d!126387 (not c!106109)) b!1044739))

(assert (= (and d!126387 res!695855) b!1044741))

(assert (= (and b!1044741 res!695859) b!1044732))

(assert (= (and b!1044741 (not res!695854)) b!1044730))

(assert (= (and b!1044730 res!695857) b!1044735))

(assert (= (and b!1044741 res!695856) b!1044742))

(assert (= (and b!1044742 c!106113) b!1044743))

(assert (= (and b!1044742 (not c!106113)) b!1044723))

(assert (= (and b!1044743 res!695852) b!1044728))

(assert (= (or b!1044743 b!1044723) bm!44407))

(assert (= (and b!1044742 res!695853) b!1044734))

(assert (= (and b!1044734 c!106111) b!1044733))

(assert (= (and b!1044734 (not c!106111)) b!1044738))

(assert (= (and b!1044733 res!695860) b!1044740))

(assert (= (or b!1044733 b!1044738) bm!44411))

(declare-fun b_lambda!16281 () Bool)

(assert (=> (not b_lambda!16281) (not b!1044735)))

(assert (=> b!1044735 t!31386))

(declare-fun b_and!33737 () Bool)

(assert (= b_and!33735 (and (=> t!31386 result!14567) b_and!33737)))

(declare-fun m!964359 () Bool)

(assert (=> bm!44413 m!964359))

(declare-fun m!964361 () Bool)

(assert (=> b!1044735 m!964361))

(assert (=> b!1044735 m!964235))

(assert (=> b!1044735 m!964361))

(assert (=> b!1044735 m!964235))

(declare-fun m!964363 () Bool)

(assert (=> b!1044735 m!964363))

(declare-fun m!964365 () Bool)

(assert (=> b!1044735 m!964365))

(declare-fun m!964367 () Bool)

(assert (=> b!1044735 m!964367))

(assert (=> b!1044735 m!964365))

(declare-fun m!964369 () Bool)

(assert (=> bm!44407 m!964369))

(declare-fun m!964371 () Bool)

(assert (=> bm!44411 m!964371))

(assert (=> b!1044730 m!964365))

(assert (=> b!1044730 m!964365))

(declare-fun m!964373 () Bool)

(assert (=> b!1044730 m!964373))

(declare-fun m!964375 () Bool)

(assert (=> b!1044740 m!964375))

(declare-fun m!964377 () Bool)

(assert (=> bm!44408 m!964377))

(declare-fun m!964379 () Bool)

(assert (=> b!1044726 m!964379))

(declare-fun m!964381 () Bool)

(assert (=> b!1044729 m!964381))

(declare-fun m!964383 () Bool)

(assert (=> b!1044729 m!964383))

(declare-fun m!964385 () Bool)

(assert (=> b!1044729 m!964385))

(declare-fun m!964387 () Bool)

(assert (=> b!1044729 m!964387))

(declare-fun m!964389 () Bool)

(assert (=> b!1044729 m!964389))

(declare-fun m!964391 () Bool)

(assert (=> b!1044729 m!964391))

(assert (=> b!1044729 m!964377))

(declare-fun m!964393 () Bool)

(assert (=> b!1044729 m!964393))

(assert (=> b!1044729 m!964393))

(declare-fun m!964395 () Bool)

(assert (=> b!1044729 m!964395))

(declare-fun m!964397 () Bool)

(assert (=> b!1044729 m!964397))

(assert (=> b!1044729 m!964385))

(declare-fun m!964399 () Bool)

(assert (=> b!1044729 m!964399))

(declare-fun m!964401 () Bool)

(assert (=> b!1044729 m!964401))

(assert (=> b!1044729 m!964365))

(assert (=> b!1044729 m!964389))

(declare-fun m!964403 () Bool)

(assert (=> b!1044729 m!964403))

(declare-fun m!964405 () Bool)

(assert (=> b!1044729 m!964405))

(declare-fun m!964407 () Bool)

(assert (=> b!1044729 m!964407))

(declare-fun m!964409 () Bool)

(assert (=> b!1044729 m!964409))

(assert (=> b!1044729 m!964399))

(assert (=> b!1044731 m!964365))

(assert (=> b!1044731 m!964365))

(declare-fun m!964411 () Bool)

(assert (=> b!1044731 m!964411))

(declare-fun m!964413 () Bool)

(assert (=> b!1044728 m!964413))

(assert (=> d!126387 m!964341))

(assert (=> b!1044732 m!964365))

(assert (=> b!1044732 m!964365))

(assert (=> b!1044732 m!964411))

(assert (=> b!1044592 d!126387))

(declare-fun d!126389 () Bool)

(declare-fun e!592183 () Bool)

(assert (=> d!126389 e!592183))

(declare-fun res!695864 () Bool)

(assert (=> d!126389 (=> (not res!695864) (not e!592183))))

(assert (=> d!126389 (= res!695864 (or (bvsge #b00000000000000000000000000000000 (size!32201 (_keys!11668 (_2!7943 lt!460858)))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32201 (_keys!11668 (_2!7943 lt!460858)))))))))

(declare-fun lt!460988 () ListLongMap!13895)

(declare-fun lt!460979 () ListLongMap!13895)

(assert (=> d!126389 (= lt!460988 lt!460979)))

(declare-fun lt!460996 () Unit!34108)

(declare-fun e!592180 () Unit!34108)

(assert (=> d!126389 (= lt!460996 e!592180)))

(declare-fun c!106115 () Bool)

(declare-fun e!592177 () Bool)

(assert (=> d!126389 (= c!106115 e!592177)))

(declare-fun res!695867 () Bool)

(assert (=> d!126389 (=> (not res!695867) (not e!592177))))

(assert (=> d!126389 (= res!695867 (bvslt #b00000000000000000000000000000000 (size!32201 (_keys!11668 (_2!7943 lt!460858)))))))

(declare-fun e!592185 () ListLongMap!13895)

(assert (=> d!126389 (= lt!460979 e!592185)))

(declare-fun c!106118 () Bool)

(assert (=> d!126389 (= c!106118 (and (not (= (bvand (extraKeys!6133 (_2!7943 lt!460858)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6133 (_2!7943 lt!460858)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!126389 (validMask!0 (mask!30513 (_2!7943 lt!460858)))))

(assert (=> d!126389 (= (getCurrentListMap!3969 (_keys!11668 (_2!7943 lt!460858)) (_values!6428 (_2!7943 lt!460858)) (mask!30513 (_2!7943 lt!460858)) (extraKeys!6133 (_2!7943 lt!460858)) (zeroValue!6239 (_2!7943 lt!460858)) (minValue!6239 (_2!7943 lt!460858)) #b00000000000000000000000000000000 (defaultEntry!6405 (_2!7943 lt!460858))) lt!460988)))

(declare-fun b!1044744 () Bool)

(declare-fun e!592178 () Bool)

(declare-fun call!44420 () Bool)

(assert (=> b!1044744 (= e!592178 (not call!44420))))

(declare-fun b!1044745 () Bool)

(declare-fun c!106114 () Bool)

(assert (=> b!1044745 (= c!106114 (and (not (= (bvand (extraKeys!6133 (_2!7943 lt!460858)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6133 (_2!7943 lt!460858)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!592175 () ListLongMap!13895)

(declare-fun e!592176 () ListLongMap!13895)

(assert (=> b!1044745 (= e!592175 e!592176)))

(declare-fun b!1044746 () Bool)

(assert (=> b!1044746 (= e!592185 e!592175)))

(declare-fun c!106116 () Bool)

(assert (=> b!1044746 (= c!106116 (and (not (= (bvand (extraKeys!6133 (_2!7943 lt!460858)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6133 (_2!7943 lt!460858)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1044747 () Bool)

(declare-fun call!44419 () ListLongMap!13895)

(assert (=> b!1044747 (= e!592185 (+!3070 call!44419 (tuple2!15869 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6239 (_2!7943 lt!460858)))))))

(declare-fun b!1044748 () Bool)

(declare-fun call!44423 () ListLongMap!13895)

(assert (=> b!1044748 (= e!592175 call!44423)))

(declare-fun bm!44414 () Bool)

(assert (=> bm!44414 (= call!44420 (contains!6094 lt!460988 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1044749 () Bool)

(declare-fun e!592181 () Bool)

(assert (=> b!1044749 (= e!592181 (= (apply!947 lt!460988 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6239 (_2!7943 lt!460858))))))

(declare-fun b!1044750 () Bool)

(declare-fun lt!460978 () Unit!34108)

(assert (=> b!1044750 (= e!592180 lt!460978)))

(declare-fun lt!460992 () ListLongMap!13895)

(assert (=> b!1044750 (= lt!460992 (getCurrentListMapNoExtraKeys!3540 (_keys!11668 (_2!7943 lt!460858)) (_values!6428 (_2!7943 lt!460858)) (mask!30513 (_2!7943 lt!460858)) (extraKeys!6133 (_2!7943 lt!460858)) (zeroValue!6239 (_2!7943 lt!460858)) (minValue!6239 (_2!7943 lt!460858)) #b00000000000000000000000000000000 (defaultEntry!6405 (_2!7943 lt!460858))))))

(declare-fun lt!460986 () (_ BitVec 64))

(assert (=> b!1044750 (= lt!460986 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460980 () (_ BitVec 64))

(assert (=> b!1044750 (= lt!460980 (select (arr!31665 (_keys!11668 (_2!7943 lt!460858))) #b00000000000000000000000000000000))))

(declare-fun lt!460985 () Unit!34108)

(assert (=> b!1044750 (= lt!460985 (addStillContains!635 lt!460992 lt!460986 (zeroValue!6239 (_2!7943 lt!460858)) lt!460980))))

(assert (=> b!1044750 (contains!6094 (+!3070 lt!460992 (tuple2!15869 lt!460986 (zeroValue!6239 (_2!7943 lt!460858)))) lt!460980)))

(declare-fun lt!460981 () Unit!34108)

(assert (=> b!1044750 (= lt!460981 lt!460985)))

(declare-fun lt!460999 () ListLongMap!13895)

(assert (=> b!1044750 (= lt!460999 (getCurrentListMapNoExtraKeys!3540 (_keys!11668 (_2!7943 lt!460858)) (_values!6428 (_2!7943 lt!460858)) (mask!30513 (_2!7943 lt!460858)) (extraKeys!6133 (_2!7943 lt!460858)) (zeroValue!6239 (_2!7943 lt!460858)) (minValue!6239 (_2!7943 lt!460858)) #b00000000000000000000000000000000 (defaultEntry!6405 (_2!7943 lt!460858))))))

(declare-fun lt!460997 () (_ BitVec 64))

(assert (=> b!1044750 (= lt!460997 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460994 () (_ BitVec 64))

(assert (=> b!1044750 (= lt!460994 (select (arr!31665 (_keys!11668 (_2!7943 lt!460858))) #b00000000000000000000000000000000))))

(declare-fun lt!460991 () Unit!34108)

(assert (=> b!1044750 (= lt!460991 (addApplyDifferent!487 lt!460999 lt!460997 (minValue!6239 (_2!7943 lt!460858)) lt!460994))))

(assert (=> b!1044750 (= (apply!947 (+!3070 lt!460999 (tuple2!15869 lt!460997 (minValue!6239 (_2!7943 lt!460858)))) lt!460994) (apply!947 lt!460999 lt!460994))))

(declare-fun lt!460984 () Unit!34108)

(assert (=> b!1044750 (= lt!460984 lt!460991)))

(declare-fun lt!460983 () ListLongMap!13895)

(assert (=> b!1044750 (= lt!460983 (getCurrentListMapNoExtraKeys!3540 (_keys!11668 (_2!7943 lt!460858)) (_values!6428 (_2!7943 lt!460858)) (mask!30513 (_2!7943 lt!460858)) (extraKeys!6133 (_2!7943 lt!460858)) (zeroValue!6239 (_2!7943 lt!460858)) (minValue!6239 (_2!7943 lt!460858)) #b00000000000000000000000000000000 (defaultEntry!6405 (_2!7943 lt!460858))))))

(declare-fun lt!460998 () (_ BitVec 64))

(assert (=> b!1044750 (= lt!460998 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460990 () (_ BitVec 64))

(assert (=> b!1044750 (= lt!460990 (select (arr!31665 (_keys!11668 (_2!7943 lt!460858))) #b00000000000000000000000000000000))))

(declare-fun lt!460989 () Unit!34108)

(assert (=> b!1044750 (= lt!460989 (addApplyDifferent!487 lt!460983 lt!460998 (zeroValue!6239 (_2!7943 lt!460858)) lt!460990))))

(assert (=> b!1044750 (= (apply!947 (+!3070 lt!460983 (tuple2!15869 lt!460998 (zeroValue!6239 (_2!7943 lt!460858)))) lt!460990) (apply!947 lt!460983 lt!460990))))

(declare-fun lt!460993 () Unit!34108)

(assert (=> b!1044750 (= lt!460993 lt!460989)))

(declare-fun lt!460982 () ListLongMap!13895)

(assert (=> b!1044750 (= lt!460982 (getCurrentListMapNoExtraKeys!3540 (_keys!11668 (_2!7943 lt!460858)) (_values!6428 (_2!7943 lt!460858)) (mask!30513 (_2!7943 lt!460858)) (extraKeys!6133 (_2!7943 lt!460858)) (zeroValue!6239 (_2!7943 lt!460858)) (minValue!6239 (_2!7943 lt!460858)) #b00000000000000000000000000000000 (defaultEntry!6405 (_2!7943 lt!460858))))))

(declare-fun lt!460987 () (_ BitVec 64))

(assert (=> b!1044750 (= lt!460987 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460995 () (_ BitVec 64))

(assert (=> b!1044750 (= lt!460995 (select (arr!31665 (_keys!11668 (_2!7943 lt!460858))) #b00000000000000000000000000000000))))

(assert (=> b!1044750 (= lt!460978 (addApplyDifferent!487 lt!460982 lt!460987 (minValue!6239 (_2!7943 lt!460858)) lt!460995))))

(assert (=> b!1044750 (= (apply!947 (+!3070 lt!460982 (tuple2!15869 lt!460987 (minValue!6239 (_2!7943 lt!460858)))) lt!460995) (apply!947 lt!460982 lt!460995))))

(declare-fun b!1044751 () Bool)

(declare-fun e!592182 () Bool)

(declare-fun e!592184 () Bool)

(assert (=> b!1044751 (= e!592182 e!592184)))

(declare-fun res!695866 () Bool)

(assert (=> b!1044751 (=> (not res!695866) (not e!592184))))

(assert (=> b!1044751 (= res!695866 (contains!6094 lt!460988 (select (arr!31665 (_keys!11668 (_2!7943 lt!460858))) #b00000000000000000000000000000000)))))

(assert (=> b!1044751 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32201 (_keys!11668 (_2!7943 lt!460858)))))))

(declare-fun bm!44415 () Bool)

(declare-fun call!44421 () ListLongMap!13895)

(assert (=> bm!44415 (= call!44421 (getCurrentListMapNoExtraKeys!3540 (_keys!11668 (_2!7943 lt!460858)) (_values!6428 (_2!7943 lt!460858)) (mask!30513 (_2!7943 lt!460858)) (extraKeys!6133 (_2!7943 lt!460858)) (zeroValue!6239 (_2!7943 lt!460858)) (minValue!6239 (_2!7943 lt!460858)) #b00000000000000000000000000000000 (defaultEntry!6405 (_2!7943 lt!460858))))))

(declare-fun b!1044752 () Bool)

(assert (=> b!1044752 (= e!592177 (validKeyInArray!0 (select (arr!31665 (_keys!11668 (_2!7943 lt!460858))) #b00000000000000000000000000000000)))))

(declare-fun bm!44416 () Bool)

(declare-fun call!44418 () ListLongMap!13895)

(declare-fun call!44422 () ListLongMap!13895)

(assert (=> bm!44416 (= call!44418 call!44422)))

(declare-fun b!1044753 () Bool)

(declare-fun e!592174 () Bool)

(assert (=> b!1044753 (= e!592174 (validKeyInArray!0 (select (arr!31665 (_keys!11668 (_2!7943 lt!460858))) #b00000000000000000000000000000000)))))

(declare-fun bm!44417 () Bool)

(assert (=> bm!44417 (= call!44423 call!44419)))

(declare-fun b!1044754 () Bool)

(declare-fun e!592179 () Bool)

(declare-fun e!592186 () Bool)

(assert (=> b!1044754 (= e!592179 e!592186)))

(declare-fun res!695869 () Bool)

(declare-fun call!44417 () Bool)

(assert (=> b!1044754 (= res!695869 call!44417)))

(assert (=> b!1044754 (=> (not res!695869) (not e!592186))))

(declare-fun b!1044755 () Bool)

(assert (=> b!1044755 (= e!592183 e!592179)))

(declare-fun c!106117 () Bool)

(assert (=> b!1044755 (= c!106117 (not (= (bvand (extraKeys!6133 (_2!7943 lt!460858)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!44418 () Bool)

(assert (=> bm!44418 (= call!44417 (contains!6094 lt!460988 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1044756 () Bool)

(assert (=> b!1044756 (= e!592184 (= (apply!947 lt!460988 (select (arr!31665 (_keys!11668 (_2!7943 lt!460858))) #b00000000000000000000000000000000)) (get!16564 (select (arr!31666 (_values!6428 (_2!7943 lt!460858))) #b00000000000000000000000000000000) (dynLambda!2013 (defaultEntry!6405 (_2!7943 lt!460858)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1044756 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32202 (_values!6428 (_2!7943 lt!460858)))))))

(assert (=> b!1044756 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32201 (_keys!11668 (_2!7943 lt!460858)))))))

(declare-fun b!1044757 () Bool)

(assert (=> b!1044757 (= e!592176 call!44418)))

(declare-fun b!1044758 () Bool)

(assert (=> b!1044758 (= e!592176 call!44423)))

(declare-fun b!1044759 () Bool)

(assert (=> b!1044759 (= e!592179 (not call!44417))))

(declare-fun b!1044760 () Bool)

(declare-fun Unit!34115 () Unit!34108)

(assert (=> b!1044760 (= e!592180 Unit!34115)))

(declare-fun b!1044761 () Bool)

(assert (=> b!1044761 (= e!592186 (= (apply!947 lt!460988 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6239 (_2!7943 lt!460858))))))

(declare-fun b!1044762 () Bool)

(declare-fun res!695865 () Bool)

(assert (=> b!1044762 (=> (not res!695865) (not e!592183))))

(assert (=> b!1044762 (= res!695865 e!592182)))

(declare-fun res!695863 () Bool)

(assert (=> b!1044762 (=> res!695863 e!592182)))

(assert (=> b!1044762 (= res!695863 (not e!592174))))

(declare-fun res!695868 () Bool)

(assert (=> b!1044762 (=> (not res!695868) (not e!592174))))

(assert (=> b!1044762 (= res!695868 (bvslt #b00000000000000000000000000000000 (size!32201 (_keys!11668 (_2!7943 lt!460858)))))))

(declare-fun b!1044763 () Bool)

(declare-fun res!695862 () Bool)

(assert (=> b!1044763 (=> (not res!695862) (not e!592183))))

(assert (=> b!1044763 (= res!695862 e!592178)))

(declare-fun c!106119 () Bool)

(assert (=> b!1044763 (= c!106119 (not (= (bvand (extraKeys!6133 (_2!7943 lt!460858)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1044764 () Bool)

(assert (=> b!1044764 (= e!592178 e!592181)))

(declare-fun res!695861 () Bool)

(assert (=> b!1044764 (= res!695861 call!44420)))

(assert (=> b!1044764 (=> (not res!695861) (not e!592181))))

(declare-fun bm!44419 () Bool)

(assert (=> bm!44419 (= call!44422 call!44421)))

(declare-fun bm!44420 () Bool)

(assert (=> bm!44420 (= call!44419 (+!3070 (ite c!106118 call!44421 (ite c!106116 call!44422 call!44418)) (ite (or c!106118 c!106116) (tuple2!15869 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6239 (_2!7943 lt!460858))) (tuple2!15869 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6239 (_2!7943 lt!460858))))))))

(assert (= (and d!126389 c!106118) b!1044747))

(assert (= (and d!126389 (not c!106118)) b!1044746))

(assert (= (and b!1044746 c!106116) b!1044748))

(assert (= (and b!1044746 (not c!106116)) b!1044745))

(assert (= (and b!1044745 c!106114) b!1044758))

(assert (= (and b!1044745 (not c!106114)) b!1044757))

(assert (= (or b!1044758 b!1044757) bm!44416))

(assert (= (or b!1044748 bm!44416) bm!44419))

(assert (= (or b!1044748 b!1044758) bm!44417))

(assert (= (or b!1044747 bm!44419) bm!44415))

(assert (= (or b!1044747 bm!44417) bm!44420))

(assert (= (and d!126389 res!695867) b!1044752))

(assert (= (and d!126389 c!106115) b!1044750))

(assert (= (and d!126389 (not c!106115)) b!1044760))

(assert (= (and d!126389 res!695864) b!1044762))

(assert (= (and b!1044762 res!695868) b!1044753))

(assert (= (and b!1044762 (not res!695863)) b!1044751))

(assert (= (and b!1044751 res!695866) b!1044756))

(assert (= (and b!1044762 res!695865) b!1044763))

(assert (= (and b!1044763 c!106119) b!1044764))

(assert (= (and b!1044763 (not c!106119)) b!1044744))

(assert (= (and b!1044764 res!695861) b!1044749))

(assert (= (or b!1044764 b!1044744) bm!44414))

(assert (= (and b!1044763 res!695862) b!1044755))

(assert (= (and b!1044755 c!106117) b!1044754))

(assert (= (and b!1044755 (not c!106117)) b!1044759))

(assert (= (and b!1044754 res!695869) b!1044761))

(assert (= (or b!1044754 b!1044759) bm!44418))

(declare-fun b_lambda!16283 () Bool)

(assert (=> (not b_lambda!16283) (not b!1044756)))

(declare-fun t!31392 () Bool)

(declare-fun tb!7079 () Bool)

(assert (=> (and b!1044590 (= (defaultEntry!6405 thiss!1427) (defaultEntry!6405 (_2!7943 lt!460858))) t!31392) tb!7079))

(declare-fun result!14575 () Bool)

(assert (=> tb!7079 (= result!14575 tp_is_empty!24843)))

(assert (=> b!1044756 t!31392))

(declare-fun b_and!33739 () Bool)

(assert (= b_and!33737 (and (=> t!31392 result!14575) b_and!33739)))

(declare-fun m!964415 () Bool)

(assert (=> bm!44420 m!964415))

(declare-fun m!964417 () Bool)

(assert (=> b!1044756 m!964417))

(declare-fun m!964419 () Bool)

(assert (=> b!1044756 m!964419))

(assert (=> b!1044756 m!964417))

(assert (=> b!1044756 m!964419))

(declare-fun m!964421 () Bool)

(assert (=> b!1044756 m!964421))

(declare-fun m!964423 () Bool)

(assert (=> b!1044756 m!964423))

(declare-fun m!964425 () Bool)

(assert (=> b!1044756 m!964425))

(assert (=> b!1044756 m!964423))

(declare-fun m!964427 () Bool)

(assert (=> bm!44414 m!964427))

(declare-fun m!964429 () Bool)

(assert (=> bm!44418 m!964429))

(assert (=> b!1044751 m!964423))

(assert (=> b!1044751 m!964423))

(declare-fun m!964431 () Bool)

(assert (=> b!1044751 m!964431))

(declare-fun m!964433 () Bool)

(assert (=> b!1044761 m!964433))

(declare-fun m!964435 () Bool)

(assert (=> bm!44415 m!964435))

(declare-fun m!964437 () Bool)

(assert (=> b!1044747 m!964437))

(declare-fun m!964439 () Bool)

(assert (=> b!1044750 m!964439))

(declare-fun m!964441 () Bool)

(assert (=> b!1044750 m!964441))

(declare-fun m!964443 () Bool)

(assert (=> b!1044750 m!964443))

(declare-fun m!964445 () Bool)

(assert (=> b!1044750 m!964445))

(declare-fun m!964447 () Bool)

(assert (=> b!1044750 m!964447))

(declare-fun m!964449 () Bool)

(assert (=> b!1044750 m!964449))

(assert (=> b!1044750 m!964435))

(declare-fun m!964451 () Bool)

(assert (=> b!1044750 m!964451))

(assert (=> b!1044750 m!964451))

(declare-fun m!964453 () Bool)

(assert (=> b!1044750 m!964453))

(declare-fun m!964455 () Bool)

(assert (=> b!1044750 m!964455))

(assert (=> b!1044750 m!964443))

(declare-fun m!964457 () Bool)

(assert (=> b!1044750 m!964457))

(declare-fun m!964459 () Bool)

(assert (=> b!1044750 m!964459))

(assert (=> b!1044750 m!964423))

(assert (=> b!1044750 m!964447))

(declare-fun m!964461 () Bool)

(assert (=> b!1044750 m!964461))

(declare-fun m!964463 () Bool)

(assert (=> b!1044750 m!964463))

(declare-fun m!964465 () Bool)

(assert (=> b!1044750 m!964465))

(declare-fun m!964467 () Bool)

(assert (=> b!1044750 m!964467))

(assert (=> b!1044750 m!964457))

(assert (=> b!1044752 m!964423))

(assert (=> b!1044752 m!964423))

(declare-fun m!964469 () Bool)

(assert (=> b!1044752 m!964469))

(declare-fun m!964471 () Bool)

(assert (=> b!1044749 m!964471))

(assert (=> d!126389 m!964269))

(assert (=> b!1044753 m!964423))

(assert (=> b!1044753 m!964423))

(assert (=> b!1044753 m!964469))

(assert (=> b!1044592 d!126389))

(declare-fun d!126391 () Bool)

(declare-fun e!592191 () Bool)

(assert (=> d!126391 e!592191))

(declare-fun res!695872 () Bool)

(assert (=> d!126391 (=> res!695872 e!592191)))

(declare-fun lt!461008 () Bool)

(assert (=> d!126391 (= res!695872 (not lt!461008))))

(declare-fun lt!461011 () Bool)

(assert (=> d!126391 (= lt!461008 lt!461011)))

(declare-fun lt!461010 () Unit!34108)

(declare-fun e!592192 () Unit!34108)

(assert (=> d!126391 (= lt!461010 e!592192)))

(declare-fun c!106122 () Bool)

(assert (=> d!126391 (= c!106122 lt!461011)))

(declare-fun containsKey!568 (List!22134 (_ BitVec 64)) Bool)

(assert (=> d!126391 (= lt!461011 (containsKey!568 (toList!6963 (getCurrentListMap!3969 (_keys!11668 (_2!7943 lt!460858)) (_values!6428 (_2!7943 lt!460858)) (mask!30513 (_2!7943 lt!460858)) (extraKeys!6133 (_2!7943 lt!460858)) (zeroValue!6239 (_2!7943 lt!460858)) (minValue!6239 (_2!7943 lt!460858)) #b00000000000000000000000000000000 (defaultEntry!6405 (_2!7943 lt!460858)))) key!909))))

(assert (=> d!126391 (= (contains!6094 (getCurrentListMap!3969 (_keys!11668 (_2!7943 lt!460858)) (_values!6428 (_2!7943 lt!460858)) (mask!30513 (_2!7943 lt!460858)) (extraKeys!6133 (_2!7943 lt!460858)) (zeroValue!6239 (_2!7943 lt!460858)) (minValue!6239 (_2!7943 lt!460858)) #b00000000000000000000000000000000 (defaultEntry!6405 (_2!7943 lt!460858))) key!909) lt!461008)))

(declare-fun b!1044771 () Bool)

(declare-fun lt!461009 () Unit!34108)

(assert (=> b!1044771 (= e!592192 lt!461009)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!400 (List!22134 (_ BitVec 64)) Unit!34108)

(assert (=> b!1044771 (= lt!461009 (lemmaContainsKeyImpliesGetValueByKeyDefined!400 (toList!6963 (getCurrentListMap!3969 (_keys!11668 (_2!7943 lt!460858)) (_values!6428 (_2!7943 lt!460858)) (mask!30513 (_2!7943 lt!460858)) (extraKeys!6133 (_2!7943 lt!460858)) (zeroValue!6239 (_2!7943 lt!460858)) (minValue!6239 (_2!7943 lt!460858)) #b00000000000000000000000000000000 (defaultEntry!6405 (_2!7943 lt!460858)))) key!909))))

(declare-datatypes ((Option!646 0))(
  ( (Some!645 (v!15068 V!37997)) (None!644) )
))
(declare-fun isDefined!440 (Option!646) Bool)

(declare-fun getValueByKey!595 (List!22134 (_ BitVec 64)) Option!646)

(assert (=> b!1044771 (isDefined!440 (getValueByKey!595 (toList!6963 (getCurrentListMap!3969 (_keys!11668 (_2!7943 lt!460858)) (_values!6428 (_2!7943 lt!460858)) (mask!30513 (_2!7943 lt!460858)) (extraKeys!6133 (_2!7943 lt!460858)) (zeroValue!6239 (_2!7943 lt!460858)) (minValue!6239 (_2!7943 lt!460858)) #b00000000000000000000000000000000 (defaultEntry!6405 (_2!7943 lt!460858)))) key!909))))

(declare-fun b!1044772 () Bool)

(declare-fun Unit!34116 () Unit!34108)

(assert (=> b!1044772 (= e!592192 Unit!34116)))

(declare-fun b!1044773 () Bool)

(assert (=> b!1044773 (= e!592191 (isDefined!440 (getValueByKey!595 (toList!6963 (getCurrentListMap!3969 (_keys!11668 (_2!7943 lt!460858)) (_values!6428 (_2!7943 lt!460858)) (mask!30513 (_2!7943 lt!460858)) (extraKeys!6133 (_2!7943 lt!460858)) (zeroValue!6239 (_2!7943 lt!460858)) (minValue!6239 (_2!7943 lt!460858)) #b00000000000000000000000000000000 (defaultEntry!6405 (_2!7943 lt!460858)))) key!909)))))

(assert (= (and d!126391 c!106122) b!1044771))

(assert (= (and d!126391 (not c!106122)) b!1044772))

(assert (= (and d!126391 (not res!695872)) b!1044773))

(declare-fun m!964473 () Bool)

(assert (=> d!126391 m!964473))

(declare-fun m!964475 () Bool)

(assert (=> b!1044771 m!964475))

(declare-fun m!964477 () Bool)

(assert (=> b!1044771 m!964477))

(assert (=> b!1044771 m!964477))

(declare-fun m!964479 () Bool)

(assert (=> b!1044771 m!964479))

(assert (=> b!1044773 m!964477))

(assert (=> b!1044773 m!964477))

(assert (=> b!1044773 m!964479))

(assert (=> b!1044592 d!126391))

(declare-fun d!126393 () Bool)

(declare-fun e!592202 () Bool)

(assert (=> d!126393 e!592202))

(declare-fun res!695876 () Bool)

(assert (=> d!126393 (=> (not res!695876) (not e!592202))))

(assert (=> d!126393 (= res!695876 (or (bvsge #b00000000000000000000000000000000 (size!32201 lt!460865)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32201 lt!460865)))))))

(declare-fun lt!461022 () ListLongMap!13895)

(declare-fun lt!461013 () ListLongMap!13895)

(assert (=> d!126393 (= lt!461022 lt!461013)))

(declare-fun lt!461030 () Unit!34108)

(declare-fun e!592199 () Unit!34108)

(assert (=> d!126393 (= lt!461030 e!592199)))

(declare-fun c!106124 () Bool)

(declare-fun e!592196 () Bool)

(assert (=> d!126393 (= c!106124 e!592196)))

(declare-fun res!695879 () Bool)

(assert (=> d!126393 (=> (not res!695879) (not e!592196))))

(assert (=> d!126393 (= res!695879 (bvslt #b00000000000000000000000000000000 (size!32201 lt!460865)))))

(declare-fun e!592204 () ListLongMap!13895)

(assert (=> d!126393 (= lt!461013 e!592204)))

(declare-fun c!106127 () Bool)

(assert (=> d!126393 (= c!106127 (and (not (= (bvand (extraKeys!6133 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6133 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!126393 (validMask!0 (mask!30513 thiss!1427))))

(assert (=> d!126393 (= (getCurrentListMap!3969 lt!460865 lt!460864 (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6405 thiss!1427)) lt!461022)))

(declare-fun b!1044774 () Bool)

(declare-fun e!592197 () Bool)

(declare-fun call!44427 () Bool)

(assert (=> b!1044774 (= e!592197 (not call!44427))))

(declare-fun b!1044775 () Bool)

(declare-fun c!106123 () Bool)

(assert (=> b!1044775 (= c!106123 (and (not (= (bvand (extraKeys!6133 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6133 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!592194 () ListLongMap!13895)

(declare-fun e!592195 () ListLongMap!13895)

(assert (=> b!1044775 (= e!592194 e!592195)))

(declare-fun b!1044776 () Bool)

(assert (=> b!1044776 (= e!592204 e!592194)))

(declare-fun c!106125 () Bool)

(assert (=> b!1044776 (= c!106125 (and (not (= (bvand (extraKeys!6133 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6133 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1044777 () Bool)

(declare-fun call!44426 () ListLongMap!13895)

(assert (=> b!1044777 (= e!592204 (+!3070 call!44426 (tuple2!15869 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6239 thiss!1427))))))

(declare-fun b!1044778 () Bool)

(declare-fun call!44430 () ListLongMap!13895)

(assert (=> b!1044778 (= e!592194 call!44430)))

(declare-fun bm!44421 () Bool)

(assert (=> bm!44421 (= call!44427 (contains!6094 lt!461022 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1044779 () Bool)

(declare-fun e!592200 () Bool)

(assert (=> b!1044779 (= e!592200 (= (apply!947 lt!461022 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6239 thiss!1427)))))

(declare-fun b!1044780 () Bool)

(declare-fun lt!461012 () Unit!34108)

(assert (=> b!1044780 (= e!592199 lt!461012)))

(declare-fun lt!461026 () ListLongMap!13895)

(assert (=> b!1044780 (= lt!461026 (getCurrentListMapNoExtraKeys!3540 lt!460865 lt!460864 (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6405 thiss!1427)))))

(declare-fun lt!461020 () (_ BitVec 64))

(assert (=> b!1044780 (= lt!461020 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461014 () (_ BitVec 64))

(assert (=> b!1044780 (= lt!461014 (select (arr!31665 lt!460865) #b00000000000000000000000000000000))))

(declare-fun lt!461019 () Unit!34108)

(assert (=> b!1044780 (= lt!461019 (addStillContains!635 lt!461026 lt!461020 (zeroValue!6239 thiss!1427) lt!461014))))

(assert (=> b!1044780 (contains!6094 (+!3070 lt!461026 (tuple2!15869 lt!461020 (zeroValue!6239 thiss!1427))) lt!461014)))

(declare-fun lt!461015 () Unit!34108)

(assert (=> b!1044780 (= lt!461015 lt!461019)))

(declare-fun lt!461033 () ListLongMap!13895)

(assert (=> b!1044780 (= lt!461033 (getCurrentListMapNoExtraKeys!3540 lt!460865 lt!460864 (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6405 thiss!1427)))))

(declare-fun lt!461031 () (_ BitVec 64))

(assert (=> b!1044780 (= lt!461031 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461028 () (_ BitVec 64))

(assert (=> b!1044780 (= lt!461028 (select (arr!31665 lt!460865) #b00000000000000000000000000000000))))

(declare-fun lt!461025 () Unit!34108)

(assert (=> b!1044780 (= lt!461025 (addApplyDifferent!487 lt!461033 lt!461031 (minValue!6239 thiss!1427) lt!461028))))

(assert (=> b!1044780 (= (apply!947 (+!3070 lt!461033 (tuple2!15869 lt!461031 (minValue!6239 thiss!1427))) lt!461028) (apply!947 lt!461033 lt!461028))))

(declare-fun lt!461018 () Unit!34108)

(assert (=> b!1044780 (= lt!461018 lt!461025)))

(declare-fun lt!461017 () ListLongMap!13895)

(assert (=> b!1044780 (= lt!461017 (getCurrentListMapNoExtraKeys!3540 lt!460865 lt!460864 (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6405 thiss!1427)))))

(declare-fun lt!461032 () (_ BitVec 64))

(assert (=> b!1044780 (= lt!461032 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461024 () (_ BitVec 64))

(assert (=> b!1044780 (= lt!461024 (select (arr!31665 lt!460865) #b00000000000000000000000000000000))))

(declare-fun lt!461023 () Unit!34108)

(assert (=> b!1044780 (= lt!461023 (addApplyDifferent!487 lt!461017 lt!461032 (zeroValue!6239 thiss!1427) lt!461024))))

(assert (=> b!1044780 (= (apply!947 (+!3070 lt!461017 (tuple2!15869 lt!461032 (zeroValue!6239 thiss!1427))) lt!461024) (apply!947 lt!461017 lt!461024))))

(declare-fun lt!461027 () Unit!34108)

(assert (=> b!1044780 (= lt!461027 lt!461023)))

(declare-fun lt!461016 () ListLongMap!13895)

(assert (=> b!1044780 (= lt!461016 (getCurrentListMapNoExtraKeys!3540 lt!460865 lt!460864 (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6405 thiss!1427)))))

(declare-fun lt!461021 () (_ BitVec 64))

(assert (=> b!1044780 (= lt!461021 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461029 () (_ BitVec 64))

(assert (=> b!1044780 (= lt!461029 (select (arr!31665 lt!460865) #b00000000000000000000000000000000))))

(assert (=> b!1044780 (= lt!461012 (addApplyDifferent!487 lt!461016 lt!461021 (minValue!6239 thiss!1427) lt!461029))))

(assert (=> b!1044780 (= (apply!947 (+!3070 lt!461016 (tuple2!15869 lt!461021 (minValue!6239 thiss!1427))) lt!461029) (apply!947 lt!461016 lt!461029))))

(declare-fun b!1044781 () Bool)

(declare-fun e!592201 () Bool)

(declare-fun e!592203 () Bool)

(assert (=> b!1044781 (= e!592201 e!592203)))

(declare-fun res!695878 () Bool)

(assert (=> b!1044781 (=> (not res!695878) (not e!592203))))

(assert (=> b!1044781 (= res!695878 (contains!6094 lt!461022 (select (arr!31665 lt!460865) #b00000000000000000000000000000000)))))

(assert (=> b!1044781 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32201 lt!460865)))))

(declare-fun call!44428 () ListLongMap!13895)

(declare-fun bm!44422 () Bool)

(assert (=> bm!44422 (= call!44428 (getCurrentListMapNoExtraKeys!3540 lt!460865 lt!460864 (mask!30513 thiss!1427) (extraKeys!6133 thiss!1427) (zeroValue!6239 thiss!1427) (minValue!6239 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6405 thiss!1427)))))

(declare-fun b!1044782 () Bool)

(assert (=> b!1044782 (= e!592196 (validKeyInArray!0 (select (arr!31665 lt!460865) #b00000000000000000000000000000000)))))

(declare-fun bm!44423 () Bool)

(declare-fun call!44425 () ListLongMap!13895)

(declare-fun call!44429 () ListLongMap!13895)

(assert (=> bm!44423 (= call!44425 call!44429)))

(declare-fun b!1044783 () Bool)

(declare-fun e!592193 () Bool)

(assert (=> b!1044783 (= e!592193 (validKeyInArray!0 (select (arr!31665 lt!460865) #b00000000000000000000000000000000)))))

(declare-fun bm!44424 () Bool)

(assert (=> bm!44424 (= call!44430 call!44426)))

(declare-fun b!1044784 () Bool)

(declare-fun e!592198 () Bool)

(declare-fun e!592205 () Bool)

(assert (=> b!1044784 (= e!592198 e!592205)))

(declare-fun res!695881 () Bool)

(declare-fun call!44424 () Bool)

(assert (=> b!1044784 (= res!695881 call!44424)))

(assert (=> b!1044784 (=> (not res!695881) (not e!592205))))

(declare-fun b!1044785 () Bool)

(assert (=> b!1044785 (= e!592202 e!592198)))

(declare-fun c!106126 () Bool)

(assert (=> b!1044785 (= c!106126 (not (= (bvand (extraKeys!6133 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!44425 () Bool)

(assert (=> bm!44425 (= call!44424 (contains!6094 lt!461022 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1044786 () Bool)

(assert (=> b!1044786 (= e!592203 (= (apply!947 lt!461022 (select (arr!31665 lt!460865) #b00000000000000000000000000000000)) (get!16564 (select (arr!31666 lt!460864) #b00000000000000000000000000000000) (dynLambda!2013 (defaultEntry!6405 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1044786 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32202 lt!460864)))))

(assert (=> b!1044786 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32201 lt!460865)))))

(declare-fun b!1044787 () Bool)

(assert (=> b!1044787 (= e!592195 call!44425)))

(declare-fun b!1044788 () Bool)

(assert (=> b!1044788 (= e!592195 call!44430)))

(declare-fun b!1044789 () Bool)

(assert (=> b!1044789 (= e!592198 (not call!44424))))

(declare-fun b!1044790 () Bool)

(declare-fun Unit!34117 () Unit!34108)

(assert (=> b!1044790 (= e!592199 Unit!34117)))

(declare-fun b!1044791 () Bool)

(assert (=> b!1044791 (= e!592205 (= (apply!947 lt!461022 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6239 thiss!1427)))))

(declare-fun b!1044792 () Bool)

(declare-fun res!695877 () Bool)

(assert (=> b!1044792 (=> (not res!695877) (not e!592202))))

(assert (=> b!1044792 (= res!695877 e!592201)))

(declare-fun res!695875 () Bool)

(assert (=> b!1044792 (=> res!695875 e!592201)))

(assert (=> b!1044792 (= res!695875 (not e!592193))))

(declare-fun res!695880 () Bool)

(assert (=> b!1044792 (=> (not res!695880) (not e!592193))))

(assert (=> b!1044792 (= res!695880 (bvslt #b00000000000000000000000000000000 (size!32201 lt!460865)))))

(declare-fun b!1044793 () Bool)

(declare-fun res!695874 () Bool)

(assert (=> b!1044793 (=> (not res!695874) (not e!592202))))

(assert (=> b!1044793 (= res!695874 e!592197)))

(declare-fun c!106128 () Bool)

(assert (=> b!1044793 (= c!106128 (not (= (bvand (extraKeys!6133 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1044794 () Bool)

(assert (=> b!1044794 (= e!592197 e!592200)))

(declare-fun res!695873 () Bool)

(assert (=> b!1044794 (= res!695873 call!44427)))

(assert (=> b!1044794 (=> (not res!695873) (not e!592200))))

(declare-fun bm!44426 () Bool)

(assert (=> bm!44426 (= call!44429 call!44428)))

(declare-fun bm!44427 () Bool)

(assert (=> bm!44427 (= call!44426 (+!3070 (ite c!106127 call!44428 (ite c!106125 call!44429 call!44425)) (ite (or c!106127 c!106125) (tuple2!15869 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6239 thiss!1427)) (tuple2!15869 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6239 thiss!1427)))))))

(assert (= (and d!126393 c!106127) b!1044777))

(assert (= (and d!126393 (not c!106127)) b!1044776))

(assert (= (and b!1044776 c!106125) b!1044778))

(assert (= (and b!1044776 (not c!106125)) b!1044775))

(assert (= (and b!1044775 c!106123) b!1044788))

(assert (= (and b!1044775 (not c!106123)) b!1044787))

(assert (= (or b!1044788 b!1044787) bm!44423))

(assert (= (or b!1044778 bm!44423) bm!44426))

(assert (= (or b!1044778 b!1044788) bm!44424))

(assert (= (or b!1044777 bm!44426) bm!44422))

(assert (= (or b!1044777 bm!44424) bm!44427))

(assert (= (and d!126393 res!695879) b!1044782))

(assert (= (and d!126393 c!106124) b!1044780))

(assert (= (and d!126393 (not c!106124)) b!1044790))

(assert (= (and d!126393 res!695876) b!1044792))

(assert (= (and b!1044792 res!695880) b!1044783))

(assert (= (and b!1044792 (not res!695875)) b!1044781))

(assert (= (and b!1044781 res!695878) b!1044786))

(assert (= (and b!1044792 res!695877) b!1044793))

(assert (= (and b!1044793 c!106128) b!1044794))

(assert (= (and b!1044793 (not c!106128)) b!1044774))

(assert (= (and b!1044794 res!695873) b!1044779))

(assert (= (or b!1044794 b!1044774) bm!44421))

(assert (= (and b!1044793 res!695874) b!1044785))

(assert (= (and b!1044785 c!106126) b!1044784))

(assert (= (and b!1044785 (not c!106126)) b!1044789))

(assert (= (and b!1044784 res!695881) b!1044791))

(assert (= (or b!1044784 b!1044789) bm!44425))

(declare-fun b_lambda!16285 () Bool)

(assert (=> (not b_lambda!16285) (not b!1044786)))

(assert (=> b!1044786 t!31386))

(declare-fun b_and!33741 () Bool)

(assert (= b_and!33739 (and (=> t!31386 result!14567) b_and!33741)))

(declare-fun m!964481 () Bool)

(assert (=> bm!44427 m!964481))

(declare-fun m!964483 () Bool)

(assert (=> b!1044786 m!964483))

(assert (=> b!1044786 m!964235))

(assert (=> b!1044786 m!964483))

(assert (=> b!1044786 m!964235))

(declare-fun m!964485 () Bool)

(assert (=> b!1044786 m!964485))

(assert (=> b!1044786 m!964319))

(declare-fun m!964487 () Bool)

(assert (=> b!1044786 m!964487))

(assert (=> b!1044786 m!964319))

(declare-fun m!964489 () Bool)

(assert (=> bm!44421 m!964489))

(declare-fun m!964491 () Bool)

(assert (=> bm!44425 m!964491))

(assert (=> b!1044781 m!964319))

(assert (=> b!1044781 m!964319))

(declare-fun m!964493 () Bool)

(assert (=> b!1044781 m!964493))

(declare-fun m!964495 () Bool)

(assert (=> b!1044791 m!964495))

(declare-fun m!964497 () Bool)

(assert (=> bm!44422 m!964497))

(declare-fun m!964499 () Bool)

(assert (=> b!1044777 m!964499))

(declare-fun m!964501 () Bool)

(assert (=> b!1044780 m!964501))

(declare-fun m!964503 () Bool)

(assert (=> b!1044780 m!964503))

(declare-fun m!964505 () Bool)

(assert (=> b!1044780 m!964505))

(declare-fun m!964507 () Bool)

(assert (=> b!1044780 m!964507))

(declare-fun m!964509 () Bool)

(assert (=> b!1044780 m!964509))

(declare-fun m!964511 () Bool)

(assert (=> b!1044780 m!964511))

(assert (=> b!1044780 m!964497))

(declare-fun m!964513 () Bool)

(assert (=> b!1044780 m!964513))

(assert (=> b!1044780 m!964513))

(declare-fun m!964515 () Bool)

(assert (=> b!1044780 m!964515))

(declare-fun m!964517 () Bool)

(assert (=> b!1044780 m!964517))

(assert (=> b!1044780 m!964505))

(declare-fun m!964519 () Bool)

(assert (=> b!1044780 m!964519))

(declare-fun m!964521 () Bool)

(assert (=> b!1044780 m!964521))

(assert (=> b!1044780 m!964319))

(assert (=> b!1044780 m!964509))

(declare-fun m!964523 () Bool)

(assert (=> b!1044780 m!964523))

(declare-fun m!964525 () Bool)

(assert (=> b!1044780 m!964525))

(declare-fun m!964527 () Bool)

(assert (=> b!1044780 m!964527))

(declare-fun m!964529 () Bool)

(assert (=> b!1044780 m!964529))

(assert (=> b!1044780 m!964519))

(assert (=> b!1044782 m!964319))

(assert (=> b!1044782 m!964319))

(assert (=> b!1044782 m!964327))

(declare-fun m!964531 () Bool)

(assert (=> b!1044779 m!964531))

(assert (=> d!126393 m!964341))

(assert (=> b!1044783 m!964319))

(assert (=> b!1044783 m!964319))

(assert (=> b!1044783 m!964327))

(assert (=> b!1044592 d!126393))

(declare-fun d!126395 () Bool)

(declare-fun e!592208 () Bool)

(assert (=> d!126395 e!592208))

(declare-fun res!695884 () Bool)

(assert (=> d!126395 (=> (not res!695884) (not e!592208))))

(assert (=> d!126395 (= res!695884 (and (bvsge (index!41731 lt!460860) #b00000000000000000000000000000000) (bvslt (index!41731 lt!460860) (size!32201 (_keys!11668 thiss!1427)))))))

(declare-fun lt!461036 () Unit!34108)

(declare-fun choose!25 (array!65840 (_ BitVec 32) (_ BitVec 32)) Unit!34108)

(assert (=> d!126395 (= lt!461036 (choose!25 (_keys!11668 thiss!1427) (index!41731 lt!460860) (mask!30513 thiss!1427)))))

(assert (=> d!126395 (validMask!0 (mask!30513 thiss!1427))))

(assert (=> d!126395 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11668 thiss!1427) (index!41731 lt!460860) (mask!30513 thiss!1427)) lt!461036)))

(declare-fun b!1044797 () Bool)

(assert (=> b!1044797 (= e!592208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65841 (store (arr!31665 (_keys!11668 thiss!1427)) (index!41731 lt!460860) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32201 (_keys!11668 thiss!1427))) (mask!30513 thiss!1427)))))

(assert (= (and d!126395 res!695884) b!1044797))

(declare-fun m!964533 () Bool)

(assert (=> d!126395 m!964533))

(assert (=> d!126395 m!964341))

(assert (=> b!1044797 m!964257))

(declare-fun m!964535 () Bool)

(assert (=> b!1044797 m!964535))

(assert (=> b!1044592 d!126395))

(declare-fun bm!44428 () Bool)

(declare-fun call!44431 () (_ BitVec 32))

(assert (=> bm!44428 (= call!44431 (arrayCountValidKeys!0 (_keys!11668 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32201 (_keys!11668 thiss!1427))))))

(declare-fun b!1044798 () Bool)

(declare-fun e!592210 () (_ BitVec 32))

(assert (=> b!1044798 (= e!592210 call!44431)))

(declare-fun b!1044799 () Bool)

(declare-fun e!592209 () (_ BitVec 32))

(assert (=> b!1044799 (= e!592209 #b00000000000000000000000000000000)))

(declare-fun b!1044800 () Bool)

(assert (=> b!1044800 (= e!592210 (bvadd #b00000000000000000000000000000001 call!44431))))

(declare-fun b!1044801 () Bool)

(assert (=> b!1044801 (= e!592209 e!592210)))

(declare-fun c!106130 () Bool)

(assert (=> b!1044801 (= c!106130 (validKeyInArray!0 (select (arr!31665 (_keys!11668 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!126397 () Bool)

(declare-fun lt!461037 () (_ BitVec 32))

(assert (=> d!126397 (and (bvsge lt!461037 #b00000000000000000000000000000000) (bvsle lt!461037 (bvsub (size!32201 (_keys!11668 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!126397 (= lt!461037 e!592209)))

(declare-fun c!106129 () Bool)

(assert (=> d!126397 (= c!106129 (bvsge #b00000000000000000000000000000000 (size!32201 (_keys!11668 thiss!1427))))))

(assert (=> d!126397 (and (bvsle #b00000000000000000000000000000000 (size!32201 (_keys!11668 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32201 (_keys!11668 thiss!1427)) (size!32201 (_keys!11668 thiss!1427))))))

(assert (=> d!126397 (= (arrayCountValidKeys!0 (_keys!11668 thiss!1427) #b00000000000000000000000000000000 (size!32201 (_keys!11668 thiss!1427))) lt!461037)))

(assert (= (and d!126397 c!106129) b!1044799))

(assert (= (and d!126397 (not c!106129)) b!1044801))

(assert (= (and b!1044801 c!106130) b!1044800))

(assert (= (and b!1044801 (not c!106130)) b!1044798))

(assert (= (or b!1044800 b!1044798) bm!44428))

(declare-fun m!964537 () Bool)

(assert (=> bm!44428 m!964537))

(assert (=> b!1044801 m!964365))

(assert (=> b!1044801 m!964365))

(assert (=> b!1044801 m!964411))

(assert (=> b!1044592 d!126397))

(declare-fun bm!44431 () Bool)

(declare-fun call!44434 () Bool)

(assert (=> bm!44431 (= call!44434 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!460865 (mask!30513 thiss!1427)))))

(declare-fun d!126399 () Bool)

(declare-fun res!695889 () Bool)

(declare-fun e!592219 () Bool)

(assert (=> d!126399 (=> res!695889 e!592219)))

(assert (=> d!126399 (= res!695889 (bvsge #b00000000000000000000000000000000 (size!32201 lt!460865)))))

(assert (=> d!126399 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!460865 (mask!30513 thiss!1427)) e!592219)))

(declare-fun b!1044810 () Bool)

(declare-fun e!592218 () Bool)

(assert (=> b!1044810 (= e!592219 e!592218)))

(declare-fun c!106133 () Bool)

(assert (=> b!1044810 (= c!106133 (validKeyInArray!0 (select (arr!31665 lt!460865) #b00000000000000000000000000000000)))))

(declare-fun b!1044811 () Bool)

(assert (=> b!1044811 (= e!592218 call!44434)))

(declare-fun b!1044812 () Bool)

(declare-fun e!592217 () Bool)

(assert (=> b!1044812 (= e!592217 call!44434)))

(declare-fun b!1044813 () Bool)

(assert (=> b!1044813 (= e!592218 e!592217)))

(declare-fun lt!461044 () (_ BitVec 64))

(assert (=> b!1044813 (= lt!461044 (select (arr!31665 lt!460865) #b00000000000000000000000000000000))))

(declare-fun lt!461045 () Unit!34108)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65840 (_ BitVec 64) (_ BitVec 32)) Unit!34108)

(assert (=> b!1044813 (= lt!461045 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!460865 lt!461044 #b00000000000000000000000000000000))))

(assert (=> b!1044813 (arrayContainsKey!0 lt!460865 lt!461044 #b00000000000000000000000000000000)))

(declare-fun lt!461046 () Unit!34108)

(assert (=> b!1044813 (= lt!461046 lt!461045)))

(declare-fun res!695890 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65840 (_ BitVec 32)) SeekEntryResult!9840)

(assert (=> b!1044813 (= res!695890 (= (seekEntryOrOpen!0 (select (arr!31665 lt!460865) #b00000000000000000000000000000000) lt!460865 (mask!30513 thiss!1427)) (Found!9840 #b00000000000000000000000000000000)))))

(assert (=> b!1044813 (=> (not res!695890) (not e!592217))))

(assert (= (and d!126399 (not res!695889)) b!1044810))

(assert (= (and b!1044810 c!106133) b!1044813))

(assert (= (and b!1044810 (not c!106133)) b!1044811))

(assert (= (and b!1044813 res!695890) b!1044812))

(assert (= (or b!1044812 b!1044811) bm!44431))

(declare-fun m!964539 () Bool)

(assert (=> bm!44431 m!964539))

(assert (=> b!1044810 m!964319))

(assert (=> b!1044810 m!964319))

(assert (=> b!1044810 m!964327))

(assert (=> b!1044813 m!964319))

(declare-fun m!964541 () Bool)

(assert (=> b!1044813 m!964541))

(declare-fun m!964543 () Bool)

(assert (=> b!1044813 m!964543))

(assert (=> b!1044813 m!964319))

(declare-fun m!964545 () Bool)

(assert (=> b!1044813 m!964545))

(assert (=> b!1044592 d!126399))

(declare-fun d!126401 () Bool)

(declare-fun res!695897 () Bool)

(declare-fun e!592222 () Bool)

(assert (=> d!126401 (=> (not res!695897) (not e!592222))))

(declare-fun simpleValid!449 (LongMapFixedSize!6030) Bool)

(assert (=> d!126401 (= res!695897 (simpleValid!449 thiss!1427))))

(assert (=> d!126401 (= (valid!2217 thiss!1427) e!592222)))

(declare-fun b!1044820 () Bool)

(declare-fun res!695898 () Bool)

(assert (=> b!1044820 (=> (not res!695898) (not e!592222))))

(assert (=> b!1044820 (= res!695898 (= (arrayCountValidKeys!0 (_keys!11668 thiss!1427) #b00000000000000000000000000000000 (size!32201 (_keys!11668 thiss!1427))) (_size!3070 thiss!1427)))))

(declare-fun b!1044821 () Bool)

(declare-fun res!695899 () Bool)

(assert (=> b!1044821 (=> (not res!695899) (not e!592222))))

(assert (=> b!1044821 (= res!695899 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11668 thiss!1427) (mask!30513 thiss!1427)))))

(declare-fun b!1044822 () Bool)

(assert (=> b!1044822 (= e!592222 (arrayNoDuplicates!0 (_keys!11668 thiss!1427) #b00000000000000000000000000000000 Nil!22132))))

(assert (= (and d!126401 res!695897) b!1044820))

(assert (= (and b!1044820 res!695898) b!1044821))

(assert (= (and b!1044821 res!695899) b!1044822))

(declare-fun m!964547 () Bool)

(assert (=> d!126401 m!964547))

(assert (=> b!1044820 m!964241))

(declare-fun m!964549 () Bool)

(assert (=> b!1044821 m!964549))

(declare-fun m!964551 () Bool)

(assert (=> b!1044822 m!964551))

(assert (=> start!91850 d!126401))

(declare-fun d!126403 () Bool)

(assert (=> d!126403 (= (array_inv!24307 (_keys!11668 thiss!1427)) (bvsge (size!32201 (_keys!11668 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1044590 d!126403))

(declare-fun d!126405 () Bool)

(assert (=> d!126405 (= (array_inv!24308 (_values!6428 thiss!1427)) (bvsge (size!32202 (_values!6428 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1044590 d!126405))

(declare-fun b!1044835 () Bool)

(declare-fun e!592230 () SeekEntryResult!9840)

(declare-fun e!592229 () SeekEntryResult!9840)

(assert (=> b!1044835 (= e!592230 e!592229)))

(declare-fun lt!461055 () (_ BitVec 64))

(declare-fun lt!461058 () SeekEntryResult!9840)

(assert (=> b!1044835 (= lt!461055 (select (arr!31665 (_keys!11668 thiss!1427)) (index!41732 lt!461058)))))

(declare-fun c!106141 () Bool)

(assert (=> b!1044835 (= c!106141 (= lt!461055 key!909))))

(declare-fun b!1044836 () Bool)

(assert (=> b!1044836 (= e!592230 Undefined!9840)))

(declare-fun b!1044837 () Bool)

(declare-fun c!106142 () Bool)

(assert (=> b!1044837 (= c!106142 (= lt!461055 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!592231 () SeekEntryResult!9840)

(assert (=> b!1044837 (= e!592229 e!592231)))

(declare-fun d!126407 () Bool)

(declare-fun lt!461056 () SeekEntryResult!9840)

(assert (=> d!126407 (and (or ((_ is MissingVacant!9840) lt!461056) (not ((_ is Found!9840) lt!461056)) (and (bvsge (index!41731 lt!461056) #b00000000000000000000000000000000) (bvslt (index!41731 lt!461056) (size!32201 (_keys!11668 thiss!1427))))) (not ((_ is MissingVacant!9840) lt!461056)) (or (not ((_ is Found!9840) lt!461056)) (= (select (arr!31665 (_keys!11668 thiss!1427)) (index!41731 lt!461056)) key!909)))))

(assert (=> d!126407 (= lt!461056 e!592230)))

(declare-fun c!106140 () Bool)

(assert (=> d!126407 (= c!106140 (and ((_ is Intermediate!9840) lt!461058) (undefined!10652 lt!461058)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65840 (_ BitVec 32)) SeekEntryResult!9840)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!126407 (= lt!461058 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30513 thiss!1427)) key!909 (_keys!11668 thiss!1427) (mask!30513 thiss!1427)))))

(assert (=> d!126407 (validMask!0 (mask!30513 thiss!1427))))

(assert (=> d!126407 (= (seekEntry!0 key!909 (_keys!11668 thiss!1427) (mask!30513 thiss!1427)) lt!461056)))

(declare-fun b!1044838 () Bool)

(assert (=> b!1044838 (= e!592229 (Found!9840 (index!41732 lt!461058)))))

(declare-fun b!1044839 () Bool)

(assert (=> b!1044839 (= e!592231 (MissingZero!9840 (index!41732 lt!461058)))))

(declare-fun b!1044840 () Bool)

(declare-fun lt!461057 () SeekEntryResult!9840)

(assert (=> b!1044840 (= e!592231 (ite ((_ is MissingVacant!9840) lt!461057) (MissingZero!9840 (index!41733 lt!461057)) lt!461057))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65840 (_ BitVec 32)) SeekEntryResult!9840)

(assert (=> b!1044840 (= lt!461057 (seekKeyOrZeroReturnVacant!0 (x!93283 lt!461058) (index!41732 lt!461058) (index!41732 lt!461058) key!909 (_keys!11668 thiss!1427) (mask!30513 thiss!1427)))))

(assert (= (and d!126407 c!106140) b!1044836))

(assert (= (and d!126407 (not c!106140)) b!1044835))

(assert (= (and b!1044835 c!106141) b!1044838))

(assert (= (and b!1044835 (not c!106141)) b!1044837))

(assert (= (and b!1044837 c!106142) b!1044839))

(assert (= (and b!1044837 (not c!106142)) b!1044840))

(declare-fun m!964553 () Bool)

(assert (=> b!1044835 m!964553))

(declare-fun m!964555 () Bool)

(assert (=> d!126407 m!964555))

(declare-fun m!964557 () Bool)

(assert (=> d!126407 m!964557))

(assert (=> d!126407 m!964557))

(declare-fun m!964559 () Bool)

(assert (=> d!126407 m!964559))

(assert (=> d!126407 m!964341))

(declare-fun m!964561 () Bool)

(assert (=> b!1044840 m!964561))

(assert (=> b!1044595 d!126407))

(declare-fun d!126409 () Bool)

(assert (=> d!126409 (= (validMask!0 (mask!30513 (_2!7943 lt!460858))) (and (or (= (mask!30513 (_2!7943 lt!460858)) #b00000000000000000000000000000111) (= (mask!30513 (_2!7943 lt!460858)) #b00000000000000000000000000001111) (= (mask!30513 (_2!7943 lt!460858)) #b00000000000000000000000000011111) (= (mask!30513 (_2!7943 lt!460858)) #b00000000000000000000000000111111) (= (mask!30513 (_2!7943 lt!460858)) #b00000000000000000000000001111111) (= (mask!30513 (_2!7943 lt!460858)) #b00000000000000000000000011111111) (= (mask!30513 (_2!7943 lt!460858)) #b00000000000000000000000111111111) (= (mask!30513 (_2!7943 lt!460858)) #b00000000000000000000001111111111) (= (mask!30513 (_2!7943 lt!460858)) #b00000000000000000000011111111111) (= (mask!30513 (_2!7943 lt!460858)) #b00000000000000000000111111111111) (= (mask!30513 (_2!7943 lt!460858)) #b00000000000000000001111111111111) (= (mask!30513 (_2!7943 lt!460858)) #b00000000000000000011111111111111) (= (mask!30513 (_2!7943 lt!460858)) #b00000000000000000111111111111111) (= (mask!30513 (_2!7943 lt!460858)) #b00000000000000001111111111111111) (= (mask!30513 (_2!7943 lt!460858)) #b00000000000000011111111111111111) (= (mask!30513 (_2!7943 lt!460858)) #b00000000000000111111111111111111) (= (mask!30513 (_2!7943 lt!460858)) #b00000000000001111111111111111111) (= (mask!30513 (_2!7943 lt!460858)) #b00000000000011111111111111111111) (= (mask!30513 (_2!7943 lt!460858)) #b00000000000111111111111111111111) (= (mask!30513 (_2!7943 lt!460858)) #b00000000001111111111111111111111) (= (mask!30513 (_2!7943 lt!460858)) #b00000000011111111111111111111111) (= (mask!30513 (_2!7943 lt!460858)) #b00000000111111111111111111111111) (= (mask!30513 (_2!7943 lt!460858)) #b00000001111111111111111111111111) (= (mask!30513 (_2!7943 lt!460858)) #b00000011111111111111111111111111) (= (mask!30513 (_2!7943 lt!460858)) #b00000111111111111111111111111111) (= (mask!30513 (_2!7943 lt!460858)) #b00001111111111111111111111111111) (= (mask!30513 (_2!7943 lt!460858)) #b00011111111111111111111111111111) (= (mask!30513 (_2!7943 lt!460858)) #b00111111111111111111111111111111)) (bvsle (mask!30513 (_2!7943 lt!460858)) #b00111111111111111111111111111111)))))

(assert (=> b!1044587 d!126409))

(declare-fun mapIsEmpty!38903 () Bool)

(declare-fun mapRes!38903 () Bool)

(assert (=> mapIsEmpty!38903 mapRes!38903))

(declare-fun b!1044848 () Bool)

(declare-fun e!592237 () Bool)

(assert (=> b!1044848 (= e!592237 tp_is_empty!24843)))

(declare-fun b!1044847 () Bool)

(declare-fun e!592236 () Bool)

(assert (=> b!1044847 (= e!592236 tp_is_empty!24843)))

(declare-fun condMapEmpty!38903 () Bool)

(declare-fun mapDefault!38903 () ValueCell!11718)

(assert (=> mapNonEmpty!38897 (= condMapEmpty!38903 (= mapRest!38897 ((as const (Array (_ BitVec 32) ValueCell!11718)) mapDefault!38903)))))

(assert (=> mapNonEmpty!38897 (= tp!74620 (and e!592237 mapRes!38903))))

(declare-fun mapNonEmpty!38903 () Bool)

(declare-fun tp!74629 () Bool)

(assert (=> mapNonEmpty!38903 (= mapRes!38903 (and tp!74629 e!592236))))

(declare-fun mapValue!38903 () ValueCell!11718)

(declare-fun mapRest!38903 () (Array (_ BitVec 32) ValueCell!11718))

(declare-fun mapKey!38903 () (_ BitVec 32))

(assert (=> mapNonEmpty!38903 (= mapRest!38897 (store mapRest!38903 mapKey!38903 mapValue!38903))))

(assert (= (and mapNonEmpty!38897 condMapEmpty!38903) mapIsEmpty!38903))

(assert (= (and mapNonEmpty!38897 (not condMapEmpty!38903)) mapNonEmpty!38903))

(assert (= (and mapNonEmpty!38903 ((_ is ValueCellFull!11718) mapValue!38903)) b!1044847))

(assert (= (and mapNonEmpty!38897 ((_ is ValueCellFull!11718) mapDefault!38903)) b!1044848))

(declare-fun m!964563 () Bool)

(assert (=> mapNonEmpty!38903 m!964563))

(declare-fun b_lambda!16287 () Bool)

(assert (= b_lambda!16281 (or (and b!1044590 b_free!21123) b_lambda!16287)))

(declare-fun b_lambda!16289 () Bool)

(assert (= b_lambda!16279 (or (and b!1044590 b_free!21123) b_lambda!16289)))

(declare-fun b_lambda!16291 () Bool)

(assert (= b_lambda!16285 (or (and b!1044590 b_free!21123) b_lambda!16291)))

(check-sat (not b!1044779) (not b!1044678) (not bm!44413) (not b!1044729) (not b!1044728) (not b!1044731) (not b_next!21123) (not b!1044771) (not d!126387) (not b!1044662) (not b!1044753) (not b!1044677) (not b!1044665) (not b!1044840) (not b!1044773) (not bm!44407) (not d!126381) (not b!1044730) (not bm!44408) (not b!1044632) (not b_lambda!16287) (not b_lambda!16283) (not b!1044752) (not b!1044813) (not b!1044801) (not bm!44431) (not bm!44428) (not d!126391) (not b!1044732) (not b!1044648) (not b!1044747) (not b!1044756) (not bm!44427) tp_is_empty!24843 (not b!1044761) (not b!1044791) (not b_lambda!16291) (not b!1044820) (not bm!44420) (not bm!44414) (not b_lambda!16277) (not b!1044821) (not d!126401) (not b_lambda!16289) (not bm!44422) (not b!1044726) (not b!1044649) (not d!126393) (not b!1044735) (not bm!44425) (not bm!44392) (not b!1044797) (not b!1044680) (not b!1044750) (not bm!44421) b_and!33741 (not b!1044751) (not b!1044783) (not d!126407) (not b!1044786) (not b!1044635) (not b!1044650) (not bm!44415) (not d!126385) (not b!1044822) (not b!1044749) (not mapNonEmpty!38903) (not b!1044668) (not d!126377) (not b!1044781) (not d!126389) (not d!126395) (not b!1044780) (not b!1044810) (not bm!44411) (not d!126383) (not d!126373) (not bm!44418) (not b!1044782) (not bm!44389) (not b!1044777) (not b!1044740))
(check-sat b_and!33741 (not b_next!21123))
