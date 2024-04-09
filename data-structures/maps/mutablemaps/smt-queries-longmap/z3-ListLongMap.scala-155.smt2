; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3000 () Bool)

(assert start!3000)

(declare-fun b!17586 () Bool)

(declare-fun b_free!609 () Bool)

(declare-fun b_next!609 () Bool)

(assert (=> b!17586 (= b_free!609 (not b_next!609))))

(declare-fun tp!3018 () Bool)

(declare-fun b_and!1259 () Bool)

(assert (=> b!17586 (= tp!3018 b_and!1259)))

(declare-fun b!17579 () Bool)

(declare-fun e!11059 () Bool)

(declare-fun e!11055 () Bool)

(assert (=> b!17579 (= e!11059 e!11055)))

(declare-fun b!17580 () Bool)

(declare-datatypes ((V!989 0))(
  ( (V!990 (val!463 Int)) )
))
(declare-datatypes ((ValueCell!237 0))(
  ( (ValueCellFull!237 (v!1430 V!989)) (EmptyCell!237) )
))
(declare-datatypes ((array!943 0))(
  ( (array!944 (arr!453 (Array (_ BitVec 32) ValueCell!237)) (size!543 (_ BitVec 32))) )
))
(declare-datatypes ((array!945 0))(
  ( (array!946 (arr!454 (Array (_ BitVec 32) (_ BitVec 64))) (size!544 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!60 0))(
  ( (LongMapFixedSize!61 (defaultEntry!1641 Int) (mask!4560 (_ BitVec 32)) (extraKeys!1554 (_ BitVec 32)) (zeroValue!1577 V!989) (minValue!1577 V!989) (_size!62 (_ BitVec 32)) (_keys!3066 array!945) (_values!1638 array!943) (_vacant!62 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!60 0))(
  ( (Cell!61 (v!1431 LongMapFixedSize!60)) )
))
(declare-datatypes ((LongMap!60 0))(
  ( (LongMap!61 (underlying!41 Cell!60)) )
))
(declare-datatypes ((tuple2!726 0))(
  ( (tuple2!727 (_1!364 Bool) (_2!364 LongMap!60)) )
))
(declare-fun e!11061 () tuple2!726)

(declare-fun thiss!848 () LongMap!60)

(assert (=> b!17580 (= e!11061 (tuple2!727 true thiss!848))))

(declare-fun b!17581 () Bool)

(declare-fun e!11058 () Bool)

(declare-fun e!11063 () Bool)

(assert (=> b!17581 (= e!11058 e!11063)))

(declare-fun res!12620 () Bool)

(assert (=> b!17581 (=> (not res!12620) (not e!11063))))

(declare-fun lt!4572 () tuple2!726)

(assert (=> b!17581 (= res!12620 (_1!364 lt!4572))))

(assert (=> b!17581 (= lt!4572 e!11061)))

(declare-fun c!1768 () Bool)

(declare-fun imbalanced!12 (LongMap!60) Bool)

(assert (=> b!17581 (= c!1768 (imbalanced!12 thiss!848))))

(declare-fun b!17582 () Bool)

(declare-fun e!11060 () Bool)

(assert (=> b!17582 (= e!11060 e!11059)))

(declare-fun b!17583 () Bool)

(declare-fun e!11054 () Bool)

(declare-fun tp_is_empty!873 () Bool)

(assert (=> b!17583 (= e!11054 tp_is_empty!873)))

(declare-fun b!17584 () Bool)

(declare-fun e!11056 () Bool)

(assert (=> b!17584 (= e!11056 tp_is_empty!873)))

(declare-fun e!11062 () Bool)

(declare-fun array_inv!317 (array!945) Bool)

(declare-fun array_inv!318 (array!943) Bool)

(assert (=> b!17586 (= e!11055 (and tp!3018 tp_is_empty!873 (array_inv!317 (_keys!3066 (v!1431 (underlying!41 thiss!848)))) (array_inv!318 (_values!1638 (v!1431 (underlying!41 thiss!848)))) e!11062))))

(declare-fun mapIsEmpty!744 () Bool)

(declare-fun mapRes!744 () Bool)

(assert (=> mapIsEmpty!744 mapRes!744))

(declare-fun b!17587 () Bool)

(declare-fun repack!8 (LongMap!60) tuple2!726)

(assert (=> b!17587 (= e!11061 (repack!8 thiss!848))))

(declare-fun b!17585 () Bool)

(assert (=> b!17585 (= e!11062 (and e!11056 mapRes!744))))

(declare-fun condMapEmpty!744 () Bool)

(declare-fun mapDefault!744 () ValueCell!237)

(assert (=> b!17585 (= condMapEmpty!744 (= (arr!453 (_values!1638 (v!1431 (underlying!41 thiss!848)))) ((as const (Array (_ BitVec 32) ValueCell!237)) mapDefault!744)))))

(declare-fun res!12621 () Bool)

(assert (=> start!3000 (=> (not res!12621) (not e!11058))))

(declare-fun valid!34 (LongMap!60) Bool)

(assert (=> start!3000 (= res!12621 (valid!34 thiss!848))))

(assert (=> start!3000 e!11058))

(assert (=> start!3000 e!11060))

(assert (=> start!3000 true))

(assert (=> start!3000 tp_is_empty!873))

(declare-fun mapNonEmpty!744 () Bool)

(declare-fun tp!3017 () Bool)

(assert (=> mapNonEmpty!744 (= mapRes!744 (and tp!3017 e!11054))))

(declare-fun mapRest!744 () (Array (_ BitVec 32) ValueCell!237))

(declare-fun mapValue!744 () ValueCell!237)

(declare-fun mapKey!744 () (_ BitVec 32))

(assert (=> mapNonEmpty!744 (= (arr!453 (_values!1638 (v!1431 (underlying!41 thiss!848)))) (store mapRest!744 mapKey!744 mapValue!744))))

(declare-fun b!17588 () Bool)

(assert (=> b!17588 (= e!11063 false)))

(declare-fun key!682 () (_ BitVec 64))

(declare-fun lt!4571 () Bool)

(declare-fun v!259 () V!989)

(declare-datatypes ((tuple2!728 0))(
  ( (tuple2!729 (_1!365 Bool) (_2!365 LongMapFixedSize!60)) )
))
(declare-fun update!8 (LongMapFixedSize!60 (_ BitVec 64) V!989) tuple2!728)

(assert (=> b!17588 (= lt!4571 (valid!34 (LongMap!61 (Cell!61 (_2!365 (update!8 (v!1431 (underlying!41 (_2!364 lt!4572))) key!682 v!259))))))))

(assert (= (and start!3000 res!12621) b!17581))

(assert (= (and b!17581 c!1768) b!17587))

(assert (= (and b!17581 (not c!1768)) b!17580))

(assert (= (and b!17581 res!12620) b!17588))

(assert (= (and b!17585 condMapEmpty!744) mapIsEmpty!744))

(assert (= (and b!17585 (not condMapEmpty!744)) mapNonEmpty!744))

(get-info :version)

(assert (= (and mapNonEmpty!744 ((_ is ValueCellFull!237) mapValue!744)) b!17583))

(assert (= (and b!17585 ((_ is ValueCellFull!237) mapDefault!744)) b!17584))

(assert (= b!17586 b!17585))

(assert (= b!17579 b!17586))

(assert (= b!17582 b!17579))

(assert (= start!3000 b!17582))

(declare-fun m!12349 () Bool)

(assert (=> mapNonEmpty!744 m!12349))

(declare-fun m!12351 () Bool)

(assert (=> b!17587 m!12351))

(declare-fun m!12353 () Bool)

(assert (=> b!17581 m!12353))

(declare-fun m!12355 () Bool)

(assert (=> b!17586 m!12355))

(declare-fun m!12357 () Bool)

(assert (=> b!17586 m!12357))

(declare-fun m!12359 () Bool)

(assert (=> start!3000 m!12359))

(declare-fun m!12361 () Bool)

(assert (=> b!17588 m!12361))

(declare-fun m!12363 () Bool)

(assert (=> b!17588 m!12363))

(check-sat (not b!17586) tp_is_empty!873 (not b_next!609) b_and!1259 (not b!17587) (not b!17581) (not start!3000) (not mapNonEmpty!744) (not b!17588))
(check-sat b_and!1259 (not b_next!609))
