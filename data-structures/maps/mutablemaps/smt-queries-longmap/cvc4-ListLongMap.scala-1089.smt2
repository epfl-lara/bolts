; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22232 () Bool)

(assert start!22232)

(declare-fun b!233136 () Bool)

(declare-fun b_free!6287 () Bool)

(declare-fun b_next!6287 () Bool)

(assert (=> b!233136 (= b_free!6287 (not b_next!6287))))

(declare-fun tp!22003 () Bool)

(declare-fun b_and!13203 () Bool)

(assert (=> b!233136 (= tp!22003 b_and!13203)))

(declare-fun b!233131 () Bool)

(declare-fun res!114448 () Bool)

(declare-fun e!151458 () Bool)

(assert (=> b!233131 (=> (not res!114448) (not e!151458))))

(declare-datatypes ((V!7845 0))(
  ( (V!7846 (val!3119 Int)) )
))
(declare-datatypes ((ValueCell!2731 0))(
  ( (ValueCellFull!2731 (v!5135 V!7845)) (EmptyCell!2731) )
))
(declare-datatypes ((array!11540 0))(
  ( (array!11541 (arr!5489 (Array (_ BitVec 32) ValueCell!2731)) (size!5822 (_ BitVec 32))) )
))
(declare-datatypes ((array!11542 0))(
  ( (array!11543 (arr!5490 (Array (_ BitVec 32) (_ BitVec 64))) (size!5823 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3362 0))(
  ( (LongMapFixedSize!3363 (defaultEntry!4340 Int) (mask!10262 (_ BitVec 32)) (extraKeys!4077 (_ BitVec 32)) (zeroValue!4181 V!7845) (minValue!4181 V!7845) (_size!1730 (_ BitVec 32)) (_keys!6394 array!11542) (_values!4323 array!11540) (_vacant!1730 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3362)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4596 0))(
  ( (tuple2!4597 (_1!2308 (_ BitVec 64)) (_2!2308 V!7845)) )
))
(declare-datatypes ((List!3533 0))(
  ( (Nil!3530) (Cons!3529 (h!4177 tuple2!4596) (t!8500 List!3533)) )
))
(declare-datatypes ((ListLongMap!3523 0))(
  ( (ListLongMap!3524 (toList!1777 List!3533)) )
))
(declare-fun contains!1639 (ListLongMap!3523 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1300 (array!11542 array!11540 (_ BitVec 32) (_ BitVec 32) V!7845 V!7845 (_ BitVec 32) Int) ListLongMap!3523)

(assert (=> b!233131 (= res!114448 (contains!1639 (getCurrentListMap!1300 (_keys!6394 thiss!1504) (_values!4323 thiss!1504) (mask!10262 thiss!1504) (extraKeys!4077 thiss!1504) (zeroValue!4181 thiss!1504) (minValue!4181 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4340 thiss!1504)) key!932))))

(declare-fun b!233132 () Bool)

(declare-fun e!151457 () Bool)

(declare-fun tp_is_empty!6149 () Bool)

(assert (=> b!233132 (= e!151457 tp_is_empty!6149)))

(declare-fun b!233133 () Bool)

(declare-fun e!151456 () Bool)

(declare-fun mapRes!10393 () Bool)

(assert (=> b!233133 (= e!151456 (and e!151457 mapRes!10393))))

(declare-fun condMapEmpty!10393 () Bool)

(declare-fun mapDefault!10393 () ValueCell!2731)

