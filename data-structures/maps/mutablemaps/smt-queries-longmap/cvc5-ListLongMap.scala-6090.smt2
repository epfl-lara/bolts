; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78676 () Bool)

(assert start!78676)

(declare-fun b_free!16861 () Bool)

(declare-fun b_next!16861 () Bool)

(assert (=> start!78676 (= b_free!16861 (not b_next!16861))))

(declare-fun tp!59024 () Bool)

(declare-fun b_and!27501 () Bool)

(assert (=> start!78676 (= tp!59024 b_and!27501)))

(declare-fun res!618129 () Bool)

(declare-fun e!514684 () Bool)

(assert (=> start!78676 (=> (not res!618129) (not e!514684))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78676 (= res!618129 (validMask!0 mask!1881))))

(assert (=> start!78676 e!514684))

(assert (=> start!78676 true))

(declare-datatypes ((V!30791 0))(
  ( (V!30792 (val!9735 Int)) )
))
(declare-datatypes ((ValueCell!9203 0))(
  ( (ValueCellFull!9203 (v!12253 V!30791)) (EmptyCell!9203) )
))
(declare-datatypes ((array!54736 0))(
  ( (array!54737 (arr!26309 (Array (_ BitVec 32) ValueCell!9203)) (size!26769 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54736)

(declare-fun e!514685 () Bool)

(declare-fun array_inv!20512 (array!54736) Bool)

(assert (=> start!78676 (and (array_inv!20512 _values!1231) e!514685)))

(assert (=> start!78676 tp!59024))

(declare-datatypes ((array!54738 0))(
  ( (array!54739 (arr!26310 (Array (_ BitVec 32) (_ BitVec 64))) (size!26770 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54738)

(declare-fun array_inv!20513 (array!54738) Bool)

(assert (=> start!78676 (array_inv!20513 _keys!1487)))

(declare-fun tp_is_empty!19369 () Bool)

(assert (=> start!78676 tp_is_empty!19369))

(declare-fun b!916740 () Bool)

(declare-fun res!618130 () Bool)

(assert (=> b!916740 (=> (not res!618130) (not e!514684))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!916740 (= res!618130 (and (= (size!26769 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26770 _keys!1487) (size!26769 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916741 () Bool)

(declare-fun e!514686 () Bool)

(assert (=> b!916741 (= e!514686 tp_is_empty!19369)))

(declare-fun b!916742 () Bool)

(declare-fun mapRes!30810 () Bool)

(assert (=> b!916742 (= e!514685 (and e!514686 mapRes!30810))))

(declare-fun condMapEmpty!30810 () Bool)

(declare-fun mapDefault!30810 () ValueCell!9203)

