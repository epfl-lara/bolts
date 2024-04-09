; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77006 () Bool)

(assert start!77006)

(declare-fun b!899294 () Bool)

(declare-fun b_free!16033 () Bool)

(declare-fun b_next!16033 () Bool)

(assert (=> b!899294 (= b_free!16033 (not b_next!16033))))

(declare-fun tp!56180 () Bool)

(declare-fun b_and!26359 () Bool)

(assert (=> b!899294 (= tp!56180 b_and!26359)))

(declare-fun b!899290 () Bool)

(declare-fun e!503231 () Bool)

(declare-fun tp_is_empty!18361 () Bool)

(assert (=> b!899290 (= e!503231 tp_is_empty!18361)))

(declare-fun b!899291 () Bool)

(declare-fun e!503227 () Bool)

(assert (=> b!899291 (= e!503227 tp_is_empty!18361)))

(declare-fun b!899293 () Bool)

(declare-fun e!503232 () Bool)

(declare-fun mapRes!29207 () Bool)

(assert (=> b!899293 (= e!503232 (and e!503231 mapRes!29207))))

(declare-fun condMapEmpty!29207 () Bool)

(declare-datatypes ((array!52752 0))(
  ( (array!52753 (arr!25346 (Array (_ BitVec 32) (_ BitVec 64))) (size!25804 (_ BitVec 32))) )
))
(declare-datatypes ((V!29447 0))(
  ( (V!29448 (val!9231 Int)) )
))
(declare-datatypes ((ValueCell!8699 0))(
  ( (ValueCellFull!8699 (v!11722 V!29447)) (EmptyCell!8699) )
))
(declare-datatypes ((array!52754 0))(
  ( (array!52755 (arr!25347 (Array (_ BitVec 32) ValueCell!8699)) (size!25805 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4414 0))(
  ( (LongMapFixedSize!4415 (defaultEntry!5431 Int) (mask!26182 (_ BitVec 32)) (extraKeys!5152 (_ BitVec 32)) (zeroValue!5256 V!29447) (minValue!5256 V!29447) (_size!2262 (_ BitVec 32)) (_keys!10216 array!52752) (_values!5443 array!52754) (_vacant!2262 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4414)

(declare-fun mapDefault!29207 () ValueCell!8699)

