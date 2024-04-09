; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78616 () Bool)

(assert start!78616)

(declare-fun b_free!16801 () Bool)

(declare-fun b_next!16801 () Bool)

(assert (=> start!78616 (= b_free!16801 (not b_next!16801))))

(declare-fun tp!58845 () Bool)

(declare-fun b_and!27441 () Bool)

(assert (=> start!78616 (= tp!58845 b_and!27441)))

(declare-fun res!617615 () Bool)

(declare-fun e!514176 () Bool)

(assert (=> start!78616 (=> (not res!617615) (not e!514176))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78616 (= res!617615 (validMask!0 mask!1881))))

(assert (=> start!78616 e!514176))

(assert (=> start!78616 true))

(declare-datatypes ((V!30711 0))(
  ( (V!30712 (val!9705 Int)) )
))
(declare-datatypes ((ValueCell!9173 0))(
  ( (ValueCellFull!9173 (v!12223 V!30711)) (EmptyCell!9173) )
))
(declare-datatypes ((array!54620 0))(
  ( (array!54621 (arr!26251 (Array (_ BitVec 32) ValueCell!9173)) (size!26711 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54620)

(declare-fun e!514175 () Bool)

(declare-fun array_inv!20470 (array!54620) Bool)

(assert (=> start!78616 (and (array_inv!20470 _values!1231) e!514175)))

(assert (=> start!78616 tp!58845))

(declare-datatypes ((array!54622 0))(
  ( (array!54623 (arr!26252 (Array (_ BitVec 32) (_ BitVec 64))) (size!26712 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54622)

(declare-fun array_inv!20471 (array!54622) Bool)

(assert (=> start!78616 (array_inv!20471 _keys!1487)))

(declare-fun tp_is_empty!19309 () Bool)

(assert (=> start!78616 tp_is_empty!19309))

(declare-fun mapNonEmpty!30720 () Bool)

(declare-fun mapRes!30720 () Bool)

(declare-fun tp!58844 () Bool)

(declare-fun e!514179 () Bool)

(assert (=> mapNonEmpty!30720 (= mapRes!30720 (and tp!58844 e!514179))))

(declare-fun mapRest!30720 () (Array (_ BitVec 32) ValueCell!9173))

(declare-fun mapKey!30720 () (_ BitVec 32))

(declare-fun mapValue!30720 () ValueCell!9173)

(assert (=> mapNonEmpty!30720 (= (arr!26251 _values!1231) (store mapRest!30720 mapKey!30720 mapValue!30720))))

(declare-fun b!915955 () Bool)

(declare-fun e!514177 () Bool)

(assert (=> b!915955 (= e!514175 (and e!514177 mapRes!30720))))

(declare-fun condMapEmpty!30720 () Bool)

(declare-fun mapDefault!30720 () ValueCell!9173)

