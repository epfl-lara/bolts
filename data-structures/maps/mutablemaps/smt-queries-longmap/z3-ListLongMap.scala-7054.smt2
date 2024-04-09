; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89416 () Bool)

(assert start!89416)

(declare-fun b!1024580 () Bool)

(declare-fun b_free!20379 () Bool)

(declare-fun b_next!20379 () Bool)

(assert (=> b!1024580 (= b_free!20379 (not b_next!20379))))

(declare-fun tp!72183 () Bool)

(declare-fun b_and!32643 () Bool)

(assert (=> b!1024580 (= tp!72183 b_and!32643)))

(declare-fun b!1024573 () Bool)

(declare-fun res!686074 () Bool)

(declare-fun e!577614 () Bool)

(assert (=> b!1024573 (=> (not res!686074) (not e!577614))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1024573 (= res!686074 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1024574 () Bool)

(declare-fun e!577611 () Bool)

(declare-fun e!577612 () Bool)

(declare-fun mapRes!37577 () Bool)

(assert (=> b!1024574 (= e!577611 (and e!577612 mapRes!37577))))

(declare-fun condMapEmpty!37577 () Bool)

(declare-datatypes ((V!37005 0))(
  ( (V!37006 (val!12100 Int)) )
))
(declare-datatypes ((ValueCell!11346 0))(
  ( (ValueCellFull!11346 (v!14670 V!37005)) (EmptyCell!11346) )
))
(declare-datatypes ((array!64232 0))(
  ( (array!64233 (arr!30921 (Array (_ BitVec 32) (_ BitVec 64))) (size!31435 (_ BitVec 32))) )
))
(declare-datatypes ((array!64234 0))(
  ( (array!64235 (arr!30922 (Array (_ BitVec 32) ValueCell!11346)) (size!31436 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5286 0))(
  ( (LongMapFixedSize!5287 (defaultEntry!5995 Int) (mask!29644 (_ BitVec 32)) (extraKeys!5727 (_ BitVec 32)) (zeroValue!5831 V!37005) (minValue!5831 V!37005) (_size!2698 (_ BitVec 32)) (_keys!11139 array!64232) (_values!6018 array!64234) (_vacant!2698 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5286)

(declare-fun mapDefault!37577 () ValueCell!11346)

(assert (=> b!1024574 (= condMapEmpty!37577 (= (arr!30922 (_values!6018 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11346)) mapDefault!37577)))))

(declare-fun b!1024575 () Bool)

(declare-fun res!686075 () Bool)

(declare-fun e!577610 () Bool)

(assert (=> b!1024575 (=> res!686075 e!577610)))

(declare-datatypes ((List!21837 0))(
  ( (Nil!21834) (Cons!21833 (h!23031 (_ BitVec 64)) (t!30906 List!21837)) )
))
(declare-fun contains!5965 (List!21837 (_ BitVec 64)) Bool)

(assert (=> b!1024575 (= res!686075 (contains!5965 Nil!21834 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!37577 () Bool)

(assert (=> mapIsEmpty!37577 mapRes!37577))

(declare-fun b!1024576 () Bool)

(declare-fun res!686071 () Bool)

(assert (=> b!1024576 (=> res!686071 e!577610)))

(assert (=> b!1024576 (= res!686071 (contains!5965 Nil!21834 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024577 () Bool)

(declare-fun tp_is_empty!24099 () Bool)

(assert (=> b!1024577 (= e!577612 tp_is_empty!24099)))

(declare-fun mapNonEmpty!37577 () Bool)

(declare-fun tp!72184 () Bool)

(declare-fun e!577615 () Bool)

(assert (=> mapNonEmpty!37577 (= mapRes!37577 (and tp!72184 e!577615))))

(declare-fun mapValue!37577 () ValueCell!11346)

(declare-fun mapKey!37577 () (_ BitVec 32))

(declare-fun mapRest!37577 () (Array (_ BitVec 32) ValueCell!11346))

(assert (=> mapNonEmpty!37577 (= (arr!30922 (_values!6018 thiss!1427)) (store mapRest!37577 mapKey!37577 mapValue!37577))))

(declare-fun b!1024578 () Bool)

(assert (=> b!1024578 (= e!577615 tp_is_empty!24099)))

(declare-fun b!1024579 () Bool)

(declare-fun e!577616 () Bool)

(assert (=> b!1024579 (= e!577614 e!577616)))

(declare-fun res!686073 () Bool)

(assert (=> b!1024579 (=> (not res!686073) (not e!577616))))

(declare-datatypes ((SeekEntryResult!9588 0))(
  ( (MissingZero!9588 (index!40722 (_ BitVec 32))) (Found!9588 (index!40723 (_ BitVec 32))) (Intermediate!9588 (undefined!10400 Bool) (index!40724 (_ BitVec 32)) (x!91085 (_ BitVec 32))) (Undefined!9588) (MissingVacant!9588 (index!40725 (_ BitVec 32))) )
))
(declare-fun lt!450645 () SeekEntryResult!9588)

(get-info :version)

(assert (=> b!1024579 (= res!686073 ((_ is Found!9588) lt!450645))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64232 (_ BitVec 32)) SeekEntryResult!9588)

(assert (=> b!1024579 (= lt!450645 (seekEntry!0 key!909 (_keys!11139 thiss!1427) (mask!29644 thiss!1427)))))

(declare-fun e!577613 () Bool)

(declare-fun array_inv!23819 (array!64232) Bool)

(declare-fun array_inv!23820 (array!64234) Bool)

(assert (=> b!1024580 (= e!577613 (and tp!72183 tp_is_empty!24099 (array_inv!23819 (_keys!11139 thiss!1427)) (array_inv!23820 (_values!6018 thiss!1427)) e!577611))))

(declare-fun b!1024581 () Bool)

(declare-fun res!686072 () Bool)

(assert (=> b!1024581 (=> res!686072 e!577610)))

(declare-fun noDuplicate!1475 (List!21837) Bool)

(assert (=> b!1024581 (= res!686072 (not (noDuplicate!1475 Nil!21834)))))

(declare-fun b!1024582 () Bool)

(assert (=> b!1024582 (= e!577616 (not e!577610))))

(declare-fun res!686076 () Bool)

(assert (=> b!1024582 (=> res!686076 e!577610)))

(assert (=> b!1024582 (= res!686076 (or (bvsge (size!31435 (_keys!11139 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31435 (_keys!11139 thiss!1427)))))))

(declare-fun arrayCountValidKeys!0 (array!64232 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1024582 (= (arrayCountValidKeys!0 (array!64233 (store (arr!30921 (_keys!11139 thiss!1427)) (index!40723 lt!450645) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31435 (_keys!11139 thiss!1427))) #b00000000000000000000000000000000 (size!31435 (_keys!11139 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11139 thiss!1427) #b00000000000000000000000000000000 (size!31435 (_keys!11139 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33322 0))(
  ( (Unit!33323) )
))
(declare-fun lt!450646 () Unit!33322)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64232 (_ BitVec 32) (_ BitVec 64)) Unit!33322)

(assert (=> b!1024582 (= lt!450646 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11139 thiss!1427) (index!40723 lt!450645) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024583 () Bool)

(assert (=> b!1024583 (= e!577610 true)))

(declare-fun lt!450644 () Bool)

(declare-fun arrayNoDuplicates!0 (array!64232 (_ BitVec 32) List!21837) Bool)

(assert (=> b!1024583 (= lt!450644 (arrayNoDuplicates!0 (_keys!11139 thiss!1427) #b00000000000000000000000000000000 Nil!21834))))

(declare-fun res!686070 () Bool)

(assert (=> start!89416 (=> (not res!686070) (not e!577614))))

(declare-fun valid!1964 (LongMapFixedSize!5286) Bool)

(assert (=> start!89416 (= res!686070 (valid!1964 thiss!1427))))

(assert (=> start!89416 e!577614))

(assert (=> start!89416 e!577613))

(assert (=> start!89416 true))

(assert (= (and start!89416 res!686070) b!1024573))

(assert (= (and b!1024573 res!686074) b!1024579))

(assert (= (and b!1024579 res!686073) b!1024582))

(assert (= (and b!1024582 (not res!686076)) b!1024581))

(assert (= (and b!1024581 (not res!686072)) b!1024575))

(assert (= (and b!1024575 (not res!686075)) b!1024576))

(assert (= (and b!1024576 (not res!686071)) b!1024583))

(assert (= (and b!1024574 condMapEmpty!37577) mapIsEmpty!37577))

(assert (= (and b!1024574 (not condMapEmpty!37577)) mapNonEmpty!37577))

(assert (= (and mapNonEmpty!37577 ((_ is ValueCellFull!11346) mapValue!37577)) b!1024578))

(assert (= (and b!1024574 ((_ is ValueCellFull!11346) mapDefault!37577)) b!1024577))

(assert (= b!1024580 b!1024574))

(assert (= start!89416 b!1024580))

(declare-fun m!943017 () Bool)

(assert (=> mapNonEmpty!37577 m!943017))

(declare-fun m!943019 () Bool)

(assert (=> b!1024575 m!943019))

(declare-fun m!943021 () Bool)

(assert (=> b!1024581 m!943021))

(declare-fun m!943023 () Bool)

(assert (=> b!1024583 m!943023))

(declare-fun m!943025 () Bool)

(assert (=> b!1024579 m!943025))

(declare-fun m!943027 () Bool)

(assert (=> b!1024582 m!943027))

(declare-fun m!943029 () Bool)

(assert (=> b!1024582 m!943029))

(declare-fun m!943031 () Bool)

(assert (=> b!1024582 m!943031))

(declare-fun m!943033 () Bool)

(assert (=> b!1024582 m!943033))

(declare-fun m!943035 () Bool)

(assert (=> b!1024576 m!943035))

(declare-fun m!943037 () Bool)

(assert (=> b!1024580 m!943037))

(declare-fun m!943039 () Bool)

(assert (=> b!1024580 m!943039))

(declare-fun m!943041 () Bool)

(assert (=> start!89416 m!943041))

(check-sat (not mapNonEmpty!37577) (not start!89416) (not b!1024580) (not b!1024581) (not b!1024583) (not b!1024576) tp_is_empty!24099 b_and!32643 (not b!1024582) (not b!1024575) (not b_next!20379) (not b!1024579))
(check-sat b_and!32643 (not b_next!20379))
