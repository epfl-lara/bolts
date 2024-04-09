; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95712 () Bool)

(assert start!95712)

(declare-fun b_free!22329 () Bool)

(declare-fun b_next!22329 () Bool)

(assert (=> start!95712 (= b_free!22329 (not b_next!22329))))

(declare-fun tp!78837 () Bool)

(declare-fun b_and!35351 () Bool)

(assert (=> start!95712 (= tp!78837 b_and!35351)))

(declare-fun b!1081413 () Bool)

(declare-fun res!720903 () Bool)

(declare-fun e!618157 () Bool)

(assert (=> b!1081413 (=> (not res!720903) (not e!618157))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69566 0))(
  ( (array!69567 (arr!33453 (Array (_ BitVec 32) (_ BitVec 64))) (size!33990 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69566)

(assert (=> b!1081413 (= res!720903 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33990 _keys!1070))))))

(declare-fun b!1081414 () Bool)

(declare-fun e!618156 () Bool)

(declare-fun e!618154 () Bool)

(declare-fun mapRes!41251 () Bool)

(assert (=> b!1081414 (= e!618156 (and e!618154 mapRes!41251))))

(declare-fun condMapEmpty!41251 () Bool)

(declare-datatypes ((V!40235 0))(
  ( (V!40236 (val!13222 Int)) )
))
(declare-datatypes ((ValueCell!12456 0))(
  ( (ValueCellFull!12456 (v!15844 V!40235)) (EmptyCell!12456) )
))
(declare-datatypes ((array!69568 0))(
  ( (array!69569 (arr!33454 (Array (_ BitVec 32) ValueCell!12456)) (size!33991 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69568)

(declare-fun mapDefault!41251 () ValueCell!12456)

(assert (=> b!1081414 (= condMapEmpty!41251 (= (arr!33454 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12456)) mapDefault!41251)))))

(declare-fun b!1081415 () Bool)

(declare-fun e!618153 () Bool)

(assert (=> b!1081415 (= e!618157 e!618153)))

(declare-fun res!720898 () Bool)

(assert (=> b!1081415 (=> (not res!720898) (not e!618153))))

(declare-fun lt!479285 () array!69566)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69566 (_ BitVec 32)) Bool)

(assert (=> b!1081415 (= res!720898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479285 mask!1414))))

