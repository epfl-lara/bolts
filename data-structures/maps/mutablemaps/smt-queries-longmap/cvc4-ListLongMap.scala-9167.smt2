; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110168 () Bool)

(assert start!110168)

(declare-fun b_free!29279 () Bool)

(declare-fun b_next!29279 () Bool)

(assert (=> start!110168 (= b_free!29279 (not b_next!29279))))

(declare-fun tp!102993 () Bool)

(declare-fun b_and!47463 () Bool)

(assert (=> start!110168 (= tp!102993 b_and!47463)))

(declare-fun b!1303971 () Bool)

(declare-fun e!743814 () Bool)

(assert (=> b!1303971 (= e!743814 false)))

(declare-datatypes ((V!51661 0))(
  ( (V!51662 (val!17534 Int)) )
))
(declare-datatypes ((tuple2!22786 0))(
  ( (tuple2!22787 (_1!11403 (_ BitVec 64)) (_2!11403 V!51661)) )
))
(declare-datatypes ((List!29937 0))(
  ( (Nil!29934) (Cons!29933 (h!31142 tuple2!22786) (t!43540 List!29937)) )
))
(declare-datatypes ((ListLongMap!20455 0))(
  ( (ListLongMap!20456 (toList!10243 List!29937)) )
))
(declare-fun lt!583543 () ListLongMap!20455)

(declare-fun zeroValue!1387 () V!51661)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!8316 (ListLongMap!20455 (_ BitVec 64)) Bool)

(declare-fun +!4461 (ListLongMap!20455 tuple2!22786) ListLongMap!20455)

(assert (=> b!1303971 (not (contains!8316 (+!4461 lt!583543 (tuple2!22787 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-datatypes ((Unit!43130 0))(
  ( (Unit!43131) )
))
(declare-fun lt!583541 () Unit!43130)

(declare-fun addStillNotContains!485 (ListLongMap!20455 (_ BitVec 64) V!51661 (_ BitVec 64)) Unit!43130)

(assert (=> b!1303971 (= lt!583541 (addStillNotContains!485 lt!583543 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun minValue!1387 () V!51661)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16561 0))(
  ( (ValueCellFull!16561 (v!20150 V!51661)) (EmptyCell!16561) )
))
(declare-datatypes ((array!86817 0))(
  ( (array!86818 (arr!41894 (Array (_ BitVec 32) ValueCell!16561)) (size!42445 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86817)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86819 0))(
  ( (array!86820 (arr!41895 (Array (_ BitVec 32) (_ BitVec 64))) (size!42446 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86819)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6177 (array!86819 array!86817 (_ BitVec 32) (_ BitVec 32) V!51661 V!51661 (_ BitVec 32) Int) ListLongMap!20455)

(assert (=> b!1303971 (= lt!583543 (getCurrentListMapNoExtraKeys!6177 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1303972 () Bool)

(declare-fun e!743810 () Bool)

(declare-fun tp_is_empty!34919 () Bool)

(assert (=> b!1303972 (= e!743810 tp_is_empty!34919)))

(declare-fun b!1303973 () Bool)

(declare-fun res!866122 () Bool)

(declare-fun e!743811 () Bool)

(assert (=> b!1303973 (=> (not res!866122) (not e!743811))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1303973 (= res!866122 (not (validKeyInArray!0 (select (arr!41895 _keys!1741) from!2144))))))

(declare-fun mapNonEmpty!53975 () Bool)

(declare-fun mapRes!53975 () Bool)

(declare-fun tp!102992 () Bool)

(declare-fun e!743812 () Bool)

(assert (=> mapNonEmpty!53975 (= mapRes!53975 (and tp!102992 e!743812))))

(declare-fun mapValue!53975 () ValueCell!16561)

(declare-fun mapRest!53975 () (Array (_ BitVec 32) ValueCell!16561))

(declare-fun mapKey!53975 () (_ BitVec 32))

(assert (=> mapNonEmpty!53975 (= (arr!41894 _values!1445) (store mapRest!53975 mapKey!53975 mapValue!53975))))

(declare-fun b!1303974 () Bool)

(declare-fun res!866125 () Bool)

(assert (=> b!1303974 (=> (not res!866125) (not e!743811))))

(declare-datatypes ((List!29938 0))(
  ( (Nil!29935) (Cons!29934 (h!31143 (_ BitVec 64)) (t!43541 List!29938)) )
))
(declare-fun arrayNoDuplicates!0 (array!86819 (_ BitVec 32) List!29938) Bool)

(assert (=> b!1303974 (= res!866125 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29935))))

(declare-fun mapIsEmpty!53975 () Bool)

(assert (=> mapIsEmpty!53975 mapRes!53975))

(declare-fun b!1303975 () Bool)

(declare-fun res!866123 () Bool)

(assert (=> b!1303975 (=> (not res!866123) (not e!743811))))

(assert (=> b!1303975 (= res!866123 (and (= (size!42445 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42446 _keys!1741) (size!42445 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!866128 () Bool)

(assert (=> start!110168 (=> (not res!866128) (not e!743811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110168 (= res!866128 (validMask!0 mask!2175))))

(assert (=> start!110168 e!743811))

(assert (=> start!110168 tp_is_empty!34919))

(assert (=> start!110168 true))

(declare-fun e!743809 () Bool)

(declare-fun array_inv!31683 (array!86817) Bool)

(assert (=> start!110168 (and (array_inv!31683 _values!1445) e!743809)))

(declare-fun array_inv!31684 (array!86819) Bool)

(assert (=> start!110168 (array_inv!31684 _keys!1741)))

(assert (=> start!110168 tp!102993))

(declare-fun b!1303976 () Bool)

(assert (=> b!1303976 (= e!743812 tp_is_empty!34919)))

(declare-fun b!1303977 () Bool)

(declare-fun res!866126 () Bool)

(assert (=> b!1303977 (=> (not res!866126) (not e!743811))))

(declare-fun getCurrentListMap!5203 (array!86819 array!86817 (_ BitVec 32) (_ BitVec 32) V!51661 V!51661 (_ BitVec 32) Int) ListLongMap!20455)

(assert (=> b!1303977 (= res!866126 (contains!8316 (getCurrentListMap!5203 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1303978 () Bool)

(declare-fun res!866127 () Bool)

(assert (=> b!1303978 (=> (not res!866127) (not e!743811))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86819 (_ BitVec 32)) Bool)

(assert (=> b!1303978 (= res!866127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1303979 () Bool)

(assert (=> b!1303979 (= e!743809 (and e!743810 mapRes!53975))))

(declare-fun condMapEmpty!53975 () Bool)

(declare-fun mapDefault!53975 () ValueCell!16561)

