; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78154 () Bool)

(assert start!78154)

(declare-fun b_free!16637 () Bool)

(declare-fun b_next!16637 () Bool)

(assert (=> start!78154 (= b_free!16637 (not b_next!16637))))

(declare-fun tp!58186 () Bool)

(declare-fun b_and!27229 () Bool)

(assert (=> start!78154 (= tp!58186 b_and!27229)))

(declare-fun mapIsEmpty!30307 () Bool)

(declare-fun mapRes!30307 () Bool)

(assert (=> mapIsEmpty!30307 mapRes!30307))

(declare-fun b!911680 () Bool)

(declare-fun res!615160 () Bool)

(declare-fun e!511383 () Bool)

(assert (=> b!911680 (=> (not res!615160) (not e!511383))))

(declare-datatypes ((V!30371 0))(
  ( (V!30372 (val!9578 Int)) )
))
(declare-datatypes ((ValueCell!9046 0))(
  ( (ValueCellFull!9046 (v!12088 V!30371)) (EmptyCell!9046) )
))
(declare-datatypes ((array!54118 0))(
  ( (array!54119 (arr!26010 (Array (_ BitVec 32) ValueCell!9046)) (size!26470 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54118)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!54120 0))(
  ( (array!54121 (arr!26011 (Array (_ BitVec 32) (_ BitVec 64))) (size!26471 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54120)

(assert (=> b!911680 (= res!615160 (and (= (size!26470 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26471 _keys!1386) (size!26470 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!911681 () Bool)

(declare-fun e!511384 () Bool)

(declare-fun e!511381 () Bool)

(assert (=> b!911681 (= e!511384 (and e!511381 mapRes!30307))))

(declare-fun condMapEmpty!30307 () Bool)

(declare-fun mapDefault!30307 () ValueCell!9046)

