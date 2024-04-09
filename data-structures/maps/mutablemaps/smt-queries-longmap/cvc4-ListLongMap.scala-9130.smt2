; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109604 () Bool)

(assert start!109604)

(declare-fun b_free!29057 () Bool)

(declare-fun b_next!29057 () Bool)

(assert (=> start!109604 (= b_free!29057 (not b_next!29057))))

(declare-fun tp!102291 () Bool)

(declare-fun b_and!47157 () Bool)

(assert (=> start!109604 (= tp!102291 b_and!47157)))

(declare-fun b!1297621 () Bool)

(declare-fun e!740376 () Bool)

(declare-fun tp_is_empty!34697 () Bool)

(assert (=> b!1297621 (= e!740376 tp_is_empty!34697)))

(declare-fun b!1297622 () Bool)

(declare-fun e!740373 () Bool)

(assert (=> b!1297622 (= e!740373 tp_is_empty!34697)))

(declare-fun b!1297623 () Bool)

(declare-fun res!862443 () Bool)

(declare-fun e!740377 () Bool)

(assert (=> b!1297623 (=> (not res!862443) (not e!740377))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86367 0))(
  ( (array!86368 (arr!41680 (Array (_ BitVec 32) (_ BitVec 64))) (size!42231 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86367)

(assert (=> b!1297623 (= res!862443 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42231 _keys!1741))))))

(declare-fun b!1297624 () Bool)

(assert (=> b!1297624 (= e!740377 false)))

(declare-datatypes ((V!51365 0))(
  ( (V!51366 (val!17423 Int)) )
))
(declare-fun minValue!1387 () V!51365)

(declare-fun zeroValue!1387 () V!51365)

(declare-fun lt!580567 () Bool)

(declare-datatypes ((ValueCell!16450 0))(
  ( (ValueCellFull!16450 (v!20024 V!51365)) (EmptyCell!16450) )
))
(declare-datatypes ((array!86369 0))(
  ( (array!86370 (arr!41681 (Array (_ BitVec 32) ValueCell!16450)) (size!42232 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86369)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22602 0))(
  ( (tuple2!22603 (_1!11311 (_ BitVec 64)) (_2!11311 V!51365)) )
))
(declare-datatypes ((List!29765 0))(
  ( (Nil!29762) (Cons!29761 (h!30970 tuple2!22602) (t!43336 List!29765)) )
))
(declare-datatypes ((ListLongMap!20271 0))(
  ( (ListLongMap!20272 (toList!10151 List!29765)) )
))
(declare-fun contains!8205 (ListLongMap!20271 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5125 (array!86367 array!86369 (_ BitVec 32) (_ BitVec 32) V!51365 V!51365 (_ BitVec 32) Int) ListLongMap!20271)

(assert (=> b!1297624 (= lt!580567 (contains!8205 (getCurrentListMap!5125 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1297625 () Bool)

(declare-fun res!862440 () Bool)

(assert (=> b!1297625 (=> (not res!862440) (not e!740377))))

(assert (=> b!1297625 (= res!862440 (and (= (size!42232 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42231 _keys!1741) (size!42232 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1297626 () Bool)

(declare-fun res!862439 () Bool)

(assert (=> b!1297626 (=> (not res!862439) (not e!740377))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86367 (_ BitVec 32)) Bool)

(assert (=> b!1297626 (= res!862439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!53606 () Bool)

(declare-fun mapRes!53606 () Bool)

(assert (=> mapIsEmpty!53606 mapRes!53606))

(declare-fun res!862441 () Bool)

(assert (=> start!109604 (=> (not res!862441) (not e!740377))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109604 (= res!862441 (validMask!0 mask!2175))))

(assert (=> start!109604 e!740377))

(assert (=> start!109604 tp_is_empty!34697))

(assert (=> start!109604 true))

(declare-fun e!740375 () Bool)

(declare-fun array_inv!31539 (array!86369) Bool)

(assert (=> start!109604 (and (array_inv!31539 _values!1445) e!740375)))

(declare-fun array_inv!31540 (array!86367) Bool)

(assert (=> start!109604 (array_inv!31540 _keys!1741)))

(assert (=> start!109604 tp!102291))

(declare-fun mapNonEmpty!53606 () Bool)

(declare-fun tp!102290 () Bool)

(assert (=> mapNonEmpty!53606 (= mapRes!53606 (and tp!102290 e!740373))))

(declare-fun mapRest!53606 () (Array (_ BitVec 32) ValueCell!16450))

(declare-fun mapValue!53606 () ValueCell!16450)

(declare-fun mapKey!53606 () (_ BitVec 32))

(assert (=> mapNonEmpty!53606 (= (arr!41681 _values!1445) (store mapRest!53606 mapKey!53606 mapValue!53606))))

(declare-fun b!1297627 () Bool)

(declare-fun res!862442 () Bool)

(assert (=> b!1297627 (=> (not res!862442) (not e!740377))))

(declare-datatypes ((List!29766 0))(
  ( (Nil!29763) (Cons!29762 (h!30971 (_ BitVec 64)) (t!43337 List!29766)) )
))
(declare-fun arrayNoDuplicates!0 (array!86367 (_ BitVec 32) List!29766) Bool)

(assert (=> b!1297627 (= res!862442 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29763))))

(declare-fun b!1297628 () Bool)

(assert (=> b!1297628 (= e!740375 (and e!740376 mapRes!53606))))

(declare-fun condMapEmpty!53606 () Bool)

(declare-fun mapDefault!53606 () ValueCell!16450)

