; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90060 () Bool)

(assert start!90060)

(declare-fun b!1030835 () Bool)

(declare-fun b_free!20631 () Bool)

(declare-fun b_next!20631 () Bool)

(assert (=> b!1030835 (= b_free!20631 (not b_next!20631))))

(declare-fun tp!72965 () Bool)

(declare-fun b_and!33047 () Bool)

(assert (=> b!1030835 (= tp!72965 b_and!33047)))

(declare-fun b!1030833 () Bool)

(declare-fun e!582199 () Bool)

(assert (=> b!1030833 (= e!582199 true)))

(declare-fun lt!454874 () Bool)

(declare-datatypes ((V!37341 0))(
  ( (V!37342 (val!12226 Int)) )
))
(declare-datatypes ((ValueCell!11472 0))(
  ( (ValueCellFull!11472 (v!14804 V!37341)) (EmptyCell!11472) )
))
(declare-datatypes ((Unit!33658 0))(
  ( (Unit!33659) )
))
(declare-datatypes ((array!64750 0))(
  ( (array!64751 (arr!31173 (Array (_ BitVec 32) (_ BitVec 64))) (size!31691 (_ BitVec 32))) )
))
(declare-datatypes ((array!64752 0))(
  ( (array!64753 (arr!31174 (Array (_ BitVec 32) ValueCell!11472)) (size!31692 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5538 0))(
  ( (LongMapFixedSize!5539 (defaultEntry!6143 Int) (mask!29924 (_ BitVec 32)) (extraKeys!5875 (_ BitVec 32)) (zeroValue!5979 V!37341) (minValue!5979 V!37341) (_size!2824 (_ BitVec 32)) (_keys!11313 array!64750) (_values!6166 array!64752) (_vacant!2824 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15710 0))(
  ( (tuple2!15711 (_1!7865 Unit!33658) (_2!7865 LongMapFixedSize!5538)) )
))
(declare-fun lt!454878 () tuple2!15710)

(declare-datatypes ((List!21957 0))(
  ( (Nil!21954) (Cons!21953 (h!23155 (_ BitVec 64)) (t!31090 List!21957)) )
))
(declare-fun arrayNoDuplicates!0 (array!64750 (_ BitVec 32) List!21957) Bool)

(assert (=> b!1030833 (= lt!454874 (arrayNoDuplicates!0 (_keys!11313 (_2!7865 lt!454878)) #b00000000000000000000000000000000 Nil!21954))))

(declare-fun b!1030834 () Bool)

(declare-fun res!689376 () Bool)

(declare-fun e!582196 () Bool)

(assert (=> b!1030834 (=> (not res!689376) (not e!582196))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1030834 (= res!689376 (not (= key!909 (bvneg key!909))))))

(declare-fun tp_is_empty!24351 () Bool)

(declare-fun thiss!1427 () LongMapFixedSize!5538)

(declare-fun e!582193 () Bool)

(declare-fun e!582195 () Bool)

(declare-fun array_inv!23975 (array!64750) Bool)

(declare-fun array_inv!23976 (array!64752) Bool)

(assert (=> b!1030835 (= e!582193 (and tp!72965 tp_is_empty!24351 (array_inv!23975 (_keys!11313 thiss!1427)) (array_inv!23976 (_values!6166 thiss!1427)) e!582195))))

(declare-fun res!689373 () Bool)

(assert (=> start!90060 (=> (not res!689373) (not e!582196))))

(declare-fun valid!2050 (LongMapFixedSize!5538) Bool)

(assert (=> start!90060 (= res!689373 (valid!2050 thiss!1427))))

(assert (=> start!90060 e!582196))

(assert (=> start!90060 e!582193))

(assert (=> start!90060 true))

(declare-fun b!1030836 () Bool)

(declare-fun e!582194 () Bool)

(assert (=> b!1030836 (= e!582194 tp_is_empty!24351)))

(declare-fun b!1030837 () Bool)

(declare-fun e!582197 () Bool)

(assert (=> b!1030837 (= e!582196 e!582197)))

(declare-fun res!689371 () Bool)

(assert (=> b!1030837 (=> (not res!689371) (not e!582197))))

(declare-datatypes ((SeekEntryResult!9685 0))(
  ( (MissingZero!9685 (index!41110 (_ BitVec 32))) (Found!9685 (index!41111 (_ BitVec 32))) (Intermediate!9685 (undefined!10497 Bool) (index!41112 (_ BitVec 32)) (x!91748 (_ BitVec 32))) (Undefined!9685) (MissingVacant!9685 (index!41113 (_ BitVec 32))) )
))
(declare-fun lt!454875 () SeekEntryResult!9685)

(get-info :version)

(assert (=> b!1030837 (= res!689371 ((_ is Found!9685) lt!454875))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64750 (_ BitVec 32)) SeekEntryResult!9685)

(assert (=> b!1030837 (= lt!454875 (seekEntry!0 key!909 (_keys!11313 thiss!1427) (mask!29924 thiss!1427)))))

(declare-fun b!1030838 () Bool)

(assert (=> b!1030838 (= e!582197 (not e!582199))))

(declare-fun res!689374 () Bool)

(assert (=> b!1030838 (=> res!689374 e!582199)))

(declare-datatypes ((tuple2!15712 0))(
  ( (tuple2!15713 (_1!7866 (_ BitVec 64)) (_2!7866 V!37341)) )
))
(declare-datatypes ((List!21958 0))(
  ( (Nil!21955) (Cons!21954 (h!23156 tuple2!15712) (t!31091 List!21958)) )
))
(declare-datatypes ((ListLongMap!13815 0))(
  ( (ListLongMap!13816 (toList!6923 List!21958)) )
))
(declare-fun contains!6002 (ListLongMap!13815 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3930 (array!64750 array!64752 (_ BitVec 32) (_ BitVec 32) V!37341 V!37341 (_ BitVec 32) Int) ListLongMap!13815)

(assert (=> b!1030838 (= res!689374 (not (contains!6002 (getCurrentListMap!3930 (_keys!11313 (_2!7865 lt!454878)) (_values!6166 (_2!7865 lt!454878)) (mask!29924 (_2!7865 lt!454878)) (extraKeys!5875 (_2!7865 lt!454878)) (zeroValue!5979 (_2!7865 lt!454878)) (minValue!5979 (_2!7865 lt!454878)) #b00000000000000000000000000000000 (defaultEntry!6143 (_2!7865 lt!454878))) key!909)))))

(declare-fun lt!454877 () array!64752)

(declare-fun lt!454872 () array!64750)

(declare-fun Unit!33660 () Unit!33658)

(declare-fun Unit!33661 () Unit!33658)

(assert (=> b!1030838 (= lt!454878 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2824 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15711 Unit!33660 (LongMapFixedSize!5539 (defaultEntry!6143 thiss!1427) (mask!29924 thiss!1427) (extraKeys!5875 thiss!1427) (zeroValue!5979 thiss!1427) (minValue!5979 thiss!1427) (bvsub (_size!2824 thiss!1427) #b00000000000000000000000000000001) lt!454872 lt!454877 (bvadd #b00000000000000000000000000000001 (_vacant!2824 thiss!1427)))) (tuple2!15711 Unit!33661 (LongMapFixedSize!5539 (defaultEntry!6143 thiss!1427) (mask!29924 thiss!1427) (extraKeys!5875 thiss!1427) (zeroValue!5979 thiss!1427) (minValue!5979 thiss!1427) (bvsub (_size!2824 thiss!1427) #b00000000000000000000000000000001) lt!454872 lt!454877 (_vacant!2824 thiss!1427)))))))

(declare-fun -!499 (ListLongMap!13815 (_ BitVec 64)) ListLongMap!13815)

(assert (=> b!1030838 (= (-!499 (getCurrentListMap!3930 (_keys!11313 thiss!1427) (_values!6166 thiss!1427) (mask!29924 thiss!1427) (extraKeys!5875 thiss!1427) (zeroValue!5979 thiss!1427) (minValue!5979 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6143 thiss!1427)) key!909) (getCurrentListMap!3930 lt!454872 lt!454877 (mask!29924 thiss!1427) (extraKeys!5875 thiss!1427) (zeroValue!5979 thiss!1427) (minValue!5979 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6143 thiss!1427)))))

(declare-fun dynLambda!1974 (Int (_ BitVec 64)) V!37341)

(assert (=> b!1030838 (= lt!454877 (array!64753 (store (arr!31174 (_values!6166 thiss!1427)) (index!41111 lt!454875) (ValueCellFull!11472 (dynLambda!1974 (defaultEntry!6143 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31692 (_values!6166 thiss!1427))))))

(declare-fun lt!454871 () Unit!33658)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!23 (array!64750 array!64752 (_ BitVec 32) (_ BitVec 32) V!37341 V!37341 (_ BitVec 32) (_ BitVec 64) Int) Unit!33658)

(assert (=> b!1030838 (= lt!454871 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!23 (_keys!11313 thiss!1427) (_values!6166 thiss!1427) (mask!29924 thiss!1427) (extraKeys!5875 thiss!1427) (zeroValue!5979 thiss!1427) (minValue!5979 thiss!1427) (index!41111 lt!454875) key!909 (defaultEntry!6143 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64750 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1030838 (not (arrayContainsKey!0 lt!454872 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!454876 () Unit!33658)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64750 (_ BitVec 32) (_ BitVec 64)) Unit!33658)

(assert (=> b!1030838 (= lt!454876 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11313 thiss!1427) (index!41111 lt!454875) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64750 (_ BitVec 32)) Bool)

(assert (=> b!1030838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!454872 (mask!29924 thiss!1427))))

(declare-fun lt!454873 () Unit!33658)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64750 (_ BitVec 32) (_ BitVec 32)) Unit!33658)

(assert (=> b!1030838 (= lt!454873 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11313 thiss!1427) (index!41111 lt!454875) (mask!29924 thiss!1427)))))

(assert (=> b!1030838 (arrayNoDuplicates!0 lt!454872 #b00000000000000000000000000000000 Nil!21954)))

(declare-fun lt!454870 () Unit!33658)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64750 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21957) Unit!33658)

(assert (=> b!1030838 (= lt!454870 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11313 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41111 lt!454875) #b00000000000000000000000000000000 Nil!21954))))

(declare-fun arrayCountValidKeys!0 (array!64750 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1030838 (= (arrayCountValidKeys!0 lt!454872 #b00000000000000000000000000000000 (size!31691 (_keys!11313 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11313 thiss!1427) #b00000000000000000000000000000000 (size!31691 (_keys!11313 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1030838 (= lt!454872 (array!64751 (store (arr!31173 (_keys!11313 thiss!1427)) (index!41111 lt!454875) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31691 (_keys!11313 thiss!1427))))))

(declare-fun lt!454869 () Unit!33658)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64750 (_ BitVec 32) (_ BitVec 64)) Unit!33658)

(assert (=> b!1030838 (= lt!454869 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11313 thiss!1427) (index!41111 lt!454875) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!37980 () Bool)

(declare-fun mapRes!37980 () Bool)

(declare-fun tp!72964 () Bool)

(declare-fun e!582192 () Bool)

(assert (=> mapNonEmpty!37980 (= mapRes!37980 (and tp!72964 e!582192))))

(declare-fun mapValue!37980 () ValueCell!11472)

(declare-fun mapKey!37980 () (_ BitVec 32))

(declare-fun mapRest!37980 () (Array (_ BitVec 32) ValueCell!11472))

(assert (=> mapNonEmpty!37980 (= (arr!31174 (_values!6166 thiss!1427)) (store mapRest!37980 mapKey!37980 mapValue!37980))))

(declare-fun b!1030839 () Bool)

(declare-fun res!689372 () Bool)

(assert (=> b!1030839 (=> res!689372 e!582199)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1030839 (= res!689372 (not (validMask!0 (mask!29924 (_2!7865 lt!454878)))))))

(declare-fun b!1030840 () Bool)

(declare-fun res!689375 () Bool)

(assert (=> b!1030840 (=> res!689375 e!582199)))

(assert (=> b!1030840 (= res!689375 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11313 (_2!7865 lt!454878)) (mask!29924 (_2!7865 lt!454878)))))))

(declare-fun b!1030841 () Bool)

(declare-fun res!689370 () Bool)

(assert (=> b!1030841 (=> res!689370 e!582199)))

(assert (=> b!1030841 (= res!689370 (or (not (= (size!31692 (_values!6166 (_2!7865 lt!454878))) (bvadd #b00000000000000000000000000000001 (mask!29924 (_2!7865 lt!454878))))) (not (= (size!31691 (_keys!11313 (_2!7865 lt!454878))) (size!31692 (_values!6166 (_2!7865 lt!454878))))) (bvslt (mask!29924 (_2!7865 lt!454878)) #b00000000000000000000000000000000) (bvslt (extraKeys!5875 (_2!7865 lt!454878)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5875 (_2!7865 lt!454878)) #b00000000000000000000000000000011)))))

(declare-fun b!1030842 () Bool)

(assert (=> b!1030842 (= e!582192 tp_is_empty!24351)))

(declare-fun mapIsEmpty!37980 () Bool)

(assert (=> mapIsEmpty!37980 mapRes!37980))

(declare-fun b!1030843 () Bool)

(assert (=> b!1030843 (= e!582195 (and e!582194 mapRes!37980))))

(declare-fun condMapEmpty!37980 () Bool)

(declare-fun mapDefault!37980 () ValueCell!11472)

(assert (=> b!1030843 (= condMapEmpty!37980 (= (arr!31174 (_values!6166 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11472)) mapDefault!37980)))))

(assert (= (and start!90060 res!689373) b!1030834))

(assert (= (and b!1030834 res!689376) b!1030837))

(assert (= (and b!1030837 res!689371) b!1030838))

(assert (= (and b!1030838 (not res!689374)) b!1030839))

(assert (= (and b!1030839 (not res!689372)) b!1030841))

(assert (= (and b!1030841 (not res!689370)) b!1030840))

(assert (= (and b!1030840 (not res!689375)) b!1030833))

(assert (= (and b!1030843 condMapEmpty!37980) mapIsEmpty!37980))

(assert (= (and b!1030843 (not condMapEmpty!37980)) mapNonEmpty!37980))

(assert (= (and mapNonEmpty!37980 ((_ is ValueCellFull!11472) mapValue!37980)) b!1030842))

(assert (= (and b!1030843 ((_ is ValueCellFull!11472) mapDefault!37980)) b!1030836))

(assert (= b!1030835 b!1030843))

(assert (= start!90060 b!1030835))

(declare-fun b_lambda!16005 () Bool)

(assert (=> (not b_lambda!16005) (not b!1030838)))

(declare-fun t!31089 () Bool)

(declare-fun tb!6957 () Bool)

(assert (=> (and b!1030835 (= (defaultEntry!6143 thiss!1427) (defaultEntry!6143 thiss!1427)) t!31089) tb!6957))

(declare-fun result!14235 () Bool)

(assert (=> tb!6957 (= result!14235 tp_is_empty!24351)))

(assert (=> b!1030838 t!31089))

(declare-fun b_and!33049 () Bool)

(assert (= b_and!33047 (and (=> t!31089 result!14235) b_and!33049)))

(declare-fun m!950821 () Bool)

(assert (=> b!1030839 m!950821))

(declare-fun m!950823 () Bool)

(assert (=> b!1030838 m!950823))

(declare-fun m!950825 () Bool)

(assert (=> b!1030838 m!950825))

(declare-fun m!950827 () Bool)

(assert (=> b!1030838 m!950827))

(declare-fun m!950829 () Bool)

(assert (=> b!1030838 m!950829))

(declare-fun m!950831 () Bool)

(assert (=> b!1030838 m!950831))

(declare-fun m!950833 () Bool)

(assert (=> b!1030838 m!950833))

(declare-fun m!950835 () Bool)

(assert (=> b!1030838 m!950835))

(declare-fun m!950837 () Bool)

(assert (=> b!1030838 m!950837))

(assert (=> b!1030838 m!950827))

(declare-fun m!950839 () Bool)

(assert (=> b!1030838 m!950839))

(declare-fun m!950841 () Bool)

(assert (=> b!1030838 m!950841))

(declare-fun m!950843 () Bool)

(assert (=> b!1030838 m!950843))

(declare-fun m!950845 () Bool)

(assert (=> b!1030838 m!950845))

(declare-fun m!950847 () Bool)

(assert (=> b!1030838 m!950847))

(declare-fun m!950849 () Bool)

(assert (=> b!1030838 m!950849))

(declare-fun m!950851 () Bool)

(assert (=> b!1030838 m!950851))

(declare-fun m!950853 () Bool)

(assert (=> b!1030838 m!950853))

(declare-fun m!950855 () Bool)

(assert (=> b!1030838 m!950855))

(declare-fun m!950857 () Bool)

(assert (=> b!1030838 m!950857))

(assert (=> b!1030838 m!950843))

(declare-fun m!950859 () Bool)

(assert (=> b!1030833 m!950859))

(declare-fun m!950861 () Bool)

(assert (=> b!1030837 m!950861))

(declare-fun m!950863 () Bool)

(assert (=> mapNonEmpty!37980 m!950863))

(declare-fun m!950865 () Bool)

(assert (=> b!1030835 m!950865))

(declare-fun m!950867 () Bool)

(assert (=> b!1030835 m!950867))

(declare-fun m!950869 () Bool)

(assert (=> start!90060 m!950869))

(declare-fun m!950871 () Bool)

(assert (=> b!1030840 m!950871))

(check-sat b_and!33049 (not b_next!20631) (not b_lambda!16005) (not b!1030839) tp_is_empty!24351 (not b!1030838) (not mapNonEmpty!37980) (not b!1030840) (not b!1030835) (not start!90060) (not b!1030833) (not b!1030837))
(check-sat b_and!33049 (not b_next!20631))
