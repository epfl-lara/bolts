; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15702 () Bool)

(assert start!15702)

(declare-fun b!156382 () Bool)

(declare-fun b_free!3357 () Bool)

(declare-fun b_next!3357 () Bool)

(assert (=> b!156382 (= b_free!3357 (not b_next!3357))))

(declare-fun tp!12596 () Bool)

(declare-fun b_and!9789 () Bool)

(assert (=> b!156382 (= tp!12596 b_and!9789)))

(declare-fun mapNonEmpty!5381 () Bool)

(declare-fun mapRes!5381 () Bool)

(declare-fun tp!12595 () Bool)

(declare-fun e!102285 () Bool)

(assert (=> mapNonEmpty!5381 (= mapRes!5381 (and tp!12595 e!102285))))

(declare-fun mapKey!5381 () (_ BitVec 32))

(declare-datatypes ((V!3859 0))(
  ( (V!3860 (val!1624 Int)) )
))
(declare-datatypes ((ValueCell!1236 0))(
  ( (ValueCellFull!1236 (v!3485 V!3859)) (EmptyCell!1236) )
))
(declare-fun mapValue!5381 () ValueCell!1236)

(declare-datatypes ((array!5370 0))(
  ( (array!5371 (arr!2542 (Array (_ BitVec 32) (_ BitVec 64))) (size!2820 (_ BitVec 32))) )
))
(declare-datatypes ((array!5372 0))(
  ( (array!5373 (arr!2543 (Array (_ BitVec 32) ValueCell!1236)) (size!2821 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1380 0))(
  ( (LongMapFixedSize!1381 (defaultEntry!3132 Int) (mask!7583 (_ BitVec 32)) (extraKeys!2873 (_ BitVec 32)) (zeroValue!2975 V!3859) (minValue!2975 V!3859) (_size!739 (_ BitVec 32)) (_keys!4907 array!5370) (_values!3115 array!5372) (_vacant!739 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1380)

(declare-fun mapRest!5381 () (Array (_ BitVec 32) ValueCell!1236))

(assert (=> mapNonEmpty!5381 (= (arr!2543 (_values!3115 thiss!1248)) (store mapRest!5381 mapKey!5381 mapValue!5381))))

(declare-fun tp_is_empty!3159 () Bool)

(declare-fun e!102290 () Bool)

(declare-fun e!102287 () Bool)

(declare-fun array_inv!1601 (array!5370) Bool)

(declare-fun array_inv!1602 (array!5372) Bool)

(assert (=> b!156382 (= e!102287 (and tp!12596 tp_is_empty!3159 (array_inv!1601 (_keys!4907 thiss!1248)) (array_inv!1602 (_values!3115 thiss!1248)) e!102290))))

(declare-fun b!156383 () Bool)

(declare-fun res!73903 () Bool)

(declare-fun e!102286 () Bool)

(assert (=> b!156383 (=> (not res!73903) (not e!102286))))

(assert (=> b!156383 (= res!73903 (and (= (size!2821 (_values!3115 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7583 thiss!1248))) (= (size!2820 (_keys!4907 thiss!1248)) (size!2821 (_values!3115 thiss!1248))) (bvsge (mask!7583 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2873 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2873 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2873 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2873 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2873 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2873 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2873 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!156384 () Bool)

(declare-fun e!102288 () Bool)

(assert (=> b!156384 (= e!102290 (and e!102288 mapRes!5381))))

(declare-fun condMapEmpty!5381 () Bool)

(declare-fun mapDefault!5381 () ValueCell!1236)

(assert (=> b!156384 (= condMapEmpty!5381 (= (arr!2543 (_values!3115 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1236)) mapDefault!5381)))))

(declare-fun b!156385 () Bool)

(assert (=> b!156385 (= e!102288 tp_is_empty!3159)))

(declare-fun b!156386 () Bool)

(declare-fun res!73904 () Bool)

(assert (=> b!156386 (=> (not res!73904) (not e!102286))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!156386 (= res!73904 (validMask!0 (mask!7583 thiss!1248)))))

(declare-fun b!156387 () Bool)

(declare-fun res!73902 () Bool)

(assert (=> b!156387 (=> (not res!73902) (not e!102286))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5370 (_ BitVec 32)) Bool)

(assert (=> b!156387 (= res!73902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4907 thiss!1248) (mask!7583 thiss!1248)))))

(declare-fun mapIsEmpty!5381 () Bool)

(assert (=> mapIsEmpty!5381 mapRes!5381))

(declare-fun b!156388 () Bool)

(assert (=> b!156388 (= e!102286 false)))

(declare-fun lt!81572 () Bool)

(declare-datatypes ((List!1870 0))(
  ( (Nil!1867) (Cons!1866 (h!2475 (_ BitVec 64)) (t!6680 List!1870)) )
))
(declare-fun arrayNoDuplicates!0 (array!5370 (_ BitVec 32) List!1870) Bool)

(assert (=> b!156388 (= lt!81572 (arrayNoDuplicates!0 (_keys!4907 thiss!1248) #b00000000000000000000000000000000 Nil!1867))))

(declare-fun res!73905 () Bool)

(assert (=> start!15702 (=> (not res!73905) (not e!102286))))

(declare-fun valid!665 (LongMapFixedSize!1380) Bool)

(assert (=> start!15702 (= res!73905 (valid!665 thiss!1248))))

(assert (=> start!15702 e!102286))

(assert (=> start!15702 e!102287))

(assert (=> start!15702 true))

(declare-fun b!156389 () Bool)

(declare-fun res!73906 () Bool)

(assert (=> b!156389 (=> (not res!73906) (not e!102286))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!156389 (= res!73906 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!156390 () Bool)

(assert (=> b!156390 (= e!102285 tp_is_empty!3159)))

(assert (= (and start!15702 res!73905) b!156389))

(assert (= (and b!156389 res!73906) b!156386))

(assert (= (and b!156386 res!73904) b!156383))

(assert (= (and b!156383 res!73903) b!156387))

(assert (= (and b!156387 res!73902) b!156388))

(assert (= (and b!156384 condMapEmpty!5381) mapIsEmpty!5381))

(assert (= (and b!156384 (not condMapEmpty!5381)) mapNonEmpty!5381))

(get-info :version)

(assert (= (and mapNonEmpty!5381 ((_ is ValueCellFull!1236) mapValue!5381)) b!156390))

(assert (= (and b!156384 ((_ is ValueCellFull!1236) mapDefault!5381)) b!156385))

(assert (= b!156382 b!156384))

(assert (= start!15702 b!156382))

(declare-fun m!189973 () Bool)

(assert (=> b!156386 m!189973))

(declare-fun m!189975 () Bool)

(assert (=> b!156387 m!189975))

(declare-fun m!189977 () Bool)

(assert (=> mapNonEmpty!5381 m!189977))

(declare-fun m!189979 () Bool)

(assert (=> b!156382 m!189979))

(declare-fun m!189981 () Bool)

(assert (=> b!156382 m!189981))

(declare-fun m!189983 () Bool)

(assert (=> b!156388 m!189983))

(declare-fun m!189985 () Bool)

(assert (=> start!15702 m!189985))

(check-sat (not mapNonEmpty!5381) (not b!156382) (not b!156387) (not b_next!3357) (not b!156386) tp_is_empty!3159 b_and!9789 (not start!15702) (not b!156388))
(check-sat b_and!9789 (not b_next!3357))
