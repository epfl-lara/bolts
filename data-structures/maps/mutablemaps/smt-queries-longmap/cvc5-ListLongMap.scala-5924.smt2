; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77150 () Bool)

(assert start!77150)

(declare-fun b!900101 () Bool)

(declare-fun b_free!16045 () Bool)

(declare-fun b_next!16045 () Bool)

(assert (=> b!900101 (= b_free!16045 (not b_next!16045))))

(declare-fun tp!56223 () Bool)

(declare-fun b_and!26383 () Bool)

(assert (=> b!900101 (= tp!56223 b_and!26383)))

(declare-fun b!900098 () Bool)

(declare-fun e!503786 () Bool)

(declare-fun tp_is_empty!18373 () Bool)

(assert (=> b!900098 (= e!503786 tp_is_empty!18373)))

(declare-fun b!900099 () Bool)

(declare-fun e!503780 () Bool)

(declare-fun mapRes!29233 () Bool)

(assert (=> b!900099 (= e!503780 (and e!503786 mapRes!29233))))

(declare-fun condMapEmpty!29233 () Bool)

(declare-datatypes ((array!52780 0))(
  ( (array!52781 (arr!25358 (Array (_ BitVec 32) (_ BitVec 64))) (size!25818 (_ BitVec 32))) )
))
(declare-datatypes ((V!29463 0))(
  ( (V!29464 (val!9237 Int)) )
))
(declare-datatypes ((ValueCell!8705 0))(
  ( (ValueCellFull!8705 (v!11730 V!29463)) (EmptyCell!8705) )
))
(declare-datatypes ((array!52782 0))(
  ( (array!52783 (arr!25359 (Array (_ BitVec 32) ValueCell!8705)) (size!25819 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4426 0))(
  ( (LongMapFixedSize!4427 (defaultEntry!5445 Int) (mask!26218 (_ BitVec 32)) (extraKeys!5170 (_ BitVec 32)) (zeroValue!5274 V!29463) (minValue!5274 V!29463) (_size!2268 (_ BitVec 32)) (_keys!10242 array!52780) (_values!5461 array!52782) (_vacant!2268 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4426)

(declare-fun mapDefault!29233 () ValueCell!8705)

