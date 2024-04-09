; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16766 () Bool)

(assert start!16766)

(declare-fun b!168425 () Bool)

(declare-fun b_free!4059 () Bool)

(declare-fun b_next!4059 () Bool)

(assert (=> b!168425 (= b_free!4059 (not b_next!4059))))

(declare-fun tp!14777 () Bool)

(declare-fun b_and!10491 () Bool)

(assert (=> b!168425 (= tp!14777 b_and!10491)))

(declare-fun res!80184 () Bool)

(declare-fun e!110740 () Bool)

(assert (=> start!16766 (=> (not res!80184) (not e!110740))))

(declare-datatypes ((V!4795 0))(
  ( (V!4796 (val!1975 Int)) )
))
(declare-datatypes ((ValueCell!1587 0))(
  ( (ValueCellFull!1587 (v!3836 V!4795)) (EmptyCell!1587) )
))
(declare-datatypes ((array!6818 0))(
  ( (array!6819 (arr!3244 (Array (_ BitVec 32) (_ BitVec 64))) (size!3532 (_ BitVec 32))) )
))
(declare-datatypes ((array!6820 0))(
  ( (array!6821 (arr!3245 (Array (_ BitVec 32) ValueCell!1587)) (size!3533 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2082 0))(
  ( (LongMapFixedSize!2083 (defaultEntry!3483 Int) (mask!8248 (_ BitVec 32)) (extraKeys!3224 (_ BitVec 32)) (zeroValue!3326 V!4795) (minValue!3326 V!4795) (_size!1090 (_ BitVec 32)) (_keys!5308 array!6818) (_values!3466 array!6820) (_vacant!1090 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2082)

(declare-fun valid!894 (LongMapFixedSize!2082) Bool)

(assert (=> start!16766 (= res!80184 (valid!894 thiss!1248))))

(assert (=> start!16766 e!110740))

(declare-fun e!110737 () Bool)

(assert (=> start!16766 e!110737))

(assert (=> start!16766 true))

(declare-fun tp_is_empty!3861 () Bool)

(assert (=> start!16766 tp_is_empty!3861))

(declare-fun b!168418 () Bool)

(declare-fun res!80187 () Bool)

(declare-fun e!110734 () Bool)

(assert (=> b!168418 (=> res!80187 e!110734)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6818 (_ BitVec 32)) Bool)

(assert (=> b!168418 (= res!80187 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5308 thiss!1248) (mask!8248 thiss!1248))))))

(declare-fun b!168419 () Bool)

(declare-fun e!110736 () Bool)

(assert (=> b!168419 (= e!110736 (not e!110734))))

(declare-fun res!80189 () Bool)

(assert (=> b!168419 (=> res!80189 e!110734)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!168419 (= res!80189 (not (validMask!0 (mask!8248 thiss!1248))))))

(declare-datatypes ((tuple2!3164 0))(
  ( (tuple2!3165 (_1!1592 (_ BitVec 64)) (_2!1592 V!4795)) )
))
(declare-datatypes ((List!2180 0))(
  ( (Nil!2177) (Cons!2176 (h!2793 tuple2!3164) (t!6990 List!2180)) )
))
(declare-datatypes ((ListLongMap!2133 0))(
  ( (ListLongMap!2134 (toList!1082 List!2180)) )
))
(declare-fun lt!84264 () ListLongMap!2133)

(declare-datatypes ((SeekEntryResult!511 0))(
  ( (MissingZero!511 (index!4212 (_ BitVec 32))) (Found!511 (index!4213 (_ BitVec 32))) (Intermediate!511 (undefined!1323 Bool) (index!4214 (_ BitVec 32)) (x!18627 (_ BitVec 32))) (Undefined!511) (MissingVacant!511 (index!4215 (_ BitVec 32))) )
))
(declare-fun lt!84261 () SeekEntryResult!511)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun v!309 () V!4795)

(declare-fun +!224 (ListLongMap!2133 tuple2!3164) ListLongMap!2133)

(declare-fun getCurrentListMap!735 (array!6818 array!6820 (_ BitVec 32) (_ BitVec 32) V!4795 V!4795 (_ BitVec 32) Int) ListLongMap!2133)

(assert (=> b!168419 (= (+!224 lt!84264 (tuple2!3165 key!828 v!309)) (getCurrentListMap!735 (_keys!5308 thiss!1248) (array!6821 (store (arr!3245 (_values!3466 thiss!1248)) (index!4213 lt!84261) (ValueCellFull!1587 v!309)) (size!3533 (_values!3466 thiss!1248))) (mask!8248 thiss!1248) (extraKeys!3224 thiss!1248) (zeroValue!3326 thiss!1248) (minValue!3326 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3483 thiss!1248)))))

(declare-datatypes ((Unit!5183 0))(
  ( (Unit!5184) )
))
(declare-fun lt!84266 () Unit!5183)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!84 (array!6818 array!6820 (_ BitVec 32) (_ BitVec 32) V!4795 V!4795 (_ BitVec 32) (_ BitVec 64) V!4795 Int) Unit!5183)

(assert (=> b!168419 (= lt!84266 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!84 (_keys!5308 thiss!1248) (_values!3466 thiss!1248) (mask!8248 thiss!1248) (extraKeys!3224 thiss!1248) (zeroValue!3326 thiss!1248) (minValue!3326 thiss!1248) (index!4213 lt!84261) key!828 v!309 (defaultEntry!3483 thiss!1248)))))

