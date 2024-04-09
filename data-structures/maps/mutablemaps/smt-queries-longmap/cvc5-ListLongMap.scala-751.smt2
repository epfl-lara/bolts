; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17600 () Bool)

(assert start!17600)

(declare-fun b!175946 () Bool)

(declare-fun b_free!4345 () Bool)

(declare-fun b_next!4345 () Bool)

(assert (=> b!175946 (= b_free!4345 (not b_next!4345))))

(declare-fun tp!15722 () Bool)

(declare-fun b_and!10851 () Bool)

(assert (=> b!175946 (= tp!15722 b_and!10851)))

(declare-fun b!175943 () Bool)

(declare-fun res!83405 () Bool)

(declare-fun e!116115 () Bool)

(assert (=> b!175943 (=> (not res!83405) (not e!116115))))

(declare-datatypes ((V!5137 0))(
  ( (V!5138 (val!2103 Int)) )
))
(declare-datatypes ((ValueCell!1715 0))(
  ( (ValueCellFull!1715 (v!3975 V!5137)) (EmptyCell!1715) )
))
(declare-datatypes ((array!7376 0))(
  ( (array!7377 (arr!3500 (Array (_ BitVec 32) (_ BitVec 64))) (size!3803 (_ BitVec 32))) )
))
(declare-datatypes ((array!7378 0))(
  ( (array!7379 (arr!3501 (Array (_ BitVec 32) ValueCell!1715)) (size!3804 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2338 0))(
  ( (LongMapFixedSize!2339 (defaultEntry!3627 Int) (mask!8536 (_ BitVec 32)) (extraKeys!3364 (_ BitVec 32)) (zeroValue!3468 V!5137) (minValue!3468 V!5137) (_size!1218 (_ BitVec 32)) (_keys!5484 array!7376) (_values!3610 array!7378) (_vacant!1218 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2338)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3266 0))(
  ( (tuple2!3267 (_1!1643 (_ BitVec 64)) (_2!1643 V!5137)) )
))
(declare-datatypes ((List!2247 0))(
  ( (Nil!2244) (Cons!2243 (h!2863 tuple2!3266) (t!7077 List!2247)) )
))
(declare-datatypes ((ListLongMap!2207 0))(
  ( (ListLongMap!2208 (toList!1119 List!2247)) )
))
(declare-fun contains!1175 (ListLongMap!2207 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!766 (array!7376 array!7378 (_ BitVec 32) (_ BitVec 32) V!5137 V!5137 (_ BitVec 32) Int) ListLongMap!2207)

(assert (=> b!175943 (= res!83405 (contains!1175 (getCurrentListMap!766 (_keys!5484 thiss!1248) (_values!3610 thiss!1248) (mask!8536 thiss!1248) (extraKeys!3364 thiss!1248) (zeroValue!3468 thiss!1248) (minValue!3468 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3627 thiss!1248)) key!828))))

(declare-fun b!175944 () Bool)

(declare-fun e!116118 () Bool)

(declare-fun e!116119 () Bool)

(declare-fun mapRes!7025 () Bool)

(assert (=> b!175944 (= e!116118 (and e!116119 mapRes!7025))))

(declare-fun condMapEmpty!7025 () Bool)

(declare-fun mapDefault!7025 () ValueCell!1715)

