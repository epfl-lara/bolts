; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16604 () Bool)

(assert start!16604)

(declare-fun b!165396 () Bool)

(declare-fun b_free!3897 () Bool)

(declare-fun b_next!3897 () Bool)

(assert (=> b!165396 (= b_free!3897 (not b_next!3897))))

(declare-fun tp!14291 () Bool)

(declare-fun b_and!10329 () Bool)

(assert (=> b!165396 (= tp!14291 b_and!10329)))

(declare-fun mapIsEmpty!6267 () Bool)

(declare-fun mapRes!6267 () Bool)

(assert (=> mapIsEmpty!6267 mapRes!6267))

(declare-fun b!165393 () Bool)

(declare-fun res!78483 () Bool)

(declare-fun e!108508 () Bool)

(assert (=> b!165393 (=> (not res!78483) (not e!108508))))

(declare-datatypes ((V!4579 0))(
  ( (V!4580 (val!1894 Int)) )
))
(declare-datatypes ((ValueCell!1506 0))(
  ( (ValueCellFull!1506 (v!3755 V!4579)) (EmptyCell!1506) )
))
(declare-datatypes ((array!6494 0))(
  ( (array!6495 (arr!3082 (Array (_ BitVec 32) (_ BitVec 64))) (size!3370 (_ BitVec 32))) )
))
(declare-datatypes ((array!6496 0))(
  ( (array!6497 (arr!3083 (Array (_ BitVec 32) ValueCell!1506)) (size!3371 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1920 0))(
  ( (LongMapFixedSize!1921 (defaultEntry!3402 Int) (mask!8113 (_ BitVec 32)) (extraKeys!3143 (_ BitVec 32)) (zeroValue!3245 V!4579) (minValue!3245 V!4579) (_size!1009 (_ BitVec 32)) (_keys!5227 array!6494) (_values!3385 array!6496) (_vacant!1009 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1920)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165393 (= res!78483 (validMask!0 (mask!8113 thiss!1248)))))

(declare-fun b!165394 () Bool)

(declare-fun res!78489 () Bool)

(assert (=> b!165394 (=> (not res!78489) (not e!108508))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6494 (_ BitVec 32)) Bool)

(assert (=> b!165394 (= res!78489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5227 thiss!1248) (mask!8113 thiss!1248)))))

(declare-fun res!78488 () Bool)

(declare-fun e!108506 () Bool)

(assert (=> start!16604 (=> (not res!78488) (not e!108506))))

(declare-fun valid!842 (LongMapFixedSize!1920) Bool)

(assert (=> start!16604 (= res!78488 (valid!842 thiss!1248))))

(assert (=> start!16604 e!108506))

(declare-fun e!108503 () Bool)

(assert (=> start!16604 e!108503))

(assert (=> start!16604 true))

(declare-fun b!165395 () Bool)

(declare-fun e!108504 () Bool)

(declare-fun tp_is_empty!3699 () Bool)

(assert (=> b!165395 (= e!108504 tp_is_empty!3699)))

(declare-fun e!108502 () Bool)

(declare-fun array_inv!1971 (array!6494) Bool)

(declare-fun array_inv!1972 (array!6496) Bool)

(assert (=> b!165396 (= e!108503 (and tp!14291 tp_is_empty!3699 (array_inv!1971 (_keys!5227 thiss!1248)) (array_inv!1972 (_values!3385 thiss!1248)) e!108502))))

(declare-fun b!165397 () Bool)

(declare-fun res!78485 () Bool)

(assert (=> b!165397 (=> (not res!78485) (not e!108508))))

(assert (=> b!165397 (= res!78485 (and (= (size!3371 (_values!3385 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8113 thiss!1248))) (= (size!3370 (_keys!5227 thiss!1248)) (size!3371 (_values!3385 thiss!1248))) (bvsge (mask!8113 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3143 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3143 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!165398 () Bool)

(assert (=> b!165398 (= e!108506 e!108508)))

(declare-fun res!78486 () Bool)

(assert (=> b!165398 (=> (not res!78486) (not e!108508))))

(declare-datatypes ((SeekEntryResult!446 0))(
  ( (MissingZero!446 (index!3952 (_ BitVec 32))) (Found!446 (index!3953 (_ BitVec 32))) (Intermediate!446 (undefined!1258 Bool) (index!3954 (_ BitVec 32)) (x!18346 (_ BitVec 32))) (Undefined!446) (MissingVacant!446 (index!3955 (_ BitVec 32))) )
))
(declare-fun lt!83092 () SeekEntryResult!446)

(get-info :version)

(assert (=> b!165398 (= res!78486 (and (not ((_ is Undefined!446) lt!83092)) (not ((_ is MissingVacant!446) lt!83092)) (not ((_ is MissingZero!446) lt!83092)) ((_ is Found!446) lt!83092)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6494 (_ BitVec 32)) SeekEntryResult!446)

(assert (=> b!165398 (= lt!83092 (seekEntryOrOpen!0 key!828 (_keys!5227 thiss!1248) (mask!8113 thiss!1248)))))

(declare-fun b!165399 () Bool)

(declare-fun res!78487 () Bool)

(assert (=> b!165399 (=> (not res!78487) (not e!108508))))

(declare-datatypes ((tuple2!3066 0))(
  ( (tuple2!3067 (_1!1543 (_ BitVec 64)) (_2!1543 V!4579)) )
))
(declare-datatypes ((List!2073 0))(
  ( (Nil!2070) (Cons!2069 (h!2686 tuple2!3066) (t!6883 List!2073)) )
))
(declare-datatypes ((ListLongMap!2035 0))(
  ( (ListLongMap!2036 (toList!1033 List!2073)) )
))
(declare-fun contains!1069 (ListLongMap!2035 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!686 (array!6494 array!6496 (_ BitVec 32) (_ BitVec 32) V!4579 V!4579 (_ BitVec 32) Int) ListLongMap!2035)

(assert (=> b!165399 (= res!78487 (not (contains!1069 (getCurrentListMap!686 (_keys!5227 thiss!1248) (_values!3385 thiss!1248) (mask!8113 thiss!1248) (extraKeys!3143 thiss!1248) (zeroValue!3245 thiss!1248) (minValue!3245 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3402 thiss!1248)) key!828)))))

(declare-fun b!165400 () Bool)

(assert (=> b!165400 (= e!108502 (and e!108504 mapRes!6267))))

(declare-fun condMapEmpty!6267 () Bool)

(declare-fun mapDefault!6267 () ValueCell!1506)

(assert (=> b!165400 (= condMapEmpty!6267 (= (arr!3083 (_values!3385 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1506)) mapDefault!6267)))))

(declare-fun b!165401 () Bool)

(assert (=> b!165401 (= e!108508 false)))

(declare-fun lt!83093 () Bool)

(declare-datatypes ((List!2074 0))(
  ( (Nil!2071) (Cons!2070 (h!2687 (_ BitVec 64)) (t!6884 List!2074)) )
))
(declare-fun arrayNoDuplicates!0 (array!6494 (_ BitVec 32) List!2074) Bool)

(assert (=> b!165401 (= lt!83093 (arrayNoDuplicates!0 (_keys!5227 thiss!1248) #b00000000000000000000000000000000 Nil!2071))))

(declare-fun b!165402 () Bool)

(declare-fun e!108507 () Bool)

(assert (=> b!165402 (= e!108507 tp_is_empty!3699)))

(declare-fun mapNonEmpty!6267 () Bool)

(declare-fun tp!14292 () Bool)

(assert (=> mapNonEmpty!6267 (= mapRes!6267 (and tp!14292 e!108507))))

(declare-fun mapKey!6267 () (_ BitVec 32))

(declare-fun mapRest!6267 () (Array (_ BitVec 32) ValueCell!1506))

(declare-fun mapValue!6267 () ValueCell!1506)

(assert (=> mapNonEmpty!6267 (= (arr!3083 (_values!3385 thiss!1248)) (store mapRest!6267 mapKey!6267 mapValue!6267))))

(declare-fun b!165403 () Bool)

(declare-fun res!78484 () Bool)

(assert (=> b!165403 (=> (not res!78484) (not e!108506))))

(assert (=> b!165403 (= res!78484 (not (= key!828 (bvneg key!828))))))

(assert (= (and start!16604 res!78488) b!165403))

(assert (= (and b!165403 res!78484) b!165398))

(assert (= (and b!165398 res!78486) b!165399))

(assert (= (and b!165399 res!78487) b!165393))

(assert (= (and b!165393 res!78483) b!165397))

(assert (= (and b!165397 res!78485) b!165394))

(assert (= (and b!165394 res!78489) b!165401))

(assert (= (and b!165400 condMapEmpty!6267) mapIsEmpty!6267))

(assert (= (and b!165400 (not condMapEmpty!6267)) mapNonEmpty!6267))

(assert (= (and mapNonEmpty!6267 ((_ is ValueCellFull!1506) mapValue!6267)) b!165402))

(assert (= (and b!165400 ((_ is ValueCellFull!1506) mapDefault!6267)) b!165395))

(assert (= b!165396 b!165400))

(assert (= start!16604 b!165396))

(declare-fun m!195229 () Bool)

(assert (=> b!165394 m!195229))

(declare-fun m!195231 () Bool)

(assert (=> b!165396 m!195231))

(declare-fun m!195233 () Bool)

(assert (=> b!165396 m!195233))

(declare-fun m!195235 () Bool)

(assert (=> b!165399 m!195235))

(assert (=> b!165399 m!195235))

(declare-fun m!195237 () Bool)

(assert (=> b!165399 m!195237))

(declare-fun m!195239 () Bool)

(assert (=> b!165401 m!195239))

(declare-fun m!195241 () Bool)

(assert (=> start!16604 m!195241))

(declare-fun m!195243 () Bool)

(assert (=> b!165393 m!195243))

(declare-fun m!195245 () Bool)

(assert (=> b!165398 m!195245))

(declare-fun m!195247 () Bool)

(assert (=> mapNonEmpty!6267 m!195247))

(check-sat (not b_next!3897) (not b!165394) (not b!165401) (not start!16604) (not b!165393) tp_is_empty!3699 (not b!165398) (not b!165396) b_and!10329 (not mapNonEmpty!6267) (not b!165399))
(check-sat b_and!10329 (not b_next!3897))
