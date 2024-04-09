; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15836 () Bool)

(assert start!15836)

(declare-fun b!157626 () Bool)

(declare-fun b_free!3451 () Bool)

(declare-fun b_next!3451 () Bool)

(assert (=> b!157626 (= b_free!3451 (not b_next!3451))))

(declare-fun tp!12889 () Bool)

(declare-fun b_and!9883 () Bool)

(assert (=> b!157626 (= tp!12889 b_and!9883)))

(declare-fun e!103242 () Bool)

(declare-fun e!103241 () Bool)

(declare-fun tp_is_empty!3253 () Bool)

(declare-datatypes ((V!3985 0))(
  ( (V!3986 (val!1671 Int)) )
))
(declare-datatypes ((ValueCell!1283 0))(
  ( (ValueCellFull!1283 (v!3532 V!3985)) (EmptyCell!1283) )
))
(declare-datatypes ((array!5564 0))(
  ( (array!5565 (arr!2636 (Array (_ BitVec 32) (_ BitVec 64))) (size!2916 (_ BitVec 32))) )
))
(declare-datatypes ((array!5566 0))(
  ( (array!5567 (arr!2637 (Array (_ BitVec 32) ValueCell!1283)) (size!2917 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1474 0))(
  ( (LongMapFixedSize!1475 (defaultEntry!3179 Int) (mask!7667 (_ BitVec 32)) (extraKeys!2920 (_ BitVec 32)) (zeroValue!3022 V!3985) (minValue!3022 V!3985) (_size!786 (_ BitVec 32)) (_keys!4956 array!5564) (_values!3162 array!5566) (_vacant!786 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1474)

(declare-fun array_inv!1669 (array!5564) Bool)

(declare-fun array_inv!1670 (array!5566) Bool)

(assert (=> b!157626 (= e!103241 (and tp!12889 tp_is_empty!3253 (array_inv!1669 (_keys!4956 thiss!1248)) (array_inv!1670 (_values!3162 thiss!1248)) e!103242))))

(declare-fun mapNonEmpty!5533 () Bool)

(declare-fun mapRes!5533 () Bool)

(declare-fun tp!12888 () Bool)

(declare-fun e!103245 () Bool)

(assert (=> mapNonEmpty!5533 (= mapRes!5533 (and tp!12888 e!103245))))

(declare-fun mapKey!5533 () (_ BitVec 32))

(declare-fun mapRest!5533 () (Array (_ BitVec 32) ValueCell!1283))

(declare-fun mapValue!5533 () ValueCell!1283)

(assert (=> mapNonEmpty!5533 (= (arr!2637 (_values!3162 thiss!1248)) (store mapRest!5533 mapKey!5533 mapValue!5533))))

(declare-fun b!157628 () Bool)

(declare-fun e!103243 () Bool)

(assert (=> b!157628 (= e!103242 (and e!103243 mapRes!5533))))

(declare-fun condMapEmpty!5533 () Bool)

(declare-fun mapDefault!5533 () ValueCell!1283)

