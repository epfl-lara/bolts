; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91586 () Bool)

(assert start!91586)

(declare-fun b!1042624 () Bool)

(declare-fun b_free!21069 () Bool)

(declare-fun b_next!21069 () Bool)

(assert (=> b!1042624 (= b_free!21069 (not b_next!21069))))

(declare-fun tp!74437 () Bool)

(declare-fun b_and!33619 () Bool)

(assert (=> b!1042624 (= tp!74437 b_and!33619)))

(declare-fun res!694783 () Bool)

(declare-fun e!590686 () Bool)

(assert (=> start!91586 (=> (not res!694783) (not e!590686))))

(declare-datatypes ((V!37925 0))(
  ( (V!37926 (val!12445 Int)) )
))
(declare-datatypes ((ValueCell!11691 0))(
  ( (ValueCellFull!11691 (v!15037 V!37925)) (EmptyCell!11691) )
))
(declare-datatypes ((array!65718 0))(
  ( (array!65719 (arr!31611 (Array (_ BitVec 32) (_ BitVec 64))) (size!32147 (_ BitVec 32))) )
))
(declare-datatypes ((array!65720 0))(
  ( (array!65721 (arr!31612 (Array (_ BitVec 32) ValueCell!11691)) (size!32148 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5976 0))(
  ( (LongMapFixedSize!5977 (defaultEntry!6370 Int) (mask!30434 (_ BitVec 32)) (extraKeys!6098 (_ BitVec 32)) (zeroValue!6204 V!37925) (minValue!6204 V!37925) (_size!3043 (_ BitVec 32)) (_keys!11619 array!65718) (_values!6393 array!65720) (_vacant!3043 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5976)

(declare-fun valid!2196 (LongMapFixedSize!5976) Bool)

(assert (=> start!91586 (= res!694783 (valid!2196 thiss!1427))))

(assert (=> start!91586 e!590686))

(declare-fun e!590682 () Bool)

(assert (=> start!91586 e!590682))

(assert (=> start!91586 true))

(declare-fun mapNonEmpty!38795 () Bool)

(declare-fun mapRes!38795 () Bool)

(declare-fun tp!74436 () Bool)

(declare-fun e!590679 () Bool)

(assert (=> mapNonEmpty!38795 (= mapRes!38795 (and tp!74436 e!590679))))

(declare-fun mapValue!38795 () ValueCell!11691)

(declare-fun mapKey!38795 () (_ BitVec 32))

(declare-fun mapRest!38795 () (Array (_ BitVec 32) ValueCell!11691))

(assert (=> mapNonEmpty!38795 (= (arr!31612 (_values!6393 thiss!1427)) (store mapRest!38795 mapKey!38795 mapValue!38795))))

(declare-fun b!1042618 () Bool)

(declare-fun res!694782 () Bool)

(assert (=> b!1042618 (=> (not res!694782) (not e!590686))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1042618 (= res!694782 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1042619 () Bool)

(declare-fun e!590681 () Bool)

(declare-fun e!590685 () Bool)

(assert (=> b!1042619 (= e!590681 (and e!590685 mapRes!38795))))

(declare-fun condMapEmpty!38795 () Bool)

(declare-fun mapDefault!38795 () ValueCell!11691)

(assert (=> b!1042619 (= condMapEmpty!38795 (= (arr!31612 (_values!6393 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11691)) mapDefault!38795)))))

(declare-fun b!1042620 () Bool)

(declare-fun res!694778 () Bool)

(declare-fun e!590684 () Bool)

(assert (=> b!1042620 (=> res!694778 e!590684)))

(assert (=> b!1042620 (= res!694778 (or (not (= (size!32148 (_values!6393 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30434 thiss!1427)))) (not (= (size!32147 (_keys!11619 thiss!1427)) (size!32148 (_values!6393 thiss!1427)))) (bvslt (mask!30434 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!6098 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!6098 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1042621 () Bool)

(declare-fun e!590683 () Bool)

(assert (=> b!1042621 (= e!590683 (not e!590684))))

(declare-fun res!694779 () Bool)

(assert (=> b!1042621 (=> res!694779 e!590684)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1042621 (= res!694779 (not (validMask!0 (mask!30434 thiss!1427))))))

(declare-fun lt!459556 () array!65718)

(declare-fun arrayContainsKey!0 (array!65718 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1042621 (not (arrayContainsKey!0 lt!459556 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!9820 0))(
  ( (MissingZero!9820 (index!41650 (_ BitVec 32))) (Found!9820 (index!41651 (_ BitVec 32))) (Intermediate!9820 (undefined!10632 Bool) (index!41652 (_ BitVec 32)) (x!93083 (_ BitVec 32))) (Undefined!9820) (MissingVacant!9820 (index!41653 (_ BitVec 32))) )
))
(declare-fun lt!459557 () SeekEntryResult!9820)

(declare-datatypes ((Unit!34054 0))(
  ( (Unit!34055) )
))
(declare-fun lt!459558 () Unit!34054)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65718 (_ BitVec 32) (_ BitVec 64)) Unit!34054)

(assert (=> b!1042621 (= lt!459558 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11619 thiss!1427) (index!41651 lt!459557) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65718 (_ BitVec 32)) Bool)

(assert (=> b!1042621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459556 (mask!30434 thiss!1427))))

(declare-fun lt!459560 () Unit!34054)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65718 (_ BitVec 32) (_ BitVec 32)) Unit!34054)

(assert (=> b!1042621 (= lt!459560 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11619 thiss!1427) (index!41651 lt!459557) (mask!30434 thiss!1427)))))

(declare-datatypes ((List!22104 0))(
  ( (Nil!22101) (Cons!22100 (h!23308 (_ BitVec 64)) (t!31325 List!22104)) )
))
(declare-fun arrayNoDuplicates!0 (array!65718 (_ BitVec 32) List!22104) Bool)

(assert (=> b!1042621 (arrayNoDuplicates!0 lt!459556 #b00000000000000000000000000000000 Nil!22101)))

(declare-fun lt!459555 () Unit!34054)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65718 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22104) Unit!34054)

(assert (=> b!1042621 (= lt!459555 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11619 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41651 lt!459557) #b00000000000000000000000000000000 Nil!22101))))

(declare-fun arrayCountValidKeys!0 (array!65718 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1042621 (= (arrayCountValidKeys!0 lt!459556 #b00000000000000000000000000000000 (size!32147 (_keys!11619 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11619 thiss!1427) #b00000000000000000000000000000000 (size!32147 (_keys!11619 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1042621 (= lt!459556 (array!65719 (store (arr!31611 (_keys!11619 thiss!1427)) (index!41651 lt!459557) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32147 (_keys!11619 thiss!1427))))))

(declare-fun lt!459559 () Unit!34054)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65718 (_ BitVec 32) (_ BitVec 64)) Unit!34054)

(assert (=> b!1042621 (= lt!459559 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11619 thiss!1427) (index!41651 lt!459557) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1042622 () Bool)

(declare-fun tp_is_empty!24789 () Bool)

(assert (=> b!1042622 (= e!590679 tp_is_empty!24789)))

(declare-fun b!1042623 () Bool)

(assert (=> b!1042623 (= e!590686 e!590683)))

(declare-fun res!694781 () Bool)

(assert (=> b!1042623 (=> (not res!694781) (not e!590683))))

(get-info :version)

(assert (=> b!1042623 (= res!694781 ((_ is Found!9820) lt!459557))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65718 (_ BitVec 32)) SeekEntryResult!9820)

(assert (=> b!1042623 (= lt!459557 (seekEntry!0 key!909 (_keys!11619 thiss!1427) (mask!30434 thiss!1427)))))

(declare-fun array_inv!24267 (array!65718) Bool)

(declare-fun array_inv!24268 (array!65720) Bool)

(assert (=> b!1042624 (= e!590682 (and tp!74437 tp_is_empty!24789 (array_inv!24267 (_keys!11619 thiss!1427)) (array_inv!24268 (_values!6393 thiss!1427)) e!590681))))

(declare-fun mapIsEmpty!38795 () Bool)

(assert (=> mapIsEmpty!38795 mapRes!38795))

(declare-fun b!1042625 () Bool)

(assert (=> b!1042625 (= e!590684 (and (bvsge (index!41651 lt!459557) #b00000000000000000000000000000000) (bvslt (index!41651 lt!459557) (size!32147 (_keys!11619 thiss!1427)))))))

(declare-fun b!1042626 () Bool)

(declare-fun res!694780 () Bool)

(assert (=> b!1042626 (=> res!694780 e!590684)))

(assert (=> b!1042626 (= res!694780 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11619 thiss!1427) (mask!30434 thiss!1427))))))

(declare-fun b!1042627 () Bool)

(assert (=> b!1042627 (= e!590685 tp_is_empty!24789)))

(declare-fun b!1042628 () Bool)

(declare-fun res!694777 () Bool)

(assert (=> b!1042628 (=> res!694777 e!590684)))

(assert (=> b!1042628 (= res!694777 (not (arrayNoDuplicates!0 (_keys!11619 thiss!1427) #b00000000000000000000000000000000 Nil!22101)))))

(assert (= (and start!91586 res!694783) b!1042618))

(assert (= (and b!1042618 res!694782) b!1042623))

(assert (= (and b!1042623 res!694781) b!1042621))

(assert (= (and b!1042621 (not res!694779)) b!1042620))

(assert (= (and b!1042620 (not res!694778)) b!1042626))

(assert (= (and b!1042626 (not res!694780)) b!1042628))

(assert (= (and b!1042628 (not res!694777)) b!1042625))

(assert (= (and b!1042619 condMapEmpty!38795) mapIsEmpty!38795))

(assert (= (and b!1042619 (not condMapEmpty!38795)) mapNonEmpty!38795))

(assert (= (and mapNonEmpty!38795 ((_ is ValueCellFull!11691) mapValue!38795)) b!1042622))

(assert (= (and b!1042619 ((_ is ValueCellFull!11691) mapDefault!38795)) b!1042627))

(assert (= b!1042624 b!1042619))

(assert (= start!91586 b!1042624))

(declare-fun m!962041 () Bool)

(assert (=> start!91586 m!962041))

(declare-fun m!962043 () Bool)

(assert (=> b!1042626 m!962043))

(declare-fun m!962045 () Bool)

(assert (=> b!1042621 m!962045))

(declare-fun m!962047 () Bool)

(assert (=> b!1042621 m!962047))

(declare-fun m!962049 () Bool)

(assert (=> b!1042621 m!962049))

(declare-fun m!962051 () Bool)

(assert (=> b!1042621 m!962051))

(declare-fun m!962053 () Bool)

(assert (=> b!1042621 m!962053))

(declare-fun m!962055 () Bool)

(assert (=> b!1042621 m!962055))

(declare-fun m!962057 () Bool)

(assert (=> b!1042621 m!962057))

(declare-fun m!962059 () Bool)

(assert (=> b!1042621 m!962059))

(declare-fun m!962061 () Bool)

(assert (=> b!1042621 m!962061))

(declare-fun m!962063 () Bool)

(assert (=> b!1042621 m!962063))

(declare-fun m!962065 () Bool)

(assert (=> b!1042621 m!962065))

(declare-fun m!962067 () Bool)

(assert (=> b!1042624 m!962067))

(declare-fun m!962069 () Bool)

(assert (=> b!1042624 m!962069))

(declare-fun m!962071 () Bool)

(assert (=> mapNonEmpty!38795 m!962071))

(declare-fun m!962073 () Bool)

(assert (=> b!1042628 m!962073))

(declare-fun m!962075 () Bool)

(assert (=> b!1042623 m!962075))

(check-sat (not mapNonEmpty!38795) (not b_next!21069) (not start!91586) (not b!1042623) tp_is_empty!24789 (not b!1042628) (not b!1042621) (not b!1042624) (not b!1042626) b_and!33619)
(check-sat b_and!33619 (not b_next!21069))
(get-model)

(declare-fun d!126105 () Bool)

(declare-fun e!590713 () Bool)

(assert (=> d!126105 e!590713))

(declare-fun res!694807 () Bool)

(assert (=> d!126105 (=> (not res!694807) (not e!590713))))

(assert (=> d!126105 (= res!694807 (and (bvsge (index!41651 lt!459557) #b00000000000000000000000000000000) (bvslt (index!41651 lt!459557) (size!32147 (_keys!11619 thiss!1427)))))))

(declare-fun lt!459581 () Unit!34054)

(declare-fun choose!25 (array!65718 (_ BitVec 32) (_ BitVec 32)) Unit!34054)

(assert (=> d!126105 (= lt!459581 (choose!25 (_keys!11619 thiss!1427) (index!41651 lt!459557) (mask!30434 thiss!1427)))))

(assert (=> d!126105 (validMask!0 (mask!30434 thiss!1427))))

(assert (=> d!126105 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11619 thiss!1427) (index!41651 lt!459557) (mask!30434 thiss!1427)) lt!459581)))

(declare-fun b!1042664 () Bool)

(assert (=> b!1042664 (= e!590713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65719 (store (arr!31611 (_keys!11619 thiss!1427)) (index!41651 lt!459557) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32147 (_keys!11619 thiss!1427))) (mask!30434 thiss!1427)))))

(assert (= (and d!126105 res!694807) b!1042664))

(declare-fun m!962113 () Bool)

(assert (=> d!126105 m!962113))

(assert (=> d!126105 m!962049))

(assert (=> b!1042664 m!962061))

(declare-fun m!962115 () Bool)

(assert (=> b!1042664 m!962115))

(assert (=> b!1042621 d!126105))

(declare-fun b!1042675 () Bool)

(declare-fun e!590724 () Bool)

(declare-fun contains!6082 (List!22104 (_ BitVec 64)) Bool)

(assert (=> b!1042675 (= e!590724 (contains!6082 Nil!22101 (select (arr!31611 lt!459556) #b00000000000000000000000000000000)))))

(declare-fun d!126107 () Bool)

(declare-fun res!694815 () Bool)

(declare-fun e!590722 () Bool)

(assert (=> d!126107 (=> res!694815 e!590722)))

(assert (=> d!126107 (= res!694815 (bvsge #b00000000000000000000000000000000 (size!32147 lt!459556)))))

(assert (=> d!126107 (= (arrayNoDuplicates!0 lt!459556 #b00000000000000000000000000000000 Nil!22101) e!590722)))

(declare-fun bm!44187 () Bool)

(declare-fun call!44190 () Bool)

(declare-fun c!105808 () Bool)

(assert (=> bm!44187 (= call!44190 (arrayNoDuplicates!0 lt!459556 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105808 (Cons!22100 (select (arr!31611 lt!459556) #b00000000000000000000000000000000) Nil!22101) Nil!22101)))))

(declare-fun b!1042676 () Bool)

(declare-fun e!590723 () Bool)

(declare-fun e!590725 () Bool)

(assert (=> b!1042676 (= e!590723 e!590725)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1042676 (= c!105808 (validKeyInArray!0 (select (arr!31611 lt!459556) #b00000000000000000000000000000000)))))

(declare-fun b!1042677 () Bool)

(assert (=> b!1042677 (= e!590725 call!44190)))

(declare-fun b!1042678 () Bool)

(assert (=> b!1042678 (= e!590725 call!44190)))

(declare-fun b!1042679 () Bool)

(assert (=> b!1042679 (= e!590722 e!590723)))

(declare-fun res!694814 () Bool)

(assert (=> b!1042679 (=> (not res!694814) (not e!590723))))

(assert (=> b!1042679 (= res!694814 (not e!590724))))

(declare-fun res!694816 () Bool)

(assert (=> b!1042679 (=> (not res!694816) (not e!590724))))

(assert (=> b!1042679 (= res!694816 (validKeyInArray!0 (select (arr!31611 lt!459556) #b00000000000000000000000000000000)))))

(assert (= (and d!126107 (not res!694815)) b!1042679))

(assert (= (and b!1042679 res!694816) b!1042675))

(assert (= (and b!1042679 res!694814) b!1042676))

(assert (= (and b!1042676 c!105808) b!1042677))

(assert (= (and b!1042676 (not c!105808)) b!1042678))

(assert (= (or b!1042677 b!1042678) bm!44187))

(declare-fun m!962117 () Bool)

(assert (=> b!1042675 m!962117))

(assert (=> b!1042675 m!962117))

(declare-fun m!962119 () Bool)

(assert (=> b!1042675 m!962119))

(assert (=> bm!44187 m!962117))

(declare-fun m!962121 () Bool)

(assert (=> bm!44187 m!962121))

(assert (=> b!1042676 m!962117))

(assert (=> b!1042676 m!962117))

(declare-fun m!962123 () Bool)

(assert (=> b!1042676 m!962123))

(assert (=> b!1042679 m!962117))

(assert (=> b!1042679 m!962117))

(assert (=> b!1042679 m!962123))

(assert (=> b!1042621 d!126107))

(declare-fun d!126109 () Bool)

(declare-fun res!694821 () Bool)

(declare-fun e!590730 () Bool)

(assert (=> d!126109 (=> res!694821 e!590730)))

(assert (=> d!126109 (= res!694821 (= (select (arr!31611 lt!459556) #b00000000000000000000000000000000) key!909))))

(assert (=> d!126109 (= (arrayContainsKey!0 lt!459556 key!909 #b00000000000000000000000000000000) e!590730)))

(declare-fun b!1042684 () Bool)

(declare-fun e!590731 () Bool)

(assert (=> b!1042684 (= e!590730 e!590731)))

(declare-fun res!694822 () Bool)

(assert (=> b!1042684 (=> (not res!694822) (not e!590731))))

(assert (=> b!1042684 (= res!694822 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32147 lt!459556)))))

(declare-fun b!1042685 () Bool)

(assert (=> b!1042685 (= e!590731 (arrayContainsKey!0 lt!459556 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!126109 (not res!694821)) b!1042684))

(assert (= (and b!1042684 res!694822) b!1042685))

(assert (=> d!126109 m!962117))

(declare-fun m!962125 () Bool)

(assert (=> b!1042685 m!962125))

(assert (=> b!1042621 d!126109))

(declare-fun d!126111 () Bool)

(assert (=> d!126111 (= (validMask!0 (mask!30434 thiss!1427)) (and (or (= (mask!30434 thiss!1427) #b00000000000000000000000000000111) (= (mask!30434 thiss!1427) #b00000000000000000000000000001111) (= (mask!30434 thiss!1427) #b00000000000000000000000000011111) (= (mask!30434 thiss!1427) #b00000000000000000000000000111111) (= (mask!30434 thiss!1427) #b00000000000000000000000001111111) (= (mask!30434 thiss!1427) #b00000000000000000000000011111111) (= (mask!30434 thiss!1427) #b00000000000000000000000111111111) (= (mask!30434 thiss!1427) #b00000000000000000000001111111111) (= (mask!30434 thiss!1427) #b00000000000000000000011111111111) (= (mask!30434 thiss!1427) #b00000000000000000000111111111111) (= (mask!30434 thiss!1427) #b00000000000000000001111111111111) (= (mask!30434 thiss!1427) #b00000000000000000011111111111111) (= (mask!30434 thiss!1427) #b00000000000000000111111111111111) (= (mask!30434 thiss!1427) #b00000000000000001111111111111111) (= (mask!30434 thiss!1427) #b00000000000000011111111111111111) (= (mask!30434 thiss!1427) #b00000000000000111111111111111111) (= (mask!30434 thiss!1427) #b00000000000001111111111111111111) (= (mask!30434 thiss!1427) #b00000000000011111111111111111111) (= (mask!30434 thiss!1427) #b00000000000111111111111111111111) (= (mask!30434 thiss!1427) #b00000000001111111111111111111111) (= (mask!30434 thiss!1427) #b00000000011111111111111111111111) (= (mask!30434 thiss!1427) #b00000000111111111111111111111111) (= (mask!30434 thiss!1427) #b00000001111111111111111111111111) (= (mask!30434 thiss!1427) #b00000011111111111111111111111111) (= (mask!30434 thiss!1427) #b00000111111111111111111111111111) (= (mask!30434 thiss!1427) #b00001111111111111111111111111111) (= (mask!30434 thiss!1427) #b00011111111111111111111111111111) (= (mask!30434 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30434 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1042621 d!126111))

(declare-fun b!1042696 () Bool)

(declare-fun e!590737 () Bool)

(assert (=> b!1042696 (= e!590737 (bvslt (size!32147 (_keys!11619 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1042694 () Bool)

(declare-fun res!694833 () Bool)

(assert (=> b!1042694 (=> (not res!694833) (not e!590737))))

(assert (=> b!1042694 (= res!694833 (validKeyInArray!0 (select (arr!31611 (_keys!11619 thiss!1427)) (index!41651 lt!459557))))))

(declare-fun b!1042695 () Bool)

(declare-fun res!694832 () Bool)

(assert (=> b!1042695 (=> (not res!694832) (not e!590737))))

(assert (=> b!1042695 (= res!694832 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!126113 () Bool)

(declare-fun e!590736 () Bool)

(assert (=> d!126113 e!590736))

(declare-fun res!694834 () Bool)

(assert (=> d!126113 (=> (not res!694834) (not e!590736))))

(assert (=> d!126113 (= res!694834 (and (bvsge (index!41651 lt!459557) #b00000000000000000000000000000000) (bvslt (index!41651 lt!459557) (size!32147 (_keys!11619 thiss!1427)))))))

(declare-fun lt!459584 () Unit!34054)

(declare-fun choose!82 (array!65718 (_ BitVec 32) (_ BitVec 64)) Unit!34054)

(assert (=> d!126113 (= lt!459584 (choose!82 (_keys!11619 thiss!1427) (index!41651 lt!459557) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!126113 e!590737))

(declare-fun res!694831 () Bool)

(assert (=> d!126113 (=> (not res!694831) (not e!590737))))

(assert (=> d!126113 (= res!694831 (and (bvsge (index!41651 lt!459557) #b00000000000000000000000000000000) (bvslt (index!41651 lt!459557) (size!32147 (_keys!11619 thiss!1427)))))))

(assert (=> d!126113 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11619 thiss!1427) (index!41651 lt!459557) #b1000000000000000000000000000000000000000000000000000000000000000) lt!459584)))

(declare-fun b!1042697 () Bool)

(assert (=> b!1042697 (= e!590736 (= (arrayCountValidKeys!0 (array!65719 (store (arr!31611 (_keys!11619 thiss!1427)) (index!41651 lt!459557) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32147 (_keys!11619 thiss!1427))) #b00000000000000000000000000000000 (size!32147 (_keys!11619 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11619 thiss!1427) #b00000000000000000000000000000000 (size!32147 (_keys!11619 thiss!1427))) #b00000000000000000000000000000001)))))

(assert (= (and d!126113 res!694831) b!1042694))

(assert (= (and b!1042694 res!694833) b!1042695))

(assert (= (and b!1042695 res!694832) b!1042696))

(assert (= (and d!126113 res!694834) b!1042697))

(declare-fun m!962127 () Bool)

(assert (=> b!1042694 m!962127))

(assert (=> b!1042694 m!962127))

(declare-fun m!962129 () Bool)

(assert (=> b!1042694 m!962129))

(declare-fun m!962131 () Bool)

(assert (=> b!1042695 m!962131))

(declare-fun m!962133 () Bool)

(assert (=> d!126113 m!962133))

(assert (=> b!1042697 m!962061))

(declare-fun m!962135 () Bool)

(assert (=> b!1042697 m!962135))

(assert (=> b!1042697 m!962053))

(assert (=> b!1042621 d!126113))

(declare-fun b!1042706 () Bool)

(declare-fun e!590744 () Bool)

(declare-fun e!590746 () Bool)

(assert (=> b!1042706 (= e!590744 e!590746)))

(declare-fun lt!459593 () (_ BitVec 64))

(assert (=> b!1042706 (= lt!459593 (select (arr!31611 lt!459556) #b00000000000000000000000000000000))))

(declare-fun lt!459591 () Unit!34054)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65718 (_ BitVec 64) (_ BitVec 32)) Unit!34054)

(assert (=> b!1042706 (= lt!459591 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!459556 lt!459593 #b00000000000000000000000000000000))))

(assert (=> b!1042706 (arrayContainsKey!0 lt!459556 lt!459593 #b00000000000000000000000000000000)))

(declare-fun lt!459592 () Unit!34054)

(assert (=> b!1042706 (= lt!459592 lt!459591)))

(declare-fun res!694840 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65718 (_ BitVec 32)) SeekEntryResult!9820)

(assert (=> b!1042706 (= res!694840 (= (seekEntryOrOpen!0 (select (arr!31611 lt!459556) #b00000000000000000000000000000000) lt!459556 (mask!30434 thiss!1427)) (Found!9820 #b00000000000000000000000000000000)))))

(assert (=> b!1042706 (=> (not res!694840) (not e!590746))))

(declare-fun b!1042707 () Bool)

(declare-fun call!44193 () Bool)

(assert (=> b!1042707 (= e!590746 call!44193)))

(declare-fun d!126115 () Bool)

(declare-fun res!694839 () Bool)

(declare-fun e!590745 () Bool)

(assert (=> d!126115 (=> res!694839 e!590745)))

(assert (=> d!126115 (= res!694839 (bvsge #b00000000000000000000000000000000 (size!32147 lt!459556)))))

(assert (=> d!126115 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459556 (mask!30434 thiss!1427)) e!590745)))

(declare-fun b!1042708 () Bool)

(assert (=> b!1042708 (= e!590744 call!44193)))

(declare-fun b!1042709 () Bool)

(assert (=> b!1042709 (= e!590745 e!590744)))

(declare-fun c!105811 () Bool)

(assert (=> b!1042709 (= c!105811 (validKeyInArray!0 (select (arr!31611 lt!459556) #b00000000000000000000000000000000)))))

(declare-fun bm!44190 () Bool)

(assert (=> bm!44190 (= call!44193 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!459556 (mask!30434 thiss!1427)))))

(assert (= (and d!126115 (not res!694839)) b!1042709))

(assert (= (and b!1042709 c!105811) b!1042706))

(assert (= (and b!1042709 (not c!105811)) b!1042708))

(assert (= (and b!1042706 res!694840) b!1042707))

(assert (= (or b!1042707 b!1042708) bm!44190))

(assert (=> b!1042706 m!962117))

(declare-fun m!962137 () Bool)

(assert (=> b!1042706 m!962137))

(declare-fun m!962139 () Bool)

(assert (=> b!1042706 m!962139))

(assert (=> b!1042706 m!962117))

(declare-fun m!962141 () Bool)

(assert (=> b!1042706 m!962141))

(assert (=> b!1042709 m!962117))

(assert (=> b!1042709 m!962117))

(assert (=> b!1042709 m!962123))

(declare-fun m!962143 () Bool)

(assert (=> bm!44190 m!962143))

(assert (=> b!1042621 d!126115))

(declare-fun b!1042718 () Bool)

(declare-fun e!590752 () (_ BitVec 32))

(declare-fun call!44196 () (_ BitVec 32))

(assert (=> b!1042718 (= e!590752 call!44196)))

(declare-fun b!1042719 () Bool)

(declare-fun e!590751 () (_ BitVec 32))

(assert (=> b!1042719 (= e!590751 #b00000000000000000000000000000000)))

(declare-fun d!126117 () Bool)

(declare-fun lt!459596 () (_ BitVec 32))

(assert (=> d!126117 (and (bvsge lt!459596 #b00000000000000000000000000000000) (bvsle lt!459596 (bvsub (size!32147 (_keys!11619 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!126117 (= lt!459596 e!590751)))

(declare-fun c!105816 () Bool)

(assert (=> d!126117 (= c!105816 (bvsge #b00000000000000000000000000000000 (size!32147 (_keys!11619 thiss!1427))))))

(assert (=> d!126117 (and (bvsle #b00000000000000000000000000000000 (size!32147 (_keys!11619 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32147 (_keys!11619 thiss!1427)) (size!32147 (_keys!11619 thiss!1427))))))

(assert (=> d!126117 (= (arrayCountValidKeys!0 (_keys!11619 thiss!1427) #b00000000000000000000000000000000 (size!32147 (_keys!11619 thiss!1427))) lt!459596)))

(declare-fun b!1042720 () Bool)

(assert (=> b!1042720 (= e!590751 e!590752)))

(declare-fun c!105817 () Bool)

(assert (=> b!1042720 (= c!105817 (validKeyInArray!0 (select (arr!31611 (_keys!11619 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!44193 () Bool)

(assert (=> bm!44193 (= call!44196 (arrayCountValidKeys!0 (_keys!11619 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32147 (_keys!11619 thiss!1427))))))

(declare-fun b!1042721 () Bool)

(assert (=> b!1042721 (= e!590752 (bvadd #b00000000000000000000000000000001 call!44196))))

(assert (= (and d!126117 c!105816) b!1042719))

(assert (= (and d!126117 (not c!105816)) b!1042720))

(assert (= (and b!1042720 c!105817) b!1042721))

(assert (= (and b!1042720 (not c!105817)) b!1042718))

(assert (= (or b!1042721 b!1042718) bm!44193))

(declare-fun m!962145 () Bool)

(assert (=> b!1042720 m!962145))

(assert (=> b!1042720 m!962145))

(declare-fun m!962147 () Bool)

(assert (=> b!1042720 m!962147))

(declare-fun m!962149 () Bool)

(assert (=> bm!44193 m!962149))

(assert (=> b!1042621 d!126117))

(declare-fun b!1042722 () Bool)

(declare-fun e!590754 () (_ BitVec 32))

(declare-fun call!44197 () (_ BitVec 32))

(assert (=> b!1042722 (= e!590754 call!44197)))

(declare-fun b!1042723 () Bool)

(declare-fun e!590753 () (_ BitVec 32))

(assert (=> b!1042723 (= e!590753 #b00000000000000000000000000000000)))

(declare-fun d!126119 () Bool)

(declare-fun lt!459597 () (_ BitVec 32))

(assert (=> d!126119 (and (bvsge lt!459597 #b00000000000000000000000000000000) (bvsle lt!459597 (bvsub (size!32147 lt!459556) #b00000000000000000000000000000000)))))

(assert (=> d!126119 (= lt!459597 e!590753)))

(declare-fun c!105818 () Bool)

(assert (=> d!126119 (= c!105818 (bvsge #b00000000000000000000000000000000 (size!32147 (_keys!11619 thiss!1427))))))

(assert (=> d!126119 (and (bvsle #b00000000000000000000000000000000 (size!32147 (_keys!11619 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32147 (_keys!11619 thiss!1427)) (size!32147 lt!459556)))))

(assert (=> d!126119 (= (arrayCountValidKeys!0 lt!459556 #b00000000000000000000000000000000 (size!32147 (_keys!11619 thiss!1427))) lt!459597)))

(declare-fun b!1042724 () Bool)

(assert (=> b!1042724 (= e!590753 e!590754)))

(declare-fun c!105819 () Bool)

(assert (=> b!1042724 (= c!105819 (validKeyInArray!0 (select (arr!31611 lt!459556) #b00000000000000000000000000000000)))))

(declare-fun bm!44194 () Bool)

(assert (=> bm!44194 (= call!44197 (arrayCountValidKeys!0 lt!459556 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32147 (_keys!11619 thiss!1427))))))

(declare-fun b!1042725 () Bool)

(assert (=> b!1042725 (= e!590754 (bvadd #b00000000000000000000000000000001 call!44197))))

(assert (= (and d!126119 c!105818) b!1042723))

(assert (= (and d!126119 (not c!105818)) b!1042724))

(assert (= (and b!1042724 c!105819) b!1042725))

(assert (= (and b!1042724 (not c!105819)) b!1042722))

(assert (= (or b!1042725 b!1042722) bm!44194))

(assert (=> b!1042724 m!962117))

(assert (=> b!1042724 m!962117))

(assert (=> b!1042724 m!962123))

(declare-fun m!962151 () Bool)

(assert (=> bm!44194 m!962151))

(assert (=> b!1042621 d!126119))

(declare-fun d!126121 () Bool)

(declare-fun e!590757 () Bool)

(assert (=> d!126121 e!590757))

(declare-fun res!694843 () Bool)

(assert (=> d!126121 (=> (not res!694843) (not e!590757))))

(assert (=> d!126121 (= res!694843 (and (bvsge (index!41651 lt!459557) #b00000000000000000000000000000000) (bvslt (index!41651 lt!459557) (size!32147 (_keys!11619 thiss!1427)))))))

(declare-fun lt!459600 () Unit!34054)

(declare-fun choose!53 (array!65718 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22104) Unit!34054)

(assert (=> d!126121 (= lt!459600 (choose!53 (_keys!11619 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41651 lt!459557) #b00000000000000000000000000000000 Nil!22101))))

(assert (=> d!126121 (bvslt (size!32147 (_keys!11619 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!126121 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11619 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41651 lt!459557) #b00000000000000000000000000000000 Nil!22101) lt!459600)))

(declare-fun b!1042728 () Bool)

(assert (=> b!1042728 (= e!590757 (arrayNoDuplicates!0 (array!65719 (store (arr!31611 (_keys!11619 thiss!1427)) (index!41651 lt!459557) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32147 (_keys!11619 thiss!1427))) #b00000000000000000000000000000000 Nil!22101))))

(assert (= (and d!126121 res!694843) b!1042728))

(declare-fun m!962153 () Bool)

(assert (=> d!126121 m!962153))

(assert (=> b!1042728 m!962061))

(declare-fun m!962155 () Bool)

(assert (=> b!1042728 m!962155))

(assert (=> b!1042621 d!126121))

(declare-fun d!126123 () Bool)

(declare-fun e!590760 () Bool)

(assert (=> d!126123 e!590760))

(declare-fun res!694846 () Bool)

(assert (=> d!126123 (=> (not res!694846) (not e!590760))))

(assert (=> d!126123 (= res!694846 (bvslt (index!41651 lt!459557) (size!32147 (_keys!11619 thiss!1427))))))

(declare-fun lt!459603 () Unit!34054)

(declare-fun choose!121 (array!65718 (_ BitVec 32) (_ BitVec 64)) Unit!34054)

(assert (=> d!126123 (= lt!459603 (choose!121 (_keys!11619 thiss!1427) (index!41651 lt!459557) key!909))))

(assert (=> d!126123 (bvsge (index!41651 lt!459557) #b00000000000000000000000000000000)))

(assert (=> d!126123 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11619 thiss!1427) (index!41651 lt!459557) key!909) lt!459603)))

(declare-fun b!1042731 () Bool)

(assert (=> b!1042731 (= e!590760 (not (arrayContainsKey!0 (array!65719 (store (arr!31611 (_keys!11619 thiss!1427)) (index!41651 lt!459557) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32147 (_keys!11619 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!126123 res!694846) b!1042731))

(declare-fun m!962157 () Bool)

(assert (=> d!126123 m!962157))

(assert (=> b!1042731 m!962061))

(declare-fun m!962159 () Bool)

(assert (=> b!1042731 m!962159))

(assert (=> b!1042621 d!126123))

(declare-fun b!1042732 () Bool)

(declare-fun e!590763 () Bool)

(assert (=> b!1042732 (= e!590763 (contains!6082 Nil!22101 (select (arr!31611 (_keys!11619 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!126125 () Bool)

(declare-fun res!694848 () Bool)

(declare-fun e!590761 () Bool)

(assert (=> d!126125 (=> res!694848 e!590761)))

(assert (=> d!126125 (= res!694848 (bvsge #b00000000000000000000000000000000 (size!32147 (_keys!11619 thiss!1427))))))

(assert (=> d!126125 (= (arrayNoDuplicates!0 (_keys!11619 thiss!1427) #b00000000000000000000000000000000 Nil!22101) e!590761)))

(declare-fun bm!44195 () Bool)

(declare-fun call!44198 () Bool)

(declare-fun c!105820 () Bool)

(assert (=> bm!44195 (= call!44198 (arrayNoDuplicates!0 (_keys!11619 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105820 (Cons!22100 (select (arr!31611 (_keys!11619 thiss!1427)) #b00000000000000000000000000000000) Nil!22101) Nil!22101)))))

(declare-fun b!1042733 () Bool)

(declare-fun e!590762 () Bool)

(declare-fun e!590764 () Bool)

(assert (=> b!1042733 (= e!590762 e!590764)))

(assert (=> b!1042733 (= c!105820 (validKeyInArray!0 (select (arr!31611 (_keys!11619 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1042734 () Bool)

(assert (=> b!1042734 (= e!590764 call!44198)))

(declare-fun b!1042735 () Bool)

(assert (=> b!1042735 (= e!590764 call!44198)))

(declare-fun b!1042736 () Bool)

(assert (=> b!1042736 (= e!590761 e!590762)))

(declare-fun res!694847 () Bool)

(assert (=> b!1042736 (=> (not res!694847) (not e!590762))))

(assert (=> b!1042736 (= res!694847 (not e!590763))))

(declare-fun res!694849 () Bool)

(assert (=> b!1042736 (=> (not res!694849) (not e!590763))))

(assert (=> b!1042736 (= res!694849 (validKeyInArray!0 (select (arr!31611 (_keys!11619 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!126125 (not res!694848)) b!1042736))

(assert (= (and b!1042736 res!694849) b!1042732))

(assert (= (and b!1042736 res!694847) b!1042733))

(assert (= (and b!1042733 c!105820) b!1042734))

(assert (= (and b!1042733 (not c!105820)) b!1042735))

(assert (= (or b!1042734 b!1042735) bm!44195))

(assert (=> b!1042732 m!962145))

(assert (=> b!1042732 m!962145))

(declare-fun m!962161 () Bool)

(assert (=> b!1042732 m!962161))

(assert (=> bm!44195 m!962145))

(declare-fun m!962163 () Bool)

(assert (=> bm!44195 m!962163))

(assert (=> b!1042733 m!962145))

(assert (=> b!1042733 m!962145))

(assert (=> b!1042733 m!962147))

(assert (=> b!1042736 m!962145))

(assert (=> b!1042736 m!962145))

(assert (=> b!1042736 m!962147))

(assert (=> b!1042628 d!126125))

(declare-fun d!126127 () Bool)

(declare-fun res!694856 () Bool)

(declare-fun e!590767 () Bool)

(assert (=> d!126127 (=> (not res!694856) (not e!590767))))

(declare-fun simpleValid!442 (LongMapFixedSize!5976) Bool)

(assert (=> d!126127 (= res!694856 (simpleValid!442 thiss!1427))))

(assert (=> d!126127 (= (valid!2196 thiss!1427) e!590767)))

(declare-fun b!1042743 () Bool)

(declare-fun res!694857 () Bool)

(assert (=> b!1042743 (=> (not res!694857) (not e!590767))))

(assert (=> b!1042743 (= res!694857 (= (arrayCountValidKeys!0 (_keys!11619 thiss!1427) #b00000000000000000000000000000000 (size!32147 (_keys!11619 thiss!1427))) (_size!3043 thiss!1427)))))

(declare-fun b!1042744 () Bool)

(declare-fun res!694858 () Bool)

(assert (=> b!1042744 (=> (not res!694858) (not e!590767))))

(assert (=> b!1042744 (= res!694858 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11619 thiss!1427) (mask!30434 thiss!1427)))))

(declare-fun b!1042745 () Bool)

(assert (=> b!1042745 (= e!590767 (arrayNoDuplicates!0 (_keys!11619 thiss!1427) #b00000000000000000000000000000000 Nil!22101))))

(assert (= (and d!126127 res!694856) b!1042743))

(assert (= (and b!1042743 res!694857) b!1042744))

(assert (= (and b!1042744 res!694858) b!1042745))

(declare-fun m!962165 () Bool)

(assert (=> d!126127 m!962165))

(assert (=> b!1042743 m!962053))

(assert (=> b!1042744 m!962043))

(assert (=> b!1042745 m!962073))

(assert (=> start!91586 d!126127))

(declare-fun d!126129 () Bool)

(assert (=> d!126129 (= (array_inv!24267 (_keys!11619 thiss!1427)) (bvsge (size!32147 (_keys!11619 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1042624 d!126129))

(declare-fun d!126131 () Bool)

(assert (=> d!126131 (= (array_inv!24268 (_values!6393 thiss!1427)) (bvsge (size!32148 (_values!6393 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1042624 d!126131))

(declare-fun b!1042758 () Bool)

(declare-fun e!590775 () SeekEntryResult!9820)

(declare-fun lt!459615 () SeekEntryResult!9820)

(assert (=> b!1042758 (= e!590775 (ite ((_ is MissingVacant!9820) lt!459615) (MissingZero!9820 (index!41653 lt!459615)) lt!459615))))

(declare-fun lt!459613 () SeekEntryResult!9820)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65718 (_ BitVec 32)) SeekEntryResult!9820)

(assert (=> b!1042758 (= lt!459615 (seekKeyOrZeroReturnVacant!0 (x!93083 lt!459613) (index!41652 lt!459613) (index!41652 lt!459613) key!909 (_keys!11619 thiss!1427) (mask!30434 thiss!1427)))))

(declare-fun d!126133 () Bool)

(declare-fun lt!459612 () SeekEntryResult!9820)

(assert (=> d!126133 (and (or ((_ is MissingVacant!9820) lt!459612) (not ((_ is Found!9820) lt!459612)) (and (bvsge (index!41651 lt!459612) #b00000000000000000000000000000000) (bvslt (index!41651 lt!459612) (size!32147 (_keys!11619 thiss!1427))))) (not ((_ is MissingVacant!9820) lt!459612)) (or (not ((_ is Found!9820) lt!459612)) (= (select (arr!31611 (_keys!11619 thiss!1427)) (index!41651 lt!459612)) key!909)))))

(declare-fun e!590774 () SeekEntryResult!9820)

(assert (=> d!126133 (= lt!459612 e!590774)))

(declare-fun c!105827 () Bool)

(assert (=> d!126133 (= c!105827 (and ((_ is Intermediate!9820) lt!459613) (undefined!10632 lt!459613)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65718 (_ BitVec 32)) SeekEntryResult!9820)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!126133 (= lt!459613 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30434 thiss!1427)) key!909 (_keys!11619 thiss!1427) (mask!30434 thiss!1427)))))

(assert (=> d!126133 (validMask!0 (mask!30434 thiss!1427))))

(assert (=> d!126133 (= (seekEntry!0 key!909 (_keys!11619 thiss!1427) (mask!30434 thiss!1427)) lt!459612)))

(declare-fun b!1042759 () Bool)

(declare-fun e!590776 () SeekEntryResult!9820)

(assert (=> b!1042759 (= e!590776 (Found!9820 (index!41652 lt!459613)))))

(declare-fun b!1042760 () Bool)

(declare-fun c!105829 () Bool)

(declare-fun lt!459614 () (_ BitVec 64))

(assert (=> b!1042760 (= c!105829 (= lt!459614 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1042760 (= e!590776 e!590775)))

(declare-fun b!1042761 () Bool)

(assert (=> b!1042761 (= e!590775 (MissingZero!9820 (index!41652 lt!459613)))))

(declare-fun b!1042762 () Bool)

(assert (=> b!1042762 (= e!590774 e!590776)))

(assert (=> b!1042762 (= lt!459614 (select (arr!31611 (_keys!11619 thiss!1427)) (index!41652 lt!459613)))))

(declare-fun c!105828 () Bool)

(assert (=> b!1042762 (= c!105828 (= lt!459614 key!909))))

(declare-fun b!1042763 () Bool)

(assert (=> b!1042763 (= e!590774 Undefined!9820)))

(assert (= (and d!126133 c!105827) b!1042763))

(assert (= (and d!126133 (not c!105827)) b!1042762))

(assert (= (and b!1042762 c!105828) b!1042759))

(assert (= (and b!1042762 (not c!105828)) b!1042760))

(assert (= (and b!1042760 c!105829) b!1042761))

(assert (= (and b!1042760 (not c!105829)) b!1042758))

(declare-fun m!962167 () Bool)

(assert (=> b!1042758 m!962167))

(declare-fun m!962169 () Bool)

(assert (=> d!126133 m!962169))

(declare-fun m!962171 () Bool)

(assert (=> d!126133 m!962171))

(assert (=> d!126133 m!962171))

(declare-fun m!962173 () Bool)

(assert (=> d!126133 m!962173))

(assert (=> d!126133 m!962049))

(declare-fun m!962175 () Bool)

(assert (=> b!1042762 m!962175))

(assert (=> b!1042623 d!126133))

(declare-fun b!1042764 () Bool)

(declare-fun e!590777 () Bool)

(declare-fun e!590779 () Bool)

(assert (=> b!1042764 (= e!590777 e!590779)))

(declare-fun lt!459618 () (_ BitVec 64))

(assert (=> b!1042764 (= lt!459618 (select (arr!31611 (_keys!11619 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!459616 () Unit!34054)

(assert (=> b!1042764 (= lt!459616 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11619 thiss!1427) lt!459618 #b00000000000000000000000000000000))))

(assert (=> b!1042764 (arrayContainsKey!0 (_keys!11619 thiss!1427) lt!459618 #b00000000000000000000000000000000)))

(declare-fun lt!459617 () Unit!34054)

(assert (=> b!1042764 (= lt!459617 lt!459616)))

(declare-fun res!694860 () Bool)

(assert (=> b!1042764 (= res!694860 (= (seekEntryOrOpen!0 (select (arr!31611 (_keys!11619 thiss!1427)) #b00000000000000000000000000000000) (_keys!11619 thiss!1427) (mask!30434 thiss!1427)) (Found!9820 #b00000000000000000000000000000000)))))

(assert (=> b!1042764 (=> (not res!694860) (not e!590779))))

(declare-fun b!1042765 () Bool)

(declare-fun call!44199 () Bool)

(assert (=> b!1042765 (= e!590779 call!44199)))

(declare-fun d!126135 () Bool)

(declare-fun res!694859 () Bool)

(declare-fun e!590778 () Bool)

(assert (=> d!126135 (=> res!694859 e!590778)))

(assert (=> d!126135 (= res!694859 (bvsge #b00000000000000000000000000000000 (size!32147 (_keys!11619 thiss!1427))))))

(assert (=> d!126135 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11619 thiss!1427) (mask!30434 thiss!1427)) e!590778)))

(declare-fun b!1042766 () Bool)

(assert (=> b!1042766 (= e!590777 call!44199)))

(declare-fun b!1042767 () Bool)

(assert (=> b!1042767 (= e!590778 e!590777)))

(declare-fun c!105830 () Bool)

(assert (=> b!1042767 (= c!105830 (validKeyInArray!0 (select (arr!31611 (_keys!11619 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!44196 () Bool)

(assert (=> bm!44196 (= call!44199 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11619 thiss!1427) (mask!30434 thiss!1427)))))

(assert (= (and d!126135 (not res!694859)) b!1042767))

(assert (= (and b!1042767 c!105830) b!1042764))

(assert (= (and b!1042767 (not c!105830)) b!1042766))

(assert (= (and b!1042764 res!694860) b!1042765))

(assert (= (or b!1042765 b!1042766) bm!44196))

(assert (=> b!1042764 m!962145))

(declare-fun m!962177 () Bool)

(assert (=> b!1042764 m!962177))

(declare-fun m!962179 () Bool)

(assert (=> b!1042764 m!962179))

(assert (=> b!1042764 m!962145))

(declare-fun m!962181 () Bool)

(assert (=> b!1042764 m!962181))

(assert (=> b!1042767 m!962145))

(assert (=> b!1042767 m!962145))

(assert (=> b!1042767 m!962147))

(declare-fun m!962183 () Bool)

(assert (=> bm!44196 m!962183))

(assert (=> b!1042626 d!126135))

(declare-fun b!1042775 () Bool)

(declare-fun e!590785 () Bool)

(assert (=> b!1042775 (= e!590785 tp_is_empty!24789)))

(declare-fun condMapEmpty!38801 () Bool)

(declare-fun mapDefault!38801 () ValueCell!11691)

(assert (=> mapNonEmpty!38795 (= condMapEmpty!38801 (= mapRest!38795 ((as const (Array (_ BitVec 32) ValueCell!11691)) mapDefault!38801)))))

(declare-fun mapRes!38801 () Bool)

(assert (=> mapNonEmpty!38795 (= tp!74436 (and e!590785 mapRes!38801))))

(declare-fun mapNonEmpty!38801 () Bool)

(declare-fun tp!74446 () Bool)

(declare-fun e!590784 () Bool)

(assert (=> mapNonEmpty!38801 (= mapRes!38801 (and tp!74446 e!590784))))

(declare-fun mapKey!38801 () (_ BitVec 32))

(declare-fun mapValue!38801 () ValueCell!11691)

(declare-fun mapRest!38801 () (Array (_ BitVec 32) ValueCell!11691))

(assert (=> mapNonEmpty!38801 (= mapRest!38795 (store mapRest!38801 mapKey!38801 mapValue!38801))))

(declare-fun mapIsEmpty!38801 () Bool)

(assert (=> mapIsEmpty!38801 mapRes!38801))

(declare-fun b!1042774 () Bool)

(assert (=> b!1042774 (= e!590784 tp_is_empty!24789)))

(assert (= (and mapNonEmpty!38795 condMapEmpty!38801) mapIsEmpty!38801))

(assert (= (and mapNonEmpty!38795 (not condMapEmpty!38801)) mapNonEmpty!38801))

(assert (= (and mapNonEmpty!38801 ((_ is ValueCellFull!11691) mapValue!38801)) b!1042774))

(assert (= (and mapNonEmpty!38795 ((_ is ValueCellFull!11691) mapDefault!38801)) b!1042775))

(declare-fun m!962185 () Bool)

(assert (=> mapNonEmpty!38801 m!962185))

(check-sat (not b!1042720) (not b!1042697) (not b!1042736) (not bm!44194) (not b!1042695) (not b!1042745) (not b!1042744) (not bm!44195) (not b!1042685) (not d!126123) (not b!1042743) (not b!1042706) (not b!1042728) (not b!1042733) (not bm!44196) b_and!33619 (not b!1042731) (not mapNonEmpty!38801) (not b_next!21069) (not b!1042679) (not b!1042709) (not d!126113) (not bm!44187) (not b!1042724) (not b!1042675) (not b!1042664) (not d!126127) (not d!126133) (not b!1042676) (not bm!44190) (not b!1042764) (not d!126105) (not b!1042694) (not b!1042732) (not bm!44193) (not b!1042758) tp_is_empty!24789 (not d!126121) (not b!1042767))
(check-sat b_and!33619 (not b_next!21069))
