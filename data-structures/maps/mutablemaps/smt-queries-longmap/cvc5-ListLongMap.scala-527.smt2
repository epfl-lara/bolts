; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13164 () Bool)

(assert start!13164)

(declare-fun b!115750 () Bool)

(declare-fun b_free!2713 () Bool)

(declare-fun b_next!2713 () Bool)

(assert (=> b!115750 (= b_free!2713 (not b_next!2713))))

(declare-fun tp!10502 () Bool)

(declare-fun b_and!7205 () Bool)

(assert (=> b!115750 (= tp!10502 b_and!7205)))

(declare-fun b!115758 () Bool)

(declare-fun b_free!2715 () Bool)

(declare-fun b_next!2715 () Bool)

(assert (=> b!115758 (= b_free!2715 (not b_next!2715))))

(declare-fun tp!10503 () Bool)

(declare-fun b_and!7207 () Bool)

(assert (=> b!115758 (= tp!10503 b_and!7207)))

(declare-fun mapNonEmpty!4251 () Bool)

(declare-fun mapRes!4252 () Bool)

(declare-fun tp!10501 () Bool)

(declare-fun e!75537 () Bool)

(assert (=> mapNonEmpty!4251 (= mapRes!4252 (and tp!10501 e!75537))))

(declare-fun mapKey!4252 () (_ BitVec 32))

(declare-datatypes ((V!3345 0))(
  ( (V!3346 (val!1431 Int)) )
))
(declare-datatypes ((ValueCell!1043 0))(
  ( (ValueCellFull!1043 (v!3027 V!3345)) (EmptyCell!1043) )
))
(declare-fun mapValue!4252 () ValueCell!1043)

(declare-fun mapRest!4252 () (Array (_ BitVec 32) ValueCell!1043))

(declare-datatypes ((array!4548 0))(
  ( (array!4549 (arr!2156 (Array (_ BitVec 32) (_ BitVec 64))) (size!2416 (_ BitVec 32))) )
))
(declare-datatypes ((array!4550 0))(
  ( (array!4551 (arr!2157 (Array (_ BitVec 32) ValueCell!1043)) (size!2417 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!994 0))(
  ( (LongMapFixedSize!995 (defaultEntry!2706 Int) (mask!6916 (_ BitVec 32)) (extraKeys!2495 (_ BitVec 32)) (zeroValue!2573 V!3345) (minValue!2573 V!3345) (_size!546 (_ BitVec 32)) (_keys!4428 array!4548) (_values!2689 array!4550) (_vacant!546 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!788 0))(
  ( (Cell!789 (v!3028 LongMapFixedSize!994)) )
))
(declare-datatypes ((LongMap!788 0))(
  ( (LongMap!789 (underlying!405 Cell!788)) )
))
(declare-fun thiss!992 () LongMap!788)

(assert (=> mapNonEmpty!4251 (= (arr!2157 (_values!2689 (v!3028 (underlying!405 thiss!992)))) (store mapRest!4252 mapKey!4252 mapValue!4252))))

(declare-fun b!115747 () Bool)

(declare-fun tp_is_empty!2773 () Bool)

(assert (=> b!115747 (= e!75537 tp_is_empty!2773)))

(declare-fun b!115748 () Bool)

(declare-fun res!56751 () Bool)

(declare-fun e!75535 () Bool)

(assert (=> b!115748 (=> (not res!56751) (not e!75535))))

(declare-fun newMap!16 () LongMapFixedSize!994)

(declare-fun valid!462 (LongMapFixedSize!994) Bool)

(assert (=> b!115748 (= res!56751 (valid!462 newMap!16))))

(declare-fun mapIsEmpty!4251 () Bool)

(declare-fun mapRes!4251 () Bool)

(assert (=> mapIsEmpty!4251 mapRes!4251))

(declare-fun b!115749 () Bool)

(declare-fun e!75530 () Bool)

(assert (=> b!115749 (= e!75530 tp_is_empty!2773)))

(declare-fun e!75529 () Bool)

(declare-fun e!75527 () Bool)

(declare-fun array_inv!1303 (array!4548) Bool)

(declare-fun array_inv!1304 (array!4550) Bool)

(assert (=> b!115750 (= e!75527 (and tp!10502 tp_is_empty!2773 (array_inv!1303 (_keys!4428 (v!3028 (underlying!405 thiss!992)))) (array_inv!1304 (_values!2689 (v!3028 (underlying!405 thiss!992)))) e!75529))))

(declare-fun res!56755 () Bool)

(assert (=> start!13164 (=> (not res!56755) (not e!75535))))

(declare-fun valid!463 (LongMap!788) Bool)

(assert (=> start!13164 (= res!56755 (valid!463 thiss!992))))

(assert (=> start!13164 e!75535))

(declare-fun e!75533 () Bool)

(assert (=> start!13164 e!75533))

(assert (=> start!13164 true))

(declare-fun e!75534 () Bool)

(assert (=> start!13164 e!75534))

(declare-fun b!115751 () Bool)

(declare-fun e!75528 () Bool)

(assert (=> b!115751 (= e!75529 (and e!75528 mapRes!4252))))

(declare-fun condMapEmpty!4252 () Bool)

(declare-fun mapDefault!4252 () ValueCell!1043)

