; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16968 () Bool)

(assert start!16968)

(declare-fun b!170425 () Bool)

(declare-fun b_free!4203 () Bool)

(declare-fun b_next!4203 () Bool)

(assert (=> b!170425 (= b_free!4203 (not b_next!4203))))

(declare-fun tp!15233 () Bool)

(declare-fun b_and!10635 () Bool)

(assert (=> b!170425 (= tp!15233 b_and!10635)))

(declare-fun b!170420 () Bool)

(declare-fun e!112464 () Bool)

(declare-fun tp_is_empty!3975 () Bool)

(assert (=> b!170420 (= e!112464 tp_is_empty!3975)))

(declare-fun mapNonEmpty!6749 () Bool)

(declare-fun mapRes!6749 () Bool)

(declare-fun tp!15232 () Bool)

(declare-fun e!112467 () Bool)

(assert (=> mapNonEmpty!6749 (= mapRes!6749 (and tp!15232 e!112467))))

(declare-datatypes ((V!4947 0))(
  ( (V!4948 (val!2032 Int)) )
))
(declare-datatypes ((ValueCell!1644 0))(
  ( (ValueCellFull!1644 (v!3893 V!4947)) (EmptyCell!1644) )
))
(declare-fun mapRest!6749 () (Array (_ BitVec 32) ValueCell!1644))

(declare-fun mapKey!6749 () (_ BitVec 32))

(declare-fun mapValue!6749 () ValueCell!1644)

(declare-datatypes ((array!7058 0))(
  ( (array!7059 (arr!3358 (Array (_ BitVec 32) (_ BitVec 64))) (size!3651 (_ BitVec 32))) )
))
(declare-datatypes ((array!7060 0))(
  ( (array!7061 (arr!3359 (Array (_ BitVec 32) ValueCell!1644)) (size!3652 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2196 0))(
  ( (LongMapFixedSize!2197 (defaultEntry!3540 Int) (mask!8354 (_ BitVec 32)) (extraKeys!3281 (_ BitVec 32)) (zeroValue!3383 V!4947) (minValue!3383 V!4947) (_size!1147 (_ BitVec 32)) (_keys!5370 array!7058) (_values!3523 array!7060) (_vacant!1147 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2196)

(assert (=> mapNonEmpty!6749 (= (arr!3359 (_values!3523 thiss!1248)) (store mapRest!6749 mapKey!6749 mapValue!6749))))

(declare-fun b!170422 () Bool)

(declare-fun res!81028 () Bool)

(declare-fun e!112469 () Bool)

(assert (=> b!170422 (=> (not res!81028) (not e!112469))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!170422 (= res!81028 (validMask!0 (mask!8354 thiss!1248)))))

(declare-fun mapIsEmpty!6749 () Bool)

(assert (=> mapIsEmpty!6749 mapRes!6749))

(declare-fun b!170423 () Bool)

(declare-fun e!112466 () Bool)

(assert (=> b!170423 (= e!112466 (and e!112464 mapRes!6749))))

(declare-fun condMapEmpty!6749 () Bool)

(declare-fun mapDefault!6749 () ValueCell!1644)

(assert (=> b!170423 (= condMapEmpty!6749 (= (arr!3359 (_values!3523 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1644)) mapDefault!6749)))))

(declare-fun b!170424 () Bool)

(assert (=> b!170424 (= e!112467 tp_is_empty!3975)))

(declare-fun b!170421 () Bool)

(assert (=> b!170421 (= e!112469 (and (= (size!3652 (_values!3523 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8354 thiss!1248))) (= (size!3651 (_keys!5370 thiss!1248)) (size!3652 (_values!3523 thiss!1248))) (bvsge (mask!8354 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3281 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3281 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!3281 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsgt (bvor (extraKeys!3281 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011)))))

(declare-fun res!81029 () Bool)

(assert (=> start!16968 (=> (not res!81029) (not e!112469))))

(declare-fun valid!931 (LongMapFixedSize!2196) Bool)

(assert (=> start!16968 (= res!81029 (valid!931 thiss!1248))))

(assert (=> start!16968 e!112469))

(declare-fun e!112468 () Bool)

(assert (=> start!16968 e!112468))

(assert (=> start!16968 true))

(declare-fun array_inv!2139 (array!7058) Bool)

(declare-fun array_inv!2140 (array!7060) Bool)

(assert (=> b!170425 (= e!112468 (and tp!15233 tp_is_empty!3975 (array_inv!2139 (_keys!5370 thiss!1248)) (array_inv!2140 (_values!3523 thiss!1248)) e!112466))))

(declare-fun b!170426 () Bool)

(declare-fun res!81030 () Bool)

(assert (=> b!170426 (=> (not res!81030) (not e!112469))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!170426 (= res!81030 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!16968 res!81029) b!170426))

(assert (= (and b!170426 res!81030) b!170422))

(assert (= (and b!170422 res!81028) b!170421))

(assert (= (and b!170423 condMapEmpty!6749) mapIsEmpty!6749))

(assert (= (and b!170423 (not condMapEmpty!6749)) mapNonEmpty!6749))

(get-info :version)

(assert (= (and mapNonEmpty!6749 ((_ is ValueCellFull!1644) mapValue!6749)) b!170424))

(assert (= (and b!170423 ((_ is ValueCellFull!1644) mapDefault!6749)) b!170420))

(assert (= b!170425 b!170423))

(assert (= start!16968 b!170425))

(declare-fun m!198941 () Bool)

(assert (=> mapNonEmpty!6749 m!198941))

(declare-fun m!198943 () Bool)

(assert (=> b!170422 m!198943))

(declare-fun m!198945 () Bool)

(assert (=> start!16968 m!198945))

(declare-fun m!198947 () Bool)

(assert (=> b!170425 m!198947))

(declare-fun m!198949 () Bool)

(assert (=> b!170425 m!198949))

(check-sat tp_is_empty!3975 (not b!170425) (not mapNonEmpty!6749) (not start!16968) (not b_next!4203) (not b!170422) b_and!10635)
(check-sat b_and!10635 (not b_next!4203))
