; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16676 () Bool)

(assert start!16676)

(declare-fun b!166665 () Bool)

(declare-fun b_free!3969 () Bool)

(declare-fun b_next!3969 () Bool)

(assert (=> b!166665 (= b_free!3969 (not b_next!3969))))

(declare-fun tp!14508 () Bool)

(declare-fun b_and!10401 () Bool)

(assert (=> b!166665 (= tp!14508 b_and!10401)))

(declare-fun b!166663 () Bool)

(declare-fun res!79242 () Bool)

(declare-fun e!109384 () Bool)

(assert (=> b!166663 (=> (not res!79242) (not e!109384))))

(declare-datatypes ((V!4675 0))(
  ( (V!4676 (val!1930 Int)) )
))
(declare-datatypes ((ValueCell!1542 0))(
  ( (ValueCellFull!1542 (v!3791 V!4675)) (EmptyCell!1542) )
))
(declare-datatypes ((array!6638 0))(
  ( (array!6639 (arr!3154 (Array (_ BitVec 32) (_ BitVec 64))) (size!3442 (_ BitVec 32))) )
))
(declare-datatypes ((array!6640 0))(
  ( (array!6641 (arr!3155 (Array (_ BitVec 32) ValueCell!1542)) (size!3443 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1992 0))(
  ( (LongMapFixedSize!1993 (defaultEntry!3438 Int) (mask!8173 (_ BitVec 32)) (extraKeys!3179 (_ BitVec 32)) (zeroValue!3281 V!4675) (minValue!3281 V!4675) (_size!1045 (_ BitVec 32)) (_keys!5263 array!6638) (_values!3421 array!6640) (_vacant!1045 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1992)

(assert (=> b!166663 (= res!79242 (and (= (size!3443 (_values!3421 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8173 thiss!1248))) (= (size!3442 (_keys!5263 thiss!1248)) (size!3443 (_values!3421 thiss!1248))) (bvsge (mask!8173 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3179 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3179 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!166664 () Bool)

(declare-fun e!109385 () Bool)

(assert (=> b!166664 (= e!109385 e!109384)))

(declare-fun res!79241 () Bool)

(assert (=> b!166664 (=> (not res!79241) (not e!109384))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!166664 (= res!79241 (validMask!0 (mask!8173 thiss!1248)))))

(declare-datatypes ((Unit!5075 0))(
  ( (Unit!5076) )
))
(declare-fun lt!83432 () Unit!5075)

(declare-fun e!109386 () Unit!5075)

(assert (=> b!166664 (= lt!83432 e!109386)))

(declare-fun c!30216 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3110 0))(
  ( (tuple2!3111 (_1!1565 (_ BitVec 64)) (_2!1565 V!4675)) )
))
(declare-datatypes ((List!2122 0))(
  ( (Nil!2119) (Cons!2118 (h!2735 tuple2!3110) (t!6932 List!2122)) )
))
(declare-datatypes ((ListLongMap!2079 0))(
  ( (ListLongMap!2080 (toList!1055 List!2122)) )
))
(declare-fun contains!1091 (ListLongMap!2079 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!708 (array!6638 array!6640 (_ BitVec 32) (_ BitVec 32) V!4675 V!4675 (_ BitVec 32) Int) ListLongMap!2079)

(assert (=> b!166664 (= c!30216 (contains!1091 (getCurrentListMap!708 (_keys!5263 thiss!1248) (_values!3421 thiss!1248) (mask!8173 thiss!1248) (extraKeys!3179 thiss!1248) (zeroValue!3281 thiss!1248) (minValue!3281 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3438 thiss!1248)) key!828))))

(declare-fun mapNonEmpty!6375 () Bool)

(declare-fun mapRes!6375 () Bool)

(declare-fun tp!14507 () Bool)

(declare-fun e!109381 () Bool)

(assert (=> mapNonEmpty!6375 (= mapRes!6375 (and tp!14507 e!109381))))

(declare-fun mapRest!6375 () (Array (_ BitVec 32) ValueCell!1542))

(declare-fun mapValue!6375 () ValueCell!1542)

(declare-fun mapKey!6375 () (_ BitVec 32))

(assert (=> mapNonEmpty!6375 (= (arr!3155 (_values!3421 thiss!1248)) (store mapRest!6375 mapKey!6375 mapValue!6375))))

(declare-fun res!79243 () Bool)

(declare-fun e!109389 () Bool)

(assert (=> start!16676 (=> (not res!79243) (not e!109389))))

(declare-fun valid!866 (LongMapFixedSize!1992) Bool)

(assert (=> start!16676 (= res!79243 (valid!866 thiss!1248))))

(assert (=> start!16676 e!109389))

(declare-fun e!109383 () Bool)

(assert (=> start!16676 e!109383))

(assert (=> start!16676 true))

(declare-fun tp_is_empty!3771 () Bool)

(declare-fun e!109390 () Bool)

(declare-fun array_inv!2017 (array!6638) Bool)

(declare-fun array_inv!2018 (array!6640) Bool)

(assert (=> b!166665 (= e!109383 (and tp!14508 tp_is_empty!3771 (array_inv!2017 (_keys!5263 thiss!1248)) (array_inv!2018 (_values!3421 thiss!1248)) e!109390))))

(declare-fun mapIsEmpty!6375 () Bool)

(assert (=> mapIsEmpty!6375 mapRes!6375))

(declare-fun b!166666 () Bool)

(assert (=> b!166666 (= e!109381 tp_is_empty!3771)))

(declare-fun b!166667 () Bool)

(declare-fun Unit!5077 () Unit!5075)

(assert (=> b!166667 (= e!109386 Unit!5077)))

(declare-fun lt!83431 () Unit!5075)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!91 (array!6638 array!6640 (_ BitVec 32) (_ BitVec 32) V!4675 V!4675 (_ BitVec 64) Int) Unit!5075)

(assert (=> b!166667 (= lt!83431 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!91 (_keys!5263 thiss!1248) (_values!3421 thiss!1248) (mask!8173 thiss!1248) (extraKeys!3179 thiss!1248) (zeroValue!3281 thiss!1248) (minValue!3281 thiss!1248) key!828 (defaultEntry!3438 thiss!1248)))))

(assert (=> b!166667 false))

(declare-fun b!166668 () Bool)

(assert (=> b!166668 (= e!109384 false)))

(declare-fun lt!83435 () Bool)

(declare-datatypes ((List!2123 0))(
  ( (Nil!2120) (Cons!2119 (h!2736 (_ BitVec 64)) (t!6933 List!2123)) )
))
(declare-fun arrayNoDuplicates!0 (array!6638 (_ BitVec 32) List!2123) Bool)

(assert (=> b!166668 (= lt!83435 (arrayNoDuplicates!0 (_keys!5263 thiss!1248) #b00000000000000000000000000000000 Nil!2120))))

(declare-fun b!166669 () Bool)

(declare-fun e!109387 () Bool)

(assert (=> b!166669 (= e!109390 (and e!109387 mapRes!6375))))

(declare-fun condMapEmpty!6375 () Bool)

(declare-fun mapDefault!6375 () ValueCell!1542)

(assert (=> b!166669 (= condMapEmpty!6375 (= (arr!3155 (_values!3421 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1542)) mapDefault!6375)))))

(declare-fun b!166670 () Bool)

(assert (=> b!166670 (= e!109387 tp_is_empty!3771)))

(declare-datatypes ((SeekEntryResult!472 0))(
  ( (MissingZero!472 (index!4056 (_ BitVec 32))) (Found!472 (index!4057 (_ BitVec 32))) (Intermediate!472 (undefined!1284 Bool) (index!4058 (_ BitVec 32)) (x!18468 (_ BitVec 32))) (Undefined!472) (MissingVacant!472 (index!4059 (_ BitVec 32))) )
))
(declare-fun lt!83433 () SeekEntryResult!472)

(declare-fun e!109382 () Bool)

(declare-fun b!166671 () Bool)

(assert (=> b!166671 (= e!109382 (= (select (arr!3154 (_keys!5263 thiss!1248)) (index!4057 lt!83433)) key!828))))

(declare-fun b!166672 () Bool)

(assert (=> b!166672 (= e!109389 e!109385)))

(declare-fun res!79244 () Bool)

(assert (=> b!166672 (=> (not res!79244) (not e!109385))))

(get-info :version)

(assert (=> b!166672 (= res!79244 (and (not ((_ is Undefined!472) lt!83433)) (not ((_ is MissingVacant!472) lt!83433)) (not ((_ is MissingZero!472) lt!83433)) ((_ is Found!472) lt!83433)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6638 (_ BitVec 32)) SeekEntryResult!472)

(assert (=> b!166672 (= lt!83433 (seekEntryOrOpen!0 key!828 (_keys!5263 thiss!1248) (mask!8173 thiss!1248)))))

(declare-fun b!166673 () Bool)

(declare-fun lt!83434 () Unit!5075)

(assert (=> b!166673 (= e!109386 lt!83434)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!93 (array!6638 array!6640 (_ BitVec 32) (_ BitVec 32) V!4675 V!4675 (_ BitVec 64) Int) Unit!5075)

(assert (=> b!166673 (= lt!83434 (lemmaInListMapThenSeekEntryOrOpenFindsIt!93 (_keys!5263 thiss!1248) (_values!3421 thiss!1248) (mask!8173 thiss!1248) (extraKeys!3179 thiss!1248) (zeroValue!3281 thiss!1248) (minValue!3281 thiss!1248) key!828 (defaultEntry!3438 thiss!1248)))))

(declare-fun res!79240 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!166673 (= res!79240 (inRange!0 (index!4057 lt!83433) (mask!8173 thiss!1248)))))

(assert (=> b!166673 (=> (not res!79240) (not e!109382))))

(assert (=> b!166673 e!109382))

(declare-fun b!166674 () Bool)

(declare-fun res!79239 () Bool)

(assert (=> b!166674 (=> (not res!79239) (not e!109389))))

(assert (=> b!166674 (= res!79239 (not (= key!828 (bvneg key!828))))))

(declare-fun b!166675 () Bool)

(declare-fun res!79245 () Bool)

(assert (=> b!166675 (=> (not res!79245) (not e!109384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6638 (_ BitVec 32)) Bool)

(assert (=> b!166675 (= res!79245 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5263 thiss!1248) (mask!8173 thiss!1248)))))

(assert (= (and start!16676 res!79243) b!166674))

(assert (= (and b!166674 res!79239) b!166672))

(assert (= (and b!166672 res!79244) b!166664))

(assert (= (and b!166664 c!30216) b!166673))

(assert (= (and b!166664 (not c!30216)) b!166667))

(assert (= (and b!166673 res!79240) b!166671))

(assert (= (and b!166664 res!79241) b!166663))

(assert (= (and b!166663 res!79242) b!166675))

(assert (= (and b!166675 res!79245) b!166668))

(assert (= (and b!166669 condMapEmpty!6375) mapIsEmpty!6375))

(assert (= (and b!166669 (not condMapEmpty!6375)) mapNonEmpty!6375))

(assert (= (and mapNonEmpty!6375 ((_ is ValueCellFull!1542) mapValue!6375)) b!166666))

(assert (= (and b!166669 ((_ is ValueCellFull!1542) mapDefault!6375)) b!166670))

(assert (= b!166665 b!166669))

(assert (= start!16676 b!166665))

(declare-fun m!196053 () Bool)

(assert (=> b!166665 m!196053))

(declare-fun m!196055 () Bool)

(assert (=> b!166665 m!196055))

(declare-fun m!196057 () Bool)

(assert (=> start!16676 m!196057))

(declare-fun m!196059 () Bool)

(assert (=> b!166667 m!196059))

(declare-fun m!196061 () Bool)

(assert (=> b!166673 m!196061))

(declare-fun m!196063 () Bool)

(assert (=> b!166673 m!196063))

(declare-fun m!196065 () Bool)

(assert (=> mapNonEmpty!6375 m!196065))

(declare-fun m!196067 () Bool)

(assert (=> b!166664 m!196067))

(declare-fun m!196069 () Bool)

(assert (=> b!166664 m!196069))

(assert (=> b!166664 m!196069))

(declare-fun m!196071 () Bool)

(assert (=> b!166664 m!196071))

(declare-fun m!196073 () Bool)

(assert (=> b!166668 m!196073))

(declare-fun m!196075 () Bool)

(assert (=> b!166672 m!196075))

(declare-fun m!196077 () Bool)

(assert (=> b!166671 m!196077))

(declare-fun m!196079 () Bool)

(assert (=> b!166675 m!196079))

(check-sat (not b!166665) (not b_next!3969) (not b!166673) (not b!166675) (not start!16676) (not b!166664) b_and!10401 (not mapNonEmpty!6375) (not b!166668) (not b!166672) (not b!166667) tp_is_empty!3771)
(check-sat b_and!10401 (not b_next!3969))
