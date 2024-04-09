; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3932 () Bool)

(assert start!3932)

(declare-fun b_free!839 () Bool)

(declare-fun b_next!839 () Bool)

(assert (=> start!3932 (= b_free!839 (not b_next!839))))

(declare-fun tp!3936 () Bool)

(declare-fun b_and!1651 () Bool)

(assert (=> start!3932 (= tp!3936 b_and!1651)))

(declare-fun b!27995 () Bool)

(declare-fun res!16615 () Bool)

(declare-fun e!18160 () Bool)

(assert (=> b!27995 (=> (not res!16615) (not e!18160))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1415 0))(
  ( (V!1416 (val!623 Int)) )
))
(declare-datatypes ((ValueCell!397 0))(
  ( (ValueCellFull!397 (v!1712 V!1415)) (EmptyCell!397) )
))
(declare-datatypes ((array!1613 0))(
  ( (array!1614 (arr!760 (Array (_ BitVec 32) ValueCell!397)) (size!861 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1613)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1615 0))(
  ( (array!1616 (arr!761 (Array (_ BitVec 32) (_ BitVec 64))) (size!862 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1615)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1415)

(declare-fun minValue!1443 () V!1415)

(declare-datatypes ((tuple2!1022 0))(
  ( (tuple2!1023 (_1!521 (_ BitVec 64)) (_2!521 V!1415)) )
))
(declare-datatypes ((List!638 0))(
  ( (Nil!635) (Cons!634 (h!1201 tuple2!1022) (t!3333 List!638)) )
))
(declare-datatypes ((ListLongMap!603 0))(
  ( (ListLongMap!604 (toList!317 List!638)) )
))
(declare-fun contains!254 (ListLongMap!603 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!145 (array!1615 array!1613 (_ BitVec 32) (_ BitVec 32) V!1415 V!1415 (_ BitVec 32) Int) ListLongMap!603)

(assert (=> b!27995 (= res!16615 (not (contains!254 (getCurrentListMap!145 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!27996 () Bool)

(declare-fun res!16613 () Bool)

(assert (=> b!27996 (=> (not res!16613) (not e!18160))))

(declare-datatypes ((List!639 0))(
  ( (Nil!636) (Cons!635 (h!1202 (_ BitVec 64)) (t!3334 List!639)) )
))
(declare-fun arrayNoDuplicates!0 (array!1615 (_ BitVec 32) List!639) Bool)

(assert (=> b!27996 (= res!16613 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!636))))

(declare-fun b!27997 () Bool)

(declare-fun e!18157 () Bool)

(declare-fun tp_is_empty!1193 () Bool)

(assert (=> b!27997 (= e!18157 tp_is_empty!1193)))

(declare-fun b!27998 () Bool)

(declare-fun e!18158 () Bool)

(declare-fun e!18159 () Bool)

(declare-fun mapRes!1318 () Bool)

(assert (=> b!27998 (= e!18158 (and e!18159 mapRes!1318))))

(declare-fun condMapEmpty!1318 () Bool)

(declare-fun mapDefault!1318 () ValueCell!397)

