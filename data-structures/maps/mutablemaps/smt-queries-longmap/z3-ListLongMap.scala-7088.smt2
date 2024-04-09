; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89726 () Bool)

(assert start!89726)

(declare-fun b!1028277 () Bool)

(declare-fun b_free!20583 () Bool)

(declare-fun b_next!20583 () Bool)

(assert (=> b!1028277 (= b_free!20583 (not b_next!20583))))

(declare-fun tp!72802 () Bool)

(declare-fun b_and!32885 () Bool)

(assert (=> b!1028277 (= tp!72802 b_and!32885)))

(declare-fun mapNonEmpty!37890 () Bool)

(declare-fun mapRes!37890 () Bool)

(declare-fun tp!72803 () Bool)

(declare-fun e!580474 () Bool)

(assert (=> mapNonEmpty!37890 (= mapRes!37890 (and tp!72803 e!580474))))

(declare-fun mapKey!37890 () (_ BitVec 32))

(declare-datatypes ((V!37277 0))(
  ( (V!37278 (val!12202 Int)) )
))
(declare-datatypes ((ValueCell!11448 0))(
  ( (ValueCellFull!11448 (v!14774 V!37277)) (EmptyCell!11448) )
))
(declare-fun mapValue!37890 () ValueCell!11448)

(declare-fun mapRest!37890 () (Array (_ BitVec 32) ValueCell!11448))

