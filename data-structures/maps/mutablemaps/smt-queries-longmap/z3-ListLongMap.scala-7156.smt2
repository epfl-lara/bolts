; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91100 () Bool)

(assert start!91100)

(declare-fun b!1039779 () Bool)

(declare-fun b_free!20991 () Bool)

(declare-fun b_next!20991 () Bool)

(assert (=> b!1039779 (= b_free!20991 (not b_next!20991))))

(declare-fun tp!74160 () Bool)

(declare-fun b_and!33541 () Bool)

(assert (=> b!1039779 (= tp!74160 b_and!33541)))

(declare-fun b!1039775 () Bool)

(declare-fun e!588596 () Bool)

(declare-datatypes ((SeekEntryResult!9787 0))(
  ( (MissingZero!9787 (index!41518 (_ BitVec 32))) (Found!9787 (index!41519 (_ BitVec 32))) (Intermediate!9787 (undefined!10599 Bool) (index!41520 (_ BitVec 32)) (x!92806 (_ BitVec 32))) (Undefined!9787) (MissingVacant!9787 (index!41521 (_ BitVec 32))) )
))
(declare-fun lt!458241 () SeekEntryResult!9787)

(declare-datatypes ((V!37821 0))(
  ( (V!37822 (val!12406 Int)) )
))
(declare-datatypes ((ValueCell!11652 0))(
  ( (ValueCellFull!11652 (v!14994 V!37821)) (EmptyCell!11652) )
))
(declare-datatypes ((array!65536 0))(
  ( (array!65537 (arr!31533 (Array (_ BitVec 32) (_ BitVec 64))) (size!32065 (_ BitVec 32))) )
))
(declare-datatypes ((array!65538 0))(
  ( (array!65539 (arr!31534 (Array (_ BitVec 32) ValueCell!11652)) (size!32066 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5898 0))(
  ( (LongMapFixedSize!5899 (defaultEntry!6331 Int) (mask!30302 (_ BitVec 32)) (extraKeys!6059 (_ BitVec 32)) (zeroValue!6165 V!37821) (minValue!6165 V!37821) (_size!3004 (_ BitVec 32)) (_keys!11542 array!65536) (_values!6354 array!65538) (_vacant!3004 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5898)

(assert (=> b!1039775 (= e!588596 (not (or (bvslt (index!41519 lt!458241) #b00000000000000000000000000000000) (bvslt (index!41519 lt!458241) (size!32065 (_keys!11542 thiss!1427))))))))

(declare-fun lt!458242 () array!65536)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65536 (_ BitVec 32)) Bool)

(assert (=> b!1039775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458242 (mask!30302 thiss!1427))))

(declare-datatypes ((Unit!33994 0))(
  ( (Unit!33995) )
))
(declare-fun lt!458243 () Unit!33994)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65536 (_ BitVec 32) (_ BitVec 32)) Unit!33994)

(assert (=> b!1039775 (= lt!458243 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11542 thiss!1427) (index!41519 lt!458241) (mask!30302 thiss!1427)))))

(declare-datatypes ((List!22073 0))(
  ( (Nil!22070) (Cons!22069 (h!23273 (_ BitVec 64)) (t!31294 List!22073)) )
))
(declare-fun arrayNoDuplicates!0 (array!65536 (_ BitVec 32) List!22073) Bool)

(assert (=> b!1039775 (arrayNoDuplicates!0 lt!458242 #b00000000000000000000000000000000 Nil!22070)))

(declare-fun lt!458244 () Unit!33994)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65536 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22073) Unit!33994)

(assert (=> b!1039775 (= lt!458244 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11542 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41519 lt!458241) #b00000000000000000000000000000000 Nil!22070))))

(declare-fun arrayCountValidKeys!0 (array!65536 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1039775 (= (arrayCountValidKeys!0 lt!458242 #b00000000000000000000000000000000 (size!32065 (_keys!11542 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11542 thiss!1427) #b00000000000000000000000000000000 (size!32065 (_keys!11542 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1039775 (= lt!458242 (array!65537 (store (arr!31533 (_keys!11542 thiss!1427)) (index!41519 lt!458241) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32065 (_keys!11542 thiss!1427))))))

(declare-fun lt!458245 () Unit!33994)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65536 (_ BitVec 32) (_ BitVec 64)) Unit!33994)

(assert (=> b!1039775 (= lt!458245 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11542 thiss!1427) (index!41519 lt!458241) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!38635 () Bool)

(declare-fun mapRes!38635 () Bool)

(declare-fun tp!74159 () Bool)

(declare-fun e!588597 () Bool)

(assert (=> mapNonEmpty!38635 (= mapRes!38635 (and tp!74159 e!588597))))

(declare-fun mapRest!38635 () (Array (_ BitVec 32) ValueCell!11652))

(declare-fun mapKey!38635 () (_ BitVec 32))

(declare-fun mapValue!38635 () ValueCell!11652)

(assert (=> mapNonEmpty!38635 (= (arr!31534 (_values!6354 thiss!1427)) (store mapRest!38635 mapKey!38635 mapValue!38635))))

(declare-fun b!1039776 () Bool)

(declare-fun e!588602 () Bool)

(declare-fun e!588598 () Bool)

(assert (=> b!1039776 (= e!588602 (and e!588598 mapRes!38635))))

(declare-fun condMapEmpty!38635 () Bool)

(declare-fun mapDefault!38635 () ValueCell!11652)

(assert (=> b!1039776 (= condMapEmpty!38635 (= (arr!31534 (_values!6354 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11652)) mapDefault!38635)))))

(declare-fun b!1039777 () Bool)

(declare-fun e!588599 () Bool)

(assert (=> b!1039777 (= e!588599 e!588596)))

(declare-fun res!693434 () Bool)

(assert (=> b!1039777 (=> (not res!693434) (not e!588596))))

(get-info :version)

(assert (=> b!1039777 (= res!693434 ((_ is Found!9787) lt!458241))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65536 (_ BitVec 32)) SeekEntryResult!9787)

(assert (=> b!1039777 (= lt!458241 (seekEntry!0 key!909 (_keys!11542 thiss!1427) (mask!30302 thiss!1427)))))

(declare-fun tp_is_empty!24711 () Bool)

(declare-fun e!588600 () Bool)

(declare-fun array_inv!24211 (array!65536) Bool)

(declare-fun array_inv!24212 (array!65538) Bool)

(assert (=> b!1039779 (= e!588600 (and tp!74160 tp_is_empty!24711 (array_inv!24211 (_keys!11542 thiss!1427)) (array_inv!24212 (_values!6354 thiss!1427)) e!588602))))

(declare-fun b!1039780 () Bool)

(declare-fun res!693433 () Bool)

(assert (=> b!1039780 (=> (not res!693433) (not e!588599))))

(assert (=> b!1039780 (= res!693433 (not (= key!909 (bvneg key!909))))))

(declare-fun mapIsEmpty!38635 () Bool)

(assert (=> mapIsEmpty!38635 mapRes!38635))

(declare-fun b!1039781 () Bool)

(assert (=> b!1039781 (= e!588598 tp_is_empty!24711)))

(declare-fun res!693432 () Bool)

(assert (=> start!91100 (=> (not res!693432) (not e!588599))))

(declare-fun valid!2169 (LongMapFixedSize!5898) Bool)

(assert (=> start!91100 (= res!693432 (valid!2169 thiss!1427))))

(assert (=> start!91100 e!588599))

(assert (=> start!91100 e!588600))

(assert (=> start!91100 true))

(declare-fun b!1039778 () Bool)

(assert (=> b!1039778 (= e!588597 tp_is_empty!24711)))

(assert (= (and start!91100 res!693432) b!1039780))

(assert (= (and b!1039780 res!693433) b!1039777))

(assert (= (and b!1039777 res!693434) b!1039775))

(assert (= (and b!1039776 condMapEmpty!38635) mapIsEmpty!38635))

(assert (= (and b!1039776 (not condMapEmpty!38635)) mapNonEmpty!38635))

(assert (= (and mapNonEmpty!38635 ((_ is ValueCellFull!11652) mapValue!38635)) b!1039778))

(assert (= (and b!1039776 ((_ is ValueCellFull!11652) mapDefault!38635)) b!1039781))

(assert (= b!1039779 b!1039776))

(assert (= start!91100 b!1039779))

(declare-fun m!959555 () Bool)

(assert (=> b!1039775 m!959555))

(declare-fun m!959557 () Bool)

(assert (=> b!1039775 m!959557))

(declare-fun m!959559 () Bool)

(assert (=> b!1039775 m!959559))

(declare-fun m!959561 () Bool)

(assert (=> b!1039775 m!959561))

(declare-fun m!959563 () Bool)

(assert (=> b!1039775 m!959563))

(declare-fun m!959565 () Bool)

(assert (=> b!1039775 m!959565))

(declare-fun m!959567 () Bool)

(assert (=> b!1039775 m!959567))

(declare-fun m!959569 () Bool)

(assert (=> b!1039775 m!959569))

(declare-fun m!959571 () Bool)

(assert (=> start!91100 m!959571))

(declare-fun m!959573 () Bool)

(assert (=> mapNonEmpty!38635 m!959573))

(declare-fun m!959575 () Bool)

(assert (=> b!1039779 m!959575))

(declare-fun m!959577 () Bool)

(assert (=> b!1039779 m!959577))

(declare-fun m!959579 () Bool)

(assert (=> b!1039777 m!959579))

(check-sat (not mapNonEmpty!38635) tp_is_empty!24711 (not b!1039775) (not b_next!20991) (not start!91100) (not b!1039777) b_and!33541 (not b!1039779))
(check-sat b_and!33541 (not b_next!20991))
(get-model)

(declare-fun d!125513 () Bool)

(declare-fun res!693450 () Bool)

(declare-fun e!588626 () Bool)

(assert (=> d!125513 (=> (not res!693450) (not e!588626))))

(declare-fun simpleValid!429 (LongMapFixedSize!5898) Bool)

(assert (=> d!125513 (= res!693450 (simpleValid!429 thiss!1427))))

(assert (=> d!125513 (= (valid!2169 thiss!1427) e!588626)))

(declare-fun b!1039809 () Bool)

(declare-fun res!693451 () Bool)

(assert (=> b!1039809 (=> (not res!693451) (not e!588626))))

(assert (=> b!1039809 (= res!693451 (= (arrayCountValidKeys!0 (_keys!11542 thiss!1427) #b00000000000000000000000000000000 (size!32065 (_keys!11542 thiss!1427))) (_size!3004 thiss!1427)))))

(declare-fun b!1039810 () Bool)

(declare-fun res!693452 () Bool)

(assert (=> b!1039810 (=> (not res!693452) (not e!588626))))

(assert (=> b!1039810 (= res!693452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11542 thiss!1427) (mask!30302 thiss!1427)))))

(declare-fun b!1039811 () Bool)

(assert (=> b!1039811 (= e!588626 (arrayNoDuplicates!0 (_keys!11542 thiss!1427) #b00000000000000000000000000000000 Nil!22070))))

(assert (= (and d!125513 res!693450) b!1039809))

(assert (= (and b!1039809 res!693451) b!1039810))

(assert (= (and b!1039810 res!693452) b!1039811))

(declare-fun m!959607 () Bool)

(assert (=> d!125513 m!959607))

(assert (=> b!1039809 m!959569))

(declare-fun m!959609 () Bool)

(assert (=> b!1039810 m!959609))

(declare-fun m!959611 () Bool)

(assert (=> b!1039811 m!959611))

(assert (=> start!91100 d!125513))

(declare-fun b!1039820 () Bool)

(declare-fun e!588632 () (_ BitVec 32))

(declare-fun call!44018 () (_ BitVec 32))

(assert (=> b!1039820 (= e!588632 (bvadd #b00000000000000000000000000000001 call!44018))))

(declare-fun b!1039821 () Bool)

(declare-fun e!588631 () (_ BitVec 32))

(assert (=> b!1039821 (= e!588631 e!588632)))

(declare-fun c!105350 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1039821 (= c!105350 (validKeyInArray!0 (select (arr!31533 lt!458242) #b00000000000000000000000000000000)))))

(declare-fun b!1039822 () Bool)

(assert (=> b!1039822 (= e!588631 #b00000000000000000000000000000000)))

(declare-fun b!1039823 () Bool)

(assert (=> b!1039823 (= e!588632 call!44018)))

(declare-fun bm!44015 () Bool)

(assert (=> bm!44015 (= call!44018 (arrayCountValidKeys!0 lt!458242 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32065 (_keys!11542 thiss!1427))))))

(declare-fun d!125515 () Bool)

(declare-fun lt!458263 () (_ BitVec 32))

(assert (=> d!125515 (and (bvsge lt!458263 #b00000000000000000000000000000000) (bvsle lt!458263 (bvsub (size!32065 lt!458242) #b00000000000000000000000000000000)))))

(assert (=> d!125515 (= lt!458263 e!588631)))

(declare-fun c!105349 () Bool)

(assert (=> d!125515 (= c!105349 (bvsge #b00000000000000000000000000000000 (size!32065 (_keys!11542 thiss!1427))))))

(assert (=> d!125515 (and (bvsle #b00000000000000000000000000000000 (size!32065 (_keys!11542 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32065 (_keys!11542 thiss!1427)) (size!32065 lt!458242)))))

(assert (=> d!125515 (= (arrayCountValidKeys!0 lt!458242 #b00000000000000000000000000000000 (size!32065 (_keys!11542 thiss!1427))) lt!458263)))

(assert (= (and d!125515 c!105349) b!1039822))

(assert (= (and d!125515 (not c!105349)) b!1039821))

(assert (= (and b!1039821 c!105350) b!1039820))

(assert (= (and b!1039821 (not c!105350)) b!1039823))

(assert (= (or b!1039820 b!1039823) bm!44015))

(declare-fun m!959613 () Bool)

(assert (=> b!1039821 m!959613))

(assert (=> b!1039821 m!959613))

(declare-fun m!959615 () Bool)

(assert (=> b!1039821 m!959615))

(declare-fun m!959617 () Bool)

(assert (=> bm!44015 m!959617))

(assert (=> b!1039775 d!125515))

(declare-fun d!125517 () Bool)

(declare-fun e!588635 () Bool)

(assert (=> d!125517 e!588635))

(declare-fun res!693455 () Bool)

(assert (=> d!125517 (=> (not res!693455) (not e!588635))))

(assert (=> d!125517 (= res!693455 (and (bvsge (index!41519 lt!458241) #b00000000000000000000000000000000) (bvslt (index!41519 lt!458241) (size!32065 (_keys!11542 thiss!1427)))))))

(declare-fun lt!458266 () Unit!33994)

(declare-fun choose!25 (array!65536 (_ BitVec 32) (_ BitVec 32)) Unit!33994)

(assert (=> d!125517 (= lt!458266 (choose!25 (_keys!11542 thiss!1427) (index!41519 lt!458241) (mask!30302 thiss!1427)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!125517 (validMask!0 (mask!30302 thiss!1427))))

(assert (=> d!125517 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11542 thiss!1427) (index!41519 lt!458241) (mask!30302 thiss!1427)) lt!458266)))

(declare-fun b!1039826 () Bool)

(assert (=> b!1039826 (= e!588635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65537 (store (arr!31533 (_keys!11542 thiss!1427)) (index!41519 lt!458241) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32065 (_keys!11542 thiss!1427))) (mask!30302 thiss!1427)))))

(assert (= (and d!125517 res!693455) b!1039826))

(declare-fun m!959619 () Bool)

(assert (=> d!125517 m!959619))

(declare-fun m!959621 () Bool)

(assert (=> d!125517 m!959621))

(assert (=> b!1039826 m!959555))

(declare-fun m!959623 () Bool)

(assert (=> b!1039826 m!959623))

(assert (=> b!1039775 d!125517))

(declare-fun b!1039827 () Bool)

(declare-fun e!588637 () (_ BitVec 32))

(declare-fun call!44019 () (_ BitVec 32))

(assert (=> b!1039827 (= e!588637 (bvadd #b00000000000000000000000000000001 call!44019))))

(declare-fun b!1039828 () Bool)

(declare-fun e!588636 () (_ BitVec 32))

(assert (=> b!1039828 (= e!588636 e!588637)))

(declare-fun c!105352 () Bool)

(assert (=> b!1039828 (= c!105352 (validKeyInArray!0 (select (arr!31533 (_keys!11542 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1039829 () Bool)

(assert (=> b!1039829 (= e!588636 #b00000000000000000000000000000000)))

(declare-fun b!1039830 () Bool)

(assert (=> b!1039830 (= e!588637 call!44019)))

(declare-fun bm!44016 () Bool)

(assert (=> bm!44016 (= call!44019 (arrayCountValidKeys!0 (_keys!11542 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32065 (_keys!11542 thiss!1427))))))

(declare-fun d!125519 () Bool)

(declare-fun lt!458267 () (_ BitVec 32))

(assert (=> d!125519 (and (bvsge lt!458267 #b00000000000000000000000000000000) (bvsle lt!458267 (bvsub (size!32065 (_keys!11542 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!125519 (= lt!458267 e!588636)))

(declare-fun c!105351 () Bool)

(assert (=> d!125519 (= c!105351 (bvsge #b00000000000000000000000000000000 (size!32065 (_keys!11542 thiss!1427))))))

(assert (=> d!125519 (and (bvsle #b00000000000000000000000000000000 (size!32065 (_keys!11542 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32065 (_keys!11542 thiss!1427)) (size!32065 (_keys!11542 thiss!1427))))))

(assert (=> d!125519 (= (arrayCountValidKeys!0 (_keys!11542 thiss!1427) #b00000000000000000000000000000000 (size!32065 (_keys!11542 thiss!1427))) lt!458267)))

(assert (= (and d!125519 c!105351) b!1039829))

(assert (= (and d!125519 (not c!105351)) b!1039828))

(assert (= (and b!1039828 c!105352) b!1039827))

(assert (= (and b!1039828 (not c!105352)) b!1039830))

(assert (= (or b!1039827 b!1039830) bm!44016))

(declare-fun m!959625 () Bool)

(assert (=> b!1039828 m!959625))

(assert (=> b!1039828 m!959625))

(declare-fun m!959627 () Bool)

(assert (=> b!1039828 m!959627))

(declare-fun m!959629 () Bool)

(assert (=> bm!44016 m!959629))

(assert (=> b!1039775 d!125519))

(declare-fun d!125521 () Bool)

(declare-fun res!693462 () Bool)

(declare-fun e!588647 () Bool)

(assert (=> d!125521 (=> res!693462 e!588647)))

(assert (=> d!125521 (= res!693462 (bvsge #b00000000000000000000000000000000 (size!32065 lt!458242)))))

(assert (=> d!125521 (= (arrayNoDuplicates!0 lt!458242 #b00000000000000000000000000000000 Nil!22070) e!588647)))

(declare-fun b!1039841 () Bool)

(declare-fun e!588646 () Bool)

(declare-fun contains!6069 (List!22073 (_ BitVec 64)) Bool)

(assert (=> b!1039841 (= e!588646 (contains!6069 Nil!22070 (select (arr!31533 lt!458242) #b00000000000000000000000000000000)))))

(declare-fun b!1039842 () Bool)

(declare-fun e!588648 () Bool)

(declare-fun call!44022 () Bool)

(assert (=> b!1039842 (= e!588648 call!44022)))

(declare-fun bm!44019 () Bool)

(declare-fun c!105355 () Bool)

(assert (=> bm!44019 (= call!44022 (arrayNoDuplicates!0 lt!458242 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105355 (Cons!22069 (select (arr!31533 lt!458242) #b00000000000000000000000000000000) Nil!22070) Nil!22070)))))

(declare-fun b!1039843 () Bool)

(assert (=> b!1039843 (= e!588648 call!44022)))

(declare-fun b!1039844 () Bool)

(declare-fun e!588649 () Bool)

(assert (=> b!1039844 (= e!588649 e!588648)))

(assert (=> b!1039844 (= c!105355 (validKeyInArray!0 (select (arr!31533 lt!458242) #b00000000000000000000000000000000)))))

(declare-fun b!1039845 () Bool)

(assert (=> b!1039845 (= e!588647 e!588649)))

(declare-fun res!693463 () Bool)

(assert (=> b!1039845 (=> (not res!693463) (not e!588649))))

(assert (=> b!1039845 (= res!693463 (not e!588646))))

(declare-fun res!693464 () Bool)

(assert (=> b!1039845 (=> (not res!693464) (not e!588646))))

(assert (=> b!1039845 (= res!693464 (validKeyInArray!0 (select (arr!31533 lt!458242) #b00000000000000000000000000000000)))))

(assert (= (and d!125521 (not res!693462)) b!1039845))

(assert (= (and b!1039845 res!693464) b!1039841))

(assert (= (and b!1039845 res!693463) b!1039844))

(assert (= (and b!1039844 c!105355) b!1039842))

(assert (= (and b!1039844 (not c!105355)) b!1039843))

(assert (= (or b!1039842 b!1039843) bm!44019))

(assert (=> b!1039841 m!959613))

(assert (=> b!1039841 m!959613))

(declare-fun m!959631 () Bool)

(assert (=> b!1039841 m!959631))

(assert (=> bm!44019 m!959613))

(declare-fun m!959633 () Bool)

(assert (=> bm!44019 m!959633))

(assert (=> b!1039844 m!959613))

(assert (=> b!1039844 m!959613))

(assert (=> b!1039844 m!959615))

(assert (=> b!1039845 m!959613))

(assert (=> b!1039845 m!959613))

(assert (=> b!1039845 m!959615))

(assert (=> b!1039775 d!125521))

(declare-fun d!125523 () Bool)

(declare-fun res!693469 () Bool)

(declare-fun e!588656 () Bool)

(assert (=> d!125523 (=> res!693469 e!588656)))

(assert (=> d!125523 (= res!693469 (bvsge #b00000000000000000000000000000000 (size!32065 lt!458242)))))

(assert (=> d!125523 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458242 (mask!30302 thiss!1427)) e!588656)))

(declare-fun b!1039854 () Bool)

(declare-fun e!588658 () Bool)

(declare-fun call!44025 () Bool)

(assert (=> b!1039854 (= e!588658 call!44025)))

(declare-fun b!1039855 () Bool)

(assert (=> b!1039855 (= e!588656 e!588658)))

(declare-fun c!105358 () Bool)

(assert (=> b!1039855 (= c!105358 (validKeyInArray!0 (select (arr!31533 lt!458242) #b00000000000000000000000000000000)))))

(declare-fun bm!44022 () Bool)

(assert (=> bm!44022 (= call!44025 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!458242 (mask!30302 thiss!1427)))))

(declare-fun b!1039856 () Bool)

(declare-fun e!588657 () Bool)

(assert (=> b!1039856 (= e!588658 e!588657)))

(declare-fun lt!458275 () (_ BitVec 64))

(assert (=> b!1039856 (= lt!458275 (select (arr!31533 lt!458242) #b00000000000000000000000000000000))))

(declare-fun lt!458276 () Unit!33994)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65536 (_ BitVec 64) (_ BitVec 32)) Unit!33994)

(assert (=> b!1039856 (= lt!458276 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!458242 lt!458275 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!65536 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1039856 (arrayContainsKey!0 lt!458242 lt!458275 #b00000000000000000000000000000000)))

(declare-fun lt!458274 () Unit!33994)

(assert (=> b!1039856 (= lt!458274 lt!458276)))

(declare-fun res!693470 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65536 (_ BitVec 32)) SeekEntryResult!9787)

(assert (=> b!1039856 (= res!693470 (= (seekEntryOrOpen!0 (select (arr!31533 lt!458242) #b00000000000000000000000000000000) lt!458242 (mask!30302 thiss!1427)) (Found!9787 #b00000000000000000000000000000000)))))

(assert (=> b!1039856 (=> (not res!693470) (not e!588657))))

(declare-fun b!1039857 () Bool)

(assert (=> b!1039857 (= e!588657 call!44025)))

(assert (= (and d!125523 (not res!693469)) b!1039855))

(assert (= (and b!1039855 c!105358) b!1039856))

(assert (= (and b!1039855 (not c!105358)) b!1039854))

(assert (= (and b!1039856 res!693470) b!1039857))

(assert (= (or b!1039857 b!1039854) bm!44022))

(assert (=> b!1039855 m!959613))

(assert (=> b!1039855 m!959613))

(assert (=> b!1039855 m!959615))

(declare-fun m!959635 () Bool)

(assert (=> bm!44022 m!959635))

(assert (=> b!1039856 m!959613))

(declare-fun m!959637 () Bool)

(assert (=> b!1039856 m!959637))

(declare-fun m!959639 () Bool)

(assert (=> b!1039856 m!959639))

(assert (=> b!1039856 m!959613))

(declare-fun m!959641 () Bool)

(assert (=> b!1039856 m!959641))

(assert (=> b!1039775 d!125523))

(declare-fun b!1039866 () Bool)

(declare-fun res!693481 () Bool)

(declare-fun e!588663 () Bool)

(assert (=> b!1039866 (=> (not res!693481) (not e!588663))))

(assert (=> b!1039866 (= res!693481 (validKeyInArray!0 (select (arr!31533 (_keys!11542 thiss!1427)) (index!41519 lt!458241))))))

(declare-fun b!1039867 () Bool)

(declare-fun res!693479 () Bool)

(assert (=> b!1039867 (=> (not res!693479) (not e!588663))))

(assert (=> b!1039867 (= res!693479 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1039869 () Bool)

(declare-fun e!588664 () Bool)

(assert (=> b!1039869 (= e!588664 (= (arrayCountValidKeys!0 (array!65537 (store (arr!31533 (_keys!11542 thiss!1427)) (index!41519 lt!458241) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32065 (_keys!11542 thiss!1427))) #b00000000000000000000000000000000 (size!32065 (_keys!11542 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11542 thiss!1427) #b00000000000000000000000000000000 (size!32065 (_keys!11542 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1039868 () Bool)

(assert (=> b!1039868 (= e!588663 (bvslt (size!32065 (_keys!11542 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun d!125525 () Bool)

(assert (=> d!125525 e!588664))

(declare-fun res!693482 () Bool)

(assert (=> d!125525 (=> (not res!693482) (not e!588664))))

(assert (=> d!125525 (= res!693482 (and (bvsge (index!41519 lt!458241) #b00000000000000000000000000000000) (bvslt (index!41519 lt!458241) (size!32065 (_keys!11542 thiss!1427)))))))

(declare-fun lt!458279 () Unit!33994)

(declare-fun choose!82 (array!65536 (_ BitVec 32) (_ BitVec 64)) Unit!33994)

(assert (=> d!125525 (= lt!458279 (choose!82 (_keys!11542 thiss!1427) (index!41519 lt!458241) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!125525 e!588663))

(declare-fun res!693480 () Bool)

(assert (=> d!125525 (=> (not res!693480) (not e!588663))))

(assert (=> d!125525 (= res!693480 (and (bvsge (index!41519 lt!458241) #b00000000000000000000000000000000) (bvslt (index!41519 lt!458241) (size!32065 (_keys!11542 thiss!1427)))))))

(assert (=> d!125525 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11542 thiss!1427) (index!41519 lt!458241) #b1000000000000000000000000000000000000000000000000000000000000000) lt!458279)))

(assert (= (and d!125525 res!693480) b!1039866))

(assert (= (and b!1039866 res!693481) b!1039867))

(assert (= (and b!1039867 res!693479) b!1039868))

(assert (= (and d!125525 res!693482) b!1039869))

(declare-fun m!959643 () Bool)

(assert (=> b!1039866 m!959643))

(assert (=> b!1039866 m!959643))

(declare-fun m!959645 () Bool)

(assert (=> b!1039866 m!959645))

(declare-fun m!959647 () Bool)

(assert (=> b!1039867 m!959647))

(assert (=> b!1039869 m!959555))

(declare-fun m!959649 () Bool)

(assert (=> b!1039869 m!959649))

(assert (=> b!1039869 m!959569))

(declare-fun m!959651 () Bool)

(assert (=> d!125525 m!959651))

(assert (=> b!1039775 d!125525))

(declare-fun d!125527 () Bool)

(declare-fun e!588667 () Bool)

(assert (=> d!125527 e!588667))

(declare-fun res!693485 () Bool)

(assert (=> d!125527 (=> (not res!693485) (not e!588667))))

(assert (=> d!125527 (= res!693485 (and (bvsge (index!41519 lt!458241) #b00000000000000000000000000000000) (bvslt (index!41519 lt!458241) (size!32065 (_keys!11542 thiss!1427)))))))

(declare-fun lt!458282 () Unit!33994)

(declare-fun choose!53 (array!65536 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22073) Unit!33994)

(assert (=> d!125527 (= lt!458282 (choose!53 (_keys!11542 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41519 lt!458241) #b00000000000000000000000000000000 Nil!22070))))

(assert (=> d!125527 (bvslt (size!32065 (_keys!11542 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!125527 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11542 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41519 lt!458241) #b00000000000000000000000000000000 Nil!22070) lt!458282)))

(declare-fun b!1039872 () Bool)

(assert (=> b!1039872 (= e!588667 (arrayNoDuplicates!0 (array!65537 (store (arr!31533 (_keys!11542 thiss!1427)) (index!41519 lt!458241) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32065 (_keys!11542 thiss!1427))) #b00000000000000000000000000000000 Nil!22070))))

(assert (= (and d!125527 res!693485) b!1039872))

(declare-fun m!959653 () Bool)

(assert (=> d!125527 m!959653))

(assert (=> b!1039872 m!959555))

(declare-fun m!959655 () Bool)

(assert (=> b!1039872 m!959655))

(assert (=> b!1039775 d!125527))

(declare-fun d!125529 () Bool)

(assert (=> d!125529 (= (array_inv!24211 (_keys!11542 thiss!1427)) (bvsge (size!32065 (_keys!11542 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1039779 d!125529))

(declare-fun d!125531 () Bool)

(assert (=> d!125531 (= (array_inv!24212 (_values!6354 thiss!1427)) (bvsge (size!32066 (_values!6354 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1039779 d!125531))

(declare-fun b!1039885 () Bool)

(declare-fun c!105367 () Bool)

(declare-fun lt!458293 () (_ BitVec 64))

(assert (=> b!1039885 (= c!105367 (= lt!458293 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!588675 () SeekEntryResult!9787)

(declare-fun e!588674 () SeekEntryResult!9787)

(assert (=> b!1039885 (= e!588675 e!588674)))

(declare-fun b!1039886 () Bool)

(declare-fun lt!458292 () SeekEntryResult!9787)

(assert (=> b!1039886 (= e!588675 (Found!9787 (index!41520 lt!458292)))))

(declare-fun b!1039887 () Bool)

(declare-fun lt!458294 () SeekEntryResult!9787)

(assert (=> b!1039887 (= e!588674 (ite ((_ is MissingVacant!9787) lt!458294) (MissingZero!9787 (index!41521 lt!458294)) lt!458294))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65536 (_ BitVec 32)) SeekEntryResult!9787)

(assert (=> b!1039887 (= lt!458294 (seekKeyOrZeroReturnVacant!0 (x!92806 lt!458292) (index!41520 lt!458292) (index!41520 lt!458292) key!909 (_keys!11542 thiss!1427) (mask!30302 thiss!1427)))))

(declare-fun b!1039888 () Bool)

(declare-fun e!588676 () SeekEntryResult!9787)

(assert (=> b!1039888 (= e!588676 Undefined!9787)))

(declare-fun d!125533 () Bool)

(declare-fun lt!458291 () SeekEntryResult!9787)

(assert (=> d!125533 (and (or ((_ is MissingVacant!9787) lt!458291) (not ((_ is Found!9787) lt!458291)) (and (bvsge (index!41519 lt!458291) #b00000000000000000000000000000000) (bvslt (index!41519 lt!458291) (size!32065 (_keys!11542 thiss!1427))))) (not ((_ is MissingVacant!9787) lt!458291)) (or (not ((_ is Found!9787) lt!458291)) (= (select (arr!31533 (_keys!11542 thiss!1427)) (index!41519 lt!458291)) key!909)))))

(assert (=> d!125533 (= lt!458291 e!588676)))

(declare-fun c!105365 () Bool)

(assert (=> d!125533 (= c!105365 (and ((_ is Intermediate!9787) lt!458292) (undefined!10599 lt!458292)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65536 (_ BitVec 32)) SeekEntryResult!9787)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125533 (= lt!458292 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30302 thiss!1427)) key!909 (_keys!11542 thiss!1427) (mask!30302 thiss!1427)))))

(assert (=> d!125533 (validMask!0 (mask!30302 thiss!1427))))

(assert (=> d!125533 (= (seekEntry!0 key!909 (_keys!11542 thiss!1427) (mask!30302 thiss!1427)) lt!458291)))

(declare-fun b!1039889 () Bool)

(assert (=> b!1039889 (= e!588674 (MissingZero!9787 (index!41520 lt!458292)))))

(declare-fun b!1039890 () Bool)

(assert (=> b!1039890 (= e!588676 e!588675)))

(assert (=> b!1039890 (= lt!458293 (select (arr!31533 (_keys!11542 thiss!1427)) (index!41520 lt!458292)))))

(declare-fun c!105366 () Bool)

(assert (=> b!1039890 (= c!105366 (= lt!458293 key!909))))

(assert (= (and d!125533 c!105365) b!1039888))

(assert (= (and d!125533 (not c!105365)) b!1039890))

(assert (= (and b!1039890 c!105366) b!1039886))

(assert (= (and b!1039890 (not c!105366)) b!1039885))

(assert (= (and b!1039885 c!105367) b!1039889))

(assert (= (and b!1039885 (not c!105367)) b!1039887))

(declare-fun m!959657 () Bool)

(assert (=> b!1039887 m!959657))

(declare-fun m!959659 () Bool)

(assert (=> d!125533 m!959659))

(declare-fun m!959661 () Bool)

(assert (=> d!125533 m!959661))

(assert (=> d!125533 m!959661))

(declare-fun m!959663 () Bool)

(assert (=> d!125533 m!959663))

(assert (=> d!125533 m!959621))

(declare-fun m!959665 () Bool)

(assert (=> b!1039890 m!959665))

(assert (=> b!1039777 d!125533))

(declare-fun mapNonEmpty!38641 () Bool)

(declare-fun mapRes!38641 () Bool)

(declare-fun tp!74169 () Bool)

(declare-fun e!588681 () Bool)

(assert (=> mapNonEmpty!38641 (= mapRes!38641 (and tp!74169 e!588681))))

(declare-fun mapRest!38641 () (Array (_ BitVec 32) ValueCell!11652))

(declare-fun mapValue!38641 () ValueCell!11652)

(declare-fun mapKey!38641 () (_ BitVec 32))

(assert (=> mapNonEmpty!38641 (= mapRest!38635 (store mapRest!38641 mapKey!38641 mapValue!38641))))

(declare-fun mapIsEmpty!38641 () Bool)

(assert (=> mapIsEmpty!38641 mapRes!38641))

(declare-fun b!1039897 () Bool)

(assert (=> b!1039897 (= e!588681 tp_is_empty!24711)))

(declare-fun b!1039898 () Bool)

(declare-fun e!588682 () Bool)

(assert (=> b!1039898 (= e!588682 tp_is_empty!24711)))

(declare-fun condMapEmpty!38641 () Bool)

(declare-fun mapDefault!38641 () ValueCell!11652)

(assert (=> mapNonEmpty!38635 (= condMapEmpty!38641 (= mapRest!38635 ((as const (Array (_ BitVec 32) ValueCell!11652)) mapDefault!38641)))))

(assert (=> mapNonEmpty!38635 (= tp!74159 (and e!588682 mapRes!38641))))

(assert (= (and mapNonEmpty!38635 condMapEmpty!38641) mapIsEmpty!38641))

(assert (= (and mapNonEmpty!38635 (not condMapEmpty!38641)) mapNonEmpty!38641))

(assert (= (and mapNonEmpty!38641 ((_ is ValueCellFull!11652) mapValue!38641)) b!1039897))

(assert (= (and mapNonEmpty!38635 ((_ is ValueCellFull!11652) mapDefault!38641)) b!1039898))

(declare-fun m!959667 () Bool)

(assert (=> mapNonEmpty!38641 m!959667))

(check-sat (not b!1039856) (not b!1039841) (not b!1039811) (not b!1039810) (not b!1039887) (not b!1039821) (not bm!44019) (not d!125533) (not b_next!20991) (not d!125517) (not b!1039845) (not d!125527) (not b!1039844) (not mapNonEmpty!38641) (not b!1039828) (not b!1039855) (not b!1039867) (not bm!44015) tp_is_empty!24711 (not b!1039872) (not bm!44016) (not b!1039866) (not b!1039809) (not d!125525) (not d!125513) (not b!1039826) (not b!1039869) (not bm!44022) b_and!33541)
(check-sat b_and!33541 (not b_next!20991))
