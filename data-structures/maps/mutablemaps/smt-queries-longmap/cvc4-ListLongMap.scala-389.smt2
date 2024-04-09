; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7352 () Bool)

(assert start!7352)

(declare-fun b!47212 () Bool)

(declare-fun e!30206 () Bool)

(declare-datatypes ((array!3090 0))(
  ( (array!3091 (arr!1483 (Array (_ BitVec 32) (_ BitVec 64))) (size!1705 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3090)

(assert (=> b!47212 (= e!30206 (bvsgt #b00000000000000000000000000000000 (size!1705 _keys!1940)))))

(declare-fun mapNonEmpty!2054 () Bool)

(declare-fun mapRes!2054 () Bool)

(declare-fun tp!6203 () Bool)

(declare-fun e!30202 () Bool)

(assert (=> mapNonEmpty!2054 (= mapRes!2054 (and tp!6203 e!30202))))

(declare-datatypes ((V!2419 0))(
  ( (V!2420 (val!1046 Int)) )
))
(declare-datatypes ((ValueCell!718 0))(
  ( (ValueCellFull!718 (v!2105 V!2419)) (EmptyCell!718) )
))
(declare-fun mapValue!2054 () ValueCell!718)

(declare-fun mapRest!2054 () (Array (_ BitVec 32) ValueCell!718))

(declare-fun mapKey!2054 () (_ BitVec 32))

(declare-datatypes ((array!3092 0))(
  ( (array!3093 (arr!1484 (Array (_ BitVec 32) ValueCell!718)) (size!1706 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3092)

(assert (=> mapNonEmpty!2054 (= (arr!1484 _values!1550) (store mapRest!2054 mapKey!2054 mapValue!2054))))

(declare-fun res!27470 () Bool)

(assert (=> start!7352 (=> (not res!27470) (not e!30206))))

(declare-fun mask!2458 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7352 (= res!27470 (validMask!0 mask!2458))))

(assert (=> start!7352 e!30206))

(assert (=> start!7352 true))

(declare-fun e!30204 () Bool)

(declare-fun array_inv!846 (array!3092) Bool)

(assert (=> start!7352 (and (array_inv!846 _values!1550) e!30204)))

(declare-fun array_inv!847 (array!3090) Bool)

(assert (=> start!7352 (array_inv!847 _keys!1940)))

(declare-fun b!47213 () Bool)

(declare-fun e!30203 () Bool)

(assert (=> b!47213 (= e!30204 (and e!30203 mapRes!2054))))

(declare-fun condMapEmpty!2054 () Bool)

(declare-fun mapDefault!2054 () ValueCell!718)

