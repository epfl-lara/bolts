; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108564 () Bool)

(assert start!108564)

(declare-fun b_free!28075 () Bool)

(declare-fun b_next!28075 () Bool)

(assert (=> start!108564 (= b_free!28075 (not b_next!28075))))

(declare-fun tp!99336 () Bool)

(declare-fun b_and!46145 () Bool)

(assert (=> start!108564 (= tp!99336 b_and!46145)))

(declare-fun b!1280927 () Bool)

(declare-fun e!731903 () Bool)

(declare-fun tp_is_empty!33715 () Bool)

(assert (=> b!1280927 (= e!731903 tp_is_empty!33715)))

(declare-fun b!1280928 () Bool)

(declare-fun e!731904 () Bool)

(assert (=> b!1280928 (= e!731904 tp_is_empty!33715)))

(declare-fun mapIsEmpty!52124 () Bool)

(declare-fun mapRes!52124 () Bool)

(assert (=> mapIsEmpty!52124 mapRes!52124))

(declare-fun b!1280929 () Bool)

(declare-fun res!850964 () Bool)

(declare-fun e!731902 () Bool)

(assert (=> b!1280929 (=> (not res!850964) (not e!731902))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50057 0))(
  ( (V!50058 (val!16932 Int)) )
))
(declare-datatypes ((ValueCell!15959 0))(
  ( (ValueCellFull!15959 (v!19530 V!50057)) (EmptyCell!15959) )
))
(declare-datatypes ((array!84457 0))(
  ( (array!84458 (arr!40728 (Array (_ BitVec 32) ValueCell!15959)) (size!41279 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84457)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84459 0))(
  ( (array!84460 (arr!40729 (Array (_ BitVec 32) (_ BitVec 64))) (size!41280 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84459)

(assert (=> b!1280929 (= res!850964 (and (= (size!41279 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41280 _keys!1741) (size!41279 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1280930 () Bool)

(declare-fun res!850968 () Bool)

(assert (=> b!1280930 (=> (not res!850968) (not e!731902))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1280930 (= res!850968 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41280 _keys!1741))))))

(declare-fun b!1280931 () Bool)

(declare-fun res!850966 () Bool)

(assert (=> b!1280931 (=> (not res!850966) (not e!731902))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1280931 (= res!850966 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41280 _keys!1741)) (not (= (select (arr!40729 _keys!1741) from!2144) k!1205))))))

(declare-fun res!850970 () Bool)

(assert (=> start!108564 (=> (not res!850970) (not e!731902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108564 (= res!850970 (validMask!0 mask!2175))))

(assert (=> start!108564 e!731902))

(assert (=> start!108564 tp_is_empty!33715))

(assert (=> start!108564 true))

(declare-fun e!731905 () Bool)

(declare-fun array_inv!30893 (array!84457) Bool)

(assert (=> start!108564 (and (array_inv!30893 _values!1445) e!731905)))

(declare-fun array_inv!30894 (array!84459) Bool)

(assert (=> start!108564 (array_inv!30894 _keys!1741)))

(assert (=> start!108564 tp!99336))

(declare-fun b!1280932 () Bool)

(declare-fun res!850969 () Bool)

(assert (=> b!1280932 (=> (not res!850969) (not e!731902))))

(declare-fun minValue!1387 () V!50057)

(declare-fun zeroValue!1387 () V!50057)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21824 0))(
  ( (tuple2!21825 (_1!10922 (_ BitVec 64)) (_2!10922 V!50057)) )
))
(declare-datatypes ((List!29034 0))(
  ( (Nil!29031) (Cons!29030 (h!30239 tuple2!21824) (t!42581 List!29034)) )
))
(declare-datatypes ((ListLongMap!19493 0))(
  ( (ListLongMap!19494 (toList!9762 List!29034)) )
))
(declare-fun contains!7815 (ListLongMap!19493 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4782 (array!84459 array!84457 (_ BitVec 32) (_ BitVec 32) V!50057 V!50057 (_ BitVec 32) Int) ListLongMap!19493)

(assert (=> b!1280932 (= res!850969 (contains!7815 (getCurrentListMap!4782 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1280933 () Bool)

(declare-fun res!850965 () Bool)

(assert (=> b!1280933 (=> (not res!850965) (not e!731902))))

(declare-datatypes ((List!29035 0))(
  ( (Nil!29032) (Cons!29031 (h!30240 (_ BitVec 64)) (t!42582 List!29035)) )
))
(declare-fun arrayNoDuplicates!0 (array!84459 (_ BitVec 32) List!29035) Bool)

(assert (=> b!1280933 (= res!850965 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29032))))

(declare-fun b!1280934 () Bool)

(assert (=> b!1280934 (= e!731902 (not true))))

(assert (=> b!1280934 (contains!7815 (getCurrentListMap!4782 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42365 0))(
  ( (Unit!42366) )
))
(declare-fun lt!576121 () Unit!42365)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!15 (array!84459 array!84457 (_ BitVec 32) (_ BitVec 32) V!50057 V!50057 (_ BitVec 64) (_ BitVec 32) Int) Unit!42365)

(assert (=> b!1280934 (= lt!576121 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!15 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1280935 () Bool)

(declare-fun res!850967 () Bool)

(assert (=> b!1280935 (=> (not res!850967) (not e!731902))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84459 (_ BitVec 32)) Bool)

(assert (=> b!1280935 (= res!850967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1280936 () Bool)

(assert (=> b!1280936 (= e!731905 (and e!731903 mapRes!52124))))

(declare-fun condMapEmpty!52124 () Bool)

(declare-fun mapDefault!52124 () ValueCell!15959)

