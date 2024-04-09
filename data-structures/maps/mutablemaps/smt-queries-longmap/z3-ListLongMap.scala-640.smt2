; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16202 () Bool)

(assert start!16202)

(declare-fun b!161438 () Bool)

(declare-fun b_free!3651 () Bool)

(declare-fun b_next!3651 () Bool)

(assert (=> b!161438 (= b_free!3651 (not b_next!3651))))

(declare-fun tp!13522 () Bool)

(declare-fun b_and!10083 () Bool)

(assert (=> b!161438 (= tp!13522 b_and!10083)))

(declare-fun b!161433 () Bool)

(declare-fun e!105521 () Bool)

(declare-fun e!105519 () Bool)

(declare-fun mapRes!5867 () Bool)

(assert (=> b!161433 (= e!105521 (and e!105519 mapRes!5867))))

(declare-fun condMapEmpty!5867 () Bool)

(declare-datatypes ((V!4251 0))(
  ( (V!4252 (val!1771 Int)) )
))
(declare-datatypes ((ValueCell!1383 0))(
  ( (ValueCellFull!1383 (v!3632 V!4251)) (EmptyCell!1383) )
))
(declare-datatypes ((array!5984 0))(
  ( (array!5985 (arr!2836 (Array (_ BitVec 32) (_ BitVec 64))) (size!3120 (_ BitVec 32))) )
))
(declare-datatypes ((array!5986 0))(
  ( (array!5987 (arr!2837 (Array (_ BitVec 32) ValueCell!1383)) (size!3121 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1674 0))(
  ( (LongMapFixedSize!1675 (defaultEntry!3279 Int) (mask!7871 (_ BitVec 32)) (extraKeys!3020 (_ BitVec 32)) (zeroValue!3122 V!4251) (minValue!3122 V!4251) (_size!886 (_ BitVec 32)) (_keys!5080 array!5984) (_values!3262 array!5986) (_vacant!886 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1674)

(declare-fun mapDefault!5867 () ValueCell!1383)

(assert (=> b!161433 (= condMapEmpty!5867 (= (arr!2837 (_values!3262 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1383)) mapDefault!5867)))))

(declare-fun b!161434 () Bool)

(declare-fun tp_is_empty!3453 () Bool)

(assert (=> b!161434 (= e!105519 tp_is_empty!3453)))

(declare-fun mapNonEmpty!5867 () Bool)

(declare-fun tp!13523 () Bool)

(declare-fun e!105524 () Bool)

(assert (=> mapNonEmpty!5867 (= mapRes!5867 (and tp!13523 e!105524))))

(declare-fun mapValue!5867 () ValueCell!1383)

(declare-fun mapKey!5867 () (_ BitVec 32))

(declare-fun mapRest!5867 () (Array (_ BitVec 32) ValueCell!1383))

(assert (=> mapNonEmpty!5867 (= (arr!2837 (_values!3262 thiss!1248)) (store mapRest!5867 mapKey!5867 mapValue!5867))))

(declare-fun res!76535 () Bool)

(declare-fun e!105522 () Bool)

(assert (=> start!16202 (=> (not res!76535) (not e!105522))))

(declare-fun valid!759 (LongMapFixedSize!1674) Bool)

(assert (=> start!16202 (= res!76535 (valid!759 thiss!1248))))

(assert (=> start!16202 e!105522))

(declare-fun e!105523 () Bool)

(assert (=> start!16202 e!105523))

(assert (=> start!16202 true))

(declare-fun mapIsEmpty!5867 () Bool)

(assert (=> mapIsEmpty!5867 mapRes!5867))

(declare-fun b!161435 () Bool)

(declare-datatypes ((Unit!5018 0))(
  ( (Unit!5019) )
))
(declare-fun e!105520 () Unit!5018)

(declare-fun Unit!5020 () Unit!5018)

(assert (=> b!161435 (= e!105520 Unit!5020)))

(declare-fun lt!82243 () Unit!5018)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!80 (array!5984 array!5986 (_ BitVec 32) (_ BitVec 32) V!4251 V!4251 (_ BitVec 64) Int) Unit!5018)

(assert (=> b!161435 (= lt!82243 (lemmaInListMapThenSeekEntryOrOpenFindsIt!80 (_keys!5080 thiss!1248) (_values!3262 thiss!1248) (mask!7871 thiss!1248) (extraKeys!3020 thiss!1248) (zeroValue!3122 thiss!1248) (minValue!3122 thiss!1248) key!828 (defaultEntry!3279 thiss!1248)))))

(assert (=> b!161435 false))

(declare-fun b!161436 () Bool)

(assert (=> b!161436 (= e!105522 false)))

(declare-fun lt!82244 () Unit!5018)

(assert (=> b!161436 (= lt!82244 e!105520)))

(declare-fun c!29946 () Bool)

(declare-datatypes ((tuple2!2946 0))(
  ( (tuple2!2947 (_1!1483 (_ BitVec 64)) (_2!1483 V!4251)) )
))
(declare-datatypes ((List!1995 0))(
  ( (Nil!1992) (Cons!1991 (h!2604 tuple2!2946) (t!6805 List!1995)) )
))
(declare-datatypes ((ListLongMap!1955 0))(
  ( (ListLongMap!1956 (toList!993 List!1995)) )
))
(declare-fun contains!1023 (ListLongMap!1955 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!653 (array!5984 array!5986 (_ BitVec 32) (_ BitVec 32) V!4251 V!4251 (_ BitVec 32) Int) ListLongMap!1955)

(assert (=> b!161436 (= c!29946 (contains!1023 (getCurrentListMap!653 (_keys!5080 thiss!1248) (_values!3262 thiss!1248) (mask!7871 thiss!1248) (extraKeys!3020 thiss!1248) (zeroValue!3122 thiss!1248) (minValue!3122 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3279 thiss!1248)) key!828))))

(declare-fun b!161437 () Bool)

(declare-fun res!76533 () Bool)

(assert (=> b!161437 (=> (not res!76533) (not e!105522))))

(assert (=> b!161437 (= res!76533 (not (= key!828 (bvneg key!828))))))

(declare-fun array_inv!1799 (array!5984) Bool)

(declare-fun array_inv!1800 (array!5986) Bool)

(assert (=> b!161438 (= e!105523 (and tp!13522 tp_is_empty!3453 (array_inv!1799 (_keys!5080 thiss!1248)) (array_inv!1800 (_values!3262 thiss!1248)) e!105521))))

(declare-fun b!161439 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!78 (array!5984 array!5986 (_ BitVec 32) (_ BitVec 32) V!4251 V!4251 (_ BitVec 64) Int) Unit!5018)

(assert (=> b!161439 (= e!105520 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!78 (_keys!5080 thiss!1248) (_values!3262 thiss!1248) (mask!7871 thiss!1248) (extraKeys!3020 thiss!1248) (zeroValue!3122 thiss!1248) (minValue!3122 thiss!1248) key!828 (defaultEntry!3279 thiss!1248)))))

(declare-fun b!161440 () Bool)

(assert (=> b!161440 (= e!105524 tp_is_empty!3453)))

(declare-fun b!161441 () Bool)

(declare-fun res!76534 () Bool)

(assert (=> b!161441 (=> (not res!76534) (not e!105522))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!361 0))(
  ( (MissingZero!361 (index!3612 (_ BitVec 32))) (Found!361 (index!3613 (_ BitVec 32))) (Intermediate!361 (undefined!1173 Bool) (index!3614 (_ BitVec 32)) (x!17825 (_ BitVec 32))) (Undefined!361) (MissingVacant!361 (index!3615 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5984 (_ BitVec 32)) SeekEntryResult!361)

(assert (=> b!161441 (= res!76534 ((_ is Undefined!361) (seekEntryOrOpen!0 key!828 (_keys!5080 thiss!1248) (mask!7871 thiss!1248))))))

(assert (= (and start!16202 res!76535) b!161437))

(assert (= (and b!161437 res!76533) b!161441))

(assert (= (and b!161441 res!76534) b!161436))

(assert (= (and b!161436 c!29946) b!161435))

(assert (= (and b!161436 (not c!29946)) b!161439))

(assert (= (and b!161433 condMapEmpty!5867) mapIsEmpty!5867))

(assert (= (and b!161433 (not condMapEmpty!5867)) mapNonEmpty!5867))

(assert (= (and mapNonEmpty!5867 ((_ is ValueCellFull!1383) mapValue!5867)) b!161440))

(assert (= (and b!161433 ((_ is ValueCellFull!1383) mapDefault!5867)) b!161434))

(assert (= b!161438 b!161433))

(assert (= start!16202 b!161438))

(declare-fun m!192935 () Bool)

(assert (=> b!161436 m!192935))

(assert (=> b!161436 m!192935))

(declare-fun m!192937 () Bool)

(assert (=> b!161436 m!192937))

(declare-fun m!192939 () Bool)

(assert (=> b!161435 m!192939))

(declare-fun m!192941 () Bool)

(assert (=> b!161438 m!192941))

(declare-fun m!192943 () Bool)

(assert (=> b!161438 m!192943))

(declare-fun m!192945 () Bool)

(assert (=> b!161439 m!192945))

(declare-fun m!192947 () Bool)

(assert (=> b!161441 m!192947))

(declare-fun m!192949 () Bool)

(assert (=> mapNonEmpty!5867 m!192949))

(declare-fun m!192951 () Bool)

(assert (=> start!16202 m!192951))

(check-sat (not b!161441) (not mapNonEmpty!5867) (not b_next!3651) (not b!161436) (not start!16202) tp_is_empty!3453 (not b!161435) (not b!161438) b_and!10083 (not b!161439))
(check-sat b_and!10083 (not b_next!3651))
