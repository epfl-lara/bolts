; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16096 () Bool)

(assert start!16096)

(declare-fun b!159756 () Bool)

(declare-fun b_free!3545 () Bool)

(declare-fun b_next!3545 () Bool)

(assert (=> b!159756 (= b_free!3545 (not b_next!3545))))

(declare-fun tp!13205 () Bool)

(declare-fun b_and!9977 () Bool)

(assert (=> b!159756 (= tp!13205 b_and!9977)))

(declare-fun mapNonEmpty!5708 () Bool)

(declare-fun mapRes!5708 () Bool)

(declare-fun tp!13204 () Bool)

(declare-fun e!104536 () Bool)

(assert (=> mapNonEmpty!5708 (= mapRes!5708 (and tp!13204 e!104536))))

(declare-datatypes ((V!4109 0))(
  ( (V!4110 (val!1718 Int)) )
))
(declare-datatypes ((ValueCell!1330 0))(
  ( (ValueCellFull!1330 (v!3579 V!4109)) (EmptyCell!1330) )
))
(declare-fun mapValue!5708 () ValueCell!1330)

(declare-fun mapRest!5708 () (Array (_ BitVec 32) ValueCell!1330))

(declare-datatypes ((array!5772 0))(
  ( (array!5773 (arr!2730 (Array (_ BitVec 32) (_ BitVec 64))) (size!3014 (_ BitVec 32))) )
))
(declare-datatypes ((array!5774 0))(
  ( (array!5775 (arr!2731 (Array (_ BitVec 32) ValueCell!1330)) (size!3015 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1568 0))(
  ( (LongMapFixedSize!1569 (defaultEntry!3226 Int) (mask!7782 (_ BitVec 32)) (extraKeys!2967 (_ BitVec 32)) (zeroValue!3069 V!4109) (minValue!3069 V!4109) (_size!833 (_ BitVec 32)) (_keys!5027 array!5772) (_values!3209 array!5774) (_vacant!833 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1568)

(declare-fun mapKey!5708 () (_ BitVec 32))

(assert (=> mapNonEmpty!5708 (= (arr!2731 (_values!3209 thiss!1248)) (store mapRest!5708 mapKey!5708 mapValue!5708))))

(declare-fun b!159749 () Bool)

(declare-fun res!75553 () Bool)

(declare-fun e!104532 () Bool)

(assert (=> b!159749 (=> (not res!75553) (not e!104532))))

(assert (=> b!159749 (= res!75553 (and (= (size!3015 (_values!3209 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7782 thiss!1248))) (= (size!3014 (_keys!5027 thiss!1248)) (size!3015 (_values!3209 thiss!1248))) (bvsge (mask!7782 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2967 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2967 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!159750 () Bool)

(declare-fun e!104533 () Bool)

(declare-fun e!104534 () Bool)

(assert (=> b!159750 (= e!104533 (and e!104534 mapRes!5708))))

(declare-fun condMapEmpty!5708 () Bool)

(declare-fun mapDefault!5708 () ValueCell!1330)

