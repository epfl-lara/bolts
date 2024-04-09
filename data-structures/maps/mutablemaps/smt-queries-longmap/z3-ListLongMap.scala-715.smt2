; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16808 () Bool)

(assert start!16808)

(declare-fun b!169114 () Bool)

(declare-fun b_free!4103 () Bool)

(declare-fun b_next!4103 () Bool)

(assert (=> b!169114 (= b_free!4103 (not b_next!4103))))

(declare-fun tp!14915 () Bool)

(declare-fun b_and!10535 () Bool)

(assert (=> b!169114 (= tp!14915 b_and!10535)))

(declare-fun b!169119 () Bool)

(declare-fun b_free!4105 () Bool)

(declare-fun b_next!4105 () Bool)

(assert (=> b!169119 (= b_free!4105 (not b_next!4105))))

(declare-fun tp!14914 () Bool)

(declare-fun b_and!10537 () Bool)

(assert (=> b!169119 (= tp!14914 b_and!10537)))

(declare-fun b!169110 () Bool)

(declare-fun e!111347 () Bool)

(declare-fun tp_is_empty!3903 () Bool)

(assert (=> b!169110 (= e!111347 tp_is_empty!3903)))

(declare-fun b!169111 () Bool)

(declare-fun res!80488 () Bool)

(declare-fun e!111349 () Bool)

