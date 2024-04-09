; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78248 () Bool)

(assert start!78248)

(declare-fun b_free!16711 () Bool)

(declare-fun b_next!16711 () Bool)

(assert (=> start!78248 (= b_free!16711 (not b_next!16711))))

(declare-fun tp!58411 () Bool)

(declare-fun b_and!27305 () Bool)

(assert (=> start!78248 (= tp!58411 b_and!27305)))

(declare-fun b!912773 () Bool)

(declare-fun res!615853 () Bool)

(declare-fun e!512019 () Bool)

(assert (=> b!912773 (=> (not res!615853) (not e!512019))))

(declare-datatypes ((array!54260 0))(
  ( (array!54261 (arr!26080 (Array (_ BitVec 32) (_ BitVec 64))) (size!26540 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54260)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54260 (_ BitVec 32)) Bool)

(assert (=> b!912773 (= res!615853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!912774 () Bool)

(declare-fun e!512018 () Bool)

(declare-fun tp_is_empty!19129 () Bool)

(assert (=> b!912774 (= e!512018 tp_is_empty!19129)))

(declare-fun res!615854 () Bool)

(assert (=> start!78248 (=> (not res!615854) (not e!512019))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78248 (= res!615854 (validMask!0 mask!1756))))

(assert (=> start!78248 e!512019))

(declare-datatypes ((V!30471 0))(
  ( (V!30472 (val!9615 Int)) )
))
(declare-datatypes ((ValueCell!9083 0))(
  ( (ValueCellFull!9083 (v!12126 V!30471)) (EmptyCell!9083) )
))
(declare-datatypes ((array!54262 0))(
  ( (array!54263 (arr!26081 (Array (_ BitVec 32) ValueCell!9083)) (size!26541 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54262)

(declare-fun e!512021 () Bool)

(declare-fun array_inv!20362 (array!54262) Bool)

(assert (=> start!78248 (and (array_inv!20362 _values!1152) e!512021)))

(assert (=> start!78248 tp!58411))

(assert (=> start!78248 true))

(assert (=> start!78248 tp_is_empty!19129))

(declare-fun array_inv!20363 (array!54260) Bool)

(assert (=> start!78248 (array_inv!20363 _keys!1386)))

(declare-fun b!912775 () Bool)

(declare-fun mapRes!30421 () Bool)

(assert (=> b!912775 (= e!512021 (and e!512018 mapRes!30421))))

(declare-fun condMapEmpty!30421 () Bool)

(declare-fun mapDefault!30421 () ValueCell!9083)

