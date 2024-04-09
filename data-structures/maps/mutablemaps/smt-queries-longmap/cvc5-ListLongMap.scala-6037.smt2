; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78150 () Bool)

(assert start!78150)

(declare-fun b_free!16633 () Bool)

(declare-fun b_next!16633 () Bool)

(assert (=> start!78150 (= b_free!16633 (not b_next!16633))))

(declare-fun tp!58174 () Bool)

(declare-fun b_and!27225 () Bool)

(assert (=> start!78150 (= tp!58174 b_and!27225)))

(declare-fun b!911638 () Bool)

(declare-fun res!615138 () Bool)

(declare-fun e!511354 () Bool)

(assert (=> b!911638 (=> (not res!615138) (not e!511354))))

(declare-datatypes ((array!54110 0))(
  ( (array!54111 (arr!26006 (Array (_ BitVec 32) (_ BitVec 64))) (size!26466 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54110)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54110 (_ BitVec 32)) Bool)

(assert (=> b!911638 (= res!615138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!911639 () Bool)

(declare-fun res!615139 () Bool)

(assert (=> b!911639 (=> (not res!615139) (not e!511354))))

(declare-datatypes ((V!30367 0))(
  ( (V!30368 (val!9576 Int)) )
))
(declare-datatypes ((ValueCell!9044 0))(
  ( (ValueCellFull!9044 (v!12086 V!30367)) (EmptyCell!9044) )
))
(declare-datatypes ((array!54112 0))(
  ( (array!54113 (arr!26007 (Array (_ BitVec 32) ValueCell!9044)) (size!26467 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54112)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!911639 (= res!615139 (and (= (size!26467 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26466 _keys!1386) (size!26467 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!911640 () Bool)

(declare-fun e!511352 () Bool)

(declare-fun tp_is_empty!19051 () Bool)

(assert (=> b!911640 (= e!511352 tp_is_empty!19051)))

(declare-fun mapNonEmpty!30301 () Bool)

(declare-fun mapRes!30301 () Bool)

(declare-fun tp!58173 () Bool)

(assert (=> mapNonEmpty!30301 (= mapRes!30301 (and tp!58173 e!511352))))

(declare-fun mapRest!30301 () (Array (_ BitVec 32) ValueCell!9044))

(declare-fun mapValue!30301 () ValueCell!9044)

(declare-fun mapKey!30301 () (_ BitVec 32))

(assert (=> mapNonEmpty!30301 (= (arr!26007 _values!1152) (store mapRest!30301 mapKey!30301 mapValue!30301))))

(declare-fun res!615136 () Bool)

(assert (=> start!78150 (=> (not res!615136) (not e!511354))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78150 (= res!615136 (validMask!0 mask!1756))))

(assert (=> start!78150 e!511354))

(declare-fun e!511355 () Bool)

(declare-fun array_inv!20310 (array!54112) Bool)

(assert (=> start!78150 (and (array_inv!20310 _values!1152) e!511355)))

(assert (=> start!78150 tp!58174))

(assert (=> start!78150 true))

(assert (=> start!78150 tp_is_empty!19051))

(declare-fun array_inv!20311 (array!54110) Bool)

(assert (=> start!78150 (array_inv!20311 _keys!1386)))

(declare-fun b!911641 () Bool)

(declare-fun e!511351 () Bool)

(assert (=> b!911641 (= e!511355 (and e!511351 mapRes!30301))))

(declare-fun condMapEmpty!30301 () Bool)

(declare-fun mapDefault!30301 () ValueCell!9044)

