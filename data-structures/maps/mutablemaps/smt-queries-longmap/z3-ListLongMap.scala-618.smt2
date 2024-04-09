; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16070 () Bool)

(assert start!16070)

(declare-fun b!159319 () Bool)

(declare-fun b_free!3519 () Bool)

(declare-fun b_next!3519 () Bool)

(assert (=> b!159319 (= b_free!3519 (not b_next!3519))))

(declare-fun tp!13127 () Bool)

(declare-fun b_and!9951 () Bool)

(assert (=> b!159319 (= tp!13127 b_and!9951)))

(declare-fun e!104303 () Bool)

(declare-fun e!104298 () Bool)

(declare-fun tp_is_empty!3321 () Bool)

(declare-datatypes ((V!4075 0))(
  ( (V!4076 (val!1705 Int)) )
))
(declare-datatypes ((ValueCell!1317 0))(
  ( (ValueCellFull!1317 (v!3566 V!4075)) (EmptyCell!1317) )
))
(declare-datatypes ((array!5720 0))(
  ( (array!5721 (arr!2704 (Array (_ BitVec 32) (_ BitVec 64))) (size!2988 (_ BitVec 32))) )
))
(declare-datatypes ((array!5722 0))(
  ( (array!5723 (arr!2705 (Array (_ BitVec 32) ValueCell!1317)) (size!2989 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1542 0))(
  ( (LongMapFixedSize!1543 (defaultEntry!3213 Int) (mask!7761 (_ BitVec 32)) (extraKeys!2954 (_ BitVec 32)) (zeroValue!3056 V!4075) (minValue!3056 V!4075) (_size!820 (_ BitVec 32)) (_keys!5014 array!5720) (_values!3196 array!5722) (_vacant!820 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1542)

(declare-fun array_inv!1713 (array!5720) Bool)

(declare-fun array_inv!1714 (array!5722) Bool)

(assert (=> b!159319 (= e!104298 (and tp!13127 tp_is_empty!3321 (array_inv!1713 (_keys!5014 thiss!1248)) (array_inv!1714 (_values!3196 thiss!1248)) e!104303))))

(declare-fun mapIsEmpty!5669 () Bool)

(declare-fun mapRes!5669 () Bool)

(assert (=> mapIsEmpty!5669 mapRes!5669))

(declare-fun res!75280 () Bool)

(declare-fun e!104299 () Bool)

(assert (=> start!16070 (=> (not res!75280) (not e!104299))))

(declare-fun valid!718 (LongMapFixedSize!1542) Bool)

(assert (=> start!16070 (= res!75280 (valid!718 thiss!1248))))

(assert (=> start!16070 e!104299))

(assert (=> start!16070 e!104298))

(assert (=> start!16070 true))

(declare-fun b!159320 () Bool)

(declare-fun res!75275 () Bool)

(assert (=> b!159320 (=> (not res!75275) (not e!104299))))

(assert (=> b!159320 (= res!75275 (and (= (size!2989 (_values!3196 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7761 thiss!1248))) (= (size!2988 (_keys!5014 thiss!1248)) (size!2989 (_values!3196 thiss!1248))) (bvsge (mask!7761 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2954 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2954 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!159321 () Bool)

(declare-fun e!104300 () Bool)

(assert (=> b!159321 (= e!104300 tp_is_empty!3321)))

(declare-fun b!159322 () Bool)

(declare-fun res!75281 () Bool)

(assert (=> b!159322 (=> (not res!75281) (not e!104299))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!159322 (= res!75281 (not (= key!828 (bvneg key!828))))))

(declare-fun b!159323 () Bool)

(declare-fun res!75278 () Bool)

(assert (=> b!159323 (=> (not res!75278) (not e!104299))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!159323 (= res!75278 (validMask!0 (mask!7761 thiss!1248)))))

(declare-fun b!159324 () Bool)

(declare-fun res!75276 () Bool)

(assert (=> b!159324 (=> (not res!75276) (not e!104299))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!321 0))(
  ( (MissingZero!321 (index!3452 (_ BitVec 32))) (Found!321 (index!3453 (_ BitVec 32))) (Intermediate!321 (undefined!1133 Bool) (index!3454 (_ BitVec 32)) (x!17609 (_ BitVec 32))) (Undefined!321) (MissingVacant!321 (index!3455 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5720 (_ BitVec 32)) SeekEntryResult!321)

(assert (=> b!159324 (= res!75276 ((_ is Undefined!321) (seekEntryOrOpen!0 key!828 (_keys!5014 thiss!1248) (mask!7761 thiss!1248))))))

(declare-fun b!159325 () Bool)

(assert (=> b!159325 (= e!104299 false)))

(declare-fun lt!82013 () Bool)

(declare-datatypes ((List!1918 0))(
  ( (Nil!1915) (Cons!1914 (h!2527 (_ BitVec 64)) (t!6728 List!1918)) )
))
(declare-fun arrayNoDuplicates!0 (array!5720 (_ BitVec 32) List!1918) Bool)

(assert (=> b!159325 (= lt!82013 (arrayNoDuplicates!0 (_keys!5014 thiss!1248) #b00000000000000000000000000000000 Nil!1915))))

(declare-fun mapNonEmpty!5669 () Bool)

(declare-fun tp!13126 () Bool)

(assert (=> mapNonEmpty!5669 (= mapRes!5669 (and tp!13126 e!104300))))

(declare-fun mapValue!5669 () ValueCell!1317)

(declare-fun mapRest!5669 () (Array (_ BitVec 32) ValueCell!1317))

(declare-fun mapKey!5669 () (_ BitVec 32))

(assert (=> mapNonEmpty!5669 (= (arr!2705 (_values!3196 thiss!1248)) (store mapRest!5669 mapKey!5669 mapValue!5669))))

(declare-fun b!159326 () Bool)

(declare-fun res!75279 () Bool)

(assert (=> b!159326 (=> (not res!75279) (not e!104299))))

(declare-datatypes ((tuple2!2864 0))(
  ( (tuple2!2865 (_1!1442 (_ BitVec 64)) (_2!1442 V!4075)) )
))
(declare-datatypes ((List!1919 0))(
  ( (Nil!1916) (Cons!1915 (h!2528 tuple2!2864) (t!6729 List!1919)) )
))
(declare-datatypes ((ListLongMap!1873 0))(
  ( (ListLongMap!1874 (toList!952 List!1919)) )
))
(declare-fun contains!982 (ListLongMap!1873 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!612 (array!5720 array!5722 (_ BitVec 32) (_ BitVec 32) V!4075 V!4075 (_ BitVec 32) Int) ListLongMap!1873)

(assert (=> b!159326 (= res!75279 (contains!982 (getCurrentListMap!612 (_keys!5014 thiss!1248) (_values!3196 thiss!1248) (mask!7761 thiss!1248) (extraKeys!2954 thiss!1248) (zeroValue!3056 thiss!1248) (minValue!3056 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3213 thiss!1248)) key!828))))

(declare-fun b!159327 () Bool)

(declare-fun res!75277 () Bool)

(assert (=> b!159327 (=> (not res!75277) (not e!104299))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5720 (_ BitVec 32)) Bool)

(assert (=> b!159327 (= res!75277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5014 thiss!1248) (mask!7761 thiss!1248)))))

(declare-fun b!159328 () Bool)

(declare-fun e!104301 () Bool)

(assert (=> b!159328 (= e!104301 tp_is_empty!3321)))

(declare-fun b!159329 () Bool)

(assert (=> b!159329 (= e!104303 (and e!104301 mapRes!5669))))

(declare-fun condMapEmpty!5669 () Bool)

(declare-fun mapDefault!5669 () ValueCell!1317)

(assert (=> b!159329 (= condMapEmpty!5669 (= (arr!2705 (_values!3196 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1317)) mapDefault!5669)))))

(assert (= (and start!16070 res!75280) b!159322))

(assert (= (and b!159322 res!75281) b!159324))

(assert (= (and b!159324 res!75276) b!159326))

(assert (= (and b!159326 res!75279) b!159323))

(assert (= (and b!159323 res!75278) b!159320))

(assert (= (and b!159320 res!75275) b!159327))

(assert (= (and b!159327 res!75277) b!159325))

(assert (= (and b!159329 condMapEmpty!5669) mapIsEmpty!5669))

(assert (= (and b!159329 (not condMapEmpty!5669)) mapNonEmpty!5669))

(assert (= (and mapNonEmpty!5669 ((_ is ValueCellFull!1317) mapValue!5669)) b!159321))

(assert (= (and b!159329 ((_ is ValueCellFull!1317) mapDefault!5669)) b!159328))

(assert (= b!159319 b!159329))

(assert (= start!16070 b!159319))

(declare-fun m!191635 () Bool)

(assert (=> b!159327 m!191635))

(declare-fun m!191637 () Bool)

(assert (=> start!16070 m!191637))

(declare-fun m!191639 () Bool)

(assert (=> mapNonEmpty!5669 m!191639))

(declare-fun m!191641 () Bool)

(assert (=> b!159326 m!191641))

(assert (=> b!159326 m!191641))

(declare-fun m!191643 () Bool)

(assert (=> b!159326 m!191643))

(declare-fun m!191645 () Bool)

(assert (=> b!159324 m!191645))

(declare-fun m!191647 () Bool)

(assert (=> b!159323 m!191647))

(declare-fun m!191649 () Bool)

(assert (=> b!159319 m!191649))

(declare-fun m!191651 () Bool)

(assert (=> b!159319 m!191651))

(declare-fun m!191653 () Bool)

(assert (=> b!159325 m!191653))

(check-sat (not b!159319) (not b!159323) (not start!16070) (not b!159326) tp_is_empty!3321 (not b!159325) (not mapNonEmpty!5669) (not b_next!3519) (not b!159324) b_and!9951 (not b!159327))
(check-sat b_and!9951 (not b_next!3519))
