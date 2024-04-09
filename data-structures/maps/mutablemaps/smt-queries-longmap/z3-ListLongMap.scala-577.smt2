; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15618 () Bool)

(assert start!15618)

(declare-fun b!155369 () Bool)

(declare-fun b_free!3273 () Bool)

(declare-fun b_next!3273 () Bool)

(assert (=> b!155369 (= b_free!3273 (not b_next!3273))))

(declare-fun tp!12344 () Bool)

(declare-fun b_and!9705 () Bool)

(assert (=> b!155369 (= tp!12344 b_and!9705)))

(declare-fun b!155365 () Bool)

(declare-fun res!73390 () Bool)

(declare-fun e!101514 () Bool)

(assert (=> b!155365 (=> (not res!73390) (not e!101514))))

(declare-datatypes ((V!3747 0))(
  ( (V!3748 (val!1582 Int)) )
))
(declare-datatypes ((ValueCell!1194 0))(
  ( (ValueCellFull!1194 (v!3443 V!3747)) (EmptyCell!1194) )
))
(declare-datatypes ((array!5202 0))(
  ( (array!5203 (arr!2458 (Array (_ BitVec 32) (_ BitVec 64))) (size!2736 (_ BitVec 32))) )
))
(declare-datatypes ((array!5204 0))(
  ( (array!5205 (arr!2459 (Array (_ BitVec 32) ValueCell!1194)) (size!2737 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1296 0))(
  ( (LongMapFixedSize!1297 (defaultEntry!3090 Int) (mask!7513 (_ BitVec 32)) (extraKeys!2831 (_ BitVec 32)) (zeroValue!2933 V!3747) (minValue!2933 V!3747) (_size!697 (_ BitVec 32)) (_keys!4865 array!5202) (_values!3073 array!5204) (_vacant!697 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1296)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!155365 (= res!73390 (validMask!0 (mask!7513 thiss!1248)))))

(declare-fun b!155366 () Bool)

(declare-fun res!73389 () Bool)

(assert (=> b!155366 (=> (not res!73389) (not e!101514))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5202 (_ BitVec 32)) Bool)

(assert (=> b!155366 (= res!73389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4865 thiss!1248) (mask!7513 thiss!1248)))))

(declare-fun res!73393 () Bool)

(assert (=> start!15618 (=> (not res!73393) (not e!101514))))

(declare-fun valid!628 (LongMapFixedSize!1296) Bool)

(assert (=> start!15618 (= res!73393 (valid!628 thiss!1248))))

(assert (=> start!15618 e!101514))

(declare-fun e!101511 () Bool)

(assert (=> start!15618 e!101511))

(assert (=> start!15618 true))

(declare-fun b!155367 () Bool)

(declare-fun e!101512 () Bool)

(declare-fun tp_is_empty!3075 () Bool)

(assert (=> b!155367 (= e!101512 tp_is_empty!3075)))

(declare-fun b!155368 () Bool)

(assert (=> b!155368 (= e!101514 false)))

(declare-fun lt!81383 () Bool)

(declare-datatypes ((List!1840 0))(
  ( (Nil!1837) (Cons!1836 (h!2445 (_ BitVec 64)) (t!6650 List!1840)) )
))
(declare-fun arrayNoDuplicates!0 (array!5202 (_ BitVec 32) List!1840) Bool)

(assert (=> b!155368 (= lt!81383 (arrayNoDuplicates!0 (_keys!4865 thiss!1248) #b00000000000000000000000000000000 Nil!1837))))

(declare-fun mapNonEmpty!5255 () Bool)

(declare-fun mapRes!5255 () Bool)

(declare-fun tp!12343 () Bool)

(assert (=> mapNonEmpty!5255 (= mapRes!5255 (and tp!12343 e!101512))))

(declare-fun mapValue!5255 () ValueCell!1194)

(declare-fun mapKey!5255 () (_ BitVec 32))

(declare-fun mapRest!5255 () (Array (_ BitVec 32) ValueCell!1194))

(assert (=> mapNonEmpty!5255 (= (arr!2459 (_values!3073 thiss!1248)) (store mapRest!5255 mapKey!5255 mapValue!5255))))

(declare-fun e!101516 () Bool)

(declare-fun array_inv!1533 (array!5202) Bool)

(declare-fun array_inv!1534 (array!5204) Bool)

(assert (=> b!155369 (= e!101511 (and tp!12344 tp_is_empty!3075 (array_inv!1533 (_keys!4865 thiss!1248)) (array_inv!1534 (_values!3073 thiss!1248)) e!101516))))

(declare-fun b!155370 () Bool)

(declare-fun res!73391 () Bool)

(assert (=> b!155370 (=> (not res!73391) (not e!101514))))

(assert (=> b!155370 (= res!73391 (and (= (size!2737 (_values!3073 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7513 thiss!1248))) (= (size!2736 (_keys!4865 thiss!1248)) (size!2737 (_values!3073 thiss!1248))) (bvsge (mask!7513 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2831 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2831 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2831 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2831 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2831 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2831 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2831 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!5255 () Bool)

(assert (=> mapIsEmpty!5255 mapRes!5255))

(declare-fun b!155371 () Bool)

(declare-fun e!101513 () Bool)

(assert (=> b!155371 (= e!101516 (and e!101513 mapRes!5255))))

(declare-fun condMapEmpty!5255 () Bool)

(declare-fun mapDefault!5255 () ValueCell!1194)

(assert (=> b!155371 (= condMapEmpty!5255 (= (arr!2459 (_values!3073 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1194)) mapDefault!5255)))))

(declare-fun b!155372 () Bool)

(declare-fun res!73392 () Bool)

(assert (=> b!155372 (=> (not res!73392) (not e!101514))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155372 (= res!73392 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!155373 () Bool)

(assert (=> b!155373 (= e!101513 tp_is_empty!3075)))

(assert (= (and start!15618 res!73393) b!155372))

(assert (= (and b!155372 res!73392) b!155365))

(assert (= (and b!155365 res!73390) b!155370))

(assert (= (and b!155370 res!73391) b!155366))

(assert (= (and b!155366 res!73389) b!155368))

(assert (= (and b!155371 condMapEmpty!5255) mapIsEmpty!5255))

(assert (= (and b!155371 (not condMapEmpty!5255)) mapNonEmpty!5255))

(get-info :version)

(assert (= (and mapNonEmpty!5255 ((_ is ValueCellFull!1194) mapValue!5255)) b!155367))

(assert (= (and b!155371 ((_ is ValueCellFull!1194) mapDefault!5255)) b!155373))

(assert (= b!155369 b!155371))

(assert (= start!15618 b!155369))

(declare-fun m!189301 () Bool)

(assert (=> b!155369 m!189301))

(declare-fun m!189303 () Bool)

(assert (=> b!155369 m!189303))

(declare-fun m!189305 () Bool)

(assert (=> b!155365 m!189305))

(declare-fun m!189307 () Bool)

(assert (=> start!15618 m!189307))

(declare-fun m!189309 () Bool)

(assert (=> b!155368 m!189309))

(declare-fun m!189311 () Bool)

(assert (=> b!155366 m!189311))

(declare-fun m!189313 () Bool)

(assert (=> mapNonEmpty!5255 m!189313))

(check-sat (not b_next!3273) (not b!155365) (not b!155368) (not b!155369) b_and!9705 (not mapNonEmpty!5255) (not b!155366) (not start!15618) tp_is_empty!3075)
(check-sat b_and!9705 (not b_next!3273))
