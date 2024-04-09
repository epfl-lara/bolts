; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89452 () Bool)

(assert start!89452)

(declare-fun b!1025175 () Bool)

(declare-fun b_free!20415 () Bool)

(declare-fun b_next!20415 () Bool)

(assert (=> b!1025175 (= b_free!20415 (not b_next!20415))))

(declare-fun tp!72291 () Bool)

(declare-fun b_and!32679 () Bool)

(assert (=> b!1025175 (= tp!72291 b_and!32679)))

(declare-fun mapIsEmpty!37631 () Bool)

(declare-fun mapRes!37631 () Bool)

(assert (=> mapIsEmpty!37631 mapRes!37631))

(declare-fun b!1025167 () Bool)

(declare-fun e!578041 () Bool)

(declare-fun e!578044 () Bool)

(assert (=> b!1025167 (= e!578041 (and e!578044 mapRes!37631))))

(declare-fun condMapEmpty!37631 () Bool)

(declare-datatypes ((V!37053 0))(
  ( (V!37054 (val!12118 Int)) )
))
(declare-datatypes ((ValueCell!11364 0))(
  ( (ValueCellFull!11364 (v!14688 V!37053)) (EmptyCell!11364) )
))
(declare-datatypes ((array!64304 0))(
  ( (array!64305 (arr!30957 (Array (_ BitVec 32) (_ BitVec 64))) (size!31471 (_ BitVec 32))) )
))
(declare-datatypes ((array!64306 0))(
  ( (array!64307 (arr!30958 (Array (_ BitVec 32) ValueCell!11364)) (size!31472 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5322 0))(
  ( (LongMapFixedSize!5323 (defaultEntry!6013 Int) (mask!29674 (_ BitVec 32)) (extraKeys!5745 (_ BitVec 32)) (zeroValue!5849 V!37053) (minValue!5849 V!37053) (_size!2716 (_ BitVec 32)) (_keys!11157 array!64304) (_values!6036 array!64306) (_vacant!2716 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5322)

(declare-fun mapDefault!37631 () ValueCell!11364)

(assert (=> b!1025167 (= condMapEmpty!37631 (= (arr!30958 (_values!6036 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11364)) mapDefault!37631)))))

(declare-fun b!1025168 () Bool)

(declare-fun res!686452 () Bool)

(declare-fun e!578043 () Bool)

(assert (=> b!1025168 (=> res!686452 e!578043)))

(declare-datatypes ((SeekEntryResult!9602 0))(
  ( (MissingZero!9602 (index!40778 (_ BitVec 32))) (Found!9602 (index!40779 (_ BitVec 32))) (Intermediate!9602 (undefined!10414 Bool) (index!40780 (_ BitVec 32)) (x!91147 (_ BitVec 32))) (Undefined!9602) (MissingVacant!9602 (index!40781 (_ BitVec 32))) )
))
(declare-fun lt!450818 () SeekEntryResult!9602)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1025168 (= res!686452 (not (validKeyInArray!0 (select (arr!30957 (_keys!11157 thiss!1427)) (index!40779 lt!450818)))))))

(declare-fun b!1025169 () Bool)

(declare-fun e!578046 () Bool)

(assert (=> b!1025169 (= e!578046 (not e!578043))))

(declare-fun res!686448 () Bool)

(assert (=> b!1025169 (=> res!686448 e!578043)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1025169 (= res!686448 (not (validMask!0 (mask!29674 thiss!1427))))))

(declare-fun lt!450820 () array!64304)

(declare-datatypes ((List!21854 0))(
  ( (Nil!21851) (Cons!21850 (h!23048 (_ BitVec 64)) (t!30923 List!21854)) )
))
(declare-fun arrayNoDuplicates!0 (array!64304 (_ BitVec 32) List!21854) Bool)

(assert (=> b!1025169 (arrayNoDuplicates!0 lt!450820 #b00000000000000000000000000000000 Nil!21851)))

(declare-datatypes ((Unit!33346 0))(
  ( (Unit!33347) )
))
(declare-fun lt!450819 () Unit!33346)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64304 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21854) Unit!33346)

(assert (=> b!1025169 (= lt!450819 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11157 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40779 lt!450818) #b00000000000000000000000000000000 Nil!21851))))

(declare-fun arrayCountValidKeys!0 (array!64304 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025169 (= (arrayCountValidKeys!0 lt!450820 #b00000000000000000000000000000000 (size!31471 (_keys!11157 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11157 thiss!1427) #b00000000000000000000000000000000 (size!31471 (_keys!11157 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1025169 (= lt!450820 (array!64305 (store (arr!30957 (_keys!11157 thiss!1427)) (index!40779 lt!450818) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31471 (_keys!11157 thiss!1427))))))

(declare-fun lt!450816 () Unit!33346)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64304 (_ BitVec 32) (_ BitVec 64)) Unit!33346)

(assert (=> b!1025169 (= lt!450816 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11157 thiss!1427) (index!40779 lt!450818) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!686454 () Bool)

(declare-fun e!578047 () Bool)

(assert (=> start!89452 (=> (not res!686454) (not e!578047))))

(declare-fun valid!1977 (LongMapFixedSize!5322) Bool)

(assert (=> start!89452 (= res!686454 (valid!1977 thiss!1427))))

(assert (=> start!89452 e!578047))

(declare-fun e!578045 () Bool)

(assert (=> start!89452 e!578045))

(assert (=> start!89452 true))

(declare-fun b!1025170 () Bool)

(declare-fun res!686450 () Bool)

(assert (=> b!1025170 (=> res!686450 e!578043)))

(assert (=> b!1025170 (= res!686450 (not (arrayNoDuplicates!0 (_keys!11157 thiss!1427) #b00000000000000000000000000000000 Nil!21851)))))

(declare-fun mapNonEmpty!37631 () Bool)

(declare-fun tp!72292 () Bool)

(declare-fun e!578048 () Bool)

(assert (=> mapNonEmpty!37631 (= mapRes!37631 (and tp!72292 e!578048))))

(declare-fun mapValue!37631 () ValueCell!11364)

(declare-fun mapKey!37631 () (_ BitVec 32))

(declare-fun mapRest!37631 () (Array (_ BitVec 32) ValueCell!11364))

(assert (=> mapNonEmpty!37631 (= (arr!30958 (_values!6036 thiss!1427)) (store mapRest!37631 mapKey!37631 mapValue!37631))))

(declare-fun b!1025171 () Bool)

(assert (=> b!1025171 (= e!578043 true)))

(declare-fun lt!450817 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64304 (_ BitVec 32)) Bool)

(assert (=> b!1025171 (= lt!450817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11157 thiss!1427) (mask!29674 thiss!1427)))))

(declare-fun b!1025172 () Bool)

(declare-fun res!686453 () Bool)

(assert (=> b!1025172 (=> res!686453 e!578043)))

(assert (=> b!1025172 (= res!686453 (or (not (= (size!31471 (_keys!11157 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29674 thiss!1427)))) (bvslt (index!40779 lt!450818) #b00000000000000000000000000000000) (bvsge (index!40779 lt!450818) (size!31471 (_keys!11157 thiss!1427)))))))

(declare-fun b!1025173 () Bool)

(declare-fun tp_is_empty!24135 () Bool)

(assert (=> b!1025173 (= e!578048 tp_is_empty!24135)))

(declare-fun b!1025174 () Bool)

(declare-fun res!686451 () Bool)

(assert (=> b!1025174 (=> (not res!686451) (not e!578047))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1025174 (= res!686451 (not (= key!909 (bvneg key!909))))))

(declare-fun array_inv!23833 (array!64304) Bool)

(declare-fun array_inv!23834 (array!64306) Bool)

(assert (=> b!1025175 (= e!578045 (and tp!72291 tp_is_empty!24135 (array_inv!23833 (_keys!11157 thiss!1427)) (array_inv!23834 (_values!6036 thiss!1427)) e!578041))))

(declare-fun b!1025176 () Bool)

(assert (=> b!1025176 (= e!578044 tp_is_empty!24135)))

(declare-fun b!1025177 () Bool)

(assert (=> b!1025177 (= e!578047 e!578046)))

(declare-fun res!686449 () Bool)

(assert (=> b!1025177 (=> (not res!686449) (not e!578046))))

(get-info :version)

(assert (=> b!1025177 (= res!686449 ((_ is Found!9602) lt!450818))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64304 (_ BitVec 32)) SeekEntryResult!9602)

(assert (=> b!1025177 (= lt!450818 (seekEntry!0 key!909 (_keys!11157 thiss!1427) (mask!29674 thiss!1427)))))

(assert (= (and start!89452 res!686454) b!1025174))

(assert (= (and b!1025174 res!686451) b!1025177))

(assert (= (and b!1025177 res!686449) b!1025169))

(assert (= (and b!1025169 (not res!686448)) b!1025172))

(assert (= (and b!1025172 (not res!686453)) b!1025168))

(assert (= (and b!1025168 (not res!686452)) b!1025170))

(assert (= (and b!1025170 (not res!686450)) b!1025171))

(assert (= (and b!1025167 condMapEmpty!37631) mapIsEmpty!37631))

(assert (= (and b!1025167 (not condMapEmpty!37631)) mapNonEmpty!37631))

(assert (= (and mapNonEmpty!37631 ((_ is ValueCellFull!11364) mapValue!37631)) b!1025173))

(assert (= (and b!1025167 ((_ is ValueCellFull!11364) mapDefault!37631)) b!1025176))

(assert (= b!1025175 b!1025167))

(assert (= start!89452 b!1025175))

(declare-fun m!943491 () Bool)

(assert (=> start!89452 m!943491))

(declare-fun m!943493 () Bool)

(assert (=> mapNonEmpty!37631 m!943493))

(declare-fun m!943495 () Bool)

(assert (=> b!1025168 m!943495))

(assert (=> b!1025168 m!943495))

(declare-fun m!943497 () Bool)

(assert (=> b!1025168 m!943497))

(declare-fun m!943499 () Bool)

(assert (=> b!1025170 m!943499))

(declare-fun m!943501 () Bool)

(assert (=> b!1025169 m!943501))

(declare-fun m!943503 () Bool)

(assert (=> b!1025169 m!943503))

(declare-fun m!943505 () Bool)

(assert (=> b!1025169 m!943505))

(declare-fun m!943507 () Bool)

(assert (=> b!1025169 m!943507))

(declare-fun m!943509 () Bool)

(assert (=> b!1025169 m!943509))

(declare-fun m!943511 () Bool)

(assert (=> b!1025169 m!943511))

(declare-fun m!943513 () Bool)

(assert (=> b!1025169 m!943513))

(declare-fun m!943515 () Bool)

(assert (=> b!1025177 m!943515))

(declare-fun m!943517 () Bool)

(assert (=> b!1025175 m!943517))

(declare-fun m!943519 () Bool)

(assert (=> b!1025175 m!943519))

(declare-fun m!943521 () Bool)

(assert (=> b!1025171 m!943521))

(check-sat (not b!1025168) (not mapNonEmpty!37631) (not b!1025170) b_and!32679 (not b!1025171) (not b!1025169) (not b!1025175) (not start!89452) (not b!1025177) (not b_next!20415) tp_is_empty!24135)
(check-sat b_and!32679 (not b_next!20415))
