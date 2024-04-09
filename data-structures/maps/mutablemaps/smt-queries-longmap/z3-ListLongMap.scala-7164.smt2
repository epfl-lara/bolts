; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91378 () Bool)

(assert start!91378)

(declare-fun b!1041425 () Bool)

(declare-fun b_free!21039 () Bool)

(declare-fun b_next!21039 () Bool)

(assert (=> b!1041425 (= b_free!21039 (not b_next!21039))))

(declare-fun tp!74330 () Bool)

(declare-fun b_and!33589 () Bool)

(assert (=> b!1041425 (= tp!74330 b_and!33589)))

(declare-fun b!1041422 () Bool)

(declare-fun e!589820 () Bool)

(declare-fun e!589821 () Bool)

(declare-fun mapRes!38733 () Bool)

(assert (=> b!1041422 (= e!589820 (and e!589821 mapRes!38733))))

(declare-fun condMapEmpty!38733 () Bool)

(declare-datatypes ((V!37885 0))(
  ( (V!37886 (val!12430 Int)) )
))
(declare-datatypes ((ValueCell!11676 0))(
  ( (ValueCellFull!11676 (v!15020 V!37885)) (EmptyCell!11676) )
))
(declare-datatypes ((array!65648 0))(
  ( (array!65649 (arr!31581 (Array (_ BitVec 32) (_ BitVec 64))) (size!32115 (_ BitVec 32))) )
))
(declare-datatypes ((array!65650 0))(
  ( (array!65651 (arr!31582 (Array (_ BitVec 32) ValueCell!11676)) (size!32116 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5946 0))(
  ( (LongMapFixedSize!5947 (defaultEntry!6355 Int) (mask!30379 (_ BitVec 32)) (extraKeys!6083 (_ BitVec 32)) (zeroValue!6189 V!37885) (minValue!6189 V!37885) (_size!3028 (_ BitVec 32)) (_keys!11588 array!65648) (_values!6378 array!65650) (_vacant!3028 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5946)

(declare-fun mapDefault!38733 () ValueCell!11676)

(assert (=> b!1041422 (= condMapEmpty!38733 (= (arr!31582 (_values!6378 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11676)) mapDefault!38733)))))

(declare-fun b!1041423 () Bool)

(declare-fun e!589815 () Bool)

(declare-fun e!589816 () Bool)

(assert (=> b!1041423 (= e!589815 e!589816)))

(declare-fun res!694196 () Bool)

(assert (=> b!1041423 (=> (not res!694196) (not e!589816))))

(declare-datatypes ((SeekEntryResult!9807 0))(
  ( (MissingZero!9807 (index!41598 (_ BitVec 32))) (Found!9807 (index!41599 (_ BitVec 32))) (Intermediate!9807 (undefined!10619 Bool) (index!41600 (_ BitVec 32)) (x!92972 (_ BitVec 32))) (Undefined!9807) (MissingVacant!9807 (index!41601 (_ BitVec 32))) )
))
(declare-fun lt!459006 () SeekEntryResult!9807)

(get-info :version)

(assert (=> b!1041423 (= res!694196 ((_ is Found!9807) lt!459006))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65648 (_ BitVec 32)) SeekEntryResult!9807)

(assert (=> b!1041423 (= lt!459006 (seekEntry!0 key!909 (_keys!11588 thiss!1427) (mask!30379 thiss!1427)))))

(declare-fun b!1041424 () Bool)

(declare-fun tp_is_empty!24759 () Bool)

(assert (=> b!1041424 (= e!589821 tp_is_empty!24759)))

(declare-fun b!1041426 () Bool)

(declare-fun e!589818 () Bool)

(assert (=> b!1041426 (= e!589818 (or (not (= (size!32116 (_values!6378 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30379 thiss!1427)))) (not (= (size!32115 (_keys!11588 thiss!1427)) (size!32116 (_values!6378 thiss!1427)))) (bvsge (mask!30379 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!38733 () Bool)

(declare-fun tp!74329 () Bool)

(declare-fun e!589822 () Bool)

(assert (=> mapNonEmpty!38733 (= mapRes!38733 (and tp!74329 e!589822))))

(declare-fun mapKey!38733 () (_ BitVec 32))

(declare-fun mapValue!38733 () ValueCell!11676)

(declare-fun mapRest!38733 () (Array (_ BitVec 32) ValueCell!11676))

(assert (=> mapNonEmpty!38733 (= (arr!31582 (_values!6378 thiss!1427)) (store mapRest!38733 mapKey!38733 mapValue!38733))))

(declare-fun b!1041427 () Bool)

(assert (=> b!1041427 (= e!589816 (not e!589818))))

(declare-fun res!694198 () Bool)

(assert (=> b!1041427 (=> res!694198 e!589818)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1041427 (= res!694198 (not (validMask!0 (mask!30379 thiss!1427))))))

(declare-fun lt!459008 () array!65648)

(declare-fun arrayContainsKey!0 (array!65648 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1041427 (not (arrayContainsKey!0 lt!459008 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!34030 0))(
  ( (Unit!34031) )
))
(declare-fun lt!459007 () Unit!34030)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65648 (_ BitVec 32) (_ BitVec 64)) Unit!34030)

(assert (=> b!1041427 (= lt!459007 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11588 thiss!1427) (index!41599 lt!459006) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65648 (_ BitVec 32)) Bool)

(assert (=> b!1041427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459008 (mask!30379 thiss!1427))))

(declare-fun lt!459005 () Unit!34030)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65648 (_ BitVec 32) (_ BitVec 32)) Unit!34030)

(assert (=> b!1041427 (= lt!459005 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11588 thiss!1427) (index!41599 lt!459006) (mask!30379 thiss!1427)))))

(declare-datatypes ((List!22091 0))(
  ( (Nil!22088) (Cons!22087 (h!23293 (_ BitVec 64)) (t!31312 List!22091)) )
))
(declare-fun arrayNoDuplicates!0 (array!65648 (_ BitVec 32) List!22091) Bool)

(assert (=> b!1041427 (arrayNoDuplicates!0 lt!459008 #b00000000000000000000000000000000 Nil!22088)))

(declare-fun lt!459004 () Unit!34030)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65648 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22091) Unit!34030)

(assert (=> b!1041427 (= lt!459004 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11588 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41599 lt!459006) #b00000000000000000000000000000000 Nil!22088))))

(declare-fun arrayCountValidKeys!0 (array!65648 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1041427 (= (arrayCountValidKeys!0 lt!459008 #b00000000000000000000000000000000 (size!32115 (_keys!11588 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11588 thiss!1427) #b00000000000000000000000000000000 (size!32115 (_keys!11588 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1041427 (= lt!459008 (array!65649 (store (arr!31581 (_keys!11588 thiss!1427)) (index!41599 lt!459006) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32115 (_keys!11588 thiss!1427))))))

(declare-fun lt!459009 () Unit!34030)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65648 (_ BitVec 32) (_ BitVec 64)) Unit!34030)

(assert (=> b!1041427 (= lt!459009 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11588 thiss!1427) (index!41599 lt!459006) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!38733 () Bool)

(assert (=> mapIsEmpty!38733 mapRes!38733))

(declare-fun b!1041428 () Bool)

(declare-fun res!694195 () Bool)

(assert (=> b!1041428 (=> (not res!694195) (not e!589815))))

(assert (=> b!1041428 (= res!694195 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1041429 () Bool)

(assert (=> b!1041429 (= e!589822 tp_is_empty!24759)))

(declare-fun res!694197 () Bool)

(assert (=> start!91378 (=> (not res!694197) (not e!589815))))

(declare-fun valid!2186 (LongMapFixedSize!5946) Bool)

(assert (=> start!91378 (= res!694197 (valid!2186 thiss!1427))))

(assert (=> start!91378 e!589815))

(declare-fun e!589817 () Bool)

(assert (=> start!91378 e!589817))

(assert (=> start!91378 true))

(declare-fun array_inv!24245 (array!65648) Bool)

(declare-fun array_inv!24246 (array!65650) Bool)

(assert (=> b!1041425 (= e!589817 (and tp!74330 tp_is_empty!24759 (array_inv!24245 (_keys!11588 thiss!1427)) (array_inv!24246 (_values!6378 thiss!1427)) e!589820))))

(assert (= (and start!91378 res!694197) b!1041428))

(assert (= (and b!1041428 res!694195) b!1041423))

(assert (= (and b!1041423 res!694196) b!1041427))

(assert (= (and b!1041427 (not res!694198)) b!1041426))

(assert (= (and b!1041422 condMapEmpty!38733) mapIsEmpty!38733))

(assert (= (and b!1041422 (not condMapEmpty!38733)) mapNonEmpty!38733))

(assert (= (and mapNonEmpty!38733 ((_ is ValueCellFull!11676) mapValue!38733)) b!1041429))

(assert (= (and b!1041422 ((_ is ValueCellFull!11676) mapDefault!38733)) b!1041424))

(assert (= b!1041425 b!1041422))

(assert (= start!91378 b!1041425))

(declare-fun m!960991 () Bool)

(assert (=> b!1041427 m!960991))

(declare-fun m!960993 () Bool)

(assert (=> b!1041427 m!960993))

(declare-fun m!960995 () Bool)

(assert (=> b!1041427 m!960995))

(declare-fun m!960997 () Bool)

(assert (=> b!1041427 m!960997))

(declare-fun m!960999 () Bool)

(assert (=> b!1041427 m!960999))

(declare-fun m!961001 () Bool)

(assert (=> b!1041427 m!961001))

(declare-fun m!961003 () Bool)

(assert (=> b!1041427 m!961003))

(declare-fun m!961005 () Bool)

(assert (=> b!1041427 m!961005))

(declare-fun m!961007 () Bool)

(assert (=> b!1041427 m!961007))

(declare-fun m!961009 () Bool)

(assert (=> b!1041427 m!961009))

(declare-fun m!961011 () Bool)

(assert (=> b!1041427 m!961011))

(declare-fun m!961013 () Bool)

(assert (=> b!1041425 m!961013))

(declare-fun m!961015 () Bool)

(assert (=> b!1041425 m!961015))

(declare-fun m!961017 () Bool)

(assert (=> b!1041423 m!961017))

(declare-fun m!961019 () Bool)

(assert (=> start!91378 m!961019))

(declare-fun m!961021 () Bool)

(assert (=> mapNonEmpty!38733 m!961021))

(check-sat tp_is_empty!24759 (not b_next!21039) (not b!1041427) b_and!33589 (not b!1041425) (not b!1041423) (not mapNonEmpty!38733) (not start!91378))
(check-sat b_and!33589 (not b_next!21039))
(get-model)

(declare-fun d!125841 () Bool)

(declare-fun res!694217 () Bool)

(declare-fun e!589849 () Bool)

(assert (=> d!125841 (=> (not res!694217) (not e!589849))))

(declare-fun simpleValid!437 (LongMapFixedSize!5946) Bool)

(assert (=> d!125841 (= res!694217 (simpleValid!437 thiss!1427))))

(assert (=> d!125841 (= (valid!2186 thiss!1427) e!589849)))

(declare-fun b!1041460 () Bool)

(declare-fun res!694218 () Bool)

(assert (=> b!1041460 (=> (not res!694218) (not e!589849))))

(assert (=> b!1041460 (= res!694218 (= (arrayCountValidKeys!0 (_keys!11588 thiss!1427) #b00000000000000000000000000000000 (size!32115 (_keys!11588 thiss!1427))) (_size!3028 thiss!1427)))))

(declare-fun b!1041461 () Bool)

(declare-fun res!694219 () Bool)

(assert (=> b!1041461 (=> (not res!694219) (not e!589849))))

(assert (=> b!1041461 (= res!694219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11588 thiss!1427) (mask!30379 thiss!1427)))))

(declare-fun b!1041462 () Bool)

(assert (=> b!1041462 (= e!589849 (arrayNoDuplicates!0 (_keys!11588 thiss!1427) #b00000000000000000000000000000000 Nil!22088))))

(assert (= (and d!125841 res!694217) b!1041460))

(assert (= (and b!1041460 res!694218) b!1041461))

(assert (= (and b!1041461 res!694219) b!1041462))

(declare-fun m!961055 () Bool)

(assert (=> d!125841 m!961055))

(assert (=> b!1041460 m!960999))

(declare-fun m!961057 () Bool)

(assert (=> b!1041461 m!961057))

(declare-fun m!961059 () Bool)

(assert (=> b!1041462 m!961059))

(assert (=> start!91378 d!125841))

(declare-fun d!125843 () Bool)

(assert (=> d!125843 (= (array_inv!24245 (_keys!11588 thiss!1427)) (bvsge (size!32115 (_keys!11588 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1041425 d!125843))

(declare-fun d!125845 () Bool)

(assert (=> d!125845 (= (array_inv!24246 (_values!6378 thiss!1427)) (bvsge (size!32116 (_values!6378 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1041425 d!125845))

(declare-fun b!1041475 () Bool)

(declare-fun c!105617 () Bool)

(declare-fun lt!459039 () (_ BitVec 64))

(assert (=> b!1041475 (= c!105617 (= lt!459039 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!589856 () SeekEntryResult!9807)

(declare-fun e!589858 () SeekEntryResult!9807)

(assert (=> b!1041475 (= e!589856 e!589858)))

(declare-fun b!1041476 () Bool)

(declare-fun e!589857 () SeekEntryResult!9807)

(assert (=> b!1041476 (= e!589857 Undefined!9807)))

(declare-fun d!125847 () Bool)

(declare-fun lt!459037 () SeekEntryResult!9807)

(assert (=> d!125847 (and (or ((_ is MissingVacant!9807) lt!459037) (not ((_ is Found!9807) lt!459037)) (and (bvsge (index!41599 lt!459037) #b00000000000000000000000000000000) (bvslt (index!41599 lt!459037) (size!32115 (_keys!11588 thiss!1427))))) (not ((_ is MissingVacant!9807) lt!459037)) (or (not ((_ is Found!9807) lt!459037)) (= (select (arr!31581 (_keys!11588 thiss!1427)) (index!41599 lt!459037)) key!909)))))

(assert (=> d!125847 (= lt!459037 e!589857)))

(declare-fun c!105616 () Bool)

(declare-fun lt!459036 () SeekEntryResult!9807)

(assert (=> d!125847 (= c!105616 (and ((_ is Intermediate!9807) lt!459036) (undefined!10619 lt!459036)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65648 (_ BitVec 32)) SeekEntryResult!9807)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125847 (= lt!459036 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30379 thiss!1427)) key!909 (_keys!11588 thiss!1427) (mask!30379 thiss!1427)))))

(assert (=> d!125847 (validMask!0 (mask!30379 thiss!1427))))

(assert (=> d!125847 (= (seekEntry!0 key!909 (_keys!11588 thiss!1427) (mask!30379 thiss!1427)) lt!459037)))

(declare-fun b!1041477 () Bool)

(assert (=> b!1041477 (= e!589857 e!589856)))

(assert (=> b!1041477 (= lt!459039 (select (arr!31581 (_keys!11588 thiss!1427)) (index!41600 lt!459036)))))

(declare-fun c!105618 () Bool)

(assert (=> b!1041477 (= c!105618 (= lt!459039 key!909))))

(declare-fun b!1041478 () Bool)

(assert (=> b!1041478 (= e!589858 (MissingZero!9807 (index!41600 lt!459036)))))

(declare-fun b!1041479 () Bool)

(declare-fun lt!459038 () SeekEntryResult!9807)

(assert (=> b!1041479 (= e!589858 (ite ((_ is MissingVacant!9807) lt!459038) (MissingZero!9807 (index!41601 lt!459038)) lt!459038))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65648 (_ BitVec 32)) SeekEntryResult!9807)

(assert (=> b!1041479 (= lt!459038 (seekKeyOrZeroReturnVacant!0 (x!92972 lt!459036) (index!41600 lt!459036) (index!41600 lt!459036) key!909 (_keys!11588 thiss!1427) (mask!30379 thiss!1427)))))

(declare-fun b!1041480 () Bool)

(assert (=> b!1041480 (= e!589856 (Found!9807 (index!41600 lt!459036)))))

(assert (= (and d!125847 c!105616) b!1041476))

(assert (= (and d!125847 (not c!105616)) b!1041477))

(assert (= (and b!1041477 c!105618) b!1041480))

(assert (= (and b!1041477 (not c!105618)) b!1041475))

(assert (= (and b!1041475 c!105617) b!1041478))

(assert (= (and b!1041475 (not c!105617)) b!1041479))

(declare-fun m!961061 () Bool)

(assert (=> d!125847 m!961061))

(declare-fun m!961063 () Bool)

(assert (=> d!125847 m!961063))

(assert (=> d!125847 m!961063))

(declare-fun m!961065 () Bool)

(assert (=> d!125847 m!961065))

(assert (=> d!125847 m!961005))

(declare-fun m!961067 () Bool)

(assert (=> b!1041477 m!961067))

(declare-fun m!961069 () Bool)

(assert (=> b!1041479 m!961069))

(assert (=> b!1041423 d!125847))

(declare-fun d!125849 () Bool)

(declare-fun res!694224 () Bool)

(declare-fun e!589863 () Bool)

(assert (=> d!125849 (=> res!694224 e!589863)))

(assert (=> d!125849 (= res!694224 (= (select (arr!31581 lt!459008) #b00000000000000000000000000000000) key!909))))

(assert (=> d!125849 (= (arrayContainsKey!0 lt!459008 key!909 #b00000000000000000000000000000000) e!589863)))

(declare-fun b!1041485 () Bool)

(declare-fun e!589864 () Bool)

(assert (=> b!1041485 (= e!589863 e!589864)))

(declare-fun res!694225 () Bool)

(assert (=> b!1041485 (=> (not res!694225) (not e!589864))))

(assert (=> b!1041485 (= res!694225 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32115 lt!459008)))))

(declare-fun b!1041486 () Bool)

(assert (=> b!1041486 (= e!589864 (arrayContainsKey!0 lt!459008 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!125849 (not res!694224)) b!1041485))

(assert (= (and b!1041485 res!694225) b!1041486))

(declare-fun m!961071 () Bool)

(assert (=> d!125849 m!961071))

(declare-fun m!961073 () Bool)

(assert (=> b!1041486 m!961073))

(assert (=> b!1041427 d!125849))

(declare-fun b!1041495 () Bool)

(declare-fun e!589872 () Bool)

(declare-fun e!589871 () Bool)

(assert (=> b!1041495 (= e!589872 e!589871)))

(declare-fun c!105621 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1041495 (= c!105621 (validKeyInArray!0 (select (arr!31581 lt!459008) #b00000000000000000000000000000000)))))

(declare-fun b!1041496 () Bool)

(declare-fun e!589873 () Bool)

(assert (=> b!1041496 (= e!589871 e!589873)))

(declare-fun lt!459047 () (_ BitVec 64))

(assert (=> b!1041496 (= lt!459047 (select (arr!31581 lt!459008) #b00000000000000000000000000000000))))

(declare-fun lt!459048 () Unit!34030)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65648 (_ BitVec 64) (_ BitVec 32)) Unit!34030)

(assert (=> b!1041496 (= lt!459048 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!459008 lt!459047 #b00000000000000000000000000000000))))

(assert (=> b!1041496 (arrayContainsKey!0 lt!459008 lt!459047 #b00000000000000000000000000000000)))

(declare-fun lt!459046 () Unit!34030)

(assert (=> b!1041496 (= lt!459046 lt!459048)))

(declare-fun res!694230 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65648 (_ BitVec 32)) SeekEntryResult!9807)

(assert (=> b!1041496 (= res!694230 (= (seekEntryOrOpen!0 (select (arr!31581 lt!459008) #b00000000000000000000000000000000) lt!459008 (mask!30379 thiss!1427)) (Found!9807 #b00000000000000000000000000000000)))))

(assert (=> b!1041496 (=> (not res!694230) (not e!589873))))

(declare-fun b!1041497 () Bool)

(declare-fun call!44119 () Bool)

(assert (=> b!1041497 (= e!589871 call!44119)))

(declare-fun b!1041498 () Bool)

(assert (=> b!1041498 (= e!589873 call!44119)))

(declare-fun d!125851 () Bool)

(declare-fun res!694231 () Bool)

(assert (=> d!125851 (=> res!694231 e!589872)))

(assert (=> d!125851 (= res!694231 (bvsge #b00000000000000000000000000000000 (size!32115 lt!459008)))))

(assert (=> d!125851 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459008 (mask!30379 thiss!1427)) e!589872)))

(declare-fun bm!44116 () Bool)

(assert (=> bm!44116 (= call!44119 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!459008 (mask!30379 thiss!1427)))))

(assert (= (and d!125851 (not res!694231)) b!1041495))

(assert (= (and b!1041495 c!105621) b!1041496))

(assert (= (and b!1041495 (not c!105621)) b!1041497))

(assert (= (and b!1041496 res!694230) b!1041498))

(assert (= (or b!1041498 b!1041497) bm!44116))

(assert (=> b!1041495 m!961071))

(assert (=> b!1041495 m!961071))

(declare-fun m!961075 () Bool)

(assert (=> b!1041495 m!961075))

(assert (=> b!1041496 m!961071))

(declare-fun m!961077 () Bool)

(assert (=> b!1041496 m!961077))

(declare-fun m!961079 () Bool)

(assert (=> b!1041496 m!961079))

(assert (=> b!1041496 m!961071))

(declare-fun m!961081 () Bool)

(assert (=> b!1041496 m!961081))

(declare-fun m!961083 () Bool)

(assert (=> bm!44116 m!961083))

(assert (=> b!1041427 d!125851))

(declare-fun d!125853 () Bool)

(declare-fun e!589876 () Bool)

(assert (=> d!125853 e!589876))

(declare-fun res!694234 () Bool)

(assert (=> d!125853 (=> (not res!694234) (not e!589876))))

(assert (=> d!125853 (= res!694234 (bvslt (index!41599 lt!459006) (size!32115 (_keys!11588 thiss!1427))))))

(declare-fun lt!459051 () Unit!34030)

(declare-fun choose!121 (array!65648 (_ BitVec 32) (_ BitVec 64)) Unit!34030)

(assert (=> d!125853 (= lt!459051 (choose!121 (_keys!11588 thiss!1427) (index!41599 lt!459006) key!909))))

(assert (=> d!125853 (bvsge (index!41599 lt!459006) #b00000000000000000000000000000000)))

(assert (=> d!125853 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11588 thiss!1427) (index!41599 lt!459006) key!909) lt!459051)))

(declare-fun b!1041501 () Bool)

(assert (=> b!1041501 (= e!589876 (not (arrayContainsKey!0 (array!65649 (store (arr!31581 (_keys!11588 thiss!1427)) (index!41599 lt!459006) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32115 (_keys!11588 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!125853 res!694234) b!1041501))

(declare-fun m!961085 () Bool)

(assert (=> d!125853 m!961085))

(assert (=> b!1041501 m!961001))

(declare-fun m!961087 () Bool)

(assert (=> b!1041501 m!961087))

(assert (=> b!1041427 d!125853))

(declare-fun b!1041510 () Bool)

(declare-fun e!589881 () (_ BitVec 32))

(declare-fun call!44122 () (_ BitVec 32))

(assert (=> b!1041510 (= e!589881 call!44122)))

(declare-fun b!1041511 () Bool)

(declare-fun e!589882 () (_ BitVec 32))

(assert (=> b!1041511 (= e!589882 #b00000000000000000000000000000000)))

(declare-fun d!125855 () Bool)

(declare-fun lt!459054 () (_ BitVec 32))

(assert (=> d!125855 (and (bvsge lt!459054 #b00000000000000000000000000000000) (bvsle lt!459054 (bvsub (size!32115 (_keys!11588 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!125855 (= lt!459054 e!589882)))

(declare-fun c!105626 () Bool)

(assert (=> d!125855 (= c!105626 (bvsge #b00000000000000000000000000000000 (size!32115 (_keys!11588 thiss!1427))))))

(assert (=> d!125855 (and (bvsle #b00000000000000000000000000000000 (size!32115 (_keys!11588 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32115 (_keys!11588 thiss!1427)) (size!32115 (_keys!11588 thiss!1427))))))

(assert (=> d!125855 (= (arrayCountValidKeys!0 (_keys!11588 thiss!1427) #b00000000000000000000000000000000 (size!32115 (_keys!11588 thiss!1427))) lt!459054)))

(declare-fun b!1041512 () Bool)

(assert (=> b!1041512 (= e!589882 e!589881)))

(declare-fun c!105627 () Bool)

(assert (=> b!1041512 (= c!105627 (validKeyInArray!0 (select (arr!31581 (_keys!11588 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1041513 () Bool)

(assert (=> b!1041513 (= e!589881 (bvadd #b00000000000000000000000000000001 call!44122))))

(declare-fun bm!44119 () Bool)

(assert (=> bm!44119 (= call!44122 (arrayCountValidKeys!0 (_keys!11588 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32115 (_keys!11588 thiss!1427))))))

(assert (= (and d!125855 c!105626) b!1041511))

(assert (= (and d!125855 (not c!105626)) b!1041512))

(assert (= (and b!1041512 c!105627) b!1041513))

(assert (= (and b!1041512 (not c!105627)) b!1041510))

(assert (= (or b!1041513 b!1041510) bm!44119))

(declare-fun m!961089 () Bool)

(assert (=> b!1041512 m!961089))

(assert (=> b!1041512 m!961089))

(declare-fun m!961091 () Bool)

(assert (=> b!1041512 m!961091))

(declare-fun m!961093 () Bool)

(assert (=> bm!44119 m!961093))

(assert (=> b!1041427 d!125855))

(declare-fun d!125857 () Bool)

(declare-fun e!589885 () Bool)

(assert (=> d!125857 e!589885))

(declare-fun res!694237 () Bool)

(assert (=> d!125857 (=> (not res!694237) (not e!589885))))

(assert (=> d!125857 (= res!694237 (and (bvsge (index!41599 lt!459006) #b00000000000000000000000000000000) (bvslt (index!41599 lt!459006) (size!32115 (_keys!11588 thiss!1427)))))))

(declare-fun lt!459057 () Unit!34030)

(declare-fun choose!25 (array!65648 (_ BitVec 32) (_ BitVec 32)) Unit!34030)

(assert (=> d!125857 (= lt!459057 (choose!25 (_keys!11588 thiss!1427) (index!41599 lt!459006) (mask!30379 thiss!1427)))))

(assert (=> d!125857 (validMask!0 (mask!30379 thiss!1427))))

(assert (=> d!125857 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11588 thiss!1427) (index!41599 lt!459006) (mask!30379 thiss!1427)) lt!459057)))

(declare-fun b!1041516 () Bool)

(assert (=> b!1041516 (= e!589885 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65649 (store (arr!31581 (_keys!11588 thiss!1427)) (index!41599 lt!459006) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32115 (_keys!11588 thiss!1427))) (mask!30379 thiss!1427)))))

(assert (= (and d!125857 res!694237) b!1041516))

(declare-fun m!961095 () Bool)

(assert (=> d!125857 m!961095))

(assert (=> d!125857 m!961005))

(assert (=> b!1041516 m!961001))

(declare-fun m!961097 () Bool)

(assert (=> b!1041516 m!961097))

(assert (=> b!1041427 d!125857))

(declare-fun b!1041527 () Bool)

(declare-fun e!589891 () Bool)

(assert (=> b!1041527 (= e!589891 (bvslt (size!32115 (_keys!11588 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1041526 () Bool)

(declare-fun res!694248 () Bool)

(assert (=> b!1041526 (=> (not res!694248) (not e!589891))))

(assert (=> b!1041526 (= res!694248 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!125859 () Bool)

(declare-fun e!589890 () Bool)

(assert (=> d!125859 e!589890))

(declare-fun res!694247 () Bool)

(assert (=> d!125859 (=> (not res!694247) (not e!589890))))

(assert (=> d!125859 (= res!694247 (and (bvsge (index!41599 lt!459006) #b00000000000000000000000000000000) (bvslt (index!41599 lt!459006) (size!32115 (_keys!11588 thiss!1427)))))))

(declare-fun lt!459060 () Unit!34030)

(declare-fun choose!82 (array!65648 (_ BitVec 32) (_ BitVec 64)) Unit!34030)

(assert (=> d!125859 (= lt!459060 (choose!82 (_keys!11588 thiss!1427) (index!41599 lt!459006) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!125859 e!589891))

(declare-fun res!694246 () Bool)

(assert (=> d!125859 (=> (not res!694246) (not e!589891))))

(assert (=> d!125859 (= res!694246 (and (bvsge (index!41599 lt!459006) #b00000000000000000000000000000000) (bvslt (index!41599 lt!459006) (size!32115 (_keys!11588 thiss!1427)))))))

(assert (=> d!125859 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11588 thiss!1427) (index!41599 lt!459006) #b1000000000000000000000000000000000000000000000000000000000000000) lt!459060)))

(declare-fun b!1041525 () Bool)

(declare-fun res!694249 () Bool)

(assert (=> b!1041525 (=> (not res!694249) (not e!589891))))

(assert (=> b!1041525 (= res!694249 (validKeyInArray!0 (select (arr!31581 (_keys!11588 thiss!1427)) (index!41599 lt!459006))))))

(declare-fun b!1041528 () Bool)

(assert (=> b!1041528 (= e!589890 (= (arrayCountValidKeys!0 (array!65649 (store (arr!31581 (_keys!11588 thiss!1427)) (index!41599 lt!459006) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32115 (_keys!11588 thiss!1427))) #b00000000000000000000000000000000 (size!32115 (_keys!11588 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11588 thiss!1427) #b00000000000000000000000000000000 (size!32115 (_keys!11588 thiss!1427))) #b00000000000000000000000000000001)))))

(assert (= (and d!125859 res!694246) b!1041525))

(assert (= (and b!1041525 res!694249) b!1041526))

(assert (= (and b!1041526 res!694248) b!1041527))

(assert (= (and d!125859 res!694247) b!1041528))

(declare-fun m!961099 () Bool)

(assert (=> b!1041526 m!961099))

(declare-fun m!961101 () Bool)

(assert (=> d!125859 m!961101))

(declare-fun m!961103 () Bool)

(assert (=> b!1041525 m!961103))

(assert (=> b!1041525 m!961103))

(declare-fun m!961105 () Bool)

(assert (=> b!1041525 m!961105))

(assert (=> b!1041528 m!961001))

(declare-fun m!961107 () Bool)

(assert (=> b!1041528 m!961107))

(assert (=> b!1041528 m!960999))

(assert (=> b!1041427 d!125859))

(declare-fun d!125861 () Bool)

(assert (=> d!125861 (= (validMask!0 (mask!30379 thiss!1427)) (and (or (= (mask!30379 thiss!1427) #b00000000000000000000000000000111) (= (mask!30379 thiss!1427) #b00000000000000000000000000001111) (= (mask!30379 thiss!1427) #b00000000000000000000000000011111) (= (mask!30379 thiss!1427) #b00000000000000000000000000111111) (= (mask!30379 thiss!1427) #b00000000000000000000000001111111) (= (mask!30379 thiss!1427) #b00000000000000000000000011111111) (= (mask!30379 thiss!1427) #b00000000000000000000000111111111) (= (mask!30379 thiss!1427) #b00000000000000000000001111111111) (= (mask!30379 thiss!1427) #b00000000000000000000011111111111) (= (mask!30379 thiss!1427) #b00000000000000000000111111111111) (= (mask!30379 thiss!1427) #b00000000000000000001111111111111) (= (mask!30379 thiss!1427) #b00000000000000000011111111111111) (= (mask!30379 thiss!1427) #b00000000000000000111111111111111) (= (mask!30379 thiss!1427) #b00000000000000001111111111111111) (= (mask!30379 thiss!1427) #b00000000000000011111111111111111) (= (mask!30379 thiss!1427) #b00000000000000111111111111111111) (= (mask!30379 thiss!1427) #b00000000000001111111111111111111) (= (mask!30379 thiss!1427) #b00000000000011111111111111111111) (= (mask!30379 thiss!1427) #b00000000000111111111111111111111) (= (mask!30379 thiss!1427) #b00000000001111111111111111111111) (= (mask!30379 thiss!1427) #b00000000011111111111111111111111) (= (mask!30379 thiss!1427) #b00000000111111111111111111111111) (= (mask!30379 thiss!1427) #b00000001111111111111111111111111) (= (mask!30379 thiss!1427) #b00000011111111111111111111111111) (= (mask!30379 thiss!1427) #b00000111111111111111111111111111) (= (mask!30379 thiss!1427) #b00001111111111111111111111111111) (= (mask!30379 thiss!1427) #b00011111111111111111111111111111) (= (mask!30379 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30379 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1041427 d!125861))

(declare-fun b!1041539 () Bool)

(declare-fun e!589902 () Bool)

(declare-fun call!44125 () Bool)

(assert (=> b!1041539 (= e!589902 call!44125)))

(declare-fun bm!44122 () Bool)

(declare-fun c!105630 () Bool)

(assert (=> bm!44122 (= call!44125 (arrayNoDuplicates!0 lt!459008 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105630 (Cons!22087 (select (arr!31581 lt!459008) #b00000000000000000000000000000000) Nil!22088) Nil!22088)))))

(declare-fun b!1041541 () Bool)

(declare-fun e!589900 () Bool)

(assert (=> b!1041541 (= e!589900 e!589902)))

(assert (=> b!1041541 (= c!105630 (validKeyInArray!0 (select (arr!31581 lt!459008) #b00000000000000000000000000000000)))))

(declare-fun b!1041542 () Bool)

(declare-fun e!589903 () Bool)

(assert (=> b!1041542 (= e!589903 e!589900)))

(declare-fun res!694257 () Bool)

(assert (=> b!1041542 (=> (not res!694257) (not e!589900))))

(declare-fun e!589901 () Bool)

(assert (=> b!1041542 (= res!694257 (not e!589901))))

(declare-fun res!694258 () Bool)

(assert (=> b!1041542 (=> (not res!694258) (not e!589901))))

(assert (=> b!1041542 (= res!694258 (validKeyInArray!0 (select (arr!31581 lt!459008) #b00000000000000000000000000000000)))))

(declare-fun b!1041543 () Bool)

(declare-fun contains!6077 (List!22091 (_ BitVec 64)) Bool)

(assert (=> b!1041543 (= e!589901 (contains!6077 Nil!22088 (select (arr!31581 lt!459008) #b00000000000000000000000000000000)))))

(declare-fun b!1041540 () Bool)

(assert (=> b!1041540 (= e!589902 call!44125)))

(declare-fun d!125863 () Bool)

(declare-fun res!694256 () Bool)

(assert (=> d!125863 (=> res!694256 e!589903)))

(assert (=> d!125863 (= res!694256 (bvsge #b00000000000000000000000000000000 (size!32115 lt!459008)))))

(assert (=> d!125863 (= (arrayNoDuplicates!0 lt!459008 #b00000000000000000000000000000000 Nil!22088) e!589903)))

(assert (= (and d!125863 (not res!694256)) b!1041542))

(assert (= (and b!1041542 res!694258) b!1041543))

(assert (= (and b!1041542 res!694257) b!1041541))

(assert (= (and b!1041541 c!105630) b!1041539))

(assert (= (and b!1041541 (not c!105630)) b!1041540))

(assert (= (or b!1041539 b!1041540) bm!44122))

(assert (=> bm!44122 m!961071))

(declare-fun m!961109 () Bool)

(assert (=> bm!44122 m!961109))

(assert (=> b!1041541 m!961071))

(assert (=> b!1041541 m!961071))

(assert (=> b!1041541 m!961075))

(assert (=> b!1041542 m!961071))

(assert (=> b!1041542 m!961071))

(assert (=> b!1041542 m!961075))

(assert (=> b!1041543 m!961071))

(assert (=> b!1041543 m!961071))

(declare-fun m!961111 () Bool)

(assert (=> b!1041543 m!961111))

(assert (=> b!1041427 d!125863))

(declare-fun d!125865 () Bool)

(declare-fun e!589906 () Bool)

(assert (=> d!125865 e!589906))

(declare-fun res!694261 () Bool)

(assert (=> d!125865 (=> (not res!694261) (not e!589906))))

(assert (=> d!125865 (= res!694261 (and (bvsge (index!41599 lt!459006) #b00000000000000000000000000000000) (bvslt (index!41599 lt!459006) (size!32115 (_keys!11588 thiss!1427)))))))

(declare-fun lt!459063 () Unit!34030)

(declare-fun choose!53 (array!65648 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22091) Unit!34030)

(assert (=> d!125865 (= lt!459063 (choose!53 (_keys!11588 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41599 lt!459006) #b00000000000000000000000000000000 Nil!22088))))

(assert (=> d!125865 (bvslt (size!32115 (_keys!11588 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!125865 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11588 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41599 lt!459006) #b00000000000000000000000000000000 Nil!22088) lt!459063)))

(declare-fun b!1041546 () Bool)

(assert (=> b!1041546 (= e!589906 (arrayNoDuplicates!0 (array!65649 (store (arr!31581 (_keys!11588 thiss!1427)) (index!41599 lt!459006) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32115 (_keys!11588 thiss!1427))) #b00000000000000000000000000000000 Nil!22088))))

(assert (= (and d!125865 res!694261) b!1041546))

(declare-fun m!961113 () Bool)

(assert (=> d!125865 m!961113))

(assert (=> b!1041546 m!961001))

(declare-fun m!961115 () Bool)

(assert (=> b!1041546 m!961115))

(assert (=> b!1041427 d!125865))

(declare-fun b!1041547 () Bool)

(declare-fun e!589907 () (_ BitVec 32))

(declare-fun call!44126 () (_ BitVec 32))

(assert (=> b!1041547 (= e!589907 call!44126)))

(declare-fun b!1041548 () Bool)

(declare-fun e!589908 () (_ BitVec 32))

(assert (=> b!1041548 (= e!589908 #b00000000000000000000000000000000)))

(declare-fun d!125867 () Bool)

(declare-fun lt!459064 () (_ BitVec 32))

(assert (=> d!125867 (and (bvsge lt!459064 #b00000000000000000000000000000000) (bvsle lt!459064 (bvsub (size!32115 lt!459008) #b00000000000000000000000000000000)))))

(assert (=> d!125867 (= lt!459064 e!589908)))

(declare-fun c!105631 () Bool)

(assert (=> d!125867 (= c!105631 (bvsge #b00000000000000000000000000000000 (size!32115 (_keys!11588 thiss!1427))))))

(assert (=> d!125867 (and (bvsle #b00000000000000000000000000000000 (size!32115 (_keys!11588 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32115 (_keys!11588 thiss!1427)) (size!32115 lt!459008)))))

(assert (=> d!125867 (= (arrayCountValidKeys!0 lt!459008 #b00000000000000000000000000000000 (size!32115 (_keys!11588 thiss!1427))) lt!459064)))

(declare-fun b!1041549 () Bool)

(assert (=> b!1041549 (= e!589908 e!589907)))

(declare-fun c!105632 () Bool)

(assert (=> b!1041549 (= c!105632 (validKeyInArray!0 (select (arr!31581 lt!459008) #b00000000000000000000000000000000)))))

(declare-fun b!1041550 () Bool)

(assert (=> b!1041550 (= e!589907 (bvadd #b00000000000000000000000000000001 call!44126))))

(declare-fun bm!44123 () Bool)

(assert (=> bm!44123 (= call!44126 (arrayCountValidKeys!0 lt!459008 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32115 (_keys!11588 thiss!1427))))))

(assert (= (and d!125867 c!105631) b!1041548))

(assert (= (and d!125867 (not c!105631)) b!1041549))

(assert (= (and b!1041549 c!105632) b!1041550))

(assert (= (and b!1041549 (not c!105632)) b!1041547))

(assert (= (or b!1041550 b!1041547) bm!44123))

(assert (=> b!1041549 m!961071))

(assert (=> b!1041549 m!961071))

(assert (=> b!1041549 m!961075))

(declare-fun m!961117 () Bool)

(assert (=> bm!44123 m!961117))

(assert (=> b!1041427 d!125867))

(declare-fun condMapEmpty!38739 () Bool)

(declare-fun mapDefault!38739 () ValueCell!11676)

(assert (=> mapNonEmpty!38733 (= condMapEmpty!38739 (= mapRest!38733 ((as const (Array (_ BitVec 32) ValueCell!11676)) mapDefault!38739)))))

(declare-fun e!589914 () Bool)

(declare-fun mapRes!38739 () Bool)

(assert (=> mapNonEmpty!38733 (= tp!74329 (and e!589914 mapRes!38739))))

(declare-fun b!1041557 () Bool)

(declare-fun e!589913 () Bool)

(assert (=> b!1041557 (= e!589913 tp_is_empty!24759)))

(declare-fun b!1041558 () Bool)

(assert (=> b!1041558 (= e!589914 tp_is_empty!24759)))

(declare-fun mapNonEmpty!38739 () Bool)

(declare-fun tp!74339 () Bool)

(assert (=> mapNonEmpty!38739 (= mapRes!38739 (and tp!74339 e!589913))))

(declare-fun mapValue!38739 () ValueCell!11676)

(declare-fun mapKey!38739 () (_ BitVec 32))

(declare-fun mapRest!38739 () (Array (_ BitVec 32) ValueCell!11676))

(assert (=> mapNonEmpty!38739 (= mapRest!38733 (store mapRest!38739 mapKey!38739 mapValue!38739))))

(declare-fun mapIsEmpty!38739 () Bool)

(assert (=> mapIsEmpty!38739 mapRes!38739))

(assert (= (and mapNonEmpty!38733 condMapEmpty!38739) mapIsEmpty!38739))

(assert (= (and mapNonEmpty!38733 (not condMapEmpty!38739)) mapNonEmpty!38739))

(assert (= (and mapNonEmpty!38739 ((_ is ValueCellFull!11676) mapValue!38739)) b!1041557))

(assert (= (and mapNonEmpty!38733 ((_ is ValueCellFull!11676) mapDefault!38739)) b!1041558))

(declare-fun m!961119 () Bool)

(assert (=> mapNonEmpty!38739 m!961119))

(check-sat (not b!1041496) tp_is_empty!24759 (not b_next!21039) (not d!125841) (not b!1041543) (not b!1041486) (not b!1041549) (not b!1041461) (not b!1041462) (not d!125857) (not b!1041460) (not b!1041526) (not b!1041542) b_and!33589 (not b!1041546) (not bm!44119) (not b!1041516) (not d!125859) (not b!1041501) (not d!125853) (not b!1041479) (not d!125865) (not b!1041541) (not bm!44122) (not b!1041495) (not b!1041512) (not mapNonEmpty!38739) (not bm!44116) (not b!1041525) (not b!1041528) (not d!125847) (not bm!44123))
(check-sat b_and!33589 (not b_next!21039))
