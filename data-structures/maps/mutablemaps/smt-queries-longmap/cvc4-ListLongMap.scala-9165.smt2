; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110104 () Bool)

(assert start!110104)

(declare-fun b_free!29267 () Bool)

(declare-fun b_next!29267 () Bool)

(assert (=> start!110104 (= b_free!29267 (not b_next!29267))))

(declare-fun tp!102953 () Bool)

(declare-fun b_and!47441 () Bool)

(assert (=> start!110104 (= tp!102953 b_and!47441)))

(declare-fun b!1303446 () Bool)

(declare-fun e!743496 () Bool)

(declare-fun tp_is_empty!34907 () Bool)

(assert (=> b!1303446 (= e!743496 tp_is_empty!34907)))

(declare-fun b!1303447 () Bool)

(declare-fun e!743499 () Bool)

(assert (=> b!1303447 (= e!743499 tp_is_empty!34907)))

(declare-fun mapIsEmpty!53953 () Bool)

(declare-fun mapRes!53953 () Bool)

(assert (=> mapIsEmpty!53953 mapRes!53953))

(declare-fun b!1303449 () Bool)

(declare-fun e!743497 () Bool)

(assert (=> b!1303449 (= e!743497 true)))

(assert (=> b!1303449 false))

(declare-datatypes ((V!51645 0))(
  ( (V!51646 (val!17528 Int)) )
))
(declare-fun minValue!1387 () V!51645)

(declare-datatypes ((tuple2!22774 0))(
  ( (tuple2!22775 (_1!11397 (_ BitVec 64)) (_2!11397 V!51645)) )
))
(declare-datatypes ((List!29925 0))(
  ( (Nil!29922) (Cons!29921 (h!31130 tuple2!22774) (t!43526 List!29925)) )
))
(declare-datatypes ((ListLongMap!20443 0))(
  ( (ListLongMap!20444 (toList!10237 List!29925)) )
))
(declare-fun lt!583275 () ListLongMap!20443)

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((Unit!43106 0))(
  ( (Unit!43107) )
))
(declare-fun lt!583273 () Unit!43106)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!90 ((_ BitVec 64) (_ BitVec 64) V!51645 ListLongMap!20443) Unit!43106)

(assert (=> b!1303449 (= lt!583273 (lemmaInListMapAfterAddingDiffThenInBefore!90 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!583275))))

(declare-fun lt!583270 () ListLongMap!20443)

(declare-fun contains!8308 (ListLongMap!20443 (_ BitVec 64)) Bool)

(declare-fun +!4457 (ListLongMap!20443 tuple2!22774) ListLongMap!20443)

(assert (=> b!1303449 (not (contains!8308 (+!4457 lt!583270 (tuple2!22775 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!583274 () Unit!43106)

(declare-fun addStillNotContains!481 (ListLongMap!20443 (_ BitVec 64) V!51645 (_ BitVec 64)) Unit!43106)

(assert (=> b!1303449 (= lt!583274 (addStillNotContains!481 lt!583270 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1303449 (not (contains!8308 lt!583275 k!1205))))

(declare-fun zeroValue!1387 () V!51645)

(assert (=> b!1303449 (= lt!583275 (+!4457 lt!583270 (tuple2!22775 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!583271 () Unit!43106)

(assert (=> b!1303449 (= lt!583271 (addStillNotContains!481 lt!583270 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16555 0))(
  ( (ValueCellFull!16555 (v!20142 V!51645)) (EmptyCell!16555) )
))
(declare-datatypes ((array!86791 0))(
  ( (array!86792 (arr!41882 (Array (_ BitVec 32) ValueCell!16555)) (size!42433 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86791)

(declare-datatypes ((array!86793 0))(
  ( (array!86794 (arr!41883 (Array (_ BitVec 32) (_ BitVec 64))) (size!42434 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86793)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6171 (array!86793 array!86791 (_ BitVec 32) (_ BitVec 32) V!51645 V!51645 (_ BitVec 32) Int) ListLongMap!20443)

(assert (=> b!1303449 (= lt!583270 (getCurrentListMapNoExtraKeys!6171 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1303450 () Bool)

(declare-fun res!865825 () Bool)

(declare-fun e!743500 () Bool)

(assert (=> b!1303450 (=> (not res!865825) (not e!743500))))

(assert (=> b!1303450 (= res!865825 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42434 _keys!1741))))))

(declare-fun b!1303451 () Bool)

(declare-fun res!865820 () Bool)

(assert (=> b!1303451 (=> (not res!865820) (not e!743500))))

(declare-fun getCurrentListMap!5197 (array!86793 array!86791 (_ BitVec 32) (_ BitVec 32) V!51645 V!51645 (_ BitVec 32) Int) ListLongMap!20443)

(assert (=> b!1303451 (= res!865820 (contains!8308 (getCurrentListMap!5197 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1303452 () Bool)

(declare-fun res!865821 () Bool)

(assert (=> b!1303452 (=> (not res!865821) (not e!743500))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86793 (_ BitVec 32)) Bool)

(assert (=> b!1303452 (= res!865821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1303453 () Bool)

(declare-fun res!865823 () Bool)

(assert (=> b!1303453 (=> (not res!865823) (not e!743500))))

(declare-datatypes ((List!29926 0))(
  ( (Nil!29923) (Cons!29922 (h!31131 (_ BitVec 64)) (t!43527 List!29926)) )
))
(declare-fun arrayNoDuplicates!0 (array!86793 (_ BitVec 32) List!29926) Bool)

(assert (=> b!1303453 (= res!865823 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29923))))

(declare-fun b!1303454 () Bool)

(declare-fun e!743501 () Bool)

(assert (=> b!1303454 (= e!743501 (and e!743499 mapRes!53953))))

(declare-fun condMapEmpty!53953 () Bool)

(declare-fun mapDefault!53953 () ValueCell!16555)

