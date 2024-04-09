; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96792 () Bool)

(assert start!96792)

(declare-fun b_free!23151 () Bool)

(declare-fun b_next!23151 () Bool)

(assert (=> start!96792 (= b_free!23151 (not b_next!23151))))

(declare-fun tp!81401 () Bool)

(declare-fun b_and!37081 () Bool)

(assert (=> start!96792 (= tp!81401 b_and!37081)))

(declare-fun res!734493 () Bool)

(declare-fun e!628206 () Bool)

(assert (=> start!96792 (=> (not res!734493) (not e!628206))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96792 (= res!734493 (validMask!0 mask!1414))))

(assert (=> start!96792 e!628206))

(assert (=> start!96792 tp!81401))

(assert (=> start!96792 true))

(declare-fun tp_is_empty!27201 () Bool)

(assert (=> start!96792 tp_is_empty!27201))

(declare-datatypes ((array!71270 0))(
  ( (array!71271 (arr!34296 (Array (_ BitVec 32) (_ BitVec 64))) (size!34833 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71270)

(declare-fun array_inv!26276 (array!71270) Bool)

(assert (=> start!96792 (array_inv!26276 _keys!1070)))

(declare-datatypes ((V!41395 0))(
  ( (V!41396 (val!13657 Int)) )
))
(declare-datatypes ((ValueCell!12891 0))(
  ( (ValueCellFull!12891 (v!16286 V!41395)) (EmptyCell!12891) )
))
(declare-datatypes ((array!71272 0))(
  ( (array!71273 (arr!34297 (Array (_ BitVec 32) ValueCell!12891)) (size!34834 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71272)

(declare-fun e!628203 () Bool)

(declare-fun array_inv!26277 (array!71272) Bool)

(assert (=> start!96792 (and (array_inv!26277 _values!874) e!628203)))

(declare-fun b!1100552 () Bool)

(declare-fun res!734496 () Bool)

(assert (=> b!1100552 (=> (not res!734496) (not e!628206))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1100552 (= res!734496 (and (= (size!34834 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34833 _keys!1070) (size!34834 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1100553 () Bool)

(declare-fun res!734500 () Bool)

(declare-fun e!628205 () Bool)

(assert (=> b!1100553 (=> (not res!734500) (not e!628205))))

(declare-fun lt!493186 () array!71270)

(declare-datatypes ((List!24100 0))(
  ( (Nil!24097) (Cons!24096 (h!25305 (_ BitVec 64)) (t!34304 List!24100)) )
))
(declare-fun arrayNoDuplicates!0 (array!71270 (_ BitVec 32) List!24100) Bool)

(assert (=> b!1100553 (= res!734500 (arrayNoDuplicates!0 lt!493186 #b00000000000000000000000000000000 Nil!24097))))

(declare-fun b!1100554 () Bool)

(declare-fun res!734494 () Bool)

(assert (=> b!1100554 (=> (not res!734494) (not e!628206))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1100554 (= res!734494 (validKeyInArray!0 k0!904))))

(declare-fun b!1100555 () Bool)

(declare-fun res!734502 () Bool)

(assert (=> b!1100555 (=> (not res!734502) (not e!628206))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1100555 (= res!734502 (= (select (arr!34296 _keys!1070) i!650) k0!904))))

(declare-fun b!1100556 () Bool)

(declare-fun e!628202 () Bool)

(declare-fun mapRes!42583 () Bool)

(assert (=> b!1100556 (= e!628203 (and e!628202 mapRes!42583))))

(declare-fun condMapEmpty!42583 () Bool)

(declare-fun mapDefault!42583 () ValueCell!12891)

(assert (=> b!1100556 (= condMapEmpty!42583 (= (arr!34297 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12891)) mapDefault!42583)))))

(declare-fun b!1100557 () Bool)

(declare-fun res!734499 () Bool)

(assert (=> b!1100557 (=> (not res!734499) (not e!628206))))

(assert (=> b!1100557 (= res!734499 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34833 _keys!1070))))))

(declare-datatypes ((tuple2!17428 0))(
  ( (tuple2!17429 (_1!8724 (_ BitVec 64)) (_2!8724 V!41395)) )
))
(declare-datatypes ((List!24101 0))(
  ( (Nil!24098) (Cons!24097 (h!25306 tuple2!17428) (t!34305 List!24101)) )
))
(declare-datatypes ((ListLongMap!15409 0))(
  ( (ListLongMap!15410 (toList!7720 List!24101)) )
))
(declare-fun lt!493179 () ListLongMap!15409)

(declare-fun e!628208 () Bool)

(declare-fun b!1100558 () Bool)

(declare-fun lt!493189 () ListLongMap!15409)

(declare-fun -!960 (ListLongMap!15409 (_ BitVec 64)) ListLongMap!15409)

(assert (=> b!1100558 (= e!628208 (= (-!960 lt!493189 k0!904) lt!493179))))

(declare-fun lt!493187 () ListLongMap!15409)

(declare-fun lt!493181 () ListLongMap!15409)

(assert (=> b!1100558 (= (-!960 lt!493187 k0!904) lt!493181)))

(declare-fun lt!493185 () ListLongMap!15409)

(declare-fun zeroValue!831 () V!41395)

(declare-datatypes ((Unit!36113 0))(
  ( (Unit!36114) )
))
(declare-fun lt!493184 () Unit!36113)

(declare-fun addRemoveCommutativeForDiffKeys!136 (ListLongMap!15409 (_ BitVec 64) V!41395 (_ BitVec 64)) Unit!36113)

(assert (=> b!1100558 (= lt!493184 (addRemoveCommutativeForDiffKeys!136 lt!493185 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun b!1100559 () Bool)

(assert (=> b!1100559 (= e!628202 tp_is_empty!27201)))

(declare-fun mapIsEmpty!42583 () Bool)

(assert (=> mapIsEmpty!42583 mapRes!42583))

(declare-fun b!1100560 () Bool)

(declare-fun e!628207 () Bool)

(assert (=> b!1100560 (= e!628207 tp_is_empty!27201)))

(declare-fun b!1100561 () Bool)

(declare-fun res!734503 () Bool)

(assert (=> b!1100561 (=> (not res!734503) (not e!628206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71270 (_ BitVec 32)) Bool)

(assert (=> b!1100561 (= res!734503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!42583 () Bool)

(declare-fun tp!81402 () Bool)

(assert (=> mapNonEmpty!42583 (= mapRes!42583 (and tp!81402 e!628207))))

(declare-fun mapKey!42583 () (_ BitVec 32))

(declare-fun mapValue!42583 () ValueCell!12891)

(declare-fun mapRest!42583 () (Array (_ BitVec 32) ValueCell!12891))

(assert (=> mapNonEmpty!42583 (= (arr!34297 _values!874) (store mapRest!42583 mapKey!42583 mapValue!42583))))

(declare-fun b!1100562 () Bool)

(declare-fun e!628201 () Bool)

(assert (=> b!1100562 (= e!628205 (not e!628201))))

(declare-fun res!734501 () Bool)

(assert (=> b!1100562 (=> res!734501 e!628201)))

(assert (=> b!1100562 (= res!734501 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41395)

(declare-fun getCurrentListMap!4408 (array!71270 array!71272 (_ BitVec 32) (_ BitVec 32) V!41395 V!41395 (_ BitVec 32) Int) ListLongMap!15409)

(assert (=> b!1100562 (= lt!493189 (getCurrentListMap!4408 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493178 () array!71272)

(assert (=> b!1100562 (= lt!493179 (getCurrentListMap!4408 lt!493186 lt!493178 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493180 () ListLongMap!15409)

(declare-fun lt!493177 () ListLongMap!15409)

(assert (=> b!1100562 (and (= lt!493180 lt!493177) (= lt!493177 lt!493180))))

(assert (=> b!1100562 (= lt!493177 (-!960 lt!493185 k0!904))))

(declare-fun lt!493183 () Unit!36113)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!220 (array!71270 array!71272 (_ BitVec 32) (_ BitVec 32) V!41395 V!41395 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36113)

(assert (=> b!1100562 (= lt!493183 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!220 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4195 (array!71270 array!71272 (_ BitVec 32) (_ BitVec 32) V!41395 V!41395 (_ BitVec 32) Int) ListLongMap!15409)

(assert (=> b!1100562 (= lt!493180 (getCurrentListMapNoExtraKeys!4195 lt!493186 lt!493178 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2326 (Int (_ BitVec 64)) V!41395)

(assert (=> b!1100562 (= lt!493178 (array!71273 (store (arr!34297 _values!874) i!650 (ValueCellFull!12891 (dynLambda!2326 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34834 _values!874)))))

(assert (=> b!1100562 (= lt!493185 (getCurrentListMapNoExtraKeys!4195 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71270 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1100562 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!493182 () Unit!36113)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71270 (_ BitVec 64) (_ BitVec 32)) Unit!36113)

(assert (=> b!1100562 (= lt!493182 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1100563 () Bool)

(declare-fun res!734498 () Bool)

(assert (=> b!1100563 (=> (not res!734498) (not e!628206))))

(assert (=> b!1100563 (= res!734498 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24097))))

(declare-fun b!1100564 () Bool)

(assert (=> b!1100564 (= e!628206 e!628205)))

(declare-fun res!734495 () Bool)

(assert (=> b!1100564 (=> (not res!734495) (not e!628205))))

(assert (=> b!1100564 (= res!734495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!493186 mask!1414))))

(assert (=> b!1100564 (= lt!493186 (array!71271 (store (arr!34296 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34833 _keys!1070)))))

(declare-fun b!1100565 () Bool)

(assert (=> b!1100565 (= e!628201 e!628208)))

(declare-fun res!734497 () Bool)

(assert (=> b!1100565 (=> res!734497 e!628208)))

(assert (=> b!1100565 (= res!734497 (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(assert (=> b!1100565 (= lt!493179 lt!493181)))

(declare-fun lt!493188 () tuple2!17428)

(declare-fun +!3353 (ListLongMap!15409 tuple2!17428) ListLongMap!15409)

(assert (=> b!1100565 (= lt!493181 (+!3353 lt!493177 lt!493188))))

(assert (=> b!1100565 (= lt!493189 lt!493187)))

(assert (=> b!1100565 (= lt!493187 (+!3353 lt!493185 lt!493188))))

(assert (=> b!1100565 (= lt!493179 (+!3353 lt!493180 lt!493188))))

(assert (=> b!1100565 (= lt!493188 (tuple2!17429 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(assert (= (and start!96792 res!734493) b!1100552))

(assert (= (and b!1100552 res!734496) b!1100561))

(assert (= (and b!1100561 res!734503) b!1100563))

(assert (= (and b!1100563 res!734498) b!1100557))

(assert (= (and b!1100557 res!734499) b!1100554))

(assert (= (and b!1100554 res!734494) b!1100555))

(assert (= (and b!1100555 res!734502) b!1100564))

(assert (= (and b!1100564 res!734495) b!1100553))

(assert (= (and b!1100553 res!734500) b!1100562))

(assert (= (and b!1100562 (not res!734501)) b!1100565))

(assert (= (and b!1100565 (not res!734497)) b!1100558))

(assert (= (and b!1100556 condMapEmpty!42583) mapIsEmpty!42583))

(assert (= (and b!1100556 (not condMapEmpty!42583)) mapNonEmpty!42583))

(get-info :version)

(assert (= (and mapNonEmpty!42583 ((_ is ValueCellFull!12891) mapValue!42583)) b!1100560))

(assert (= (and b!1100556 ((_ is ValueCellFull!12891) mapDefault!42583)) b!1100559))

(assert (= start!96792 b!1100556))

(declare-fun b_lambda!18049 () Bool)

(assert (=> (not b_lambda!18049) (not b!1100562)))

(declare-fun t!34303 () Bool)

(declare-fun tb!8025 () Bool)

(assert (=> (and start!96792 (= defaultEntry!882 defaultEntry!882) t!34303) tb!8025))

(declare-fun result!16579 () Bool)

(assert (=> tb!8025 (= result!16579 tp_is_empty!27201)))

(assert (=> b!1100562 t!34303))

(declare-fun b_and!37083 () Bool)

(assert (= b_and!37081 (and (=> t!34303 result!16579) b_and!37083)))

(declare-fun m!1020789 () Bool)

(assert (=> b!1100563 m!1020789))

(declare-fun m!1020791 () Bool)

(assert (=> b!1100555 m!1020791))

(declare-fun m!1020793 () Bool)

(assert (=> b!1100562 m!1020793))

(declare-fun m!1020795 () Bool)

(assert (=> b!1100562 m!1020795))

(declare-fun m!1020797 () Bool)

(assert (=> b!1100562 m!1020797))

(declare-fun m!1020799 () Bool)

(assert (=> b!1100562 m!1020799))

(declare-fun m!1020801 () Bool)

(assert (=> b!1100562 m!1020801))

(declare-fun m!1020803 () Bool)

(assert (=> b!1100562 m!1020803))

(declare-fun m!1020805 () Bool)

(assert (=> b!1100562 m!1020805))

(declare-fun m!1020807 () Bool)

(assert (=> b!1100562 m!1020807))

(declare-fun m!1020809 () Bool)

(assert (=> b!1100562 m!1020809))

(declare-fun m!1020811 () Bool)

(assert (=> b!1100562 m!1020811))

(declare-fun m!1020813 () Bool)

(assert (=> b!1100561 m!1020813))

(declare-fun m!1020815 () Bool)

(assert (=> b!1100558 m!1020815))

(declare-fun m!1020817 () Bool)

(assert (=> b!1100558 m!1020817))

(declare-fun m!1020819 () Bool)

(assert (=> b!1100558 m!1020819))

(declare-fun m!1020821 () Bool)

(assert (=> b!1100564 m!1020821))

(declare-fun m!1020823 () Bool)

(assert (=> b!1100564 m!1020823))

(declare-fun m!1020825 () Bool)

(assert (=> b!1100554 m!1020825))

(declare-fun m!1020827 () Bool)

(assert (=> b!1100565 m!1020827))

(declare-fun m!1020829 () Bool)

(assert (=> b!1100565 m!1020829))

(declare-fun m!1020831 () Bool)

(assert (=> b!1100565 m!1020831))

(declare-fun m!1020833 () Bool)

(assert (=> start!96792 m!1020833))

(declare-fun m!1020835 () Bool)

(assert (=> start!96792 m!1020835))

(declare-fun m!1020837 () Bool)

(assert (=> start!96792 m!1020837))

(declare-fun m!1020839 () Bool)

(assert (=> b!1100553 m!1020839))

(declare-fun m!1020841 () Bool)

(assert (=> mapNonEmpty!42583 m!1020841))

(check-sat (not b!1100564) (not b_next!23151) (not b_lambda!18049) (not start!96792) (not b!1100558) (not mapNonEmpty!42583) tp_is_empty!27201 (not b!1100553) (not b!1100554) (not b!1100561) (not b!1100562) (not b!1100565) b_and!37083 (not b!1100563))
(check-sat b_and!37083 (not b_next!23151))
