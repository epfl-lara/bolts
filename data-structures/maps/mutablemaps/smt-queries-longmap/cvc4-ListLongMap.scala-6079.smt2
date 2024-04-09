; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78614 () Bool)

(assert start!78614)

(declare-fun b_free!16799 () Bool)

(declare-fun b_next!16799 () Bool)

(assert (=> start!78614 (= b_free!16799 (not b_next!16799))))

(declare-fun tp!58839 () Bool)

(declare-fun b_and!27439 () Bool)

(assert (=> start!78614 (= tp!58839 b_and!27439)))

(declare-fun b!915931 () Bool)

(declare-fun res!617603 () Bool)

(declare-fun e!514162 () Bool)

(assert (=> b!915931 (=> (not res!617603) (not e!514162))))

(declare-datatypes ((array!54616 0))(
  ( (array!54617 (arr!26249 (Array (_ BitVec 32) (_ BitVec 64))) (size!26709 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54616)

(declare-datatypes ((List!18518 0))(
  ( (Nil!18515) (Cons!18514 (h!19660 (_ BitVec 64)) (t!26139 List!18518)) )
))
(declare-fun arrayNoDuplicates!0 (array!54616 (_ BitVec 32) List!18518) Bool)

(assert (=> b!915931 (= res!617603 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18515))))

(declare-fun b!915932 () Bool)

(declare-fun e!514161 () Bool)

(declare-fun e!514160 () Bool)

(declare-fun mapRes!30717 () Bool)

(assert (=> b!915932 (= e!514161 (and e!514160 mapRes!30717))))

(declare-fun condMapEmpty!30717 () Bool)

(declare-datatypes ((V!30707 0))(
  ( (V!30708 (val!9704 Int)) )
))
(declare-datatypes ((ValueCell!9172 0))(
  ( (ValueCellFull!9172 (v!12222 V!30707)) (EmptyCell!9172) )
))
(declare-datatypes ((array!54618 0))(
  ( (array!54619 (arr!26250 (Array (_ BitVec 32) ValueCell!9172)) (size!26710 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54618)

(declare-fun mapDefault!30717 () ValueCell!9172)

