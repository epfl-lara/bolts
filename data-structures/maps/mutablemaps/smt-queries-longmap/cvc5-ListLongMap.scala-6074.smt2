; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78580 () Bool)

(assert start!78580)

(declare-fun b_free!16765 () Bool)

(declare-fun b_next!16765 () Bool)

(assert (=> start!78580 (= b_free!16765 (not b_next!16765))))

(declare-fun tp!58736 () Bool)

(declare-fun b_and!27405 () Bool)

(assert (=> start!78580 (= tp!58736 b_and!27405)))

(declare-fun b!915523 () Bool)

(declare-fun res!617347 () Bool)

(declare-fun e!513908 () Bool)

(assert (=> b!915523 (=> (not res!617347) (not e!513908))))

(declare-datatypes ((array!54550 0))(
  ( (array!54551 (arr!26216 (Array (_ BitVec 32) (_ BitVec 64))) (size!26676 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54550)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54550 (_ BitVec 32)) Bool)

(assert (=> b!915523 (= res!617347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!915524 () Bool)

(declare-fun e!513906 () Bool)

(declare-fun e!513907 () Bool)

(declare-fun mapRes!30666 () Bool)

(assert (=> b!915524 (= e!513906 (and e!513907 mapRes!30666))))

(declare-fun condMapEmpty!30666 () Bool)

(declare-datatypes ((V!30663 0))(
  ( (V!30664 (val!9687 Int)) )
))
(declare-datatypes ((ValueCell!9155 0))(
  ( (ValueCellFull!9155 (v!12205 V!30663)) (EmptyCell!9155) )
))
(declare-datatypes ((array!54552 0))(
  ( (array!54553 (arr!26217 (Array (_ BitVec 32) ValueCell!9155)) (size!26677 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54552)

(declare-fun mapDefault!30666 () ValueCell!9155)

