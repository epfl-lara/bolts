; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89566 () Bool)

(assert start!89566)

(declare-fun b!1026833 () Bool)

(declare-fun b_free!20529 () Bool)

(declare-fun b_next!20529 () Bool)

(assert (=> b!1026833 (= b_free!20529 (not b_next!20529))))

(declare-fun tp!72634 () Bool)

(declare-fun b_and!32793 () Bool)

(assert (=> b!1026833 (= tp!72634 b_and!32793)))

(declare-fun b!1026827 () Bool)

(declare-fun e!579415 () Bool)

(declare-fun tp_is_empty!24249 () Bool)

(assert (=> b!1026827 (= e!579415 tp_is_empty!24249)))

(declare-fun b!1026828 () Bool)

(declare-fun res!687428 () Bool)

(declare-fun e!579414 () Bool)

(assert (=> b!1026828 (=> (not res!687428) (not e!579414))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1026828 (= res!687428 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1026829 () Bool)

(declare-fun e!579409 () Bool)

(declare-fun e!579416 () Bool)

(assert (=> b!1026829 (= e!579409 (not e!579416))))

(declare-fun res!687424 () Bool)

(assert (=> b!1026829 (=> res!687424 e!579416)))

(declare-datatypes ((V!37205 0))(
  ( (V!37206 (val!12175 Int)) )
))
(declare-datatypes ((ValueCell!11421 0))(
  ( (ValueCellFull!11421 (v!14745 V!37205)) (EmptyCell!11421) )
))
(declare-datatypes ((array!64532 0))(
  ( (array!64533 (arr!31071 (Array (_ BitVec 32) (_ BitVec 64))) (size!31585 (_ BitVec 32))) )
))
(declare-datatypes ((array!64534 0))(
  ( (array!64535 (arr!31072 (Array (_ BitVec 32) ValueCell!11421)) (size!31586 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5436 0))(
  ( (LongMapFixedSize!5437 (defaultEntry!6070 Int) (mask!29769 (_ BitVec 32)) (extraKeys!5802 (_ BitVec 32)) (zeroValue!5906 V!37205) (minValue!5906 V!37205) (_size!2773 (_ BitVec 32)) (_keys!11214 array!64532) (_values!6093 array!64534) (_vacant!2773 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5436)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1026829 (= res!687424 (not (validMask!0 (mask!29769 thiss!1427))))))

(declare-fun lt!451846 () array!64532)

(declare-fun arrayContainsKey!0 (array!64532 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1026829 (not (arrayContainsKey!0 lt!451846 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33422 0))(
  ( (Unit!33423) )
))
(declare-fun lt!451845 () Unit!33422)

(declare-datatypes ((SeekEntryResult!9646 0))(
  ( (MissingZero!9646 (index!40954 (_ BitVec 32))) (Found!9646 (index!40955 (_ BitVec 32))) (Intermediate!9646 (undefined!10458 Bool) (index!40956 (_ BitVec 32)) (x!91343 (_ BitVec 32))) (Undefined!9646) (MissingVacant!9646 (index!40957 (_ BitVec 32))) )
))
(declare-fun lt!451843 () SeekEntryResult!9646)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64532 (_ BitVec 32) (_ BitVec 64)) Unit!33422)

(assert (=> b!1026829 (= lt!451845 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11214 thiss!1427) (index!40955 lt!451843) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64532 (_ BitVec 32)) Bool)

(assert (=> b!1026829 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451846 (mask!29769 thiss!1427))))

(declare-fun lt!451844 () Unit!33422)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64532 (_ BitVec 32) (_ BitVec 32)) Unit!33422)

(assert (=> b!1026829 (= lt!451844 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11214 thiss!1427) (index!40955 lt!451843) (mask!29769 thiss!1427)))))

(declare-datatypes ((List!21898 0))(
  ( (Nil!21895) (Cons!21894 (h!23092 (_ BitVec 64)) (t!30967 List!21898)) )
))
(declare-fun arrayNoDuplicates!0 (array!64532 (_ BitVec 32) List!21898) Bool)

