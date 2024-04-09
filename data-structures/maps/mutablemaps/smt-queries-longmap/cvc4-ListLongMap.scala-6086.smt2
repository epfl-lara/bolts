; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78656 () Bool)

(assert start!78656)

(declare-fun b_free!16841 () Bool)

(declare-fun b_next!16841 () Bool)

(assert (=> start!78656 (= b_free!16841 (not b_next!16841))))

(declare-fun tp!58964 () Bool)

(declare-fun b_and!27481 () Bool)

(assert (=> start!78656 (= tp!58964 b_and!27481)))

(declare-fun mapNonEmpty!30780 () Bool)

(declare-fun mapRes!30780 () Bool)

(declare-fun tp!58965 () Bool)

(declare-fun e!514504 () Bool)

(assert (=> mapNonEmpty!30780 (= mapRes!30780 (and tp!58965 e!514504))))

(declare-fun mapKey!30780 () (_ BitVec 32))

(declare-datatypes ((V!30763 0))(
  ( (V!30764 (val!9725 Int)) )
))
(declare-datatypes ((ValueCell!9193 0))(
  ( (ValueCellFull!9193 (v!12243 V!30763)) (EmptyCell!9193) )
))
(declare-fun mapRest!30780 () (Array (_ BitVec 32) ValueCell!9193))

(declare-datatypes ((array!54700 0))(
  ( (array!54701 (arr!26291 (Array (_ BitVec 32) ValueCell!9193)) (size!26751 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54700)

(declare-fun mapValue!30780 () ValueCell!9193)

(assert (=> mapNonEmpty!30780 (= (arr!26291 _values!1231) (store mapRest!30780 mapKey!30780 mapValue!30780))))

(declare-fun res!617950 () Bool)

(declare-fun e!514502 () Bool)

(assert (=> start!78656 (=> (not res!617950) (not e!514502))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78656 (= res!617950 (validMask!0 mask!1881))))

(assert (=> start!78656 e!514502))

(assert (=> start!78656 true))

(declare-fun e!514503 () Bool)

(declare-fun array_inv!20502 (array!54700) Bool)

(assert (=> start!78656 (and (array_inv!20502 _values!1231) e!514503)))

(assert (=> start!78656 tp!58964))

(declare-datatypes ((array!54702 0))(
  ( (array!54703 (arr!26292 (Array (_ BitVec 32) (_ BitVec 64))) (size!26752 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54702)

(declare-fun array_inv!20503 (array!54702) Bool)

(assert (=> start!78656 (array_inv!20503 _keys!1487)))

(declare-fun tp_is_empty!19349 () Bool)

(assert (=> start!78656 tp_is_empty!19349))

(declare-fun mapIsEmpty!30780 () Bool)

(assert (=> mapIsEmpty!30780 mapRes!30780))

(declare-fun b!916470 () Bool)

(declare-fun res!617949 () Bool)

(assert (=> b!916470 (=> (not res!617949) (not e!514502))))

(declare-datatypes ((List!18552 0))(
  ( (Nil!18549) (Cons!18548 (h!19694 (_ BitVec 64)) (t!26173 List!18552)) )
))
(declare-fun arrayNoDuplicates!0 (array!54702 (_ BitVec 32) List!18552) Bool)

(assert (=> b!916470 (= res!617949 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18549))))

(declare-fun b!916471 () Bool)

(declare-fun e!514501 () Bool)

(assert (=> b!916471 (= e!514501 tp_is_empty!19349)))

(declare-fun b!916472 () Bool)

(assert (=> b!916472 (= e!514504 tp_is_empty!19349)))

(declare-fun b!916473 () Bool)

(declare-fun res!617952 () Bool)

(assert (=> b!916473 (=> (not res!617952) (not e!514502))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!916473 (= res!617952 (and (= (size!26751 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26752 _keys!1487) (size!26751 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916474 () Bool)

(declare-fun res!617954 () Bool)

(assert (=> b!916474 (=> (not res!617954) (not e!514502))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54702 (_ BitVec 32)) Bool)

(assert (=> b!916474 (= res!617954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!916475 () Bool)

(assert (=> b!916475 (= e!514503 (and e!514501 mapRes!30780))))

(declare-fun condMapEmpty!30780 () Bool)

(declare-fun mapDefault!30780 () ValueCell!9193)

