; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109378 () Bool)

(assert start!109378)

(declare-fun b_free!28831 () Bool)

(declare-fun b_next!28831 () Bool)

(assert (=> start!109378 (= b_free!28831 (not b_next!28831))))

(declare-fun tp!101612 () Bool)

(declare-fun b_and!46931 () Bool)

(assert (=> start!109378 (= tp!101612 b_and!46931)))

(declare-fun b!1294042 () Bool)

(declare-fun res!860044 () Bool)

(declare-fun e!738493 () Bool)

(assert (=> b!1294042 (=> (not res!860044) (not e!738493))))

(declare-datatypes ((array!85929 0))(
  ( (array!85930 (arr!41461 (Array (_ BitVec 32) (_ BitVec 64))) (size!42012 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85929)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85929 (_ BitVec 32)) Bool)

(assert (=> b!1294042 (= res!860044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!53267 () Bool)

(declare-fun mapRes!53267 () Bool)

(declare-fun tp!101613 () Bool)

(declare-fun e!738491 () Bool)

(assert (=> mapNonEmpty!53267 (= mapRes!53267 (and tp!101613 e!738491))))

(declare-datatypes ((V!51065 0))(
  ( (V!51066 (val!17310 Int)) )
))
(declare-datatypes ((ValueCell!16337 0))(
  ( (ValueCellFull!16337 (v!19911 V!51065)) (EmptyCell!16337) )
))
(declare-fun mapRest!53267 () (Array (_ BitVec 32) ValueCell!16337))

(declare-fun mapValue!53267 () ValueCell!16337)

(declare-datatypes ((array!85931 0))(
  ( (array!85932 (arr!41462 (Array (_ BitVec 32) ValueCell!16337)) (size!42013 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85931)

(declare-fun mapKey!53267 () (_ BitVec 32))

(assert (=> mapNonEmpty!53267 (= (arr!41462 _values!1445) (store mapRest!53267 mapKey!53267 mapValue!53267))))

(declare-fun b!1294043 () Bool)

(declare-fun res!860042 () Bool)

(assert (=> b!1294043 (=> (not res!860042) (not e!738493))))

(declare-fun minValue!1387 () V!51065)

(declare-fun zeroValue!1387 () V!51065)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22424 0))(
  ( (tuple2!22425 (_1!11222 (_ BitVec 64)) (_2!11222 V!51065)) )
))
(declare-datatypes ((List!29603 0))(
  ( (Nil!29600) (Cons!29599 (h!30808 tuple2!22424) (t!43174 List!29603)) )
))
(declare-datatypes ((ListLongMap!20093 0))(
  ( (ListLongMap!20094 (toList!10062 List!29603)) )
))
(declare-fun contains!8118 (ListLongMap!20093 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5047 (array!85929 array!85931 (_ BitVec 32) (_ BitVec 32) V!51065 V!51065 (_ BitVec 32) Int) ListLongMap!20093)

(assert (=> b!1294043 (= res!860042 (contains!8118 (getCurrentListMap!5047 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun res!860046 () Bool)

(assert (=> start!109378 (=> (not res!860046) (not e!738493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109378 (= res!860046 (validMask!0 mask!2175))))

(assert (=> start!109378 e!738493))

(declare-fun tp_is_empty!34471 () Bool)

(assert (=> start!109378 tp_is_empty!34471))

(assert (=> start!109378 true))

(declare-fun e!738492 () Bool)

(declare-fun array_inv!31381 (array!85931) Bool)

(assert (=> start!109378 (and (array_inv!31381 _values!1445) e!738492)))

(declare-fun array_inv!31382 (array!85929) Bool)

(assert (=> start!109378 (array_inv!31382 _keys!1741)))

(assert (=> start!109378 tp!101612))

(declare-fun b!1294044 () Bool)

(declare-fun res!860045 () Bool)

(assert (=> b!1294044 (=> (not res!860045) (not e!738493))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1294044 (= res!860045 (not (validKeyInArray!0 (select (arr!41461 _keys!1741) from!2144))))))

(declare-fun b!1294045 () Bool)

(declare-fun e!738489 () Bool)

(assert (=> b!1294045 (= e!738492 (and e!738489 mapRes!53267))))

(declare-fun condMapEmpty!53267 () Bool)

(declare-fun mapDefault!53267 () ValueCell!16337)

