; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109664 () Bool)

(assert start!109664)

(declare-fun b_free!29117 () Bool)

(declare-fun b_next!29117 () Bool)

(assert (=> start!109664 (= b_free!29117 (not b_next!29117))))

(declare-fun tp!102471 () Bool)

(declare-fun b_and!47217 () Bool)

(assert (=> start!109664 (= tp!102471 b_and!47217)))

(declare-fun b!1298519 () Bool)

(declare-fun res!863073 () Bool)

(declare-fun e!740827 () Bool)

(assert (=> b!1298519 (=> (not res!863073) (not e!740827))))

(declare-datatypes ((V!51445 0))(
  ( (V!51446 (val!17453 Int)) )
))
(declare-datatypes ((ValueCell!16480 0))(
  ( (ValueCellFull!16480 (v!20054 V!51445)) (EmptyCell!16480) )
))
(declare-datatypes ((array!86483 0))(
  ( (array!86484 (arr!41738 (Array (_ BitVec 32) ValueCell!16480)) (size!42289 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86483)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86485 0))(
  ( (array!86486 (arr!41739 (Array (_ BitVec 32) (_ BitVec 64))) (size!42290 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86485)

(declare-fun mask!2175 () (_ BitVec 32))

(assert (=> b!1298519 (= res!863073 (and (= (size!42289 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42290 _keys!1741) (size!42289 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1298520 () Bool)

(declare-fun res!863067 () Bool)

(assert (=> b!1298520 (=> (not res!863067) (not e!740827))))

(declare-datatypes ((List!29814 0))(
  ( (Nil!29811) (Cons!29810 (h!31019 (_ BitVec 64)) (t!43385 List!29814)) )
))
(declare-fun arrayNoDuplicates!0 (array!86485 (_ BitVec 32) List!29814) Bool)

(assert (=> b!1298520 (= res!863067 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29811))))

(declare-fun b!1298521 () Bool)

(assert (=> b!1298521 (= e!740827 (not true))))

(declare-fun minValue!1387 () V!51445)

(declare-fun zeroValue!1387 () V!51445)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22654 0))(
  ( (tuple2!22655 (_1!11337 (_ BitVec 64)) (_2!11337 V!51445)) )
))
(declare-datatypes ((List!29815 0))(
  ( (Nil!29812) (Cons!29811 (h!31020 tuple2!22654) (t!43386 List!29815)) )
))
(declare-datatypes ((ListLongMap!20323 0))(
  ( (ListLongMap!20324 (toList!10177 List!29815)) )
))
(declare-fun contains!8231 (ListLongMap!20323 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5151 (array!86485 array!86483 (_ BitVec 32) (_ BitVec 32) V!51445 V!51445 (_ BitVec 32) Int) ListLongMap!20323)

(assert (=> b!1298521 (contains!8231 (getCurrentListMap!5151 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42948 0))(
  ( (Unit!42949) )
))
(declare-fun lt!580657 () Unit!42948)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!49 (array!86485 array!86483 (_ BitVec 32) (_ BitVec 32) V!51445 V!51445 (_ BitVec 64) (_ BitVec 32) Int) Unit!42948)

(assert (=> b!1298521 (= lt!580657 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!49 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun res!863068 () Bool)

(assert (=> start!109664 (=> (not res!863068) (not e!740827))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109664 (= res!863068 (validMask!0 mask!2175))))

(assert (=> start!109664 e!740827))

(declare-fun tp_is_empty!34757 () Bool)

(assert (=> start!109664 tp_is_empty!34757))

(assert (=> start!109664 true))

(declare-fun e!740826 () Bool)

(declare-fun array_inv!31583 (array!86483) Bool)

(assert (=> start!109664 (and (array_inv!31583 _values!1445) e!740826)))

(declare-fun array_inv!31584 (array!86485) Bool)

(assert (=> start!109664 (array_inv!31584 _keys!1741)))

(assert (=> start!109664 tp!102471))

(declare-fun b!1298522 () Bool)

(declare-fun res!863072 () Bool)

(assert (=> b!1298522 (=> (not res!863072) (not e!740827))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86485 (_ BitVec 32)) Bool)

(assert (=> b!1298522 (= res!863072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1298523 () Bool)

(declare-fun e!740823 () Bool)

(assert (=> b!1298523 (= e!740823 tp_is_empty!34757)))

(declare-fun b!1298524 () Bool)

(declare-fun res!863069 () Bool)

(assert (=> b!1298524 (=> (not res!863069) (not e!740827))))

(assert (=> b!1298524 (= res!863069 (contains!8231 (getCurrentListMap!5151 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapIsEmpty!53696 () Bool)

(declare-fun mapRes!53696 () Bool)

(assert (=> mapIsEmpty!53696 mapRes!53696))

(declare-fun b!1298525 () Bool)

(declare-fun res!863071 () Bool)

(assert (=> b!1298525 (=> (not res!863071) (not e!740827))))

(assert (=> b!1298525 (= res!863071 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42290 _keys!1741))))))

(declare-fun b!1298526 () Bool)

(declare-fun e!740825 () Bool)

(assert (=> b!1298526 (= e!740825 tp_is_empty!34757)))

(declare-fun b!1298527 () Bool)

(assert (=> b!1298527 (= e!740826 (and e!740823 mapRes!53696))))

(declare-fun condMapEmpty!53696 () Bool)

(declare-fun mapDefault!53696 () ValueCell!16480)

