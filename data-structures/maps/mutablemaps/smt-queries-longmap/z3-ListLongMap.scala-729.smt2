; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16980 () Bool)

(assert start!16980)

(declare-fun b!170551 () Bool)

(declare-fun b_free!4215 () Bool)

(declare-fun b_next!4215 () Bool)

(assert (=> b!170551 (= b_free!4215 (not b_next!4215))))

(declare-fun tp!15268 () Bool)

(declare-fun b_and!10647 () Bool)

(assert (=> b!170551 (= tp!15268 b_and!10647)))

(declare-fun b!170546 () Bool)

(declare-fun e!112576 () Bool)

(declare-fun tp_is_empty!3987 () Bool)

(assert (=> b!170546 (= e!112576 tp_is_empty!3987)))

(declare-fun mapNonEmpty!6767 () Bool)

(declare-fun mapRes!6767 () Bool)

(declare-fun tp!15269 () Bool)

(declare-fun e!112572 () Bool)

(assert (=> mapNonEmpty!6767 (= mapRes!6767 (and tp!15269 e!112572))))

(declare-datatypes ((V!4963 0))(
  ( (V!4964 (val!2038 Int)) )
))
(declare-datatypes ((ValueCell!1650 0))(
  ( (ValueCellFull!1650 (v!3899 V!4963)) (EmptyCell!1650) )
))
(declare-fun mapValue!6767 () ValueCell!1650)

(declare-datatypes ((array!7082 0))(
  ( (array!7083 (arr!3370 (Array (_ BitVec 32) (_ BitVec 64))) (size!3663 (_ BitVec 32))) )
))
(declare-datatypes ((array!7084 0))(
  ( (array!7085 (arr!3371 (Array (_ BitVec 32) ValueCell!1650)) (size!3664 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2208 0))(
  ( (LongMapFixedSize!2209 (defaultEntry!3546 Int) (mask!8364 (_ BitVec 32)) (extraKeys!3287 (_ BitVec 32)) (zeroValue!3389 V!4963) (minValue!3389 V!4963) (_size!1153 (_ BitVec 32)) (_keys!5376 array!7082) (_values!3529 array!7084) (_vacant!1153 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2208)

(declare-fun mapKey!6767 () (_ BitVec 32))

(declare-fun mapRest!6767 () (Array (_ BitVec 32) ValueCell!1650))

(assert (=> mapNonEmpty!6767 (= (arr!3371 (_values!3529 thiss!1248)) (store mapRest!6767 mapKey!6767 mapValue!6767))))

(declare-fun b!170547 () Bool)

(declare-fun res!81084 () Bool)

(declare-fun e!112577 () Bool)

(assert (=> b!170547 (=> (not res!81084) (not e!112577))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!170547 (= res!81084 (validMask!0 (mask!8364 thiss!1248)))))

(declare-fun b!170548 () Bool)

(assert (=> b!170548 (= e!112572 tp_is_empty!3987)))

(declare-fun b!170549 () Bool)

(assert (=> b!170549 (= e!112577 (and (= (size!3664 (_values!3529 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8364 thiss!1248))) (= (size!3663 (_keys!5376 thiss!1248)) (size!3664 (_values!3529 thiss!1248))) (bvsge (mask!8364 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3287 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3287 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!3287 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!3287 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!3287 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!3287 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (= (bvand (bvor (extraKeys!3287 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!6767 () Bool)

(assert (=> mapIsEmpty!6767 mapRes!6767))

(declare-fun res!81083 () Bool)

(assert (=> start!16980 (=> (not res!81083) (not e!112577))))

(declare-fun valid!933 (LongMapFixedSize!2208) Bool)

(assert (=> start!16980 (= res!81083 (valid!933 thiss!1248))))

(assert (=> start!16980 e!112577))

(declare-fun e!112574 () Bool)

(assert (=> start!16980 e!112574))

(assert (=> start!16980 true))

(declare-fun b!170550 () Bool)

(declare-fun e!112575 () Bool)

(assert (=> b!170550 (= e!112575 (and e!112576 mapRes!6767))))

(declare-fun condMapEmpty!6767 () Bool)

(declare-fun mapDefault!6767 () ValueCell!1650)

(assert (=> b!170550 (= condMapEmpty!6767 (= (arr!3371 (_values!3529 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1650)) mapDefault!6767)))))

(declare-fun array_inv!2145 (array!7082) Bool)

(declare-fun array_inv!2146 (array!7084) Bool)

(assert (=> b!170551 (= e!112574 (and tp!15268 tp_is_empty!3987 (array_inv!2145 (_keys!5376 thiss!1248)) (array_inv!2146 (_values!3529 thiss!1248)) e!112575))))

(declare-fun b!170552 () Bool)

(declare-fun res!81082 () Bool)

(assert (=> b!170552 (=> (not res!81082) (not e!112577))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!170552 (= res!81082 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!16980 res!81083) b!170552))

(assert (= (and b!170552 res!81082) b!170547))

(assert (= (and b!170547 res!81084) b!170549))

(assert (= (and b!170550 condMapEmpty!6767) mapIsEmpty!6767))

(assert (= (and b!170550 (not condMapEmpty!6767)) mapNonEmpty!6767))

(get-info :version)

(assert (= (and mapNonEmpty!6767 ((_ is ValueCellFull!1650) mapValue!6767)) b!170548))

(assert (= (and b!170550 ((_ is ValueCellFull!1650) mapDefault!6767)) b!170546))

(assert (= b!170551 b!170550))

(assert (= start!16980 b!170551))

(declare-fun m!199001 () Bool)

(assert (=> mapNonEmpty!6767 m!199001))

(declare-fun m!199003 () Bool)

(assert (=> b!170547 m!199003))

(declare-fun m!199005 () Bool)

(assert (=> start!16980 m!199005))

(declare-fun m!199007 () Bool)

(assert (=> b!170551 m!199007))

(declare-fun m!199009 () Bool)

(assert (=> b!170551 m!199009))

(check-sat (not b!170547) (not b_next!4215) b_and!10647 tp_is_empty!3987 (not mapNonEmpty!6767) (not start!16980) (not b!170551))
(check-sat b_and!10647 (not b_next!4215))
