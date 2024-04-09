; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109606 () Bool)

(assert start!109606)

(declare-fun b_free!29059 () Bool)

(declare-fun b_next!29059 () Bool)

(assert (=> start!109606 (= b_free!29059 (not b_next!29059))))

(declare-fun tp!102296 () Bool)

(declare-fun b_and!47159 () Bool)

(assert (=> start!109606 (= tp!102296 b_and!47159)))

(declare-fun mapNonEmpty!53609 () Bool)

(declare-fun mapRes!53609 () Bool)

(declare-fun tp!102297 () Bool)

(declare-fun e!740391 () Bool)

(assert (=> mapNonEmpty!53609 (= mapRes!53609 (and tp!102297 e!740391))))

(declare-datatypes ((V!51369 0))(
  ( (V!51370 (val!17424 Int)) )
))
(declare-datatypes ((ValueCell!16451 0))(
  ( (ValueCellFull!16451 (v!20025 V!51369)) (EmptyCell!16451) )
))
(declare-fun mapRest!53609 () (Array (_ BitVec 32) ValueCell!16451))

(declare-datatypes ((array!86371 0))(
  ( (array!86372 (arr!41682 (Array (_ BitVec 32) ValueCell!16451)) (size!42233 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86371)

(declare-fun mapValue!53609 () ValueCell!16451)

(declare-fun mapKey!53609 () (_ BitVec 32))

(assert (=> mapNonEmpty!53609 (= (arr!41682 _values!1445) (store mapRest!53609 mapKey!53609 mapValue!53609))))

(declare-fun b!1297649 () Bool)

(declare-fun res!862461 () Bool)

(declare-fun e!740388 () Bool)

(assert (=> b!1297649 (=> (not res!862461) (not e!740388))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86373 0))(
  ( (array!86374 (arr!41683 (Array (_ BitVec 32) (_ BitVec 64))) (size!42234 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86373)

(assert (=> b!1297649 (= res!862461 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42234 _keys!1741))))))

(declare-fun b!1297650 () Bool)

(declare-fun e!740390 () Bool)

(declare-fun tp_is_empty!34699 () Bool)

(assert (=> b!1297650 (= e!740390 tp_is_empty!34699)))

(declare-fun b!1297651 () Bool)

(declare-fun res!862464 () Bool)

(assert (=> b!1297651 (=> (not res!862464) (not e!740388))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86373 (_ BitVec 32)) Bool)

(assert (=> b!1297651 (= res!862464 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1297652 () Bool)

(declare-fun res!862463 () Bool)

(assert (=> b!1297652 (=> (not res!862463) (not e!740388))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1297652 (= res!862463 (and (= (size!42233 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42234 _keys!1741) (size!42233 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!862458 () Bool)

(assert (=> start!109606 (=> (not res!862458) (not e!740388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109606 (= res!862458 (validMask!0 mask!2175))))

(assert (=> start!109606 e!740388))

(assert (=> start!109606 tp_is_empty!34699))

(assert (=> start!109606 true))

(declare-fun e!740392 () Bool)

(declare-fun array_inv!31541 (array!86371) Bool)

(assert (=> start!109606 (and (array_inv!31541 _values!1445) e!740392)))

(declare-fun array_inv!31542 (array!86373) Bool)

(assert (=> start!109606 (array_inv!31542 _keys!1741)))

(assert (=> start!109606 tp!102296))

(declare-fun b!1297653 () Bool)

(declare-fun res!862460 () Bool)

(assert (=> b!1297653 (=> (not res!862460) (not e!740388))))

(declare-datatypes ((List!29767 0))(
  ( (Nil!29764) (Cons!29763 (h!30972 (_ BitVec 64)) (t!43338 List!29767)) )
))
(declare-fun arrayNoDuplicates!0 (array!86373 (_ BitVec 32) List!29767) Bool)

(assert (=> b!1297653 (= res!862460 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29764))))

(declare-fun mapIsEmpty!53609 () Bool)

(assert (=> mapIsEmpty!53609 mapRes!53609))

(declare-fun b!1297654 () Bool)

(assert (=> b!1297654 (= e!740391 tp_is_empty!34699)))

(declare-fun b!1297655 () Bool)

(declare-fun res!862459 () Bool)

(assert (=> b!1297655 (=> (not res!862459) (not e!740388))))

(declare-fun minValue!1387 () V!51369)

(declare-fun zeroValue!1387 () V!51369)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22604 0))(
  ( (tuple2!22605 (_1!11312 (_ BitVec 64)) (_2!11312 V!51369)) )
))
(declare-datatypes ((List!29768 0))(
  ( (Nil!29765) (Cons!29764 (h!30973 tuple2!22604) (t!43339 List!29768)) )
))
(declare-datatypes ((ListLongMap!20273 0))(
  ( (ListLongMap!20274 (toList!10152 List!29768)) )
))
(declare-fun contains!8206 (ListLongMap!20273 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5126 (array!86373 array!86371 (_ BitVec 32) (_ BitVec 32) V!51369 V!51369 (_ BitVec 32) Int) ListLongMap!20273)

(assert (=> b!1297655 (= res!862459 (contains!8206 (getCurrentListMap!5126 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1297656 () Bool)

(assert (=> b!1297656 (= e!740388 (not true))))

(assert (=> b!1297656 (contains!8206 (getCurrentListMap!5126 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42902 0))(
  ( (Unit!42903) )
))
(declare-fun lt!580570 () Unit!42902)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!26 (array!86373 array!86371 (_ BitVec 32) (_ BitVec 32) V!51369 V!51369 (_ BitVec 64) (_ BitVec 32) Int) Unit!42902)

(assert (=> b!1297656 (= lt!580570 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!26 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1297657 () Bool)

(declare-fun res!862462 () Bool)

(assert (=> b!1297657 (=> (not res!862462) (not e!740388))))

(assert (=> b!1297657 (= res!862462 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42234 _keys!1741)) (not (= (select (arr!41683 _keys!1741) from!2144) k!1205))))))

(declare-fun b!1297658 () Bool)

(assert (=> b!1297658 (= e!740392 (and e!740390 mapRes!53609))))

(declare-fun condMapEmpty!53609 () Bool)

(declare-fun mapDefault!53609 () ValueCell!16451)

