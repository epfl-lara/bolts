; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95772 () Bool)

(assert start!95772)

(declare-fun b_free!22389 () Bool)

(declare-fun b_next!22389 () Bool)

(assert (=> start!95772 (= b_free!22389 (not b_next!22389))))

(declare-fun tp!79017 () Bool)

(declare-fun b_and!35471 () Bool)

(assert (=> start!95772 (= tp!79017 b_and!35471)))

(declare-fun b!1082553 () Bool)

(declare-fun e!618697 () Bool)

(declare-fun tp_is_empty!26391 () Bool)

(assert (=> b!1082553 (= e!618697 tp_is_empty!26391)))

(declare-fun b!1082554 () Bool)

(declare-fun res!721715 () Bool)

(declare-fun e!618694 () Bool)

(assert (=> b!1082554 (=> (not res!721715) (not e!618694))))

(declare-datatypes ((array!69686 0))(
  ( (array!69687 (arr!33513 (Array (_ BitVec 32) (_ BitVec 64))) (size!34050 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69686)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1082554 (= res!721715 (= (select (arr!33513 _keys!1070) i!650) k0!904))))

(declare-fun b!1082555 () Bool)

(declare-fun e!618692 () Bool)

(assert (=> b!1082555 (= e!618692 (not true))))

(declare-datatypes ((V!40315 0))(
  ( (V!40316 (val!13252 Int)) )
))
(declare-datatypes ((tuple2!16860 0))(
  ( (tuple2!16861 (_1!8440 (_ BitVec 64)) (_2!8440 V!40315)) )
))
(declare-datatypes ((List!23493 0))(
  ( (Nil!23490) (Cons!23489 (h!24698 tuple2!16860) (t!32947 List!23493)) )
))
(declare-datatypes ((ListLongMap!14841 0))(
  ( (ListLongMap!14842 (toList!7436 List!23493)) )
))
(declare-fun lt!479655 () ListLongMap!14841)

(declare-fun lt!479659 () ListLongMap!14841)

(assert (=> b!1082555 (and (= lt!479655 lt!479659) (= lt!479659 lt!479655))))

(declare-fun lt!479658 () ListLongMap!14841)

(declare-fun -!718 (ListLongMap!14841 (_ BitVec 64)) ListLongMap!14841)

(assert (=> b!1082555 (= lt!479659 (-!718 lt!479658 k0!904))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40315)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12486 0))(
  ( (ValueCellFull!12486 (v!15874 V!40315)) (EmptyCell!12486) )
))
(declare-datatypes ((array!69688 0))(
  ( (array!69689 (arr!33514 (Array (_ BitVec 32) ValueCell!12486)) (size!34051 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69688)

(declare-fun zeroValue!831 () V!40315)

(declare-datatypes ((Unit!35551 0))(
  ( (Unit!35552) )
))
(declare-fun lt!479656 () Unit!35551)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1 (array!69686 array!69688 (_ BitVec 32) (_ BitVec 32) V!40315 V!40315 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35551)

(assert (=> b!1082555 (= lt!479656 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479660 () array!69686)

(declare-fun getCurrentListMapNoExtraKeys!3947 (array!69686 array!69688 (_ BitVec 32) (_ BitVec 32) V!40315 V!40315 (_ BitVec 32) Int) ListLongMap!14841)

(declare-fun dynLambda!2083 (Int (_ BitVec 64)) V!40315)

(assert (=> b!1082555 (= lt!479655 (getCurrentListMapNoExtraKeys!3947 lt!479660 (array!69689 (store (arr!33514 _values!874) i!650 (ValueCellFull!12486 (dynLambda!2083 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34051 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1082555 (= lt!479658 (getCurrentListMapNoExtraKeys!3947 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69686 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1082555 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!479657 () Unit!35551)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69686 (_ BitVec 64) (_ BitVec 32)) Unit!35551)

(assert (=> b!1082555 (= lt!479657 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1082556 () Bool)

(declare-fun res!721709 () Bool)

(assert (=> b!1082556 (=> (not res!721709) (not e!618694))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69686 (_ BitVec 32)) Bool)

(assert (=> b!1082556 (= res!721709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1082557 () Bool)

(assert (=> b!1082557 (= e!618694 e!618692)))

(declare-fun res!721708 () Bool)

(assert (=> b!1082557 (=> (not res!721708) (not e!618692))))

(assert (=> b!1082557 (= res!721708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479660 mask!1414))))

(assert (=> b!1082557 (= lt!479660 (array!69687 (store (arr!33513 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34050 _keys!1070)))))

(declare-fun mapNonEmpty!41341 () Bool)

(declare-fun mapRes!41341 () Bool)

(declare-fun tp!79016 () Bool)

(assert (=> mapNonEmpty!41341 (= mapRes!41341 (and tp!79016 e!618697))))

(declare-fun mapRest!41341 () (Array (_ BitVec 32) ValueCell!12486))

(declare-fun mapKey!41341 () (_ BitVec 32))

(declare-fun mapValue!41341 () ValueCell!12486)

(assert (=> mapNonEmpty!41341 (= (arr!33514 _values!874) (store mapRest!41341 mapKey!41341 mapValue!41341))))

(declare-fun b!1082558 () Bool)

(declare-fun res!721713 () Bool)

(assert (=> b!1082558 (=> (not res!721713) (not e!618694))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1082558 (= res!721713 (validKeyInArray!0 k0!904))))

(declare-fun mapIsEmpty!41341 () Bool)

(assert (=> mapIsEmpty!41341 mapRes!41341))

(declare-fun b!1082560 () Bool)

(declare-fun res!721712 () Bool)

(assert (=> b!1082560 (=> (not res!721712) (not e!618694))))

(assert (=> b!1082560 (= res!721712 (and (= (size!34051 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34050 _keys!1070) (size!34051 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1082561 () Bool)

(declare-fun e!618693 () Bool)

(declare-fun e!618696 () Bool)

(assert (=> b!1082561 (= e!618693 (and e!618696 mapRes!41341))))

(declare-fun condMapEmpty!41341 () Bool)

(declare-fun mapDefault!41341 () ValueCell!12486)

(assert (=> b!1082561 (= condMapEmpty!41341 (= (arr!33514 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12486)) mapDefault!41341)))))

(declare-fun b!1082562 () Bool)

(declare-fun res!721707 () Bool)

(assert (=> b!1082562 (=> (not res!721707) (not e!618692))))

(declare-datatypes ((List!23494 0))(
  ( (Nil!23491) (Cons!23490 (h!24699 (_ BitVec 64)) (t!32948 List!23494)) )
))
(declare-fun arrayNoDuplicates!0 (array!69686 (_ BitVec 32) List!23494) Bool)

(assert (=> b!1082562 (= res!721707 (arrayNoDuplicates!0 lt!479660 #b00000000000000000000000000000000 Nil!23491))))

(declare-fun b!1082563 () Bool)

(declare-fun res!721711 () Bool)

(assert (=> b!1082563 (=> (not res!721711) (not e!618694))))

(assert (=> b!1082563 (= res!721711 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34050 _keys!1070))))))

(declare-fun b!1082564 () Bool)

(declare-fun res!721714 () Bool)

(assert (=> b!1082564 (=> (not res!721714) (not e!618694))))

(assert (=> b!1082564 (= res!721714 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23491))))

(declare-fun res!721710 () Bool)

(assert (=> start!95772 (=> (not res!721710) (not e!618694))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95772 (= res!721710 (validMask!0 mask!1414))))

(assert (=> start!95772 e!618694))

(assert (=> start!95772 tp!79017))

(assert (=> start!95772 true))

(assert (=> start!95772 tp_is_empty!26391))

(declare-fun array_inv!25728 (array!69686) Bool)

(assert (=> start!95772 (array_inv!25728 _keys!1070)))

(declare-fun array_inv!25729 (array!69688) Bool)

(assert (=> start!95772 (and (array_inv!25729 _values!874) e!618693)))

(declare-fun b!1082559 () Bool)

(assert (=> b!1082559 (= e!618696 tp_is_empty!26391)))

(assert (= (and start!95772 res!721710) b!1082560))

(assert (= (and b!1082560 res!721712) b!1082556))

(assert (= (and b!1082556 res!721709) b!1082564))

(assert (= (and b!1082564 res!721714) b!1082563))

(assert (= (and b!1082563 res!721711) b!1082558))

(assert (= (and b!1082558 res!721713) b!1082554))

(assert (= (and b!1082554 res!721715) b!1082557))

(assert (= (and b!1082557 res!721708) b!1082562))

(assert (= (and b!1082562 res!721707) b!1082555))

(assert (= (and b!1082561 condMapEmpty!41341) mapIsEmpty!41341))

(assert (= (and b!1082561 (not condMapEmpty!41341)) mapNonEmpty!41341))

(get-info :version)

(assert (= (and mapNonEmpty!41341 ((_ is ValueCellFull!12486) mapValue!41341)) b!1082553))

(assert (= (and b!1082561 ((_ is ValueCellFull!12486) mapDefault!41341)) b!1082559))

(assert (= start!95772 b!1082561))

(declare-fun b_lambda!17089 () Bool)

(assert (=> (not b_lambda!17089) (not b!1082555)))

(declare-fun t!32946 () Bool)

(declare-fun tb!7275 () Bool)

(assert (=> (and start!95772 (= defaultEntry!882 defaultEntry!882) t!32946) tb!7275))

(declare-fun result!15061 () Bool)

(assert (=> tb!7275 (= result!15061 tp_is_empty!26391)))

(assert (=> b!1082555 t!32946))

(declare-fun b_and!35473 () Bool)

(assert (= b_and!35471 (and (=> t!32946 result!15061) b_and!35473)))

(declare-fun m!1000361 () Bool)

(assert (=> b!1082562 m!1000361))

(declare-fun m!1000363 () Bool)

(assert (=> b!1082558 m!1000363))

(declare-fun m!1000365 () Bool)

(assert (=> b!1082564 m!1000365))

(declare-fun m!1000367 () Bool)

(assert (=> b!1082555 m!1000367))

(declare-fun m!1000369 () Bool)

(assert (=> b!1082555 m!1000369))

(declare-fun m!1000371 () Bool)

(assert (=> b!1082555 m!1000371))

(declare-fun m!1000373 () Bool)

(assert (=> b!1082555 m!1000373))

(declare-fun m!1000375 () Bool)

(assert (=> b!1082555 m!1000375))

(declare-fun m!1000377 () Bool)

(assert (=> b!1082555 m!1000377))

(declare-fun m!1000379 () Bool)

(assert (=> b!1082555 m!1000379))

(declare-fun m!1000381 () Bool)

(assert (=> b!1082555 m!1000381))

(declare-fun m!1000383 () Bool)

(assert (=> mapNonEmpty!41341 m!1000383))

(declare-fun m!1000385 () Bool)

(assert (=> b!1082554 m!1000385))

(declare-fun m!1000387 () Bool)

(assert (=> start!95772 m!1000387))

(declare-fun m!1000389 () Bool)

(assert (=> start!95772 m!1000389))

(declare-fun m!1000391 () Bool)

(assert (=> start!95772 m!1000391))

(declare-fun m!1000393 () Bool)

(assert (=> b!1082556 m!1000393))

(declare-fun m!1000395 () Bool)

(assert (=> b!1082557 m!1000395))

(declare-fun m!1000397 () Bool)

(assert (=> b!1082557 m!1000397))

(check-sat (not b!1082557) (not b!1082555) (not start!95772) (not b!1082564) (not b!1082558) (not mapNonEmpty!41341) (not b_lambda!17089) (not b_next!22389) (not b!1082556) (not b!1082562) tp_is_empty!26391 b_and!35473)
(check-sat b_and!35473 (not b_next!22389))
