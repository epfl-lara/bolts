; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16974 () Bool)

(assert start!16974)

(declare-fun b!170486 () Bool)

(declare-fun b_free!4209 () Bool)

(declare-fun b_next!4209 () Bool)

(assert (=> b!170486 (= b_free!4209 (not b_next!4209))))

(declare-fun tp!15250 () Bool)

(declare-fun b_and!10641 () Bool)

(assert (=> b!170486 (= tp!15250 b_and!10641)))

(declare-fun mapNonEmpty!6758 () Bool)

(declare-fun mapRes!6758 () Bool)

(declare-fun tp!15251 () Bool)

(declare-fun e!112518 () Bool)

(assert (=> mapNonEmpty!6758 (= mapRes!6758 (and tp!15251 e!112518))))

(declare-datatypes ((V!4955 0))(
  ( (V!4956 (val!2035 Int)) )
))
(declare-datatypes ((ValueCell!1647 0))(
  ( (ValueCellFull!1647 (v!3896 V!4955)) (EmptyCell!1647) )
))
(declare-fun mapValue!6758 () ValueCell!1647)

(declare-fun mapKey!6758 () (_ BitVec 32))

(declare-fun mapRest!6758 () (Array (_ BitVec 32) ValueCell!1647))

(declare-datatypes ((array!7070 0))(
  ( (array!7071 (arr!3364 (Array (_ BitVec 32) (_ BitVec 64))) (size!3657 (_ BitVec 32))) )
))
(declare-datatypes ((array!7072 0))(
  ( (array!7073 (arr!3365 (Array (_ BitVec 32) ValueCell!1647)) (size!3658 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2202 0))(
  ( (LongMapFixedSize!2203 (defaultEntry!3543 Int) (mask!8359 (_ BitVec 32)) (extraKeys!3284 (_ BitVec 32)) (zeroValue!3386 V!4955) (minValue!3386 V!4955) (_size!1150 (_ BitVec 32)) (_keys!5373 array!7070) (_values!3526 array!7072) (_vacant!1150 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2202)

(assert (=> mapNonEmpty!6758 (= (arr!3365 (_values!3526 thiss!1248)) (store mapRest!6758 mapKey!6758 mapValue!6758))))

(declare-fun b!170483 () Bool)

(declare-fun e!112521 () Bool)

(declare-fun e!112519 () Bool)

(assert (=> b!170483 (= e!112521 (and e!112519 mapRes!6758))))

(declare-fun condMapEmpty!6758 () Bool)

(declare-fun mapDefault!6758 () ValueCell!1647)

(assert (=> b!170483 (= condMapEmpty!6758 (= (arr!3365 (_values!3526 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1647)) mapDefault!6758)))))

(declare-fun mapIsEmpty!6758 () Bool)

(assert (=> mapIsEmpty!6758 mapRes!6758))

(declare-fun b!170484 () Bool)

(declare-fun res!81057 () Bool)

(declare-fun e!112520 () Bool)

(assert (=> b!170484 (=> (not res!81057) (not e!112520))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!170484 (= res!81057 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!170485 () Bool)

(declare-fun tp_is_empty!3981 () Bool)

(assert (=> b!170485 (= e!112518 tp_is_empty!3981)))

(declare-fun e!112522 () Bool)

(declare-fun array_inv!2141 (array!7070) Bool)

(declare-fun array_inv!2142 (array!7072) Bool)

(assert (=> b!170486 (= e!112522 (and tp!15250 tp_is_empty!3981 (array_inv!2141 (_keys!5373 thiss!1248)) (array_inv!2142 (_values!3526 thiss!1248)) e!112521))))

(declare-fun b!170488 () Bool)

(assert (=> b!170488 (= e!112520 (and (= (size!3658 (_values!3526 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8359 thiss!1248))) (= (size!3657 (_keys!5373 thiss!1248)) (size!3658 (_values!3526 thiss!1248))) (bvsge (mask!8359 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3284 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3284 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!3284 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!3284 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (not (= (bvand (extraKeys!3284 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!3284 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))))

(declare-fun b!170489 () Bool)

(assert (=> b!170489 (= e!112519 tp_is_empty!3981)))

(declare-fun res!81055 () Bool)

(assert (=> start!16974 (=> (not res!81055) (not e!112520))))

(declare-fun valid!932 (LongMapFixedSize!2202) Bool)

(assert (=> start!16974 (= res!81055 (valid!932 thiss!1248))))

(assert (=> start!16974 e!112520))

(assert (=> start!16974 e!112522))

(assert (=> start!16974 true))

(declare-fun b!170487 () Bool)

(declare-fun res!81056 () Bool)

(assert (=> b!170487 (=> (not res!81056) (not e!112520))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!170487 (= res!81056 (validMask!0 (mask!8359 thiss!1248)))))

(assert (= (and start!16974 res!81055) b!170484))

(assert (= (and b!170484 res!81057) b!170487))

(assert (= (and b!170487 res!81056) b!170488))

(assert (= (and b!170483 condMapEmpty!6758) mapIsEmpty!6758))

(assert (= (and b!170483 (not condMapEmpty!6758)) mapNonEmpty!6758))

(get-info :version)

(assert (= (and mapNonEmpty!6758 ((_ is ValueCellFull!1647) mapValue!6758)) b!170485))

(assert (= (and b!170483 ((_ is ValueCellFull!1647) mapDefault!6758)) b!170489))

(assert (= b!170486 b!170483))

(assert (= start!16974 b!170486))

(declare-fun m!198971 () Bool)

(assert (=> mapNonEmpty!6758 m!198971))

(declare-fun m!198973 () Bool)

(assert (=> b!170486 m!198973))

(declare-fun m!198975 () Bool)

(assert (=> b!170486 m!198975))

(declare-fun m!198977 () Bool)

(assert (=> start!16974 m!198977))

(declare-fun m!198979 () Bool)

(assert (=> b!170487 m!198979))

(check-sat (not start!16974) (not b!170487) tp_is_empty!3981 (not mapNonEmpty!6758) b_and!10641 (not b_next!4209) (not b!170486))
(check-sat b_and!10641 (not b_next!4209))
