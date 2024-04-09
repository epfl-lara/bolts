; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109970 () Bool)

(assert start!109970)

(declare-fun b_free!29233 () Bool)

(declare-fun b_next!29233 () Bool)

(assert (=> start!109970 (= b_free!29233 (not b_next!29233))))

(declare-fun tp!102840 () Bool)

(declare-fun b_and!47385 () Bool)

(assert (=> start!109970 (= tp!102840 b_and!47385)))

(declare-fun b!1302182 () Bool)

(declare-fun e!742763 () Bool)

(declare-fun e!742768 () Bool)

(assert (=> b!1302182 (= e!742763 e!742768)))

(declare-fun res!865079 () Bool)

(assert (=> b!1302182 (=> (not res!865079) (not e!742768))))

(declare-datatypes ((V!51601 0))(
  ( (V!51602 (val!17511 Int)) )
))
(declare-fun minValue!1387 () V!51601)

(declare-fun zeroValue!1387 () V!51601)

(declare-datatypes ((ValueCell!16538 0))(
  ( (ValueCellFull!16538 (v!20121 V!51601)) (EmptyCell!16538) )
))
(declare-datatypes ((array!86719 0))(
  ( (array!86720 (arr!41849 (Array (_ BitVec 32) ValueCell!16538)) (size!42400 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86719)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86721 0))(
  ( (array!86722 (arr!41850 (Array (_ BitVec 32) (_ BitVec 64))) (size!42401 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86721)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22746 0))(
  ( (tuple2!22747 (_1!11383 (_ BitVec 64)) (_2!11383 V!51601)) )
))
(declare-datatypes ((List!29899 0))(
  ( (Nil!29896) (Cons!29895 (h!31104 tuple2!22746) (t!43494 List!29899)) )
))
(declare-datatypes ((ListLongMap!20415 0))(
  ( (ListLongMap!20416 (toList!10223 List!29899)) )
))
(declare-fun contains!8288 (ListLongMap!20415 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!6158 (array!86721 array!86719 (_ BitVec 32) (_ BitVec 32) V!51601 V!51601 (_ BitVec 32) Int) ListLongMap!20415)

(assert (=> b!1302182 (= res!865079 (not (contains!8288 (getCurrentListMapNoExtraKeys!6158 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205)))))

(declare-fun b!1302183 () Bool)

(declare-fun res!865073 () Bool)

(declare-fun e!742765 () Bool)

(assert (=> b!1302183 (=> (not res!865073) (not e!742765))))

(assert (=> b!1302183 (= res!865073 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42401 _keys!1741))))))

(declare-fun mapNonEmpty!53892 () Bool)

(declare-fun mapRes!53892 () Bool)

(declare-fun tp!102841 () Bool)

(declare-fun e!742769 () Bool)

(assert (=> mapNonEmpty!53892 (= mapRes!53892 (and tp!102841 e!742769))))

(declare-fun mapValue!53892 () ValueCell!16538)

(declare-fun mapRest!53892 () (Array (_ BitVec 32) ValueCell!16538))

(declare-fun mapKey!53892 () (_ BitVec 32))

(assert (=> mapNonEmpty!53892 (= (arr!41849 _values!1445) (store mapRest!53892 mapKey!53892 mapValue!53892))))

(declare-fun b!1302184 () Bool)

(declare-fun res!865074 () Bool)

(assert (=> b!1302184 (=> (not res!865074) (not e!742765))))

(assert (=> b!1302184 (= res!865074 (and (= (size!42400 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42401 _keys!1741) (size!42400 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1302185 () Bool)

(declare-fun e!742764 () Bool)

(declare-fun tp_is_empty!34873 () Bool)

(assert (=> b!1302185 (= e!742764 tp_is_empty!34873)))

(declare-fun b!1302186 () Bool)

(assert (=> b!1302186 (= e!742769 tp_is_empty!34873)))

(declare-fun b!1302187 () Bool)

(declare-fun e!742767 () Bool)

(assert (=> b!1302187 (= e!742767 (and e!742764 mapRes!53892))))

(declare-fun condMapEmpty!53892 () Bool)

(declare-fun mapDefault!53892 () ValueCell!16538)

