; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89536 () Bool)

(assert start!89536)

(declare-fun b!1026379 () Bool)

(declare-fun b_free!20499 () Bool)

(declare-fun b_next!20499 () Bool)

(assert (=> b!1026379 (= b_free!20499 (not b_next!20499))))

(declare-fun tp!72544 () Bool)

(declare-fun b_and!32763 () Bool)

(assert (=> b!1026379 (= tp!72544 b_and!32763)))

(declare-fun b!1026377 () Bool)

(declare-fun e!579055 () Bool)

(declare-fun tp_is_empty!24219 () Bool)

(assert (=> b!1026377 (= e!579055 tp_is_empty!24219)))

(declare-fun b!1026378 () Bool)

(declare-fun res!687158 () Bool)

(declare-fun e!579053 () Bool)

(assert (=> b!1026378 (=> (not res!687158) (not e!579053))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1026378 (= res!687158 (not (= key!909 (bvneg key!909))))))

(declare-datatypes ((V!37165 0))(
  ( (V!37166 (val!12160 Int)) )
))
(declare-datatypes ((ValueCell!11406 0))(
  ( (ValueCellFull!11406 (v!14730 V!37165)) (EmptyCell!11406) )
))
(declare-datatypes ((array!64472 0))(
  ( (array!64473 (arr!31041 (Array (_ BitVec 32) (_ BitVec 64))) (size!31555 (_ BitVec 32))) )
))
(declare-datatypes ((array!64474 0))(
  ( (array!64475 (arr!31042 (Array (_ BitVec 32) ValueCell!11406)) (size!31556 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5406 0))(
  ( (LongMapFixedSize!5407 (defaultEntry!6055 Int) (mask!29744 (_ BitVec 32)) (extraKeys!5787 (_ BitVec 32)) (zeroValue!5891 V!37165) (minValue!5891 V!37165) (_size!2758 (_ BitVec 32)) (_keys!11199 array!64472) (_values!6078 array!64474) (_vacant!2758 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5406)

(declare-fun e!579052 () Bool)

(declare-fun e!579049 () Bool)

(declare-fun array_inv!23887 (array!64472) Bool)

(declare-fun array_inv!23888 (array!64474) Bool)

(assert (=> b!1026379 (= e!579049 (and tp!72544 tp_is_empty!24219 (array_inv!23887 (_keys!11199 thiss!1427)) (array_inv!23888 (_values!6078 thiss!1427)) e!579052))))

(declare-fun b!1026380 () Bool)

(declare-fun res!687155 () Bool)

(declare-fun e!579054 () Bool)

(assert (=> b!1026380 (=> res!687155 e!579054)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64472 (_ BitVec 32)) Bool)

(assert (=> b!1026380 (= res!687155 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11199 thiss!1427) (mask!29744 thiss!1427))))))

(declare-fun b!1026381 () Bool)

(declare-fun e!579051 () Bool)

(assert (=> b!1026381 (= e!579051 tp_is_empty!24219)))

(declare-fun b!1026383 () Bool)

(declare-fun e!579050 () Bool)

(assert (=> b!1026383 (= e!579050 (not e!579054))))

(declare-fun res!687159 () Bool)

(assert (=> b!1026383 (=> res!687159 e!579054)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1026383 (= res!687159 (not (validMask!0 (mask!29744 thiss!1427))))))

(declare-fun lt!451534 () array!64472)

(declare-fun arrayContainsKey!0 (array!64472 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1026383 (not (arrayContainsKey!0 lt!451534 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33400 0))(
  ( (Unit!33401) )
))
(declare-fun lt!451528 () Unit!33400)

(declare-datatypes ((SeekEntryResult!9634 0))(
  ( (MissingZero!9634 (index!40906 (_ BitVec 32))) (Found!9634 (index!40907 (_ BitVec 32))) (Intermediate!9634 (undefined!10446 Bool) (index!40908 (_ BitVec 32)) (x!91291 (_ BitVec 32))) (Undefined!9634) (MissingVacant!9634 (index!40909 (_ BitVec 32))) )
))
(declare-fun lt!451529 () SeekEntryResult!9634)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64472 (_ BitVec 32) (_ BitVec 64)) Unit!33400)

(assert (=> b!1026383 (= lt!451528 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11199 thiss!1427) (index!40907 lt!451529) key!909))))

