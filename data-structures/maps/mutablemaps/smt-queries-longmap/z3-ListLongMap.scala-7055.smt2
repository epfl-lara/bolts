; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89422 () Bool)

(assert start!89422)

(declare-fun b!1024677 () Bool)

(declare-fun b_free!20385 () Bool)

(declare-fun b_next!20385 () Bool)

(assert (=> b!1024677 (= b_free!20385 (not b_next!20385))))

(declare-fun tp!72202 () Bool)

(declare-fun b_and!32649 () Bool)

(assert (=> b!1024677 (= tp!72202 b_and!32649)))

(declare-fun b!1024672 () Bool)

(declare-fun res!686134 () Bool)

(declare-fun e!577686 () Bool)

(assert (=> b!1024672 (=> (not res!686134) (not e!577686))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1024672 (= res!686134 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1024673 () Bool)

(declare-fun e!577683 () Bool)

(declare-fun e!577681 () Bool)

(assert (=> b!1024673 (= e!577683 (not e!577681))))

(declare-fun res!686138 () Bool)

(assert (=> b!1024673 (=> res!686138 e!577681)))

(declare-datatypes ((V!37013 0))(
  ( (V!37014 (val!12103 Int)) )
))
(declare-datatypes ((ValueCell!11349 0))(
  ( (ValueCellFull!11349 (v!14673 V!37013)) (EmptyCell!11349) )
))
(declare-datatypes ((array!64244 0))(
  ( (array!64245 (arr!30927 (Array (_ BitVec 32) (_ BitVec 64))) (size!31441 (_ BitVec 32))) )
))
(declare-datatypes ((array!64246 0))(
  ( (array!64247 (arr!30928 (Array (_ BitVec 32) ValueCell!11349)) (size!31442 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5292 0))(
  ( (LongMapFixedSize!5293 (defaultEntry!5998 Int) (mask!29649 (_ BitVec 32)) (extraKeys!5730 (_ BitVec 32)) (zeroValue!5834 V!37013) (minValue!5834 V!37013) (_size!2701 (_ BitVec 32)) (_keys!11142 array!64244) (_values!6021 array!64246) (_vacant!2701 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5292)

(assert (=> b!1024673 (= res!686138 (or (bvsge (size!31441 (_keys!11142 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31441 (_keys!11142 thiss!1427)))))))

(declare-datatypes ((SeekEntryResult!9590 0))(
  ( (MissingZero!9590 (index!40730 (_ BitVec 32))) (Found!9590 (index!40731 (_ BitVec 32))) (Intermediate!9590 (undefined!10402 Bool) (index!40732 (_ BitVec 32)) (x!91095 (_ BitVec 32))) (Undefined!9590) (MissingVacant!9590 (index!40733 (_ BitVec 32))) )
))
(declare-fun lt!450671 () SeekEntryResult!9590)

(declare-fun arrayCountValidKeys!0 (array!64244 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1024673 (= (arrayCountValidKeys!0 (array!64245 (store (arr!30927 (_keys!11142 thiss!1427)) (index!40731 lt!450671) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31441 (_keys!11142 thiss!1427))) #b00000000000000000000000000000000 (size!31441 (_keys!11142 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11142 thiss!1427) #b00000000000000000000000000000000 (size!31441 (_keys!11142 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33326 0))(
  ( (Unit!33327) )
))
(declare-fun lt!450672 () Unit!33326)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64244 (_ BitVec 32) (_ BitVec 64)) Unit!33326)

(assert (=> b!1024673 (= lt!450672 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11142 thiss!1427) (index!40731 lt!450671) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024674 () Bool)

(declare-fun res!686137 () Bool)

(assert (=> b!1024674 (=> res!686137 e!577681)))

(declare-datatypes ((List!21840 0))(
  ( (Nil!21837) (Cons!21836 (h!23034 (_ BitVec 64)) (t!30909 List!21840)) )
))
(declare-fun contains!5968 (List!21840 (_ BitVec 64)) Bool)

(assert (=> b!1024674 (= res!686137 (contains!5968 Nil!21837 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024675 () Bool)

(declare-fun res!686139 () Bool)

(assert (=> b!1024675 (=> res!686139 e!577681)))

(declare-fun noDuplicate!1478 (List!21840) Bool)

(assert (=> b!1024675 (= res!686139 (not (noDuplicate!1478 Nil!21837)))))

(declare-fun b!1024676 () Bool)

(assert (=> b!1024676 (= e!577681 true)))

(declare-fun lt!450673 () Bool)

(declare-fun arrayNoDuplicates!0 (array!64244 (_ BitVec 32) List!21840) Bool)

(assert (=> b!1024676 (= lt!450673 (arrayNoDuplicates!0 (_keys!11142 thiss!1427) #b00000000000000000000000000000000 Nil!21837))))

(declare-fun tp_is_empty!24105 () Bool)

(declare-fun e!577688 () Bool)

(declare-fun e!577682 () Bool)

(declare-fun array_inv!23823 (array!64244) Bool)

(declare-fun array_inv!23824 (array!64246) Bool)

(assert (=> b!1024677 (= e!577682 (and tp!72202 tp_is_empty!24105 (array_inv!23823 (_keys!11142 thiss!1427)) (array_inv!23824 (_values!6021 thiss!1427)) e!577688))))

(declare-fun b!1024678 () Bool)

(declare-fun e!577684 () Bool)

(assert (=> b!1024678 (= e!577684 tp_is_empty!24105)))

(declare-fun res!686136 () Bool)

(assert (=> start!89422 (=> (not res!686136) (not e!577686))))

(declare-fun valid!1966 (LongMapFixedSize!5292) Bool)

(assert (=> start!89422 (= res!686136 (valid!1966 thiss!1427))))

(assert (=> start!89422 e!577686))

(assert (=> start!89422 e!577682))

(assert (=> start!89422 true))

(declare-fun mapNonEmpty!37586 () Bool)

(declare-fun mapRes!37586 () Bool)

(declare-fun tp!72201 () Bool)

(declare-fun e!577685 () Bool)

(assert (=> mapNonEmpty!37586 (= mapRes!37586 (and tp!72201 e!577685))))

(declare-fun mapValue!37586 () ValueCell!11349)

(declare-fun mapKey!37586 () (_ BitVec 32))

(declare-fun mapRest!37586 () (Array (_ BitVec 32) ValueCell!11349))

(assert (=> mapNonEmpty!37586 (= (arr!30928 (_values!6021 thiss!1427)) (store mapRest!37586 mapKey!37586 mapValue!37586))))

(declare-fun b!1024679 () Bool)

(declare-fun res!686133 () Bool)

(assert (=> b!1024679 (=> res!686133 e!577681)))

(assert (=> b!1024679 (= res!686133 (contains!5968 Nil!21837 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024680 () Bool)

(assert (=> b!1024680 (= e!577685 tp_is_empty!24105)))

(declare-fun b!1024681 () Bool)

(assert (=> b!1024681 (= e!577688 (and e!577684 mapRes!37586))))

(declare-fun condMapEmpty!37586 () Bool)

(declare-fun mapDefault!37586 () ValueCell!11349)

(assert (=> b!1024681 (= condMapEmpty!37586 (= (arr!30928 (_values!6021 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11349)) mapDefault!37586)))))

(declare-fun mapIsEmpty!37586 () Bool)

(assert (=> mapIsEmpty!37586 mapRes!37586))

(declare-fun b!1024682 () Bool)

(assert (=> b!1024682 (= e!577686 e!577683)))

(declare-fun res!686135 () Bool)

(assert (=> b!1024682 (=> (not res!686135) (not e!577683))))

(get-info :version)

(assert (=> b!1024682 (= res!686135 ((_ is Found!9590) lt!450671))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64244 (_ BitVec 32)) SeekEntryResult!9590)

(assert (=> b!1024682 (= lt!450671 (seekEntry!0 key!909 (_keys!11142 thiss!1427) (mask!29649 thiss!1427)))))

(assert (= (and start!89422 res!686136) b!1024672))

(assert (= (and b!1024672 res!686134) b!1024682))

(assert (= (and b!1024682 res!686135) b!1024673))

(assert (= (and b!1024673 (not res!686138)) b!1024675))

(assert (= (and b!1024675 (not res!686139)) b!1024674))

(assert (= (and b!1024674 (not res!686137)) b!1024679))

(assert (= (and b!1024679 (not res!686133)) b!1024676))

(assert (= (and b!1024681 condMapEmpty!37586) mapIsEmpty!37586))

(assert (= (and b!1024681 (not condMapEmpty!37586)) mapNonEmpty!37586))

(assert (= (and mapNonEmpty!37586 ((_ is ValueCellFull!11349) mapValue!37586)) b!1024680))

(assert (= (and b!1024681 ((_ is ValueCellFull!11349) mapDefault!37586)) b!1024678))

(assert (= b!1024677 b!1024681))

(assert (= start!89422 b!1024677))

(declare-fun m!943095 () Bool)

(assert (=> b!1024682 m!943095))

(declare-fun m!943097 () Bool)

(assert (=> b!1024675 m!943097))

(declare-fun m!943099 () Bool)

(assert (=> b!1024673 m!943099))

(declare-fun m!943101 () Bool)

(assert (=> b!1024673 m!943101))

(declare-fun m!943103 () Bool)

(assert (=> b!1024673 m!943103))

(declare-fun m!943105 () Bool)

(assert (=> b!1024673 m!943105))

(declare-fun m!943107 () Bool)

(assert (=> b!1024676 m!943107))

(declare-fun m!943109 () Bool)

(assert (=> start!89422 m!943109))

(declare-fun m!943111 () Bool)

(assert (=> b!1024677 m!943111))

(declare-fun m!943113 () Bool)

(assert (=> b!1024677 m!943113))

(declare-fun m!943115 () Bool)

(assert (=> mapNonEmpty!37586 m!943115))

(declare-fun m!943117 () Bool)

(assert (=> b!1024679 m!943117))

(declare-fun m!943119 () Bool)

(assert (=> b!1024674 m!943119))

(check-sat (not b!1024682) (not b!1024676) (not b!1024679) b_and!32649 tp_is_empty!24105 (not b!1024675) (not mapNonEmpty!37586) (not start!89422) (not b!1024677) (not b!1024673) (not b!1024674) (not b_next!20385))
(check-sat b_and!32649 (not b_next!20385))
