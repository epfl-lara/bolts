; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109472 () Bool)

(assert start!109472)

(declare-fun b_free!28925 () Bool)

(declare-fun b_next!28925 () Bool)

(assert (=> start!109472 (= b_free!28925 (not b_next!28925))))

(declare-fun tp!101894 () Bool)

(declare-fun b_and!47025 () Bool)

(assert (=> start!109472 (= tp!101894 b_and!47025)))

(declare-fun b!1295673 () Bool)

(declare-fun e!739276 () Bool)

(declare-fun tp_is_empty!34565 () Bool)

(assert (=> b!1295673 (= e!739276 tp_is_empty!34565)))

(declare-fun mapIsEmpty!53408 () Bool)

(declare-fun mapRes!53408 () Bool)

(assert (=> mapIsEmpty!53408 mapRes!53408))

(declare-fun b!1295674 () Bool)

(declare-fun e!739279 () Bool)

(assert (=> b!1295674 (= e!739279 true)))

(declare-datatypes ((V!51189 0))(
  ( (V!51190 (val!17357 Int)) )
))
(declare-datatypes ((tuple2!22504 0))(
  ( (tuple2!22505 (_1!11262 (_ BitVec 64)) (_2!11262 V!51189)) )
))
(declare-datatypes ((List!29672 0))(
  ( (Nil!29669) (Cons!29668 (h!30877 tuple2!22504) (t!43243 List!29672)) )
))
(declare-datatypes ((ListLongMap!20173 0))(
  ( (ListLongMap!20174 (toList!10102 List!29672)) )
))
(declare-fun lt!579919 () ListLongMap!20173)

(declare-fun minValue!1387 () V!51189)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!8158 (ListLongMap!20173 (_ BitVec 64)) Bool)

(declare-fun +!4403 (ListLongMap!20173 tuple2!22504) ListLongMap!20173)

(assert (=> b!1295674 (not (contains!8158 (+!4403 lt!579919 (tuple2!22505 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-datatypes ((Unit!42867 0))(
  ( (Unit!42868) )
))
(declare-fun lt!579918 () Unit!42867)

(declare-fun addStillNotContains!448 (ListLongMap!20173 (_ BitVec 64) V!51189 (_ BitVec 64)) Unit!42867)

(assert (=> b!1295674 (= lt!579918 (addStillNotContains!448 lt!579919 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun zeroValue!1387 () V!51189)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16384 0))(
  ( (ValueCellFull!16384 (v!19958 V!51189)) (EmptyCell!16384) )
))
(declare-datatypes ((array!86111 0))(
  ( (array!86112 (arr!41552 (Array (_ BitVec 32) ValueCell!16384)) (size!42103 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86111)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86113 0))(
  ( (array!86114 (arr!41553 (Array (_ BitVec 32) (_ BitVec 64))) (size!42104 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86113)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6119 (array!86113 array!86111 (_ BitVec 32) (_ BitVec 32) V!51189 V!51189 (_ BitVec 32) Int) ListLongMap!20173)

(assert (=> b!1295674 (= lt!579919 (getCurrentListMapNoExtraKeys!6119 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1295675 () Bool)

(declare-fun res!861248 () Bool)

(declare-fun e!739275 () Bool)

(assert (=> b!1295675 (=> (not res!861248) (not e!739275))))

(declare-datatypes ((List!29673 0))(
  ( (Nil!29670) (Cons!29669 (h!30878 (_ BitVec 64)) (t!43244 List!29673)) )
))
(declare-fun arrayNoDuplicates!0 (array!86113 (_ BitVec 32) List!29673) Bool)

(assert (=> b!1295675 (= res!861248 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29670))))

(declare-fun res!861254 () Bool)

(assert (=> start!109472 (=> (not res!861254) (not e!739275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109472 (= res!861254 (validMask!0 mask!2175))))

(assert (=> start!109472 e!739275))

(assert (=> start!109472 tp_is_empty!34565))

(assert (=> start!109472 true))

(declare-fun e!739277 () Bool)

(declare-fun array_inv!31449 (array!86111) Bool)

(assert (=> start!109472 (and (array_inv!31449 _values!1445) e!739277)))

(declare-fun array_inv!31450 (array!86113) Bool)

(assert (=> start!109472 (array_inv!31450 _keys!1741)))

(assert (=> start!109472 tp!101894))

(declare-fun b!1295676 () Bool)

(declare-fun res!861249 () Bool)

(assert (=> b!1295676 (=> (not res!861249) (not e!739275))))

(assert (=> b!1295676 (= res!861249 (and (= (size!42103 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42104 _keys!1741) (size!42103 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1295677 () Bool)

(declare-fun res!861255 () Bool)

(assert (=> b!1295677 (=> (not res!861255) (not e!739275))))

(assert (=> b!1295677 (= res!861255 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42104 _keys!1741))))))

(declare-fun b!1295678 () Bool)

(declare-fun e!739274 () Bool)

(assert (=> b!1295678 (= e!739277 (and e!739274 mapRes!53408))))

(declare-fun condMapEmpty!53408 () Bool)

(declare-fun mapDefault!53408 () ValueCell!16384)

