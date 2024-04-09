; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40038 () Bool)

(assert start!40038)

(declare-fun b_free!10297 () Bool)

(declare-fun b_next!10297 () Bool)

(assert (=> start!40038 (= b_free!10297 (not b_next!10297))))

(declare-fun tp!36420 () Bool)

(declare-fun b_and!18271 () Bool)

(assert (=> start!40038 (= tp!36420 b_and!18271)))

(declare-fun b!436213 () Bool)

(declare-fun e!257606 () Bool)

(declare-fun e!257614 () Bool)

(declare-fun mapRes!18795 () Bool)

(assert (=> b!436213 (= e!257606 (and e!257614 mapRes!18795))))

(declare-fun condMapEmpty!18795 () Bool)

(declare-datatypes ((V!16371 0))(
  ( (V!16372 (val!5769 Int)) )
))
(declare-datatypes ((ValueCell!5381 0))(
  ( (ValueCellFull!5381 (v!8012 V!16371)) (EmptyCell!5381) )
))
(declare-datatypes ((array!26701 0))(
  ( (array!26702 (arr!12797 (Array (_ BitVec 32) ValueCell!5381)) (size!13149 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26701)

(declare-fun mapDefault!18795 () ValueCell!5381)

