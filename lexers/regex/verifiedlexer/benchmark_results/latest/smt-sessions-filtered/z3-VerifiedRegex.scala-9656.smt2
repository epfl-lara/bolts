; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!506926 () Bool)

(assert start!506926)

(declare-fun b!4853945 () Bool)

(declare-fun b_free!130321 () Bool)

(declare-fun b_next!131111 () Bool)

(assert (=> b!4853945 (= b_free!130321 (not b_next!131111))))

(declare-fun tp!1365290 () Bool)

(declare-fun b_and!342133 () Bool)

(assert (=> b!4853945 (= tp!1365290 b_and!342133)))

(declare-fun e!3034496 () Bool)

(declare-fun tp_is_empty!35455 () Bool)

(declare-fun e!3034498 () Bool)

(declare-datatypes ((array!18770 0))(
  ( (array!18771 (arr!8375 (Array (_ BitVec 32) (_ BitVec 64))) (size!36649 (_ BitVec 32))) )
))
(declare-datatypes ((V!17815 0))(
  ( (V!17816 (val!22360 Int)) )
))
(declare-datatypes ((array!18772 0))(
  ( (array!18773 (arr!8376 (Array (_ BitVec 32) V!17815)) (size!36650 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10190 0))(
  ( (LongMapFixedSize!10191 (defaultEntry!5517 Int) (mask!15386 (_ BitVec 32)) (extraKeys!5375 (_ BitVec 32)) (zeroValue!5388 V!17815) (minValue!5388 V!17815) (_size!10214 (_ BitVec 32)) (_keys!5444 array!18770) (_values!5413 array!18772) (_vacant!5160 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20143 0))(
  ( (Cell!20144 (v!49573 LongMapFixedSize!10190)) )
))
(declare-datatypes ((MutLongMap!5095 0))(
  ( (LongMap!5095 (underlying!10396 Cell!20143)) (MutLongMapExt!5094 (__x!33827 Int)) )
))
(declare-fun thiss!47245 () MutLongMap!5095)

(declare-fun array_inv!6051 (array!18770) Bool)

(declare-fun array_inv!6052 (array!18772) Bool)

(assert (=> b!4853945 (= e!3034496 (and tp!1365290 tp_is_empty!35455 (array_inv!6051 (_keys!5444 (v!49573 (underlying!10396 thiss!47245)))) (array_inv!6052 (_values!5413 (v!49573 (underlying!10396 thiss!47245)))) e!3034498))))

(declare-fun res!2072400 () Bool)

(declare-fun e!3034494 () Bool)

(assert (=> start!506926 (=> (not res!2072400) (not e!3034494))))

(get-info :version)

(assert (=> start!506926 (= res!2072400 ((_ is LongMap!5095) thiss!47245))))

(assert (=> start!506926 e!3034494))

(declare-fun e!3034499 () Bool)

(assert (=> start!506926 e!3034499))

(assert (=> start!506926 true))

(declare-fun b!4853946 () Bool)

(declare-fun e!3034495 () Bool)

(assert (=> b!4853946 (= e!3034499 e!3034495)))

(declare-fun mapNonEmpty!22481 () Bool)

(declare-fun mapRes!22481 () Bool)

(declare-fun tp!1365289 () Bool)

(assert (=> mapNonEmpty!22481 (= mapRes!22481 (and tp!1365289 tp_is_empty!35455))))

(declare-fun mapKey!22481 () (_ BitVec 32))

(declare-fun mapValue!22481 () V!17815)

(declare-fun mapRest!22481 () (Array (_ BitVec 32) V!17815))

(assert (=> mapNonEmpty!22481 (= (arr!8376 (_values!5413 (v!49573 (underlying!10396 thiss!47245)))) (store mapRest!22481 mapKey!22481 mapValue!22481))))

(declare-fun b!4853947 () Bool)

(assert (=> b!4853947 (= e!3034495 e!3034496)))

(declare-fun b!4853948 () Bool)

(assert (=> b!4853948 (= e!3034498 (and tp_is_empty!35455 mapRes!22481))))

(declare-fun condMapEmpty!22481 () Bool)

(declare-fun mapDefault!22481 () V!17815)

(assert (=> b!4853948 (= condMapEmpty!22481 (= (arr!8376 (_values!5413 (v!49573 (underlying!10396 thiss!47245)))) ((as const (Array (_ BitVec 32) V!17815)) mapDefault!22481)))))

(declare-fun mapIsEmpty!22481 () Bool)

(assert (=> mapIsEmpty!22481 mapRes!22481))

(declare-fun b!4853949 () Bool)

(declare-fun res!2072399 () Bool)

(assert (=> b!4853949 (=> (not res!2072399) (not e!3034494))))

(declare-fun valid!4122 (MutLongMap!5095) Bool)

(assert (=> b!4853949 (= res!2072399 (valid!4122 thiss!47245))))

(declare-fun b!4853950 () Bool)

(assert (=> b!4853950 (= e!3034494 false)))

(declare-fun lt!1990816 () V!17815)

(declare-fun key!7003 () (_ BitVec 64))

(declare-fun apply!13491 (LongMapFixedSize!10190 (_ BitVec 64)) V!17815)

(assert (=> b!4853950 (= lt!1990816 (apply!13491 (v!49573 (underlying!10396 thiss!47245)) key!7003))))

(assert (= (and start!506926 res!2072400) b!4853949))

(assert (= (and b!4853949 res!2072399) b!4853950))

(assert (= (and b!4853948 condMapEmpty!22481) mapIsEmpty!22481))

(assert (= (and b!4853948 (not condMapEmpty!22481)) mapNonEmpty!22481))

(assert (= b!4853945 b!4853948))

(assert (= b!4853947 b!4853945))

(assert (= b!4853946 b!4853947))

(assert (= (and start!506926 ((_ is LongMap!5095) thiss!47245)) b!4853946))

(declare-fun m!5851998 () Bool)

(assert (=> b!4853945 m!5851998))

(declare-fun m!5852000 () Bool)

(assert (=> b!4853945 m!5852000))

(declare-fun m!5852002 () Bool)

(assert (=> mapNonEmpty!22481 m!5852002))

(declare-fun m!5852004 () Bool)

(assert (=> b!4853949 m!5852004))

(declare-fun m!5852006 () Bool)

(assert (=> b!4853950 m!5852006))

(check-sat tp_is_empty!35455 (not mapNonEmpty!22481) (not b_next!131111) b_and!342133 (not b!4853949) (not b!4853945) (not b!4853950))
(check-sat b_and!342133 (not b_next!131111))
