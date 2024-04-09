; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108484 () Bool)

(assert start!108484)

(declare-fun b_free!27995 () Bool)

(declare-fun b_next!27995 () Bool)

(assert (=> start!108484 (= b_free!27995 (not b_next!27995))))

(declare-fun tp!99095 () Bool)

(declare-fun b_and!46065 () Bool)

(assert (=> start!108484 (= tp!99095 b_and!46065)))

(declare-fun b!1279855 () Bool)

(declare-fun e!731303 () Bool)

(assert (=> b!1279855 (= e!731303 false)))

(declare-datatypes ((V!49949 0))(
  ( (V!49950 (val!16892 Int)) )
))
(declare-fun minValue!1387 () V!49949)

(declare-fun zeroValue!1387 () V!49949)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15919 0))(
  ( (ValueCellFull!15919 (v!19490 V!49949)) (EmptyCell!15919) )
))
(declare-datatypes ((array!84303 0))(
  ( (array!84304 (arr!40651 (Array (_ BitVec 32) ValueCell!15919)) (size!41202 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84303)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84305 0))(
  ( (array!84306 (arr!40652 (Array (_ BitVec 32) (_ BitVec 64))) (size!41203 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84305)

(declare-fun lt!576001 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21762 0))(
  ( (tuple2!21763 (_1!10891 (_ BitVec 64)) (_2!10891 V!49949)) )
))
(declare-datatypes ((List!28974 0))(
  ( (Nil!28971) (Cons!28970 (h!30179 tuple2!21762) (t!42521 List!28974)) )
))
(declare-datatypes ((ListLongMap!19431 0))(
  ( (ListLongMap!19432 (toList!9731 List!28974)) )
))
(declare-fun contains!7784 (ListLongMap!19431 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4751 (array!84305 array!84303 (_ BitVec 32) (_ BitVec 32) V!49949 V!49949 (_ BitVec 32) Int) ListLongMap!19431)

(assert (=> b!1279855 (= lt!576001 (contains!7784 (getCurrentListMap!4751 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapNonEmpty!52004 () Bool)

(declare-fun mapRes!52004 () Bool)

(declare-fun tp!99096 () Bool)

(declare-fun e!731304 () Bool)

(assert (=> mapNonEmpty!52004 (= mapRes!52004 (and tp!99096 e!731304))))

(declare-fun mapRest!52004 () (Array (_ BitVec 32) ValueCell!15919))

(declare-fun mapValue!52004 () ValueCell!15919)

(declare-fun mapKey!52004 () (_ BitVec 32))

(assert (=> mapNonEmpty!52004 (= (arr!40651 _values!1445) (store mapRest!52004 mapKey!52004 mapValue!52004))))

(declare-fun b!1279856 () Bool)

(declare-fun res!850255 () Bool)

(assert (=> b!1279856 (=> (not res!850255) (not e!731303))))

(assert (=> b!1279856 (= res!850255 (and (= (size!41202 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41203 _keys!1741) (size!41202 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1279857 () Bool)

(declare-fun e!731301 () Bool)

(declare-fun tp_is_empty!33635 () Bool)

(assert (=> b!1279857 (= e!731301 tp_is_empty!33635)))

(declare-fun res!850253 () Bool)

(assert (=> start!108484 (=> (not res!850253) (not e!731303))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108484 (= res!850253 (validMask!0 mask!2175))))

(assert (=> start!108484 e!731303))

(assert (=> start!108484 tp_is_empty!33635))

(assert (=> start!108484 true))

(declare-fun e!731305 () Bool)

(declare-fun array_inv!30841 (array!84303) Bool)

(assert (=> start!108484 (and (array_inv!30841 _values!1445) e!731305)))

(declare-fun array_inv!30842 (array!84305) Bool)

(assert (=> start!108484 (array_inv!30842 _keys!1741)))

(assert (=> start!108484 tp!99095))

(declare-fun b!1279858 () Bool)

(assert (=> b!1279858 (= e!731305 (and e!731301 mapRes!52004))))

(declare-fun condMapEmpty!52004 () Bool)

(declare-fun mapDefault!52004 () ValueCell!15919)

