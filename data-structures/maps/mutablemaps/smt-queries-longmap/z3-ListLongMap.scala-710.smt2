; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16778 () Bool)

(assert start!16778)

(declare-fun b!168640 () Bool)

(declare-fun b_free!4071 () Bool)

(declare-fun b_next!4071 () Bool)

(assert (=> b!168640 (= b_free!4071 (not b_next!4071))))

(declare-fun tp!14814 () Bool)

(declare-fun b_and!10503 () Bool)

(assert (=> b!168640 (= tp!14814 b_and!10503)))

(declare-fun b!168637 () Bool)

(declare-fun e!110907 () Bool)

(declare-fun tp_is_empty!3873 () Bool)

(assert (=> b!168637 (= e!110907 tp_is_empty!3873)))

(declare-fun b!168639 () Bool)

(declare-fun e!110906 () Bool)

(declare-fun e!110909 () Bool)

(assert (=> b!168639 (= e!110906 e!110909)))

(declare-fun res!80298 () Bool)

(assert (=> b!168639 (=> (not res!80298) (not e!110909))))

(declare-datatypes ((SeekEntryResult!516 0))(
  ( (MissingZero!516 (index!4232 (_ BitVec 32))) (Found!516 (index!4233 (_ BitVec 32))) (Intermediate!516 (undefined!1328 Bool) (index!4234 (_ BitVec 32)) (x!18648 (_ BitVec 32))) (Undefined!516) (MissingVacant!516 (index!4235 (_ BitVec 32))) )
))
(declare-fun lt!84415 () SeekEntryResult!516)

(get-info :version)

