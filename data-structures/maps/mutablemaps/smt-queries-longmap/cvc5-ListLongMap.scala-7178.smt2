; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91848 () Bool)

(assert start!91848)

(declare-fun b!1044561 () Bool)

(declare-fun b_free!21121 () Bool)

(declare-fun b_next!21121 () Bool)

(assert (=> b!1044561 (= b_free!21121 (not b_next!21121))))

(declare-fun tp!74613 () Bool)

(declare-fun b_and!33723 () Bool)

(assert (=> b!1044561 (= tp!74613 b_and!33723)))

(declare-fun b!1044558 () Bool)

(declare-fun res!695763 () Bool)

(declare-fun e!592045 () Bool)

(assert (=> b!1044558 (=> (not res!695763) (not e!592045))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1044558 (= res!695763 (not (= key!909 (bvneg key!909))))))

(declare-fun mapNonEmpty!38894 () Bool)

(declare-fun mapRes!38894 () Bool)

(declare-fun tp!74614 () Bool)

(declare-fun e!592046 () Bool)

(assert (=> mapNonEmpty!38894 (= mapRes!38894 (and tp!74614 e!592046))))

(declare-datatypes ((V!37995 0))(
  ( (V!37996 (val!12471 Int)) )
))
(declare-datatypes ((ValueCell!11717 0))(
  ( (ValueCellFull!11717 (v!15065 V!37995)) (EmptyCell!11717) )
))
(declare-fun mapValue!38894 () ValueCell!11717)

(declare-fun mapRest!38894 () (Array (_ BitVec 32) ValueCell!11717))

