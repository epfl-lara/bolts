; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18444 () Bool)

(assert start!18444)

(declare-fun b!182782 () Bool)

(declare-fun b_free!4509 () Bool)

(declare-fun b_next!4509 () Bool)

(assert (=> b!182782 (= b_free!4509 (not b_next!4509))))

(declare-fun tp!16292 () Bool)

(declare-fun b_and!11093 () Bool)

(assert (=> b!182782 (= tp!16292 b_and!11093)))

(declare-fun b!182779 () Bool)

(declare-fun res!86528 () Bool)

(declare-fun e!120355 () Bool)

(assert (=> b!182779 (=> (not res!86528) (not e!120355))))

(declare-datatypes ((V!5355 0))(
  ( (V!5356 (val!2185 Int)) )
))
(declare-datatypes ((ValueCell!1797 0))(
  ( (ValueCellFull!1797 (v!4082 V!5355)) (EmptyCell!1797) )
))
(declare-datatypes ((array!7750 0))(
  ( (array!7751 (arr!3664 (Array (_ BitVec 32) (_ BitVec 64))) (size!3976 (_ BitVec 32))) )
))
(declare-datatypes ((array!7752 0))(
  ( (array!7753 (arr!3665 (Array (_ BitVec 32) ValueCell!1797)) (size!3977 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2502 0))(
  ( (LongMapFixedSize!2503 (defaultEntry!3739 Int) (mask!8790 (_ BitVec 32)) (extraKeys!3476 (_ BitVec 32)) (zeroValue!3580 V!5355) (minValue!3580 V!5355) (_size!1300 (_ BitVec 32)) (_keys!5654 array!7750) (_values!3722 array!7752) (_vacant!1300 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2502)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7750 (_ BitVec 32)) Bool)

(assert (=> b!182779 (= res!86528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5654 thiss!1248) (mask!8790 thiss!1248)))))

(declare-fun mapIsEmpty!7349 () Bool)

(declare-fun mapRes!7349 () Bool)

(assert (=> mapIsEmpty!7349 mapRes!7349))

(declare-fun b!182780 () Bool)

(declare-fun res!86527 () Bool)

(assert (=> b!182780 (=> (not res!86527) (not e!120355))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3402 0))(
  ( (tuple2!3403 (_1!1711 (_ BitVec 64)) (_2!1711 V!5355)) )
))
(declare-datatypes ((List!2344 0))(
  ( (Nil!2341) (Cons!2340 (h!2969 tuple2!3402) (t!7216 List!2344)) )
))
(declare-datatypes ((ListLongMap!2333 0))(
  ( (ListLongMap!2334 (toList!1182 List!2344)) )
))
(declare-fun contains!1261 (ListLongMap!2333 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!825 (array!7750 array!7752 (_ BitVec 32) (_ BitVec 32) V!5355 V!5355 (_ BitVec 32) Int) ListLongMap!2333)

(assert (=> b!182780 (= res!86527 (contains!1261 (getCurrentListMap!825 (_keys!5654 thiss!1248) (_values!3722 thiss!1248) (mask!8790 thiss!1248) (extraKeys!3476 thiss!1248) (zeroValue!3580 thiss!1248) (minValue!3580 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3739 thiss!1248)) key!828))))

(declare-fun b!182781 () Bool)

(declare-fun e!120354 () Bool)

(declare-fun e!120357 () Bool)

(assert (=> b!182781 (= e!120354 (and e!120357 mapRes!7349))))

(declare-fun condMapEmpty!7349 () Bool)

(declare-fun mapDefault!7349 () ValueCell!1797)

(assert (=> b!182781 (= condMapEmpty!7349 (= (arr!3665 (_values!3722 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1797)) mapDefault!7349)))))

(declare-fun tp_is_empty!4281 () Bool)

(declare-fun e!120358 () Bool)

(declare-fun array_inv!2357 (array!7750) Bool)

(declare-fun array_inv!2358 (array!7752) Bool)

(assert (=> b!182782 (= e!120358 (and tp!16292 tp_is_empty!4281 (array_inv!2357 (_keys!5654 thiss!1248)) (array_inv!2358 (_values!3722 thiss!1248)) e!120354))))

(declare-fun b!182783 () Bool)

(declare-fun e!120353 () Bool)

(assert (=> b!182783 (= e!120353 tp_is_empty!4281)))

(declare-fun b!182784 () Bool)

(declare-fun res!86525 () Bool)

(assert (=> b!182784 (=> (not res!86525) (not e!120355))))

(assert (=> b!182784 (= res!86525 (and (= (size!3977 (_values!3722 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8790 thiss!1248))) (= (size!3976 (_keys!5654 thiss!1248)) (size!3977 (_values!3722 thiss!1248))) (bvsge (mask!8790 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3476 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3476 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun res!86523 () Bool)

(declare-fun e!120352 () Bool)

(assert (=> start!18444 (=> (not res!86523) (not e!120352))))

(declare-fun valid!1029 (LongMapFixedSize!2502) Bool)

(assert (=> start!18444 (= res!86523 (valid!1029 thiss!1248))))

(assert (=> start!18444 e!120352))

(assert (=> start!18444 e!120358))

(assert (=> start!18444 true))

(declare-fun b!182785 () Bool)

(assert (=> b!182785 (= e!120355 false)))

(declare-fun lt!90430 () Bool)

(declare-datatypes ((List!2345 0))(
  ( (Nil!2342) (Cons!2341 (h!2970 (_ BitVec 64)) (t!7217 List!2345)) )
))
(declare-fun arrayNoDuplicates!0 (array!7750 (_ BitVec 32) List!2345) Bool)

(assert (=> b!182785 (= lt!90430 (arrayNoDuplicates!0 (_keys!5654 thiss!1248) #b00000000000000000000000000000000 Nil!2342))))

(declare-fun b!182786 () Bool)

(declare-fun res!86529 () Bool)

(assert (=> b!182786 (=> (not res!86529) (not e!120352))))

(assert (=> b!182786 (= res!86529 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!7349 () Bool)

(declare-fun tp!16291 () Bool)

(assert (=> mapNonEmpty!7349 (= mapRes!7349 (and tp!16291 e!120353))))

(declare-fun mapRest!7349 () (Array (_ BitVec 32) ValueCell!1797))

(declare-fun mapValue!7349 () ValueCell!1797)

(declare-fun mapKey!7349 () (_ BitVec 32))

(assert (=> mapNonEmpty!7349 (= (arr!3665 (_values!3722 thiss!1248)) (store mapRest!7349 mapKey!7349 mapValue!7349))))

(declare-fun b!182787 () Bool)

(declare-fun res!86526 () Bool)

(assert (=> b!182787 (=> (not res!86526) (not e!120355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!182787 (= res!86526 (validMask!0 (mask!8790 thiss!1248)))))

(declare-fun b!182788 () Bool)

(assert (=> b!182788 (= e!120352 e!120355)))

(declare-fun res!86524 () Bool)

(assert (=> b!182788 (=> (not res!86524) (not e!120355))))

(declare-datatypes ((SeekEntryResult!621 0))(
  ( (MissingZero!621 (index!4654 (_ BitVec 32))) (Found!621 (index!4655 (_ BitVec 32))) (Intermediate!621 (undefined!1433 Bool) (index!4656 (_ BitVec 32)) (x!19931 (_ BitVec 32))) (Undefined!621) (MissingVacant!621 (index!4657 (_ BitVec 32))) )
))
(declare-fun lt!90431 () SeekEntryResult!621)

(get-info :version)

(assert (=> b!182788 (= res!86524 (and (not ((_ is Undefined!621) lt!90431)) (not ((_ is MissingVacant!621) lt!90431)) (not ((_ is MissingZero!621) lt!90431)) ((_ is Found!621) lt!90431)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7750 (_ BitVec 32)) SeekEntryResult!621)

(assert (=> b!182788 (= lt!90431 (seekEntryOrOpen!0 key!828 (_keys!5654 thiss!1248) (mask!8790 thiss!1248)))))

(declare-fun b!182789 () Bool)

(assert (=> b!182789 (= e!120357 tp_is_empty!4281)))

(assert (= (and start!18444 res!86523) b!182786))

(assert (= (and b!182786 res!86529) b!182788))

(assert (= (and b!182788 res!86524) b!182780))

(assert (= (and b!182780 res!86527) b!182787))

(assert (= (and b!182787 res!86526) b!182784))

(assert (= (and b!182784 res!86525) b!182779))

(assert (= (and b!182779 res!86528) b!182785))

(assert (= (and b!182781 condMapEmpty!7349) mapIsEmpty!7349))

(assert (= (and b!182781 (not condMapEmpty!7349)) mapNonEmpty!7349))

(assert (= (and mapNonEmpty!7349 ((_ is ValueCellFull!1797) mapValue!7349)) b!182783))

(assert (= (and b!182781 ((_ is ValueCellFull!1797) mapDefault!7349)) b!182789))

(assert (= b!182782 b!182781))

(assert (= start!18444 b!182782))

(declare-fun m!210467 () Bool)

(assert (=> b!182788 m!210467))

(declare-fun m!210469 () Bool)

(assert (=> b!182787 m!210469))

(declare-fun m!210471 () Bool)

(assert (=> mapNonEmpty!7349 m!210471))

(declare-fun m!210473 () Bool)

(assert (=> b!182780 m!210473))

(assert (=> b!182780 m!210473))

(declare-fun m!210475 () Bool)

(assert (=> b!182780 m!210475))

(declare-fun m!210477 () Bool)

(assert (=> b!182785 m!210477))

(declare-fun m!210479 () Bool)

(assert (=> start!18444 m!210479))

(declare-fun m!210481 () Bool)

(assert (=> b!182782 m!210481))

(declare-fun m!210483 () Bool)

(assert (=> b!182782 m!210483))

(declare-fun m!210485 () Bool)

(assert (=> b!182779 m!210485))

(check-sat tp_is_empty!4281 (not start!18444) (not b!182787) (not b_next!4509) (not b!182779) (not b!182782) (not b!182780) (not b!182788) (not b!182785) (not mapNonEmpty!7349) b_and!11093)
(check-sat b_and!11093 (not b_next!4509))
