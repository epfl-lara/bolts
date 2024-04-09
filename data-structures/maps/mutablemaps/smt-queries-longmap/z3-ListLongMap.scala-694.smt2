; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16682 () Bool)

(assert start!16682)

(declare-fun b!166791 () Bool)

(declare-fun b_free!3975 () Bool)

(declare-fun b_next!3975 () Bool)

(assert (=> b!166791 (= b_free!3975 (not b_next!3975))))

(declare-fun tp!14525 () Bool)

(declare-fun b_and!10407 () Bool)

(assert (=> b!166791 (= tp!14525 b_and!10407)))

(declare-fun b!166780 () Bool)

(declare-fun e!109480 () Bool)

(declare-fun tp_is_empty!3777 () Bool)

(assert (=> b!166780 (= e!109480 tp_is_empty!3777)))

(declare-fun b!166781 () Bool)

(declare-datatypes ((Unit!5081 0))(
  ( (Unit!5082) )
))
(declare-fun e!109476 () Unit!5081)

(declare-fun lt!83478 () Unit!5081)

(assert (=> b!166781 (= e!109476 lt!83478)))

(declare-datatypes ((V!4683 0))(
  ( (V!4684 (val!1933 Int)) )
))
(declare-datatypes ((ValueCell!1545 0))(
  ( (ValueCellFull!1545 (v!3794 V!4683)) (EmptyCell!1545) )
))
(declare-datatypes ((array!6650 0))(
  ( (array!6651 (arr!3160 (Array (_ BitVec 32) (_ BitVec 64))) (size!3448 (_ BitVec 32))) )
))
(declare-datatypes ((array!6652 0))(
  ( (array!6653 (arr!3161 (Array (_ BitVec 32) ValueCell!1545)) (size!3449 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1998 0))(
  ( (LongMapFixedSize!1999 (defaultEntry!3441 Int) (mask!8178 (_ BitVec 32)) (extraKeys!3182 (_ BitVec 32)) (zeroValue!3284 V!4683) (minValue!3284 V!4683) (_size!1048 (_ BitVec 32)) (_keys!5266 array!6650) (_values!3424 array!6652) (_vacant!1048 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1998)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!94 (array!6650 array!6652 (_ BitVec 32) (_ BitVec 32) V!4683 V!4683 (_ BitVec 64) Int) Unit!5081)

(assert (=> b!166781 (= lt!83478 (lemmaInListMapThenSeekEntryOrOpenFindsIt!94 (_keys!5266 thiss!1248) (_values!3424 thiss!1248) (mask!8178 thiss!1248) (extraKeys!3182 thiss!1248) (zeroValue!3284 thiss!1248) (minValue!3284 thiss!1248) key!828 (defaultEntry!3441 thiss!1248)))))

(declare-fun res!79303 () Bool)

(declare-datatypes ((SeekEntryResult!474 0))(
  ( (MissingZero!474 (index!4064 (_ BitVec 32))) (Found!474 (index!4065 (_ BitVec 32))) (Intermediate!474 (undefined!1286 Bool) (index!4066 (_ BitVec 32)) (x!18478 (_ BitVec 32))) (Undefined!474) (MissingVacant!474 (index!4067 (_ BitVec 32))) )
))
(declare-fun lt!83480 () SeekEntryResult!474)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!166781 (= res!79303 (inRange!0 (index!4065 lt!83480) (mask!8178 thiss!1248)))))

(declare-fun e!109477 () Bool)

(assert (=> b!166781 (=> (not res!79303) (not e!109477))))

(assert (=> b!166781 e!109477))

(declare-fun mapNonEmpty!6384 () Bool)

(declare-fun mapRes!6384 () Bool)

(declare-fun tp!14526 () Bool)

(assert (=> mapNonEmpty!6384 (= mapRes!6384 (and tp!14526 e!109480))))

(declare-fun mapKey!6384 () (_ BitVec 32))

(declare-fun mapRest!6384 () (Array (_ BitVec 32) ValueCell!1545))

(declare-fun mapValue!6384 () ValueCell!1545)

(assert (=> mapNonEmpty!6384 (= (arr!3161 (_values!3424 thiss!1248)) (store mapRest!6384 mapKey!6384 mapValue!6384))))

(declare-fun mapIsEmpty!6384 () Bool)

(assert (=> mapIsEmpty!6384 mapRes!6384))

(declare-fun res!79306 () Bool)

(declare-fun e!109474 () Bool)

(assert (=> start!16682 (=> (not res!79306) (not e!109474))))

(declare-fun valid!867 (LongMapFixedSize!1998) Bool)

(assert (=> start!16682 (= res!79306 (valid!867 thiss!1248))))

(assert (=> start!16682 e!109474))

(declare-fun e!109479 () Bool)

(assert (=> start!16682 e!109479))

(assert (=> start!16682 true))

(declare-fun b!166782 () Bool)

(declare-fun e!109471 () Bool)

(assert (=> b!166782 (= e!109471 false)))

(declare-fun lt!83477 () Bool)

(declare-datatypes ((List!2125 0))(
  ( (Nil!2122) (Cons!2121 (h!2738 (_ BitVec 64)) (t!6935 List!2125)) )
))
(declare-fun arrayNoDuplicates!0 (array!6650 (_ BitVec 32) List!2125) Bool)

(assert (=> b!166782 (= lt!83477 (arrayNoDuplicates!0 (_keys!5266 thiss!1248) #b00000000000000000000000000000000 Nil!2122))))

(declare-fun b!166783 () Bool)

(declare-fun Unit!5083 () Unit!5081)

(assert (=> b!166783 (= e!109476 Unit!5083)))

(declare-fun lt!83479 () Unit!5081)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!93 (array!6650 array!6652 (_ BitVec 32) (_ BitVec 32) V!4683 V!4683 (_ BitVec 64) Int) Unit!5081)

(assert (=> b!166783 (= lt!83479 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!93 (_keys!5266 thiss!1248) (_values!3424 thiss!1248) (mask!8178 thiss!1248) (extraKeys!3182 thiss!1248) (zeroValue!3284 thiss!1248) (minValue!3284 thiss!1248) key!828 (defaultEntry!3441 thiss!1248)))))

(assert (=> b!166783 false))

(declare-fun b!166784 () Bool)

(assert (=> b!166784 (= e!109477 (= (select (arr!3160 (_keys!5266 thiss!1248)) (index!4065 lt!83480)) key!828))))

(declare-fun b!166785 () Bool)

(declare-fun e!109478 () Bool)

(declare-fun e!109473 () Bool)

(assert (=> b!166785 (= e!109478 (and e!109473 mapRes!6384))))

(declare-fun condMapEmpty!6384 () Bool)

(declare-fun mapDefault!6384 () ValueCell!1545)

(assert (=> b!166785 (= condMapEmpty!6384 (= (arr!3161 (_values!3424 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1545)) mapDefault!6384)))))

(declare-fun b!166786 () Bool)

(assert (=> b!166786 (= e!109473 tp_is_empty!3777)))

(declare-fun b!166787 () Bool)

(declare-fun e!109475 () Bool)

(assert (=> b!166787 (= e!109475 e!109471)))

(declare-fun res!79307 () Bool)

(assert (=> b!166787 (=> (not res!79307) (not e!109471))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!166787 (= res!79307 (validMask!0 (mask!8178 thiss!1248)))))

(declare-fun lt!83476 () Unit!5081)

(assert (=> b!166787 (= lt!83476 e!109476)))

(declare-fun c!30225 () Bool)

(declare-datatypes ((tuple2!3112 0))(
  ( (tuple2!3113 (_1!1566 (_ BitVec 64)) (_2!1566 V!4683)) )
))
(declare-datatypes ((List!2126 0))(
  ( (Nil!2123) (Cons!2122 (h!2739 tuple2!3112) (t!6936 List!2126)) )
))
(declare-datatypes ((ListLongMap!2081 0))(
  ( (ListLongMap!2082 (toList!1056 List!2126)) )
))
(declare-fun contains!1092 (ListLongMap!2081 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!709 (array!6650 array!6652 (_ BitVec 32) (_ BitVec 32) V!4683 V!4683 (_ BitVec 32) Int) ListLongMap!2081)

(assert (=> b!166787 (= c!30225 (contains!1092 (getCurrentListMap!709 (_keys!5266 thiss!1248) (_values!3424 thiss!1248) (mask!8178 thiss!1248) (extraKeys!3182 thiss!1248) (zeroValue!3284 thiss!1248) (minValue!3284 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3441 thiss!1248)) key!828))))

(declare-fun b!166788 () Bool)

(declare-fun res!79302 () Bool)

(assert (=> b!166788 (=> (not res!79302) (not e!109474))))

(assert (=> b!166788 (= res!79302 (not (= key!828 (bvneg key!828))))))

(declare-fun b!166789 () Bool)

(assert (=> b!166789 (= e!109474 e!109475)))

(declare-fun res!79304 () Bool)

(assert (=> b!166789 (=> (not res!79304) (not e!109475))))

(get-info :version)

(assert (=> b!166789 (= res!79304 (and (not ((_ is Undefined!474) lt!83480)) (not ((_ is MissingVacant!474) lt!83480)) (not ((_ is MissingZero!474) lt!83480)) ((_ is Found!474) lt!83480)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6650 (_ BitVec 32)) SeekEntryResult!474)

(assert (=> b!166789 (= lt!83480 (seekEntryOrOpen!0 key!828 (_keys!5266 thiss!1248) (mask!8178 thiss!1248)))))

(declare-fun b!166790 () Bool)

(declare-fun res!79305 () Bool)

(assert (=> b!166790 (=> (not res!79305) (not e!109471))))

(assert (=> b!166790 (= res!79305 (and (= (size!3449 (_values!3424 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8178 thiss!1248))) (= (size!3448 (_keys!5266 thiss!1248)) (size!3449 (_values!3424 thiss!1248))) (bvsge (mask!8178 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3182 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3182 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun array_inv!2019 (array!6650) Bool)

(declare-fun array_inv!2020 (array!6652) Bool)

(assert (=> b!166791 (= e!109479 (and tp!14525 tp_is_empty!3777 (array_inv!2019 (_keys!5266 thiss!1248)) (array_inv!2020 (_values!3424 thiss!1248)) e!109478))))

(declare-fun b!166792 () Bool)

(declare-fun res!79308 () Bool)

(assert (=> b!166792 (=> (not res!79308) (not e!109471))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6650 (_ BitVec 32)) Bool)

(assert (=> b!166792 (= res!79308 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5266 thiss!1248) (mask!8178 thiss!1248)))))

(assert (= (and start!16682 res!79306) b!166788))

(assert (= (and b!166788 res!79302) b!166789))

(assert (= (and b!166789 res!79304) b!166787))

(assert (= (and b!166787 c!30225) b!166781))

(assert (= (and b!166787 (not c!30225)) b!166783))

(assert (= (and b!166781 res!79303) b!166784))

(assert (= (and b!166787 res!79307) b!166790))

(assert (= (and b!166790 res!79305) b!166792))

(assert (= (and b!166792 res!79308) b!166782))

(assert (= (and b!166785 condMapEmpty!6384) mapIsEmpty!6384))

(assert (= (and b!166785 (not condMapEmpty!6384)) mapNonEmpty!6384))

(assert (= (and mapNonEmpty!6384 ((_ is ValueCellFull!1545) mapValue!6384)) b!166780))

(assert (= (and b!166785 ((_ is ValueCellFull!1545) mapDefault!6384)) b!166786))

(assert (= b!166791 b!166785))

(assert (= start!16682 b!166791))

(declare-fun m!196137 () Bool)

(assert (=> start!16682 m!196137))

(declare-fun m!196139 () Bool)

(assert (=> b!166782 m!196139))

(declare-fun m!196141 () Bool)

(assert (=> b!166781 m!196141))

(declare-fun m!196143 () Bool)

(assert (=> b!166781 m!196143))

(declare-fun m!196145 () Bool)

(assert (=> b!166787 m!196145))

(declare-fun m!196147 () Bool)

(assert (=> b!166787 m!196147))

(assert (=> b!166787 m!196147))

(declare-fun m!196149 () Bool)

(assert (=> b!166787 m!196149))

(declare-fun m!196151 () Bool)

(assert (=> mapNonEmpty!6384 m!196151))

(declare-fun m!196153 () Bool)

(assert (=> b!166784 m!196153))

(declare-fun m!196155 () Bool)

(assert (=> b!166789 m!196155))

(declare-fun m!196157 () Bool)

(assert (=> b!166791 m!196157))

(declare-fun m!196159 () Bool)

(assert (=> b!166791 m!196159))

(declare-fun m!196161 () Bool)

(assert (=> b!166792 m!196161))

(declare-fun m!196163 () Bool)

(assert (=> b!166783 m!196163))

(check-sat (not b!166787) (not b!166789) b_and!10407 (not b!166782) (not b!166791) (not b_next!3975) (not b!166783) (not b!166781) (not mapNonEmpty!6384) (not b!166792) (not start!16682) tp_is_empty!3777)
(check-sat b_and!10407 (not b_next!3975))