(declare-datatypes ((array!65836 0))(
  ( (array!65837 (arr!31663 (Array (_ BitVec 32) (_ BitVec 64))) (size!32199 (_ BitVec 32))) )
))
(declare-datatypes ((array!65838 0))(
  ( (array!65839 (arr!31664 (Array (_ BitVec 32) ValueCell!11717)) (size!32200 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6028 0))(
  ( (LongMapFixedSize!6029 (defaultEntry!6404 Int) (mask!30512 (_ BitVec 32)) (extraKeys!6132 (_ BitVec 32)) (zeroValue!6238 V!37995) (minValue!6238 V!37995) (_size!3069 (_ BitVec 32)) (_keys!11667 array!65836) (_values!6427 array!65838) (_vacant!3069 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6028)

(declare-fun mapKey!38894 () (_ BitVec 32))

(assert (=> mapNonEmpty!38894 (= (arr!31664 (_values!6427 thiss!1427)) (store mapRest!38894 mapKey!38894 mapValue!38894))))

(declare-fun b!1044559 () Bool)

(declare-fun res!695765 () Bool)

(declare-fun e!592040 () Bool)

(assert (=> b!1044559 (=> res!695765 e!592040)))

(declare-datatypes ((Unit!34104 0))(
  ( (Unit!34105) )
))
(declare-datatypes ((tuple2!15862 0))(
  ( (tuple2!15863 (_1!7941 Unit!34104) (_2!7941 LongMapFixedSize!6028)) )
))
(declare-fun lt!460833 () tuple2!15862)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1044559 (= res!695765 (not (validMask!0 (mask!30512 (_2!7941 lt!460833)))))))

(declare-fun res!695766 () Bool)

(assert (=> start!91848 (=> (not res!695766) (not e!592045))))

(declare-fun valid!2216 (LongMapFixedSize!6028) Bool)

(assert (=> start!91848 (= res!695766 (valid!2216 thiss!1427))))

(assert (=> start!91848 e!592045))

(declare-fun e!592042 () Bool)

(assert (=> start!91848 e!592042))

(assert (=> start!91848 true))

(declare-fun b!1044560 () Bool)

(assert (=> b!1044560 (= e!592040 (or (not (= (size!32200 (_values!6427 (_2!7941 lt!460833))) (bvadd #b00000000000000000000000000000001 (mask!30512 (_2!7941 lt!460833))))) (= (size!32199 (_keys!11667 (_2!7941 lt!460833))) (size!32200 (_values!6427 (_2!7941 lt!460833))))))))

(declare-fun tp_is_empty!24841 () Bool)

(declare-fun e!592047 () Bool)

(declare-fun array_inv!24305 (array!65836) Bool)

(declare-fun array_inv!24306 (array!65838) Bool)

(assert (=> b!1044561 (= e!592042 (and tp!74613 tp_is_empty!24841 (array_inv!24305 (_keys!11667 thiss!1427)) (array_inv!24306 (_values!6427 thiss!1427)) e!592047))))

(declare-fun mapIsEmpty!38894 () Bool)

(assert (=> mapIsEmpty!38894 mapRes!38894))

(declare-fun b!1044562 () Bool)

(assert (=> b!1044562 (= e!592046 tp_is_empty!24841)))

(declare-fun b!1044563 () Bool)

(declare-fun e!592044 () Bool)

(assert (=> b!1044563 (= e!592044 (not e!592040))))

(declare-fun res!695764 () Bool)

(assert (=> b!1044563 (=> res!695764 e!592040)))

(declare-datatypes ((tuple2!15864 0))(
  ( (tuple2!15865 (_1!7942 (_ BitVec 64)) (_2!7942 V!37995)) )
))
(declare-datatypes ((List!22132 0))(
  ( (Nil!22129) (Cons!22128 (h!23336 tuple2!15864) (t!31383 List!22132)) )
))
(declare-datatypes ((ListLongMap!13893 0))(
  ( (ListLongMap!13894 (toList!6962 List!22132)) )
))
(declare-fun contains!6093 (ListLongMap!13893 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3968 (array!65836 array!65838 (_ BitVec 32) (_ BitVec 32) V!37995 V!37995 (_ BitVec 32) Int) ListLongMap!13893)

(assert (=> b!1044563 (= res!695764 (not (contains!6093 (getCurrentListMap!3968 (_keys!11667 (_2!7941 lt!460833)) (_values!6427 (_2!7941 lt!460833)) (mask!30512 (_2!7941 lt!460833)) (extraKeys!6132 (_2!7941 lt!460833)) (zeroValue!6238 (_2!7941 lt!460833)) (minValue!6238 (_2!7941 lt!460833)) #b00000000000000000000000000000000 (defaultEntry!6404 (_2!7941 lt!460833))) key!909)))))

(declare-fun lt!460839 () array!65836)

(declare-fun lt!460834 () array!65838)

(declare-fun Unit!34106 () Unit!34104)

(declare-fun Unit!34107 () Unit!34104)

(assert (=> b!1044563 (= lt!460833 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!3069 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15863 Unit!34106 (LongMapFixedSize!6029 (defaultEntry!6404 thiss!1427) (mask!30512 thiss!1427) (extraKeys!6132 thiss!1427) (zeroValue!6238 thiss!1427) (minValue!6238 thiss!1427) (bvsub (_size!3069 thiss!1427) #b00000000000000000000000000000001) lt!460839 lt!460834 (bvadd #b00000000000000000000000000000001 (_vacant!3069 thiss!1427)))) (tuple2!15863 Unit!34107 (LongMapFixedSize!6029 (defaultEntry!6404 thiss!1427) (mask!30512 thiss!1427) (extraKeys!6132 thiss!1427) (zeroValue!6238 thiss!1427) (minValue!6238 thiss!1427) (bvsub (_size!3069 thiss!1427) #b00000000000000000000000000000001) lt!460839 lt!460834 (_vacant!3069 thiss!1427)))))))

(declare-fun -!538 (ListLongMap!13893 (_ BitVec 64)) ListLongMap!13893)

(assert (=> b!1044563 (= (-!538 (getCurrentListMap!3968 (_keys!11667 thiss!1427) (_values!6427 thiss!1427) (mask!30512 thiss!1427) (extraKeys!6132 thiss!1427) (zeroValue!6238 thiss!1427) (minValue!6238 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6404 thiss!1427)) key!909) (getCurrentListMap!3968 lt!460839 lt!460834 (mask!30512 thiss!1427) (extraKeys!6132 thiss!1427) (zeroValue!6238 thiss!1427) (minValue!6238 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6404 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9839 0))(
  ( (MissingZero!9839 (index!41726 (_ BitVec 32))) (Found!9839 (index!41727 (_ BitVec 32))) (Intermediate!9839 (undefined!10651 Bool) (index!41728 (_ BitVec 32)) (x!93280 (_ BitVec 32))) (Undefined!9839) (MissingVacant!9839 (index!41729 (_ BitVec 32))) )
))
(declare-fun lt!460836 () SeekEntryResult!9839)

(declare-fun dynLambda!2012 (Int (_ BitVec 64)) V!37995)

(assert (=> b!1044563 (= lt!460834 (array!65839 (store (arr!31664 (_values!6427 thiss!1427)) (index!41727 lt!460836) (ValueCellFull!11717 (dynLambda!2012 (defaultEntry!6404 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32200 (_values!6427 thiss!1427))))))

(declare-fun lt!460835 () Unit!34104)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!58 (array!65836 array!65838 (_ BitVec 32) (_ BitVec 32) V!37995 V!37995 (_ BitVec 32) (_ BitVec 64) Int) Unit!34104)

(assert (=> b!1044563 (= lt!460835 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!58 (_keys!11667 thiss!1427) (_values!6427 thiss!1427) (mask!30512 thiss!1427) (extraKeys!6132 thiss!1427) (zeroValue!6238 thiss!1427) (minValue!6238 thiss!1427) (index!41727 lt!460836) key!909 (defaultEntry!6404 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!65836 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1044563 (not (arrayContainsKey!0 lt!460839 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!460838 () Unit!34104)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65836 (_ BitVec 32) (_ BitVec 64)) Unit!34104)

(assert (=> b!1044563 (= lt!460838 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11667 thiss!1427) (index!41727 lt!460836) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65836 (_ BitVec 32)) Bool)

(assert (=> b!1044563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!460839 (mask!30512 thiss!1427))))

(declare-fun lt!460832 () Unit!34104)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65836 (_ BitVec 32) (_ BitVec 32)) Unit!34104)

(assert (=> b!1044563 (= lt!460832 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11667 thiss!1427) (index!41727 lt!460836) (mask!30512 thiss!1427)))))

(declare-datatypes ((List!22133 0))(
  ( (Nil!22130) (Cons!22129 (h!23337 (_ BitVec 64)) (t!31384 List!22133)) )
))
(declare-fun arrayNoDuplicates!0 (array!65836 (_ BitVec 32) List!22133) Bool)

(assert (=> b!1044563 (arrayNoDuplicates!0 lt!460839 #b00000000000000000000000000000000 Nil!22130)))

(declare-fun lt!460837 () Unit!34104)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65836 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22133) Unit!34104)

(assert (=> b!1044563 (= lt!460837 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11667 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41727 lt!460836) #b00000000000000000000000000000000 Nil!22130))))

(declare-fun arrayCountValidKeys!0 (array!65836 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1044563 (= (arrayCountValidKeys!0 lt!460839 #b00000000000000000000000000000000 (size!32199 (_keys!11667 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11667 thiss!1427) #b00000000000000000000000000000000 (size!32199 (_keys!11667 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1044563 (= lt!460839 (array!65837 (store (arr!31663 (_keys!11667 thiss!1427)) (index!41727 lt!460836) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32199 (_keys!11667 thiss!1427))))))

(declare-fun lt!460831 () Unit!34104)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65836 (_ BitVec 32) (_ BitVec 64)) Unit!34104)

(assert (=> b!1044563 (= lt!460831 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11667 thiss!1427) (index!41727 lt!460836) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1044564 () Bool)

(declare-fun e!592043 () Bool)

(assert (=> b!1044564 (= e!592043 tp_is_empty!24841)))

(declare-fun b!1044565 () Bool)

(assert (=> b!1044565 (= e!592045 e!592044)))

(declare-fun res!695767 () Bool)

(assert (=> b!1044565 (=> (not res!695767) (not e!592044))))

(assert (=> b!1044565 (= res!695767 (is-Found!9839 lt!460836))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65836 (_ BitVec 32)) SeekEntryResult!9839)

(assert (=> b!1044565 (= lt!460836 (seekEntry!0 key!909 (_keys!11667 thiss!1427) (mask!30512 thiss!1427)))))

(declare-fun b!1044566 () Bool)

(assert (=> b!1044566 (= e!592047 (and e!592043 mapRes!38894))))

(declare-fun condMapEmpty!38894 () Bool)

(declare-fun mapDefault!38894 () ValueCell!11717)

