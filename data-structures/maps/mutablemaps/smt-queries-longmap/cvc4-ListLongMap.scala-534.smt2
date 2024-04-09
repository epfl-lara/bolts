; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13448 () Bool)

(assert start!13448)

(declare-fun b!123257 () Bool)

(declare-fun b_free!2805 () Bool)

(declare-fun b_next!2805 () Bool)

(assert (=> b!123257 (= b_free!2805 (not b_next!2805))))

(declare-fun tp!10802 () Bool)

(declare-fun b_and!7581 () Bool)

(assert (=> b!123257 (= tp!10802 b_and!7581)))

(declare-fun b!123264 () Bool)

(declare-fun b_free!2807 () Bool)

(declare-fun b_next!2807 () Bool)

(assert (=> b!123264 (= b_free!2807 (not b_next!2807))))

(declare-fun tp!10803 () Bool)

(declare-fun b_and!7583 () Bool)

(assert (=> b!123264 (= tp!10803 b_and!7583)))

(declare-fun b!123256 () Bool)

(declare-fun res!59868 () Bool)

(declare-fun e!80550 () Bool)

(assert (=> b!123256 (=> (not res!59868) (not e!80550))))

(declare-datatypes ((V!3405 0))(
  ( (V!3406 (val!1454 Int)) )
))
(declare-datatypes ((array!4648 0))(
  ( (array!4649 (arr!2202 (Array (_ BitVec 32) (_ BitVec 64))) (size!2464 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1066 0))(
  ( (ValueCellFull!1066 (v!3084 V!3405)) (EmptyCell!1066) )
))
(declare-datatypes ((array!4650 0))(
  ( (array!4651 (arr!2203 (Array (_ BitVec 32) ValueCell!1066)) (size!2465 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1040 0))(
  ( (LongMapFixedSize!1041 (defaultEntry!2753 Int) (mask!6989 (_ BitVec 32)) (extraKeys!2538 (_ BitVec 32)) (zeroValue!2618 V!3405) (minValue!2618 V!3405) (_size!569 (_ BitVec 32)) (_keys!4480 array!4648) (_values!2736 array!4650) (_vacant!569 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1040)

(declare-datatypes ((Cell!832 0))(
  ( (Cell!833 (v!3085 LongMapFixedSize!1040)) )
))
(declare-datatypes ((LongMap!832 0))(
  ( (LongMap!833 (underlying!427 Cell!832)) )
))
(declare-fun thiss!992 () LongMap!832)

(assert (=> b!123256 (= res!59868 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6989 newMap!16)) (_size!569 (v!3085 (underlying!427 thiss!992)))))))

(declare-fun e!80556 () Bool)

(declare-fun tp_is_empty!2819 () Bool)

(declare-fun e!80554 () Bool)

(declare-fun array_inv!1345 (array!4648) Bool)

(declare-fun array_inv!1346 (array!4650) Bool)

(assert (=> b!123257 (= e!80556 (and tp!10802 tp_is_empty!2819 (array_inv!1345 (_keys!4480 (v!3085 (underlying!427 thiss!992)))) (array_inv!1346 (_values!2736 (v!3085 (underlying!427 thiss!992)))) e!80554))))

(declare-fun b!123258 () Bool)

(declare-fun e!80548 () Bool)

(declare-fun e!80549 () Bool)

(declare-fun mapRes!4413 () Bool)

(assert (=> b!123258 (= e!80548 (and e!80549 mapRes!4413))))

(declare-fun condMapEmpty!4413 () Bool)

(declare-fun mapDefault!4414 () ValueCell!1066)

