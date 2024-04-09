; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40210 () Bool)

(assert start!40210)

(declare-fun b_free!10469 () Bool)

(declare-fun b_next!10469 () Bool)

(assert (=> start!40210 (= b_free!10469 (not b_next!10469))))

(declare-fun tp!36935 () Bool)

(declare-fun b_and!18455 () Bool)

(assert (=> start!40210 (= tp!36935 b_and!18455)))

(declare-fun mapNonEmpty!19053 () Bool)

(declare-fun mapRes!19053 () Bool)

(declare-fun tp!36936 () Bool)

(declare-fun e!259459 () Bool)

(assert (=> mapNonEmpty!19053 (= mapRes!19053 (and tp!36936 e!259459))))

(declare-datatypes ((V!16599 0))(
  ( (V!16600 (val!5855 Int)) )
))
(declare-datatypes ((ValueCell!5467 0))(
  ( (ValueCellFull!5467 (v!8098 V!16599)) (EmptyCell!5467) )
))
(declare-fun mapRest!19053 () (Array (_ BitVec 32) ValueCell!5467))

(declare-datatypes ((array!27031 0))(
  ( (array!27032 (arr!12962 (Array (_ BitVec 32) ValueCell!5467)) (size!13314 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27031)

(declare-fun mapKey!19053 () (_ BitVec 32))

(declare-fun mapValue!19053 () ValueCell!5467)

(assert (=> mapNonEmpty!19053 (= (arr!12962 _values!549) (store mapRest!19053 mapKey!19053 mapValue!19053))))

(declare-fun b!440418 () Bool)

(declare-fun e!259462 () Bool)

(declare-fun e!259463 () Bool)

(assert (=> b!440418 (= e!259462 (and e!259463 mapRes!19053))))

(declare-fun condMapEmpty!19053 () Bool)

(declare-fun mapDefault!19053 () ValueCell!5467)