(declare-fun lt!84260 () Unit!5183)

(declare-fun e!110738 () Unit!5183)

(assert (=> b!168419 (= lt!84260 e!110738)))

(declare-fun c!30351 () Bool)

(declare-fun contains!1118 (ListLongMap!2133 (_ BitVec 64)) Bool)

(assert (=> b!168419 (= c!30351 (contains!1118 lt!84264 key!828))))

(assert (=> b!168419 (= lt!84264 (getCurrentListMap!735 (_keys!5308 thiss!1248) (_values!3466 thiss!1248) (mask!8248 thiss!1248) (extraKeys!3224 thiss!1248) (zeroValue!3326 thiss!1248) (minValue!3326 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3483 thiss!1248)))))

(declare-fun e!110731 () Bool)

(declare-fun b!168420 () Bool)

(assert (=> b!168420 (= e!110731 (= (select (arr!3244 (_keys!5308 thiss!1248)) (index!4213 lt!84261)) key!828))))

(declare-fun b!168421 () Bool)

(declare-fun res!80185 () Bool)

(assert (=> b!168421 (=> (not res!80185) (not e!110740))))

(assert (=> b!168421 (= res!80185 (not (= key!828 (bvneg key!828))))))

(declare-fun b!168422 () Bool)

(declare-fun res!80188 () Bool)

(assert (=> b!168422 (=> res!80188 e!110734)))

