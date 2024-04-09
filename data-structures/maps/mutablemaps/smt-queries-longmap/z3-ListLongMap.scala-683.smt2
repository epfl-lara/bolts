; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16616 () Bool)

(assert start!16616)

(declare-fun b!165591 () Bool)

(declare-fun b_free!3909 () Bool)

(declare-fun b_next!3909 () Bool)

(assert (=> b!165591 (= b_free!3909 (not b_next!3909))))

(declare-fun tp!14327 () Bool)

(declare-fun b_and!10341 () Bool)

(assert (=> b!165591 (= tp!14327 b_and!10341)))

(declare-fun e!108630 () Bool)

(declare-datatypes ((V!4595 0))(
  ( (V!4596 (val!1900 Int)) )
))
(declare-datatypes ((ValueCell!1512 0))(
  ( (ValueCellFull!1512 (v!3761 V!4595)) (EmptyCell!1512) )
))
(declare-datatypes ((array!6518 0))(
  ( (array!6519 (arr!3094 (Array (_ BitVec 32) (_ BitVec 64))) (size!3382 (_ BitVec 32))) )
))
(declare-datatypes ((array!6520 0))(
  ( (array!6521 (arr!3095 (Array (_ BitVec 32) ValueCell!1512)) (size!3383 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1932 0))(
  ( (LongMapFixedSize!1933 (defaultEntry!3408 Int) (mask!8123 (_ BitVec 32)) (extraKeys!3149 (_ BitVec 32)) (zeroValue!3251 V!4595) (minValue!3251 V!4595) (_size!1015 (_ BitVec 32)) (_keys!5233 array!6518) (_values!3391 array!6520) (_vacant!1015 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1932)

(declare-fun e!108633 () Bool)

(declare-fun tp_is_empty!3711 () Bool)

(declare-fun array_inv!1979 (array!6518) Bool)

(declare-fun array_inv!1980 (array!6520) Bool)

(assert (=> b!165591 (= e!108633 (and tp!14327 tp_is_empty!3711 (array_inv!1979 (_keys!5233 thiss!1248)) (array_inv!1980 (_values!3391 thiss!1248)) e!108630))))

(declare-fun b!165593 () Bool)

(declare-fun res!78612 () Bool)

(declare-fun e!108631 () Bool)

(assert (=> b!165593 (=> (not res!78612) (not e!108631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165593 (= res!78612 (validMask!0 (mask!8123 thiss!1248)))))

(declare-fun b!165594 () Bool)

(assert (=> b!165594 (= e!108631 false)))

(declare-fun lt!83129 () Bool)

(declare-datatypes ((List!2081 0))(
  ( (Nil!2078) (Cons!2077 (h!2694 (_ BitVec 64)) (t!6891 List!2081)) )
))
(declare-fun arrayNoDuplicates!0 (array!6518 (_ BitVec 32) List!2081) Bool)

(assert (=> b!165594 (= lt!83129 (arrayNoDuplicates!0 (_keys!5233 thiss!1248) #b00000000000000000000000000000000 Nil!2078))))

(declare-fun b!165595 () Bool)

(declare-fun res!78613 () Bool)

(assert (=> b!165595 (=> (not res!78613) (not e!108631))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6518 (_ BitVec 32)) Bool)

(assert (=> b!165595 (= res!78613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5233 thiss!1248) (mask!8123 thiss!1248)))))

(declare-fun mapNonEmpty!6285 () Bool)

(declare-fun mapRes!6285 () Bool)

(declare-fun tp!14328 () Bool)

(declare-fun e!108632 () Bool)

(assert (=> mapNonEmpty!6285 (= mapRes!6285 (and tp!14328 e!108632))))

(declare-fun mapRest!6285 () (Array (_ BitVec 32) ValueCell!1512))

(declare-fun mapValue!6285 () ValueCell!1512)

(declare-fun mapKey!6285 () (_ BitVec 32))

(assert (=> mapNonEmpty!6285 (= (arr!3095 (_values!3391 thiss!1248)) (store mapRest!6285 mapKey!6285 mapValue!6285))))

(declare-fun b!165596 () Bool)

(declare-fun res!78615 () Bool)

(declare-fun e!108629 () Bool)

(assert (=> b!165596 (=> (not res!78615) (not e!108629))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!165596 (= res!78615 (not (= key!828 (bvneg key!828))))))

(declare-fun b!165597 () Bool)

(declare-fun res!78611 () Bool)

(assert (=> b!165597 (=> (not res!78611) (not e!108631))))

(declare-datatypes ((tuple2!3072 0))(
  ( (tuple2!3073 (_1!1546 (_ BitVec 64)) (_2!1546 V!4595)) )
))
(declare-datatypes ((List!2082 0))(
  ( (Nil!2079) (Cons!2078 (h!2695 tuple2!3072) (t!6892 List!2082)) )
))
(declare-datatypes ((ListLongMap!2041 0))(
  ( (ListLongMap!2042 (toList!1036 List!2082)) )
))
(declare-fun contains!1072 (ListLongMap!2041 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!689 (array!6518 array!6520 (_ BitVec 32) (_ BitVec 32) V!4595 V!4595 (_ BitVec 32) Int) ListLongMap!2041)

(assert (=> b!165597 (= res!78611 (not (contains!1072 (getCurrentListMap!689 (_keys!5233 thiss!1248) (_values!3391 thiss!1248) (mask!8123 thiss!1248) (extraKeys!3149 thiss!1248) (zeroValue!3251 thiss!1248) (minValue!3251 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3408 thiss!1248)) key!828)))))

(declare-fun mapIsEmpty!6285 () Bool)

(assert (=> mapIsEmpty!6285 mapRes!6285))

(declare-fun b!165598 () Bool)

(assert (=> b!165598 (= e!108632 tp_is_empty!3711)))

(declare-fun b!165599 () Bool)

(declare-fun res!78609 () Bool)

(assert (=> b!165599 (=> (not res!78609) (not e!108631))))

(assert (=> b!165599 (= res!78609 (and (= (size!3383 (_values!3391 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8123 thiss!1248))) (= (size!3382 (_keys!5233 thiss!1248)) (size!3383 (_values!3391 thiss!1248))) (bvsge (mask!8123 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3149 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3149 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun res!78614 () Bool)

(assert (=> start!16616 (=> (not res!78614) (not e!108629))))

(declare-fun valid!846 (LongMapFixedSize!1932) Bool)

(assert (=> start!16616 (= res!78614 (valid!846 thiss!1248))))

(assert (=> start!16616 e!108629))

(assert (=> start!16616 e!108633))

(assert (=> start!16616 true))

(declare-fun b!165592 () Bool)

(declare-fun e!108628 () Bool)

(assert (=> b!165592 (= e!108628 tp_is_empty!3711)))

(declare-fun b!165600 () Bool)

(assert (=> b!165600 (= e!108630 (and e!108628 mapRes!6285))))

(declare-fun condMapEmpty!6285 () Bool)

(declare-fun mapDefault!6285 () ValueCell!1512)

(assert (=> b!165600 (= condMapEmpty!6285 (= (arr!3095 (_values!3391 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1512)) mapDefault!6285)))))

(declare-fun b!165601 () Bool)

(assert (=> b!165601 (= e!108629 e!108631)))

(declare-fun res!78610 () Bool)

(assert (=> b!165601 (=> (not res!78610) (not e!108631))))

(declare-datatypes ((SeekEntryResult!450 0))(
  ( (MissingZero!450 (index!3968 (_ BitVec 32))) (Found!450 (index!3969 (_ BitVec 32))) (Intermediate!450 (undefined!1262 Bool) (index!3970 (_ BitVec 32)) (x!18366 (_ BitVec 32))) (Undefined!450) (MissingVacant!450 (index!3971 (_ BitVec 32))) )
))
(declare-fun lt!83128 () SeekEntryResult!450)

(get-info :version)

(assert (=> b!165601 (= res!78610 (and (not ((_ is Undefined!450) lt!83128)) (not ((_ is MissingVacant!450) lt!83128)) (not ((_ is MissingZero!450) lt!83128)) ((_ is Found!450) lt!83128)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6518 (_ BitVec 32)) SeekEntryResult!450)

(assert (=> b!165601 (= lt!83128 (seekEntryOrOpen!0 key!828 (_keys!5233 thiss!1248) (mask!8123 thiss!1248)))))

(assert (= (and start!16616 res!78614) b!165596))

(assert (= (and b!165596 res!78615) b!165601))

(assert (= (and b!165601 res!78610) b!165597))

(assert (= (and b!165597 res!78611) b!165593))

(assert (= (and b!165593 res!78612) b!165599))

(assert (= (and b!165599 res!78609) b!165595))

(assert (= (and b!165595 res!78613) b!165594))

(assert (= (and b!165600 condMapEmpty!6285) mapIsEmpty!6285))

(assert (= (and b!165600 (not condMapEmpty!6285)) mapNonEmpty!6285))

(assert (= (and mapNonEmpty!6285 ((_ is ValueCellFull!1512) mapValue!6285)) b!165598))

(assert (= (and b!165600 ((_ is ValueCellFull!1512) mapDefault!6285)) b!165592))

(assert (= b!165591 b!165600))

(assert (= start!16616 b!165591))

(declare-fun m!195349 () Bool)

(assert (=> b!165595 m!195349))

(declare-fun m!195351 () Bool)

(assert (=> b!165601 m!195351))

(declare-fun m!195353 () Bool)

(assert (=> b!165591 m!195353))

(declare-fun m!195355 () Bool)

(assert (=> b!165591 m!195355))

(declare-fun m!195357 () Bool)

(assert (=> b!165594 m!195357))

(declare-fun m!195359 () Bool)

(assert (=> b!165593 m!195359))

(declare-fun m!195361 () Bool)

(assert (=> b!165597 m!195361))

(assert (=> b!165597 m!195361))

(declare-fun m!195363 () Bool)

(assert (=> b!165597 m!195363))

(declare-fun m!195365 () Bool)

(assert (=> start!16616 m!195365))

(declare-fun m!195367 () Bool)

(assert (=> mapNonEmpty!6285 m!195367))

(check-sat (not b_next!3909) (not b!165597) (not start!16616) (not mapNonEmpty!6285) (not b!165593) b_and!10341 tp_is_empty!3711 (not b!165594) (not b!165591) (not b!165601) (not b!165595))
(check-sat b_and!10341 (not b_next!3909))
