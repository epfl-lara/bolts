; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91152 () Bool)

(assert start!91152)

(declare-fun b!1040105 () Bool)

(declare-fun b_free!21003 () Bool)

(declare-fun b_next!21003 () Bool)

(assert (=> b!1040105 (= b_free!21003 (not b_next!21003))))

(declare-fun tp!74201 () Bool)

(declare-fun b_and!33553 () Bool)

(assert (=> b!1040105 (= tp!74201 b_and!33553)))

(declare-fun res!693577 () Bool)

(declare-fun e!588846 () Bool)

(assert (=> start!91152 (=> (not res!693577) (not e!588846))))

(declare-datatypes ((V!37837 0))(
  ( (V!37838 (val!12412 Int)) )
))
(declare-datatypes ((ValueCell!11658 0))(
  ( (ValueCellFull!11658 (v!15000 V!37837)) (EmptyCell!11658) )
))
(declare-datatypes ((array!65564 0))(
  ( (array!65565 (arr!31545 (Array (_ BitVec 32) (_ BitVec 64))) (size!32077 (_ BitVec 32))) )
))
(declare-datatypes ((array!65566 0))(
  ( (array!65567 (arr!31546 (Array (_ BitVec 32) ValueCell!11658)) (size!32078 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5910 0))(
  ( (LongMapFixedSize!5911 (defaultEntry!6337 Int) (mask!30318 (_ BitVec 32)) (extraKeys!6065 (_ BitVec 32)) (zeroValue!6171 V!37837) (minValue!6171 V!37837) (_size!3010 (_ BitVec 32)) (_keys!11552 array!65564) (_values!6360 array!65566) (_vacant!3010 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5910)

(declare-fun valid!2174 (LongMapFixedSize!5910) Bool)

(assert (=> start!91152 (= res!693577 (valid!2174 thiss!1427))))

(assert (=> start!91152 e!588846))

(declare-fun e!588848 () Bool)

(assert (=> start!91152 e!588848))

(assert (=> start!91152 true))

(declare-fun b!1040098 () Bool)

(declare-fun e!588852 () Bool)

(declare-fun e!588845 () Bool)

(assert (=> b!1040098 (= e!588852 (not e!588845))))

(declare-fun res!693578 () Bool)

(assert (=> b!1040098 (=> res!693578 e!588845)))

(declare-datatypes ((SeekEntryResult!9792 0))(
  ( (MissingZero!9792 (index!41538 (_ BitVec 32))) (Found!9792 (index!41539 (_ BitVec 32))) (Intermediate!9792 (undefined!10604 Bool) (index!41540 (_ BitVec 32)) (x!92843 (_ BitVec 32))) (Undefined!9792) (MissingVacant!9792 (index!41541 (_ BitVec 32))) )
))
(declare-fun lt!458400 () SeekEntryResult!9792)

(assert (=> b!1040098 (= res!693578 (or (bvslt (index!41539 lt!458400) #b00000000000000000000000000000000) (bvsge (index!41539 lt!458400) (size!32077 (_keys!11552 thiss!1427))) (bvsge (size!32077 (_keys!11552 thiss!1427)) #b01111111111111111111111111111111)))))

(declare-fun lt!458399 () array!65564)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65564 (_ BitVec 32)) Bool)

(assert (=> b!1040098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458399 (mask!30318 thiss!1427))))

(declare-datatypes ((Unit!34004 0))(
  ( (Unit!34005) )
))
(declare-fun lt!458401 () Unit!34004)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65564 (_ BitVec 32) (_ BitVec 32)) Unit!34004)

(assert (=> b!1040098 (= lt!458401 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11552 thiss!1427) (index!41539 lt!458400) (mask!30318 thiss!1427)))))

(declare-datatypes ((List!22078 0))(
  ( (Nil!22075) (Cons!22074 (h!23278 (_ BitVec 64)) (t!31299 List!22078)) )
))
(declare-fun arrayNoDuplicates!0 (array!65564 (_ BitVec 32) List!22078) Bool)

(assert (=> b!1040098 (arrayNoDuplicates!0 lt!458399 #b00000000000000000000000000000000 Nil!22075)))

(declare-fun lt!458402 () Unit!34004)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65564 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22078) Unit!34004)

(assert (=> b!1040098 (= lt!458402 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11552 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41539 lt!458400) #b00000000000000000000000000000000 Nil!22075))))

(declare-fun arrayCountValidKeys!0 (array!65564 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1040098 (= (arrayCountValidKeys!0 lt!458399 #b00000000000000000000000000000000 (size!32077 (_keys!11552 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11552 thiss!1427) #b00000000000000000000000000000000 (size!32077 (_keys!11552 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1040098 (= lt!458399 (array!65565 (store (arr!31545 (_keys!11552 thiss!1427)) (index!41539 lt!458400) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32077 (_keys!11552 thiss!1427))))))

(declare-fun lt!458403 () Unit!34004)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65564 (_ BitVec 32) (_ BitVec 64)) Unit!34004)

(assert (=> b!1040098 (= lt!458403 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11552 thiss!1427) (index!41539 lt!458400) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1040099 () Bool)

(declare-fun res!693576 () Bool)

(assert (=> b!1040099 (=> (not res!693576) (not e!588846))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1040099 (= res!693576 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1040100 () Bool)

(declare-fun e!588850 () Bool)

(declare-fun tp_is_empty!24723 () Bool)

(assert (=> b!1040100 (= e!588850 tp_is_empty!24723)))

(declare-fun b!1040101 () Bool)

(declare-fun e!588847 () Bool)

(declare-fun e!588851 () Bool)

(declare-fun mapRes!38659 () Bool)

(assert (=> b!1040101 (= e!588847 (and e!588851 mapRes!38659))))

(declare-fun condMapEmpty!38659 () Bool)

(declare-fun mapDefault!38659 () ValueCell!11658)

(assert (=> b!1040101 (= condMapEmpty!38659 (= (arr!31546 (_values!6360 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11658)) mapDefault!38659)))))

(declare-fun mapIsEmpty!38659 () Bool)

(assert (=> mapIsEmpty!38659 mapRes!38659))

(declare-fun b!1040102 () Bool)

(assert (=> b!1040102 (= e!588845 (arrayNoDuplicates!0 (_keys!11552 thiss!1427) #b00000000000000000000000000000000 Nil!22075))))

(declare-fun b!1040103 () Bool)

(assert (=> b!1040103 (= e!588851 tp_is_empty!24723)))

(declare-fun b!1040104 () Bool)

(assert (=> b!1040104 (= e!588846 e!588852)))

(declare-fun res!693575 () Bool)

(assert (=> b!1040104 (=> (not res!693575) (not e!588852))))

(get-info :version)

(assert (=> b!1040104 (= res!693575 ((_ is Found!9792) lt!458400))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65564 (_ BitVec 32)) SeekEntryResult!9792)

(assert (=> b!1040104 (= lt!458400 (seekEntry!0 key!909 (_keys!11552 thiss!1427) (mask!30318 thiss!1427)))))

(declare-fun mapNonEmpty!38659 () Bool)

(declare-fun tp!74202 () Bool)

(assert (=> mapNonEmpty!38659 (= mapRes!38659 (and tp!74202 e!588850))))

(declare-fun mapRest!38659 () (Array (_ BitVec 32) ValueCell!11658))

(declare-fun mapValue!38659 () ValueCell!11658)

(declare-fun mapKey!38659 () (_ BitVec 32))

(assert (=> mapNonEmpty!38659 (= (arr!31546 (_values!6360 thiss!1427)) (store mapRest!38659 mapKey!38659 mapValue!38659))))

(declare-fun array_inv!24219 (array!65564) Bool)

(declare-fun array_inv!24220 (array!65566) Bool)

(assert (=> b!1040105 (= e!588848 (and tp!74201 tp_is_empty!24723 (array_inv!24219 (_keys!11552 thiss!1427)) (array_inv!24220 (_values!6360 thiss!1427)) e!588847))))

(assert (= (and start!91152 res!693577) b!1040099))

(assert (= (and b!1040099 res!693576) b!1040104))

(assert (= (and b!1040104 res!693575) b!1040098))

(assert (= (and b!1040098 (not res!693578)) b!1040102))

(assert (= (and b!1040101 condMapEmpty!38659) mapIsEmpty!38659))

(assert (= (and b!1040101 (not condMapEmpty!38659)) mapNonEmpty!38659))

(assert (= (and mapNonEmpty!38659 ((_ is ValueCellFull!11658) mapValue!38659)) b!1040100))

(assert (= (and b!1040101 ((_ is ValueCellFull!11658) mapDefault!38659)) b!1040103))

(assert (= b!1040105 b!1040101))

(assert (= start!91152 b!1040105))

(declare-fun m!959837 () Bool)

(assert (=> b!1040098 m!959837))

(declare-fun m!959839 () Bool)

(assert (=> b!1040098 m!959839))

(declare-fun m!959841 () Bool)

(assert (=> b!1040098 m!959841))

(declare-fun m!959843 () Bool)

(assert (=> b!1040098 m!959843))

(declare-fun m!959845 () Bool)

(assert (=> b!1040098 m!959845))

(declare-fun m!959847 () Bool)

(assert (=> b!1040098 m!959847))

(declare-fun m!959849 () Bool)

(assert (=> b!1040098 m!959849))

(declare-fun m!959851 () Bool)

(assert (=> b!1040098 m!959851))

(declare-fun m!959853 () Bool)

(assert (=> b!1040102 m!959853))

(declare-fun m!959855 () Bool)

(assert (=> b!1040104 m!959855))

(declare-fun m!959857 () Bool)

(assert (=> b!1040105 m!959857))

(declare-fun m!959859 () Bool)

(assert (=> b!1040105 m!959859))

(declare-fun m!959861 () Bool)

(assert (=> mapNonEmpty!38659 m!959861))

(declare-fun m!959863 () Bool)

(assert (=> start!91152 m!959863))

(check-sat (not b_next!21003) b_and!33553 (not b!1040102) (not b!1040098) (not b!1040105) (not mapNonEmpty!38659) (not start!91152) (not b!1040104) tp_is_empty!24723)
(check-sat b_and!33553 (not b_next!21003))
(get-model)

(declare-fun d!125561 () Bool)

(declare-fun res!693597 () Bool)

(declare-fun e!588879 () Bool)

(assert (=> d!125561 (=> (not res!693597) (not e!588879))))

(declare-fun simpleValid!431 (LongMapFixedSize!5910) Bool)

(assert (=> d!125561 (= res!693597 (simpleValid!431 thiss!1427))))

(assert (=> d!125561 (= (valid!2174 thiss!1427) e!588879)))

(declare-fun b!1040136 () Bool)

(declare-fun res!693598 () Bool)

(assert (=> b!1040136 (=> (not res!693598) (not e!588879))))

(assert (=> b!1040136 (= res!693598 (= (arrayCountValidKeys!0 (_keys!11552 thiss!1427) #b00000000000000000000000000000000 (size!32077 (_keys!11552 thiss!1427))) (_size!3010 thiss!1427)))))

(declare-fun b!1040137 () Bool)

(declare-fun res!693599 () Bool)

(assert (=> b!1040137 (=> (not res!693599) (not e!588879))))

(assert (=> b!1040137 (= res!693599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11552 thiss!1427) (mask!30318 thiss!1427)))))

(declare-fun b!1040138 () Bool)

(assert (=> b!1040138 (= e!588879 (arrayNoDuplicates!0 (_keys!11552 thiss!1427) #b00000000000000000000000000000000 Nil!22075))))

(assert (= (and d!125561 res!693597) b!1040136))

(assert (= (and b!1040136 res!693598) b!1040137))

(assert (= (and b!1040137 res!693599) b!1040138))

(declare-fun m!959893 () Bool)

(assert (=> d!125561 m!959893))

(assert (=> b!1040136 m!959843))

(declare-fun m!959895 () Bool)

(assert (=> b!1040137 m!959895))

(assert (=> b!1040138 m!959853))

(assert (=> start!91152 d!125561))

(declare-fun d!125563 () Bool)

(assert (=> d!125563 (= (array_inv!24219 (_keys!11552 thiss!1427)) (bvsge (size!32077 (_keys!11552 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1040105 d!125563))

(declare-fun d!125565 () Bool)

(assert (=> d!125565 (= (array_inv!24220 (_values!6360 thiss!1427)) (bvsge (size!32078 (_values!6360 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1040105 d!125565))

(declare-fun b!1040151 () Bool)

(declare-fun e!588888 () SeekEntryResult!9792)

(declare-fun lt!458428 () SeekEntryResult!9792)

(assert (=> b!1040151 (= e!588888 (ite ((_ is MissingVacant!9792) lt!458428) (MissingZero!9792 (index!41541 lt!458428)) lt!458428))))

(declare-fun lt!458429 () SeekEntryResult!9792)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65564 (_ BitVec 32)) SeekEntryResult!9792)

(assert (=> b!1040151 (= lt!458428 (seekKeyOrZeroReturnVacant!0 (x!92843 lt!458429) (index!41540 lt!458429) (index!41540 lt!458429) key!909 (_keys!11552 thiss!1427) (mask!30318 thiss!1427)))))

(declare-fun b!1040152 () Bool)

(declare-fun c!105399 () Bool)

(declare-fun lt!458427 () (_ BitVec 64))

(assert (=> b!1040152 (= c!105399 (= lt!458427 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!588887 () SeekEntryResult!9792)

(assert (=> b!1040152 (= e!588887 e!588888)))

(declare-fun b!1040153 () Bool)

(declare-fun e!588886 () SeekEntryResult!9792)

(assert (=> b!1040153 (= e!588886 Undefined!9792)))

(declare-fun d!125567 () Bool)

(declare-fun lt!458430 () SeekEntryResult!9792)

(assert (=> d!125567 (and (or ((_ is MissingVacant!9792) lt!458430) (not ((_ is Found!9792) lt!458430)) (and (bvsge (index!41539 lt!458430) #b00000000000000000000000000000000) (bvslt (index!41539 lt!458430) (size!32077 (_keys!11552 thiss!1427))))) (not ((_ is MissingVacant!9792) lt!458430)) (or (not ((_ is Found!9792) lt!458430)) (= (select (arr!31545 (_keys!11552 thiss!1427)) (index!41539 lt!458430)) key!909)))))

(assert (=> d!125567 (= lt!458430 e!588886)))

(declare-fun c!105397 () Bool)

(assert (=> d!125567 (= c!105397 (and ((_ is Intermediate!9792) lt!458429) (undefined!10604 lt!458429)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65564 (_ BitVec 32)) SeekEntryResult!9792)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125567 (= lt!458429 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30318 thiss!1427)) key!909 (_keys!11552 thiss!1427) (mask!30318 thiss!1427)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!125567 (validMask!0 (mask!30318 thiss!1427))))

(assert (=> d!125567 (= (seekEntry!0 key!909 (_keys!11552 thiss!1427) (mask!30318 thiss!1427)) lt!458430)))

(declare-fun b!1040154 () Bool)

(assert (=> b!1040154 (= e!588888 (MissingZero!9792 (index!41540 lt!458429)))))

(declare-fun b!1040155 () Bool)

(assert (=> b!1040155 (= e!588886 e!588887)))

(assert (=> b!1040155 (= lt!458427 (select (arr!31545 (_keys!11552 thiss!1427)) (index!41540 lt!458429)))))

(declare-fun c!105398 () Bool)

(assert (=> b!1040155 (= c!105398 (= lt!458427 key!909))))

(declare-fun b!1040156 () Bool)

(assert (=> b!1040156 (= e!588887 (Found!9792 (index!41540 lt!458429)))))

(assert (= (and d!125567 c!105397) b!1040153))

(assert (= (and d!125567 (not c!105397)) b!1040155))

(assert (= (and b!1040155 c!105398) b!1040156))

(assert (= (and b!1040155 (not c!105398)) b!1040152))

(assert (= (and b!1040152 c!105399) b!1040154))

(assert (= (and b!1040152 (not c!105399)) b!1040151))

(declare-fun m!959897 () Bool)

(assert (=> b!1040151 m!959897))

(declare-fun m!959899 () Bool)

(assert (=> d!125567 m!959899))

(declare-fun m!959901 () Bool)

(assert (=> d!125567 m!959901))

(assert (=> d!125567 m!959901))

(declare-fun m!959903 () Bool)

(assert (=> d!125567 m!959903))

(declare-fun m!959905 () Bool)

(assert (=> d!125567 m!959905))

(declare-fun m!959907 () Bool)

(assert (=> b!1040155 m!959907))

(assert (=> b!1040104 d!125567))

(declare-fun b!1040167 () Bool)

(declare-fun e!588900 () Bool)

(declare-fun call!44038 () Bool)

(assert (=> b!1040167 (= e!588900 call!44038)))

(declare-fun d!125569 () Bool)

(declare-fun res!693608 () Bool)

(declare-fun e!588897 () Bool)

(assert (=> d!125569 (=> res!693608 e!588897)))

(assert (=> d!125569 (= res!693608 (bvsge #b00000000000000000000000000000000 (size!32077 (_keys!11552 thiss!1427))))))

(assert (=> d!125569 (= (arrayNoDuplicates!0 (_keys!11552 thiss!1427) #b00000000000000000000000000000000 Nil!22075) e!588897)))

(declare-fun b!1040168 () Bool)

(declare-fun e!588899 () Bool)

(assert (=> b!1040168 (= e!588899 e!588900)))

(declare-fun c!105402 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1040168 (= c!105402 (validKeyInArray!0 (select (arr!31545 (_keys!11552 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!44035 () Bool)

(assert (=> bm!44035 (= call!44038 (arrayNoDuplicates!0 (_keys!11552 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105402 (Cons!22074 (select (arr!31545 (_keys!11552 thiss!1427)) #b00000000000000000000000000000000) Nil!22075) Nil!22075)))))

(declare-fun b!1040169 () Bool)

(declare-fun e!588898 () Bool)

(declare-fun contains!6071 (List!22078 (_ BitVec 64)) Bool)

(assert (=> b!1040169 (= e!588898 (contains!6071 Nil!22075 (select (arr!31545 (_keys!11552 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1040170 () Bool)

(assert (=> b!1040170 (= e!588900 call!44038)))

(declare-fun b!1040171 () Bool)

(assert (=> b!1040171 (= e!588897 e!588899)))

(declare-fun res!693607 () Bool)

(assert (=> b!1040171 (=> (not res!693607) (not e!588899))))

(assert (=> b!1040171 (= res!693607 (not e!588898))))

(declare-fun res!693606 () Bool)

(assert (=> b!1040171 (=> (not res!693606) (not e!588898))))

(assert (=> b!1040171 (= res!693606 (validKeyInArray!0 (select (arr!31545 (_keys!11552 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!125569 (not res!693608)) b!1040171))

(assert (= (and b!1040171 res!693606) b!1040169))

(assert (= (and b!1040171 res!693607) b!1040168))

(assert (= (and b!1040168 c!105402) b!1040170))

(assert (= (and b!1040168 (not c!105402)) b!1040167))

(assert (= (or b!1040170 b!1040167) bm!44035))

(declare-fun m!959909 () Bool)

(assert (=> b!1040168 m!959909))

(assert (=> b!1040168 m!959909))

(declare-fun m!959911 () Bool)

(assert (=> b!1040168 m!959911))

(assert (=> bm!44035 m!959909))

(declare-fun m!959913 () Bool)

(assert (=> bm!44035 m!959913))

(assert (=> b!1040169 m!959909))

(assert (=> b!1040169 m!959909))

(declare-fun m!959915 () Bool)

(assert (=> b!1040169 m!959915))

(assert (=> b!1040171 m!959909))

(assert (=> b!1040171 m!959909))

(assert (=> b!1040171 m!959911))

(assert (=> b!1040102 d!125569))

(declare-fun b!1040172 () Bool)

(declare-fun e!588904 () Bool)

(declare-fun call!44039 () Bool)

(assert (=> b!1040172 (= e!588904 call!44039)))

(declare-fun d!125571 () Bool)

(declare-fun res!693611 () Bool)

(declare-fun e!588901 () Bool)

(assert (=> d!125571 (=> res!693611 e!588901)))

(assert (=> d!125571 (= res!693611 (bvsge #b00000000000000000000000000000000 (size!32077 lt!458399)))))

(assert (=> d!125571 (= (arrayNoDuplicates!0 lt!458399 #b00000000000000000000000000000000 Nil!22075) e!588901)))

(declare-fun b!1040173 () Bool)

(declare-fun e!588903 () Bool)

(assert (=> b!1040173 (= e!588903 e!588904)))

(declare-fun c!105403 () Bool)

(assert (=> b!1040173 (= c!105403 (validKeyInArray!0 (select (arr!31545 lt!458399) #b00000000000000000000000000000000)))))

(declare-fun bm!44036 () Bool)

(assert (=> bm!44036 (= call!44039 (arrayNoDuplicates!0 lt!458399 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105403 (Cons!22074 (select (arr!31545 lt!458399) #b00000000000000000000000000000000) Nil!22075) Nil!22075)))))

(declare-fun b!1040174 () Bool)

(declare-fun e!588902 () Bool)

(assert (=> b!1040174 (= e!588902 (contains!6071 Nil!22075 (select (arr!31545 lt!458399) #b00000000000000000000000000000000)))))

(declare-fun b!1040175 () Bool)

(assert (=> b!1040175 (= e!588904 call!44039)))

(declare-fun b!1040176 () Bool)

(assert (=> b!1040176 (= e!588901 e!588903)))

(declare-fun res!693610 () Bool)

(assert (=> b!1040176 (=> (not res!693610) (not e!588903))))

(assert (=> b!1040176 (= res!693610 (not e!588902))))

(declare-fun res!693609 () Bool)

(assert (=> b!1040176 (=> (not res!693609) (not e!588902))))

(assert (=> b!1040176 (= res!693609 (validKeyInArray!0 (select (arr!31545 lt!458399) #b00000000000000000000000000000000)))))

(assert (= (and d!125571 (not res!693611)) b!1040176))

(assert (= (and b!1040176 res!693609) b!1040174))

(assert (= (and b!1040176 res!693610) b!1040173))

(assert (= (and b!1040173 c!105403) b!1040175))

(assert (= (and b!1040173 (not c!105403)) b!1040172))

(assert (= (or b!1040175 b!1040172) bm!44036))

(declare-fun m!959917 () Bool)

(assert (=> b!1040173 m!959917))

(assert (=> b!1040173 m!959917))

(declare-fun m!959919 () Bool)

(assert (=> b!1040173 m!959919))

(assert (=> bm!44036 m!959917))

(declare-fun m!959921 () Bool)

(assert (=> bm!44036 m!959921))

(assert (=> b!1040174 m!959917))

(assert (=> b!1040174 m!959917))

(declare-fun m!959923 () Bool)

(assert (=> b!1040174 m!959923))

(assert (=> b!1040176 m!959917))

(assert (=> b!1040176 m!959917))

(assert (=> b!1040176 m!959919))

(assert (=> b!1040098 d!125571))

(declare-fun d!125573 () Bool)

(declare-fun res!693616 () Bool)

(declare-fun e!588912 () Bool)

(assert (=> d!125573 (=> res!693616 e!588912)))

(assert (=> d!125573 (= res!693616 (bvsge #b00000000000000000000000000000000 (size!32077 lt!458399)))))

(assert (=> d!125573 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458399 (mask!30318 thiss!1427)) e!588912)))

(declare-fun bm!44039 () Bool)

(declare-fun call!44042 () Bool)

(assert (=> bm!44039 (= call!44042 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!458399 (mask!30318 thiss!1427)))))

(declare-fun b!1040185 () Bool)

(declare-fun e!588913 () Bool)

(assert (=> b!1040185 (= e!588913 call!44042)))

(declare-fun b!1040186 () Bool)

(declare-fun e!588911 () Bool)

(assert (=> b!1040186 (= e!588913 e!588911)))

(declare-fun lt!458439 () (_ BitVec 64))

(assert (=> b!1040186 (= lt!458439 (select (arr!31545 lt!458399) #b00000000000000000000000000000000))))

(declare-fun lt!458437 () Unit!34004)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65564 (_ BitVec 64) (_ BitVec 32)) Unit!34004)

(assert (=> b!1040186 (= lt!458437 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!458399 lt!458439 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!65564 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1040186 (arrayContainsKey!0 lt!458399 lt!458439 #b00000000000000000000000000000000)))

(declare-fun lt!458438 () Unit!34004)

(assert (=> b!1040186 (= lt!458438 lt!458437)))

(declare-fun res!693617 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65564 (_ BitVec 32)) SeekEntryResult!9792)

(assert (=> b!1040186 (= res!693617 (= (seekEntryOrOpen!0 (select (arr!31545 lt!458399) #b00000000000000000000000000000000) lt!458399 (mask!30318 thiss!1427)) (Found!9792 #b00000000000000000000000000000000)))))

(assert (=> b!1040186 (=> (not res!693617) (not e!588911))))

(declare-fun b!1040187 () Bool)

(assert (=> b!1040187 (= e!588911 call!44042)))

(declare-fun b!1040188 () Bool)

(assert (=> b!1040188 (= e!588912 e!588913)))

(declare-fun c!105406 () Bool)

(assert (=> b!1040188 (= c!105406 (validKeyInArray!0 (select (arr!31545 lt!458399) #b00000000000000000000000000000000)))))

(assert (= (and d!125573 (not res!693616)) b!1040188))

(assert (= (and b!1040188 c!105406) b!1040186))

(assert (= (and b!1040188 (not c!105406)) b!1040185))

(assert (= (and b!1040186 res!693617) b!1040187))

(assert (= (or b!1040187 b!1040185) bm!44039))

(declare-fun m!959925 () Bool)

(assert (=> bm!44039 m!959925))

(assert (=> b!1040186 m!959917))

(declare-fun m!959927 () Bool)

(assert (=> b!1040186 m!959927))

(declare-fun m!959929 () Bool)

(assert (=> b!1040186 m!959929))

(assert (=> b!1040186 m!959917))

(declare-fun m!959931 () Bool)

(assert (=> b!1040186 m!959931))

(assert (=> b!1040188 m!959917))

(assert (=> b!1040188 m!959917))

(assert (=> b!1040188 m!959919))

(assert (=> b!1040098 d!125573))

(declare-fun d!125575 () Bool)

(declare-fun e!588918 () Bool)

(assert (=> d!125575 e!588918))

(declare-fun res!693628 () Bool)

(assert (=> d!125575 (=> (not res!693628) (not e!588918))))

(assert (=> d!125575 (= res!693628 (and (bvsge (index!41539 lt!458400) #b00000000000000000000000000000000) (bvslt (index!41539 lt!458400) (size!32077 (_keys!11552 thiss!1427)))))))

(declare-fun lt!458442 () Unit!34004)

(declare-fun choose!82 (array!65564 (_ BitVec 32) (_ BitVec 64)) Unit!34004)

(assert (=> d!125575 (= lt!458442 (choose!82 (_keys!11552 thiss!1427) (index!41539 lt!458400) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!588919 () Bool)

(assert (=> d!125575 e!588919))

(declare-fun res!693626 () Bool)

(assert (=> d!125575 (=> (not res!693626) (not e!588919))))

(assert (=> d!125575 (= res!693626 (and (bvsge (index!41539 lt!458400) #b00000000000000000000000000000000) (bvslt (index!41539 lt!458400) (size!32077 (_keys!11552 thiss!1427)))))))

(assert (=> d!125575 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11552 thiss!1427) (index!41539 lt!458400) #b1000000000000000000000000000000000000000000000000000000000000000) lt!458442)))

(declare-fun b!1040198 () Bool)

(declare-fun res!693629 () Bool)

(assert (=> b!1040198 (=> (not res!693629) (not e!588919))))

(assert (=> b!1040198 (= res!693629 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1040200 () Bool)

(assert (=> b!1040200 (= e!588918 (= (arrayCountValidKeys!0 (array!65565 (store (arr!31545 (_keys!11552 thiss!1427)) (index!41539 lt!458400) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32077 (_keys!11552 thiss!1427))) #b00000000000000000000000000000000 (size!32077 (_keys!11552 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11552 thiss!1427) #b00000000000000000000000000000000 (size!32077 (_keys!11552 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1040199 () Bool)

(assert (=> b!1040199 (= e!588919 (bvslt (size!32077 (_keys!11552 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1040197 () Bool)

(declare-fun res!693627 () Bool)

(assert (=> b!1040197 (=> (not res!693627) (not e!588919))))

(assert (=> b!1040197 (= res!693627 (validKeyInArray!0 (select (arr!31545 (_keys!11552 thiss!1427)) (index!41539 lt!458400))))))

(assert (= (and d!125575 res!693626) b!1040197))

(assert (= (and b!1040197 res!693627) b!1040198))

(assert (= (and b!1040198 res!693629) b!1040199))

(assert (= (and d!125575 res!693628) b!1040200))

(declare-fun m!959933 () Bool)

(assert (=> d!125575 m!959933))

(declare-fun m!959935 () Bool)

(assert (=> b!1040198 m!959935))

(assert (=> b!1040200 m!959841))

(declare-fun m!959937 () Bool)

(assert (=> b!1040200 m!959937))

(assert (=> b!1040200 m!959843))

(declare-fun m!959939 () Bool)

(assert (=> b!1040197 m!959939))

(assert (=> b!1040197 m!959939))

(declare-fun m!959941 () Bool)

(assert (=> b!1040197 m!959941))

(assert (=> b!1040098 d!125575))

(declare-fun d!125577 () Bool)

(declare-fun e!588922 () Bool)

(assert (=> d!125577 e!588922))

(declare-fun res!693632 () Bool)

(assert (=> d!125577 (=> (not res!693632) (not e!588922))))

(assert (=> d!125577 (= res!693632 (and (bvsge (index!41539 lt!458400) #b00000000000000000000000000000000) (bvslt (index!41539 lt!458400) (size!32077 (_keys!11552 thiss!1427)))))))

(declare-fun lt!458445 () Unit!34004)

(declare-fun choose!53 (array!65564 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22078) Unit!34004)

(assert (=> d!125577 (= lt!458445 (choose!53 (_keys!11552 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41539 lt!458400) #b00000000000000000000000000000000 Nil!22075))))

(assert (=> d!125577 (bvslt (size!32077 (_keys!11552 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!125577 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11552 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41539 lt!458400) #b00000000000000000000000000000000 Nil!22075) lt!458445)))

(declare-fun b!1040203 () Bool)

(assert (=> b!1040203 (= e!588922 (arrayNoDuplicates!0 (array!65565 (store (arr!31545 (_keys!11552 thiss!1427)) (index!41539 lt!458400) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32077 (_keys!11552 thiss!1427))) #b00000000000000000000000000000000 Nil!22075))))

(assert (= (and d!125577 res!693632) b!1040203))

(declare-fun m!959943 () Bool)

(assert (=> d!125577 m!959943))

(assert (=> b!1040203 m!959841))

(declare-fun m!959945 () Bool)

(assert (=> b!1040203 m!959945))

(assert (=> b!1040098 d!125577))

(declare-fun d!125579 () Bool)

(declare-fun e!588925 () Bool)

(assert (=> d!125579 e!588925))

(declare-fun res!693635 () Bool)

(assert (=> d!125579 (=> (not res!693635) (not e!588925))))

(assert (=> d!125579 (= res!693635 (and (bvsge (index!41539 lt!458400) #b00000000000000000000000000000000) (bvslt (index!41539 lt!458400) (size!32077 (_keys!11552 thiss!1427)))))))

(declare-fun lt!458448 () Unit!34004)

(declare-fun choose!25 (array!65564 (_ BitVec 32) (_ BitVec 32)) Unit!34004)

(assert (=> d!125579 (= lt!458448 (choose!25 (_keys!11552 thiss!1427) (index!41539 lt!458400) (mask!30318 thiss!1427)))))

(assert (=> d!125579 (validMask!0 (mask!30318 thiss!1427))))

(assert (=> d!125579 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11552 thiss!1427) (index!41539 lt!458400) (mask!30318 thiss!1427)) lt!458448)))

(declare-fun b!1040206 () Bool)

(assert (=> b!1040206 (= e!588925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65565 (store (arr!31545 (_keys!11552 thiss!1427)) (index!41539 lt!458400) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32077 (_keys!11552 thiss!1427))) (mask!30318 thiss!1427)))))

(assert (= (and d!125579 res!693635) b!1040206))

(declare-fun m!959947 () Bool)

(assert (=> d!125579 m!959947))

(assert (=> d!125579 m!959905))

(assert (=> b!1040206 m!959841))

(declare-fun m!959949 () Bool)

(assert (=> b!1040206 m!959949))

(assert (=> b!1040098 d!125579))

(declare-fun b!1040215 () Bool)

(declare-fun e!588931 () (_ BitVec 32))

(declare-fun e!588930 () (_ BitVec 32))

(assert (=> b!1040215 (= e!588931 e!588930)))

(declare-fun c!105411 () Bool)

(assert (=> b!1040215 (= c!105411 (validKeyInArray!0 (select (arr!31545 lt!458399) #b00000000000000000000000000000000)))))

(declare-fun d!125581 () Bool)

(declare-fun lt!458451 () (_ BitVec 32))

(assert (=> d!125581 (and (bvsge lt!458451 #b00000000000000000000000000000000) (bvsle lt!458451 (bvsub (size!32077 lt!458399) #b00000000000000000000000000000000)))))

(assert (=> d!125581 (= lt!458451 e!588931)))

(declare-fun c!105412 () Bool)

(assert (=> d!125581 (= c!105412 (bvsge #b00000000000000000000000000000000 (size!32077 (_keys!11552 thiss!1427))))))

(assert (=> d!125581 (and (bvsle #b00000000000000000000000000000000 (size!32077 (_keys!11552 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32077 (_keys!11552 thiss!1427)) (size!32077 lt!458399)))))

(assert (=> d!125581 (= (arrayCountValidKeys!0 lt!458399 #b00000000000000000000000000000000 (size!32077 (_keys!11552 thiss!1427))) lt!458451)))

(declare-fun b!1040216 () Bool)

(assert (=> b!1040216 (= e!588931 #b00000000000000000000000000000000)))

(declare-fun bm!44042 () Bool)

(declare-fun call!44045 () (_ BitVec 32))

(assert (=> bm!44042 (= call!44045 (arrayCountValidKeys!0 lt!458399 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32077 (_keys!11552 thiss!1427))))))

(declare-fun b!1040217 () Bool)

(assert (=> b!1040217 (= e!588930 (bvadd #b00000000000000000000000000000001 call!44045))))

(declare-fun b!1040218 () Bool)

(assert (=> b!1040218 (= e!588930 call!44045)))

(assert (= (and d!125581 c!105412) b!1040216))

(assert (= (and d!125581 (not c!105412)) b!1040215))

(assert (= (and b!1040215 c!105411) b!1040217))

(assert (= (and b!1040215 (not c!105411)) b!1040218))

(assert (= (or b!1040217 b!1040218) bm!44042))

(assert (=> b!1040215 m!959917))

(assert (=> b!1040215 m!959917))

(assert (=> b!1040215 m!959919))

(declare-fun m!959951 () Bool)

(assert (=> bm!44042 m!959951))

(assert (=> b!1040098 d!125581))

(declare-fun b!1040219 () Bool)

(declare-fun e!588933 () (_ BitVec 32))

(declare-fun e!588932 () (_ BitVec 32))

(assert (=> b!1040219 (= e!588933 e!588932)))

(declare-fun c!105413 () Bool)

(assert (=> b!1040219 (= c!105413 (validKeyInArray!0 (select (arr!31545 (_keys!11552 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!125583 () Bool)

(declare-fun lt!458452 () (_ BitVec 32))

(assert (=> d!125583 (and (bvsge lt!458452 #b00000000000000000000000000000000) (bvsle lt!458452 (bvsub (size!32077 (_keys!11552 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!125583 (= lt!458452 e!588933)))

(declare-fun c!105414 () Bool)

(assert (=> d!125583 (= c!105414 (bvsge #b00000000000000000000000000000000 (size!32077 (_keys!11552 thiss!1427))))))

(assert (=> d!125583 (and (bvsle #b00000000000000000000000000000000 (size!32077 (_keys!11552 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32077 (_keys!11552 thiss!1427)) (size!32077 (_keys!11552 thiss!1427))))))

(assert (=> d!125583 (= (arrayCountValidKeys!0 (_keys!11552 thiss!1427) #b00000000000000000000000000000000 (size!32077 (_keys!11552 thiss!1427))) lt!458452)))

(declare-fun b!1040220 () Bool)

(assert (=> b!1040220 (= e!588933 #b00000000000000000000000000000000)))

(declare-fun bm!44043 () Bool)

(declare-fun call!44046 () (_ BitVec 32))

(assert (=> bm!44043 (= call!44046 (arrayCountValidKeys!0 (_keys!11552 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32077 (_keys!11552 thiss!1427))))))

(declare-fun b!1040221 () Bool)

(assert (=> b!1040221 (= e!588932 (bvadd #b00000000000000000000000000000001 call!44046))))

(declare-fun b!1040222 () Bool)

(assert (=> b!1040222 (= e!588932 call!44046)))

(assert (= (and d!125583 c!105414) b!1040220))

(assert (= (and d!125583 (not c!105414)) b!1040219))

(assert (= (and b!1040219 c!105413) b!1040221))

(assert (= (and b!1040219 (not c!105413)) b!1040222))

(assert (= (or b!1040221 b!1040222) bm!44043))

(assert (=> b!1040219 m!959909))

(assert (=> b!1040219 m!959909))

(assert (=> b!1040219 m!959911))

(declare-fun m!959953 () Bool)

(assert (=> bm!44043 m!959953))

(assert (=> b!1040098 d!125583))

(declare-fun mapIsEmpty!38665 () Bool)

(declare-fun mapRes!38665 () Bool)

(assert (=> mapIsEmpty!38665 mapRes!38665))

(declare-fun mapNonEmpty!38665 () Bool)

(declare-fun tp!74211 () Bool)

(declare-fun e!588939 () Bool)

(assert (=> mapNonEmpty!38665 (= mapRes!38665 (and tp!74211 e!588939))))

(declare-fun mapValue!38665 () ValueCell!11658)

(declare-fun mapRest!38665 () (Array (_ BitVec 32) ValueCell!11658))

(declare-fun mapKey!38665 () (_ BitVec 32))

(assert (=> mapNonEmpty!38665 (= mapRest!38659 (store mapRest!38665 mapKey!38665 mapValue!38665))))

(declare-fun b!1040229 () Bool)

(assert (=> b!1040229 (= e!588939 tp_is_empty!24723)))

(declare-fun condMapEmpty!38665 () Bool)

(declare-fun mapDefault!38665 () ValueCell!11658)

(assert (=> mapNonEmpty!38659 (= condMapEmpty!38665 (= mapRest!38659 ((as const (Array (_ BitVec 32) ValueCell!11658)) mapDefault!38665)))))

(declare-fun e!588938 () Bool)

(assert (=> mapNonEmpty!38659 (= tp!74202 (and e!588938 mapRes!38665))))

(declare-fun b!1040230 () Bool)

(assert (=> b!1040230 (= e!588938 tp_is_empty!24723)))

(assert (= (and mapNonEmpty!38659 condMapEmpty!38665) mapIsEmpty!38665))

(assert (= (and mapNonEmpty!38659 (not condMapEmpty!38665)) mapNonEmpty!38665))

(assert (= (and mapNonEmpty!38665 ((_ is ValueCellFull!11658) mapValue!38665)) b!1040229))

(assert (= (and mapNonEmpty!38659 ((_ is ValueCellFull!11658) mapDefault!38665)) b!1040230))

(declare-fun m!959955 () Bool)

(assert (=> mapNonEmpty!38665 m!959955))

(check-sat (not b!1040206) (not bm!44039) (not mapNonEmpty!38665) (not b!1040200) (not b!1040151) (not b!1040197) (not b!1040171) (not b!1040169) tp_is_empty!24723 (not b_next!21003) (not b!1040186) (not b!1040198) b_and!33553 (not bm!44043) (not bm!44036) (not b!1040173) (not d!125567) (not b!1040219) (not d!125561) (not d!125579) (not b!1040215) (not b!1040176) (not d!125575) (not b!1040174) (not b!1040188) (not b!1040138) (not b!1040136) (not b!1040137) (not d!125577) (not b!1040168) (not bm!44042) (not b!1040203) (not bm!44035))
(check-sat b_and!33553 (not b_next!21003))
