; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109558 () Bool)

(assert start!109558)

(declare-fun b_free!29011 () Bool)

(declare-fun b_next!29011 () Bool)

(assert (=> start!109558 (= b_free!29011 (not b_next!29011))))

(declare-fun tp!102153 () Bool)

(declare-fun b_and!47111 () Bool)

(assert (=> start!109558 (= tp!102153 b_and!47111)))

(declare-fun b!1297069 () Bool)

(declare-fun res!862098 () Bool)

(declare-fun e!740030 () Bool)

(assert (=> b!1297069 (=> (not res!862098) (not e!740030))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86279 0))(
  ( (array!86280 (arr!41636 (Array (_ BitVec 32) (_ BitVec 64))) (size!42187 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86279)

(assert (=> b!1297069 (= res!862098 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42187 _keys!1741))))))

(declare-fun mapNonEmpty!53537 () Bool)

(declare-fun mapRes!53537 () Bool)

(declare-fun tp!102152 () Bool)

(declare-fun e!740028 () Bool)

(assert (=> mapNonEmpty!53537 (= mapRes!53537 (and tp!102152 e!740028))))

(declare-datatypes ((V!51305 0))(
  ( (V!51306 (val!17400 Int)) )
))
(declare-datatypes ((ValueCell!16427 0))(
  ( (ValueCellFull!16427 (v!20001 V!51305)) (EmptyCell!16427) )
))
(declare-datatypes ((array!86281 0))(
  ( (array!86282 (arr!41637 (Array (_ BitVec 32) ValueCell!16427)) (size!42188 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86281)

(declare-fun mapKey!53537 () (_ BitVec 32))

(declare-fun mapRest!53537 () (Array (_ BitVec 32) ValueCell!16427))

(declare-fun mapValue!53537 () ValueCell!16427)

(assert (=> mapNonEmpty!53537 (= (arr!41637 _values!1445) (store mapRest!53537 mapKey!53537 mapValue!53537))))

(declare-fun b!1297070 () Bool)

(assert (=> b!1297070 (= e!740030 false)))

(declare-fun minValue!1387 () V!51305)

(declare-fun zeroValue!1387 () V!51305)

(declare-fun lt!580498 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22570 0))(
  ( (tuple2!22571 (_1!11295 (_ BitVec 64)) (_2!11295 V!51305)) )
))
(declare-datatypes ((List!29734 0))(
  ( (Nil!29731) (Cons!29730 (h!30939 tuple2!22570) (t!43305 List!29734)) )
))
(declare-datatypes ((ListLongMap!20239 0))(
  ( (ListLongMap!20240 (toList!10135 List!29734)) )
))
(declare-fun contains!8189 (ListLongMap!20239 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5109 (array!86279 array!86281 (_ BitVec 32) (_ BitVec 32) V!51305 V!51305 (_ BitVec 32) Int) ListLongMap!20239)

(assert (=> b!1297070 (= lt!580498 (contains!8189 (getCurrentListMap!5109 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1297071 () Bool)

(declare-fun res!862094 () Bool)

(assert (=> b!1297071 (=> (not res!862094) (not e!740030))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86279 (_ BitVec 32)) Bool)

(assert (=> b!1297071 (= res!862094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!862097 () Bool)

(assert (=> start!109558 (=> (not res!862097) (not e!740030))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109558 (= res!862097 (validMask!0 mask!2175))))

(assert (=> start!109558 e!740030))

(declare-fun tp_is_empty!34651 () Bool)

(assert (=> start!109558 tp_is_empty!34651))

(assert (=> start!109558 true))

(declare-fun e!740032 () Bool)

(declare-fun array_inv!31513 (array!86281) Bool)

(assert (=> start!109558 (and (array_inv!31513 _values!1445) e!740032)))

(declare-fun array_inv!31514 (array!86279) Bool)

(assert (=> start!109558 (array_inv!31514 _keys!1741)))

(assert (=> start!109558 tp!102153))

(declare-fun b!1297072 () Bool)

(assert (=> b!1297072 (= e!740028 tp_is_empty!34651)))

(declare-fun b!1297073 () Bool)

(declare-fun res!862096 () Bool)

(assert (=> b!1297073 (=> (not res!862096) (not e!740030))))

(declare-datatypes ((List!29735 0))(
  ( (Nil!29732) (Cons!29731 (h!30940 (_ BitVec 64)) (t!43306 List!29735)) )
))
(declare-fun arrayNoDuplicates!0 (array!86279 (_ BitVec 32) List!29735) Bool)

(assert (=> b!1297073 (= res!862096 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29732))))

(declare-fun b!1297074 () Bool)

(declare-fun e!740029 () Bool)

(assert (=> b!1297074 (= e!740029 tp_is_empty!34651)))

(declare-fun b!1297075 () Bool)

(declare-fun res!862095 () Bool)

(assert (=> b!1297075 (=> (not res!862095) (not e!740030))))

(assert (=> b!1297075 (= res!862095 (and (= (size!42188 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42187 _keys!1741) (size!42188 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!53537 () Bool)

(assert (=> mapIsEmpty!53537 mapRes!53537))

(declare-fun b!1297076 () Bool)

(assert (=> b!1297076 (= e!740032 (and e!740029 mapRes!53537))))

(declare-fun condMapEmpty!53537 () Bool)

(declare-fun mapDefault!53537 () ValueCell!16427)

