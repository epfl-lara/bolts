; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78682 () Bool)

(assert start!78682)

(declare-fun b_free!16867 () Bool)

(declare-fun b_next!16867 () Bool)

(assert (=> start!78682 (= b_free!16867 (not b_next!16867))))

(declare-fun tp!59042 () Bool)

(declare-fun b_and!27507 () Bool)

(assert (=> start!78682 (= tp!59042 b_and!27507)))

(declare-fun mapIsEmpty!30819 () Bool)

(declare-fun mapRes!30819 () Bool)

(assert (=> mapIsEmpty!30819 mapRes!30819))

(declare-fun b!916821 () Bool)

(declare-fun res!618185 () Bool)

(declare-fun e!514737 () Bool)

(assert (=> b!916821 (=> (not res!618185) (not e!514737))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!54746 0))(
  ( (array!54747 (arr!26314 (Array (_ BitVec 32) (_ BitVec 64))) (size!26774 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54746)

(assert (=> b!916821 (= res!618185 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26774 _keys!1487))))))

(declare-fun b!916822 () Bool)

(declare-fun res!618184 () Bool)

(assert (=> b!916822 (=> (not res!618184) (not e!514737))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30799 0))(
  ( (V!30800 (val!9738 Int)) )
))
(declare-datatypes ((ValueCell!9206 0))(
  ( (ValueCellFull!9206 (v!12256 V!30799)) (EmptyCell!9206) )
))
(declare-datatypes ((array!54748 0))(
  ( (array!54749 (arr!26315 (Array (_ BitVec 32) ValueCell!9206)) (size!26775 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54748)

(assert (=> b!916822 (= res!618184 (and (= (size!26775 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26774 _keys!1487) (size!26775 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916823 () Bool)

(declare-fun e!514740 () Bool)

(assert (=> b!916823 (= e!514740 false)))

(declare-fun lt!411855 () V!30799)

(declare-datatypes ((tuple2!12710 0))(
  ( (tuple2!12711 (_1!6365 (_ BitVec 64)) (_2!6365 V!30799)) )
))
(declare-datatypes ((List!18567 0))(
  ( (Nil!18564) (Cons!18563 (h!19709 tuple2!12710) (t!26188 List!18567)) )
))
(declare-datatypes ((ListLongMap!11421 0))(
  ( (ListLongMap!11422 (toList!5726 List!18567)) )
))
(declare-fun lt!411854 () ListLongMap!11421)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!554 (ListLongMap!11421 (_ BitVec 64)) V!30799)

(assert (=> b!916823 (= lt!411855 (apply!554 lt!411854 k!1099))))

(declare-fun b!916824 () Bool)

(declare-fun e!514738 () Bool)

(declare-fun tp_is_empty!19375 () Bool)

(assert (=> b!916824 (= e!514738 tp_is_empty!19375)))

(declare-fun res!618187 () Bool)

(assert (=> start!78682 (=> (not res!618187) (not e!514737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78682 (= res!618187 (validMask!0 mask!1881))))

(assert (=> start!78682 e!514737))

(assert (=> start!78682 true))

(declare-fun e!514736 () Bool)

(declare-fun array_inv!20516 (array!54748) Bool)

(assert (=> start!78682 (and (array_inv!20516 _values!1231) e!514736)))

(assert (=> start!78682 tp!59042))

(declare-fun array_inv!20517 (array!54746) Bool)

(assert (=> start!78682 (array_inv!20517 _keys!1487)))

(assert (=> start!78682 tp_is_empty!19375))

(declare-fun b!916825 () Bool)

(declare-fun res!618186 () Bool)

(assert (=> b!916825 (=> (not res!618186) (not e!514737))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54746 (_ BitVec 32)) Bool)

(assert (=> b!916825 (= res!618186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!916826 () Bool)

(assert (=> b!916826 (= e!514736 (and e!514738 mapRes!30819))))

(declare-fun condMapEmpty!30819 () Bool)

(declare-fun mapDefault!30819 () ValueCell!9206)

