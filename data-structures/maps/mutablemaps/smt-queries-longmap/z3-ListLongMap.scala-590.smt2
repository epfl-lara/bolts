; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15696 () Bool)

(assert start!15696)

(declare-fun b!156309 () Bool)

(declare-fun b_free!3351 () Bool)

(declare-fun b_next!3351 () Bool)

(assert (=> b!156309 (= b_free!3351 (not b_next!3351))))

(declare-fun tp!12578 () Bool)

(declare-fun b_and!9783 () Bool)

(assert (=> b!156309 (= tp!12578 b_and!9783)))

(declare-fun b!156301 () Bool)

(declare-fun res!73859 () Bool)

(declare-fun e!102232 () Bool)

(assert (=> b!156301 (=> (not res!73859) (not e!102232))))

(declare-datatypes ((V!3851 0))(
  ( (V!3852 (val!1621 Int)) )
))
(declare-datatypes ((ValueCell!1233 0))(
  ( (ValueCellFull!1233 (v!3482 V!3851)) (EmptyCell!1233) )
))
(declare-datatypes ((array!5358 0))(
  ( (array!5359 (arr!2536 (Array (_ BitVec 32) (_ BitVec 64))) (size!2814 (_ BitVec 32))) )
))
(declare-datatypes ((array!5360 0))(
  ( (array!5361 (arr!2537 (Array (_ BitVec 32) ValueCell!1233)) (size!2815 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1374 0))(
  ( (LongMapFixedSize!1375 (defaultEntry!3129 Int) (mask!7578 (_ BitVec 32)) (extraKeys!2870 (_ BitVec 32)) (zeroValue!2972 V!3851) (minValue!2972 V!3851) (_size!736 (_ BitVec 32)) (_keys!4904 array!5358) (_values!3112 array!5360) (_vacant!736 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1374)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5358 (_ BitVec 32)) Bool)

(assert (=> b!156301 (= res!73859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4904 thiss!1248) (mask!7578 thiss!1248)))))

(declare-fun res!73858 () Bool)

(assert (=> start!15696 (=> (not res!73858) (not e!102232))))

(declare-fun valid!662 (LongMapFixedSize!1374) Bool)

(assert (=> start!15696 (= res!73858 (valid!662 thiss!1248))))

(assert (=> start!15696 e!102232))

(declare-fun e!102235 () Bool)

(assert (=> start!15696 e!102235))

(assert (=> start!15696 true))

(declare-fun b!156302 () Bool)

(declare-fun res!73861 () Bool)

(assert (=> b!156302 (=> (not res!73861) (not e!102232))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!156302 (= res!73861 (validMask!0 (mask!7578 thiss!1248)))))

(declare-fun b!156303 () Bool)

(declare-fun res!73857 () Bool)

(assert (=> b!156303 (=> (not res!73857) (not e!102232))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!156303 (= res!73857 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!156304 () Bool)

(declare-fun res!73860 () Bool)

(assert (=> b!156304 (=> (not res!73860) (not e!102232))))

(assert (=> b!156304 (= res!73860 (and (= (size!2815 (_values!3112 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7578 thiss!1248))) (= (size!2814 (_keys!4904 thiss!1248)) (size!2815 (_values!3112 thiss!1248))) (bvsge (mask!7578 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2870 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2870 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2870 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2870 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2870 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2870 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2870 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!156305 () Bool)

(declare-fun e!102231 () Bool)

(declare-fun e!102236 () Bool)

(declare-fun mapRes!5372 () Bool)

(assert (=> b!156305 (= e!102231 (and e!102236 mapRes!5372))))

(declare-fun condMapEmpty!5372 () Bool)

(declare-fun mapDefault!5372 () ValueCell!1233)

(assert (=> b!156305 (= condMapEmpty!5372 (= (arr!2537 (_values!3112 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1233)) mapDefault!5372)))))

(declare-fun b!156306 () Bool)

(declare-fun tp_is_empty!3153 () Bool)

(assert (=> b!156306 (= e!102236 tp_is_empty!3153)))

(declare-fun mapIsEmpty!5372 () Bool)

(assert (=> mapIsEmpty!5372 mapRes!5372))

(declare-fun b!156307 () Bool)

(declare-fun e!102233 () Bool)

(assert (=> b!156307 (= e!102233 tp_is_empty!3153)))

(declare-fun b!156308 () Bool)

(assert (=> b!156308 (= e!102232 false)))

(declare-fun lt!81563 () Bool)

(declare-datatypes ((List!1867 0))(
  ( (Nil!1864) (Cons!1863 (h!2472 (_ BitVec 64)) (t!6677 List!1867)) )
))
(declare-fun arrayNoDuplicates!0 (array!5358 (_ BitVec 32) List!1867) Bool)

(assert (=> b!156308 (= lt!81563 (arrayNoDuplicates!0 (_keys!4904 thiss!1248) #b00000000000000000000000000000000 Nil!1864))))

(declare-fun mapNonEmpty!5372 () Bool)

(declare-fun tp!12577 () Bool)

(assert (=> mapNonEmpty!5372 (= mapRes!5372 (and tp!12577 e!102233))))

(declare-fun mapValue!5372 () ValueCell!1233)

(declare-fun mapRest!5372 () (Array (_ BitVec 32) ValueCell!1233))

(declare-fun mapKey!5372 () (_ BitVec 32))

(assert (=> mapNonEmpty!5372 (= (arr!2537 (_values!3112 thiss!1248)) (store mapRest!5372 mapKey!5372 mapValue!5372))))

(declare-fun array_inv!1595 (array!5358) Bool)

(declare-fun array_inv!1596 (array!5360) Bool)

(assert (=> b!156309 (= e!102235 (and tp!12578 tp_is_empty!3153 (array_inv!1595 (_keys!4904 thiss!1248)) (array_inv!1596 (_values!3112 thiss!1248)) e!102231))))

(assert (= (and start!15696 res!73858) b!156303))

(assert (= (and b!156303 res!73857) b!156302))

(assert (= (and b!156302 res!73861) b!156304))

(assert (= (and b!156304 res!73860) b!156301))

(assert (= (and b!156301 res!73859) b!156308))

(assert (= (and b!156305 condMapEmpty!5372) mapIsEmpty!5372))

(assert (= (and b!156305 (not condMapEmpty!5372)) mapNonEmpty!5372))

(get-info :version)

(assert (= (and mapNonEmpty!5372 ((_ is ValueCellFull!1233) mapValue!5372)) b!156307))

(assert (= (and b!156305 ((_ is ValueCellFull!1233) mapDefault!5372)) b!156306))

(assert (= b!156309 b!156305))

(assert (= start!15696 b!156309))

(declare-fun m!189931 () Bool)

(assert (=> mapNonEmpty!5372 m!189931))

(declare-fun m!189933 () Bool)

(assert (=> start!15696 m!189933))

(declare-fun m!189935 () Bool)

(assert (=> b!156302 m!189935))

(declare-fun m!189937 () Bool)

(assert (=> b!156308 m!189937))

(declare-fun m!189939 () Bool)

(assert (=> b!156301 m!189939))

(declare-fun m!189941 () Bool)

(assert (=> b!156309 m!189941))

(declare-fun m!189943 () Bool)

(assert (=> b!156309 m!189943))

(check-sat tp_is_empty!3153 (not b!156301) (not b!156302) b_and!9783 (not mapNonEmpty!5372) (not b!156309) (not start!15696) (not b_next!3351) (not b!156308))
(check-sat b_and!9783 (not b_next!3351))
