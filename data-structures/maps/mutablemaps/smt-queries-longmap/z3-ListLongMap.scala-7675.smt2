; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96434 () Bool)

(assert start!96434)

(declare-fun b_free!22977 () Bool)

(declare-fun b_next!22977 () Bool)

(assert (=> start!96434 (= b_free!22977 (not b_next!22977))))

(declare-fun tp!80859 () Bool)

(declare-fun b_and!36635 () Bool)

(assert (=> start!96434 (= tp!80859 b_and!36635)))

(declare-fun b!1095598 () Bool)

(declare-fun e!625501 () Bool)

(declare-fun e!625502 () Bool)

(assert (=> b!1095598 (= e!625501 e!625502)))

(declare-fun res!731266 () Bool)

(assert (=> b!1095598 (=> (not res!731266) (not e!625502))))

(declare-datatypes ((array!70920 0))(
  ( (array!70921 (arr!34128 (Array (_ BitVec 32) (_ BitVec 64))) (size!34665 (_ BitVec 32))) )
))
(declare-fun lt!489875 () array!70920)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70920 (_ BitVec 32)) Bool)

(assert (=> b!1095598 (= res!731266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489875 mask!1414))))

(declare-fun _keys!1070 () array!70920)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1095598 (= lt!489875 (array!70921 (store (arr!34128 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34665 _keys!1070)))))

(declare-fun b!1095599 () Bool)

(declare-fun res!731268 () Bool)

(assert (=> b!1095599 (=> (not res!731268) (not e!625501))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1095599 (= res!731268 (validKeyInArray!0 k0!904))))

(declare-fun b!1095600 () Bool)

(declare-fun res!731271 () Bool)

(assert (=> b!1095600 (=> (not res!731271) (not e!625501))))

(assert (=> b!1095600 (= res!731271 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34665 _keys!1070))))))

(declare-fun b!1095601 () Bool)

(declare-fun res!731270 () Bool)

(assert (=> b!1095601 (=> (not res!731270) (not e!625502))))

(declare-datatypes ((List!23968 0))(
  ( (Nil!23965) (Cons!23964 (h!25173 (_ BitVec 64)) (t!33998 List!23968)) )
))
(declare-fun arrayNoDuplicates!0 (array!70920 (_ BitVec 32) List!23968) Bool)

