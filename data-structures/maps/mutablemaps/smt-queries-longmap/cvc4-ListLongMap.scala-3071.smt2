; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43290 () Bool)

(assert start!43290)

(declare-fun b_free!12149 () Bool)

(declare-fun b_next!12149 () Bool)

(assert (=> start!43290 (= b_free!12149 (not b_next!12149))))

(declare-fun tp!42717 () Bool)

(declare-fun b_and!20919 () Bool)

(assert (=> start!43290 (= tp!42717 b_and!20919)))

(declare-fun b!479336 () Bool)

(declare-fun e!282028 () Bool)

(declare-fun tp_is_empty!13661 () Bool)

(assert (=> b!479336 (= e!282028 tp_is_empty!13661)))

(declare-fun mapIsEmpty!22189 () Bool)

(declare-fun mapRes!22189 () Bool)

(assert (=> mapIsEmpty!22189 mapRes!22189))

(declare-fun b!479337 () Bool)

(declare-fun res!285996 () Bool)

(declare-fun e!282024 () Bool)

(assert (=> b!479337 (=> (not res!285996) (not e!282024))))

(declare-datatypes ((array!30959 0))(
  ( (array!30960 (arr!14883 (Array (_ BitVec 32) (_ BitVec 64))) (size!15241 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30959)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30959 (_ BitVec 32)) Bool)

(assert (=> b!479337 (= res!285996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!479338 () Bool)

(declare-fun res!285999 () Bool)

(assert (=> b!479338 (=> (not res!285999) (not e!282024))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19285 0))(
  ( (V!19286 (val!6878 Int)) )
))
(declare-datatypes ((ValueCell!6469 0))(
  ( (ValueCellFull!6469 (v!9163 V!19285)) (EmptyCell!6469) )
))
(declare-datatypes ((array!30961 0))(
  ( (array!30962 (arr!14884 (Array (_ BitVec 32) ValueCell!6469)) (size!15242 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30961)

(assert (=> b!479338 (= res!285999 (and (= (size!15242 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15241 _keys!1874) (size!15242 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!479339 () Bool)

(declare-fun e!282026 () Bool)

(declare-fun e!282025 () Bool)

(assert (=> b!479339 (= e!282026 (and e!282025 mapRes!22189))))

(declare-fun condMapEmpty!22189 () Bool)

(declare-fun mapDefault!22189 () ValueCell!6469)

