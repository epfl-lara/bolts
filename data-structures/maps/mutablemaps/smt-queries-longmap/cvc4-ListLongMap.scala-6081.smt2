; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78626 () Bool)

(assert start!78626)

(declare-fun b_free!16811 () Bool)

(declare-fun b_next!16811 () Bool)

(assert (=> start!78626 (= b_free!16811 (not b_next!16811))))

(declare-fun tp!58875 () Bool)

(declare-fun b_and!27451 () Bool)

(assert (=> start!78626 (= tp!58875 b_and!27451)))

(declare-fun mapIsEmpty!30735 () Bool)

(declare-fun mapRes!30735 () Bool)

(assert (=> mapIsEmpty!30735 mapRes!30735))

(declare-fun b!916075 () Bool)

(declare-fun res!617691 () Bool)

(declare-fun e!514253 () Bool)

(assert (=> b!916075 (=> (not res!617691) (not e!514253))))

(declare-datatypes ((array!54640 0))(
  ( (array!54641 (arr!26261 (Array (_ BitVec 32) (_ BitVec 64))) (size!26721 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54640)

(declare-datatypes ((List!18527 0))(
  ( (Nil!18524) (Cons!18523 (h!19669 (_ BitVec 64)) (t!26148 List!18527)) )
))
(declare-fun arrayNoDuplicates!0 (array!54640 (_ BitVec 32) List!18527) Bool)

(assert (=> b!916075 (= res!617691 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18524))))

(declare-fun b!916076 () Bool)

(declare-fun res!617689 () Bool)

(assert (=> b!916076 (=> (not res!617689) (not e!514253))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30723 0))(
  ( (V!30724 (val!9710 Int)) )
))
(declare-datatypes ((ValueCell!9178 0))(
  ( (ValueCellFull!9178 (v!12228 V!30723)) (EmptyCell!9178) )
))
(declare-datatypes ((array!54642 0))(
  ( (array!54643 (arr!26262 (Array (_ BitVec 32) ValueCell!9178)) (size!26722 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54642)

(assert (=> b!916076 (= res!617689 (and (= (size!26722 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26721 _keys!1487) (size!26722 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916077 () Bool)

(declare-fun e!514252 () Bool)

(declare-fun tp_is_empty!19319 () Bool)

(assert (=> b!916077 (= e!514252 tp_is_empty!19319)))

(declare-fun b!916078 () Bool)

(declare-fun e!514251 () Bool)

(assert (=> b!916078 (= e!514251 (and e!514252 mapRes!30735))))

(declare-fun condMapEmpty!30735 () Bool)

(declare-fun mapDefault!30735 () ValueCell!9178)

