; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89648 () Bool)

(assert start!89648)

(declare-fun b!1027738 () Bool)

(declare-fun b_free!20579 () Bool)

(declare-fun b_next!20579 () Bool)

(assert (=> b!1027738 (= b_free!20579 (not b_next!20579))))

(declare-fun tp!72787 () Bool)

(declare-fun b_and!32859 () Bool)

(assert (=> b!1027738 (= tp!72787 b_and!32859)))

(declare-fun b!1027736 () Bool)

(declare-fun e!580128 () Bool)

(declare-datatypes ((V!37271 0))(
  ( (V!37272 (val!12200 Int)) )
))
(declare-datatypes ((ValueCell!11446 0))(
  ( (ValueCellFull!11446 (v!14770 V!37271)) (EmptyCell!11446) )
))
(declare-datatypes ((Unit!33518 0))(
  ( (Unit!33519) )
))
(declare-datatypes ((array!64634 0))(
  ( (array!64635 (arr!31121 (Array (_ BitVec 32) (_ BitVec 64))) (size!31635 (_ BitVec 32))) )
))
(declare-datatypes ((array!64636 0))(
  ( (array!64637 (arr!31122 (Array (_ BitVec 32) ValueCell!11446)) (size!31636 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5486 0))(
  ( (LongMapFixedSize!5487 (defaultEntry!6097 Int) (mask!29816 (_ BitVec 32)) (extraKeys!5829 (_ BitVec 32)) (zeroValue!5933 V!37271) (minValue!5933 V!37271) (_size!2798 (_ BitVec 32)) (_keys!11243 array!64634) (_values!6120 array!64636) (_vacant!2798 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15622 0))(
  ( (tuple2!15623 (_1!7821 Unit!33518) (_2!7821 LongMapFixedSize!5486)) )
))
(declare-fun lt!452530 () tuple2!15622)

(assert (=> b!1027736 (= e!580128 (= (size!31636 (_values!6120 (_2!7821 lt!452530))) (bvadd #b00000000000000000000000000000001 (mask!29816 (_2!7821 lt!452530)))))))

(declare-fun mapNonEmpty!37880 () Bool)

(declare-fun mapRes!37880 () Bool)

(declare-fun tp!72786 () Bool)

(declare-fun e!580123 () Bool)

(assert (=> mapNonEmpty!37880 (= mapRes!37880 (and tp!72786 e!580123))))

(declare-fun mapValue!37880 () ValueCell!11446)

(declare-fun mapKey!37880 () (_ BitVec 32))

(declare-fun thiss!1427 () LongMapFixedSize!5486)

(declare-fun mapRest!37880 () (Array (_ BitVec 32) ValueCell!11446))

(assert (=> mapNonEmpty!37880 (= (arr!31122 (_values!6120 thiss!1427)) (store mapRest!37880 mapKey!37880 mapValue!37880))))

(declare-fun res!687922 () Bool)

(declare-fun e!580129 () Bool)

(assert (=> start!89648 (=> (not res!687922) (not e!580129))))

(declare-fun valid!2031 (LongMapFixedSize!5486) Bool)

(assert (=> start!89648 (= res!687922 (valid!2031 thiss!1427))))

(assert (=> start!89648 e!580129))

(declare-fun e!580125 () Bool)

(assert (=> start!89648 e!580125))

(assert (=> start!89648 true))

(declare-fun b!1027737 () Bool)

(declare-fun res!687924 () Bool)

(assert (=> b!1027737 (=> (not res!687924) (not e!580129))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1027737 (= res!687924 (not (= key!909 (bvneg key!909))))))

(declare-fun mapIsEmpty!37880 () Bool)

(assert (=> mapIsEmpty!37880 mapRes!37880))

(declare-fun e!580126 () Bool)

(declare-fun tp_is_empty!24299 () Bool)

(declare-fun array_inv!23941 (array!64634) Bool)

(declare-fun array_inv!23942 (array!64636) Bool)

(assert (=> b!1027738 (= e!580125 (and tp!72787 tp_is_empty!24299 (array_inv!23941 (_keys!11243 thiss!1427)) (array_inv!23942 (_values!6120 thiss!1427)) e!580126))))

(declare-fun b!1027739 () Bool)

(declare-fun e!580124 () Bool)

(assert (=> b!1027739 (= e!580129 e!580124)))

(declare-fun res!687921 () Bool)

(assert (=> b!1027739 (=> (not res!687921) (not e!580124))))

(declare-datatypes ((SeekEntryResult!9664 0))(
  ( (MissingZero!9664 (index!41026 (_ BitVec 32))) (Found!9664 (index!41027 (_ BitVec 32))) (Intermediate!9664 (undefined!10476 Bool) (index!41028 (_ BitVec 32)) (x!91447 (_ BitVec 32))) (Undefined!9664) (MissingVacant!9664 (index!41029 (_ BitVec 32))) )
))
(declare-fun lt!452524 () SeekEntryResult!9664)

(assert (=> b!1027739 (= res!687921 (is-Found!9664 lt!452524))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64634 (_ BitVec 32)) SeekEntryResult!9664)

(assert (=> b!1027739 (= lt!452524 (seekEntry!0 key!909 (_keys!11243 thiss!1427) (mask!29816 thiss!1427)))))

(declare-fun b!1027740 () Bool)

(assert (=> b!1027740 (= e!580123 tp_is_empty!24299)))

(declare-fun b!1027741 () Bool)

(assert (=> b!1027741 (= e!580124 (not e!580128))))

(declare-fun res!687923 () Bool)

(assert (=> b!1027741 (=> res!687923 e!580128)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1027741 (= res!687923 (not (validMask!0 (mask!29816 (_2!7821 lt!452530)))))))

(declare-fun lt!452525 () array!64636)

(declare-fun lt!452526 () array!64634)

(declare-fun Unit!33520 () Unit!33518)

(declare-fun Unit!33521 () Unit!33518)

(assert (=> b!1027741 (= lt!452530 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2798 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15623 Unit!33520 (LongMapFixedSize!5487 (defaultEntry!6097 thiss!1427) (mask!29816 thiss!1427) (extraKeys!5829 thiss!1427) (zeroValue!5933 thiss!1427) (minValue!5933 thiss!1427) (bvsub (_size!2798 thiss!1427) #b00000000000000000000000000000001) lt!452526 lt!452525 (bvadd #b00000000000000000000000000000001 (_vacant!2798 thiss!1427)))) (tuple2!15623 Unit!33521 (LongMapFixedSize!5487 (defaultEntry!6097 thiss!1427) (mask!29816 thiss!1427) (extraKeys!5829 thiss!1427) (zeroValue!5933 thiss!1427) (minValue!5933 thiss!1427) (bvsub (_size!2798 thiss!1427) #b00000000000000000000000000000001) lt!452526 lt!452525 (_vacant!2798 thiss!1427)))))))

(declare-datatypes ((tuple2!15624 0))(
  ( (tuple2!15625 (_1!7822 (_ BitVec 64)) (_2!7822 V!37271)) )
))
(declare-datatypes ((List!21919 0))(
  ( (Nil!21916) (Cons!21915 (h!23113 tuple2!15624) (t!31000 List!21919)) )
))
(declare-datatypes ((ListLongMap!13777 0))(
  ( (ListLongMap!13778 (toList!6904 List!21919)) )
))
(declare-fun -!480 (ListLongMap!13777 (_ BitVec 64)) ListLongMap!13777)

(declare-fun getCurrentListMap!3911 (array!64634 array!64636 (_ BitVec 32) (_ BitVec 32) V!37271 V!37271 (_ BitVec 32) Int) ListLongMap!13777)

(assert (=> b!1027741 (= (-!480 (getCurrentListMap!3911 (_keys!11243 thiss!1427) (_values!6120 thiss!1427) (mask!29816 thiss!1427) (extraKeys!5829 thiss!1427) (zeroValue!5933 thiss!1427) (minValue!5933 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6097 thiss!1427)) key!909) (getCurrentListMap!3911 lt!452526 lt!452525 (mask!29816 thiss!1427) (extraKeys!5829 thiss!1427) (zeroValue!5933 thiss!1427) (minValue!5933 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6097 thiss!1427)))))

(declare-fun dynLambda!1955 (Int (_ BitVec 64)) V!37271)

(assert (=> b!1027741 (= lt!452525 (array!64637 (store (arr!31122 (_values!6120 thiss!1427)) (index!41027 lt!452524) (ValueCellFull!11446 (dynLambda!1955 (defaultEntry!6097 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31636 (_values!6120 thiss!1427))))))

(declare-fun lt!452531 () Unit!33518)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!4 (array!64634 array!64636 (_ BitVec 32) (_ BitVec 32) V!37271 V!37271 (_ BitVec 32) (_ BitVec 64) Int) Unit!33518)

(assert (=> b!1027741 (= lt!452531 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!4 (_keys!11243 thiss!1427) (_values!6120 thiss!1427) (mask!29816 thiss!1427) (extraKeys!5829 thiss!1427) (zeroValue!5933 thiss!1427) (minValue!5933 thiss!1427) (index!41027 lt!452524) key!909 (defaultEntry!6097 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64634 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1027741 (not (arrayContainsKey!0 lt!452526 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!452527 () Unit!33518)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64634 (_ BitVec 32) (_ BitVec 64)) Unit!33518)

(assert (=> b!1027741 (= lt!452527 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11243 thiss!1427) (index!41027 lt!452524) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64634 (_ BitVec 32)) Bool)

(assert (=> b!1027741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!452526 (mask!29816 thiss!1427))))

(declare-fun lt!452529 () Unit!33518)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64634 (_ BitVec 32) (_ BitVec 32)) Unit!33518)

(assert (=> b!1027741 (= lt!452529 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11243 thiss!1427) (index!41027 lt!452524) (mask!29816 thiss!1427)))))

(declare-datatypes ((List!21920 0))(
  ( (Nil!21917) (Cons!21916 (h!23114 (_ BitVec 64)) (t!31001 List!21920)) )
))
(declare-fun arrayNoDuplicates!0 (array!64634 (_ BitVec 32) List!21920) Bool)

(assert (=> b!1027741 (arrayNoDuplicates!0 lt!452526 #b00000000000000000000000000000000 Nil!21917)))

(declare-fun lt!452532 () Unit!33518)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64634 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21920) Unit!33518)

(assert (=> b!1027741 (= lt!452532 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11243 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41027 lt!452524) #b00000000000000000000000000000000 Nil!21917))))

(declare-fun arrayCountValidKeys!0 (array!64634 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1027741 (= (arrayCountValidKeys!0 lt!452526 #b00000000000000000000000000000000 (size!31635 (_keys!11243 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11243 thiss!1427) #b00000000000000000000000000000000 (size!31635 (_keys!11243 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1027741 (= lt!452526 (array!64635 (store (arr!31121 (_keys!11243 thiss!1427)) (index!41027 lt!452524) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31635 (_keys!11243 thiss!1427))))))

(declare-fun lt!452528 () Unit!33518)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64634 (_ BitVec 32) (_ BitVec 64)) Unit!33518)

(assert (=> b!1027741 (= lt!452528 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11243 thiss!1427) (index!41027 lt!452524) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1027742 () Bool)

(declare-fun e!580127 () Bool)

(assert (=> b!1027742 (= e!580127 tp_is_empty!24299)))

(declare-fun b!1027743 () Bool)

(assert (=> b!1027743 (= e!580126 (and e!580127 mapRes!37880))))

(declare-fun condMapEmpty!37880 () Bool)

(declare-fun mapDefault!37880 () ValueCell!11446)