(assert (=> b!1095601 (= res!731270 (arrayNoDuplicates!0 lt!489875 #b00000000000000000000000000000000 Nil!23965))))

(declare-fun res!731269 () Bool)

(assert (=> start!96434 (=> (not res!731269) (not e!625501))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96434 (= res!731269 (validMask!0 mask!1414))))

(assert (=> start!96434 e!625501))

(assert (=> start!96434 tp!80859))

(assert (=> start!96434 true))

(declare-fun tp_is_empty!27027 () Bool)

(assert (=> start!96434 tp_is_empty!27027))

(declare-fun array_inv!26152 (array!70920) Bool)

(assert (=> start!96434 (array_inv!26152 _keys!1070)))

(declare-datatypes ((V!41163 0))(
  ( (V!41164 (val!13570 Int)) )
))
(declare-datatypes ((ValueCell!12804 0))(
  ( (ValueCellFull!12804 (v!16192 V!41163)) (EmptyCell!12804) )
))
(declare-datatypes ((array!70922 0))(
  ( (array!70923 (arr!34129 (Array (_ BitVec 32) ValueCell!12804)) (size!34666 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70922)

(declare-fun e!625503 () Bool)

(declare-fun array_inv!26153 (array!70922) Bool)

(assert (=> start!96434 (and (array_inv!26153 _values!874) e!625503)))

(declare-fun b!1095602 () Bool)

(assert (=> b!1095602 (= e!625502 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41163)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!17296 0))(
  ( (tuple2!17297 (_1!8658 (_ BitVec 64)) (_2!8658 V!41163)) )
))
(declare-datatypes ((List!23969 0))(
  ( (Nil!23966) (Cons!23965 (h!25174 tuple2!17296) (t!33999 List!23969)) )
))
(declare-datatypes ((ListLongMap!15277 0))(
  ( (ListLongMap!15278 (toList!7654 List!23969)) )
))
(declare-fun lt!489876 () ListLongMap!15277)

(declare-fun zeroValue!831 () V!41163)

(declare-fun getCurrentListMapNoExtraKeys!4141 (array!70920 array!70922 (_ BitVec 32) (_ BitVec 32) V!41163 V!41163 (_ BitVec 32) Int) ListLongMap!15277)

(declare-fun dynLambda!2272 (Int (_ BitVec 64)) V!41163)

(assert (=> b!1095602 (= lt!489876 (getCurrentListMapNoExtraKeys!4141 lt!489875 (array!70923 (store (arr!34129 _values!874) i!650 (ValueCellFull!12804 (dynLambda!2272 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34666 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489877 () ListLongMap!15277)

(assert (=> b!1095602 (= lt!489877 (getCurrentListMapNoExtraKeys!4141 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70920 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1095602 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35981 0))(
  ( (Unit!35982) )
))
(declare-fun lt!489878 () Unit!35981)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70920 (_ BitVec 64) (_ BitVec 32)) Unit!35981)

(assert (=> b!1095602 (= lt!489878 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1095603 () Bool)

(declare-fun e!625500 () Bool)

(assert (=> b!1095603 (= e!625500 tp_is_empty!27027)))

(declare-fun b!1095604 () Bool)

(declare-fun res!731272 () Bool)

(assert (=> b!1095604 (=> (not res!731272) (not e!625501))))

(assert (=> b!1095604 (= res!731272 (and (= (size!34666 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34665 _keys!1070) (size!34666 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1095605 () Bool)

(declare-fun e!625499 () Bool)

(declare-fun mapRes!42301 () Bool)

(assert (=> b!1095605 (= e!625503 (and e!625499 mapRes!42301))))

(declare-fun condMapEmpty!42301 () Bool)

(declare-fun mapDefault!42301 () ValueCell!12804)

(assert (=> b!1095605 (= condMapEmpty!42301 (= (arr!34129 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12804)) mapDefault!42301)))))

(declare-fun b!1095606 () Bool)

(declare-fun res!731267 () Bool)

(assert (=> b!1095606 (=> (not res!731267) (not e!625501))))

(assert (=> b!1095606 (= res!731267 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23965))))

(declare-fun b!1095607 () Bool)

(assert (=> b!1095607 (= e!625499 tp_is_empty!27027)))

(declare-fun b!1095608 () Bool)

(declare-fun res!731273 () Bool)

(assert (=> b!1095608 (=> (not res!731273) (not e!625501))))

(assert (=> b!1095608 (= res!731273 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!42301 () Bool)

(assert (=> mapIsEmpty!42301 mapRes!42301))

(declare-fun mapNonEmpty!42301 () Bool)

(declare-fun tp!80858 () Bool)

(assert (=> mapNonEmpty!42301 (= mapRes!42301 (and tp!80858 e!625500))))

(declare-fun mapKey!42301 () (_ BitVec 32))

(declare-fun mapRest!42301 () (Array (_ BitVec 32) ValueCell!12804))

(declare-fun mapValue!42301 () ValueCell!12804)

(assert (=> mapNonEmpty!42301 (= (arr!34129 _values!874) (store mapRest!42301 mapKey!42301 mapValue!42301))))

(declare-fun b!1095609 () Bool)

(declare-fun res!731274 () Bool)

(assert (=> b!1095609 (=> (not res!731274) (not e!625501))))

(assert (=> b!1095609 (= res!731274 (= (select (arr!34128 _keys!1070) i!650) k0!904))))

(assert (= (and start!96434 res!731269) b!1095604))

(assert (= (and b!1095604 res!731272) b!1095608))

(assert (= (and b!1095608 res!731273) b!1095606))

(assert (= (and b!1095606 res!731267) b!1095600))

(assert (= (and b!1095600 res!731271) b!1095599))

(assert (= (and b!1095599 res!731268) b!1095609))

(assert (= (and b!1095609 res!731274) b!1095598))

(assert (= (and b!1095598 res!731266) b!1095601))

(assert (= (and b!1095601 res!731270) b!1095602))

(assert (= (and b!1095605 condMapEmpty!42301) mapIsEmpty!42301))

(assert (= (and b!1095605 (not condMapEmpty!42301)) mapNonEmpty!42301))

(get-info :version)

(assert (= (and mapNonEmpty!42301 ((_ is ValueCellFull!12804) mapValue!42301)) b!1095603))

(assert (= (and b!1095605 ((_ is ValueCellFull!12804) mapDefault!42301)) b!1095607))

(assert (= start!96434 b!1095605))

(declare-fun b_lambda!17665 () Bool)

(assert (=> (not b_lambda!17665) (not b!1095602)))

(declare-fun t!33997 () Bool)

(declare-fun tb!7851 () Bool)

(assert (=> (and start!96434 (= defaultEntry!882 defaultEntry!882) t!33997) tb!7851))

(declare-fun result!16217 () Bool)

(assert (=> tb!7851 (= result!16217 tp_is_empty!27027)))

(assert (=> b!1095602 t!33997))

(declare-fun b_and!36637 () Bool)

(assert (= b_and!36635 (and (=> t!33997 result!16217) b_and!36637)))

(declare-fun m!1015349 () Bool)

(assert (=> start!96434 m!1015349))

(declare-fun m!1015351 () Bool)

(assert (=> start!96434 m!1015351))

(declare-fun m!1015353 () Bool)

(assert (=> start!96434 m!1015353))

(declare-fun m!1015355 () Bool)

(assert (=> b!1095606 m!1015355))

(declare-fun m!1015357 () Bool)

(assert (=> b!1095609 m!1015357))

(declare-fun m!1015359 () Bool)

(assert (=> b!1095599 m!1015359))

(declare-fun m!1015361 () Bool)

(assert (=> b!1095602 m!1015361))

(declare-fun m!1015363 () Bool)

(assert (=> b!1095602 m!1015363))

(declare-fun m!1015365 () Bool)

(assert (=> b!1095602 m!1015365))

(declare-fun m!1015367 () Bool)

(assert (=> b!1095602 m!1015367))

(declare-fun m!1015369 () Bool)

(assert (=> b!1095602 m!1015369))

(declare-fun m!1015371 () Bool)

(assert (=> b!1095602 m!1015371))

(declare-fun m!1015373 () Bool)

(assert (=> b!1095608 m!1015373))

(declare-fun m!1015375 () Bool)

(assert (=> mapNonEmpty!42301 m!1015375))

(declare-fun m!1015377 () Bool)

(assert (=> b!1095598 m!1015377))

(declare-fun m!1015379 () Bool)

(assert (=> b!1095598 m!1015379))

(declare-fun m!1015381 () Bool)

(assert (=> b!1095601 m!1015381))

(check-sat (not mapNonEmpty!42301) (not b!1095599) (not start!96434) tp_is_empty!27027 (not b!1095601) (not b!1095606) (not b_next!22977) (not b!1095608) (not b!1095598) (not b_lambda!17665) (not b!1095602) b_and!36637)
(check-sat b_and!36637 (not b_next!22977))
