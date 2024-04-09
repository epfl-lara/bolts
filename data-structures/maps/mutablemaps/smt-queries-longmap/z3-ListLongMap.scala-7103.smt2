; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90102 () Bool)

(assert start!90102)

(declare-fun b!1031572 () Bool)

(declare-fun b_free!20673 () Bool)

(declare-fun b_next!20673 () Bool)

(assert (=> b!1031572 (= b_free!20673 (not b_next!20673))))

(declare-fun tp!73091 () Bool)

(declare-fun b_and!33131 () Bool)

(assert (=> b!1031572 (= tp!73091 b_and!33131)))

(declare-fun b!1031568 () Bool)

(declare-fun e!582697 () Bool)

(declare-fun e!582699 () Bool)

(assert (=> b!1031568 (= e!582697 e!582699)))

(declare-fun res!689815 () Bool)

(assert (=> b!1031568 (=> (not res!689815) (not e!582699))))

(declare-datatypes ((SeekEntryResult!9704 0))(
  ( (MissingZero!9704 (index!41186 (_ BitVec 32))) (Found!9704 (index!41187 (_ BitVec 32))) (Intermediate!9704 (undefined!10516 Bool) (index!41188 (_ BitVec 32)) (x!91865 (_ BitVec 32))) (Undefined!9704) (MissingVacant!9704 (index!41189 (_ BitVec 32))) )
))
(declare-fun lt!455504 () SeekEntryResult!9704)

(get-info :version)

(assert (=> b!1031568 (= res!689815 ((_ is Found!9704) lt!455504))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37397 0))(
  ( (V!37398 (val!12247 Int)) )
))
(declare-datatypes ((ValueCell!11493 0))(
  ( (ValueCellFull!11493 (v!14825 V!37397)) (EmptyCell!11493) )
))
(declare-datatypes ((array!64834 0))(
  ( (array!64835 (arr!31215 (Array (_ BitVec 32) (_ BitVec 64))) (size!31733 (_ BitVec 32))) )
))
(declare-datatypes ((array!64836 0))(
  ( (array!64837 (arr!31216 (Array (_ BitVec 32) ValueCell!11493)) (size!31734 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5580 0))(
  ( (LongMapFixedSize!5581 (defaultEntry!6164 Int) (mask!29959 (_ BitVec 32)) (extraKeys!5896 (_ BitVec 32)) (zeroValue!6000 V!37397) (minValue!6000 V!37397) (_size!2845 (_ BitVec 32)) (_keys!11334 array!64834) (_values!6187 array!64836) (_vacant!2845 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5580)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64834 (_ BitVec 32)) SeekEntryResult!9704)

(assert (=> b!1031568 (= lt!455504 (seekEntry!0 key!909 (_keys!11334 thiss!1427) (mask!29959 thiss!1427)))))

(declare-fun b!1031569 () Bool)

(declare-fun e!582698 () Bool)

(declare-fun e!582702 () Bool)

(declare-fun mapRes!38043 () Bool)

(assert (=> b!1031569 (= e!582698 (and e!582702 mapRes!38043))))

(declare-fun condMapEmpty!38043 () Bool)

(declare-fun mapDefault!38043 () ValueCell!11493)

(assert (=> b!1031569 (= condMapEmpty!38043 (= (arr!31216 (_values!6187 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11493)) mapDefault!38043)))))

(declare-fun mapIsEmpty!38043 () Bool)

(assert (=> mapIsEmpty!38043 mapRes!38043))

(declare-fun mapNonEmpty!38043 () Bool)

(declare-fun tp!73090 () Bool)

(declare-fun e!582701 () Bool)

(assert (=> mapNonEmpty!38043 (= mapRes!38043 (and tp!73090 e!582701))))

(declare-fun mapKey!38043 () (_ BitVec 32))

(declare-fun mapRest!38043 () (Array (_ BitVec 32) ValueCell!11493))

(declare-fun mapValue!38043 () ValueCell!11493)

(assert (=> mapNonEmpty!38043 (= (arr!31216 (_values!6187 thiss!1427)) (store mapRest!38043 mapKey!38043 mapValue!38043))))

(declare-fun b!1031570 () Bool)

(declare-fun res!689814 () Bool)

(declare-fun e!582696 () Bool)

(assert (=> b!1031570 (=> res!689814 e!582696)))

(declare-datatypes ((Unit!33730 0))(
  ( (Unit!33731) )
))
(declare-datatypes ((tuple2!15782 0))(
  ( (tuple2!15783 (_1!7901 Unit!33730) (_2!7901 LongMapFixedSize!5580)) )
))
(declare-fun lt!455505 () tuple2!15782)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64834 (_ BitVec 32)) Bool)

(assert (=> b!1031570 (= res!689814 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11334 (_2!7901 lt!455505)) (mask!29959 (_2!7901 lt!455505)))))))