(assert (=> b!169111 (=> (not res!80488) (not e!111349))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!169111 (= res!80488 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!6578 () Bool)

(declare-fun mapRes!6578 () Bool)

(declare-fun tp!14913 () Bool)

(declare-fun e!111348 () Bool)

(assert (=> mapNonEmpty!6578 (= mapRes!6578 (and tp!14913 e!111348))))

(declare-datatypes ((V!4851 0))(
  ( (V!4852 (val!1996 Int)) )
))
(declare-datatypes ((ValueCell!1608 0))(
  ( (ValueCellFull!1608 (v!3857 V!4851)) (EmptyCell!1608) )
))
(declare-fun mapValue!6579 () ValueCell!1608)

(declare-datatypes ((array!6902 0))(
  ( (array!6903 (arr!3286 (Array (_ BitVec 32) (_ BitVec 64))) (size!3574 (_ BitVec 32))) )
))
(declare-datatypes ((array!6904 0))(
  ( (array!6905 (arr!3287 (Array (_ BitVec 32) ValueCell!1608)) (size!3575 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2124 0))(
  ( (LongMapFixedSize!2125 (defaultEntry!3504 Int) (mask!8283 (_ BitVec 32)) (extraKeys!3245 (_ BitVec 32)) (zeroValue!3347 V!4851) (minValue!3347 V!4851) (_size!1111 (_ BitVec 32)) (_keys!5329 array!6902) (_values!3487 array!6904) (_vacant!1111 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!3192 0))(
  ( (tuple2!3193 (_1!1606 Bool) (_2!1606 LongMapFixedSize!2124)) )
))
(declare-fun err!43 () tuple2!3192)

(declare-fun mapRest!6578 () (Array (_ BitVec 32) ValueCell!1608))

(declare-fun mapKey!6578 () (_ BitVec 32))

(assert (=> mapNonEmpty!6578 (= (arr!3287 (_values!3487 (_2!1606 err!43))) (store mapRest!6578 mapKey!6578 mapValue!6579))))

(declare-fun res!80490 () Bool)

(assert (=> start!16808 (=> (not res!80490) (not e!111349))))

(declare-fun thiss!1248 () LongMapFixedSize!2124)

(declare-fun valid!911 (LongMapFixedSize!2124) Bool)

(assert (=> start!16808 (= res!80490 (valid!911 thiss!1248))))

(assert (=> start!16808 e!111349))

(declare-fun e!111344 () Bool)

(assert (=> start!16808 e!111344))

(assert (=> start!16808 true))

(declare-fun b!169112 () Bool)

(declare-fun e!111353 () Bool)

(assert (=> b!169112 (= e!111349 e!111353)))

(declare-fun res!80489 () Bool)

(assert (=> b!169112 (=> (not res!80489) (not e!111353))))

(declare-datatypes ((SeekEntryResult!529 0))(
  ( (MissingZero!529 (index!4284 (_ BitVec 32))) (Found!529 (index!4285 (_ BitVec 32))) (Intermediate!529 (undefined!1341 Bool) (index!4286 (_ BitVec 32)) (x!18701 (_ BitVec 32))) (Undefined!529) (MissingVacant!529 (index!4287 (_ BitVec 32))) )
))
(declare-fun lt!84874 () SeekEntryResult!529)

(get-info :version)

(assert (=> b!169112 (= res!80489 (and (not ((_ is Undefined!529) lt!84874)) (not ((_ is MissingVacant!529) lt!84874)) (not ((_ is MissingZero!529) lt!84874)) (not ((_ is Found!529) lt!84874))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6902 (_ BitVec 32)) SeekEntryResult!529)

(assert (=> b!169112 (= lt!84874 (seekEntryOrOpen!0 key!828 (_keys!5329 thiss!1248) (mask!8283 thiss!1248)))))

(declare-fun b!169113 () Bool)

(assert (=> b!169113 (= e!111353 false)))

(declare-fun lt!84875 () Bool)

(assert (=> b!169113 (= lt!84875 (valid!911 (_2!1606 err!43)))))

(assert (=> b!169113 true))

(declare-fun e!111354 () Bool)

(assert (=> b!169113 e!111354))

(declare-fun mapNonEmpty!6579 () Bool)

(declare-fun mapRes!6579 () Bool)

(declare-fun tp!14916 () Bool)

(declare-fun e!111352 () Bool)

(assert (=> mapNonEmpty!6579 (= mapRes!6579 (and tp!14916 e!111352))))

(declare-fun mapKey!6579 () (_ BitVec 32))

(declare-fun mapValue!6578 () ValueCell!1608)

(declare-fun mapRest!6579 () (Array (_ BitVec 32) ValueCell!1608))

(assert (=> mapNonEmpty!6579 (= (arr!3287 (_values!3487 thiss!1248)) (store mapRest!6579 mapKey!6579 mapValue!6578))))

(declare-fun e!111346 () Bool)

(declare-fun array_inv!2103 (array!6902) Bool)

(declare-fun array_inv!2104 (array!6904) Bool)

(assert (=> b!169114 (= e!111354 (and tp!14915 tp_is_empty!3903 (array_inv!2103 (_keys!5329 (_2!1606 err!43))) (array_inv!2104 (_values!3487 (_2!1606 err!43))) e!111346))))

(declare-fun b!169115 () Bool)

(assert (=> b!169115 (= e!111352 tp_is_empty!3903)))

(declare-fun mapIsEmpty!6578 () Bool)

(assert (=> mapIsEmpty!6578 mapRes!6579))

(declare-fun b!169116 () Bool)

(assert (=> b!169116 (= e!111348 tp_is_empty!3903)))

(declare-fun b!169117 () Bool)

(declare-fun e!111350 () Bool)

(assert (=> b!169117 (= e!111350 tp_is_empty!3903)))

(declare-fun b!169118 () Bool)

(declare-fun e!111351 () Bool)

(assert (=> b!169118 (= e!111351 (and e!111350 mapRes!6579))))

(declare-fun condMapEmpty!6578 () Bool)

(declare-fun mapDefault!6579 () ValueCell!1608)

(assert (=> b!169118 (= condMapEmpty!6578 (= (arr!3287 (_values!3487 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1608)) mapDefault!6579)))))

(declare-fun mapIsEmpty!6579 () Bool)

(assert (=> mapIsEmpty!6579 mapRes!6578))

(assert (=> b!169119 (= e!111344 (and tp!14914 tp_is_empty!3903 (array_inv!2103 (_keys!5329 thiss!1248)) (array_inv!2104 (_values!3487 thiss!1248)) e!111351))))

(declare-fun b!169120 () Bool)

(assert (=> b!169120 (= e!111346 (and e!111347 mapRes!6578))))

(declare-fun condMapEmpty!6579 () Bool)

(declare-fun mapDefault!6578 () ValueCell!1608)

(assert (=> b!169120 (= condMapEmpty!6579 (= (arr!3287 (_values!3487 (_2!1606 err!43))) ((as const (Array (_ BitVec 32) ValueCell!1608)) mapDefault!6578)))))

(assert (= (and start!16808 res!80490) b!169111))

(assert (= (and b!169111 res!80488) b!169112))

(assert (= (and b!169112 res!80489) b!169113))

(assert (= (and b!169120 condMapEmpty!6579) mapIsEmpty!6579))

(assert (= (and b!169120 (not condMapEmpty!6579)) mapNonEmpty!6578))

(assert (= (and mapNonEmpty!6578 ((_ is ValueCellFull!1608) mapValue!6579)) b!169116))

(assert (= (and b!169120 ((_ is ValueCellFull!1608) mapDefault!6578)) b!169110))

(assert (= b!169114 b!169120))

(assert (= b!169113 b!169114))

(assert (= (and b!169118 condMapEmpty!6578) mapIsEmpty!6578))

(assert (= (and b!169118 (not condMapEmpty!6578)) mapNonEmpty!6579))

(assert (= (and mapNonEmpty!6579 ((_ is ValueCellFull!1608) mapValue!6578)) b!169115))

(assert (= (and b!169118 ((_ is ValueCellFull!1608) mapDefault!6579)) b!169117))

(assert (= b!169119 b!169118))

(assert (= start!16808 b!169119))

(declare-fun m!198275 () Bool)

(assert (=> mapNonEmpty!6578 m!198275))

(declare-fun m!198277 () Bool)

(assert (=> b!169114 m!198277))

(declare-fun m!198279 () Bool)

(assert (=> b!169114 m!198279))

(declare-fun m!198281 () Bool)

(assert (=> b!169119 m!198281))

(declare-fun m!198283 () Bool)

(assert (=> b!169119 m!198283))

(declare-fun m!198285 () Bool)

(assert (=> b!169112 m!198285))

(declare-fun m!198287 () Bool)

(assert (=> b!169113 m!198287))

(declare-fun m!198289 () Bool)

(assert (=> start!16808 m!198289))

(declare-fun m!198291 () Bool)

(assert (=> mapNonEmpty!6579 m!198291))

(check-sat (not mapNonEmpty!6579) b_and!10537 (not mapNonEmpty!6578) (not b!169119) tp_is_empty!3903 (not b!169114) b_and!10535 (not b!169112) (not start!16808) (not b!169113) (not b_next!4105) (not b_next!4103))
(check-sat b_and!10535 b_and!10537 (not b_next!4105) (not b_next!4103))
