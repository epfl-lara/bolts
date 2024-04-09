; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95718 () Bool)

(assert start!95718)

(declare-fun b_free!22335 () Bool)

(declare-fun b_next!22335 () Bool)

(assert (=> start!95718 (= b_free!22335 (not b_next!22335))))

(declare-fun tp!78855 () Bool)

(declare-fun b_and!35363 () Bool)

(assert (=> start!95718 (= tp!78855 b_and!35363)))

(declare-fun b!1081527 () Bool)

(declare-fun e!618210 () Bool)

(declare-fun tp_is_empty!26337 () Bool)

(assert (=> b!1081527 (= e!618210 tp_is_empty!26337)))

(declare-fun b!1081528 () Bool)

(declare-fun res!720981 () Bool)

(declare-fun e!618208 () Bool)

(assert (=> b!1081528 (=> (not res!720981) (not e!618208))))

(declare-datatypes ((array!69578 0))(
  ( (array!69579 (arr!33459 (Array (_ BitVec 32) (_ BitVec 64))) (size!33996 (_ BitVec 32))) )
))
(declare-fun lt!479321 () array!69578)

(declare-datatypes ((List!23454 0))(
  ( (Nil!23451) (Cons!23450 (h!24659 (_ BitVec 64)) (t!32854 List!23454)) )
))
(declare-fun arrayNoDuplicates!0 (array!69578 (_ BitVec 32) List!23454) Bool)

