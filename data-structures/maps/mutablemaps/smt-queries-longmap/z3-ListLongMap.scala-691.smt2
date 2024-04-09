; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16664 () Bool)

(assert start!16664)

(declare-fun b!166431 () Bool)

(declare-fun b_free!3957 () Bool)

(declare-fun b_next!3957 () Bool)

(assert (=> b!166431 (= b_free!3957 (not b_next!3957))))

(declare-fun tp!14471 () Bool)

(declare-fun b_and!10389 () Bool)

(assert (=> b!166431 (= tp!14471 b_and!10389)))

(declare-fun b!166429 () Bool)

(declare-fun e!109202 () Bool)

(declare-fun tp_is_empty!3759 () Bool)

(assert (=> b!166429 (= e!109202 tp_is_empty!3759)))

(declare-fun b!166430 () Bool)

(declare-datatypes ((Unit!5060 0))(
  ( (Unit!5061) )
))
(declare-fun e!109201 () Unit!5060)

(declare-fun Unit!5062 () Unit!5060)

(assert (=> b!166430 (= e!109201 Unit!5062)))

(declare-fun lt!83343 () Unit!5060)

(declare-datatypes ((V!4659 0))(
  ( (V!4660 (val!1924 Int)) )
))
(declare-datatypes ((ValueCell!1536 0))(
  ( (ValueCellFull!1536 (v!3785 V!4659)) (EmptyCell!1536) )
))
(declare-datatypes ((array!6614 0))(
  ( (array!6615 (arr!3142 (Array (_ BitVec 32) (_ BitVec 64))) (size!3430 (_ BitVec 32))) )
))
(declare-datatypes ((array!6616 0))(
  ( (array!6617 (arr!3143 (Array (_ BitVec 32) ValueCell!1536)) (size!3431 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1980 0))(
  ( (LongMapFixedSize!1981 (defaultEntry!3432 Int) (mask!8163 (_ BitVec 32)) (extraKeys!3173 (_ BitVec 32)) (zeroValue!3275 V!4659) (minValue!3275 V!4659) (_size!1039 (_ BitVec 32)) (_keys!5257 array!6614) (_values!3415 array!6616) (_vacant!1039 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1980)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!86 (array!6614 array!6616 (_ BitVec 32) (_ BitVec 32) V!4659 V!4659 (_ BitVec 64) Int) Unit!5060)

(assert (=> b!166430 (= lt!83343 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!86 (_keys!5257 thiss!1248) (_values!3415 thiss!1248) (mask!8163 thiss!1248) (extraKeys!3173 thiss!1248) (zeroValue!3275 thiss!1248) (minValue!3275 thiss!1248) key!828 (defaultEntry!3432 thiss!1248)))))

(assert (=> b!166430 false))

(declare-fun e!109210 () Bool)

(declare-fun e!109208 () Bool)

(declare-fun array_inv!2007 (array!6614) Bool)

(declare-fun array_inv!2008 (array!6616) Bool)

(assert (=> b!166431 (= e!109210 (and tp!14471 tp_is_empty!3759 (array_inv!2007 (_keys!5257 thiss!1248)) (array_inv!2008 (_values!3415 thiss!1248)) e!109208))))

(declare-fun b!166432 () Bool)

(declare-fun res!79116 () Bool)

(declare-fun e!109205 () Bool)

(assert (=> b!166432 (=> (not res!79116) (not e!109205))))

(assert (=> b!166432 (= res!79116 (and (= (size!3431 (_values!3415 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8163 thiss!1248))) (= (size!3430 (_keys!5257 thiss!1248)) (size!3431 (_values!3415 thiss!1248))) (bvsge (mask!8163 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3173 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3173 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!166433 () Bool)

(declare-fun e!109209 () Bool)

(declare-fun e!109207 () Bool)

(assert (=> b!166433 (= e!109209 e!109207)))

(declare-fun res!79114 () Bool)

(assert (=> b!166433 (=> (not res!79114) (not e!109207))))

(declare-datatypes ((SeekEntryResult!467 0))(
  ( (MissingZero!467 (index!4036 (_ BitVec 32))) (Found!467 (index!4037 (_ BitVec 32))) (Intermediate!467 (undefined!1279 Bool) (index!4038 (_ BitVec 32)) (x!18447 (_ BitVec 32))) (Undefined!467) (MissingVacant!467 (index!4039 (_ BitVec 32))) )
))
(declare-fun lt!83345 () SeekEntryResult!467)

(get-info :version)

(assert (=> b!166433 (= res!79114 (and (not ((_ is Undefined!467) lt!83345)) (not ((_ is MissingVacant!467) lt!83345)) (not ((_ is MissingZero!467) lt!83345)) ((_ is Found!467) lt!83345)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6614 (_ BitVec 32)) SeekEntryResult!467)

(assert (=> b!166433 (= lt!83345 (seekEntryOrOpen!0 key!828 (_keys!5257 thiss!1248) (mask!8163 thiss!1248)))))

(declare-fun b!166434 () Bool)

(declare-fun e!109203 () Bool)

(assert (=> b!166434 (= e!109203 tp_is_empty!3759)))

(declare-fun mapIsEmpty!6357 () Bool)

(declare-fun mapRes!6357 () Bool)

(assert (=> mapIsEmpty!6357 mapRes!6357))

(declare-fun res!79119 () Bool)

(assert (=> start!16664 (=> (not res!79119) (not e!109209))))

(declare-fun valid!861 (LongMapFixedSize!1980) Bool)

(assert (=> start!16664 (= res!79119 (valid!861 thiss!1248))))

(assert (=> start!16664 e!109209))

(assert (=> start!16664 e!109210))

(assert (=> start!16664 true))

(declare-fun b!166435 () Bool)

(assert (=> b!166435 (= e!109207 e!109205)))

(declare-fun res!79113 () Bool)

(assert (=> b!166435 (=> (not res!79113) (not e!109205))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!166435 (= res!79113 (validMask!0 (mask!8163 thiss!1248)))))

(declare-fun lt!83342 () Unit!5060)

(assert (=> b!166435 (= lt!83342 e!109201)))

(declare-fun c!30198 () Bool)

(declare-datatypes ((tuple2!3102 0))(
  ( (tuple2!3103 (_1!1561 (_ BitVec 64)) (_2!1561 V!4659)) )
))
(declare-datatypes ((List!2113 0))(
  ( (Nil!2110) (Cons!2109 (h!2726 tuple2!3102) (t!6923 List!2113)) )
))
(declare-datatypes ((ListLongMap!2071 0))(
  ( (ListLongMap!2072 (toList!1051 List!2113)) )
))
(declare-fun contains!1087 (ListLongMap!2071 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!704 (array!6614 array!6616 (_ BitVec 32) (_ BitVec 32) V!4659 V!4659 (_ BitVec 32) Int) ListLongMap!2071)

(assert (=> b!166435 (= c!30198 (contains!1087 (getCurrentListMap!704 (_keys!5257 thiss!1248) (_values!3415 thiss!1248) (mask!8163 thiss!1248) (extraKeys!3173 thiss!1248) (zeroValue!3275 thiss!1248) (minValue!3275 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3432 thiss!1248)) key!828))))

(declare-fun b!166436 () Bool)

(declare-fun e!109204 () Bool)

(assert (=> b!166436 (= e!109204 (= (select (arr!3142 (_keys!5257 thiss!1248)) (index!4037 lt!83345)) key!828))))

(declare-fun b!166437 () Bool)

(assert (=> b!166437 (= e!109208 (and e!109203 mapRes!6357))))

(declare-fun condMapEmpty!6357 () Bool)

(declare-fun mapDefault!6357 () ValueCell!1536)

(assert (=> b!166437 (= condMapEmpty!6357 (= (arr!3143 (_values!3415 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1536)) mapDefault!6357)))))

(declare-fun b!166438 () Bool)

(declare-fun res!79117 () Bool)

(assert (=> b!166438 (=> (not res!79117) (not e!109205))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6614 (_ BitVec 32)) Bool)

(assert (=> b!166438 (= res!79117 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5257 thiss!1248) (mask!8163 thiss!1248)))))

(declare-fun b!166439 () Bool)

(declare-fun lt!83341 () Unit!5060)

(assert (=> b!166439 (= e!109201 lt!83341)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!89 (array!6614 array!6616 (_ BitVec 32) (_ BitVec 32) V!4659 V!4659 (_ BitVec 64) Int) Unit!5060)

(assert (=> b!166439 (= lt!83341 (lemmaInListMapThenSeekEntryOrOpenFindsIt!89 (_keys!5257 thiss!1248) (_values!3415 thiss!1248) (mask!8163 thiss!1248) (extraKeys!3173 thiss!1248) (zeroValue!3275 thiss!1248) (minValue!3275 thiss!1248) key!828 (defaultEntry!3432 thiss!1248)))))

(declare-fun res!79115 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!166439 (= res!79115 (inRange!0 (index!4037 lt!83345) (mask!8163 thiss!1248)))))

(assert (=> b!166439 (=> (not res!79115) (not e!109204))))

(assert (=> b!166439 e!109204))

(declare-fun b!166440 () Bool)

(declare-fun res!79118 () Bool)

(assert (=> b!166440 (=> (not res!79118) (not e!109209))))

(assert (=> b!166440 (= res!79118 (not (= key!828 (bvneg key!828))))))

(declare-fun b!166441 () Bool)

(assert (=> b!166441 (= e!109205 false)))

(declare-fun lt!83344 () Bool)

(declare-datatypes ((List!2114 0))(
  ( (Nil!2111) (Cons!2110 (h!2727 (_ BitVec 64)) (t!6924 List!2114)) )
))
(declare-fun arrayNoDuplicates!0 (array!6614 (_ BitVec 32) List!2114) Bool)

(assert (=> b!166441 (= lt!83344 (arrayNoDuplicates!0 (_keys!5257 thiss!1248) #b00000000000000000000000000000000 Nil!2111))))

(declare-fun mapNonEmpty!6357 () Bool)

(declare-fun tp!14472 () Bool)

(assert (=> mapNonEmpty!6357 (= mapRes!6357 (and tp!14472 e!109202))))

(declare-fun mapValue!6357 () ValueCell!1536)

(declare-fun mapKey!6357 () (_ BitVec 32))

(declare-fun mapRest!6357 () (Array (_ BitVec 32) ValueCell!1536))

(assert (=> mapNonEmpty!6357 (= (arr!3143 (_values!3415 thiss!1248)) (store mapRest!6357 mapKey!6357 mapValue!6357))))

(assert (= (and start!16664 res!79119) b!166440))

(assert (= (and b!166440 res!79118) b!166433))

(assert (= (and b!166433 res!79114) b!166435))

(assert (= (and b!166435 c!30198) b!166439))

(assert (= (and b!166435 (not c!30198)) b!166430))

(assert (= (and b!166439 res!79115) b!166436))

(assert (= (and b!166435 res!79113) b!166432))

(assert (= (and b!166432 res!79116) b!166438))

(assert (= (and b!166438 res!79117) b!166441))

(assert (= (and b!166437 condMapEmpty!6357) mapIsEmpty!6357))

(assert (= (and b!166437 (not condMapEmpty!6357)) mapNonEmpty!6357))

(assert (= (and mapNonEmpty!6357 ((_ is ValueCellFull!1536) mapValue!6357)) b!166429))

(assert (= (and b!166437 ((_ is ValueCellFull!1536) mapDefault!6357)) b!166434))

(assert (= b!166431 b!166437))

(assert (= start!16664 b!166431))

(declare-fun m!195885 () Bool)

(assert (=> start!16664 m!195885))

(declare-fun m!195887 () Bool)

(assert (=> b!166438 m!195887))

(declare-fun m!195889 () Bool)

(assert (=> b!166435 m!195889))

(declare-fun m!195891 () Bool)

(assert (=> b!166435 m!195891))

(assert (=> b!166435 m!195891))

(declare-fun m!195893 () Bool)

(assert (=> b!166435 m!195893))

(declare-fun m!195895 () Bool)

(assert (=> b!166439 m!195895))

(declare-fun m!195897 () Bool)

(assert (=> b!166439 m!195897))

(declare-fun m!195899 () Bool)

(assert (=> b!166436 m!195899))

(declare-fun m!195901 () Bool)

(assert (=> b!166431 m!195901))

(declare-fun m!195903 () Bool)

(assert (=> b!166431 m!195903))

(declare-fun m!195905 () Bool)

(assert (=> b!166433 m!195905))

(declare-fun m!195907 () Bool)

(assert (=> b!166430 m!195907))

(declare-fun m!195909 () Bool)

(assert (=> mapNonEmpty!6357 m!195909))

(declare-fun m!195911 () Bool)

(assert (=> b!166441 m!195911))

(check-sat tp_is_empty!3759 (not start!16664) (not mapNonEmpty!6357) b_and!10389 (not b!166441) (not b_next!3957) (not b!166438) (not b!166433) (not b!166431) (not b!166435) (not b!166439) (not b!166430))
(check-sat b_and!10389 (not b_next!3957))
