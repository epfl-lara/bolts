; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92028 () Bool)

(assert start!92028)

(declare-fun b!1046138 () Bool)

(declare-fun b_free!21165 () Bool)

(declare-fun b_next!21165 () Bool)

(assert (=> b!1046138 (= b_free!21165 (not b_next!21165))))

(declare-fun tp!74758 () Bool)

(declare-fun b_and!33843 () Bool)

(assert (=> b!1046138 (= tp!74758 b_and!33843)))

(declare-fun mapNonEmpty!38972 () Bool)

(declare-fun mapRes!38972 () Bool)

(declare-fun tp!74757 () Bool)

(declare-fun e!593147 () Bool)

(assert (=> mapNonEmpty!38972 (= mapRes!38972 (and tp!74757 e!593147))))

(declare-datatypes ((V!38053 0))(
  ( (V!38054 (val!12493 Int)) )
))
(declare-datatypes ((ValueCell!11739 0))(
  ( (ValueCellFull!11739 (v!15091 V!38053)) (EmptyCell!11739) )
))
(declare-fun mapValue!38972 () ValueCell!11739)

(declare-datatypes ((array!65932 0))(
  ( (array!65933 (arr!31707 (Array (_ BitVec 32) (_ BitVec 64))) (size!32243 (_ BitVec 32))) )
))
(declare-datatypes ((array!65934 0))(
  ( (array!65935 (arr!31708 (Array (_ BitVec 32) ValueCell!11739)) (size!32244 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6072 0))(
  ( (LongMapFixedSize!6073 (defaultEntry!6434 Int) (mask!30572 (_ BitVec 32)) (extraKeys!6162 (_ BitVec 32)) (zeroValue!6268 V!38053) (minValue!6268 V!38053) (_size!3091 (_ BitVec 32)) (_keys!11705 array!65932) (_values!6457 array!65934) (_vacant!3091 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6072)

(declare-fun mapKey!38972 () (_ BitVec 32))

(declare-fun mapRest!38972 () (Array (_ BitVec 32) ValueCell!11739))

(assert (=> mapNonEmpty!38972 (= (arr!31708 (_values!6457 thiss!1427)) (store mapRest!38972 mapKey!38972 mapValue!38972))))

(declare-fun b!1046134 () Bool)

(declare-fun e!593143 () Bool)

(declare-fun tp_is_empty!24885 () Bool)

(assert (=> b!1046134 (= e!593143 tp_is_empty!24885)))

(declare-fun b!1046135 () Bool)

(declare-fun e!593141 () Bool)

(declare-fun e!593148 () Bool)

(assert (=> b!1046135 (= e!593141 e!593148)))

(declare-fun res!696542 () Bool)

(assert (=> b!1046135 (=> (not res!696542) (not e!593148))))

(declare-datatypes ((SeekEntryResult!9856 0))(
  ( (MissingZero!9856 (index!41794 (_ BitVec 32))) (Found!9856 (index!41795 (_ BitVec 32))) (Intermediate!9856 (undefined!10668 Bool) (index!41796 (_ BitVec 32)) (x!93469 (_ BitVec 32))) (Undefined!9856) (MissingVacant!9856 (index!41797 (_ BitVec 32))) )
))
(declare-fun lt!462104 () SeekEntryResult!9856)

(get-info :version)

(assert (=> b!1046135 (= res!696542 ((_ is Found!9856) lt!462104))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65932 (_ BitVec 32)) SeekEntryResult!9856)

(assert (=> b!1046135 (= lt!462104 (seekEntry!0 key!909 (_keys!11705 thiss!1427) (mask!30572 thiss!1427)))))

(declare-fun b!1046136 () Bool)

(declare-fun res!696541 () Bool)

(assert (=> b!1046136 (=> (not res!696541) (not e!593141))))

(assert (=> b!1046136 (= res!696541 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1046137 () Bool)

(declare-fun e!593144 () Bool)

(declare-datatypes ((Unit!34184 0))(
  ( (Unit!34185) )
))
(declare-datatypes ((tuple2!15926 0))(
  ( (tuple2!15927 (_1!7973 Unit!34184) (_2!7973 LongMapFixedSize!6072)) )
))
(declare-fun lt!462103 () tuple2!15926)

(assert (=> b!1046137 (= e!593144 (ite (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!6162 (_2!7973 lt!462103)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6162 (_2!7973 lt!462103)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!696543 () Bool)

(assert (=> start!92028 (=> (not res!696543) (not e!593141))))

(declare-fun valid!2232 (LongMapFixedSize!6072) Bool)

(assert (=> start!92028 (= res!696543 (valid!2232 thiss!1427))))

(assert (=> start!92028 e!593141))

(declare-fun e!593146 () Bool)

(assert (=> start!92028 e!593146))

(assert (=> start!92028 true))

(declare-fun e!593149 () Bool)

(declare-fun array_inv!24331 (array!65932) Bool)

(declare-fun array_inv!24332 (array!65934) Bool)

(assert (=> b!1046138 (= e!593146 (and tp!74758 tp_is_empty!24885 (array_inv!24331 (_keys!11705 thiss!1427)) (array_inv!24332 (_values!6457 thiss!1427)) e!593149))))

(declare-fun b!1046139 () Bool)

(assert (=> b!1046139 (= e!593149 (and e!593143 mapRes!38972))))

(declare-fun condMapEmpty!38972 () Bool)

(declare-fun mapDefault!38972 () ValueCell!11739)

(assert (=> b!1046139 (= condMapEmpty!38972 (= (arr!31708 (_values!6457 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11739)) mapDefault!38972)))))

(declare-fun b!1046140 () Bool)

(assert (=> b!1046140 (= e!593147 tp_is_empty!24885)))

(declare-fun b!1046141 () Bool)

(declare-fun arrayContainsKey!0 (array!65932 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1046141 (= e!593144 (arrayContainsKey!0 (_keys!11705 (_2!7973 lt!462103)) key!909 #b00000000000000000000000000000000))))

(declare-fun b!1046142 () Bool)

(declare-fun e!593142 () Bool)

(assert (=> b!1046142 (= e!593142 false)))

(assert (=> b!1046142 e!593144))

(declare-fun c!106316 () Bool)

(assert (=> b!1046142 (= c!106316 (and (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!909 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!462108 () Unit!34184)

(declare-fun lemmaKeyInListMapIsInArray!358 (array!65932 array!65934 (_ BitVec 32) (_ BitVec 32) V!38053 V!38053 (_ BitVec 64) Int) Unit!34184)

(assert (=> b!1046142 (= lt!462108 (lemmaKeyInListMapIsInArray!358 (_keys!11705 (_2!7973 lt!462103)) (_values!6457 (_2!7973 lt!462103)) (mask!30572 (_2!7973 lt!462103)) (extraKeys!6162 (_2!7973 lt!462103)) (zeroValue!6268 (_2!7973 lt!462103)) (minValue!6268 (_2!7973 lt!462103)) key!909 (defaultEntry!6434 (_2!7973 lt!462103))))))

(declare-fun mapIsEmpty!38972 () Bool)

(assert (=> mapIsEmpty!38972 mapRes!38972))

(declare-fun b!1046143 () Bool)

(assert (=> b!1046143 (= e!593148 (not e!593142))))

(declare-fun res!696544 () Bool)

(assert (=> b!1046143 (=> res!696544 e!593142)))

(declare-datatypes ((tuple2!15928 0))(
  ( (tuple2!15929 (_1!7974 (_ BitVec 64)) (_2!7974 V!38053)) )
))
(declare-datatypes ((List!22158 0))(
  ( (Nil!22155) (Cons!22154 (h!23362 tuple2!15928) (t!31461 List!22158)) )
))
(declare-datatypes ((ListLongMap!13917 0))(
  ( (ListLongMap!13918 (toList!6974 List!22158)) )
))
(declare-fun contains!6109 (ListLongMap!13917 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3980 (array!65932 array!65934 (_ BitVec 32) (_ BitVec 32) V!38053 V!38053 (_ BitVec 32) Int) ListLongMap!13917)

(assert (=> b!1046143 (= res!696544 (not (contains!6109 (getCurrentListMap!3980 (_keys!11705 (_2!7973 lt!462103)) (_values!6457 (_2!7973 lt!462103)) (mask!30572 (_2!7973 lt!462103)) (extraKeys!6162 (_2!7973 lt!462103)) (zeroValue!6268 (_2!7973 lt!462103)) (minValue!6268 (_2!7973 lt!462103)) #b00000000000000000000000000000000 (defaultEntry!6434 (_2!7973 lt!462103))) key!909)))))

(declare-fun lt!462107 () array!65932)

(declare-fun lt!462102 () array!65934)

(declare-fun Unit!34186 () Unit!34184)

(declare-fun Unit!34187 () Unit!34184)

(assert (=> b!1046143 (= lt!462103 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!3091 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15927 Unit!34186 (LongMapFixedSize!6073 (defaultEntry!6434 thiss!1427) (mask!30572 thiss!1427) (extraKeys!6162 thiss!1427) (zeroValue!6268 thiss!1427) (minValue!6268 thiss!1427) (bvsub (_size!3091 thiss!1427) #b00000000000000000000000000000001) lt!462107 lt!462102 (bvadd #b00000000000000000000000000000001 (_vacant!3091 thiss!1427)))) (tuple2!15927 Unit!34187 (LongMapFixedSize!6073 (defaultEntry!6434 thiss!1427) (mask!30572 thiss!1427) (extraKeys!6162 thiss!1427) (zeroValue!6268 thiss!1427) (minValue!6268 thiss!1427) (bvsub (_size!3091 thiss!1427) #b00000000000000000000000000000001) lt!462107 lt!462102 (_vacant!3091 thiss!1427)))))))

(declare-fun -!550 (ListLongMap!13917 (_ BitVec 64)) ListLongMap!13917)

(assert (=> b!1046143 (= (-!550 (getCurrentListMap!3980 (_keys!11705 thiss!1427) (_values!6457 thiss!1427) (mask!30572 thiss!1427) (extraKeys!6162 thiss!1427) (zeroValue!6268 thiss!1427) (minValue!6268 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6434 thiss!1427)) key!909) (getCurrentListMap!3980 lt!462107 lt!462102 (mask!30572 thiss!1427) (extraKeys!6162 thiss!1427) (zeroValue!6268 thiss!1427) (minValue!6268 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6434 thiss!1427)))))

(declare-fun dynLambda!2024 (Int (_ BitVec 64)) V!38053)

(assert (=> b!1046143 (= lt!462102 (array!65935 (store (arr!31708 (_values!6457 thiss!1427)) (index!41795 lt!462104) (ValueCellFull!11739 (dynLambda!2024 (defaultEntry!6434 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32244 (_values!6457 thiss!1427))))))

(declare-fun lt!462099 () Unit!34184)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!70 (array!65932 array!65934 (_ BitVec 32) (_ BitVec 32) V!38053 V!38053 (_ BitVec 32) (_ BitVec 64) Int) Unit!34184)

(assert (=> b!1046143 (= lt!462099 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!70 (_keys!11705 thiss!1427) (_values!6457 thiss!1427) (mask!30572 thiss!1427) (extraKeys!6162 thiss!1427) (zeroValue!6268 thiss!1427) (minValue!6268 thiss!1427) (index!41795 lt!462104) key!909 (defaultEntry!6434 thiss!1427)))))

(assert (=> b!1046143 (not (arrayContainsKey!0 lt!462107 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!462106 () Unit!34184)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65932 (_ BitVec 32) (_ BitVec 64)) Unit!34184)

(assert (=> b!1046143 (= lt!462106 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11705 thiss!1427) (index!41795 lt!462104) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65932 (_ BitVec 32)) Bool)

(assert (=> b!1046143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!462107 (mask!30572 thiss!1427))))

(declare-fun lt!462100 () Unit!34184)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65932 (_ BitVec 32) (_ BitVec 32)) Unit!34184)

(assert (=> b!1046143 (= lt!462100 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11705 thiss!1427) (index!41795 lt!462104) (mask!30572 thiss!1427)))))

(declare-datatypes ((List!22159 0))(
  ( (Nil!22156) (Cons!22155 (h!23363 (_ BitVec 64)) (t!31462 List!22159)) )
))
(declare-fun arrayNoDuplicates!0 (array!65932 (_ BitVec 32) List!22159) Bool)

(assert (=> b!1046143 (arrayNoDuplicates!0 lt!462107 #b00000000000000000000000000000000 Nil!22156)))

(declare-fun lt!462101 () Unit!34184)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65932 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22159) Unit!34184)

(assert (=> b!1046143 (= lt!462101 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11705 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41795 lt!462104) #b00000000000000000000000000000000 Nil!22156))))

(declare-fun arrayCountValidKeys!0 (array!65932 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1046143 (= (arrayCountValidKeys!0 lt!462107 #b00000000000000000000000000000000 (size!32243 (_keys!11705 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11705 thiss!1427) #b00000000000000000000000000000000 (size!32243 (_keys!11705 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1046143 (= lt!462107 (array!65933 (store (arr!31707 (_keys!11705 thiss!1427)) (index!41795 lt!462104) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32243 (_keys!11705 thiss!1427))))))

(declare-fun lt!462105 () Unit!34184)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65932 (_ BitVec 32) (_ BitVec 64)) Unit!34184)

(assert (=> b!1046143 (= lt!462105 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11705 thiss!1427) (index!41795 lt!462104) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!92028 res!696543) b!1046136))

(assert (= (and b!1046136 res!696541) b!1046135))

(assert (= (and b!1046135 res!696542) b!1046143))

(assert (= (and b!1046143 (not res!696544)) b!1046142))

(assert (= (and b!1046142 c!106316) b!1046141))

(assert (= (and b!1046142 (not c!106316)) b!1046137))

(assert (= (and b!1046139 condMapEmpty!38972) mapIsEmpty!38972))

(assert (= (and b!1046139 (not condMapEmpty!38972)) mapNonEmpty!38972))

(assert (= (and mapNonEmpty!38972 ((_ is ValueCellFull!11739) mapValue!38972)) b!1046140))

(assert (= (and b!1046139 ((_ is ValueCellFull!11739) mapDefault!38972)) b!1046134))

(assert (= b!1046138 b!1046139))

(assert (= start!92028 b!1046138))

(declare-fun b_lambda!16379 () Bool)

(assert (=> (not b_lambda!16379) (not b!1046143)))

(declare-fun t!31460 () Bool)

(declare-fun tb!7125 () Bool)

(assert (=> (and b!1046138 (= (defaultEntry!6434 thiss!1427) (defaultEntry!6434 thiss!1427)) t!31460) tb!7125))

(declare-fun result!14667 () Bool)

(assert (=> tb!7125 (= result!14667 tp_is_empty!24885)))

(assert (=> b!1046143 t!31460))

(declare-fun b_and!33845 () Bool)

(assert (= b_and!33843 (and (=> t!31460 result!14667) b_and!33845)))

(declare-fun m!966247 () Bool)

(assert (=> mapNonEmpty!38972 m!966247))

(declare-fun m!966249 () Bool)

(assert (=> b!1046142 m!966249))

(declare-fun m!966251 () Bool)

(assert (=> start!92028 m!966251))

(declare-fun m!966253 () Bool)

(assert (=> b!1046141 m!966253))

(declare-fun m!966255 () Bool)

(assert (=> b!1046138 m!966255))

(declare-fun m!966257 () Bool)

(assert (=> b!1046138 m!966257))

(declare-fun m!966259 () Bool)

(assert (=> b!1046135 m!966259))

(declare-fun m!966261 () Bool)

(assert (=> b!1046143 m!966261))

(declare-fun m!966263 () Bool)

(assert (=> b!1046143 m!966263))

(declare-fun m!966265 () Bool)

(assert (=> b!1046143 m!966265))

(declare-fun m!966267 () Bool)

(assert (=> b!1046143 m!966267))

(declare-fun m!966269 () Bool)

(assert (=> b!1046143 m!966269))

(declare-fun m!966271 () Bool)

(assert (=> b!1046143 m!966271))

(declare-fun m!966273 () Bool)

(assert (=> b!1046143 m!966273))

(declare-fun m!966275 () Bool)

(assert (=> b!1046143 m!966275))

(declare-fun m!966277 () Bool)

(assert (=> b!1046143 m!966277))

(declare-fun m!966279 () Bool)

(assert (=> b!1046143 m!966279))

(assert (=> b!1046143 m!966275))

(declare-fun m!966281 () Bool)

(assert (=> b!1046143 m!966281))

(declare-fun m!966283 () Bool)

(assert (=> b!1046143 m!966283))

(declare-fun m!966285 () Bool)

(assert (=> b!1046143 m!966285))

(declare-fun m!966287 () Bool)

(assert (=> b!1046143 m!966287))

(declare-fun m!966289 () Bool)

(assert (=> b!1046143 m!966289))

(assert (=> b!1046143 m!966281))

(declare-fun m!966291 () Bool)

(assert (=> b!1046143 m!966291))

(declare-fun m!966293 () Bool)

(assert (=> b!1046143 m!966293))

(declare-fun m!966295 () Bool)

(assert (=> b!1046143 m!966295))

(check-sat (not b!1046143) (not b_lambda!16379) b_and!33845 (not mapNonEmpty!38972) (not b!1046135) (not b!1046141) (not b!1046142) (not b_next!21165) (not b!1046138) (not start!92028) tp_is_empty!24885)
(check-sat b_and!33845 (not b_next!21165))
