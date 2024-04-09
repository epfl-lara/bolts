; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16706 () Bool)

(assert start!16706)

(declare-fun b!167248 () Bool)

(declare-fun b_free!3999 () Bool)

(declare-fun b_next!3999 () Bool)

(assert (=> b!167248 (= b_free!3999 (not b_next!3999))))

(declare-fun tp!14598 () Bool)

(declare-fun b_and!10431 () Bool)

(assert (=> b!167248 (= tp!14598 b_and!10431)))

(declare-fun e!109831 () Bool)

(declare-fun tp_is_empty!3801 () Bool)

(declare-fun e!109837 () Bool)

(declare-datatypes ((V!4715 0))(
  ( (V!4716 (val!1945 Int)) )
))
(declare-datatypes ((ValueCell!1557 0))(
  ( (ValueCellFull!1557 (v!3806 V!4715)) (EmptyCell!1557) )
))
(declare-datatypes ((array!6698 0))(
  ( (array!6699 (arr!3184 (Array (_ BitVec 32) (_ BitVec 64))) (size!3472 (_ BitVec 32))) )
))
(declare-datatypes ((array!6700 0))(
  ( (array!6701 (arr!3185 (Array (_ BitVec 32) ValueCell!1557)) (size!3473 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2022 0))(
  ( (LongMapFixedSize!2023 (defaultEntry!3453 Int) (mask!8198 (_ BitVec 32)) (extraKeys!3194 (_ BitVec 32)) (zeroValue!3296 V!4715) (minValue!3296 V!4715) (_size!1060 (_ BitVec 32)) (_keys!5278 array!6698) (_values!3436 array!6700) (_vacant!1060 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2022)

(declare-fun array_inv!2041 (array!6698) Bool)

(declare-fun array_inv!2042 (array!6700) Bool)

(assert (=> b!167248 (= e!109837 (and tp!14598 tp_is_empty!3801 (array_inv!2041 (_keys!5278 thiss!1248)) (array_inv!2042 (_values!3436 thiss!1248)) e!109831))))

(declare-fun b!167249 () Bool)

(declare-fun e!109838 () Bool)

(assert (=> b!167249 (= e!109838 tp_is_empty!3801)))

(declare-fun b!167250 () Bool)

(declare-fun e!109836 () Bool)

(assert (=> b!167250 (= e!109836 tp_is_empty!3801)))

(declare-fun b!167251 () Bool)

(declare-datatypes ((Unit!5114 0))(
  ( (Unit!5115) )
))
(declare-fun e!109832 () Unit!5114)

(declare-fun lt!83658 () Unit!5114)

(assert (=> b!167251 (= e!109832 lt!83658)))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!104 (array!6698 array!6700 (_ BitVec 32) (_ BitVec 32) V!4715 V!4715 (_ BitVec 64) Int) Unit!5114)

(assert (=> b!167251 (= lt!83658 (lemmaInListMapThenSeekEntryOrOpenFindsIt!104 (_keys!5278 thiss!1248) (_values!3436 thiss!1248) (mask!8198 thiss!1248) (extraKeys!3194 thiss!1248) (zeroValue!3296 thiss!1248) (minValue!3296 thiss!1248) key!828 (defaultEntry!3453 thiss!1248)))))

(declare-fun res!79554 () Bool)

(declare-datatypes ((SeekEntryResult!486 0))(
  ( (MissingZero!486 (index!4112 (_ BitVec 32))) (Found!486 (index!4113 (_ BitVec 32))) (Intermediate!486 (undefined!1298 Bool) (index!4114 (_ BitVec 32)) (x!18522 (_ BitVec 32))) (Undefined!486) (MissingVacant!486 (index!4115 (_ BitVec 32))) )
))
(declare-fun lt!83660 () SeekEntryResult!486)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!167251 (= res!79554 (inRange!0 (index!4113 lt!83660) (mask!8198 thiss!1248)))))

(declare-fun e!109834 () Bool)

(assert (=> b!167251 (=> (not res!79554) (not e!109834))))

(assert (=> b!167251 e!109834))

(declare-fun b!167252 () Bool)

(declare-fun e!109839 () Bool)

(assert (=> b!167252 (= e!109839 false)))

(declare-fun lt!83656 () Bool)

(declare-datatypes ((List!2143 0))(
  ( (Nil!2140) (Cons!2139 (h!2756 (_ BitVec 64)) (t!6953 List!2143)) )
))
(declare-fun arrayNoDuplicates!0 (array!6698 (_ BitVec 32) List!2143) Bool)

(assert (=> b!167252 (= lt!83656 (arrayNoDuplicates!0 (_keys!5278 thiss!1248) #b00000000000000000000000000000000 Nil!2140))))

(declare-fun b!167253 () Bool)

(declare-fun e!109840 () Bool)

(declare-fun e!109833 () Bool)

(assert (=> b!167253 (= e!109840 e!109833)))

(declare-fun res!79558 () Bool)

(assert (=> b!167253 (=> (not res!79558) (not e!109833))))

(get-info :version)

(assert (=> b!167253 (= res!79558 (and (not ((_ is Undefined!486) lt!83660)) (not ((_ is MissingVacant!486) lt!83660)) (not ((_ is MissingZero!486) lt!83660)) ((_ is Found!486) lt!83660)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6698 (_ BitVec 32)) SeekEntryResult!486)

(assert (=> b!167253 (= lt!83660 (seekEntryOrOpen!0 key!828 (_keys!5278 thiss!1248) (mask!8198 thiss!1248)))))

(declare-fun b!167254 () Bool)

(declare-fun Unit!5116 () Unit!5114)

(assert (=> b!167254 (= e!109832 Unit!5116)))

(declare-fun lt!83657 () Unit!5114)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!102 (array!6698 array!6700 (_ BitVec 32) (_ BitVec 32) V!4715 V!4715 (_ BitVec 64) Int) Unit!5114)

(assert (=> b!167254 (= lt!83657 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!102 (_keys!5278 thiss!1248) (_values!3436 thiss!1248) (mask!8198 thiss!1248) (extraKeys!3194 thiss!1248) (zeroValue!3296 thiss!1248) (minValue!3296 thiss!1248) key!828 (defaultEntry!3453 thiss!1248)))))

(assert (=> b!167254 false))

(declare-fun b!167255 () Bool)

(assert (=> b!167255 (= e!109833 e!109839)))

(declare-fun res!79556 () Bool)

(assert (=> b!167255 (=> (not res!79556) (not e!109839))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!167255 (= res!79556 (validMask!0 (mask!8198 thiss!1248)))))

(declare-fun lt!83659 () Unit!5114)

(assert (=> b!167255 (= lt!83659 e!109832)))

(declare-fun c!30261 () Bool)

(declare-datatypes ((tuple2!3132 0))(
  ( (tuple2!3133 (_1!1576 (_ BitVec 64)) (_2!1576 V!4715)) )
))
(declare-datatypes ((List!2144 0))(
  ( (Nil!2141) (Cons!2140 (h!2757 tuple2!3132) (t!6954 List!2144)) )
))
(declare-datatypes ((ListLongMap!2101 0))(
  ( (ListLongMap!2102 (toList!1066 List!2144)) )
))
(declare-fun contains!1102 (ListLongMap!2101 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!719 (array!6698 array!6700 (_ BitVec 32) (_ BitVec 32) V!4715 V!4715 (_ BitVec 32) Int) ListLongMap!2101)

(assert (=> b!167255 (= c!30261 (contains!1102 (getCurrentListMap!719 (_keys!5278 thiss!1248) (_values!3436 thiss!1248) (mask!8198 thiss!1248) (extraKeys!3194 thiss!1248) (zeroValue!3296 thiss!1248) (minValue!3296 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3453 thiss!1248)) key!828))))

(declare-fun b!167257 () Bool)

(declare-fun res!79557 () Bool)

(assert (=> b!167257 (=> (not res!79557) (not e!109840))))

(assert (=> b!167257 (= res!79557 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!6420 () Bool)

(declare-fun mapRes!6420 () Bool)

(declare-fun tp!14597 () Bool)

(assert (=> mapNonEmpty!6420 (= mapRes!6420 (and tp!14597 e!109836))))

(declare-fun mapKey!6420 () (_ BitVec 32))

(declare-fun mapRest!6420 () (Array (_ BitVec 32) ValueCell!1557))

(declare-fun mapValue!6420 () ValueCell!1557)

(assert (=> mapNonEmpty!6420 (= (arr!3185 (_values!3436 thiss!1248)) (store mapRest!6420 mapKey!6420 mapValue!6420))))

(declare-fun b!167258 () Bool)

(assert (=> b!167258 (= e!109834 (= (select (arr!3184 (_keys!5278 thiss!1248)) (index!4113 lt!83660)) key!828))))

(declare-fun res!79559 () Bool)

(assert (=> start!16706 (=> (not res!79559) (not e!109840))))

(declare-fun valid!876 (LongMapFixedSize!2022) Bool)

(assert (=> start!16706 (= res!79559 (valid!876 thiss!1248))))

(assert (=> start!16706 e!109840))

(assert (=> start!16706 e!109837))

(assert (=> start!16706 true))

(declare-fun b!167256 () Bool)

(assert (=> b!167256 (= e!109831 (and e!109838 mapRes!6420))))

(declare-fun condMapEmpty!6420 () Bool)

(declare-fun mapDefault!6420 () ValueCell!1557)

(assert (=> b!167256 (= condMapEmpty!6420 (= (arr!3185 (_values!3436 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1557)) mapDefault!6420)))))

(declare-fun b!167259 () Bool)

(declare-fun res!79560 () Bool)

(assert (=> b!167259 (=> (not res!79560) (not e!109839))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6698 (_ BitVec 32)) Bool)

(assert (=> b!167259 (= res!79560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5278 thiss!1248) (mask!8198 thiss!1248)))))

(declare-fun mapIsEmpty!6420 () Bool)

(assert (=> mapIsEmpty!6420 mapRes!6420))

(declare-fun b!167260 () Bool)

(declare-fun res!79555 () Bool)

(assert (=> b!167260 (=> (not res!79555) (not e!109839))))

(assert (=> b!167260 (= res!79555 (and (= (size!3473 (_values!3436 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8198 thiss!1248))) (= (size!3472 (_keys!5278 thiss!1248)) (size!3473 (_values!3436 thiss!1248))) (bvsge (mask!8198 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3194 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3194 thiss!1248) #b00000000000000000000000000000011)))))

(assert (= (and start!16706 res!79559) b!167257))

(assert (= (and b!167257 res!79557) b!167253))

(assert (= (and b!167253 res!79558) b!167255))

(assert (= (and b!167255 c!30261) b!167251))

(assert (= (and b!167255 (not c!30261)) b!167254))

(assert (= (and b!167251 res!79554) b!167258))

(assert (= (and b!167255 res!79556) b!167260))

(assert (= (and b!167260 res!79555) b!167259))

(assert (= (and b!167259 res!79560) b!167252))

(assert (= (and b!167256 condMapEmpty!6420) mapIsEmpty!6420))

(assert (= (and b!167256 (not condMapEmpty!6420)) mapNonEmpty!6420))

(assert (= (and mapNonEmpty!6420 ((_ is ValueCellFull!1557) mapValue!6420)) b!167250))

(assert (= (and b!167256 ((_ is ValueCellFull!1557) mapDefault!6420)) b!167249))

(assert (= b!167248 b!167256))

(assert (= start!16706 b!167248))

(declare-fun m!196473 () Bool)

(assert (=> start!16706 m!196473))

(declare-fun m!196475 () Bool)

(assert (=> b!167255 m!196475))

(declare-fun m!196477 () Bool)

(assert (=> b!167255 m!196477))

(assert (=> b!167255 m!196477))

(declare-fun m!196479 () Bool)

(assert (=> b!167255 m!196479))

(declare-fun m!196481 () Bool)

(assert (=> b!167248 m!196481))

(declare-fun m!196483 () Bool)

(assert (=> b!167248 m!196483))

(declare-fun m!196485 () Bool)

(assert (=> b!167251 m!196485))

(declare-fun m!196487 () Bool)

(assert (=> b!167251 m!196487))

(declare-fun m!196489 () Bool)

(assert (=> b!167253 m!196489))

(declare-fun m!196491 () Bool)

(assert (=> b!167252 m!196491))

(declare-fun m!196493 () Bool)

(assert (=> b!167254 m!196493))

(declare-fun m!196495 () Bool)

(assert (=> b!167258 m!196495))

(declare-fun m!196497 () Bool)

(assert (=> b!167259 m!196497))

(declare-fun m!196499 () Bool)

(assert (=> mapNonEmpty!6420 m!196499))

(check-sat (not b!167253) (not start!16706) (not b!167252) (not b!167254) (not b!167248) (not b_next!3999) tp_is_empty!3801 (not b!167255) (not mapNonEmpty!6420) (not b!167259) b_and!10431 (not b!167251))
(check-sat b_and!10431 (not b_next!3999))
