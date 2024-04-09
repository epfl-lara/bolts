; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90066 () Bool)

(assert start!90066)

(declare-fun b!1030940 () Bool)

(declare-fun b_free!20637 () Bool)

(declare-fun b_next!20637 () Bool)

(assert (=> b!1030940 (= b_free!20637 (not b_next!20637))))

(declare-fun tp!72982 () Bool)

(declare-fun b_and!33059 () Bool)

(assert (=> b!1030940 (= tp!72982 b_and!33059)))

(declare-fun b!1030938 () Bool)

(declare-fun e!582265 () Bool)

(assert (=> b!1030938 (= e!582265 true)))

(declare-fun lt!454965 () Bool)

(declare-datatypes ((V!37349 0))(
  ( (V!37350 (val!12229 Int)) )
))
(declare-datatypes ((ValueCell!11475 0))(
  ( (ValueCellFull!11475 (v!14807 V!37349)) (EmptyCell!11475) )
))
(declare-datatypes ((Unit!33670 0))(
  ( (Unit!33671) )
))
(declare-datatypes ((array!64762 0))(
  ( (array!64763 (arr!31179 (Array (_ BitVec 32) (_ BitVec 64))) (size!31697 (_ BitVec 32))) )
))
(declare-datatypes ((array!64764 0))(
  ( (array!64765 (arr!31180 (Array (_ BitVec 32) ValueCell!11475)) (size!31698 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5544 0))(
  ( (LongMapFixedSize!5545 (defaultEntry!6146 Int) (mask!29929 (_ BitVec 32)) (extraKeys!5878 (_ BitVec 32)) (zeroValue!5982 V!37349) (minValue!5982 V!37349) (_size!2827 (_ BitVec 32)) (_keys!11316 array!64762) (_values!6169 array!64764) (_vacant!2827 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15722 0))(
  ( (tuple2!15723 (_1!7871 Unit!33670) (_2!7871 LongMapFixedSize!5544)) )
))
(declare-fun lt!454962 () tuple2!15722)

(declare-datatypes ((List!21963 0))(
  ( (Nil!21960) (Cons!21959 (h!23161 (_ BitVec 64)) (t!31102 List!21963)) )
))
(declare-fun arrayNoDuplicates!0 (array!64762 (_ BitVec 32) List!21963) Bool)

(assert (=> b!1030938 (= lt!454965 (arrayNoDuplicates!0 (_keys!11316 (_2!7871 lt!454962)) #b00000000000000000000000000000000 Nil!21960))))

(declare-fun b!1030939 () Bool)

(declare-fun e!582269 () Bool)

(declare-fun e!582270 () Bool)

(assert (=> b!1030939 (= e!582269 e!582270)))

(declare-fun res!689437 () Bool)

(assert (=> b!1030939 (=> (not res!689437) (not e!582270))))

(declare-datatypes ((SeekEntryResult!9688 0))(
  ( (MissingZero!9688 (index!41122 (_ BitVec 32))) (Found!9688 (index!41123 (_ BitVec 32))) (Intermediate!9688 (undefined!10500 Bool) (index!41124 (_ BitVec 32)) (x!91765 (_ BitVec 32))) (Undefined!9688) (MissingVacant!9688 (index!41125 (_ BitVec 32))) )
))
(declare-fun lt!454959 () SeekEntryResult!9688)

(get-info :version)

(assert (=> b!1030939 (= res!689437 ((_ is Found!9688) lt!454959))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun thiss!1427 () LongMapFixedSize!5544)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64762 (_ BitVec 32)) SeekEntryResult!9688)

(assert (=> b!1030939 (= lt!454959 (seekEntry!0 key!909 (_keys!11316 thiss!1427) (mask!29929 thiss!1427)))))

(declare-fun e!582268 () Bool)

(declare-fun e!582266 () Bool)

(declare-fun tp_is_empty!24357 () Bool)

(declare-fun array_inv!23979 (array!64762) Bool)

(declare-fun array_inv!23980 (array!64764) Bool)

(assert (=> b!1030940 (= e!582268 (and tp!72982 tp_is_empty!24357 (array_inv!23979 (_keys!11316 thiss!1427)) (array_inv!23980 (_values!6169 thiss!1427)) e!582266))))

(declare-fun b!1030941 () Bool)

(assert (=> b!1030941 (= e!582270 (not e!582265))))

(declare-fun res!689436 () Bool)

(assert (=> b!1030941 (=> res!689436 e!582265)))

(declare-datatypes ((tuple2!15724 0))(
  ( (tuple2!15725 (_1!7872 (_ BitVec 64)) (_2!7872 V!37349)) )
))
(declare-datatypes ((List!21964 0))(
  ( (Nil!21961) (Cons!21960 (h!23162 tuple2!15724) (t!31103 List!21964)) )
))
(declare-datatypes ((ListLongMap!13821 0))(
  ( (ListLongMap!13822 (toList!6926 List!21964)) )
))
(declare-fun contains!6005 (ListLongMap!13821 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3933 (array!64762 array!64764 (_ BitVec 32) (_ BitVec 32) V!37349 V!37349 (_ BitVec 32) Int) ListLongMap!13821)

(assert (=> b!1030941 (= res!689436 (not (contains!6005 (getCurrentListMap!3933 (_keys!11316 (_2!7871 lt!454962)) (_values!6169 (_2!7871 lt!454962)) (mask!29929 (_2!7871 lt!454962)) (extraKeys!5878 (_2!7871 lt!454962)) (zeroValue!5982 (_2!7871 lt!454962)) (minValue!5982 (_2!7871 lt!454962)) #b00000000000000000000000000000000 (defaultEntry!6146 (_2!7871 lt!454962))) key!909)))))

(declare-fun lt!454961 () array!64764)

(declare-fun lt!454966 () array!64762)

(declare-fun Unit!33672 () Unit!33670)

(declare-fun Unit!33673 () Unit!33670)

(assert (=> b!1030941 (= lt!454962 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2827 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15723 Unit!33672 (LongMapFixedSize!5545 (defaultEntry!6146 thiss!1427) (mask!29929 thiss!1427) (extraKeys!5878 thiss!1427) (zeroValue!5982 thiss!1427) (minValue!5982 thiss!1427) (bvsub (_size!2827 thiss!1427) #b00000000000000000000000000000001) lt!454966 lt!454961 (bvadd #b00000000000000000000000000000001 (_vacant!2827 thiss!1427)))) (tuple2!15723 Unit!33673 (LongMapFixedSize!5545 (defaultEntry!6146 thiss!1427) (mask!29929 thiss!1427) (extraKeys!5878 thiss!1427) (zeroValue!5982 thiss!1427) (minValue!5982 thiss!1427) (bvsub (_size!2827 thiss!1427) #b00000000000000000000000000000001) lt!454966 lt!454961 (_vacant!2827 thiss!1427)))))))

(declare-fun -!502 (ListLongMap!13821 (_ BitVec 64)) ListLongMap!13821)

(assert (=> b!1030941 (= (-!502 (getCurrentListMap!3933 (_keys!11316 thiss!1427) (_values!6169 thiss!1427) (mask!29929 thiss!1427) (extraKeys!5878 thiss!1427) (zeroValue!5982 thiss!1427) (minValue!5982 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6146 thiss!1427)) key!909) (getCurrentListMap!3933 lt!454966 lt!454961 (mask!29929 thiss!1427) (extraKeys!5878 thiss!1427) (zeroValue!5982 thiss!1427) (minValue!5982 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6146 thiss!1427)))))

(declare-fun dynLambda!1977 (Int (_ BitVec 64)) V!37349)

(assert (=> b!1030941 (= lt!454961 (array!64765 (store (arr!31180 (_values!6169 thiss!1427)) (index!41123 lt!454959) (ValueCellFull!11475 (dynLambda!1977 (defaultEntry!6146 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31698 (_values!6169 thiss!1427))))))

(declare-fun lt!454968 () Unit!33670)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!26 (array!64762 array!64764 (_ BitVec 32) (_ BitVec 32) V!37349 V!37349 (_ BitVec 32) (_ BitVec 64) Int) Unit!33670)

(assert (=> b!1030941 (= lt!454968 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!26 (_keys!11316 thiss!1427) (_values!6169 thiss!1427) (mask!29929 thiss!1427) (extraKeys!5878 thiss!1427) (zeroValue!5982 thiss!1427) (minValue!5982 thiss!1427) (index!41123 lt!454959) key!909 (defaultEntry!6146 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64762 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1030941 (not (arrayContainsKey!0 lt!454966 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!454960 () Unit!33670)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64762 (_ BitVec 32) (_ BitVec 64)) Unit!33670)

(assert (=> b!1030941 (= lt!454960 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11316 thiss!1427) (index!41123 lt!454959) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64762 (_ BitVec 32)) Bool)

(assert (=> b!1030941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!454966 (mask!29929 thiss!1427))))

(declare-fun lt!454964 () Unit!33670)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64762 (_ BitVec 32) (_ BitVec 32)) Unit!33670)

(assert (=> b!1030941 (= lt!454964 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11316 thiss!1427) (index!41123 lt!454959) (mask!29929 thiss!1427)))))

(assert (=> b!1030941 (arrayNoDuplicates!0 lt!454966 #b00000000000000000000000000000000 Nil!21960)))

(declare-fun lt!454967 () Unit!33670)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64762 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21963) Unit!33670)

(assert (=> b!1030941 (= lt!454967 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11316 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41123 lt!454959) #b00000000000000000000000000000000 Nil!21960))))

(declare-fun arrayCountValidKeys!0 (array!64762 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1030941 (= (arrayCountValidKeys!0 lt!454966 #b00000000000000000000000000000000 (size!31697 (_keys!11316 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11316 thiss!1427) #b00000000000000000000000000000000 (size!31697 (_keys!11316 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1030941 (= lt!454966 (array!64763 (store (arr!31179 (_keys!11316 thiss!1427)) (index!41123 lt!454959) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31697 (_keys!11316 thiss!1427))))))

(declare-fun lt!454963 () Unit!33670)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64762 (_ BitVec 32) (_ BitVec 64)) Unit!33670)

(assert (=> b!1030941 (= lt!454963 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11316 thiss!1427) (index!41123 lt!454959) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1030942 () Bool)

(declare-fun res!689438 () Bool)

(assert (=> b!1030942 (=> res!689438 e!582265)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1030942 (= res!689438 (not (validMask!0 (mask!29929 (_2!7871 lt!454962)))))))

(declare-fun mapIsEmpty!37989 () Bool)

(declare-fun mapRes!37989 () Bool)

(assert (=> mapIsEmpty!37989 mapRes!37989))

(declare-fun b!1030943 () Bool)

(declare-fun res!689439 () Bool)

(assert (=> b!1030943 (=> res!689439 e!582265)))

(assert (=> b!1030943 (= res!689439 (or (not (= (size!31698 (_values!6169 (_2!7871 lt!454962))) (bvadd #b00000000000000000000000000000001 (mask!29929 (_2!7871 lt!454962))))) (not (= (size!31697 (_keys!11316 (_2!7871 lt!454962))) (size!31698 (_values!6169 (_2!7871 lt!454962))))) (bvslt (mask!29929 (_2!7871 lt!454962)) #b00000000000000000000000000000000) (bvslt (extraKeys!5878 (_2!7871 lt!454962)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5878 (_2!7871 lt!454962)) #b00000000000000000000000000000011)))))

(declare-fun b!1030944 () Bool)

(declare-fun res!689433 () Bool)

(assert (=> b!1030944 (=> res!689433 e!582265)))

(assert (=> b!1030944 (= res!689433 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11316 (_2!7871 lt!454962)) (mask!29929 (_2!7871 lt!454962)))))))

(declare-fun res!689435 () Bool)

(assert (=> start!90066 (=> (not res!689435) (not e!582269))))

(declare-fun valid!2053 (LongMapFixedSize!5544) Bool)

(assert (=> start!90066 (= res!689435 (valid!2053 thiss!1427))))

(assert (=> start!90066 e!582269))

(assert (=> start!90066 e!582268))

(assert (=> start!90066 true))

(declare-fun b!1030945 () Bool)

(declare-fun res!689434 () Bool)

(assert (=> b!1030945 (=> (not res!689434) (not e!582269))))

(assert (=> b!1030945 (= res!689434 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1030946 () Bool)

(declare-fun e!582264 () Bool)

(assert (=> b!1030946 (= e!582264 tp_is_empty!24357)))

(declare-fun mapNonEmpty!37989 () Bool)

(declare-fun tp!72983 () Bool)

(assert (=> mapNonEmpty!37989 (= mapRes!37989 (and tp!72983 e!582264))))

(declare-fun mapKey!37989 () (_ BitVec 32))

(declare-fun mapValue!37989 () ValueCell!11475)

(declare-fun mapRest!37989 () (Array (_ BitVec 32) ValueCell!11475))

(assert (=> mapNonEmpty!37989 (= (arr!31180 (_values!6169 thiss!1427)) (store mapRest!37989 mapKey!37989 mapValue!37989))))

(declare-fun b!1030947 () Bool)

(declare-fun e!582271 () Bool)

(assert (=> b!1030947 (= e!582266 (and e!582271 mapRes!37989))))

(declare-fun condMapEmpty!37989 () Bool)

(declare-fun mapDefault!37989 () ValueCell!11475)

(assert (=> b!1030947 (= condMapEmpty!37989 (= (arr!31180 (_values!6169 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11475)) mapDefault!37989)))))

(declare-fun b!1030948 () Bool)

(assert (=> b!1030948 (= e!582271 tp_is_empty!24357)))

(assert (= (and start!90066 res!689435) b!1030945))

(assert (= (and b!1030945 res!689434) b!1030939))

(assert (= (and b!1030939 res!689437) b!1030941))

(assert (= (and b!1030941 (not res!689436)) b!1030942))

(assert (= (and b!1030942 (not res!689438)) b!1030943))

(assert (= (and b!1030943 (not res!689439)) b!1030944))

(assert (= (and b!1030944 (not res!689433)) b!1030938))

(assert (= (and b!1030947 condMapEmpty!37989) mapIsEmpty!37989))

(assert (= (and b!1030947 (not condMapEmpty!37989)) mapNonEmpty!37989))

(assert (= (and mapNonEmpty!37989 ((_ is ValueCellFull!11475) mapValue!37989)) b!1030946))

(assert (= (and b!1030947 ((_ is ValueCellFull!11475) mapDefault!37989)) b!1030948))

(assert (= b!1030940 b!1030947))

(assert (= start!90066 b!1030940))

(declare-fun b_lambda!16011 () Bool)

(assert (=> (not b_lambda!16011) (not b!1030941)))

(declare-fun t!31101 () Bool)

(declare-fun tb!6963 () Bool)

(assert (=> (and b!1030940 (= (defaultEntry!6146 thiss!1427) (defaultEntry!6146 thiss!1427)) t!31101) tb!6963))

(declare-fun result!14247 () Bool)

(assert (=> tb!6963 (= result!14247 tp_is_empty!24357)))

(assert (=> b!1030941 t!31101))

(declare-fun b_and!33061 () Bool)

(assert (= b_and!33059 (and (=> t!31101 result!14247) b_and!33061)))

(declare-fun m!950977 () Bool)

(assert (=> b!1030938 m!950977))

(declare-fun m!950979 () Bool)

(assert (=> b!1030941 m!950979))

(declare-fun m!950981 () Bool)

(assert (=> b!1030941 m!950981))

(declare-fun m!950983 () Bool)

(assert (=> b!1030941 m!950983))

(declare-fun m!950985 () Bool)

(assert (=> b!1030941 m!950985))

(declare-fun m!950987 () Bool)

(assert (=> b!1030941 m!950987))

(declare-fun m!950989 () Bool)

(assert (=> b!1030941 m!950989))

(declare-fun m!950991 () Bool)

(assert (=> b!1030941 m!950991))

(declare-fun m!950993 () Bool)

(assert (=> b!1030941 m!950993))

(declare-fun m!950995 () Bool)

(assert (=> b!1030941 m!950995))

(declare-fun m!950997 () Bool)

(assert (=> b!1030941 m!950997))

(declare-fun m!950999 () Bool)

(assert (=> b!1030941 m!950999))

(declare-fun m!951001 () Bool)

(assert (=> b!1030941 m!951001))

(declare-fun m!951003 () Bool)

(assert (=> b!1030941 m!951003))

(declare-fun m!951005 () Bool)

(assert (=> b!1030941 m!951005))

(declare-fun m!951007 () Bool)

(assert (=> b!1030941 m!951007))

(declare-fun m!951009 () Bool)

(assert (=> b!1030941 m!951009))

(declare-fun m!951011 () Bool)

(assert (=> b!1030941 m!951011))

(declare-fun m!951013 () Bool)

(assert (=> b!1030941 m!951013))

(assert (=> b!1030941 m!950983))

(assert (=> b!1030941 m!950995))

(declare-fun m!951015 () Bool)

(assert (=> start!90066 m!951015))

(declare-fun m!951017 () Bool)

(assert (=> b!1030942 m!951017))

(declare-fun m!951019 () Bool)

(assert (=> b!1030940 m!951019))

(declare-fun m!951021 () Bool)

(assert (=> b!1030940 m!951021))

(declare-fun m!951023 () Bool)

(assert (=> b!1030939 m!951023))

(declare-fun m!951025 () Bool)

(assert (=> b!1030944 m!951025))

(declare-fun m!951027 () Bool)

(assert (=> mapNonEmpty!37989 m!951027))

(check-sat (not b_lambda!16011) (not start!90066) (not b!1030941) b_and!33061 tp_is_empty!24357 (not b!1030944) (not b_next!20637) (not b!1030939) (not b!1030940) (not mapNonEmpty!37989) (not b!1030942) (not b!1030938))
(check-sat b_and!33061 (not b_next!20637))
