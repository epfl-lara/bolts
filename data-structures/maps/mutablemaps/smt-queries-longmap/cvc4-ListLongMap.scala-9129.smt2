; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109598 () Bool)

(assert start!109598)

(declare-fun b_free!29051 () Bool)

(declare-fun b_next!29051 () Bool)

(assert (=> start!109598 (= b_free!29051 (not b_next!29051))))

(declare-fun tp!102273 () Bool)

(declare-fun b_and!47151 () Bool)

(assert (=> start!109598 (= tp!102273 b_and!47151)))

(declare-fun b!1297549 () Bool)

(declare-fun e!740330 () Bool)

(assert (=> b!1297549 (= e!740330 false)))

(declare-datatypes ((V!51357 0))(
  ( (V!51358 (val!17420 Int)) )
))
(declare-fun minValue!1387 () V!51357)

(declare-fun zeroValue!1387 () V!51357)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16447 0))(
  ( (ValueCellFull!16447 (v!20021 V!51357)) (EmptyCell!16447) )
))
(declare-datatypes ((array!86355 0))(
  ( (array!86356 (arr!41674 (Array (_ BitVec 32) ValueCell!16447)) (size!42225 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86355)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!580558 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86357 0))(
  ( (array!86358 (arr!41675 (Array (_ BitVec 32) (_ BitVec 64))) (size!42226 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86357)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22598 0))(
  ( (tuple2!22599 (_1!11309 (_ BitVec 64)) (_2!11309 V!51357)) )
))
(declare-datatypes ((List!29761 0))(
  ( (Nil!29758) (Cons!29757 (h!30966 tuple2!22598) (t!43332 List!29761)) )
))
(declare-datatypes ((ListLongMap!20267 0))(
  ( (ListLongMap!20268 (toList!10149 List!29761)) )
))
(declare-fun contains!8203 (ListLongMap!20267 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5123 (array!86357 array!86355 (_ BitVec 32) (_ BitVec 32) V!51357 V!51357 (_ BitVec 32) Int) ListLongMap!20267)

(assert (=> b!1297549 (= lt!580558 (contains!8203 (getCurrentListMap!5123 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun res!862396 () Bool)

(assert (=> start!109598 (=> (not res!862396) (not e!740330))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109598 (= res!862396 (validMask!0 mask!2175))))

(assert (=> start!109598 e!740330))

(declare-fun tp_is_empty!34691 () Bool)

(assert (=> start!109598 tp_is_empty!34691))

(assert (=> start!109598 true))

(declare-fun e!740331 () Bool)

(declare-fun array_inv!31535 (array!86355) Bool)

(assert (=> start!109598 (and (array_inv!31535 _values!1445) e!740331)))

(declare-fun array_inv!31536 (array!86357) Bool)

(assert (=> start!109598 (array_inv!31536 _keys!1741)))

(assert (=> start!109598 tp!102273))

(declare-fun b!1297550 () Bool)

(declare-fun res!862397 () Bool)

(assert (=> b!1297550 (=> (not res!862397) (not e!740330))))

(assert (=> b!1297550 (= res!862397 (and (= (size!42225 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42226 _keys!1741) (size!42225 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1297551 () Bool)

(declare-fun e!740329 () Bool)

(assert (=> b!1297551 (= e!740329 tp_is_empty!34691)))

(declare-fun b!1297552 () Bool)

(declare-fun res!862394 () Bool)

(assert (=> b!1297552 (=> (not res!862394) (not e!740330))))

(assert (=> b!1297552 (= res!862394 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42226 _keys!1741))))))

(declare-fun b!1297553 () Bool)

(declare-fun res!862398 () Bool)

(assert (=> b!1297553 (=> (not res!862398) (not e!740330))))

(declare-datatypes ((List!29762 0))(
  ( (Nil!29759) (Cons!29758 (h!30967 (_ BitVec 64)) (t!43333 List!29762)) )
))
(declare-fun arrayNoDuplicates!0 (array!86357 (_ BitVec 32) List!29762) Bool)

(assert (=> b!1297553 (= res!862398 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29759))))

(declare-fun mapNonEmpty!53597 () Bool)

(declare-fun mapRes!53597 () Bool)

(declare-fun tp!102272 () Bool)

(assert (=> mapNonEmpty!53597 (= mapRes!53597 (and tp!102272 e!740329))))

(declare-fun mapKey!53597 () (_ BitVec 32))

(declare-fun mapValue!53597 () ValueCell!16447)

(declare-fun mapRest!53597 () (Array (_ BitVec 32) ValueCell!16447))

(assert (=> mapNonEmpty!53597 (= (arr!41674 _values!1445) (store mapRest!53597 mapKey!53597 mapValue!53597))))

(declare-fun mapIsEmpty!53597 () Bool)

(assert (=> mapIsEmpty!53597 mapRes!53597))

(declare-fun b!1297554 () Bool)

(declare-fun res!862395 () Bool)

(assert (=> b!1297554 (=> (not res!862395) (not e!740330))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86357 (_ BitVec 32)) Bool)

(assert (=> b!1297554 (= res!862395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1297555 () Bool)

(declare-fun e!740332 () Bool)

(assert (=> b!1297555 (= e!740331 (and e!740332 mapRes!53597))))

(declare-fun condMapEmpty!53597 () Bool)

(declare-fun mapDefault!53597 () ValueCell!16447)

