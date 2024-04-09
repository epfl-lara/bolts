; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96786 () Bool)

(assert start!96786)

(declare-fun b_free!23145 () Bool)

(declare-fun b_next!23145 () Bool)

(assert (=> start!96786 (= b_free!23145 (not b_next!23145))))

(declare-fun tp!81384 () Bool)

(declare-fun b_and!37069 () Bool)

(assert (=> start!96786 (= tp!81384 b_and!37069)))

(declare-fun b!1100420 () Bool)

(declare-fun res!734399 () Bool)

(declare-fun e!628134 () Bool)

(assert (=> b!1100420 (=> (not res!734399) (not e!628134))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!71258 0))(
  ( (array!71259 (arr!34290 (Array (_ BitVec 32) (_ BitVec 64))) (size!34827 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71258)

(assert (=> b!1100420 (= res!734399 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34827 _keys!1070))))))

(declare-fun b!1100421 () Bool)

(declare-fun e!628131 () Bool)

(declare-fun e!628132 () Bool)

(declare-fun mapRes!42574 () Bool)

(assert (=> b!1100421 (= e!628131 (and e!628132 mapRes!42574))))

(declare-fun condMapEmpty!42574 () Bool)

(declare-datatypes ((V!41387 0))(
  ( (V!41388 (val!13654 Int)) )
))
(declare-datatypes ((ValueCell!12888 0))(
  ( (ValueCellFull!12888 (v!16283 V!41387)) (EmptyCell!12888) )
))
(declare-datatypes ((array!71260 0))(
  ( (array!71261 (arr!34291 (Array (_ BitVec 32) ValueCell!12888)) (size!34828 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71260)

(declare-fun mapDefault!42574 () ValueCell!12888)

(assert (=> b!1100421 (= condMapEmpty!42574 (= (arr!34291 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12888)) mapDefault!42574)))))

(declare-fun b!1100422 () Bool)

(declare-fun e!628129 () Bool)

(declare-fun e!628136 () Bool)

(assert (=> b!1100422 (= e!628129 (not e!628136))))

(declare-fun res!734404 () Bool)

(assert (=> b!1100422 (=> res!734404 e!628136)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1100422 (= res!734404 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41387)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!17422 0))(
  ( (tuple2!17423 (_1!8721 (_ BitVec 64)) (_2!8721 V!41387)) )
))
(declare-datatypes ((List!24094 0))(
  ( (Nil!24091) (Cons!24090 (h!25299 tuple2!17422) (t!34292 List!24094)) )
))
(declare-datatypes ((ListLongMap!15403 0))(
  ( (ListLongMap!15404 (toList!7717 List!24094)) )
))
(declare-fun lt!493065 () ListLongMap!15403)

(declare-fun zeroValue!831 () V!41387)

(declare-fun getCurrentListMap!4405 (array!71258 array!71260 (_ BitVec 32) (_ BitVec 32) V!41387 V!41387 (_ BitVec 32) Int) ListLongMap!15403)

(assert (=> b!1100422 (= lt!493065 (getCurrentListMap!4405 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493070 () array!71260)

(declare-fun lt!493067 () array!71258)

(declare-fun lt!493068 () ListLongMap!15403)

(assert (=> b!1100422 (= lt!493068 (getCurrentListMap!4405 lt!493067 lt!493070 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493063 () ListLongMap!15403)

(declare-fun lt!493060 () ListLongMap!15403)

(assert (=> b!1100422 (and (= lt!493063 lt!493060) (= lt!493060 lt!493063))))

(declare-fun lt!493064 () ListLongMap!15403)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun -!957 (ListLongMap!15403 (_ BitVec 64)) ListLongMap!15403)

(assert (=> b!1100422 (= lt!493060 (-!957 lt!493064 k0!904))))

(declare-datatypes ((Unit!36107 0))(
  ( (Unit!36108) )
))
(declare-fun lt!493062 () Unit!36107)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!217 (array!71258 array!71260 (_ BitVec 32) (_ BitVec 32) V!41387 V!41387 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36107)

(assert (=> b!1100422 (= lt!493062 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!217 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4192 (array!71258 array!71260 (_ BitVec 32) (_ BitVec 32) V!41387 V!41387 (_ BitVec 32) Int) ListLongMap!15403)

(assert (=> b!1100422 (= lt!493063 (getCurrentListMapNoExtraKeys!4192 lt!493067 lt!493070 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2323 (Int (_ BitVec 64)) V!41387)

(assert (=> b!1100422 (= lt!493070 (array!71261 (store (arr!34291 _values!874) i!650 (ValueCellFull!12888 (dynLambda!2323 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34828 _values!874)))))

(assert (=> b!1100422 (= lt!493064 (getCurrentListMapNoExtraKeys!4192 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71258 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1100422 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!493069 () Unit!36107)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71258 (_ BitVec 64) (_ BitVec 32)) Unit!36107)

(assert (=> b!1100422 (= lt!493069 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1100423 () Bool)

(declare-fun res!734403 () Bool)

(assert (=> b!1100423 (=> (not res!734403) (not e!628134))))

(declare-datatypes ((List!24095 0))(
  ( (Nil!24092) (Cons!24091 (h!25300 (_ BitVec 64)) (t!34293 List!24095)) )
))
(declare-fun arrayNoDuplicates!0 (array!71258 (_ BitVec 32) List!24095) Bool)

(assert (=> b!1100423 (= res!734403 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24092))))

(declare-fun res!734400 () Bool)

(assert (=> start!96786 (=> (not res!734400) (not e!628134))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96786 (= res!734400 (validMask!0 mask!1414))))

(assert (=> start!96786 e!628134))

(assert (=> start!96786 tp!81384))

(assert (=> start!96786 true))

(declare-fun tp_is_empty!27195 () Bool)

(assert (=> start!96786 tp_is_empty!27195))

(declare-fun array_inv!26270 (array!71258) Bool)

(assert (=> start!96786 (array_inv!26270 _keys!1070)))

(declare-fun array_inv!26271 (array!71260) Bool)

(assert (=> start!96786 (and (array_inv!26271 _values!874) e!628131)))

(declare-fun b!1100424 () Bool)

(declare-fun res!734394 () Bool)

(assert (=> b!1100424 (=> (not res!734394) (not e!628134))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71258 (_ BitVec 32)) Bool)

(assert (=> b!1100424 (= res!734394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1100425 () Bool)

(declare-fun res!734396 () Bool)

(assert (=> b!1100425 (=> (not res!734396) (not e!628134))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1100425 (= res!734396 (validKeyInArray!0 k0!904))))

(declare-fun b!1100426 () Bool)

(declare-fun e!628130 () Bool)

(assert (=> b!1100426 (= e!628130 tp_is_empty!27195)))

(declare-fun b!1100427 () Bool)

(assert (=> b!1100427 (= e!628132 tp_is_empty!27195)))

(declare-fun b!1100428 () Bool)

(assert (=> b!1100428 (= e!628134 e!628129)))

(declare-fun res!734402 () Bool)

(assert (=> b!1100428 (=> (not res!734402) (not e!628129))))

(assert (=> b!1100428 (= res!734402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!493067 mask!1414))))

(assert (=> b!1100428 (= lt!493067 (array!71259 (store (arr!34290 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34827 _keys!1070)))))

(declare-fun b!1100429 () Bool)

(declare-fun res!734398 () Bool)

(assert (=> b!1100429 (=> (not res!734398) (not e!628134))))

(assert (=> b!1100429 (= res!734398 (and (= (size!34828 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34827 _keys!1070) (size!34828 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1100430 () Bool)

(declare-fun res!734401 () Bool)

(assert (=> b!1100430 (=> (not res!734401) (not e!628134))))

(assert (=> b!1100430 (= res!734401 (= (select (arr!34290 _keys!1070) i!650) k0!904))))

(declare-fun b!1100431 () Bool)

(declare-fun res!734397 () Bool)

(assert (=> b!1100431 (=> (not res!734397) (not e!628129))))

(assert (=> b!1100431 (= res!734397 (arrayNoDuplicates!0 lt!493067 #b00000000000000000000000000000000 Nil!24092))))

(declare-fun mapIsEmpty!42574 () Bool)

(assert (=> mapIsEmpty!42574 mapRes!42574))

(declare-fun b!1100432 () Bool)

(declare-fun e!628135 () Bool)

(assert (=> b!1100432 (= e!628135 (bvslt i!650 (size!34828 _values!874)))))

(declare-fun lt!493061 () ListLongMap!15403)

(declare-fun lt!493066 () ListLongMap!15403)

(assert (=> b!1100432 (= (-!957 lt!493061 k0!904) lt!493066)))

(declare-fun lt!493071 () Unit!36107)

(declare-fun addRemoveCommutativeForDiffKeys!133 (ListLongMap!15403 (_ BitVec 64) V!41387 (_ BitVec 64)) Unit!36107)

(assert (=> b!1100432 (= lt!493071 (addRemoveCommutativeForDiffKeys!133 lt!493064 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun b!1100433 () Bool)

(assert (=> b!1100433 (= e!628136 e!628135)))

(declare-fun res!734395 () Bool)

(assert (=> b!1100433 (=> res!734395 e!628135)))

(assert (=> b!1100433 (= res!734395 (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(assert (=> b!1100433 (= lt!493068 lt!493066)))

(declare-fun lt!493072 () tuple2!17422)

(declare-fun +!3350 (ListLongMap!15403 tuple2!17422) ListLongMap!15403)

(assert (=> b!1100433 (= lt!493066 (+!3350 lt!493060 lt!493072))))

(assert (=> b!1100433 (= lt!493065 lt!493061)))

(assert (=> b!1100433 (= lt!493061 (+!3350 lt!493064 lt!493072))))

(assert (=> b!1100433 (= lt!493068 (+!3350 lt!493063 lt!493072))))

(assert (=> b!1100433 (= lt!493072 (tuple2!17423 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun mapNonEmpty!42574 () Bool)

(declare-fun tp!81383 () Bool)

(assert (=> mapNonEmpty!42574 (= mapRes!42574 (and tp!81383 e!628130))))

(declare-fun mapKey!42574 () (_ BitVec 32))

(declare-fun mapRest!42574 () (Array (_ BitVec 32) ValueCell!12888))

(declare-fun mapValue!42574 () ValueCell!12888)

(assert (=> mapNonEmpty!42574 (= (arr!34291 _values!874) (store mapRest!42574 mapKey!42574 mapValue!42574))))

(assert (= (and start!96786 res!734400) b!1100429))

(assert (= (and b!1100429 res!734398) b!1100424))

(assert (= (and b!1100424 res!734394) b!1100423))

(assert (= (and b!1100423 res!734403) b!1100420))

(assert (= (and b!1100420 res!734399) b!1100425))

(assert (= (and b!1100425 res!734396) b!1100430))

(assert (= (and b!1100430 res!734401) b!1100428))

(assert (= (and b!1100428 res!734402) b!1100431))

(assert (= (and b!1100431 res!734397) b!1100422))

(assert (= (and b!1100422 (not res!734404)) b!1100433))

(assert (= (and b!1100433 (not res!734395)) b!1100432))

(assert (= (and b!1100421 condMapEmpty!42574) mapIsEmpty!42574))

(assert (= (and b!1100421 (not condMapEmpty!42574)) mapNonEmpty!42574))

(get-info :version)

(assert (= (and mapNonEmpty!42574 ((_ is ValueCellFull!12888) mapValue!42574)) b!1100426))

(assert (= (and b!1100421 ((_ is ValueCellFull!12888) mapDefault!42574)) b!1100427))

(assert (= start!96786 b!1100421))

(declare-fun b_lambda!18043 () Bool)

(assert (=> (not b_lambda!18043) (not b!1100422)))

(declare-fun t!34291 () Bool)

(declare-fun tb!8019 () Bool)

(assert (=> (and start!96786 (= defaultEntry!882 defaultEntry!882) t!34291) tb!8019))

(declare-fun result!16567 () Bool)

(assert (=> tb!8019 (= result!16567 tp_is_empty!27195)))

(assert (=> b!1100422 t!34291))

(declare-fun b_and!37071 () Bool)

(assert (= b_and!37069 (and (=> t!34291 result!16567) b_and!37071)))

(declare-fun m!1020631 () Bool)

(assert (=> b!1100424 m!1020631))

(declare-fun m!1020633 () Bool)

(assert (=> b!1100422 m!1020633))

(declare-fun m!1020635 () Bool)

(assert (=> b!1100422 m!1020635))

(declare-fun m!1020637 () Bool)

(assert (=> b!1100422 m!1020637))

(declare-fun m!1020639 () Bool)

(assert (=> b!1100422 m!1020639))

(declare-fun m!1020641 () Bool)

(assert (=> b!1100422 m!1020641))

(declare-fun m!1020643 () Bool)

(assert (=> b!1100422 m!1020643))

(declare-fun m!1020645 () Bool)

(assert (=> b!1100422 m!1020645))

(declare-fun m!1020647 () Bool)

(assert (=> b!1100422 m!1020647))

(declare-fun m!1020649 () Bool)

(assert (=> b!1100422 m!1020649))

(declare-fun m!1020651 () Bool)

(assert (=> b!1100422 m!1020651))

(declare-fun m!1020653 () Bool)

(assert (=> start!96786 m!1020653))

(declare-fun m!1020655 () Bool)

(assert (=> start!96786 m!1020655))

(declare-fun m!1020657 () Bool)

(assert (=> start!96786 m!1020657))

(declare-fun m!1020659 () Bool)

(assert (=> b!1100430 m!1020659))

(declare-fun m!1020661 () Bool)

(assert (=> b!1100433 m!1020661))

(declare-fun m!1020663 () Bool)

(assert (=> b!1100433 m!1020663))

(declare-fun m!1020665 () Bool)

(assert (=> b!1100433 m!1020665))

(declare-fun m!1020667 () Bool)

(assert (=> b!1100428 m!1020667))

(declare-fun m!1020669 () Bool)

(assert (=> b!1100428 m!1020669))

(declare-fun m!1020671 () Bool)

(assert (=> b!1100423 m!1020671))

(declare-fun m!1020673 () Bool)

(assert (=> b!1100432 m!1020673))

(declare-fun m!1020675 () Bool)

(assert (=> b!1100432 m!1020675))

(declare-fun m!1020677 () Bool)

(assert (=> b!1100425 m!1020677))

(declare-fun m!1020679 () Bool)

(assert (=> mapNonEmpty!42574 m!1020679))

(declare-fun m!1020681 () Bool)

(assert (=> b!1100431 m!1020681))

(check-sat (not b_lambda!18043) (not b!1100424) (not b!1100422) (not start!96786) tp_is_empty!27195 (not b!1100428) (not b!1100432) (not b!1100425) (not mapNonEmpty!42574) (not b_next!23145) (not b!1100433) (not b!1100431) (not b!1100423) b_and!37071)
(check-sat b_and!37071 (not b_next!23145))