(assert (=> b!168639 (= res!80298 (and (not ((_ is Undefined!516) lt!84415)) (not ((_ is MissingVacant!516) lt!84415)) (not ((_ is MissingZero!516) lt!84415)) ((_ is Found!516) lt!84415)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4811 0))(
  ( (V!4812 (val!1981 Int)) )
))
(declare-datatypes ((ValueCell!1593 0))(
  ( (ValueCellFull!1593 (v!3842 V!4811)) (EmptyCell!1593) )
))
(declare-datatypes ((array!6842 0))(
  ( (array!6843 (arr!3256 (Array (_ BitVec 32) (_ BitVec 64))) (size!3544 (_ BitVec 32))) )
))
(declare-datatypes ((array!6844 0))(
  ( (array!6845 (arr!3257 (Array (_ BitVec 32) ValueCell!1593)) (size!3545 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2094 0))(
  ( (LongMapFixedSize!2095 (defaultEntry!3489 Int) (mask!8258 (_ BitVec 32)) (extraKeys!3230 (_ BitVec 32)) (zeroValue!3332 V!4811) (minValue!3332 V!4811) (_size!1096 (_ BitVec 32)) (_keys!5314 array!6842) (_values!3472 array!6844) (_vacant!1096 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2094)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6842 (_ BitVec 32)) SeekEntryResult!516)

(assert (=> b!168639 (= lt!84415 (seekEntryOrOpen!0 key!828 (_keys!5314 thiss!1248) (mask!8258 thiss!1248)))))

(declare-fun e!110912 () Bool)

(declare-fun e!110908 () Bool)

(declare-fun array_inv!2085 (array!6842) Bool)

(declare-fun array_inv!2086 (array!6844) Bool)

(assert (=> b!168640 (= e!110908 (and tp!14814 tp_is_empty!3873 (array_inv!2085 (_keys!5314 thiss!1248)) (array_inv!2086 (_values!3472 thiss!1248)) e!110912))))

(declare-fun b!168641 () Bool)

(declare-fun res!80295 () Bool)

(assert (=> b!168641 (=> (not res!80295) (not e!110906))))

(assert (=> b!168641 (= res!80295 (not (= key!828 (bvneg key!828))))))

(declare-fun b!168642 () Bool)

(declare-datatypes ((Unit!5196 0))(
  ( (Unit!5197) )
))
(declare-fun e!110910 () Unit!5196)

(declare-fun Unit!5198 () Unit!5196)

(assert (=> b!168642 (= e!110910 Unit!5198)))

(declare-fun lt!84410 () Unit!5196)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!126 (array!6842 array!6844 (_ BitVec 32) (_ BitVec 32) V!4811 V!4811 (_ BitVec 64) Int) Unit!5196)

(assert (=> b!168642 (= lt!84410 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!126 (_keys!5314 thiss!1248) (_values!3472 thiss!1248) (mask!8258 thiss!1248) (extraKeys!3230 thiss!1248) (zeroValue!3332 thiss!1248) (minValue!3332 thiss!1248) key!828 (defaultEntry!3489 thiss!1248)))))

(assert (=> b!168642 false))

(declare-fun b!168643 () Bool)

(assert (=> b!168643 (= e!110909 (not true))))

(declare-fun lt!84409 () Bool)

(declare-fun lt!84414 () array!6844)

(declare-fun valid!898 (LongMapFixedSize!2094) Bool)

(assert (=> b!168643 (= lt!84409 (valid!898 (LongMapFixedSize!2095 (defaultEntry!3489 thiss!1248) (mask!8258 thiss!1248) (extraKeys!3230 thiss!1248) (zeroValue!3332 thiss!1248) (minValue!3332 thiss!1248) (_size!1096 thiss!1248) (_keys!5314 thiss!1248) lt!84414 (_vacant!1096 thiss!1248))))))

(declare-datatypes ((tuple2!3170 0))(
  ( (tuple2!3171 (_1!1595 (_ BitVec 64)) (_2!1595 V!4811)) )
))
(declare-datatypes ((List!2188 0))(
  ( (Nil!2185) (Cons!2184 (h!2801 tuple2!3170) (t!6998 List!2188)) )
))
(declare-datatypes ((ListLongMap!2139 0))(
  ( (ListLongMap!2140 (toList!1085 List!2188)) )
))
(declare-fun lt!84413 () ListLongMap!2139)

(declare-fun contains!1121 (ListLongMap!2139 (_ BitVec 64)) Bool)

(assert (=> b!168643 (contains!1121 lt!84413 (select (arr!3256 (_keys!5314 thiss!1248)) (index!4233 lt!84415)))))

(declare-fun lt!84406 () Unit!5196)

(declare-fun lemmaValidKeyInArrayIsInListMap!130 (array!6842 array!6844 (_ BitVec 32) (_ BitVec 32) V!4811 V!4811 (_ BitVec 32) Int) Unit!5196)

(assert (=> b!168643 (= lt!84406 (lemmaValidKeyInArrayIsInListMap!130 (_keys!5314 thiss!1248) lt!84414 (mask!8258 thiss!1248) (extraKeys!3230 thiss!1248) (zeroValue!3332 thiss!1248) (minValue!3332 thiss!1248) (index!4233 lt!84415) (defaultEntry!3489 thiss!1248)))))

(declare-fun lt!84416 () ListLongMap!2139)

(assert (=> b!168643 (= lt!84416 lt!84413)))

(declare-fun getCurrentListMap!738 (array!6842 array!6844 (_ BitVec 32) (_ BitVec 32) V!4811 V!4811 (_ BitVec 32) Int) ListLongMap!2139)

(assert (=> b!168643 (= lt!84413 (getCurrentListMap!738 (_keys!5314 thiss!1248) lt!84414 (mask!8258 thiss!1248) (extraKeys!3230 thiss!1248) (zeroValue!3332 thiss!1248) (minValue!3332 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3489 thiss!1248)))))

(declare-fun lt!84412 () ListLongMap!2139)

(declare-fun v!309 () V!4811)

(declare-fun +!227 (ListLongMap!2139 tuple2!3170) ListLongMap!2139)

(assert (=> b!168643 (= lt!84416 (+!227 lt!84412 (tuple2!3171 key!828 v!309)))))

(assert (=> b!168643 (= lt!84414 (array!6845 (store (arr!3257 (_values!3472 thiss!1248)) (index!4233 lt!84415) (ValueCellFull!1593 v!309)) (size!3545 (_values!3472 thiss!1248))))))

(declare-fun lt!84407 () Unit!5196)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!87 (array!6842 array!6844 (_ BitVec 32) (_ BitVec 32) V!4811 V!4811 (_ BitVec 32) (_ BitVec 64) V!4811 Int) Unit!5196)

(assert (=> b!168643 (= lt!84407 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!87 (_keys!5314 thiss!1248) (_values!3472 thiss!1248) (mask!8258 thiss!1248) (extraKeys!3230 thiss!1248) (zeroValue!3332 thiss!1248) (minValue!3332 thiss!1248) (index!4233 lt!84415) key!828 v!309 (defaultEntry!3489 thiss!1248)))))

(declare-fun lt!84411 () Unit!5196)

(assert (=> b!168643 (= lt!84411 e!110910)))

(declare-fun c!30369 () Bool)

(assert (=> b!168643 (= c!30369 (contains!1121 lt!84412 key!828))))

(assert (=> b!168643 (= lt!84412 (getCurrentListMap!738 (_keys!5314 thiss!1248) (_values!3472 thiss!1248) (mask!8258 thiss!1248) (extraKeys!3230 thiss!1248) (zeroValue!3332 thiss!1248) (minValue!3332 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3489 thiss!1248)))))

(declare-fun b!168638 () Bool)

(declare-fun lt!84408 () Unit!5196)

(assert (=> b!168638 (= e!110910 lt!84408)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!127 (array!6842 array!6844 (_ BitVec 32) (_ BitVec 32) V!4811 V!4811 (_ BitVec 64) Int) Unit!5196)

(assert (=> b!168638 (= lt!84408 (lemmaInListMapThenSeekEntryOrOpenFindsIt!127 (_keys!5314 thiss!1248) (_values!3472 thiss!1248) (mask!8258 thiss!1248) (extraKeys!3230 thiss!1248) (zeroValue!3332 thiss!1248) (minValue!3332 thiss!1248) key!828 (defaultEntry!3489 thiss!1248)))))

(declare-fun res!80296 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!168638 (= res!80296 (inRange!0 (index!4233 lt!84415) (mask!8258 thiss!1248)))))

(declare-fun e!110913 () Bool)

(assert (=> b!168638 (=> (not res!80296) (not e!110913))))

(assert (=> b!168638 e!110913))

(declare-fun res!80297 () Bool)

(assert (=> start!16778 (=> (not res!80297) (not e!110906))))

(assert (=> start!16778 (= res!80297 (valid!898 thiss!1248))))

(assert (=> start!16778 e!110906))

(assert (=> start!16778 e!110908))

(assert (=> start!16778 true))

(assert (=> start!16778 tp_is_empty!3873))

(declare-fun b!168644 () Bool)

(declare-fun e!110911 () Bool)

(declare-fun mapRes!6528 () Bool)

(assert (=> b!168644 (= e!110912 (and e!110911 mapRes!6528))))

(declare-fun condMapEmpty!6528 () Bool)

(declare-fun mapDefault!6528 () ValueCell!1593)

(assert (=> b!168644 (= condMapEmpty!6528 (= (arr!3257 (_values!3472 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1593)) mapDefault!6528)))))

