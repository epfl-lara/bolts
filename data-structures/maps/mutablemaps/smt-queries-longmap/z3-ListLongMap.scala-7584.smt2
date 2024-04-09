; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95862 () Bool)

(assert start!95862)

(declare-fun b_free!22479 () Bool)

(declare-fun b_next!22479 () Bool)

(assert (=> start!95862 (= b_free!22479 (not b_next!22479))))

(declare-fun tp!79286 () Bool)

(declare-fun b_and!35651 () Bool)

(assert (=> start!95862 (= tp!79286 b_and!35651)))

(declare-fun b!1084263 () Bool)

(declare-fun res!722925 () Bool)

(declare-fun e!619506 () Bool)

(assert (=> b!1084263 (=> (not res!722925) (not e!619506))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69864 0))(
  ( (array!69865 (arr!33602 (Array (_ BitVec 32) (_ BitVec 64))) (size!34139 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69864)

(assert (=> b!1084263 (= res!722925 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34139 _keys!1070))))))

(declare-fun mapNonEmpty!41476 () Bool)

(declare-fun mapRes!41476 () Bool)

(declare-fun tp!79287 () Bool)

(declare-fun e!619502 () Bool)

(assert (=> mapNonEmpty!41476 (= mapRes!41476 (and tp!79287 e!619502))))

(declare-datatypes ((V!40435 0))(
  ( (V!40436 (val!13297 Int)) )
))
(declare-datatypes ((ValueCell!12531 0))(
  ( (ValueCellFull!12531 (v!15919 V!40435)) (EmptyCell!12531) )
))
(declare-fun mapRest!41476 () (Array (_ BitVec 32) ValueCell!12531))

