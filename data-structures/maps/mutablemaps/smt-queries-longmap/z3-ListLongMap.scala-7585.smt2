; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95868 () Bool)

(assert start!95868)

(declare-fun b_free!22485 () Bool)

(declare-fun b_next!22485 () Bool)

(assert (=> start!95868 (= b_free!22485 (not b_next!22485))))

(declare-fun tp!79305 () Bool)

(declare-fun b_and!35663 () Bool)

(assert (=> start!95868 (= tp!79305 b_and!35663)))

(declare-fun b!1084377 () Bool)

(declare-fun res!723004 () Bool)

(declare-fun e!619560 () Bool)

(assert (=> b!1084377 (=> (not res!723004) (not e!619560))))

(declare-datatypes ((array!69876 0))(
  ( (array!69877 (arr!33608 (Array (_ BitVec 32) (_ BitVec 64))) (size!34145 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69876)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69876 (_ BitVec 32)) Bool)

(assert (=> b!1084377 (= res!723004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1084378 () Bool)

(declare-fun res!723011 () Bool)

(assert (=> b!1084378 (=> (not res!723011) (not e!619560))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1084378 (= res!723011 (= (select (arr!33608 _keys!1070) i!650) k0!904))))

(declare-fun b!1084379 () Bool)

(declare-fun res!723007 () Bool)

(declare-fun e!619559 () Bool)

(assert (=> b!1084379 (=> (not res!723007) (not e!619559))))

(declare-fun lt!480656 () array!69876)

(declare-datatypes ((List!23563 0))(
  ( (Nil!23560) (Cons!23559 (h!24768 (_ BitVec 64)) (t!33113 List!23563)) )
))
(declare-fun arrayNoDuplicates!0 (array!69876 (_ BitVec 32) List!23563) Bool)

(assert (=> b!1084379 (= res!723007 (arrayNoDuplicates!0 lt!480656 #b00000000000000000000000000000000 Nil!23560))))

(declare-fun b!1084380 () Bool)

(declare-fun e!619558 () Bool)

(declare-fun e!619557 () Bool)

(declare-fun mapRes!41485 () Bool)

(assert (=> b!1084380 (= e!619558 (and e!619557 mapRes!41485))))

(declare-fun condMapEmpty!41485 () Bool)

(declare-datatypes ((V!40443 0))(
  ( (V!40444 (val!13300 Int)) )
))
(declare-datatypes ((ValueCell!12534 0))(
  ( (ValueCellFull!12534 (v!15922 V!40443)) (EmptyCell!12534) )
))
(declare-datatypes ((array!69878 0))(
  ( (array!69879 (arr!33609 (Array (_ BitVec 32) ValueCell!12534)) (size!34146 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69878)

(declare-fun mapDefault!41485 () ValueCell!12534)

(assert (=> b!1084380 (= condMapEmpty!41485 (= (arr!33609 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12534)) mapDefault!41485)))))

(declare-fun mapIsEmpty!41485 () Bool)

(assert (=> mapIsEmpty!41485 mapRes!41485))

(declare-fun b!1084381 () Bool)

(declare-fun tp_is_empty!26487 () Bool)

(assert (=> b!1084381 (= e!619557 tp_is_empty!26487)))

(declare-fun b!1084382 () Bool)

(assert (=> b!1084382 (= e!619560 e!619559)))

(declare-fun res!723008 () Bool)

(assert (=> b!1084382 (=> (not res!723008) (not e!619559))))

(assert (=> b!1084382 (= res!723008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480656 mask!1414))))

(assert (=> b!1084382 (= lt!480656 (array!69877 (store (arr!33608 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34145 _keys!1070)))))

(declare-fun b!1084383 () Bool)

(declare-fun res!723005 () Bool)

(assert (=> b!1084383 (=> (not res!723005) (not e!619560))))

(assert (=> b!1084383 (= res!723005 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23560))))

(declare-fun b!1084384 () Bool)

(declare-fun res!723006 () Bool)

(assert (=> b!1084384 (=> (not res!723006) (not e!619560))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1084384 (= res!723006 (validKeyInArray!0 k0!904))))

(declare-fun b!1084385 () Bool)

(assert (=> b!1084385 (= e!619559 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40443)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!16920 0))(
  ( (tuple2!16921 (_1!8470 (_ BitVec 64)) (_2!8470 V!40443)) )
))
(declare-datatypes ((List!23564 0))(
  ( (Nil!23561) (Cons!23560 (h!24769 tuple2!16920) (t!33114 List!23564)) )
))
(declare-datatypes ((ListLongMap!14901 0))(
  ( (ListLongMap!14902 (toList!7466 List!23564)) )
))
(declare-fun lt!480661 () ListLongMap!14901)

(declare-fun zeroValue!831 () V!40443)

(declare-fun lt!480659 () array!69878)

(declare-fun getCurrentListMap!4225 (array!69876 array!69878 (_ BitVec 32) (_ BitVec 32) V!40443 V!40443 (_ BitVec 32) Int) ListLongMap!14901)

(assert (=> b!1084385 (= lt!480661 (getCurrentListMap!4225 lt!480656 lt!480659 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480655 () ListLongMap!14901)

(declare-fun lt!480658 () ListLongMap!14901)

(assert (=> b!1084385 (and (= lt!480655 lt!480658) (= lt!480658 lt!480655))))

(declare-fun lt!480660 () ListLongMap!14901)

(declare-fun -!748 (ListLongMap!14901 (_ BitVec 64)) ListLongMap!14901)

(assert (=> b!1084385 (= lt!480658 (-!748 lt!480660 k0!904))))

(declare-datatypes ((Unit!35611 0))(
  ( (Unit!35612) )
))
(declare-fun lt!480657 () Unit!35611)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!31 (array!69876 array!69878 (_ BitVec 32) (_ BitVec 32) V!40443 V!40443 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35611)

(assert (=> b!1084385 (= lt!480657 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!31 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3977 (array!69876 array!69878 (_ BitVec 32) (_ BitVec 32) V!40443 V!40443 (_ BitVec 32) Int) ListLongMap!14901)

(assert (=> b!1084385 (= lt!480655 (getCurrentListMapNoExtraKeys!3977 lt!480656 lt!480659 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2113 (Int (_ BitVec 64)) V!40443)

(assert (=> b!1084385 (= lt!480659 (array!69879 (store (arr!33609 _values!874) i!650 (ValueCellFull!12534 (dynLambda!2113 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34146 _values!874)))))

(assert (=> b!1084385 (= lt!480660 (getCurrentListMapNoExtraKeys!3977 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69876 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1084385 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!480662 () Unit!35611)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69876 (_ BitVec 64) (_ BitVec 32)) Unit!35611)

(assert (=> b!1084385 (= lt!480662 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1084386 () Bool)

(declare-fun e!619561 () Bool)

(assert (=> b!1084386 (= e!619561 tp_is_empty!26487)))

(declare-fun b!1084387 () Bool)

(declare-fun res!723003 () Bool)

(assert (=> b!1084387 (=> (not res!723003) (not e!619560))))

(assert (=> b!1084387 (= res!723003 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34145 _keys!1070))))))

(declare-fun b!1084388 () Bool)

(declare-fun res!723009 () Bool)

(assert (=> b!1084388 (=> (not res!723009) (not e!619560))))

(assert (=> b!1084388 (= res!723009 (and (= (size!34146 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34145 _keys!1070) (size!34146 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!41485 () Bool)

(declare-fun tp!79304 () Bool)

(assert (=> mapNonEmpty!41485 (= mapRes!41485 (and tp!79304 e!619561))))

(declare-fun mapRest!41485 () (Array (_ BitVec 32) ValueCell!12534))

(declare-fun mapValue!41485 () ValueCell!12534)

(declare-fun mapKey!41485 () (_ BitVec 32))

(assert (=> mapNonEmpty!41485 (= (arr!33609 _values!874) (store mapRest!41485 mapKey!41485 mapValue!41485))))

(declare-fun res!723010 () Bool)

(assert (=> start!95868 (=> (not res!723010) (not e!619560))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95868 (= res!723010 (validMask!0 mask!1414))))

(assert (=> start!95868 e!619560))

(assert (=> start!95868 tp!79305))

(assert (=> start!95868 true))

(assert (=> start!95868 tp_is_empty!26487))

(declare-fun array_inv!25788 (array!69876) Bool)

(assert (=> start!95868 (array_inv!25788 _keys!1070)))

(declare-fun array_inv!25789 (array!69878) Bool)

(assert (=> start!95868 (and (array_inv!25789 _values!874) e!619558)))

(assert (= (and start!95868 res!723010) b!1084388))

(assert (= (and b!1084388 res!723009) b!1084377))

(assert (= (and b!1084377 res!723004) b!1084383))

(assert (= (and b!1084383 res!723005) b!1084387))

(assert (= (and b!1084387 res!723003) b!1084384))

(assert (= (and b!1084384 res!723006) b!1084378))

(assert (= (and b!1084378 res!723011) b!1084382))

(assert (= (and b!1084382 res!723008) b!1084379))

(assert (= (and b!1084379 res!723007) b!1084385))

(assert (= (and b!1084380 condMapEmpty!41485) mapIsEmpty!41485))

(assert (= (and b!1084380 (not condMapEmpty!41485)) mapNonEmpty!41485))

(get-info :version)

(assert (= (and mapNonEmpty!41485 ((_ is ValueCellFull!12534) mapValue!41485)) b!1084386))

(assert (= (and b!1084380 ((_ is ValueCellFull!12534) mapDefault!41485)) b!1084381))

(assert (= start!95868 b!1084380))

(declare-fun b_lambda!17185 () Bool)

(assert (=> (not b_lambda!17185) (not b!1084385)))

(declare-fun t!33112 () Bool)

(declare-fun tb!7371 () Bool)

(assert (=> (and start!95868 (= defaultEntry!882 defaultEntry!882) t!33112) tb!7371))

(declare-fun result!15253 () Bool)

(assert (=> tb!7371 (= result!15253 tp_is_empty!26487)))

(assert (=> b!1084385 t!33112))

(declare-fun b_and!35665 () Bool)

(assert (= b_and!35663 (and (=> t!33112 result!15253) b_and!35665)))

(declare-fun m!1002229 () Bool)

(assert (=> b!1084385 m!1002229))

(declare-fun m!1002231 () Bool)

(assert (=> b!1084385 m!1002231))

(declare-fun m!1002233 () Bool)

(assert (=> b!1084385 m!1002233))

(declare-fun m!1002235 () Bool)

(assert (=> b!1084385 m!1002235))

(declare-fun m!1002237 () Bool)

(assert (=> b!1084385 m!1002237))

(declare-fun m!1002239 () Bool)

(assert (=> b!1084385 m!1002239))

(declare-fun m!1002241 () Bool)

(assert (=> b!1084385 m!1002241))

(declare-fun m!1002243 () Bool)

(assert (=> b!1084385 m!1002243))

(declare-fun m!1002245 () Bool)

(assert (=> b!1084385 m!1002245))

(declare-fun m!1002247 () Bool)

(assert (=> start!95868 m!1002247))

(declare-fun m!1002249 () Bool)

(assert (=> start!95868 m!1002249))

(declare-fun m!1002251 () Bool)

(assert (=> start!95868 m!1002251))

(declare-fun m!1002253 () Bool)

(assert (=> b!1084377 m!1002253))

(declare-fun m!1002255 () Bool)

(assert (=> b!1084379 m!1002255))

(declare-fun m!1002257 () Bool)

(assert (=> b!1084384 m!1002257))

(declare-fun m!1002259 () Bool)

(assert (=> b!1084382 m!1002259))

(declare-fun m!1002261 () Bool)

(assert (=> b!1084382 m!1002261))

(declare-fun m!1002263 () Bool)

(assert (=> mapNonEmpty!41485 m!1002263))

(declare-fun m!1002265 () Bool)

(assert (=> b!1084383 m!1002265))

(declare-fun m!1002267 () Bool)

(assert (=> b!1084378 m!1002267))

(check-sat (not b!1084382) (not b!1084379) (not b_next!22485) (not start!95868) (not b!1084377) (not b!1084383) (not b!1084385) b_and!35665 (not mapNonEmpty!41485) (not b!1084384) tp_is_empty!26487 (not b_lambda!17185))
(check-sat b_and!35665 (not b_next!22485))
