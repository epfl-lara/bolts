; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40302 () Bool)

(assert start!40302)

(declare-fun b_free!10535 () Bool)

(declare-fun b_next!10535 () Bool)

(assert (=> start!40302 (= b_free!10535 (not b_next!10535))))

(declare-fun tp!37145 () Bool)

(declare-fun b_and!18537 () Bool)

(assert (=> start!40302 (= tp!37145 b_and!18537)))

(declare-fun b!442267 () Bool)

(declare-fun res!262030 () Bool)

(declare-fun e!260302 () Bool)

(assert (=> b!442267 (=> (not res!262030) (not e!260302))))

(declare-datatypes ((array!27173 0))(
  ( (array!27174 (arr!13032 (Array (_ BitVec 32) (_ BitVec 64))) (size!13384 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27173)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!442267 (= res!262030 (or (= (select (arr!13032 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13032 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19164 () Bool)

(declare-fun mapRes!19164 () Bool)

(declare-fun tp!37146 () Bool)

(declare-fun e!260300 () Bool)

(assert (=> mapNonEmpty!19164 (= mapRes!19164 (and tp!37146 e!260300))))

(declare-datatypes ((V!16695 0))(
  ( (V!16696 (val!5891 Int)) )
))
(declare-datatypes ((ValueCell!5503 0))(
  ( (ValueCellFull!5503 (v!8138 V!16695)) (EmptyCell!5503) )
))
(declare-fun mapValue!19164 () ValueCell!5503)

(declare-fun mapRest!19164 () (Array (_ BitVec 32) ValueCell!5503))

(declare-datatypes ((array!27175 0))(
  ( (array!27176 (arr!13033 (Array (_ BitVec 32) ValueCell!5503)) (size!13385 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27175)

(declare-fun mapKey!19164 () (_ BitVec 32))

(assert (=> mapNonEmpty!19164 (= (arr!13033 _values!549) (store mapRest!19164 mapKey!19164 mapValue!19164))))

(declare-fun b!442268 () Bool)

(declare-fun res!262028 () Bool)

(assert (=> b!442268 (=> (not res!262028) (not e!260302))))

(declare-datatypes ((List!7804 0))(
  ( (Nil!7801) (Cons!7800 (h!8656 (_ BitVec 64)) (t!13570 List!7804)) )
))
(declare-fun arrayNoDuplicates!0 (array!27173 (_ BitVec 32) List!7804) Bool)

(assert (=> b!442268 (= res!262028 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7801))))

(declare-fun b!442269 () Bool)

(declare-fun e!260301 () Bool)

(declare-fun e!260298 () Bool)

(assert (=> b!442269 (= e!260301 (and e!260298 mapRes!19164))))

(declare-fun condMapEmpty!19164 () Bool)

(declare-fun mapDefault!19164 () ValueCell!5503)

