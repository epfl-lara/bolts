; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15624 () Bool)

(assert start!15624)

(declare-fun b!155447 () Bool)

(declare-fun b_free!3279 () Bool)

(declare-fun b_next!3279 () Bool)

(assert (=> b!155447 (= b_free!3279 (not b_next!3279))))

(declare-fun tp!12361 () Bool)

(declare-fun b_and!9711 () Bool)

(assert (=> b!155447 (= tp!12361 b_and!9711)))

(declare-fun b!155446 () Bool)

(declare-fun e!101569 () Bool)

(declare-fun tp_is_empty!3081 () Bool)

(assert (=> b!155446 (= e!101569 tp_is_empty!3081)))

(declare-fun e!101566 () Bool)

(declare-fun e!101565 () Bool)

(declare-datatypes ((V!3755 0))(
  ( (V!3756 (val!1585 Int)) )
))
(declare-datatypes ((ValueCell!1197 0))(
  ( (ValueCellFull!1197 (v!3446 V!3755)) (EmptyCell!1197) )
))
(declare-datatypes ((array!5214 0))(
  ( (array!5215 (arr!2464 (Array (_ BitVec 32) (_ BitVec 64))) (size!2742 (_ BitVec 32))) )
))
(declare-datatypes ((array!5216 0))(
  ( (array!5217 (arr!2465 (Array (_ BitVec 32) ValueCell!1197)) (size!2743 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1302 0))(
  ( (LongMapFixedSize!1303 (defaultEntry!3093 Int) (mask!7518 (_ BitVec 32)) (extraKeys!2834 (_ BitVec 32)) (zeroValue!2936 V!3755) (minValue!2936 V!3755) (_size!700 (_ BitVec 32)) (_keys!4868 array!5214) (_values!3076 array!5216) (_vacant!700 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1302)

(declare-fun array_inv!1539 (array!5214) Bool)

(declare-fun array_inv!1540 (array!5216) Bool)

(assert (=> b!155447 (= e!101565 (and tp!12361 tp_is_empty!3081 (array_inv!1539 (_keys!4868 thiss!1248)) (array_inv!1540 (_values!3076 thiss!1248)) e!101566))))

(declare-fun b!155448 () Bool)

(declare-fun res!73438 () Bool)

(declare-fun e!101568 () Bool)

(assert (=> b!155448 (=> (not res!73438) (not e!101568))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!155448 (= res!73438 (validMask!0 (mask!7518 thiss!1248)))))

(declare-fun b!155449 () Bool)

(assert (=> b!155449 (= e!101568 false)))

(declare-fun lt!81392 () Bool)

(declare-datatypes ((List!1841 0))(
  ( (Nil!1838) (Cons!1837 (h!2446 (_ BitVec 64)) (t!6651 List!1841)) )
))
(declare-fun arrayNoDuplicates!0 (array!5214 (_ BitVec 32) List!1841) Bool)

(assert (=> b!155449 (= lt!81392 (arrayNoDuplicates!0 (_keys!4868 thiss!1248) #b00000000000000000000000000000000 Nil!1838))))

(declare-fun res!73436 () Bool)

(assert (=> start!15624 (=> (not res!73436) (not e!101568))))

(declare-fun valid!629 (LongMapFixedSize!1302) Bool)

(assert (=> start!15624 (= res!73436 (valid!629 thiss!1248))))

(assert (=> start!15624 e!101568))

(assert (=> start!15624 e!101565))

(assert (=> start!15624 true))

(declare-fun b!155450 () Bool)

(declare-fun res!73434 () Bool)

(assert (=> b!155450 (=> (not res!73434) (not e!101568))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5214 (_ BitVec 32)) Bool)

(assert (=> b!155450 (= res!73434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4868 thiss!1248) (mask!7518 thiss!1248)))))

(declare-fun b!155451 () Bool)

(declare-fun res!73435 () Bool)

(assert (=> b!155451 (=> (not res!73435) (not e!101568))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155451 (= res!73435 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!155452 () Bool)

(declare-fun res!73437 () Bool)

(assert (=> b!155452 (=> (not res!73437) (not e!101568))))

(assert (=> b!155452 (= res!73437 (and (= (size!2743 (_values!3076 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7518 thiss!1248))) (= (size!2742 (_keys!4868 thiss!1248)) (size!2743 (_values!3076 thiss!1248))) (bvsge (mask!7518 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2834 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2834 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2834 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2834 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2834 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2834 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2834 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!155453 () Bool)

(declare-fun e!101567 () Bool)

(assert (=> b!155453 (= e!101567 tp_is_empty!3081)))

(declare-fun b!155454 () Bool)

(declare-fun mapRes!5264 () Bool)

(assert (=> b!155454 (= e!101566 (and e!101567 mapRes!5264))))

(declare-fun condMapEmpty!5264 () Bool)

(declare-fun mapDefault!5264 () ValueCell!1197)

(assert (=> b!155454 (= condMapEmpty!5264 (= (arr!2465 (_values!3076 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1197)) mapDefault!5264)))))

(declare-fun mapNonEmpty!5264 () Bool)

(declare-fun tp!12362 () Bool)

(assert (=> mapNonEmpty!5264 (= mapRes!5264 (and tp!12362 e!101569))))

(declare-fun mapRest!5264 () (Array (_ BitVec 32) ValueCell!1197))

(declare-fun mapKey!5264 () (_ BitVec 32))

(declare-fun mapValue!5264 () ValueCell!1197)

(assert (=> mapNonEmpty!5264 (= (arr!2465 (_values!3076 thiss!1248)) (store mapRest!5264 mapKey!5264 mapValue!5264))))

(declare-fun mapIsEmpty!5264 () Bool)

(assert (=> mapIsEmpty!5264 mapRes!5264))

(assert (= (and start!15624 res!73436) b!155451))

(assert (= (and b!155451 res!73435) b!155448))

(assert (= (and b!155448 res!73438) b!155452))

(assert (= (and b!155452 res!73437) b!155450))

(assert (= (and b!155450 res!73434) b!155449))

(assert (= (and b!155454 condMapEmpty!5264) mapIsEmpty!5264))

(assert (= (and b!155454 (not condMapEmpty!5264)) mapNonEmpty!5264))

(get-info :version)

(assert (= (and mapNonEmpty!5264 ((_ is ValueCellFull!1197) mapValue!5264)) b!155446))

(assert (= (and b!155454 ((_ is ValueCellFull!1197) mapDefault!5264)) b!155453))

(assert (= b!155447 b!155454))

(assert (= start!15624 b!155447))

(declare-fun m!189343 () Bool)

(assert (=> b!155447 m!189343))

(declare-fun m!189345 () Bool)

(assert (=> b!155447 m!189345))

(declare-fun m!189347 () Bool)

(assert (=> b!155448 m!189347))

(declare-fun m!189349 () Bool)

(assert (=> start!15624 m!189349))

(declare-fun m!189351 () Bool)

(assert (=> mapNonEmpty!5264 m!189351))

(declare-fun m!189353 () Bool)

(assert (=> b!155450 m!189353))

(declare-fun m!189355 () Bool)

(assert (=> b!155449 m!189355))

(check-sat (not b!155449) (not b!155450) (not b!155447) (not start!15624) (not mapNonEmpty!5264) tp_is_empty!3081 (not b_next!3279) b_and!9711 (not b!155448))
(check-sat b_and!9711 (not b_next!3279))
