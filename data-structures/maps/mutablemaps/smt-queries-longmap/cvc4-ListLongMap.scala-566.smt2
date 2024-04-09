; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15464 () Bool)

(assert start!15464)

(declare-fun b!153481 () Bool)

(declare-fun b_free!3189 () Bool)

(declare-fun b_next!3189 () Bool)

(assert (=> b!153481 (= b_free!3189 (not b_next!3189))))

(declare-fun tp!12085 () Bool)

(declare-fun b_and!9565 () Bool)

(assert (=> b!153481 (= tp!12085 b_and!9565)))

(declare-fun b!153471 () Bool)

(declare-fun b_free!3191 () Bool)

(declare-fun b_next!3191 () Bool)

(assert (=> b!153471 (= b_free!3191 (not b_next!3191))))

(declare-fun tp!12084 () Bool)

(declare-fun b_and!9567 () Bool)

(assert (=> b!153471 (= tp!12084 b_and!9567)))

(declare-fun b!153470 () Bool)

(declare-datatypes ((Unit!4889 0))(
  ( (Unit!4890) )
))
(declare-fun e!100215 () Unit!4889)

(declare-fun Unit!4891 () Unit!4889)

(assert (=> b!153470 (= e!100215 Unit!4891)))

(declare-fun mapNonEmpty!5119 () Bool)

(declare-fun mapRes!5120 () Bool)

(declare-fun tp!12086 () Bool)

(declare-fun e!100220 () Bool)

(assert (=> mapNonEmpty!5119 (= mapRes!5120 (and tp!12086 e!100220))))

(declare-datatypes ((V!3661 0))(
  ( (V!3662 (val!1550 Int)) )
))
(declare-datatypes ((array!5070 0))(
  ( (array!5071 (arr!2394 (Array (_ BitVec 32) (_ BitVec 64))) (size!2671 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1162 0))(
  ( (ValueCellFull!1162 (v!3399 V!3661)) (EmptyCell!1162) )
))
(declare-datatypes ((array!5072 0))(
  ( (array!5073 (arr!2395 (Array (_ BitVec 32) ValueCell!1162)) (size!2672 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1232 0))(
  ( (LongMapFixedSize!1233 (defaultEntry!3055 Int) (mask!7453 (_ BitVec 32)) (extraKeys!2796 (_ BitVec 32)) (zeroValue!2898 V!3661) (minValue!2898 V!3661) (_size!665 (_ BitVec 32)) (_keys!4828 array!5070) (_values!3038 array!5072) (_vacant!665 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1010 0))(
  ( (Cell!1011 (v!3400 LongMapFixedSize!1232)) )
))
(declare-datatypes ((LongMap!1010 0))(
  ( (LongMap!1011 (underlying!516 Cell!1010)) )
))
(declare-fun thiss!992 () LongMap!1010)

(declare-fun mapRest!5119 () (Array (_ BitVec 32) ValueCell!1162))

(declare-fun mapValue!5120 () ValueCell!1162)

(declare-fun mapKey!5120 () (_ BitVec 32))

(assert (=> mapNonEmpty!5119 (= (arr!2395 (_values!3038 (v!3400 (underlying!516 thiss!992)))) (store mapRest!5119 mapKey!5120 mapValue!5120))))

(declare-fun e!100216 () Bool)

(declare-fun tp_is_empty!3011 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!1232)

(declare-fun e!100218 () Bool)

(declare-fun array_inv!1485 (array!5070) Bool)

(declare-fun array_inv!1486 (array!5072) Bool)

(assert (=> b!153471 (= e!100218 (and tp!12084 tp_is_empty!3011 (array_inv!1485 (_keys!4828 newMap!16)) (array_inv!1486 (_values!3038 newMap!16)) e!100216))))

(declare-fun b!153472 () Bool)

(declare-fun res!72552 () Bool)

(declare-fun e!100224 () Bool)

(assert (=> b!153472 (=> (not res!72552) (not e!100224))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!153472 (= res!72552 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2671 (_keys!4828 (v!3400 (underlying!516 thiss!992)))))))))

(declare-fun b!153473 () Bool)

(declare-fun res!72554 () Bool)

(assert (=> b!153473 (=> (not res!72554) (not e!100224))))

(declare-fun valid!602 (LongMapFixedSize!1232) Bool)

(assert (=> b!153473 (= res!72554 (valid!602 newMap!16))))

(declare-fun b!153475 () Bool)

(declare-fun e!100211 () Bool)

(assert (=> b!153475 (= e!100211 tp_is_empty!3011)))

(declare-fun b!153476 () Bool)

(declare-fun e!100219 () Bool)

(assert (=> b!153476 (= e!100219 (and e!100211 mapRes!5120))))

(declare-fun condMapEmpty!5120 () Bool)

(declare-fun mapDefault!5119 () ValueCell!1162)