(assert (=> b!168422 (= res!80188 (or (not (= (size!3533 (_values!3466 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8248 thiss!1248)))) (not (= (size!3532 (_keys!5308 thiss!1248)) (size!3533 (_values!3466 thiss!1248)))) (bvslt (mask!8248 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3224 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3224 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!6510 () Bool)

(declare-fun mapRes!6510 () Bool)

(declare-fun tp!14778 () Bool)

(declare-fun e!110732 () Bool)

(assert (=> mapNonEmpty!6510 (= mapRes!6510 (and tp!14778 e!110732))))

(declare-fun mapRest!6510 () (Array (_ BitVec 32) ValueCell!1587))

(declare-fun mapValue!6510 () ValueCell!1587)

(declare-fun mapKey!6510 () (_ BitVec 32))

(assert (=> mapNonEmpty!6510 (= (arr!3245 (_values!3466 thiss!1248)) (store mapRest!6510 mapKey!6510 mapValue!6510))))

(declare-fun b!168423 () Bool)

(assert (=> b!168423 (= e!110732 tp_is_empty!3861)))

(declare-fun b!168424 () Bool)

(assert (=> b!168424 (= e!110734 true)))

(declare-fun lt!84263 () Bool)

(declare-datatypes ((List!2181 0))(
  ( (Nil!2178) (Cons!2177 (h!2794 (_ BitVec 64)) (t!6991 List!2181)) )
))
(declare-fun arrayNoDuplicates!0 (array!6818 (_ BitVec 32) List!2181) Bool)

(assert (=> b!168424 (= lt!84263 (arrayNoDuplicates!0 (_keys!5308 thiss!1248) #b00000000000000000000000000000000 Nil!2178))))

(declare-fun e!110739 () Bool)

(declare-fun array_inv!2079 (array!6818) Bool)

(declare-fun array_inv!2080 (array!6820) Bool)

(assert (=> b!168425 (= e!110737 (and tp!14777 tp_is_empty!3861 (array_inv!2079 (_keys!5308 thiss!1248)) (array_inv!2080 (_values!3466 thiss!1248)) e!110739))))

(declare-fun b!168426 () Bool)

(declare-fun Unit!5185 () Unit!5183)

(assert (=> b!168426 (= e!110738 Unit!5185)))

(declare-fun lt!84265 () Unit!5183)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!123 (array!6818 array!6820 (_ BitVec 32) (_ BitVec 32) V!4795 V!4795 (_ BitVec 64) Int) Unit!5183)

(assert (=> b!168426 (= lt!84265 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!123 (_keys!5308 thiss!1248) (_values!3466 thiss!1248) (mask!8248 thiss!1248) (extraKeys!3224 thiss!1248) (zeroValue!3326 thiss!1248) (minValue!3326 thiss!1248) key!828 (defaultEntry!3483 thiss!1248)))))

(assert (=> b!168426 false))

(declare-fun mapIsEmpty!6510 () Bool)

(assert (=> mapIsEmpty!6510 mapRes!6510))

(declare-fun b!168427 () Bool)

(declare-fun lt!84262 () Unit!5183)

(assert (=> b!168427 (= e!110738 lt!84262)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!123 (array!6818 array!6820 (_ BitVec 32) (_ BitVec 32) V!4795 V!4795 (_ BitVec 64) Int) Unit!5183)

(assert (=> b!168427 (= lt!84262 (lemmaInListMapThenSeekEntryOrOpenFindsIt!123 (_keys!5308 thiss!1248) (_values!3466 thiss!1248) (mask!8248 thiss!1248) (extraKeys!3224 thiss!1248) (zeroValue!3326 thiss!1248) (minValue!3326 thiss!1248) key!828 (defaultEntry!3483 thiss!1248)))))

(declare-fun res!80190 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!168427 (= res!80190 (inRange!0 (index!4213 lt!84261) (mask!8248 thiss!1248)))))

(assert (=> b!168427 (=> (not res!80190) (not e!110731))))

(assert (=> b!168427 e!110731))

(declare-fun b!168428 () Bool)

(declare-fun e!110733 () Bool)

(assert (=> b!168428 (= e!110733 tp_is_empty!3861)))

(declare-fun b!168429 () Bool)

(assert (=> b!168429 (= e!110740 e!110736)))

(declare-fun res!80186 () Bool)

(assert (=> b!168429 (=> (not res!80186) (not e!110736))))

(get-info :version)

(assert (=> b!168429 (= res!80186 (and (not ((_ is Undefined!511) lt!84261)) (not ((_ is MissingVacant!511) lt!84261)) (not ((_ is MissingZero!511) lt!84261)) ((_ is Found!511) lt!84261)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6818 (_ BitVec 32)) SeekEntryResult!511)

(assert (=> b!168429 (= lt!84261 (seekEntryOrOpen!0 key!828 (_keys!5308 thiss!1248) (mask!8248 thiss!1248)))))

(declare-fun b!168430 () Bool)

(assert (=> b!168430 (= e!110739 (and e!110733 mapRes!6510))))

(declare-fun condMapEmpty!6510 () Bool)

(declare-fun mapDefault!6510 () ValueCell!1587)

(assert (=> b!168430 (= condMapEmpty!6510 (= (arr!3245 (_values!3466 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1587)) mapDefault!6510)))))

(assert (= (and start!16766 res!80184) b!168421))

(assert (= (and b!168421 res!80185) b!168429))

(assert (= (and b!168429 res!80186) b!168419))

(assert (= (and b!168419 c!30351) b!168427))

(assert (= (and b!168419 (not c!30351)) b!168426))

(assert (= (and b!168427 res!80190) b!168420))

(assert (= (and b!168419 (not res!80189)) b!168422))

(assert (= (and b!168422 (not res!80188)) b!168418))

(assert (= (and b!168418 (not res!80187)) b!168424))

(assert (= (and b!168430 condMapEmpty!6510) mapIsEmpty!6510))

(assert (= (and b!168430 (not condMapEmpty!6510)) mapNonEmpty!6510))

(assert (= (and mapNonEmpty!6510 ((_ is ValueCellFull!1587) mapValue!6510)) b!168423))

(assert (= (and b!168430 ((_ is ValueCellFull!1587) mapDefault!6510)) b!168428))

(assert (= b!168425 b!168430))

(assert (= start!16766 b!168425))

(declare-fun m!197513 () Bool)

(assert (=> b!168419 m!197513))

(declare-fun m!197515 () Bool)

(assert (=> b!168419 m!197515))

(declare-fun m!197517 () Bool)

(assert (=> b!168419 m!197517))

(declare-fun m!197519 () Bool)

(assert (=> b!168419 m!197519))

(declare-fun m!197521 () Bool)

(assert (=> b!168419 m!197521))

(declare-fun m!197523 () Bool)

(assert (=> b!168419 m!197523))

(declare-fun m!197525 () Bool)

(assert (=> b!168419 m!197525))

(declare-fun m!197527 () Bool)

(assert (=> b!168426 m!197527))

(declare-fun m!197529 () Bool)

(assert (=> start!16766 m!197529))

(declare-fun m!197531 () Bool)

(assert (=> b!168418 m!197531))

(declare-fun m!197533 () Bool)

(assert (=> b!168420 m!197533))

(declare-fun m!197535 () Bool)

(assert (=> b!168425 m!197535))

(declare-fun m!197537 () Bool)

(assert (=> b!168425 m!197537))

(declare-fun m!197539 () Bool)

(assert (=> b!168427 m!197539))

(declare-fun m!197541 () Bool)

(assert (=> b!168427 m!197541))

(declare-fun m!197543 () Bool)

(assert (=> mapNonEmpty!6510 m!197543))

(declare-fun m!197545 () Bool)

(assert (=> b!168424 m!197545))

(declare-fun m!197547 () Bool)

(assert (=> b!168429 m!197547))

(check-sat (not b!168424) (not b!168426) (not b!168418) (not b!168419) (not b_next!4059) (not start!16766) (not b!168427) tp_is_empty!3861 (not b!168429) b_and!10491 (not mapNonEmpty!6510) (not b!168425))
(check-sat b_and!10491 (not b_next!4059))
