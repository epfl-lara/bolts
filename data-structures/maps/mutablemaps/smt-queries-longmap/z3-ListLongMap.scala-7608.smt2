; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96006 () Bool)

(assert start!96006)

(declare-fun b_free!22623 () Bool)

(declare-fun b_next!22623 () Bool)

(assert (=> start!96006 (= b_free!22623 (not b_next!22623))))

(declare-fun tp!79719 () Bool)

(declare-fun b_and!35939 () Bool)

(assert (=> start!96006 (= tp!79719 b_and!35939)))

(declare-fun b!1087396 () Bool)

(declare-fun res!725263 () Bool)

(declare-fun e!621178 () Bool)

(assert (=> b!1087396 (=> (not res!725263) (not e!621178))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1087396 (= res!725263 (validKeyInArray!0 k0!904))))

(declare-fun b!1087397 () Bool)

(declare-fun res!725271 () Bool)

(assert (=> b!1087397 (=> (not res!725271) (not e!621178))))

(declare-datatypes ((array!70142 0))(
  ( (array!70143 (arr!33741 (Array (_ BitVec 32) (_ BitVec 64))) (size!34278 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70142)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70142 (_ BitVec 32)) Bool)

(assert (=> b!1087397 (= res!725271 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!41692 () Bool)

(declare-fun mapRes!41692 () Bool)

(declare-fun tp!79718 () Bool)

(declare-fun e!621181 () Bool)

(assert (=> mapNonEmpty!41692 (= mapRes!41692 (and tp!79718 e!621181))))

(declare-datatypes ((V!40627 0))(
  ( (V!40628 (val!13369 Int)) )
))
(declare-datatypes ((ValueCell!12603 0))(
  ( (ValueCellFull!12603 (v!15991 V!40627)) (EmptyCell!12603) )
))
(declare-fun mapRest!41692 () (Array (_ BitVec 32) ValueCell!12603))

(declare-fun mapValue!41692 () ValueCell!12603)

(declare-datatypes ((array!70144 0))(
  ( (array!70145 (arr!33742 (Array (_ BitVec 32) ValueCell!12603)) (size!34279 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70144)

(declare-fun mapKey!41692 () (_ BitVec 32))

(assert (=> mapNonEmpty!41692 (= (arr!33742 _values!874) (store mapRest!41692 mapKey!41692 mapValue!41692))))

(declare-fun b!1087398 () Bool)

(declare-fun res!725267 () Bool)

(assert (=> b!1087398 (=> (not res!725267) (not e!621178))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1087398 (= res!725267 (= (select (arr!33741 _keys!1070) i!650) k0!904))))

(declare-fun mapIsEmpty!41692 () Bool)

(assert (=> mapIsEmpty!41692 mapRes!41692))

(declare-fun b!1087399 () Bool)

(declare-fun tp_is_empty!26625 () Bool)

(assert (=> b!1087399 (= e!621181 tp_is_empty!26625)))

(declare-fun b!1087400 () Bool)

(declare-fun e!621184 () Bool)

(assert (=> b!1087400 (= e!621184 tp_is_empty!26625)))

(declare-fun b!1087401 () Bool)

(declare-fun e!621177 () Bool)

(declare-fun e!621179 () Bool)

(assert (=> b!1087401 (= e!621177 e!621179)))

(declare-fun res!725269 () Bool)

(assert (=> b!1087401 (=> res!725269 e!621179)))

(assert (=> b!1087401 (= res!725269 (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((tuple2!17030 0))(
  ( (tuple2!17031 (_1!8525 (_ BitVec 64)) (_2!8525 V!40627)) )
))
(declare-datatypes ((List!23671 0))(
  ( (Nil!23668) (Cons!23667 (h!24876 tuple2!17030) (t!33359 List!23671)) )
))
(declare-datatypes ((ListLongMap!15011 0))(
  ( (ListLongMap!15012 (toList!7521 List!23671)) )
))
(declare-fun lt!483903 () ListLongMap!15011)

(declare-fun lt!483894 () ListLongMap!15011)

(assert (=> b!1087401 (= lt!483903 lt!483894)))

(declare-fun lt!483897 () ListLongMap!15011)

(declare-fun lt!483899 () tuple2!17030)

(declare-fun +!3248 (ListLongMap!15011 tuple2!17030) ListLongMap!15011)

(assert (=> b!1087401 (= lt!483894 (+!3248 lt!483897 lt!483899))))

(declare-fun lt!483896 () ListLongMap!15011)

(declare-fun lt!483901 () ListLongMap!15011)

(assert (=> b!1087401 (= lt!483896 lt!483901)))

(declare-fun lt!483905 () ListLongMap!15011)

(assert (=> b!1087401 (= lt!483901 (+!3248 lt!483905 lt!483899))))

(declare-fun lt!483898 () ListLongMap!15011)

(assert (=> b!1087401 (= lt!483903 (+!3248 lt!483898 lt!483899))))

(declare-fun zeroValue!831 () V!40627)

(assert (=> b!1087401 (= lt!483899 (tuple2!17031 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1087402 () Bool)

(declare-fun res!725268 () Bool)

(declare-fun e!621182 () Bool)

(assert (=> b!1087402 (=> (not res!725268) (not e!621182))))

(declare-fun lt!483893 () array!70142)

(declare-datatypes ((List!23672 0))(
  ( (Nil!23669) (Cons!23668 (h!24877 (_ BitVec 64)) (t!33360 List!23672)) )
))
(declare-fun arrayNoDuplicates!0 (array!70142 (_ BitVec 32) List!23672) Bool)

(assert (=> b!1087402 (= res!725268 (arrayNoDuplicates!0 lt!483893 #b00000000000000000000000000000000 Nil!23669))))

(declare-fun res!725272 () Bool)

(assert (=> start!96006 (=> (not res!725272) (not e!621178))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96006 (= res!725272 (validMask!0 mask!1414))))

(assert (=> start!96006 e!621178))

(assert (=> start!96006 tp!79719))

(assert (=> start!96006 true))

(assert (=> start!96006 tp_is_empty!26625))

(declare-fun array_inv!25886 (array!70142) Bool)

(assert (=> start!96006 (array_inv!25886 _keys!1070)))

(declare-fun e!621183 () Bool)

(declare-fun array_inv!25887 (array!70144) Bool)

(assert (=> start!96006 (and (array_inv!25887 _values!874) e!621183)))

(declare-fun b!1087403 () Bool)

(assert (=> b!1087403 (= e!621182 (not e!621177))))

(declare-fun res!725266 () Bool)

(assert (=> b!1087403 (=> res!725266 e!621177)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1087403 (= res!725266 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40627)

(declare-fun getCurrentListMap!4274 (array!70142 array!70144 (_ BitVec 32) (_ BitVec 32) V!40627 V!40627 (_ BitVec 32) Int) ListLongMap!15011)

(assert (=> b!1087403 (= lt!483896 (getCurrentListMap!4274 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483900 () array!70144)

(assert (=> b!1087403 (= lt!483903 (getCurrentListMap!4274 lt!483893 lt!483900 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1087403 (and (= lt!483898 lt!483897) (= lt!483897 lt!483898))))

(declare-fun -!801 (ListLongMap!15011 (_ BitVec 64)) ListLongMap!15011)

(assert (=> b!1087403 (= lt!483897 (-!801 lt!483905 k0!904))))

(declare-datatypes ((Unit!35717 0))(
  ( (Unit!35718) )
))
(declare-fun lt!483895 () Unit!35717)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!80 (array!70142 array!70144 (_ BitVec 32) (_ BitVec 32) V!40627 V!40627 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35717)

(assert (=> b!1087403 (= lt!483895 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!80 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4026 (array!70142 array!70144 (_ BitVec 32) (_ BitVec 32) V!40627 V!40627 (_ BitVec 32) Int) ListLongMap!15011)

(assert (=> b!1087403 (= lt!483898 (getCurrentListMapNoExtraKeys!4026 lt!483893 lt!483900 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2162 (Int (_ BitVec 64)) V!40627)

(assert (=> b!1087403 (= lt!483900 (array!70145 (store (arr!33742 _values!874) i!650 (ValueCellFull!12603 (dynLambda!2162 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34279 _values!874)))))

(assert (=> b!1087403 (= lt!483905 (getCurrentListMapNoExtraKeys!4026 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70142 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1087403 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!483902 () Unit!35717)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70142 (_ BitVec 64) (_ BitVec 32)) Unit!35717)

(assert (=> b!1087403 (= lt!483902 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1087404 () Bool)

(assert (=> b!1087404 (= e!621179 true)))

(assert (=> b!1087404 (= (-!801 lt!483901 k0!904) lt!483894)))

(declare-fun lt!483904 () Unit!35717)

(declare-fun addRemoveCommutativeForDiffKeys!41 (ListLongMap!15011 (_ BitVec 64) V!40627 (_ BitVec 64)) Unit!35717)

(assert (=> b!1087404 (= lt!483904 (addRemoveCommutativeForDiffKeys!41 lt!483905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun b!1087405 () Bool)

(declare-fun res!725264 () Bool)

(assert (=> b!1087405 (=> (not res!725264) (not e!621178))))

(assert (=> b!1087405 (= res!725264 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23669))))

(declare-fun b!1087406 () Bool)

(declare-fun res!725265 () Bool)

(assert (=> b!1087406 (=> (not res!725265) (not e!621178))))

(assert (=> b!1087406 (= res!725265 (and (= (size!34279 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34278 _keys!1070) (size!34279 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1087407 () Bool)

(assert (=> b!1087407 (= e!621183 (and e!621184 mapRes!41692))))

(declare-fun condMapEmpty!41692 () Bool)

(declare-fun mapDefault!41692 () ValueCell!12603)

(assert (=> b!1087407 (= condMapEmpty!41692 (= (arr!33742 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12603)) mapDefault!41692)))))

(declare-fun b!1087408 () Bool)

(declare-fun res!725273 () Bool)

(assert (=> b!1087408 (=> (not res!725273) (not e!621178))))

(assert (=> b!1087408 (= res!725273 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34278 _keys!1070))))))

(declare-fun b!1087409 () Bool)

(assert (=> b!1087409 (= e!621178 e!621182)))

(declare-fun res!725270 () Bool)

(assert (=> b!1087409 (=> (not res!725270) (not e!621182))))

(assert (=> b!1087409 (= res!725270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!483893 mask!1414))))

(assert (=> b!1087409 (= lt!483893 (array!70143 (store (arr!33741 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34278 _keys!1070)))))

(assert (= (and start!96006 res!725272) b!1087406))

(assert (= (and b!1087406 res!725265) b!1087397))

(assert (= (and b!1087397 res!725271) b!1087405))

(assert (= (and b!1087405 res!725264) b!1087408))

(assert (= (and b!1087408 res!725273) b!1087396))

(assert (= (and b!1087396 res!725263) b!1087398))

(assert (= (and b!1087398 res!725267) b!1087409))

(assert (= (and b!1087409 res!725270) b!1087402))

(assert (= (and b!1087402 res!725268) b!1087403))

(assert (= (and b!1087403 (not res!725266)) b!1087401))

(assert (= (and b!1087401 (not res!725269)) b!1087404))

(assert (= (and b!1087407 condMapEmpty!41692) mapIsEmpty!41692))

(assert (= (and b!1087407 (not condMapEmpty!41692)) mapNonEmpty!41692))

(get-info :version)

(assert (= (and mapNonEmpty!41692 ((_ is ValueCellFull!12603) mapValue!41692)) b!1087399))

(assert (= (and b!1087407 ((_ is ValueCellFull!12603) mapDefault!41692)) b!1087400))

(assert (= start!96006 b!1087407))

(declare-fun b_lambda!17323 () Bool)

(assert (=> (not b_lambda!17323) (not b!1087403)))

(declare-fun t!33358 () Bool)

(declare-fun tb!7509 () Bool)

(assert (=> (and start!96006 (= defaultEntry!882 defaultEntry!882) t!33358) tb!7509))

(declare-fun result!15529 () Bool)

(assert (=> tb!7509 (= result!15529 tp_is_empty!26625)))

(assert (=> b!1087403 t!33358))

(declare-fun b_and!35941 () Bool)

(assert (= b_and!35939 (and (=> t!33358 result!15529) b_and!35941)))

(declare-fun m!1006417 () Bool)

(assert (=> b!1087401 m!1006417))

(declare-fun m!1006419 () Bool)

(assert (=> b!1087401 m!1006419))

(declare-fun m!1006421 () Bool)

(assert (=> b!1087401 m!1006421))

(declare-fun m!1006423 () Bool)

(assert (=> b!1087404 m!1006423))

(declare-fun m!1006425 () Bool)

(assert (=> b!1087404 m!1006425))

(declare-fun m!1006427 () Bool)

(assert (=> b!1087398 m!1006427))

(declare-fun m!1006429 () Bool)

(assert (=> b!1087396 m!1006429))

(declare-fun m!1006431 () Bool)

(assert (=> b!1087397 m!1006431))

(declare-fun m!1006433 () Bool)

(assert (=> b!1087405 m!1006433))

(declare-fun m!1006435 () Bool)

(assert (=> b!1087403 m!1006435))

(declare-fun m!1006437 () Bool)

(assert (=> b!1087403 m!1006437))

(declare-fun m!1006439 () Bool)

(assert (=> b!1087403 m!1006439))

(declare-fun m!1006441 () Bool)

(assert (=> b!1087403 m!1006441))

(declare-fun m!1006443 () Bool)

(assert (=> b!1087403 m!1006443))

(declare-fun m!1006445 () Bool)

(assert (=> b!1087403 m!1006445))

(declare-fun m!1006447 () Bool)

(assert (=> b!1087403 m!1006447))

(declare-fun m!1006449 () Bool)

(assert (=> b!1087403 m!1006449))

(declare-fun m!1006451 () Bool)

(assert (=> b!1087403 m!1006451))

(declare-fun m!1006453 () Bool)

(assert (=> b!1087403 m!1006453))

(declare-fun m!1006455 () Bool)

(assert (=> b!1087409 m!1006455))

(declare-fun m!1006457 () Bool)

(assert (=> b!1087409 m!1006457))

(declare-fun m!1006459 () Bool)

(assert (=> mapNonEmpty!41692 m!1006459))

(declare-fun m!1006461 () Bool)

(assert (=> start!96006 m!1006461))

(declare-fun m!1006463 () Bool)

(assert (=> start!96006 m!1006463))

(declare-fun m!1006465 () Bool)

(assert (=> start!96006 m!1006465))

(declare-fun m!1006467 () Bool)

(assert (=> b!1087402 m!1006467))

(check-sat b_and!35941 (not start!96006) (not b!1087401) (not b_next!22623) (not b!1087405) (not b!1087409) (not b_lambda!17323) (not b!1087403) (not b!1087397) (not b!1087404) (not mapNonEmpty!41692) (not b!1087396) (not b!1087402) tp_is_empty!26625)
(check-sat b_and!35941 (not b_next!22623))
