; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109654 () Bool)

(assert start!109654)

(declare-fun b_free!29107 () Bool)

(declare-fun b_next!29107 () Bool)

(assert (=> start!109654 (= b_free!29107 (not b_next!29107))))

(declare-fun tp!102441 () Bool)

(declare-fun b_and!47207 () Bool)

(assert (=> start!109654 (= tp!102441 b_and!47207)))

(declare-fun b!1298369 () Bool)

(declare-fun res!862962 () Bool)

(declare-fun e!740749 () Bool)

(assert (=> b!1298369 (=> (not res!862962) (not e!740749))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86463 0))(
  ( (array!86464 (arr!41728 (Array (_ BitVec 32) (_ BitVec 64))) (size!42279 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86463)

(assert (=> b!1298369 (= res!862962 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42279 _keys!1741))))))

(declare-fun b!1298370 () Bool)

(assert (=> b!1298370 (= e!740749 (not (bvsge (bvadd #b00000000000000000000000000000001 from!2144) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!51433 0))(
  ( (V!51434 (val!17448 Int)) )
))
(declare-fun minValue!1387 () V!51433)

(declare-fun zeroValue!1387 () V!51433)

(declare-datatypes ((ValueCell!16475 0))(
  ( (ValueCellFull!16475 (v!20049 V!51433)) (EmptyCell!16475) )
))
(declare-datatypes ((array!86465 0))(
  ( (array!86466 (arr!41729 (Array (_ BitVec 32) ValueCell!16475)) (size!42280 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86465)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22644 0))(
  ( (tuple2!22645 (_1!11332 (_ BitVec 64)) (_2!11332 V!51433)) )
))
(declare-datatypes ((List!29805 0))(
  ( (Nil!29802) (Cons!29801 (h!31010 tuple2!22644) (t!43376 List!29805)) )
))
(declare-datatypes ((ListLongMap!20313 0))(
  ( (ListLongMap!20314 (toList!10172 List!29805)) )
))
(declare-fun contains!8226 (ListLongMap!20313 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5146 (array!86463 array!86465 (_ BitVec 32) (_ BitVec 32) V!51433 V!51433 (_ BitVec 32) Int) ListLongMap!20313)

(assert (=> b!1298370 (contains!8226 (getCurrentListMap!5146 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42938 0))(
  ( (Unit!42939) )
))
(declare-fun lt!580642 () Unit!42938)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!44 (array!86463 array!86465 (_ BitVec 32) (_ BitVec 32) V!51433 V!51433 (_ BitVec 64) (_ BitVec 32) Int) Unit!42938)

(assert (=> b!1298370 (= lt!580642 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!44 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1298371 () Bool)

(declare-fun res!862963 () Bool)

(assert (=> b!1298371 (=> (not res!862963) (not e!740749))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86463 (_ BitVec 32)) Bool)

(assert (=> b!1298371 (= res!862963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!862968 () Bool)

(assert (=> start!109654 (=> (not res!862968) (not e!740749))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109654 (= res!862968 (validMask!0 mask!2175))))

(assert (=> start!109654 e!740749))

(declare-fun tp_is_empty!34747 () Bool)

(assert (=> start!109654 tp_is_empty!34747))

(assert (=> start!109654 true))

(declare-fun e!740750 () Bool)

(declare-fun array_inv!31573 (array!86465) Bool)

(assert (=> start!109654 (and (array_inv!31573 _values!1445) e!740750)))

(declare-fun array_inv!31574 (array!86463) Bool)

(assert (=> start!109654 (array_inv!31574 _keys!1741)))

(assert (=> start!109654 tp!102441))

(declare-fun b!1298372 () Bool)

(declare-fun res!862967 () Bool)

(assert (=> b!1298372 (=> (not res!862967) (not e!740749))))

(assert (=> b!1298372 (= res!862967 (and (= (size!42280 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42279 _keys!1741) (size!42280 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1298373 () Bool)

(declare-fun e!740752 () Bool)

(assert (=> b!1298373 (= e!740752 tp_is_empty!34747)))

(declare-fun b!1298374 () Bool)

(declare-fun res!862966 () Bool)

(assert (=> b!1298374 (=> (not res!862966) (not e!740749))))

(assert (=> b!1298374 (= res!862966 (contains!8226 (getCurrentListMap!5146 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1298375 () Bool)

(declare-fun res!862965 () Bool)

(assert (=> b!1298375 (=> (not res!862965) (not e!740749))))

(assert (=> b!1298375 (= res!862965 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42279 _keys!1741)) (not (= (select (arr!41728 _keys!1741) from!2144) k!1205))))))

(declare-fun mapNonEmpty!53681 () Bool)

(declare-fun mapRes!53681 () Bool)

(declare-fun tp!102440 () Bool)

(declare-fun e!740751 () Bool)

(assert (=> mapNonEmpty!53681 (= mapRes!53681 (and tp!102440 e!740751))))

(declare-fun mapValue!53681 () ValueCell!16475)

(declare-fun mapKey!53681 () (_ BitVec 32))

(declare-fun mapRest!53681 () (Array (_ BitVec 32) ValueCell!16475))

(assert (=> mapNonEmpty!53681 (= (arr!41729 _values!1445) (store mapRest!53681 mapKey!53681 mapValue!53681))))

(declare-fun b!1298376 () Bool)

(assert (=> b!1298376 (= e!740750 (and e!740752 mapRes!53681))))

(declare-fun condMapEmpty!53681 () Bool)

(declare-fun mapDefault!53681 () ValueCell!16475)

