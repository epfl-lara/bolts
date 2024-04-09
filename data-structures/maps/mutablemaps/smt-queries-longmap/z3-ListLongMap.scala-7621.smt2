; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96084 () Bool)

(assert start!96084)

(declare-fun b_free!22701 () Bool)

(declare-fun b_next!22701 () Bool)

(assert (=> start!96084 (= b_free!22701 (not b_next!22701))))

(declare-fun tp!79952 () Bool)

(declare-fun b_and!36095 () Bool)

(assert (=> start!96084 (= tp!79952 b_and!36095)))

(declare-fun b!1089112 () Bool)

(declare-fun e!622116 () Bool)

(declare-fun e!622113 () Bool)

(assert (=> b!1089112 (= e!622116 e!622113)))

(declare-fun res!726559 () Bool)

(assert (=> b!1089112 (=> (not res!726559) (not e!622113))))

(declare-datatypes ((array!70296 0))(
  ( (array!70297 (arr!33818 (Array (_ BitVec 32) (_ BitVec 64))) (size!34355 (_ BitVec 32))) )
))
(declare-fun lt!485420 () array!70296)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70296 (_ BitVec 32)) Bool)

(assert (=> b!1089112 (= res!726559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!485420 mask!1414))))

(declare-fun _keys!1070 () array!70296)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1089112 (= lt!485420 (array!70297 (store (arr!33818 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34355 _keys!1070)))))

(declare-fun mapNonEmpty!41809 () Bool)

(declare-fun mapRes!41809 () Bool)

(declare-fun tp!79953 () Bool)

(declare-fun e!622119 () Bool)

(assert (=> mapNonEmpty!41809 (= mapRes!41809 (and tp!79953 e!622119))))

