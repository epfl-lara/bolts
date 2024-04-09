; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16206 () Bool)

(assert start!16206)

(declare-fun b!161495 () Bool)

(declare-fun b_free!3655 () Bool)

(declare-fun b_next!3655 () Bool)

(assert (=> b!161495 (= b_free!3655 (not b_next!3655))))

(declare-fun tp!13535 () Bool)

(declare-fun b_and!10087 () Bool)

(assert (=> b!161495 (= tp!13535 b_and!10087)))

(declare-fun b!161488 () Bool)

(declare-fun e!105565 () Bool)

(assert (=> b!161488 (= e!105565 false)))

(declare-datatypes ((Unit!5024 0))(
  ( (Unit!5025) )
))
(declare-fun lt!82255 () Unit!5024)

(declare-fun e!105563 () Unit!5024)

(assert (=> b!161488 (= lt!82255 e!105563)))

(declare-fun c!29952 () Bool)

(declare-datatypes ((V!4257 0))(
  ( (V!4258 (val!1773 Int)) )
))
(declare-datatypes ((ValueCell!1385 0))(
  ( (ValueCellFull!1385 (v!3634 V!4257)) (EmptyCell!1385) )
))
(declare-datatypes ((array!5992 0))(
  ( (array!5993 (arr!2840 (Array (_ BitVec 32) (_ BitVec 64))) (size!3124 (_ BitVec 32))) )
))
(declare-datatypes ((array!5994 0))(
  ( (array!5995 (arr!2841 (Array (_ BitVec 32) ValueCell!1385)) (size!3125 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1678 0))(
  ( (LongMapFixedSize!1679 (defaultEntry!3281 Int) (mask!7875 (_ BitVec 32)) (extraKeys!3022 (_ BitVec 32)) (zeroValue!3124 V!4257) (minValue!3124 V!4257) (_size!888 (_ BitVec 32)) (_keys!5082 array!5992) (_values!3264 array!5994) (_vacant!888 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1678)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2950 0))(
  ( (tuple2!2951 (_1!1485 (_ BitVec 64)) (_2!1485 V!4257)) )
))
(declare-datatypes ((List!1997 0))(
  ( (Nil!1994) (Cons!1993 (h!2606 tuple2!2950) (t!6807 List!1997)) )
))
(declare-datatypes ((ListLongMap!1959 0))(
  ( (ListLongMap!1960 (toList!995 List!1997)) )
))
(declare-fun contains!1025 (ListLongMap!1959 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!655 (array!5992 array!5994 (_ BitVec 32) (_ BitVec 32) V!4257 V!4257 (_ BitVec 32) Int) ListLongMap!1959)

(assert (=> b!161488 (= c!29952 (contains!1025 (getCurrentListMap!655 (_keys!5082 thiss!1248) (_values!3264 thiss!1248) (mask!7875 thiss!1248) (extraKeys!3022 thiss!1248) (zeroValue!3124 thiss!1248) (minValue!3124 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3281 thiss!1248)) key!828))))

(declare-fun b!161489 () Bool)

(declare-fun e!105566 () Bool)

(declare-fun e!105564 () Bool)

(declare-fun mapRes!5873 () Bool)

(assert (=> b!161489 (= e!105566 (and e!105564 mapRes!5873))))

(declare-fun condMapEmpty!5873 () Bool)

(declare-fun mapDefault!5873 () ValueCell!1385)

