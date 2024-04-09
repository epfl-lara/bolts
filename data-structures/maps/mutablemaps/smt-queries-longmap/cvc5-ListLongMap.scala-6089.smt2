; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78670 () Bool)

(assert start!78670)

(declare-fun b_free!16855 () Bool)

(declare-fun b_next!16855 () Bool)

(assert (=> start!78670 (= b_free!16855 (not b_next!16855))))

(declare-fun tp!59006 () Bool)

(declare-fun b_and!27495 () Bool)

(assert (=> start!78670 (= tp!59006 b_and!27495)))

(declare-fun b!916659 () Bool)

(declare-fun e!514627 () Bool)

(declare-fun e!514630 () Bool)

(declare-fun mapRes!30801 () Bool)

(assert (=> b!916659 (= e!514627 (and e!514630 mapRes!30801))))

(declare-fun condMapEmpty!30801 () Bool)

(declare-datatypes ((V!30783 0))(
  ( (V!30784 (val!9732 Int)) )
))
(declare-datatypes ((ValueCell!9200 0))(
  ( (ValueCellFull!9200 (v!12250 V!30783)) (EmptyCell!9200) )
))
(declare-datatypes ((array!54728 0))(
  ( (array!54729 (arr!26305 (Array (_ BitVec 32) ValueCell!9200)) (size!26765 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54728)

(declare-fun mapDefault!30801 () ValueCell!9200)

