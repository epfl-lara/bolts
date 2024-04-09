; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78240 () Bool)

(assert start!78240)

(declare-fun b_free!16703 () Bool)

(declare-fun b_next!16703 () Bool)

(assert (=> start!78240 (= b_free!16703 (not b_next!16703))))

(declare-fun tp!58387 () Bool)

(declare-fun b_and!27297 () Bool)

(assert (=> start!78240 (= tp!58387 b_and!27297)))

(declare-fun b!912653 () Bool)

(declare-fun e!511960 () Bool)

(declare-fun tp_is_empty!19121 () Bool)

(assert (=> b!912653 (= e!511960 tp_is_empty!19121)))

(declare-fun mapNonEmpty!30409 () Bool)

(declare-fun mapRes!30409 () Bool)

(declare-fun tp!58386 () Bool)

(assert (=> mapNonEmpty!30409 (= mapRes!30409 (and tp!58386 e!511960))))

(declare-datatypes ((V!30459 0))(
  ( (V!30460 (val!9611 Int)) )
))
(declare-datatypes ((ValueCell!9079 0))(
  ( (ValueCellFull!9079 (v!12122 V!30459)) (EmptyCell!9079) )
))
(declare-datatypes ((array!54244 0))(
  ( (array!54245 (arr!26072 (Array (_ BitVec 32) ValueCell!9079)) (size!26532 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54244)

(declare-fun mapValue!30409 () ValueCell!9079)

(declare-fun mapRest!30409 () (Array (_ BitVec 32) ValueCell!9079))

(declare-fun mapKey!30409 () (_ BitVec 32))

(assert (=> mapNonEmpty!30409 (= (arr!26072 _values!1152) (store mapRest!30409 mapKey!30409 mapValue!30409))))

(declare-fun b!912654 () Bool)

(declare-fun res!615767 () Bool)

(declare-fun e!511961 () Bool)

(assert (=> b!912654 (=> (not res!615767) (not e!511961))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!912654 (= res!615767 (inRange!0 i!717 mask!1756))))

(declare-fun res!615766 () Bool)

(assert (=> start!78240 (=> (not res!615766) (not e!511961))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78240 (= res!615766 (validMask!0 mask!1756))))

(assert (=> start!78240 e!511961))

(declare-fun e!511957 () Bool)

(declare-fun array_inv!20356 (array!54244) Bool)

(assert (=> start!78240 (and (array_inv!20356 _values!1152) e!511957)))

(assert (=> start!78240 tp!58387))

(assert (=> start!78240 true))

(assert (=> start!78240 tp_is_empty!19121))

(declare-datatypes ((array!54246 0))(
  ( (array!54247 (arr!26073 (Array (_ BitVec 32) (_ BitVec 64))) (size!26533 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54246)

(declare-fun array_inv!20357 (array!54246) Bool)

(assert (=> start!78240 (array_inv!20357 _keys!1386)))

(declare-fun b!912655 () Bool)

(declare-fun e!511958 () Bool)

(assert (=> b!912655 (= e!511957 (and e!511958 mapRes!30409))))

(declare-fun condMapEmpty!30409 () Bool)

(declare-fun mapDefault!30409 () ValueCell!9079)

