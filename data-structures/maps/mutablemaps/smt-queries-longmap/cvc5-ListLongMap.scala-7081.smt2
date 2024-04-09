; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89576 () Bool)

(assert start!89576)

(declare-fun b!1026978 () Bool)

(declare-fun b_free!20539 () Bool)

(declare-fun b_next!20539 () Bool)

(assert (=> b!1026978 (= b_free!20539 (not b_next!20539))))

(declare-fun tp!72664 () Bool)

(declare-fun b_and!32803 () Bool)

(assert (=> b!1026978 (= tp!72664 b_and!32803)))

(declare-fun mapNonEmpty!37817 () Bool)

(declare-fun mapRes!37817 () Bool)

(declare-fun tp!72663 () Bool)

(declare-fun e!579531 () Bool)

(assert (=> mapNonEmpty!37817 (= mapRes!37817 (and tp!72663 e!579531))))

(declare-datatypes ((V!37219 0))(
  ( (V!37220 (val!12180 Int)) )
))
(declare-datatypes ((ValueCell!11426 0))(
  ( (ValueCellFull!11426 (v!14750 V!37219)) (EmptyCell!11426) )
))
(declare-fun mapValue!37817 () ValueCell!11426)

(declare-fun mapRest!37817 () (Array (_ BitVec 32) ValueCell!11426))

(declare-datatypes ((array!64552 0))(
  ( (array!64553 (arr!31081 (Array (_ BitVec 32) (_ BitVec 64))) (size!31595 (_ BitVec 32))) )
))
(declare-datatypes ((array!64554 0))(
  ( (array!64555 (arr!31082 (Array (_ BitVec 32) ValueCell!11426)) (size!31596 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5446 0))(
  ( (LongMapFixedSize!5447 (defaultEntry!6075 Int) (mask!29778 (_ BitVec 32)) (extraKeys!5807 (_ BitVec 32)) (zeroValue!5911 V!37219) (minValue!5911 V!37219) (_size!2778 (_ BitVec 32)) (_keys!11219 array!64552) (_values!6098 array!64554) (_vacant!2778 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5446)

(declare-fun mapKey!37817 () (_ BitVec 32))

(assert (=> mapNonEmpty!37817 (= (arr!31082 (_values!6098 thiss!1427)) (store mapRest!37817 mapKey!37817 mapValue!37817))))

(declare-fun b!1026977 () Bool)

(declare-fun tp_is_empty!24259 () Bool)

(assert (=> b!1026977 (= e!579531 tp_is_empty!24259)))

(declare-fun e!579529 () Bool)

(declare-fun e!579536 () Bool)

(declare-fun array_inv!23917 (array!64552) Bool)

(declare-fun array_inv!23918 (array!64554) Bool)

(assert (=> b!1026978 (= e!579536 (and tp!72664 tp_is_empty!24259 (array_inv!23917 (_keys!11219 thiss!1427)) (array_inv!23918 (_values!6098 thiss!1427)) e!579529))))

(declare-fun res!687517 () Bool)

(declare-fun e!579530 () Bool)

(assert (=> start!89576 (=> (not res!687517) (not e!579530))))

(declare-fun valid!2020 (LongMapFixedSize!5446) Bool)

(assert (=> start!89576 (= res!687517 (valid!2020 thiss!1427))))

(assert (=> start!89576 e!579530))

(assert (=> start!89576 e!579536))

(assert (=> start!89576 true))

(declare-fun b!1026979 () Bool)

(declare-fun e!579532 () Bool)

(assert (=> b!1026979 (= e!579532 tp_is_empty!24259)))

(declare-fun b!1026980 () Bool)

(declare-fun e!579534 () Bool)

(assert (=> b!1026980 (= e!579530 e!579534)))

(declare-fun res!687516 () Bool)

(assert (=> b!1026980 (=> (not res!687516) (not e!579534))))

(declare-datatypes ((SeekEntryResult!9650 0))(
  ( (MissingZero!9650 (index!40970 (_ BitVec 32))) (Found!9650 (index!40971 (_ BitVec 32))) (Intermediate!9650 (undefined!10462 Bool) (index!40972 (_ BitVec 32)) (x!91363 (_ BitVec 32))) (Undefined!9650) (MissingVacant!9650 (index!40973 (_ BitVec 32))) )
))
(declare-fun lt!451954 () SeekEntryResult!9650)

(assert (=> b!1026980 (= res!687516 (is-Found!9650 lt!451954))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64552 (_ BitVec 32)) SeekEntryResult!9650)

(assert (=> b!1026980 (= lt!451954 (seekEntry!0 key!909 (_keys!11219 thiss!1427) (mask!29778 thiss!1427)))))

(declare-fun b!1026981 () Bool)

(declare-fun res!687519 () Bool)

(declare-fun e!579533 () Bool)

(assert (=> b!1026981 (=> res!687519 e!579533)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64552 (_ BitVec 32)) Bool)

(assert (=> b!1026981 (= res!687519 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11219 thiss!1427) (mask!29778 thiss!1427))))))

(declare-fun b!1026982 () Bool)

(assert (=> b!1026982 (= e!579534 (not e!579533))))

(declare-fun res!687514 () Bool)

(assert (=> b!1026982 (=> res!687514 e!579533)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1026982 (= res!687514 (not (validMask!0 (mask!29778 thiss!1427))))))

(declare-fun lt!451952 () array!64552)

(declare-fun arrayContainsKey!0 (array!64552 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1026982 (not (arrayContainsKey!0 lt!451952 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33430 0))(
  ( (Unit!33431) )
))
(declare-fun lt!451953 () Unit!33430)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64552 (_ BitVec 32) (_ BitVec 64)) Unit!33430)

(assert (=> b!1026982 (= lt!451953 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11219 thiss!1427) (index!40971 lt!451954) key!909))))

