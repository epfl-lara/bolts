; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110088 () Bool)

(assert start!110088)

(declare-fun b_free!29251 () Bool)

(declare-fun b_next!29251 () Bool)

(assert (=> start!110088 (= b_free!29251 (not b_next!29251))))

(declare-fun tp!102905 () Bool)

(declare-fun b_and!47425 () Bool)

(assert (=> start!110088 (= tp!102905 b_and!47425)))

(declare-fun b!1303158 () Bool)

(declare-fun res!865604 () Bool)

(declare-fun e!743353 () Bool)

(assert (=> b!1303158 (=> (not res!865604) (not e!743353))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86759 0))(
  ( (array!86760 (arr!41866 (Array (_ BitVec 32) (_ BitVec 64))) (size!42417 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86759)

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1303158 (= res!865604 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42417 _keys!1741))))))

(declare-fun b!1303159 () Bool)

(declare-fun res!865612 () Bool)

(assert (=> b!1303159 (=> (not res!865612) (not e!743353))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86759 (_ BitVec 32)) Bool)

(assert (=> b!1303159 (= res!865612 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1303160 () Bool)

(declare-fun res!865608 () Bool)

(assert (=> b!1303160 (=> (not res!865608) (not e!743353))))

(declare-datatypes ((V!51625 0))(
  ( (V!51626 (val!17520 Int)) )
))
(declare-fun minValue!1387 () V!51625)

(declare-fun zeroValue!1387 () V!51625)

(declare-datatypes ((ValueCell!16547 0))(
  ( (ValueCellFull!16547 (v!20134 V!51625)) (EmptyCell!16547) )
))
(declare-datatypes ((array!86761 0))(
  ( (array!86762 (arr!41867 (Array (_ BitVec 32) ValueCell!16547)) (size!42418 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86761)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22760 0))(
  ( (tuple2!22761 (_1!11390 (_ BitVec 64)) (_2!11390 V!51625)) )
))
(declare-datatypes ((List!29913 0))(
  ( (Nil!29910) (Cons!29909 (h!31118 tuple2!22760) (t!43514 List!29913)) )
))
(declare-datatypes ((ListLongMap!20429 0))(
  ( (ListLongMap!20430 (toList!10230 List!29913)) )
))
(declare-fun contains!8301 (ListLongMap!20429 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5192 (array!86759 array!86761 (_ BitVec 32) (_ BitVec 32) V!51625 V!51625 (_ BitVec 32) Int) ListLongMap!20429)

(assert (=> b!1303160 (= res!865608 (contains!8301 (getCurrentListMap!5192 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapNonEmpty!53929 () Bool)

(declare-fun mapRes!53929 () Bool)

(declare-fun tp!102904 () Bool)

(declare-fun e!743354 () Bool)

(assert (=> mapNonEmpty!53929 (= mapRes!53929 (and tp!102904 e!743354))))

(declare-fun mapRest!53929 () (Array (_ BitVec 32) ValueCell!16547))

(declare-fun mapValue!53929 () ValueCell!16547)

(declare-fun mapKey!53929 () (_ BitVec 32))

(assert (=> mapNonEmpty!53929 (= (arr!41867 _values!1445) (store mapRest!53929 mapKey!53929 mapValue!53929))))

(declare-fun b!1303161 () Bool)

(declare-fun e!743357 () Bool)

(assert (=> b!1303161 (= e!743357 true)))

(declare-fun lt!583120 () ListLongMap!20429)

(declare-fun lt!583122 () Bool)

(declare-fun lt!583123 () tuple2!22760)

(declare-fun +!4450 (ListLongMap!20429 tuple2!22760) ListLongMap!20429)

(assert (=> b!1303161 (= lt!583122 (contains!8301 (+!4450 lt!583120 lt!583123) k!1205))))

(declare-fun lt!583121 () ListLongMap!20429)

(assert (=> b!1303161 (not (contains!8301 (+!4450 lt!583121 lt!583123) k!1205))))

(assert (=> b!1303161 (= lt!583123 (tuple2!22761 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))

(declare-datatypes ((Unit!43092 0))(
  ( (Unit!43093) )
))
(declare-fun lt!583119 () Unit!43092)

(declare-fun addStillNotContains!474 (ListLongMap!20429 (_ BitVec 64) V!51625 (_ BitVec 64)) Unit!43092)

(assert (=> b!1303161 (= lt!583119 (addStillNotContains!474 lt!583121 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1303161 (not (contains!8301 lt!583120 k!1205))))

(assert (=> b!1303161 (= lt!583120 (+!4450 lt!583121 (tuple2!22761 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!583125 () Unit!43092)

(assert (=> b!1303161 (= lt!583125 (addStillNotContains!474 lt!583121 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6164 (array!86759 array!86761 (_ BitVec 32) (_ BitVec 32) V!51625 V!51625 (_ BitVec 32) Int) ListLongMap!20429)

(assert (=> b!1303161 (= lt!583121 (getCurrentListMapNoExtraKeys!6164 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapIsEmpty!53929 () Bool)

(assert (=> mapIsEmpty!53929 mapRes!53929))

(declare-fun b!1303162 () Bool)

(declare-fun res!865610 () Bool)

(assert (=> b!1303162 (=> (not res!865610) (not e!743353))))

(assert (=> b!1303162 (= res!865610 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42417 _keys!1741))))))

(declare-fun b!1303163 () Bool)

(declare-fun res!865606 () Bool)

(assert (=> b!1303163 (=> (not res!865606) (not e!743353))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1303163 (= res!865606 (not (validKeyInArray!0 (select (arr!41866 _keys!1741) from!2144))))))

(declare-fun b!1303164 () Bool)

(assert (=> b!1303164 (= e!743353 (not e!743357))))

(declare-fun res!865611 () Bool)

(assert (=> b!1303164 (=> res!865611 e!743357)))

(assert (=> b!1303164 (= res!865611 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1303164 (not (contains!8301 (ListLongMap!20430 Nil!29910) k!1205))))

(declare-fun lt!583124 () Unit!43092)

(declare-fun emptyContainsNothing!218 ((_ BitVec 64)) Unit!43092)

(assert (=> b!1303164 (= lt!583124 (emptyContainsNothing!218 k!1205))))

(declare-fun b!1303165 () Bool)

(declare-fun res!865609 () Bool)

(assert (=> b!1303165 (=> (not res!865609) (not e!743353))))

(assert (=> b!1303165 (= res!865609 (and (= (size!42418 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42417 _keys!1741) (size!42418 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!865607 () Bool)

(assert (=> start!110088 (=> (not res!865607) (not e!743353))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110088 (= res!865607 (validMask!0 mask!2175))))

(assert (=> start!110088 e!743353))

(declare-fun tp_is_empty!34891 () Bool)

(assert (=> start!110088 tp_is_empty!34891))

(assert (=> start!110088 true))

(declare-fun e!743355 () Bool)

(declare-fun array_inv!31663 (array!86761) Bool)

(assert (=> start!110088 (and (array_inv!31663 _values!1445) e!743355)))

(declare-fun array_inv!31664 (array!86759) Bool)

(assert (=> start!110088 (array_inv!31664 _keys!1741)))

(assert (=> start!110088 tp!102905))

(declare-fun b!1303166 () Bool)

(declare-fun e!743356 () Bool)

(assert (=> b!1303166 (= e!743356 tp_is_empty!34891)))

(declare-fun b!1303167 () Bool)

(assert (=> b!1303167 (= e!743354 tp_is_empty!34891)))

(declare-fun b!1303168 () Bool)

(assert (=> b!1303168 (= e!743355 (and e!743356 mapRes!53929))))

(declare-fun condMapEmpty!53929 () Bool)

(declare-fun mapDefault!53929 () ValueCell!16547)