(assert (=> b!1081415 (= lt!479285 (array!69567 (store (arr!33453 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33990 _keys!1070)))))

(declare-fun b!1081416 () Bool)

(declare-fun res!720902 () Bool)

(assert (=> b!1081416 (=> (not res!720902) (not e!618157))))

(assert (=> b!1081416 (= res!720902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1081417 () Bool)

(declare-fun res!720905 () Bool)

(assert (=> b!1081417 (=> (not res!720905) (not e!618157))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1081417 (= res!720905 (and (= (size!33991 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33990 _keys!1070) (size!33991 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1081418 () Bool)

(declare-fun e!618155 () Bool)

(declare-fun tp_is_empty!26331 () Bool)

(assert (=> b!1081418 (= e!618155 tp_is_empty!26331)))

(declare-fun b!1081419 () Bool)

(assert (=> b!1081419 (= e!618154 tp_is_empty!26331)))

(declare-fun b!1081421 () Bool)

(declare-fun res!720904 () Bool)

(assert (=> b!1081421 (=> (not res!720904) (not e!618153))))

(declare-datatypes ((List!23449 0))(
  ( (Nil!23446) (Cons!23445 (h!24654 (_ BitVec 64)) (t!32843 List!23449)) )
))
(declare-fun arrayNoDuplicates!0 (array!69566 (_ BitVec 32) List!23449) Bool)

(assert (=> b!1081421 (= res!720904 (arrayNoDuplicates!0 lt!479285 #b00000000000000000000000000000000 Nil!23446))))

(declare-fun b!1081422 () Bool)

(assert (=> b!1081422 (= e!618153 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40235)

(declare-datatypes ((tuple2!16822 0))(
  ( (tuple2!16823 (_1!8421 (_ BitVec 64)) (_2!8421 V!40235)) )
))
(declare-datatypes ((List!23450 0))(
  ( (Nil!23447) (Cons!23446 (h!24655 tuple2!16822) (t!32844 List!23450)) )
))
(declare-datatypes ((ListLongMap!14803 0))(
  ( (ListLongMap!14804 (toList!7417 List!23450)) )
))
(declare-fun lt!479288 () ListLongMap!14803)

(declare-fun zeroValue!831 () V!40235)

(declare-fun getCurrentListMapNoExtraKeys!3928 (array!69566 array!69568 (_ BitVec 32) (_ BitVec 32) V!40235 V!40235 (_ BitVec 32) Int) ListLongMap!14803)

(declare-fun dynLambda!2064 (Int (_ BitVec 64)) V!40235)

(assert (=> b!1081422 (= lt!479288 (getCurrentListMapNoExtraKeys!3928 lt!479285 (array!69569 (store (arr!33454 _values!874) i!650 (ValueCellFull!12456 (dynLambda!2064 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!33991 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479287 () ListLongMap!14803)

(assert (=> b!1081422 (= lt!479287 (getCurrentListMapNoExtraKeys!3928 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69566 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1081422 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35513 0))(
  ( (Unit!35514) )
))
(declare-fun lt!479286 () Unit!35513)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69566 (_ BitVec 64) (_ BitVec 32)) Unit!35513)

(assert (=> b!1081422 (= lt!479286 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapNonEmpty!41251 () Bool)

(declare-fun tp!78836 () Bool)

(assert (=> mapNonEmpty!41251 (= mapRes!41251 (and tp!78836 e!618155))))

(declare-fun mapRest!41251 () (Array (_ BitVec 32) ValueCell!12456))

(declare-fun mapValue!41251 () ValueCell!12456)

(declare-fun mapKey!41251 () (_ BitVec 32))

(assert (=> mapNonEmpty!41251 (= (arr!33454 _values!874) (store mapRest!41251 mapKey!41251 mapValue!41251))))

(declare-fun mapIsEmpty!41251 () Bool)

(assert (=> mapIsEmpty!41251 mapRes!41251))

(declare-fun b!1081423 () Bool)

(declare-fun res!720899 () Bool)

(assert (=> b!1081423 (=> (not res!720899) (not e!618157))))

(assert (=> b!1081423 (= res!720899 (= (select (arr!33453 _keys!1070) i!650) k0!904))))

(declare-fun b!1081424 () Bool)

(declare-fun res!720901 () Bool)

(assert (=> b!1081424 (=> (not res!720901) (not e!618157))))

(assert (=> b!1081424 (= res!720901 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23446))))

(declare-fun res!720900 () Bool)

(assert (=> start!95712 (=> (not res!720900) (not e!618157))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95712 (= res!720900 (validMask!0 mask!1414))))

(assert (=> start!95712 e!618157))

(assert (=> start!95712 tp!78837))

(assert (=> start!95712 true))

(assert (=> start!95712 tp_is_empty!26331))

(declare-fun array_inv!25684 (array!69566) Bool)

(assert (=> start!95712 (array_inv!25684 _keys!1070)))

(declare-fun array_inv!25685 (array!69568) Bool)

(assert (=> start!95712 (and (array_inv!25685 _values!874) e!618156)))

(declare-fun b!1081420 () Bool)

(declare-fun res!720897 () Bool)

(assert (=> b!1081420 (=> (not res!720897) (not e!618157))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1081420 (= res!720897 (validKeyInArray!0 k0!904))))

(assert (= (and start!95712 res!720900) b!1081417))

(assert (= (and b!1081417 res!720905) b!1081416))

(assert (= (and b!1081416 res!720902) b!1081424))

(assert (= (and b!1081424 res!720901) b!1081413))

(assert (= (and b!1081413 res!720903) b!1081420))

(assert (= (and b!1081420 res!720897) b!1081423))

(assert (= (and b!1081423 res!720899) b!1081415))

(assert (= (and b!1081415 res!720898) b!1081421))

(assert (= (and b!1081421 res!720904) b!1081422))

(assert (= (and b!1081414 condMapEmpty!41251) mapIsEmpty!41251))

(assert (= (and b!1081414 (not condMapEmpty!41251)) mapNonEmpty!41251))

(get-info :version)

(assert (= (and mapNonEmpty!41251 ((_ is ValueCellFull!12456) mapValue!41251)) b!1081418))

(assert (= (and b!1081414 ((_ is ValueCellFull!12456) mapDefault!41251)) b!1081419))

(assert (= start!95712 b!1081414))

(declare-fun b_lambda!17029 () Bool)

(assert (=> (not b_lambda!17029) (not b!1081422)))

(declare-fun t!32842 () Bool)

(declare-fun tb!7215 () Bool)

(assert (=> (and start!95712 (= defaultEntry!882 defaultEntry!882) t!32842) tb!7215))

(declare-fun result!14941 () Bool)

(assert (=> tb!7215 (= result!14941 tp_is_empty!26331)))

(assert (=> b!1081422 t!32842))

(declare-fun b_and!35353 () Bool)

(assert (= b_and!35351 (and (=> t!32842 result!14941) b_and!35353)))

(declare-fun m!999337 () Bool)

(assert (=> b!1081421 m!999337))

(declare-fun m!999339 () Bool)

(assert (=> b!1081415 m!999339))

(declare-fun m!999341 () Bool)

(assert (=> b!1081415 m!999341))

(declare-fun m!999343 () Bool)

(assert (=> b!1081424 m!999343))

(declare-fun m!999345 () Bool)

(assert (=> b!1081416 m!999345))

(declare-fun m!999347 () Bool)

(assert (=> start!95712 m!999347))

(declare-fun m!999349 () Bool)

(assert (=> start!95712 m!999349))

(declare-fun m!999351 () Bool)

(assert (=> start!95712 m!999351))

(declare-fun m!999353 () Bool)

(assert (=> mapNonEmpty!41251 m!999353))

(declare-fun m!999355 () Bool)

(assert (=> b!1081422 m!999355))

(declare-fun m!999357 () Bool)

(assert (=> b!1081422 m!999357))

(declare-fun m!999359 () Bool)

(assert (=> b!1081422 m!999359))

(declare-fun m!999361 () Bool)

(assert (=> b!1081422 m!999361))

(declare-fun m!999363 () Bool)

(assert (=> b!1081422 m!999363))

(declare-fun m!999365 () Bool)

(assert (=> b!1081422 m!999365))

(declare-fun m!999367 () Bool)

(assert (=> b!1081423 m!999367))

(declare-fun m!999369 () Bool)

(assert (=> b!1081420 m!999369))

(check-sat (not start!95712) (not b!1081421) (not b!1081424) (not b!1081415) (not b!1081416) (not b!1081422) (not mapNonEmpty!41251) (not b!1081420) (not b_lambda!17029) b_and!35353 tp_is_empty!26331 (not b_next!22329))
(check-sat b_and!35353 (not b_next!22329))