(assert (=> b!1026383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451534 (mask!29744 thiss!1427))))

(declare-fun lt!451533 () Unit!33400)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64472 (_ BitVec 32) (_ BitVec 32)) Unit!33400)

(assert (=> b!1026383 (= lt!451533 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11199 thiss!1427) (index!40907 lt!451529) (mask!29744 thiss!1427)))))

(declare-datatypes ((List!21885 0))(
  ( (Nil!21882) (Cons!21881 (h!23079 (_ BitVec 64)) (t!30954 List!21885)) )
))
(declare-fun arrayNoDuplicates!0 (array!64472 (_ BitVec 32) List!21885) Bool)

(assert (=> b!1026383 (arrayNoDuplicates!0 lt!451534 #b00000000000000000000000000000000 Nil!21882)))

(declare-fun lt!451532 () Unit!33400)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64472 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21885) Unit!33400)

(assert (=> b!1026383 (= lt!451532 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11199 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40907 lt!451529) #b00000000000000000000000000000000 Nil!21882))))

(declare-fun arrayCountValidKeys!0 (array!64472 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026383 (= (arrayCountValidKeys!0 lt!451534 #b00000000000000000000000000000000 (size!31555 (_keys!11199 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11199 thiss!1427) #b00000000000000000000000000000000 (size!31555 (_keys!11199 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026383 (= lt!451534 (array!64473 (store (arr!31041 (_keys!11199 thiss!1427)) (index!40907 lt!451529) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31555 (_keys!11199 thiss!1427))))))

(declare-fun lt!451531 () Unit!33400)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64472 (_ BitVec 32) (_ BitVec 64)) Unit!33400)

(assert (=> b!1026383 (= lt!451531 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11199 thiss!1427) (index!40907 lt!451529) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1026384 () Bool)

(assert (=> b!1026384 (= e!579054 true)))

(declare-fun lt!451530 () Bool)

(assert (=> b!1026384 (= lt!451530 (arrayNoDuplicates!0 (_keys!11199 thiss!1427) #b00000000000000000000000000000000 Nil!21882))))

(declare-fun mapNonEmpty!37757 () Bool)

(declare-fun mapRes!37757 () Bool)

(declare-fun tp!72543 () Bool)

(assert (=> mapNonEmpty!37757 (= mapRes!37757 (and tp!72543 e!579055))))

(declare-fun mapRest!37757 () (Array (_ BitVec 32) ValueCell!11406))

(declare-fun mapValue!37757 () ValueCell!11406)

(declare-fun mapKey!37757 () (_ BitVec 32))

(assert (=> mapNonEmpty!37757 (= (arr!31042 (_values!6078 thiss!1427)) (store mapRest!37757 mapKey!37757 mapValue!37757))))

(declare-fun b!1026385 () Bool)

(assert (=> b!1026385 (= e!579053 e!579050)))

(declare-fun res!687156 () Bool)

(assert (=> b!1026385 (=> (not res!687156) (not e!579050))))

(get-info :version)

(assert (=> b!1026385 (= res!687156 ((_ is Found!9634) lt!451529))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64472 (_ BitVec 32)) SeekEntryResult!9634)

(assert (=> b!1026385 (= lt!451529 (seekEntry!0 key!909 (_keys!11199 thiss!1427) (mask!29744 thiss!1427)))))

(declare-fun res!687154 () Bool)

(assert (=> start!89536 (=> (not res!687154) (not e!579053))))

(declare-fun valid!2004 (LongMapFixedSize!5406) Bool)

(assert (=> start!89536 (= res!687154 (valid!2004 thiss!1427))))

(assert (=> start!89536 e!579053))

(assert (=> start!89536 e!579049))

(assert (=> start!89536 true))

(declare-fun b!1026382 () Bool)

(assert (=> b!1026382 (= e!579052 (and e!579051 mapRes!37757))))

(declare-fun condMapEmpty!37757 () Bool)

(declare-fun mapDefault!37757 () ValueCell!11406)

(assert (=> b!1026382 (= condMapEmpty!37757 (= (arr!31042 (_values!6078 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11406)) mapDefault!37757)))))

(declare-fun b!1026386 () Bool)

(declare-fun res!687157 () Bool)

(assert (=> b!1026386 (=> res!687157 e!579054)))

(assert (=> b!1026386 (= res!687157 (or (not (= (size!31556 (_values!6078 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29744 thiss!1427)))) (not (= (size!31555 (_keys!11199 thiss!1427)) (size!31556 (_values!6078 thiss!1427)))) (bvslt (mask!29744 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5787 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5787 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!37757 () Bool)

(assert (=> mapIsEmpty!37757 mapRes!37757))

(assert (= (and start!89536 res!687154) b!1026378))

(assert (= (and b!1026378 res!687158) b!1026385))

(assert (= (and b!1026385 res!687156) b!1026383))

(assert (= (and b!1026383 (not res!687159)) b!1026386))

(assert (= (and b!1026386 (not res!687157)) b!1026380))

(assert (= (and b!1026380 (not res!687155)) b!1026384))

(assert (= (and b!1026382 condMapEmpty!37757) mapIsEmpty!37757))

(assert (= (and b!1026382 (not condMapEmpty!37757)) mapNonEmpty!37757))

(assert (= (and mapNonEmpty!37757 ((_ is ValueCellFull!11406) mapValue!37757)) b!1026377))

(assert (= (and b!1026382 ((_ is ValueCellFull!11406) mapDefault!37757)) b!1026381))

(assert (= b!1026379 b!1026382))

(assert (= start!89536 b!1026379))

(declare-fun m!944779 () Bool)

(assert (=> start!89536 m!944779))

(declare-fun m!944781 () Bool)

(assert (=> b!1026383 m!944781))

(declare-fun m!944783 () Bool)

(assert (=> b!1026383 m!944783))

(declare-fun m!944785 () Bool)

(assert (=> b!1026383 m!944785))

(declare-fun m!944787 () Bool)

(assert (=> b!1026383 m!944787))

(declare-fun m!944789 () Bool)

(assert (=> b!1026383 m!944789))

(declare-fun m!944791 () Bool)

(assert (=> b!1026383 m!944791))

(declare-fun m!944793 () Bool)

(assert (=> b!1026383 m!944793))

(declare-fun m!944795 () Bool)

(assert (=> b!1026383 m!944795))

(declare-fun m!944797 () Bool)

(assert (=> b!1026383 m!944797))

(declare-fun m!944799 () Bool)

(assert (=> b!1026383 m!944799))

(declare-fun m!944801 () Bool)

(assert (=> b!1026383 m!944801))

(declare-fun m!944803 () Bool)

(assert (=> mapNonEmpty!37757 m!944803))

(declare-fun m!944805 () Bool)

(assert (=> b!1026384 m!944805))

(declare-fun m!944807 () Bool)

(assert (=> b!1026385 m!944807))

(declare-fun m!944809 () Bool)

(assert (=> b!1026380 m!944809))

(declare-fun m!944811 () Bool)

(assert (=> b!1026379 m!944811))

(declare-fun m!944813 () Bool)

(assert (=> b!1026379 m!944813))

(check-sat tp_is_empty!24219 (not mapNonEmpty!37757) (not b_next!20499) (not b!1026384) (not b!1026383) (not b!1026380) (not b!1026379) b_and!32763 (not start!89536) (not b!1026385))
(check-sat b_and!32763 (not b_next!20499))
