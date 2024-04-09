; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15636 () Bool)

(assert start!15636)

(declare-fun b!155615 () Bool)

(declare-fun b_free!3291 () Bool)

(declare-fun b_next!3291 () Bool)

(assert (=> b!155615 (= b_free!3291 (not b_next!3291))))

(declare-fun tp!12398 () Bool)

(declare-fun b_and!9723 () Bool)

(assert (=> b!155615 (= tp!12398 b_and!9723)))

(declare-fun b!155608 () Bool)

(declare-fun res!73525 () Bool)

(declare-fun e!101675 () Bool)

(assert (=> b!155608 (=> (not res!73525) (not e!101675))))

(declare-datatypes ((V!3771 0))(
  ( (V!3772 (val!1591 Int)) )
))
(declare-datatypes ((ValueCell!1203 0))(
  ( (ValueCellFull!1203 (v!3452 V!3771)) (EmptyCell!1203) )
))
(declare-datatypes ((array!5238 0))(
  ( (array!5239 (arr!2476 (Array (_ BitVec 32) (_ BitVec 64))) (size!2754 (_ BitVec 32))) )
))
(declare-datatypes ((array!5240 0))(
  ( (array!5241 (arr!2477 (Array (_ BitVec 32) ValueCell!1203)) (size!2755 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1314 0))(
  ( (LongMapFixedSize!1315 (defaultEntry!3099 Int) (mask!7528 (_ BitVec 32)) (extraKeys!2840 (_ BitVec 32)) (zeroValue!2942 V!3771) (minValue!2942 V!3771) (_size!706 (_ BitVec 32)) (_keys!4874 array!5238) (_values!3082 array!5240) (_vacant!706 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1314)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!155608 (= res!73525 (validMask!0 (mask!7528 thiss!1248)))))

(declare-fun b!155609 () Bool)

(declare-fun e!101676 () Bool)

(declare-fun e!101678 () Bool)

(declare-fun mapRes!5282 () Bool)

(assert (=> b!155609 (= e!101676 (and e!101678 mapRes!5282))))

(declare-fun condMapEmpty!5282 () Bool)

(declare-fun mapDefault!5282 () ValueCell!1203)

(assert (=> b!155609 (= condMapEmpty!5282 (= (arr!2477 (_values!3082 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1203)) mapDefault!5282)))))

(declare-fun mapNonEmpty!5282 () Bool)

(declare-fun tp!12397 () Bool)

(declare-fun e!101673 () Bool)

(assert (=> mapNonEmpty!5282 (= mapRes!5282 (and tp!12397 e!101673))))

(declare-fun mapValue!5282 () ValueCell!1203)

(declare-fun mapRest!5282 () (Array (_ BitVec 32) ValueCell!1203))

(declare-fun mapKey!5282 () (_ BitVec 32))

(assert (=> mapNonEmpty!5282 (= (arr!2477 (_values!3082 thiss!1248)) (store mapRest!5282 mapKey!5282 mapValue!5282))))

(declare-fun res!73524 () Bool)

(assert (=> start!15636 (=> (not res!73524) (not e!101675))))

(declare-fun valid!634 (LongMapFixedSize!1314) Bool)

(assert (=> start!15636 (= res!73524 (valid!634 thiss!1248))))

(assert (=> start!15636 e!101675))

(declare-fun e!101674 () Bool)

(assert (=> start!15636 e!101674))

(assert (=> start!15636 true))

(declare-fun b!155610 () Bool)

(declare-fun tp_is_empty!3093 () Bool)

(assert (=> b!155610 (= e!101678 tp_is_empty!3093)))

(declare-fun b!155611 () Bool)

(declare-fun res!73526 () Bool)

(assert (=> b!155611 (=> (not res!73526) (not e!101675))))

(assert (=> b!155611 (= res!73526 (and (= (size!2755 (_values!3082 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7528 thiss!1248))) (= (size!2754 (_keys!4874 thiss!1248)) (size!2755 (_values!3082 thiss!1248))) (bvsge (mask!7528 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2840 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2840 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2840 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2840 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2840 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2840 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2840 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!155612 () Bool)

(declare-fun res!73528 () Bool)

(assert (=> b!155612 (=> (not res!73528) (not e!101675))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155612 (= res!73528 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!155613 () Bool)

(assert (=> b!155613 (= e!101673 tp_is_empty!3093)))

(declare-fun mapIsEmpty!5282 () Bool)

(assert (=> mapIsEmpty!5282 mapRes!5282))

(declare-fun b!155614 () Bool)

(declare-fun res!73527 () Bool)

(assert (=> b!155614 (=> (not res!73527) (not e!101675))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5238 (_ BitVec 32)) Bool)

(assert (=> b!155614 (= res!73527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4874 thiss!1248) (mask!7528 thiss!1248)))))

(declare-fun array_inv!1549 (array!5238) Bool)

(declare-fun array_inv!1550 (array!5240) Bool)

(assert (=> b!155615 (= e!101674 (and tp!12398 tp_is_empty!3093 (array_inv!1549 (_keys!4874 thiss!1248)) (array_inv!1550 (_values!3082 thiss!1248)) e!101676))))

(declare-fun b!155616 () Bool)

(assert (=> b!155616 (= e!101675 false)))

(declare-fun lt!81410 () Bool)

(declare-datatypes ((List!1845 0))(
  ( (Nil!1842) (Cons!1841 (h!2450 (_ BitVec 64)) (t!6655 List!1845)) )
))
(declare-fun arrayNoDuplicates!0 (array!5238 (_ BitVec 32) List!1845) Bool)

(assert (=> b!155616 (= lt!81410 (arrayNoDuplicates!0 (_keys!4874 thiss!1248) #b00000000000000000000000000000000 Nil!1842))))

(assert (= (and start!15636 res!73524) b!155612))

(assert (= (and b!155612 res!73528) b!155608))

(assert (= (and b!155608 res!73525) b!155611))

(assert (= (and b!155611 res!73526) b!155614))

(assert (= (and b!155614 res!73527) b!155616))

(assert (= (and b!155609 condMapEmpty!5282) mapIsEmpty!5282))

(assert (= (and b!155609 (not condMapEmpty!5282)) mapNonEmpty!5282))

(get-info :version)

(assert (= (and mapNonEmpty!5282 ((_ is ValueCellFull!1203) mapValue!5282)) b!155613))

(assert (= (and b!155609 ((_ is ValueCellFull!1203) mapDefault!5282)) b!155610))

(assert (= b!155615 b!155609))

(assert (= start!15636 b!155615))

(declare-fun m!189427 () Bool)

(assert (=> b!155616 m!189427))

(declare-fun m!189429 () Bool)

(assert (=> mapNonEmpty!5282 m!189429))

(declare-fun m!189431 () Bool)

(assert (=> start!15636 m!189431))

(declare-fun m!189433 () Bool)

(assert (=> b!155608 m!189433))

(declare-fun m!189435 () Bool)

(assert (=> b!155614 m!189435))

(declare-fun m!189437 () Bool)

(assert (=> b!155615 m!189437))

(declare-fun m!189439 () Bool)

(assert (=> b!155615 m!189439))

(check-sat (not b!155616) b_and!9723 (not b!155608) (not start!15636) (not mapNonEmpty!5282) (not b_next!3291) (not b!155614) tp_is_empty!3093 (not b!155615))
(check-sat b_and!9723 (not b_next!3291))