(declare-fun res!689811 () Bool)

(assert (=> start!90102 (=> (not res!689811) (not e!582697))))

(declare-fun valid!2063 (LongMapFixedSize!5580) Bool)

(assert (=> start!90102 (= res!689811 (valid!2063 thiss!1427))))

(assert (=> start!90102 e!582697))

(declare-fun e!582703 () Bool)

(assert (=> start!90102 e!582703))

(assert (=> start!90102 true))

(declare-fun b!1031571 () Bool)

(declare-fun res!689813 () Bool)

(assert (=> b!1031571 (=> res!689813 e!582696)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1031571 (= res!689813 (not (validMask!0 (mask!29959 (_2!7901 lt!455505)))))))

(declare-fun tp_is_empty!24393 () Bool)

(declare-fun array_inv!24005 (array!64834) Bool)

(declare-fun array_inv!24006 (array!64836) Bool)

(assert (=> b!1031572 (= e!582703 (and tp!73091 tp_is_empty!24393 (array_inv!24005 (_keys!11334 thiss!1427)) (array_inv!24006 (_values!6187 thiss!1427)) e!582698))))

(declare-fun b!1031573 () Bool)

(declare-fun res!689817 () Bool)

(assert (=> b!1031573 (=> (not res!689817) (not e!582697))))

