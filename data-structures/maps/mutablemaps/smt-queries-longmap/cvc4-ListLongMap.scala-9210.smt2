; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110648 () Bool)

(assert start!110648)

(declare-fun b_free!29447 () Bool)

(declare-fun b_next!29447 () Bool)

(assert (=> start!110648 (= b_free!29447 (not b_next!29447))))

(declare-fun tp!103663 () Bool)

(declare-fun b_and!47665 () Bool)

(assert (=> start!110648 (= tp!103663 b_and!47665)))

(declare-fun res!868876 () Bool)

(declare-fun e!746689 () Bool)

(assert (=> start!110648 (=> (not res!868876) (not e!746689))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110648 (= res!868876 (validMask!0 mask!2040))))

(assert (=> start!110648 e!746689))

(assert (=> start!110648 tp!103663))

(declare-datatypes ((array!87319 0))(
  ( (array!87320 (arr!42135 (Array (_ BitVec 32) (_ BitVec 64))) (size!42686 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87319)

(declare-fun array_inv!31849 (array!87319) Bool)

(assert (=> start!110648 (array_inv!31849 _keys!1628)))

(assert (=> start!110648 true))

(declare-fun tp_is_empty!35177 () Bool)

(assert (=> start!110648 tp_is_empty!35177))

(declare-datatypes ((V!52005 0))(
  ( (V!52006 (val!17663 Int)) )
))
(declare-datatypes ((ValueCell!16690 0))(
  ( (ValueCellFull!16690 (v!20288 V!52005)) (EmptyCell!16690) )
))
(declare-datatypes ((array!87321 0))(
  ( (array!87322 (arr!42136 (Array (_ BitVec 32) ValueCell!16690)) (size!42687 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87321)

(declare-fun e!746688 () Bool)

(declare-fun array_inv!31850 (array!87321) Bool)

(assert (=> start!110648 (and (array_inv!31850 _values!1354) e!746688)))

(declare-fun b!1308722 () Bool)

(declare-fun e!746687 () Bool)

(assert (=> b!1308722 (= e!746687 tp_is_empty!35177)))

(declare-fun b!1308723 () Bool)

(declare-fun res!868883 () Bool)

(assert (=> b!1308723 (=> (not res!868883) (not e!746689))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52005)

(declare-fun zeroValue!1296 () V!52005)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22908 0))(
  ( (tuple2!22909 (_1!11464 (_ BitVec 64)) (_2!11464 V!52005)) )
))
(declare-datatypes ((List!30081 0))(
  ( (Nil!30078) (Cons!30077 (h!31286 tuple2!22908) (t!43694 List!30081)) )
))
(declare-datatypes ((ListLongMap!20577 0))(
  ( (ListLongMap!20578 (toList!10304 List!30081)) )
))
(declare-fun contains!8390 (ListLongMap!20577 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5260 (array!87319 array!87321 (_ BitVec 32) (_ BitVec 32) V!52005 V!52005 (_ BitVec 32) Int) ListLongMap!20577)

(assert (=> b!1308723 (= res!868883 (contains!8390 (getCurrentListMap!5260 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1308724 () Bool)

(declare-fun mapRes!54394 () Bool)

(assert (=> b!1308724 (= e!746688 (and e!746687 mapRes!54394))))

(declare-fun condMapEmpty!54394 () Bool)

(declare-fun mapDefault!54394 () ValueCell!16690)