(declare-datatypes ((array!64644 0))(
  ( (array!64645 (arr!31125 (Array (_ BitVec 32) (_ BitVec 64))) (size!31640 (_ BitVec 32))) )
))
(declare-datatypes ((array!64646 0))(
  ( (array!64647 (arr!31126 (Array (_ BitVec 32) ValueCell!11448)) (size!31641 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5490 0))(
  ( (LongMapFixedSize!5491 (defaultEntry!6103 Int) (mask!29833 (_ BitVec 32)) (extraKeys!5835 (_ BitVec 32)) (zeroValue!5939 V!37277) (minValue!5939 V!37277) (_size!2800 (_ BitVec 32)) (_keys!11254 array!64644) (_values!6126 array!64646) (_vacant!2800 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5490)

(assert (=> mapNonEmpty!37890 (= (arr!31126 (_values!6126 thiss!1427)) (store mapRest!37890 mapKey!37890 mapValue!37890))))

(declare-fun b!1028272 () Bool)

(declare-fun e!580470 () Bool)

(declare-fun e!580472 () Bool)

(assert (=> b!1028272 (= e!580470 e!580472)))

(declare-fun res!688162 () Bool)

(assert (=> b!1028272 (=> (not res!688162) (not e!580472))))

(declare-datatypes ((SeekEntryResult!9666 0))(
  ( (MissingZero!9666 (index!41034 (_ BitVec 32))) (Found!9666 (index!41035 (_ BitVec 32))) (Intermediate!9666 (undefined!10478 Bool) (index!41036 (_ BitVec 32)) (x!91491 (_ BitVec 32))) (Undefined!9666) (MissingVacant!9666 (index!41037 (_ BitVec 32))) )
))
(declare-fun lt!452919 () SeekEntryResult!9666)

(get-info :version)

(assert (=> b!1028272 (= res!688162 ((_ is Found!9666) lt!452919))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64644 (_ BitVec 32)) SeekEntryResult!9666)

(assert (=> b!1028272 (= lt!452919 (seekEntry!0 key!909 (_keys!11254 thiss!1427) (mask!29833 thiss!1427)))))

(declare-fun mapIsEmpty!37890 () Bool)

(assert (=> mapIsEmpty!37890 mapRes!37890))

(declare-fun b!1028273 () Bool)

(declare-fun tp_is_empty!24303 () Bool)

(assert (=> b!1028273 (= e!580474 tp_is_empty!24303)))

(declare-fun b!1028274 () Bool)

(declare-fun e!580475 () Bool)

(assert (=> b!1028274 (= e!580472 (not e!580475))))

(declare-fun res!688160 () Bool)

(assert (=> b!1028274 (=> res!688160 e!580475)))

(declare-datatypes ((Unit!33536 0))(
  ( (Unit!33537) )
))
(declare-datatypes ((tuple2!15628 0))(
  ( (tuple2!15629 (_1!7824 Unit!33536) (_2!7824 LongMapFixedSize!5490)) )
))
(declare-fun lt!452927 () tuple2!15628)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1028274 (= res!688160 (not (validMask!0 (mask!29833 (_2!7824 lt!452927)))))))

(declare-fun lt!452921 () array!64644)

(declare-fun lt!452923 () array!64646)

(declare-fun Unit!33538 () Unit!33536)

(declare-fun Unit!33539 () Unit!33536)

(assert (=> b!1028274 (= lt!452927 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2800 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15629 Unit!33538 (LongMapFixedSize!5491 (defaultEntry!6103 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) (bvsub (_size!2800 thiss!1427) #b00000000000000000000000000000001) lt!452921 lt!452923 (bvadd #b00000000000000000000000000000001 (_vacant!2800 thiss!1427)))) (tuple2!15629 Unit!33539 (LongMapFixedSize!5491 (defaultEntry!6103 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) (bvsub (_size!2800 thiss!1427) #b00000000000000000000000000000001) lt!452921 lt!452923 (_vacant!2800 thiss!1427)))))))

(declare-datatypes ((tuple2!15630 0))(
  ( (tuple2!15631 (_1!7825 (_ BitVec 64)) (_2!7825 V!37277)) )
))
(declare-datatypes ((List!21921 0))(
  ( (Nil!21918) (Cons!21917 (h!23116 tuple2!15630) (t!31006 List!21921)) )
))
(declare-datatypes ((ListLongMap!13779 0))(
  ( (ListLongMap!13780 (toList!6905 List!21921)) )
))
(declare-fun -!481 (ListLongMap!13779 (_ BitVec 64)) ListLongMap!13779)

(declare-fun getCurrentListMap!3912 (array!64644 array!64646 (_ BitVec 32) (_ BitVec 32) V!37277 V!37277 (_ BitVec 32) Int) ListLongMap!13779)

(assert (=> b!1028274 (= (-!481 (getCurrentListMap!3912 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)) key!909) (getCurrentListMap!3912 lt!452921 lt!452923 (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)))))

(declare-fun dynLambda!1956 (Int (_ BitVec 64)) V!37277)

(assert (=> b!1028274 (= lt!452923 (array!64647 (store (arr!31126 (_values!6126 thiss!1427)) (index!41035 lt!452919) (ValueCellFull!11448 (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31641 (_values!6126 thiss!1427))))))

(declare-fun lt!452926 () Unit!33536)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!5 (array!64644 array!64646 (_ BitVec 32) (_ BitVec 32) V!37277 V!37277 (_ BitVec 32) (_ BitVec 64) Int) Unit!33536)

(assert (=> b!1028274 (= lt!452926 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!5 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) (index!41035 lt!452919) key!909 (defaultEntry!6103 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64644 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1028274 (not (arrayContainsKey!0 lt!452921 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!452920 () Unit!33536)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64644 (_ BitVec 32) (_ BitVec 64)) Unit!33536)

(assert (=> b!1028274 (= lt!452920 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11254 thiss!1427) (index!41035 lt!452919) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64644 (_ BitVec 32)) Bool)

(assert (=> b!1028274 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!452921 (mask!29833 thiss!1427))))

(declare-fun lt!452924 () Unit!33536)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64644 (_ BitVec 32) (_ BitVec 32)) Unit!33536)

(assert (=> b!1028274 (= lt!452924 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11254 thiss!1427) (index!41035 lt!452919) (mask!29833 thiss!1427)))))

(declare-datatypes ((List!21922 0))(
  ( (Nil!21919) (Cons!21918 (h!23117 (_ BitVec 64)) (t!31007 List!21922)) )
))
(declare-fun arrayNoDuplicates!0 (array!64644 (_ BitVec 32) List!21922) Bool)

(assert (=> b!1028274 (arrayNoDuplicates!0 lt!452921 #b00000000000000000000000000000000 Nil!21919)))

(declare-fun lt!452922 () Unit!33536)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64644 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21922) Unit!33536)

(assert (=> b!1028274 (= lt!452922 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11254 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41035 lt!452919) #b00000000000000000000000000000000 Nil!21919))))

(declare-fun arrayCountValidKeys!0 (array!64644 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1028274 (= (arrayCountValidKeys!0 lt!452921 #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11254 thiss!1427) #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1028274 (= lt!452921 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))))))

(declare-fun lt!452925 () Unit!33536)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64644 (_ BitVec 32) (_ BitVec 64)) Unit!33536)

(assert (=> b!1028274 (= lt!452925 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11254 thiss!1427) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1028275 () Bool)

(declare-fun e!580476 () Bool)

(assert (=> b!1028275 (= e!580476 tp_is_empty!24303)))

(declare-fun b!1028276 () Bool)

(declare-fun res!688159 () Bool)

(assert (=> b!1028276 (=> (not res!688159) (not e!580470))))

(assert (=> b!1028276 (= res!688159 (not (= key!909 (bvneg key!909))))))

(declare-fun e!580473 () Bool)

(declare-fun e!580469 () Bool)

(declare-fun array_inv!23945 (array!64644) Bool)

(declare-fun array_inv!23946 (array!64646) Bool)

(assert (=> b!1028277 (= e!580473 (and tp!72802 tp_is_empty!24303 (array_inv!23945 (_keys!11254 thiss!1427)) (array_inv!23946 (_values!6126 thiss!1427)) e!580469))))

(declare-fun b!1028278 () Bool)

(assert (=> b!1028278 (= e!580469 (and e!580476 mapRes!37890))))

(declare-fun condMapEmpty!37890 () Bool)

(declare-fun mapDefault!37890 () ValueCell!11448)

(assert (=> b!1028278 (= condMapEmpty!37890 (= (arr!31126 (_values!6126 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11448)) mapDefault!37890)))))

(declare-fun b!1028271 () Bool)

(assert (=> b!1028271 (= e!580475 (or (not (= (size!31641 (_values!6126 (_2!7824 lt!452927))) (bvadd #b00000000000000000000000000000001 (mask!29833 (_2!7824 lt!452927))))) (= (size!31640 (_keys!11254 (_2!7824 lt!452927))) (size!31641 (_values!6126 (_2!7824 lt!452927))))))))

(declare-fun res!688161 () Bool)

(assert (=> start!89726 (=> (not res!688161) (not e!580470))))

(declare-fun valid!2033 (LongMapFixedSize!5490) Bool)

(assert (=> start!89726 (= res!688161 (valid!2033 thiss!1427))))

(assert (=> start!89726 e!580470))

(assert (=> start!89726 e!580473))

(assert (=> start!89726 true))

(assert (= (and start!89726 res!688161) b!1028276))

(assert (= (and b!1028276 res!688159) b!1028272))

(assert (= (and b!1028272 res!688162) b!1028274))

(assert (= (and b!1028274 (not res!688160)) b!1028271))

(assert (= (and b!1028278 condMapEmpty!37890) mapIsEmpty!37890))

(assert (= (and b!1028278 (not condMapEmpty!37890)) mapNonEmpty!37890))

(assert (= (and mapNonEmpty!37890 ((_ is ValueCellFull!11448) mapValue!37890)) b!1028273))

(assert (= (and b!1028278 ((_ is ValueCellFull!11448) mapDefault!37890)) b!1028275))

(assert (= b!1028277 b!1028278))

(assert (= start!89726 b!1028277))

(declare-fun b_lambda!15815 () Bool)

(assert (=> (not b_lambda!15815) (not b!1028274)))

(declare-fun t!31005 () Bool)

(declare-fun tb!6909 () Bool)

(assert (=> (and b!1028277 (= (defaultEntry!6103 thiss!1427) (defaultEntry!6103 thiss!1427)) t!31005) tb!6909))

(declare-fun result!14129 () Bool)

(assert (=> tb!6909 (= result!14129 tp_is_empty!24303)))

(assert (=> b!1028274 t!31005))

(declare-fun b_and!32887 () Bool)

(assert (= b_and!32885 (and (=> t!31005 result!14129) b_and!32887)))

(declare-fun m!947227 () Bool)

(assert (=> mapNonEmpty!37890 m!947227))

(declare-fun m!947229 () Bool)

(assert (=> b!1028272 m!947229))

(declare-fun m!947231 () Bool)

(assert (=> b!1028274 m!947231))

(declare-fun m!947233 () Bool)

(assert (=> b!1028274 m!947233))

(declare-fun m!947235 () Bool)

(assert (=> b!1028274 m!947235))

(declare-fun m!947237 () Bool)

(assert (=> b!1028274 m!947237))

(declare-fun m!947239 () Bool)

(assert (=> b!1028274 m!947239))

(declare-fun m!947241 () Bool)

(assert (=> b!1028274 m!947241))

(declare-fun m!947243 () Bool)

(assert (=> b!1028274 m!947243))

(declare-fun m!947245 () Bool)

(assert (=> b!1028274 m!947245))

(declare-fun m!947247 () Bool)

(assert (=> b!1028274 m!947247))

(declare-fun m!947249 () Bool)

(assert (=> b!1028274 m!947249))

(declare-fun m!947251 () Bool)

(assert (=> b!1028274 m!947251))

(declare-fun m!947253 () Bool)

(assert (=> b!1028274 m!947253))

(declare-fun m!947255 () Bool)

(assert (=> b!1028274 m!947255))

(declare-fun m!947257 () Bool)

(assert (=> b!1028274 m!947257))

(declare-fun m!947259 () Bool)

(assert (=> b!1028274 m!947259))

(declare-fun m!947261 () Bool)

(assert (=> b!1028274 m!947261))

(assert (=> b!1028274 m!947247))

(declare-fun m!947263 () Bool)

(assert (=> b!1028274 m!947263))

(declare-fun m!947265 () Bool)

(assert (=> start!89726 m!947265))

(declare-fun m!947267 () Bool)

(assert (=> b!1028277 m!947267))

(declare-fun m!947269 () Bool)

(assert (=> b!1028277 m!947269))

(check-sat (not b!1028277) b_and!32887 (not b!1028272) (not b_next!20583) (not mapNonEmpty!37890) (not b_lambda!15815) (not b!1028274) tp_is_empty!24303 (not start!89726))
(check-sat b_and!32887 (not b_next!20583))
(get-model)

(declare-fun b_lambda!15819 () Bool)

(assert (= b_lambda!15815 (or (and b!1028277 b_free!20583) b_lambda!15819)))

(check-sat (not b!1028277) (not b_lambda!15819) b_and!32887 (not b!1028272) (not b_next!20583) (not mapNonEmpty!37890) (not b!1028274) tp_is_empty!24303 (not start!89726))
(check-sat b_and!32887 (not b_next!20583))
(get-model)

(declare-fun d!122901 () Bool)

(declare-fun e!580505 () Bool)

(assert (=> d!122901 e!580505))

(declare-fun res!688184 () Bool)

(assert (=> d!122901 (=> (not res!688184) (not e!580505))))

(assert (=> d!122901 (= res!688184 (and (bvsge (index!41035 lt!452919) #b00000000000000000000000000000000) (bvslt (index!41035 lt!452919) (size!31640 (_keys!11254 thiss!1427)))))))

(declare-fun lt!452957 () Unit!33536)

(declare-fun choose!82 (array!64644 (_ BitVec 32) (_ BitVec 64)) Unit!33536)

(assert (=> d!122901 (= lt!452957 (choose!82 (_keys!11254 thiss!1427) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!580506 () Bool)

(assert (=> d!122901 e!580506))

(declare-fun res!688186 () Bool)

(assert (=> d!122901 (=> (not res!688186) (not e!580506))))

(assert (=> d!122901 (= res!688186 (and (bvsge (index!41035 lt!452919) #b00000000000000000000000000000000) (bvslt (index!41035 lt!452919) (size!31640 (_keys!11254 thiss!1427)))))))

(assert (=> d!122901 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11254 thiss!1427) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) lt!452957)))

(declare-fun b!1028317 () Bool)

(assert (=> b!1028317 (= e!580506 (bvslt (size!31640 (_keys!11254 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1028318 () Bool)

(assert (=> b!1028318 (= e!580505 (= (arrayCountValidKeys!0 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11254 thiss!1427) #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1028316 () Bool)

(declare-fun res!688185 () Bool)

(assert (=> b!1028316 (=> (not res!688185) (not e!580506))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1028316 (= res!688185 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1028315 () Bool)

(declare-fun res!688183 () Bool)

(assert (=> b!1028315 (=> (not res!688183) (not e!580506))))

(assert (=> b!1028315 (= res!688183 (validKeyInArray!0 (select (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919))))))

(assert (= (and d!122901 res!688186) b!1028315))

(assert (= (and b!1028315 res!688183) b!1028316))

(assert (= (and b!1028316 res!688185) b!1028317))

(assert (= (and d!122901 res!688184) b!1028318))

(declare-fun m!947315 () Bool)

(assert (=> d!122901 m!947315))

(assert (=> b!1028318 m!947231))

(declare-fun m!947317 () Bool)

(assert (=> b!1028318 m!947317))

(assert (=> b!1028318 m!947261))

(declare-fun m!947319 () Bool)

(assert (=> b!1028316 m!947319))

(declare-fun m!947321 () Bool)

(assert (=> b!1028315 m!947321))

(assert (=> b!1028315 m!947321))

(declare-fun m!947323 () Bool)

(assert (=> b!1028315 m!947323))

(assert (=> b!1028274 d!122901))

(declare-fun d!122903 () Bool)

(declare-fun lt!452960 () (_ BitVec 32))

(assert (=> d!122903 (and (bvsge lt!452960 #b00000000000000000000000000000000) (bvsle lt!452960 (bvsub (size!31640 lt!452921) #b00000000000000000000000000000000)))))

(declare-fun e!580511 () (_ BitVec 32))

(assert (=> d!122903 (= lt!452960 e!580511)))

(declare-fun c!103700 () Bool)

(assert (=> d!122903 (= c!103700 (bvsge #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))))))

(assert (=> d!122903 (and (bvsle #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31640 (_keys!11254 thiss!1427)) (size!31640 lt!452921)))))

(assert (=> d!122903 (= (arrayCountValidKeys!0 lt!452921 #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))) lt!452960)))

(declare-fun b!1028327 () Bool)

(declare-fun e!580512 () (_ BitVec 32))

(declare-fun call!43342 () (_ BitVec 32))

(assert (=> b!1028327 (= e!580512 call!43342)))

(declare-fun b!1028328 () Bool)

(assert (=> b!1028328 (= e!580511 e!580512)))

(declare-fun c!103699 () Bool)

(assert (=> b!1028328 (= c!103699 (validKeyInArray!0 (select (arr!31125 lt!452921) #b00000000000000000000000000000000)))))

(declare-fun b!1028329 () Bool)

(assert (=> b!1028329 (= e!580511 #b00000000000000000000000000000000)))

(declare-fun bm!43339 () Bool)

(assert (=> bm!43339 (= call!43342 (arrayCountValidKeys!0 lt!452921 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31640 (_keys!11254 thiss!1427))))))

(declare-fun b!1028330 () Bool)

(assert (=> b!1028330 (= e!580512 (bvadd #b00000000000000000000000000000001 call!43342))))

(assert (= (and d!122903 c!103700) b!1028329))

(assert (= (and d!122903 (not c!103700)) b!1028328))

(assert (= (and b!1028328 c!103699) b!1028330))

(assert (= (and b!1028328 (not c!103699)) b!1028327))

(assert (= (or b!1028330 b!1028327) bm!43339))

(declare-fun m!947325 () Bool)

(assert (=> b!1028328 m!947325))

(assert (=> b!1028328 m!947325))

(declare-fun m!947327 () Bool)

(assert (=> b!1028328 m!947327))

(declare-fun m!947329 () Bool)

(assert (=> bm!43339 m!947329))

(assert (=> b!1028274 d!122903))

(declare-fun d!122905 () Bool)

(declare-fun e!580515 () Bool)

(assert (=> d!122905 e!580515))

(declare-fun res!688189 () Bool)

(assert (=> d!122905 (=> (not res!688189) (not e!580515))))

(assert (=> d!122905 (= res!688189 (and (bvsge (index!41035 lt!452919) #b00000000000000000000000000000000) (bvslt (index!41035 lt!452919) (size!31640 (_keys!11254 thiss!1427)))))))

(declare-fun lt!452963 () Unit!33536)

(declare-fun choose!1691 (array!64644 array!64646 (_ BitVec 32) (_ BitVec 32) V!37277 V!37277 (_ BitVec 32) (_ BitVec 64) Int) Unit!33536)

(assert (=> d!122905 (= lt!452963 (choose!1691 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) (index!41035 lt!452919) key!909 (defaultEntry!6103 thiss!1427)))))

(assert (=> d!122905 (validMask!0 (mask!29833 thiss!1427))))

(assert (=> d!122905 (= (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!5 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) (index!41035 lt!452919) key!909 (defaultEntry!6103 thiss!1427)) lt!452963)))

(declare-fun b!1028333 () Bool)

(assert (=> b!1028333 (= e!580515 (= (-!481 (getCurrentListMap!3912 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)) key!909) (getCurrentListMap!3912 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) (array!64647 (store (arr!31126 (_values!6126 thiss!1427)) (index!41035 lt!452919) (ValueCellFull!11448 (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31641 (_values!6126 thiss!1427))) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427))))))

(assert (=> b!1028333 (bvslt (index!41035 lt!452919) (size!31641 (_values!6126 thiss!1427)))))

(assert (= (and d!122905 res!688189) b!1028333))

(declare-fun b_lambda!15821 () Bool)

(assert (=> (not b_lambda!15821) (not b!1028333)))

(assert (=> b!1028333 t!31005))

(declare-fun b_and!32893 () Bool)

(assert (= b_and!32887 (and (=> t!31005 result!14129) b_and!32893)))

(declare-fun m!947331 () Bool)

(assert (=> d!122905 m!947331))

(declare-fun m!947333 () Bool)

(assert (=> d!122905 m!947333))

(assert (=> b!1028333 m!947245))

(assert (=> b!1028333 m!947247))

(assert (=> b!1028333 m!947249))

(assert (=> b!1028333 m!947247))

(assert (=> b!1028333 m!947231))

(assert (=> b!1028333 m!947253))

(declare-fun m!947335 () Bool)

(assert (=> b!1028333 m!947335))

(assert (=> b!1028274 d!122905))

(declare-fun b!1028376 () Bool)

(declare-fun e!580552 () Bool)

(declare-fun e!580546 () Bool)

(assert (=> b!1028376 (= e!580552 e!580546)))

(declare-fun res!688210 () Bool)

(declare-fun call!43358 () Bool)

(assert (=> b!1028376 (= res!688210 call!43358)))

(assert (=> b!1028376 (=> (not res!688210) (not e!580546))))

(declare-fun b!1028377 () Bool)

(declare-fun c!103715 () Bool)

(assert (=> b!1028377 (= c!103715 (and (not (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!580551 () ListLongMap!13779)

(declare-fun e!580554 () ListLongMap!13779)

(assert (=> b!1028377 (= e!580551 e!580554)))

(declare-fun bm!43354 () Bool)

(declare-fun lt!453026 () ListLongMap!13779)

(declare-fun contains!5985 (ListLongMap!13779 (_ BitVec 64)) Bool)

(assert (=> bm!43354 (= call!43358 (contains!5985 lt!453026 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1028379 () Bool)

(declare-fun e!580550 () Bool)

(declare-fun call!43357 () Bool)

(assert (=> b!1028379 (= e!580550 (not call!43357))))

(declare-fun b!1028380 () Bool)

(declare-fun e!580553 () Bool)

(declare-fun apply!936 (ListLongMap!13779 (_ BitVec 64)) V!37277)

(declare-fun get!16358 (ValueCell!11448 V!37277) V!37277)

(assert (=> b!1028380 (= e!580553 (= (apply!936 lt!453026 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000)) (get!16358 (select (arr!31126 (_values!6126 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1028380 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31641 (_values!6126 thiss!1427))))))

(assert (=> b!1028380 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))))))

(declare-fun b!1028381 () Bool)

(declare-fun e!580547 () Bool)

(assert (=> b!1028381 (= e!580547 (validKeyInArray!0 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1028382 () Bool)

(declare-fun res!688211 () Bool)

(declare-fun e!580545 () Bool)

(assert (=> b!1028382 (=> (not res!688211) (not e!580545))))

(assert (=> b!1028382 (= res!688211 e!580550)))

(declare-fun c!103713 () Bool)

(assert (=> b!1028382 (= c!103713 (not (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!43355 () Bool)

(declare-fun call!43361 () ListLongMap!13779)

(declare-fun getCurrentListMapNoExtraKeys!3529 (array!64644 array!64646 (_ BitVec 32) (_ BitVec 32) V!37277 V!37277 (_ BitVec 32) Int) ListLongMap!13779)

(assert (=> bm!43355 (= call!43361 (getCurrentListMapNoExtraKeys!3529 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)))))

(declare-fun b!1028383 () Bool)

(assert (=> b!1028383 (= e!580552 (not call!43358))))

(declare-fun b!1028384 () Bool)

(declare-fun e!580542 () ListLongMap!13779)

(assert (=> b!1028384 (= e!580542 e!580551)))

(declare-fun c!103717 () Bool)

(assert (=> b!1028384 (= c!103717 (and (not (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1028385 () Bool)

(declare-fun call!43360 () ListLongMap!13779)

(assert (=> b!1028385 (= e!580554 call!43360)))

(declare-fun b!1028386 () Bool)

(declare-fun e!580548 () Bool)

(assert (=> b!1028386 (= e!580548 (= (apply!936 lt!453026 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5939 thiss!1427)))))

(declare-fun b!1028387 () Bool)

(assert (=> b!1028387 (= e!580545 e!580552)))

(declare-fun c!103718 () Bool)

(assert (=> b!1028387 (= c!103718 (not (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1028388 () Bool)

(declare-fun e!580543 () Bool)

(assert (=> b!1028388 (= e!580543 e!580553)))

(declare-fun res!688212 () Bool)

(assert (=> b!1028388 (=> (not res!688212) (not e!580553))))

(assert (=> b!1028388 (= res!688212 (contains!5985 lt!453026 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1028388 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))))))

(declare-fun b!1028389 () Bool)

(declare-fun e!580544 () Bool)

(assert (=> b!1028389 (= e!580544 (validKeyInArray!0 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1028390 () Bool)

(declare-fun call!43362 () ListLongMap!13779)

(declare-fun +!3059 (ListLongMap!13779 tuple2!15630) ListLongMap!13779)

(assert (=> b!1028390 (= e!580542 (+!3059 call!43362 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))))))

(declare-fun b!1028391 () Bool)

(declare-fun e!580549 () Unit!33536)

(declare-fun lt!453023 () Unit!33536)

(assert (=> b!1028391 (= e!580549 lt!453023)))

(declare-fun lt!453009 () ListLongMap!13779)

(assert (=> b!1028391 (= lt!453009 (getCurrentListMapNoExtraKeys!3529 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)))))

(declare-fun lt!453019 () (_ BitVec 64))

(assert (=> b!1028391 (= lt!453019 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453018 () (_ BitVec 64))

(assert (=> b!1028391 (= lt!453018 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!453020 () Unit!33536)

(declare-fun addStillContains!624 (ListLongMap!13779 (_ BitVec 64) V!37277 (_ BitVec 64)) Unit!33536)

(assert (=> b!1028391 (= lt!453020 (addStillContains!624 lt!453009 lt!453019 (zeroValue!5939 thiss!1427) lt!453018))))

(assert (=> b!1028391 (contains!5985 (+!3059 lt!453009 (tuple2!15631 lt!453019 (zeroValue!5939 thiss!1427))) lt!453018)))

(declare-fun lt!453029 () Unit!33536)

(assert (=> b!1028391 (= lt!453029 lt!453020)))

(declare-fun lt!453021 () ListLongMap!13779)

(assert (=> b!1028391 (= lt!453021 (getCurrentListMapNoExtraKeys!3529 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)))))

(declare-fun lt!453017 () (_ BitVec 64))

(assert (=> b!1028391 (= lt!453017 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453022 () (_ BitVec 64))

(assert (=> b!1028391 (= lt!453022 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!453011 () Unit!33536)

(declare-fun addApplyDifferent!476 (ListLongMap!13779 (_ BitVec 64) V!37277 (_ BitVec 64)) Unit!33536)

(assert (=> b!1028391 (= lt!453011 (addApplyDifferent!476 lt!453021 lt!453017 (minValue!5939 thiss!1427) lt!453022))))

(assert (=> b!1028391 (= (apply!936 (+!3059 lt!453021 (tuple2!15631 lt!453017 (minValue!5939 thiss!1427))) lt!453022) (apply!936 lt!453021 lt!453022))))

(declare-fun lt!453025 () Unit!33536)

(assert (=> b!1028391 (= lt!453025 lt!453011)))

(declare-fun lt!453012 () ListLongMap!13779)

(assert (=> b!1028391 (= lt!453012 (getCurrentListMapNoExtraKeys!3529 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)))))

(declare-fun lt!453027 () (_ BitVec 64))

(assert (=> b!1028391 (= lt!453027 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453028 () (_ BitVec 64))

(assert (=> b!1028391 (= lt!453028 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!453013 () Unit!33536)

(assert (=> b!1028391 (= lt!453013 (addApplyDifferent!476 lt!453012 lt!453027 (zeroValue!5939 thiss!1427) lt!453028))))

(assert (=> b!1028391 (= (apply!936 (+!3059 lt!453012 (tuple2!15631 lt!453027 (zeroValue!5939 thiss!1427))) lt!453028) (apply!936 lt!453012 lt!453028))))

(declare-fun lt!453010 () Unit!33536)

(assert (=> b!1028391 (= lt!453010 lt!453013)))

(declare-fun lt!453015 () ListLongMap!13779)

(assert (=> b!1028391 (= lt!453015 (getCurrentListMapNoExtraKeys!3529 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)))))

(declare-fun lt!453024 () (_ BitVec 64))

(assert (=> b!1028391 (= lt!453024 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453014 () (_ BitVec 64))

(assert (=> b!1028391 (= lt!453014 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1028391 (= lt!453023 (addApplyDifferent!476 lt!453015 lt!453024 (minValue!5939 thiss!1427) lt!453014))))

(assert (=> b!1028391 (= (apply!936 (+!3059 lt!453015 (tuple2!15631 lt!453024 (minValue!5939 thiss!1427))) lt!453014) (apply!936 lt!453015 lt!453014))))

(declare-fun d!122907 () Bool)

(assert (=> d!122907 e!580545))

(declare-fun res!688208 () Bool)

(assert (=> d!122907 (=> (not res!688208) (not e!580545))))

(assert (=> d!122907 (= res!688208 (or (bvsge #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))))))))

(declare-fun lt!453008 () ListLongMap!13779)

(assert (=> d!122907 (= lt!453026 lt!453008)))

(declare-fun lt!453016 () Unit!33536)

(assert (=> d!122907 (= lt!453016 e!580549)))

(declare-fun c!103716 () Bool)

(assert (=> d!122907 (= c!103716 e!580547)))

(declare-fun res!688213 () Bool)

(assert (=> d!122907 (=> (not res!688213) (not e!580547))))

(assert (=> d!122907 (= res!688213 (bvslt #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))))))

(assert (=> d!122907 (= lt!453008 e!580542)))

(declare-fun c!103714 () Bool)

(assert (=> d!122907 (= c!103714 (and (not (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!122907 (validMask!0 (mask!29833 thiss!1427))))

(assert (=> d!122907 (= (getCurrentListMap!3912 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)) lt!453026)))

(declare-fun b!1028378 () Bool)

(declare-fun res!688209 () Bool)

(assert (=> b!1028378 (=> (not res!688209) (not e!580545))))

(assert (=> b!1028378 (= res!688209 e!580543)))

(declare-fun res!688214 () Bool)

(assert (=> b!1028378 (=> res!688214 e!580543)))

(assert (=> b!1028378 (= res!688214 (not e!580544))))

(declare-fun res!688216 () Bool)

(assert (=> b!1028378 (=> (not res!688216) (not e!580544))))

(assert (=> b!1028378 (= res!688216 (bvslt #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))))))

(declare-fun bm!43356 () Bool)

(declare-fun call!43363 () ListLongMap!13779)

(assert (=> bm!43356 (= call!43363 call!43361)))

(declare-fun bm!43357 () Bool)

(assert (=> bm!43357 (= call!43357 (contains!5985 lt!453026 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!43358 () Bool)

(declare-fun call!43359 () ListLongMap!13779)

(assert (=> bm!43358 (= call!43359 call!43362)))

(declare-fun bm!43359 () Bool)

(assert (=> bm!43359 (= call!43360 call!43363)))

(declare-fun b!1028392 () Bool)

(declare-fun Unit!33542 () Unit!33536)

(assert (=> b!1028392 (= e!580549 Unit!33542)))

(declare-fun bm!43360 () Bool)

(assert (=> bm!43360 (= call!43362 (+!3059 (ite c!103714 call!43361 (ite c!103717 call!43363 call!43360)) (ite (or c!103714 c!103717) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))))))

(declare-fun b!1028393 () Bool)

(assert (=> b!1028393 (= e!580550 e!580548)))

(declare-fun res!688215 () Bool)

(assert (=> b!1028393 (= res!688215 call!43357)))

(assert (=> b!1028393 (=> (not res!688215) (not e!580548))))

(declare-fun b!1028394 () Bool)

(assert (=> b!1028394 (= e!580554 call!43359)))

(declare-fun b!1028395 () Bool)

(assert (=> b!1028395 (= e!580551 call!43359)))

(declare-fun b!1028396 () Bool)

(assert (=> b!1028396 (= e!580546 (= (apply!936 lt!453026 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5939 thiss!1427)))))

(assert (= (and d!122907 c!103714) b!1028390))

(assert (= (and d!122907 (not c!103714)) b!1028384))

(assert (= (and b!1028384 c!103717) b!1028395))

(assert (= (and b!1028384 (not c!103717)) b!1028377))

(assert (= (and b!1028377 c!103715) b!1028394))

(assert (= (and b!1028377 (not c!103715)) b!1028385))

(assert (= (or b!1028394 b!1028385) bm!43359))

(assert (= (or b!1028395 bm!43359) bm!43356))

(assert (= (or b!1028395 b!1028394) bm!43358))

(assert (= (or b!1028390 bm!43356) bm!43355))

(assert (= (or b!1028390 bm!43358) bm!43360))

(assert (= (and d!122907 res!688213) b!1028381))

(assert (= (and d!122907 c!103716) b!1028391))

(assert (= (and d!122907 (not c!103716)) b!1028392))

(assert (= (and d!122907 res!688208) b!1028378))

(assert (= (and b!1028378 res!688216) b!1028389))

(assert (= (and b!1028378 (not res!688214)) b!1028388))

(assert (= (and b!1028388 res!688212) b!1028380))

(assert (= (and b!1028378 res!688209) b!1028382))

(assert (= (and b!1028382 c!103713) b!1028393))

(assert (= (and b!1028382 (not c!103713)) b!1028379))

(assert (= (and b!1028393 res!688215) b!1028386))

(assert (= (or b!1028393 b!1028379) bm!43357))

(assert (= (and b!1028382 res!688211) b!1028387))

(assert (= (and b!1028387 c!103718) b!1028376))

(assert (= (and b!1028387 (not c!103718)) b!1028383))

(assert (= (and b!1028376 res!688210) b!1028396))

(assert (= (or b!1028376 b!1028383) bm!43354))

(declare-fun b_lambda!15823 () Bool)

(assert (=> (not b_lambda!15823) (not b!1028380)))

(assert (=> b!1028380 t!31005))

(declare-fun b_and!32895 () Bool)

(assert (= b_and!32893 (and (=> t!31005 result!14129) b_and!32895)))

(declare-fun m!947337 () Bool)

(assert (=> bm!43360 m!947337))

(declare-fun m!947339 () Bool)

(assert (=> b!1028391 m!947339))

(declare-fun m!947341 () Bool)

(assert (=> b!1028391 m!947341))

(declare-fun m!947343 () Bool)

(assert (=> b!1028391 m!947343))

(declare-fun m!947345 () Bool)

(assert (=> b!1028391 m!947345))

(declare-fun m!947347 () Bool)

(assert (=> b!1028391 m!947347))

(declare-fun m!947349 () Bool)

(assert (=> b!1028391 m!947349))

(declare-fun m!947351 () Bool)

(assert (=> b!1028391 m!947351))

(declare-fun m!947353 () Bool)

(assert (=> b!1028391 m!947353))

(declare-fun m!947355 () Bool)

(assert (=> b!1028391 m!947355))

(assert (=> b!1028391 m!947353))

(assert (=> b!1028391 m!947351))

(declare-fun m!947357 () Bool)

(assert (=> b!1028391 m!947357))

(declare-fun m!947359 () Bool)

(assert (=> b!1028391 m!947359))

(declare-fun m!947361 () Bool)

(assert (=> b!1028391 m!947361))

(declare-fun m!947363 () Bool)

(assert (=> b!1028391 m!947363))

(declare-fun m!947365 () Bool)

(assert (=> b!1028391 m!947365))

(assert (=> b!1028391 m!947347))

(declare-fun m!947367 () Bool)

(assert (=> b!1028391 m!947367))

(declare-fun m!947369 () Bool)

(assert (=> b!1028391 m!947369))

(assert (=> b!1028391 m!947363))

(declare-fun m!947371 () Bool)

(assert (=> b!1028391 m!947371))

(assert (=> b!1028388 m!947369))

(assert (=> b!1028388 m!947369))

(declare-fun m!947373 () Bool)

(assert (=> b!1028388 m!947373))

(assert (=> d!122907 m!947333))

(declare-fun m!947375 () Bool)

(assert (=> b!1028396 m!947375))

(assert (=> b!1028389 m!947369))

(assert (=> b!1028389 m!947369))

(declare-fun m!947377 () Bool)

(assert (=> b!1028389 m!947377))

(declare-fun m!947379 () Bool)

(assert (=> bm!43357 m!947379))

(assert (=> bm!43355 m!947367))

(declare-fun m!947381 () Bool)

(assert (=> bm!43354 m!947381))

(declare-fun m!947383 () Bool)

(assert (=> b!1028390 m!947383))

(declare-fun m!947385 () Bool)

(assert (=> b!1028386 m!947385))

(assert (=> b!1028381 m!947369))

(assert (=> b!1028381 m!947369))

(assert (=> b!1028381 m!947377))

(assert (=> b!1028380 m!947253))

(assert (=> b!1028380 m!947369))

(declare-fun m!947387 () Bool)

(assert (=> b!1028380 m!947387))

(assert (=> b!1028380 m!947253))

(declare-fun m!947389 () Bool)

(assert (=> b!1028380 m!947389))

(assert (=> b!1028380 m!947387))

(assert (=> b!1028380 m!947369))

(declare-fun m!947391 () Bool)

(assert (=> b!1028380 m!947391))

(assert (=> b!1028274 d!122907))

(declare-fun d!122909 () Bool)

(declare-fun lt!453032 () ListLongMap!13779)

(assert (=> d!122909 (not (contains!5985 lt!453032 key!909))))

(declare-fun removeStrictlySorted!52 (List!21921 (_ BitVec 64)) List!21921)

(assert (=> d!122909 (= lt!453032 (ListLongMap!13780 (removeStrictlySorted!52 (toList!6905 (getCurrentListMap!3912 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427))) key!909)))))

(assert (=> d!122909 (= (-!481 (getCurrentListMap!3912 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)) key!909) lt!453032)))

(declare-fun bs!30019 () Bool)

(assert (= bs!30019 d!122909))

(declare-fun m!947393 () Bool)

(assert (=> bs!30019 m!947393))

(declare-fun m!947395 () Bool)

(assert (=> bs!30019 m!947395))

(assert (=> b!1028274 d!122909))

(declare-fun d!122911 () Bool)

(declare-fun res!688221 () Bool)

(declare-fun e!580559 () Bool)

(assert (=> d!122911 (=> res!688221 e!580559)))

(assert (=> d!122911 (= res!688221 (= (select (arr!31125 lt!452921) #b00000000000000000000000000000000) key!909))))

(assert (=> d!122911 (= (arrayContainsKey!0 lt!452921 key!909 #b00000000000000000000000000000000) e!580559)))

(declare-fun b!1028401 () Bool)

(declare-fun e!580560 () Bool)

(assert (=> b!1028401 (= e!580559 e!580560)))

(declare-fun res!688222 () Bool)

(assert (=> b!1028401 (=> (not res!688222) (not e!580560))))

(assert (=> b!1028401 (= res!688222 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31640 lt!452921)))))

(declare-fun b!1028402 () Bool)

(assert (=> b!1028402 (= e!580560 (arrayContainsKey!0 lt!452921 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!122911 (not res!688221)) b!1028401))

(assert (= (and b!1028401 res!688222) b!1028402))

(assert (=> d!122911 m!947325))

(declare-fun m!947397 () Bool)

(assert (=> b!1028402 m!947397))

(assert (=> b!1028274 d!122911))

(declare-fun b!1028403 () Bool)

(declare-fun e!580571 () Bool)

(declare-fun e!580565 () Bool)

(assert (=> b!1028403 (= e!580571 e!580565)))

(declare-fun res!688225 () Bool)

(declare-fun call!43365 () Bool)

(assert (=> b!1028403 (= res!688225 call!43365)))

(assert (=> b!1028403 (=> (not res!688225) (not e!580565))))

(declare-fun b!1028404 () Bool)

(declare-fun c!103721 () Bool)

(assert (=> b!1028404 (= c!103721 (and (not (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!580570 () ListLongMap!13779)

(declare-fun e!580573 () ListLongMap!13779)

(assert (=> b!1028404 (= e!580570 e!580573)))

(declare-fun bm!43361 () Bool)

(declare-fun lt!453051 () ListLongMap!13779)

(assert (=> bm!43361 (= call!43365 (contains!5985 lt!453051 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1028406 () Bool)

(declare-fun e!580569 () Bool)

(declare-fun call!43364 () Bool)

(assert (=> b!1028406 (= e!580569 (not call!43364))))

(declare-fun e!580572 () Bool)

(declare-fun b!1028407 () Bool)

(assert (=> b!1028407 (= e!580572 (= (apply!936 lt!453051 (select (arr!31125 lt!452921) #b00000000000000000000000000000000)) (get!16358 (select (arr!31126 lt!452923) #b00000000000000000000000000000000) (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1028407 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31641 lt!452923)))))

(assert (=> b!1028407 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31640 lt!452921)))))

(declare-fun b!1028408 () Bool)

(declare-fun e!580566 () Bool)

(assert (=> b!1028408 (= e!580566 (validKeyInArray!0 (select (arr!31125 lt!452921) #b00000000000000000000000000000000)))))

(declare-fun b!1028409 () Bool)

(declare-fun res!688226 () Bool)

(declare-fun e!580564 () Bool)

(assert (=> b!1028409 (=> (not res!688226) (not e!580564))))

(assert (=> b!1028409 (= res!688226 e!580569)))

(declare-fun c!103719 () Bool)

(assert (=> b!1028409 (= c!103719 (not (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!43362 () Bool)

(declare-fun call!43368 () ListLongMap!13779)

(assert (=> bm!43362 (= call!43368 (getCurrentListMapNoExtraKeys!3529 lt!452921 lt!452923 (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)))))

(declare-fun b!1028410 () Bool)

(assert (=> b!1028410 (= e!580571 (not call!43365))))

(declare-fun b!1028411 () Bool)

(declare-fun e!580561 () ListLongMap!13779)

(assert (=> b!1028411 (= e!580561 e!580570)))

(declare-fun c!103723 () Bool)

(assert (=> b!1028411 (= c!103723 (and (not (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1028412 () Bool)

(declare-fun call!43367 () ListLongMap!13779)

(assert (=> b!1028412 (= e!580573 call!43367)))

(declare-fun b!1028413 () Bool)

(declare-fun e!580567 () Bool)

(assert (=> b!1028413 (= e!580567 (= (apply!936 lt!453051 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5939 thiss!1427)))))

(declare-fun b!1028414 () Bool)

(assert (=> b!1028414 (= e!580564 e!580571)))

(declare-fun c!103724 () Bool)

(assert (=> b!1028414 (= c!103724 (not (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1028415 () Bool)

(declare-fun e!580562 () Bool)

(assert (=> b!1028415 (= e!580562 e!580572)))

(declare-fun res!688227 () Bool)

(assert (=> b!1028415 (=> (not res!688227) (not e!580572))))

(assert (=> b!1028415 (= res!688227 (contains!5985 lt!453051 (select (arr!31125 lt!452921) #b00000000000000000000000000000000)))))

(assert (=> b!1028415 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31640 lt!452921)))))

(declare-fun b!1028416 () Bool)

(declare-fun e!580563 () Bool)

(assert (=> b!1028416 (= e!580563 (validKeyInArray!0 (select (arr!31125 lt!452921) #b00000000000000000000000000000000)))))

(declare-fun b!1028417 () Bool)

(declare-fun call!43369 () ListLongMap!13779)

(assert (=> b!1028417 (= e!580561 (+!3059 call!43369 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))))))

(declare-fun b!1028418 () Bool)

(declare-fun e!580568 () Unit!33536)

(declare-fun lt!453048 () Unit!33536)

(assert (=> b!1028418 (= e!580568 lt!453048)))

(declare-fun lt!453034 () ListLongMap!13779)

(assert (=> b!1028418 (= lt!453034 (getCurrentListMapNoExtraKeys!3529 lt!452921 lt!452923 (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)))))

(declare-fun lt!453044 () (_ BitVec 64))

(assert (=> b!1028418 (= lt!453044 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453043 () (_ BitVec 64))

(assert (=> b!1028418 (= lt!453043 (select (arr!31125 lt!452921) #b00000000000000000000000000000000))))

(declare-fun lt!453045 () Unit!33536)

(assert (=> b!1028418 (= lt!453045 (addStillContains!624 lt!453034 lt!453044 (zeroValue!5939 thiss!1427) lt!453043))))

(assert (=> b!1028418 (contains!5985 (+!3059 lt!453034 (tuple2!15631 lt!453044 (zeroValue!5939 thiss!1427))) lt!453043)))

(declare-fun lt!453054 () Unit!33536)

(assert (=> b!1028418 (= lt!453054 lt!453045)))

(declare-fun lt!453046 () ListLongMap!13779)

(assert (=> b!1028418 (= lt!453046 (getCurrentListMapNoExtraKeys!3529 lt!452921 lt!452923 (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)))))

(declare-fun lt!453042 () (_ BitVec 64))

(assert (=> b!1028418 (= lt!453042 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453047 () (_ BitVec 64))

(assert (=> b!1028418 (= lt!453047 (select (arr!31125 lt!452921) #b00000000000000000000000000000000))))

(declare-fun lt!453036 () Unit!33536)

(assert (=> b!1028418 (= lt!453036 (addApplyDifferent!476 lt!453046 lt!453042 (minValue!5939 thiss!1427) lt!453047))))

(assert (=> b!1028418 (= (apply!936 (+!3059 lt!453046 (tuple2!15631 lt!453042 (minValue!5939 thiss!1427))) lt!453047) (apply!936 lt!453046 lt!453047))))

(declare-fun lt!453050 () Unit!33536)

(assert (=> b!1028418 (= lt!453050 lt!453036)))

(declare-fun lt!453037 () ListLongMap!13779)

(assert (=> b!1028418 (= lt!453037 (getCurrentListMapNoExtraKeys!3529 lt!452921 lt!452923 (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)))))

(declare-fun lt!453052 () (_ BitVec 64))

(assert (=> b!1028418 (= lt!453052 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453053 () (_ BitVec 64))

(assert (=> b!1028418 (= lt!453053 (select (arr!31125 lt!452921) #b00000000000000000000000000000000))))

(declare-fun lt!453038 () Unit!33536)

(assert (=> b!1028418 (= lt!453038 (addApplyDifferent!476 lt!453037 lt!453052 (zeroValue!5939 thiss!1427) lt!453053))))

(assert (=> b!1028418 (= (apply!936 (+!3059 lt!453037 (tuple2!15631 lt!453052 (zeroValue!5939 thiss!1427))) lt!453053) (apply!936 lt!453037 lt!453053))))

(declare-fun lt!453035 () Unit!33536)

(assert (=> b!1028418 (= lt!453035 lt!453038)))

(declare-fun lt!453040 () ListLongMap!13779)

(assert (=> b!1028418 (= lt!453040 (getCurrentListMapNoExtraKeys!3529 lt!452921 lt!452923 (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)))))

(declare-fun lt!453049 () (_ BitVec 64))

(assert (=> b!1028418 (= lt!453049 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453039 () (_ BitVec 64))

(assert (=> b!1028418 (= lt!453039 (select (arr!31125 lt!452921) #b00000000000000000000000000000000))))

(assert (=> b!1028418 (= lt!453048 (addApplyDifferent!476 lt!453040 lt!453049 (minValue!5939 thiss!1427) lt!453039))))

(assert (=> b!1028418 (= (apply!936 (+!3059 lt!453040 (tuple2!15631 lt!453049 (minValue!5939 thiss!1427))) lt!453039) (apply!936 lt!453040 lt!453039))))

(declare-fun d!122913 () Bool)

(assert (=> d!122913 e!580564))

(declare-fun res!688223 () Bool)

(assert (=> d!122913 (=> (not res!688223) (not e!580564))))

(assert (=> d!122913 (= res!688223 (or (bvsge #b00000000000000000000000000000000 (size!31640 lt!452921)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31640 lt!452921)))))))

(declare-fun lt!453033 () ListLongMap!13779)

(assert (=> d!122913 (= lt!453051 lt!453033)))

(declare-fun lt!453041 () Unit!33536)

(assert (=> d!122913 (= lt!453041 e!580568)))

(declare-fun c!103722 () Bool)

(assert (=> d!122913 (= c!103722 e!580566)))

(declare-fun res!688228 () Bool)

(assert (=> d!122913 (=> (not res!688228) (not e!580566))))

(assert (=> d!122913 (= res!688228 (bvslt #b00000000000000000000000000000000 (size!31640 lt!452921)))))

(assert (=> d!122913 (= lt!453033 e!580561)))

(declare-fun c!103720 () Bool)

(assert (=> d!122913 (= c!103720 (and (not (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!122913 (validMask!0 (mask!29833 thiss!1427))))

(assert (=> d!122913 (= (getCurrentListMap!3912 lt!452921 lt!452923 (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)) lt!453051)))

(declare-fun b!1028405 () Bool)

(declare-fun res!688224 () Bool)

(assert (=> b!1028405 (=> (not res!688224) (not e!580564))))

(assert (=> b!1028405 (= res!688224 e!580562)))

(declare-fun res!688229 () Bool)

(assert (=> b!1028405 (=> res!688229 e!580562)))

(assert (=> b!1028405 (= res!688229 (not e!580563))))

(declare-fun res!688231 () Bool)

(assert (=> b!1028405 (=> (not res!688231) (not e!580563))))

(assert (=> b!1028405 (= res!688231 (bvslt #b00000000000000000000000000000000 (size!31640 lt!452921)))))

(declare-fun bm!43363 () Bool)

(declare-fun call!43370 () ListLongMap!13779)

(assert (=> bm!43363 (= call!43370 call!43368)))

(declare-fun bm!43364 () Bool)

(assert (=> bm!43364 (= call!43364 (contains!5985 lt!453051 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!43365 () Bool)

(declare-fun call!43366 () ListLongMap!13779)

(assert (=> bm!43365 (= call!43366 call!43369)))

(declare-fun bm!43366 () Bool)

(assert (=> bm!43366 (= call!43367 call!43370)))

(declare-fun b!1028419 () Bool)

(declare-fun Unit!33543 () Unit!33536)

(assert (=> b!1028419 (= e!580568 Unit!33543)))

(declare-fun bm!43367 () Bool)

(assert (=> bm!43367 (= call!43369 (+!3059 (ite c!103720 call!43368 (ite c!103723 call!43370 call!43367)) (ite (or c!103720 c!103723) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))))))

(declare-fun b!1028420 () Bool)

(assert (=> b!1028420 (= e!580569 e!580567)))

(declare-fun res!688230 () Bool)

(assert (=> b!1028420 (= res!688230 call!43364)))

(assert (=> b!1028420 (=> (not res!688230) (not e!580567))))

(declare-fun b!1028421 () Bool)

(assert (=> b!1028421 (= e!580573 call!43366)))

(declare-fun b!1028422 () Bool)

(assert (=> b!1028422 (= e!580570 call!43366)))

(declare-fun b!1028423 () Bool)

(assert (=> b!1028423 (= e!580565 (= (apply!936 lt!453051 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5939 thiss!1427)))))

(assert (= (and d!122913 c!103720) b!1028417))

(assert (= (and d!122913 (not c!103720)) b!1028411))

(assert (= (and b!1028411 c!103723) b!1028422))

(assert (= (and b!1028411 (not c!103723)) b!1028404))

(assert (= (and b!1028404 c!103721) b!1028421))

(assert (= (and b!1028404 (not c!103721)) b!1028412))

(assert (= (or b!1028421 b!1028412) bm!43366))

(assert (= (or b!1028422 bm!43366) bm!43363))

(assert (= (or b!1028422 b!1028421) bm!43365))

(assert (= (or b!1028417 bm!43363) bm!43362))

(assert (= (or b!1028417 bm!43365) bm!43367))

(assert (= (and d!122913 res!688228) b!1028408))

(assert (= (and d!122913 c!103722) b!1028418))

(assert (= (and d!122913 (not c!103722)) b!1028419))

(assert (= (and d!122913 res!688223) b!1028405))

(assert (= (and b!1028405 res!688231) b!1028416))

(assert (= (and b!1028405 (not res!688229)) b!1028415))

(assert (= (and b!1028415 res!688227) b!1028407))

(assert (= (and b!1028405 res!688224) b!1028409))

(assert (= (and b!1028409 c!103719) b!1028420))

(assert (= (and b!1028409 (not c!103719)) b!1028406))

(assert (= (and b!1028420 res!688230) b!1028413))

(assert (= (or b!1028420 b!1028406) bm!43364))

(assert (= (and b!1028409 res!688226) b!1028414))

(assert (= (and b!1028414 c!103724) b!1028403))

(assert (= (and b!1028414 (not c!103724)) b!1028410))

(assert (= (and b!1028403 res!688225) b!1028423))

(assert (= (or b!1028403 b!1028410) bm!43361))

(declare-fun b_lambda!15825 () Bool)

(assert (=> (not b_lambda!15825) (not b!1028407)))

(assert (=> b!1028407 t!31005))

(declare-fun b_and!32897 () Bool)

(assert (= b_and!32895 (and (=> t!31005 result!14129) b_and!32897)))

(declare-fun m!947399 () Bool)

(assert (=> bm!43367 m!947399))

(declare-fun m!947401 () Bool)

(assert (=> b!1028418 m!947401))

(declare-fun m!947403 () Bool)

(assert (=> b!1028418 m!947403))

(declare-fun m!947405 () Bool)

(assert (=> b!1028418 m!947405))

(declare-fun m!947407 () Bool)

(assert (=> b!1028418 m!947407))

(declare-fun m!947409 () Bool)

(assert (=> b!1028418 m!947409))

(declare-fun m!947411 () Bool)

(assert (=> b!1028418 m!947411))

(declare-fun m!947413 () Bool)

(assert (=> b!1028418 m!947413))

(declare-fun m!947415 () Bool)

(assert (=> b!1028418 m!947415))

(declare-fun m!947417 () Bool)

(assert (=> b!1028418 m!947417))

(assert (=> b!1028418 m!947415))

(assert (=> b!1028418 m!947413))

(declare-fun m!947419 () Bool)

(assert (=> b!1028418 m!947419))

(declare-fun m!947421 () Bool)

(assert (=> b!1028418 m!947421))

(declare-fun m!947423 () Bool)

(assert (=> b!1028418 m!947423))

(declare-fun m!947425 () Bool)

(assert (=> b!1028418 m!947425))

(declare-fun m!947427 () Bool)

(assert (=> b!1028418 m!947427))

(assert (=> b!1028418 m!947409))

(declare-fun m!947429 () Bool)

(assert (=> b!1028418 m!947429))

(assert (=> b!1028418 m!947325))

(assert (=> b!1028418 m!947425))

(declare-fun m!947431 () Bool)

(assert (=> b!1028418 m!947431))

(assert (=> b!1028415 m!947325))

(assert (=> b!1028415 m!947325))

(declare-fun m!947433 () Bool)

(assert (=> b!1028415 m!947433))

(assert (=> d!122913 m!947333))

(declare-fun m!947435 () Bool)

(assert (=> b!1028423 m!947435))

(assert (=> b!1028416 m!947325))

(assert (=> b!1028416 m!947325))

(assert (=> b!1028416 m!947327))

(declare-fun m!947437 () Bool)

(assert (=> bm!43364 m!947437))

(assert (=> bm!43362 m!947429))

(declare-fun m!947439 () Bool)

(assert (=> bm!43361 m!947439))

(declare-fun m!947441 () Bool)

(assert (=> b!1028417 m!947441))

(declare-fun m!947443 () Bool)

(assert (=> b!1028413 m!947443))

(assert (=> b!1028408 m!947325))

(assert (=> b!1028408 m!947325))

(assert (=> b!1028408 m!947327))

(assert (=> b!1028407 m!947253))

(assert (=> b!1028407 m!947325))

(declare-fun m!947445 () Bool)

(assert (=> b!1028407 m!947445))

(assert (=> b!1028407 m!947253))

(declare-fun m!947447 () Bool)

(assert (=> b!1028407 m!947447))

(assert (=> b!1028407 m!947445))

(assert (=> b!1028407 m!947325))

(declare-fun m!947449 () Bool)

(assert (=> b!1028407 m!947449))

(assert (=> b!1028274 d!122913))

(declare-fun bm!43370 () Bool)

(declare-fun call!43373 () Bool)

(declare-fun c!103727 () Bool)

(assert (=> bm!43370 (= call!43373 (arrayNoDuplicates!0 lt!452921 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!103727 (Cons!21918 (select (arr!31125 lt!452921) #b00000000000000000000000000000000) Nil!21919) Nil!21919)))))

(declare-fun b!1028434 () Bool)

(declare-fun e!580584 () Bool)

(assert (=> b!1028434 (= e!580584 call!43373)))

(declare-fun d!122915 () Bool)

(declare-fun res!688239 () Bool)

(declare-fun e!580583 () Bool)

(assert (=> d!122915 (=> res!688239 e!580583)))

(assert (=> d!122915 (= res!688239 (bvsge #b00000000000000000000000000000000 (size!31640 lt!452921)))))

(assert (=> d!122915 (= (arrayNoDuplicates!0 lt!452921 #b00000000000000000000000000000000 Nil!21919) e!580583)))

(declare-fun b!1028435 () Bool)

(declare-fun e!580582 () Bool)

(declare-fun contains!5986 (List!21922 (_ BitVec 64)) Bool)

(assert (=> b!1028435 (= e!580582 (contains!5986 Nil!21919 (select (arr!31125 lt!452921) #b00000000000000000000000000000000)))))

(declare-fun b!1028436 () Bool)

(assert (=> b!1028436 (= e!580584 call!43373)))

(declare-fun b!1028437 () Bool)

(declare-fun e!580585 () Bool)

(assert (=> b!1028437 (= e!580585 e!580584)))

(assert (=> b!1028437 (= c!103727 (validKeyInArray!0 (select (arr!31125 lt!452921) #b00000000000000000000000000000000)))))

(declare-fun b!1028438 () Bool)

(assert (=> b!1028438 (= e!580583 e!580585)))

(declare-fun res!688240 () Bool)

(assert (=> b!1028438 (=> (not res!688240) (not e!580585))))

(assert (=> b!1028438 (= res!688240 (not e!580582))))

(declare-fun res!688238 () Bool)

(assert (=> b!1028438 (=> (not res!688238) (not e!580582))))

(assert (=> b!1028438 (= res!688238 (validKeyInArray!0 (select (arr!31125 lt!452921) #b00000000000000000000000000000000)))))

(assert (= (and d!122915 (not res!688239)) b!1028438))

(assert (= (and b!1028438 res!688238) b!1028435))

(assert (= (and b!1028438 res!688240) b!1028437))

(assert (= (and b!1028437 c!103727) b!1028434))

(assert (= (and b!1028437 (not c!103727)) b!1028436))

(assert (= (or b!1028434 b!1028436) bm!43370))

(assert (=> bm!43370 m!947325))

(declare-fun m!947451 () Bool)

(assert (=> bm!43370 m!947451))

(assert (=> b!1028435 m!947325))

(assert (=> b!1028435 m!947325))

(declare-fun m!947453 () Bool)

(assert (=> b!1028435 m!947453))

(assert (=> b!1028437 m!947325))

(assert (=> b!1028437 m!947325))

(assert (=> b!1028437 m!947327))

(assert (=> b!1028438 m!947325))

(assert (=> b!1028438 m!947325))

(assert (=> b!1028438 m!947327))

(assert (=> b!1028274 d!122915))

(declare-fun d!122917 () Bool)

(assert (=> d!122917 (= (validMask!0 (mask!29833 (_2!7824 lt!452927))) (and (or (= (mask!29833 (_2!7824 lt!452927)) #b00000000000000000000000000000111) (= (mask!29833 (_2!7824 lt!452927)) #b00000000000000000000000000001111) (= (mask!29833 (_2!7824 lt!452927)) #b00000000000000000000000000011111) (= (mask!29833 (_2!7824 lt!452927)) #b00000000000000000000000000111111) (= (mask!29833 (_2!7824 lt!452927)) #b00000000000000000000000001111111) (= (mask!29833 (_2!7824 lt!452927)) #b00000000000000000000000011111111) (= (mask!29833 (_2!7824 lt!452927)) #b00000000000000000000000111111111) (= (mask!29833 (_2!7824 lt!452927)) #b00000000000000000000001111111111) (= (mask!29833 (_2!7824 lt!452927)) #b00000000000000000000011111111111) (= (mask!29833 (_2!7824 lt!452927)) #b00000000000000000000111111111111) (= (mask!29833 (_2!7824 lt!452927)) #b00000000000000000001111111111111) (= (mask!29833 (_2!7824 lt!452927)) #b00000000000000000011111111111111) (= (mask!29833 (_2!7824 lt!452927)) #b00000000000000000111111111111111) (= (mask!29833 (_2!7824 lt!452927)) #b00000000000000001111111111111111) (= (mask!29833 (_2!7824 lt!452927)) #b00000000000000011111111111111111) (= (mask!29833 (_2!7824 lt!452927)) #b00000000000000111111111111111111) (= (mask!29833 (_2!7824 lt!452927)) #b00000000000001111111111111111111) (= (mask!29833 (_2!7824 lt!452927)) #b00000000000011111111111111111111) (= (mask!29833 (_2!7824 lt!452927)) #b00000000000111111111111111111111) (= (mask!29833 (_2!7824 lt!452927)) #b00000000001111111111111111111111) (= (mask!29833 (_2!7824 lt!452927)) #b00000000011111111111111111111111) (= (mask!29833 (_2!7824 lt!452927)) #b00000000111111111111111111111111) (= (mask!29833 (_2!7824 lt!452927)) #b00000001111111111111111111111111) (= (mask!29833 (_2!7824 lt!452927)) #b00000011111111111111111111111111) (= (mask!29833 (_2!7824 lt!452927)) #b00000111111111111111111111111111) (= (mask!29833 (_2!7824 lt!452927)) #b00001111111111111111111111111111) (= (mask!29833 (_2!7824 lt!452927)) #b00011111111111111111111111111111) (= (mask!29833 (_2!7824 lt!452927)) #b00111111111111111111111111111111)) (bvsle (mask!29833 (_2!7824 lt!452927)) #b00111111111111111111111111111111)))))

(assert (=> b!1028274 d!122917))

(declare-fun d!122919 () Bool)

(declare-fun lt!453055 () (_ BitVec 32))

(assert (=> d!122919 (and (bvsge lt!453055 #b00000000000000000000000000000000) (bvsle lt!453055 (bvsub (size!31640 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!580586 () (_ BitVec 32))

(assert (=> d!122919 (= lt!453055 e!580586)))

(declare-fun c!103729 () Bool)

(assert (=> d!122919 (= c!103729 (bvsge #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))))))

(assert (=> d!122919 (and (bvsle #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31640 (_keys!11254 thiss!1427)) (size!31640 (_keys!11254 thiss!1427))))))

(assert (=> d!122919 (= (arrayCountValidKeys!0 (_keys!11254 thiss!1427) #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))) lt!453055)))

(declare-fun b!1028439 () Bool)

(declare-fun e!580587 () (_ BitVec 32))

(declare-fun call!43374 () (_ BitVec 32))

(assert (=> b!1028439 (= e!580587 call!43374)))

(declare-fun b!1028440 () Bool)

(assert (=> b!1028440 (= e!580586 e!580587)))

(declare-fun c!103728 () Bool)

(assert (=> b!1028440 (= c!103728 (validKeyInArray!0 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1028441 () Bool)

(assert (=> b!1028441 (= e!580586 #b00000000000000000000000000000000)))

(declare-fun bm!43371 () Bool)

(assert (=> bm!43371 (= call!43374 (arrayCountValidKeys!0 (_keys!11254 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31640 (_keys!11254 thiss!1427))))))

(declare-fun b!1028442 () Bool)

(assert (=> b!1028442 (= e!580587 (bvadd #b00000000000000000000000000000001 call!43374))))

(assert (= (and d!122919 c!103729) b!1028441))

(assert (= (and d!122919 (not c!103729)) b!1028440))

(assert (= (and b!1028440 c!103728) b!1028442))

(assert (= (and b!1028440 (not c!103728)) b!1028439))

(assert (= (or b!1028442 b!1028439) bm!43371))

(assert (=> b!1028440 m!947369))

(assert (=> b!1028440 m!947369))

(assert (=> b!1028440 m!947377))

(declare-fun m!947455 () Bool)

(assert (=> bm!43371 m!947455))

(assert (=> b!1028274 d!122919))

(declare-fun d!122921 () Bool)

(declare-fun e!580590 () Bool)

(assert (=> d!122921 e!580590))

(declare-fun res!688243 () Bool)

(assert (=> d!122921 (=> (not res!688243) (not e!580590))))

(assert (=> d!122921 (= res!688243 (and (bvsge (index!41035 lt!452919) #b00000000000000000000000000000000) (bvslt (index!41035 lt!452919) (size!31640 (_keys!11254 thiss!1427)))))))

(declare-fun lt!453058 () Unit!33536)

(declare-fun choose!53 (array!64644 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21922) Unit!33536)

(assert (=> d!122921 (= lt!453058 (choose!53 (_keys!11254 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41035 lt!452919) #b00000000000000000000000000000000 Nil!21919))))

(assert (=> d!122921 (bvslt (size!31640 (_keys!11254 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!122921 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11254 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41035 lt!452919) #b00000000000000000000000000000000 Nil!21919) lt!453058)))

(declare-fun b!1028445 () Bool)

(assert (=> b!1028445 (= e!580590 (arrayNoDuplicates!0 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) #b00000000000000000000000000000000 Nil!21919))))

(assert (= (and d!122921 res!688243) b!1028445))

(declare-fun m!947457 () Bool)

(assert (=> d!122921 m!947457))

(assert (=> b!1028445 m!947231))

(declare-fun m!947459 () Bool)

(assert (=> b!1028445 m!947459))

(assert (=> b!1028274 d!122921))

(declare-fun b!1028454 () Bool)

(declare-fun e!580598 () Bool)

(declare-fun call!43377 () Bool)

(assert (=> b!1028454 (= e!580598 call!43377)))

(declare-fun b!1028455 () Bool)

(declare-fun e!580597 () Bool)

(assert (=> b!1028455 (= e!580597 e!580598)))

(declare-fun lt!453065 () (_ BitVec 64))

(assert (=> b!1028455 (= lt!453065 (select (arr!31125 lt!452921) #b00000000000000000000000000000000))))

(declare-fun lt!453067 () Unit!33536)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!64644 (_ BitVec 64) (_ BitVec 32)) Unit!33536)

(assert (=> b!1028455 (= lt!453067 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!452921 lt!453065 #b00000000000000000000000000000000))))

(assert (=> b!1028455 (arrayContainsKey!0 lt!452921 lt!453065 #b00000000000000000000000000000000)))

(declare-fun lt!453066 () Unit!33536)

(assert (=> b!1028455 (= lt!453066 lt!453067)))

(declare-fun res!688249 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!64644 (_ BitVec 32)) SeekEntryResult!9666)

(assert (=> b!1028455 (= res!688249 (= (seekEntryOrOpen!0 (select (arr!31125 lt!452921) #b00000000000000000000000000000000) lt!452921 (mask!29833 thiss!1427)) (Found!9666 #b00000000000000000000000000000000)))))

(assert (=> b!1028455 (=> (not res!688249) (not e!580598))))

(declare-fun bm!43374 () Bool)

(assert (=> bm!43374 (= call!43377 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!452921 (mask!29833 thiss!1427)))))

(declare-fun b!1028456 () Bool)

(declare-fun e!580599 () Bool)

(assert (=> b!1028456 (= e!580599 e!580597)))

(declare-fun c!103732 () Bool)

(assert (=> b!1028456 (= c!103732 (validKeyInArray!0 (select (arr!31125 lt!452921) #b00000000000000000000000000000000)))))

(declare-fun b!1028457 () Bool)

(assert (=> b!1028457 (= e!580597 call!43377)))

(declare-fun d!122923 () Bool)

(declare-fun res!688248 () Bool)

(assert (=> d!122923 (=> res!688248 e!580599)))

(assert (=> d!122923 (= res!688248 (bvsge #b00000000000000000000000000000000 (size!31640 lt!452921)))))

(assert (=> d!122923 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!452921 (mask!29833 thiss!1427)) e!580599)))

(assert (= (and d!122923 (not res!688248)) b!1028456))

(assert (= (and b!1028456 c!103732) b!1028455))

(assert (= (and b!1028456 (not c!103732)) b!1028457))

(assert (= (and b!1028455 res!688249) b!1028454))

(assert (= (or b!1028454 b!1028457) bm!43374))

(assert (=> b!1028455 m!947325))

(declare-fun m!947461 () Bool)

(assert (=> b!1028455 m!947461))

(declare-fun m!947463 () Bool)

(assert (=> b!1028455 m!947463))

(assert (=> b!1028455 m!947325))

(declare-fun m!947465 () Bool)

(assert (=> b!1028455 m!947465))

(declare-fun m!947467 () Bool)

(assert (=> bm!43374 m!947467))

(assert (=> b!1028456 m!947325))

(assert (=> b!1028456 m!947325))

(assert (=> b!1028456 m!947327))

(assert (=> b!1028274 d!122923))

(declare-fun d!122925 () Bool)

(declare-fun e!580602 () Bool)

(assert (=> d!122925 e!580602))

(declare-fun res!688252 () Bool)

(assert (=> d!122925 (=> (not res!688252) (not e!580602))))

(assert (=> d!122925 (= res!688252 (and (bvsge (index!41035 lt!452919) #b00000000000000000000000000000000) (bvslt (index!41035 lt!452919) (size!31640 (_keys!11254 thiss!1427)))))))

(declare-fun lt!453070 () Unit!33536)

(declare-fun choose!25 (array!64644 (_ BitVec 32) (_ BitVec 32)) Unit!33536)

(assert (=> d!122925 (= lt!453070 (choose!25 (_keys!11254 thiss!1427) (index!41035 lt!452919) (mask!29833 thiss!1427)))))

(assert (=> d!122925 (validMask!0 (mask!29833 thiss!1427))))

(assert (=> d!122925 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11254 thiss!1427) (index!41035 lt!452919) (mask!29833 thiss!1427)) lt!453070)))

(declare-fun b!1028460 () Bool)

(assert (=> b!1028460 (= e!580602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) (mask!29833 thiss!1427)))))

(assert (= (and d!122925 res!688252) b!1028460))

(declare-fun m!947469 () Bool)

(assert (=> d!122925 m!947469))

(assert (=> d!122925 m!947333))

(assert (=> b!1028460 m!947231))

(declare-fun m!947471 () Bool)

(assert (=> b!1028460 m!947471))

(assert (=> b!1028274 d!122925))

(declare-fun d!122927 () Bool)

(declare-fun e!580605 () Bool)

(assert (=> d!122927 e!580605))

(declare-fun res!688255 () Bool)

(assert (=> d!122927 (=> (not res!688255) (not e!580605))))

(assert (=> d!122927 (= res!688255 (bvslt (index!41035 lt!452919) (size!31640 (_keys!11254 thiss!1427))))))

(declare-fun lt!453073 () Unit!33536)

(declare-fun choose!121 (array!64644 (_ BitVec 32) (_ BitVec 64)) Unit!33536)

(assert (=> d!122927 (= lt!453073 (choose!121 (_keys!11254 thiss!1427) (index!41035 lt!452919) key!909))))

(assert (=> d!122927 (bvsge (index!41035 lt!452919) #b00000000000000000000000000000000)))

(assert (=> d!122927 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11254 thiss!1427) (index!41035 lt!452919) key!909) lt!453073)))

(declare-fun b!1028463 () Bool)

(assert (=> b!1028463 (= e!580605 (not (arrayContainsKey!0 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!122927 res!688255) b!1028463))

(declare-fun m!947473 () Bool)

(assert (=> d!122927 m!947473))

(assert (=> b!1028463 m!947231))

(declare-fun m!947475 () Bool)

(assert (=> b!1028463 m!947475))

(assert (=> b!1028274 d!122927))

(declare-fun d!122929 () Bool)

(assert (=> d!122929 (= (array_inv!23945 (_keys!11254 thiss!1427)) (bvsge (size!31640 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1028277 d!122929))

(declare-fun d!122931 () Bool)

(assert (=> d!122931 (= (array_inv!23946 (_values!6126 thiss!1427)) (bvsge (size!31641 (_values!6126 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1028277 d!122931))

(declare-fun b!1028476 () Bool)

(declare-fun c!103739 () Bool)

(declare-fun lt!453085 () (_ BitVec 64))

(assert (=> b!1028476 (= c!103739 (= lt!453085 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!580614 () SeekEntryResult!9666)

(declare-fun e!580612 () SeekEntryResult!9666)

(assert (=> b!1028476 (= e!580614 e!580612)))

(declare-fun b!1028477 () Bool)

(declare-fun lt!453082 () SeekEntryResult!9666)

(assert (=> b!1028477 (= e!580612 (ite ((_ is MissingVacant!9666) lt!453082) (MissingZero!9666 (index!41037 lt!453082)) lt!453082))))

(declare-fun lt!453083 () SeekEntryResult!9666)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!64644 (_ BitVec 32)) SeekEntryResult!9666)

(assert (=> b!1028477 (= lt!453082 (seekKeyOrZeroReturnVacant!0 (x!91491 lt!453083) (index!41036 lt!453083) (index!41036 lt!453083) key!909 (_keys!11254 thiss!1427) (mask!29833 thiss!1427)))))

(declare-fun b!1028478 () Bool)

(declare-fun e!580613 () SeekEntryResult!9666)

(assert (=> b!1028478 (= e!580613 Undefined!9666)))

(declare-fun b!1028479 () Bool)

(assert (=> b!1028479 (= e!580614 (Found!9666 (index!41036 lt!453083)))))

(declare-fun d!122933 () Bool)

(declare-fun lt!453084 () SeekEntryResult!9666)

(assert (=> d!122933 (and (or ((_ is MissingVacant!9666) lt!453084) (not ((_ is Found!9666) lt!453084)) (and (bvsge (index!41035 lt!453084) #b00000000000000000000000000000000) (bvslt (index!41035 lt!453084) (size!31640 (_keys!11254 thiss!1427))))) (not ((_ is MissingVacant!9666) lt!453084)) (or (not ((_ is Found!9666) lt!453084)) (= (select (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!453084)) key!909)))))

(assert (=> d!122933 (= lt!453084 e!580613)))

(declare-fun c!103741 () Bool)

(assert (=> d!122933 (= c!103741 (and ((_ is Intermediate!9666) lt!453083) (undefined!10478 lt!453083)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!64644 (_ BitVec 32)) SeekEntryResult!9666)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!122933 (= lt!453083 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!29833 thiss!1427)) key!909 (_keys!11254 thiss!1427) (mask!29833 thiss!1427)))))

(assert (=> d!122933 (validMask!0 (mask!29833 thiss!1427))))

(assert (=> d!122933 (= (seekEntry!0 key!909 (_keys!11254 thiss!1427) (mask!29833 thiss!1427)) lt!453084)))

(declare-fun b!1028480 () Bool)

(assert (=> b!1028480 (= e!580613 e!580614)))

(assert (=> b!1028480 (= lt!453085 (select (arr!31125 (_keys!11254 thiss!1427)) (index!41036 lt!453083)))))

(declare-fun c!103740 () Bool)

(assert (=> b!1028480 (= c!103740 (= lt!453085 key!909))))

(declare-fun b!1028481 () Bool)

(assert (=> b!1028481 (= e!580612 (MissingZero!9666 (index!41036 lt!453083)))))

(assert (= (and d!122933 c!103741) b!1028478))

(assert (= (and d!122933 (not c!103741)) b!1028480))

(assert (= (and b!1028480 c!103740) b!1028479))

(assert (= (and b!1028480 (not c!103740)) b!1028476))

(assert (= (and b!1028476 c!103739) b!1028481))

(assert (= (and b!1028476 (not c!103739)) b!1028477))

(declare-fun m!947477 () Bool)

(assert (=> b!1028477 m!947477))

(declare-fun m!947479 () Bool)

(assert (=> d!122933 m!947479))

(declare-fun m!947481 () Bool)

(assert (=> d!122933 m!947481))

(assert (=> d!122933 m!947481))

(declare-fun m!947483 () Bool)

(assert (=> d!122933 m!947483))

(assert (=> d!122933 m!947333))

(declare-fun m!947485 () Bool)

(assert (=> b!1028480 m!947485))

(assert (=> b!1028272 d!122933))

(declare-fun d!122935 () Bool)

(declare-fun res!688262 () Bool)

(declare-fun e!580617 () Bool)

(assert (=> d!122935 (=> (not res!688262) (not e!580617))))

(declare-fun simpleValid!391 (LongMapFixedSize!5490) Bool)

(assert (=> d!122935 (= res!688262 (simpleValid!391 thiss!1427))))

(assert (=> d!122935 (= (valid!2033 thiss!1427) e!580617)))

(declare-fun b!1028488 () Bool)

(declare-fun res!688263 () Bool)

(assert (=> b!1028488 (=> (not res!688263) (not e!580617))))

(assert (=> b!1028488 (= res!688263 (= (arrayCountValidKeys!0 (_keys!11254 thiss!1427) #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))) (_size!2800 thiss!1427)))))

(declare-fun b!1028489 () Bool)

(declare-fun res!688264 () Bool)

(assert (=> b!1028489 (=> (not res!688264) (not e!580617))))

(assert (=> b!1028489 (= res!688264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11254 thiss!1427) (mask!29833 thiss!1427)))))

(declare-fun b!1028490 () Bool)

(assert (=> b!1028490 (= e!580617 (arrayNoDuplicates!0 (_keys!11254 thiss!1427) #b00000000000000000000000000000000 Nil!21919))))

(assert (= (and d!122935 res!688262) b!1028488))

(assert (= (and b!1028488 res!688263) b!1028489))

(assert (= (and b!1028489 res!688264) b!1028490))

(declare-fun m!947487 () Bool)

(assert (=> d!122935 m!947487))

(assert (=> b!1028488 m!947261))

(declare-fun m!947489 () Bool)

(assert (=> b!1028489 m!947489))

(declare-fun m!947491 () Bool)

(assert (=> b!1028490 m!947491))

(assert (=> start!89726 d!122935))

(declare-fun mapIsEmpty!37896 () Bool)

(declare-fun mapRes!37896 () Bool)

(assert (=> mapIsEmpty!37896 mapRes!37896))

(declare-fun mapNonEmpty!37896 () Bool)

(declare-fun tp!72812 () Bool)

(declare-fun e!580623 () Bool)

(assert (=> mapNonEmpty!37896 (= mapRes!37896 (and tp!72812 e!580623))))

(declare-fun mapRest!37896 () (Array (_ BitVec 32) ValueCell!11448))

(declare-fun mapValue!37896 () ValueCell!11448)

(declare-fun mapKey!37896 () (_ BitVec 32))

(assert (=> mapNonEmpty!37896 (= mapRest!37890 (store mapRest!37896 mapKey!37896 mapValue!37896))))

(declare-fun b!1028497 () Bool)

(assert (=> b!1028497 (= e!580623 tp_is_empty!24303)))

(declare-fun b!1028498 () Bool)

(declare-fun e!580622 () Bool)

(assert (=> b!1028498 (= e!580622 tp_is_empty!24303)))

(declare-fun condMapEmpty!37896 () Bool)

(declare-fun mapDefault!37896 () ValueCell!11448)

(assert (=> mapNonEmpty!37890 (= condMapEmpty!37896 (= mapRest!37890 ((as const (Array (_ BitVec 32) ValueCell!11448)) mapDefault!37896)))))

(assert (=> mapNonEmpty!37890 (= tp!72803 (and e!580622 mapRes!37896))))

(assert (= (and mapNonEmpty!37890 condMapEmpty!37896) mapIsEmpty!37896))

(assert (= (and mapNonEmpty!37890 (not condMapEmpty!37896)) mapNonEmpty!37896))

(assert (= (and mapNonEmpty!37896 ((_ is ValueCellFull!11448) mapValue!37896)) b!1028497))

(assert (= (and mapNonEmpty!37890 ((_ is ValueCellFull!11448) mapDefault!37896)) b!1028498))

(declare-fun m!947493 () Bool)

(assert (=> mapNonEmpty!37896 m!947493))

(declare-fun b_lambda!15827 () Bool)

(assert (= b_lambda!15821 (or (and b!1028277 b_free!20583) b_lambda!15827)))

(declare-fun b_lambda!15829 () Bool)

(assert (= b_lambda!15825 (or (and b!1028277 b_free!20583) b_lambda!15829)))

(declare-fun b_lambda!15831 () Bool)

(assert (= b_lambda!15823 (or (and b!1028277 b_free!20583) b_lambda!15831)))

(check-sat (not bm!43361) (not b!1028318) (not b!1028386) (not b!1028316) (not b!1028408) (not b!1028416) (not d!122913) (not b!1028418) (not b!1028333) (not b_lambda!15831) (not bm!43374) (not mapNonEmpty!37896) (not d!122921) (not b!1028455) (not d!122933) (not b_lambda!15829) (not b!1028477) (not b!1028396) (not d!122907) (not bm!43357) (not b!1028456) (not b!1028388) (not b!1028438) (not d!122935) (not b!1028315) (not bm!43370) (not b!1028413) (not b!1028437) (not b!1028490) (not b!1028389) (not b!1028440) (not b!1028415) (not d!122925) (not b_lambda!15819) (not d!122927) (not b!1028417) (not b!1028488) (not b!1028380) (not b_lambda!15827) (not b!1028407) (not b!1028390) (not b!1028489) (not bm!43364) (not b!1028328) (not b!1028435) (not b!1028445) (not d!122905) (not d!122901) b_and!32897 (not bm!43371) (not b!1028402) (not bm!43367) (not b!1028391) (not b_next!20583) (not b!1028463) (not b!1028381) tp_is_empty!24303 (not b!1028460) (not bm!43355) (not bm!43354) (not bm!43360) (not b!1028423) (not bm!43339) (not bm!43362) (not d!122909))
(check-sat b_and!32897 (not b_next!20583))
(get-model)

(declare-fun d!122937 () Bool)

(assert (=> d!122937 (= (validKeyInArray!0 (select (arr!31125 lt!452921) #b00000000000000000000000000000000)) (and (not (= (select (arr!31125 lt!452921) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31125 lt!452921) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1028416 d!122937))

(declare-fun d!122939 () Bool)

(declare-datatypes ((Option!639 0))(
  ( (Some!638 (v!14777 V!37277)) (None!637) )
))
(declare-fun get!16359 (Option!639) V!37277)

(declare-fun getValueByKey!588 (List!21921 (_ BitVec 64)) Option!639)

(assert (=> d!122939 (= (apply!936 lt!453026 #b0000000000000000000000000000000000000000000000000000000000000000) (get!16359 (getValueByKey!588 (toList!6905 lt!453026) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30020 () Bool)

(assert (= bs!30020 d!122939))

(declare-fun m!947495 () Bool)

(assert (=> bs!30020 m!947495))

(assert (=> bs!30020 m!947495))

(declare-fun m!947497 () Bool)

(assert (=> bs!30020 m!947497))

(assert (=> b!1028386 d!122939))

(declare-fun d!122941 () Bool)

(assert (=> d!122941 (= (apply!936 lt!453037 lt!453053) (get!16359 (getValueByKey!588 (toList!6905 lt!453037) lt!453053)))))

(declare-fun bs!30021 () Bool)

(assert (= bs!30021 d!122941))

(declare-fun m!947499 () Bool)

(assert (=> bs!30021 m!947499))

(assert (=> bs!30021 m!947499))

(declare-fun m!947501 () Bool)

(assert (=> bs!30021 m!947501))

(assert (=> b!1028418 d!122941))

(declare-fun d!122943 () Bool)

(declare-fun e!580626 () Bool)

(assert (=> d!122943 e!580626))

(declare-fun res!688270 () Bool)

(assert (=> d!122943 (=> (not res!688270) (not e!580626))))

(declare-fun lt!453095 () ListLongMap!13779)

(assert (=> d!122943 (= res!688270 (contains!5985 lt!453095 (_1!7825 (tuple2!15631 lt!453052 (zeroValue!5939 thiss!1427)))))))

(declare-fun lt!453097 () List!21921)

(assert (=> d!122943 (= lt!453095 (ListLongMap!13780 lt!453097))))

(declare-fun lt!453094 () Unit!33536)

(declare-fun lt!453096 () Unit!33536)

(assert (=> d!122943 (= lt!453094 lt!453096)))

(assert (=> d!122943 (= (getValueByKey!588 lt!453097 (_1!7825 (tuple2!15631 lt!453052 (zeroValue!5939 thiss!1427)))) (Some!638 (_2!7825 (tuple2!15631 lt!453052 (zeroValue!5939 thiss!1427)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!277 (List!21921 (_ BitVec 64) V!37277) Unit!33536)

(assert (=> d!122943 (= lt!453096 (lemmaContainsTupThenGetReturnValue!277 lt!453097 (_1!7825 (tuple2!15631 lt!453052 (zeroValue!5939 thiss!1427))) (_2!7825 (tuple2!15631 lt!453052 (zeroValue!5939 thiss!1427)))))))

(declare-fun insertStrictlySorted!369 (List!21921 (_ BitVec 64) V!37277) List!21921)

(assert (=> d!122943 (= lt!453097 (insertStrictlySorted!369 (toList!6905 lt!453037) (_1!7825 (tuple2!15631 lt!453052 (zeroValue!5939 thiss!1427))) (_2!7825 (tuple2!15631 lt!453052 (zeroValue!5939 thiss!1427)))))))

(assert (=> d!122943 (= (+!3059 lt!453037 (tuple2!15631 lt!453052 (zeroValue!5939 thiss!1427))) lt!453095)))

(declare-fun b!1028503 () Bool)

(declare-fun res!688269 () Bool)

(assert (=> b!1028503 (=> (not res!688269) (not e!580626))))

(assert (=> b!1028503 (= res!688269 (= (getValueByKey!588 (toList!6905 lt!453095) (_1!7825 (tuple2!15631 lt!453052 (zeroValue!5939 thiss!1427)))) (Some!638 (_2!7825 (tuple2!15631 lt!453052 (zeroValue!5939 thiss!1427))))))))

(declare-fun b!1028504 () Bool)

(declare-fun contains!5987 (List!21921 tuple2!15630) Bool)

(assert (=> b!1028504 (= e!580626 (contains!5987 (toList!6905 lt!453095) (tuple2!15631 lt!453052 (zeroValue!5939 thiss!1427))))))

(assert (= (and d!122943 res!688270) b!1028503))

(assert (= (and b!1028503 res!688269) b!1028504))

(declare-fun m!947503 () Bool)

(assert (=> d!122943 m!947503))

(declare-fun m!947505 () Bool)

(assert (=> d!122943 m!947505))

(declare-fun m!947507 () Bool)

(assert (=> d!122943 m!947507))

(declare-fun m!947509 () Bool)

(assert (=> d!122943 m!947509))

(declare-fun m!947511 () Bool)

(assert (=> b!1028503 m!947511))

(declare-fun m!947513 () Bool)

(assert (=> b!1028504 m!947513))

(assert (=> b!1028418 d!122943))

(declare-fun d!122945 () Bool)

(declare-fun e!580627 () Bool)

(assert (=> d!122945 e!580627))

(declare-fun res!688272 () Bool)

(assert (=> d!122945 (=> (not res!688272) (not e!580627))))

(declare-fun lt!453099 () ListLongMap!13779)

(assert (=> d!122945 (= res!688272 (contains!5985 lt!453099 (_1!7825 (tuple2!15631 lt!453044 (zeroValue!5939 thiss!1427)))))))

(declare-fun lt!453101 () List!21921)

(assert (=> d!122945 (= lt!453099 (ListLongMap!13780 lt!453101))))

(declare-fun lt!453098 () Unit!33536)

(declare-fun lt!453100 () Unit!33536)

(assert (=> d!122945 (= lt!453098 lt!453100)))

(assert (=> d!122945 (= (getValueByKey!588 lt!453101 (_1!7825 (tuple2!15631 lt!453044 (zeroValue!5939 thiss!1427)))) (Some!638 (_2!7825 (tuple2!15631 lt!453044 (zeroValue!5939 thiss!1427)))))))

(assert (=> d!122945 (= lt!453100 (lemmaContainsTupThenGetReturnValue!277 lt!453101 (_1!7825 (tuple2!15631 lt!453044 (zeroValue!5939 thiss!1427))) (_2!7825 (tuple2!15631 lt!453044 (zeroValue!5939 thiss!1427)))))))

(assert (=> d!122945 (= lt!453101 (insertStrictlySorted!369 (toList!6905 lt!453034) (_1!7825 (tuple2!15631 lt!453044 (zeroValue!5939 thiss!1427))) (_2!7825 (tuple2!15631 lt!453044 (zeroValue!5939 thiss!1427)))))))

(assert (=> d!122945 (= (+!3059 lt!453034 (tuple2!15631 lt!453044 (zeroValue!5939 thiss!1427))) lt!453099)))

(declare-fun b!1028505 () Bool)

(declare-fun res!688271 () Bool)

(assert (=> b!1028505 (=> (not res!688271) (not e!580627))))

(assert (=> b!1028505 (= res!688271 (= (getValueByKey!588 (toList!6905 lt!453099) (_1!7825 (tuple2!15631 lt!453044 (zeroValue!5939 thiss!1427)))) (Some!638 (_2!7825 (tuple2!15631 lt!453044 (zeroValue!5939 thiss!1427))))))))

(declare-fun b!1028506 () Bool)

(assert (=> b!1028506 (= e!580627 (contains!5987 (toList!6905 lt!453099) (tuple2!15631 lt!453044 (zeroValue!5939 thiss!1427))))))

(assert (= (and d!122945 res!688272) b!1028505))

(assert (= (and b!1028505 res!688271) b!1028506))

(declare-fun m!947515 () Bool)

(assert (=> d!122945 m!947515))

(declare-fun m!947517 () Bool)

(assert (=> d!122945 m!947517))

(declare-fun m!947519 () Bool)

(assert (=> d!122945 m!947519))

(declare-fun m!947521 () Bool)

(assert (=> d!122945 m!947521))

(declare-fun m!947523 () Bool)

(assert (=> b!1028505 m!947523))

(declare-fun m!947525 () Bool)

(assert (=> b!1028506 m!947525))

(assert (=> b!1028418 d!122945))

(declare-fun d!122947 () Bool)

(assert (=> d!122947 (= (apply!936 (+!3059 lt!453037 (tuple2!15631 lt!453052 (zeroValue!5939 thiss!1427))) lt!453053) (get!16359 (getValueByKey!588 (toList!6905 (+!3059 lt!453037 (tuple2!15631 lt!453052 (zeroValue!5939 thiss!1427)))) lt!453053)))))

(declare-fun bs!30022 () Bool)

(assert (= bs!30022 d!122947))

(declare-fun m!947527 () Bool)

(assert (=> bs!30022 m!947527))

(assert (=> bs!30022 m!947527))

(declare-fun m!947529 () Bool)

(assert (=> bs!30022 m!947529))

(assert (=> b!1028418 d!122947))

(declare-fun d!122949 () Bool)

(assert (=> d!122949 (= (apply!936 (+!3059 lt!453046 (tuple2!15631 lt!453042 (minValue!5939 thiss!1427))) lt!453047) (apply!936 lt!453046 lt!453047))))

(declare-fun lt!453104 () Unit!33536)

(declare-fun choose!1692 (ListLongMap!13779 (_ BitVec 64) V!37277 (_ BitVec 64)) Unit!33536)

(assert (=> d!122949 (= lt!453104 (choose!1692 lt!453046 lt!453042 (minValue!5939 thiss!1427) lt!453047))))

(declare-fun e!580630 () Bool)

(assert (=> d!122949 e!580630))

(declare-fun res!688275 () Bool)

(assert (=> d!122949 (=> (not res!688275) (not e!580630))))

(assert (=> d!122949 (= res!688275 (contains!5985 lt!453046 lt!453047))))

(assert (=> d!122949 (= (addApplyDifferent!476 lt!453046 lt!453042 (minValue!5939 thiss!1427) lt!453047) lt!453104)))

(declare-fun b!1028510 () Bool)

(assert (=> b!1028510 (= e!580630 (not (= lt!453047 lt!453042)))))

(assert (= (and d!122949 res!688275) b!1028510))

(declare-fun m!947531 () Bool)

(assert (=> d!122949 m!947531))

(assert (=> d!122949 m!947425))

(declare-fun m!947533 () Bool)

(assert (=> d!122949 m!947533))

(assert (=> d!122949 m!947421))

(assert (=> d!122949 m!947425))

(assert (=> d!122949 m!947427))

(assert (=> b!1028418 d!122949))

(declare-fun d!122951 () Bool)

(declare-fun e!580631 () Bool)

(assert (=> d!122951 e!580631))

(declare-fun res!688277 () Bool)

(assert (=> d!122951 (=> (not res!688277) (not e!580631))))

(declare-fun lt!453106 () ListLongMap!13779)

(assert (=> d!122951 (= res!688277 (contains!5985 lt!453106 (_1!7825 (tuple2!15631 lt!453049 (minValue!5939 thiss!1427)))))))

(declare-fun lt!453108 () List!21921)

(assert (=> d!122951 (= lt!453106 (ListLongMap!13780 lt!453108))))

(declare-fun lt!453105 () Unit!33536)

(declare-fun lt!453107 () Unit!33536)

(assert (=> d!122951 (= lt!453105 lt!453107)))

(assert (=> d!122951 (= (getValueByKey!588 lt!453108 (_1!7825 (tuple2!15631 lt!453049 (minValue!5939 thiss!1427)))) (Some!638 (_2!7825 (tuple2!15631 lt!453049 (minValue!5939 thiss!1427)))))))

(assert (=> d!122951 (= lt!453107 (lemmaContainsTupThenGetReturnValue!277 lt!453108 (_1!7825 (tuple2!15631 lt!453049 (minValue!5939 thiss!1427))) (_2!7825 (tuple2!15631 lt!453049 (minValue!5939 thiss!1427)))))))

(assert (=> d!122951 (= lt!453108 (insertStrictlySorted!369 (toList!6905 lt!453040) (_1!7825 (tuple2!15631 lt!453049 (minValue!5939 thiss!1427))) (_2!7825 (tuple2!15631 lt!453049 (minValue!5939 thiss!1427)))))))

(assert (=> d!122951 (= (+!3059 lt!453040 (tuple2!15631 lt!453049 (minValue!5939 thiss!1427))) lt!453106)))

(declare-fun b!1028511 () Bool)

(declare-fun res!688276 () Bool)

(assert (=> b!1028511 (=> (not res!688276) (not e!580631))))

(assert (=> b!1028511 (= res!688276 (= (getValueByKey!588 (toList!6905 lt!453106) (_1!7825 (tuple2!15631 lt!453049 (minValue!5939 thiss!1427)))) (Some!638 (_2!7825 (tuple2!15631 lt!453049 (minValue!5939 thiss!1427))))))))

(declare-fun b!1028512 () Bool)

(assert (=> b!1028512 (= e!580631 (contains!5987 (toList!6905 lt!453106) (tuple2!15631 lt!453049 (minValue!5939 thiss!1427))))))

(assert (= (and d!122951 res!688277) b!1028511))

(assert (= (and b!1028511 res!688276) b!1028512))

(declare-fun m!947535 () Bool)

(assert (=> d!122951 m!947535))

(declare-fun m!947537 () Bool)

(assert (=> d!122951 m!947537))

(declare-fun m!947539 () Bool)

(assert (=> d!122951 m!947539))

(declare-fun m!947541 () Bool)

(assert (=> d!122951 m!947541))

(declare-fun m!947543 () Bool)

(assert (=> b!1028511 m!947543))

(declare-fun m!947545 () Bool)

(assert (=> b!1028512 m!947545))

(assert (=> b!1028418 d!122951))

(declare-fun d!122953 () Bool)

(assert (=> d!122953 (contains!5985 (+!3059 lt!453034 (tuple2!15631 lt!453044 (zeroValue!5939 thiss!1427))) lt!453043)))

(declare-fun lt!453111 () Unit!33536)

(declare-fun choose!1693 (ListLongMap!13779 (_ BitVec 64) V!37277 (_ BitVec 64)) Unit!33536)

(assert (=> d!122953 (= lt!453111 (choose!1693 lt!453034 lt!453044 (zeroValue!5939 thiss!1427) lt!453043))))

(assert (=> d!122953 (contains!5985 lt!453034 lt!453043)))

(assert (=> d!122953 (= (addStillContains!624 lt!453034 lt!453044 (zeroValue!5939 thiss!1427) lt!453043) lt!453111)))

(declare-fun bs!30023 () Bool)

(assert (= bs!30023 d!122953))

(assert (=> bs!30023 m!947415))

(assert (=> bs!30023 m!947415))

(assert (=> bs!30023 m!947417))

(declare-fun m!947547 () Bool)

(assert (=> bs!30023 m!947547))

(declare-fun m!947549 () Bool)

(assert (=> bs!30023 m!947549))

(assert (=> b!1028418 d!122953))

(declare-fun d!122955 () Bool)

(assert (=> d!122955 (= (apply!936 (+!3059 lt!453037 (tuple2!15631 lt!453052 (zeroValue!5939 thiss!1427))) lt!453053) (apply!936 lt!453037 lt!453053))))

(declare-fun lt!453112 () Unit!33536)

(assert (=> d!122955 (= lt!453112 (choose!1692 lt!453037 lt!453052 (zeroValue!5939 thiss!1427) lt!453053))))

(declare-fun e!580632 () Bool)

(assert (=> d!122955 e!580632))

(declare-fun res!688278 () Bool)

(assert (=> d!122955 (=> (not res!688278) (not e!580632))))

(assert (=> d!122955 (= res!688278 (contains!5985 lt!453037 lt!453053))))

(assert (=> d!122955 (= (addApplyDifferent!476 lt!453037 lt!453052 (zeroValue!5939 thiss!1427) lt!453053) lt!453112)))

(declare-fun b!1028514 () Bool)

(assert (=> b!1028514 (= e!580632 (not (= lt!453053 lt!453052)))))

(assert (= (and d!122955 res!688278) b!1028514))

(declare-fun m!947551 () Bool)

(assert (=> d!122955 m!947551))

(assert (=> d!122955 m!947413))

(declare-fun m!947553 () Bool)

(assert (=> d!122955 m!947553))

(assert (=> d!122955 m!947407))

(assert (=> d!122955 m!947413))

(assert (=> d!122955 m!947419))

(assert (=> b!1028418 d!122955))

(declare-fun lt!453128 () ListLongMap!13779)

(declare-fun e!580648 () Bool)

(declare-fun b!1028539 () Bool)

(assert (=> b!1028539 (= e!580648 (= lt!453128 (getCurrentListMapNoExtraKeys!3529 lt!452921 lt!452923 (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6103 thiss!1427))))))

(declare-fun b!1028540 () Bool)

(declare-fun e!580651 () ListLongMap!13779)

(declare-fun e!580649 () ListLongMap!13779)

(assert (=> b!1028540 (= e!580651 e!580649)))

(declare-fun c!103753 () Bool)

(assert (=> b!1028540 (= c!103753 (validKeyInArray!0 (select (arr!31125 lt!452921) #b00000000000000000000000000000000)))))

(declare-fun b!1028541 () Bool)

(declare-fun e!580652 () Bool)

(declare-fun e!580653 () Bool)

(assert (=> b!1028541 (= e!580652 e!580653)))

(assert (=> b!1028541 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31640 lt!452921)))))

(declare-fun res!688289 () Bool)

(assert (=> b!1028541 (= res!688289 (contains!5985 lt!453128 (select (arr!31125 lt!452921) #b00000000000000000000000000000000)))))

(assert (=> b!1028541 (=> (not res!688289) (not e!580653))))

(declare-fun b!1028542 () Bool)

(declare-fun res!688288 () Bool)

(declare-fun e!580647 () Bool)

(assert (=> b!1028542 (=> (not res!688288) (not e!580647))))

(assert (=> b!1028542 (= res!688288 (not (contains!5985 lt!453128 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1028543 () Bool)

(assert (=> b!1028543 (= e!580651 (ListLongMap!13780 Nil!21918))))

(declare-fun b!1028544 () Bool)

(assert (=> b!1028544 (= e!580652 e!580648)))

(declare-fun c!103752 () Bool)

(assert (=> b!1028544 (= c!103752 (bvslt #b00000000000000000000000000000000 (size!31640 lt!452921)))))

(declare-fun b!1028545 () Bool)

(declare-fun e!580650 () Bool)

(assert (=> b!1028545 (= e!580650 (validKeyInArray!0 (select (arr!31125 lt!452921) #b00000000000000000000000000000000)))))

(assert (=> b!1028545 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1028546 () Bool)

(declare-fun isEmpty!926 (ListLongMap!13779) Bool)

(assert (=> b!1028546 (= e!580648 (isEmpty!926 lt!453128))))

(declare-fun d!122957 () Bool)

(assert (=> d!122957 e!580647))

(declare-fun res!688287 () Bool)

(assert (=> d!122957 (=> (not res!688287) (not e!580647))))

(assert (=> d!122957 (= res!688287 (not (contains!5985 lt!453128 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!122957 (= lt!453128 e!580651)))

(declare-fun c!103751 () Bool)

(assert (=> d!122957 (= c!103751 (bvsge #b00000000000000000000000000000000 (size!31640 lt!452921)))))

(assert (=> d!122957 (validMask!0 (mask!29833 thiss!1427))))

(assert (=> d!122957 (= (getCurrentListMapNoExtraKeys!3529 lt!452921 lt!452923 (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)) lt!453128)))

(declare-fun b!1028547 () Bool)

(assert (=> b!1028547 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31640 lt!452921)))))

(assert (=> b!1028547 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31641 lt!452923)))))

(assert (=> b!1028547 (= e!580653 (= (apply!936 lt!453128 (select (arr!31125 lt!452921) #b00000000000000000000000000000000)) (get!16358 (select (arr!31126 lt!452923) #b00000000000000000000000000000000) (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1028548 () Bool)

(declare-fun lt!453127 () Unit!33536)

(declare-fun lt!453130 () Unit!33536)

(assert (=> b!1028548 (= lt!453127 lt!453130)))

(declare-fun lt!453132 () V!37277)

(declare-fun lt!453133 () ListLongMap!13779)

(declare-fun lt!453129 () (_ BitVec 64))

(declare-fun lt!453131 () (_ BitVec 64))

(assert (=> b!1028548 (not (contains!5985 (+!3059 lt!453133 (tuple2!15631 lt!453131 lt!453132)) lt!453129))))

(declare-fun addStillNotContains!241 (ListLongMap!13779 (_ BitVec 64) V!37277 (_ BitVec 64)) Unit!33536)

(assert (=> b!1028548 (= lt!453130 (addStillNotContains!241 lt!453133 lt!453131 lt!453132 lt!453129))))

(assert (=> b!1028548 (= lt!453129 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1028548 (= lt!453132 (get!16358 (select (arr!31126 lt!452923) #b00000000000000000000000000000000) (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1028548 (= lt!453131 (select (arr!31125 lt!452921) #b00000000000000000000000000000000))))

(declare-fun call!43380 () ListLongMap!13779)

(assert (=> b!1028548 (= lt!453133 call!43380)))

(assert (=> b!1028548 (= e!580649 (+!3059 call!43380 (tuple2!15631 (select (arr!31125 lt!452921) #b00000000000000000000000000000000) (get!16358 (select (arr!31126 lt!452923) #b00000000000000000000000000000000) (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1028549 () Bool)

(assert (=> b!1028549 (= e!580647 e!580652)))

(declare-fun c!103750 () Bool)

(assert (=> b!1028549 (= c!103750 e!580650)))

(declare-fun res!688290 () Bool)

(assert (=> b!1028549 (=> (not res!688290) (not e!580650))))

(assert (=> b!1028549 (= res!688290 (bvslt #b00000000000000000000000000000000 (size!31640 lt!452921)))))

(declare-fun bm!43377 () Bool)

(assert (=> bm!43377 (= call!43380 (getCurrentListMapNoExtraKeys!3529 lt!452921 lt!452923 (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6103 thiss!1427)))))

(declare-fun b!1028550 () Bool)

(assert (=> b!1028550 (= e!580649 call!43380)))

(assert (= (and d!122957 c!103751) b!1028543))

(assert (= (and d!122957 (not c!103751)) b!1028540))

(assert (= (and b!1028540 c!103753) b!1028548))

(assert (= (and b!1028540 (not c!103753)) b!1028550))

(assert (= (or b!1028548 b!1028550) bm!43377))

(assert (= (and d!122957 res!688287) b!1028542))

(assert (= (and b!1028542 res!688288) b!1028549))

(assert (= (and b!1028549 res!688290) b!1028545))

(assert (= (and b!1028549 c!103750) b!1028541))

(assert (= (and b!1028549 (not c!103750)) b!1028544))

(assert (= (and b!1028541 res!688289) b!1028547))

(assert (= (and b!1028544 c!103752) b!1028539))

(assert (= (and b!1028544 (not c!103752)) b!1028546))

(declare-fun b_lambda!15833 () Bool)

(assert (=> (not b_lambda!15833) (not b!1028547)))

(assert (=> b!1028547 t!31005))

(declare-fun b_and!32899 () Bool)

(assert (= b_and!32897 (and (=> t!31005 result!14129) b_and!32899)))

(declare-fun b_lambda!15835 () Bool)

(assert (=> (not b_lambda!15835) (not b!1028548)))

(assert (=> b!1028548 t!31005))

(declare-fun b_and!32901 () Bool)

(assert (= b_and!32899 (and (=> t!31005 result!14129) b_and!32901)))

(assert (=> b!1028548 m!947445))

(assert (=> b!1028548 m!947253))

(declare-fun m!947555 () Bool)

(assert (=> b!1028548 m!947555))

(declare-fun m!947557 () Bool)

(assert (=> b!1028548 m!947557))

(assert (=> b!1028548 m!947445))

(assert (=> b!1028548 m!947253))

(assert (=> b!1028548 m!947447))

(assert (=> b!1028548 m!947555))

(declare-fun m!947559 () Bool)

(assert (=> b!1028548 m!947559))

(assert (=> b!1028548 m!947325))

(declare-fun m!947561 () Bool)

(assert (=> b!1028548 m!947561))

(declare-fun m!947563 () Bool)

(assert (=> b!1028539 m!947563))

(assert (=> b!1028540 m!947325))

(assert (=> b!1028540 m!947325))

(assert (=> b!1028540 m!947327))

(declare-fun m!947565 () Bool)

(assert (=> d!122957 m!947565))

(assert (=> d!122957 m!947333))

(declare-fun m!947567 () Bool)

(assert (=> b!1028546 m!947567))

(assert (=> b!1028545 m!947325))

(assert (=> b!1028545 m!947325))

(assert (=> b!1028545 m!947327))

(assert (=> bm!43377 m!947563))

(assert (=> b!1028547 m!947445))

(assert (=> b!1028547 m!947253))

(assert (=> b!1028547 m!947445))

(assert (=> b!1028547 m!947253))

(assert (=> b!1028547 m!947447))

(assert (=> b!1028547 m!947325))

(assert (=> b!1028547 m!947325))

(declare-fun m!947569 () Bool)

(assert (=> b!1028547 m!947569))

(assert (=> b!1028541 m!947325))

(assert (=> b!1028541 m!947325))

(declare-fun m!947571 () Bool)

(assert (=> b!1028541 m!947571))

(declare-fun m!947573 () Bool)

(assert (=> b!1028542 m!947573))

(assert (=> b!1028418 d!122957))

(declare-fun d!122959 () Bool)

(assert (=> d!122959 (= (apply!936 lt!453046 lt!453047) (get!16359 (getValueByKey!588 (toList!6905 lt!453046) lt!453047)))))

(declare-fun bs!30024 () Bool)

(assert (= bs!30024 d!122959))

(declare-fun m!947575 () Bool)

(assert (=> bs!30024 m!947575))

(assert (=> bs!30024 m!947575))

(declare-fun m!947577 () Bool)

(assert (=> bs!30024 m!947577))

(assert (=> b!1028418 d!122959))

(declare-fun d!122961 () Bool)

(assert (=> d!122961 (= (apply!936 (+!3059 lt!453040 (tuple2!15631 lt!453049 (minValue!5939 thiss!1427))) lt!453039) (get!16359 (getValueByKey!588 (toList!6905 (+!3059 lt!453040 (tuple2!15631 lt!453049 (minValue!5939 thiss!1427)))) lt!453039)))))

(declare-fun bs!30025 () Bool)

(assert (= bs!30025 d!122961))

(declare-fun m!947579 () Bool)

(assert (=> bs!30025 m!947579))

(assert (=> bs!30025 m!947579))

(declare-fun m!947581 () Bool)

(assert (=> bs!30025 m!947581))

(assert (=> b!1028418 d!122961))

(declare-fun d!122963 () Bool)

(declare-fun e!580658 () Bool)

(assert (=> d!122963 e!580658))

(declare-fun res!688293 () Bool)

(assert (=> d!122963 (=> res!688293 e!580658)))

(declare-fun lt!453143 () Bool)

(assert (=> d!122963 (= res!688293 (not lt!453143))))

(declare-fun lt!453144 () Bool)

(assert (=> d!122963 (= lt!453143 lt!453144)))

(declare-fun lt!453145 () Unit!33536)

(declare-fun e!580659 () Unit!33536)

(assert (=> d!122963 (= lt!453145 e!580659)))

(declare-fun c!103756 () Bool)

(assert (=> d!122963 (= c!103756 lt!453144)))

(declare-fun containsKey!561 (List!21921 (_ BitVec 64)) Bool)

(assert (=> d!122963 (= lt!453144 (containsKey!561 (toList!6905 (+!3059 lt!453034 (tuple2!15631 lt!453044 (zeroValue!5939 thiss!1427)))) lt!453043))))

(assert (=> d!122963 (= (contains!5985 (+!3059 lt!453034 (tuple2!15631 lt!453044 (zeroValue!5939 thiss!1427))) lt!453043) lt!453143)))

(declare-fun b!1028557 () Bool)

(declare-fun lt!453142 () Unit!33536)

(assert (=> b!1028557 (= e!580659 lt!453142)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!393 (List!21921 (_ BitVec 64)) Unit!33536)

(assert (=> b!1028557 (= lt!453142 (lemmaContainsKeyImpliesGetValueByKeyDefined!393 (toList!6905 (+!3059 lt!453034 (tuple2!15631 lt!453044 (zeroValue!5939 thiss!1427)))) lt!453043))))

(declare-fun isDefined!433 (Option!639) Bool)

(assert (=> b!1028557 (isDefined!433 (getValueByKey!588 (toList!6905 (+!3059 lt!453034 (tuple2!15631 lt!453044 (zeroValue!5939 thiss!1427)))) lt!453043))))

(declare-fun b!1028558 () Bool)

(declare-fun Unit!33544 () Unit!33536)

(assert (=> b!1028558 (= e!580659 Unit!33544)))

(declare-fun b!1028559 () Bool)

(assert (=> b!1028559 (= e!580658 (isDefined!433 (getValueByKey!588 (toList!6905 (+!3059 lt!453034 (tuple2!15631 lt!453044 (zeroValue!5939 thiss!1427)))) lt!453043)))))

(assert (= (and d!122963 c!103756) b!1028557))

(assert (= (and d!122963 (not c!103756)) b!1028558))

(assert (= (and d!122963 (not res!688293)) b!1028559))

(declare-fun m!947583 () Bool)

(assert (=> d!122963 m!947583))

(declare-fun m!947585 () Bool)

(assert (=> b!1028557 m!947585))

(declare-fun m!947587 () Bool)

(assert (=> b!1028557 m!947587))

(assert (=> b!1028557 m!947587))

(declare-fun m!947589 () Bool)

(assert (=> b!1028557 m!947589))

(assert (=> b!1028559 m!947587))

(assert (=> b!1028559 m!947587))

(assert (=> b!1028559 m!947589))

(assert (=> b!1028418 d!122963))

(declare-fun d!122965 () Bool)

(assert (=> d!122965 (= (apply!936 (+!3059 lt!453040 (tuple2!15631 lt!453049 (minValue!5939 thiss!1427))) lt!453039) (apply!936 lt!453040 lt!453039))))

(declare-fun lt!453146 () Unit!33536)

(assert (=> d!122965 (= lt!453146 (choose!1692 lt!453040 lt!453049 (minValue!5939 thiss!1427) lt!453039))))

(declare-fun e!580660 () Bool)

(assert (=> d!122965 e!580660))

(declare-fun res!688294 () Bool)

(assert (=> d!122965 (=> (not res!688294) (not e!580660))))

(assert (=> d!122965 (= res!688294 (contains!5985 lt!453040 lt!453039))))

(assert (=> d!122965 (= (addApplyDifferent!476 lt!453040 lt!453049 (minValue!5939 thiss!1427) lt!453039) lt!453146)))

(declare-fun b!1028560 () Bool)

(assert (=> b!1028560 (= e!580660 (not (= lt!453039 lt!453049)))))

(assert (= (and d!122965 res!688294) b!1028560))

(declare-fun m!947591 () Bool)

(assert (=> d!122965 m!947591))

(assert (=> d!122965 m!947409))

(declare-fun m!947593 () Bool)

(assert (=> d!122965 m!947593))

(assert (=> d!122965 m!947403))

(assert (=> d!122965 m!947409))

(assert (=> d!122965 m!947411))

(assert (=> b!1028418 d!122965))

(declare-fun d!122967 () Bool)

(declare-fun e!580661 () Bool)

(assert (=> d!122967 e!580661))

(declare-fun res!688296 () Bool)

(assert (=> d!122967 (=> (not res!688296) (not e!580661))))

(declare-fun lt!453148 () ListLongMap!13779)

(assert (=> d!122967 (= res!688296 (contains!5985 lt!453148 (_1!7825 (tuple2!15631 lt!453042 (minValue!5939 thiss!1427)))))))

(declare-fun lt!453150 () List!21921)

(assert (=> d!122967 (= lt!453148 (ListLongMap!13780 lt!453150))))

(declare-fun lt!453147 () Unit!33536)

(declare-fun lt!453149 () Unit!33536)

(assert (=> d!122967 (= lt!453147 lt!453149)))

(assert (=> d!122967 (= (getValueByKey!588 lt!453150 (_1!7825 (tuple2!15631 lt!453042 (minValue!5939 thiss!1427)))) (Some!638 (_2!7825 (tuple2!15631 lt!453042 (minValue!5939 thiss!1427)))))))

(assert (=> d!122967 (= lt!453149 (lemmaContainsTupThenGetReturnValue!277 lt!453150 (_1!7825 (tuple2!15631 lt!453042 (minValue!5939 thiss!1427))) (_2!7825 (tuple2!15631 lt!453042 (minValue!5939 thiss!1427)))))))

(assert (=> d!122967 (= lt!453150 (insertStrictlySorted!369 (toList!6905 lt!453046) (_1!7825 (tuple2!15631 lt!453042 (minValue!5939 thiss!1427))) (_2!7825 (tuple2!15631 lt!453042 (minValue!5939 thiss!1427)))))))

(assert (=> d!122967 (= (+!3059 lt!453046 (tuple2!15631 lt!453042 (minValue!5939 thiss!1427))) lt!453148)))

(declare-fun b!1028561 () Bool)

(declare-fun res!688295 () Bool)

(assert (=> b!1028561 (=> (not res!688295) (not e!580661))))

(assert (=> b!1028561 (= res!688295 (= (getValueByKey!588 (toList!6905 lt!453148) (_1!7825 (tuple2!15631 lt!453042 (minValue!5939 thiss!1427)))) (Some!638 (_2!7825 (tuple2!15631 lt!453042 (minValue!5939 thiss!1427))))))))

(declare-fun b!1028562 () Bool)

(assert (=> b!1028562 (= e!580661 (contains!5987 (toList!6905 lt!453148) (tuple2!15631 lt!453042 (minValue!5939 thiss!1427))))))

(assert (= (and d!122967 res!688296) b!1028561))

(assert (= (and b!1028561 res!688295) b!1028562))

(declare-fun m!947595 () Bool)

(assert (=> d!122967 m!947595))

(declare-fun m!947597 () Bool)

(assert (=> d!122967 m!947597))

(declare-fun m!947599 () Bool)

(assert (=> d!122967 m!947599))

(declare-fun m!947601 () Bool)

(assert (=> d!122967 m!947601))

(declare-fun m!947603 () Bool)

(assert (=> b!1028561 m!947603))

(declare-fun m!947605 () Bool)

(assert (=> b!1028562 m!947605))

(assert (=> b!1028418 d!122967))

(declare-fun d!122969 () Bool)

(assert (=> d!122969 (= (apply!936 lt!453040 lt!453039) (get!16359 (getValueByKey!588 (toList!6905 lt!453040) lt!453039)))))

(declare-fun bs!30026 () Bool)

(assert (= bs!30026 d!122969))

(declare-fun m!947607 () Bool)

(assert (=> bs!30026 m!947607))

(assert (=> bs!30026 m!947607))

(declare-fun m!947609 () Bool)

(assert (=> bs!30026 m!947609))

(assert (=> b!1028418 d!122969))

(declare-fun d!122971 () Bool)

(assert (=> d!122971 (= (apply!936 (+!3059 lt!453046 (tuple2!15631 lt!453042 (minValue!5939 thiss!1427))) lt!453047) (get!16359 (getValueByKey!588 (toList!6905 (+!3059 lt!453046 (tuple2!15631 lt!453042 (minValue!5939 thiss!1427)))) lt!453047)))))

(declare-fun bs!30027 () Bool)

(assert (= bs!30027 d!122971))

(declare-fun m!947611 () Bool)

(assert (=> bs!30027 m!947611))

(assert (=> bs!30027 m!947611))

(declare-fun m!947613 () Bool)

(assert (=> bs!30027 m!947613))

(assert (=> b!1028418 d!122971))

(declare-fun d!122973 () Bool)

(declare-fun e!580662 () Bool)

(assert (=> d!122973 e!580662))

(declare-fun res!688297 () Bool)

(assert (=> d!122973 (=> res!688297 e!580662)))

(declare-fun lt!453152 () Bool)

(assert (=> d!122973 (= res!688297 (not lt!453152))))

(declare-fun lt!453153 () Bool)

(assert (=> d!122973 (= lt!453152 lt!453153)))

(declare-fun lt!453154 () Unit!33536)

(declare-fun e!580663 () Unit!33536)

(assert (=> d!122973 (= lt!453154 e!580663)))

(declare-fun c!103757 () Bool)

(assert (=> d!122973 (= c!103757 lt!453153)))

(assert (=> d!122973 (= lt!453153 (containsKey!561 (toList!6905 lt!453026) (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!122973 (= (contains!5985 lt!453026 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000)) lt!453152)))

(declare-fun b!1028563 () Bool)

(declare-fun lt!453151 () Unit!33536)

(assert (=> b!1028563 (= e!580663 lt!453151)))

(assert (=> b!1028563 (= lt!453151 (lemmaContainsKeyImpliesGetValueByKeyDefined!393 (toList!6905 lt!453026) (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1028563 (isDefined!433 (getValueByKey!588 (toList!6905 lt!453026) (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1028564 () Bool)

(declare-fun Unit!33545 () Unit!33536)

(assert (=> b!1028564 (= e!580663 Unit!33545)))

(declare-fun b!1028565 () Bool)

(assert (=> b!1028565 (= e!580662 (isDefined!433 (getValueByKey!588 (toList!6905 lt!453026) (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (= (and d!122973 c!103757) b!1028563))

(assert (= (and d!122973 (not c!103757)) b!1028564))

(assert (= (and d!122973 (not res!688297)) b!1028565))

(assert (=> d!122973 m!947369))

(declare-fun m!947615 () Bool)

(assert (=> d!122973 m!947615))

(assert (=> b!1028563 m!947369))

(declare-fun m!947617 () Bool)

(assert (=> b!1028563 m!947617))

(assert (=> b!1028563 m!947369))

(declare-fun m!947619 () Bool)

(assert (=> b!1028563 m!947619))

(assert (=> b!1028563 m!947619))

(declare-fun m!947621 () Bool)

(assert (=> b!1028563 m!947621))

(assert (=> b!1028565 m!947369))

(assert (=> b!1028565 m!947619))

(assert (=> b!1028565 m!947619))

(assert (=> b!1028565 m!947621))

(assert (=> b!1028388 d!122973))

(assert (=> b!1028328 d!122937))

(declare-fun d!122975 () Bool)

(declare-fun e!580664 () Bool)

(assert (=> d!122975 e!580664))

(declare-fun res!688298 () Bool)

(assert (=> d!122975 (=> res!688298 e!580664)))

(declare-fun lt!453156 () Bool)

(assert (=> d!122975 (= res!688298 (not lt!453156))))

(declare-fun lt!453157 () Bool)

(assert (=> d!122975 (= lt!453156 lt!453157)))

(declare-fun lt!453158 () Unit!33536)

(declare-fun e!580665 () Unit!33536)

(assert (=> d!122975 (= lt!453158 e!580665)))

(declare-fun c!103758 () Bool)

(assert (=> d!122975 (= c!103758 lt!453157)))

(assert (=> d!122975 (= lt!453157 (containsKey!561 (toList!6905 lt!453051) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!122975 (= (contains!5985 lt!453051 #b0000000000000000000000000000000000000000000000000000000000000000) lt!453156)))

(declare-fun b!1028566 () Bool)

(declare-fun lt!453155 () Unit!33536)

(assert (=> b!1028566 (= e!580665 lt!453155)))

(assert (=> b!1028566 (= lt!453155 (lemmaContainsKeyImpliesGetValueByKeyDefined!393 (toList!6905 lt!453051) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1028566 (isDefined!433 (getValueByKey!588 (toList!6905 lt!453051) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1028567 () Bool)

(declare-fun Unit!33546 () Unit!33536)

(assert (=> b!1028567 (= e!580665 Unit!33546)))

(declare-fun b!1028568 () Bool)

(assert (=> b!1028568 (= e!580664 (isDefined!433 (getValueByKey!588 (toList!6905 lt!453051) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!122975 c!103758) b!1028566))

(assert (= (and d!122975 (not c!103758)) b!1028567))

(assert (= (and d!122975 (not res!688298)) b!1028568))

(declare-fun m!947623 () Bool)

(assert (=> d!122975 m!947623))

(declare-fun m!947625 () Bool)

(assert (=> b!1028566 m!947625))

(declare-fun m!947627 () Bool)

(assert (=> b!1028566 m!947627))

(assert (=> b!1028566 m!947627))

(declare-fun m!947629 () Bool)

(assert (=> b!1028566 m!947629))

(assert (=> b!1028568 m!947627))

(assert (=> b!1028568 m!947627))

(assert (=> b!1028568 m!947629))

(assert (=> bm!43364 d!122975))

(declare-fun d!122977 () Bool)

(declare-fun e!580666 () Bool)

(assert (=> d!122977 e!580666))

(declare-fun res!688300 () Bool)

(assert (=> d!122977 (=> (not res!688300) (not e!580666))))

(declare-fun lt!453160 () ListLongMap!13779)

(assert (=> d!122977 (= res!688300 (contains!5985 lt!453160 (_1!7825 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))))))

(declare-fun lt!453162 () List!21921)

(assert (=> d!122977 (= lt!453160 (ListLongMap!13780 lt!453162))))

(declare-fun lt!453159 () Unit!33536)

(declare-fun lt!453161 () Unit!33536)

(assert (=> d!122977 (= lt!453159 lt!453161)))

(assert (=> d!122977 (= (getValueByKey!588 lt!453162 (_1!7825 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))) (Some!638 (_2!7825 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))))))

(assert (=> d!122977 (= lt!453161 (lemmaContainsTupThenGetReturnValue!277 lt!453162 (_1!7825 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))) (_2!7825 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))))))

(assert (=> d!122977 (= lt!453162 (insertStrictlySorted!369 (toList!6905 call!43362) (_1!7825 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))) (_2!7825 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))))))

(assert (=> d!122977 (= (+!3059 call!43362 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))) lt!453160)))

(declare-fun b!1028569 () Bool)

(declare-fun res!688299 () Bool)

(assert (=> b!1028569 (=> (not res!688299) (not e!580666))))

(assert (=> b!1028569 (= res!688299 (= (getValueByKey!588 (toList!6905 lt!453160) (_1!7825 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))) (Some!638 (_2!7825 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))))))))

(declare-fun b!1028570 () Bool)

(assert (=> b!1028570 (= e!580666 (contains!5987 (toList!6905 lt!453160) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))))))

(assert (= (and d!122977 res!688300) b!1028569))

(assert (= (and b!1028569 res!688299) b!1028570))

(declare-fun m!947631 () Bool)

(assert (=> d!122977 m!947631))

(declare-fun m!947633 () Bool)

(assert (=> d!122977 m!947633))

(declare-fun m!947635 () Bool)

(assert (=> d!122977 m!947635))

(declare-fun m!947637 () Bool)

(assert (=> d!122977 m!947637))

(declare-fun m!947639 () Bool)

(assert (=> b!1028569 m!947639))

(declare-fun m!947641 () Bool)

(assert (=> b!1028570 m!947641))

(assert (=> b!1028390 d!122977))

(declare-fun d!122979 () Bool)

(assert (=> d!122979 (arrayContainsKey!0 lt!452921 lt!453065 #b00000000000000000000000000000000)))

(declare-fun lt!453165 () Unit!33536)

(declare-fun choose!13 (array!64644 (_ BitVec 64) (_ BitVec 32)) Unit!33536)

(assert (=> d!122979 (= lt!453165 (choose!13 lt!452921 lt!453065 #b00000000000000000000000000000000))))

(assert (=> d!122979 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!122979 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!452921 lt!453065 #b00000000000000000000000000000000) lt!453165)))

(declare-fun bs!30028 () Bool)

(assert (= bs!30028 d!122979))

(assert (=> bs!30028 m!947463))

(declare-fun m!947643 () Bool)

(assert (=> bs!30028 m!947643))

(assert (=> b!1028455 d!122979))

(declare-fun d!122981 () Bool)

(declare-fun res!688301 () Bool)

(declare-fun e!580667 () Bool)

(assert (=> d!122981 (=> res!688301 e!580667)))

(assert (=> d!122981 (= res!688301 (= (select (arr!31125 lt!452921) #b00000000000000000000000000000000) lt!453065))))

(assert (=> d!122981 (= (arrayContainsKey!0 lt!452921 lt!453065 #b00000000000000000000000000000000) e!580667)))

(declare-fun b!1028571 () Bool)

(declare-fun e!580668 () Bool)

(assert (=> b!1028571 (= e!580667 e!580668)))

(declare-fun res!688302 () Bool)

(assert (=> b!1028571 (=> (not res!688302) (not e!580668))))

(assert (=> b!1028571 (= res!688302 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31640 lt!452921)))))

(declare-fun b!1028572 () Bool)

(assert (=> b!1028572 (= e!580668 (arrayContainsKey!0 lt!452921 lt!453065 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!122981 (not res!688301)) b!1028571))

(assert (= (and b!1028571 res!688302) b!1028572))

(assert (=> d!122981 m!947325))

(declare-fun m!947645 () Bool)

(assert (=> b!1028572 m!947645))

(assert (=> b!1028455 d!122981))

(declare-fun b!1028585 () Bool)

(declare-fun e!580676 () SeekEntryResult!9666)

(assert (=> b!1028585 (= e!580676 Undefined!9666)))

(declare-fun d!122983 () Bool)

(declare-fun lt!453173 () SeekEntryResult!9666)

(assert (=> d!122983 (and (or ((_ is Undefined!9666) lt!453173) (not ((_ is Found!9666) lt!453173)) (and (bvsge (index!41035 lt!453173) #b00000000000000000000000000000000) (bvslt (index!41035 lt!453173) (size!31640 lt!452921)))) (or ((_ is Undefined!9666) lt!453173) ((_ is Found!9666) lt!453173) (not ((_ is MissingZero!9666) lt!453173)) (and (bvsge (index!41034 lt!453173) #b00000000000000000000000000000000) (bvslt (index!41034 lt!453173) (size!31640 lt!452921)))) (or ((_ is Undefined!9666) lt!453173) ((_ is Found!9666) lt!453173) ((_ is MissingZero!9666) lt!453173) (not ((_ is MissingVacant!9666) lt!453173)) (and (bvsge (index!41037 lt!453173) #b00000000000000000000000000000000) (bvslt (index!41037 lt!453173) (size!31640 lt!452921)))) (or ((_ is Undefined!9666) lt!453173) (ite ((_ is Found!9666) lt!453173) (= (select (arr!31125 lt!452921) (index!41035 lt!453173)) (select (arr!31125 lt!452921) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9666) lt!453173) (= (select (arr!31125 lt!452921) (index!41034 lt!453173)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9666) lt!453173) (= (select (arr!31125 lt!452921) (index!41037 lt!453173)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!122983 (= lt!453173 e!580676)))

(declare-fun c!103766 () Bool)

(declare-fun lt!453174 () SeekEntryResult!9666)

(assert (=> d!122983 (= c!103766 (and ((_ is Intermediate!9666) lt!453174) (undefined!10478 lt!453174)))))

(assert (=> d!122983 (= lt!453174 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!31125 lt!452921) #b00000000000000000000000000000000) (mask!29833 thiss!1427)) (select (arr!31125 lt!452921) #b00000000000000000000000000000000) lt!452921 (mask!29833 thiss!1427)))))

(assert (=> d!122983 (validMask!0 (mask!29833 thiss!1427))))

(assert (=> d!122983 (= (seekEntryOrOpen!0 (select (arr!31125 lt!452921) #b00000000000000000000000000000000) lt!452921 (mask!29833 thiss!1427)) lt!453173)))

(declare-fun b!1028586 () Bool)

(declare-fun e!580675 () SeekEntryResult!9666)

(assert (=> b!1028586 (= e!580676 e!580675)))

(declare-fun lt!453172 () (_ BitVec 64))

(assert (=> b!1028586 (= lt!453172 (select (arr!31125 lt!452921) (index!41036 lt!453174)))))

(declare-fun c!103765 () Bool)

(assert (=> b!1028586 (= c!103765 (= lt!453172 (select (arr!31125 lt!452921) #b00000000000000000000000000000000)))))

(declare-fun b!1028587 () Bool)

(declare-fun e!580677 () SeekEntryResult!9666)

(assert (=> b!1028587 (= e!580677 (seekKeyOrZeroReturnVacant!0 (x!91491 lt!453174) (index!41036 lt!453174) (index!41036 lt!453174) (select (arr!31125 lt!452921) #b00000000000000000000000000000000) lt!452921 (mask!29833 thiss!1427)))))

(declare-fun b!1028588 () Bool)

(assert (=> b!1028588 (= e!580675 (Found!9666 (index!41036 lt!453174)))))

(declare-fun b!1028589 () Bool)

(assert (=> b!1028589 (= e!580677 (MissingZero!9666 (index!41036 lt!453174)))))

(declare-fun b!1028590 () Bool)

(declare-fun c!103767 () Bool)

(assert (=> b!1028590 (= c!103767 (= lt!453172 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1028590 (= e!580675 e!580677)))

(assert (= (and d!122983 c!103766) b!1028585))

(assert (= (and d!122983 (not c!103766)) b!1028586))

(assert (= (and b!1028586 c!103765) b!1028588))

(assert (= (and b!1028586 (not c!103765)) b!1028590))

(assert (= (and b!1028590 c!103767) b!1028589))

(assert (= (and b!1028590 (not c!103767)) b!1028587))

(assert (=> d!122983 m!947325))

(declare-fun m!947647 () Bool)

(assert (=> d!122983 m!947647))

(declare-fun m!947649 () Bool)

(assert (=> d!122983 m!947649))

(assert (=> d!122983 m!947333))

(declare-fun m!947651 () Bool)

(assert (=> d!122983 m!947651))

(assert (=> d!122983 m!947647))

(assert (=> d!122983 m!947325))

(declare-fun m!947653 () Bool)

(assert (=> d!122983 m!947653))

(declare-fun m!947655 () Bool)

(assert (=> d!122983 m!947655))

(declare-fun m!947657 () Bool)

(assert (=> b!1028586 m!947657))

(assert (=> b!1028587 m!947325))

(declare-fun m!947659 () Bool)

(assert (=> b!1028587 m!947659))

(assert (=> b!1028455 d!122983))

(declare-fun d!122985 () Bool)

(declare-fun lt!453175 () (_ BitVec 32))

(assert (=> d!122985 (and (bvsge lt!453175 #b00000000000000000000000000000000) (bvsle lt!453175 (bvsub (size!31640 lt!452921) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!580678 () (_ BitVec 32))

(assert (=> d!122985 (= lt!453175 e!580678)))

(declare-fun c!103769 () Bool)

(assert (=> d!122985 (= c!103769 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31640 (_keys!11254 thiss!1427))))))

(assert (=> d!122985 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31640 (_keys!11254 thiss!1427))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!31640 (_keys!11254 thiss!1427)) (size!31640 lt!452921)))))

(assert (=> d!122985 (= (arrayCountValidKeys!0 lt!452921 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31640 (_keys!11254 thiss!1427))) lt!453175)))

(declare-fun b!1028591 () Bool)

(declare-fun e!580679 () (_ BitVec 32))

(declare-fun call!43381 () (_ BitVec 32))

(assert (=> b!1028591 (= e!580679 call!43381)))

(declare-fun b!1028592 () Bool)

(assert (=> b!1028592 (= e!580678 e!580679)))

(declare-fun c!103768 () Bool)

(assert (=> b!1028592 (= c!103768 (validKeyInArray!0 (select (arr!31125 lt!452921) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1028593 () Bool)

(assert (=> b!1028593 (= e!580678 #b00000000000000000000000000000000)))

(declare-fun bm!43378 () Bool)

(assert (=> bm!43378 (= call!43381 (arrayCountValidKeys!0 lt!452921 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!31640 (_keys!11254 thiss!1427))))))

(declare-fun b!1028594 () Bool)

(assert (=> b!1028594 (= e!580679 (bvadd #b00000000000000000000000000000001 call!43381))))

(assert (= (and d!122985 c!103769) b!1028593))

(assert (= (and d!122985 (not c!103769)) b!1028592))

(assert (= (and b!1028592 c!103768) b!1028594))

(assert (= (and b!1028592 (not c!103768)) b!1028591))

(assert (= (or b!1028594 b!1028591) bm!43378))

(declare-fun m!947661 () Bool)

(assert (=> b!1028592 m!947661))

(assert (=> b!1028592 m!947661))

(declare-fun m!947663 () Bool)

(assert (=> b!1028592 m!947663))

(declare-fun m!947665 () Bool)

(assert (=> bm!43378 m!947665))

(assert (=> bm!43339 d!122985))

(assert (=> b!1028456 d!122937))

(declare-fun d!122987 () Bool)

(assert (=> d!122987 (= (validMask!0 (mask!29833 thiss!1427)) (and (or (= (mask!29833 thiss!1427) #b00000000000000000000000000000111) (= (mask!29833 thiss!1427) #b00000000000000000000000000001111) (= (mask!29833 thiss!1427) #b00000000000000000000000000011111) (= (mask!29833 thiss!1427) #b00000000000000000000000000111111) (= (mask!29833 thiss!1427) #b00000000000000000000000001111111) (= (mask!29833 thiss!1427) #b00000000000000000000000011111111) (= (mask!29833 thiss!1427) #b00000000000000000000000111111111) (= (mask!29833 thiss!1427) #b00000000000000000000001111111111) (= (mask!29833 thiss!1427) #b00000000000000000000011111111111) (= (mask!29833 thiss!1427) #b00000000000000000000111111111111) (= (mask!29833 thiss!1427) #b00000000000000000001111111111111) (= (mask!29833 thiss!1427) #b00000000000000000011111111111111) (= (mask!29833 thiss!1427) #b00000000000000000111111111111111) (= (mask!29833 thiss!1427) #b00000000000000001111111111111111) (= (mask!29833 thiss!1427) #b00000000000000011111111111111111) (= (mask!29833 thiss!1427) #b00000000000000111111111111111111) (= (mask!29833 thiss!1427) #b00000000000001111111111111111111) (= (mask!29833 thiss!1427) #b00000000000011111111111111111111) (= (mask!29833 thiss!1427) #b00000000000111111111111111111111) (= (mask!29833 thiss!1427) #b00000000001111111111111111111111) (= (mask!29833 thiss!1427) #b00000000011111111111111111111111) (= (mask!29833 thiss!1427) #b00000000111111111111111111111111) (= (mask!29833 thiss!1427) #b00000001111111111111111111111111) (= (mask!29833 thiss!1427) #b00000011111111111111111111111111) (= (mask!29833 thiss!1427) #b00000111111111111111111111111111) (= (mask!29833 thiss!1427) #b00001111111111111111111111111111) (= (mask!29833 thiss!1427) #b00011111111111111111111111111111) (= (mask!29833 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!29833 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> d!122907 d!122987))

(declare-fun c!103770 () Bool)

(declare-fun call!43382 () Bool)

(declare-fun bm!43379 () Bool)

(assert (=> bm!43379 (= call!43382 (arrayNoDuplicates!0 lt!452921 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!103770 (Cons!21918 (select (arr!31125 lt!452921) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!103727 (Cons!21918 (select (arr!31125 lt!452921) #b00000000000000000000000000000000) Nil!21919) Nil!21919)) (ite c!103727 (Cons!21918 (select (arr!31125 lt!452921) #b00000000000000000000000000000000) Nil!21919) Nil!21919))))))

(declare-fun b!1028595 () Bool)

(declare-fun e!580682 () Bool)

(assert (=> b!1028595 (= e!580682 call!43382)))

(declare-fun d!122989 () Bool)

(declare-fun res!688304 () Bool)

(declare-fun e!580681 () Bool)

(assert (=> d!122989 (=> res!688304 e!580681)))

(assert (=> d!122989 (= res!688304 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31640 lt!452921)))))

(assert (=> d!122989 (= (arrayNoDuplicates!0 lt!452921 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!103727 (Cons!21918 (select (arr!31125 lt!452921) #b00000000000000000000000000000000) Nil!21919) Nil!21919)) e!580681)))

(declare-fun b!1028596 () Bool)

(declare-fun e!580680 () Bool)

(assert (=> b!1028596 (= e!580680 (contains!5986 (ite c!103727 (Cons!21918 (select (arr!31125 lt!452921) #b00000000000000000000000000000000) Nil!21919) Nil!21919) (select (arr!31125 lt!452921) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1028597 () Bool)

(assert (=> b!1028597 (= e!580682 call!43382)))

(declare-fun b!1028598 () Bool)

(declare-fun e!580683 () Bool)

(assert (=> b!1028598 (= e!580683 e!580682)))

(assert (=> b!1028598 (= c!103770 (validKeyInArray!0 (select (arr!31125 lt!452921) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1028599 () Bool)

(assert (=> b!1028599 (= e!580681 e!580683)))

(declare-fun res!688305 () Bool)

(assert (=> b!1028599 (=> (not res!688305) (not e!580683))))

(assert (=> b!1028599 (= res!688305 (not e!580680))))

(declare-fun res!688303 () Bool)

(assert (=> b!1028599 (=> (not res!688303) (not e!580680))))

(assert (=> b!1028599 (= res!688303 (validKeyInArray!0 (select (arr!31125 lt!452921) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!122989 (not res!688304)) b!1028599))

(assert (= (and b!1028599 res!688303) b!1028596))

(assert (= (and b!1028599 res!688305) b!1028598))

(assert (= (and b!1028598 c!103770) b!1028595))

(assert (= (and b!1028598 (not c!103770)) b!1028597))

(assert (= (or b!1028595 b!1028597) bm!43379))

(assert (=> bm!43379 m!947661))

(declare-fun m!947667 () Bool)

(assert (=> bm!43379 m!947667))

(assert (=> b!1028596 m!947661))

(assert (=> b!1028596 m!947661))

(declare-fun m!947669 () Bool)

(assert (=> b!1028596 m!947669))

(assert (=> b!1028598 m!947661))

(assert (=> b!1028598 m!947661))

(assert (=> b!1028598 m!947663))

(assert (=> b!1028599 m!947661))

(assert (=> b!1028599 m!947661))

(assert (=> b!1028599 m!947663))

(assert (=> bm!43370 d!122989))

(declare-fun d!122991 () Bool)

(declare-fun e!580684 () Bool)

(assert (=> d!122991 e!580684))

(declare-fun res!688307 () Bool)

(assert (=> d!122991 (=> (not res!688307) (not e!580684))))

(declare-fun lt!453177 () ListLongMap!13779)

(assert (=> d!122991 (= res!688307 (contains!5985 lt!453177 (_1!7825 (ite (or c!103720 c!103723) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))))))))

(declare-fun lt!453179 () List!21921)

(assert (=> d!122991 (= lt!453177 (ListLongMap!13780 lt!453179))))

(declare-fun lt!453176 () Unit!33536)

(declare-fun lt!453178 () Unit!33536)

(assert (=> d!122991 (= lt!453176 lt!453178)))

(assert (=> d!122991 (= (getValueByKey!588 lt!453179 (_1!7825 (ite (or c!103720 c!103723) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))))) (Some!638 (_2!7825 (ite (or c!103720 c!103723) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))))))))

(assert (=> d!122991 (= lt!453178 (lemmaContainsTupThenGetReturnValue!277 lt!453179 (_1!7825 (ite (or c!103720 c!103723) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))) (_2!7825 (ite (or c!103720 c!103723) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))))))))

(assert (=> d!122991 (= lt!453179 (insertStrictlySorted!369 (toList!6905 (ite c!103720 call!43368 (ite c!103723 call!43370 call!43367))) (_1!7825 (ite (or c!103720 c!103723) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))) (_2!7825 (ite (or c!103720 c!103723) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))))))))

(assert (=> d!122991 (= (+!3059 (ite c!103720 call!43368 (ite c!103723 call!43370 call!43367)) (ite (or c!103720 c!103723) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))) lt!453177)))

(declare-fun b!1028600 () Bool)

(declare-fun res!688306 () Bool)

(assert (=> b!1028600 (=> (not res!688306) (not e!580684))))

(assert (=> b!1028600 (= res!688306 (= (getValueByKey!588 (toList!6905 lt!453177) (_1!7825 (ite (or c!103720 c!103723) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))))) (Some!638 (_2!7825 (ite (or c!103720 c!103723) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))))))))

(declare-fun b!1028601 () Bool)

(assert (=> b!1028601 (= e!580684 (contains!5987 (toList!6905 lt!453177) (ite (or c!103720 c!103723) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))))))

(assert (= (and d!122991 res!688307) b!1028600))

(assert (= (and b!1028600 res!688306) b!1028601))

(declare-fun m!947671 () Bool)

(assert (=> d!122991 m!947671))

(declare-fun m!947673 () Bool)

(assert (=> d!122991 m!947673))

(declare-fun m!947675 () Bool)

(assert (=> d!122991 m!947675))

(declare-fun m!947677 () Bool)

(assert (=> d!122991 m!947677))

(declare-fun m!947679 () Bool)

(assert (=> b!1028600 m!947679))

(declare-fun m!947681 () Bool)

(assert (=> b!1028601 m!947681))

(assert (=> bm!43367 d!122991))

(declare-fun d!122993 () Bool)

(declare-fun e!580685 () Bool)

(assert (=> d!122993 e!580685))

(declare-fun res!688308 () Bool)

(assert (=> d!122993 (=> res!688308 e!580685)))

(declare-fun lt!453181 () Bool)

(assert (=> d!122993 (= res!688308 (not lt!453181))))

(declare-fun lt!453182 () Bool)

(assert (=> d!122993 (= lt!453181 lt!453182)))

(declare-fun lt!453183 () Unit!33536)

(declare-fun e!580686 () Unit!33536)

(assert (=> d!122993 (= lt!453183 e!580686)))

(declare-fun c!103771 () Bool)

(assert (=> d!122993 (= c!103771 lt!453182)))

(assert (=> d!122993 (= lt!453182 (containsKey!561 (toList!6905 lt!453051) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!122993 (= (contains!5985 lt!453051 #b1000000000000000000000000000000000000000000000000000000000000000) lt!453181)))

(declare-fun b!1028602 () Bool)

(declare-fun lt!453180 () Unit!33536)

(assert (=> b!1028602 (= e!580686 lt!453180)))

(assert (=> b!1028602 (= lt!453180 (lemmaContainsKeyImpliesGetValueByKeyDefined!393 (toList!6905 lt!453051) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1028602 (isDefined!433 (getValueByKey!588 (toList!6905 lt!453051) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1028603 () Bool)

(declare-fun Unit!33547 () Unit!33536)

(assert (=> b!1028603 (= e!580686 Unit!33547)))

(declare-fun b!1028604 () Bool)

(assert (=> b!1028604 (= e!580685 (isDefined!433 (getValueByKey!588 (toList!6905 lt!453051) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!122993 c!103771) b!1028602))

(assert (= (and d!122993 (not c!103771)) b!1028603))

(assert (= (and d!122993 (not res!688308)) b!1028604))

(declare-fun m!947683 () Bool)

(assert (=> d!122993 m!947683))

(declare-fun m!947685 () Bool)

(assert (=> b!1028602 m!947685))

(declare-fun m!947687 () Bool)

(assert (=> b!1028602 m!947687))

(assert (=> b!1028602 m!947687))

(declare-fun m!947689 () Bool)

(assert (=> b!1028602 m!947689))

(assert (=> b!1028604 m!947687))

(assert (=> b!1028604 m!947687))

(assert (=> b!1028604 m!947689))

(assert (=> bm!43361 d!122993))

(declare-fun d!122995 () Bool)

(assert (=> d!122995 (= (validKeyInArray!0 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000)) (and (not (= (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1028440 d!122995))

(declare-fun d!122997 () Bool)

(declare-fun res!688320 () Bool)

(declare-fun e!580689 () Bool)

(assert (=> d!122997 (=> (not res!688320) (not e!580689))))

(assert (=> d!122997 (= res!688320 (validMask!0 (mask!29833 thiss!1427)))))

(assert (=> d!122997 (= (simpleValid!391 thiss!1427) e!580689)))

(declare-fun b!1028616 () Bool)

(assert (=> b!1028616 (= e!580689 (and (bvsge (extraKeys!5835 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5835 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!2800 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1028614 () Bool)

(declare-fun res!688319 () Bool)

(assert (=> b!1028614 (=> (not res!688319) (not e!580689))))

(declare-fun size!31644 (LongMapFixedSize!5490) (_ BitVec 32))

(assert (=> b!1028614 (= res!688319 (bvsge (size!31644 thiss!1427) (_size!2800 thiss!1427)))))

(declare-fun b!1028613 () Bool)

(declare-fun res!688318 () Bool)

(assert (=> b!1028613 (=> (not res!688318) (not e!580689))))

(assert (=> b!1028613 (= res!688318 (and (= (size!31641 (_values!6126 thiss!1427)) (bvadd (mask!29833 thiss!1427) #b00000000000000000000000000000001)) (= (size!31640 (_keys!11254 thiss!1427)) (size!31641 (_values!6126 thiss!1427))) (bvsge (_size!2800 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!2800 thiss!1427) (bvadd (mask!29833 thiss!1427) #b00000000000000000000000000000001))))))

(declare-fun b!1028615 () Bool)

(declare-fun res!688317 () Bool)

(assert (=> b!1028615 (=> (not res!688317) (not e!580689))))

(assert (=> b!1028615 (= res!688317 (= (size!31644 thiss!1427) (bvadd (_size!2800 thiss!1427) (bvsdiv (bvadd (extraKeys!5835 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!122997 res!688320) b!1028613))

(assert (= (and b!1028613 res!688318) b!1028614))

(assert (= (and b!1028614 res!688319) b!1028615))

(assert (= (and b!1028615 res!688317) b!1028616))

(assert (=> d!122997 m!947333))

(declare-fun m!947691 () Bool)

(assert (=> b!1028614 m!947691))

(assert (=> b!1028615 m!947691))

(assert (=> d!122935 d!122997))

(declare-fun d!122999 () Bool)

(assert (=> d!122999 (= (apply!936 lt!453051 (select (arr!31125 lt!452921) #b00000000000000000000000000000000)) (get!16359 (getValueByKey!588 (toList!6905 lt!453051) (select (arr!31125 lt!452921) #b00000000000000000000000000000000))))))

(declare-fun bs!30029 () Bool)

(assert (= bs!30029 d!122999))

(assert (=> bs!30029 m!947325))

(declare-fun m!947693 () Bool)

(assert (=> bs!30029 m!947693))

(assert (=> bs!30029 m!947693))

(declare-fun m!947695 () Bool)

(assert (=> bs!30029 m!947695))

(assert (=> b!1028407 d!122999))

(declare-fun d!123001 () Bool)

(declare-fun c!103774 () Bool)

(assert (=> d!123001 (= c!103774 ((_ is ValueCellFull!11448) (select (arr!31126 lt!452923) #b00000000000000000000000000000000)))))

(declare-fun e!580692 () V!37277)

(assert (=> d!123001 (= (get!16358 (select (arr!31126 lt!452923) #b00000000000000000000000000000000) (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)) e!580692)))

(declare-fun b!1028621 () Bool)

(declare-fun get!16360 (ValueCell!11448 V!37277) V!37277)

(assert (=> b!1028621 (= e!580692 (get!16360 (select (arr!31126 lt!452923) #b00000000000000000000000000000000) (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1028622 () Bool)

(declare-fun get!16361 (ValueCell!11448 V!37277) V!37277)

(assert (=> b!1028622 (= e!580692 (get!16361 (select (arr!31126 lt!452923) #b00000000000000000000000000000000) (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123001 c!103774) b!1028621))

(assert (= (and d!123001 (not c!103774)) b!1028622))

(assert (=> b!1028621 m!947445))

(assert (=> b!1028621 m!947253))

(declare-fun m!947697 () Bool)

(assert (=> b!1028621 m!947697))

(assert (=> b!1028622 m!947445))

(assert (=> b!1028622 m!947253))

(declare-fun m!947699 () Bool)

(assert (=> b!1028622 m!947699))

(assert (=> b!1028407 d!123001))

(assert (=> d!122913 d!122987))

(declare-fun d!123003 () Bool)

(declare-fun e!580693 () Bool)

(assert (=> d!123003 e!580693))

(declare-fun res!688322 () Bool)

(assert (=> d!123003 (=> (not res!688322) (not e!580693))))

(declare-fun lt!453185 () ListLongMap!13779)

(assert (=> d!123003 (= res!688322 (contains!5985 lt!453185 (_1!7825 (ite (or c!103714 c!103717) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))))))))

(declare-fun lt!453187 () List!21921)

(assert (=> d!123003 (= lt!453185 (ListLongMap!13780 lt!453187))))

(declare-fun lt!453184 () Unit!33536)

(declare-fun lt!453186 () Unit!33536)

(assert (=> d!123003 (= lt!453184 lt!453186)))

(assert (=> d!123003 (= (getValueByKey!588 lt!453187 (_1!7825 (ite (or c!103714 c!103717) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))))) (Some!638 (_2!7825 (ite (or c!103714 c!103717) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))))))))

(assert (=> d!123003 (= lt!453186 (lemmaContainsTupThenGetReturnValue!277 lt!453187 (_1!7825 (ite (or c!103714 c!103717) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))) (_2!7825 (ite (or c!103714 c!103717) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))))))))

(assert (=> d!123003 (= lt!453187 (insertStrictlySorted!369 (toList!6905 (ite c!103714 call!43361 (ite c!103717 call!43363 call!43360))) (_1!7825 (ite (or c!103714 c!103717) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))) (_2!7825 (ite (or c!103714 c!103717) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))))))))

(assert (=> d!123003 (= (+!3059 (ite c!103714 call!43361 (ite c!103717 call!43363 call!43360)) (ite (or c!103714 c!103717) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))) lt!453185)))

(declare-fun b!1028623 () Bool)

(declare-fun res!688321 () Bool)

(assert (=> b!1028623 (=> (not res!688321) (not e!580693))))

(assert (=> b!1028623 (= res!688321 (= (getValueByKey!588 (toList!6905 lt!453185) (_1!7825 (ite (or c!103714 c!103717) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))))) (Some!638 (_2!7825 (ite (or c!103714 c!103717) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))))))))

(declare-fun b!1028624 () Bool)

(assert (=> b!1028624 (= e!580693 (contains!5987 (toList!6905 lt!453185) (ite (or c!103714 c!103717) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))))))

(assert (= (and d!123003 res!688322) b!1028623))

(assert (= (and b!1028623 res!688321) b!1028624))

(declare-fun m!947701 () Bool)

(assert (=> d!123003 m!947701))

(declare-fun m!947703 () Bool)

(assert (=> d!123003 m!947703))

(declare-fun m!947705 () Bool)

(assert (=> d!123003 m!947705))

(declare-fun m!947707 () Bool)

(assert (=> d!123003 m!947707))

(declare-fun m!947709 () Bool)

(assert (=> b!1028623 m!947709))

(declare-fun m!947711 () Bool)

(assert (=> b!1028624 m!947711))

(assert (=> bm!43360 d!123003))

(declare-fun d!123005 () Bool)

(declare-fun lt!453188 () (_ BitVec 32))

(assert (=> d!123005 (and (bvsge lt!453188 #b00000000000000000000000000000000) (bvsle lt!453188 (bvsub (size!31640 (_keys!11254 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!580694 () (_ BitVec 32))

(assert (=> d!123005 (= lt!453188 e!580694)))

(declare-fun c!103776 () Bool)

(assert (=> d!123005 (= c!103776 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31640 (_keys!11254 thiss!1427))))))

(assert (=> d!123005 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31640 (_keys!11254 thiss!1427))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!31640 (_keys!11254 thiss!1427)) (size!31640 (_keys!11254 thiss!1427))))))

(assert (=> d!123005 (= (arrayCountValidKeys!0 (_keys!11254 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31640 (_keys!11254 thiss!1427))) lt!453188)))

(declare-fun b!1028625 () Bool)

(declare-fun e!580695 () (_ BitVec 32))

(declare-fun call!43383 () (_ BitVec 32))

(assert (=> b!1028625 (= e!580695 call!43383)))

(declare-fun b!1028626 () Bool)

(assert (=> b!1028626 (= e!580694 e!580695)))

(declare-fun c!103775 () Bool)

(assert (=> b!1028626 (= c!103775 (validKeyInArray!0 (select (arr!31125 (_keys!11254 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1028627 () Bool)

(assert (=> b!1028627 (= e!580694 #b00000000000000000000000000000000)))

(declare-fun bm!43380 () Bool)

(assert (=> bm!43380 (= call!43383 (arrayCountValidKeys!0 (_keys!11254 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!31640 (_keys!11254 thiss!1427))))))

(declare-fun b!1028628 () Bool)

(assert (=> b!1028628 (= e!580695 (bvadd #b00000000000000000000000000000001 call!43383))))

(assert (= (and d!123005 c!103776) b!1028627))

(assert (= (and d!123005 (not c!103776)) b!1028626))

(assert (= (and b!1028626 c!103775) b!1028628))

(assert (= (and b!1028626 (not c!103775)) b!1028625))

(assert (= (or b!1028628 b!1028625) bm!43380))

(declare-fun m!947713 () Bool)

(assert (=> b!1028626 m!947713))

(assert (=> b!1028626 m!947713))

(declare-fun m!947715 () Bool)

(assert (=> b!1028626 m!947715))

(declare-fun m!947717 () Bool)

(assert (=> bm!43380 m!947717))

(assert (=> bm!43371 d!123005))

(declare-fun b!1028629 () Bool)

(declare-fun e!580697 () Bool)

(declare-fun call!43384 () Bool)

(assert (=> b!1028629 (= e!580697 call!43384)))

(declare-fun b!1028630 () Bool)

(declare-fun e!580696 () Bool)

(assert (=> b!1028630 (= e!580696 e!580697)))

(declare-fun lt!453189 () (_ BitVec 64))

(assert (=> b!1028630 (= lt!453189 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!453191 () Unit!33536)

(assert (=> b!1028630 (= lt!453191 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11254 thiss!1427) lt!453189 #b00000000000000000000000000000000))))

(assert (=> b!1028630 (arrayContainsKey!0 (_keys!11254 thiss!1427) lt!453189 #b00000000000000000000000000000000)))

(declare-fun lt!453190 () Unit!33536)

(assert (=> b!1028630 (= lt!453190 lt!453191)))

(declare-fun res!688324 () Bool)

(assert (=> b!1028630 (= res!688324 (= (seekEntryOrOpen!0 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000) (_keys!11254 thiss!1427) (mask!29833 thiss!1427)) (Found!9666 #b00000000000000000000000000000000)))))

(assert (=> b!1028630 (=> (not res!688324) (not e!580697))))

(declare-fun bm!43381 () Bool)

(assert (=> bm!43381 (= call!43384 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11254 thiss!1427) (mask!29833 thiss!1427)))))

(declare-fun b!1028631 () Bool)

(declare-fun e!580698 () Bool)

(assert (=> b!1028631 (= e!580698 e!580696)))

(declare-fun c!103777 () Bool)

(assert (=> b!1028631 (= c!103777 (validKeyInArray!0 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1028632 () Bool)

(assert (=> b!1028632 (= e!580696 call!43384)))

(declare-fun d!123007 () Bool)

(declare-fun res!688323 () Bool)

(assert (=> d!123007 (=> res!688323 e!580698)))

(assert (=> d!123007 (= res!688323 (bvsge #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))))))

(assert (=> d!123007 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11254 thiss!1427) (mask!29833 thiss!1427)) e!580698)))

(assert (= (and d!123007 (not res!688323)) b!1028631))

(assert (= (and b!1028631 c!103777) b!1028630))

(assert (= (and b!1028631 (not c!103777)) b!1028632))

(assert (= (and b!1028630 res!688324) b!1028629))

(assert (= (or b!1028629 b!1028632) bm!43381))

(assert (=> b!1028630 m!947369))

(declare-fun m!947719 () Bool)

(assert (=> b!1028630 m!947719))

(declare-fun m!947721 () Bool)

(assert (=> b!1028630 m!947721))

(assert (=> b!1028630 m!947369))

(declare-fun m!947723 () Bool)

(assert (=> b!1028630 m!947723))

(declare-fun m!947725 () Bool)

(assert (=> bm!43381 m!947725))

(assert (=> b!1028631 m!947369))

(assert (=> b!1028631 m!947369))

(assert (=> b!1028631 m!947377))

(assert (=> b!1028489 d!123007))

(declare-fun b!1028633 () Bool)

(declare-fun e!580700 () Bool)

(declare-fun call!43385 () Bool)

(assert (=> b!1028633 (= e!580700 call!43385)))

(declare-fun b!1028634 () Bool)

(declare-fun e!580699 () Bool)

(assert (=> b!1028634 (= e!580699 e!580700)))

(declare-fun lt!453192 () (_ BitVec 64))

(assert (=> b!1028634 (= lt!453192 (select (arr!31125 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427)))) #b00000000000000000000000000000000))))

(declare-fun lt!453194 () Unit!33536)

(assert (=> b!1028634 (= lt!453194 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) lt!453192 #b00000000000000000000000000000000))))

(assert (=> b!1028634 (arrayContainsKey!0 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) lt!453192 #b00000000000000000000000000000000)))

(declare-fun lt!453193 () Unit!33536)

(assert (=> b!1028634 (= lt!453193 lt!453194)))

(declare-fun res!688326 () Bool)

(assert (=> b!1028634 (= res!688326 (= (seekEntryOrOpen!0 (select (arr!31125 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427)))) #b00000000000000000000000000000000) (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) (mask!29833 thiss!1427)) (Found!9666 #b00000000000000000000000000000000)))))

(assert (=> b!1028634 (=> (not res!688326) (not e!580700))))

(declare-fun bm!43382 () Bool)

(assert (=> bm!43382 (= call!43385 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) (mask!29833 thiss!1427)))))

(declare-fun b!1028635 () Bool)

(declare-fun e!580701 () Bool)

(assert (=> b!1028635 (= e!580701 e!580699)))

(declare-fun c!103778 () Bool)

(assert (=> b!1028635 (= c!103778 (validKeyInArray!0 (select (arr!31125 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1028636 () Bool)

(assert (=> b!1028636 (= e!580699 call!43385)))

(declare-fun d!123009 () Bool)

(declare-fun res!688325 () Bool)

(assert (=> d!123009 (=> res!688325 e!580701)))

(assert (=> d!123009 (= res!688325 (bvsge #b00000000000000000000000000000000 (size!31640 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))))))))

(assert (=> d!123009 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) (mask!29833 thiss!1427)) e!580701)))

(assert (= (and d!123009 (not res!688325)) b!1028635))

(assert (= (and b!1028635 c!103778) b!1028634))

(assert (= (and b!1028635 (not c!103778)) b!1028636))

(assert (= (and b!1028634 res!688326) b!1028633))

(assert (= (or b!1028633 b!1028636) bm!43382))

(declare-fun m!947727 () Bool)

(assert (=> b!1028634 m!947727))

(declare-fun m!947729 () Bool)

(assert (=> b!1028634 m!947729))

(declare-fun m!947731 () Bool)

(assert (=> b!1028634 m!947731))

(assert (=> b!1028634 m!947727))

(declare-fun m!947733 () Bool)

(assert (=> b!1028634 m!947733))

(declare-fun m!947735 () Bool)

(assert (=> bm!43382 m!947735))

(assert (=> b!1028635 m!947727))

(assert (=> b!1028635 m!947727))

(declare-fun m!947737 () Bool)

(assert (=> b!1028635 m!947737))

(assert (=> b!1028460 d!123009))

(assert (=> b!1028438 d!122937))

(declare-fun d!123011 () Bool)

(declare-fun res!688327 () Bool)

(declare-fun e!580702 () Bool)

(assert (=> d!123011 (=> res!688327 e!580702)))

(assert (=> d!123011 (= res!688327 (= (select (arr!31125 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427)))) #b00000000000000000000000000000000) key!909))))

(assert (=> d!123011 (= (arrayContainsKey!0 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) key!909 #b00000000000000000000000000000000) e!580702)))

(declare-fun b!1028637 () Bool)

(declare-fun e!580703 () Bool)

(assert (=> b!1028637 (= e!580702 e!580703)))

(declare-fun res!688328 () Bool)

(assert (=> b!1028637 (=> (not res!688328) (not e!580703))))

(assert (=> b!1028637 (= res!688328 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31640 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))))))))

(declare-fun b!1028638 () Bool)

(assert (=> b!1028638 (= e!580703 (arrayContainsKey!0 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!123011 (not res!688327)) b!1028637))

(assert (= (and b!1028637 res!688328) b!1028638))

(assert (=> d!123011 m!947727))

(declare-fun m!947739 () Bool)

(assert (=> b!1028638 m!947739))

(assert (=> b!1028463 d!123011))

(declare-fun d!123013 () Bool)

(assert (=> d!123013 (= (-!481 (getCurrentListMap!3912 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)) key!909) (getCurrentListMap!3912 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) (array!64647 (store (arr!31126 (_values!6126 thiss!1427)) (index!41035 lt!452919) (ValueCellFull!11448 (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31641 (_values!6126 thiss!1427))) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)))))

(assert (=> d!123013 true))

(declare-fun _$9!38 () Unit!33536)

(assert (=> d!123013 (= (choose!1691 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) (index!41035 lt!452919) key!909 (defaultEntry!6103 thiss!1427)) _$9!38)))

(declare-fun b_lambda!15837 () Bool)

(assert (=> (not b_lambda!15837) (not d!123013)))

(assert (=> d!123013 t!31005))

(declare-fun b_and!32903 () Bool)

(assert (= b_and!32901 (and (=> t!31005 result!14129) b_and!32903)))

(assert (=> d!123013 m!947247))

(assert (=> d!123013 m!947231))

(assert (=> d!123013 m!947335))

(assert (=> d!123013 m!947247))

(assert (=> d!123013 m!947249))

(assert (=> d!123013 m!947245))

(assert (=> d!123013 m!947253))

(assert (=> d!122905 d!123013))

(assert (=> d!122905 d!122987))

(assert (=> b!1028381 d!122995))

(declare-fun d!123015 () Bool)

(assert (=> d!123015 (= (apply!936 lt!453026 #b1000000000000000000000000000000000000000000000000000000000000000) (get!16359 (getValueByKey!588 (toList!6905 lt!453026) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30030 () Bool)

(assert (= bs!30030 d!123015))

(declare-fun m!947741 () Bool)

(assert (=> bs!30030 m!947741))

(assert (=> bs!30030 m!947741))

(declare-fun m!947743 () Bool)

(assert (=> bs!30030 m!947743))

(assert (=> b!1028396 d!123015))

(assert (=> b!1028333 d!122909))

(assert (=> b!1028333 d!122907))

(declare-fun b!1028639 () Bool)

(declare-fun e!580714 () Bool)

(declare-fun e!580708 () Bool)

(assert (=> b!1028639 (= e!580714 e!580708)))

(declare-fun res!688331 () Bool)

(declare-fun call!43387 () Bool)

(assert (=> b!1028639 (= res!688331 call!43387)))

(assert (=> b!1028639 (=> (not res!688331) (not e!580708))))

(declare-fun b!1028640 () Bool)

(declare-fun c!103781 () Bool)

(assert (=> b!1028640 (= c!103781 (and (not (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!580713 () ListLongMap!13779)

(declare-fun e!580716 () ListLongMap!13779)

(assert (=> b!1028640 (= e!580713 e!580716)))

(declare-fun bm!43383 () Bool)

(declare-fun lt!453213 () ListLongMap!13779)

(assert (=> bm!43383 (= call!43387 (contains!5985 lt!453213 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1028642 () Bool)

(declare-fun e!580712 () Bool)

(declare-fun call!43386 () Bool)

(assert (=> b!1028642 (= e!580712 (not call!43386))))

(declare-fun e!580715 () Bool)

(declare-fun b!1028643 () Bool)

(assert (=> b!1028643 (= e!580715 (= (apply!936 lt!453213 (select (arr!31125 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427)))) #b00000000000000000000000000000000)) (get!16358 (select (arr!31126 (array!64647 (store (arr!31126 (_values!6126 thiss!1427)) (index!41035 lt!452919) (ValueCellFull!11448 (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31641 (_values!6126 thiss!1427)))) #b00000000000000000000000000000000) (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1028643 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31641 (array!64647 (store (arr!31126 (_values!6126 thiss!1427)) (index!41035 lt!452919) (ValueCellFull!11448 (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31641 (_values!6126 thiss!1427))))))))

(assert (=> b!1028643 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31640 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))))))))

(declare-fun b!1028644 () Bool)

(declare-fun e!580709 () Bool)

(assert (=> b!1028644 (= e!580709 (validKeyInArray!0 (select (arr!31125 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1028645 () Bool)

(declare-fun res!688332 () Bool)

(declare-fun e!580707 () Bool)

(assert (=> b!1028645 (=> (not res!688332) (not e!580707))))

(assert (=> b!1028645 (= res!688332 e!580712)))

(declare-fun c!103779 () Bool)

(assert (=> b!1028645 (= c!103779 (not (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!43384 () Bool)

(declare-fun call!43390 () ListLongMap!13779)

(assert (=> bm!43384 (= call!43390 (getCurrentListMapNoExtraKeys!3529 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) (array!64647 (store (arr!31126 (_values!6126 thiss!1427)) (index!41035 lt!452919) (ValueCellFull!11448 (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31641 (_values!6126 thiss!1427))) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)))))

(declare-fun b!1028646 () Bool)

(assert (=> b!1028646 (= e!580714 (not call!43387))))

(declare-fun b!1028647 () Bool)

(declare-fun e!580704 () ListLongMap!13779)

(assert (=> b!1028647 (= e!580704 e!580713)))

(declare-fun c!103783 () Bool)

(assert (=> b!1028647 (= c!103783 (and (not (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1028648 () Bool)

(declare-fun call!43389 () ListLongMap!13779)

(assert (=> b!1028648 (= e!580716 call!43389)))

(declare-fun b!1028649 () Bool)

(declare-fun e!580710 () Bool)

(assert (=> b!1028649 (= e!580710 (= (apply!936 lt!453213 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5939 thiss!1427)))))

(declare-fun b!1028650 () Bool)

(assert (=> b!1028650 (= e!580707 e!580714)))

(declare-fun c!103784 () Bool)

(assert (=> b!1028650 (= c!103784 (not (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1028651 () Bool)

(declare-fun e!580705 () Bool)

(assert (=> b!1028651 (= e!580705 e!580715)))

(declare-fun res!688333 () Bool)

(assert (=> b!1028651 (=> (not res!688333) (not e!580715))))

(assert (=> b!1028651 (= res!688333 (contains!5985 lt!453213 (select (arr!31125 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (=> b!1028651 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31640 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))))))))

(declare-fun b!1028652 () Bool)

(declare-fun e!580706 () Bool)

(assert (=> b!1028652 (= e!580706 (validKeyInArray!0 (select (arr!31125 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1028653 () Bool)

(declare-fun call!43391 () ListLongMap!13779)

(assert (=> b!1028653 (= e!580704 (+!3059 call!43391 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))))))

(declare-fun b!1028654 () Bool)

(declare-fun e!580711 () Unit!33536)

(declare-fun lt!453210 () Unit!33536)

(assert (=> b!1028654 (= e!580711 lt!453210)))

(declare-fun lt!453196 () ListLongMap!13779)

(assert (=> b!1028654 (= lt!453196 (getCurrentListMapNoExtraKeys!3529 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) (array!64647 (store (arr!31126 (_values!6126 thiss!1427)) (index!41035 lt!452919) (ValueCellFull!11448 (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31641 (_values!6126 thiss!1427))) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)))))

(declare-fun lt!453206 () (_ BitVec 64))

(assert (=> b!1028654 (= lt!453206 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453205 () (_ BitVec 64))

(assert (=> b!1028654 (= lt!453205 (select (arr!31125 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427)))) #b00000000000000000000000000000000))))

(declare-fun lt!453207 () Unit!33536)

(assert (=> b!1028654 (= lt!453207 (addStillContains!624 lt!453196 lt!453206 (zeroValue!5939 thiss!1427) lt!453205))))

(assert (=> b!1028654 (contains!5985 (+!3059 lt!453196 (tuple2!15631 lt!453206 (zeroValue!5939 thiss!1427))) lt!453205)))

(declare-fun lt!453216 () Unit!33536)

(assert (=> b!1028654 (= lt!453216 lt!453207)))

(declare-fun lt!453208 () ListLongMap!13779)

(assert (=> b!1028654 (= lt!453208 (getCurrentListMapNoExtraKeys!3529 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) (array!64647 (store (arr!31126 (_values!6126 thiss!1427)) (index!41035 lt!452919) (ValueCellFull!11448 (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31641 (_values!6126 thiss!1427))) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)))))

(declare-fun lt!453204 () (_ BitVec 64))

(assert (=> b!1028654 (= lt!453204 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453209 () (_ BitVec 64))

(assert (=> b!1028654 (= lt!453209 (select (arr!31125 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427)))) #b00000000000000000000000000000000))))

(declare-fun lt!453198 () Unit!33536)

(assert (=> b!1028654 (= lt!453198 (addApplyDifferent!476 lt!453208 lt!453204 (minValue!5939 thiss!1427) lt!453209))))

(assert (=> b!1028654 (= (apply!936 (+!3059 lt!453208 (tuple2!15631 lt!453204 (minValue!5939 thiss!1427))) lt!453209) (apply!936 lt!453208 lt!453209))))

(declare-fun lt!453212 () Unit!33536)

(assert (=> b!1028654 (= lt!453212 lt!453198)))

(declare-fun lt!453199 () ListLongMap!13779)

(assert (=> b!1028654 (= lt!453199 (getCurrentListMapNoExtraKeys!3529 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) (array!64647 (store (arr!31126 (_values!6126 thiss!1427)) (index!41035 lt!452919) (ValueCellFull!11448 (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31641 (_values!6126 thiss!1427))) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)))))

(declare-fun lt!453214 () (_ BitVec 64))

(assert (=> b!1028654 (= lt!453214 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453215 () (_ BitVec 64))

(assert (=> b!1028654 (= lt!453215 (select (arr!31125 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427)))) #b00000000000000000000000000000000))))

(declare-fun lt!453200 () Unit!33536)

(assert (=> b!1028654 (= lt!453200 (addApplyDifferent!476 lt!453199 lt!453214 (zeroValue!5939 thiss!1427) lt!453215))))

(assert (=> b!1028654 (= (apply!936 (+!3059 lt!453199 (tuple2!15631 lt!453214 (zeroValue!5939 thiss!1427))) lt!453215) (apply!936 lt!453199 lt!453215))))

(declare-fun lt!453197 () Unit!33536)

(assert (=> b!1028654 (= lt!453197 lt!453200)))

(declare-fun lt!453202 () ListLongMap!13779)

(assert (=> b!1028654 (= lt!453202 (getCurrentListMapNoExtraKeys!3529 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) (array!64647 (store (arr!31126 (_values!6126 thiss!1427)) (index!41035 lt!452919) (ValueCellFull!11448 (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31641 (_values!6126 thiss!1427))) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)))))

(declare-fun lt!453211 () (_ BitVec 64))

(assert (=> b!1028654 (= lt!453211 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453201 () (_ BitVec 64))

(assert (=> b!1028654 (= lt!453201 (select (arr!31125 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427)))) #b00000000000000000000000000000000))))

(assert (=> b!1028654 (= lt!453210 (addApplyDifferent!476 lt!453202 lt!453211 (minValue!5939 thiss!1427) lt!453201))))

(assert (=> b!1028654 (= (apply!936 (+!3059 lt!453202 (tuple2!15631 lt!453211 (minValue!5939 thiss!1427))) lt!453201) (apply!936 lt!453202 lt!453201))))

(declare-fun d!123017 () Bool)

(assert (=> d!123017 e!580707))

(declare-fun res!688329 () Bool)

(assert (=> d!123017 (=> (not res!688329) (not e!580707))))

(assert (=> d!123017 (= res!688329 (or (bvsge #b00000000000000000000000000000000 (size!31640 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31640 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))))))))))

(declare-fun lt!453195 () ListLongMap!13779)

(assert (=> d!123017 (= lt!453213 lt!453195)))

(declare-fun lt!453203 () Unit!33536)

(assert (=> d!123017 (= lt!453203 e!580711)))

(declare-fun c!103782 () Bool)

(assert (=> d!123017 (= c!103782 e!580709)))

(declare-fun res!688334 () Bool)

(assert (=> d!123017 (=> (not res!688334) (not e!580709))))

(assert (=> d!123017 (= res!688334 (bvslt #b00000000000000000000000000000000 (size!31640 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))))))))

(assert (=> d!123017 (= lt!453195 e!580704)))

(declare-fun c!103780 () Bool)

(assert (=> d!123017 (= c!103780 (and (not (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5835 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!123017 (validMask!0 (mask!29833 thiss!1427))))

(assert (=> d!123017 (= (getCurrentListMap!3912 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) (array!64647 (store (arr!31126 (_values!6126 thiss!1427)) (index!41035 lt!452919) (ValueCellFull!11448 (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31641 (_values!6126 thiss!1427))) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)) lt!453213)))

(declare-fun b!1028641 () Bool)

(declare-fun res!688330 () Bool)

(assert (=> b!1028641 (=> (not res!688330) (not e!580707))))

(assert (=> b!1028641 (= res!688330 e!580705)))

(declare-fun res!688335 () Bool)

(assert (=> b!1028641 (=> res!688335 e!580705)))

(assert (=> b!1028641 (= res!688335 (not e!580706))))

(declare-fun res!688337 () Bool)

(assert (=> b!1028641 (=> (not res!688337) (not e!580706))))

(assert (=> b!1028641 (= res!688337 (bvslt #b00000000000000000000000000000000 (size!31640 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))))))))

(declare-fun bm!43385 () Bool)

(declare-fun call!43392 () ListLongMap!13779)

(assert (=> bm!43385 (= call!43392 call!43390)))

(declare-fun bm!43386 () Bool)

(assert (=> bm!43386 (= call!43386 (contains!5985 lt!453213 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!43387 () Bool)

(declare-fun call!43388 () ListLongMap!13779)

(assert (=> bm!43387 (= call!43388 call!43391)))

(declare-fun bm!43388 () Bool)

(assert (=> bm!43388 (= call!43389 call!43392)))

(declare-fun b!1028655 () Bool)

(declare-fun Unit!33548 () Unit!33536)

(assert (=> b!1028655 (= e!580711 Unit!33548)))

(declare-fun bm!43389 () Bool)

(assert (=> bm!43389 (= call!43391 (+!3059 (ite c!103780 call!43390 (ite c!103783 call!43392 call!43389)) (ite (or c!103780 c!103783) (tuple2!15631 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5939 thiss!1427)) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))))))

(declare-fun b!1028656 () Bool)

(assert (=> b!1028656 (= e!580712 e!580710)))

(declare-fun res!688336 () Bool)

(assert (=> b!1028656 (= res!688336 call!43386)))

(assert (=> b!1028656 (=> (not res!688336) (not e!580710))))

(declare-fun b!1028657 () Bool)

(assert (=> b!1028657 (= e!580716 call!43388)))

(declare-fun b!1028658 () Bool)

(assert (=> b!1028658 (= e!580713 call!43388)))

(declare-fun b!1028659 () Bool)

(assert (=> b!1028659 (= e!580708 (= (apply!936 lt!453213 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5939 thiss!1427)))))

(assert (= (and d!123017 c!103780) b!1028653))

(assert (= (and d!123017 (not c!103780)) b!1028647))

(assert (= (and b!1028647 c!103783) b!1028658))

(assert (= (and b!1028647 (not c!103783)) b!1028640))

(assert (= (and b!1028640 c!103781) b!1028657))

(assert (= (and b!1028640 (not c!103781)) b!1028648))

(assert (= (or b!1028657 b!1028648) bm!43388))

(assert (= (or b!1028658 bm!43388) bm!43385))

(assert (= (or b!1028658 b!1028657) bm!43387))

(assert (= (or b!1028653 bm!43385) bm!43384))

(assert (= (or b!1028653 bm!43387) bm!43389))

(assert (= (and d!123017 res!688334) b!1028644))

(assert (= (and d!123017 c!103782) b!1028654))

(assert (= (and d!123017 (not c!103782)) b!1028655))

(assert (= (and d!123017 res!688329) b!1028641))

(assert (= (and b!1028641 res!688337) b!1028652))

(assert (= (and b!1028641 (not res!688335)) b!1028651))

(assert (= (and b!1028651 res!688333) b!1028643))

(assert (= (and b!1028641 res!688330) b!1028645))

(assert (= (and b!1028645 c!103779) b!1028656))

(assert (= (and b!1028645 (not c!103779)) b!1028642))

(assert (= (and b!1028656 res!688336) b!1028649))

(assert (= (or b!1028656 b!1028642) bm!43386))

(assert (= (and b!1028645 res!688332) b!1028650))

(assert (= (and b!1028650 c!103784) b!1028639))

(assert (= (and b!1028650 (not c!103784)) b!1028646))

(assert (= (and b!1028639 res!688331) b!1028659))

(assert (= (or b!1028639 b!1028646) bm!43383))

(declare-fun b_lambda!15839 () Bool)

(assert (=> (not b_lambda!15839) (not b!1028643)))

(assert (=> b!1028643 t!31005))

(declare-fun b_and!32905 () Bool)

(assert (= b_and!32903 (and (=> t!31005 result!14129) b_and!32905)))

(declare-fun m!947745 () Bool)

(assert (=> bm!43389 m!947745))

(declare-fun m!947747 () Bool)

(assert (=> b!1028654 m!947747))

(declare-fun m!947749 () Bool)

(assert (=> b!1028654 m!947749))

(declare-fun m!947751 () Bool)

(assert (=> b!1028654 m!947751))

(declare-fun m!947753 () Bool)

(assert (=> b!1028654 m!947753))

(declare-fun m!947755 () Bool)

(assert (=> b!1028654 m!947755))

(declare-fun m!947757 () Bool)

(assert (=> b!1028654 m!947757))

(declare-fun m!947759 () Bool)

(assert (=> b!1028654 m!947759))

(declare-fun m!947761 () Bool)

(assert (=> b!1028654 m!947761))

(declare-fun m!947763 () Bool)

(assert (=> b!1028654 m!947763))

(assert (=> b!1028654 m!947761))

(assert (=> b!1028654 m!947759))

(declare-fun m!947765 () Bool)

(assert (=> b!1028654 m!947765))

(declare-fun m!947767 () Bool)

(assert (=> b!1028654 m!947767))

(declare-fun m!947769 () Bool)

(assert (=> b!1028654 m!947769))

(declare-fun m!947771 () Bool)

(assert (=> b!1028654 m!947771))

(declare-fun m!947773 () Bool)

(assert (=> b!1028654 m!947773))

(assert (=> b!1028654 m!947755))

(declare-fun m!947775 () Bool)

(assert (=> b!1028654 m!947775))

(assert (=> b!1028654 m!947727))

(assert (=> b!1028654 m!947771))

(declare-fun m!947777 () Bool)

(assert (=> b!1028654 m!947777))

(assert (=> b!1028651 m!947727))

(assert (=> b!1028651 m!947727))

(declare-fun m!947779 () Bool)

(assert (=> b!1028651 m!947779))

(assert (=> d!123017 m!947333))

(declare-fun m!947781 () Bool)

(assert (=> b!1028659 m!947781))

(assert (=> b!1028652 m!947727))

(assert (=> b!1028652 m!947727))

(assert (=> b!1028652 m!947737))

(declare-fun m!947783 () Bool)

(assert (=> bm!43386 m!947783))

(assert (=> bm!43384 m!947775))

(declare-fun m!947785 () Bool)

(assert (=> bm!43383 m!947785))

(declare-fun m!947787 () Bool)

(assert (=> b!1028653 m!947787))

(declare-fun m!947789 () Bool)

(assert (=> b!1028649 m!947789))

(assert (=> b!1028644 m!947727))

(assert (=> b!1028644 m!947727))

(assert (=> b!1028644 m!947737))

(assert (=> b!1028643 m!947253))

(assert (=> b!1028643 m!947727))

(declare-fun m!947791 () Bool)

(assert (=> b!1028643 m!947791))

(assert (=> b!1028643 m!947253))

(declare-fun m!947793 () Bool)

(assert (=> b!1028643 m!947793))

(assert (=> b!1028643 m!947791))

(assert (=> b!1028643 m!947727))

(declare-fun m!947795 () Bool)

(assert (=> b!1028643 m!947795))

(assert (=> b!1028333 d!123017))

(declare-fun d!123019 () Bool)

(assert (=> d!123019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) (mask!29833 thiss!1427))))

(assert (=> d!123019 true))

(declare-fun _$44!12 () Unit!33536)

(assert (=> d!123019 (= (choose!25 (_keys!11254 thiss!1427) (index!41035 lt!452919) (mask!29833 thiss!1427)) _$44!12)))

(declare-fun bs!30031 () Bool)

(assert (= bs!30031 d!123019))

(assert (=> bs!30031 m!947231))

(assert (=> bs!30031 m!947471))

(assert (=> d!122925 d!123019))

(assert (=> d!122925 d!122987))

(declare-fun b!1028660 () Bool)

(declare-fun e!580718 () Bool)

(declare-fun lt!453218 () ListLongMap!13779)

(assert (=> b!1028660 (= e!580718 (= lt!453218 (getCurrentListMapNoExtraKeys!3529 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6103 thiss!1427))))))

(declare-fun b!1028661 () Bool)

(declare-fun e!580721 () ListLongMap!13779)

(declare-fun e!580719 () ListLongMap!13779)

(assert (=> b!1028661 (= e!580721 e!580719)))

(declare-fun c!103788 () Bool)

(assert (=> b!1028661 (= c!103788 (validKeyInArray!0 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1028662 () Bool)

(declare-fun e!580722 () Bool)

(declare-fun e!580723 () Bool)

(assert (=> b!1028662 (= e!580722 e!580723)))

(assert (=> b!1028662 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))))))

(declare-fun res!688340 () Bool)

(assert (=> b!1028662 (= res!688340 (contains!5985 lt!453218 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1028662 (=> (not res!688340) (not e!580723))))

(declare-fun b!1028663 () Bool)

(declare-fun res!688339 () Bool)

(declare-fun e!580717 () Bool)

(assert (=> b!1028663 (=> (not res!688339) (not e!580717))))

(assert (=> b!1028663 (= res!688339 (not (contains!5985 lt!453218 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1028664 () Bool)

(assert (=> b!1028664 (= e!580721 (ListLongMap!13780 Nil!21918))))

(declare-fun b!1028665 () Bool)

(assert (=> b!1028665 (= e!580722 e!580718)))

(declare-fun c!103787 () Bool)

(assert (=> b!1028665 (= c!103787 (bvslt #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))))))

(declare-fun b!1028666 () Bool)

(declare-fun e!580720 () Bool)

(assert (=> b!1028666 (= e!580720 (validKeyInArray!0 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1028666 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1028667 () Bool)

(assert (=> b!1028667 (= e!580718 (isEmpty!926 lt!453218))))

(declare-fun d!123021 () Bool)

(assert (=> d!123021 e!580717))

(declare-fun res!688338 () Bool)

(assert (=> d!123021 (=> (not res!688338) (not e!580717))))

(assert (=> d!123021 (= res!688338 (not (contains!5985 lt!453218 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!123021 (= lt!453218 e!580721)))

(declare-fun c!103786 () Bool)

(assert (=> d!123021 (= c!103786 (bvsge #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))))))

(assert (=> d!123021 (validMask!0 (mask!29833 thiss!1427))))

(assert (=> d!123021 (= (getCurrentListMapNoExtraKeys!3529 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)) lt!453218)))

(declare-fun b!1028668 () Bool)

(assert (=> b!1028668 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))))))

(assert (=> b!1028668 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31641 (_values!6126 thiss!1427))))))

(assert (=> b!1028668 (= e!580723 (= (apply!936 lt!453218 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000)) (get!16358 (select (arr!31126 (_values!6126 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1028669 () Bool)

(declare-fun lt!453217 () Unit!33536)

(declare-fun lt!453220 () Unit!33536)

(assert (=> b!1028669 (= lt!453217 lt!453220)))

(declare-fun lt!453223 () ListLongMap!13779)

(declare-fun lt!453219 () (_ BitVec 64))

(declare-fun lt!453221 () (_ BitVec 64))

(declare-fun lt!453222 () V!37277)

(assert (=> b!1028669 (not (contains!5985 (+!3059 lt!453223 (tuple2!15631 lt!453221 lt!453222)) lt!453219))))

(assert (=> b!1028669 (= lt!453220 (addStillNotContains!241 lt!453223 lt!453221 lt!453222 lt!453219))))

(assert (=> b!1028669 (= lt!453219 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1028669 (= lt!453222 (get!16358 (select (arr!31126 (_values!6126 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1028669 (= lt!453221 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun call!43393 () ListLongMap!13779)

(assert (=> b!1028669 (= lt!453223 call!43393)))

(assert (=> b!1028669 (= e!580719 (+!3059 call!43393 (tuple2!15631 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000) (get!16358 (select (arr!31126 (_values!6126 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1028670 () Bool)

(assert (=> b!1028670 (= e!580717 e!580722)))

(declare-fun c!103785 () Bool)

(assert (=> b!1028670 (= c!103785 e!580720)))

(declare-fun res!688341 () Bool)

(assert (=> b!1028670 (=> (not res!688341) (not e!580720))))

(assert (=> b!1028670 (= res!688341 (bvslt #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))))))

(declare-fun bm!43390 () Bool)

(assert (=> bm!43390 (= call!43393 (getCurrentListMapNoExtraKeys!3529 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6103 thiss!1427)))))

(declare-fun b!1028671 () Bool)

(assert (=> b!1028671 (= e!580719 call!43393)))

(assert (= (and d!123021 c!103786) b!1028664))

(assert (= (and d!123021 (not c!103786)) b!1028661))

(assert (= (and b!1028661 c!103788) b!1028669))

(assert (= (and b!1028661 (not c!103788)) b!1028671))

(assert (= (or b!1028669 b!1028671) bm!43390))

(assert (= (and d!123021 res!688338) b!1028663))

(assert (= (and b!1028663 res!688339) b!1028670))

(assert (= (and b!1028670 res!688341) b!1028666))

(assert (= (and b!1028670 c!103785) b!1028662))

(assert (= (and b!1028670 (not c!103785)) b!1028665))

(assert (= (and b!1028662 res!688340) b!1028668))

(assert (= (and b!1028665 c!103787) b!1028660))

(assert (= (and b!1028665 (not c!103787)) b!1028667))

(declare-fun b_lambda!15841 () Bool)

(assert (=> (not b_lambda!15841) (not b!1028668)))

(assert (=> b!1028668 t!31005))

(declare-fun b_and!32907 () Bool)

(assert (= b_and!32905 (and (=> t!31005 result!14129) b_and!32907)))

(declare-fun b_lambda!15843 () Bool)

(assert (=> (not b_lambda!15843) (not b!1028669)))

(assert (=> b!1028669 t!31005))

(declare-fun b_and!32909 () Bool)

(assert (= b_and!32907 (and (=> t!31005 result!14129) b_and!32909)))

(assert (=> b!1028669 m!947387))

(assert (=> b!1028669 m!947253))

(declare-fun m!947797 () Bool)

(assert (=> b!1028669 m!947797))

(declare-fun m!947799 () Bool)

(assert (=> b!1028669 m!947799))

(assert (=> b!1028669 m!947387))

(assert (=> b!1028669 m!947253))

(assert (=> b!1028669 m!947389))

(assert (=> b!1028669 m!947797))

(declare-fun m!947801 () Bool)

(assert (=> b!1028669 m!947801))

(assert (=> b!1028669 m!947369))

(declare-fun m!947803 () Bool)

(assert (=> b!1028669 m!947803))

(declare-fun m!947805 () Bool)

(assert (=> b!1028660 m!947805))

(assert (=> b!1028661 m!947369))

(assert (=> b!1028661 m!947369))

(assert (=> b!1028661 m!947377))

(declare-fun m!947807 () Bool)

(assert (=> d!123021 m!947807))

(assert (=> d!123021 m!947333))

(declare-fun m!947809 () Bool)

(assert (=> b!1028667 m!947809))

(assert (=> b!1028666 m!947369))

(assert (=> b!1028666 m!947369))

(assert (=> b!1028666 m!947377))

(assert (=> bm!43390 m!947805))

(assert (=> b!1028668 m!947387))

(assert (=> b!1028668 m!947253))

(assert (=> b!1028668 m!947387))

(assert (=> b!1028668 m!947253))

(assert (=> b!1028668 m!947389))

(assert (=> b!1028668 m!947369))

(assert (=> b!1028668 m!947369))

(declare-fun m!947811 () Bool)

(assert (=> b!1028668 m!947811))

(assert (=> b!1028662 m!947369))

(assert (=> b!1028662 m!947369))

(declare-fun m!947813 () Bool)

(assert (=> b!1028662 m!947813))

(declare-fun m!947815 () Bool)

(assert (=> b!1028663 m!947815))

(assert (=> bm!43355 d!123021))

(declare-fun d!123023 () Bool)

(assert (=> d!123023 (= (validKeyInArray!0 (select (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919))) (and (not (= (select (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1028315 d!123023))

(declare-fun d!123025 () Bool)

(assert (=> d!123025 (not (arrayContainsKey!0 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) key!909 #b00000000000000000000000000000000))))

(assert (=> d!123025 true))

(declare-fun _$59!14 () Unit!33536)

(assert (=> d!123025 (= (choose!121 (_keys!11254 thiss!1427) (index!41035 lt!452919) key!909) _$59!14)))

(declare-fun bs!30032 () Bool)

(assert (= bs!30032 d!123025))

(assert (=> bs!30032 m!947231))

(assert (=> bs!30032 m!947475))

(assert (=> d!122927 d!123025))

(declare-fun d!123027 () Bool)

(declare-fun lt!453224 () (_ BitVec 32))

(assert (=> d!123027 (and (bvsge lt!453224 #b00000000000000000000000000000000) (bvsle lt!453224 (bvsub (size!31640 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun e!580724 () (_ BitVec 32))

(assert (=> d!123027 (= lt!453224 e!580724)))

(declare-fun c!103790 () Bool)

(assert (=> d!123027 (= c!103790 (bvsge #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))))))

(assert (=> d!123027 (and (bvsle #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31640 (_keys!11254 thiss!1427)) (size!31640 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))))))))

(assert (=> d!123027 (= (arrayCountValidKeys!0 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))) lt!453224)))

(declare-fun b!1028672 () Bool)

(declare-fun e!580725 () (_ BitVec 32))

(declare-fun call!43394 () (_ BitVec 32))

(assert (=> b!1028672 (= e!580725 call!43394)))

(declare-fun b!1028673 () Bool)

(assert (=> b!1028673 (= e!580724 e!580725)))

(declare-fun c!103789 () Bool)

(assert (=> b!1028673 (= c!103789 (validKeyInArray!0 (select (arr!31125 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1028674 () Bool)

(assert (=> b!1028674 (= e!580724 #b00000000000000000000000000000000)))

(declare-fun bm!43391 () Bool)

(assert (=> bm!43391 (= call!43394 (arrayCountValidKeys!0 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31640 (_keys!11254 thiss!1427))))))

(declare-fun b!1028675 () Bool)

(assert (=> b!1028675 (= e!580725 (bvadd #b00000000000000000000000000000001 call!43394))))

(assert (= (and d!123027 c!103790) b!1028674))

(assert (= (and d!123027 (not c!103790)) b!1028673))

(assert (= (and b!1028673 c!103789) b!1028675))

(assert (= (and b!1028673 (not c!103789)) b!1028672))

(assert (= (or b!1028675 b!1028672) bm!43391))

(assert (=> b!1028673 m!947727))

(assert (=> b!1028673 m!947727))

(assert (=> b!1028673 m!947737))

(declare-fun m!947817 () Bool)

(assert (=> bm!43391 m!947817))

(assert (=> b!1028318 d!123027))

(assert (=> b!1028318 d!122919))

(declare-fun d!123029 () Bool)

(declare-fun e!580726 () Bool)

(assert (=> d!123029 e!580726))

(declare-fun res!688342 () Bool)

(assert (=> d!123029 (=> res!688342 e!580726)))

(declare-fun lt!453226 () Bool)

(assert (=> d!123029 (= res!688342 (not lt!453226))))

(declare-fun lt!453227 () Bool)

(assert (=> d!123029 (= lt!453226 lt!453227)))

(declare-fun lt!453228 () Unit!33536)

(declare-fun e!580727 () Unit!33536)

(assert (=> d!123029 (= lt!453228 e!580727)))

(declare-fun c!103791 () Bool)

(assert (=> d!123029 (= c!103791 lt!453227)))

(assert (=> d!123029 (= lt!453227 (containsKey!561 (toList!6905 lt!453051) (select (arr!31125 lt!452921) #b00000000000000000000000000000000)))))

(assert (=> d!123029 (= (contains!5985 lt!453051 (select (arr!31125 lt!452921) #b00000000000000000000000000000000)) lt!453226)))

(declare-fun b!1028676 () Bool)

(declare-fun lt!453225 () Unit!33536)

(assert (=> b!1028676 (= e!580727 lt!453225)))

(assert (=> b!1028676 (= lt!453225 (lemmaContainsKeyImpliesGetValueByKeyDefined!393 (toList!6905 lt!453051) (select (arr!31125 lt!452921) #b00000000000000000000000000000000)))))

(assert (=> b!1028676 (isDefined!433 (getValueByKey!588 (toList!6905 lt!453051) (select (arr!31125 lt!452921) #b00000000000000000000000000000000)))))

(declare-fun b!1028677 () Bool)

(declare-fun Unit!33549 () Unit!33536)

(assert (=> b!1028677 (= e!580727 Unit!33549)))

(declare-fun b!1028678 () Bool)

(assert (=> b!1028678 (= e!580726 (isDefined!433 (getValueByKey!588 (toList!6905 lt!453051) (select (arr!31125 lt!452921) #b00000000000000000000000000000000))))))

(assert (= (and d!123029 c!103791) b!1028676))

(assert (= (and d!123029 (not c!103791)) b!1028677))

(assert (= (and d!123029 (not res!688342)) b!1028678))

(assert (=> d!123029 m!947325))

(declare-fun m!947819 () Bool)

(assert (=> d!123029 m!947819))

(assert (=> b!1028676 m!947325))

(declare-fun m!947821 () Bool)

(assert (=> b!1028676 m!947821))

(assert (=> b!1028676 m!947325))

(assert (=> b!1028676 m!947693))

(assert (=> b!1028676 m!947693))

(declare-fun m!947823 () Bool)

(assert (=> b!1028676 m!947823))

(assert (=> b!1028678 m!947325))

(assert (=> b!1028678 m!947693))

(assert (=> b!1028678 m!947693))

(assert (=> b!1028678 m!947823))

(assert (=> b!1028415 d!123029))

(declare-fun d!123031 () Bool)

(declare-fun e!580728 () Bool)

(assert (=> d!123031 e!580728))

(declare-fun res!688344 () Bool)

(assert (=> d!123031 (=> (not res!688344) (not e!580728))))

(declare-fun lt!453230 () ListLongMap!13779)

(assert (=> d!123031 (= res!688344 (contains!5985 lt!453230 (_1!7825 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))))))

(declare-fun lt!453232 () List!21921)

(assert (=> d!123031 (= lt!453230 (ListLongMap!13780 lt!453232))))

(declare-fun lt!453229 () Unit!33536)

(declare-fun lt!453231 () Unit!33536)

(assert (=> d!123031 (= lt!453229 lt!453231)))

(assert (=> d!123031 (= (getValueByKey!588 lt!453232 (_1!7825 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))) (Some!638 (_2!7825 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))))))

(assert (=> d!123031 (= lt!453231 (lemmaContainsTupThenGetReturnValue!277 lt!453232 (_1!7825 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))) (_2!7825 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))))))

(assert (=> d!123031 (= lt!453232 (insertStrictlySorted!369 (toList!6905 call!43369) (_1!7825 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))) (_2!7825 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))))))

(assert (=> d!123031 (= (+!3059 call!43369 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))) lt!453230)))

(declare-fun b!1028679 () Bool)

(declare-fun res!688343 () Bool)

(assert (=> b!1028679 (=> (not res!688343) (not e!580728))))

(assert (=> b!1028679 (= res!688343 (= (getValueByKey!588 (toList!6905 lt!453230) (_1!7825 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427)))) (Some!638 (_2!7825 (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))))))))

(declare-fun b!1028680 () Bool)

(assert (=> b!1028680 (= e!580728 (contains!5987 (toList!6905 lt!453230) (tuple2!15631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5939 thiss!1427))))))

(assert (= (and d!123031 res!688344) b!1028679))

(assert (= (and b!1028679 res!688343) b!1028680))

(declare-fun m!947825 () Bool)

(assert (=> d!123031 m!947825))

(declare-fun m!947827 () Bool)

(assert (=> d!123031 m!947827))

(declare-fun m!947829 () Bool)

(assert (=> d!123031 m!947829))

(declare-fun m!947831 () Bool)

(assert (=> d!123031 m!947831))

(declare-fun m!947833 () Bool)

(assert (=> b!1028679 m!947833))

(declare-fun m!947835 () Bool)

(assert (=> b!1028680 m!947835))

(assert (=> b!1028417 d!123031))

(assert (=> b!1028389 d!122995))

(declare-fun d!123033 () Bool)

(assert (=> d!123033 (= (arrayCountValidKeys!0 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11254 thiss!1427) #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> d!123033 true))

(declare-fun _$79!11 () Unit!33536)

(assert (=> d!123033 (= (choose!82 (_keys!11254 thiss!1427) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) _$79!11)))

(declare-fun bs!30033 () Bool)

(assert (= bs!30033 d!123033))

(assert (=> bs!30033 m!947231))

(assert (=> bs!30033 m!947317))

(assert (=> bs!30033 m!947261))

(assert (=> d!122901 d!123033))

(declare-fun b!1028681 () Bool)

(declare-fun e!580730 () Bool)

(declare-fun call!43395 () Bool)

(assert (=> b!1028681 (= e!580730 call!43395)))

(declare-fun b!1028682 () Bool)

(declare-fun e!580729 () Bool)

(assert (=> b!1028682 (= e!580729 e!580730)))

(declare-fun lt!453233 () (_ BitVec 64))

(assert (=> b!1028682 (= lt!453233 (select (arr!31125 lt!452921) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!453235 () Unit!33536)

(assert (=> b!1028682 (= lt!453235 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!452921 lt!453233 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1028682 (arrayContainsKey!0 lt!452921 lt!453233 #b00000000000000000000000000000000)))

(declare-fun lt!453234 () Unit!33536)

(assert (=> b!1028682 (= lt!453234 lt!453235)))

(declare-fun res!688346 () Bool)

(assert (=> b!1028682 (= res!688346 (= (seekEntryOrOpen!0 (select (arr!31125 lt!452921) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!452921 (mask!29833 thiss!1427)) (Found!9666 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1028682 (=> (not res!688346) (not e!580730))))

(declare-fun bm!43392 () Bool)

(assert (=> bm!43392 (= call!43395 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!452921 (mask!29833 thiss!1427)))))

(declare-fun b!1028683 () Bool)

(declare-fun e!580731 () Bool)

(assert (=> b!1028683 (= e!580731 e!580729)))

(declare-fun c!103792 () Bool)

(assert (=> b!1028683 (= c!103792 (validKeyInArray!0 (select (arr!31125 lt!452921) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1028684 () Bool)

(assert (=> b!1028684 (= e!580729 call!43395)))

(declare-fun d!123035 () Bool)

(declare-fun res!688345 () Bool)

(assert (=> d!123035 (=> res!688345 e!580731)))

(assert (=> d!123035 (= res!688345 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31640 lt!452921)))))

(assert (=> d!123035 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!452921 (mask!29833 thiss!1427)) e!580731)))

(assert (= (and d!123035 (not res!688345)) b!1028683))

(assert (= (and b!1028683 c!103792) b!1028682))

(assert (= (and b!1028683 (not c!103792)) b!1028684))

(assert (= (and b!1028682 res!688346) b!1028681))

(assert (= (or b!1028681 b!1028684) bm!43392))

(assert (=> b!1028682 m!947661))

(declare-fun m!947837 () Bool)

(assert (=> b!1028682 m!947837))

(declare-fun m!947839 () Bool)

(assert (=> b!1028682 m!947839))

(assert (=> b!1028682 m!947661))

(declare-fun m!947841 () Bool)

(assert (=> b!1028682 m!947841))

(declare-fun m!947843 () Bool)

(assert (=> bm!43392 m!947843))

(assert (=> b!1028683 m!947661))

(assert (=> b!1028683 m!947661))

(assert (=> b!1028683 m!947663))

(assert (=> bm!43374 d!123035))

(declare-fun d!123037 () Bool)

(declare-fun e!580732 () Bool)

(assert (=> d!123037 e!580732))

(declare-fun res!688348 () Bool)

(assert (=> d!123037 (=> (not res!688348) (not e!580732))))

(declare-fun lt!453237 () ListLongMap!13779)

(assert (=> d!123037 (= res!688348 (contains!5985 lt!453237 (_1!7825 (tuple2!15631 lt!453027 (zeroValue!5939 thiss!1427)))))))

(declare-fun lt!453239 () List!21921)

(assert (=> d!123037 (= lt!453237 (ListLongMap!13780 lt!453239))))

(declare-fun lt!453236 () Unit!33536)

(declare-fun lt!453238 () Unit!33536)

(assert (=> d!123037 (= lt!453236 lt!453238)))

(assert (=> d!123037 (= (getValueByKey!588 lt!453239 (_1!7825 (tuple2!15631 lt!453027 (zeroValue!5939 thiss!1427)))) (Some!638 (_2!7825 (tuple2!15631 lt!453027 (zeroValue!5939 thiss!1427)))))))

(assert (=> d!123037 (= lt!453238 (lemmaContainsTupThenGetReturnValue!277 lt!453239 (_1!7825 (tuple2!15631 lt!453027 (zeroValue!5939 thiss!1427))) (_2!7825 (tuple2!15631 lt!453027 (zeroValue!5939 thiss!1427)))))))

(assert (=> d!123037 (= lt!453239 (insertStrictlySorted!369 (toList!6905 lt!453012) (_1!7825 (tuple2!15631 lt!453027 (zeroValue!5939 thiss!1427))) (_2!7825 (tuple2!15631 lt!453027 (zeroValue!5939 thiss!1427)))))))

(assert (=> d!123037 (= (+!3059 lt!453012 (tuple2!15631 lt!453027 (zeroValue!5939 thiss!1427))) lt!453237)))

(declare-fun b!1028685 () Bool)

(declare-fun res!688347 () Bool)

(assert (=> b!1028685 (=> (not res!688347) (not e!580732))))

(assert (=> b!1028685 (= res!688347 (= (getValueByKey!588 (toList!6905 lt!453237) (_1!7825 (tuple2!15631 lt!453027 (zeroValue!5939 thiss!1427)))) (Some!638 (_2!7825 (tuple2!15631 lt!453027 (zeroValue!5939 thiss!1427))))))))

(declare-fun b!1028686 () Bool)

(assert (=> b!1028686 (= e!580732 (contains!5987 (toList!6905 lt!453237) (tuple2!15631 lt!453027 (zeroValue!5939 thiss!1427))))))

(assert (= (and d!123037 res!688348) b!1028685))

(assert (= (and b!1028685 res!688347) b!1028686))

(declare-fun m!947845 () Bool)

(assert (=> d!123037 m!947845))

(declare-fun m!947847 () Bool)

(assert (=> d!123037 m!947847))

(declare-fun m!947849 () Bool)

(assert (=> d!123037 m!947849))

(declare-fun m!947851 () Bool)

(assert (=> d!123037 m!947851))

(declare-fun m!947853 () Bool)

(assert (=> b!1028685 m!947853))

(declare-fun m!947855 () Bool)

(assert (=> b!1028686 m!947855))

(assert (=> b!1028391 d!123037))

(declare-fun d!123039 () Bool)

(assert (=> d!123039 (= (apply!936 (+!3059 lt!453015 (tuple2!15631 lt!453024 (minValue!5939 thiss!1427))) lt!453014) (apply!936 lt!453015 lt!453014))))

(declare-fun lt!453240 () Unit!33536)

(assert (=> d!123039 (= lt!453240 (choose!1692 lt!453015 lt!453024 (minValue!5939 thiss!1427) lt!453014))))

(declare-fun e!580733 () Bool)

(assert (=> d!123039 e!580733))

(declare-fun res!688349 () Bool)

(assert (=> d!123039 (=> (not res!688349) (not e!580733))))

(assert (=> d!123039 (= res!688349 (contains!5985 lt!453015 lt!453014))))

(assert (=> d!123039 (= (addApplyDifferent!476 lt!453015 lt!453024 (minValue!5939 thiss!1427) lt!453014) lt!453240)))

(declare-fun b!1028687 () Bool)

(assert (=> b!1028687 (= e!580733 (not (= lt!453014 lt!453024)))))

(assert (= (and d!123039 res!688349) b!1028687))

(declare-fun m!947857 () Bool)

(assert (=> d!123039 m!947857))

(assert (=> d!123039 m!947347))

(declare-fun m!947859 () Bool)

(assert (=> d!123039 m!947859))

(assert (=> d!123039 m!947341))

(assert (=> d!123039 m!947347))

(assert (=> d!123039 m!947349))

(assert (=> b!1028391 d!123039))

(declare-fun d!123041 () Bool)

(assert (=> d!123041 (= (apply!936 (+!3059 lt!453021 (tuple2!15631 lt!453017 (minValue!5939 thiss!1427))) lt!453022) (apply!936 lt!453021 lt!453022))))

(declare-fun lt!453241 () Unit!33536)

(assert (=> d!123041 (= lt!453241 (choose!1692 lt!453021 lt!453017 (minValue!5939 thiss!1427) lt!453022))))

(declare-fun e!580734 () Bool)

(assert (=> d!123041 e!580734))

(declare-fun res!688350 () Bool)

(assert (=> d!123041 (=> (not res!688350) (not e!580734))))

(assert (=> d!123041 (= res!688350 (contains!5985 lt!453021 lt!453022))))

(assert (=> d!123041 (= (addApplyDifferent!476 lt!453021 lt!453017 (minValue!5939 thiss!1427) lt!453022) lt!453241)))

(declare-fun b!1028688 () Bool)

(assert (=> b!1028688 (= e!580734 (not (= lt!453022 lt!453017)))))

(assert (= (and d!123041 res!688350) b!1028688))

(declare-fun m!947861 () Bool)

(assert (=> d!123041 m!947861))

(assert (=> d!123041 m!947363))

(declare-fun m!947863 () Bool)

(assert (=> d!123041 m!947863))

(assert (=> d!123041 m!947359))

(assert (=> d!123041 m!947363))

(assert (=> d!123041 m!947365))

(assert (=> b!1028391 d!123041))

(assert (=> b!1028391 d!123021))

(declare-fun d!123043 () Bool)

(assert (=> d!123043 (= (apply!936 (+!3059 lt!453012 (tuple2!15631 lt!453027 (zeroValue!5939 thiss!1427))) lt!453028) (apply!936 lt!453012 lt!453028))))

(declare-fun lt!453242 () Unit!33536)

(assert (=> d!123043 (= lt!453242 (choose!1692 lt!453012 lt!453027 (zeroValue!5939 thiss!1427) lt!453028))))

(declare-fun e!580735 () Bool)

(assert (=> d!123043 e!580735))

(declare-fun res!688351 () Bool)

(assert (=> d!123043 (=> (not res!688351) (not e!580735))))

(assert (=> d!123043 (= res!688351 (contains!5985 lt!453012 lt!453028))))

(assert (=> d!123043 (= (addApplyDifferent!476 lt!453012 lt!453027 (zeroValue!5939 thiss!1427) lt!453028) lt!453242)))

(declare-fun b!1028689 () Bool)

(assert (=> b!1028689 (= e!580735 (not (= lt!453028 lt!453027)))))

(assert (= (and d!123043 res!688351) b!1028689))

(declare-fun m!947865 () Bool)

(assert (=> d!123043 m!947865))

(assert (=> d!123043 m!947351))

(declare-fun m!947867 () Bool)

(assert (=> d!123043 m!947867))

(assert (=> d!123043 m!947345))

(assert (=> d!123043 m!947351))

(assert (=> d!123043 m!947357))

(assert (=> b!1028391 d!123043))

(declare-fun d!123045 () Bool)

(assert (=> d!123045 (= (apply!936 lt!453012 lt!453028) (get!16359 (getValueByKey!588 (toList!6905 lt!453012) lt!453028)))))

(declare-fun bs!30034 () Bool)

(assert (= bs!30034 d!123045))

(declare-fun m!947869 () Bool)

(assert (=> bs!30034 m!947869))

(assert (=> bs!30034 m!947869))

(declare-fun m!947871 () Bool)

(assert (=> bs!30034 m!947871))

(assert (=> b!1028391 d!123045))

(declare-fun d!123047 () Bool)

(assert (=> d!123047 (= (apply!936 (+!3059 lt!453015 (tuple2!15631 lt!453024 (minValue!5939 thiss!1427))) lt!453014) (get!16359 (getValueByKey!588 (toList!6905 (+!3059 lt!453015 (tuple2!15631 lt!453024 (minValue!5939 thiss!1427)))) lt!453014)))))

(declare-fun bs!30035 () Bool)

(assert (= bs!30035 d!123047))

(declare-fun m!947873 () Bool)

(assert (=> bs!30035 m!947873))

(assert (=> bs!30035 m!947873))

(declare-fun m!947875 () Bool)

(assert (=> bs!30035 m!947875))

(assert (=> b!1028391 d!123047))

(declare-fun d!123049 () Bool)

(assert (=> d!123049 (= (apply!936 lt!453021 lt!453022) (get!16359 (getValueByKey!588 (toList!6905 lt!453021) lt!453022)))))

(declare-fun bs!30036 () Bool)

(assert (= bs!30036 d!123049))

(declare-fun m!947877 () Bool)

(assert (=> bs!30036 m!947877))

(assert (=> bs!30036 m!947877))

(declare-fun m!947879 () Bool)

(assert (=> bs!30036 m!947879))

(assert (=> b!1028391 d!123049))

(declare-fun d!123051 () Bool)

(declare-fun e!580736 () Bool)

(assert (=> d!123051 e!580736))

(declare-fun res!688352 () Bool)

(assert (=> d!123051 (=> res!688352 e!580736)))

(declare-fun lt!453244 () Bool)

(assert (=> d!123051 (= res!688352 (not lt!453244))))

(declare-fun lt!453245 () Bool)

(assert (=> d!123051 (= lt!453244 lt!453245)))

(declare-fun lt!453246 () Unit!33536)

(declare-fun e!580737 () Unit!33536)

(assert (=> d!123051 (= lt!453246 e!580737)))

(declare-fun c!103793 () Bool)

(assert (=> d!123051 (= c!103793 lt!453245)))

(assert (=> d!123051 (= lt!453245 (containsKey!561 (toList!6905 (+!3059 lt!453009 (tuple2!15631 lt!453019 (zeroValue!5939 thiss!1427)))) lt!453018))))

(assert (=> d!123051 (= (contains!5985 (+!3059 lt!453009 (tuple2!15631 lt!453019 (zeroValue!5939 thiss!1427))) lt!453018) lt!453244)))

(declare-fun b!1028690 () Bool)

(declare-fun lt!453243 () Unit!33536)

(assert (=> b!1028690 (= e!580737 lt!453243)))

(assert (=> b!1028690 (= lt!453243 (lemmaContainsKeyImpliesGetValueByKeyDefined!393 (toList!6905 (+!3059 lt!453009 (tuple2!15631 lt!453019 (zeroValue!5939 thiss!1427)))) lt!453018))))

(assert (=> b!1028690 (isDefined!433 (getValueByKey!588 (toList!6905 (+!3059 lt!453009 (tuple2!15631 lt!453019 (zeroValue!5939 thiss!1427)))) lt!453018))))

(declare-fun b!1028691 () Bool)

(declare-fun Unit!33550 () Unit!33536)

(assert (=> b!1028691 (= e!580737 Unit!33550)))

(declare-fun b!1028692 () Bool)

(assert (=> b!1028692 (= e!580736 (isDefined!433 (getValueByKey!588 (toList!6905 (+!3059 lt!453009 (tuple2!15631 lt!453019 (zeroValue!5939 thiss!1427)))) lt!453018)))))

(assert (= (and d!123051 c!103793) b!1028690))

(assert (= (and d!123051 (not c!103793)) b!1028691))

(assert (= (and d!123051 (not res!688352)) b!1028692))

(declare-fun m!947881 () Bool)

(assert (=> d!123051 m!947881))

(declare-fun m!947883 () Bool)

(assert (=> b!1028690 m!947883))

(declare-fun m!947885 () Bool)

(assert (=> b!1028690 m!947885))

(assert (=> b!1028690 m!947885))

(declare-fun m!947887 () Bool)

(assert (=> b!1028690 m!947887))

(assert (=> b!1028692 m!947885))

(assert (=> b!1028692 m!947885))

(assert (=> b!1028692 m!947887))

(assert (=> b!1028391 d!123051))

(declare-fun d!123053 () Bool)

(assert (=> d!123053 (contains!5985 (+!3059 lt!453009 (tuple2!15631 lt!453019 (zeroValue!5939 thiss!1427))) lt!453018)))

(declare-fun lt!453247 () Unit!33536)

(assert (=> d!123053 (= lt!453247 (choose!1693 lt!453009 lt!453019 (zeroValue!5939 thiss!1427) lt!453018))))

(assert (=> d!123053 (contains!5985 lt!453009 lt!453018)))

(assert (=> d!123053 (= (addStillContains!624 lt!453009 lt!453019 (zeroValue!5939 thiss!1427) lt!453018) lt!453247)))

(declare-fun bs!30037 () Bool)

(assert (= bs!30037 d!123053))

(assert (=> bs!30037 m!947353))

(assert (=> bs!30037 m!947353))

(assert (=> bs!30037 m!947355))

(declare-fun m!947889 () Bool)

(assert (=> bs!30037 m!947889))

(declare-fun m!947891 () Bool)

(assert (=> bs!30037 m!947891))

(assert (=> b!1028391 d!123053))

(declare-fun d!123055 () Bool)

(assert (=> d!123055 (= (apply!936 (+!3059 lt!453012 (tuple2!15631 lt!453027 (zeroValue!5939 thiss!1427))) lt!453028) (get!16359 (getValueByKey!588 (toList!6905 (+!3059 lt!453012 (tuple2!15631 lt!453027 (zeroValue!5939 thiss!1427)))) lt!453028)))))

(declare-fun bs!30038 () Bool)

(assert (= bs!30038 d!123055))

(declare-fun m!947893 () Bool)

(assert (=> bs!30038 m!947893))

(assert (=> bs!30038 m!947893))

(declare-fun m!947895 () Bool)

(assert (=> bs!30038 m!947895))

(assert (=> b!1028391 d!123055))

(declare-fun d!123057 () Bool)

(assert (=> d!123057 (= (apply!936 (+!3059 lt!453021 (tuple2!15631 lt!453017 (minValue!5939 thiss!1427))) lt!453022) (get!16359 (getValueByKey!588 (toList!6905 (+!3059 lt!453021 (tuple2!15631 lt!453017 (minValue!5939 thiss!1427)))) lt!453022)))))

(declare-fun bs!30039 () Bool)

(assert (= bs!30039 d!123057))

(declare-fun m!947897 () Bool)

(assert (=> bs!30039 m!947897))

(assert (=> bs!30039 m!947897))

(declare-fun m!947899 () Bool)

(assert (=> bs!30039 m!947899))

(assert (=> b!1028391 d!123057))

(declare-fun d!123059 () Bool)

(declare-fun e!580738 () Bool)

(assert (=> d!123059 e!580738))

(declare-fun res!688354 () Bool)

(assert (=> d!123059 (=> (not res!688354) (not e!580738))))

(declare-fun lt!453249 () ListLongMap!13779)

(assert (=> d!123059 (= res!688354 (contains!5985 lt!453249 (_1!7825 (tuple2!15631 lt!453017 (minValue!5939 thiss!1427)))))))

(declare-fun lt!453251 () List!21921)

(assert (=> d!123059 (= lt!453249 (ListLongMap!13780 lt!453251))))

(declare-fun lt!453248 () Unit!33536)

(declare-fun lt!453250 () Unit!33536)

(assert (=> d!123059 (= lt!453248 lt!453250)))

(assert (=> d!123059 (= (getValueByKey!588 lt!453251 (_1!7825 (tuple2!15631 lt!453017 (minValue!5939 thiss!1427)))) (Some!638 (_2!7825 (tuple2!15631 lt!453017 (minValue!5939 thiss!1427)))))))

(assert (=> d!123059 (= lt!453250 (lemmaContainsTupThenGetReturnValue!277 lt!453251 (_1!7825 (tuple2!15631 lt!453017 (minValue!5939 thiss!1427))) (_2!7825 (tuple2!15631 lt!453017 (minValue!5939 thiss!1427)))))))

(assert (=> d!123059 (= lt!453251 (insertStrictlySorted!369 (toList!6905 lt!453021) (_1!7825 (tuple2!15631 lt!453017 (minValue!5939 thiss!1427))) (_2!7825 (tuple2!15631 lt!453017 (minValue!5939 thiss!1427)))))))

(assert (=> d!123059 (= (+!3059 lt!453021 (tuple2!15631 lt!453017 (minValue!5939 thiss!1427))) lt!453249)))

(declare-fun b!1028693 () Bool)

(declare-fun res!688353 () Bool)

(assert (=> b!1028693 (=> (not res!688353) (not e!580738))))

(assert (=> b!1028693 (= res!688353 (= (getValueByKey!588 (toList!6905 lt!453249) (_1!7825 (tuple2!15631 lt!453017 (minValue!5939 thiss!1427)))) (Some!638 (_2!7825 (tuple2!15631 lt!453017 (minValue!5939 thiss!1427))))))))

(declare-fun b!1028694 () Bool)

(assert (=> b!1028694 (= e!580738 (contains!5987 (toList!6905 lt!453249) (tuple2!15631 lt!453017 (minValue!5939 thiss!1427))))))

(assert (= (and d!123059 res!688354) b!1028693))

(assert (= (and b!1028693 res!688353) b!1028694))

(declare-fun m!947901 () Bool)

(assert (=> d!123059 m!947901))

(declare-fun m!947903 () Bool)

(assert (=> d!123059 m!947903))

(declare-fun m!947905 () Bool)

(assert (=> d!123059 m!947905))

(declare-fun m!947907 () Bool)

(assert (=> d!123059 m!947907))

(declare-fun m!947909 () Bool)

(assert (=> b!1028693 m!947909))

(declare-fun m!947911 () Bool)

(assert (=> b!1028694 m!947911))

(assert (=> b!1028391 d!123059))

(declare-fun d!123061 () Bool)

(assert (=> d!123061 (= (apply!936 lt!453015 lt!453014) (get!16359 (getValueByKey!588 (toList!6905 lt!453015) lt!453014)))))

(declare-fun bs!30040 () Bool)

(assert (= bs!30040 d!123061))

(declare-fun m!947913 () Bool)

(assert (=> bs!30040 m!947913))

(assert (=> bs!30040 m!947913))

(declare-fun m!947915 () Bool)

(assert (=> bs!30040 m!947915))

(assert (=> b!1028391 d!123061))

(declare-fun d!123063 () Bool)

(declare-fun e!580739 () Bool)

(assert (=> d!123063 e!580739))

(declare-fun res!688356 () Bool)

(assert (=> d!123063 (=> (not res!688356) (not e!580739))))

(declare-fun lt!453253 () ListLongMap!13779)

(assert (=> d!123063 (= res!688356 (contains!5985 lt!453253 (_1!7825 (tuple2!15631 lt!453024 (minValue!5939 thiss!1427)))))))

(declare-fun lt!453255 () List!21921)

(assert (=> d!123063 (= lt!453253 (ListLongMap!13780 lt!453255))))

(declare-fun lt!453252 () Unit!33536)

(declare-fun lt!453254 () Unit!33536)

(assert (=> d!123063 (= lt!453252 lt!453254)))

(assert (=> d!123063 (= (getValueByKey!588 lt!453255 (_1!7825 (tuple2!15631 lt!453024 (minValue!5939 thiss!1427)))) (Some!638 (_2!7825 (tuple2!15631 lt!453024 (minValue!5939 thiss!1427)))))))

(assert (=> d!123063 (= lt!453254 (lemmaContainsTupThenGetReturnValue!277 lt!453255 (_1!7825 (tuple2!15631 lt!453024 (minValue!5939 thiss!1427))) (_2!7825 (tuple2!15631 lt!453024 (minValue!5939 thiss!1427)))))))

(assert (=> d!123063 (= lt!453255 (insertStrictlySorted!369 (toList!6905 lt!453015) (_1!7825 (tuple2!15631 lt!453024 (minValue!5939 thiss!1427))) (_2!7825 (tuple2!15631 lt!453024 (minValue!5939 thiss!1427)))))))

(assert (=> d!123063 (= (+!3059 lt!453015 (tuple2!15631 lt!453024 (minValue!5939 thiss!1427))) lt!453253)))

(declare-fun b!1028695 () Bool)

(declare-fun res!688355 () Bool)

(assert (=> b!1028695 (=> (not res!688355) (not e!580739))))

(assert (=> b!1028695 (= res!688355 (= (getValueByKey!588 (toList!6905 lt!453253) (_1!7825 (tuple2!15631 lt!453024 (minValue!5939 thiss!1427)))) (Some!638 (_2!7825 (tuple2!15631 lt!453024 (minValue!5939 thiss!1427))))))))

(declare-fun b!1028696 () Bool)

(assert (=> b!1028696 (= e!580739 (contains!5987 (toList!6905 lt!453253) (tuple2!15631 lt!453024 (minValue!5939 thiss!1427))))))

(assert (= (and d!123063 res!688356) b!1028695))

(assert (= (and b!1028695 res!688355) b!1028696))

(declare-fun m!947917 () Bool)

(assert (=> d!123063 m!947917))

(declare-fun m!947919 () Bool)

(assert (=> d!123063 m!947919))

(declare-fun m!947921 () Bool)

(assert (=> d!123063 m!947921))

(declare-fun m!947923 () Bool)

(assert (=> d!123063 m!947923))

(declare-fun m!947925 () Bool)

(assert (=> b!1028695 m!947925))

(declare-fun m!947927 () Bool)

(assert (=> b!1028696 m!947927))

(assert (=> b!1028391 d!123063))

(declare-fun d!123065 () Bool)

(declare-fun e!580740 () Bool)

(assert (=> d!123065 e!580740))

(declare-fun res!688358 () Bool)

(assert (=> d!123065 (=> (not res!688358) (not e!580740))))

(declare-fun lt!453257 () ListLongMap!13779)

(assert (=> d!123065 (= res!688358 (contains!5985 lt!453257 (_1!7825 (tuple2!15631 lt!453019 (zeroValue!5939 thiss!1427)))))))

(declare-fun lt!453259 () List!21921)

(assert (=> d!123065 (= lt!453257 (ListLongMap!13780 lt!453259))))

(declare-fun lt!453256 () Unit!33536)

(declare-fun lt!453258 () Unit!33536)

(assert (=> d!123065 (= lt!453256 lt!453258)))

(assert (=> d!123065 (= (getValueByKey!588 lt!453259 (_1!7825 (tuple2!15631 lt!453019 (zeroValue!5939 thiss!1427)))) (Some!638 (_2!7825 (tuple2!15631 lt!453019 (zeroValue!5939 thiss!1427)))))))

(assert (=> d!123065 (= lt!453258 (lemmaContainsTupThenGetReturnValue!277 lt!453259 (_1!7825 (tuple2!15631 lt!453019 (zeroValue!5939 thiss!1427))) (_2!7825 (tuple2!15631 lt!453019 (zeroValue!5939 thiss!1427)))))))

(assert (=> d!123065 (= lt!453259 (insertStrictlySorted!369 (toList!6905 lt!453009) (_1!7825 (tuple2!15631 lt!453019 (zeroValue!5939 thiss!1427))) (_2!7825 (tuple2!15631 lt!453019 (zeroValue!5939 thiss!1427)))))))

(assert (=> d!123065 (= (+!3059 lt!453009 (tuple2!15631 lt!453019 (zeroValue!5939 thiss!1427))) lt!453257)))

(declare-fun b!1028697 () Bool)

(declare-fun res!688357 () Bool)

(assert (=> b!1028697 (=> (not res!688357) (not e!580740))))

(assert (=> b!1028697 (= res!688357 (= (getValueByKey!588 (toList!6905 lt!453257) (_1!7825 (tuple2!15631 lt!453019 (zeroValue!5939 thiss!1427)))) (Some!638 (_2!7825 (tuple2!15631 lt!453019 (zeroValue!5939 thiss!1427))))))))

(declare-fun b!1028698 () Bool)

(assert (=> b!1028698 (= e!580740 (contains!5987 (toList!6905 lt!453257) (tuple2!15631 lt!453019 (zeroValue!5939 thiss!1427))))))

(assert (= (and d!123065 res!688358) b!1028697))

(assert (= (and b!1028697 res!688357) b!1028698))

(declare-fun m!947929 () Bool)

(assert (=> d!123065 m!947929))

(declare-fun m!947931 () Bool)

(assert (=> d!123065 m!947931))

(declare-fun m!947933 () Bool)

(assert (=> d!123065 m!947933))

(declare-fun m!947935 () Bool)

(assert (=> d!123065 m!947935))

(declare-fun m!947937 () Bool)

(assert (=> b!1028697 m!947937))

(declare-fun m!947939 () Bool)

(assert (=> b!1028698 m!947939))

(assert (=> b!1028391 d!123065))

(declare-fun d!123067 () Bool)

(declare-fun res!688359 () Bool)

(declare-fun e!580741 () Bool)

(assert (=> d!123067 (=> res!688359 e!580741)))

(assert (=> d!123067 (= res!688359 (= (select (arr!31125 lt!452921) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!909))))

(assert (=> d!123067 (= (arrayContainsKey!0 lt!452921 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!580741)))

(declare-fun b!1028699 () Bool)

(declare-fun e!580742 () Bool)

(assert (=> b!1028699 (= e!580741 e!580742)))

(declare-fun res!688360 () Bool)

(assert (=> b!1028699 (=> (not res!688360) (not e!580742))))

(assert (=> b!1028699 (= res!688360 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!31640 lt!452921)))))

(declare-fun b!1028700 () Bool)

(assert (=> b!1028700 (= e!580742 (arrayContainsKey!0 lt!452921 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!123067 (not res!688359)) b!1028699))

(assert (= (and b!1028699 res!688360) b!1028700))

(assert (=> d!123067 m!947661))

(declare-fun m!947941 () Bool)

(assert (=> b!1028700 m!947941))

(assert (=> b!1028402 d!123067))

(declare-fun d!123069 () Bool)

(declare-fun e!580743 () Bool)

(assert (=> d!123069 e!580743))

(declare-fun res!688361 () Bool)

(assert (=> d!123069 (=> res!688361 e!580743)))

(declare-fun lt!453261 () Bool)

(assert (=> d!123069 (= res!688361 (not lt!453261))))

(declare-fun lt!453262 () Bool)

(assert (=> d!123069 (= lt!453261 lt!453262)))

(declare-fun lt!453263 () Unit!33536)

(declare-fun e!580744 () Unit!33536)

(assert (=> d!123069 (= lt!453263 e!580744)))

(declare-fun c!103794 () Bool)

(assert (=> d!123069 (= c!103794 lt!453262)))

(assert (=> d!123069 (= lt!453262 (containsKey!561 (toList!6905 lt!453026) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!123069 (= (contains!5985 lt!453026 #b0000000000000000000000000000000000000000000000000000000000000000) lt!453261)))

(declare-fun b!1028701 () Bool)

(declare-fun lt!453260 () Unit!33536)

(assert (=> b!1028701 (= e!580744 lt!453260)))

(assert (=> b!1028701 (= lt!453260 (lemmaContainsKeyImpliesGetValueByKeyDefined!393 (toList!6905 lt!453026) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1028701 (isDefined!433 (getValueByKey!588 (toList!6905 lt!453026) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1028702 () Bool)

(declare-fun Unit!33551 () Unit!33536)

(assert (=> b!1028702 (= e!580744 Unit!33551)))

(declare-fun b!1028703 () Bool)

(assert (=> b!1028703 (= e!580743 (isDefined!433 (getValueByKey!588 (toList!6905 lt!453026) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123069 c!103794) b!1028701))

(assert (= (and d!123069 (not c!103794)) b!1028702))

(assert (= (and d!123069 (not res!688361)) b!1028703))

(declare-fun m!947943 () Bool)

(assert (=> d!123069 m!947943))

(declare-fun m!947945 () Bool)

(assert (=> b!1028701 m!947945))

(assert (=> b!1028701 m!947495))

(assert (=> b!1028701 m!947495))

(declare-fun m!947947 () Bool)

(assert (=> b!1028701 m!947947))

(assert (=> b!1028703 m!947495))

(assert (=> b!1028703 m!947495))

(assert (=> b!1028703 m!947947))

(assert (=> bm!43357 d!123069))

(declare-fun d!123071 () Bool)

(declare-fun e!580756 () Bool)

(assert (=> d!123071 e!580756))

(declare-fun c!103801 () Bool)

(declare-fun lt!453269 () SeekEntryResult!9666)

(assert (=> d!123071 (= c!103801 (and ((_ is Intermediate!9666) lt!453269) (undefined!10478 lt!453269)))))

(declare-fun e!580755 () SeekEntryResult!9666)

(assert (=> d!123071 (= lt!453269 e!580755)))

(declare-fun c!103802 () Bool)

(assert (=> d!123071 (= c!103802 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!453268 () (_ BitVec 64))

(assert (=> d!123071 (= lt!453268 (select (arr!31125 (_keys!11254 thiss!1427)) (toIndex!0 key!909 (mask!29833 thiss!1427))))))

(assert (=> d!123071 (validMask!0 (mask!29833 thiss!1427))))

(assert (=> d!123071 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!29833 thiss!1427)) key!909 (_keys!11254 thiss!1427) (mask!29833 thiss!1427)) lt!453269)))

(declare-fun b!1028722 () Bool)

(assert (=> b!1028722 (and (bvsge (index!41036 lt!453269) #b00000000000000000000000000000000) (bvslt (index!41036 lt!453269) (size!31640 (_keys!11254 thiss!1427))))))

(declare-fun res!688370 () Bool)

(assert (=> b!1028722 (= res!688370 (= (select (arr!31125 (_keys!11254 thiss!1427)) (index!41036 lt!453269)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!580759 () Bool)

(assert (=> b!1028722 (=> res!688370 e!580759)))

(declare-fun b!1028723 () Bool)

(declare-fun e!580757 () SeekEntryResult!9666)

(assert (=> b!1028723 (= e!580757 (Intermediate!9666 false (toIndex!0 key!909 (mask!29833 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun b!1028724 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1028724 (= e!580757 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!909 (mask!29833 thiss!1427)) #b00000000000000000000000000000000 (mask!29833 thiss!1427)) key!909 (_keys!11254 thiss!1427) (mask!29833 thiss!1427)))))

(declare-fun b!1028725 () Bool)

(declare-fun e!580758 () Bool)

(assert (=> b!1028725 (= e!580756 e!580758)))

(declare-fun res!688368 () Bool)

(assert (=> b!1028725 (= res!688368 (and ((_ is Intermediate!9666) lt!453269) (not (undefined!10478 lt!453269)) (bvslt (x!91491 lt!453269) #b01111111111111111111111111111110) (bvsge (x!91491 lt!453269) #b00000000000000000000000000000000) (bvsge (x!91491 lt!453269) #b00000000000000000000000000000000)))))

(assert (=> b!1028725 (=> (not res!688368) (not e!580758))))

(declare-fun b!1028726 () Bool)

(assert (=> b!1028726 (= e!580755 (Intermediate!9666 true (toIndex!0 key!909 (mask!29833 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun b!1028727 () Bool)

(assert (=> b!1028727 (= e!580755 e!580757)))

(declare-fun c!103803 () Bool)

(assert (=> b!1028727 (= c!103803 (or (= lt!453268 key!909) (= (bvadd lt!453268 lt!453268) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1028728 () Bool)

(assert (=> b!1028728 (and (bvsge (index!41036 lt!453269) #b00000000000000000000000000000000) (bvslt (index!41036 lt!453269) (size!31640 (_keys!11254 thiss!1427))))))

(declare-fun res!688369 () Bool)

(assert (=> b!1028728 (= res!688369 (= (select (arr!31125 (_keys!11254 thiss!1427)) (index!41036 lt!453269)) key!909))))

(assert (=> b!1028728 (=> res!688369 e!580759)))

(assert (=> b!1028728 (= e!580758 e!580759)))

(declare-fun b!1028729 () Bool)

(assert (=> b!1028729 (= e!580756 (bvsge (x!91491 lt!453269) #b01111111111111111111111111111110))))

(declare-fun b!1028730 () Bool)

(assert (=> b!1028730 (and (bvsge (index!41036 lt!453269) #b00000000000000000000000000000000) (bvslt (index!41036 lt!453269) (size!31640 (_keys!11254 thiss!1427))))))

(assert (=> b!1028730 (= e!580759 (= (select (arr!31125 (_keys!11254 thiss!1427)) (index!41036 lt!453269)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!123071 c!103802) b!1028726))

(assert (= (and d!123071 (not c!103802)) b!1028727))

(assert (= (and b!1028727 c!103803) b!1028723))

(assert (= (and b!1028727 (not c!103803)) b!1028724))

(assert (= (and d!123071 c!103801) b!1028729))

(assert (= (and d!123071 (not c!103801)) b!1028725))

(assert (= (and b!1028725 res!688368) b!1028728))

(assert (= (and b!1028728 (not res!688369)) b!1028722))

(assert (= (and b!1028722 (not res!688370)) b!1028730))

(declare-fun m!947949 () Bool)

(assert (=> b!1028730 m!947949))

(assert (=> d!123071 m!947481))

(declare-fun m!947951 () Bool)

(assert (=> d!123071 m!947951))

(assert (=> d!123071 m!947333))

(assert (=> b!1028728 m!947949))

(assert (=> b!1028724 m!947481))

(declare-fun m!947953 () Bool)

(assert (=> b!1028724 m!947953))

(assert (=> b!1028724 m!947953))

(declare-fun m!947955 () Bool)

(assert (=> b!1028724 m!947955))

(assert (=> b!1028722 m!947949))

(assert (=> d!122933 d!123071))

(declare-fun d!123073 () Bool)

(declare-fun lt!453275 () (_ BitVec 32))

(declare-fun lt!453274 () (_ BitVec 32))

(assert (=> d!123073 (= lt!453275 (bvmul (bvxor lt!453274 (bvlshr lt!453274 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!123073 (= lt!453274 ((_ extract 31 0) (bvand (bvxor key!909 (bvlshr key!909 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!123073 (and (bvsge (mask!29833 thiss!1427) #b00000000000000000000000000000000) (let ((res!688371 (let ((h!23118 ((_ extract 31 0) (bvand (bvxor key!909 (bvlshr key!909 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!91522 (bvmul (bvxor h!23118 (bvlshr h!23118 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!91522 (bvlshr x!91522 #b00000000000000000000000000001101)) (mask!29833 thiss!1427)))))) (and (bvslt res!688371 (bvadd (mask!29833 thiss!1427) #b00000000000000000000000000000001)) (bvsge res!688371 #b00000000000000000000000000000000))))))

(assert (=> d!123073 (= (toIndex!0 key!909 (mask!29833 thiss!1427)) (bvand (bvxor lt!453275 (bvlshr lt!453275 #b00000000000000000000000000001101)) (mask!29833 thiss!1427)))))

(assert (=> d!122933 d!123073))

(assert (=> d!122933 d!122987))

(declare-fun d!123075 () Bool)

(declare-fun lt!453278 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!513 (List!21922) (InoxSet (_ BitVec 64)))

(assert (=> d!123075 (= lt!453278 (select (content!513 Nil!21919) (select (arr!31125 lt!452921) #b00000000000000000000000000000000)))))

(declare-fun e!580764 () Bool)

(assert (=> d!123075 (= lt!453278 e!580764)))

(declare-fun res!688376 () Bool)

(assert (=> d!123075 (=> (not res!688376) (not e!580764))))

(assert (=> d!123075 (= res!688376 ((_ is Cons!21918) Nil!21919))))

(assert (=> d!123075 (= (contains!5986 Nil!21919 (select (arr!31125 lt!452921) #b00000000000000000000000000000000)) lt!453278)))

(declare-fun b!1028735 () Bool)

(declare-fun e!580765 () Bool)

(assert (=> b!1028735 (= e!580764 e!580765)))

(declare-fun res!688377 () Bool)

(assert (=> b!1028735 (=> res!688377 e!580765)))

(assert (=> b!1028735 (= res!688377 (= (h!23117 Nil!21919) (select (arr!31125 lt!452921) #b00000000000000000000000000000000)))))

(declare-fun b!1028736 () Bool)

(assert (=> b!1028736 (= e!580765 (contains!5986 (t!31007 Nil!21919) (select (arr!31125 lt!452921) #b00000000000000000000000000000000)))))

(assert (= (and d!123075 res!688376) b!1028735))

(assert (= (and b!1028735 (not res!688377)) b!1028736))

(declare-fun m!947957 () Bool)

(assert (=> d!123075 m!947957))

(assert (=> d!123075 m!947325))

(declare-fun m!947959 () Bool)

(assert (=> d!123075 m!947959))

(assert (=> b!1028736 m!947325))

(declare-fun m!947961 () Bool)

(assert (=> b!1028736 m!947961))

(assert (=> b!1028435 d!123075))

(assert (=> b!1028488 d!122919))

(assert (=> b!1028437 d!122937))

(assert (=> b!1028408 d!122937))

(declare-fun d!123077 () Bool)

(assert (=> d!123077 (= (apply!936 lt!453051 #b1000000000000000000000000000000000000000000000000000000000000000) (get!16359 (getValueByKey!588 (toList!6905 lt!453051) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30041 () Bool)

(assert (= bs!30041 d!123077))

(assert (=> bs!30041 m!947687))

(assert (=> bs!30041 m!947687))

(declare-fun m!947963 () Bool)

(assert (=> bs!30041 m!947963))

(assert (=> b!1028423 d!123077))

(declare-fun d!123079 () Bool)

(declare-fun e!580766 () Bool)

(assert (=> d!123079 e!580766))

(declare-fun res!688378 () Bool)

(assert (=> d!123079 (=> res!688378 e!580766)))

(declare-fun lt!453280 () Bool)

(assert (=> d!123079 (= res!688378 (not lt!453280))))

(declare-fun lt!453281 () Bool)

(assert (=> d!123079 (= lt!453280 lt!453281)))

(declare-fun lt!453282 () Unit!33536)

(declare-fun e!580767 () Unit!33536)

(assert (=> d!123079 (= lt!453282 e!580767)))

(declare-fun c!103804 () Bool)

(assert (=> d!123079 (= c!103804 lt!453281)))

(assert (=> d!123079 (= lt!453281 (containsKey!561 (toList!6905 lt!453026) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!123079 (= (contains!5985 lt!453026 #b1000000000000000000000000000000000000000000000000000000000000000) lt!453280)))

(declare-fun b!1028737 () Bool)

(declare-fun lt!453279 () Unit!33536)

(assert (=> b!1028737 (= e!580767 lt!453279)))

(assert (=> b!1028737 (= lt!453279 (lemmaContainsKeyImpliesGetValueByKeyDefined!393 (toList!6905 lt!453026) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1028737 (isDefined!433 (getValueByKey!588 (toList!6905 lt!453026) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1028738 () Bool)

(declare-fun Unit!33552 () Unit!33536)

(assert (=> b!1028738 (= e!580767 Unit!33552)))

(declare-fun b!1028739 () Bool)

(assert (=> b!1028739 (= e!580766 (isDefined!433 (getValueByKey!588 (toList!6905 lt!453026) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123079 c!103804) b!1028737))

(assert (= (and d!123079 (not c!103804)) b!1028738))

(assert (= (and d!123079 (not res!688378)) b!1028739))

(declare-fun m!947965 () Bool)

(assert (=> d!123079 m!947965))

(declare-fun m!947967 () Bool)

(assert (=> b!1028737 m!947967))

(assert (=> b!1028737 m!947741))

(assert (=> b!1028737 m!947741))

(declare-fun m!947969 () Bool)

(assert (=> b!1028737 m!947969))

(assert (=> b!1028739 m!947741))

(assert (=> b!1028739 m!947741))

(assert (=> b!1028739 m!947969))

(assert (=> bm!43354 d!123079))

(declare-fun bm!43393 () Bool)

(declare-fun call!43396 () Bool)

(declare-fun c!103805 () Bool)

(assert (=> bm!43393 (= call!43396 (arrayNoDuplicates!0 (_keys!11254 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!103805 (Cons!21918 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000) Nil!21919) Nil!21919)))))

(declare-fun b!1028740 () Bool)

(declare-fun e!580770 () Bool)

(assert (=> b!1028740 (= e!580770 call!43396)))

(declare-fun d!123081 () Bool)

(declare-fun res!688380 () Bool)

(declare-fun e!580769 () Bool)

(assert (=> d!123081 (=> res!688380 e!580769)))

(assert (=> d!123081 (= res!688380 (bvsge #b00000000000000000000000000000000 (size!31640 (_keys!11254 thiss!1427))))))

(assert (=> d!123081 (= (arrayNoDuplicates!0 (_keys!11254 thiss!1427) #b00000000000000000000000000000000 Nil!21919) e!580769)))

(declare-fun b!1028741 () Bool)

(declare-fun e!580768 () Bool)

(assert (=> b!1028741 (= e!580768 (contains!5986 Nil!21919 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1028742 () Bool)

(assert (=> b!1028742 (= e!580770 call!43396)))

(declare-fun b!1028743 () Bool)

(declare-fun e!580771 () Bool)

(assert (=> b!1028743 (= e!580771 e!580770)))

(assert (=> b!1028743 (= c!103805 (validKeyInArray!0 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1028744 () Bool)

(assert (=> b!1028744 (= e!580769 e!580771)))

(declare-fun res!688381 () Bool)

(assert (=> b!1028744 (=> (not res!688381) (not e!580771))))

(assert (=> b!1028744 (= res!688381 (not e!580768))))

(declare-fun res!688379 () Bool)

(assert (=> b!1028744 (=> (not res!688379) (not e!580768))))

(assert (=> b!1028744 (= res!688379 (validKeyInArray!0 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!123081 (not res!688380)) b!1028744))

(assert (= (and b!1028744 res!688379) b!1028741))

(assert (= (and b!1028744 res!688381) b!1028743))

(assert (= (and b!1028743 c!103805) b!1028740))

(assert (= (and b!1028743 (not c!103805)) b!1028742))

(assert (= (or b!1028740 b!1028742) bm!43393))

(assert (=> bm!43393 m!947369))

(declare-fun m!947971 () Bool)

(assert (=> bm!43393 m!947971))

(assert (=> b!1028741 m!947369))

(assert (=> b!1028741 m!947369))

(declare-fun m!947973 () Bool)

(assert (=> b!1028741 m!947973))

(assert (=> b!1028743 m!947369))

(assert (=> b!1028743 m!947369))

(assert (=> b!1028743 m!947377))

(assert (=> b!1028744 m!947369))

(assert (=> b!1028744 m!947369))

(assert (=> b!1028744 m!947377))

(assert (=> b!1028490 d!123081))

(assert (=> bm!43362 d!122957))

(declare-fun d!123083 () Bool)

(declare-fun e!580772 () Bool)

(assert (=> d!123083 e!580772))

(declare-fun res!688382 () Bool)

(assert (=> d!123083 (=> res!688382 e!580772)))

(declare-fun lt!453284 () Bool)

(assert (=> d!123083 (= res!688382 (not lt!453284))))

(declare-fun lt!453285 () Bool)

(assert (=> d!123083 (= lt!453284 lt!453285)))

(declare-fun lt!453286 () Unit!33536)

(declare-fun e!580773 () Unit!33536)

(assert (=> d!123083 (= lt!453286 e!580773)))

(declare-fun c!103806 () Bool)

(assert (=> d!123083 (= c!103806 lt!453285)))

(assert (=> d!123083 (= lt!453285 (containsKey!561 (toList!6905 lt!453032) key!909))))

(assert (=> d!123083 (= (contains!5985 lt!453032 key!909) lt!453284)))

(declare-fun b!1028745 () Bool)

(declare-fun lt!453283 () Unit!33536)

(assert (=> b!1028745 (= e!580773 lt!453283)))

(assert (=> b!1028745 (= lt!453283 (lemmaContainsKeyImpliesGetValueByKeyDefined!393 (toList!6905 lt!453032) key!909))))

(assert (=> b!1028745 (isDefined!433 (getValueByKey!588 (toList!6905 lt!453032) key!909))))

(declare-fun b!1028746 () Bool)

(declare-fun Unit!33553 () Unit!33536)

(assert (=> b!1028746 (= e!580773 Unit!33553)))

(declare-fun b!1028747 () Bool)

(assert (=> b!1028747 (= e!580772 (isDefined!433 (getValueByKey!588 (toList!6905 lt!453032) key!909)))))

(assert (= (and d!123083 c!103806) b!1028745))

(assert (= (and d!123083 (not c!103806)) b!1028746))

(assert (= (and d!123083 (not res!688382)) b!1028747))

(declare-fun m!947975 () Bool)

(assert (=> d!123083 m!947975))

(declare-fun m!947977 () Bool)

(assert (=> b!1028745 m!947977))

(declare-fun m!947979 () Bool)

(assert (=> b!1028745 m!947979))

(assert (=> b!1028745 m!947979))

(declare-fun m!947981 () Bool)

(assert (=> b!1028745 m!947981))

(assert (=> b!1028747 m!947979))

(assert (=> b!1028747 m!947979))

(assert (=> b!1028747 m!947981))

(assert (=> d!122909 d!123083))

(declare-fun b!1028758 () Bool)

(declare-fun e!580782 () Bool)

(declare-fun lt!453289 () List!21921)

(assert (=> b!1028758 (= e!580782 (not (containsKey!561 lt!453289 key!909)))))

(declare-fun b!1028759 () Bool)

(declare-fun e!580781 () List!21921)

(assert (=> b!1028759 (= e!580781 Nil!21918)))

(declare-fun b!1028760 () Bool)

(declare-fun e!580780 () List!21921)

(assert (=> b!1028760 (= e!580780 (t!31006 (toList!6905 (getCurrentListMap!3912 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)))))))

(declare-fun b!1028761 () Bool)

(declare-fun $colon$colon!602 (List!21921 tuple2!15630) List!21921)

(assert (=> b!1028761 (= e!580781 ($colon$colon!602 (removeStrictlySorted!52 (t!31006 (toList!6905 (getCurrentListMap!3912 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)))) key!909) (h!23116 (toList!6905 (getCurrentListMap!3912 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427))))))))

(declare-fun d!123085 () Bool)

(assert (=> d!123085 e!580782))

(declare-fun res!688385 () Bool)

(assert (=> d!123085 (=> (not res!688385) (not e!580782))))

(declare-fun isStrictlySorted!711 (List!21921) Bool)

(assert (=> d!123085 (= res!688385 (isStrictlySorted!711 lt!453289))))

(assert (=> d!123085 (= lt!453289 e!580780)))

(declare-fun c!103811 () Bool)

(assert (=> d!123085 (= c!103811 (and ((_ is Cons!21917) (toList!6905 (getCurrentListMap!3912 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)))) (= (_1!7825 (h!23116 (toList!6905 (getCurrentListMap!3912 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427))))) key!909)))))

(assert (=> d!123085 (isStrictlySorted!711 (toList!6905 (getCurrentListMap!3912 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427))))))

(assert (=> d!123085 (= (removeStrictlySorted!52 (toList!6905 (getCurrentListMap!3912 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427))) key!909) lt!453289)))

(declare-fun b!1028762 () Bool)

(assert (=> b!1028762 (= e!580780 e!580781)))

(declare-fun c!103812 () Bool)

(assert (=> b!1028762 (= c!103812 (and ((_ is Cons!21917) (toList!6905 (getCurrentListMap!3912 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427)))) (not (= (_1!7825 (h!23116 (toList!6905 (getCurrentListMap!3912 (_keys!11254 thiss!1427) (_values!6126 thiss!1427) (mask!29833 thiss!1427) (extraKeys!5835 thiss!1427) (zeroValue!5939 thiss!1427) (minValue!5939 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6103 thiss!1427))))) key!909))))))

(assert (= (and d!123085 c!103811) b!1028760))

(assert (= (and d!123085 (not c!103811)) b!1028762))

(assert (= (and b!1028762 c!103812) b!1028761))

(assert (= (and b!1028762 (not c!103812)) b!1028759))

(assert (= (and d!123085 res!688385) b!1028758))

(declare-fun m!947983 () Bool)

(assert (=> b!1028758 m!947983))

(declare-fun m!947985 () Bool)

(assert (=> b!1028761 m!947985))

(assert (=> b!1028761 m!947985))

(declare-fun m!947987 () Bool)

(assert (=> b!1028761 m!947987))

(declare-fun m!947989 () Bool)

(assert (=> d!123085 m!947989))

(declare-fun m!947991 () Bool)

(assert (=> d!123085 m!947991))

(assert (=> d!122909 d!123085))

(declare-fun c!103813 () Bool)

(declare-fun call!43397 () Bool)

(declare-fun bm!43394 () Bool)

(assert (=> bm!43394 (= call!43397 (arrayNoDuplicates!0 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!103813 (Cons!21918 (select (arr!31125 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427)))) #b00000000000000000000000000000000) Nil!21919) Nil!21919)))))

(declare-fun b!1028763 () Bool)

(declare-fun e!580785 () Bool)

(assert (=> b!1028763 (= e!580785 call!43397)))

(declare-fun d!123087 () Bool)

(declare-fun res!688387 () Bool)

(declare-fun e!580784 () Bool)

(assert (=> d!123087 (=> res!688387 e!580784)))

(assert (=> d!123087 (= res!688387 (bvsge #b00000000000000000000000000000000 (size!31640 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))))))))

(assert (=> d!123087 (= (arrayNoDuplicates!0 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) #b00000000000000000000000000000000 Nil!21919) e!580784)))

(declare-fun b!1028764 () Bool)

(declare-fun e!580783 () Bool)

(assert (=> b!1028764 (= e!580783 (contains!5986 Nil!21919 (select (arr!31125 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1028765 () Bool)

(assert (=> b!1028765 (= e!580785 call!43397)))

(declare-fun b!1028766 () Bool)

(declare-fun e!580786 () Bool)

(assert (=> b!1028766 (= e!580786 e!580785)))

(assert (=> b!1028766 (= c!103813 (validKeyInArray!0 (select (arr!31125 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1028767 () Bool)

(assert (=> b!1028767 (= e!580784 e!580786)))

(declare-fun res!688388 () Bool)

(assert (=> b!1028767 (=> (not res!688388) (not e!580786))))

(assert (=> b!1028767 (= res!688388 (not e!580783))))

(declare-fun res!688386 () Bool)

(assert (=> b!1028767 (=> (not res!688386) (not e!580783))))

(assert (=> b!1028767 (= res!688386 (validKeyInArray!0 (select (arr!31125 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (= (and d!123087 (not res!688387)) b!1028767))

(assert (= (and b!1028767 res!688386) b!1028764))

(assert (= (and b!1028767 res!688388) b!1028766))

(assert (= (and b!1028766 c!103813) b!1028763))

(assert (= (and b!1028766 (not c!103813)) b!1028765))

(assert (= (or b!1028763 b!1028765) bm!43394))

(assert (=> bm!43394 m!947727))

(declare-fun m!947993 () Bool)

(assert (=> bm!43394 m!947993))

(assert (=> b!1028764 m!947727))

(assert (=> b!1028764 m!947727))

(declare-fun m!947995 () Bool)

(assert (=> b!1028764 m!947995))

(assert (=> b!1028766 m!947727))

(assert (=> b!1028766 m!947727))

(assert (=> b!1028766 m!947737))

(assert (=> b!1028767 m!947727))

(assert (=> b!1028767 m!947727))

(assert (=> b!1028767 m!947737))

(assert (=> b!1028445 d!123087))

(declare-fun d!123089 () Bool)

(assert (=> d!123089 (= (apply!936 lt!453026 (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000)) (get!16359 (getValueByKey!588 (toList!6905 lt!453026) (select (arr!31125 (_keys!11254 thiss!1427)) #b00000000000000000000000000000000))))))

(declare-fun bs!30042 () Bool)

(assert (= bs!30042 d!123089))

(assert (=> bs!30042 m!947369))

(assert (=> bs!30042 m!947619))

(assert (=> bs!30042 m!947619))

(declare-fun m!947997 () Bool)

(assert (=> bs!30042 m!947997))

(assert (=> b!1028380 d!123089))

(declare-fun d!123091 () Bool)

(declare-fun c!103814 () Bool)

(assert (=> d!123091 (= c!103814 ((_ is ValueCellFull!11448) (select (arr!31126 (_values!6126 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!580787 () V!37277)

(assert (=> d!123091 (= (get!16358 (select (arr!31126 (_values!6126 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)) e!580787)))

(declare-fun b!1028768 () Bool)

(assert (=> b!1028768 (= e!580787 (get!16360 (select (arr!31126 (_values!6126 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1028769 () Bool)

(assert (=> b!1028769 (= e!580787 (get!16361 (select (arr!31126 (_values!6126 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1956 (defaultEntry!6103 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123091 c!103814) b!1028768))

(assert (= (and d!123091 (not c!103814)) b!1028769))

(assert (=> b!1028768 m!947387))

(assert (=> b!1028768 m!947253))

(declare-fun m!947999 () Bool)

(assert (=> b!1028768 m!947999))

(assert (=> b!1028769 m!947387))

(assert (=> b!1028769 m!947253))

(declare-fun m!948001 () Bool)

(assert (=> b!1028769 m!948001))

(assert (=> b!1028380 d!123091))

(declare-fun d!123093 () Bool)

(declare-fun lt!453294 () SeekEntryResult!9666)

(assert (=> d!123093 (and (or ((_ is Undefined!9666) lt!453294) (not ((_ is Found!9666) lt!453294)) (and (bvsge (index!41035 lt!453294) #b00000000000000000000000000000000) (bvslt (index!41035 lt!453294) (size!31640 (_keys!11254 thiss!1427))))) (or ((_ is Undefined!9666) lt!453294) ((_ is Found!9666) lt!453294) (not ((_ is MissingVacant!9666) lt!453294)) (not (= (index!41037 lt!453294) (index!41036 lt!453083))) (and (bvsge (index!41037 lt!453294) #b00000000000000000000000000000000) (bvslt (index!41037 lt!453294) (size!31640 (_keys!11254 thiss!1427))))) (or ((_ is Undefined!9666) lt!453294) (ite ((_ is Found!9666) lt!453294) (= (select (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!453294)) key!909) (and ((_ is MissingVacant!9666) lt!453294) (= (index!41037 lt!453294) (index!41036 lt!453083)) (= (select (arr!31125 (_keys!11254 thiss!1427)) (index!41037 lt!453294)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!580794 () SeekEntryResult!9666)

(assert (=> d!123093 (= lt!453294 e!580794)))

(declare-fun c!103823 () Bool)

(assert (=> d!123093 (= c!103823 (bvsge (x!91491 lt!453083) #b01111111111111111111111111111110))))

(declare-fun lt!453295 () (_ BitVec 64))

(assert (=> d!123093 (= lt!453295 (select (arr!31125 (_keys!11254 thiss!1427)) (index!41036 lt!453083)))))

(assert (=> d!123093 (validMask!0 (mask!29833 thiss!1427))))

(assert (=> d!123093 (= (seekKeyOrZeroReturnVacant!0 (x!91491 lt!453083) (index!41036 lt!453083) (index!41036 lt!453083) key!909 (_keys!11254 thiss!1427) (mask!29833 thiss!1427)) lt!453294)))

(declare-fun b!1028782 () Bool)

(declare-fun e!580796 () SeekEntryResult!9666)

(assert (=> b!1028782 (= e!580796 (MissingVacant!9666 (index!41036 lt!453083)))))

(declare-fun b!1028783 () Bool)

(declare-fun c!103821 () Bool)

(assert (=> b!1028783 (= c!103821 (= lt!453295 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!580795 () SeekEntryResult!9666)

(assert (=> b!1028783 (= e!580795 e!580796)))

(declare-fun b!1028784 () Bool)

(assert (=> b!1028784 (= e!580794 e!580795)))

(declare-fun c!103822 () Bool)

(assert (=> b!1028784 (= c!103822 (= lt!453295 key!909))))

(declare-fun b!1028785 () Bool)

(assert (=> b!1028785 (= e!580796 (seekKeyOrZeroReturnVacant!0 (bvadd (x!91491 lt!453083) #b00000000000000000000000000000001) (nextIndex!0 (index!41036 lt!453083) (x!91491 lt!453083) (mask!29833 thiss!1427)) (index!41036 lt!453083) key!909 (_keys!11254 thiss!1427) (mask!29833 thiss!1427)))))

(declare-fun b!1028786 () Bool)

(assert (=> b!1028786 (= e!580794 Undefined!9666)))

(declare-fun b!1028787 () Bool)

(assert (=> b!1028787 (= e!580795 (Found!9666 (index!41036 lt!453083)))))

(assert (= (and d!123093 c!103823) b!1028786))

(assert (= (and d!123093 (not c!103823)) b!1028784))

(assert (= (and b!1028784 c!103822) b!1028787))

(assert (= (and b!1028784 (not c!103822)) b!1028783))

(assert (= (and b!1028783 c!103821) b!1028782))

(assert (= (and b!1028783 (not c!103821)) b!1028785))

(declare-fun m!948003 () Bool)

(assert (=> d!123093 m!948003))

(declare-fun m!948005 () Bool)

(assert (=> d!123093 m!948005))

(assert (=> d!123093 m!947485))

(assert (=> d!123093 m!947333))

(declare-fun m!948007 () Bool)

(assert (=> b!1028785 m!948007))

(assert (=> b!1028785 m!948007))

(declare-fun m!948009 () Bool)

(assert (=> b!1028785 m!948009))

(assert (=> b!1028477 d!123093))

(declare-fun d!123095 () Bool)

(assert (=> d!123095 (= (apply!936 lt!453051 #b0000000000000000000000000000000000000000000000000000000000000000) (get!16359 (getValueByKey!588 (toList!6905 lt!453051) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30043 () Bool)

(assert (= bs!30043 d!123095))

(assert (=> bs!30043 m!947627))

(assert (=> bs!30043 m!947627))

(declare-fun m!948011 () Bool)

(assert (=> bs!30043 m!948011))

(assert (=> b!1028413 d!123095))

(declare-fun d!123097 () Bool)

(assert (=> d!123097 (arrayNoDuplicates!0 (array!64645 (store (arr!31125 (_keys!11254 thiss!1427)) (index!41035 lt!452919) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31640 (_keys!11254 thiss!1427))) #b00000000000000000000000000000000 Nil!21919)))

(assert (=> d!123097 true))

(declare-fun _$66!35 () Unit!33536)

(assert (=> d!123097 (= (choose!53 (_keys!11254 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41035 lt!452919) #b00000000000000000000000000000000 Nil!21919) _$66!35)))

(declare-fun bs!30044 () Bool)

(assert (= bs!30044 d!123097))

(assert (=> bs!30044 m!947231))

(assert (=> bs!30044 m!947459))

(assert (=> d!122921 d!123097))

(declare-fun d!123099 () Bool)

(assert (=> d!123099 (= (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000) false)))

(assert (=> b!1028316 d!123099))

(declare-fun mapIsEmpty!37897 () Bool)

(declare-fun mapRes!37897 () Bool)

(assert (=> mapIsEmpty!37897 mapRes!37897))

(declare-fun mapNonEmpty!37897 () Bool)

(declare-fun tp!72813 () Bool)

(declare-fun e!580798 () Bool)

(assert (=> mapNonEmpty!37897 (= mapRes!37897 (and tp!72813 e!580798))))

(declare-fun mapKey!37897 () (_ BitVec 32))

(declare-fun mapRest!37897 () (Array (_ BitVec 32) ValueCell!11448))

(declare-fun mapValue!37897 () ValueCell!11448)

(assert (=> mapNonEmpty!37897 (= mapRest!37896 (store mapRest!37897 mapKey!37897 mapValue!37897))))

(declare-fun b!1028788 () Bool)

(assert (=> b!1028788 (= e!580798 tp_is_empty!24303)))

(declare-fun b!1028789 () Bool)

(declare-fun e!580797 () Bool)

(assert (=> b!1028789 (= e!580797 tp_is_empty!24303)))

(declare-fun condMapEmpty!37897 () Bool)

(declare-fun mapDefault!37897 () ValueCell!11448)

(assert (=> mapNonEmpty!37896 (= condMapEmpty!37897 (= mapRest!37896 ((as const (Array (_ BitVec 32) ValueCell!11448)) mapDefault!37897)))))

(assert (=> mapNonEmpty!37896 (= tp!72812 (and e!580797 mapRes!37897))))

(assert (= (and mapNonEmpty!37896 condMapEmpty!37897) mapIsEmpty!37897))

(assert (= (and mapNonEmpty!37896 (not condMapEmpty!37897)) mapNonEmpty!37897))

(assert (= (and mapNonEmpty!37897 ((_ is ValueCellFull!11448) mapValue!37897)) b!1028788))

(assert (= (and mapNonEmpty!37896 ((_ is ValueCellFull!11448) mapDefault!37897)) b!1028789))

(declare-fun m!948013 () Bool)

(assert (=> mapNonEmpty!37897 m!948013))

(declare-fun b_lambda!15845 () Bool)

(assert (= b_lambda!15843 (or (and b!1028277 b_free!20583) b_lambda!15845)))

(declare-fun b_lambda!15847 () Bool)

(assert (= b_lambda!15835 (or (and b!1028277 b_free!20583) b_lambda!15847)))

(declare-fun b_lambda!15849 () Bool)

(assert (= b_lambda!15839 (or (and b!1028277 b_free!20583) b_lambda!15849)))

(declare-fun b_lambda!15851 () Bool)

(assert (= b_lambda!15837 (or (and b!1028277 b_free!20583) b_lambda!15851)))

(declare-fun b_lambda!15853 () Bool)

(assert (= b_lambda!15833 (or (and b!1028277 b_free!20583) b_lambda!15853)))

(declare-fun b_lambda!15855 () Bool)

(assert (= b_lambda!15841 (or (and b!1028277 b_free!20583) b_lambda!15855)))

(check-sat (not b!1028635) (not b!1028638) (not b!1028601) (not b!1028541) (not d!123013) (not b!1028766) (not d!122961) (not b_lambda!15853) (not d!123045) (not b!1028512) (not bm!43389) (not b!1028569) (not b!1028511) (not bm!43383) (not b_lambda!15849) (not b!1028697) (not b!1028622) (not d!123017) (not d!122963) (not d!122971) (not b!1028624) (not bm!43391) (not b!1028621) (not b!1028745) (not b_lambda!15851) (not b_lambda!15829) (not d!123057) (not d!123049) (not d!123039) (not d!122997) (not d!122967) (not b!1028568) (not b!1028662) (not b!1028703) (not b!1028503) (not b!1028758) (not b!1028768) (not bm!43392) (not d!122999) (not d!123031) (not b!1028542) (not b!1028630) (not mapNonEmpty!37897) (not bm!43393) (not bm!43384) (not b!1028701) (not b!1028562) (not d!123085) (not d!123093) (not b!1028559) (not bm!43382) (not b!1028592) (not bm!43386) (not b!1028698) (not b!1028668) (not b!1028614) (not d!123083) (not b!1028566) (not b!1028626) (not d!122993) (not b!1028659) (not b!1028743) (not b!1028545) (not b!1028651) (not d!122955) (not b!1028661) (not b!1028683) (not b!1028565) (not b!1028660) (not b!1028692) (not b_lambda!15819) (not b!1028769) (not b!1028667) (not d!122957) (not b!1028695) (not b_lambda!15847) (not b!1028747) (not d!123069) (not d!123021) (not b!1028767) (not d!123015) (not d!123089) (not b!1028652) (not b!1028679) (not b!1028504) (not b!1028700) (not d!123003) (not b!1028598) (not b!1028561) (not b_lambda!15855) (not b!1028623) (not d!122941) (not b!1028673) (not b!1028563) (not b!1028761) (not b!1028690) (not b!1028587) (not b!1028678) (not bm!43381) (not d!122945) (not b!1028602) (not b_lambda!15827) (not b!1028653) (not d!123019) (not b!1028680) (not b!1028546) (not b!1028654) (not d!123033) (not b!1028737) (not d!123079) (not b!1028615) (not d!123095) (not b!1028557) (not b!1028696) (not bm!43378) (not b!1028649) (not d!123061) (not b!1028666) (not b!1028764) (not b!1028643) (not d!122969) (not b!1028785) (not bm!43379) (not d!122979) (not b!1028600) (not b!1028724) (not d!122949) (not b!1028548) (not b!1028634) (not d!122991) (not b!1028739) (not b!1028744) (not d!123077) (not d!123041) (not d!123059) (not d!122951) (not d!123063) b_and!32909 (not d!122975) (not d!122947) (not b!1028741) (not d!123097) (not d!123055) (not b!1028685) (not d!123065) (not d!123053) (not b!1028736) (not d!122965) (not bm!43377) (not d!123051) (not b_next!20583) (not d!122959) (not b!1028506) (not d!122939) (not b!1028631) (not d!123071) (not d!122983) (not b!1028644) (not bm!43390) (not d!123025) (not bm!43394) (not d!122977) (not b!1028693) (not b!1028604) (not b!1028599) (not b!1028596) (not b!1028505) (not b!1028547) tp_is_empty!24303 (not b_lambda!15845) (not b!1028669) (not d!122973) (not b!1028663) (not d!123029) (not bm!43380) (not b_lambda!15831) (not d!123043) (not b!1028540) (not d!123075) (not b!1028682) (not b!1028686) (not d!122953) (not b!1028539) (not d!123047) (not d!123037) (not b!1028694) (not b!1028572) (not d!122943) (not b!1028676) (not b!1028570))
(check-sat b_and!32909 (not b_next!20583))