(assert (=> b!1031573 (= res!689817 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1031574 () Bool)

(assert (=> b!1031574 (= e!582699 (not e!582696))))

(declare-fun res!689812 () Bool)

(assert (=> b!1031574 (=> res!689812 e!582696)))

(declare-datatypes ((tuple2!15784 0))(
  ( (tuple2!15785 (_1!7902 (_ BitVec 64)) (_2!7902 V!37397)) )
))
(declare-datatypes ((List!21990 0))(
  ( (Nil!21987) (Cons!21986 (h!23188 tuple2!15784) (t!31165 List!21990)) )
))
(declare-datatypes ((ListLongMap!13847 0))(
  ( (ListLongMap!13848 (toList!6939 List!21990)) )
))
(declare-fun contains!6018 (ListLongMap!13847 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3946 (array!64834 array!64836 (_ BitVec 32) (_ BitVec 32) V!37397 V!37397 (_ BitVec 32) Int) ListLongMap!13847)

(assert (=> b!1031574 (= res!689812 (not (contains!6018 (getCurrentListMap!3946 (_keys!11334 (_2!7901 lt!455505)) (_values!6187 (_2!7901 lt!455505)) (mask!29959 (_2!7901 lt!455505)) (extraKeys!5896 (_2!7901 lt!455505)) (zeroValue!6000 (_2!7901 lt!455505)) (minValue!6000 (_2!7901 lt!455505)) #b00000000000000000000000000000000 (defaultEntry!6164 (_2!7901 lt!455505))) key!909)))))

(declare-fun lt!455506 () array!64836)

(declare-fun lt!455503 () array!64834)

(declare-fun Unit!33732 () Unit!33730)

(declare-fun Unit!33733 () Unit!33730)

(assert (=> b!1031574 (= lt!455505 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2845 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15783 Unit!33732 (LongMapFixedSize!5581 (defaultEntry!6164 thiss!1427) (mask!29959 thiss!1427) (extraKeys!5896 thiss!1427) (zeroValue!6000 thiss!1427) (minValue!6000 thiss!1427) (bvsub (_size!2845 thiss!1427) #b00000000000000000000000000000001) lt!455503 lt!455506 (bvadd #b00000000000000000000000000000001 (_vacant!2845 thiss!1427)))) (tuple2!15783 Unit!33733 (LongMapFixedSize!5581 (defaultEntry!6164 thiss!1427) (mask!29959 thiss!1427) (extraKeys!5896 thiss!1427) (zeroValue!6000 thiss!1427) (minValue!6000 thiss!1427) (bvsub (_size!2845 thiss!1427) #b00000000000000000000000000000001) lt!455503 lt!455506 (_vacant!2845 thiss!1427)))))))

(declare-fun -!515 (ListLongMap!13847 (_ BitVec 64)) ListLongMap!13847)

(assert (=> b!1031574 (= (-!515 (getCurrentListMap!3946 (_keys!11334 thiss!1427) (_values!6187 thiss!1427) (mask!29959 thiss!1427) (extraKeys!5896 thiss!1427) (zeroValue!6000 thiss!1427) (minValue!6000 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6164 thiss!1427)) key!909) (getCurrentListMap!3946 lt!455503 lt!455506 (mask!29959 thiss!1427) (extraKeys!5896 thiss!1427) (zeroValue!6000 thiss!1427) (minValue!6000 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6164 thiss!1427)))))

(declare-fun dynLambda!1990 (Int (_ BitVec 64)) V!37397)

(assert (=> b!1031574 (= lt!455506 (array!64837 (store (arr!31216 (_values!6187 thiss!1427)) (index!41187 lt!455504) (ValueCellFull!11493 (dynLambda!1990 (defaultEntry!6164 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31734 (_values!6187 thiss!1427))))))

(declare-fun lt!455499 () Unit!33730)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!39 (array!64834 array!64836 (_ BitVec 32) (_ BitVec 32) V!37397 V!37397 (_ BitVec 32) (_ BitVec 64) Int) Unit!33730)

(assert (=> b!1031574 (= lt!455499 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!39 (_keys!11334 thiss!1427) (_values!6187 thiss!1427) (mask!29959 thiss!1427) (extraKeys!5896 thiss!1427) (zeroValue!6000 thiss!1427) (minValue!6000 thiss!1427) (index!41187 lt!455504) key!909 (defaultEntry!6164 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64834 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1031574 (not (arrayContainsKey!0 lt!455503 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455502 () Unit!33730)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64834 (_ BitVec 32) (_ BitVec 64)) Unit!33730)

(assert (=> b!1031574 (= lt!455502 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11334 thiss!1427) (index!41187 lt!455504) key!909))))

(assert (=> b!1031574 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455503 (mask!29959 thiss!1427))))

(declare-fun lt!455508 () Unit!33730)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64834 (_ BitVec 32) (_ BitVec 32)) Unit!33730)

(assert (=> b!1031574 (= lt!455508 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11334 thiss!1427) (index!41187 lt!455504) (mask!29959 thiss!1427)))))

(declare-datatypes ((List!21991 0))(
  ( (Nil!21988) (Cons!21987 (h!23189 (_ BitVec 64)) (t!31166 List!21991)) )
))
(declare-fun arrayNoDuplicates!0 (array!64834 (_ BitVec 32) List!21991) Bool)

(assert (=> b!1031574 (arrayNoDuplicates!0 lt!455503 #b00000000000000000000000000000000 Nil!21988)))

(declare-fun lt!455501 () Unit!33730)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64834 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21991) Unit!33730)

(assert (=> b!1031574 (= lt!455501 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11334 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41187 lt!455504) #b00000000000000000000000000000000 Nil!21988))))

(declare-fun arrayCountValidKeys!0 (array!64834 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1031574 (= (arrayCountValidKeys!0 lt!455503 #b00000000000000000000000000000000 (size!31733 (_keys!11334 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11334 thiss!1427) #b00000000000000000000000000000000 (size!31733 (_keys!11334 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1031574 (= lt!455503 (array!64835 (store (arr!31215 (_keys!11334 thiss!1427)) (index!41187 lt!455504) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31733 (_keys!11334 thiss!1427))))))

(declare-fun lt!455500 () Unit!33730)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64834 (_ BitVec 32) (_ BitVec 64)) Unit!33730)

(assert (=> b!1031574 (= lt!455500 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11334 thiss!1427) (index!41187 lt!455504) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1031575 () Bool)

(assert (=> b!1031575 (= e!582702 tp_is_empty!24393)))

(declare-fun b!1031576 () Bool)

(assert (=> b!1031576 (= e!582701 tp_is_empty!24393)))

(declare-fun b!1031577 () Bool)

(declare-fun res!689816 () Bool)

(assert (=> b!1031577 (=> res!689816 e!582696)))

(assert (=> b!1031577 (= res!689816 (or (not (= (size!31734 (_values!6187 (_2!7901 lt!455505))) (bvadd #b00000000000000000000000000000001 (mask!29959 (_2!7901 lt!455505))))) (not (= (size!31733 (_keys!11334 (_2!7901 lt!455505))) (size!31734 (_values!6187 (_2!7901 lt!455505))))) (bvslt (mask!29959 (_2!7901 lt!455505)) #b00000000000000000000000000000000) (bvslt (extraKeys!5896 (_2!7901 lt!455505)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5896 (_2!7901 lt!455505)) #b00000000000000000000000000000011)))))

(declare-fun b!1031578 () Bool)

(assert (=> b!1031578 (= e!582696 true)))

(declare-fun lt!455507 () Bool)

(assert (=> b!1031578 (= lt!455507 (arrayNoDuplicates!0 (_keys!11334 (_2!7901 lt!455505)) #b00000000000000000000000000000000 Nil!21988))))

(assert (= (and start!90102 res!689811) b!1031573))

(assert (= (and b!1031573 res!689817) b!1031568))

(assert (= (and b!1031568 res!689815) b!1031574))

(assert (= (and b!1031574 (not res!689812)) b!1031571))

(assert (= (and b!1031571 (not res!689813)) b!1031577))

(assert (= (and b!1031577 (not res!689816)) b!1031570))

(assert (= (and b!1031570 (not res!689814)) b!1031578))

(assert (= (and b!1031569 condMapEmpty!38043) mapIsEmpty!38043))

(assert (= (and b!1031569 (not condMapEmpty!38043)) mapNonEmpty!38043))

(assert (= (and mapNonEmpty!38043 ((_ is ValueCellFull!11493) mapValue!38043)) b!1031576))

(assert (= (and b!1031569 ((_ is ValueCellFull!11493) mapDefault!38043)) b!1031575))

(assert (= b!1031572 b!1031569))

(assert (= start!90102 b!1031572))

(declare-fun b_lambda!16047 () Bool)

(assert (=> (not b_lambda!16047) (not b!1031574)))

(declare-fun t!31164 () Bool)

(declare-fun tb!6999 () Bool)

(assert (=> (and b!1031572 (= (defaultEntry!6164 thiss!1427) (defaultEntry!6164 thiss!1427)) t!31164) tb!6999))

(declare-fun result!14319 () Bool)

(assert (=> tb!6999 (= result!14319 tp_is_empty!24393)))

(assert (=> b!1031574 t!31164))

(declare-fun b_and!33133 () Bool)

(assert (= b_and!33131 (and (=> t!31164 result!14319) b_and!33133)))

(declare-fun m!951913 () Bool)

(assert (=> b!1031568 m!951913))

(declare-fun m!951915 () Bool)

(assert (=> start!90102 m!951915))

(declare-fun m!951917 () Bool)

(assert (=> b!1031572 m!951917))

(declare-fun m!951919 () Bool)

(assert (=> b!1031572 m!951919))

(declare-fun m!951921 () Bool)

(assert (=> b!1031570 m!951921))

(declare-fun m!951923 () Bool)

(assert (=> b!1031578 m!951923))

(declare-fun m!951925 () Bool)

(assert (=> mapNonEmpty!38043 m!951925))

(declare-fun m!951927 () Bool)

(assert (=> b!1031574 m!951927))

(declare-fun m!951929 () Bool)

(assert (=> b!1031574 m!951929))

(declare-fun m!951931 () Bool)

(assert (=> b!1031574 m!951931))

(declare-fun m!951933 () Bool)

(assert (=> b!1031574 m!951933))

(declare-fun m!951935 () Bool)

(assert (=> b!1031574 m!951935))

(declare-fun m!951937 () Bool)

(assert (=> b!1031574 m!951937))

(declare-fun m!951939 () Bool)

(assert (=> b!1031574 m!951939))

(declare-fun m!951941 () Bool)

(assert (=> b!1031574 m!951941))

(assert (=> b!1031574 m!951939))

(declare-fun m!951943 () Bool)

(assert (=> b!1031574 m!951943))

(declare-fun m!951945 () Bool)

(assert (=> b!1031574 m!951945))

(declare-fun m!951947 () Bool)

(assert (=> b!1031574 m!951947))

(declare-fun m!951949 () Bool)

(assert (=> b!1031574 m!951949))

(declare-fun m!951951 () Bool)

(assert (=> b!1031574 m!951951))

(declare-fun m!951953 () Bool)

(assert (=> b!1031574 m!951953))

(assert (=> b!1031574 m!951943))

(declare-fun m!951955 () Bool)

(assert (=> b!1031574 m!951955))

(declare-fun m!951957 () Bool)

(assert (=> b!1031574 m!951957))

(declare-fun m!951959 () Bool)

(assert (=> b!1031574 m!951959))

(declare-fun m!951961 () Bool)

(assert (=> b!1031574 m!951961))

(declare-fun m!951963 () Bool)

(assert (=> b!1031571 m!951963))

(check-sat (not b!1031572) (not b!1031574) (not b!1031570) (not b_lambda!16047) (not b!1031578) (not b_next!20673) (not b!1031568) (not b!1031571) b_and!33133 (not start!90102) (not mapNonEmpty!38043) tp_is_empty!24393)
(check-sat b_and!33133 (not b_next!20673))