(declare-fun mapIsEmpty!6528 () Bool)

(assert (=> mapIsEmpty!6528 mapRes!6528))

(declare-fun mapNonEmpty!6528 () Bool)

(declare-fun tp!14813 () Bool)

(assert (=> mapNonEmpty!6528 (= mapRes!6528 (and tp!14813 e!110907))))

(declare-fun mapValue!6528 () ValueCell!1593)

(declare-fun mapKey!6528 () (_ BitVec 32))

(declare-fun mapRest!6528 () (Array (_ BitVec 32) ValueCell!1593))

(assert (=> mapNonEmpty!6528 (= (arr!3257 (_values!3472 thiss!1248)) (store mapRest!6528 mapKey!6528 mapValue!6528))))

(declare-fun b!168645 () Bool)

(assert (=> b!168645 (= e!110913 (= (select (arr!3256 (_keys!5314 thiss!1248)) (index!4233 lt!84415)) key!828))))

(declare-fun b!168646 () Bool)

(assert (=> b!168646 (= e!110911 tp_is_empty!3873)))

(assert (= (and start!16778 res!80297) b!168641))

(assert (= (and b!168641 res!80295) b!168639))

(assert (= (and b!168639 res!80298) b!168643))

(assert (= (and b!168643 c!30369) b!168638))

(assert (= (and b!168643 (not c!30369)) b!168642))

(assert (= (and b!168638 res!80296) b!168645))

(assert (= (and b!168644 condMapEmpty!6528) mapIsEmpty!6528))

(assert (= (and b!168644 (not condMapEmpty!6528)) mapNonEmpty!6528))

(assert (= (and mapNonEmpty!6528 ((_ is ValueCellFull!1593) mapValue!6528)) b!168637))

(assert (= (and b!168644 ((_ is ValueCellFull!1593) mapDefault!6528)) b!168646))

(assert (= b!168640 b!168644))

(assert (= start!16778 b!168640))

(declare-fun m!197729 () Bool)

(assert (=> b!168639 m!197729))

(declare-fun m!197731 () Bool)

(assert (=> b!168640 m!197731))

(declare-fun m!197733 () Bool)

(assert (=> b!168640 m!197733))

(declare-fun m!197735 () Bool)

(assert (=> b!168638 m!197735))

(declare-fun m!197737 () Bool)

(assert (=> b!168638 m!197737))

(declare-fun m!197739 () Bool)

(assert (=> b!168643 m!197739))

(declare-fun m!197741 () Bool)

(assert (=> b!168643 m!197741))

(declare-fun m!197743 () Bool)

(assert (=> b!168643 m!197743))

(declare-fun m!197745 () Bool)

(assert (=> b!168643 m!197745))

(declare-fun m!197747 () Bool)

(assert (=> b!168643 m!197747))

(declare-fun m!197749 () Bool)

(assert (=> b!168643 m!197749))

(declare-fun m!197751 () Bool)

(assert (=> b!168643 m!197751))

(assert (=> b!168643 m!197751))

(declare-fun m!197753 () Bool)

(assert (=> b!168643 m!197753))

(declare-fun m!197755 () Bool)

(assert (=> b!168643 m!197755))

(declare-fun m!197757 () Bool)

(assert (=> b!168643 m!197757))

(assert (=> b!168645 m!197751))

(declare-fun m!197759 () Bool)

(assert (=> mapNonEmpty!6528 m!197759))

(declare-fun m!197761 () Bool)

(assert (=> start!16778 m!197761))

(declare-fun m!197763 () Bool)

(assert (=> b!168642 m!197763))

(check-sat (not mapNonEmpty!6528) (not start!16778) (not b!168642) (not b!168638) tp_is_empty!3873 (not b!168640) (not b!168639) (not b_next!4071) (not b!168643) b_and!10503)
(check-sat b_and!10503 (not b_next!4071))
