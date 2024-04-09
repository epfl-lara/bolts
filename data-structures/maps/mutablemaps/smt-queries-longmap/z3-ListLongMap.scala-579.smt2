; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15630 () Bool)

(assert start!15630)

(declare-fun b!155531 () Bool)

(declare-fun b_free!3285 () Bool)

(declare-fun b_next!3285 () Bool)

(assert (=> b!155531 (= b_free!3285 (not b_next!3285))))

(declare-fun tp!12380 () Bool)

(declare-fun b_and!9717 () Bool)

(assert (=> b!155531 (= tp!12380 b_and!9717)))

(declare-fun b!155527 () Bool)

(declare-fun e!101621 () Bool)

(assert (=> b!155527 (= e!101621 false)))

(declare-fun lt!81401 () Bool)

(declare-datatypes ((V!3763 0))(
  ( (V!3764 (val!1588 Int)) )
))
(declare-datatypes ((ValueCell!1200 0))(
  ( (ValueCellFull!1200 (v!3449 V!3763)) (EmptyCell!1200) )
))
(declare-datatypes ((array!5226 0))(
  ( (array!5227 (arr!2470 (Array (_ BitVec 32) (_ BitVec 64))) (size!2748 (_ BitVec 32))) )
))
(declare-datatypes ((array!5228 0))(
  ( (array!5229 (arr!2471 (Array (_ BitVec 32) ValueCell!1200)) (size!2749 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1308 0))(
  ( (LongMapFixedSize!1309 (defaultEntry!3096 Int) (mask!7523 (_ BitVec 32)) (extraKeys!2837 (_ BitVec 32)) (zeroValue!2939 V!3763) (minValue!2939 V!3763) (_size!703 (_ BitVec 32)) (_keys!4871 array!5226) (_values!3079 array!5228) (_vacant!703 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1308)

(declare-datatypes ((List!1843 0))(
  ( (Nil!1840) (Cons!1839 (h!2448 (_ BitVec 64)) (t!6653 List!1843)) )
))
(declare-fun arrayNoDuplicates!0 (array!5226 (_ BitVec 32) List!1843) Bool)

(assert (=> b!155527 (= lt!81401 (arrayNoDuplicates!0 (_keys!4871 thiss!1248) #b00000000000000000000000000000000 Nil!1840))))

(declare-fun b!155528 () Bool)

(declare-fun res!73483 () Bool)

(assert (=> b!155528 (=> (not res!73483) (not e!101621))))

(assert (=> b!155528 (= res!73483 (and (= (size!2749 (_values!3079 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7523 thiss!1248))) (= (size!2748 (_keys!4871 thiss!1248)) (size!2749 (_values!3079 thiss!1248))) (bvsge (mask!7523 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2837 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2837 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2837 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2837 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2837 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2837 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2837 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!155529 () Bool)

(declare-fun res!73479 () Bool)

(assert (=> b!155529 (=> (not res!73479) (not e!101621))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!155529 (= res!73479 (validMask!0 (mask!7523 thiss!1248)))))

(declare-fun b!155530 () Bool)

(declare-fun e!101624 () Bool)

(declare-fun tp_is_empty!3087 () Bool)

(assert (=> b!155530 (= e!101624 tp_is_empty!3087)))

(declare-fun e!101623 () Bool)

(declare-fun e!101620 () Bool)

(declare-fun array_inv!1545 (array!5226) Bool)

(declare-fun array_inv!1546 (array!5228) Bool)

(assert (=> b!155531 (= e!101623 (and tp!12380 tp_is_empty!3087 (array_inv!1545 (_keys!4871 thiss!1248)) (array_inv!1546 (_values!3079 thiss!1248)) e!101620))))

(declare-fun res!73480 () Bool)

(assert (=> start!15630 (=> (not res!73480) (not e!101621))))

(declare-fun valid!632 (LongMapFixedSize!1308) Bool)

(assert (=> start!15630 (= res!73480 (valid!632 thiss!1248))))

(assert (=> start!15630 e!101621))

(assert (=> start!15630 e!101623))

(assert (=> start!15630 true))

(declare-fun mapNonEmpty!5273 () Bool)

(declare-fun mapRes!5273 () Bool)

(declare-fun tp!12379 () Bool)

(assert (=> mapNonEmpty!5273 (= mapRes!5273 (and tp!12379 e!101624))))

(declare-fun mapValue!5273 () ValueCell!1200)

(declare-fun mapKey!5273 () (_ BitVec 32))

(declare-fun mapRest!5273 () (Array (_ BitVec 32) ValueCell!1200))

(assert (=> mapNonEmpty!5273 (= (arr!2471 (_values!3079 thiss!1248)) (store mapRest!5273 mapKey!5273 mapValue!5273))))

(declare-fun b!155532 () Bool)

(declare-fun e!101619 () Bool)

(assert (=> b!155532 (= e!101619 tp_is_empty!3087)))

(declare-fun b!155533 () Bool)

(declare-fun res!73481 () Bool)

(assert (=> b!155533 (=> (not res!73481) (not e!101621))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5226 (_ BitVec 32)) Bool)

(assert (=> b!155533 (= res!73481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4871 thiss!1248) (mask!7523 thiss!1248)))))

(declare-fun mapIsEmpty!5273 () Bool)

(assert (=> mapIsEmpty!5273 mapRes!5273))

(declare-fun b!155534 () Bool)

(assert (=> b!155534 (= e!101620 (and e!101619 mapRes!5273))))

(declare-fun condMapEmpty!5273 () Bool)

(declare-fun mapDefault!5273 () ValueCell!1200)

(assert (=> b!155534 (= condMapEmpty!5273 (= (arr!2471 (_values!3079 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1200)) mapDefault!5273)))))

(declare-fun b!155535 () Bool)

(declare-fun res!73482 () Bool)

(assert (=> b!155535 (=> (not res!73482) (not e!101621))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155535 (= res!73482 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!15630 res!73480) b!155535))

(assert (= (and b!155535 res!73482) b!155529))

(assert (= (and b!155529 res!73479) b!155528))

(assert (= (and b!155528 res!73483) b!155533))

(assert (= (and b!155533 res!73481) b!155527))

(assert (= (and b!155534 condMapEmpty!5273) mapIsEmpty!5273))

(assert (= (and b!155534 (not condMapEmpty!5273)) mapNonEmpty!5273))

(get-info :version)

(assert (= (and mapNonEmpty!5273 ((_ is ValueCellFull!1200) mapValue!5273)) b!155530))

(assert (= (and b!155534 ((_ is ValueCellFull!1200) mapDefault!5273)) b!155532))

(assert (= b!155531 b!155534))

(assert (= start!15630 b!155531))

(declare-fun m!189385 () Bool)

(assert (=> b!155531 m!189385))

(declare-fun m!189387 () Bool)

(assert (=> b!155531 m!189387))

(declare-fun m!189389 () Bool)

(assert (=> b!155533 m!189389))

(declare-fun m!189391 () Bool)

(assert (=> start!15630 m!189391))

(declare-fun m!189393 () Bool)

(assert (=> mapNonEmpty!5273 m!189393))

(declare-fun m!189395 () Bool)

(assert (=> b!155527 m!189395))

(declare-fun m!189397 () Bool)

(assert (=> b!155529 m!189397))

(check-sat (not b!155533) (not start!15630) b_and!9717 (not b!155531) (not mapNonEmpty!5273) (not b!155527) (not b!155529) (not b_next!3285) tp_is_empty!3087)
(check-sat b_and!9717 (not b_next!3285))