(declare-datatypes ((array!69866 0))(
  ( (array!69867 (arr!33603 (Array (_ BitVec 32) ValueCell!12531)) (size!34140 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69866)

(declare-fun mapKey!41476 () (_ BitVec 32))

(declare-fun mapValue!41476 () ValueCell!12531)

(assert (=> mapNonEmpty!41476 (= (arr!33603 _values!874) (store mapRest!41476 mapKey!41476 mapValue!41476))))

(declare-fun res!722928 () Bool)

(assert (=> start!95862 (=> (not res!722928) (not e!619506))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95862 (= res!722928 (validMask!0 mask!1414))))

(assert (=> start!95862 e!619506))

(assert (=> start!95862 tp!79286))

(assert (=> start!95862 true))

(declare-fun tp_is_empty!26481 () Bool)

(assert (=> start!95862 tp_is_empty!26481))

(declare-fun array_inv!25784 (array!69864) Bool)

(assert (=> start!95862 (array_inv!25784 _keys!1070)))

(declare-fun e!619503 () Bool)

(declare-fun array_inv!25785 (array!69866) Bool)

(assert (=> start!95862 (and (array_inv!25785 _values!874) e!619503)))

(declare-fun b!1084264 () Bool)

(assert (=> b!1084264 (= e!619502 tp_is_empty!26481)))

(declare-fun b!1084265 () Bool)

(declare-fun res!722930 () Bool)

(assert (=> b!1084265 (=> (not res!722930) (not e!619506))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1084265 (= res!722930 (= (select (arr!33602 _keys!1070) i!650) k0!904))))

(declare-fun mapIsEmpty!41476 () Bool)

(assert (=> mapIsEmpty!41476 mapRes!41476))

(declare-fun b!1084266 () Bool)

(declare-fun res!722927 () Bool)

(assert (=> b!1084266 (=> (not res!722927) (not e!619506))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69864 (_ BitVec 32)) Bool)

(assert (=> b!1084266 (= res!722927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1084267 () Bool)

(declare-fun res!722924 () Bool)

(assert (=> b!1084267 (=> (not res!722924) (not e!619506))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1084267 (= res!722924 (validKeyInArray!0 k0!904))))

(declare-fun b!1084268 () Bool)

(declare-fun res!722922 () Bool)

(assert (=> b!1084268 (=> (not res!722922) (not e!619506))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1084268 (= res!722922 (and (= (size!34140 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34139 _keys!1070) (size!34140 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1084269 () Bool)

(declare-fun res!722926 () Bool)

(assert (=> b!1084269 (=> (not res!722926) (not e!619506))))

(declare-datatypes ((List!23560 0))(
  ( (Nil!23557) (Cons!23556 (h!24765 (_ BitVec 64)) (t!33104 List!23560)) )
))
(declare-fun arrayNoDuplicates!0 (array!69864 (_ BitVec 32) List!23560) Bool)

(assert (=> b!1084269 (= res!722926 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23557))))

(declare-fun b!1084270 () Bool)

(declare-fun e!619507 () Bool)

(assert (=> b!1084270 (= e!619507 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!16918 0))(
  ( (tuple2!16919 (_1!8469 (_ BitVec 64)) (_2!8469 V!40435)) )
))
(declare-datatypes ((List!23561 0))(
  ( (Nil!23558) (Cons!23557 (h!24766 tuple2!16918) (t!33105 List!23561)) )
))
(declare-datatypes ((ListLongMap!14899 0))(
  ( (ListLongMap!14900 (toList!7465 List!23561)) )
))
(declare-fun lt!480587 () ListLongMap!14899)

(declare-fun minValue!831 () V!40435)

(declare-fun lt!480583 () array!69866)

(declare-fun lt!480590 () array!69864)

(declare-fun zeroValue!831 () V!40435)

(declare-fun getCurrentListMap!4224 (array!69864 array!69866 (_ BitVec 32) (_ BitVec 32) V!40435 V!40435 (_ BitVec 32) Int) ListLongMap!14899)

(assert (=> b!1084270 (= lt!480587 (getCurrentListMap!4224 lt!480590 lt!480583 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480585 () ListLongMap!14899)

(declare-fun lt!480589 () ListLongMap!14899)

(assert (=> b!1084270 (and (= lt!480585 lt!480589) (= lt!480589 lt!480585))))

(declare-fun lt!480586 () ListLongMap!14899)

(declare-fun -!747 (ListLongMap!14899 (_ BitVec 64)) ListLongMap!14899)

(assert (=> b!1084270 (= lt!480589 (-!747 lt!480586 k0!904))))

(declare-datatypes ((Unit!35609 0))(
  ( (Unit!35610) )
))
(declare-fun lt!480588 () Unit!35609)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!30 (array!69864 array!69866 (_ BitVec 32) (_ BitVec 32) V!40435 V!40435 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35609)

(assert (=> b!1084270 (= lt!480588 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!30 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3976 (array!69864 array!69866 (_ BitVec 32) (_ BitVec 32) V!40435 V!40435 (_ BitVec 32) Int) ListLongMap!14899)

(assert (=> b!1084270 (= lt!480585 (getCurrentListMapNoExtraKeys!3976 lt!480590 lt!480583 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2112 (Int (_ BitVec 64)) V!40435)

(assert (=> b!1084270 (= lt!480583 (array!69867 (store (arr!33603 _values!874) i!650 (ValueCellFull!12531 (dynLambda!2112 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34140 _values!874)))))

(assert (=> b!1084270 (= lt!480586 (getCurrentListMapNoExtraKeys!3976 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69864 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1084270 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!480584 () Unit!35609)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69864 (_ BitVec 64) (_ BitVec 32)) Unit!35609)

(assert (=> b!1084270 (= lt!480584 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1084271 () Bool)

(declare-fun e!619505 () Bool)

(assert (=> b!1084271 (= e!619505 tp_is_empty!26481)))

(declare-fun b!1084272 () Bool)

(assert (=> b!1084272 (= e!619506 e!619507)))

(declare-fun res!722923 () Bool)

(assert (=> b!1084272 (=> (not res!722923) (not e!619507))))

(assert (=> b!1084272 (= res!722923 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480590 mask!1414))))

(assert (=> b!1084272 (= lt!480590 (array!69865 (store (arr!33602 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34139 _keys!1070)))))

(declare-fun b!1084273 () Bool)

(declare-fun res!722929 () Bool)

(assert (=> b!1084273 (=> (not res!722929) (not e!619507))))

(assert (=> b!1084273 (= res!722929 (arrayNoDuplicates!0 lt!480590 #b00000000000000000000000000000000 Nil!23557))))

(declare-fun b!1084274 () Bool)

(assert (=> b!1084274 (= e!619503 (and e!619505 mapRes!41476))))

(declare-fun condMapEmpty!41476 () Bool)

(declare-fun mapDefault!41476 () ValueCell!12531)

(assert (=> b!1084274 (= condMapEmpty!41476 (= (arr!33603 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12531)) mapDefault!41476)))))

(assert (= (and start!95862 res!722928) b!1084268))

(assert (= (and b!1084268 res!722922) b!1084266))

(assert (= (and b!1084266 res!722927) b!1084269))

(assert (= (and b!1084269 res!722926) b!1084263))

(assert (= (and b!1084263 res!722925) b!1084267))

(assert (= (and b!1084267 res!722924) b!1084265))

(assert (= (and b!1084265 res!722930) b!1084272))

(assert (= (and b!1084272 res!722923) b!1084273))

(assert (= (and b!1084273 res!722929) b!1084270))

(assert (= (and b!1084274 condMapEmpty!41476) mapIsEmpty!41476))

(assert (= (and b!1084274 (not condMapEmpty!41476)) mapNonEmpty!41476))

(get-info :version)

(assert (= (and mapNonEmpty!41476 ((_ is ValueCellFull!12531) mapValue!41476)) b!1084264))

(assert (= (and b!1084274 ((_ is ValueCellFull!12531) mapDefault!41476)) b!1084271))

(assert (= start!95862 b!1084274))

(declare-fun b_lambda!17179 () Bool)

(assert (=> (not b_lambda!17179) (not b!1084270)))

(declare-fun t!33103 () Bool)

(declare-fun tb!7365 () Bool)

(assert (=> (and start!95862 (= defaultEntry!882 defaultEntry!882) t!33103) tb!7365))

(declare-fun result!15241 () Bool)

(assert (=> tb!7365 (= result!15241 tp_is_empty!26481)))

(assert (=> b!1084270 t!33103))

(declare-fun b_and!35653 () Bool)

(assert (= b_and!35651 (and (=> t!33103 result!15241) b_and!35653)))

(declare-fun m!1002109 () Bool)

(assert (=> b!1084269 m!1002109))

(declare-fun m!1002111 () Bool)

(assert (=> b!1084267 m!1002111))

(declare-fun m!1002113 () Bool)

(assert (=> b!1084272 m!1002113))

(declare-fun m!1002115 () Bool)

(assert (=> b!1084272 m!1002115))

(declare-fun m!1002117 () Bool)

(assert (=> b!1084273 m!1002117))

(declare-fun m!1002119 () Bool)

(assert (=> b!1084266 m!1002119))

(declare-fun m!1002121 () Bool)

(assert (=> mapNonEmpty!41476 m!1002121))

(declare-fun m!1002123 () Bool)

(assert (=> start!95862 m!1002123))

(declare-fun m!1002125 () Bool)

(assert (=> start!95862 m!1002125))

(declare-fun m!1002127 () Bool)

(assert (=> start!95862 m!1002127))

(declare-fun m!1002129 () Bool)

(assert (=> b!1084265 m!1002129))

(declare-fun m!1002131 () Bool)

(assert (=> b!1084270 m!1002131))

(declare-fun m!1002133 () Bool)

(assert (=> b!1084270 m!1002133))

(declare-fun m!1002135 () Bool)

(assert (=> b!1084270 m!1002135))

(declare-fun m!1002137 () Bool)

(assert (=> b!1084270 m!1002137))

(declare-fun m!1002139 () Bool)

(assert (=> b!1084270 m!1002139))

(declare-fun m!1002141 () Bool)

(assert (=> b!1084270 m!1002141))

(declare-fun m!1002143 () Bool)

(assert (=> b!1084270 m!1002143))

(declare-fun m!1002145 () Bool)

(assert (=> b!1084270 m!1002145))

(declare-fun m!1002147 () Bool)

(assert (=> b!1084270 m!1002147))

(check-sat (not b!1084269) (not b!1084273) (not b!1084267) (not b_lambda!17179) (not b!1084266) (not mapNonEmpty!41476) (not b!1084272) (not b!1084270) b_and!35653 (not b_next!22479) tp_is_empty!26481 (not start!95862))
(check-sat b_and!35653 (not b_next!22479))
