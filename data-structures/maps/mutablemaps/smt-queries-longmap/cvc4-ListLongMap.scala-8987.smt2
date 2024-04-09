; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108722 () Bool)

(assert start!108722)

(declare-fun b_free!28199 () Bool)

(declare-fun b_next!28199 () Bool)

(assert (=> start!108722 (= b_free!28199 (not b_next!28199))))

(declare-fun tp!99714 () Bool)

(declare-fun b_and!46275 () Bool)

(assert (=> start!108722 (= tp!99714 b_and!46275)))

(declare-fun mapNonEmpty!52316 () Bool)

(declare-fun mapRes!52316 () Bool)

(declare-fun tp!99713 () Bool)

(declare-fun e!733028 () Bool)

(assert (=> mapNonEmpty!52316 (= mapRes!52316 (and tp!99713 e!733028))))

(declare-fun mapKey!52316 () (_ BitVec 32))

(declare-datatypes ((V!50221 0))(
  ( (V!50222 (val!16994 Int)) )
))
(declare-datatypes ((ValueCell!16021 0))(
  ( (ValueCellFull!16021 (v!19594 V!50221)) (EmptyCell!16021) )
))
(declare-fun mapRest!52316 () (Array (_ BitVec 32) ValueCell!16021))

(declare-fun mapValue!52316 () ValueCell!16021)

(declare-datatypes ((array!84697 0))(
  ( (array!84698 (arr!40846 (Array (_ BitVec 32) ValueCell!16021)) (size!41397 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84697)

(assert (=> mapNonEmpty!52316 (= (arr!40846 _values!1445) (store mapRest!52316 mapKey!52316 mapValue!52316))))

(declare-fun b!1282922 () Bool)

(declare-fun res!852255 () Bool)

(declare-fun e!733030 () Bool)

(assert (=> b!1282922 (=> (not res!852255) (not e!733030))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!84699 0))(
  ( (array!84700 (arr!40847 (Array (_ BitVec 32) (_ BitVec 64))) (size!41398 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84699)

(assert (=> b!1282922 (= res!852255 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41398 _keys!1741))))))

(declare-fun b!1282923 () Bool)

(declare-fun res!852257 () Bool)

(assert (=> b!1282923 (=> (not res!852257) (not e!733030))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1282923 (= res!852257 (validKeyInArray!0 (select (arr!40847 _keys!1741) from!2144)))))

(declare-fun b!1282924 () Bool)

(declare-fun res!852254 () Bool)

(assert (=> b!1282924 (=> (not res!852254) (not e!733030))))

(declare-datatypes ((List!29116 0))(
  ( (Nil!29113) (Cons!29112 (h!30321 (_ BitVec 64)) (t!42667 List!29116)) )
))
(declare-fun arrayNoDuplicates!0 (array!84699 (_ BitVec 32) List!29116) Bool)

(assert (=> b!1282924 (= res!852254 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29113))))

(declare-fun b!1282925 () Bool)

(declare-fun res!852259 () Bool)

(assert (=> b!1282925 (=> (not res!852259) (not e!733030))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84699 (_ BitVec 32)) Bool)

(assert (=> b!1282925 (= res!852259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1282926 () Bool)

(declare-fun res!852258 () Bool)

(assert (=> b!1282926 (=> (not res!852258) (not e!733030))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1282926 (= res!852258 (and (= (size!41397 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41398 _keys!1741) (size!41397 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1282927 () Bool)

(declare-fun res!852253 () Bool)

(assert (=> b!1282927 (=> (not res!852253) (not e!733030))))

(assert (=> b!1282927 (= res!852253 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41398 _keys!1741))))))

(declare-fun b!1282928 () Bool)

(declare-fun e!733026 () Bool)

(declare-fun tp_is_empty!33839 () Bool)

(assert (=> b!1282928 (= e!733026 tp_is_empty!33839)))

(declare-fun b!1282930 () Bool)

(declare-fun e!733029 () Bool)

(assert (=> b!1282930 (= e!733029 (and e!733026 mapRes!52316))))

(declare-fun condMapEmpty!52316 () Bool)

(declare-fun mapDefault!52316 () ValueCell!16021)