(assert (=> b!1026829 (arrayNoDuplicates!0 lt!451846 #b00000000000000000000000000000000 Nil!21895)))

(declare-fun lt!451847 () Unit!33422)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64532 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21898) Unit!33422)

(assert (=> b!1026829 (= lt!451847 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11214 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40955 lt!451843) #b00000000000000000000000000000000 Nil!21895))))

(declare-fun arrayCountValidKeys!0 (array!64532 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026829 (= (arrayCountValidKeys!0 lt!451846 #b00000000000000000000000000000000 (size!31585 (_keys!11214 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11214 thiss!1427) #b00000000000000000000000000000000 (size!31585 (_keys!11214 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026829 (= lt!451846 (array!64533 (store (arr!31071 (_keys!11214 thiss!1427)) (index!40955 lt!451843) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31585 (_keys!11214 thiss!1427))))))

(declare-fun lt!451849 () Unit!33422)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64532 (_ BitVec 32) (_ BitVec 64)) Unit!33422)

(assert (=> b!1026829 (= lt!451849 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11214 thiss!1427) (index!40955 lt!451843) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!37802 () Bool)

(declare-fun mapRes!37802 () Bool)

(assert (=> mapIsEmpty!37802 mapRes!37802))

(declare-fun b!1026830 () Bool)

(declare-fun res!687429 () Bool)

(assert (=> b!1026830 (=> res!687429 e!579416)))

(assert (=> b!1026830 (= res!687429 (or (not (= (size!31586 (_values!6093 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29769 thiss!1427)))) (not (= (size!31585 (_keys!11214 thiss!1427)) (size!31586 (_values!6093 thiss!1427)))) (bvslt (mask!29769 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5802 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5802 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!37802 () Bool)

(declare-fun tp!72633 () Bool)

(declare-fun e!579412 () Bool)

(assert (=> mapNonEmpty!37802 (= mapRes!37802 (and tp!72633 e!579412))))

(declare-fun mapRest!37802 () (Array (_ BitVec 32) ValueCell!11421))

(declare-fun mapKey!37802 () (_ BitVec 32))

(declare-fun mapValue!37802 () ValueCell!11421)

(assert (=> mapNonEmpty!37802 (= (arr!31072 (_values!6093 thiss!1427)) (store mapRest!37802 mapKey!37802 mapValue!37802))))

(declare-fun b!1026831 () Bool)

(declare-fun e!579411 () Bool)

(assert (=> b!1026831 (= e!579411 (and e!579415 mapRes!37802))))

(declare-fun condMapEmpty!37802 () Bool)

(declare-fun mapDefault!37802 () ValueCell!11421)

(assert (=> b!1026831 (= condMapEmpty!37802 (= (arr!31072 (_values!6093 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11421)) mapDefault!37802)))))

(declare-fun e!579410 () Bool)

(declare-fun array_inv!23909 (array!64532) Bool)

(declare-fun array_inv!23910 (array!64534) Bool)

(assert (=> b!1026833 (= e!579410 (and tp!72634 tp_is_empty!24249 (array_inv!23909 (_keys!11214 thiss!1427)) (array_inv!23910 (_values!6093 thiss!1427)) e!579411))))

(declare-fun b!1026834 () Bool)

(assert (=> b!1026834 (= e!579412 tp_is_empty!24249)))

(declare-fun b!1026835 () Bool)

(declare-fun res!687427 () Bool)

(assert (=> b!1026835 (=> res!687427 e!579416)))

(assert (=> b!1026835 (= res!687427 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11214 thiss!1427) (mask!29769 thiss!1427))))))

(declare-fun b!1026836 () Bool)

(assert (=> b!1026836 (= e!579416 true)))

(declare-fun lt!451848 () Bool)

(assert (=> b!1026836 (= lt!451848 (arrayNoDuplicates!0 (_keys!11214 thiss!1427) #b00000000000000000000000000000000 Nil!21895))))

(declare-fun res!687426 () Bool)

(assert (=> start!89566 (=> (not res!687426) (not e!579414))))

(declare-fun valid!2017 (LongMapFixedSize!5436) Bool)

(assert (=> start!89566 (= res!687426 (valid!2017 thiss!1427))))

(assert (=> start!89566 e!579414))

(assert (=> start!89566 e!579410))

(assert (=> start!89566 true))

(declare-fun b!1026832 () Bool)

(assert (=> b!1026832 (= e!579414 e!579409)))

(declare-fun res!687425 () Bool)

(assert (=> b!1026832 (=> (not res!687425) (not e!579409))))

(get-info :version)

(assert (=> b!1026832 (= res!687425 ((_ is Found!9646) lt!451843))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64532 (_ BitVec 32)) SeekEntryResult!9646)

(assert (=> b!1026832 (= lt!451843 (seekEntry!0 key!909 (_keys!11214 thiss!1427) (mask!29769 thiss!1427)))))

(assert (= (and start!89566 res!687426) b!1026828))

(assert (= (and b!1026828 res!687428) b!1026832))

(assert (= (and b!1026832 res!687425) b!1026829))

(assert (= (and b!1026829 (not res!687424)) b!1026830))

(assert (= (and b!1026830 (not res!687429)) b!1026835))

(assert (= (and b!1026835 (not res!687427)) b!1026836))

(assert (= (and b!1026831 condMapEmpty!37802) mapIsEmpty!37802))

(assert (= (and b!1026831 (not condMapEmpty!37802)) mapNonEmpty!37802))

(assert (= (and mapNonEmpty!37802 ((_ is ValueCellFull!11421) mapValue!37802)) b!1026834))

(assert (= (and b!1026831 ((_ is ValueCellFull!11421) mapDefault!37802)) b!1026827))

(assert (= b!1026833 b!1026831))

(assert (= start!89566 b!1026833))

(declare-fun m!945319 () Bool)

(assert (=> b!1026832 m!945319))

(declare-fun m!945321 () Bool)

(assert (=> b!1026836 m!945321))

(declare-fun m!945323 () Bool)

(assert (=> b!1026835 m!945323))

(declare-fun m!945325 () Bool)

(assert (=> b!1026829 m!945325))

(declare-fun m!945327 () Bool)

(assert (=> b!1026829 m!945327))

(declare-fun m!945329 () Bool)

(assert (=> b!1026829 m!945329))

(declare-fun m!945331 () Bool)

(assert (=> b!1026829 m!945331))

(declare-fun m!945333 () Bool)

(assert (=> b!1026829 m!945333))

(declare-fun m!945335 () Bool)

(assert (=> b!1026829 m!945335))

(declare-fun m!945337 () Bool)

(assert (=> b!1026829 m!945337))

(declare-fun m!945339 () Bool)

(assert (=> b!1026829 m!945339))

(declare-fun m!945341 () Bool)

(assert (=> b!1026829 m!945341))

(declare-fun m!945343 () Bool)

(assert (=> b!1026829 m!945343))

(declare-fun m!945345 () Bool)

(assert (=> b!1026829 m!945345))

(declare-fun m!945347 () Bool)

(assert (=> start!89566 m!945347))

(declare-fun m!945349 () Bool)

(assert (=> mapNonEmpty!37802 m!945349))

(declare-fun m!945351 () Bool)

(assert (=> b!1026833 m!945351))

(declare-fun m!945353 () Bool)

(assert (=> b!1026833 m!945353))

(check-sat tp_is_empty!24249 (not b!1026833) (not b!1026836) (not mapNonEmpty!37802) (not b!1026832) (not start!89566) (not b!1026829) (not b_next!20529) b_and!32793 (not b!1026835))
(check-sat b_and!32793 (not b_next!20529))