(declare-datatypes ((V!40731 0))(
  ( (V!40732 (val!13408 Int)) )
))
(declare-datatypes ((ValueCell!12642 0))(
  ( (ValueCellFull!12642 (v!16030 V!40731)) (EmptyCell!12642) )
))
(declare-datatypes ((array!70298 0))(
  ( (array!70299 (arr!33819 (Array (_ BitVec 32) ValueCell!12642)) (size!34356 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70298)

(declare-fun mapRest!41809 () (Array (_ BitVec 32) ValueCell!12642))

(declare-fun mapKey!41809 () (_ BitVec 32))

(declare-fun mapValue!41809 () ValueCell!12642)

(assert (=> mapNonEmpty!41809 (= (arr!33819 _values!874) (store mapRest!41809 mapKey!41809 mapValue!41809))))

(declare-fun b!1089113 () Bool)

(declare-fun res!726554 () Bool)

(assert (=> b!1089113 (=> (not res!726554) (not e!622116))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1089113 (= res!726554 (and (= (size!34356 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34355 _keys!1070) (size!34356 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1089114 () Bool)

(declare-fun res!726556 () Bool)

(assert (=> b!1089114 (=> (not res!726556) (not e!622116))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1089114 (= res!726556 (validKeyInArray!0 k0!904))))

(declare-fun b!1089115 () Bool)

(declare-fun res!726560 () Bool)

(assert (=> b!1089115 (=> (not res!726560) (not e!622116))))

(assert (=> b!1089115 (= res!726560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!41809 () Bool)

(assert (=> mapIsEmpty!41809 mapRes!41809))

(declare-fun b!1089116 () Bool)

(declare-fun res!726555 () Bool)

(assert (=> b!1089116 (=> (not res!726555) (not e!622113))))

(declare-datatypes ((List!23743 0))(
  ( (Nil!23740) (Cons!23739 (h!24948 (_ BitVec 64)) (t!33509 List!23743)) )
))
(declare-fun arrayNoDuplicates!0 (array!70296 (_ BitVec 32) List!23743) Bool)

(assert (=> b!1089116 (= res!726555 (arrayNoDuplicates!0 lt!485420 #b00000000000000000000000000000000 Nil!23740))))

(declare-fun b!1089117 () Bool)

(declare-fun res!726558 () Bool)

(assert (=> b!1089117 (=> (not res!726558) (not e!622116))))

(assert (=> b!1089117 (= res!726558 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34355 _keys!1070))))))

(declare-fun b!1089118 () Bool)

(declare-fun e!622120 () Bool)

(declare-fun e!622114 () Bool)

(assert (=> b!1089118 (= e!622120 e!622114)))

(declare-fun res!726550 () Bool)

(assert (=> b!1089118 (=> res!726550 e!622114)))

(assert (=> b!1089118 (= res!726550 (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((tuple2!17104 0))(
  ( (tuple2!17105 (_1!8562 (_ BitVec 64)) (_2!8562 V!40731)) )
))
(declare-datatypes ((List!23744 0))(
  ( (Nil!23741) (Cons!23740 (h!24949 tuple2!17104) (t!33510 List!23744)) )
))
(declare-datatypes ((ListLongMap!15085 0))(
  ( (ListLongMap!15086 (toList!7558 List!23744)) )
))
(declare-fun lt!485417 () ListLongMap!15085)

(declare-fun lt!485414 () ListLongMap!15085)

(assert (=> b!1089118 (= lt!485417 lt!485414)))

(declare-fun lt!485416 () ListLongMap!15085)

(declare-fun lt!485424 () tuple2!17104)

(declare-fun +!3274 (ListLongMap!15085 tuple2!17104) ListLongMap!15085)

(assert (=> b!1089118 (= lt!485414 (+!3274 lt!485416 lt!485424))))

(declare-fun lt!485422 () ListLongMap!15085)

(declare-fun lt!485418 () ListLongMap!15085)

(assert (=> b!1089118 (= lt!485422 lt!485418)))

(declare-fun lt!485425 () ListLongMap!15085)

(assert (=> b!1089118 (= lt!485418 (+!3274 lt!485425 lt!485424))))

(declare-fun lt!485419 () ListLongMap!15085)

(assert (=> b!1089118 (= lt!485417 (+!3274 lt!485419 lt!485424))))

(declare-fun zeroValue!831 () V!40731)

(assert (=> b!1089118 (= lt!485424 (tuple2!17105 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun res!726553 () Bool)

(assert (=> start!96084 (=> (not res!726553) (not e!622116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96084 (= res!726553 (validMask!0 mask!1414))))

(assert (=> start!96084 e!622116))

(assert (=> start!96084 tp!79952))

(assert (=> start!96084 true))

(declare-fun tp_is_empty!26703 () Bool)

(assert (=> start!96084 tp_is_empty!26703))

(declare-fun array_inv!25944 (array!70296) Bool)

(assert (=> start!96084 (array_inv!25944 _keys!1070)))

(declare-fun e!622115 () Bool)

(declare-fun array_inv!25945 (array!70298) Bool)

(assert (=> start!96084 (and (array_inv!25945 _values!874) e!622115)))

(declare-fun b!1089119 () Bool)

(declare-fun e!622118 () Bool)

(assert (=> b!1089119 (= e!622115 (and e!622118 mapRes!41809))))

(declare-fun condMapEmpty!41809 () Bool)

(declare-fun mapDefault!41809 () ValueCell!12642)

(assert (=> b!1089119 (= condMapEmpty!41809 (= (arr!33819 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12642)) mapDefault!41809)))))

(declare-fun b!1089120 () Bool)

(assert (=> b!1089120 (= e!622118 tp_is_empty!26703)))

(declare-fun b!1089121 () Bool)

(declare-fun res!726551 () Bool)

(assert (=> b!1089121 (=> (not res!726551) (not e!622116))))

(assert (=> b!1089121 (= res!726551 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23740))))

(declare-fun b!1089122 () Bool)

(declare-fun res!726552 () Bool)

(assert (=> b!1089122 (=> (not res!726552) (not e!622116))))

(assert (=> b!1089122 (= res!726552 (= (select (arr!33818 _keys!1070) i!650) k0!904))))

(declare-fun b!1089123 () Bool)

(assert (=> b!1089123 (= e!622114 true)))

(declare-fun -!836 (ListLongMap!15085 (_ BitVec 64)) ListLongMap!15085)

(assert (=> b!1089123 (= (-!836 lt!485418 k0!904) lt!485414)))

(declare-datatypes ((Unit!35787 0))(
  ( (Unit!35788) )
))
(declare-fun lt!485423 () Unit!35787)

(declare-fun addRemoveCommutativeForDiffKeys!70 (ListLongMap!15085 (_ BitVec 64) V!40731 (_ BitVec 64)) Unit!35787)

(assert (=> b!1089123 (= lt!485423 (addRemoveCommutativeForDiffKeys!70 lt!485425 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun b!1089124 () Bool)

(assert (=> b!1089124 (= e!622113 (not e!622120))))

(declare-fun res!726557 () Bool)

(assert (=> b!1089124 (=> res!726557 e!622120)))

(assert (=> b!1089124 (= res!726557 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40731)

(declare-fun getCurrentListMap!4303 (array!70296 array!70298 (_ BitVec 32) (_ BitVec 32) V!40731 V!40731 (_ BitVec 32) Int) ListLongMap!15085)

(assert (=> b!1089124 (= lt!485422 (getCurrentListMap!4303 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!485426 () array!70298)

(assert (=> b!1089124 (= lt!485417 (getCurrentListMap!4303 lt!485420 lt!485426 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1089124 (and (= lt!485419 lt!485416) (= lt!485416 lt!485419))))

(assert (=> b!1089124 (= lt!485416 (-!836 lt!485425 k0!904))))

(declare-fun lt!485421 () Unit!35787)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!109 (array!70296 array!70298 (_ BitVec 32) (_ BitVec 32) V!40731 V!40731 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35787)

(assert (=> b!1089124 (= lt!485421 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!109 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4055 (array!70296 array!70298 (_ BitVec 32) (_ BitVec 32) V!40731 V!40731 (_ BitVec 32) Int) ListLongMap!15085)

(assert (=> b!1089124 (= lt!485419 (getCurrentListMapNoExtraKeys!4055 lt!485420 lt!485426 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2191 (Int (_ BitVec 64)) V!40731)

(assert (=> b!1089124 (= lt!485426 (array!70299 (store (arr!33819 _values!874) i!650 (ValueCellFull!12642 (dynLambda!2191 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34356 _values!874)))))

(assert (=> b!1089124 (= lt!485425 (getCurrentListMapNoExtraKeys!4055 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70296 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1089124 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!485415 () Unit!35787)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70296 (_ BitVec 64) (_ BitVec 32)) Unit!35787)

(assert (=> b!1089124 (= lt!485415 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1089125 () Bool)

(assert (=> b!1089125 (= e!622119 tp_is_empty!26703)))

(assert (= (and start!96084 res!726553) b!1089113))

(assert (= (and b!1089113 res!726554) b!1089115))

(assert (= (and b!1089115 res!726560) b!1089121))

(assert (= (and b!1089121 res!726551) b!1089117))

(assert (= (and b!1089117 res!726558) b!1089114))

(assert (= (and b!1089114 res!726556) b!1089122))

(assert (= (and b!1089122 res!726552) b!1089112))

(assert (= (and b!1089112 res!726559) b!1089116))

(assert (= (and b!1089116 res!726555) b!1089124))

(assert (= (and b!1089124 (not res!726557)) b!1089118))

(assert (= (and b!1089118 (not res!726550)) b!1089123))

(assert (= (and b!1089119 condMapEmpty!41809) mapIsEmpty!41809))

(assert (= (and b!1089119 (not condMapEmpty!41809)) mapNonEmpty!41809))

(get-info :version)

(assert (= (and mapNonEmpty!41809 ((_ is ValueCellFull!12642) mapValue!41809)) b!1089125))

(assert (= (and b!1089119 ((_ is ValueCellFull!12642) mapDefault!41809)) b!1089120))

(assert (= start!96084 b!1089119))

(declare-fun b_lambda!17401 () Bool)

(assert (=> (not b_lambda!17401) (not b!1089124)))

(declare-fun t!33508 () Bool)

(declare-fun tb!7587 () Bool)

(assert (=> (and start!96084 (= defaultEntry!882 defaultEntry!882) t!33508) tb!7587))

(declare-fun result!15685 () Bool)

(assert (=> tb!7587 (= result!15685 tp_is_empty!26703)))

(assert (=> b!1089124 t!33508))

(declare-fun b_and!36097 () Bool)

(assert (= b_and!36095 (and (=> t!33508 result!15685) b_and!36097)))

(declare-fun m!1008445 () Bool)

(assert (=> b!1089112 m!1008445))

(declare-fun m!1008447 () Bool)

(assert (=> b!1089112 m!1008447))

(declare-fun m!1008449 () Bool)

(assert (=> b!1089115 m!1008449))

(declare-fun m!1008451 () Bool)

(assert (=> b!1089124 m!1008451))

(declare-fun m!1008453 () Bool)

(assert (=> b!1089124 m!1008453))

(declare-fun m!1008455 () Bool)

(assert (=> b!1089124 m!1008455))

(declare-fun m!1008457 () Bool)

(assert (=> b!1089124 m!1008457))

(declare-fun m!1008459 () Bool)

(assert (=> b!1089124 m!1008459))

(declare-fun m!1008461 () Bool)

(assert (=> b!1089124 m!1008461))

(declare-fun m!1008463 () Bool)

(assert (=> b!1089124 m!1008463))

(declare-fun m!1008465 () Bool)

(assert (=> b!1089124 m!1008465))

(declare-fun m!1008467 () Bool)

(assert (=> b!1089124 m!1008467))

(declare-fun m!1008469 () Bool)

(assert (=> b!1089124 m!1008469))

(declare-fun m!1008471 () Bool)

(assert (=> b!1089114 m!1008471))

(declare-fun m!1008473 () Bool)

(assert (=> b!1089116 m!1008473))

(declare-fun m!1008475 () Bool)

(assert (=> b!1089122 m!1008475))

(declare-fun m!1008477 () Bool)

(assert (=> start!96084 m!1008477))

(declare-fun m!1008479 () Bool)

(assert (=> start!96084 m!1008479))

(declare-fun m!1008481 () Bool)

(assert (=> start!96084 m!1008481))

(declare-fun m!1008483 () Bool)

(assert (=> b!1089123 m!1008483))

(declare-fun m!1008485 () Bool)

(assert (=> b!1089123 m!1008485))

(declare-fun m!1008487 () Bool)

(assert (=> b!1089121 m!1008487))

(declare-fun m!1008489 () Bool)

(assert (=> mapNonEmpty!41809 m!1008489))

(declare-fun m!1008491 () Bool)

(assert (=> b!1089118 m!1008491))

(declare-fun m!1008493 () Bool)

(assert (=> b!1089118 m!1008493))

(declare-fun m!1008495 () Bool)

(assert (=> b!1089118 m!1008495))

(check-sat (not mapNonEmpty!41809) (not b!1089112) (not b!1089114) (not start!96084) tp_is_empty!26703 (not b!1089123) (not b!1089118) (not b_next!22701) (not b!1089116) (not b!1089121) (not b!1089115) (not b_lambda!17401) (not b!1089124) b_and!36097)
(check-sat b_and!36097 (not b_next!22701))
