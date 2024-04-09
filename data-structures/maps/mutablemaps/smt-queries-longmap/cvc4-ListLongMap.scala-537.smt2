; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13562 () Bool)

(assert start!13562)

(declare-fun b!124559 () Bool)

(declare-fun b_free!2841 () Bool)

(declare-fun b_next!2841 () Bool)

(assert (=> b!124559 (= b_free!2841 (not b_next!2841))))

(declare-fun tp!10923 () Bool)

(declare-fun b_and!7673 () Bool)

(assert (=> b!124559 (= tp!10923 b_and!7673)))

(declare-fun b!124575 () Bool)

(declare-fun b_free!2843 () Bool)

(declare-fun b_next!2843 () Bool)

(assert (=> b!124575 (= b_free!2843 (not b_next!2843))))

(declare-fun tp!10922 () Bool)

(declare-fun b_and!7675 () Bool)

(assert (=> b!124575 (= tp!10922 b_and!7675)))

(declare-datatypes ((V!3429 0))(
  ( (V!3430 (val!1463 Int)) )
))
(declare-datatypes ((array!4688 0))(
  ( (array!4689 (arr!2220 (Array (_ BitVec 32) (_ BitVec 64))) (size!2483 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1075 0))(
  ( (ValueCellFull!1075 (v!3107 V!3429)) (EmptyCell!1075) )
))
(declare-datatypes ((array!4690 0))(
  ( (array!4691 (arr!2221 (Array (_ BitVec 32) ValueCell!1075)) (size!2484 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1058 0))(
  ( (LongMapFixedSize!1059 (defaultEntry!2765 Int) (mask!7011 (_ BitVec 32)) (extraKeys!2550 (_ BitVec 32)) (zeroValue!2630 V!3429) (minValue!2630 V!3429) (_size!578 (_ BitVec 32)) (_keys!4494 array!4688) (_values!2748 array!4690) (_vacant!578 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!850 0))(
  ( (Cell!851 (v!3108 LongMapFixedSize!1058)) )
))
(declare-datatypes ((LongMap!850 0))(
  ( (LongMap!851 (underlying!436 Cell!850)) )
))
(declare-fun thiss!992 () LongMap!850)

(declare-fun e!81450 () Bool)

(declare-fun e!81452 () Bool)

(declare-fun tp_is_empty!2837 () Bool)

(declare-fun array_inv!1359 (array!4688) Bool)

(declare-fun array_inv!1360 (array!4690) Bool)

(assert (=> b!124559 (= e!81450 (and tp!10923 tp_is_empty!2837 (array_inv!1359 (_keys!4494 (v!3108 (underlying!436 thiss!992)))) (array_inv!1360 (_values!2748 (v!3108 (underlying!436 thiss!992)))) e!81452))))

(declare-fun b!124560 () Bool)

(declare-fun e!81453 () Bool)

(assert (=> b!124560 (= e!81453 tp_is_empty!2837)))

(declare-fun b!124561 () Bool)

(declare-fun res!60364 () Bool)

(declare-fun e!81446 () Bool)

(assert (=> b!124561 (=> (not res!60364) (not e!81446))))

(declare-fun newMap!16 () LongMapFixedSize!1058)

(declare-fun valid!500 (LongMapFixedSize!1058) Bool)

(assert (=> b!124561 (= res!60364 (valid!500 newMap!16))))

(declare-fun b!124562 () Bool)

(declare-fun res!60362 () Bool)

(assert (=> b!124562 (=> (not res!60362) (not e!81446))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!124562 (= res!60362 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2483 (_keys!4494 (v!3108 (underlying!436 thiss!992)))))))))

(declare-fun b!124563 () Bool)

(declare-fun e!81456 () Bool)

(assert (=> b!124563 (= e!81456 e!81450)))

(declare-fun b!124564 () Bool)

(declare-fun e!81442 () Bool)

(declare-fun e!81443 () Bool)

(declare-fun mapRes!4479 () Bool)

(assert (=> b!124564 (= e!81442 (and e!81443 mapRes!4479))))

(declare-fun condMapEmpty!4479 () Bool)

(declare-fun mapDefault!4479 () ValueCell!1075)

