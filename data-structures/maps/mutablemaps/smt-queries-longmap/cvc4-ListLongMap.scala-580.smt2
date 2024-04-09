; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15638 () Bool)

(assert start!15638)

(declare-fun b!155637 () Bool)

(declare-fun b_free!3293 () Bool)

(declare-fun b_next!3293 () Bool)

(assert (=> b!155637 (= b_free!3293 (not b_next!3293))))

(declare-fun tp!12404 () Bool)

(declare-fun b_and!9725 () Bool)

(assert (=> b!155637 (= tp!12404 b_and!9725)))

(declare-fun b!155635 () Bool)

(declare-fun res!73543 () Bool)

(declare-fun e!101691 () Bool)

(assert (=> b!155635 (=> (not res!73543) (not e!101691))))

(declare-datatypes ((V!3773 0))(
  ( (V!3774 (val!1592 Int)) )
))
(declare-datatypes ((ValueCell!1204 0))(
  ( (ValueCellFull!1204 (v!3453 V!3773)) (EmptyCell!1204) )
))
(declare-datatypes ((array!5242 0))(
  ( (array!5243 (arr!2478 (Array (_ BitVec 32) (_ BitVec 64))) (size!2756 (_ BitVec 32))) )
))
(declare-datatypes ((array!5244 0))(
  ( (array!5245 (arr!2479 (Array (_ BitVec 32) ValueCell!1204)) (size!2757 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1316 0))(
  ( (LongMapFixedSize!1317 (defaultEntry!3100 Int) (mask!7529 (_ BitVec 32)) (extraKeys!2841 (_ BitVec 32)) (zeroValue!2943 V!3773) (minValue!2943 V!3773) (_size!707 (_ BitVec 32)) (_keys!4875 array!5242) (_values!3083 array!5244) (_vacant!707 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1316)

(assert (=> b!155635 (= res!73543 (and (= (size!2757 (_values!3083 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7529 thiss!1248))) (= (size!2756 (_keys!4875 thiss!1248)) (size!2757 (_values!3083 thiss!1248))) (bvsge (mask!7529 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2841 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2841 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2841 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2841 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2841 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2841 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2841 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!5285 () Bool)

(declare-fun mapRes!5285 () Bool)

(assert (=> mapIsEmpty!5285 mapRes!5285))

(declare-fun b!155636 () Bool)

(assert (=> b!155636 (= e!101691 false)))

(declare-fun lt!81413 () Bool)

(declare-datatypes ((List!1846 0))(
  ( (Nil!1843) (Cons!1842 (h!2451 (_ BitVec 64)) (t!6656 List!1846)) )
))
(declare-fun arrayNoDuplicates!0 (array!5242 (_ BitVec 32) List!1846) Bool)

(assert (=> b!155636 (= lt!81413 (arrayNoDuplicates!0 (_keys!4875 thiss!1248) #b00000000000000000000000000000000 Nil!1843))))

(declare-fun mapNonEmpty!5285 () Bool)

(declare-fun tp!12403 () Bool)

(declare-fun e!101693 () Bool)

(assert (=> mapNonEmpty!5285 (= mapRes!5285 (and tp!12403 e!101693))))

(declare-fun mapValue!5285 () ValueCell!1204)

(declare-fun mapRest!5285 () (Array (_ BitVec 32) ValueCell!1204))

(declare-fun mapKey!5285 () (_ BitVec 32))

(assert (=> mapNonEmpty!5285 (= (arr!2479 (_values!3083 thiss!1248)) (store mapRest!5285 mapKey!5285 mapValue!5285))))

(declare-fun e!101695 () Bool)

(declare-fun e!101692 () Bool)

(declare-fun tp_is_empty!3095 () Bool)

(declare-fun array_inv!1551 (array!5242) Bool)

(declare-fun array_inv!1552 (array!5244) Bool)

(assert (=> b!155637 (= e!101695 (and tp!12404 tp_is_empty!3095 (array_inv!1551 (_keys!4875 thiss!1248)) (array_inv!1552 (_values!3083 thiss!1248)) e!101692))))

(declare-fun b!155638 () Bool)

(declare-fun e!101694 () Bool)

(assert (=> b!155638 (= e!101694 tp_is_empty!3095)))

(declare-fun res!73542 () Bool)

(assert (=> start!15638 (=> (not res!73542) (not e!101691))))

(declare-fun valid!635 (LongMapFixedSize!1316) Bool)

(assert (=> start!15638 (= res!73542 (valid!635 thiss!1248))))

(assert (=> start!15638 e!101691))

(assert (=> start!15638 e!101695))

(assert (=> start!15638 true))

(declare-fun b!155639 () Bool)

(declare-fun res!73541 () Bool)

(assert (=> b!155639 (=> (not res!73541) (not e!101691))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5242 (_ BitVec 32)) Bool)

(assert (=> b!155639 (= res!73541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4875 thiss!1248) (mask!7529 thiss!1248)))))

(declare-fun b!155640 () Bool)

(declare-fun res!73540 () Bool)

(assert (=> b!155640 (=> (not res!73540) (not e!101691))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155640 (= res!73540 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!155641 () Bool)

(assert (=> b!155641 (= e!101692 (and e!101694 mapRes!5285))))

(declare-fun condMapEmpty!5285 () Bool)

(declare-fun mapDefault!5285 () ValueCell!1204)

