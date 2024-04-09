; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23126 () Bool)

(assert start!23126)

(declare-fun b!242273 () Bool)

(declare-fun b_free!6505 () Bool)

(declare-fun b_next!6505 () Bool)

(assert (=> b!242273 (= b_free!6505 (not b_next!6505))))

(declare-fun tp!22728 () Bool)

(declare-fun b_and!13499 () Bool)

(assert (=> b!242273 (= tp!22728 b_and!13499)))

(declare-fun b!242259 () Bool)

(declare-fun e!157250 () Bool)

(declare-fun e!157237 () Bool)

(assert (=> b!242259 (= e!157250 e!157237)))

(declare-fun res!118719 () Bool)

(assert (=> b!242259 (=> (not res!118719) (not e!157237))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!8137 0))(
  ( (V!8138 (val!3228 Int)) )
))
(declare-datatypes ((ValueCell!2840 0))(
  ( (ValueCellFull!2840 (v!5265 V!8137)) (EmptyCell!2840) )
))
(declare-datatypes ((array!12018 0))(
  ( (array!12019 (arr!5707 (Array (_ BitVec 32) ValueCell!2840)) (size!6049 (_ BitVec 32))) )
))
(declare-datatypes ((array!12020 0))(
  ( (array!12021 (arr!5708 (Array (_ BitVec 32) (_ BitVec 64))) (size!6050 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3580 0))(
  ( (LongMapFixedSize!3581 (defaultEntry!4491 Int) (mask!10572 (_ BitVec 32)) (extraKeys!4228 (_ BitVec 32)) (zeroValue!4332 V!8137) (minValue!4332 V!8137) (_size!1839 (_ BitVec 32)) (_keys!6599 array!12020) (_values!4474 array!12018) (_vacant!1839 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3580)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!242259 (= res!118719 (inRange!0 index!297 (mask!10572 thiss!1504)))))

(declare-datatypes ((Unit!7468 0))(
  ( (Unit!7469) )
))
(declare-fun lt!121757 () Unit!7468)

(declare-fun e!157245 () Unit!7468)

(assert (=> b!242259 (= lt!121757 e!157245)))

(declare-fun c!40414 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4752 0))(
  ( (tuple2!4753 (_1!2386 (_ BitVec 64)) (_2!2386 V!8137)) )
))
(declare-datatypes ((List!3653 0))(
  ( (Nil!3650) (Cons!3649 (h!4306 tuple2!4752) (t!8662 List!3653)) )
))
(declare-datatypes ((ListLongMap!3679 0))(
  ( (ListLongMap!3680 (toList!1855 List!3653)) )
))
(declare-fun contains!1740 (ListLongMap!3679 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1378 (array!12020 array!12018 (_ BitVec 32) (_ BitVec 32) V!8137 V!8137 (_ BitVec 32) Int) ListLongMap!3679)

(assert (=> b!242259 (= c!40414 (contains!1740 (getCurrentListMap!1378 (_keys!6599 thiss!1504) (_values!4474 thiss!1504) (mask!10572 thiss!1504) (extraKeys!4228 thiss!1504) (zeroValue!4332 thiss!1504) (minValue!4332 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4491 thiss!1504)) key!932))))

(declare-fun b!242261 () Bool)

(declare-fun e!157239 () Bool)

(declare-fun e!157248 () Bool)

(declare-fun mapRes!10792 () Bool)

(assert (=> b!242261 (= e!157239 (and e!157248 mapRes!10792))))

(declare-fun condMapEmpty!10792 () Bool)

(declare-fun mapDefault!10792 () ValueCell!2840)

