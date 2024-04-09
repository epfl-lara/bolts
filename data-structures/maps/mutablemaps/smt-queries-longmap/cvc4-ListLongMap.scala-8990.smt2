; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108740 () Bool)

(assert start!108740)

(declare-fun b_free!28217 () Bool)

(declare-fun b_next!28217 () Bool)

(assert (=> start!108740 (= b_free!28217 (not b_next!28217))))

(declare-fun tp!99767 () Bool)

(declare-fun b_and!46293 () Bool)

(assert (=> start!108740 (= tp!99767 b_and!46293)))

(declare-fun mapNonEmpty!52343 () Bool)

(declare-fun mapRes!52343 () Bool)

(declare-fun tp!99768 () Bool)

(declare-fun e!733162 () Bool)

(assert (=> mapNonEmpty!52343 (= mapRes!52343 (and tp!99768 e!733162))))

(declare-fun mapKey!52343 () (_ BitVec 32))

(declare-datatypes ((V!50245 0))(
  ( (V!50246 (val!17003 Int)) )
))
(declare-datatypes ((ValueCell!16030 0))(
  ( (ValueCellFull!16030 (v!19603 V!50245)) (EmptyCell!16030) )
))
(declare-datatypes ((array!84733 0))(
  ( (array!84734 (arr!40864 (Array (_ BitVec 32) ValueCell!16030)) (size!41415 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84733)

(declare-fun mapValue!52343 () ValueCell!16030)

(declare-fun mapRest!52343 () (Array (_ BitVec 32) ValueCell!16030))

(assert (=> mapNonEmpty!52343 (= (arr!40864 _values!1445) (store mapRest!52343 mapKey!52343 mapValue!52343))))

(declare-fun b!1283247 () Bool)

(declare-fun res!852501 () Bool)

(declare-fun e!733164 () Bool)

(assert (=> b!1283247 (=> (not res!852501) (not e!733164))))

(declare-datatypes ((array!84735 0))(
  ( (array!84736 (arr!40865 (Array (_ BitVec 32) (_ BitVec 64))) (size!41416 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84735)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283247 (= res!852501 (validKeyInArray!0 (select (arr!40865 _keys!1741) from!2144)))))

(declare-fun b!1283248 () Bool)

(declare-fun res!852504 () Bool)

(assert (=> b!1283248 (=> (not res!852504) (not e!733164))))

(assert (=> b!1283248 (= res!852504 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41416 _keys!1741))))))

(declare-fun b!1283249 () Bool)

(declare-fun res!852498 () Bool)

(assert (=> b!1283249 (=> (not res!852498) (not e!733164))))

(declare-datatypes ((List!29128 0))(
  ( (Nil!29125) (Cons!29124 (h!30333 (_ BitVec 64)) (t!42679 List!29128)) )
))
(declare-fun arrayNoDuplicates!0 (array!84735 (_ BitVec 32) List!29128) Bool)

(assert (=> b!1283249 (= res!852498 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29125))))

(declare-fun b!1283250 () Bool)

(declare-fun res!852496 () Bool)

(assert (=> b!1283250 (=> (not res!852496) (not e!733164))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1283250 (= res!852496 (and (= (size!41415 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41416 _keys!1741) (size!41415 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1283251 () Bool)

(declare-fun res!852499 () Bool)

(assert (=> b!1283251 (=> (not res!852499) (not e!733164))))

(declare-fun minValue!1387 () V!50245)

(declare-fun zeroValue!1387 () V!50245)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21918 0))(
  ( (tuple2!21919 (_1!10969 (_ BitVec 64)) (_2!10969 V!50245)) )
))
(declare-datatypes ((List!29129 0))(
  ( (Nil!29126) (Cons!29125 (h!30334 tuple2!21918) (t!42680 List!29129)) )
))
(declare-datatypes ((ListLongMap!19587 0))(
  ( (ListLongMap!19588 (toList!9809 List!29129)) )
))
(declare-fun contains!7864 (ListLongMap!19587 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4827 (array!84735 array!84733 (_ BitVec 32) (_ BitVec 32) V!50245 V!50245 (_ BitVec 32) Int) ListLongMap!19587)

(assert (=> b!1283251 (= res!852499 (contains!7864 (getCurrentListMap!4827 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1283252 () Bool)

(declare-fun tp_is_empty!33857 () Bool)

(assert (=> b!1283252 (= e!733162 tp_is_empty!33857)))

(declare-fun b!1283253 () Bool)

(declare-fun e!733165 () Bool)

(declare-fun e!733161 () Bool)

(assert (=> b!1283253 (= e!733165 (and e!733161 mapRes!52343))))

(declare-fun condMapEmpty!52343 () Bool)

(declare-fun mapDefault!52343 () ValueCell!16030)

