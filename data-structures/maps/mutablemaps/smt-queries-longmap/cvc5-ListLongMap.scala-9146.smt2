; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109752 () Bool)

(assert start!109752)

(declare-fun b_free!29149 () Bool)

(declare-fun b_next!29149 () Bool)

(assert (=> start!109752 (= b_free!29149 (not b_next!29149))))

(declare-fun tp!102575 () Bool)

(declare-fun b_and!47261 () Bool)

(assert (=> start!109752 (= tp!102575 b_and!47261)))

(declare-fun b!1299430 () Bool)

(declare-fun res!863599 () Bool)

(declare-fun e!741348 () Bool)

(assert (=> b!1299430 (=> (not res!863599) (not e!741348))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!86551 0))(
  ( (array!86552 (arr!41769 (Array (_ BitVec 32) (_ BitVec 64))) (size!42320 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86551)

(assert (=> b!1299430 (= res!863599 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42320 _keys!1741))))))

(declare-fun b!1299431 () Bool)

(declare-fun res!863600 () Bool)

(assert (=> b!1299431 (=> (not res!863600) (not e!741348))))

(assert (=> b!1299431 (= res!863600 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42320 _keys!1741))))))

(declare-fun b!1299432 () Bool)

(declare-fun e!741349 () Bool)

(declare-fun tp_is_empty!34789 () Bool)

(assert (=> b!1299432 (= e!741349 tp_is_empty!34789)))

(declare-fun b!1299433 () Bool)

(declare-fun res!863598 () Bool)

(assert (=> b!1299433 (=> (not res!863598) (not e!741348))))

(declare-datatypes ((V!51489 0))(
  ( (V!51490 (val!17469 Int)) )
))
(declare-fun minValue!1387 () V!51489)

(declare-fun zeroValue!1387 () V!51489)

(declare-datatypes ((ValueCell!16496 0))(
  ( (ValueCellFull!16496 (v!20073 V!51489)) (EmptyCell!16496) )
))
(declare-datatypes ((array!86553 0))(
  ( (array!86554 (arr!41770 (Array (_ BitVec 32) ValueCell!16496)) (size!42321 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86553)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22676 0))(
  ( (tuple2!22677 (_1!11348 (_ BitVec 64)) (_2!11348 V!51489)) )
))
(declare-datatypes ((List!29836 0))(
  ( (Nil!29833) (Cons!29832 (h!31041 tuple2!22676) (t!43413 List!29836)) )
))
(declare-datatypes ((ListLongMap!20345 0))(
  ( (ListLongMap!20346 (toList!10188 List!29836)) )
))
(declare-fun contains!8246 (ListLongMap!20345 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5162 (array!86551 array!86553 (_ BitVec 32) (_ BitVec 32) V!51489 V!51489 (_ BitVec 32) Int) ListLongMap!20345)

(assert (=> b!1299433 (= res!863598 (contains!8246 (getCurrentListMap!5162 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1299434 () Bool)

(declare-fun res!863602 () Bool)

(assert (=> b!1299434 (=> (not res!863602) (not e!741348))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86551 (_ BitVec 32)) Bool)

(assert (=> b!1299434 (= res!863602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1299435 () Bool)

(declare-fun res!863597 () Bool)

(assert (=> b!1299435 (=> (not res!863597) (not e!741348))))

(declare-datatypes ((List!29837 0))(
  ( (Nil!29834) (Cons!29833 (h!31042 (_ BitVec 64)) (t!43414 List!29837)) )
))
(declare-fun arrayNoDuplicates!0 (array!86551 (_ BitVec 32) List!29837) Bool)

(assert (=> b!1299435 (= res!863597 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29834))))

(declare-fun b!1299436 () Bool)

(assert (=> b!1299436 (= e!741348 false)))

(declare-fun lt!581030 () Bool)

(declare-fun +!4420 (ListLongMap!20345 tuple2!22676) ListLongMap!20345)

(declare-fun getCurrentListMapNoExtraKeys!6133 (array!86551 array!86553 (_ BitVec 32) (_ BitVec 32) V!51489 V!51489 (_ BitVec 32) Int) ListLongMap!20345)

(assert (=> b!1299436 (= lt!581030 (contains!8246 (+!4420 (+!4420 (getCurrentListMapNoExtraKeys!6133 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22677 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (tuple2!22677 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun res!863603 () Bool)

(assert (=> start!109752 (=> (not res!863603) (not e!741348))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109752 (= res!863603 (validMask!0 mask!2175))))

(assert (=> start!109752 e!741348))

(assert (=> start!109752 tp_is_empty!34789))

(assert (=> start!109752 true))

(declare-fun e!741351 () Bool)

(declare-fun array_inv!31603 (array!86553) Bool)

(assert (=> start!109752 (and (array_inv!31603 _values!1445) e!741351)))

(declare-fun array_inv!31604 (array!86551) Bool)

(assert (=> start!109752 (array_inv!31604 _keys!1741)))

(assert (=> start!109752 tp!102575))

(declare-fun b!1299437 () Bool)

(declare-fun res!863601 () Bool)

(assert (=> b!1299437 (=> (not res!863601) (not e!741348))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1299437 (= res!863601 (validKeyInArray!0 (select (arr!41769 _keys!1741) from!2144)))))

(declare-fun mapIsEmpty!53753 () Bool)

(declare-fun mapRes!53753 () Bool)

(assert (=> mapIsEmpty!53753 mapRes!53753))

(declare-fun b!1299438 () Bool)

(declare-fun res!863604 () Bool)

(assert (=> b!1299438 (=> (not res!863604) (not e!741348))))

(assert (=> b!1299438 (= res!863604 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1299439 () Bool)

(declare-fun res!863596 () Bool)

(assert (=> b!1299439 (=> (not res!863596) (not e!741348))))

(assert (=> b!1299439 (= res!863596 (and (= (size!42321 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42320 _keys!1741) (size!42321 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1299440 () Bool)

(declare-fun e!741350 () Bool)

(assert (=> b!1299440 (= e!741351 (and e!741350 mapRes!53753))))

(declare-fun condMapEmpty!53753 () Bool)

(declare-fun mapDefault!53753 () ValueCell!16496)

