; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17412 () Bool)

(assert start!17412)

(declare-fun b!174598 () Bool)

(declare-fun b_free!4321 () Bool)

(declare-fun b_next!4321 () Bool)

(assert (=> b!174598 (= b_free!4321 (not b_next!4321))))

(declare-fun tp!15634 () Bool)

(declare-fun b_and!10807 () Bool)

(assert (=> b!174598 (= tp!15634 b_and!10807)))

(declare-fun mapIsEmpty!6974 () Bool)

(declare-fun mapRes!6974 () Bool)

(assert (=> mapIsEmpty!6974 mapRes!6974))

(declare-fun b!174595 () Bool)

(declare-fun res!82820 () Bool)

(declare-fun e!115303 () Bool)

(assert (=> b!174595 (=> (not res!82820) (not e!115303))))

(declare-datatypes ((V!5105 0))(
  ( (V!5106 (val!2091 Int)) )
))
(declare-datatypes ((ValueCell!1703 0))(
  ( (ValueCellFull!1703 (v!3959 V!5105)) (EmptyCell!1703) )
))
(declare-datatypes ((array!7320 0))(
  ( (array!7321 (arr!3476 (Array (_ BitVec 32) (_ BitVec 64))) (size!3776 (_ BitVec 32))) )
))
(declare-datatypes ((array!7322 0))(
  ( (array!7323 (arr!3477 (Array (_ BitVec 32) ValueCell!1703)) (size!3777 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2314 0))(
  ( (LongMapFixedSize!2315 (defaultEntry!3608 Int) (mask!8489 (_ BitVec 32)) (extraKeys!3345 (_ BitVec 32)) (zeroValue!3449 V!5105) (minValue!3449 V!5105) (_size!1206 (_ BitVec 32)) (_keys!5452 array!7320) (_values!3591 array!7322) (_vacant!1206 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2314)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3246 0))(
  ( (tuple2!3247 (_1!1633 (_ BitVec 64)) (_2!1633 V!5105)) )
))
(declare-datatypes ((List!2233 0))(
  ( (Nil!2230) (Cons!2229 (h!2846 tuple2!3246) (t!7055 List!2233)) )
))
(declare-datatypes ((ListLongMap!2187 0))(
  ( (ListLongMap!2188 (toList!1109 List!2233)) )
))
(declare-fun contains!1159 (ListLongMap!2187 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!756 (array!7320 array!7322 (_ BitVec 32) (_ BitVec 32) V!5105 V!5105 (_ BitVec 32) Int) ListLongMap!2187)

(assert (=> b!174595 (= res!82820 (contains!1159 (getCurrentListMap!756 (_keys!5452 thiss!1248) (_values!3591 thiss!1248) (mask!8489 thiss!1248) (extraKeys!3345 thiss!1248) (zeroValue!3449 thiss!1248) (minValue!3449 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3608 thiss!1248)) key!828))))

(declare-fun b!174596 () Bool)

(declare-fun e!115301 () Bool)

(declare-fun e!115304 () Bool)

(assert (=> b!174596 (= e!115301 (and e!115304 mapRes!6974))))

(declare-fun condMapEmpty!6974 () Bool)

(declare-fun mapDefault!6974 () ValueCell!1703)