(assert (=> b!1026982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451952 (mask!29778 thiss!1427))))

(declare-fun lt!451950 () Unit!33430)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64552 (_ BitVec 32) (_ BitVec 32)) Unit!33430)

(assert (=> b!1026982 (= lt!451950 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11219 thiss!1427) (index!40971 lt!451954) (mask!29778 thiss!1427)))))

(declare-datatypes ((List!21903 0))(
  ( (Nil!21900) (Cons!21899 (h!23097 (_ BitVec 64)) (t!30972 List!21903)) )
))
(declare-fun arrayNoDuplicates!0 (array!64552 (_ BitVec 32) List!21903) Bool)

(assert (=> b!1026982 (arrayNoDuplicates!0 lt!451952 #b00000000000000000000000000000000 Nil!21900)))

(declare-fun lt!451949 () Unit!33430)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64552 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21903) Unit!33430)

(assert (=> b!1026982 (= lt!451949 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11219 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40971 lt!451954) #b00000000000000000000000000000000 Nil!21900))))

(declare-fun arrayCountValidKeys!0 (array!64552 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026982 (= (arrayCountValidKeys!0 lt!451952 #b00000000000000000000000000000000 (size!31595 (_keys!11219 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11219 thiss!1427) #b00000000000000000000000000000000 (size!31595 (_keys!11219 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026982 (= lt!451952 (array!64553 (store (arr!31081 (_keys!11219 thiss!1427)) (index!40971 lt!451954) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31595 (_keys!11219 thiss!1427))))))

(declare-fun lt!451951 () Unit!33430)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64552 (_ BitVec 32) (_ BitVec 64)) Unit!33430)

(assert (=> b!1026982 (= lt!451951 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11219 thiss!1427) (index!40971 lt!451954) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1026983 () Bool)

(assert (=> b!1026983 (= e!579533 true)))

(declare-fun lt!451948 () Bool)

(assert (=> b!1026983 (= lt!451948 (arrayNoDuplicates!0 (_keys!11219 thiss!1427) #b00000000000000000000000000000000 Nil!21900))))

(declare-fun b!1026984 () Bool)

(declare-fun res!687518 () Bool)

(assert (=> b!1026984 (=> (not res!687518) (not e!579530))))

(assert (=> b!1026984 (= res!687518 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1026985 () Bool)

(declare-fun res!687515 () Bool)

(assert (=> b!1026985 (=> res!687515 e!579533)))

(assert (=> b!1026985 (= res!687515 (or (not (= (size!31596 (_values!6098 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29778 thiss!1427)))) (not (= (size!31595 (_keys!11219 thiss!1427)) (size!31596 (_values!6098 thiss!1427)))) (bvslt (mask!29778 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5807 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5807 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!37817 () Bool)

(assert (=> mapIsEmpty!37817 mapRes!37817))

(declare-fun b!1026986 () Bool)

(assert (=> b!1026986 (= e!579529 (and e!579532 mapRes!37817))))

(declare-fun condMapEmpty!37817 () Bool)

(declare-fun mapDefault!37817 () ValueCell!11426)

