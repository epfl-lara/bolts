; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78628 () Bool)

(assert start!78628)

(declare-fun b_free!16813 () Bool)

(declare-fun b_next!16813 () Bool)

(assert (=> start!78628 (= b_free!16813 (not b_next!16813))))

(declare-fun tp!58880 () Bool)

(declare-fun b_and!27453 () Bool)

(assert (=> start!78628 (= tp!58880 b_and!27453)))

(declare-fun b!916101 () Bool)

(declare-fun res!617706 () Bool)

(declare-fun e!514268 () Bool)

(assert (=> b!916101 (=> (not res!617706) (not e!514268))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!54644 0))(
  ( (array!54645 (arr!26263 (Array (_ BitVec 32) (_ BitVec 64))) (size!26723 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54644)

(assert (=> b!916101 (= res!617706 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26723 _keys!1487))))))

(declare-fun mapIsEmpty!30738 () Bool)

(declare-fun mapRes!30738 () Bool)

(assert (=> mapIsEmpty!30738 mapRes!30738))

(declare-fun b!916102 () Bool)

(declare-fun res!617710 () Bool)

(assert (=> b!916102 (=> (not res!617710) (not e!514268))))

(declare-datatypes ((List!18528 0))(
  ( (Nil!18525) (Cons!18524 (h!19670 (_ BitVec 64)) (t!26149 List!18528)) )
))
(declare-fun arrayNoDuplicates!0 (array!54644 (_ BitVec 32) List!18528) Bool)

(assert (=> b!916102 (= res!617710 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18525))))

(declare-fun b!916103 () Bool)

(declare-fun e!514265 () Bool)

(declare-fun tp_is_empty!19321 () Bool)

(assert (=> b!916103 (= e!514265 tp_is_empty!19321)))

(declare-fun b!916104 () Bool)

(declare-fun e!514266 () Bool)

(declare-fun e!514267 () Bool)

(assert (=> b!916104 (= e!514266 (and e!514267 mapRes!30738))))

(declare-fun condMapEmpty!30738 () Bool)

(declare-datatypes ((V!30727 0))(
  ( (V!30728 (val!9711 Int)) )
))
(declare-datatypes ((ValueCell!9179 0))(
  ( (ValueCellFull!9179 (v!12229 V!30727)) (EmptyCell!9179) )
))
(declare-datatypes ((array!54646 0))(
  ( (array!54647 (arr!26264 (Array (_ BitVec 32) ValueCell!9179)) (size!26724 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54646)

(declare-fun mapDefault!30738 () ValueCell!9179)