(assert (=> b!1081528 (= res!720981 (arrayNoDuplicates!0 lt!479321 #b00000000000000000000000000000000 Nil!23451))))

(declare-fun b!1081529 () Bool)

(declare-fun res!720984 () Bool)

(declare-fun e!618206 () Bool)

(assert (=> b!1081529 (=> (not res!720984) (not e!618206))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun _keys!1070 () array!69578)

(declare-datatypes ((V!40243 0))(
  ( (V!40244 (val!13225 Int)) )
))
(declare-datatypes ((ValueCell!12459 0))(
  ( (ValueCellFull!12459 (v!15847 V!40243)) (EmptyCell!12459) )
))
(declare-datatypes ((array!69580 0))(
  ( (array!69581 (arr!33460 (Array (_ BitVec 32) ValueCell!12459)) (size!33997 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69580)

(assert (=> b!1081529 (= res!720984 (and (= (size!33997 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33996 _keys!1070) (size!33997 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1081530 () Bool)

(declare-fun e!618211 () Bool)

(assert (=> b!1081530 (= e!618211 tp_is_empty!26337)))

(declare-fun b!1081531 () Bool)

(declare-fun e!618209 () Bool)

(declare-fun mapRes!41260 () Bool)

(assert (=> b!1081531 (= e!618209 (and e!618210 mapRes!41260))))

(declare-fun condMapEmpty!41260 () Bool)

(declare-fun mapDefault!41260 () ValueCell!12459)

(assert (=> b!1081531 (= condMapEmpty!41260 (= (arr!33460 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12459)) mapDefault!41260)))))

(declare-fun b!1081532 () Bool)

(declare-fun res!720979 () Bool)

(assert (=> b!1081532 (=> (not res!720979) (not e!618206))))

(assert (=> b!1081532 (= res!720979 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23451))))

(declare-fun b!1081533 () Bool)

(declare-fun res!720978 () Bool)

(assert (=> b!1081533 (=> (not res!720978) (not e!618206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69578 (_ BitVec 32)) Bool)

(assert (=> b!1081533 (= res!720978 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!720986 () Bool)

(assert (=> start!95718 (=> (not res!720986) (not e!618206))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95718 (= res!720986 (validMask!0 mask!1414))))

(assert (=> start!95718 e!618206))

(assert (=> start!95718 tp!78855))

(assert (=> start!95718 true))

(assert (=> start!95718 tp_is_empty!26337))

(declare-fun array_inv!25688 (array!69578) Bool)

(assert (=> start!95718 (array_inv!25688 _keys!1070)))

(declare-fun array_inv!25689 (array!69580) Bool)

(assert (=> start!95718 (and (array_inv!25689 _values!874) e!618209)))

(declare-fun b!1081534 () Bool)

(declare-fun res!720982 () Bool)

(assert (=> b!1081534 (=> (not res!720982) (not e!618206))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1081534 (= res!720982 (= (select (arr!33459 _keys!1070) i!650) k0!904))))

(declare-fun mapIsEmpty!41260 () Bool)

(assert (=> mapIsEmpty!41260 mapRes!41260))

(declare-fun b!1081535 () Bool)

(declare-fun res!720980 () Bool)

(assert (=> b!1081535 (=> (not res!720980) (not e!618206))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1081535 (= res!720980 (validKeyInArray!0 k0!904))))

(declare-fun b!1081536 () Bool)

(declare-fun res!720985 () Bool)

(assert (=> b!1081536 (=> (not res!720985) (not e!618206))))

(assert (=> b!1081536 (= res!720985 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33996 _keys!1070))))))

(declare-fun b!1081537 () Bool)

(assert (=> b!1081537 (= e!618208 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40243)

(declare-datatypes ((tuple2!16826 0))(
  ( (tuple2!16827 (_1!8423 (_ BitVec 64)) (_2!8423 V!40243)) )
))
(declare-datatypes ((List!23455 0))(
  ( (Nil!23452) (Cons!23451 (h!24660 tuple2!16826) (t!32855 List!23455)) )
))
(declare-datatypes ((ListLongMap!14807 0))(
  ( (ListLongMap!14808 (toList!7419 List!23455)) )
))
(declare-fun lt!479323 () ListLongMap!14807)

(declare-fun zeroValue!831 () V!40243)

(declare-fun getCurrentListMapNoExtraKeys!3930 (array!69578 array!69580 (_ BitVec 32) (_ BitVec 32) V!40243 V!40243 (_ BitVec 32) Int) ListLongMap!14807)

(declare-fun dynLambda!2066 (Int (_ BitVec 64)) V!40243)

(assert (=> b!1081537 (= lt!479323 (getCurrentListMapNoExtraKeys!3930 lt!479321 (array!69581 (store (arr!33460 _values!874) i!650 (ValueCellFull!12459 (dynLambda!2066 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!33997 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479324 () ListLongMap!14807)

(assert (=> b!1081537 (= lt!479324 (getCurrentListMapNoExtraKeys!3930 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69578 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1081537 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35517 0))(
  ( (Unit!35518) )
))
(declare-fun lt!479322 () Unit!35517)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69578 (_ BitVec 64) (_ BitVec 32)) Unit!35517)

(assert (=> b!1081537 (= lt!479322 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapNonEmpty!41260 () Bool)

(declare-fun tp!78854 () Bool)

(assert (=> mapNonEmpty!41260 (= mapRes!41260 (and tp!78854 e!618211))))

(declare-fun mapRest!41260 () (Array (_ BitVec 32) ValueCell!12459))

(declare-fun mapKey!41260 () (_ BitVec 32))

(declare-fun mapValue!41260 () ValueCell!12459)

(assert (=> mapNonEmpty!41260 (= (arr!33460 _values!874) (store mapRest!41260 mapKey!41260 mapValue!41260))))

(declare-fun b!1081538 () Bool)

(assert (=> b!1081538 (= e!618206 e!618208)))

(declare-fun res!720983 () Bool)

(assert (=> b!1081538 (=> (not res!720983) (not e!618208))))

(assert (=> b!1081538 (= res!720983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479321 mask!1414))))

(assert (=> b!1081538 (= lt!479321 (array!69579 (store (arr!33459 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33996 _keys!1070)))))

(assert (= (and start!95718 res!720986) b!1081529))

(assert (= (and b!1081529 res!720984) b!1081533))

(assert (= (and b!1081533 res!720978) b!1081532))

(assert (= (and b!1081532 res!720979) b!1081536))

(assert (= (and b!1081536 res!720985) b!1081535))

(assert (= (and b!1081535 res!720980) b!1081534))

(assert (= (and b!1081534 res!720982) b!1081538))

(assert (= (and b!1081538 res!720983) b!1081528))

(assert (= (and b!1081528 res!720981) b!1081537))

(assert (= (and b!1081531 condMapEmpty!41260) mapIsEmpty!41260))

(assert (= (and b!1081531 (not condMapEmpty!41260)) mapNonEmpty!41260))

(get-info :version)

(assert (= (and mapNonEmpty!41260 ((_ is ValueCellFull!12459) mapValue!41260)) b!1081530))

(assert (= (and b!1081531 ((_ is ValueCellFull!12459) mapDefault!41260)) b!1081527))

(assert (= start!95718 b!1081531))

(declare-fun b_lambda!17035 () Bool)

(assert (=> (not b_lambda!17035) (not b!1081537)))

(declare-fun t!32853 () Bool)

(declare-fun tb!7221 () Bool)

(assert (=> (and start!95718 (= defaultEntry!882 defaultEntry!882) t!32853) tb!7221))

(declare-fun result!14953 () Bool)

(assert (=> tb!7221 (= result!14953 tp_is_empty!26337)))

(assert (=> b!1081537 t!32853))

(declare-fun b_and!35365 () Bool)

(assert (= b_and!35363 (and (=> t!32853 result!14953) b_and!35365)))

(declare-fun m!999439 () Bool)

(assert (=> b!1081532 m!999439))

(declare-fun m!999441 () Bool)

(assert (=> b!1081535 m!999441))

(declare-fun m!999443 () Bool)

(assert (=> mapNonEmpty!41260 m!999443))

(declare-fun m!999445 () Bool)

(assert (=> b!1081528 m!999445))

(declare-fun m!999447 () Bool)

(assert (=> b!1081538 m!999447))

(declare-fun m!999449 () Bool)

(assert (=> b!1081538 m!999449))

(declare-fun m!999451 () Bool)

(assert (=> b!1081537 m!999451))

(declare-fun m!999453 () Bool)

(assert (=> b!1081537 m!999453))

(declare-fun m!999455 () Bool)

(assert (=> b!1081537 m!999455))

(declare-fun m!999457 () Bool)

(assert (=> b!1081537 m!999457))

(declare-fun m!999459 () Bool)

(assert (=> b!1081537 m!999459))

(declare-fun m!999461 () Bool)

(assert (=> b!1081537 m!999461))

(declare-fun m!999463 () Bool)

(assert (=> b!1081534 m!999463))

(declare-fun m!999465 () Bool)

(assert (=> start!95718 m!999465))

(declare-fun m!999467 () Bool)

(assert (=> start!95718 m!999467))

(declare-fun m!999469 () Bool)

(assert (=> start!95718 m!999469))

(declare-fun m!999471 () Bool)

(assert (=> b!1081533 m!999471))

(check-sat (not b!1081533) (not start!95718) (not b!1081538) (not b_next!22335) (not b!1081528) (not b!1081537) tp_is_empty!26337 (not b_lambda!17035) (not mapNonEmpty!41260) (not b!1081535) (not b!1081532) b_and!35365)
(check-sat b_and!35365 (not b_next!22335))
