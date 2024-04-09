; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92022 () Bool)

(assert start!92022)

(declare-fun b!1046034 () Bool)

(declare-fun b_free!21159 () Bool)

(declare-fun b_next!21159 () Bool)

(assert (=> b!1046034 (= b_free!21159 (not b_next!21159))))

(declare-fun tp!74739 () Bool)

(declare-fun b_and!33831 () Bool)

(assert (=> b!1046034 (= tp!74739 b_and!33831)))

(declare-fun tp_is_empty!24879 () Bool)

(declare-datatypes ((V!38045 0))(
  ( (V!38046 (val!12490 Int)) )
))
(declare-datatypes ((ValueCell!11736 0))(
  ( (ValueCellFull!11736 (v!15088 V!38045)) (EmptyCell!11736) )
))
(declare-datatypes ((array!65920 0))(
  ( (array!65921 (arr!31701 (Array (_ BitVec 32) (_ BitVec 64))) (size!32237 (_ BitVec 32))) )
))
(declare-datatypes ((array!65922 0))(
  ( (array!65923 (arr!31702 (Array (_ BitVec 32) ValueCell!11736)) (size!32238 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6066 0))(
  ( (LongMapFixedSize!6067 (defaultEntry!6431 Int) (mask!30567 (_ BitVec 32)) (extraKeys!6159 (_ BitVec 32)) (zeroValue!6265 V!38045) (minValue!6265 V!38045) (_size!3088 (_ BitVec 32)) (_keys!11702 array!65920) (_values!6454 array!65922) (_vacant!3088 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6066)

(declare-fun e!593065 () Bool)

(declare-fun e!593071 () Bool)

(declare-fun array_inv!24327 (array!65920) Bool)

(declare-fun array_inv!24328 (array!65922) Bool)

(assert (=> b!1046034 (= e!593065 (and tp!74739 tp_is_empty!24879 (array_inv!24327 (_keys!11702 thiss!1427)) (array_inv!24328 (_values!6454 thiss!1427)) e!593071))))

(declare-fun b!1046035 () Bool)

(declare-fun res!696495 () Bool)

(declare-fun e!593064 () Bool)

(assert (=> b!1046035 (=> res!696495 e!593064)))

(declare-datatypes ((Unit!34176 0))(
  ( (Unit!34177) )
))
(declare-datatypes ((tuple2!15918 0))(
  ( (tuple2!15919 (_1!7969 Unit!34176) (_2!7969 LongMapFixedSize!6066)) )
))
(declare-fun lt!462010 () tuple2!15918)

(assert (=> b!1046035 (= res!696495 (or (not (= (size!32238 (_values!6454 (_2!7969 lt!462010))) (bvadd #b00000000000000000000000000000001 (mask!30567 (_2!7969 lt!462010))))) (not (= (size!32237 (_keys!11702 (_2!7969 lt!462010))) (size!32238 (_values!6454 (_2!7969 lt!462010))))) (bvslt (mask!30567 (_2!7969 lt!462010)) #b00000000000000000000000000000000) (bvslt (extraKeys!6159 (_2!7969 lt!462010)) #b00000000000000000000000000000000) (bvsgt (extraKeys!6159 (_2!7969 lt!462010)) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!38963 () Bool)

(declare-fun mapRes!38963 () Bool)

(assert (=> mapIsEmpty!38963 mapRes!38963))

(declare-fun res!696493 () Bool)

(declare-fun e!593066 () Bool)

(assert (=> start!92022 (=> (not res!696493) (not e!593066))))

(declare-fun valid!2230 (LongMapFixedSize!6066) Bool)

(assert (=> start!92022 (= res!696493 (valid!2230 thiss!1427))))

(assert (=> start!92022 e!593066))

(assert (=> start!92022 e!593065))

(assert (=> start!92022 true))

(declare-fun b!1046036 () Bool)

(declare-fun res!696499 () Bool)

(assert (=> b!1046036 (=> res!696499 e!593064)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1046036 (= res!696499 (not (validMask!0 (mask!30567 (_2!7969 lt!462010)))))))

(declare-fun b!1046037 () Bool)

(assert (=> b!1046037 (= e!593064 true)))

(declare-fun lt!462018 () Bool)

(declare-datatypes ((List!22154 0))(
  ( (Nil!22151) (Cons!22150 (h!23358 (_ BitVec 64)) (t!31451 List!22154)) )
))
(declare-fun arrayNoDuplicates!0 (array!65920 (_ BitVec 32) List!22154) Bool)

(assert (=> b!1046037 (= lt!462018 (arrayNoDuplicates!0 (_keys!11702 (_2!7969 lt!462010)) #b00000000000000000000000000000000 Nil!22151))))

(declare-fun b!1046038 () Bool)

(declare-fun e!593068 () Bool)

(assert (=> b!1046038 (= e!593068 (not e!593064))))

(declare-fun res!696494 () Bool)

(assert (=> b!1046038 (=> res!696494 e!593064)))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15920 0))(
  ( (tuple2!15921 (_1!7970 (_ BitVec 64)) (_2!7970 V!38045)) )
))
(declare-datatypes ((List!22155 0))(
  ( (Nil!22152) (Cons!22151 (h!23359 tuple2!15920) (t!31452 List!22155)) )
))
(declare-datatypes ((ListLongMap!13913 0))(
  ( (ListLongMap!13914 (toList!6972 List!22155)) )
))
(declare-fun contains!6107 (ListLongMap!13913 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3978 (array!65920 array!65922 (_ BitVec 32) (_ BitVec 32) V!38045 V!38045 (_ BitVec 32) Int) ListLongMap!13913)

(assert (=> b!1046038 (= res!696494 (not (contains!6107 (getCurrentListMap!3978 (_keys!11702 (_2!7969 lt!462010)) (_values!6454 (_2!7969 lt!462010)) (mask!30567 (_2!7969 lt!462010)) (extraKeys!6159 (_2!7969 lt!462010)) (zeroValue!6265 (_2!7969 lt!462010)) (minValue!6265 (_2!7969 lt!462010)) #b00000000000000000000000000000000 (defaultEntry!6431 (_2!7969 lt!462010))) key!909)))))

(declare-fun lt!462013 () array!65922)

(declare-fun lt!462014 () array!65920)

(declare-fun Unit!34178 () Unit!34176)

(declare-fun Unit!34179 () Unit!34176)

(assert (=> b!1046038 (= lt!462010 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!3088 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15919 Unit!34178 (LongMapFixedSize!6067 (defaultEntry!6431 thiss!1427) (mask!30567 thiss!1427) (extraKeys!6159 thiss!1427) (zeroValue!6265 thiss!1427) (minValue!6265 thiss!1427) (bvsub (_size!3088 thiss!1427) #b00000000000000000000000000000001) lt!462014 lt!462013 (bvadd #b00000000000000000000000000000001 (_vacant!3088 thiss!1427)))) (tuple2!15919 Unit!34179 (LongMapFixedSize!6067 (defaultEntry!6431 thiss!1427) (mask!30567 thiss!1427) (extraKeys!6159 thiss!1427) (zeroValue!6265 thiss!1427) (minValue!6265 thiss!1427) (bvsub (_size!3088 thiss!1427) #b00000000000000000000000000000001) lt!462014 lt!462013 (_vacant!3088 thiss!1427)))))))

(declare-fun -!548 (ListLongMap!13913 (_ BitVec 64)) ListLongMap!13913)

(assert (=> b!1046038 (= (-!548 (getCurrentListMap!3978 (_keys!11702 thiss!1427) (_values!6454 thiss!1427) (mask!30567 thiss!1427) (extraKeys!6159 thiss!1427) (zeroValue!6265 thiss!1427) (minValue!6265 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6431 thiss!1427)) key!909) (getCurrentListMap!3978 lt!462014 lt!462013 (mask!30567 thiss!1427) (extraKeys!6159 thiss!1427) (zeroValue!6265 thiss!1427) (minValue!6265 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6431 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9853 0))(
  ( (MissingZero!9853 (index!41782 (_ BitVec 32))) (Found!9853 (index!41783 (_ BitVec 32))) (Intermediate!9853 (undefined!10665 Bool) (index!41784 (_ BitVec 32)) (x!93452 (_ BitVec 32))) (Undefined!9853) (MissingVacant!9853 (index!41785 (_ BitVec 32))) )
))
(declare-fun lt!462017 () SeekEntryResult!9853)

(declare-fun dynLambda!2022 (Int (_ BitVec 64)) V!38045)

(assert (=> b!1046038 (= lt!462013 (array!65923 (store (arr!31702 (_values!6454 thiss!1427)) (index!41783 lt!462017) (ValueCellFull!11736 (dynLambda!2022 (defaultEntry!6431 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32238 (_values!6454 thiss!1427))))))

(declare-fun lt!462012 () Unit!34176)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!68 (array!65920 array!65922 (_ BitVec 32) (_ BitVec 32) V!38045 V!38045 (_ BitVec 32) (_ BitVec 64) Int) Unit!34176)

(assert (=> b!1046038 (= lt!462012 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!68 (_keys!11702 thiss!1427) (_values!6454 thiss!1427) (mask!30567 thiss!1427) (extraKeys!6159 thiss!1427) (zeroValue!6265 thiss!1427) (minValue!6265 thiss!1427) (index!41783 lt!462017) key!909 (defaultEntry!6431 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!65920 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1046038 (not (arrayContainsKey!0 lt!462014 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!462015 () Unit!34176)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65920 (_ BitVec 32) (_ BitVec 64)) Unit!34176)

(assert (=> b!1046038 (= lt!462015 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11702 thiss!1427) (index!41783 lt!462017) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65920 (_ BitVec 32)) Bool)

(assert (=> b!1046038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!462014 (mask!30567 thiss!1427))))

(declare-fun lt!462016 () Unit!34176)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65920 (_ BitVec 32) (_ BitVec 32)) Unit!34176)

(assert (=> b!1046038 (= lt!462016 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11702 thiss!1427) (index!41783 lt!462017) (mask!30567 thiss!1427)))))

(assert (=> b!1046038 (arrayNoDuplicates!0 lt!462014 #b00000000000000000000000000000000 Nil!22151)))

(declare-fun lt!462009 () Unit!34176)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65920 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22154) Unit!34176)

(assert (=> b!1046038 (= lt!462009 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11702 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41783 lt!462017) #b00000000000000000000000000000000 Nil!22151))))

(declare-fun arrayCountValidKeys!0 (array!65920 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1046038 (= (arrayCountValidKeys!0 lt!462014 #b00000000000000000000000000000000 (size!32237 (_keys!11702 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11702 thiss!1427) #b00000000000000000000000000000000 (size!32237 (_keys!11702 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1046038 (= lt!462014 (array!65921 (store (arr!31701 (_keys!11702 thiss!1427)) (index!41783 lt!462017) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32237 (_keys!11702 thiss!1427))))))

(declare-fun lt!462011 () Unit!34176)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65920 (_ BitVec 32) (_ BitVec 64)) Unit!34176)

(assert (=> b!1046038 (= lt!462011 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11702 thiss!1427) (index!41783 lt!462017) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1046039 () Bool)

(declare-fun res!696497 () Bool)

(assert (=> b!1046039 (=> res!696497 e!593064)))

(assert (=> b!1046039 (= res!696497 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11702 (_2!7969 lt!462010)) (mask!30567 (_2!7969 lt!462010)))))))

(declare-fun b!1046040 () Bool)

(declare-fun e!593067 () Bool)

(assert (=> b!1046040 (= e!593067 tp_is_empty!24879)))

(declare-fun mapNonEmpty!38963 () Bool)

(declare-fun tp!74740 () Bool)

(assert (=> mapNonEmpty!38963 (= mapRes!38963 (and tp!74740 e!593067))))

(declare-fun mapValue!38963 () ValueCell!11736)

(declare-fun mapKey!38963 () (_ BitVec 32))

(declare-fun mapRest!38963 () (Array (_ BitVec 32) ValueCell!11736))

(assert (=> mapNonEmpty!38963 (= (arr!31702 (_values!6454 thiss!1427)) (store mapRest!38963 mapKey!38963 mapValue!38963))))

(declare-fun b!1046041 () Bool)

(declare-fun e!593069 () Bool)

(assert (=> b!1046041 (= e!593071 (and e!593069 mapRes!38963))))

(declare-fun condMapEmpty!38963 () Bool)

(declare-fun mapDefault!38963 () ValueCell!11736)

(assert (=> b!1046041 (= condMapEmpty!38963 (= (arr!31702 (_values!6454 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11736)) mapDefault!38963)))))

(declare-fun b!1046042 () Bool)

(assert (=> b!1046042 (= e!593066 e!593068)))

(declare-fun res!696498 () Bool)

(assert (=> b!1046042 (=> (not res!696498) (not e!593068))))

(get-info :version)

(assert (=> b!1046042 (= res!696498 ((_ is Found!9853) lt!462017))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65920 (_ BitVec 32)) SeekEntryResult!9853)

(assert (=> b!1046042 (= lt!462017 (seekEntry!0 key!909 (_keys!11702 thiss!1427) (mask!30567 thiss!1427)))))

(declare-fun b!1046043 () Bool)

(assert (=> b!1046043 (= e!593069 tp_is_empty!24879)))

(declare-fun b!1046044 () Bool)

(declare-fun res!696496 () Bool)

(assert (=> b!1046044 (=> (not res!696496) (not e!593066))))

(assert (=> b!1046044 (= res!696496 (not (= key!909 (bvneg key!909))))))

(assert (= (and start!92022 res!696493) b!1046044))

(assert (= (and b!1046044 res!696496) b!1046042))

(assert (= (and b!1046042 res!696498) b!1046038))

(assert (= (and b!1046038 (not res!696494)) b!1046036))

(assert (= (and b!1046036 (not res!696499)) b!1046035))

(assert (= (and b!1046035 (not res!696495)) b!1046039))

(assert (= (and b!1046039 (not res!696497)) b!1046037))

(assert (= (and b!1046041 condMapEmpty!38963) mapIsEmpty!38963))

(assert (= (and b!1046041 (not condMapEmpty!38963)) mapNonEmpty!38963))

(assert (= (and mapNonEmpty!38963 ((_ is ValueCellFull!11736) mapValue!38963)) b!1046040))

(assert (= (and b!1046041 ((_ is ValueCellFull!11736) mapDefault!38963)) b!1046043))

(assert (= b!1046034 b!1046041))

(assert (= start!92022 b!1046034))

(declare-fun b_lambda!16373 () Bool)

(assert (=> (not b_lambda!16373) (not b!1046038)))

(declare-fun t!31450 () Bool)

(declare-fun tb!7119 () Bool)

(assert (=> (and b!1046034 (= (defaultEntry!6431 thiss!1427) (defaultEntry!6431 thiss!1427)) t!31450) tb!7119))

(declare-fun result!14655 () Bool)

(assert (=> tb!7119 (= result!14655 tp_is_empty!24879)))

(assert (=> b!1046038 t!31450))

(declare-fun b_and!33833 () Bool)

(assert (= b_and!33831 (and (=> t!31450 result!14655) b_and!33833)))

(declare-fun m!966093 () Bool)

(assert (=> b!1046034 m!966093))

(declare-fun m!966095 () Bool)

(assert (=> b!1046034 m!966095))

(declare-fun m!966097 () Bool)

(assert (=> b!1046039 m!966097))

(declare-fun m!966099 () Bool)

(assert (=> b!1046038 m!966099))

(declare-fun m!966101 () Bool)

(assert (=> b!1046038 m!966101))

(declare-fun m!966103 () Bool)

(assert (=> b!1046038 m!966103))

(declare-fun m!966105 () Bool)

(assert (=> b!1046038 m!966105))

(declare-fun m!966107 () Bool)

(assert (=> b!1046038 m!966107))

(assert (=> b!1046038 m!966105))

(declare-fun m!966109 () Bool)

(assert (=> b!1046038 m!966109))

(declare-fun m!966111 () Bool)

(assert (=> b!1046038 m!966111))

(declare-fun m!966113 () Bool)

(assert (=> b!1046038 m!966113))

(declare-fun m!966115 () Bool)

(assert (=> b!1046038 m!966115))

(declare-fun m!966117 () Bool)

(assert (=> b!1046038 m!966117))

(declare-fun m!966119 () Bool)

(assert (=> b!1046038 m!966119))

(declare-fun m!966121 () Bool)

(assert (=> b!1046038 m!966121))

(declare-fun m!966123 () Bool)

(assert (=> b!1046038 m!966123))

(declare-fun m!966125 () Bool)

(assert (=> b!1046038 m!966125))

(declare-fun m!966127 () Bool)

(assert (=> b!1046038 m!966127))

(declare-fun m!966129 () Bool)

(assert (=> b!1046038 m!966129))

(declare-fun m!966131 () Bool)

(assert (=> b!1046038 m!966131))

(assert (=> b!1046038 m!966129))

(declare-fun m!966133 () Bool)

(assert (=> b!1046038 m!966133))

(declare-fun m!966135 () Bool)

(assert (=> b!1046037 m!966135))

(declare-fun m!966137 () Bool)

(assert (=> b!1046042 m!966137))

(declare-fun m!966139 () Bool)

(assert (=> b!1046036 m!966139))

(declare-fun m!966141 () Bool)

(assert (=> mapNonEmpty!38963 m!966141))

(declare-fun m!966143 () Bool)

(assert (=> start!92022 m!966143))

(check-sat (not b!1046036) tp_is_empty!24879 (not b!1046037) (not start!92022) (not b!1046039) (not mapNonEmpty!38963) (not b!1046042) (not b_next!21159) (not b_lambda!16373) (not b!1046038) (not b!1046034) b_and!33833)
(check-sat b_and!33833 (not b_next!21159))
