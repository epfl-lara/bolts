; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110198 () Bool)

(assert start!110198)

(declare-fun b_free!29285 () Bool)

(declare-fun b_next!29285 () Bool)

(assert (=> start!110198 (= b_free!29285 (not b_next!29285))))

(declare-fun tp!103014 () Bool)

(declare-fun b_and!47475 () Bool)

(assert (=> start!110198 (= tp!103014 b_and!47475)))

(declare-fun b!1304240 () Bool)

(declare-fun res!866279 () Bool)

(declare-fun e!743966 () Bool)

(assert (=> b!1304240 (=> (not res!866279) (not e!743966))))

(declare-datatypes ((array!86831 0))(
  ( (array!86832 (arr!41900 (Array (_ BitVec 32) (_ BitVec 64))) (size!42451 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86831)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1304240 (= res!866279 (not (validKeyInArray!0 (select (arr!41900 _keys!1741) from!2144))))))

(declare-fun b!1304241 () Bool)

(declare-fun res!866278 () Bool)

(assert (=> b!1304241 (=> (not res!866278) (not e!743966))))

(declare-datatypes ((List!29942 0))(
  ( (Nil!29939) (Cons!29938 (h!31147 (_ BitVec 64)) (t!43547 List!29942)) )
))
(declare-fun arrayNoDuplicates!0 (array!86831 (_ BitVec 32) List!29942) Bool)

(assert (=> b!1304241 (= res!866278 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29939))))

(declare-fun b!1304242 () Bool)

(declare-fun e!743969 () Bool)

(assert (=> b!1304242 (= e!743969 true)))

(declare-datatypes ((V!51669 0))(
  ( (V!51670 (val!17537 Int)) )
))
(declare-datatypes ((tuple2!22792 0))(
  ( (tuple2!22793 (_1!11406 (_ BitVec 64)) (_2!11406 V!51669)) )
))
(declare-datatypes ((List!29943 0))(
  ( (Nil!29940) (Cons!29939 (h!31148 tuple2!22792) (t!43548 List!29943)) )
))
(declare-datatypes ((ListLongMap!20461 0))(
  ( (ListLongMap!20462 (toList!10246 List!29943)) )
))
(declare-fun lt!583702 () ListLongMap!20461)

(declare-fun zeroValue!1387 () V!51669)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!8321 (ListLongMap!20461 (_ BitVec 64)) Bool)

(declare-fun +!4464 (ListLongMap!20461 tuple2!22792) ListLongMap!20461)

(assert (=> b!1304242 (not (contains!8321 (+!4464 lt!583702 (tuple2!22793 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-datatypes ((Unit!43140 0))(
  ( (Unit!43141) )
))
(declare-fun lt!583704 () Unit!43140)

(declare-fun addStillNotContains!488 (ListLongMap!20461 (_ BitVec 64) V!51669 (_ BitVec 64)) Unit!43140)

(assert (=> b!1304242 (= lt!583704 (addStillNotContains!488 lt!583702 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun minValue!1387 () V!51669)

(declare-datatypes ((ValueCell!16564 0))(
  ( (ValueCellFull!16564 (v!20154 V!51669)) (EmptyCell!16564) )
))
(declare-datatypes ((array!86833 0))(
  ( (array!86834 (arr!41901 (Array (_ BitVec 32) ValueCell!16564)) (size!42452 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86833)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6180 (array!86831 array!86833 (_ BitVec 32) (_ BitVec 32) V!51669 V!51669 (_ BitVec 32) Int) ListLongMap!20461)

(assert (=> b!1304242 (= lt!583702 (getCurrentListMapNoExtraKeys!6180 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1304244 () Bool)

(declare-fun res!866277 () Bool)

(assert (=> b!1304244 (=> (not res!866277) (not e!743966))))

(assert (=> b!1304244 (= res!866277 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42451 _keys!1741))))))

(declare-fun b!1304245 () Bool)

(declare-fun res!866275 () Bool)

(assert (=> b!1304245 (=> (not res!866275) (not e!743966))))

(assert (=> b!1304245 (= res!866275 (and (= (size!42452 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42451 _keys!1741) (size!42452 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1304246 () Bool)

(assert (=> b!1304246 (= e!743966 (not e!743969))))

(declare-fun res!866276 () Bool)

(assert (=> b!1304246 (=> res!866276 e!743969)))

(assert (=> b!1304246 (= res!866276 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1304246 (not (contains!8321 (ListLongMap!20462 Nil!29940) k!1205))))

(declare-fun lt!583703 () Unit!43140)

(declare-fun emptyContainsNothing!229 ((_ BitVec 64)) Unit!43140)

(assert (=> b!1304246 (= lt!583703 (emptyContainsNothing!229 k!1205))))

(declare-fun b!1304247 () Bool)

(declare-fun res!866272 () Bool)

(assert (=> b!1304247 (=> (not res!866272) (not e!743966))))

(assert (=> b!1304247 (= res!866272 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42451 _keys!1741))))))

(declare-fun b!1304248 () Bool)

(declare-fun e!743971 () Bool)

(declare-fun tp_is_empty!34925 () Bool)

(assert (=> b!1304248 (= e!743971 tp_is_empty!34925)))

(declare-fun b!1304249 () Bool)

(declare-fun res!866274 () Bool)

(assert (=> b!1304249 (=> (not res!866274) (not e!743966))))

(declare-fun getCurrentListMap!5205 (array!86831 array!86833 (_ BitVec 32) (_ BitVec 32) V!51669 V!51669 (_ BitVec 32) Int) ListLongMap!20461)

(assert (=> b!1304249 (= res!866274 (contains!8321 (getCurrentListMap!5205 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapNonEmpty!53987 () Bool)

(declare-fun mapRes!53987 () Bool)

(declare-fun tp!103013 () Bool)

(declare-fun e!743967 () Bool)

(assert (=> mapNonEmpty!53987 (= mapRes!53987 (and tp!103013 e!743967))))

(declare-fun mapRest!53987 () (Array (_ BitVec 32) ValueCell!16564))

(declare-fun mapValue!53987 () ValueCell!16564)

(declare-fun mapKey!53987 () (_ BitVec 32))

(assert (=> mapNonEmpty!53987 (= (arr!41901 _values!1445) (store mapRest!53987 mapKey!53987 mapValue!53987))))

(declare-fun b!1304250 () Bool)

(declare-fun res!866271 () Bool)

(assert (=> b!1304250 (=> (not res!866271) (not e!743966))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86831 (_ BitVec 32)) Bool)

(assert (=> b!1304250 (= res!866271 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!866273 () Bool)

(assert (=> start!110198 (=> (not res!866273) (not e!743966))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110198 (= res!866273 (validMask!0 mask!2175))))

(assert (=> start!110198 e!743966))

(assert (=> start!110198 tp_is_empty!34925))

(assert (=> start!110198 true))

(declare-fun e!743970 () Bool)

(declare-fun array_inv!31687 (array!86833) Bool)

(assert (=> start!110198 (and (array_inv!31687 _values!1445) e!743970)))

(declare-fun array_inv!31688 (array!86831) Bool)

(assert (=> start!110198 (array_inv!31688 _keys!1741)))

(assert (=> start!110198 tp!103014))

(declare-fun b!1304243 () Bool)

(assert (=> b!1304243 (= e!743970 (and e!743971 mapRes!53987))))

(declare-fun condMapEmpty!53987 () Bool)

(declare-fun mapDefault!53987 () ValueCell!16564)

